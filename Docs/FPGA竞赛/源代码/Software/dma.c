#include "CortexM3.h"
#include <string.h>

/****************************DMA*******************************/

void DMA(uint32_t src,uint32_t dst,uint8_t size,uint32_t len)
{
	DMAC -> DMA_SRC = src;
	DMAC -> DMA_DST = dst;
	DMAC -> DMA_SIZE = size;
	DMAC -> DMA_LEN = len;
	__wfi();
}

void DMA_Image(uint8_t ImageNum)
{
	uint32_t srcAddr;
	srcAddr = 0x4040AA00 + (ImageNum * 76800 * 4);
	if(ImageNum >= 1)
		DMA(srcAddr, 0x4040AA00, 2, 76800);
}
