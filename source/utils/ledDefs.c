/*
 * ledDefs.c
 *
 *  Created on: Dec 22, 2020
 *      Author: Dan
 */
#include "ledDefs.h"
#define LEDS_PER_SEG 3

//Returns 255 if fully off, 0 if on
void calculateMask(SegStateFade segState, uint8_t returnMaskArray[], bool isExtraInSeries, uint8_t extraMaskArray[], uint8_t numExtraLeds) {

    returnMaskArray[LEDS_PER_SEG * 0 + 0] = segState.c;
    returnMaskArray[LEDS_PER_SEG * 0 + 1] = segState.c;
    returnMaskArray[LEDS_PER_SEG * 0 + 2] = segState.c;

    if (isExtraInSeries) {
        for (int i = 0; i < numExtraLeds; i++) {
            returnMaskArray[3 + i] = segState.extra;
        }
    } else {
        if (extraMaskArray != 0) {
            for (int i = 0; i < numExtraLeds; i++) {
                returnMaskArray[i] = segState.extra;
            }
        }
        numExtraLeds = 0; //no offset
    }

    returnMaskArray[numExtraLeds + LEDS_PER_SEG * 1 + 0] = segState.b;
    returnMaskArray[numExtraLeds + LEDS_PER_SEG * 1 + 1] = segState.b;
    returnMaskArray[numExtraLeds + LEDS_PER_SEG * 1 + 2] = segState.b;

    returnMaskArray[numExtraLeds + LEDS_PER_SEG * 2 + 0] = segState.a;
    returnMaskArray[numExtraLeds + LEDS_PER_SEG * 2 + 1] = segState.a;
    returnMaskArray[numExtraLeds + LEDS_PER_SEG * 2 + 2] = segState.a;

    returnMaskArray[numExtraLeds + LEDS_PER_SEG * 3 + 0] = segState.f;
    returnMaskArray[numExtraLeds + LEDS_PER_SEG * 3 + 1] = segState.f;
    returnMaskArray[numExtraLeds + LEDS_PER_SEG * 3 + 2] = segState.f;

    returnMaskArray[numExtraLeds + LEDS_PER_SEG * 4 + 0] = segState.g;
    returnMaskArray[numExtraLeds + LEDS_PER_SEG * 4 + 1] = segState.g;
    returnMaskArray[numExtraLeds + LEDS_PER_SEG * 4 + 2] = segState.g;

    returnMaskArray[numExtraLeds + LEDS_PER_SEG * 5 + 0] = segState.e;
    returnMaskArray[numExtraLeds + LEDS_PER_SEG * 5 + 1] = segState.e;
    returnMaskArray[numExtraLeds + LEDS_PER_SEG * 5 + 2] = segState.e;

    returnMaskArray[numExtraLeds + LEDS_PER_SEG * 6 + 0] = segState.d;
    returnMaskArray[numExtraLeds + LEDS_PER_SEG * 6 + 1] = segState.d;
    returnMaskArray[numExtraLeds + LEDS_PER_SEG * 6 + 2] = segState.d;
}

//Message is COPIED into mailbox, no worries about pointer expiration
void requestMaskUpdate(SegmentMaskRequest *request, uint32_t timeout) {
    Mailbox_post(maskRequestMailbox, request, timeout);
}
Mailbox_Handle maskRequestMailbox;
