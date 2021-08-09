/*
 * Leds.cpp
 *
 *  Created on: Aug 18, 2020
 *      Author: Dan
 */
#include <source/config/serialConfig.h>
#include <xdc/std.h>
#include <ti/drivers/GPIO.h>
#include <xdc/runtime/System.h>
#include <ti/sysbios/BIOS.h>
#include <ti/sysbios/knl/Task.h>
#include <ti/sysbios/knl/Mailbox.h>
#include <ti/sysbios/knl/Clock.h>
#include "FastLED/FastLED.h"

#include "Leds.h"
#include "defs.h"
#include "config/gpioConfig.h"
#include "utils/ledDefs.h"
#include "utils/iodefs.h"

void buildFrameBuf();
void initFrameBuf();
void initMailboxes();

#define TERM_BYTES ((NUM_LEDS+14)/16) //https://github.com/pololu/apa102-arduino/blob/master/APA102.h
#define BUFSIZE (4+NUM_LEDS*4+TERM_BYTES)

LedStringVals ledStringVals;
LedStringMasks ledStringMasks; //255 means on
uint8_t brightness;

uint8_t frameBuf[BUFSIZE];
uint8_t rxbuf[BUFSIZE]; //Garbage data, required by RTOS drivers

extern "C" void updateLeds(UArg arg0, UArg arg1) {
    uint32_t frameIdx = 0;

    while (1) {

        uint32_t startTime = Clock_getTicks();

        fill_rainbow((CRGB *) ledStringVals.fullArray, NUM_LEDS, frameIdx, 20);
        //fill_solid((CRGB *)ledStringVals.fullArray, NUM_LEDS,CRGB::Black);
        //fill_solid((CRGB *)ledStringVals.fullArray, NUM_LEDS,CRGB::White);
        //if (frameIdx % 60 == 0)
            brightness=31;

        SegmentMaskRequest request;

        while (Mailbox_pend(maskRequestMailbox, &request, BIOS_NO_WAIT)) {
            uint8_t *selectedMaskArray;
            switch (request.segmentLedId) {
                case (SEG_LED_ID_HOURS_TENS):
                    selectedMaskArray = ledStringMasks.hoursTens;
                    break;
//				case (SEG_LED_ID_HOURS_ONES):
//					selectedMaskArray = ledStringMasks.hoursOnes;
//					break;
//				case (SEG_LED_ID_MINUTES_TENS):
//					selectedMaskArray = ledStringMasks.minutesTens;
//					break;
//				case (SEG_LED_ID_MINUTES_TENS):
//					selectedMaskArray = ledStringMasks.minutesOnes;
//					break;
            }
            if (selectedMaskArray != 0)
                calculateMask(request.segState, selectedMaskArray, 0);
        }

        buildFrameBuf();

        SPI_Transaction transaction;
        transaction.count = sizeof(frameBuf);
        transaction.txBuf = frameBuf;
        transaction.rxBuf = rxbuf;
        transaction.arg = (void *) frameIdx;
        bool success;
        success = SPI_transfer(ledSPIHandle, &transaction);
        if (!success) {
            System_printf("SPI Transaction Failed, status %d", transaction.status);
        }

        ++frameIdx;
        uint32_t delayOffset;
        uint32_t completeTime = Clock_getTicks();
        if (completeTime > startTime)
            delayOffset = completeTime - startTime;
        Task_sleep(1000 / LED_FPS - delayOffset); //make framerate more consistent
    }
}

void buildFrameBuf() {
    for (size_t i = 0; i < NUM_LEDS; i++) {
        size_t bufIdx = i * 4 + 4;

        frameBuf[bufIdx++] = ~(brightness | 0xE0);
        frameBuf[bufIdx++] = ~(scale8(ledStringVals.fullArray[i].blue, ledStringMasks.fullArray[i]));
        frameBuf[bufIdx++] = ~(scale8(ledStringVals.fullArray[i].green, ledStringMasks.fullArray[i]));
        frameBuf[bufIdx] = ~(scale8(ledStringVals.fullArray[i].red, ledStringMasks.fullArray[i]));
    }

}

void initFrameBuf() {
    frameBuf[0] = ~0x00;
    frameBuf[1] = ~0x00;
    frameBuf[2] = ~0x00;
    frameBuf[3] = ~0x00;

    for (size_t i = BUFSIZE - TERM_BYTES; i < BUFSIZE; i++) {
        frameBuf[i] = ~0x00;
    }
}

void initMailboxes() {
    Mailbox_Params maskparams;
    Mailbox_Params_init(&maskparams);
    maskRequestMailbox = Mailbox_create(sizeof(SegmentMaskRequest), 6, &maskparams, NULL);
}

extern "C" void initLeds() {		//really has to be done first
    initMailboxes();
    initFrameBuf();
}

