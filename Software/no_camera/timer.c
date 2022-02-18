#include "CortexM3.h"

void Timer_Reset(void)
{
    TIMER->TIMER_RST = 1;
}

void Timer_Start(void)
{
    Delay(10);
    TIMER->TIMER_RST = 0;
    TIMER->TIMER_EN = 1;
}

void Timer_Pause(void)
{
    TIMER->TIMER_EN = 0;
}

void Timer_Show_Enable(void)
{
    TIMER->TIMER_SHOW_EN = 1;
}
