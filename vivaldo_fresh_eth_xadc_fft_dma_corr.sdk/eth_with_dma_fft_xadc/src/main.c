/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

#include <stdio.h>

#include "xparameters.h"
#include "netif/xadapter.h"
#include "platform.h"
#include "platform_config.h"
#include "xil_types.h"
#include "xil_exception.h"
#include "xintc_l.h"
#include "xgpio_l.h"
#include "stdlib.h"
#include "xsysmon.h"
#if defined (__arm__) || defined(__aarch64__)
#include "xil_printf.h"
#endif
#include "lwip/tcp.h"
#include "xil_cache.h"
#include "xil_io.h"
#undef LWIP_DHCP
#define LWIP_DCHP 1
#if LWIP_DHCP==1
#include "lwip/dhcp.h"
#endif

// custom streaming header with callbacks
#include "streaming.h"
#include "dma.h"

/* defined by each RAW mode application */
void print_app_header();
int start_application();
int transfer_data();
void tcp_fasttmr(void);
void tcp_slowtmr(void);

/* missing declaration in lwIP */
void lwip_init();

#if LWIP_DHCP==1
extern volatile int dhcp_timoutcntr;
err_t dhcp_start(struct netif *netif);
#endif

extern volatile int TcpFastTmrFlag;
extern volatile int TcpSlowTmrFlag;
static struct netif server_netif;
struct netif *echo_netif;
#define xadc XPAR_SYSMON_0_DEVICE_ID
XSysMon xadc_inst;

// Interrupt controller
#define INTC_BASE_ADDR 		0x41200000

// DDR
#define DDR_BASE_ADDR		0x80000000


// Correlation
#define CORR_BASE 0x44a10000
#define CORR_VALID (CORR_BASE + 0)
#define CORR_VALUE (CORR_BASE + 4)
#define S_COUNT (CORR_BASE + 8)
#define D_PROD_VALID (CORR_BASE + 12)
volatile u32 *SAMPLE_COUNT = (u32*) S_COUNT;
volatile u32 *DOT_PROD_VALID = (u32*) D_PROD_VALID;


// GPIO
#define GPIO_BASE_ADDR XPAR_GPIO_0_BASEADDR
#define LED 0xFFFF

void init_leds() {
	// set LEDs that aren't of interest to input mode
	XGpio_WriteReg((GPIO_BASE_ADDR),0 +
			XGPIO_TRI_OFFSET, (~LED));
}

u32 get_led_data(){
	u32 Data = XGpio_ReadReg(GPIO_BASE_ADDR,
			  XGPIO_DATA_OFFSET);
	return Data;
}

void update_led_data(u32 to_write, u32 data){
	int inc = 255 / 16;
	u32 nicer_write = 0;
	for (int i = 0; i < 16; i++)
	{
		if (to_write > i * inc)
		{
			nicer_write = (1 << i) - 1;
		}
		else
		{
			break;
		}
	}
	XGpio_WriteReg((GPIO_BASE_ADDR),
			XGPIO_DATA_OFFSET, data & nicer_write); // turn off anything that needs to be off
	// turn on only what is necessary
	XGpio_WriteReg((GPIO_BASE_ADDR),
		XGPIO_DATA_OFFSET, data | nicer_write);
}

void init_sensors() {
    XSysMon * xadc_inst_ptr = &xadc_inst;
    XSysMon_Config *xadc_config;

    xadc_config = XSysMon_LookupConfig(xadc);
    XSysMon_CfgInitialize(xadc_inst_ptr, xadc_config, xadc_config->BaseAddress);

    // turn on safe sequence mode (what is that?)
    XSysMon_SetSequencerMode(xadc_inst_ptr, XSM_SEQ_MODE_SAFE);

    //set channels to be read in
    XSysMon_SetSeqChEnables(xadc_inst_ptr, XSM_SEQ_CH_TEMP|XSM_SEQ_CH_AUX03);
    // run in continuous for whatever reason
    XSysMon_SetSequencerMode(xadc_inst_ptr, XSM_SEQ_MODE_CONTINPASS);
    // disable alarms
    XSysMon_SetAlarmEnables(xadc_inst_ptr, 0x00000000);

    XSysMon_SetTempWaitCycles(xadc_inst_ptr, 0x00000340);
    XSysMon_EnableTempUpdate(xadc_inst_ptr);
}
void
print_ip(char *msg, struct ip_addr *ip) 
{
	print(msg);
	xil_printf("%d.%d.%d.%d\n\r", ip4_addr1(ip), ip4_addr2(ip), 
			ip4_addr3(ip), ip4_addr4(ip));
}

void
print_ip_settings(struct ip_addr *ip, struct ip_addr *mask, struct ip_addr *gw)
{

	print_ip("Board IP: ", ip);
	print_ip("Netmask : ", mask);
	print_ip("Gateway : ", gw);
}

#if defined (__arm__) && !defined (ARMR5)
#if XPAR_GIGE_PCS_PMA_SGMII_CORE_PRESENT == 1 || XPAR_GIGE_PCS_PMA_1000BASEX_CORE_PRESENT == 1
int ProgramSi5324(void);
int ProgramSfpPhy(void);
#endif
#endif

#ifdef XPS_BOARD_ZCU102
#ifdef XPAR_XIICPS_0_DEVICE_ID
int IicPhyReset(void);
#endif
#endif

int main()
{
	struct ip_addr ipaddr, netmask, gw;

	/* the mac address of the board. this should be unique per board */
	unsigned char mac_ethernet_address[] =
	{ 0x00, 0x0a, 0x35, 0x00, 0x01, 0x02 };

	echo_netif = &server_netif;
#if defined (__arm__) && !defined (ARMR5)
#if XPAR_GIGE_PCS_PMA_SGMII_CORE_PRESENT == 1 || XPAR_GIGE_PCS_PMA_1000BASEX_CORE_PRESENT == 1
	ProgramSi5324();
	ProgramSfpPhy();
#endif
#endif

/* Define this board specific macro in order perform PHY reset on ZCU102 */
#ifdef XPS_BOARD_ZCU102
	IicPhyReset();
#endif

	init_platform();

#if LWIP_DHCP==1
    ipaddr.addr = 0;
	gw.addr = 0;
	netmask.addr = 0;
#else
	/* initliaze IP addresses to be used */
	IP4_ADDR(&ipaddr,  192, 168,   1, 10);
	IP4_ADDR(&netmask, 255, 255, 255,  0);
	IP4_ADDR(&gw,      192, 168,   1,  1);
#endif	
	print_app_header();

	lwip_init();

  	/* Add network interface to the netif_list, and set it as default */
	if (!xemac_add(echo_netif, &ipaddr, &netmask,
						&gw, mac_ethernet_address,
						PLATFORM_EMAC_BASEADDR)) {
		xil_printf("Error adding N/W interface\n\r");
		return -1;
	}
	netif_set_default(echo_netif);

	/* now enable interrupts */
	platform_enable_interrupts();
	init_sensors();
	init_dma(GOLDEN);
	//init_dma(ACTUAL);

	init_leds();

	u32 led_data = get_led_data();
	update_led_data(0xFFFF, led_data);
	update_led_data(0x00AA, led_data);

	/* specify that the network if is up */
	netif_set_up(echo_netif);

#if (LWIP_DHCP==1)
	/* Create a new DHCP client for this interface.
	 * Note: you must call dhcp_fine_tmr() and dhcp_coarse_tmr() at
	 * the predefined regular intervals after starting the client.
	 */
	dhcp_start(echo_netif);
	dhcp_timoutcntr = 24;

	while(((echo_netif->ip_addr.addr) == 0) && (dhcp_timoutcntr > 0))
		xemacif_input(echo_netif);

	if (dhcp_timoutcntr <= 0) {
		if ((echo_netif->ip_addr.addr) == 0) {
			xil_printf("DHCP Timeout\r\n");
			xil_printf("Configuring default IP of 192.168.1.10\r\n");
			IP4_ADDR(&(echo_netif->ip_addr),  192, 168,   1, 10);
			IP4_ADDR(&(echo_netif->netmask), 255, 255, 255,  0);
			IP4_ADDR(&(echo_netif->gw),      192, 168,   1,  1);
		}
	}

	ipaddr.addr = echo_netif->ip_addr.addr;
	gw.addr = echo_netif->gw.addr;
	netmask.addr = echo_netif->netmask.addr;
#endif

	print_ip_settings(&ipaddr, &netmask, &gw);
	struct ip_addr server_addr;
	int server_port = 9091;
	IP4_ADDR(&server_addr,  192, 168,   1, 109);

	// args passed to start song
	start_song start_args = {
			.song_started = 0,
			.song_name = "a_b.wav",
			.frame_size = ETH_FRAME_SIZE
	};

	// initialize frame arrays
	// song is the arg that is passed around
	stream_song song;
	init_song(&song, NUM_FRAMES*ETH_FRAMES_PER_FFT); // 2 frames good for now

	int song_finished = 0;
	int attempt_start = 0;
	int fetching_frame = 0;
	struct tcp_pcb * current_connection = NULL;
	while (1) {
		if (TcpFastTmrFlag) {
			tcp_fasttmr();

			TcpFastTmrFlag = 0;
		}
		if (TcpSlowTmrFlag) {
			tcp_slowtmr();
			TcpSlowTmrFlag = 0;
		}
		xemacif_input(echo_netif);
		transfer_data();

		if(attempt_start && start_args.song_started){
			// can close connection
			tcp_close(current_connection);
			xil_printf("Song has started!\n");
			attempt_start = 0;
			current_connection = NULL;
			current_connection = next_song_stream(&server_addr, server_port, &song);
			song.fetching = 1;
		}

		if (!attempt_start && !start_args.song_started) {
			current_connection = start_song_stream(&server_addr, server_port, &start_args);
			xil_printf("Starting song...");
			if (!current_connection){
				xil_printf("Error while attempting to start song stream\n");
			}
			// only request it once
			attempt_start = 1;
		}

		if (start_args.song_started && !song.finished && !song.fetching){
			// while song is not finished, need to request "NEXT" frame
			tcp_close(current_connection);
			current_connection = next_song_stream(&server_addr, server_port, &song);
			song.fetching = 1;
		}

		if(song.finished){
			tcp_close(current_connection);
			current_connection= NULL;
			xil_printf("Song download complete\n");
			break; // done download, now on to actually streaming it all
		}

	}

	// now that song has been downloaded - need to flush cache, can initiate transfers with DMA while checking the correlation
	// and then writing this to the LEDs
	for(int i = 0; i < song.newest; i += ETH_FRAMES_PER_FFT){
		microblaze_flush_dcache_range((u32)song.frames[i], NUM_SAMPLES*SAMPLE_SIZE);
	}

	xil_printf("Cache has been flushed. Beginning song\n");
	// initiate first transfer
//	unsigned int * p = song.frames[song.oldest];
//	for(int i = 0; i < NUM_SAMPLES; i++){
//		xil_printf("%u,", p[i]);
//	}
//	xil_printf("\n");
//
//    int size = 1024*4;
//    int frame_limit = 16*44;
//    u32 * new_data = (u32*) malloc(size*frame_limit);
//    if (!new_data) {
//    	xil_printf("Failed to allocate enough memory to store FFT stream.\n");
//    }
//
//    dma_s2mm(new_data, size, GOLDEN);
//    int frame_count = 0;
//    while (frame_count < frame_limit)
//    {
//		if(check_s2mm_status_idle(GOLDEN)) {
//			dma_s2mm(&new_data[size/4*frame_count], size, GOLDEN);
//			frame_count += 1;
//		}
//    }
//	while (!check_s2mm_status_idle(GOLDEN)) {
//		get_DMA_status(GOLDEN);
//	}

//	xil_printf("Finished copying FFT stream to memory.\n");

//	dma_mm2s(new_data, size, ACTUAL);
	dma_mm2s(song.frames[song.oldest], NUM_SAMPLES*SAMPLE_SIZE, GOLDEN);

    while (!check_mm2s_status_idle(GOLDEN)) {
    	get_DMA_status(GOLDEN);
    }

    xil_printf("Initial inputs loaded to Correlation Block.\n");
	song.oldest += ETH_FRAMES_PER_FFT;
	int frame_count = 0;
	int frame_limit = 16*44;

	volatile u32 corr_value = 0;
	while(frame_count < frame_limit){
		if (*((u32*)CORR_VALID)) {
			corr_value = *((u32*)CORR_VALUE);
		 	xil_printf("%u,", corr_value);
			if(corr_value != 0xFFFFFFFF){
				update_led_data(corr_value, led_data);
			}
			*((u32*)CORR_VALID) = 0;
			// update the oldest frame
			if(song.oldest < song.newest){
				//dma_mm2s(&new_data[size/4*frame_count], size, ACTUAL);
				//while (!(check_mm2s_status_idle(ACTUAL))) {}
				dma_mm2s(song.frames[song.oldest], NUM_SAMPLES*SAMPLE_SIZE, GOLDEN);
				while (!(check_mm2s_status_idle(GOLDEN))) {}
			    song.oldest += ETH_FRAMES_PER_FFT;
			    frame_count += 1;
			} else {
				break; // time to dip
			}
		}
	}
	xil_printf("\n");

	xil_printf("Completed correlation\n");


//	// FFT -> memory
//    int size = 1024*4;
//    int frame_count = 0;
//    int frame_limit = 16*44;
//    xil_printf("DMA FFT S2MM test - 20 frames\n\r");
//    u32 * new_data = (u32*) malloc(size*frame_limit);
//    dma_s2mm(new_data, size, GOLDEN);
//    while(frame_count < frame_limit) { // check if IDLE
//    	//xil_printf("Not Idle: 0x%08x\n", get_s2mm_status(GOLDEN));
//    	get_DMA_status(GOLDEN);
//    	if(check_s2mm_status_idle(GOLDEN)) {
//    		dma_s2mm(&new_data[size/4*frame_count], size, GOLDEN);
//    		frame_count += 1;
//    	}
//    }
//    int i;
//    for(i = 0; i < frame_limit; i++){
//    	print_memory(&new_data[size/4*i],size/4);
//    	xil_printf("\n");
//    }

//    // copy FFT values from memory to geraldino
//	xil_printf("Copying FFT values from memory...\n");
//    dma_mm2s(new_data, size, ACTUAL);
//
//    // copy golden FFT values from memory to geraldinho
//	xil_printf("Copying GOLDEN FFT values from memory...\n");
//    dma_mm2s(song.frames[song.oldest], NUM_SAMPLES*SAMPLE_SIZE, GOLDEN);
//
//    while ((!check_mm2s_status_idle(ACTUAL)) && (!check_mm2s_status_idle(GOLDEN))) {}
//	xil_printf("DMA transfers finished\n");
//
//    volatile u32 corr_value = 0;
//	xil_printf("Reading correlation...\n");
//	while(1){
//		if (*((u32*)CORR_VALID)) {
//			corr_value = *((u32*)CORR_VALUE);
//			xil_printf("%u\n", corr_value);
//			break;
//		}
//	}
//	xil_printf("Actual FFT: ");
//    print_memory(new_data, size/4);
//    xil_printf("Golden FFT: ");
//    print_memory(song.frames[song.oldest], size/4);

	/* never reached */
	cleanup_platform();

	return 0;
}
