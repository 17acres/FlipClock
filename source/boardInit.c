#include <source/config/serialConfig.h>
#include "boardInit.h"
#include "config/gpioConfig.h"
#include "config/adcConfig.h"
#include "digit.h"

extern void initLeds();//Leds.h needed for C linkage

void init() {
	initGPIO();
	initSPI();
	initI2C();
	initADC();
	initLeds();
	initDigit(&hoursTensStruct);
}
