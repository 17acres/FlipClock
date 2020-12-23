/*
 * ledDefs.c
 *
 *  Created on: Dec 22, 2020
 *      Author: Dan
 */
#include "ledDefs.h"
#define LEDS_PER_SEG 3

void calculateMask(SegState segState, bool returnMaskArray[], uint8_t numExtraLeds) {

	returnMaskArray[LEDS_PER_SEG * 0 + 0] = (segState.c == SEG_HIDE);
	returnMaskArray[LEDS_PER_SEG * 0 + 1] = (segState.c == SEG_HIDE);
	returnMaskArray[LEDS_PER_SEG * 0 + 2] = (segState.c == SEG_HIDE);

	for (int i = 0; i < numExtraLeds; i++) {
		returnMaskArray[3 + i] = (segState.extra == SEG_HIDE);
	}

	returnMaskArray[numExtraLeds + LEDS_PER_SEG * 1 + 0] = (segState.b == SEG_HIDE);
	returnMaskArray[numExtraLeds + LEDS_PER_SEG * 1 + 1] = (segState.b == SEG_HIDE);
	returnMaskArray[numExtraLeds + LEDS_PER_SEG * 1 + 2] = (segState.b == SEG_HIDE);

	returnMaskArray[numExtraLeds + LEDS_PER_SEG * 2 + 0] = (segState.a == SEG_HIDE);
	returnMaskArray[numExtraLeds + LEDS_PER_SEG * 2 + 1] = (segState.a == SEG_HIDE);
	returnMaskArray[numExtraLeds + LEDS_PER_SEG * 2 + 2] = (segState.a == SEG_HIDE);

	returnMaskArray[numExtraLeds + LEDS_PER_SEG * 3 + 0] = (segState.f == SEG_HIDE);
	returnMaskArray[numExtraLeds + LEDS_PER_SEG * 3 + 1] = (segState.f == SEG_HIDE);
	returnMaskArray[numExtraLeds + LEDS_PER_SEG * 3 + 2] = (segState.f == SEG_HIDE);

	returnMaskArray[numExtraLeds + LEDS_PER_SEG * 4 + 0] = (segState.g == SEG_HIDE);
	returnMaskArray[numExtraLeds + LEDS_PER_SEG * 4 + 1] = (segState.g == SEG_HIDE);
	returnMaskArray[numExtraLeds + LEDS_PER_SEG * 4 + 2] = (segState.g == SEG_HIDE);

	returnMaskArray[numExtraLeds + LEDS_PER_SEG * 5 + 0] = (segState.e == SEG_HIDE);
	returnMaskArray[numExtraLeds + LEDS_PER_SEG * 5 + 1] = (segState.e == SEG_HIDE);
	returnMaskArray[numExtraLeds + LEDS_PER_SEG * 5 + 2] = (segState.e == SEG_HIDE);

	returnMaskArray[numExtraLeds + LEDS_PER_SEG * 6 + 0] = (segState.d == SEG_HIDE);
	returnMaskArray[numExtraLeds + LEDS_PER_SEG * 6 + 1] = (segState.d == SEG_HIDE);
	returnMaskArray[numExtraLeds + LEDS_PER_SEG * 6 + 2] = (segState.d == SEG_HIDE);
}

void requestMaskUpdate(SegmentMaskRequest *request, uint32_t timeout){
	Mailbox_post(maskRequestMailbox, request, timeout);
}