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
#include "config/gpioConfig.h"
#include "../Colorimetry/gammaLUT.h"
#include "../Colorimetry/testcharts.h"//includes data from DisplayCal

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

#define colorArr verificationTestchart

extern "C" void updateLeds(UArg arg0, UArg arg1) {
    uint32_t frameIdx = 0;
    brightness=31;
    uint32_t colorIdx = 0;
    System_printf("Brightness: %d, Color: 0x%06x, Idx %d\n",brightness,colorArr[colorIdx], colorIdx+1);
    System_flush();
    while (1) {

        uint32_t startTime = Clock_getTicks();
        static bool lastSW1State = true;
        static bool lastSW2State = true;
        if (!GPIO_read(LAUNCHPAD_SW1) && lastSW1State) {
//            brightness=(brightness+1)%32;
//            System_printf("Brightness: %d, Color: 0x%06x\n",brightness,colorArr[colorIdx]);
//            System_flush();
            colorIdx=(colorIdx-1)% (sizeof(colorArr) / sizeof(uint32_t));
            System_printf("Brightness: %d, Color: 0x%06x, Idx %d\n",brightness,colorArr[colorIdx], colorIdx+1);
            System_flush();
        }


        if (!GPIO_read(LAUNCHPAD_SW2) && lastSW2State) {
            colorIdx=(colorIdx+1)% (sizeof(colorArr) / sizeof(uint32_t));
            System_printf("Brightness: %d, Color: 0x%06x, Idx %d\n",brightness,colorArr[colorIdx], colorIdx+1);
            System_flush();
        }
        lastSW2State=GPIO_read(LAUNCHPAD_SW2);
        lastSW1State=GPIO_read(LAUNCHPAD_SW1);
        //fill_rainbow((CRGB *) ledStringVals.fullArray, NUM_LEDS, frameIdx, 20);
        fill_solid((CRGB *) ledStringVals.fullArray, 1, colorArr[colorIdx]);
        ledStringMasks.fullArray[0]=255;
        //fill_solid((CRGB *)ledStringVals.fullArray, NUM_LEDS,CRGB::White);

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

        frameBuf[bufIdx++] = (brightness | 0xE0);
        frameBuf[bufIdx++] = (gammaLUT[scale8(ledStringVals.fullArray[i].blue, ledStringMasks.fullArray[i])][LUT_BLUE]);
        frameBuf[bufIdx++] = (gammaLUT[scale8(ledStringVals.fullArray[i].green, ledStringMasks.fullArray[i])][LUT_GREEN]);
        frameBuf[bufIdx] = (gammaLUT[scale8(ledStringVals.fullArray[i].red, ledStringMasks.fullArray[i])][LUT_RED]);
    }

}

void initFrameBuf() {
    frameBuf[0] = 0x00;
    frameBuf[1] = 0x00;
    frameBuf[2] = 0x00;
    frameBuf[3] = 0x00;

    for (size_t i = BUFSIZE - TERM_BYTES; i < BUFSIZE; i++) {
        frameBuf[i] = 0x00;
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

