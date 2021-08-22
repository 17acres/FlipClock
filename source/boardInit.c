#include <source/config/serialConfig.h>
#include "boardInit.h"
#include "config/gpioConfig.h"
#include "config/adcConfig.h"
#include "digit.h"

extern void initLeds();//Leds.h needed for C linkage

void init() {
	initGPIO();
	initI2C();
	initADC();
	initLeds();
	initDigit(&hoursTensStruct);

	//SPI INIT MUST BE AFTER TIMER INIT BECAUSE TIMER INIT DISABLES SPI PERIPHERALS https://e2e.ti.com/support/legacy_forums/embedded/tirtos/f/ti-rtos-forum-read-only-archived/499599/tiva-c-bus-fault-when-accessing-ssi-peripheral
	initSPI();
}
