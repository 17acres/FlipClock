#ifndef __INC_LIB8TION_SCALEC_H
#define __INC_LIB8TION_SCALEC_H

// Modified by Dan Nichols to support C usage, including the other random snippets from lib8tion required
///////////////////////////////////////////////////////////////////////
//
// typdefs for fixed-point fractional types.
//
// sfract7 should be interpreted as signed 128ths.
// fract8 should be interpreted as unsigned 256ths.
// sfract15 should be interpreted as signed 32768ths.
// fract16 should be interpreted as unsigned 65536ths.
//
// Example: if a fract8 has the value "64", that should be interpreted
//          as 64/256ths, or one-quarter.
//
//
//  fract8   range is 0 to 0.99609375
//                 in steps of 0.00390625
//
//  sfract7  range is -0.9921875 to 0.9921875
//                 in steps of 0.0078125
//
//  fract16  range is 0 to 0.99998474121
//                 in steps of 0.00001525878
//
//  sfract15 range is -0.99996948242 to 0.99996948242
//                 in steps of 0.00003051757
//

/// ANSI unsigned short _Fract.  range is 0 to 0.99609375
///                 in steps of 0.00390625
typedef uint8_t fract8;   ///< ANSI: unsigned short _Fract

///  ANSI: signed short _Fract.  range is -0.9921875 to 0.9921875
///                 in steps of 0.0078125
typedef int8_t sfract7;  ///< ANSI: signed   short _Fract

///  ANSI: unsigned _Fract.  range is 0 to 0.99998474121
///                 in steps of 0.00001525878
typedef uint16_t fract16;  ///< ANSI: unsigned       _Fract

///  ANSI: signed _Fract.  range is -0.99996948242 to 0.99996948242
///                 in steps of 0.00003051757
typedef int16_t sfract15; ///< ANSI: signed         _Fract

#define LIB8STATIC __attribute__ ((unused)) inline
#define LIB8STATIC_ALWAYS_INLINE __attribute__ ((always_inline)) inline
#define FASTLED_SCALE8_FIXED 1
///@ingroup lib8tion

///@defgroup Scaling Scaling functions
/// Fast, efficient 8-bit scaling functions specifically
/// designed for high-performance LED programming.
///
/// Because of the AVR(Arduino) and ARM assembly language
/// implementations provided, using these functions often
/// results in smaller and faster code than the equivalent
/// program using plain "C" arithmetic and logic.
///@{

///  scale one byte by a second one, which is treated as
///  the numerator of a fraction whose denominator is 256
///  In other words, it computes i * (scale / 256)
///  4 clocks AVR with MUL, 2 clocks ARM
LIB8STATIC_ALWAYS_INLINE uint8_t scale8(uint8_t i, fract8 scale)
{
#if (FASTLED_SCALE8_FIXED == 1)
    return (((uint16_t) i) * (1 + (uint16_t)(scale))) >> 8;
#else
    return ((uint16_t)i * (uint16_t)(scale) ) >> 8;
#endif
}

///  The "video" version of scale8 guarantees that the output will
///  be only be zero if one or both of the inputs are zero.  If both
///  inputs are non-zero, the output is guaranteed to be non-zero.
///  This makes for better 'video'/LED dimming, at the cost of
///  several additional cycles.
LIB8STATIC_ALWAYS_INLINE uint8_t scale8_video(uint8_t i, fract8 scale)
{
    uint8_t j = (((int) i * (int) scale) >> 8) + ((i && scale) ? 1 : 0);
    // uint8_t nonzeroscale = (scale != 0) ? 1 : 0;
    // uint8_t j = (i == 0) ? 0 : (((int)i * (int)(scale) ) >> 8) + nonzeroscale;
    return j;
}

/// scale three one byte values by a fourth one, which is treated as
///         the numerator of a fraction whose demominator is 256
///         In other words, it computes r,g,b * (scale / 256)
///
///         THIS FUNCTION ALWAYS MODIFIES ITS ARGUMENTS IN PLACE

LIB8STATIC void nscale8x3(uint8_t* r, uint8_t* g, uint8_t* b, fract8 scale)
{
#if (FASTLED_SCALE8_FIXED == 1)
    uint16_t scale_fixed = scale + 1;
    *r = (((uint16_t) * r) * scale_fixed) >> 8;
    *g = (((uint16_t) * g) * scale_fixed) >> 8;
    *b = (((uint16_t) * b) * scale_fixed) >> 8;
#else
    *r = ((int)*r * (int)(scale) ) >> 8;
    *g = ((int)*g * (int)(scale) ) >> 8;
    *b = ((int)*b * (int)(scale) ) >> 8;
#endif
}

/// scale three one byte values by a fourth one, which is treated as
///         the numerator of a fraction whose demominator is 256
///         In other words, it computes r,g,b * (scale / 256), ensuring
/// that non-zero values passed in remain non zero, no matter how low the scale
/// argument.
///
///         THIS FUNCTION ALWAYS MODIFIES ITS ARGUMENTS IN PLACE
LIB8STATIC void nscale8x3_video(uint8_t* r, uint8_t* g, uint8_t* b,
                                fract8 scale)
{
    uint8_t nonzeroscale = (scale != 0) ? 1 : 0;
    *r = (*r == 0) ? 0 : (((int) *r * (int) (scale)) >> 8) + nonzeroscale;
    *g = (*g == 0) ? 0 : (((int) *g * (int) (scale)) >> 8) + nonzeroscale;
    *b = (*b == 0) ? 0 : (((int) *b * (int) (scale)) >> 8) + nonzeroscale;
}

///  scale two one byte values by a third one, which is treated as
///         the numerator of a fraction whose demominator is 256
///         In other words, it computes i,j * (scale / 256)
///
///         THIS FUNCTION ALWAYS MODIFIES ITS ARGUMENTS IN PLACE

LIB8STATIC void nscale8x2(uint8_t* i, uint8_t* j, fract8 scale)
{
#if FASTLED_SCALE8_FIXED == 1
    uint16_t scale_fixed = scale + 1;
    *i = (((uint16_t) * i) * scale_fixed) >> 8;
    *j = (((uint16_t) * j) * scale_fixed) >> 8;
#else
    *i = ((uint16_t)*i * (uint16_t)(scale) ) >> 8;
    *j = ((uint16_t)*j * (uint16_t)(scale) ) >> 8;
#endif
}

///  scale two one byte values by a third one, which is treated as
///         the numerator of a fraction whose demominator is 256
///         In other words, it computes i,j * (scale / 256), ensuring
/// that non-zero values passed in remain non zero, no matter how low the scale
/// argument.
///
///         THIS FUNCTION ALWAYS MODIFIES ITS ARGUMENTS IN PLACE

LIB8STATIC void nscale8x2_video(uint8_t* i, uint8_t* j, fract8 scale)
{
    uint8_t nonzeroscale = (scale != 0) ? 1 : 0;
    *i = (*i == 0) ? 0 : (((int) *i * (int) (scale)) >> 8) + nonzeroscale;
    *j = (*j == 0) ? 0 : (((int) *j * (int) (scale)) >> 8) + nonzeroscale;
}

/// scale a 16-bit unsigned value by an 8-bit value,
///         considered as numerator of a fraction whose denominator
///         is 256. In other words, it computes i * (scale / 256)

LIB8STATIC_ALWAYS_INLINE uint16_t scale16by8(uint16_t i, fract8 scale)
{
    uint16_t result;
#if FASTLED_SCALE8_FIXED == 1
    result = (i * (1 + ((uint16_t) scale))) >> 8;
#else
    result = (i * scale) / 256;
#endif
    return result;
}

/// scale a 16-bit unsigned value by a 16-bit value,
///         considered as numerator of a fraction whose denominator
///         is 65536. In other words, it computes i * (scale / 65536)

LIB8STATIC uint16_t scale16(uint16_t i, fract16 scale)
{
    uint16_t result;
#if FASTLED_SCALE8_FIXED == 1
    result = ((uint32_t)(i) * (1 + (uint32_t)(scale))) / 65536;
#else
    result = ((uint32_t)(i) * (uint32_t)(scale)) / 65536;
#endif
    return result;
}
///@}

///@defgroup Dimming Dimming and brightening functions
///
/// Dimming and brightening functions
///
/// The eye does not respond in a linear way to light.
/// High speed PWM'd LEDs at 50% duty cycle appear far
/// brighter then the 'half as bright' you might expect.
///
/// If you want your midpoint brightness leve (128) to
/// appear half as bright as 'full' brightness (255), you
/// have to apply a 'dimming function'.
///@{

/// Adjust a scaling value for dimming
LIB8STATIC uint8_t dim8_raw(uint8_t x)
{
    return scale8(x, x);
}

/// Adjust a scaling value for dimming for video (value will never go below 1)
LIB8STATIC uint8_t dim8_video(uint8_t x)
{
    return scale8_video(x, x);
}

/// Linear version of the dimming function that halves for values < 128
LIB8STATIC uint8_t dim8_lin(uint8_t x)
{
    if (x & 0x80)
    {
        x = scale8(x, x);
    }
    else
    {
        x += 1;
        x /= 2;
    }
    return x;
}

/// inverse of the dimming function, brighten a value
LIB8STATIC uint8_t brighten8_raw(uint8_t x)
{
    uint8_t ix = 255 - x;
    return 255 - scale8(ix, ix);
}

/// inverse of the dimming function, brighten a value
LIB8STATIC uint8_t brighten8_video(uint8_t x)
{
    uint8_t ix = 255 - x;
    return 255 - scale8_video(ix, ix);
}

/// inverse of the dimming function, brighten a value
LIB8STATIC uint8_t brighten8_lin(uint8_t x)
{
    uint8_t ix = 255 - x;
    if (ix & 0x80)
    {
        ix = scale8(ix, ix);
    }
    else
    {
        ix += 1;
        ix /= 2;
    }
    return 255 - ix;
}

//adapted from colorutils
LIB8STATIC uint8_t blend8(uint8_t existing, uint8_t overlay, fract8 amountOfOverlay)
{
    if( amountOfOverlay == 0)
    {
        return existing;
    }

    if( amountOfOverlay == 255)
    {
        existing = overlay;
        return existing;
    }

    fract8 amountOfKeep = 255 - amountOfOverlay;

    existing = scale8( existing, amountOfKeep)
    + scale8( overlay, amountOfOverlay);
    return existing;
}
///@}
#endif
