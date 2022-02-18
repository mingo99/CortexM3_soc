#include "CortexM3.h"
#include <string.h>

/**************************************SYSTICK*******************************************/
void SysTickHandler(void) {
    Set_SysTick_CTRL(0);
    SCB->ICSR = SCB->ICSR | (1 << 25);
}

void Set_SysTick_CTRL(uint32_t ctrl)
{
	SysTick->CTRL = ctrl;
}
void Set_SysTick_LOAD(uint32_t load)
{
	SysTick->LOAD = load;
}
uint32_t Read_SysTick_VALUE(void)
{
	return(SysTick->VAL );
}
void Set_SysTick_VALUE(uint32_t value)
{
	SysTick->VAL  = value;
}
uint32_t SysTick_Init(void)
{
	SysTick->CTRL = 0;
	SysTick->LOAD = 0xffffff;
	SysTick->VAL  = 0;
	SysTick->CTRL = 0x5;
	while(SysTick->VAL  == 0);
	return(SysTick->VAL );
}
uint8_t SysTick_Stop(uint32_t *duration_t,uint32_t start_t)
{
	uint32_t stop_t;
	stop_t = SysTick->VAL ;
	if((SysTick->CTRL & 0x10000) == 0)
	{
		*duration_t = start_t - stop_t;
		return(1);
	}
	else
	{
		return(0);
	}
}
void Delay(uint32_t time)
{
	Set_SysTick_CTRL(0);
	Set_SysTick_LOAD(time);
	Set_SysTick_VALUE(0);
	Set_SysTick_CTRL(0x7);
	__wfi();

}
