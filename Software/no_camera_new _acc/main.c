#include "CortexM3.h"

int main(void) 
{	
    uint16_t x, y;
    while(!key0_flag);
    key0_flag = 0;
    // CAMERA_ImageCap();
    // for (x = 0; x < 240; x++) {
    //     for (y = 0; y < 320; y++) {
    //         LCD_Fast_DrawPoint(y, x, CAMERA->CAMERA_VALUE[x][y]);
    //     }
	// }
    LCD_Display(0);
    while(!key1_flag);
    key1_flag = 0;
    Resizer_Start();
    uint8_t led = 0;
    while(1){
        if(accdone_flag==1){
            LCD_Draw_FaceBox();
            accdone_flag = 0; 
            while (1){
                led++;
                if(led==8)  led = 0;
                LED_LightUp(led);
                Delay(20000000); 
                LED_ShutDown(led);  
            }
            break;
        }
        if(noface==1){ 
            while (1){
                if(led==0)  led = 8;
                led--;
                LED_LightUp(led);
                Delay(20000000); 
                LED_ShutDown(led);  
            }
            break;
        }
    }
    //ACC_NmsReturn();
    //ACC_RegInit();
}
