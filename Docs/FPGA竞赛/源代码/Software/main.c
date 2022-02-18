#include "CortexM3.h"

int main(void) 
{	
    uint8_t i;
    for(i = 0; i < 10; i++){
        while(!key0_flag);
        key0_flag = 0;
        LCD_Display(i);
        if(i>0) DMA(&IMAGE->IMAGESRC[i][0],&IMAGE->IMAGESRC[0][0],2,76800);
        else    DMA(&IMAGE->IMAGESRC[i][0],&IMAGE->reserved_ddr[0],2,76800);

        while(!key1_flag);
        key1_flag = 0;
        Resizer_Start();
        // uint8_t led = 0;
        while(1){
            if(accdone_flag==1){
                LCD_Draw_FaceBox();
                accdone_flag = 0; 
                // while (1){
                //     led++;
                //     if(led==8)  led = 0;
                //     LED_LightUp(led);
                //     Delay(20000000); 
                //     LED_ShutDown(led);  
                // }
                break;
            }
            if(noface==1){ 
                // while (1){
                //     if(led==0)  led = 8;
                //     led--;
                //     LED_LightUp(led);
                //     Delay(20000000); 
                //     LED_ShutDown(led);  
                // }
								noface = 0;
                break;
            }
        }
        ACC_RegInit();
    }
    LED_LightUp(7);
    //ACC_NmsReturn();
    //ACC_RegInit();
}
