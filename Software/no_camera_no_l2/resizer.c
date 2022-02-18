#include "CortexM3.h"

void ResizerDoneHandler(void)
{
    ACC_Start();
}

void Resizer_Start(void)
{
    RESIZER->Resizer_Start = 1;
}
