#include <source/config/serialConfig.h>
#include "boardInit.h"
#include "config/gpioConfig.h"
#include "config/adcConfig.h"

void init() {
	initGPIO();
	initSPI();
	initI2C();
	initADC();
}
