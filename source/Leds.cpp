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
#include "FastLED/FastLED.h"

#include "Leds.h"
#include "defs.h"
#include "config/gpioConfig.h"
#include "utils/ledDefs.h"
#include "utils/iodefs.h"

void buildFrameBuf();
void initFrameBuf();

#define TERM_BYTES ((NUM_LEDS+14)/16) //https://github.com/pololu/apa102-arduino/blob/master/APA102.h
#define BUFSIZE (4+NUM_LEDS*4+TERM_BYTES)

CRGB colorCorrection=LEDColorCorrection::TypicalLEDStrip;
CRGB colorTemperature=ColorTemperature::UncorrectedTemperature;
LedStringVals ledStringVals;
LedStringMasks ledStringMasks;
uint8_t brightness;

uint8_t frameBuf[BUFSIZE];
uint8_t rxbuf[BUFSIZE]; //Garbage data, required by RTOS drivers

extern "C" void updateLeds(UArg arg0, UArg arg1) {
	uint32_t frameIdx = 0;

	initFrameBuf();

	while (1) {
		fill_rainbow((CRGB *)ledStringVals.fullArray, NUM_LEDS, frameIdx, 20);
		//fill_solid((CRGB *)ledStringVals.fullArray, NUM_LEDS,CRGB::Black);
		//fill_solid((CRGB *)ledStringVals.fullArray, (frameIdx/10)%NUM_LEDS,CRGB::White);
		if(frameIdx%60==0)
			brightness++;

		calculateMask(segValQuestion,ledStringMasks.hoursTens,0);

		buildFrameBuf();

		SPI_Transaction transaction;
		transaction.count = sizeof(frameBuf);
		transaction.txBuf = frameBuf;
		transaction.rxBuf = rxbuf;
		transaction.arg = (void *)frameIdx;
		bool success;
		success = SPI_transfer(ledSPIHandle, &transaction);
		if (!success) {
			System_printf("SPI Transaction Failed, status %d", transaction.status);
		}

		++frameIdx;
		Task_sleep(1000 / LED_FPS);
	}
}

void buildFrameBuf() {
	//CRGB adjustment = CLEDController::computeAdjustment(255, colorCorrection, colorTemperature);
	for (size_t i = 0; i < NUM_LEDS; i++) {
		size_t bufIdx = i * 4 + 4;

		frameBuf[bufIdx++] = ~(((ledStringMasks.fullArray[i])?0:brightness) | 0xE0);
		frameBuf[bufIdx++] = ~(ledStringVals.fullArray[i]).blue;
		frameBuf[bufIdx++] = ~(ledStringVals.fullArray[i]).green;
		frameBuf[bufIdx] = ~(ledStringVals.fullArray[i]).red;
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
