/*
 * streaming.h
 *
 *  Created on: Feb 1, 2018
 *      Author: tramblei
 */

#ifndef STREAMING_H_
#define STREAMING_H_

#include "lwip/err.h"
#include "lwip/tcp.h"
#include "xil_printf.h"
#include "lwip/ip_addr.h"

#define SAMPLE_SIZE 4 // it sends integers now
#define ETH_FRAME_SIZE 1024
#define NUM_SAMPLES 1024
#define ETH_FRAMES_PER_FFT NUM_SAMPLES*SAMPLE_SIZE/ETH_FRAME_SIZE
#define NUM_FRAMES 20000 // allocate this many frames for the queue

typedef enum {
	SONG_LIST = 1,
	SHEET,
	START,
	START_ACK,
	NEXT,
	STOP,
	STOP_ACK,
	RECVD,
	ERR,
	BAD_MESSAGE
} endpoints;

typedef struct song_stream {
	struct tcp_pcb* pcb; // points to connection
	char START_ACK; // sent from server in response to START request
	char STOP_ACK; // sent from server w/ last frame
	char valid_connection; // set in tcp_connect callback when it returns w/o error
	unsigned int frame_size; // bytes
	char frames[]; // pointer to frames malloc'ed on the heap
} song_stream;

typedef struct start_song {
	int song_started;
	int frame_size;
	char* song_name;
} start_song; // passing args easier

typedef struct stream_song {
	int** frames; // pointer to array of frame arrays
	int num_frames; // 2 by default
	int frame_location;

	int fetching;

	// FIFO queue of frames
	int oldest; // next frame to read data into
	int newest;
	int finished;
} stream_song;

// start song shit
struct tcp_pcb * start_song_stream(struct ip_addr* ipaddr, int port, start_song* start_args);
struct tcp_pcb * establish_connection(struct ip_addr* ipaddr, int port, void* args, tcp_connected_fn connected);
err_t connect_callback(void* arg, struct tcp_pcb *newpcb, err_t err);
void get_song(char* song_name);
void start_song_ack(void* start_args, struct tcp_pcb* tpcb, struct pbuf* p, err_t err);
void start_song_callback(void* start_args, struct tcp_pcb *newpcb, err_t err);

// next shit
void next_frame_connected(void* _start_args, struct tcp_pcb *newpcb, err_t err);
void init_song(stream_song* song, int num_frames);
void next_recv(void* _song, struct tcp_pcb* tpcb, struct pbuf* p, err_t err);
void next_recv_beta(void* _song, struct tcp_pcb* tpcb, struct pbuf* p, err_t err);
void next_request(struct tcp_pcb * tpcb);
struct tcp_pcb * next_song_stream(struct ip_addr* ipaddr, int port, stream_song* song);


#endif
