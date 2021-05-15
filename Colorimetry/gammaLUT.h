#ifndef GAMMA_LUT
#define GAMMA_LUT

#include <stdint.h>
#define LUT_RED 0
#define LUT_GREEN 1
#define LUT_BLUE 2
extern const uint8_t gammaLUT[256][3];
#endif
