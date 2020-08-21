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

void buildFrameBuf();
void initFrameBuf();

#define TERM_BYTES ((NUM_LEDS+14)/16) //https://github.com/pololu/apa102-arduino/blob/master/APA102.h
#define BUFSIZE (4+NUM_LEDS*4+TERM_BYTES)

CRGB colorCorrection=LEDColorCorrection::TypicalLEDStrip;
CRGB colorTemperature=ColorTemperature::UncorrectedTemperature;
CRGB leds[NUM_LEDS];
uint8_t brightness;

uint8_t frameBuf[BUFSIZE];
uint8_t rxbuf[BUFSIZE]; //Garbage data, required by RTOS drivers

extern "C" void updateLeds(UArg arg0, UArg arg1) {
	uint32_t frameIdx = 0;

	initFrameBuf();

	while (1) {
		GPIO_toggle(LAUNCHPAD_LED_BLUE);

		//fill_rainbow(leds, NUM_LEDS, frameIdx, 20);
		fill_solid(leds, NUM_LEDS,CRGB::White);
		if(frameIdx%240==0)
			brightness++;

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
	uint8_t brightByte = ~(brightness | 0xE0);
	CRGB adjustment = CLEDController::computeAdjustment(255, colorCorrection, colorTemperature);
	for (size_t i = 0; i < NUM_LEDS; i++) {
		size_t bufIdx = i * 4 + 4;

		frameBuf[bufIdx++] = brightByte;
		frameBuf[bufIdx++] = ~scale8(leds[i].blue, adjustment.blue);
		frameBuf[bufIdx++] = ~scale8(leds[i].green, adjustment.green);
		frameBuf[bufIdx] = ~scale8(leds[i].red, adjustment.red);
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
