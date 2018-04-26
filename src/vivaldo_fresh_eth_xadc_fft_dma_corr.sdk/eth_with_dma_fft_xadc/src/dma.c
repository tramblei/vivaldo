/*
/*
 * dma.c
 *
 *  Created on: Mar 11, 2018
 *      Author: tramblei
 */

#include "dma.h"

volatile u32 * volatile MM2S_DMACR[]   	= {(u32 *) (DMA1_BASE_ADDR+ 0x00), (u32 *) (DMA2_BASE_ADDR+ 0x00)}; //MM2S DMA Control register
volatile u32 * volatile MM2S_DMASR[]   	= {(u32 *) (DMA1_BASE_ADDR+ 0x04), (u32 *) (DMA2_BASE_ADDR+ 0x04)}; //MM2S DMA Status register
volatile u32 * volatile MM2S_SA[]    	= {(u32 *) (DMA1_BASE_ADDR+ 0x18), (u32 *) (DMA2_BASE_ADDR+ 0x18)}; //MM2S Source Address
volatile u32 * volatile MM2S_LENGTH[]  	= {(u32 *) (DMA1_BASE_ADDR+ 0x28), (u32 *) (DMA2_BASE_ADDR+ 0x28)}; //MM2S Transfer Length (Bytes)
volatile u32 * volatile S2MM_DMACR[]   	= {(u32 *) (DMA1_BASE_ADDR+ 0x30), (u32 *) (DMA2_BASE_ADDR+ 0x30)}; //S2MM DMA Control register
volatile u32 * volatile S2MM_DMASR[]   	= {(u32 *) (DMA1_BASE_ADDR+ 0x34), (u32 *) (DMA2_BASE_ADDR+ 0x34)}; //S2MM DMA Status register
volatile u32 * volatile S2MM_DA[]    	= {(u32 *) (DMA1_BASE_ADDR+ 0x48), (u32 *) (DMA2_BASE_ADDR+ 0x48)}; //S2MM Destination Address
volatile u32 * volatile S2MM_LENGTH[]  	= {(u32 *) (DMA1_BASE_ADDR+ 0x58), (u32 *) (DMA2_BASE_ADDR+ 0x58)}; //S2MM Buffer Length (Bytes)

void set_memory(u32 *addr, u32 length, u32 value){
	int i;
	u32 *ptr = (u32 *) addr;
	for(i = 0; i < length; i++){
		*ptr = value;
		ptr++;
	}
}

void print_memory(u32 *addr, u32 length){
	int i;
	u32 *ptr = (u32 *)addr;
	for(i = 0; i < length; i++){
		xil_printf("%u,", *ptr);
		ptr++;
	}
	xil_printf("\n");
}

void init_DMA_direct(unsigned int i) {
	*(MM2S_DMACR[i]) = 0x00000001;
	*(S2MM_DMACR[i]) = 0x00000001;
	xil_printf("MM2S status is = %x, S2MM status is = %x\n\r",*(MM2S_DMASR[i]), *(S2MM_DMASR[i])); // print for debug purpose

}

int get_DMA_status(unsigned int i) {
	xil_printf("MM2S status is = %x, S2MM status is = %x\n\r",*(MM2S_DMASR[i]), *(S2MM_DMASR[i])); // print for debug purpose
	return *(S2MM_DMASR[i]);
}

int check_s2mm_status_idle(unsigned int i){
	return *(S2MM_DMASR[i]) & (1 <<1);
}

int check_mm2s_status_idle(unsigned int i){
	return *(MM2S_DMASR[i]) & (1 <<1);
}

unsigned int get_s2mm_status(unsigned int i){
	return *(S2MM_DMASR[i]);
}

void init_DMA_direct_int(unsigned int i){
	*(MM2S_DMACR[i]) = 0x00005001; //enable the MM2S DMA
	*(S2MM_DMACR[i]) = 0x00005001; //enable the S2MM DMA
	xil_printf("MM2S status is = %x S2MM status = %x\n\r",*(MM2S_DMASR[i]),*(S2MM_DMASR[i])); // print for debug purpose
}

void halt_DMA_direct(unsigned int i){
	*(MM2S_DMACR[i]) = 0x00000000; //enable the MM2S DMA
	*(S2MM_DMACR[i]) = 0x00000000; //enable the S2MM DMA
	xil_printf("MM2S status is = %x S2MM status = %x\n\r",*(MM2S_DMASR[i]),*(S2MM_DMASR[i])); // print for debug purpose
}

void dma_mm2s(void *baseaddr, u32 len, unsigned int i) {
    microblaze_flush_dcache_range((u32)baseaddr, len); // flush cache so that proper values copied by DMA
    __asm__ volatile("mbar 1\n\t"); //ensure cache flush is complete before starting DMA
	*(MM2S_SA[i]) = (u32)baseaddr;

	*(MM2S_LENGTH[i]) = len;
}

void dma_s2mm(void *baseaddr, u32 len, unsigned int i) {
	*(S2MM_DA[i]) = (u32)baseaddr;

	*(S2MM_LENGTH[i]) = len;
}

//DMA interrupt service routine
void dma_int_handler(void *baseaddr_p, unsigned int i) {
	volatile u32 mm2s = *(MM2S_DMASR[i]);
	volatile u32 s2mm = *(S2MM_DMASR[i]);
	*(MM2S_DMASR[i]) = mm2s | 0x00001000; //enable the MM2S DMA
	*(S2MM_DMASR[i]) = s2mm | 0x00001000;
	xil_printf("Inside the DMA interupt handler!\n");

}

void init_dma(unsigned int i) {
    // set up DMA
    halt_DMA_direct(i);
    init_DMA_direct(i);
}


