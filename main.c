#include "ms51.h"

#include "myDelay.h"
#include <stdio.h>
#include "uart0.h"
#include "gpio.h"

/*Output*/
#define LED P15
#define RESET_OPTO P10
#define ADD_OPTO P13
#define SUB_OPTO P11

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
  {
    if(program<=16)
    {
        for(int i=0; i < program; i++)
        {
            ADD_OPTO = 1;
            DelayMs(300);
            ADD_OPTO = 0;
            DelayMs(300);
        }
    }
    else
    {
        for(int i=0; i < 32-program; i++)
        {
            SUB_OPTO = 1;
            DelayMs(300);
            SUB_OPTO = 0;
            DelayMs(300);
        }
    }
  }
}

char check_button()
{
    if(!Enter_button)
    {
        DelayMs(20);
        if(!Enter_button)
        {
            while(!Enter_button);
            return 1;
        }
        else return 0; 
    }
    return 0;
}

void handle_request()
{
    char program = SW_PORT&0x1F;
    program = program^0x1F;
    if(program>=0 && program<=31) 
    {
        printf("Program %d\ selected!\n", program);
        select_program(program);
    }

}

void main(void)
{
    DelayInit();
    GPIO_Init();
    UART0_Init();
    
    char current_status = SW_PORT&0x1F;
    while(1) 
    {
        if(check_button()) handle_request();
        if((SW_PORT&0x1F) != current_status) 
        {
            DelayMs(200);
            current_status = SW_PORT&0x1F;
            handle_request();
        }
    }
}





