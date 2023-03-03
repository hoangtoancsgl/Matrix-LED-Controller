#include "ms51.h"

#include "myDelay.h"
#include <stdio.h>
#include "uart0.h"
#include "gpio.h"

/*Output*/
#define LED P15
#define RESET_OPTO P10
#define ADD_OPTO P10

/*Input: 5 switch are connected to P0, from P00 to P04*/
#define SW_PORT P0

/*Enter button to export data to LED card*/
#define Enter_button P12

void select_program(char program)
{
  RESET_OPTO = 1;
  DelayMs(10);
  RESET_OPTO = 0;
  DelayMs(10);
  if(program>0)
    for(int i=0; i < program; i++)
    {
      ADD_OPTO = 1;
      DelayMs(200);
      ADD_OPTO = 0;
      DelayMs(200);
    }
}

void check_request()
{
    if(!Enter_button)
    {
        while(!Enter_button);
        char  program = SW_PORT&0x1F;
        
        if(program>=0 && program<=31) 
        {
            printf("Program %d\ selected!\n", program);
            select_program(program);
        }
    }
}

void main(void)
{
    DelayInit();
    GPIO_Init();
    UART0_Init();

    while (1) 
    {
        check_request();
    }
}





