/* uart0.c */
#include <ms51.h>
#include "uart0.h"

void UART0_Init(void)
{
	/* baud rate Timer 3 */
	T3CON |= (1 << 5);
	/* timer 3 */
	/* Pre-Scalar */
	T3CON &= ~0x07;
	T3CON |= 0x00;
	/* Interrupt */
	EIE1 &= ~(1 << 1);
	RH3 = 0xff;
	RL3 = 0xcc;
	T3CON |= (1 << 3);
	PCON &= ~(1 << 7);
	/* GPIO */
	P06 = 1;
	P0M1 &= ~(1 << 6);
	P0M2 |= (1 << 6);
	P07 = 1;
	P0M1 &= ~(1 << 7);
	P0M2 &= ~(1 << 7);
	/* uart 0 */
	PCON &= ~(1 << 6);
	SM0 = 0;
	SM1 = 1;
	/* enable */
	REN = 1;
}

void UART0_SendData(uint8_t u8Data)
{
	SBUF = u8Data;
    while (UART0_GetFlag(UART0_TX_FLAG) == 0);
    UART0_ClearFlag(UART0_TX_FLAG);
}

void UART0_SendString(char *str)
{
    while (*str) UART0_SendData(*str++);
}

uint8_t UART0_GetData(void)
{
	return SBUF;
}

void UART0_EnableInterrupt(void)
{
	ES = 1;
}

void UART0_DisableInterrupt(void)
{
	ES = 0;
}

void UART0_ClearFlag(uint8_t u8Flag)
{
	SCON &= ~(u8Flag);
}

uint8_t UART0_GetFlag(uint8_t u8Flag)
{
	if (SCON & (u8Flag)) {
		return 1;
	} else {
		return 0;
	}
}

int putchar(int ch)
{
  UART0_SendString(&ch);
  return ch;
}
