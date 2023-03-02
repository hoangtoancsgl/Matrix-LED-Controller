#include "myDelay.h"

static void delay1ms(void);

void delay1ms(void)
{
	TH1 = 0;
	TL1 = 0;
	TR1 = 1;
	while (TH1 * 256 + TL1 < 16000) {
	}
	TR1 = 0;
}

void DelayInit(void)
{
    CKCON |= (1 << 4);
    TMOD &= ~(0xF0);
    TMOD |= 0x10;
    TR1 = 0;
}

void DelayMs(uint16_t u16Delay)
{
    while (u16Delay) {
        delay1ms();
        --u16Delay;
    }
}
