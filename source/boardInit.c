#include "boardInit.h"
#include "config/gpioConfig.h"
#include "config/spiConfig.h"
void init(){
  initGPIO();
  initSPI();
}
