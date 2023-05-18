
#include <stdio.h>
#include <string.h>

#include "RCSwitch.h"

#define TAG "RF433"

static const Protocol pro = {
   350, {  1, 31 }, {  1,  3 }, {  3,  1 }, false    // protocol 1
};


void initSwitch(RCSWITCH_t * RCSwitch) {
	RCSwitch->nReceivedValue = 0;
	RCSwitch->nReceivedBitlength = 0;
	RCSwitch->nReceivedDelay = 0;
	RCSwitch->nReceivedProtocol = 0;
	RCSwitch->nReceiveTolerance = 60;
	RCSwitch->nSeparationLimit = 4300;

	RCSwitch->nReceiverInterrupt = -1;
	RCSwitch->nReceivedValue = 0;
}


bool available(RCSWITCH_t * RCSwitch) {
	return RCSwitch->nReceivedValue != 0;
}

void resetAvailable(RCSWITCH_t * RCSwitch) {
	RCSwitch->nReceivedValue = 0;
}

unsigned long getReceivedValue(RCSWITCH_t * RCSwitch) {
	return RCSwitch->nReceivedValue;
}


/* helper function for the receiveProtocol method */
unsigned int diff(int A, int B) {
	return ((A - B)>0) ? A-B : B-A;
}


bool receiveProtocol(RCSWITCH_t * RCSwitch, unsigned int changeCount) {

	unsigned long code = 0;
	//Assuming the longer pulse length is the pulse captured in timings[0]
	const unsigned int syncLengthInPulses =  ((pro.syncFactor.low) > (pro.syncFactor.high)) ? (pro.syncFactor.low) : (pro.syncFactor.high);
	const unsigned int delay = RCSwitch->timings[0] / syncLengthInPulses;
	const unsigned int delayTolerance = delay * RCSwitch->nReceiveTolerance / 100;

	/* For protocols that start low, the sync period looks like
	 *				_________
	 *_____________|		 |XXXXXXXXXXXX|
	 *
	 * |--1st dur--|-2nd dur-|-Start data-|
	 *
	 * The 3rd saved duration starts the data.
	 *
	 * For protocols that start high, the sync period looks like
	 *
	 *	______________
	 * |			  |____________|XXXXXXXXXXXXX|
	 *
	 * |-filtered out-|--1st dur--|--Start data--|
	 *
	 * The 2nd saved duration starts the data
	 */

	for (uint8_t i = 1; i < changeCount - 1; i += 2) {
		code <<= 1;
		if (diff(RCSwitch->timings[i], delay * pro.zero.high) < delayTolerance &&
			diff(RCSwitch->timings[i + 1], delay * pro.zero.low) < delayTolerance) {
			// zero
		} else if (diff(RCSwitch->timings[i], delay * pro.one.high) < delayTolerance &&
							 diff(RCSwitch->timings[i + 1], delay * pro.one.low) < delayTolerance) {
			// one
			code |= 1;
		} else {
			// Failed
			return false;
		}
	}

	if (changeCount > 7) {		// ignore very short transmissions: no device sends them, so this must be noise
		RCSwitch->nReceivedValue = code;
		RCSwitch->nReceivedBitlength = (changeCount - 1) / 2;
		RCSwitch->nReceivedDelay = delay;
		return true;
	}

	return false;
}
