// Ian Tramble, 2018

#include "streaming.h"

struct tcp_pcb * start_song_stream(struct ip_addr* ipaddr, int port, start_song* start_args)
{
	return establish_connection(ipaddr, port, (void*)start_args, start_song_callback);
}

struct tcp_pcb *next_song_stream(struct ip_addr* ipaddr, int port, stream_song* song)
{
	struct tcp_pcb* pcb = establish_connection(ipaddr, port, (void*)song, next_frame_connected);
	// set up the receive callback now
	tcp_recv(pcb, next_recv_beta);
	return pcb;
}
static int count = 0;
void next_recv_beta(void* _song, struct tcp_pcb* tpcb, struct pbuf* p, err_t err)
{
	// meat and potatoes
	stream_song* song = (stream_song *)_song;
	if (!p) {
		xil_printf("NULL pbuf received - closing\n");
		tcp_close(tpcb);
	}
	if(err != ERR_OK) {
		xil_printf("Error received was: %d\nAborting...\n", err);
		tcp_close(tpcb);
	}
	/* indicate that the packet has been received */
	tcp_recved(tpcb, p->len);
	count += 1;

	if (song->newest == song->oldest) {
		//FIFO queue is full, do something
		xil_printf("FIFO queue is full\n");
	}

	// copy into frame buffer byte by byte
	unsigned char* char_fbuff = (unsigned char *)song->frames[song->newest];
	unsigned char* char_pload = (unsigned char *)p->payload;


	// get the first four bytes - these indicate the position
	// ignore for now
	// assume MSB first
	unsigned int position = 0;
	//xil_printf("%d: len: %d\n", count, p->len);
//	for(int i = 0; i < 4; i++){
//		//xil_printf("%d: 0x%u\n", count, char_pload[i]);
//		position |= (char_pload[i] << ((3 - i) * 8));
//	}

	// for reverse order, use the following
	 for(int i = 0; i < 4; i++) {
		 position |= (char_pload[i] << i*8);
	 }


	if(position == 0xFFFFFFFF){
		xil_printf("RECEIVED LAST PACKET\n");
		// what do here
		song->finished = 1;
	}

	// payload
	char_fbuff = char_fbuff - 4;
	for(int i = 4; i < p->len; ++i){
		// just copy into it - note that the array is
		// int *, so must be cast as  char* and copied that way
		char_fbuff[i] = char_pload[i];
	}
	song->newest = (song->newest + 1) % song->num_frames; // next frame to be copied
//	xil_printf("Newest: %d\n", song->newest);

	//xil_printf("Num frames: %d\n", song->num_frames);
	song->fetching = 0; // can start the next request if necessary
}

struct tcp_pcb * establish_connection(struct ip_addr* ipaddr, int port, void* args, tcp_connected_fn connected)
{
	struct tcp_pcb* pcb;
	err_t err;

	pcb = tcp_new();
	tcp_arg(pcb, args);
	err = tcp_connect(pcb, ipaddr, port, connected);

	if (err) {
		xil_printf("tcp_connect failed\n");
		return NULL;
	}


	return pcb;
}

void start_song_ack(void* _start_args, struct tcp_pcb* tpcb, struct pbuf* p, err_t err)
{
	start_song* start_args = (start_song *)_start_args;
	if (!p) {
		tcp_close(tpcb);
		tcp_recv(tpcb, NULL);
	}
	/* indicate that the packet has been received */
	tcp_recved(tpcb, p->len);
	if (((char *)p->payload)[0] == START_ACK) {
		start_args->song_started = 1;
		xil_printf("RECEIVED START_ACK\n");
		return;
	}
	xil_printf("START_ACK not sent from server\n");
}

void start_song_callback(void* _start_args, struct tcp_pcb *newpcb, err_t err)
{
	start_song* start_args = (start_song *)_start_args;
	unsigned int song_name_len;
	char* message;

	// set recv callback
	tcp_recv(newpcb, start_song_ack);

	// allocate message
	song_name_len = strlen(start_args->song_name);
	message = (char *)malloc(song_name_len + 4); // + 4 for null char (1B), endpoint (1B), and frame size (2B)
	message[0] = START;
	strcpy(message + 1, start_args->song_name);
	message[1 + song_name_len] = 0x03;
	xil_printf("Size of frame: %d\n", start_args->frame_size);
	message[2 + song_name_len] = (char)((start_args->frame_size & 0x0000ff00) >>8); //start_args->frame_size;
	message[3 + song_name_len] = (char)(start_args->frame_size & 0xff);

	// send request
	err = tcp_write(newpcb, (void *)message, song_name_len + 4, TCP_WRITE_FLAG_COPY);
	if (err | tcp_output(newpcb)) {
		xil_printf("start_song_callback_failed");
	}
	free(message);


	return;
}

void next_request(struct tcp_pcb *newpcb)
{
	char message[1];
	message[0] = NEXT;
	int SZ = 1;

	tcp_write(newpcb, (void *)message, SZ, TCP_WRITE_FLAG_COPY);
	tcp_output(newpcb);
}

void next_frame_connected(void* _start_args, struct tcp_pcb *newpcb, err_t err)
{
	next_request(newpcb);
	//tcp_recv(newpcb, next_recv);

}

void init_song(stream_song* song, int num_frames)
{
	song->num_frames = num_frames;
	song->oldest = 0;
	song->newest = 0;
	song->finished = 0;
	song->fetching = 0;
	song->frame_location = 0;

	song->frames = (int **)malloc(sizeof(int*) * song->num_frames); // allows for two frames from server to be combined into one here
	if(!song->frames){
		xil_printf("Failed to allocate memory for frame pointers\n");
		return;
	}
	for (int i = 0; i < song->num_frames; i+=ETH_FRAMES_PER_FFT) {
		song->frames[i] = (int *)malloc(ETH_FRAME_SIZE*ETH_FRAMES_PER_FFT);
		for(int j = 1; j < ETH_FRAMES_PER_FFT; j++){
			song->frames[i+j] = (int *)((char *)song->frames[i] + ETH_FRAME_SIZE*j); // partway forms the next frame
		}
		if(!song->frames[i])
			xil_printf("%d: Failed to allocate memory for a frame\n",i );
	}
}
