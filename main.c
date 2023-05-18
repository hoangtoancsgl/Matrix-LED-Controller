#include "ms51.h"

#include "myDelay.h"
#include <stdio.h>
#include "uart0.h"
#include "gpio.h"

#include "RCSwitch.h"

/*LED Output*/
#define LED P15

__xdata RCSWITCH_t myRCSwitch;


void main(void)
{
    DelayInit();
    GPIO_Init();
    UART0_Init();

    initSwitch(&myRCSwitch);

    while (1) 
    {
        
    }
}



void RF_pin_ISR(void) __interrupt (7)
{
    __xdata RCSWITCH_t * __data RCSwitch  = &myRCSwitch;

	static unsigned int changeCount = 0;
	static unsigned long lastTime = 0;
	static unsigned int repeatCount = 0;

	const long time = 0; // = micros();
	const unsigned int duration = time - lastTime;

	if (duration > RCSwitch->nSeparationLimit) {
		// A long stretch without signal level change occurred. This could
		// be the gap between two transmission.
		if (diff(duration, RCSwitch->timings[0]) < 200) {
			// This long signal is close in length to the long signal which
			// started the previously recorded timings; this suggests that
			// it may indeed by a a gap between two transmissions (we assume
			// here that a sender will send the signal multiple times,
			// with roughly the same gap between them).
			repeatCount++;
			if(repeatCount == 2) 
				if(receiveProtocol(RCSwitch, changeCount)) repeatCount = 0;		
		}
		changeCount = 0;
	}
	// detect overflow
	if (changeCount >= RCSWITCH_MAX_CHANGES) {
		changeCount = 0;
		repeatCount = 0;
	}

	RCSwitch->timings[changeCount++] = duration;
	lastTime = time;
}
