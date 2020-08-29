/*
 * defs.h
 *
 *  Created on: Aug 16, 2020
 *      Author: Dan
 */

#ifndef SOURCE_DEFS_H_
#define SOURCE_DEFS_H_

#include <ti/drivers/I2C.h>

#define LED_FPS 240
#define LED_BITRATE 1000000
#define NUM_LEDS 3

#define IO_BITRATE I2C_400kHz

//AD0, AD1 (AD0 is MSB)
#define IO_0_ADDR (0x48>>1)
#define IO_1_ADDR (0x4C>>1)
#define IO_2_ADDR (0x4A>>1)
#define IO_3_ADDR (0x4E>>1)

#endif /* SOURCE_DEFS_H_ */
