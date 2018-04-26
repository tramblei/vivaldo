/*
 * dma.h
 *
 *  Created on: Mar 11, 2018
 *      Author: tramblei
 */

#ifndef SRC_DMA_H_
#define SRC_DMA_H_

#include "xparameters.h"
#include "xil_types.h"
#include "xintc_l.h"
#include "stdlib.h"
#if defined (__arm__) || defined(__aarch64__)
#include "xil_printf.h"
#endif
#include "xil_cache.h"

// DMA
#define DMA1_BASE_ADDR 0x41e00000
#define DMA2_BASE_ADDR 0x41e10000

#define GOLDEN 0
#define ACTUAL 1

void set_memory(u32 *addr, u32 length, u32 value);
void print_memory(u32 *addr, u32 length);
void init_DMA_direct(unsigned int i);
void init_DMA_direct_int(unsigned int i);
void halt_DMA_direct(unsigned int i);
void dma_mm2s(void *baseaddr, u32 len, unsigned int i);
void dma_s2mm(void *baseaddr, u32 len, unsigned int i);
void dma_int_handler(void *baseaddr_p, unsigned int i);
void init_dma(unsigned int i);

int check_s2mm_status_idle(unsigned int i);
int check_mm2s_status_idle(unsigned int i);
unsigned int get_s2mm_status(unsigned int i);
int get_DMA_status(unsigned int i);

#endif /* SRC_DMA_H_ */
