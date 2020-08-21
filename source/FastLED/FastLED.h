#ifndef __INC_FASTSPI_LED2_H
#define __INC_FASTSPI_LED2_H

///@file FastLED.h
/// central include file for FastLED, defines the CFastLED class/object

#define FASTLED_VERSION 3003002
#ifndef FASTLED_INTERNAL
#  ifdef FASTLED_HAS_PRAGMA_MESSAGE
#    pragma message "FastLED version 3.003.003"
#  else
#    warning FastLED version 3.003.003  (Not really a warning, just telling you here.)
#  endif
#endif

#ifndef __PROG_TYPES_COMPAT__
#define __PROG_TYPES_COMPAT__
#endif

#ifdef SmartMatrix_h
#include <SmartMatrix.h>
#endif

#ifdef DmxSimple_h
#include <DmxSimple.h>
#endif

#ifdef DmxSerial_h
#include <DMXSerial.h>
#endif

#include <stdint.h>

#include "cpp_compat.h"
#include "led_sysdefs.h"

// Utility functions
#include "fastled_delay.h"
#include "bitswap.h"

#include "controller.h"
#include "fastspi_types.h"
#include "dmx.h"

#include "fastled_progmem.h"

#include "lib8tion.h"
#include "pixeltypes.h"
#include "hsv2rgb.h"
#include "colorutils.h"
#include "pixelset.h"
#include "colorpalettes.h"

#include "noise.h"


#endif
