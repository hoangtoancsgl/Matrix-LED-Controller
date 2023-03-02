#include "ms51.h"

#include "myDelay.h"
#include <stdio.h>
#include "uart0.h"
#include "gpio.h"

/*Output*/
#define LED P15
#define RESET_OPTO P10
#define ADD_OPTO P10

/*Input*/
#define SW_PORT P0
#define IN0 P00
#define IN1 P01
#define IN2 P02
#define IN3 P03
#define IN4 P04

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
        char port_value = SW_PORT&0x1F;
        printf("Port value: %d\n", port_value);
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





