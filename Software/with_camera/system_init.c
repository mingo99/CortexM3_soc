#include "CortexM3.h"

/*----------------------------------------------------------------------------
    Define clocks
 *----------------------------------------------------------------------------*/
#define __XTAL            (50000000UL)    /* Oscillator frequency             */
#define __SYSTEM_CLOCK    (__XTAL)

/*----------------------------------------------------------------------------
    Clock Variable definitions
 *----------------------------------------------------------------------------*/
uint32_t SystemCoreClock = __SYSTEM_CLOCK;/*!< System Clock Frequency (Core Clock)*/

/*----------------------------------------------------------------------------
    Clock functions
 *----------------------------------------------------------------------------*/
/**
 * Update SystemCoreClock variable
 */
void SystemCoreClockUpdate (void)
{
    SystemCoreClock = __SYSTEM_CLOCK;
}

/*Setup the microcontroller system.  Initialize the System.*/
void SystemInit(void)
{
    // Update SystemCoreClock
    SystemCoreClockUpdate();
    // IRQ Enable
    NVIC_EnableIRQ(SysTick_IRQn);
    NVIC_EnableIRQ(DMAWakeup_IRQn);
    NVIC_EnableIRQ(ACCConvDone_TRQn);
    NVIC_EnableIRQ(ACCNoFace_IRQn);
    NVIC_EnableIRQ(ACCReadResults_IRQn);
    NVIC_EnableIRQ(KEY0_IRQn);
    NVIC_EnableIRQ(KEY1_IRQn);
    NVIC_EnableIRQ(KEY2_IRQn);
    NVIC_EnableIRQ(KEY3_IRQn);
    NVIC_EnableIRQ(RESIZERDone_IRQn);
    // Key Initial
    Key_Init();
    // GPIO Initial
    Set_GPIO_Dir(0xFF00);
    // Camera Initial
    CAMERA_Init();
    LCD_Init(5);
    // UART Initial
    uart_Init ( UART, (SystemCoreClock / 115200), 1,1,0,0,0,0 );
    // ACC Initial
    // ACC_ImageInit();
    ACC_RegInit();
}
