#include "CortexM3.h"
#include <string.h>

/****************************UART*******************************/

 void UARTRXHandler(void) {
     //uartrx_flag = 1;
 }
 
 void UARTTXHandler(void) {
     //uarttx_flag = 1;
 }
 
 void UARTOVRHandler(void) {
     //uartovr_flag = 1;
 }

 uint32_t  uart_Init( UART_TypeDef *uart, uint32_t divider, uint32_t tx_en,
                           uint32_t rx_en, uint32_t tx_irq_en, uint32_t rx_irq_en, uint32_t tx_ovrirq_en, uint32_t rx_ovrirq_en)
 {
       uint32_t new_ctrl=0;

       if (tx_en!=0)        new_ctrl |=  UART_CTRL_TXEN_Msk;
       if (rx_en!=0)        new_ctrl |=  UART_CTRL_RXEN_Msk;
       if (tx_irq_en!=0)    new_ctrl |=  UART_CTRL_TXIRQEN_Msk;
       if (rx_irq_en!=0)    new_ctrl |=  UART_CTRL_RXIRQEN_Msk;
       if (tx_ovrirq_en!=0) new_ctrl |=  UART_CTRL_TXORIRQEN_Msk;
       if (rx_ovrirq_en!=0) new_ctrl |=  UART_CTRL_RXORIRQEN_Msk;

        uart->CTRL = 0;         /* Disable UART when changing configuration */
        uart->BAUDDIV = divider;
        uart->CTRL = new_ctrl;  /* Update CTRL register to new value */

       if(( uart->STATE & ( UART_STATE_RXOR_Msk |  UART_STATE_TXOR_Msk))) return 1;
       else return 0;
 }

 uint32_t  uart_GetRxBufferFull( UART_TypeDef * uart)
 {
        return (( uart->STATE &  UART_STATE_RXBF_Msk)>>  UART_STATE_RXBF_Pos);
 }
 uint32_t  uart_GetTxBufferFull( UART_TypeDef * uart)
 {
        return (( uart->STATE &  UART_STATE_TXBF_Msk)>>  UART_STATE_TXBF_Pos);
 }
 void  uart_SendChar( UART_TypeDef * uart, char txchar)
 {
       while( 1 ){
              if(!(uart->STATE &  UART_STATE_TXBF_Msk)) break;
       };
        uart->DATA = (uint32_t)txchar;
 }
 char  uart_ReceiveChar( UART_TypeDef * uart)
 {     
       while(!( uart->STATE &  UART_STATE_RXBF_Msk));
       return (char)( uart->DATA);
       
 }
 uint32_t  uart_GetOverrunStatus( UART_TypeDef *uart)
 {
        return (( uart->STATE & ( UART_STATE_RXOR_Msk |  UART_STATE_TXOR_Msk))>> UART_STATE_TXOR_Pos);
 }
 uint32_t  uart_ClearOverrunStatus( UART_TypeDef *uart)
 {
        uart->STATE = ( UART_STATE_RXOR_Msk |  UART_STATE_TXOR_Msk);
        return (( uart->STATE & ( UART_STATE_RXOR_Msk |  UART_STATE_TXOR_Msk))>> UART_STATE_TXOR_Pos);
 }
 uint32_t  uart_GetBaudDivider( UART_TypeDef *uart)
 {
       return  uart->BAUDDIV;
 }
 uint32_t  uart_GetTxIRQStatus( UART_TypeDef *uart)
 {
       return (( uart->INTSTATUS &  UART_CTRL_TXIRQ_Msk)>> UART_CTRL_TXIRQ_Pos);
 }
 uint32_t  uart_GetRxIRQStatus( UART_TypeDef *uart)
 {
       return (( uart->INTSTATUS &  UART_CTRL_RXIRQ_Msk)>> UART_CTRL_RXIRQ_Pos);
 }
 void  uart_ClearTxIRQ( UART_TypeDef *uart)
 {
        uart->INTCLEAR =  UART_CTRL_TXIRQ_Msk;
 }
 void  uart_ClearRxIRQ( UART_TypeDef *uart)
 {
        uart->INTCLEAR =  UART_CTRL_RXIRQ_Msk;
 }
 void  uart_SendString(char *string) {
        uint32_t length,i;
        length = strlen(string);
        for(i = 0;i < length;i++) {
               uart_SendChar(UART,string[i]);
        }
 }
