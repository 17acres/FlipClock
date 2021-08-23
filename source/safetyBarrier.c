/*
 * safetyBarrier.c
 *
 *  Created on: Aug 22, 2021
 *      Author: jnich
 */

#include "dtc.h"
#include "iodriver.h"
#include "utils/ledDefs.h"
#include <xdc/runtime/System.h>

#include <ti/sysbios/BIOS.h>
#include <ti/sysbios/knl/Task.h>
#include <ti/sysbios/knl/Clock.h>
#include <ti/drivers/GPIO.h>
#include <xdc/runtime/Error.h>

void safetyBarrier(UArg arg0, UArg arg1){
    //TODO: check current constantly and disable stuff if current continues, feed watchdog.
}

