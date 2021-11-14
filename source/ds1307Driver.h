/*
 * ds1307Driver.h
 *
 *  Created on: Nov 13, 2021
 *      Author: Dan
 */

#ifndef SOURCE_DS1307DRIVER_H_
#define SOURCE_DS1307DRIVER_H_
#include <xdc/std.h>
#include "defs.h"
#include <time.h>
void initDs1307();
bool setDs1307Time(time_t currentTime);
time_t readDs1307Time();

#endif /* SOURCE_DS1307DRIVER_H_ */
