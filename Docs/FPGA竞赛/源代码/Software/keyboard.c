#include "CortexM3.h"

uint8_t key3_flag;
uint8_t key2_flag;
uint8_t key1_flag;
uint8_t key0_flag;

void Key0Handler(void)
{
	key0_flag = 1;
}
void Key1Handler(void)
{
	key1_flag = 1;
}
void Key2Handler(void)
{
	key2_flag = 1;
}
void Key3Handler(void)
{
	key3_flag = 1;
}
void Key_Init(void)
{
	key0_flag = 0;
	key1_flag = 0;
	key2_flag = 0;
	key3_flag = 0;
}
