# 1 "../source/Leds.cpp"
/*
 * Leds.cpp
 *
 *  Created on: Aug 18, 2020
 *      Author: Dan
 */
# 1 "C:/Users/Dan/Documents/GitHub/FlipClock/source/config/serialConfig.h"
/*
 * spiConfig.h
 *
 *  Created on: Aug 17, 2020
 *      Author: Dan
 */




# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/tidrivers_tivac_2_16_00_08/packages/ti/drivers/SPI.h"
/*
 * Copyright (c) 2015, Texas Instruments Incorporated
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * *  Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * *  Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * *  Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
/** ============================================================================
 *  @file       SPI.h
 *
 *  @brief      SPI driver interface
 *
 *  The SPI header file should be included in an application as follows:
 *  @code
 *  #include <ti/drivers/SPI.h>
 *  @endcode
 *
 *  # Operation #
 *  The SPI driver in TI-RTOS is designed to serve a means to move data
 *  between SPI peripherals. This driver does not interpret any of the data sent
 *  to or received from this peripheral.
 *
 *  The APIs in this driver serve as an interface to a typical TI-RTOS
 *  application. The specific peripheral implementations are responsible to
 *  create all the SYS/BIOS specific primitives to allow for thread-safe
 *  operation.
 *
 *  The SPI driver operates on some key definitions and assumptions:
 *  - The driver operates transparent from the chip select. Some SPI controllers
 *    feature a hardware chip select to assert SPI slave peripherals. See the
 *    specific peripheral implementations on chip select requirements.
 *
 *  - The SPI protocol does not account for a built-in handshaking mechanism and
 *    neither does this SPI driver. Therefore, when operating in ::SPI_SLAVE
 *    mode, the application must provide such a mechanism to ensure that the
 *    SPI slave is ready for the SPI master. The SPI slave must call
 *    SPI_transfer() *before* the SPI master starts transmitting. Some example
 *    application mechanisms could include:
 *    - Timed delays on the SPI master to guarantee the SPI slave is be ready
 *      for a SPI transaction.
 *    - A form of GPIO flow control from the slave to the SPI master to notify
 *      the master when ready.
 *
 *  ## Opening the driver #
 *
 *  @code
 *  SPI_Handle      handle;
 *  SPI_Params      params;
 *  SPI_Transaction spiTransaction;
 *
 *  SPI_Params_init(&params);
 *  params.bitRate  = someNewBitRate;
 *  handle = SPI_open(someSPI_configIndexValue, &params);
 *  if (!handle) {
 *      System_printf("SPI did not open");
 *  }
 *  @endcode
 *
 *  ## Transferring data #
 *  Data transmitted and received by the SPI peripheral is performed using
 *  SPI_transfer(). SPI_transfer() accepts a pointer to a SPI_Transaction
 *  structure that dictates what quantity of data is sent and received.
 *
 *  @code
 *  SPI_Transaction spiTransaction;
 *
 *  spiTransaction.count = someIntegerValue;
 *  spiTransaction.txBuf = transmitBufferPointer;
 *  spiTransaction.rxBuf = receiveBufferPointer;
 *
 *  ret = SPI_transfer(handle, &spiTransaction);
 *  if (!ret) {
 *      System_printf("Unsuccessful SPI transfer");
 *  }
 *  @endcode
 *
 *  ## Canceling a transaction #
 *  SPI_transferCancel() is used to cancel a SPI transaction when the driver is
 *  used in ::SPI_MODE_CALLBACK mode.
 *
 *  Calling this API while no transfer is in progress has no effect. If a
 *  transfer is in progress, it canceled and a callback on the ::SPI_CallbackFxn
 *  is performed. The ::SPI_Status status field in the ::SPI_Transaction struct
 *  can be examined within the callback to determine if the transaction was
 *  successful.
 *
 *  @code
 *  SPI_transferCancel(handle);
 *  @endcode
 *
 *  # Implementation #
 *
 *  This module serves as the main interface for TI-RTOS applications. Its
 *  purpose is to redirect the module's APIs to specific peripheral
 *  implementations which are specified using a pointer to a SPI_FxnTable.
 *
 *  The SPI driver interface module is joined (at link time) to a
 *  NULL-terminated array of SPI_Config data structures named *SPI_config*.
 *  *SPI_config* is implemented in the application with each entry being an
 *  instance of a SPI peripheral. Each entry in *SPI_config* contains a:
 *  - (SPI_FxnTable *) to a set of functions that implement a SPI peripheral
 *  - (void *) data object that is associated with the SPI_FxnTable
 *  - (void *) hardware attributes that are associated to the SPI_FxnTable
 *
 *  # Instrumentation #
 *
 *  The SPI driver interface produces log statements if instrumentation is
 *  enabled.
 *
 *  Diagnostics Mask | Log details |
 *  ---------------- | ----------- |
 *  Diags_USER1      | basic operations performed |
 *  Diags_USER2      | detailed operations performed |
 *
 *  ============================================================================
 */





extern "C" {


# 1 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/stdint.h"
/* -*- C++ -*- */
/*===--------------------------- complex.h --------------------------------===*/
/*                                                                            */
/*                     The LLVM Compiler Infrastructure                       */
/*                                                                            */
/* This file is dual licensed under the MIT and the University of Illinois Open
** Source Licenses. See LICENSE.TXT for details.
*/
/*===----------------------------------------------------------------------===*/




/*
    stdint.h synopsis

Macros:

    INT8_MIN
    INT16_MIN
    INT32_MIN
    INT64_MIN

    INT8_MAX
    INT16_MAX
    INT32_MAX
    INT64_MAX

    UINT8_MAX
    UINT16_MAX
    UINT32_MAX
    UINT64_MAX

    INT_LEAST8_MIN
    INT_LEAST16_MIN
    INT_LEAST32_MIN
    INT_LEAST64_MIN

    INT_LEAST8_MAX
    INT_LEAST16_MAX
    INT_LEAST32_MAX
    INT_LEAST64_MAX

    UINT_LEAST8_MAX
    UINT_LEAST16_MAX
    UINT_LEAST32_MAX
    UINT_LEAST64_MAX

    INT_FAST8_MIN
    INT_FAST16_MIN
    INT_FAST32_MIN
    INT_FAST64_MIN

    INT_FAST8_MAX
    INT_FAST16_MAX
    INT_FAST32_MAX
    INT_FAST64_MAX

    UINT_FAST8_MAX
    UINT_FAST16_MAX
    UINT_FAST32_MAX
    UINT_FAST64_MAX

    INTPTR_MIN
    INTPTR_MAX
    UINTPTR_MAX

    INTMAX_MIN
    INTMAX_MAX

    UINTMAX_MAX

    PTRDIFF_MIN
    PTRDIFF_MAX

    SIG_ATOMIC_MIN
    SIG_ATOMIC_MAX

    SIZE_MAX

    WCHAR_MIN
    WCHAR_MAX

    WINT_MIN
    WINT_MAX

    INT8_C(value)
    INT16_C(value)
    INT32_C(value)
    INT64_C(value)

    UINT8_C(value)
    UINT16_C(value)
    UINT32_C(value)
    UINT64_C(value)

    INTMAX_C(value)
    UINTMAX_C(value)

*/

# 1 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"
/* -*- C++ -*- */
/*===--------------------------- complex.h --------------------------------===*/
/*                                                                            */
/*                     The LLVM Compiler Infrastructure                       */
/*                                                                            */
/* This file is dual licensed under the MIT and the University of Illinois Open
** Source Licenses. See LICENSE.TXT for details.
*/
/*===----------------------------------------------------------------------===*/




#pragma diag_push
/* Avoid warning on C++ comments in this file */
#pragma diag_suppress 2581
#pragma CHECK_MISRA("-2.2")
#pragma CHECK_MISRA("-19.4")
#pragma CHECK_MISRA("-19.10")

// The libc++ cmake build system expects to preinclude __config site during
// library builds (_LIBCPP_BUILDING_LIBRARY defined). Then, as part of
// installation, will prepend the contents of __config_site to __config and
// install the result as __config. __config_site does not exist as part of the
// cmake installation.
//
// The TI mkrts system follows the same behavior while bulding the library.
// However, it does not support prepending as part of installation, and so must
// have __config_site exist separately as a pre-generated file.
//
// To ensure that the cmake system still works, we only include __config_site
// when it exists as part of an installation. That is: If a TI compiler is
// being used, the library has been built/installed, and __config_site exists.
# 1 "C:\\ti\\ccs930\\ccs\\tools\\compiler\\ti-cgt-arm_20.2.3.LTS\\include\\libcxx\\__config_site"
//===----------------------------------------------------------------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is dual licensed under the MIT and the University of Illinois Open
// Source Licenses. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//





/* #undef _LIBCPP_ABI_UNSTABLE */
/* #undef _LIBCPP_HAS_NO_GLOBAL_FILESYSTEM_NAMESPACE */
/* #undef _LIBCPP_HAS_NO_STDIN */
/* #undef _LIBCPP_HAS_NO_STDOUT */

/* #undef _LIBCPP_HAS_NO_MONOTONIC_CLOCK */
/* #undef _LIBCPP_HAS_NO_THREAD_UNSAFE_C_FUNCTIONS */
/* #undef _LIBCPP_HAS_MUSL_LIBC */
/* #undef _LIBCPP_HAS_THREAD_API_PTHREAD */
/* #undef _LIBCPP_HAS_THREAD_API_EXTERNAL */
/* #undef _LIBCPP_HAS_THREAD_LIBRARY_EXTERNAL */


# 1 "C:\\ti\\ccs930\\ccs\\tools\\compiler\\ti-cgt-arm_20.2.3.LTS\\include\\libcxx\\__libcxx_extra.h"
/*****************************************************************************/
/* LIBCXX_EXTRA.H                                                            */
/*                                                                           */
/* Copyright (c) 2017 Texas Instruments Incorporated                         */
/* http://www.ti.com/                                                        */
/*                                                                           */
/*  Redistribution and  use in source  and binary forms, with  or without    */
/*  modification,  are permitted provided  that the  following conditions    */
/*  are met:                                                                 */
/*                                                                           */
/*     Redistributions  of source  code must  retain the  above copyright    */
/*     notice, this list of conditions and the following disclaimer.         */
/*                                                                           */
/*     Redistributions in binary form  must reproduce the above copyright    */
/*     notice, this  list of conditions  and the following  disclaimer in    */
/*     the  documentation  and/or   other  materials  provided  with  the    */
/*     distribution.                                                         */
/*                                                                           */
/*     Neither the  name of Texas Instruments Incorporated  nor the names    */
/*     of its  contributors may  be used to  endorse or  promote products    */
/*     derived  from   this  software  without   specific  prior  written    */
/*     permission.                                                           */
/*                                                                           */
/*  THIS SOFTWARE  IS PROVIDED BY THE COPYRIGHT  HOLDERS AND CONTRIBUTORS    */
/*  "AS IS"  AND ANY  EXPRESS OR IMPLIED  WARRANTIES, INCLUDING,  BUT NOT    */
/*  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR    */
/*  A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT    */
/*  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,    */
/*  SPECIAL,  EXEMPLARY,  OR CONSEQUENTIAL  DAMAGES  (INCLUDING, BUT  NOT    */
/*  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,    */
/*  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY    */
/*  THEORY OF  LIABILITY, WHETHER IN CONTRACT, STRICT  LIABILITY, OR TORT    */
/*  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE    */
/*  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.     */
/*                                                                           */
/*****************************************************************************/



/*
Changes made to this file affect how TI libc++ is BOTH built and used in
production environments.
*/

/*
The TI RTS has all source and header files flattened into a single directory.
*/


/* #pragma diag_suppress 1585,2866 */

# 28 "C:\\ti\\ccs930\\ccs\\tools\\compiler\\ti-cgt-arm_20.2.3.LTS\\include\\libcxx\\__config_site"

# 37 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"














# 60 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"







# 76 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"


// Change short string representation so that string data starts at offset 0,
// improving its alignment in some cases.

// Fix deque iterator type in order to support incomplete types.

// Fix undefined behavior in how std::list stores its linked nodes.

// Fix undefined behavior in  how __tree stores its end and parent nodes.

// Fix undefined behavior in how __hash_table stores its pointer types.



// Don't use a nullptr_t simulation type in C++03 instead using C++11 nullptr
// provided under the alternate keyword __nullptr, which changes the mangling
// of nullptr_t. This option is ABI incompatible with GCC in C++03 mode.

// Define the `pointer_safety` enum as a C++11 strongly typed enumeration
// instead of as a class simulating an enum. If this option is enabled
// `pointer_safety` and `get_pointer_safety()` will no longer be available
// in C++03.

// Define a key function for `bad_function_call` in the library, to centralize
// its vtable and typeinfo to libc++ rather than having all other libraries
// using that class define their own copies.


// Enable optimized version of __do_get_(un)signed which avoids redundant copies.
# 122 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"















# 149 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"
// '__is_identifier' returns '0' if '__x' is a reserved identifier provided by
// the compiler and '1' otherwise.
# 157 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"









# 180 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"





// FIXME: ABI detection should be done via compiler builtin macros. This
// is just a placeholder until Clang implements such macros. For now assume
// that Windows compilers pretending to be MSVC++ target the Microsoft ABI,
// and allow the user to explicitly specify the ABI to handle cases where this
// heuristic falls short.
# 203 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"

// Need to detect which libc we're using if we're on Linux.
# 211 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"













# 231 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"

# 243 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"

# 253 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"

# 282 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"

# 291 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"

# 310 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"

# 321 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"







# 629 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"

// Add a defined(__TARGET__) in the following check for each TARGET
// that supports LIBCPP atomics




// __builtin_strlen can be trivially replaced, but with a hefty runtime cost


// TI targets do not support aligned operator new()


// Currently a dummy value. std::strerror will return "Unknown" for errors that
// are out of the range of those we can print.


# 653 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"



























# 687 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"
















































// EDG supports __is_literal_type, which is analagous to __is_literal



// TI compilers using libc++ always accept inline namespaces




namespace std {
  inline namespace __2 {
  }
}





// Allow for build-time disabling of unsigned integer sanitization




// The TI compiler is strict about the difference between extern "C" and
// extern "C++" functions. One cannot be conflated with the other, even if
// the types are otherwise the same.




# 802 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"

# 810 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"

# 819 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"

# 827 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"

# 835 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"

# 847 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"









# 863 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"

# 871 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"

# 879 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"





# 891 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"

# 899 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"

# 907 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"







# 921 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"

# 932 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"










# 956 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"

# 965 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"

























# 996 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"





# 1013 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"

# 1026 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"
























# 1056 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"





# 1072 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"









# 1092 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"







# 1106 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"













// FIXME: Remove all usages of this macro once compilers catch up.















// Try to find out if RTTI is disabled.
// g++ and cl.exe have RTTI on by default and define a macro when it is.
// g++ only defines the macro in 4.3.2 and onwards.
# 1146 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"





// Thread API
# 1171 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"
















// Systems that use capability-based security (FreeBSD with Capsicum,
// Nuxi CloudABI) may only provide local filesystem access (using *at()).
// Functions like open(), rename(), unlink() and stat() should not be
// used, as they attempt to access the global filesystem namespace.




// CloudABI is intended for running networked services. Processes do not
// have standard input and output channels.










// Thread-unsafe functions such as strtok() and localtime()
// are not available.










// TODO: Remove "&& !defined(__TI_COMPILER_VERSION__) when we enable threads.









# 1239 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"












# 1257 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"

# 1267 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"

# 1274 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"

# 1281 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"

# 1288 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"













// Decide whether to use availability macros.
# 1310 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"

// Define availability macros.
# 1354 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"

// Define availability that depends on _LIBCPP_NO_EXCEPTIONS.
# 1366 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"

// Availability of stream API in the dylib got dropped and re-added.  The
// extern template should effectively be available at:
//    availability(macosx,introduced=10.9)
//    availability(ios,introduced=7.0)
# 1378 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"









  // Don't warn about macro conflicts when we can restore them at the
  // end of the header.
# 1408 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"

# 1416 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__config"



#pragma diag_pop

# 103 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/stdint.h"





/* C99 stdlib (e.g. glibc < 2.18) does not provide macros needed
   for C++11 unless __STDC_LIMIT_MACROS and __STDC_CONSTANT_MACROS
   are defined
*/
# 118 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/stdint.h"

# 1 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/stdint.h"
/*****************************************************************************/
/* STDINT.H                                                                  */
/*                                                                           */
/* Copyright (c) 2002 Texas Instruments Incorporated                         */
/* http://www.ti.com/                                                        */
/*                                                                           */
/*  Redistribution and  use in source  and binary forms, with  or without    */
/*  modification,  are permitted provided  that the  following conditions    */
/*  are met:                                                                 */
/*                                                                           */
/*     Redistributions  of source  code must  retain the  above copyright    */
/*     notice, this list of conditions and the following disclaimer.         */
/*                                                                           */
/*     Redistributions in binary form  must reproduce the above copyright    */
/*     notice, this  list of conditions  and the following  disclaimer in    */
/*     the  documentation  and/or   other  materials  provided  with  the    */
/*     distribution.                                                         */
/*                                                                           */
/*     Neither the  name of Texas Instruments Incorporated  nor the names    */
/*     of its  contributors may  be used to  endorse or  promote products    */
/*     derived  from   this  software  without   specific  prior  written    */
/*     permission.                                                           */
/*                                                                           */
/*  THIS SOFTWARE  IS PROVIDED BY THE COPYRIGHT  HOLDERS AND CONTRIBUTORS    */
/*  "AS IS"  AND ANY  EXPRESS OR IMPLIED  WARRANTIES, INCLUDING,  BUT NOT    */
/*  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR    */
/*  A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT    */
/*  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,    */
/*  SPECIAL,  EXEMPLARY,  OR CONSEQUENTIAL  DAMAGES  (INCLUDING, BUT  NOT    */
/*  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,    */
/*  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY    */
/*  THEORY OF  LIABILITY, WHETHER IN CONTRACT, STRICT  LIABILITY, OR TORT    */
/*  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE    */
/*  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.     */
/*                                                                           */
/*****************************************************************************/



# 1 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/_ti_config.h"
/*****************************************************************************/
/* _ti_config.h                                                              */
/*                                                                           */
/* Copyright (c) 2017 Texas Instruments Incorporated                         */
/* http://www.ti.com/                                                        */
/*                                                                           */
/*  Redistribution and  use in source  and binary forms, with  or without    */
/*  modification,  are permitted provided  that the  following conditions    */
/*  are met:                                                                 */
/*                                                                           */
/*     Redistributions  of source  code must  retain the  above copyright    */
/*     notice, this list of conditions and the following disclaimer.         */
/*                                                                           */
/*     Redistributions in binary form  must reproduce the above copyright    */
/*     notice, this  list of conditions  and the following  disclaimer in    */
/*     the  documentation  and/or   other  materials  provided  with  the    */
/*     distribution.                                                         */
/*                                                                           */
/*     Neither the  name of Texas Instruments Incorporated  nor the names    */
/*     of its  contributors may  be used to  endorse or  promote products    */
/*     derived  from   this  software  without   specific  prior  written    */
/*     permission.                                                           */
/*                                                                           */
/*  THIS SOFTWARE  IS PROVIDED BY THE COPYRIGHT  HOLDERS AND CONTRIBUTORS    */
/*  "AS IS"  AND ANY  EXPRESS OR IMPLIED  WARRANTIES, INCLUDING,  BUT NOT    */
/*  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR    */
/*  A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT    */
/*  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,    */
/*  SPECIAL,  EXEMPLARY,  OR CONSEQUENTIAL  DAMAGES  (INCLUDING, BUT  NOT    */
/*  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,    */
/*  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY    */
/*  THEORY OF  LIABILITY, WHETHER IN CONTRACT, STRICT  LIABILITY, OR TORT    */
/*  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE    */
/*  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.     */
/*                                                                           */
/*****************************************************************************/




/*Unsupported pragmas are omitted */

# pragma diag_push
# pragma CHECK_MISRA("-19.7")
# pragma CHECK_MISRA("-19.4")
# pragma CHECK_MISRA("-19.1")
# pragma CHECK_MISRA("-19.15")

# pragma diag_pop




_Pragma("diag_push")
_Pragma("CHECK_MISRA(\"-19.4\")")
_Pragma("CHECK_MISRA(\"-19.1\")")
_Pragma("CHECK_MISRA(\"-19.6\")")

/* Hide uses of the TI proprietary macros behind other macros.
    Implementations that don't implement these features should leave
    these macros undefined. */
# 68 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/_ti_config.h"







# 85 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/_ti_config.h"

/* Common definitions */


/* C++ */

 /* C++11 */
# 110 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/_ti_config.h"



















/* _TI_NOEXCEPT_CPP14 is defined to noexcept only when compiling for C++14. It
   is intended to be used for functions like abort and atexit that are supposed
   to be declared noexcept only in C++14 mode. */








/* Target-specific definitions */
# 1 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/linkage.h"
/*****************************************************************************/
/* linkage.h                                                                 */
/*                                                                           */
/* Copyright (c) 1998 Texas Instruments Incorporated                         */
/* http://www.ti.com/                                                        */
/*                                                                           */
/*  Redistribution and  use in source  and binary forms, with  or without    */
/*  modification,  are permitted provided  that the  following conditions    */
/*  are met:                                                                 */
/*                                                                           */
/*     Redistributions  of source  code must  retain the  above copyright    */
/*     notice, this list of conditions and the following disclaimer.         */
/*                                                                           */
/*     Redistributions in binary form  must reproduce the above copyright    */
/*     notice, this  list of conditions  and the following  disclaimer in    */
/*     the  documentation  and/or   other  materials  provided  with  the    */
/*     distribution.                                                         */
/*                                                                           */
/*     Neither the  name of Texas Instruments Incorporated  nor the names    */
/*     of its  contributors may  be used to  endorse or  promote products    */
/*     derived  from   this  software  without   specific  prior  written    */
/*     permission.                                                           */
/*                                                                           */
/*  THIS SOFTWARE  IS PROVIDED BY THE COPYRIGHT  HOLDERS AND CONTRIBUTORS    */
/*  "AS IS"  AND ANY  EXPRESS OR IMPLIED  WARRANTIES, INCLUDING,  BUT NOT    */
/*  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR    */
/*  A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT    */
/*  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,    */
/*  SPECIAL,  EXEMPLARY,  OR CONSEQUENTIAL  DAMAGES  (INCLUDING, BUT  NOT    */
/*  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,    */
/*  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY    */
/*  THEORY OF  LIABILITY, WHETHER IN CONTRACT, STRICT  LIABILITY, OR TORT    */
/*  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE    */
/*  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.     */
/*                                                                           */
/*****************************************************************************/




#pragma diag_push
#pragma CHECK_MISRA("-19.4") /* macros required for implementation */

/* No modifiers are needed to access code or data */





/*--------------------------------------------------------------------------*/
/* Define _IDECL ==> how inline functions are declared                      */
/*--------------------------------------------------------------------------*/
# 60 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/linkage.h"

#pragma diag_pop

# 142 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/_ti_config.h"

_Pragma("diag_pop")

# 41 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/stdint.h"

_Pragma("diag_push")
_Pragma("CHECK_MISRA(\"-19.1\")") /* no code before #include */
_Pragma("CHECK_MISRA(\"-19.7\")") /* prefer functions to macros */

# 1 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/_stdint40.h"
/*****************************************************************************/
/* _STDINT40.H                                                               */
/*                                                                           */
/* Copyright (c) 2018 Texas Instruments Incorporated                         */
/* http://www.ti.com/                                                        */
/*                                                                           */
/*  Redistribution and  use in source  and binary forms, with  or without    */
/*  modification,  are permitted provided  that the  following conditions    */
/*  are met:                                                                 */
/*                                                                           */
/*     Redistributions  of source  code must  retain the  above copyright    */
/*     notice, this list of conditions and the following disclaimer.         */
/*                                                                           */
/*     Redistributions in binary form  must reproduce the above copyright    */
/*     notice, this  list of conditions  and the following  disclaimer in    */
/*     the  documentation  and/or   other  materials  provided  with  the    */
/*     distribution.                                                         */
/*                                                                           */
/*     Neither the  name of Texas Instruments Incorporated  nor the names    */
/*     of its  contributors may  be used to  endorse or  promote products    */
/*     derived  from   this  software  without   specific  prior  written    */
/*     permission.                                                           */
/*                                                                           */
/*  THIS SOFTWARE  IS PROVIDED BY THE COPYRIGHT  HOLDERS AND CONTRIBUTORS    */
/*  "AS IS"  AND ANY  EXPRESS OR IMPLIED  WARRANTIES, INCLUDING,  BUT NOT    */
/*  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR    */
/*  A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT    */
/*  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,    */
/*  SPECIAL,  EXEMPLARY,  OR CONSEQUENTIAL  DAMAGES  (INCLUDING, BUT  NOT    */
/*  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,    */
/*  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY    */
/*  THEORY OF  LIABILITY, WHETHER IN CONTRACT, STRICT  LIABILITY, OR TORT    */
/*  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE    */
/*  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.     */
/*                                                                           */
/*****************************************************************************/



_Pragma("diag_push")
_Pragma("CHECK_MISRA(\"-19.7\")") /* prefer functions to macros */

# 53 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/_stdint40.h"

/*
   According to footnotes in the 1999 C standard, "C++ implementations
   should define these macros only when __STDC_LIMIT_MACROS is defined
   before <stdint.h> is included."
*/


# 77 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/_stdint40.h"



_Pragma("diag_pop")

# 47 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/stdint.h"
# 1 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/stdint.h"
/*-
 * SPDX-License-Identifier: BSD-2-Clause-FreeBSD
 *
 * Copyright (c) 2001 Mike Barcroft <mike@FreeBSD.org>
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 * $FreeBSD$
 */






# 1 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"
/*-
 * SPDX-License-Identifier: BSD-3-Clause
 *
 * Copyright (c) 1991, 1993
 *	The Regents of the University of California.  All rights reserved.
 *
 * This code is derived from software contributed to Berkeley by
 * Berkeley Software Design, Inc.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. Neither the name of the University nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 *	@(#)cdefs.h	8.8 (Berkeley) 1/9/95
 * $FreeBSD$
 */







_Pragma("diag_push")
_Pragma("CHECK_MISRA(\"none\")")


/*
 * Testing against Clang-specific extensions.
 */
# 66 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

# 74 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

/*
 * This code has been put in place to help reduce the addition of
 * compiler specific defines in FreeBSD code.  It helps to aid in
 * having a compiler-agnostic source tree.
 */

# 140 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"


















/*
 * Macro to test if we're using a specific version of gcc or later.
 */
# 167 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

/*
 * The __CONCAT macro is used to concatenate parts of symbol names, e.g.
 * with "#define OLD(foo) __CONCAT(old,foo)", OLD(foo) produces oldfoo.
 * The __CONCAT macro is a bit tricky to use if it must work in non-ANSI
 * mode -- there must be no spaces between its arguments, and for nested
 * __CONCAT's, all the __CONCAT's must be at the left.  __CONCAT can also
 * concatenate double-quoted strings produced by the __STRING macro, but
 * this only works with ANSI C.
 *
 * __XSTRING is like __STRING, but it expands any macros in its argument
 * first.  It is only available with ANSI C.
 */
# 186 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

# 197 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

# 224 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

/*
 * Compiler-dependent macros to help declare dead (non-returning) and
 * pure (no side effects) functions, and unused variables.  They are
 * null except for versions of gcc that are known to support the features
 * properly (old versions of gcc-2 supported the dead and pure features
 * in a different (wrong) way).  If we do not provide an implementation
 * for a given compiler, let the compile fail if it is told to use
 * a feature that we cannot live without.
 */
# 240 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

/*
 * TI ADD - check that __GNUC__ is defined before referencing it to avoid
 *          generating an error when __GNUC__ treated as zero warning is
 *          promoted to an error via -pdse195 option.
 */
# 252 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

# 272 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"







/*
 * Keywords added in C11.
 */



# 294 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"







# 309 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"







# 331 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"


/*
 * XXX: Some compilers (Clang 3.3, GCC 4.7) falsely announce C++11 mode
 * without actually supporting the thread_local keyword. Don't check for
 * the presence of C++11 when defining _Thread_local.
 */
# 345 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"



/*
 * Emulation of C11 _Generic().  Unlike the previously defined C11
 * keywords, it is not possible to implement this using exactly the same
 * syntax.  Therefore implement something similar under the name
 * __generic().  Unlike _Generic(), this macro can only distinguish
 * between a single type, so it requires nested invocations to
 * distinguish multiple cases.
 */

# 366 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

/*
 * C99 Static array indices in function parameter declarations.  Syntax such as:
 * void bar(int myArray[static 10]);
 * is allowed in C99 but not in C++.  Define __min_size appropriately so
 * headers using it can be compiled in either language.  Use like this:
 * void bar(int myArray[__min_size(10)]);
 */
# 381 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

# 389 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"













# 409 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"













/* XXX: should use `#if __STDC_VERSION__ < 199901'. */









/* C++11 exposes a load of C99 stuff */
# 442 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

/*
 * GCC 2.95 provides `__restrict' as an extension to C90 to support the
 * C99-specific `restrict' type qualifier.  We happen to use `__restrict' as
 * a way to define the `restrict' type qualifier without disturbing older
 * software that is unaware of C99 keywords.
 * The TI compiler supports __restrict in all compilation modes.
 */
# 459 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

/*
 * GNU C version 2.96 adds explicit branch prediction so that
 * the CPU back-end can hint the processor and also so that
 * code blocks can be reordered such that the predicted path
 * sees a more linear flow, thus improving cache behavior, etc.
 *
 * The following two macros provide us with a way to utilize this
 * compiler feature.  Use __predict_true() if you expect the expression
 * to evaluate to true, and __predict_false() if you expect the
 * expression to evaluate to false.
 *
 * A few notes about usage:
 *
 *	* Generally, __predict_false() error condition checks (unless
 *	  you have some _strong_ reason to do otherwise, in which case
 *	  document it), and/or __predict_true() `no-error' condition
 *	  checks, assuming you want to optimize for the no-error case.
 *
 *	* Other than that, if you don't know the likelihood of a test
 *	  succeeding from empirical or other `hard' evidence, don't
 *	  make predictions.
 *
 *	* These are meant to be used in places that are run `a lot'.
 *	  It is wasteful to make predictions in code that is run
 *	  seldomly (e.g. at subsystem initialization time) as the
 *	  basic block reordering that this affects can often generate
 *	  larger code.
 */
# 495 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

# 505 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

/*
 * We define this here since <stddef.h>, <sys/queue.h>, and <sys/types.h>
 * require it.
 */
# 525 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

/*
 * Given the pointer x to the member m of the struct s, return
 * a pointer to the containing structure.  When using GCC, we first
 * assign pointer x to a local variable, to check that its type is
 * compatible with member m.
 */
# 541 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

/*
 * Compiler-dependent macros to declare that functions take printf-like
 * or scanf-like arguments.  They are null except for versions of gcc
 * that are known to support the features properly (old versions of gcc-2
 * didn't permit keeping the keywords out of the application namespace).
 */
# 565 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

/* Compiler-dependent macros that rely on FreeBSD-specific extensions. */
# 574 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

# 606 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"







/*
 * The following definition might not work well if used in header files,
 * but it should be better than nothing.  If you want a "do nothing"
 * version, then it should generate some harmless declaration, such as:
 *    #define	__IDSTRING(name,string)	struct __hack
 */








/*
 * Embed the rcs id of a source file in the resulting library.  Note that in
 * more recent ELF binutils, we use .ident allowing the ID to be stripped.
 * Usage:
 *	__FBSDID("$FreeBSD$");
 */
# 640 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

# 648 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

# 656 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

# 664 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

# 672 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"













/*-
 * The following definitions are an extension of the behavior originally
 * implemented in <sys/_posix.h>, but with a different level of granularity.
 * POSIX.1 requires that the macros we test be defined before any standard
 * header file is included.
 *
 * Here's a quick run-down of the versions:
 *  defined(_POSIX_SOURCE)		1003.1-1988
 *  _POSIX_C_SOURCE == 1		1003.1-1990
 *  _POSIX_C_SOURCE == 2		1003.2-1992 C Language Binding Option
 *  _POSIX_C_SOURCE == 199309		1003.1b-1993
 *  _POSIX_C_SOURCE == 199506		1003.1c-1995, 1003.1i-1995,
 *					and the omnibus ISO/IEC 9945-1: 1996
 *  _POSIX_C_SOURCE == 200112		1003.1-2001
 *  _POSIX_C_SOURCE == 200809		1003.1-2008
 *
 * In addition, the X/Open Portability Guide, which is now the Single UNIX
 * Specification, defines a feature-test macro which indicates the version of
 * that specification, and which subsumes _POSIX_C_SOURCE.
 *
 * Our macros begin with two underscores to avoid namespace screwage.
 */

/* Deal with IEEE Std. 1003.1-1990, in which _POSIX_C_SOURCE == 1. */





/* Deal with IEEE Std. 1003.2-1992, in which _POSIX_C_SOURCE == 2. */





/* Deal with various X/Open Portability Guides and Single UNIX Spec. */
# 736 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

/*
 * Deal with all versions of POSIX.  The ordering relative to the tests above is
 * important.
 */
# 768 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"
/*-
 * Deal with _ANSI_SOURCE:
 * If it is defined, and no other compilation environment is explicitly
 * requested, then define our internal feature-test macros to zero.  This
 * makes no difference to the preprocessor (undefined symbols in preprocessing
 * expressions are defined to have value zero), but makes it more convenient for
 * a test program to print out the values.
 *
 * If a program mistakenly defines _ANSI_SOURCE and some other macro such as
 * _POSIX_C_SOURCE, we will assume that it wants the broader compilation
 * environment (and in fact we will never get here).
 */
# 806 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

/* User override __EXT1_VISIBLE */
# 816 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"





/*
 * Old versions of GCC use non-standard ARM arch symbols; acle-compat.h
 * translates them to __ARM_ARCH and the modern feature symbols defined by ARM.
 */




/*
 * Nullability qualifiers: currently only supported by Clang.
 */
# 843 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

/*
 * Type Safety Checking
 *
 * Clang provides additional attributes to enable checking type safety
 * properties that cannot be enforced by the C type system. 
 */

# 861 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

/*
 * Lock annotations.
 *
 * Clang provides support for doing basic thread-safety tests at
 * compile-time, by marking which locks will/should be held when
 * entering/leaving a functions.
 *
 * Furthermore, it is also possible to annotate variables and structure
 * members to enforce that they are only accessed when certain locks are
 * held.
 */







/* Structure implements a lock. */


/* Function acquires an exclusive or shared lock. */





/* Function attempts to acquire an exclusive or shared lock. */





/* Function releases a lock. */


/* Function asserts that an exclusive or shared lock is held. */





/* Function requires that an exclusive or shared lock is or is not held. */
# 911 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

/* Function should not be analyzed. */


/* Guard variables and structure members by lock. */




_Pragma("diag_pop")


# 37 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/stdint.h"
# 1 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/_types.h"
/*-
 * SPDX-License-Identifier: BSD-2-Clause-FreeBSD
 *
 * Copyright (c) 2002 Mike Barcroft <mike@FreeBSD.org>
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 * $FreeBSD$
 */




# 1 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/machine/_types.h"
/*-
 * SPDX-License-Identifier: BSD-4-Clause
 *
 * Copyright (c) 2002 Mike Barcroft <mike@FreeBSD.org>
 * Copyright (c) 1990, 1993
 *	The Regents of the University of California.  All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. All advertising materials mentioning features or use of this software
 *    must display the following acknowledgement:
 *	This product includes software developed by the University of
 *	California, Berkeley and its contributors.
 * 4. Neither the name of the University nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 *	From: @(#)ansi.h	8.2 (Berkeley) 1/4/94
 *	From: @(#)types.h	8.3 (Berkeley) 1/5/94
 * $FreeBSD$
 */











_Pragma("diag_push")
/* This file is required to use base types */
_Pragma("CHECK_MISRA(\"-6.3\")")


# 70 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/machine/_types.h"

/*
 * Basic types upon which most other types are built.
 */
typedef	signed char		__int8_t;
typedef	unsigned char		__uint8_t;
typedef	short			__int16_t;
typedef	unsigned short		__uint16_t;
typedef	int			__int32_t;
typedef	unsigned int		__uint32_t;



/* LONGLONG */
typedef	long long		__int64_t;



/* LONGLONG */
typedef	unsigned long long	__uint64_t;

/*
 * Standard type definitions.
 */
typedef	__uint32_t	__clock_t;		/* clock()... */
typedef	__int32_t	__critical_t;
typedef	double		__double_t;
typedef	float		__float_t;
typedef	__int32_t	__intfptr_t;
typedef	__int64_t	__intmax_t;
typedef	__int32_t	__intptr_t;
typedef	__int32_t	__int_fast8_t;
typedef	__int32_t	__int_fast16_t;
typedef	__int32_t	__int_fast32_t;
typedef	__int64_t	__int_fast64_t;
typedef	__int8_t	__int_least8_t;
typedef	__int16_t	__int_least16_t;
typedef	__int32_t	__int_least32_t;
typedef	__int64_t	__int_least64_t;
typedef	__int32_t	__ptrdiff_t;		/* ptr1 - ptr2 */
typedef	__int32_t	__register_t;
typedef	__int32_t	__segsz_t;		/* segment size (in pages) */
typedef	__uint32_t	__size_t;		/* sizeof() */
typedef	__int32_t	__ssize_t;		/* byte count or error */




typedef __uint32_t      __time_t;

typedef	__uint32_t	__uintfptr_t;
typedef	__uint64_t	__uintmax_t;
typedef	__uint32_t	__uintptr_t;
typedef	__uint32_t	__uint_fast8_t;
typedef	__uint32_t	__uint_fast16_t;
typedef	__uint32_t	__uint_fast32_t;
typedef	__uint64_t	__uint_fast64_t;
typedef	__uint8_t	__uint_least8_t;
typedef	__uint16_t	__uint_least16_t;
typedef	__uint32_t	__uint_least32_t;
typedef	__uint64_t	__uint_least64_t;
typedef	__uint32_t	__u_register_t;
typedef	__uint32_t	__vm_offset_t;
typedef	__uint32_t	__vm_paddr_t;
typedef	__uint32_t	__vm_size_t;




typedef	unsigned short ___wchar_t;



# 153 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/machine/_types.h"

/*
 * POSIX target specific _off_t type definition
 */
typedef long _off_t;

/*
 * Unusual type definitions.
 */

typedef struct __va_list_t {
    void * __ap;
} __va_list;
# 176 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/machine/_types.h"


_Pragma("diag_pop")


# 36 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/_types.h"



_Pragma("diag_push")
/* This file is required to use types without size and signedness */
_Pragma("CHECK_MISRA(\"-6.3\")")


/*
 * Standard type definitions.
 */
typedef	__int32_t	__blksize_t;	/* file block size */
typedef	__int64_t	__blkcnt_t;	/* file block count */
typedef	__int32_t	__clockid_t;	/* clock_gettime()... */
typedef	__uint32_t	__fflags_t;	/* file flags */
typedef	__uint64_t	__fsblkcnt_t;
typedef	__uint64_t	__fsfilcnt_t;
typedef	__uint32_t	__gid_t;
typedef	__int64_t	__id_t;		/* can hold a gid_t, pid_t, or uid_t */
typedef	__uint64_t	__ino_t;	/* inode number */
typedef	long		__key_t;	/* IPC key (for Sys V IPC) */
typedef	__int32_t	__lwpid_t;	/* Thread ID (a.k.a. LWP) */
typedef	__uint16_t	__mode_t;	/* permissions */
typedef	int		__accmode_t;	/* access permissions */
typedef	int		__nl_item;
typedef	__uint64_t	__nlink_t;	/* link count */
typedef	_off_t	        __off_t;	/* file offset (target-specific)  */
typedef	__int64_t	__off64_t;	/* file offset (always 64-bit)    */
typedef	__int32_t	__pid_t;	/* process [group] */
typedef	__int64_t	__rlim_t;	/* resource limit - intentionally */
					/* signed, because of legacy code */
					/* that uses -1 for RLIM_INFINITY */



typedef	__uint8_t	__sa_family_t;

typedef	__uint32_t	__socklen_t;
typedef	long		__suseconds_t;	/* microseconds (signed) */
typedef	struct __timer	*__timer_t;	/* timer_gettime()... */
typedef	struct __mq	*__mqd_t;	/* mq_open()... */
typedef	__uint32_t	__uid_t;
typedef	unsigned int	__useconds_t;	/* microseconds (unsigned) */
typedef	int		__cpuwhich_t;	/* which parameter for cpuset. */
typedef	int		__cpulevel_t;	/* level parameter for cpuset. */
typedef int		__cpusetid_t;	/* cpuset identifier. */

/*
 * Unusual type definitions.
 */
/*
 * rune_t is declared to be an ``int'' instead of the more natural
 * ``unsigned long'' or ``long''.  Two things are happening here.  It is not
 * unsigned so that EOF (-1) can be naturally assigned to it and used.  Also,
 * it looks like 10646 will be a 31 bit standard.  This means that if your
 * ints cannot hold 32 bits, you will be in trouble.  The reason an int was
 * chosen over a long is that the is*() and to*() routines take ints (says
 * ANSI C), but they use __ct_rune_t instead of int.
 *
 * NOTE: rune_t is not covered by ANSI nor other standards, and should not
 * be instantiated outside of lib/libc/locale.  Use wchar_t.  wint_t and
 * rune_t must be the same type.  Also, wint_t should be able to hold all
 * members of the largest character set plus one extra value (WEOF), and
 * must be at least 16 bits.
 */




typedef	int		__ct_rune_t;	/* arg type for ctype funcs */


typedef	__ct_rune_t	__rune_t;	/* rune_t (see above) */
typedef	__ct_rune_t	__wint_t;	/* wint_t (see above) */

/* Clang already provides these types as built-ins, but only in C++ mode. */

typedef	__uint_least16_t __char16_t;
typedef	__uint_least32_t __char32_t;

/* In C++11, char16_t and char32_t are built-in types. */





typedef struct {
	long long __max_align1 __attribute__((aligned(alignof(long long))));
	long double __max_align2 __attribute__((aligned(alignof(long double))));
} __max_align_t;

typedef	__uint64_t	__dev_t;	/* device number */

typedef	__uint32_t	__fixpt_t;	/* fixed point number */

/*
 * mbstate_t is an opaque object to keep conversion state during multibyte
 * stream conversions.
 */

# 143 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/_types.h"
typedef int _Mbstatet;


typedef _Mbstatet __mbstate_t;
# 153 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/_types.h"

typedef __uintmax_t     __rman_res_t;

/*
 * When the following macro is defined, the system uses 64-bit inode numbers.
 * Programs can use this to avoid including <sys/param.h>, with its associated
 * namespace pollution.
 */



_Pragma("diag_pop")


# 38 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/stdint.h"

# 1 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/machine/_stdint.h"
/*-
 * SPDX-License-Identifier: BSD-2-Clause-NetBSD
 *
 * Copyright (c) 2001, 2002 Mike Barcroft <mike@FreeBSD.org>
 * Copyright (c) 2001 The NetBSD Foundation, Inc.
 * All rights reserved.
 *
 * This code is derived from software contributed to The NetBSD Foundation
 * by Klaus Klein.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE NETBSD FOUNDATION, INC. AND CONTRIBUTORS
 * ``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
 * TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE FOUNDATION OR CONTRIBUTORS
 * BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 * $FreeBSD$
 */






_Pragma("diag_push")
/* 19.4 is issued for macros that are defined in terms of other macros. */
_Pragma("CHECK_MISRA(\"-19.4\")")
_Pragma("CHECK_MISRA(\"-19.7\")")
_Pragma("CHECK_MISRA(\"-19.13\")")




















/*
 * ISO/IEC 9899:1999
 * 7.18.2.1 Limits of exact-width integer types
 */
/* Minimum values of exact-width signed integer types. */





/* Maximum values of exact-width signed integer types. */





/* Maximum values of exact-width unsigned integer types. */





/*
 * ISO/IEC 9899:1999
 * 7.18.2.2  Limits of minimum-width integer types
 */
/* Minimum values of minimum-width signed integer types. */





/* Maximum values of minimum-width signed integer types. */





/* Maximum values of minimum-width unsigned integer types. */





/*
 * ISO/IEC 9899:1999
 * 7.18.2.3  Limits of fastest minimum-width integer types
 */
/* Minimum values of fastest minimum-width signed integer types. */





/* Maximum values of fastest minimum-width signed integer types. */





/* Maximum values of fastest minimum-width unsigned integer types. */





/*
 * ISO/IEC 9899:1999
 * 7.18.2.4  Limits of integer types capable of holding object pointers
 */




/*
 * ISO/IEC 9899:1999
 * 7.18.2.5  Limits of greatest-width integer types
 */




/*
 * ISO/IEC 9899:1999
 * 7.18.3  Limits of other integer types
 */
/* Limits of ptrdiff_t. */



/* Limits of sig_atomic_t. */



/* Limit of size_t. */


/* Limits of wint_t. */





_Pragma("diag_pop")

# 40 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/stdint.h"
# 1 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/_stdint.h"
/*-
 * SPDX-License-Identifier: BSD-2-Clause-FreeBSD
 *
 * Copyright (c) 2011 David E. O'Brien <obrien@FreeBSD.org>
 * Copyright (c) 2001 Mike Barcroft <mike@FreeBSD.org>
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 * $FreeBSD$
 */






typedef	__int8_t		int8_t;





typedef	__int16_t		int16_t;




typedef	__int32_t		int32_t;




typedef	__int64_t		int64_t;





typedef	__uint8_t		uint8_t;





typedef	__uint16_t		uint16_t;




typedef	__uint32_t		uint32_t;




typedef	__uint64_t		uint64_t;




typedef	__intptr_t		intptr_t;



typedef	__uintptr_t		uintptr_t;



typedef	__intmax_t		intmax_t;



typedef	__uintmax_t		uintmax_t;



# 41 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/stdint.h"

typedef	__int_least8_t		int_least8_t;
typedef	__int_least16_t		int_least16_t;
typedef	__int_least32_t		int_least32_t;
typedef	__int_least64_t		int_least64_t;

typedef	__uint_least8_t		uint_least8_t;
typedef	__uint_least16_t	uint_least16_t;
typedef	__uint_least32_t	uint_least32_t;
typedef	__uint_least64_t	uint_least64_t;

typedef	__int_fast8_t		int_fast8_t;
typedef	__int_fast16_t		int_fast16_t;
typedef	__int_fast32_t		int_fast32_t;
typedef	__int_fast64_t		int_fast64_t;

typedef	__uint_fast8_t		uint_fast8_t;
typedef	__uint_fast16_t		uint_fast16_t;
typedef	__uint_fast32_t		uint_fast32_t;
typedef	__uint_fast64_t		uint_fast64_t;

_Pragma("diag_push")
_Pragma("CHECK_MISRA(\"-10.1\")")
/* GNU and Darwin define this and people seem to think it's portable */





_Pragma("diag_pop")

_Pragma("diag_push")
_Pragma("CHECK_MISRA(\"-19.4\")")
/* Limits of wchar_t. */


_Pragma("diag_pop")


/* ISO/IEC 9899:2011 K.3.4.4 */





# 49 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/stdint.h"
# 485 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/stdint.h"

_Pragma("diag_pop")

# 120 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/stdint.h"

# 150 "C:/ti/tirtos_tivac_2_16_00_08/products/tidrivers_tivac_2_16_00_08/packages/ti/drivers/SPI.h"
# 1 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/stdbool.h"
/* -*- C++ -*- */
/*===--------------------------- complex.h --------------------------------===*/
/*                                                                            */
/*                     The LLVM Compiler Infrastructure                       */
/*                                                                            */
/* This file is dual licensed under the MIT and the University of Illinois Open
** Source Licenses. See LICENSE.TXT for details.
*/
/*===----------------------------------------------------------------------===*/




/*
    stdbool.h synopsis

Macros:

    __bool_true_false_are_defined

*/







# 1 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/stdbool.h"
/*
 * Copyright (c) 2000 Jeroen Ruigrok van der Werven <asmodai@FreeBSD.org>
 * All rights reserved.
 *
 * Copyright (c) 2014-2014 Texas Instruments Incorporated
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 * $FreeBSD: release/10.0.0/include/stdbool.h 228878 2011-12-25 20:15:41Z ed $
 */

/* If this file is included in C99 mode, _Bool is a builtin, so no definition. */
/* If this is C89 mode and this file is included, _Bool is pre-defined in C89 */
/* relaxed mode by the EDG parser, so it needs to be defined in strict mode. */





_Pragma("diag_push")
_Pragma("CHECK_MISRA(\"-19.4\")")
_Pragma("CHECK_MISRA(\"-19.11\")")

# 54 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/stdbool.h"

_Pragma("diag_pop")

# 30 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/stdbool.h"

# 38 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/stdbool.h"

# 151 "C:/ti/tirtos_tivac_2_16_00_08/products/tidrivers_tivac_2_16_00_08/packages/ti/drivers/SPI.h"
# 1 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/stddef.h"
/* -*- C++ -*- */
/*===--------------------------- complex.h --------------------------------===*/
/*                                                                            */
/*                     The LLVM Compiler Infrastructure                       */
/*                                                                            */
/* This file is dual licensed under the MIT and the University of Illinois Open
** Source Licenses. See LICENSE.TXT for details.
*/
/*===----------------------------------------------------------------------===*/

# 22 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/stddef.h"

/*
    stddef.h synopsis

Macros:

    offsetof(type,member-designator)
    NULL

Types:

    ptrdiff_t
    size_t
    max_align_t
    nullptr_t

*/







# 1 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/stddef.h"
/*****************************************************************************/
/* stddef.h                                                                  */
/*                                                                           */
/* Copyright (c) 1993 Texas Instruments Incorporated                         */
/* http://www.ti.com/                                                        */
/*                                                                           */
/*  Redistribution and  use in source  and binary forms, with  or without    */
/*  modification,  are permitted provided  that the  following conditions    */
/*  are met:                                                                 */
/*                                                                           */
/*     Redistributions  of source  code must  retain the  above copyright    */
/*     notice, this list of conditions and the following disclaimer.         */
/*                                                                           */
/*     Redistributions in binary form  must reproduce the above copyright    */
/*     notice, this  list of conditions  and the following  disclaimer in    */
/*     the  documentation  and/or   other  materials  provided  with  the    */
/*     distribution.                                                         */
/*                                                                           */
/*     Neither the  name of Texas Instruments Incorporated  nor the names    */
/*     of its  contributors may  be used to  endorse or  promote products    */
/*     derived  from   this  software  without   specific  prior  written    */
/*     permission.                                                           */
/*                                                                           */
/*  THIS SOFTWARE  IS PROVIDED BY THE COPYRIGHT  HOLDERS AND CONTRIBUTORS    */
/*  "AS IS"  AND ANY  EXPRESS OR IMPLIED  WARRANTIES, INCLUDING,  BUT NOT    */
/*  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR    */
/*  A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT    */
/*  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,    */
/*  SPECIAL,  EXEMPLARY,  OR CONSEQUENTIAL  DAMAGES  (INCLUDING, BUT  NOT    */
/*  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,    */
/*  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY    */
/*  THEORY OF  LIABILITY, WHETHER IN CONTRACT, STRICT  LIABILITY, OR TORT    */
/*  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE    */
/*  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.     */
/*                                                                           */
/*****************************************************************************/






_Pragma("diag_push")
_Pragma("CHECK_MISRA(\"-19.7\")") /* macros required for implementation */
_Pragma("CHECK_MISRA(\"-20.1\")") /* standard headers must define standard names */
_Pragma("CHECK_MISRA(\"-20.2\")") /* standard headers must define standard names */


extern "C" {






typedef int ptrdiff_t;







typedef unsigned size_t;


# 78 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/stddef.h"

/*----------------------------------------------------------------------------*/
/* C++11 and C11 required max_align_t to be defined. The libc++ cstddef       */
/* header expects the macro __DEFINED_max_align_t to be defined if it is to   */
/* use the definintion of max_align_t from stddef.h. Only define it if        */
/* compiling for C11 or we're in non strict ansi mode.                        */
/*----------------------------------------------------------------------------*/



typedef long double max_align_t;



_Pragma("diag_push")
_Pragma("CHECK_MISRA(\"-19.10\")") /* need types as macro arguments */

# 106 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/stddef.h"

_Pragma("diag_pop")


} /* extern "C" */


_Pragma("diag_pop")

# 47 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/stddef.h"



extern "C++" {
# 1 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__nullptr"
// -*- C++ -*-
//===--------------------------- __nullptr --------------------------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is dual licensed under the MIT and the University of Illinois Open
// Source Licenses. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//










# 54 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__nullptr"

namespace std
{
    typedef decltype(nullptr) nullptr_t;
}



# 52 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/stddef.h"
using std::nullptr_t;
}

/* Re-use the compiler's <stddef.h> max_align_t where possible. */







# 152 "C:/ti/tirtos_tivac_2_16_00_08/products/tidrivers_tivac_2_16_00_08/packages/ti/drivers/SPI.h"

/**
 *  @defgroup SPI_CONTROL SPI_control command and status codes
 *  These SPI macros are reservations for SPI.h
 *  @{
 */

/*!
 * Common SPI_control command code reservation offset.
 * SPI driver implementations should offset command codes with SPI_CMD_RESERVED
 * growing positively
 *
 * Example implementation specific command codes:
 * @code
 * #define SPIXYZ_CMD_COMMAND0     SPI_CMD_RESERVED + 0
 * #define SPIXYZ_CMD_COMMAND1     SPI_CMD_RESERVED + 1
 * @endcode
 */


/*!
 * Common SPI_control status code reservation offset.
 * SPI driver implementations should offset status codes with
 * SPI_STATUS_RESERVED growing negatively.
 *
 * Example implementation specific status codes:
 * @code
 * #define SPIXYZ_STATUS_ERROR0    SPI_STATUS_RESERVED - 0
 * #define SPIXYZ_STATUS_ERROR1    SPI_STATUS_RESERVED - 1
 * #define SPIXYZ_STATUS_ERROR2    SPI_STATUS_RESERVED - 2
 * @endcode
 */


/**
 *  @defgroup SPI_STATUS Status Codes
 *  SPI_STATUS_* macros are general status codes returned by SPI_control()
 *  @{
 *  @ingroup SPI_CONTROL
 */

/*!
 * @brief   Successful status code returned by SPI_control().
 *
 * SPI_control() returns SPI_STATUS_SUCCESS if the control code was executed
 * successfully.
 */


/*!
 * @brief   Generic error status code returned by SPI_control().
 *
 * SPI_control() returns SPI_STATUS_ERROR if the control code was not executed
 * successfully.
 */


/*!
 * @brief   An error status code returned by SPI_control() for undefined
 * command codes.
 *
 * SPI_control() returns SPI_STATUS_UNDEFINEDCMD if the control code is not
 * recognized by the driver implementation.
 */

/** @}*/

/**
 *  @defgroup SPI_CMD Command Codes
 *  SPI_CMD_* macros are general command codes for SPI_control(). Not all SPI
 *  driver implementations support these command codes.
 *  @{
 *  @ingroup SPI_CONTROL
 */

/* Add SPI_CMD_<commands> here */

/** @}*/

/** @}*/

/*!
 *  @brief    Wait forever define
 */


/*!
 *  @brief      A handle that is returned from a SPI_open() call.
 */
typedef struct SPI_Config      *SPI_Handle;

/*!
 *  @brief      Status codes that are set by the SPI driver.
 */
typedef enum SPI_Status {
    SPI_TRANSFER_COMPLETED = 0,
    SPI_TRANSFER_STARTED,
    SPI_TRANSFER_CANCELED,
    SPI_TRANSFER_FAILED,
    SPI_TRANSFER_CSN_DEASSERT
} SPI_Status;

/*!
 *  @brief
 *  A ::SPI_Transaction data structure is used with SPI_transfer(). It indicates
 *  how many ::SPI_FrameFormat frames are sent and received from the buffers
 *  pointed to txBuf and rxBuf.
 *  The arg variable is an user-definable argument which gets passed to the
 *  ::SPI_CallbackFxn when the SPI driver is in ::SPI_MODE_CALLBACK.
 */
typedef struct SPI_Transaction {
    /* User input (write-only) fields */
    size_t     count;      /*!< Number of frames for this transaction */
    void      *txBuf;      /*!< void * to a buffer with data to be transmitted */
    void      *rxBuf;      /*!< void * to a buffer to receive data */
    void      *arg;        /*!< Argument to be passed to the callback function */

    /* User output (read-only) fields */
    SPI_Status status;     /*!< Status code set by SPI_transfer */

    /* Driver-use only fields */
} SPI_Transaction;

/*!
 *  @brief      The definition of a callback function used by the SPI driver
 *              when used in ::SPI_MODE_CALLBACK
 *
 *  @param      SPI_Handle          SPI_Handle
 *  @param      SPI_Transaction*    SPI_Transaction*
 */
typedef void        (*SPI_CallbackFxn) (SPI_Handle handle,
                                        SPI_Transaction * transaction);
/*!
 *  @brief
 *  Definitions for various SPI modes of operation.
 */
typedef enum SPI_Mode {
    SPI_MASTER      = 0,    /*!< SPI in master mode */
    SPI_SLAVE       = 1     /*!< SPI in slave mode */
} SPI_Mode;

/*!
 *  @brief
 *  Definitions for various SPI data frame formats.
 */
typedef enum SPI_FrameFormat {
    SPI_POL0_PHA0   = 0,    /*!< SPI mode Polarity 0 Phase 0 */
    SPI_POL0_PHA1   = 1,    /*!< SPI mode Polarity 0 Phase 1 */
    SPI_POL1_PHA0   = 2,    /*!< SPI mode Polarity 1 Phase 0 */
    SPI_POL1_PHA1   = 3,    /*!< SPI mode Polarity 1 Phase 1 */
    SPI_TI          = 4,    /*!< TI mode */
    SPI_MW          = 5     /*!< Micro-wire mode */
} SPI_FrameFormat;

/*!
 *  @brief
 *
 *  SPI transfer mode determines the whether the SPI controller operates
 *  synchronously or asynchronously. In ::SPI_MODE_BLOCKING mode SPI_transfer()
 *  blocks code execution until the SPI transaction has completed. In
 *  ::SPI_MODE_CALLBACK SPI_transfer() does not block code execution and instead
 *  calls a ::SPI_CallbackFxn callback function when the transaction has
 *  completed.
 */
typedef enum SPI_TransferMode {
    /*!
     * SPI_transfer() blocks execution. This mode can only be used when called
     * within a Task context
     */
    SPI_MODE_BLOCKING,
    /*!
     * SPI_transfer() does not block code execution and will call a
     * ::SPI_CallbackFxn. This mode can be used in a Task, Swi, or Hwi context.
     */
    SPI_MODE_CALLBACK
} SPI_TransferMode;

/*!
 *  @brief SPI Parameters
 *
 *  SPI Parameters are used to with the SPI_open() call. Default values for
 *  these parameters are set using SPI_Params_init().
 *
 *  @sa         SPI_Params_init()
 */
typedef struct SPI_Params {
    SPI_TransferMode    transferMode;       /*!< Blocking or Callback mode */
    uint32_t            transferTimeout;    /*!< Transfer timeout in system
                                                 ticks (Not supported with all
                                                 implementations */
    SPI_CallbackFxn     transferCallbackFxn;/*!< Callback function pointer */
    SPI_Mode            mode;               /*!< Master or Slave mode */
    uint32_t            bitRate;            /*!< SPI bit rate in Hz */
    uint32_t            dataSize;           /*!< SPI data frame size in bits */
    SPI_FrameFormat     frameFormat;        /*!< SPI frame format */
    uintptr_t           custom;             /*!< Custom argument used by driver
                                                 implementation */
} SPI_Params;

/*!
 *  @brief      A function pointer to a driver specific implementation of
 *              SPI_close().
 */
typedef void        (*SPI_CloseFxn)          (SPI_Handle handle);

/*!
 *  @brief      A function pointer to a driver specific implementation of
 *              SPI_control().
 */
typedef int         (*SPI_ControlFxn)        (SPI_Handle handle,
                                              unsigned int cmd,
                                              void *arg);

/*!
 *  @brief      A function pointer to a driver specific implementation of
 *              SPI_init().
 */
typedef void        (*SPI_InitFxn)           (SPI_Handle handle);

/*!
 *  @brief      A function pointer to a driver specific implementation of
 *              SPI_open().
 */
typedef SPI_Handle  (*SPI_OpenFxn)           (SPI_Handle handle,
                                              SPI_Params *params);

/*!
 *  @brief      A function pointer to a driver specific implementation of
 *              SPI_serviceISR().
 */
typedef void        (*SPI_ServiceISRFxn)     (SPI_Handle handle);

/*!
 *  @brief      A function pointer to a driver specific implementation of
 *              SPI_transfer().
 */
typedef bool        (*SPI_TransferFxn)       (SPI_Handle handle,
                                              SPI_Transaction *transaction);

/*!
 *  @brief      A function pointer to a driver specific implementation of
 *              SPI_transferCancel().
 */
typedef void        (*SPI_TransferCancelFxn) (SPI_Handle handle);

/*!
 *  @brief      The definition of a SPI function table that contains the
 *              required set of functions to control a specific SPI driver
 *              implementation.
 */
typedef struct SPI_FxnTable {
    /*! Function to close the specified peripheral */
    SPI_CloseFxn            closeFxn;

    /*! Function to implementation specific control function */
    SPI_ControlFxn          controlFxn;

    /*! Function to initialize the given data object */
    SPI_InitFxn             initFxn;

    /*! Function to open the specified peripheral */
    SPI_OpenFxn             openFxn;

    /*! Function to initiate a SPI data transfer */
    SPI_TransferFxn         transferFxn;

    /*! Function to cancel SPI data transfer */
    SPI_TransferCancelFxn   transferCancelFxn;

    /*! Function to service the SPI instance */
    SPI_ServiceISRFxn       serviceISRFxn;
} SPI_FxnTable;

/*!
 *  @brief SPI Global configuration
 *
 *  The SPI_Config structure contains a set of pointers used to characterize
 *  the SPI driver implementation.
 *
 *  This structure needs to be defined before calling SPI_init() and it must
 *  not be changed thereafter.
 *
 *  @sa     SPI_init()
 */
typedef struct SPI_Config {
    /*! Pointer to a table of driver-specific implementations of SPI APIs */
    SPI_FxnTable const *fxnTablePtr;

    /*! Pointer to a driver specific data object */
    void               *object;

    /*! Pointer to a driver specific hardware attributes structure */
    void         const *hwAttrs;
} SPI_Config;

/*!
 *  @brief  Function to close a SPI peripheral specified by the SPI handle
 *
 *  @pre    SPI_open() has to be called first.
 *
 *  @param  handle A SPI handle returned from SPI_open()
 *
 *  @sa     SPI_open()
 */
extern void SPI_close(SPI_Handle handle);

/*!
 *  @brief  Function performs implementation specific features on a given
 *          SPI_Handle.
 *
 *  Commands for SPI_control can originate from SPI.h or from implementation
 *  specific SPI*.h (_SPICC26XX.h_, _SPITiva.h_, etc.. ) files.
 *  While commands from SPI.h are API portable across driver implementations,
 *  not all implementations may support all these commands.
 *  Conversely, commands from driver implementation specific SPI*.h files add
 *  unique driver capabilities but are not API portable across all SPI driver
 *  implementations.
 *
 *  Commands supported by SPI.h follow a SPI_CMD_\<cmd\> naming
 *  convention.<br>
 *  Commands supported by SPI*.h follow a SPI*_CMD_\<cmd\> naming
 *  convention.<br>
 *  Each control command defines @b arg differently. The types of @b arg are
 *  documented with each command.
 *
 *  See @ref SPI_CMD "SPI_control command codes" for command codes.
 *
 *  See @ref SPI_STATUS "SPI_control return status codes" for status codes.
 *
 *  @pre    SPI_open() has to be called first.
 *
 *  @param  handle      A SPI handle returned from SPI_open()
 *
 *  @param  cmd         SPI.h or SPI*.h commands.
 *
 *  @param  arg         An optional R/W (read/write) command argument
 *                      accompanied with cmd
 *
 *  @return Implementation specific return codes. Negative values indicate
 *          unsuccessful operations.
 *
 *  @sa     SPI_open()
 */
extern int SPI_control(SPI_Handle handle, unsigned int cmd, void *arg);

/*!
 *  @brief  This function initializes the SPI module.
 *
 *  @pre    The SPI_config structure must exist and be persistent before this
 *          function can be called. This function must also be called before
 *          any other SPI driver APIs. This function call does not modify any
 *          peripheral registers.
 */
extern void SPI_init(void);

/*!
 *  @brief  This function opens a given SPI peripheral.
 *
 *  @pre    SPI controller has been initialized using SPI_init()
 *
 *  @param  index         Logical peripheral number for the SPI indexed into
 *                        the SPI_config table
 *
 *  @param  params        Pointer to an parameter block, if NULL it will use
 *                        default values. All the fields in this structure are
 *                        RO (read-only).
 *
 *  @return A SPI_Handle on success or a NULL on an error or if it has been
 *          opened already.
 *
 *  @sa     SPI_init()
 *  @sa     SPI_close()
 */
extern SPI_Handle SPI_open(unsigned int index, SPI_Params *params);

/*!
 *  @brief  Function to initialize the SPI_Params struct to its defaults
 *
 *  @param  params      An pointer to SPI_Params structure for
 *                      initialization
 *
 *  Defaults values are:
 *      transferMode        = SPI_MODE_BLOCKING
 *      transferTimeout     = SPI_WAIT_FOREVER
 *      transferCallbackFxn = NULL
 *      mode                = SPI_MASTER
 *      bitRate             = 1000000 (Hz)
 *      dataSize            = 8 (bits)
 *      frameFormat         = SPI_POL0_PHA0
 */
extern void SPI_Params_init(SPI_Params *params);

/*!
 *  @brief  Function to service the SPI module's interrupt service routine
 *
 *  This function is not supported on all driver implementations.  Refer to
 *  implementation specific documentation for details.
 *
 *  @param  handle      A SPI_Handle
 */
extern void SPI_serviceISR(SPI_Handle handle);

/*!
 *  @brief  Function to perform SPI transactions
 *
 *  If the SPI is in ::SPI_MASTER mode, it will immediately start the
 *  transaction. If the SPI is in ::SPI_SLAVE mode, it prepares itself for a
 *  transaction with a SPI master.
 *
 *  In ::SPI_MODE_BLOCKING, SPI_transfer will block task execution until the
 *  transaction has completed.
 *
 *  In ::SPI_MODE_CALLBACK, SPI_transfer() does not block task execution and
 *  calls a ::SPI_CallbackFxn. This makes the SPI_tranfer() safe to be used
 *  within a Task, Swi, or Hwi context. The ::SPI_Transaction structure must
 *  stay persistent until the SPI_transfer function has completed!
 *
 *  @param  handle      A SPI_Handle
 *
 *  @param  transaction A pointer to a SPI_Transaction. All of the fields within
 *                      transaction except SPI_Transaction.count and
 *                      SPI_Transaction.status are WO (write-only) unless
 *                      otherwise noted in the driver implementations. If a
 *                      transaction timeout has occured, SPI_Transaction.count
 *                      will contain the number of frames that were transferred.
 *
 *  @return true if started successfully; else false
 *
 *  @sa     SPI_open
 *  @sa     SPI_transferCancel
 */
extern bool SPI_transfer(SPI_Handle handle, SPI_Transaction *transaction);

/*!
 *  @brief  Function to cancel SPI transactions
 *
 *  In ::SPI_MODE_BLOCKING, SPI_transferCancel has no effect.
 *
 *  In ::SPI_MODE_CALLBACK, SPI_transferCancel() will stop an SPI transfer if
 *  if one is in progress.
 *  If a transaction was in progress, its callback function will be called
 *  in context from which this API is called from. The ::SPI_CallbackFxn
 *  function can determine if the transaction was successful or not by reading
 *  the ::SPI_Status status value in the ::SPI_Transaction structure.
 *
 *  @param  handle      A SPI_Handle
 *
 *  @sa     SPI_open
 *  @sa     SPI_transfer
 */
extern void SPI_transferCancel(SPI_Handle handle);


}


# 12 "C:/Users/Dan/Documents/GitHub/FlipClock/source/config/serialConfig.h"

SPI_Handle ledSPIHandle;

extern void initSPI();
extern void initI2C();

# 8 "../source/Leds.cpp"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/std.h"
/* 
 *  Copyright (c) 2008 Texas Instruments. All rights reserved. 
 *  This program and the accompanying materials are made available under the 
 *  terms of the Eclipse Public License v1.0 and Eclipse Distribution License
 *  v. 1.0 which accompanies this distribution. The Eclipse Public License is
 *  available at http://www.eclipse.org/legal/epl-v10.html and the Eclipse
 *  Distribution License is available at 
 *  http://www.eclipse.org/org/documents/edl-v10.php.
 *
 *  Contributors:
 *      Texas Instruments - initial implementation
 * */




# 1 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/stdarg.h"
/*****************************************************************************/
/* stdarg.h                                                                  */
/*                                                                           */
/* Copyright (c) 1996 Texas Instruments Incorporated                         */
/* http://www.ti.com/                                                        */
/*                                                                           */
/*  Redistribution and  use in source  and binary forms, with  or without    */
/*  modification,  are permitted provided  that the  following conditions    */
/*  are met:                                                                 */
/*                                                                           */
/*     Redistributions  of source  code must  retain the  above copyright    */
/*     notice, this list of conditions and the following disclaimer.         */
/*                                                                           */
/*     Redistributions in binary form  must reproduce the above copyright    */
/*     notice, this  list of conditions  and the following  disclaimer in    */
/*     the  documentation  and/or   other  materials  provided  with  the    */
/*     distribution.                                                         */
/*                                                                           */
/*     Neither the  name of Texas Instruments Incorporated  nor the names    */
/*     of its  contributors may  be used to  endorse or  promote products    */
/*     derived  from   this  software  without   specific  prior  written    */
/*     permission.                                                           */
/*                                                                           */
/*  THIS SOFTWARE  IS PROVIDED BY THE COPYRIGHT  HOLDERS AND CONTRIBUTORS    */
/*  "AS IS"  AND ANY  EXPRESS OR IMPLIED  WARRANTIES, INCLUDING,  BUT NOT    */
/*  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR    */
/*  A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT    */
/*  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,    */
/*  SPECIAL,  EXEMPLARY,  OR CONSEQUENTIAL  DAMAGES  (INCLUDING, BUT  NOT    */
/*  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,    */
/*  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY    */
/*  THEORY OF  LIABILITY, WHETHER IN CONTRACT, STRICT  LIABILITY, OR TORT    */
/*  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE    */
/*  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.     */
/*                                                                           */
/*****************************************************************************/




#pragma diag_push
#pragma CHECK_MISRA("-19.7") /* need function-like macros */
#pragma CHECK_MISRA("-19.10") /* need types as macro arguments */
#pragma CHECK_MISRA("-20.1") /* standard headers must define standard names */
#pragma CHECK_MISRA("-20.2") /* standard headers must define standard names */





typedef __va_list va_list;










# 75 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/stdarg.h"





#pragma diag_pop



# 18 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/std.h"
# 1 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/stddef.h"
/* -*- C++ -*- */
/*===--------------------------- complex.h --------------------------------===*/
/*                                                                            */
/*                     The LLVM Compiler Infrastructure                       */
/*                                                                            */
/* This file is dual licensed under the MIT and the University of Illinois Open
** Source Licenses. See LICENSE.TXT for details.
*/
/*===----------------------------------------------------------------------===*/

# 19 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/std.h"

/* macros to simplify "stringification" and computed includes */




/* TitleCase standard types */



typedef char            xdc_Char;
typedef unsigned char   xdc_UChar;
typedef short           xdc_Short;
typedef unsigned short  xdc_UShort;
typedef int             xdc_Int;
typedef unsigned int    xdc_UInt;
typedef long            xdc_Long;
typedef unsigned long   xdc_ULong;
typedef float           xdc_Float;
typedef double          xdc_Double;
typedef long double     xdc_LDouble;
typedef size_t          xdc_SizeT;
typedef va_list         xdc_VaList;

/* Generic Extended Types */

typedef unsigned short  xdc_Bool;       /* boolean flag */
typedef void            *xdc_Ptr;       /* data pointer */
typedef const void      *xdc_CPtr;      /* data pointer */
typedef char            *xdc_String;    /* null terminated string */
typedef const char      *xdc_CString;   /* null terminated immutable string */



/* we intentionally omit arguments from Fxn to indicate that it can have
 * any (or none).  Unfortunately this causes gcc to emit warnings when
 * -Wstrict-prototypes is used.  Newer gcc's (4.6 or later) support a pragma
 * that works around this:
 *
 *    #pragma GCC diagnostic ignored "-Wstrict-prototypes"
 */
# 70 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/std.h"
  typedef int             (*xdc_Fxn)();   /* function pointer */


/*
 * Import the target-specific std.h
 */
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/targets/arm/elf/std.h"
/* 
 *  Copyright (c) 2008 Texas Instruments and others.
 *  All rights reserved. This program and the accompanying materials
 *  are made available under the terms of the Eclipse Public License v1.0
 *  which accompanies this distribution, and is available at
 *  http://www.eclipse.org/legal/epl-v10.html
 * 
 *  Contributors:
 *      Texas Instruments - initial implementation
 * 
 * */
/*
 *  ======== ti/targets/arm/elf/std.h ========
 *  Standard types for supported TI Arm compilers for ELF
 */




/*  Define target-specific "portable" macros
 *
 *  The build command-line define xdc_target_name__ to be the value
 *  of the target's name config parameter.  We use this to include the
 *  target-specific definitions for the required target-independent
 *  xdc_target* macros.
 */
# 1 "C:\\ti\\tirtos_tivac_2_16_00_08\\products\\bios_6_45_01_29\\packages\\ti\\targets\\arm\\elf\\M4F.h"
/*
 *  ======== M4F.h ========
 *  DO NOT MODIFY: This header is generated from stddef.xdt
 *
 *  This header contains target-specific definitions of target-independent
 *  macros required by the ITarget interface.  These definitions allow C/C++
 *  sources to portably compile for multiple targets (using #ifdef ...).
 */



/*
 *  ======== ti_targets_arm_elf_M4F ========
 *  This macro identifies the specific target being used.  This macro should
 *  probably be avoided in portable sources.
 */


/*
 *  ======== xdc_target__arraytype_VaList ========
 *  The following macro specifies whether or not a VaList is an 
 *  array type; e.g., struct __va_list_tag (*)[1] verses a simple char *.  
 *  This affects how va_list variables are passed to functions (by value
 *  or by address).
 */


/*
 *  ======== xdc_target__isaCompatible_* macros ========
 *  The following definitions enable clients to conditionally compile for any
 *  compatible subset of the actual target ISA.
 */



/*
 *  ======== xdc_target__isa_v7M4 ========
 *  This macro identifies the specific target ISA for which we are being
 *  compiled.
 */


/*
 *  ======== xdc_target__{big|little}Endian ========
 *  The following macro enables clients to portably compile for big or little
 *  endian targets.
 */


/*
 *  ======== xdc_target__{...}Code ========
 *  The following macro enables clients to portably compile for target specific
 *  code models; e.g., near, far, ...
 */


/*
 *  ======== xdc_target__os_undefined ========
 *  The following macro enables clients to portably compile for target specific
 *  OS; e.g., Linux, Solaris, Windows, undefined.
 */


/*
 *  ======== xdc_target__sizeof_ ========
 *  The following macros enable clients to portably determine type sizes
 *  within #ifdef blocks; sizeof() can't be used and the definitions in
 *  stdint.h are not available to C++ clients (unless the special macro
 *  __STDC_LIMIT_MACROS is defined).
 */
# 87 "C:\\ti\\tirtos_tivac_2_16_00_08\\products\\bios_6_45_01_29\\packages\\ti\\targets\\arm\\elf\\M4F.h"

/*
 *  ======== xdc_target__alignof_ ========
 *  The following macros enable clients to portably determine type alignment
 *  within #ifdef blocks; even if provided by the compiler, alignof() can't
 *  be used in pre-processor statements.
 */
# 110 "C:\\ti\\tirtos_tivac_2_16_00_08\\products\\bios_6_45_01_29\\packages\\ti\\targets\\arm\\elf\\M4F.h"

/*
 *  ======== xdc_target__bitsPerChar ========
 *  The number of bits in a char.  This macro allow one to determine the
 *  precise number of bits in any of the standard types (whose sizes are
 *  expressed as a number of chars).
 */


# 29 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/targets/arm/elf/std.h"


/* "inherit" (i.e., include) all ti.targets standard types */
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/targets/std.h"
/* 
 *  Copyright (c) 2008 Texas Instruments and others.
 *  All rights reserved. This program and the accompanying materials
 *  are made available under the terms of the Eclipse Public License v1.0
 *  which accompanies this distribution, and is available at
 *  http://www.eclipse.org/legal/epl-v10.html
 * 
 *  Contributors:
 *      Texas Instruments - initial implementation
 * 
 * */
/*
 *  ======== ti/targets/std.h ========
 *  Standard types for supported TI compilers
 *
 */




/* allow _TI_STD_TYPES like 'Uns' and 'Uint8' */




/* include target-specific "portable" macros */






# 42 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/targets/std.h"

/*
 * xdc__LONGLONG__ indicates if compiler supports 'long long' type
 * xdc__BITS<n> __ indicates if compiler supports 'uint<n>_t' type
 */
# 73 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/targets/std.h"

# 92 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/targets/std.h"

/*
 *  ======== [U]Int<n> ========
 */
typedef int_least8_t    xdc_Int8;
typedef uint_least8_t   xdc_UInt8;
typedef int_least16_t   xdc_Int16;
typedef uint_least16_t  xdc_UInt16;
typedef int_least32_t   xdc_Int32;
typedef uint_least32_t  xdc_UInt32;


    typedef int_least64_t   xdc_Int64;
    typedef uint_least64_t   xdc_UInt64;


# 120 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/targets/std.h"

/*
 *  ======== Bits<n> ========
 */

    typedef uint8_t     xdc_Bits8;


    typedef uint16_t    xdc_Bits16;


    typedef uint32_t    xdc_Bits32;


    typedef uint64_t    xdc_Bits64;


/*
 *  ======== [UI]Arg ========
 */
typedef intptr_t        xdc_IArg;
typedef uintptr_t       xdc_UArg;

/*
 *  ======== restrict ========
 */



/*
 *  ======== ti_targets_mkPragma ========
 */


/*
 *  ======== xdc__META ========
 */




/*
 *  ======== __ti__ ========
 *  These symbols are used by RTSC tools to indicate presence/absence of
 *  assorted #pragma options in TI compiler.
 */




# 181 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/targets/std.h"


/*
 *  @(#) ti.targets; 1, 0, 3,0; 1-29-2016 16:37:07; /db/ztree/library/trees/xdctargets/xdctargets-k09/src/ xlibrary

 */

# 33 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/targets/arm/elf/std.h"


/*
 *  @(#) ti.targets.arm.elf; 1, 0, 0,0; 1-29-2016 16:37:09; /db/ztree/library/trees/xdctargets/xdctargets-k09/src/ xlibrary

 */

# 81 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/std.h"
# 113 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/std.h"

/* Each modules' internal header file defines 'module' as 
 * xdc__MODOBJADDR__(Module__state__V), where Module__state__V is the actual
 * object where the module state is kept. For most targets, the default macro
 * given here results in the construct '(&Module__state__V)->field', when the
 * expression 'module->field' is used. Compilers then generate the code that
 * doesn't dereference a pointer, but puts the address of the field in the
 * code.
 * The targets that need to do something different can define
 * xdc__MODOBJADDR__ in std.h for their target package.
 */




/* Long Long Types */


typedef long long               xdc_LLong;
typedef unsigned long long      xdc_ULLong;

# 147 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/std.h"

/* Arg to Ptr and Fxn conversion operators
 *
 * Individual targets may override these definitions in the event
 * that compilers issue warnings about shortening of an Arg to a pointer,
 * for example.
 */

static inline xdc_Ptr xdc_iargToPtr(xdc_IArg a) { return ((xdc_Ptr)a); }
static inline xdc_Ptr xdc_uargToPtr(xdc_UArg a) { return ((xdc_Ptr)a); }



static inline xdc_Fxn xdc_iargToFxn(xdc_IArg a) { return ((xdc_Fxn)a); }
static inline xdc_Fxn xdc_uargToFxn(xdc_UArg a) { return ((xdc_Fxn)a); }



/*
 * functions to efficiently convert a single precision float to an IArg
 * and vice-versa while maintaining client type safety
 * 
 * Here the assumption is that sizeof(Float) <= sizeof(IArg);
 */
typedef union {
    xdc_Float f;
    xdc_IArg  a;
} xdc_FloatData;

static inline xdc_IArg xdc_floatToArg(xdc_Float f)
{
     xdc_FloatData u;
     u.f = f;

     return (u.a);
}

static inline xdc_Float xdc_argToFloat(xdc_IArg a)
{
     xdc_FloatData u;
     u.a = a;

     return (u.f);
}


/* restrict keyword */




/* Unprefixed Aliases */



# 208 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/std.h"



typedef xdc_Char        Char;
typedef xdc_UChar       UChar;
typedef xdc_Short       Short;
typedef xdc_UShort      UShort;
typedef xdc_Int         Int;
typedef xdc_UInt        UInt;
typedef xdc_Long        Long;
typedef xdc_ULong       ULong;
typedef xdc_LLong       LLong;
typedef xdc_ULLong      ULLong;
typedef xdc_Float       Float;
typedef xdc_Double      Double;
typedef xdc_LDouble     LDouble;
typedef xdc_SizeT       SizeT;
typedef xdc_VaList      VaList;

typedef xdc_IArg        IArg;
typedef xdc_UArg        UArg;
typedef xdc_Bool        Bool;
typedef xdc_Int8        Int8;
typedef xdc_Int16       Int16;
typedef xdc_Int32       Int32;
typedef xdc_Fxn         Fxn;
typedef xdc_Ptr         Ptr;

typedef xdc_String      String;

typedef xdc_CString     CString;

typedef xdc_UInt8       UInt8;
typedef xdc_UInt16      UInt16;
typedef xdc_UInt32      UInt32;

/* DEPRECATED Aliases */



/* xdc_Arg is defined only in ti/targets/std.h; use IArg and UArg instead */




typedef xdc_UInt8       Uint8;
typedef xdc_UInt16      Uint16;
typedef xdc_UInt32      Uint32;
typedef xdc_UInt        Uns;


/*
 *  ======== optional types ========
 *  The following types are not always defined for all targets
 */

typedef xdc_Int64       Int64;
typedef xdc_UInt64      UInt64;


/* The following exact size types are not required by C99 and may not be
 * supported by some compiler/processor environments.  For greater
 * portability, use the IntN or UIntN types above.
 */

typedef xdc_Bits8       Bits8;



typedef xdc_Bits16      Bits16;



typedef xdc_Bits32      Bits32;



typedef xdc_Bits64      Bits64;




/* Standard Constants */

/* NULL must be 0 for C++ and is set to 0 in C to allow legacy code to
 * compile without warnings.
 *
 * If xdc__strict is defined, NULL is defined to be a pointer to allow
 * maximal type checking in "modern" C sources
 */
# 304 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/std.h"







/* Declaration Qualifiers */





/*
 *  ======== xdc__CODESECT ========
 *  Code-Section Directive
 *
 *  Targets can optionally #define xdc__CODESECT in their specific
 *  std.h files.  This directive is placed in front of all
 *  "extern" function declarations, and specifies a section-name in
 *  which to place this function.  This approach
 *  provides more control on combining/organizing groups of
 *  related functions into a single named sub-section (e.g.,
 *  "init-code")  If this macro is not defined by the target, an
 *  empty definition is used instead.
 */ 




/*
 *  ======== xdc__META ========
 *  Embed unreferenced string in the current file
 *
 *  Strings emebdded via xdc__META can be placed in a section that is
 *  _not_ loaded on the target but are, nevertheless, part of the
 *  executable and available to loaders.
 *
 *  Different targets may define this macro in a way that places these
 *  strings in an output section that is not loaded (and therefore does
 *  not takeup space on the target).  Unless the target provides a
 *  definition of xdc__META, the definition below simply defines
 *  as string constant in the current file.
 */





/*
 *  @(#) xdc; 1, 1, 1,0; 12-9-2015 17:34:58; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 9 "../source/Leds.cpp"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/tidrivers_tivac_2_16_00_08/packages/ti/drivers/GPIO.h"
/*
 * Copyright (c) 2015, Texas Instruments Incorporated
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * *  Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * *  Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * *  Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
/** ============================================================================
 *  @file       GPIO.h
 *
 *  @brief      GPIO driver
 *
 *  The GPIO header file should be included in an application as follows:
 *  @code
 *  #include <ti/drivers/GPIO.h>
 *  @endcode
 *
 *  # Operation #
 *
 *  The GPIO module allows you to manage General Purpose I/O pins via
 *  simple and portable APIs. GPIO pin behaviour can be configured completely
 *  statically, or dynamically defined at runtime.
 *
 *  The application is required to supply a device
 *  specific GPIOXXX_Config structure to the module. This structure
 *  communicates to the GPIO module how to configure the pins that will be used
 *  by the application (See the description of GPIO_PinConfig).
 *
 *  The application is required to call GPIO_init(). This function will
 *  initialize all the GPIO pins defined in the GPIO_PinConfig table to the
 *  configurations specified. Once that is completed the other APIs can be
 *  used to access the pins.
 *
 *  Asserts are used to verify that the driver has been initialized and
 *  to validate pin indexes within the various APIs.
 *
 *  See the device specific GPIO header file for configuration details.
 *
 *  ============================================================================
 */





extern "C" {




/*!
 *  @brief  GPIO pin configuration settings
 *
 *  The upper 16 bits of the 32 bit PinConfig is reserved
 *  for pin configuration settings.
 *
 *  The lower 16 bits are reserved for device-specific
 *  port/pin identifications
 */
typedef uint32_t GPIO_PinConfig;

/*!
 *  @cond NODOC
 *  Internally used configuration bit access macros.
 */
# 101 "C:/ti/tirtos_tivac_2_16_00_08/products/tidrivers_tivac_2_16_00_08/packages/ti/drivers/GPIO.h"
/*! @endcond */

/** @name GPIO_PinConfig pin direction configuration macros
 *  @{
 */

















/** @} */

/** @name GPIO_PinConfig pin interrupt configuration macros
 *  @{
 */
# 134 "C:/ti/tirtos_tivac_2_16_00_08/products/tidrivers_tivac_2_16_00_08/packages/ti/drivers/GPIO.h"
/** @} */

/** @name Special GPIO_PinConfig configuration macros
 *  @{
 */

/*!
 *  @brief 'Or' in this GPIO_PinConfig definition to inform GPIO_setConfig()
 *  to only configure the interrupt attributes of a GPIO input pin.
 */


/*!
 *  @brief Use this GPIO_PinConfig definition to inform GPIO_init()
 *  NOT to configure the corresponding pin
 */


/** @} */

/*!
 *  @brief  GPIO callback function type
 *
 *  @param      index       GPIO index.  This is the same index that
 *                          was passed to GPIO_setCallback().  This allows
 *                          you to use the same callback function for multiple
 *                          GPIO interrupts, by using the index to identify
 *                          the GPIO that caused the interrupt.
 */
typedef void (*GPIO_CallbackFxn)(unsigned int index);

/*!
 *  @brief      Clear a GPIO pin interrupt flag
 *
 *  Clears the GPIO interrupt for the specified index.
 *
 *  Note: It is not necessary to call this API within a
 *  callback assigned to a pin.
 *
 *  @param      index       GPIO index
 */
extern void GPIO_clearInt(unsigned int index);

/*!
 *  @brief      Disable a GPIO pin interrupt
 *
 *  Disables interrupts for the specified GPIO index.
 *
 *  @param      index       GPIO index
 */
extern void GPIO_disableInt(unsigned int index);

/*!
 *  @brief      Enable a GPIO pin interrupt
 *
 *  Enables GPIO interrupts for the selected index to occur.
 *
 *  Note:  Prior to enabling a GPIO pin interrupt, make sure
 *  that a corresponding callback function has been provided.
 *  Use the GPIO_setCallback() API for this purpose at runtime.
 *  Alternatively, the callback function can be statically
 *  configured in the GPIO_CallbackFxn array provided.
 *
 *  @param      index       GPIO index
 */
extern void GPIO_enableInt(unsigned int index);

/*!
 *  @brief  Initializes the GPIO module
 *
 *  The pins defined in the application-provided *GPIOXXX_config* structure
 *  are initialized accordingly.
 *
 *  @pre    The GPIO_config structure must exist and be persistent before this
 *          function can be called. This function must also be called before
 *          any other GPIO driver APIs.
 */
extern void GPIO_init();

/*!
 *  @brief      Reads the value of a GPIO pin
 *
 *  The value returned will either be zero or one depending on the
 *  state of the pin.
 *
 *  @param      index  GPIO index
 *
 *  @return     0 or 1, depending on the state of the pin.
 */
extern unsigned int GPIO_read(unsigned int index);

/*!
 *  @brief      Bind a callback function to a GPIO pin interrupt
 *
 *  Associate a callback function with a particular GPIO pin interrupt.
 *
 *  Callbacks can be changed at any time, making it easy to switch between
 *  efficient, state-specific interrupt handlers.
 *
 *  Note: The callback function is called within the context of an interrupt
 *  handler.
 *
 *  Note: This API does not enable the GPIO pin interrupt.
 *  Use GPIO_enableInt() and GPIO_disableInt() to enable
 *  and disable the pin interrupt as necessary.
 *
 *  Note: it is not necessary to call GPIO_clearInt() within a callback.
 *  That operation is performed internally before the callback is invoked.
 *
 *  @param      index       GPIO index
 *  @param      callback    address of the callback function
 */
extern void GPIO_setCallback(unsigned int index, GPIO_CallbackFxn callback);

/*!
 *  @brief      Configure the gpio pin
 *
 *  Dynamically configure a gpio pin to a device specific setting.
 *  For many applications, the pin configurations provided in the static
 *  GPIO_PinConfig array is sufficient.
 *
 *  For input pins with interrupt configurations, a corresponding interrupt
 *  object will be created as needed.
 *
 *  @param      index       GPIO index
 *  @param      pinConfig   device specific pin configuration settings
 */
extern void GPIO_setConfig(unsigned int index, GPIO_PinConfig pinConfig);

/*!
 *  @brief      Toggles the current state of a GPIO
 *
 *  @param      index  GPIO index
 */
extern void GPIO_toggle(unsigned int index);

/*!
 *  @brief     Writes the value to a GPIO pin
 *
 *  @param      index    GPIO index
 *  @param      value    must be either 0 or 1
 */
extern void GPIO_write(unsigned int index, unsigned int value);


}


# 10 "../source/Leds.cpp"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/System.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/xdc.h"
/* 
 *  Copyright (c) 2008 Texas Instruments. All rights reserved. 
 *  This program and the accompanying materials are made available under the 
 *  terms of the Eclipse Public License v1.0 and Eclipse Distribution License
 *  v. 1.0 which accompanies this distribution. The Eclipse Public License is
 *  available at http://www.eclipse.org/legal/epl-v10.html and the Eclipse
 *  Distribution License is available at 
 *  http://www.eclipse.org/org/documents/edl-v10.php.
 *
 *  Contributors:
 *      Texas Instruments - initial implementation
 * */
/*
 * ======== xdc.h ========
 *  All generated public module headers include this file
 */




/*
 *  ======== __CONC__ ========
 *  Concatenate the specified tokens to create a new single token
 */



/*
 *  ======== __STR__ ========
 *  Stringify the specified arguement
 */



/*
 *  ======== xdc_FILE__ ========
 *  Alternative to __FILE__ which defaults to NULL
 *
 *  We define our own symbol in lieu of the standard __FILE__
 *  so we can avoid embedding lots of static strings in applications
 *  that use Error and Assert.
 *
 *  Both Error and Assert use xdc_FILE__ and ALL module internal headers
 *  redefine xdc_FILE__ to be NULL, unless xdc_FILE is defined.  If xdc_FILE
 *  is defined, xdc-FILE__ has the same value assigned to xdc_FILE.  So, by
 *  default, Error and Asserts in modules do *not* provide a file name.
 *
 *  Since this header in included in all module public headers, "non-module"
 *  clients of Error and Assert *will*, by default, provide a file name
 *  string.  To eliminate these embedded strings, add the following line
 *  before all module headers:
 *      #define xdc_FILE    NULL
 *
 *  Module creators may opt to define xdc_FILE as the string to use in
 *  Error and Assert messages.  For example, adding the following line
 *  to a module's implementation (before the inclusion of the module's
 *  internal header) will cause the standard __FILE__ to be
 *  used in lieu of NULL in Error and Assert calls:
 *      #define xdc_FILE    __FILE__
 *
 */
# 69 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/xdc.h"

/*
 *  ======== xdc_LINE ========
 *  Standard file-line-number string for identifying a call site
 */













/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:50; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 53 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/System.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types__prologue.h"
/* 
 *  Copyright (c) 2008 Texas Instruments. All rights reserved. 
 *  This program and the accompanying materials are made available under the 
 *  terms of the Eclipse Public License v1.0 and Eclipse Distribution License
 *  v. 1.0 which accompanies this distribution. The Eclipse Public License is
 *  available at http://www.eclipse.org/legal/epl-v10.html and the Eclipse
 *  Distribution License is available at 
 *  http://www.eclipse.org/org/documents/edl-v10.php.
 *
 *  Contributors:
 *      Texas Instruments - initial implementation
 * */
/*
 *  ======== Types__prologue.h ========
 *  Hand crafted definitions for Types.xdc
 */
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 54 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/package/package.defs.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */





/*
 * ======== interface xdc.runtime.IModule ========
 */

typedef struct xdc_runtime_IModule_Fxns__ xdc_runtime_IModule_Fxns__;
typedef const xdc_runtime_IModule_Fxns__* xdc_runtime_IModule_Module;

/*
 * ======== module xdc.runtime.Assert ========
 */


/*
 * ======== module xdc.runtime.Core ========
 */

typedef struct xdc_runtime_Core_ObjDesc xdc_runtime_Core_ObjDesc;

/*
 * ======== module xdc.runtime.Defaults ========
 */


/*
 * ======== module xdc.runtime.Diags ========
 */

typedef struct xdc_runtime_Diags_DictElem xdc_runtime_Diags_DictElem;

/*
 * ======== module xdc.runtime.Error ========
 */

typedef struct xdc_runtime_Error_Data xdc_runtime_Error_Data;
typedef struct xdc_runtime_Error_Block xdc_runtime_Error_Block;
typedef struct xdc_runtime_Error_Module_State xdc_runtime_Error_Module_State;

/*
 * ======== module xdc.runtime.Gate ========
 */


/*
 * ======== interface xdc.runtime.IGateProvider ========
 */

typedef struct xdc_runtime_IGateProvider_Fxns__ xdc_runtime_IGateProvider_Fxns__;
typedef const xdc_runtime_IGateProvider_Fxns__* xdc_runtime_IGateProvider_Module;
typedef struct xdc_runtime_IGateProvider_Params xdc_runtime_IGateProvider_Params;
typedef struct xdc_runtime_IGateProvider___Object { xdc_runtime_IGateProvider_Fxns__* __fxns; xdc_Bits32 __label; } *xdc_runtime_IGateProvider_Handle;

/*
 * ======== module xdc.runtime.GateNull ========
 */

typedef struct xdc_runtime_GateNull_Fxns__ xdc_runtime_GateNull_Fxns__;
typedef const xdc_runtime_GateNull_Fxns__* xdc_runtime_GateNull_Module;
typedef struct xdc_runtime_GateNull_Params xdc_runtime_GateNull_Params;
typedef struct xdc_runtime_GateNull_Object xdc_runtime_GateNull_Object;
typedef struct xdc_runtime_GateNull_Struct xdc_runtime_GateNull_Struct;
typedef xdc_runtime_GateNull_Object* xdc_runtime_GateNull_Handle;
typedef struct xdc_runtime_GateNull_Object__ xdc_runtime_GateNull_Instance_State;
typedef xdc_runtime_GateNull_Object* xdc_runtime_GateNull_Instance;

/*
 * ======== module xdc.runtime.Log ========
 */

typedef struct xdc_runtime_Log_EventRec xdc_runtime_Log_EventRec;

/*
 * ======== interface xdc.runtime.ILogger ========
 */

typedef struct xdc_runtime_ILogger_Fxns__ xdc_runtime_ILogger_Fxns__;
typedef const xdc_runtime_ILogger_Fxns__* xdc_runtime_ILogger_Module;
typedef struct xdc_runtime_ILogger_Params xdc_runtime_ILogger_Params;
typedef struct xdc_runtime_ILogger___Object { xdc_runtime_ILogger_Fxns__* __fxns; xdc_Bits32 __label; } *xdc_runtime_ILogger_Handle;

/*
 * ======== interface xdc.runtime.IFilterLogger ========
 */

typedef struct xdc_runtime_IFilterLogger_Fxns__ xdc_runtime_IFilterLogger_Fxns__;
typedef const xdc_runtime_IFilterLogger_Fxns__* xdc_runtime_IFilterLogger_Module;
typedef struct xdc_runtime_IFilterLogger_Params xdc_runtime_IFilterLogger_Params;
typedef struct xdc_runtime_IFilterLogger___Object { xdc_runtime_IFilterLogger_Fxns__* __fxns; xdc_Bits32 __label; } *xdc_runtime_IFilterLogger_Handle;

/*
 * ======== module xdc.runtime.LoggerBuf ========
 */

typedef struct xdc_runtime_LoggerBuf_Entry xdc_runtime_LoggerBuf_Entry;
typedef struct xdc_runtime_LoggerBuf_Module_State xdc_runtime_LoggerBuf_Module_State;
typedef struct xdc_runtime_LoggerBuf_Fxns__ xdc_runtime_LoggerBuf_Fxns__;
typedef const xdc_runtime_LoggerBuf_Fxns__* xdc_runtime_LoggerBuf_Module;
typedef struct xdc_runtime_LoggerBuf_Params xdc_runtime_LoggerBuf_Params;
typedef struct xdc_runtime_LoggerBuf_Object xdc_runtime_LoggerBuf_Object;
typedef struct xdc_runtime_LoggerBuf_Struct xdc_runtime_LoggerBuf_Struct;
typedef xdc_runtime_LoggerBuf_Object* xdc_runtime_LoggerBuf_Handle;
typedef struct xdc_runtime_LoggerBuf_Object__ xdc_runtime_LoggerBuf_Instance_State;
typedef xdc_runtime_LoggerBuf_Object* xdc_runtime_LoggerBuf_Instance;

/*
 * ======== module xdc.runtime.LoggerCallback ========
 */

typedef struct xdc_runtime_LoggerCallback_Fxns__ xdc_runtime_LoggerCallback_Fxns__;
typedef const xdc_runtime_LoggerCallback_Fxns__* xdc_runtime_LoggerCallback_Module;
typedef struct xdc_runtime_LoggerCallback_Params xdc_runtime_LoggerCallback_Params;
typedef struct xdc_runtime_LoggerCallback_Object xdc_runtime_LoggerCallback_Object;
typedef struct xdc_runtime_LoggerCallback_Struct xdc_runtime_LoggerCallback_Struct;
typedef xdc_runtime_LoggerCallback_Object* xdc_runtime_LoggerCallback_Handle;
typedef struct xdc_runtime_LoggerCallback_Object__ xdc_runtime_LoggerCallback_Instance_State;
typedef xdc_runtime_LoggerCallback_Object* xdc_runtime_LoggerCallback_Instance;

/*
 * ======== module xdc.runtime.LoggerSys ========
 */

typedef struct xdc_runtime_LoggerSys_Fxns__ xdc_runtime_LoggerSys_Fxns__;
typedef const xdc_runtime_LoggerSys_Fxns__* xdc_runtime_LoggerSys_Module;
typedef struct xdc_runtime_LoggerSys_Params xdc_runtime_LoggerSys_Params;
typedef struct xdc_runtime_LoggerSys_Object xdc_runtime_LoggerSys_Object;
typedef struct xdc_runtime_LoggerSys_Struct xdc_runtime_LoggerSys_Struct;
typedef xdc_runtime_LoggerSys_Object* xdc_runtime_LoggerSys_Handle;
typedef struct xdc_runtime_LoggerSys_Object__ xdc_runtime_LoggerSys_Instance_State;
typedef xdc_runtime_LoggerSys_Object* xdc_runtime_LoggerSys_Instance;

/*
 * ======== module xdc.runtime.Main ========
 */


/*
 * ======== module xdc.runtime.Memory ========
 */

typedef struct xdc_runtime_Memory_Stats xdc_runtime_Memory_Stats;
typedef struct xdc_runtime_Memory_Module_State xdc_runtime_Memory_Module_State;

/*
 * ======== interface xdc.runtime.IHeap ========
 */

typedef struct xdc_runtime_IHeap_Fxns__ xdc_runtime_IHeap_Fxns__;
typedef const xdc_runtime_IHeap_Fxns__* xdc_runtime_IHeap_Module;
typedef struct xdc_runtime_IHeap_Params xdc_runtime_IHeap_Params;
typedef struct xdc_runtime_IHeap___Object { xdc_runtime_IHeap_Fxns__* __fxns; xdc_Bits32 __label; } *xdc_runtime_IHeap_Handle;

/*
 * ======== module xdc.runtime.HeapMin ========
 */

typedef struct xdc_runtime_HeapMin_Fxns__ xdc_runtime_HeapMin_Fxns__;
typedef const xdc_runtime_HeapMin_Fxns__* xdc_runtime_HeapMin_Module;
typedef struct xdc_runtime_HeapMin_Params xdc_runtime_HeapMin_Params;
typedef struct xdc_runtime_HeapMin_Object xdc_runtime_HeapMin_Object;
typedef struct xdc_runtime_HeapMin_Struct xdc_runtime_HeapMin_Struct;
typedef xdc_runtime_HeapMin_Object* xdc_runtime_HeapMin_Handle;
typedef struct xdc_runtime_HeapMin_Object__ xdc_runtime_HeapMin_Instance_State;
typedef xdc_runtime_HeapMin_Object* xdc_runtime_HeapMin_Instance;

/*
 * ======== module xdc.runtime.HeapStd ========
 */

typedef struct xdc_runtime_HeapStd_Module_State xdc_runtime_HeapStd_Module_State;
typedef struct xdc_runtime_HeapStd_Fxns__ xdc_runtime_HeapStd_Fxns__;
typedef const xdc_runtime_HeapStd_Fxns__* xdc_runtime_HeapStd_Module;
typedef struct xdc_runtime_HeapStd_Params xdc_runtime_HeapStd_Params;
typedef struct xdc_runtime_HeapStd_Object xdc_runtime_HeapStd_Object;
typedef struct xdc_runtime_HeapStd_Struct xdc_runtime_HeapStd_Struct;
typedef xdc_runtime_HeapStd_Object* xdc_runtime_HeapStd_Handle;
typedef struct xdc_runtime_HeapStd_Object__ xdc_runtime_HeapStd_Instance_State;
typedef xdc_runtime_HeapStd_Object* xdc_runtime_HeapStd_Instance;

/*
 * ======== module xdc.runtime.Registry ========
 */

typedef struct xdc_runtime_Registry_Module_State xdc_runtime_Registry_Module_State;

/*
 * ======== module xdc.runtime.Rta ========
 */

typedef struct xdc_runtime_Rta_CommandPacket xdc_runtime_Rta_CommandPacket;
typedef struct xdc_runtime_Rta_ResponsePacket xdc_runtime_Rta_ResponsePacket;

/*
 * ======== module xdc.runtime.Startup ========
 */

typedef struct xdc_runtime_Startup_IdMap xdc_runtime_Startup_IdMap;
typedef struct xdc_runtime_Startup_Module_State xdc_runtime_Startup_Module_State;

/*
 * ======== module xdc.runtime.System ========
 */

typedef struct xdc_runtime_System_ParseData xdc_runtime_System_ParseData;
typedef struct xdc_runtime_System_Module_State xdc_runtime_System_Module_State;

/*
 * ======== interface xdc.runtime.ISystemSupport ========
 */

typedef struct xdc_runtime_ISystemSupport_Fxns__ xdc_runtime_ISystemSupport_Fxns__;
typedef const xdc_runtime_ISystemSupport_Fxns__* xdc_runtime_ISystemSupport_Module;

/*
 * ======== module xdc.runtime.SysCallback ========
 */

typedef struct xdc_runtime_SysCallback_Fxns__ xdc_runtime_SysCallback_Fxns__;
typedef const xdc_runtime_SysCallback_Fxns__* xdc_runtime_SysCallback_Module;

/*
 * ======== module xdc.runtime.SysMin ========
 */

typedef struct xdc_runtime_SysMin_Module_State xdc_runtime_SysMin_Module_State;
typedef struct xdc_runtime_SysMin_Fxns__ xdc_runtime_SysMin_Fxns__;
typedef const xdc_runtime_SysMin_Fxns__* xdc_runtime_SysMin_Module;

/*
 * ======== module xdc.runtime.SysStd ========
 */

typedef struct xdc_runtime_SysStd_Fxns__ xdc_runtime_SysStd_Fxns__;
typedef const xdc_runtime_SysStd_Fxns__* xdc_runtime_SysStd_Module;

/*
 * ======== module xdc.runtime.Text ========
 */

typedef struct xdc_runtime_Text_Node xdc_runtime_Text_Node;
typedef struct xdc_runtime_Text_MatchVisState xdc_runtime_Text_MatchVisState;
typedef struct xdc_runtime_Text_PrintVisState xdc_runtime_Text_PrintVisState;
typedef struct xdc_runtime_Text_Module_State xdc_runtime_Text_Module_State;

/*
 * ======== interface xdc.runtime.ITimestampClient ========
 */

typedef struct xdc_runtime_ITimestampClient_Fxns__ xdc_runtime_ITimestampClient_Fxns__;
typedef const xdc_runtime_ITimestampClient_Fxns__* xdc_runtime_ITimestampClient_Module;

/*
 * ======== module xdc.runtime.Timestamp ========
 */

typedef struct xdc_runtime_Timestamp_Fxns__ xdc_runtime_Timestamp_Fxns__;
typedef const xdc_runtime_Timestamp_Fxns__* xdc_runtime_Timestamp_Module;

/*
 * ======== interface xdc.runtime.ITimestampProvider ========
 */

typedef struct xdc_runtime_ITimestampProvider_Fxns__ xdc_runtime_ITimestampProvider_Fxns__;
typedef const xdc_runtime_ITimestampProvider_Fxns__* xdc_runtime_ITimestampProvider_Module;

/*
 * ======== module xdc.runtime.TimestampNull ========
 */

typedef struct xdc_runtime_TimestampNull_Fxns__ xdc_runtime_TimestampNull_Fxns__;
typedef const xdc_runtime_TimestampNull_Fxns__* xdc_runtime_TimestampNull_Module;

/*
 * ======== module xdc.runtime.TimestampStd ========
 */

typedef struct xdc_runtime_TimestampStd_Fxns__ xdc_runtime_TimestampStd_Fxns__;
typedef const xdc_runtime_TimestampStd_Fxns__* xdc_runtime_TimestampStd_Module;

/*
 * ======== module xdc.runtime.Types ========
 */

typedef struct xdc_runtime_Types_CordAddr__ xdc_runtime_Types_CordAddr__;
typedef struct xdc_runtime_Types_GateRef__ xdc_runtime_Types_GateRef__;
typedef struct xdc_runtime_Types_Label xdc_runtime_Types_Label;
typedef struct xdc_runtime_Types_Site xdc_runtime_Types_Site;
typedef struct xdc_runtime_Types_Timestamp64 xdc_runtime_Types_Timestamp64;
typedef struct xdc_runtime_Types_FreqHz xdc_runtime_Types_FreqHz;
typedef struct xdc_runtime_Types_RegDesc xdc_runtime_Types_RegDesc;
typedef struct xdc_runtime_Types_Vec xdc_runtime_Types_Vec;
typedef struct xdc_runtime_Types_Link xdc_runtime_Types_Link;
typedef struct xdc_runtime_Types_InstHdr xdc_runtime_Types_InstHdr;
typedef struct xdc_runtime_Types_PrmsHdr xdc_runtime_Types_PrmsHdr;
typedef struct xdc_runtime_Types_Base xdc_runtime_Types_Base;
typedef struct xdc_runtime_Types_SysFxns xdc_runtime_Types_SysFxns;
typedef struct xdc_runtime_Types_SysFxns2 xdc_runtime_Types_SysFxns2;

/*
 * ======== interface xdc.runtime.IInstance ========
 */

typedef struct xdc_runtime_IInstance_Fxns__ xdc_runtime_IInstance_Fxns__;
typedef const xdc_runtime_IInstance_Fxns__* xdc_runtime_IInstance_Module;
typedef struct xdc_runtime_IInstance_Params xdc_runtime_IInstance_Params;
typedef struct xdc_runtime_IInstance___Object { xdc_runtime_IInstance_Fxns__* __fxns; xdc_Bits32 __label; } *xdc_runtime_IInstance_Handle;

/*
 * ======== module xdc.runtime.LoggerBuf_TimestampProxy ========
 */

typedef struct xdc_runtime_LoggerBuf_TimestampProxy_Fxns__ xdc_runtime_LoggerBuf_TimestampProxy_Fxns__;
typedef const xdc_runtime_LoggerBuf_TimestampProxy_Fxns__* xdc_runtime_LoggerBuf_TimestampProxy_Module;

/*
 * ======== module xdc.runtime.LoggerBuf_Module_GateProxy ========
 */

typedef struct xdc_runtime_LoggerBuf_Module_GateProxy_Fxns__ xdc_runtime_LoggerBuf_Module_GateProxy_Fxns__;
typedef const xdc_runtime_LoggerBuf_Module_GateProxy_Fxns__* xdc_runtime_LoggerBuf_Module_GateProxy_Module;
typedef struct xdc_runtime_LoggerBuf_Module_GateProxy_Params xdc_runtime_LoggerBuf_Module_GateProxy_Params;
typedef struct xdc_runtime_IGateProvider___Object *xdc_runtime_LoggerBuf_Module_GateProxy_Handle;

/*
 * ======== module xdc.runtime.LoggerSys_TimestampProxy ========
 */

typedef struct xdc_runtime_LoggerSys_TimestampProxy_Fxns__ xdc_runtime_LoggerSys_TimestampProxy_Fxns__;
typedef const xdc_runtime_LoggerSys_TimestampProxy_Fxns__* xdc_runtime_LoggerSys_TimestampProxy_Module;

/*
 * ======== module xdc.runtime.Main_Module_GateProxy ========
 */

typedef struct xdc_runtime_Main_Module_GateProxy_Fxns__ xdc_runtime_Main_Module_GateProxy_Fxns__;
typedef const xdc_runtime_Main_Module_GateProxy_Fxns__* xdc_runtime_Main_Module_GateProxy_Module;
typedef struct xdc_runtime_Main_Module_GateProxy_Params xdc_runtime_Main_Module_GateProxy_Params;
typedef struct xdc_runtime_IGateProvider___Object *xdc_runtime_Main_Module_GateProxy_Handle;

/*
 * ======== module xdc.runtime.Memory_HeapProxy ========
 */

typedef struct xdc_runtime_Memory_HeapProxy_Fxns__ xdc_runtime_Memory_HeapProxy_Fxns__;
typedef const xdc_runtime_Memory_HeapProxy_Fxns__* xdc_runtime_Memory_HeapProxy_Module;
typedef struct xdc_runtime_Memory_HeapProxy_Params xdc_runtime_Memory_HeapProxy_Params;
typedef struct xdc_runtime_IHeap___Object *xdc_runtime_Memory_HeapProxy_Handle;

/*
 * ======== module xdc.runtime.System_SupportProxy ========
 */

typedef struct xdc_runtime_System_SupportProxy_Fxns__ xdc_runtime_System_SupportProxy_Fxns__;
typedef const xdc_runtime_System_SupportProxy_Fxns__* xdc_runtime_System_SupportProxy_Module;

/*
 * ======== module xdc.runtime.System_Module_GateProxy ========
 */

typedef struct xdc_runtime_System_Module_GateProxy_Fxns__ xdc_runtime_System_Module_GateProxy_Fxns__;
typedef const xdc_runtime_System_Module_GateProxy_Fxns__* xdc_runtime_System_Module_GateProxy_Module;
typedef struct xdc_runtime_System_Module_GateProxy_Params xdc_runtime_System_Module_GateProxy_Params;
typedef struct xdc_runtime_IGateProvider___Object *xdc_runtime_System_Module_GateProxy_Handle;

/*
 * ======== module xdc.runtime.Timestamp_SupportProxy ========
 */

typedef struct xdc_runtime_Timestamp_SupportProxy_Fxns__ xdc_runtime_Timestamp_SupportProxy_Fxns__;
typedef const xdc_runtime_Timestamp_SupportProxy_Fxns__* xdc_runtime_Timestamp_SupportProxy_Module;


# 55 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* ModuleId */
typedef xdc_Bits16 xdc_runtime_Types_ModuleId;

/* DiagsMask */
typedef xdc_Bits16 xdc_runtime_Types_DiagsMask;

/* Event */
typedef xdc_Bits32 xdc_runtime_Types_Event;

/* EventId */
typedef xdc_runtime_Types_Event xdc_runtime_Types_EventId;

/* CordAddr__ */
struct xdc_runtime_Types_CordAddr__;

/* CordAddr */
typedef xdc_runtime_Types_CordAddr__ *xdc_runtime_Types_CordAddr;

/* GateRef__ */
struct xdc_runtime_Types_GateRef__;

/* GateRef */
typedef xdc_runtime_Types_GateRef__ *xdc_runtime_Types_GateRef;

/* RopeId */
typedef xdc_Bits16 xdc_runtime_Types_RopeId;

/* CreatePolicy */
enum xdc_runtime_Types_CreatePolicy {
    xdc_runtime_Types_STATIC_POLICY,
    xdc_runtime_Types_CREATE_POLICY,
    xdc_runtime_Types_DELETE_POLICY
};
typedef enum xdc_runtime_Types_CreatePolicy xdc_runtime_Types_CreatePolicy;

/* OutputPolicy */
enum xdc_runtime_Types_OutputPolicy {
    xdc_runtime_Types_COMMON_FILE,
    xdc_runtime_Types_SEPARATE_FILE,
    xdc_runtime_Types_NO_FILE
};
typedef enum xdc_runtime_Types_OutputPolicy xdc_runtime_Types_OutputPolicy;

/* Label */
struct xdc_runtime_Types_Label {
    xdc_Ptr handle;
    xdc_runtime_Types_ModuleId modId;
    xdc_String iname;
    xdc_Bool named;
};

/* Site */
struct xdc_runtime_Types_Site {
    xdc_runtime_Types_ModuleId mod;
    xdc_CString file;
    xdc_Int line;
};

/* Timestamp64 */
struct xdc_runtime_Types_Timestamp64 {
    xdc_Bits32 hi;
    xdc_Bits32 lo;
};

/* FreqHz */
struct xdc_runtime_Types_FreqHz {
    xdc_Bits32 hi;
    xdc_Bits32 lo;
};

/* RegDesc */
struct xdc_runtime_Types_RegDesc {
    xdc_runtime_Types_RegDesc *next;
    xdc_CString modName;
    xdc_runtime_Types_ModuleId id;
    xdc_runtime_Types_DiagsMask mask;
};


/*
 * ======== INTERNAL DEFINITIONS ========
 */

/* LogEvent */
typedef xdc_Bits32 xdc_runtime_Types_LogEvent;

/* LoggerFxn0 */
typedef void (*xdc_runtime_Types_LoggerFxn0)(xdc_Ptr, xdc_runtime_Types_LogEvent, xdc_runtime_Types_ModuleId);

/* LoggerFxn1 */
typedef void (*xdc_runtime_Types_LoggerFxn1)(xdc_Ptr, xdc_runtime_Types_LogEvent, xdc_runtime_Types_ModuleId, xdc_IArg);

/* LoggerFxn2 */
typedef void (*xdc_runtime_Types_LoggerFxn2)(xdc_Ptr, xdc_runtime_Types_LogEvent, xdc_runtime_Types_ModuleId, xdc_IArg, xdc_IArg);

/* LoggerFxn4 */
typedef void (*xdc_runtime_Types_LoggerFxn4)(xdc_Ptr, xdc_runtime_Types_LogEvent, xdc_runtime_Types_ModuleId, xdc_IArg, xdc_IArg, xdc_IArg, xdc_IArg);

/* LoggerFxn8 */
typedef void (*xdc_runtime_Types_LoggerFxn8)(xdc_Ptr, xdc_runtime_Types_LogEvent, xdc_runtime_Types_ModuleId, xdc_IArg, xdc_IArg, xdc_IArg, xdc_IArg, xdc_IArg, xdc_IArg, xdc_IArg, xdc_IArg);

/* Vec */
struct xdc_runtime_Types_Vec {
    xdc_Int len;
    xdc_Ptr arr;
};

/* Link */
struct xdc_runtime_Types_Link {
    xdc_runtime_Types_Link *next;
    xdc_runtime_Types_Link *prev;
};

/* InstHdr */
struct xdc_runtime_Types_InstHdr {
    xdc_runtime_Types_Link link;
};

/* PrmsHdr */
struct xdc_runtime_Types_PrmsHdr {
    xdc_SizeT size;
    xdc_Ptr self;
    xdc_Ptr modFxns;
    xdc_Ptr instPrms;
};

/* Base */
struct xdc_runtime_Types_Base {
    xdc_runtime_Types_Base *base;
};

/* SysFxns */
struct xdc_runtime_Types_SysFxns {
    xdc_Ptr (*__create)(xdc_Ptr, xdc_SizeT, xdc_Ptr, const xdc_Ptr, xdc_SizeT, xdc_runtime_Error_Block*);
    void (*__delete)(xdc_Ptr);
    xdc_runtime_Types_Label *(*__label)(xdc_Ptr, xdc_runtime_Types_Label*);
    xdc_runtime_Types_ModuleId __mid;
};

/* SysFxns2 */
struct xdc_runtime_Types_SysFxns2 {
    xdc_Ptr (*__create)(xdc_Ptr, xdc_SizeT, xdc_Ptr, const xdc_UChar*, xdc_SizeT, xdc_runtime_Error_Block*);
    void (*__delete)(xdc_Ptr);
    xdc_runtime_Types_Label *(*__label)(xdc_Ptr, xdc_runtime_Types_Label*);
    xdc_runtime_Types_ModuleId __mid;
};


/*
 * ======== MODULE-WIDE CONFIGS ========
 */

/* Module__diagsEnabled */
typedef xdc_Bits32 CT__xdc_runtime_Types_Module__diagsEnabled;
extern "C"  const CT__xdc_runtime_Types_Module__diagsEnabled xdc_runtime_Types_Module__diagsEnabled__C;

/* Module__diagsIncluded */
typedef xdc_Bits32 CT__xdc_runtime_Types_Module__diagsIncluded;
extern "C"  const CT__xdc_runtime_Types_Module__diagsIncluded xdc_runtime_Types_Module__diagsIncluded__C;

/* Module__diagsMask */
typedef xdc_Bits16 *CT__xdc_runtime_Types_Module__diagsMask;
extern "C"  const CT__xdc_runtime_Types_Module__diagsMask xdc_runtime_Types_Module__diagsMask__C;

/* Module__gateObj */
typedef xdc_Ptr CT__xdc_runtime_Types_Module__gateObj;
extern "C"  const CT__xdc_runtime_Types_Module__gateObj xdc_runtime_Types_Module__gateObj__C;

/* Module__gatePrms */
typedef xdc_Ptr CT__xdc_runtime_Types_Module__gatePrms;
extern "C"  const CT__xdc_runtime_Types_Module__gatePrms xdc_runtime_Types_Module__gatePrms__C;

/* Module__id */
typedef xdc_runtime_Types_ModuleId CT__xdc_runtime_Types_Module__id;
extern "C"  const CT__xdc_runtime_Types_Module__id xdc_runtime_Types_Module__id__C;

/* Module__loggerDefined */
typedef xdc_Bool CT__xdc_runtime_Types_Module__loggerDefined;
extern "C"  const CT__xdc_runtime_Types_Module__loggerDefined xdc_runtime_Types_Module__loggerDefined__C;

/* Module__loggerObj */
typedef xdc_Ptr CT__xdc_runtime_Types_Module__loggerObj;
extern "C"  const CT__xdc_runtime_Types_Module__loggerObj xdc_runtime_Types_Module__loggerObj__C;

/* Module__loggerFxn0 */
typedef xdc_runtime_Types_LoggerFxn0 CT__xdc_runtime_Types_Module__loggerFxn0;
extern "C"  const CT__xdc_runtime_Types_Module__loggerFxn0 xdc_runtime_Types_Module__loggerFxn0__C;

/* Module__loggerFxn1 */
typedef xdc_runtime_Types_LoggerFxn1 CT__xdc_runtime_Types_Module__loggerFxn1;
extern "C"  const CT__xdc_runtime_Types_Module__loggerFxn1 xdc_runtime_Types_Module__loggerFxn1__C;

/* Module__loggerFxn2 */
typedef xdc_runtime_Types_LoggerFxn2 CT__xdc_runtime_Types_Module__loggerFxn2;
extern "C"  const CT__xdc_runtime_Types_Module__loggerFxn2 xdc_runtime_Types_Module__loggerFxn2__C;

/* Module__loggerFxn4 */
typedef xdc_runtime_Types_LoggerFxn4 CT__xdc_runtime_Types_Module__loggerFxn4;
extern "C"  const CT__xdc_runtime_Types_Module__loggerFxn4 xdc_runtime_Types_Module__loggerFxn4__C;

/* Module__loggerFxn8 */
typedef xdc_runtime_Types_LoggerFxn8 CT__xdc_runtime_Types_Module__loggerFxn8;
extern "C"  const CT__xdc_runtime_Types_Module__loggerFxn8 xdc_runtime_Types_Module__loggerFxn8__C;

/* Module__startupDoneFxn */
typedef xdc_Bool (*CT__xdc_runtime_Types_Module__startupDoneFxn)(void);
extern "C"  const CT__xdc_runtime_Types_Module__startupDoneFxn xdc_runtime_Types_Module__startupDoneFxn__C;

/* Object__count */
typedef xdc_Int CT__xdc_runtime_Types_Object__count;
extern "C"  const CT__xdc_runtime_Types_Object__count xdc_runtime_Types_Object__count__C;

/* Object__heap */
typedef xdc_runtime_IHeap_Handle CT__xdc_runtime_Types_Object__heap;
extern "C"  const CT__xdc_runtime_Types_Object__heap xdc_runtime_Types_Object__heap__C;

/* Object__sizeof */
typedef xdc_SizeT CT__xdc_runtime_Types_Object__sizeof;
extern "C"  const CT__xdc_runtime_Types_Object__sizeof xdc_runtime_Types_Object__sizeof__C;

/* Object__table */
typedef xdc_Ptr CT__xdc_runtime_Types_Object__table;
extern "C"  const CT__xdc_runtime_Types_Object__table xdc_runtime_Types_Object__table__C;


/*
 * ======== FUNCTION DECLARATIONS ========
 */

/* Module_startup */


/* Module__startupDone__S */

extern "C" xdc_Bool xdc_runtime_Types_Module__startupDone__S( void );


/*
 * ======== SYSTEM FUNCTIONS ========
 */

/* Module_startupDone */


/* Object_heap */


/* Module_heap */


/* Module_id */
static inline CT__xdc_runtime_Types_Module__id xdc_runtime_Types_Module_id( void ) 
{
    return xdc_runtime_Types_Module__id__C;
}

/* Module_hasMask */
static inline xdc_Bool xdc_runtime_Types_Module_hasMask( void ) 
{
    return xdc_runtime_Types_Module__diagsMask__C != 0;
}

/* Module_getMask */
static inline xdc_Bits16 xdc_runtime_Types_Module_getMask( void ) 
{
    return xdc_runtime_Types_Module__diagsMask__C != 0 ? *xdc_runtime_Types_Module__diagsMask__C : 0;
}

/* Module_setMask */
static inline void xdc_runtime_Types_Module_setMask( xdc_Bits16 mask ) 
{
    if (xdc_runtime_Types_Module__diagsMask__C != 0) *xdc_runtime_Types_Module__diagsMask__C = mask;
}


/*
 * ======== EPILOGUE ========
 */

# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types__epilogue.h"
/* 
 *  Copyright (c) 2008 Texas Instruments. All rights reserved. 
 *  This program and the accompanying materials are made available under the 
 *  terms of the Eclipse Public License v1.0 and Eclipse Distribution License
 *  v. 1.0 which accompanies this distribution. The Eclipse Public License is
 *  available at http://www.eclipse.org/legal/epl-v10.html and the Eclipse
 *  Distribution License is available at 
 *  http://www.eclipse.org/org/documents/edl-v10.php.
 *
 *  Contributors:
 *      Texas Instruments - initial implementation
 * */
/*
 *  ======== Types__epilogue.h ========
 *  Hand crafted macros for Types.xdc
 */

/*
 *  ======== xdc_runtime_Types_getEventId ========
 */



/*
 *  ======== xdc_runtime_Types_makeEvent ========
 */



/*
 *  ======== xdc_runtime_Types_getModuleId ========
 */

/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 341 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"








/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 54 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/System.h"


# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 52 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"


# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 55 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IHeap.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 53 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IHeap.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 53 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"



/*
 * ======== AUXILIARY DEFINITIONS ========
 */


/*
 * ======== PER-INSTANCE TYPES ========
 */

/* Params */
struct xdc_runtime_IInstance_Params {
    size_t __size;
    xdc_String name;
};


/*
 * ======== VIRTUAL FUNCTIONS ========
 */

/* Fxns__ */
struct xdc_runtime_IInstance_Fxns__ {
    xdc_runtime_Types_Base* __base;
    const xdc_runtime_Types_SysFxns2 *__sysp;
    xdc_runtime_Types_SysFxns2 __sfxns;
};

/* Interface__BASE__C */
extern "C" const xdc_runtime_Types_Base xdc_runtime_IInstance_Interface__BASE__C;


/*
 * ======== FUNCTION STUBS ========
 */

/* create */

extern "C" xdc_runtime_IInstance_Handle xdc_runtime_IInstance_create(xdc_runtime_IInstance_Module, const xdc_runtime_IInstance_Params *, xdc_runtime_Error_Block *__eb);

/* delete */

extern "C" void xdc_runtime_IInstance_delete(xdc_runtime_IInstance_Handle *);

/* Handle_to_Module */
static inline xdc_runtime_IInstance_Module xdc_runtime_IInstance_Handle_to_Module( xdc_runtime_IInstance_Handle inst )
{
    return inst->__fxns;
}

/* Handle_label */
static inline xdc_runtime_Types_Label *xdc_runtime_IInstance_Handle_label( xdc_runtime_IInstance_Handle inst, xdc_runtime_Types_Label *lab )
{
    return inst->__fxns->__sysp->__label(inst, lab);
}

/* Module_id */
static inline xdc_runtime_Types_ModuleId xdc_runtime_IInstance_Module_id( xdc_runtime_IInstance_Module mod )
{
    return mod->__sysp->__mid;
}


/*
 * ======== FUNCTION SELECTORS ========
 */


/*
 * ======== EPILOGUE ========
 */








/*
 * ======== PREFIX ALIASES ========
 */

# 155 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 54 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IHeap.h"


# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 104 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 121 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 57 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IHeap.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 54 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error__prologue.h"
/* 
 *  Copyright (c) 2008 Texas Instruments. All rights reserved. 
 *  This program and the accompanying materials are made available under the 
 *  terms of the Eclipse Public License v1.0 and Eclipse Distribution License
 *  v. 1.0 which accompanies this distribution. The Eclipse Public License is
 *  available at http://www.eclipse.org/legal/epl-v10.html and the Eclipse
 *  Distribution License is available at 
 *  http://www.eclipse.org/org/documents/edl-v10.php.
 *
 *  Contributors:
 *      Texas Instruments - initial implementation
 * */
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Main.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 54 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Main.h"


# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 104 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 121 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 57 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Main.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IGateProvider.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 53 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IGateProvider.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 132 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 155 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 54 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IGateProvider.h"


# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 104 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 121 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 57 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IGateProvider.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* Q_BLOCKING */


/* Q_PREEMPTING */



/*
 * ======== PER-INSTANCE TYPES ========
 */

/* Params */
struct xdc_runtime_IGateProvider_Params {
    size_t __size;
    const void *__self;
    void *__fxns;
    xdc_runtime_IInstance_Params *instance;
};


/*
 * ======== VIRTUAL FUNCTIONS ========
 */

/* Fxns__ */
struct xdc_runtime_IGateProvider_Fxns__ {
    xdc_runtime_Types_Base* __base;
    const xdc_runtime_Types_SysFxns2 *__sysp;
    xdc_Bool (*query)(xdc_Int);
    xdc_IArg (*enter)(void*);
    void (*leave)(void*, xdc_IArg);
    xdc_runtime_Types_SysFxns2 __sfxns;
};

/* Interface__BASE__C */
extern "C" const xdc_runtime_Types_Base xdc_runtime_IGateProvider_Interface__BASE__C;


/*
 * ======== FUNCTION STUBS ========
 */

/* create */

extern "C" xdc_runtime_IGateProvider_Handle xdc_runtime_IGateProvider_create(xdc_runtime_IGateProvider_Module, const xdc_runtime_IGateProvider_Params *, xdc_runtime_Error_Block *__eb);

/* delete */

extern "C" void xdc_runtime_IGateProvider_delete(xdc_runtime_IGateProvider_Handle *);

/* Handle_to_Module */
static inline xdc_runtime_IGateProvider_Module xdc_runtime_IGateProvider_Handle_to_Module( xdc_runtime_IGateProvider_Handle inst )
{
    return inst->__fxns;
}

/* Handle_label */
static inline xdc_runtime_Types_Label *xdc_runtime_IGateProvider_Handle_label( xdc_runtime_IGateProvider_Handle inst, xdc_runtime_Types_Label *lab )
{
    return inst->__fxns->__sysp->__label(inst, lab);
}

/* Module_id */
static inline xdc_runtime_Types_ModuleId xdc_runtime_IGateProvider_Module_id( xdc_runtime_IGateProvider_Module mod )
{
    return mod->__sysp->__mid;
}

/* query */
static inline xdc_Bool xdc_runtime_IGateProvider_query( xdc_runtime_IGateProvider_Module __inst, xdc_Int qual )
{
    return __inst->query(qual);
}

/* enter */
static inline xdc_IArg xdc_runtime_IGateProvider_enter( xdc_runtime_IGateProvider_Handle __inst )
{
    return __inst->__fxns->enter((void*)__inst);
}

/* leave */
static inline void xdc_runtime_IGateProvider_leave( xdc_runtime_IGateProvider_Handle __inst, xdc_IArg key )
{
    __inst->__fxns->leave((void*)__inst, key);
}


/*
 * ======== FUNCTION SELECTORS ========
 */

/* These functions return function pointers for module and instance functions.
 * The functions accept modules and instances declared as types defined in this
 * interface, but they return functions defined for the actual objects passed
 * as parameters. These functions are not invoked by any generated code or
 * XDCtools internal code.
 */

/* query_{FxnT,fxnP} */
typedef xdc_Bool (*xdc_runtime_IGateProvider_query_FxnT)(xdc_Int);
static inline xdc_runtime_IGateProvider_query_FxnT xdc_runtime_IGateProvider_query_fxnP( xdc_runtime_IGateProvider_Module __inst )
{
    return (xdc_runtime_IGateProvider_query_FxnT)__inst->query;
}

/* enter_{FxnT,fxnP} */
typedef xdc_IArg (*xdc_runtime_IGateProvider_enter_FxnT)(void *);
static inline xdc_runtime_IGateProvider_enter_FxnT xdc_runtime_IGateProvider_enter_fxnP( xdc_runtime_IGateProvider_Handle __inst )
{
    return (xdc_runtime_IGateProvider_enter_FxnT)__inst->__fxns->enter;
}

/* leave_{FxnT,fxnP} */
typedef void (*xdc_runtime_IGateProvider_leave_FxnT)(void *, xdc_IArg);
static inline xdc_runtime_IGateProvider_leave_FxnT xdc_runtime_IGateProvider_leave_fxnP( xdc_runtime_IGateProvider_Handle __inst )
{
    return (xdc_runtime_IGateProvider_leave_FxnT)__inst->__fxns->leave;
}


/*
 * ======== EPILOGUE ========
 */








/*
 * ======== PREFIX ALIASES ========
 */

# 227 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IGateProvider.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 58 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Main.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/package/Main_Module_GateProxy.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     MODULE-WIDE CONFIGS
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION DECLARATIONS
 *     CONVERTORS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 55 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/package/Main_Module_GateProxy.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 132 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 155 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 56 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/package/Main_Module_GateProxy.h"


# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IGateProvider.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 192 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IGateProvider.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 227 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IGateProvider.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 59 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/package/Main_Module_GateProxy.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* Q_BLOCKING */


/* Q_PREEMPTING */



/*
 * ======== MODULE-WIDE CONFIGS ========
 */

/* Module__diagsEnabled */
typedef xdc_Bits32 CT__xdc_runtime_Main_Module_GateProxy_Module__diagsEnabled;
extern "C"  const CT__xdc_runtime_Main_Module_GateProxy_Module__diagsEnabled xdc_runtime_Main_Module_GateProxy_Module__diagsEnabled__C;

/* Module__diagsIncluded */
typedef xdc_Bits32 CT__xdc_runtime_Main_Module_GateProxy_Module__diagsIncluded;
extern "C"  const CT__xdc_runtime_Main_Module_GateProxy_Module__diagsIncluded xdc_runtime_Main_Module_GateProxy_Module__diagsIncluded__C;

/* Module__diagsMask */
typedef xdc_Bits16 *CT__xdc_runtime_Main_Module_GateProxy_Module__diagsMask;
extern "C"  const CT__xdc_runtime_Main_Module_GateProxy_Module__diagsMask xdc_runtime_Main_Module_GateProxy_Module__diagsMask__C;

/* Module__gateObj */
typedef xdc_Ptr CT__xdc_runtime_Main_Module_GateProxy_Module__gateObj;
extern "C"  const CT__xdc_runtime_Main_Module_GateProxy_Module__gateObj xdc_runtime_Main_Module_GateProxy_Module__gateObj__C;

/* Module__gatePrms */
typedef xdc_Ptr CT__xdc_runtime_Main_Module_GateProxy_Module__gatePrms;
extern "C"  const CT__xdc_runtime_Main_Module_GateProxy_Module__gatePrms xdc_runtime_Main_Module_GateProxy_Module__gatePrms__C;

/* Module__id */
typedef xdc_runtime_Types_ModuleId CT__xdc_runtime_Main_Module_GateProxy_Module__id;
extern "C"  const CT__xdc_runtime_Main_Module_GateProxy_Module__id xdc_runtime_Main_Module_GateProxy_Module__id__C;

/* Module__loggerDefined */
typedef xdc_Bool CT__xdc_runtime_Main_Module_GateProxy_Module__loggerDefined;
extern "C"  const CT__xdc_runtime_Main_Module_GateProxy_Module__loggerDefined xdc_runtime_Main_Module_GateProxy_Module__loggerDefined__C;

/* Module__loggerObj */
typedef xdc_Ptr CT__xdc_runtime_Main_Module_GateProxy_Module__loggerObj;
extern "C"  const CT__xdc_runtime_Main_Module_GateProxy_Module__loggerObj xdc_runtime_Main_Module_GateProxy_Module__loggerObj__C;

/* Module__loggerFxn0 */
typedef xdc_runtime_Types_LoggerFxn0 CT__xdc_runtime_Main_Module_GateProxy_Module__loggerFxn0;
extern "C"  const CT__xdc_runtime_Main_Module_GateProxy_Module__loggerFxn0 xdc_runtime_Main_Module_GateProxy_Module__loggerFxn0__C;

/* Module__loggerFxn1 */
typedef xdc_runtime_Types_LoggerFxn1 CT__xdc_runtime_Main_Module_GateProxy_Module__loggerFxn1;
extern "C"  const CT__xdc_runtime_Main_Module_GateProxy_Module__loggerFxn1 xdc_runtime_Main_Module_GateProxy_Module__loggerFxn1__C;

/* Module__loggerFxn2 */
typedef xdc_runtime_Types_LoggerFxn2 CT__xdc_runtime_Main_Module_GateProxy_Module__loggerFxn2;
extern "C"  const CT__xdc_runtime_Main_Module_GateProxy_Module__loggerFxn2 xdc_runtime_Main_Module_GateProxy_Module__loggerFxn2__C;

/* Module__loggerFxn4 */
typedef xdc_runtime_Types_LoggerFxn4 CT__xdc_runtime_Main_Module_GateProxy_Module__loggerFxn4;
extern "C"  const CT__xdc_runtime_Main_Module_GateProxy_Module__loggerFxn4 xdc_runtime_Main_Module_GateProxy_Module__loggerFxn4__C;

/* Module__loggerFxn8 */
typedef xdc_runtime_Types_LoggerFxn8 CT__xdc_runtime_Main_Module_GateProxy_Module__loggerFxn8;
extern "C"  const CT__xdc_runtime_Main_Module_GateProxy_Module__loggerFxn8 xdc_runtime_Main_Module_GateProxy_Module__loggerFxn8__C;

/* Module__startupDoneFxn */
typedef xdc_Bool (*CT__xdc_runtime_Main_Module_GateProxy_Module__startupDoneFxn)(void);
extern "C"  const CT__xdc_runtime_Main_Module_GateProxy_Module__startupDoneFxn xdc_runtime_Main_Module_GateProxy_Module__startupDoneFxn__C;

/* Object__count */
typedef xdc_Int CT__xdc_runtime_Main_Module_GateProxy_Object__count;
extern "C"  const CT__xdc_runtime_Main_Module_GateProxy_Object__count xdc_runtime_Main_Module_GateProxy_Object__count__C;

/* Object__heap */
typedef xdc_runtime_IHeap_Handle CT__xdc_runtime_Main_Module_GateProxy_Object__heap;
extern "C"  const CT__xdc_runtime_Main_Module_GateProxy_Object__heap xdc_runtime_Main_Module_GateProxy_Object__heap__C;

/* Object__sizeof */
typedef xdc_SizeT CT__xdc_runtime_Main_Module_GateProxy_Object__sizeof;
extern "C"  const CT__xdc_runtime_Main_Module_GateProxy_Object__sizeof xdc_runtime_Main_Module_GateProxy_Object__sizeof__C;

/* Object__table */
typedef xdc_Ptr CT__xdc_runtime_Main_Module_GateProxy_Object__table;
extern "C"  const CT__xdc_runtime_Main_Module_GateProxy_Object__table xdc_runtime_Main_Module_GateProxy_Object__table__C;


/*
 * ======== PER-INSTANCE TYPES ========
 */

/* Params */
struct xdc_runtime_Main_Module_GateProxy_Params {
    size_t __size;
    const void *__self;
    void *__fxns;
    xdc_runtime_IInstance_Params *instance;
    xdc_runtime_IInstance_Params __iprms;
};

/* Struct */
struct xdc_runtime_Main_Module_GateProxy_Struct {
    const xdc_runtime_Main_Module_GateProxy_Fxns__ *__fxns;
    xdc_runtime_Types_CordAddr __name;
};


/*
 * ======== VIRTUAL FUNCTIONS ========
 */

/* Fxns__ */
struct xdc_runtime_Main_Module_GateProxy_Fxns__ {
    xdc_runtime_Types_Base* __base;
    const xdc_runtime_Types_SysFxns2 *__sysp;
    xdc_Bool (*query)(xdc_Int);
    xdc_IArg (*enter)(xdc_runtime_Main_Module_GateProxy_Handle);
    void (*leave)(xdc_runtime_Main_Module_GateProxy_Handle, xdc_IArg);
    xdc_runtime_Types_SysFxns2 __sfxns;
};

/* Module__FXNS__C */
extern "C" const xdc_runtime_Main_Module_GateProxy_Fxns__ xdc_runtime_Main_Module_GateProxy_Module__FXNS__C;


/*
 * ======== FUNCTION DECLARATIONS ========
 */

/* Module_startup */


/* Handle__label__S */

extern "C" xdc_runtime_Types_Label *xdc_runtime_Main_Module_GateProxy_Handle__label__S( xdc_Ptr obj, xdc_runtime_Types_Label *lab );

/* Module__startupDone__S */

extern "C" xdc_Bool xdc_runtime_Main_Module_GateProxy_Module__startupDone__S( void );

/* Object__create__S */

extern "C" xdc_Ptr xdc_runtime_Main_Module_GateProxy_Object__create__S( xdc_Ptr __oa, xdc_SizeT __osz, xdc_Ptr __aa, const xdc_UChar *__pa, xdc_SizeT __psz, xdc_runtime_Error_Block *__eb );

/* create */

extern "C" xdc_runtime_Main_Module_GateProxy_Handle xdc_runtime_Main_Module_GateProxy_create( const xdc_runtime_Main_Module_GateProxy_Params *__prms, xdc_runtime_Error_Block *__eb );

/* Object__delete__S */

extern "C" void xdc_runtime_Main_Module_GateProxy_Object__delete__S( xdc_Ptr instp );

/* delete */

extern "C" void xdc_runtime_Main_Module_GateProxy_delete(xdc_runtime_Main_Module_GateProxy_Handle *instp);

/* Object__destruct__S */

extern "C" void xdc_runtime_Main_Module_GateProxy_Object__destruct__S( xdc_Ptr objp );

/* Object__get__S */

extern "C" xdc_Ptr xdc_runtime_Main_Module_GateProxy_Object__get__S( xdc_Ptr oarr, xdc_Int i );

/* Object__first__S */

extern "C" xdc_Ptr xdc_runtime_Main_Module_GateProxy_Object__first__S( void );

/* Object__next__S */

extern "C" xdc_Ptr xdc_runtime_Main_Module_GateProxy_Object__next__S( xdc_Ptr obj );

/* Params__init__S */

extern "C" void xdc_runtime_Main_Module_GateProxy_Params__init__S( xdc_Ptr dst, const void *src, xdc_SizeT psz, xdc_SizeT isz );

/* Proxy__abstract__S */

extern "C" xdc_Bool xdc_runtime_Main_Module_GateProxy_Proxy__abstract__S( void );

/* Proxy__delegate__S */

extern "C" xdc_Ptr xdc_runtime_Main_Module_GateProxy_Proxy__delegate__S( void );

/* query__E */


extern "C" xdc_Bool xdc_runtime_Main_Module_GateProxy_query__E( xdc_Int qual );

/* enter__E */


extern "C" xdc_IArg xdc_runtime_Main_Module_GateProxy_enter__E( xdc_runtime_Main_Module_GateProxy_Handle __inst );

/* leave__E */


extern "C" void xdc_runtime_Main_Module_GateProxy_leave__E( xdc_runtime_Main_Module_GateProxy_Handle __inst, xdc_IArg key );


/*
 * ======== CONVERTORS ========
 */

/* Module_upCast */
static inline xdc_runtime_IGateProvider_Module xdc_runtime_Main_Module_GateProxy_Module_upCast( void )
{
    return (xdc_runtime_IGateProvider_Module)xdc_runtime_Main_Module_GateProxy_Proxy__delegate__S();
}

/* Module_to_xdc_runtime_IGateProvider */


/* Handle_upCast */
static inline xdc_runtime_IGateProvider_Handle xdc_runtime_Main_Module_GateProxy_Handle_upCast( xdc_runtime_Main_Module_GateProxy_Handle i )
{
    return (xdc_runtime_IGateProvider_Handle)i;
}

/* Handle_to_xdc_runtime_IGateProvider */


/* Handle_downCast */
static inline xdc_runtime_Main_Module_GateProxy_Handle xdc_runtime_Main_Module_GateProxy_Handle_downCast( xdc_runtime_IGateProvider_Handle i )
{
    xdc_runtime_IGateProvider_Handle i2 = (xdc_runtime_IGateProvider_Handle)i;
if (xdc_runtime_Main_Module_GateProxy_Proxy__abstract__S()) return (xdc_runtime_Main_Module_GateProxy_Handle)i;
    return (void*)i2->__fxns == (void*)xdc_runtime_Main_Module_GateProxy_Proxy__delegate__S() ? (xdc_runtime_Main_Module_GateProxy_Handle)i : 0;
}

/* Handle_from_xdc_runtime_IGateProvider */



/*
 * ======== SYSTEM FUNCTIONS ========
 */

/* Module_startupDone */


/* Object_heap */


/* Module_heap */


/* Module_id */
static inline CT__xdc_runtime_Main_Module_GateProxy_Module__id xdc_runtime_Main_Module_GateProxy_Module_id( void ) 
{
    return xdc_runtime_Main_Module_GateProxy_Module__id__C;
}

/* Proxy_abstract */


/* Proxy_delegate */


/* Params_init */
static inline void xdc_runtime_Main_Module_GateProxy_Params_init( xdc_runtime_Main_Module_GateProxy_Params *prms ) 
{
    if (prms) {
        xdc_runtime_Main_Module_GateProxy_Params__init__S(prms, 0, sizeof(xdc_runtime_Main_Module_GateProxy_Params), sizeof(xdc_runtime_IInstance_Params));
    }
}

/* Params_copy */
static inline void xdc_runtime_Main_Module_GateProxy_Params_copy(xdc_runtime_Main_Module_GateProxy_Params *dst, const xdc_runtime_Main_Module_GateProxy_Params *src) 
{
    if (dst) {
        xdc_runtime_Main_Module_GateProxy_Params__init__S(dst, (const void *)src, sizeof(xdc_runtime_Main_Module_GateProxy_Params), sizeof(xdc_runtime_IInstance_Params));
    }
}


/*
 * ======== EPILOGUE ========
 */








/*
 * ======== PREFIX ALIASES ========
 */

# 59 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Main.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */


/*
 * ======== INTERNAL DEFINITIONS ========
 */


/*
 * ======== MODULE-WIDE CONFIGS ========
 */

/* Module__diagsEnabled */
typedef xdc_Bits32 CT__xdc_runtime_Main_Module__diagsEnabled;
extern "C"  const CT__xdc_runtime_Main_Module__diagsEnabled xdc_runtime_Main_Module__diagsEnabled__C;

/* Module__diagsIncluded */
typedef xdc_Bits32 CT__xdc_runtime_Main_Module__diagsIncluded;
extern "C"  const CT__xdc_runtime_Main_Module__diagsIncluded xdc_runtime_Main_Module__diagsIncluded__C;

/* Module__diagsMask */
typedef xdc_Bits16 *CT__xdc_runtime_Main_Module__diagsMask;
extern "C"  const CT__xdc_runtime_Main_Module__diagsMask xdc_runtime_Main_Module__diagsMask__C;

/* Module__gateObj */
typedef xdc_Ptr CT__xdc_runtime_Main_Module__gateObj;
extern "C"  const CT__xdc_runtime_Main_Module__gateObj xdc_runtime_Main_Module__gateObj__C;

/* Module__gatePrms */
typedef xdc_Ptr CT__xdc_runtime_Main_Module__gatePrms;
extern "C"  const CT__xdc_runtime_Main_Module__gatePrms xdc_runtime_Main_Module__gatePrms__C;

/* Module__id */
typedef xdc_runtime_Types_ModuleId CT__xdc_runtime_Main_Module__id;
extern "C"  const CT__xdc_runtime_Main_Module__id xdc_runtime_Main_Module__id__C;

/* Module__loggerDefined */
typedef xdc_Bool CT__xdc_runtime_Main_Module__loggerDefined;
extern "C"  const CT__xdc_runtime_Main_Module__loggerDefined xdc_runtime_Main_Module__loggerDefined__C;

/* Module__loggerObj */
typedef xdc_Ptr CT__xdc_runtime_Main_Module__loggerObj;
extern "C"  const CT__xdc_runtime_Main_Module__loggerObj xdc_runtime_Main_Module__loggerObj__C;

/* Module__loggerFxn0 */
typedef xdc_runtime_Types_LoggerFxn0 CT__xdc_runtime_Main_Module__loggerFxn0;
extern "C"  const CT__xdc_runtime_Main_Module__loggerFxn0 xdc_runtime_Main_Module__loggerFxn0__C;

/* Module__loggerFxn1 */
typedef xdc_runtime_Types_LoggerFxn1 CT__xdc_runtime_Main_Module__loggerFxn1;
extern "C"  const CT__xdc_runtime_Main_Module__loggerFxn1 xdc_runtime_Main_Module__loggerFxn1__C;

/* Module__loggerFxn2 */
typedef xdc_runtime_Types_LoggerFxn2 CT__xdc_runtime_Main_Module__loggerFxn2;
extern "C"  const CT__xdc_runtime_Main_Module__loggerFxn2 xdc_runtime_Main_Module__loggerFxn2__C;

/* Module__loggerFxn4 */
typedef xdc_runtime_Types_LoggerFxn4 CT__xdc_runtime_Main_Module__loggerFxn4;
extern "C"  const CT__xdc_runtime_Main_Module__loggerFxn4 xdc_runtime_Main_Module__loggerFxn4__C;

/* Module__loggerFxn8 */
typedef xdc_runtime_Types_LoggerFxn8 CT__xdc_runtime_Main_Module__loggerFxn8;
extern "C"  const CT__xdc_runtime_Main_Module__loggerFxn8 xdc_runtime_Main_Module__loggerFxn8__C;

/* Module__startupDoneFxn */
typedef xdc_Bool (*CT__xdc_runtime_Main_Module__startupDoneFxn)(void);
extern "C"  const CT__xdc_runtime_Main_Module__startupDoneFxn xdc_runtime_Main_Module__startupDoneFxn__C;

/* Object__count */
typedef xdc_Int CT__xdc_runtime_Main_Object__count;
extern "C"  const CT__xdc_runtime_Main_Object__count xdc_runtime_Main_Object__count__C;

/* Object__heap */
typedef xdc_runtime_IHeap_Handle CT__xdc_runtime_Main_Object__heap;
extern "C"  const CT__xdc_runtime_Main_Object__heap xdc_runtime_Main_Object__heap__C;

/* Object__sizeof */
typedef xdc_SizeT CT__xdc_runtime_Main_Object__sizeof;
extern "C"  const CT__xdc_runtime_Main_Object__sizeof xdc_runtime_Main_Object__sizeof__C;

/* Object__table */
typedef xdc_Ptr CT__xdc_runtime_Main_Object__table;
extern "C"  const CT__xdc_runtime_Main_Object__table xdc_runtime_Main_Object__table__C;


/*
 * ======== FUNCTION DECLARATIONS ========
 */

/* Module_startup */


/* Module__startupDone__S */

extern "C" xdc_Bool xdc_runtime_Main_Module__startupDone__S( void );


/*
 * ======== SYSTEM FUNCTIONS ========
 */

/* Module_startupDone */


/* Object_heap */


/* Module_heap */


/* Module_id */
static inline CT__xdc_runtime_Main_Module__id xdc_runtime_Main_Module_id( void ) 
{
    return xdc_runtime_Main_Module__id__C;
}

/* Module_hasMask */
static inline xdc_Bool xdc_runtime_Main_Module_hasMask( void ) 
{
    return xdc_runtime_Main_Module__diagsMask__C != 0;
}

/* Module_getMask */
static inline xdc_Bits16 xdc_runtime_Main_Module_getMask( void ) 
{
    return xdc_runtime_Main_Module__diagsMask__C != 0 ? *xdc_runtime_Main_Module__diagsMask__C : 0;
}

/* Module_setMask */
static inline void xdc_runtime_Main_Module_setMask( xdc_Bits16 mask ) 
{
    if (xdc_runtime_Main_Module__diagsMask__C != 0) *xdc_runtime_Main_Module__diagsMask__C = mask;
}


/*
 * ======== EPILOGUE ========
 */








/*
 * ======== STATE STRUCTURES ========
 */

# 222 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Main.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 248 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Main.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:47; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 14 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error__prologue.h"

/*
 *  ======== xdc_runtime_Error_Id ========
 */
typedef xdc_Bits32 xdc_runtime_Error_Id;


namespace xdc_runtime { namespace Error {
    typedef xdc_runtime_Error_Id Id;
}}



/*
 *  ======== Module__MID ========
 *  This definition allows non-module code to
 *  use the Error module.  This symbol is normally defined in each
 *  module internal header (i.e., package/internal/<mod>.xdc.h).
 *
 *  Only do this if this file is not one that will be included in the Registry.
 *  This check ensures that Registry.h (which similarly defines these Module__*
 *  symbols) can be included in any order relative to other xdc.runtime 
 *  headers.
 */






/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 55 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 104 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 121 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 58 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 59 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* Policy */
enum xdc_runtime_Error_Policy {
    xdc_runtime_Error_TERMINATE,
    xdc_runtime_Error_UNWIND
};
typedef enum xdc_runtime_Error_Policy xdc_runtime_Error_Policy;

/* Id */

/* HookFxn */
typedef void (*xdc_runtime_Error_HookFxn)(xdc_runtime_Error_Block*);

/* NUMARGS */


/* Data */
typedef xdc_IArg __T1_xdc_runtime_Error_Data__arg;
typedef xdc_IArg __ARRAY1_xdc_runtime_Error_Data__arg[2];
typedef __ARRAY1_xdc_runtime_Error_Data__arg __TA_xdc_runtime_Error_Data__arg;
struct xdc_runtime_Error_Data {
    __TA_xdc_runtime_Error_Data__arg arg;
};

/* Block */
typedef xdc_IArg __T1_xdc_runtime_Error_Block__xtra;
typedef xdc_IArg __ARRAY1_xdc_runtime_Error_Block__xtra[4];
typedef __ARRAY1_xdc_runtime_Error_Block__xtra __TA_xdc_runtime_Error_Block__xtra;
struct xdc_runtime_Error_Block {
    xdc_UInt16 unused;
    xdc_runtime_Error_Data data;
    xdc_runtime_Error_Id id;
    xdc_String msg;
    xdc_runtime_Types_Site site;
    __TA_xdc_runtime_Error_Block__xtra xtra;
};

/* PolicyFxn */
typedef void (*xdc_runtime_Error_PolicyFxn)(xdc_runtime_Error_Block*, xdc_runtime_Types_ModuleId, xdc_CString, xdc_Int, xdc_runtime_Error_Id, xdc_IArg, xdc_IArg);


/*
 * ======== INTERNAL DEFINITIONS ========
 */


/*
 * ======== MODULE-WIDE CONFIGS ========
 */

/* Module__diagsEnabled */
typedef xdc_Bits32 CT__xdc_runtime_Error_Module__diagsEnabled;
extern "C"  const CT__xdc_runtime_Error_Module__diagsEnabled xdc_runtime_Error_Module__diagsEnabled__C;

/* Module__diagsIncluded */
typedef xdc_Bits32 CT__xdc_runtime_Error_Module__diagsIncluded;
extern "C"  const CT__xdc_runtime_Error_Module__diagsIncluded xdc_runtime_Error_Module__diagsIncluded__C;

/* Module__diagsMask */
typedef xdc_Bits16 *CT__xdc_runtime_Error_Module__diagsMask;
extern "C"  const CT__xdc_runtime_Error_Module__diagsMask xdc_runtime_Error_Module__diagsMask__C;

/* Module__gateObj */
typedef xdc_Ptr CT__xdc_runtime_Error_Module__gateObj;
extern "C"  const CT__xdc_runtime_Error_Module__gateObj xdc_runtime_Error_Module__gateObj__C;

/* Module__gatePrms */
typedef xdc_Ptr CT__xdc_runtime_Error_Module__gatePrms;
extern "C"  const CT__xdc_runtime_Error_Module__gatePrms xdc_runtime_Error_Module__gatePrms__C;

/* Module__id */
typedef xdc_runtime_Types_ModuleId CT__xdc_runtime_Error_Module__id;
extern "C"  const CT__xdc_runtime_Error_Module__id xdc_runtime_Error_Module__id__C;

/* Module__loggerDefined */
typedef xdc_Bool CT__xdc_runtime_Error_Module__loggerDefined;
extern "C"  const CT__xdc_runtime_Error_Module__loggerDefined xdc_runtime_Error_Module__loggerDefined__C;

/* Module__loggerObj */
typedef xdc_Ptr CT__xdc_runtime_Error_Module__loggerObj;
extern "C"  const CT__xdc_runtime_Error_Module__loggerObj xdc_runtime_Error_Module__loggerObj__C;

/* Module__loggerFxn0 */
typedef xdc_runtime_Types_LoggerFxn0 CT__xdc_runtime_Error_Module__loggerFxn0;
extern "C"  const CT__xdc_runtime_Error_Module__loggerFxn0 xdc_runtime_Error_Module__loggerFxn0__C;

/* Module__loggerFxn1 */
typedef xdc_runtime_Types_LoggerFxn1 CT__xdc_runtime_Error_Module__loggerFxn1;
extern "C"  const CT__xdc_runtime_Error_Module__loggerFxn1 xdc_runtime_Error_Module__loggerFxn1__C;

/* Module__loggerFxn2 */
typedef xdc_runtime_Types_LoggerFxn2 CT__xdc_runtime_Error_Module__loggerFxn2;
extern "C"  const CT__xdc_runtime_Error_Module__loggerFxn2 xdc_runtime_Error_Module__loggerFxn2__C;

/* Module__loggerFxn4 */
typedef xdc_runtime_Types_LoggerFxn4 CT__xdc_runtime_Error_Module__loggerFxn4;
extern "C"  const CT__xdc_runtime_Error_Module__loggerFxn4 xdc_runtime_Error_Module__loggerFxn4__C;

/* Module__loggerFxn8 */
typedef xdc_runtime_Types_LoggerFxn8 CT__xdc_runtime_Error_Module__loggerFxn8;
extern "C"  const CT__xdc_runtime_Error_Module__loggerFxn8 xdc_runtime_Error_Module__loggerFxn8__C;

/* Module__startupDoneFxn */
typedef xdc_Bool (*CT__xdc_runtime_Error_Module__startupDoneFxn)(void);
extern "C"  const CT__xdc_runtime_Error_Module__startupDoneFxn xdc_runtime_Error_Module__startupDoneFxn__C;

/* Object__count */
typedef xdc_Int CT__xdc_runtime_Error_Object__count;
extern "C"  const CT__xdc_runtime_Error_Object__count xdc_runtime_Error_Object__count__C;

/* Object__heap */
typedef xdc_runtime_IHeap_Handle CT__xdc_runtime_Error_Object__heap;
extern "C"  const CT__xdc_runtime_Error_Object__heap xdc_runtime_Error_Object__heap__C;

/* Object__sizeof */
typedef xdc_SizeT CT__xdc_runtime_Error_Object__sizeof;
extern "C"  const CT__xdc_runtime_Error_Object__sizeof xdc_runtime_Error_Object__sizeof__C;

/* Object__table */
typedef xdc_Ptr CT__xdc_runtime_Error_Object__table;
extern "C"  const CT__xdc_runtime_Error_Object__table xdc_runtime_Error_Object__table__C;

/* policyFxn */

typedef xdc_runtime_Error_PolicyFxn CT__xdc_runtime_Error_policyFxn;
extern "C"  const CT__xdc_runtime_Error_policyFxn xdc_runtime_Error_policyFxn__C;

/* E_generic */

typedef xdc_runtime_Error_Id CT__xdc_runtime_Error_E_generic;
extern "C"  const CT__xdc_runtime_Error_E_generic xdc_runtime_Error_E_generic__C;

/* E_memory */

typedef xdc_runtime_Error_Id CT__xdc_runtime_Error_E_memory;
extern "C"  const CT__xdc_runtime_Error_E_memory xdc_runtime_Error_E_memory__C;

/* E_msgCode */

typedef xdc_runtime_Error_Id CT__xdc_runtime_Error_E_msgCode;
extern "C"  const CT__xdc_runtime_Error_E_msgCode xdc_runtime_Error_E_msgCode__C;

/* policy */

typedef xdc_runtime_Error_Policy CT__xdc_runtime_Error_policy;
extern "C"  const CT__xdc_runtime_Error_policy xdc_runtime_Error_policy__C;

/* raiseHook */

typedef xdc_runtime_Error_HookFxn CT__xdc_runtime_Error_raiseHook;
extern "C"  const CT__xdc_runtime_Error_raiseHook xdc_runtime_Error_raiseHook__C;

/* maxDepth */




typedef xdc_UInt16 CT__xdc_runtime_Error_maxDepth;
extern "C"  const CT__xdc_runtime_Error_maxDepth xdc_runtime_Error_maxDepth__C;



/*
 * ======== FUNCTION DECLARATIONS ========
 */

/* Module_startup */


/* Module__startupDone__S */

extern "C" xdc_Bool xdc_runtime_Error_Module__startupDone__S( void );

/* check__E */


extern "C" xdc_Bool xdc_runtime_Error_check__E( xdc_runtime_Error_Block *eb );

/* getData__E */


extern "C" xdc_runtime_Error_Data *xdc_runtime_Error_getData__E( xdc_runtime_Error_Block *eb );

/* getCode__E */


extern "C" xdc_UInt16 xdc_runtime_Error_getCode__E( xdc_runtime_Error_Block *eb );

/* getId__E */


extern "C" xdc_runtime_Error_Id xdc_runtime_Error_getId__E( xdc_runtime_Error_Block *eb );

/* getMsg__E */


extern "C" xdc_String xdc_runtime_Error_getMsg__E( xdc_runtime_Error_Block *eb );

/* getSite__E */


extern "C" xdc_runtime_Types_Site *xdc_runtime_Error_getSite__E( xdc_runtime_Error_Block *eb );

/* init__E */


extern "C" void xdc_runtime_Error_init__E( xdc_runtime_Error_Block *eb );

/* print__E */


extern "C" void xdc_runtime_Error_print__E( xdc_runtime_Error_Block *eb );

/* policyDefault__E */


extern "C" void xdc_runtime_Error_policyDefault__E( xdc_runtime_Error_Block *eb, xdc_runtime_Types_ModuleId mod, xdc_CString file, xdc_Int line, xdc_runtime_Error_Id id, xdc_IArg arg1, xdc_IArg arg2 );

/* policySpin__E */


extern "C" void xdc_runtime_Error_policySpin__E( xdc_runtime_Error_Block *eb, xdc_runtime_Types_ModuleId mod, xdc_CString file, xdc_Int line, xdc_runtime_Error_Id id, xdc_IArg arg1, xdc_IArg arg2 );

/* raiseX__E */


extern "C" void xdc_runtime_Error_raiseX__E( xdc_runtime_Error_Block *eb, xdc_runtime_Types_ModuleId mod, xdc_CString file, xdc_Int line, xdc_runtime_Error_Id id, xdc_IArg arg1, xdc_IArg arg2 );

/* setX__E */


extern "C" void xdc_runtime_Error_setX__E( xdc_runtime_Error_Block *eb, xdc_runtime_Types_ModuleId mod, xdc_CString file, xdc_Int line, xdc_runtime_Error_Id id, xdc_IArg arg1, xdc_IArg arg2 );


/*
 * ======== SYSTEM FUNCTIONS ========
 */

/* Module_startupDone */


/* Object_heap */


/* Module_heap */


/* Module_id */
static inline CT__xdc_runtime_Error_Module__id xdc_runtime_Error_Module_id( void ) 
{
    return xdc_runtime_Error_Module__id__C;
}

/* Module_hasMask */
static inline xdc_Bool xdc_runtime_Error_Module_hasMask( void ) 
{
    return xdc_runtime_Error_Module__diagsMask__C != 0;
}

/* Module_getMask */
static inline xdc_Bits16 xdc_runtime_Error_Module_getMask( void ) 
{
    return xdc_runtime_Error_Module__diagsMask__C != 0 ? *xdc_runtime_Error_Module__diagsMask__C : 0;
}

/* Module_setMask */
static inline void xdc_runtime_Error_Module_setMask( xdc_Bits16 mask ) 
{
    if (xdc_runtime_Error_Module__diagsMask__C != 0) *xdc_runtime_Error_Module__diagsMask__C = mask;
}


/*
 * ======== EPILOGUE ========
 */

# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error__epilogue.h"
/* 
 *  Copyright (c) 2008 Texas Instruments. All rights reserved. 
 *  This program and the accompanying materials are made available under the 
 *  terms of the Eclipse Public License v1.0 and Eclipse Distribution License
 *  v. 1.0 which accompanies this distribution. The Eclipse Public License is
 *  available at http://www.eclipse.org/legal/epl-v10.html and the Eclipse
 *  Distribution License is available at 
 *  http://www.eclipse.org/org/documents/edl-v10.php.
 *
 *  Contributors:
 *      Texas Instruments - initial implementation
 * */
/*
 *  ======== xdc_runtime_Error_raise ========
 *  Call underlying error handler with current module ID, file name, and
 *  line number.
 *
 *  Note use of xdc_FILE__ in lieu of __FILE__; this is done
 *  to prevent accumulation of file name strings in the application.  See
 *  xdc.h for details.
 */




/*
 *  ======== xdc_runtime_Error_idToCode ========
 */



/*
 *  ======== xdc_runtime_Error_idToUid ========
 */


/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 341 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"








/*
 * ======== STATE STRUCTURES ========
 */

# 369 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 425 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 58 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IHeap.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Memory.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 54 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Memory.h"


# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 104 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 121 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 57 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Memory.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IHeap.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 202 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IHeap.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 238 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IHeap.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 58 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Memory.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 369 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 425 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 59 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Memory.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/package/Memory_HeapProxy.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     MODULE-WIDE CONFIGS
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION DECLARATIONS
 *     CONVERTORS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 55 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/package/Memory_HeapProxy.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 132 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 155 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 56 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/package/Memory_HeapProxy.h"


# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IHeap.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 202 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IHeap.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 238 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IHeap.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 59 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/package/Memory_HeapProxy.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */


/*
 * ======== MODULE-WIDE CONFIGS ========
 */

/* Module__diagsEnabled */
typedef xdc_Bits32 CT__xdc_runtime_Memory_HeapProxy_Module__diagsEnabled;
extern "C"  const CT__xdc_runtime_Memory_HeapProxy_Module__diagsEnabled xdc_runtime_Memory_HeapProxy_Module__diagsEnabled__C;

/* Module__diagsIncluded */
typedef xdc_Bits32 CT__xdc_runtime_Memory_HeapProxy_Module__diagsIncluded;
extern "C"  const CT__xdc_runtime_Memory_HeapProxy_Module__diagsIncluded xdc_runtime_Memory_HeapProxy_Module__diagsIncluded__C;

/* Module__diagsMask */
typedef xdc_Bits16 *CT__xdc_runtime_Memory_HeapProxy_Module__diagsMask;
extern "C"  const CT__xdc_runtime_Memory_HeapProxy_Module__diagsMask xdc_runtime_Memory_HeapProxy_Module__diagsMask__C;

/* Module__gateObj */
typedef xdc_Ptr CT__xdc_runtime_Memory_HeapProxy_Module__gateObj;
extern "C"  const CT__xdc_runtime_Memory_HeapProxy_Module__gateObj xdc_runtime_Memory_HeapProxy_Module__gateObj__C;

/* Module__gatePrms */
typedef xdc_Ptr CT__xdc_runtime_Memory_HeapProxy_Module__gatePrms;
extern "C"  const CT__xdc_runtime_Memory_HeapProxy_Module__gatePrms xdc_runtime_Memory_HeapProxy_Module__gatePrms__C;

/* Module__id */
typedef xdc_runtime_Types_ModuleId CT__xdc_runtime_Memory_HeapProxy_Module__id;
extern "C"  const CT__xdc_runtime_Memory_HeapProxy_Module__id xdc_runtime_Memory_HeapProxy_Module__id__C;

/* Module__loggerDefined */
typedef xdc_Bool CT__xdc_runtime_Memory_HeapProxy_Module__loggerDefined;
extern "C"  const CT__xdc_runtime_Memory_HeapProxy_Module__loggerDefined xdc_runtime_Memory_HeapProxy_Module__loggerDefined__C;

/* Module__loggerObj */
typedef xdc_Ptr CT__xdc_runtime_Memory_HeapProxy_Module__loggerObj;
extern "C"  const CT__xdc_runtime_Memory_HeapProxy_Module__loggerObj xdc_runtime_Memory_HeapProxy_Module__loggerObj__C;

/* Module__loggerFxn0 */
typedef xdc_runtime_Types_LoggerFxn0 CT__xdc_runtime_Memory_HeapProxy_Module__loggerFxn0;
extern "C"  const CT__xdc_runtime_Memory_HeapProxy_Module__loggerFxn0 xdc_runtime_Memory_HeapProxy_Module__loggerFxn0__C;

/* Module__loggerFxn1 */
typedef xdc_runtime_Types_LoggerFxn1 CT__xdc_runtime_Memory_HeapProxy_Module__loggerFxn1;
extern "C"  const CT__xdc_runtime_Memory_HeapProxy_Module__loggerFxn1 xdc_runtime_Memory_HeapProxy_Module__loggerFxn1__C;

/* Module__loggerFxn2 */
typedef xdc_runtime_Types_LoggerFxn2 CT__xdc_runtime_Memory_HeapProxy_Module__loggerFxn2;
extern "C"  const CT__xdc_runtime_Memory_HeapProxy_Module__loggerFxn2 xdc_runtime_Memory_HeapProxy_Module__loggerFxn2__C;

/* Module__loggerFxn4 */
typedef xdc_runtime_Types_LoggerFxn4 CT__xdc_runtime_Memory_HeapProxy_Module__loggerFxn4;
extern "C"  const CT__xdc_runtime_Memory_HeapProxy_Module__loggerFxn4 xdc_runtime_Memory_HeapProxy_Module__loggerFxn4__C;

/* Module__loggerFxn8 */
typedef xdc_runtime_Types_LoggerFxn8 CT__xdc_runtime_Memory_HeapProxy_Module__loggerFxn8;
extern "C"  const CT__xdc_runtime_Memory_HeapProxy_Module__loggerFxn8 xdc_runtime_Memory_HeapProxy_Module__loggerFxn8__C;

/* Module__startupDoneFxn */
typedef xdc_Bool (*CT__xdc_runtime_Memory_HeapProxy_Module__startupDoneFxn)(void);
extern "C"  const CT__xdc_runtime_Memory_HeapProxy_Module__startupDoneFxn xdc_runtime_Memory_HeapProxy_Module__startupDoneFxn__C;

/* Object__count */
typedef xdc_Int CT__xdc_runtime_Memory_HeapProxy_Object__count;
extern "C"  const CT__xdc_runtime_Memory_HeapProxy_Object__count xdc_runtime_Memory_HeapProxy_Object__count__C;

/* Object__heap */
typedef xdc_runtime_IHeap_Handle CT__xdc_runtime_Memory_HeapProxy_Object__heap;
extern "C"  const CT__xdc_runtime_Memory_HeapProxy_Object__heap xdc_runtime_Memory_HeapProxy_Object__heap__C;

/* Object__sizeof */
typedef xdc_SizeT CT__xdc_runtime_Memory_HeapProxy_Object__sizeof;
extern "C"  const CT__xdc_runtime_Memory_HeapProxy_Object__sizeof xdc_runtime_Memory_HeapProxy_Object__sizeof__C;

/* Object__table */
typedef xdc_Ptr CT__xdc_runtime_Memory_HeapProxy_Object__table;
extern "C"  const CT__xdc_runtime_Memory_HeapProxy_Object__table xdc_runtime_Memory_HeapProxy_Object__table__C;


/*
 * ======== PER-INSTANCE TYPES ========
 */

/* Params */
struct xdc_runtime_Memory_HeapProxy_Params {
    size_t __size;
    const void *__self;
    void *__fxns;
    xdc_runtime_IInstance_Params *instance;
    xdc_runtime_IInstance_Params __iprms;
};

/* Struct */
struct xdc_runtime_Memory_HeapProxy_Struct {
    const xdc_runtime_Memory_HeapProxy_Fxns__ *__fxns;
    xdc_runtime_Types_CordAddr __name;
};


/*
 * ======== VIRTUAL FUNCTIONS ========
 */

/* Fxns__ */
struct xdc_runtime_Memory_HeapProxy_Fxns__ {
    xdc_runtime_Types_Base* __base;
    const xdc_runtime_Types_SysFxns2 *__sysp;
    xdc_Ptr (*alloc)(xdc_runtime_Memory_HeapProxy_Handle, xdc_SizeT, xdc_SizeT, xdc_runtime_Error_Block*);
    void (*free)(xdc_runtime_Memory_HeapProxy_Handle, xdc_Ptr, xdc_SizeT);
    xdc_Bool (*isBlocking)(xdc_runtime_Memory_HeapProxy_Handle);
    void (*getStats)(xdc_runtime_Memory_HeapProxy_Handle, xdc_runtime_Memory_Stats*);
    xdc_runtime_Types_SysFxns2 __sfxns;
};

/* Module__FXNS__C */
extern "C" const xdc_runtime_Memory_HeapProxy_Fxns__ xdc_runtime_Memory_HeapProxy_Module__FXNS__C;


/*
 * ======== FUNCTION DECLARATIONS ========
 */

/* Module_startup */


/* Handle__label__S */

extern "C" xdc_runtime_Types_Label *xdc_runtime_Memory_HeapProxy_Handle__label__S( xdc_Ptr obj, xdc_runtime_Types_Label *lab );

/* Module__startupDone__S */

extern "C" xdc_Bool xdc_runtime_Memory_HeapProxy_Module__startupDone__S( void );

/* Object__create__S */

extern "C" xdc_Ptr xdc_runtime_Memory_HeapProxy_Object__create__S( xdc_Ptr __oa, xdc_SizeT __osz, xdc_Ptr __aa, const xdc_UChar *__pa, xdc_SizeT __psz, xdc_runtime_Error_Block *__eb );

/* create */

extern "C" xdc_runtime_Memory_HeapProxy_Handle xdc_runtime_Memory_HeapProxy_create( const xdc_runtime_Memory_HeapProxy_Params *__prms, xdc_runtime_Error_Block *__eb );

/* Object__delete__S */

extern "C" void xdc_runtime_Memory_HeapProxy_Object__delete__S( xdc_Ptr instp );

/* delete */

extern "C" void xdc_runtime_Memory_HeapProxy_delete(xdc_runtime_Memory_HeapProxy_Handle *instp);

/* Object__destruct__S */

extern "C" void xdc_runtime_Memory_HeapProxy_Object__destruct__S( xdc_Ptr objp );

/* Object__get__S */

extern "C" xdc_Ptr xdc_runtime_Memory_HeapProxy_Object__get__S( xdc_Ptr oarr, xdc_Int i );

/* Object__first__S */

extern "C" xdc_Ptr xdc_runtime_Memory_HeapProxy_Object__first__S( void );

/* Object__next__S */

extern "C" xdc_Ptr xdc_runtime_Memory_HeapProxy_Object__next__S( xdc_Ptr obj );

/* Params__init__S */

extern "C" void xdc_runtime_Memory_HeapProxy_Params__init__S( xdc_Ptr dst, const void *src, xdc_SizeT psz, xdc_SizeT isz );

/* Proxy__abstract__S */

extern "C" xdc_Bool xdc_runtime_Memory_HeapProxy_Proxy__abstract__S( void );

/* Proxy__delegate__S */

extern "C" xdc_Ptr xdc_runtime_Memory_HeapProxy_Proxy__delegate__S( void );

/* alloc__E */


extern "C" xdc_Ptr xdc_runtime_Memory_HeapProxy_alloc__E( xdc_runtime_Memory_HeapProxy_Handle __inst, xdc_SizeT size, xdc_SizeT align, xdc_runtime_Error_Block *eb );

/* free__E */


extern "C" void xdc_runtime_Memory_HeapProxy_free__E( xdc_runtime_Memory_HeapProxy_Handle __inst, xdc_Ptr block, xdc_SizeT size );

/* isBlocking__E */


extern "C" xdc_Bool xdc_runtime_Memory_HeapProxy_isBlocking__E( xdc_runtime_Memory_HeapProxy_Handle __inst );

/* getStats__E */


extern "C" void xdc_runtime_Memory_HeapProxy_getStats__E( xdc_runtime_Memory_HeapProxy_Handle __inst, xdc_runtime_Memory_Stats *stats );


/*
 * ======== CONVERTORS ========
 */

/* Module_upCast */
static inline xdc_runtime_IHeap_Module xdc_runtime_Memory_HeapProxy_Module_upCast( void )
{
    return (xdc_runtime_IHeap_Module)xdc_runtime_Memory_HeapProxy_Proxy__delegate__S();
}

/* Module_to_xdc_runtime_IHeap */


/* Handle_upCast */
static inline xdc_runtime_IHeap_Handle xdc_runtime_Memory_HeapProxy_Handle_upCast( xdc_runtime_Memory_HeapProxy_Handle i )
{
    return (xdc_runtime_IHeap_Handle)i;
}

/* Handle_to_xdc_runtime_IHeap */


/* Handle_downCast */
static inline xdc_runtime_Memory_HeapProxy_Handle xdc_runtime_Memory_HeapProxy_Handle_downCast( xdc_runtime_IHeap_Handle i )
{
    xdc_runtime_IHeap_Handle i2 = (xdc_runtime_IHeap_Handle)i;
if (xdc_runtime_Memory_HeapProxy_Proxy__abstract__S()) return (xdc_runtime_Memory_HeapProxy_Handle)i;
    return (void*)i2->__fxns == (void*)xdc_runtime_Memory_HeapProxy_Proxy__delegate__S() ? (xdc_runtime_Memory_HeapProxy_Handle)i : 0;
}

/* Handle_from_xdc_runtime_IHeap */



/*
 * ======== SYSTEM FUNCTIONS ========
 */

/* Module_startupDone */


/* Object_heap */


/* Module_heap */


/* Module_id */
static inline CT__xdc_runtime_Memory_HeapProxy_Module__id xdc_runtime_Memory_HeapProxy_Module_id( void ) 
{
    return xdc_runtime_Memory_HeapProxy_Module__id__C;
}

/* Proxy_abstract */


/* Proxy_delegate */


/* Params_init */
static inline void xdc_runtime_Memory_HeapProxy_Params_init( xdc_runtime_Memory_HeapProxy_Params *prms ) 
{
    if (prms) {
        xdc_runtime_Memory_HeapProxy_Params__init__S(prms, 0, sizeof(xdc_runtime_Memory_HeapProxy_Params), sizeof(xdc_runtime_IInstance_Params));
    }
}

/* Params_copy */
static inline void xdc_runtime_Memory_HeapProxy_Params_copy(xdc_runtime_Memory_HeapProxy_Params *dst, const xdc_runtime_Memory_HeapProxy_Params *src) 
{
    if (dst) {
        xdc_runtime_Memory_HeapProxy_Params__init__S(dst, (const void *)src, sizeof(xdc_runtime_Memory_HeapProxy_Params), sizeof(xdc_runtime_IInstance_Params));
    }
}


/*
 * ======== EPILOGUE ========
 */








/*
 * ======== PREFIX ALIASES ========
 */

# 60 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Memory.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* Q_BLOCKING */


/* Size */
typedef xdc_UArg xdc_runtime_Memory_Size;

/* Stats */
struct xdc_runtime_Memory_Stats {
    xdc_runtime_Memory_Size totalSize;
    xdc_runtime_Memory_Size totalFreeSize;
    xdc_runtime_Memory_Size largestFreeSize;
};


/*
 * ======== INTERNAL DEFINITIONS ========
 */


/*
 * ======== MODULE-WIDE CONFIGS ========
 */

/* Module__diagsEnabled */
typedef xdc_Bits32 CT__xdc_runtime_Memory_Module__diagsEnabled;
extern "C"  const CT__xdc_runtime_Memory_Module__diagsEnabled xdc_runtime_Memory_Module__diagsEnabled__C;

/* Module__diagsIncluded */
typedef xdc_Bits32 CT__xdc_runtime_Memory_Module__diagsIncluded;
extern "C"  const CT__xdc_runtime_Memory_Module__diagsIncluded xdc_runtime_Memory_Module__diagsIncluded__C;

/* Module__diagsMask */
typedef xdc_Bits16 *CT__xdc_runtime_Memory_Module__diagsMask;
extern "C"  const CT__xdc_runtime_Memory_Module__diagsMask xdc_runtime_Memory_Module__diagsMask__C;

/* Module__gateObj */
typedef xdc_Ptr CT__xdc_runtime_Memory_Module__gateObj;
extern "C"  const CT__xdc_runtime_Memory_Module__gateObj xdc_runtime_Memory_Module__gateObj__C;

/* Module__gatePrms */
typedef xdc_Ptr CT__xdc_runtime_Memory_Module__gatePrms;
extern "C"  const CT__xdc_runtime_Memory_Module__gatePrms xdc_runtime_Memory_Module__gatePrms__C;

/* Module__id */
typedef xdc_runtime_Types_ModuleId CT__xdc_runtime_Memory_Module__id;
extern "C"  const CT__xdc_runtime_Memory_Module__id xdc_runtime_Memory_Module__id__C;

/* Module__loggerDefined */
typedef xdc_Bool CT__xdc_runtime_Memory_Module__loggerDefined;
extern "C"  const CT__xdc_runtime_Memory_Module__loggerDefined xdc_runtime_Memory_Module__loggerDefined__C;

/* Module__loggerObj */
typedef xdc_Ptr CT__xdc_runtime_Memory_Module__loggerObj;
extern "C"  const CT__xdc_runtime_Memory_Module__loggerObj xdc_runtime_Memory_Module__loggerObj__C;

/* Module__loggerFxn0 */
typedef xdc_runtime_Types_LoggerFxn0 CT__xdc_runtime_Memory_Module__loggerFxn0;
extern "C"  const CT__xdc_runtime_Memory_Module__loggerFxn0 xdc_runtime_Memory_Module__loggerFxn0__C;

/* Module__loggerFxn1 */
typedef xdc_runtime_Types_LoggerFxn1 CT__xdc_runtime_Memory_Module__loggerFxn1;
extern "C"  const CT__xdc_runtime_Memory_Module__loggerFxn1 xdc_runtime_Memory_Module__loggerFxn1__C;

/* Module__loggerFxn2 */
typedef xdc_runtime_Types_LoggerFxn2 CT__xdc_runtime_Memory_Module__loggerFxn2;
extern "C"  const CT__xdc_runtime_Memory_Module__loggerFxn2 xdc_runtime_Memory_Module__loggerFxn2__C;

/* Module__loggerFxn4 */
typedef xdc_runtime_Types_LoggerFxn4 CT__xdc_runtime_Memory_Module__loggerFxn4;
extern "C"  const CT__xdc_runtime_Memory_Module__loggerFxn4 xdc_runtime_Memory_Module__loggerFxn4__C;

/* Module__loggerFxn8 */
typedef xdc_runtime_Types_LoggerFxn8 CT__xdc_runtime_Memory_Module__loggerFxn8;
extern "C"  const CT__xdc_runtime_Memory_Module__loggerFxn8 xdc_runtime_Memory_Module__loggerFxn8__C;

/* Module__startupDoneFxn */
typedef xdc_Bool (*CT__xdc_runtime_Memory_Module__startupDoneFxn)(void);
extern "C"  const CT__xdc_runtime_Memory_Module__startupDoneFxn xdc_runtime_Memory_Module__startupDoneFxn__C;

/* Object__count */
typedef xdc_Int CT__xdc_runtime_Memory_Object__count;
extern "C"  const CT__xdc_runtime_Memory_Object__count xdc_runtime_Memory_Object__count__C;

/* Object__heap */
typedef xdc_runtime_IHeap_Handle CT__xdc_runtime_Memory_Object__heap;
extern "C"  const CT__xdc_runtime_Memory_Object__heap xdc_runtime_Memory_Object__heap__C;

/* Object__sizeof */
typedef xdc_SizeT CT__xdc_runtime_Memory_Object__sizeof;
extern "C"  const CT__xdc_runtime_Memory_Object__sizeof xdc_runtime_Memory_Object__sizeof__C;

/* Object__table */
typedef xdc_Ptr CT__xdc_runtime_Memory_Object__table;
extern "C"  const CT__xdc_runtime_Memory_Object__table xdc_runtime_Memory_Object__table__C;

/* defaultHeapInstance */

typedef xdc_runtime_IHeap_Handle CT__xdc_runtime_Memory_defaultHeapInstance;
extern "C"  const CT__xdc_runtime_Memory_defaultHeapInstance xdc_runtime_Memory_defaultHeapInstance__C;


/*
 * ======== FUNCTION DECLARATIONS ========
 */

/* Module_startup */


/* Module__startupDone__S */

extern "C" xdc_Bool xdc_runtime_Memory_Module__startupDone__S( void );

/* alloc__E */


extern "C" xdc_Ptr xdc_runtime_Memory_alloc__E( xdc_runtime_IHeap_Handle heap, xdc_SizeT size, xdc_SizeT align, xdc_runtime_Error_Block *eb );

/* calloc__E */


extern "C" xdc_Ptr xdc_runtime_Memory_calloc__E( xdc_runtime_IHeap_Handle heap, xdc_SizeT size, xdc_SizeT align, xdc_runtime_Error_Block *eb );

/* free__E */


extern "C" void xdc_runtime_Memory_free__E( xdc_runtime_IHeap_Handle heap, xdc_Ptr block, xdc_SizeT size );

/* getStats__E */


extern "C" void xdc_runtime_Memory_getStats__E( xdc_runtime_IHeap_Handle heap, xdc_runtime_Memory_Stats *stats );

/* query__E */


extern "C" xdc_Bool xdc_runtime_Memory_query__E( xdc_runtime_IHeap_Handle heap, xdc_Int qual );

/* getMaxDefaultTypeAlign__E */


extern "C" xdc_SizeT xdc_runtime_Memory_getMaxDefaultTypeAlign__E( void );

/* valloc__E */


extern "C" xdc_Ptr xdc_runtime_Memory_valloc__E( xdc_runtime_IHeap_Handle heap, xdc_SizeT size, xdc_SizeT align, xdc_Char value, xdc_runtime_Error_Block *eb );


/*
 * ======== SYSTEM FUNCTIONS ========
 */

/* Module_startupDone */


/* Object_heap */


/* Module_heap */


/* Module_id */
static inline CT__xdc_runtime_Memory_Module__id xdc_runtime_Memory_Module_id( void ) 
{
    return xdc_runtime_Memory_Module__id__C;
}

/* Module_hasMask */
static inline xdc_Bool xdc_runtime_Memory_Module_hasMask( void ) 
{
    return xdc_runtime_Memory_Module__diagsMask__C != 0;
}

/* Module_getMask */
static inline xdc_Bits16 xdc_runtime_Memory_Module_getMask( void ) 
{
    return xdc_runtime_Memory_Module__diagsMask__C != 0 ? *xdc_runtime_Memory_Module__diagsMask__C : 0;
}

/* Module_setMask */
static inline void xdc_runtime_Memory_Module_setMask( xdc_Bits16 mask ) 
{
    if (xdc_runtime_Memory_Module__diagsMask__C != 0) *xdc_runtime_Memory_Module__diagsMask__C = mask;
}


/*
 * ======== EPILOGUE ========
 */








/*
 * ======== STATE STRUCTURES ========
 */

# 283 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Memory.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 322 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Memory.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:48; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 59 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IHeap.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */


/*
 * ======== PER-INSTANCE TYPES ========
 */

/* Params */
struct xdc_runtime_IHeap_Params {
    size_t __size;
    const void *__self;
    void *__fxns;
    xdc_runtime_IInstance_Params *instance;
};


/*
 * ======== VIRTUAL FUNCTIONS ========
 */

/* Fxns__ */
struct xdc_runtime_IHeap_Fxns__ {
    xdc_runtime_Types_Base* __base;
    const xdc_runtime_Types_SysFxns2 *__sysp;
    xdc_Ptr (*alloc)(void*, xdc_SizeT, xdc_SizeT, xdc_runtime_Error_Block*);
    void (*free)(void*, xdc_Ptr, xdc_SizeT);
    xdc_Bool (*isBlocking)(void*);
    void (*getStats)(void*, xdc_runtime_Memory_Stats*);
    xdc_runtime_Types_SysFxns2 __sfxns;
};

/* Interface__BASE__C */
extern "C" const xdc_runtime_Types_Base xdc_runtime_IHeap_Interface__BASE__C;


/*
 * ======== FUNCTION STUBS ========
 */

/* create */

extern "C" xdc_runtime_IHeap_Handle xdc_runtime_IHeap_create(xdc_runtime_IHeap_Module, const xdc_runtime_IHeap_Params *, xdc_runtime_Error_Block *__eb);

/* delete */

extern "C" void xdc_runtime_IHeap_delete(xdc_runtime_IHeap_Handle *);

/* Handle_to_Module */
static inline xdc_runtime_IHeap_Module xdc_runtime_IHeap_Handle_to_Module( xdc_runtime_IHeap_Handle inst )
{
    return inst->__fxns;
}

/* Handle_label */
static inline xdc_runtime_Types_Label *xdc_runtime_IHeap_Handle_label( xdc_runtime_IHeap_Handle inst, xdc_runtime_Types_Label *lab )
{
    return inst->__fxns->__sysp->__label(inst, lab);
}

/* Module_id */
static inline xdc_runtime_Types_ModuleId xdc_runtime_IHeap_Module_id( xdc_runtime_IHeap_Module mod )
{
    return mod->__sysp->__mid;
}

/* alloc */
static inline xdc_Ptr xdc_runtime_IHeap_alloc( xdc_runtime_IHeap_Handle __inst, xdc_SizeT size, xdc_SizeT align, xdc_runtime_Error_Block *eb )
{
    return __inst->__fxns->alloc((void*)__inst, size, align, eb);
}

/* free */
static inline void xdc_runtime_IHeap_free( xdc_runtime_IHeap_Handle __inst, xdc_Ptr block, xdc_SizeT size )
{
    __inst->__fxns->free((void*)__inst, block, size);
}

/* isBlocking */
static inline xdc_Bool xdc_runtime_IHeap_isBlocking( xdc_runtime_IHeap_Handle __inst )
{
    return __inst->__fxns->isBlocking((void*)__inst);
}

/* getStats */
static inline void xdc_runtime_IHeap_getStats( xdc_runtime_IHeap_Handle __inst, xdc_runtime_Memory_Stats *stats )
{
    __inst->__fxns->getStats((void*)__inst, stats);
}


/*
 * ======== FUNCTION SELECTORS ========
 */

/* These functions return function pointers for module and instance functions.
 * The functions accept modules and instances declared as types defined in this
 * interface, but they return functions defined for the actual objects passed
 * as parameters. These functions are not invoked by any generated code or
 * XDCtools internal code.
 */

/* alloc_{FxnT,fxnP} */
typedef xdc_Ptr (*xdc_runtime_IHeap_alloc_FxnT)(void *, xdc_SizeT, xdc_SizeT, xdc_runtime_Error_Block*);
static inline xdc_runtime_IHeap_alloc_FxnT xdc_runtime_IHeap_alloc_fxnP( xdc_runtime_IHeap_Handle __inst )
{
    return (xdc_runtime_IHeap_alloc_FxnT)__inst->__fxns->alloc;
}

/* free_{FxnT,fxnP} */
typedef void (*xdc_runtime_IHeap_free_FxnT)(void *, xdc_Ptr, xdc_SizeT);
static inline xdc_runtime_IHeap_free_FxnT xdc_runtime_IHeap_free_fxnP( xdc_runtime_IHeap_Handle __inst )
{
    return (xdc_runtime_IHeap_free_FxnT)__inst->__fxns->free;
}

/* isBlocking_{FxnT,fxnP} */
typedef xdc_Bool (*xdc_runtime_IHeap_isBlocking_FxnT)(void *);
static inline xdc_runtime_IHeap_isBlocking_FxnT xdc_runtime_IHeap_isBlocking_fxnP( xdc_runtime_IHeap_Handle __inst )
{
    return (xdc_runtime_IHeap_isBlocking_FxnT)__inst->__fxns->isBlocking;
}

/* getStats_{FxnT,fxnP} */
typedef void (*xdc_runtime_IHeap_getStats_FxnT)(void *, xdc_runtime_Memory_Stats*);
static inline xdc_runtime_IHeap_getStats_FxnT xdc_runtime_IHeap_getStats_fxnP( xdc_runtime_IHeap_Handle __inst )
{
    return (xdc_runtime_IHeap_getStats_FxnT)__inst->__fxns->getStats;
}


/*
 * ======== EPILOGUE ========
 */








/*
 * ======== PREFIX ALIASES ========
 */

# 238 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IHeap.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 56 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 369 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 425 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 57 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */


/*
 * ======== VIRTUAL FUNCTIONS ========
 */

/* Fxns__ */
struct xdc_runtime_IModule_Fxns__ {
    xdc_runtime_Types_Base* __base;
    const xdc_runtime_Types_SysFxns2 *__sysp;
    xdc_runtime_Types_SysFxns2 __sfxns;
};

/* Interface__BASE__C */
extern "C" const xdc_runtime_Types_Base xdc_runtime_IModule_Interface__BASE__C;


/*
 * ======== FUNCTION STUBS ========
 */

/* Module_id */
static inline xdc_runtime_Types_ModuleId xdc_runtime_IModule_Module_id( xdc_runtime_IModule_Module mod )
{
    return mod->__sysp->__mid;
}


/*
 * ======== FUNCTION SELECTORS ========
 */


/*
 * ======== EPILOGUE ========
 */








/*
 * ======== PREFIX ALIASES ========
 */

# 121 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 57 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/System.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 54 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert__prologue.h"
/* 
 *  Copyright (c) 2008 Texas Instruments. All rights reserved. 
 *  This program and the accompanying materials are made available under the 
 *  terms of the Eclipse Public License v1.0 and Eclipse Distribution License
 *  v. 1.0 which accompanies this distribution. The Eclipse Public License is
 *  available at http://www.eclipse.org/legal/epl-v10.html and the Eclipse
 *  Distribution License is available at 
 *  http://www.eclipse.org/org/documents/edl-v10.php.
 *
 *  Contributors:
 *      Texas Instruments - initial implementation
 * */
/*
 *  ======== Assert__prologue.h ========
 */
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Main.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 207 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Main.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 222 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Main.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 248 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Main.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:47; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 17 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert__prologue.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 54 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags__prologue.h"
/* 
 *  Copyright (c) 2008 Texas Instruments. All rights reserved. 
 *  This program and the accompanying materials are made available under the 
 *  terms of the Eclipse Public License v1.0 and Eclipse Distribution License
 *  v. 1.0 which accompanies this distribution. The Eclipse Public License is
 *  available at http://www.eclipse.org/legal/epl-v10.html and the Eclipse
 *  Distribution License is available at 
 *  http://www.eclipse.org/org/documents/edl-v10.php.
 *
 *  Contributors:
 *      Texas Instruments - initial implementation
 * */

/*
 *  ======== Diags__prologue.h ========
 *
 *  This header defines Module__* symbols for every Module__* value used
 *  by the Diags module's headers.  This allows non-module code to
 *  use the Diags module.  These symbols are normally defined in
 *  module internal headers (i.e., package/internal/<mod>.xdc.h) and they
 *  define a "current module context".
 */
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Main.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 207 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Main.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 222 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Main.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 248 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Main.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:47; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 24 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags__prologue.h"

/* 
 * Only define these symbols for xdc.runtime.Main if this file is not one that
 * will be included in the Registry. This check ensures that Registry.h (which
 * similarly defines these Module__* symbols) can be included in any order
 * relative to other xdc.runtime headers.
 */


/*
 *  ======== Module__DGSINCL ========
 *  The set of diags categories that are runtime controllable _or_ always on
 *
 *  This costant is computed at config time and enables us to eliminate
 *  expensive runtime time checks and unnecessary data (the module's diags 
 *  mask) when whole program optimization is used.
 */



/*
 *  ======== Module__DGSENAB ========
 *  The set of diags categories that are _always_ enabled
 *
 *  This costant is computed at config time and enables us to eliminate
 *  expensive runtime time checks and unnecessary data (the module's diags 
 *  mask) when whole program optimization is used.
 */



/*
 *  ======== Module__DGSMASK ========
 *  Pointer to the set of diags categories that are runtime controllable 
 */



/*
 *  ======== Module__MID ========
 */




/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 55 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"


# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 104 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 121 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 58 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 59 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* Mask */
typedef xdc_runtime_Types_DiagsMask xdc_runtime_Diags_Mask;

/* ENTRY */


/* EXIT */


/* LIFECYCLE */


/* INTERNAL */


/* ASSERT */


/* STATUS */


/* LEVEL */


/* USER1 */


/* USER2 */


/* USER3 */


/* USER4 */


/* USER5 */


/* USER6 */


/* USER7 */


/* INFO */


/* USER8 */


/* ANALYSIS */


/* ALL */


/* ALL_LOGGING */


/* EventLevel */
enum xdc_runtime_Diags_EventLevel {
    xdc_runtime_Diags_LEVEL1 = 0x0,
    xdc_runtime_Diags_LEVEL2 = 0x20,
    xdc_runtime_Diags_LEVEL3 = 0x40,
    xdc_runtime_Diags_LEVEL4 = 0x60
};
typedef enum xdc_runtime_Diags_EventLevel xdc_runtime_Diags_EventLevel;

/* EMERGENCY */


/* CRITICAL */


/* ERROR */


/* WARNING */



/*
 * ======== INTERNAL DEFINITIONS ========
 */

/* DictElem */
struct xdc_runtime_Diags_DictElem {
    xdc_runtime_Types_ModuleId modId;
    xdc_runtime_Diags_Mask *maskAddr;
};


/*
 * ======== MODULE-WIDE CONFIGS ========
 */

/* Module__diagsEnabled */
typedef xdc_Bits32 CT__xdc_runtime_Diags_Module__diagsEnabled;
extern "C"  const CT__xdc_runtime_Diags_Module__diagsEnabled xdc_runtime_Diags_Module__diagsEnabled__C;

/* Module__diagsIncluded */
typedef xdc_Bits32 CT__xdc_runtime_Diags_Module__diagsIncluded;
extern "C"  const CT__xdc_runtime_Diags_Module__diagsIncluded xdc_runtime_Diags_Module__diagsIncluded__C;

/* Module__diagsMask */
typedef xdc_Bits16 *CT__xdc_runtime_Diags_Module__diagsMask;
extern "C"  const CT__xdc_runtime_Diags_Module__diagsMask xdc_runtime_Diags_Module__diagsMask__C;

/* Module__gateObj */
typedef xdc_Ptr CT__xdc_runtime_Diags_Module__gateObj;
extern "C"  const CT__xdc_runtime_Diags_Module__gateObj xdc_runtime_Diags_Module__gateObj__C;

/* Module__gatePrms */
typedef xdc_Ptr CT__xdc_runtime_Diags_Module__gatePrms;
extern "C"  const CT__xdc_runtime_Diags_Module__gatePrms xdc_runtime_Diags_Module__gatePrms__C;

/* Module__id */
typedef xdc_runtime_Types_ModuleId CT__xdc_runtime_Diags_Module__id;
extern "C"  const CT__xdc_runtime_Diags_Module__id xdc_runtime_Diags_Module__id__C;

/* Module__loggerDefined */
typedef xdc_Bool CT__xdc_runtime_Diags_Module__loggerDefined;
extern "C"  const CT__xdc_runtime_Diags_Module__loggerDefined xdc_runtime_Diags_Module__loggerDefined__C;

/* Module__loggerObj */
typedef xdc_Ptr CT__xdc_runtime_Diags_Module__loggerObj;
extern "C"  const CT__xdc_runtime_Diags_Module__loggerObj xdc_runtime_Diags_Module__loggerObj__C;

/* Module__loggerFxn0 */
typedef xdc_runtime_Types_LoggerFxn0 CT__xdc_runtime_Diags_Module__loggerFxn0;
extern "C"  const CT__xdc_runtime_Diags_Module__loggerFxn0 xdc_runtime_Diags_Module__loggerFxn0__C;

/* Module__loggerFxn1 */
typedef xdc_runtime_Types_LoggerFxn1 CT__xdc_runtime_Diags_Module__loggerFxn1;
extern "C"  const CT__xdc_runtime_Diags_Module__loggerFxn1 xdc_runtime_Diags_Module__loggerFxn1__C;

/* Module__loggerFxn2 */
typedef xdc_runtime_Types_LoggerFxn2 CT__xdc_runtime_Diags_Module__loggerFxn2;
extern "C"  const CT__xdc_runtime_Diags_Module__loggerFxn2 xdc_runtime_Diags_Module__loggerFxn2__C;

/* Module__loggerFxn4 */
typedef xdc_runtime_Types_LoggerFxn4 CT__xdc_runtime_Diags_Module__loggerFxn4;
extern "C"  const CT__xdc_runtime_Diags_Module__loggerFxn4 xdc_runtime_Diags_Module__loggerFxn4__C;

/* Module__loggerFxn8 */
typedef xdc_runtime_Types_LoggerFxn8 CT__xdc_runtime_Diags_Module__loggerFxn8;
extern "C"  const CT__xdc_runtime_Diags_Module__loggerFxn8 xdc_runtime_Diags_Module__loggerFxn8__C;

/* Module__startupDoneFxn */
typedef xdc_Bool (*CT__xdc_runtime_Diags_Module__startupDoneFxn)(void);
extern "C"  const CT__xdc_runtime_Diags_Module__startupDoneFxn xdc_runtime_Diags_Module__startupDoneFxn__C;

/* Object__count */
typedef xdc_Int CT__xdc_runtime_Diags_Object__count;
extern "C"  const CT__xdc_runtime_Diags_Object__count xdc_runtime_Diags_Object__count__C;

/* Object__heap */
typedef xdc_runtime_IHeap_Handle CT__xdc_runtime_Diags_Object__heap;
extern "C"  const CT__xdc_runtime_Diags_Object__heap xdc_runtime_Diags_Object__heap__C;

/* Object__sizeof */
typedef xdc_SizeT CT__xdc_runtime_Diags_Object__sizeof;
extern "C"  const CT__xdc_runtime_Diags_Object__sizeof xdc_runtime_Diags_Object__sizeof__C;

/* Object__table */
typedef xdc_Ptr CT__xdc_runtime_Diags_Object__table;
extern "C"  const CT__xdc_runtime_Diags_Object__table xdc_runtime_Diags_Object__table__C;

/* setMaskEnabled */




typedef xdc_Bool CT__xdc_runtime_Diags_setMaskEnabled;
extern "C"  const CT__xdc_runtime_Diags_setMaskEnabled xdc_runtime_Diags_setMaskEnabled__C;


/* dictBase */

typedef xdc_runtime_Diags_DictElem *CT__xdc_runtime_Diags_dictBase;
extern "C"  const CT__xdc_runtime_Diags_dictBase xdc_runtime_Diags_dictBase__C;


/*
 * ======== FUNCTION DECLARATIONS ========
 */

/* Module_startup */


/* Module__startupDone__S */

extern "C" xdc_Bool xdc_runtime_Diags_Module__startupDone__S( void );

/* setMask__E */


extern "C" void xdc_runtime_Diags_setMask__E( xdc_CString control );


/*
 * ======== SYSTEM FUNCTIONS ========
 */

/* Module_startupDone */


/* Object_heap */


/* Module_heap */


/* Module_id */
static inline CT__xdc_runtime_Diags_Module__id xdc_runtime_Diags_Module_id( void ) 
{
    return xdc_runtime_Diags_Module__id__C;
}

/* Module_hasMask */
static inline xdc_Bool xdc_runtime_Diags_Module_hasMask( void ) 
{
    return xdc_runtime_Diags_Module__diagsMask__C != 0;
}

/* Module_getMask */
static inline xdc_Bits16 xdc_runtime_Diags_Module_getMask( void ) 
{
    return xdc_runtime_Diags_Module__diagsMask__C != 0 ? *xdc_runtime_Diags_Module__diagsMask__C : 0;
}

/* Module_setMask */
static inline void xdc_runtime_Diags_Module_setMask( xdc_Bits16 mask ) 
{
    if (xdc_runtime_Diags_Module__diagsMask__C != 0) *xdc_runtime_Diags_Module__diagsMask__C = mask;
}


/*
 * ======== EPILOGUE ========
 */

# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags__epilogue.h"
/* 
 *  Copyright (c) 2008 Texas Instruments. All rights reserved. 
 *  This program and the accompanying materials are made available under the 
 *  terms of the Eclipse Public License v1.0 and Eclipse Distribution License
 *  v. 1.0 which accompanies this distribution. The Eclipse Public License is
 *  available at http://www.eclipse.org/legal/epl-v10.html and the Eclipse
 *  Distribution License is available at 
 *  http://www.eclipse.org/org/documents/edl-v10.php.
 *
 *  Contributors:
 *      Texas Instruments - initial implementation
 * */
/*
 *  ======== xdc_runtime_Diags_query ========
 *  Returns true iff: 
 *      1. the current module's included diags intersect evt's mask, and
 *      2. either the permanently enabled diags intersect evt's mask or
 *         the runtime controllable diags intersect evt's mask.
 *
 *  This macro relies on three "internal" macros which are defined in each
 *  module's internal header (e.g., package/internal/System.xdc.h):
 *      Module__DGSINCL - a const bit mask of bits that are _not_ ALWAYS_OFF
 *      Module__DGSENAB - a const bit mask of bits that are ALWAYS_ON
 *      Module__DGSMASK - a const pointer to a bit mask of currently enabled
 *                        diagnostics
 *  These macros reference module-specific variables generated at config
 *  time, when we know the value of these constants.
 *
 */




/*
 *  ======== xdc_runtime_Diags_getLevel ========
 *  Returns the event level set in the given diags mask. The level is a value
 *  stored using two bits of the diags mask.
 */



/*
 *  ======== xdc_runtime_Diags_compareLevels ========
 *  The definition of the diags levels assigns the value '0' to the highest
 *  priority events and '3' to the lowest, so the comparison is done backwards.
 *  For example, for (LEVEL4 (0), LEVEL1 (3)) this must return false.
 */


/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 309 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"








/*
 * ======== STATE STRUCTURES ========
 */

# 330 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 389 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 18 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert__prologue.h"

/*
 *  ======== xdc_runtime_Assert_Id ========
 */
typedef xdc_Bits32 xdc_runtime_Assert_Id;

/*
 *  ======== Module__MID ========
 *  This definition allows non-module code to
 *  use the Assert module.  This symbol is normally defined in each
 *  module internal header (i.e., package/internal/<mod>.xdc.h).
 *
 *  Only do this if this file is not one that will be included in the Registry.
 *  This check ensures that Registry.h (which similarly defines these Module__*
 *  symbols) can be included in any order relative to other xdc.runtime 
 *  headers.
 */

 




/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:44; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 55 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"


# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 104 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 121 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 58 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 315 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 330 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 389 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 59 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 369 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 425 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 60 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 61 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* Id */


/*
 * ======== INTERNAL DEFINITIONS ========
 */


/*
 * ======== MODULE-WIDE CONFIGS ========
 */

/* Module__diagsEnabled */
typedef xdc_Bits32 CT__xdc_runtime_Assert_Module__diagsEnabled;
extern "C"  const CT__xdc_runtime_Assert_Module__diagsEnabled xdc_runtime_Assert_Module__diagsEnabled__C;

/* Module__diagsIncluded */
typedef xdc_Bits32 CT__xdc_runtime_Assert_Module__diagsIncluded;
extern "C"  const CT__xdc_runtime_Assert_Module__diagsIncluded xdc_runtime_Assert_Module__diagsIncluded__C;

/* Module__diagsMask */
typedef xdc_Bits16 *CT__xdc_runtime_Assert_Module__diagsMask;
extern "C"  const CT__xdc_runtime_Assert_Module__diagsMask xdc_runtime_Assert_Module__diagsMask__C;

/* Module__gateObj */
typedef xdc_Ptr CT__xdc_runtime_Assert_Module__gateObj;
extern "C"  const CT__xdc_runtime_Assert_Module__gateObj xdc_runtime_Assert_Module__gateObj__C;

/* Module__gatePrms */
typedef xdc_Ptr CT__xdc_runtime_Assert_Module__gatePrms;
extern "C"  const CT__xdc_runtime_Assert_Module__gatePrms xdc_runtime_Assert_Module__gatePrms__C;

/* Module__id */
typedef xdc_runtime_Types_ModuleId CT__xdc_runtime_Assert_Module__id;
extern "C"  const CT__xdc_runtime_Assert_Module__id xdc_runtime_Assert_Module__id__C;

/* Module__loggerDefined */
typedef xdc_Bool CT__xdc_runtime_Assert_Module__loggerDefined;
extern "C"  const CT__xdc_runtime_Assert_Module__loggerDefined xdc_runtime_Assert_Module__loggerDefined__C;

/* Module__loggerObj */
typedef xdc_Ptr CT__xdc_runtime_Assert_Module__loggerObj;
extern "C"  const CT__xdc_runtime_Assert_Module__loggerObj xdc_runtime_Assert_Module__loggerObj__C;

/* Module__loggerFxn0 */
typedef xdc_runtime_Types_LoggerFxn0 CT__xdc_runtime_Assert_Module__loggerFxn0;
extern "C"  const CT__xdc_runtime_Assert_Module__loggerFxn0 xdc_runtime_Assert_Module__loggerFxn0__C;

/* Module__loggerFxn1 */
typedef xdc_runtime_Types_LoggerFxn1 CT__xdc_runtime_Assert_Module__loggerFxn1;
extern "C"  const CT__xdc_runtime_Assert_Module__loggerFxn1 xdc_runtime_Assert_Module__loggerFxn1__C;

/* Module__loggerFxn2 */
typedef xdc_runtime_Types_LoggerFxn2 CT__xdc_runtime_Assert_Module__loggerFxn2;
extern "C"  const CT__xdc_runtime_Assert_Module__loggerFxn2 xdc_runtime_Assert_Module__loggerFxn2__C;

/* Module__loggerFxn4 */
typedef xdc_runtime_Types_LoggerFxn4 CT__xdc_runtime_Assert_Module__loggerFxn4;
extern "C"  const CT__xdc_runtime_Assert_Module__loggerFxn4 xdc_runtime_Assert_Module__loggerFxn4__C;

/* Module__loggerFxn8 */
typedef xdc_runtime_Types_LoggerFxn8 CT__xdc_runtime_Assert_Module__loggerFxn8;
extern "C"  const CT__xdc_runtime_Assert_Module__loggerFxn8 xdc_runtime_Assert_Module__loggerFxn8__C;

/* Module__startupDoneFxn */
typedef xdc_Bool (*CT__xdc_runtime_Assert_Module__startupDoneFxn)(void);
extern "C"  const CT__xdc_runtime_Assert_Module__startupDoneFxn xdc_runtime_Assert_Module__startupDoneFxn__C;

/* Object__count */
typedef xdc_Int CT__xdc_runtime_Assert_Object__count;
extern "C"  const CT__xdc_runtime_Assert_Object__count xdc_runtime_Assert_Object__count__C;

/* Object__heap */
typedef xdc_runtime_IHeap_Handle CT__xdc_runtime_Assert_Object__heap;
extern "C"  const CT__xdc_runtime_Assert_Object__heap xdc_runtime_Assert_Object__heap__C;

/* Object__sizeof */
typedef xdc_SizeT CT__xdc_runtime_Assert_Object__sizeof;
extern "C"  const CT__xdc_runtime_Assert_Object__sizeof xdc_runtime_Assert_Object__sizeof__C;

/* Object__table */
typedef xdc_Ptr CT__xdc_runtime_Assert_Object__table;
extern "C"  const CT__xdc_runtime_Assert_Object__table xdc_runtime_Assert_Object__table__C;

/* E_assertFailed */

typedef xdc_runtime_Error_Id CT__xdc_runtime_Assert_E_assertFailed;
extern "C"  const CT__xdc_runtime_Assert_E_assertFailed xdc_runtime_Assert_E_assertFailed__C;


/*
 * ======== FUNCTION DECLARATIONS ========
 */

/* Module_startup */


/* Module__startupDone__S */

extern "C" xdc_Bool xdc_runtime_Assert_Module__startupDone__S( void );

/* raise__I */


extern "C" void xdc_runtime_Assert_raise__I( xdc_runtime_Types_ModuleId mod, xdc_CString file, xdc_Int line, xdc_runtime_Assert_Id id );


/*
 * ======== SYSTEM FUNCTIONS ========
 */

/* Module_startupDone */


/* Object_heap */


/* Module_heap */


/* Module_id */
static inline CT__xdc_runtime_Assert_Module__id xdc_runtime_Assert_Module_id( void ) 
{
    return xdc_runtime_Assert_Module__id__C;
}

/* Module_hasMask */
static inline xdc_Bool xdc_runtime_Assert_Module_hasMask( void ) 
{
    return xdc_runtime_Assert_Module__diagsMask__C != 0;
}

/* Module_getMask */
static inline xdc_Bits16 xdc_runtime_Assert_Module_getMask( void ) 
{
    return xdc_runtime_Assert_Module__diagsMask__C != 0 ? *xdc_runtime_Assert_Module__diagsMask__C : 0;
}

/* Module_setMask */
static inline void xdc_runtime_Assert_Module_setMask( xdc_Bits16 mask ) 
{
    if (xdc_runtime_Assert_Module__diagsMask__C != 0) *xdc_runtime_Assert_Module__diagsMask__C = mask;
}


/*
 * ======== EPILOGUE ========
 */

# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert__epilogue.h"
/* 
 *  Copyright (c) 2008 Texas Instruments. All rights reserved. 
 *  This program and the accompanying materials are made available under the 
 *  terms of the Eclipse Public License v1.0 and Eclipse Distribution License
 *  v. 1.0 which accompanies this distribution. The Eclipse Public License is
 *  available at http://www.eclipse.org/legal/epl-v10.html and the Eclipse
 *  Distribution License is available at 
 *  http://www.eclipse.org/org/documents/edl-v10.php.
 *
 *  Contributors:
 *      Texas Instruments - initial implementation
 * */

/*
 *  ======== xdc_runtime_Assert_getMask ========
 *  Convert an id into a mask
 */





/*
 *  ======== xdc_runtime_Assert_isTrue ========
 */
# 36 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert__epilogue.h"














/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:44; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 217 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"








/*
 * ======== STATE STRUCTURES ========
 */

# 238 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 264 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:43; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 58 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/System.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/ISystemSupport.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 52 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/ISystemSupport.h"


# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 104 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 121 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 55 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/ISystemSupport.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */


/*
 * ======== VIRTUAL FUNCTIONS ========
 */

/* Fxns__ */
struct xdc_runtime_ISystemSupport_Fxns__ {
    xdc_runtime_Types_Base* __base;
    const xdc_runtime_Types_SysFxns2 *__sysp;
    void (*abort)(xdc_CString);
    void (*exit)(xdc_Int);
    void (*flush)(void);
    void (*putch)(xdc_Char);
    xdc_Bool (*ready)(void);
    xdc_runtime_Types_SysFxns2 __sfxns;
};

/* Interface__BASE__C */
extern "C" const xdc_runtime_Types_Base xdc_runtime_ISystemSupport_Interface__BASE__C;


/*
 * ======== FUNCTION STUBS ========
 */

/* Module_id */
static inline xdc_runtime_Types_ModuleId xdc_runtime_ISystemSupport_Module_id( xdc_runtime_ISystemSupport_Module mod )
{
    return mod->__sysp->__mid;
}

/* abort */
static inline void xdc_runtime_ISystemSupport_abort( xdc_runtime_ISystemSupport_Module __inst, xdc_CString str )
{
    __inst->abort(str);
}

/* exit */
static inline void xdc_runtime_ISystemSupport_exit( xdc_runtime_ISystemSupport_Module __inst, xdc_Int stat )
{
    __inst->exit(stat);
}

/* flush */
static inline void xdc_runtime_ISystemSupport_flush( xdc_runtime_ISystemSupport_Module __inst )
{
    __inst->flush();
}

/* putch */
static inline void xdc_runtime_ISystemSupport_putch( xdc_runtime_ISystemSupport_Module __inst, xdc_Char ch )
{
    __inst->putch(ch);
}

/* ready */
static inline xdc_Bool xdc_runtime_ISystemSupport_ready( xdc_runtime_ISystemSupport_Module __inst )
{
    return __inst->ready();
}


/*
 * ======== FUNCTION SELECTORS ========
 */

/* These functions return function pointers for module and instance functions.
 * The functions accept modules and instances declared as types defined in this
 * interface, but they return functions defined for the actual objects passed
 * as parameters. These functions are not invoked by any generated code or
 * XDCtools internal code.
 */

/* abort_{FxnT,fxnP} */
typedef void (*xdc_runtime_ISystemSupport_abort_FxnT)(xdc_CString);
static inline xdc_runtime_ISystemSupport_abort_FxnT xdc_runtime_ISystemSupport_abort_fxnP( xdc_runtime_ISystemSupport_Module __inst )
{
    return (xdc_runtime_ISystemSupport_abort_FxnT)__inst->abort;
}

/* exit_{FxnT,fxnP} */
typedef void (*xdc_runtime_ISystemSupport_exit_FxnT)(xdc_Int);
static inline xdc_runtime_ISystemSupport_exit_FxnT xdc_runtime_ISystemSupport_exit_fxnP( xdc_runtime_ISystemSupport_Module __inst )
{
    return (xdc_runtime_ISystemSupport_exit_FxnT)__inst->exit;
}

/* flush_{FxnT,fxnP} */
typedef void (*xdc_runtime_ISystemSupport_flush_FxnT)(void);
static inline xdc_runtime_ISystemSupport_flush_FxnT xdc_runtime_ISystemSupport_flush_fxnP( xdc_runtime_ISystemSupport_Module __inst )
{
    return (xdc_runtime_ISystemSupport_flush_FxnT)__inst->flush;
}

/* putch_{FxnT,fxnP} */
typedef void (*xdc_runtime_ISystemSupport_putch_FxnT)(xdc_Char);
static inline xdc_runtime_ISystemSupport_putch_FxnT xdc_runtime_ISystemSupport_putch_fxnP( xdc_runtime_ISystemSupport_Module __inst )
{
    return (xdc_runtime_ISystemSupport_putch_FxnT)__inst->putch;
}

/* ready_{FxnT,fxnP} */
typedef xdc_Bool (*xdc_runtime_ISystemSupport_ready_FxnT)(void);
static inline xdc_runtime_ISystemSupport_ready_FxnT xdc_runtime_ISystemSupport_ready_fxnP( xdc_runtime_ISystemSupport_Module __inst )
{
    return (xdc_runtime_ISystemSupport_ready_FxnT)__inst->ready;
}


/*
 * ======== EPILOGUE ========
 */








/*
 * ======== PREFIX ALIASES ========
 */

# 211 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/ISystemSupport.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 59 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/System.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IGateProvider.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 192 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IGateProvider.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 227 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IGateProvider.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 60 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/System.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/package/System_SupportProxy.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     MODULE-WIDE CONFIGS
 *     VIRTUAL FUNCTIONS
 *     FUNCTION DECLARATIONS
 *     CONVERTORS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 54 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/package/System_SupportProxy.h"


# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/ISystemSupport.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 179 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/ISystemSupport.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 211 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/ISystemSupport.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 57 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/package/System_SupportProxy.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */


/*
 * ======== MODULE-WIDE CONFIGS ========
 */

/* Module__diagsEnabled */
typedef xdc_Bits32 CT__xdc_runtime_System_SupportProxy_Module__diagsEnabled;
extern "C"  const CT__xdc_runtime_System_SupportProxy_Module__diagsEnabled xdc_runtime_System_SupportProxy_Module__diagsEnabled__C;

/* Module__diagsIncluded */
typedef xdc_Bits32 CT__xdc_runtime_System_SupportProxy_Module__diagsIncluded;
extern "C"  const CT__xdc_runtime_System_SupportProxy_Module__diagsIncluded xdc_runtime_System_SupportProxy_Module__diagsIncluded__C;

/* Module__diagsMask */
typedef xdc_Bits16 *CT__xdc_runtime_System_SupportProxy_Module__diagsMask;
extern "C"  const CT__xdc_runtime_System_SupportProxy_Module__diagsMask xdc_runtime_System_SupportProxy_Module__diagsMask__C;

/* Module__gateObj */
typedef xdc_Ptr CT__xdc_runtime_System_SupportProxy_Module__gateObj;
extern "C"  const CT__xdc_runtime_System_SupportProxy_Module__gateObj xdc_runtime_System_SupportProxy_Module__gateObj__C;

/* Module__gatePrms */
typedef xdc_Ptr CT__xdc_runtime_System_SupportProxy_Module__gatePrms;
extern "C"  const CT__xdc_runtime_System_SupportProxy_Module__gatePrms xdc_runtime_System_SupportProxy_Module__gatePrms__C;

/* Module__id */
typedef xdc_runtime_Types_ModuleId CT__xdc_runtime_System_SupportProxy_Module__id;
extern "C"  const CT__xdc_runtime_System_SupportProxy_Module__id xdc_runtime_System_SupportProxy_Module__id__C;

/* Module__loggerDefined */
typedef xdc_Bool CT__xdc_runtime_System_SupportProxy_Module__loggerDefined;
extern "C"  const CT__xdc_runtime_System_SupportProxy_Module__loggerDefined xdc_runtime_System_SupportProxy_Module__loggerDefined__C;

/* Module__loggerObj */
typedef xdc_Ptr CT__xdc_runtime_System_SupportProxy_Module__loggerObj;
extern "C"  const CT__xdc_runtime_System_SupportProxy_Module__loggerObj xdc_runtime_System_SupportProxy_Module__loggerObj__C;

/* Module__loggerFxn0 */
typedef xdc_runtime_Types_LoggerFxn0 CT__xdc_runtime_System_SupportProxy_Module__loggerFxn0;
extern "C"  const CT__xdc_runtime_System_SupportProxy_Module__loggerFxn0 xdc_runtime_System_SupportProxy_Module__loggerFxn0__C;

/* Module__loggerFxn1 */
typedef xdc_runtime_Types_LoggerFxn1 CT__xdc_runtime_System_SupportProxy_Module__loggerFxn1;
extern "C"  const CT__xdc_runtime_System_SupportProxy_Module__loggerFxn1 xdc_runtime_System_SupportProxy_Module__loggerFxn1__C;

/* Module__loggerFxn2 */
typedef xdc_runtime_Types_LoggerFxn2 CT__xdc_runtime_System_SupportProxy_Module__loggerFxn2;
extern "C"  const CT__xdc_runtime_System_SupportProxy_Module__loggerFxn2 xdc_runtime_System_SupportProxy_Module__loggerFxn2__C;

/* Module__loggerFxn4 */
typedef xdc_runtime_Types_LoggerFxn4 CT__xdc_runtime_System_SupportProxy_Module__loggerFxn4;
extern "C"  const CT__xdc_runtime_System_SupportProxy_Module__loggerFxn4 xdc_runtime_System_SupportProxy_Module__loggerFxn4__C;

/* Module__loggerFxn8 */
typedef xdc_runtime_Types_LoggerFxn8 CT__xdc_runtime_System_SupportProxy_Module__loggerFxn8;
extern "C"  const CT__xdc_runtime_System_SupportProxy_Module__loggerFxn8 xdc_runtime_System_SupportProxy_Module__loggerFxn8__C;

/* Module__startupDoneFxn */
typedef xdc_Bool (*CT__xdc_runtime_System_SupportProxy_Module__startupDoneFxn)(void);
extern "C"  const CT__xdc_runtime_System_SupportProxy_Module__startupDoneFxn xdc_runtime_System_SupportProxy_Module__startupDoneFxn__C;

/* Object__count */
typedef xdc_Int CT__xdc_runtime_System_SupportProxy_Object__count;
extern "C"  const CT__xdc_runtime_System_SupportProxy_Object__count xdc_runtime_System_SupportProxy_Object__count__C;

/* Object__heap */
typedef xdc_runtime_IHeap_Handle CT__xdc_runtime_System_SupportProxy_Object__heap;
extern "C"  const CT__xdc_runtime_System_SupportProxy_Object__heap xdc_runtime_System_SupportProxy_Object__heap__C;

/* Object__sizeof */
typedef xdc_SizeT CT__xdc_runtime_System_SupportProxy_Object__sizeof;
extern "C"  const CT__xdc_runtime_System_SupportProxy_Object__sizeof xdc_runtime_System_SupportProxy_Object__sizeof__C;

/* Object__table */
typedef xdc_Ptr CT__xdc_runtime_System_SupportProxy_Object__table;
extern "C"  const CT__xdc_runtime_System_SupportProxy_Object__table xdc_runtime_System_SupportProxy_Object__table__C;


/*
 * ======== VIRTUAL FUNCTIONS ========
 */

/* Fxns__ */
struct xdc_runtime_System_SupportProxy_Fxns__ {
    xdc_runtime_Types_Base* __base;
    const xdc_runtime_Types_SysFxns2 *__sysp;
    void (*abort)(xdc_CString);
    void (*exit)(xdc_Int);
    void (*flush)(void);
    void (*putch)(xdc_Char);
    xdc_Bool (*ready)(void);
    xdc_runtime_Types_SysFxns2 __sfxns;
};

/* Module__FXNS__C */
extern "C" const xdc_runtime_System_SupportProxy_Fxns__ xdc_runtime_System_SupportProxy_Module__FXNS__C;


/*
 * ======== FUNCTION DECLARATIONS ========
 */

/* Module_startup */


/* Handle__label__S */

extern "C" xdc_runtime_Types_Label *xdc_runtime_System_SupportProxy_Handle__label__S( xdc_Ptr obj, xdc_runtime_Types_Label *lab );

/* Module__startupDone__S */

extern "C" xdc_Bool xdc_runtime_System_SupportProxy_Module__startupDone__S( void );

/* Object__create__S */

extern "C" xdc_Ptr xdc_runtime_System_SupportProxy_Object__create__S( xdc_Ptr __oa, xdc_SizeT __osz, xdc_Ptr __aa, const xdc_UChar *__pa, xdc_SizeT __psz, xdc_runtime_Error_Block *__eb );

/* Object__delete__S */

extern "C" void xdc_runtime_System_SupportProxy_Object__delete__S( xdc_Ptr instp );

/* Object__destruct__S */

extern "C" void xdc_runtime_System_SupportProxy_Object__destruct__S( xdc_Ptr objp );

/* Object__get__S */

extern "C" xdc_Ptr xdc_runtime_System_SupportProxy_Object__get__S( xdc_Ptr oarr, xdc_Int i );

/* Object__first__S */

extern "C" xdc_Ptr xdc_runtime_System_SupportProxy_Object__first__S( void );

/* Object__next__S */

extern "C" xdc_Ptr xdc_runtime_System_SupportProxy_Object__next__S( xdc_Ptr obj );

/* Params__init__S */

extern "C" void xdc_runtime_System_SupportProxy_Params__init__S( xdc_Ptr dst, const void *src, xdc_SizeT psz, xdc_SizeT isz );

/* Proxy__abstract__S */

extern "C" xdc_Bool xdc_runtime_System_SupportProxy_Proxy__abstract__S( void );

/* Proxy__delegate__S */

extern "C" xdc_Ptr xdc_runtime_System_SupportProxy_Proxy__delegate__S( void );

/* abort__E */


extern "C" void xdc_runtime_System_SupportProxy_abort__E( xdc_CString str );

/* exit__E */


extern "C" void xdc_runtime_System_SupportProxy_exit__E( xdc_Int stat );

/* flush__E */


extern "C" void xdc_runtime_System_SupportProxy_flush__E( void );

/* putch__E */


extern "C" void xdc_runtime_System_SupportProxy_putch__E( xdc_Char ch );

/* ready__E */


extern "C" xdc_Bool xdc_runtime_System_SupportProxy_ready__E( void );


/*
 * ======== CONVERTORS ========
 */

/* Module_upCast */
static inline xdc_runtime_ISystemSupport_Module xdc_runtime_System_SupportProxy_Module_upCast( void )
{
    return (xdc_runtime_ISystemSupport_Module)xdc_runtime_System_SupportProxy_Proxy__delegate__S();
}

/* Module_to_xdc_runtime_ISystemSupport */



/*
 * ======== SYSTEM FUNCTIONS ========
 */

/* Module_startupDone */


/* Object_heap */


/* Module_heap */


/* Module_id */
static inline CT__xdc_runtime_System_SupportProxy_Module__id xdc_runtime_System_SupportProxy_Module_id( void ) 
{
    return xdc_runtime_System_SupportProxy_Module__id__C;
}

/* Proxy_abstract */


/* Proxy_delegate */



/*
 * ======== EPILOGUE ========
 */








/*
 * ======== PREFIX ALIASES ========
 */

# 61 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/System.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/package/System_Module_GateProxy.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     MODULE-WIDE CONFIGS
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION DECLARATIONS
 *     CONVERTORS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 55 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/package/System_Module_GateProxy.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 132 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 155 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 56 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/package/System_Module_GateProxy.h"


# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IGateProvider.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 192 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IGateProvider.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 227 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IGateProvider.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 59 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/package/System_Module_GateProxy.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* Q_BLOCKING */


/* Q_PREEMPTING */



/*
 * ======== MODULE-WIDE CONFIGS ========
 */

/* Module__diagsEnabled */
typedef xdc_Bits32 CT__xdc_runtime_System_Module_GateProxy_Module__diagsEnabled;
extern "C"  const CT__xdc_runtime_System_Module_GateProxy_Module__diagsEnabled xdc_runtime_System_Module_GateProxy_Module__diagsEnabled__C;

/* Module__diagsIncluded */
typedef xdc_Bits32 CT__xdc_runtime_System_Module_GateProxy_Module__diagsIncluded;
extern "C"  const CT__xdc_runtime_System_Module_GateProxy_Module__diagsIncluded xdc_runtime_System_Module_GateProxy_Module__diagsIncluded__C;

/* Module__diagsMask */
typedef xdc_Bits16 *CT__xdc_runtime_System_Module_GateProxy_Module__diagsMask;
extern "C"  const CT__xdc_runtime_System_Module_GateProxy_Module__diagsMask xdc_runtime_System_Module_GateProxy_Module__diagsMask__C;

/* Module__gateObj */
typedef xdc_Ptr CT__xdc_runtime_System_Module_GateProxy_Module__gateObj;
extern "C"  const CT__xdc_runtime_System_Module_GateProxy_Module__gateObj xdc_runtime_System_Module_GateProxy_Module__gateObj__C;

/* Module__gatePrms */
typedef xdc_Ptr CT__xdc_runtime_System_Module_GateProxy_Module__gatePrms;
extern "C"  const CT__xdc_runtime_System_Module_GateProxy_Module__gatePrms xdc_runtime_System_Module_GateProxy_Module__gatePrms__C;

/* Module__id */
typedef xdc_runtime_Types_ModuleId CT__xdc_runtime_System_Module_GateProxy_Module__id;
extern "C"  const CT__xdc_runtime_System_Module_GateProxy_Module__id xdc_runtime_System_Module_GateProxy_Module__id__C;

/* Module__loggerDefined */
typedef xdc_Bool CT__xdc_runtime_System_Module_GateProxy_Module__loggerDefined;
extern "C"  const CT__xdc_runtime_System_Module_GateProxy_Module__loggerDefined xdc_runtime_System_Module_GateProxy_Module__loggerDefined__C;

/* Module__loggerObj */
typedef xdc_Ptr CT__xdc_runtime_System_Module_GateProxy_Module__loggerObj;
extern "C"  const CT__xdc_runtime_System_Module_GateProxy_Module__loggerObj xdc_runtime_System_Module_GateProxy_Module__loggerObj__C;

/* Module__loggerFxn0 */
typedef xdc_runtime_Types_LoggerFxn0 CT__xdc_runtime_System_Module_GateProxy_Module__loggerFxn0;
extern "C"  const CT__xdc_runtime_System_Module_GateProxy_Module__loggerFxn0 xdc_runtime_System_Module_GateProxy_Module__loggerFxn0__C;

/* Module__loggerFxn1 */
typedef xdc_runtime_Types_LoggerFxn1 CT__xdc_runtime_System_Module_GateProxy_Module__loggerFxn1;
extern "C"  const CT__xdc_runtime_System_Module_GateProxy_Module__loggerFxn1 xdc_runtime_System_Module_GateProxy_Module__loggerFxn1__C;

/* Module__loggerFxn2 */
typedef xdc_runtime_Types_LoggerFxn2 CT__xdc_runtime_System_Module_GateProxy_Module__loggerFxn2;
extern "C"  const CT__xdc_runtime_System_Module_GateProxy_Module__loggerFxn2 xdc_runtime_System_Module_GateProxy_Module__loggerFxn2__C;

/* Module__loggerFxn4 */
typedef xdc_runtime_Types_LoggerFxn4 CT__xdc_runtime_System_Module_GateProxy_Module__loggerFxn4;
extern "C"  const CT__xdc_runtime_System_Module_GateProxy_Module__loggerFxn4 xdc_runtime_System_Module_GateProxy_Module__loggerFxn4__C;

/* Module__loggerFxn8 */
typedef xdc_runtime_Types_LoggerFxn8 CT__xdc_runtime_System_Module_GateProxy_Module__loggerFxn8;
extern "C"  const CT__xdc_runtime_System_Module_GateProxy_Module__loggerFxn8 xdc_runtime_System_Module_GateProxy_Module__loggerFxn8__C;

/* Module__startupDoneFxn */
typedef xdc_Bool (*CT__xdc_runtime_System_Module_GateProxy_Module__startupDoneFxn)(void);
extern "C"  const CT__xdc_runtime_System_Module_GateProxy_Module__startupDoneFxn xdc_runtime_System_Module_GateProxy_Module__startupDoneFxn__C;

/* Object__count */
typedef xdc_Int CT__xdc_runtime_System_Module_GateProxy_Object__count;
extern "C"  const CT__xdc_runtime_System_Module_GateProxy_Object__count xdc_runtime_System_Module_GateProxy_Object__count__C;

/* Object__heap */
typedef xdc_runtime_IHeap_Handle CT__xdc_runtime_System_Module_GateProxy_Object__heap;
extern "C"  const CT__xdc_runtime_System_Module_GateProxy_Object__heap xdc_runtime_System_Module_GateProxy_Object__heap__C;

/* Object__sizeof */
typedef xdc_SizeT CT__xdc_runtime_System_Module_GateProxy_Object__sizeof;
extern "C"  const CT__xdc_runtime_System_Module_GateProxy_Object__sizeof xdc_runtime_System_Module_GateProxy_Object__sizeof__C;

/* Object__table */
typedef xdc_Ptr CT__xdc_runtime_System_Module_GateProxy_Object__table;
extern "C"  const CT__xdc_runtime_System_Module_GateProxy_Object__table xdc_runtime_System_Module_GateProxy_Object__table__C;


/*
 * ======== PER-INSTANCE TYPES ========
 */

/* Params */
struct xdc_runtime_System_Module_GateProxy_Params {
    size_t __size;
    const void *__self;
    void *__fxns;
    xdc_runtime_IInstance_Params *instance;
    xdc_runtime_IInstance_Params __iprms;
};

/* Struct */
struct xdc_runtime_System_Module_GateProxy_Struct {
    const xdc_runtime_System_Module_GateProxy_Fxns__ *__fxns;
    xdc_runtime_Types_CordAddr __name;
};


/*
 * ======== VIRTUAL FUNCTIONS ========
 */

/* Fxns__ */
struct xdc_runtime_System_Module_GateProxy_Fxns__ {
    xdc_runtime_Types_Base* __base;
    const xdc_runtime_Types_SysFxns2 *__sysp;
    xdc_Bool (*query)(xdc_Int);
    xdc_IArg (*enter)(xdc_runtime_System_Module_GateProxy_Handle);
    void (*leave)(xdc_runtime_System_Module_GateProxy_Handle, xdc_IArg);
    xdc_runtime_Types_SysFxns2 __sfxns;
};

/* Module__FXNS__C */
extern "C" const xdc_runtime_System_Module_GateProxy_Fxns__ xdc_runtime_System_Module_GateProxy_Module__FXNS__C;


/*
 * ======== FUNCTION DECLARATIONS ========
 */

/* Module_startup */


/* Handle__label__S */

extern "C" xdc_runtime_Types_Label *xdc_runtime_System_Module_GateProxy_Handle__label__S( xdc_Ptr obj, xdc_runtime_Types_Label *lab );

/* Module__startupDone__S */

extern "C" xdc_Bool xdc_runtime_System_Module_GateProxy_Module__startupDone__S( void );

/* Object__create__S */

extern "C" xdc_Ptr xdc_runtime_System_Module_GateProxy_Object__create__S( xdc_Ptr __oa, xdc_SizeT __osz, xdc_Ptr __aa, const xdc_UChar *__pa, xdc_SizeT __psz, xdc_runtime_Error_Block *__eb );

/* create */

extern "C" xdc_runtime_System_Module_GateProxy_Handle xdc_runtime_System_Module_GateProxy_create( const xdc_runtime_System_Module_GateProxy_Params *__prms, xdc_runtime_Error_Block *__eb );

/* Object__delete__S */

extern "C" void xdc_runtime_System_Module_GateProxy_Object__delete__S( xdc_Ptr instp );

/* delete */

extern "C" void xdc_runtime_System_Module_GateProxy_delete(xdc_runtime_System_Module_GateProxy_Handle *instp);

/* Object__destruct__S */

extern "C" void xdc_runtime_System_Module_GateProxy_Object__destruct__S( xdc_Ptr objp );

/* Object__get__S */

extern "C" xdc_Ptr xdc_runtime_System_Module_GateProxy_Object__get__S( xdc_Ptr oarr, xdc_Int i );

/* Object__first__S */

extern "C" xdc_Ptr xdc_runtime_System_Module_GateProxy_Object__first__S( void );

/* Object__next__S */

extern "C" xdc_Ptr xdc_runtime_System_Module_GateProxy_Object__next__S( xdc_Ptr obj );

/* Params__init__S */

extern "C" void xdc_runtime_System_Module_GateProxy_Params__init__S( xdc_Ptr dst, const void *src, xdc_SizeT psz, xdc_SizeT isz );

/* Proxy__abstract__S */

extern "C" xdc_Bool xdc_runtime_System_Module_GateProxy_Proxy__abstract__S( void );

/* Proxy__delegate__S */

extern "C" xdc_Ptr xdc_runtime_System_Module_GateProxy_Proxy__delegate__S( void );

/* query__E */


extern "C" xdc_Bool xdc_runtime_System_Module_GateProxy_query__E( xdc_Int qual );

/* enter__E */


extern "C" xdc_IArg xdc_runtime_System_Module_GateProxy_enter__E( xdc_runtime_System_Module_GateProxy_Handle __inst );

/* leave__E */


extern "C" void xdc_runtime_System_Module_GateProxy_leave__E( xdc_runtime_System_Module_GateProxy_Handle __inst, xdc_IArg key );


/*
 * ======== CONVERTORS ========
 */

/* Module_upCast */
static inline xdc_runtime_IGateProvider_Module xdc_runtime_System_Module_GateProxy_Module_upCast( void )
{
    return (xdc_runtime_IGateProvider_Module)xdc_runtime_System_Module_GateProxy_Proxy__delegate__S();
}

/* Module_to_xdc_runtime_IGateProvider */


/* Handle_upCast */
static inline xdc_runtime_IGateProvider_Handle xdc_runtime_System_Module_GateProxy_Handle_upCast( xdc_runtime_System_Module_GateProxy_Handle i )
{
    return (xdc_runtime_IGateProvider_Handle)i;
}

/* Handle_to_xdc_runtime_IGateProvider */


/* Handle_downCast */
static inline xdc_runtime_System_Module_GateProxy_Handle xdc_runtime_System_Module_GateProxy_Handle_downCast( xdc_runtime_IGateProvider_Handle i )
{
    xdc_runtime_IGateProvider_Handle i2 = (xdc_runtime_IGateProvider_Handle)i;
if (xdc_runtime_System_Module_GateProxy_Proxy__abstract__S()) return (xdc_runtime_System_Module_GateProxy_Handle)i;
    return (void*)i2->__fxns == (void*)xdc_runtime_System_Module_GateProxy_Proxy__delegate__S() ? (xdc_runtime_System_Module_GateProxy_Handle)i : 0;
}

/* Handle_from_xdc_runtime_IGateProvider */



/*
 * ======== SYSTEM FUNCTIONS ========
 */

/* Module_startupDone */


/* Object_heap */


/* Module_heap */


/* Module_id */
static inline CT__xdc_runtime_System_Module_GateProxy_Module__id xdc_runtime_System_Module_GateProxy_Module_id( void ) 
{
    return xdc_runtime_System_Module_GateProxy_Module__id__C;
}

/* Proxy_abstract */


/* Proxy_delegate */


/* Params_init */
static inline void xdc_runtime_System_Module_GateProxy_Params_init( xdc_runtime_System_Module_GateProxy_Params *prms ) 
{
    if (prms) {
        xdc_runtime_System_Module_GateProxy_Params__init__S(prms, 0, sizeof(xdc_runtime_System_Module_GateProxy_Params), sizeof(xdc_runtime_IInstance_Params));
    }
}

/* Params_copy */
static inline void xdc_runtime_System_Module_GateProxy_Params_copy(xdc_runtime_System_Module_GateProxy_Params *dst, const xdc_runtime_System_Module_GateProxy_Params *src) 
{
    if (dst) {
        xdc_runtime_System_Module_GateProxy_Params__init__S(dst, (const void *)src, sizeof(xdc_runtime_System_Module_GateProxy_Params), sizeof(xdc_runtime_IInstance_Params));
    }
}


/*
 * ======== EPILOGUE ========
 */








/*
 * ======== PREFIX ALIASES ========
 */

# 62 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/System.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* AtexitHandler */
typedef void (*xdc_runtime_System_AtexitHandler)(xdc_Int);

/* STATUS_UNKNOWN */


/* AbortFxn */
typedef void (*xdc_runtime_System_AbortFxn)(void);

/* ExitFxn */
typedef void (*xdc_runtime_System_ExitFxn)(xdc_Int);


/*
 * ======== INTERNAL DEFINITIONS ========
 */

/* ParseData */
struct xdc_runtime_System_ParseData {
    xdc_Int width;
    xdc_Bool lFlag;
    xdc_Bool lJust;
    xdc_Int precis;
    xdc_Int len;
    xdc_Int zpad;
    xdc_Char *end;
    xdc_Bool aFlag;
    xdc_Char *ptr;
};

/* ExtendFxn */
typedef xdc_Int (*xdc_runtime_System_ExtendFxn)(xdc_Char**, xdc_CString*, xdc_VaList*, xdc_runtime_System_ParseData*);

/* Module_State */
typedef xdc_runtime_System_AtexitHandler __T1_xdc_runtime_System_Module_State__atexitHandlers;
typedef xdc_runtime_System_AtexitHandler *__ARRAY1_xdc_runtime_System_Module_State__atexitHandlers;
typedef __ARRAY1_xdc_runtime_System_Module_State__atexitHandlers __TA_xdc_runtime_System_Module_State__atexitHandlers;


/*
 * ======== MODULE-WIDE CONFIGS ========
 */

/* Module__diagsEnabled */
typedef xdc_Bits32 CT__xdc_runtime_System_Module__diagsEnabled;
extern "C"  const CT__xdc_runtime_System_Module__diagsEnabled xdc_runtime_System_Module__diagsEnabled__C;

/* Module__diagsIncluded */
typedef xdc_Bits32 CT__xdc_runtime_System_Module__diagsIncluded;
extern "C"  const CT__xdc_runtime_System_Module__diagsIncluded xdc_runtime_System_Module__diagsIncluded__C;

/* Module__diagsMask */
typedef xdc_Bits16 *CT__xdc_runtime_System_Module__diagsMask;
extern "C"  const CT__xdc_runtime_System_Module__diagsMask xdc_runtime_System_Module__diagsMask__C;

/* Module__gateObj */
typedef xdc_Ptr CT__xdc_runtime_System_Module__gateObj;
extern "C"  const CT__xdc_runtime_System_Module__gateObj xdc_runtime_System_Module__gateObj__C;

/* Module__gatePrms */
typedef xdc_Ptr CT__xdc_runtime_System_Module__gatePrms;
extern "C"  const CT__xdc_runtime_System_Module__gatePrms xdc_runtime_System_Module__gatePrms__C;

/* Module__id */
typedef xdc_runtime_Types_ModuleId CT__xdc_runtime_System_Module__id;
extern "C"  const CT__xdc_runtime_System_Module__id xdc_runtime_System_Module__id__C;

/* Module__loggerDefined */
typedef xdc_Bool CT__xdc_runtime_System_Module__loggerDefined;
extern "C"  const CT__xdc_runtime_System_Module__loggerDefined xdc_runtime_System_Module__loggerDefined__C;

/* Module__loggerObj */
typedef xdc_Ptr CT__xdc_runtime_System_Module__loggerObj;
extern "C"  const CT__xdc_runtime_System_Module__loggerObj xdc_runtime_System_Module__loggerObj__C;

/* Module__loggerFxn0 */
typedef xdc_runtime_Types_LoggerFxn0 CT__xdc_runtime_System_Module__loggerFxn0;
extern "C"  const CT__xdc_runtime_System_Module__loggerFxn0 xdc_runtime_System_Module__loggerFxn0__C;

/* Module__loggerFxn1 */
typedef xdc_runtime_Types_LoggerFxn1 CT__xdc_runtime_System_Module__loggerFxn1;
extern "C"  const CT__xdc_runtime_System_Module__loggerFxn1 xdc_runtime_System_Module__loggerFxn1__C;

/* Module__loggerFxn2 */
typedef xdc_runtime_Types_LoggerFxn2 CT__xdc_runtime_System_Module__loggerFxn2;
extern "C"  const CT__xdc_runtime_System_Module__loggerFxn2 xdc_runtime_System_Module__loggerFxn2__C;

/* Module__loggerFxn4 */
typedef xdc_runtime_Types_LoggerFxn4 CT__xdc_runtime_System_Module__loggerFxn4;
extern "C"  const CT__xdc_runtime_System_Module__loggerFxn4 xdc_runtime_System_Module__loggerFxn4__C;

/* Module__loggerFxn8 */
typedef xdc_runtime_Types_LoggerFxn8 CT__xdc_runtime_System_Module__loggerFxn8;
extern "C"  const CT__xdc_runtime_System_Module__loggerFxn8 xdc_runtime_System_Module__loggerFxn8__C;

/* Module__startupDoneFxn */
typedef xdc_Bool (*CT__xdc_runtime_System_Module__startupDoneFxn)(void);
extern "C"  const CT__xdc_runtime_System_Module__startupDoneFxn xdc_runtime_System_Module__startupDoneFxn__C;

/* Object__count */
typedef xdc_Int CT__xdc_runtime_System_Object__count;
extern "C"  const CT__xdc_runtime_System_Object__count xdc_runtime_System_Object__count__C;

/* Object__heap */
typedef xdc_runtime_IHeap_Handle CT__xdc_runtime_System_Object__heap;
extern "C"  const CT__xdc_runtime_System_Object__heap xdc_runtime_System_Object__heap__C;

/* Object__sizeof */
typedef xdc_SizeT CT__xdc_runtime_System_Object__sizeof;
extern "C"  const CT__xdc_runtime_System_Object__sizeof xdc_runtime_System_Object__sizeof__C;

/* Object__table */
typedef xdc_Ptr CT__xdc_runtime_System_Object__table;
extern "C"  const CT__xdc_runtime_System_Object__table xdc_runtime_System_Object__table__C;

/* A_cannotFitIntoArg */

typedef xdc_runtime_Assert_Id CT__xdc_runtime_System_A_cannotFitIntoArg;
extern "C"  const CT__xdc_runtime_System_A_cannotFitIntoArg xdc_runtime_System_A_cannotFitIntoArg__C;

/* maxAtexitHandlers */




typedef xdc_Int CT__xdc_runtime_System_maxAtexitHandlers;
extern "C"  const CT__xdc_runtime_System_maxAtexitHandlers xdc_runtime_System_maxAtexitHandlers__C;


/* abortFxn */

typedef xdc_runtime_System_AbortFxn CT__xdc_runtime_System_abortFxn;
extern "C"  const CT__xdc_runtime_System_abortFxn xdc_runtime_System_abortFxn__C;

/* exitFxn */

typedef xdc_runtime_System_ExitFxn CT__xdc_runtime_System_exitFxn;
extern "C"  const CT__xdc_runtime_System_exitFxn xdc_runtime_System_exitFxn__C;

/* extendFxn */

typedef xdc_runtime_System_ExtendFxn CT__xdc_runtime_System_extendFxn;
extern "C"  const CT__xdc_runtime_System_extendFxn xdc_runtime_System_extendFxn__C;


/*
 * ======== FUNCTION DECLARATIONS ========
 */

/* Module_startup */


extern "C" xdc_Int xdc_runtime_System_Module_startup__E( xdc_Int state );

extern "C" xdc_Int xdc_runtime_System_Module_startup__F( xdc_Int state );

/* Module__startupDone__S */

extern "C" xdc_Bool xdc_runtime_System_Module__startupDone__S( void );

/* abort__E */


extern "C" void xdc_runtime_System_abort__E( xdc_CString str );

/* abortStd__E */


extern "C" void xdc_runtime_System_abortStd__E( void );

/* abortSpin__E */


extern "C" void xdc_runtime_System_abortSpin__E( void );

/* atexit__E */


extern "C" xdc_Bool xdc_runtime_System_atexit__E( xdc_runtime_System_AtexitHandler handler );

/* exit__E */


extern "C" void xdc_runtime_System_exit__E( xdc_Int stat );

/* exitStd__E */


extern "C" void xdc_runtime_System_exitStd__E( xdc_Int stat );

/* exitSpin__E */


extern "C" void xdc_runtime_System_exitSpin__E( xdc_Int stat );

/* processAtExit__E */


extern "C" void xdc_runtime_System_processAtExit__E( xdc_Int stat );

/* putch__E */


extern "C" void xdc_runtime_System_putch__E( xdc_Char ch );

/* flush__E */


extern "C" void xdc_runtime_System_flush__E( void );

/* printf__E */


extern "C" xdc_Int xdc_runtime_System_printf__E( xdc_CString fmt, ... );

extern "C" xdc_Int xdc_runtime_System_printf_va__E( xdc_CString fmt, va_list _va );

extern "C" xdc_Int xdc_runtime_System_printf_va__F( xdc_CString fmt, va_list _va );

/* aprintf__E */


extern "C" xdc_Int xdc_runtime_System_aprintf__E( xdc_CString fmt, ... );

extern "C" xdc_Int xdc_runtime_System_aprintf_va__E( xdc_CString fmt, va_list _va );

extern "C" xdc_Int xdc_runtime_System_aprintf_va__F( xdc_CString fmt, va_list _va );

/* sprintf__E */


extern "C" xdc_Int xdc_runtime_System_sprintf__E( xdc_Char buf[], xdc_CString fmt, ... );

extern "C" xdc_Int xdc_runtime_System_sprintf_va__E( xdc_Char buf[], xdc_CString fmt, va_list _va );

extern "C" xdc_Int xdc_runtime_System_sprintf_va__F( xdc_Char buf[], xdc_CString fmt, va_list _va );

/* asprintf__E */


extern "C" xdc_Int xdc_runtime_System_asprintf__E( xdc_Char buf[], xdc_CString fmt, ... );

extern "C" xdc_Int xdc_runtime_System_asprintf_va__E( xdc_Char buf[], xdc_CString fmt, va_list _va );

extern "C" xdc_Int xdc_runtime_System_asprintf_va__F( xdc_Char buf[], xdc_CString fmt, va_list _va );

/* vprintf__E */


extern "C" xdc_Int xdc_runtime_System_vprintf__E( xdc_CString fmt, xdc_VaList va );

/* avprintf__E */


extern "C" xdc_Int xdc_runtime_System_avprintf__E( xdc_CString fmt, xdc_VaList va );

/* vsprintf__E */


extern "C" xdc_Int xdc_runtime_System_vsprintf__E( xdc_Char buf[], xdc_CString fmt, xdc_VaList va );

/* avsprintf__E */


extern "C" xdc_Int xdc_runtime_System_avsprintf__E( xdc_Char buf[], xdc_CString fmt, xdc_VaList va );

/* snprintf__E */


extern "C" xdc_Int xdc_runtime_System_snprintf__E( xdc_Char buf[], xdc_SizeT n, xdc_CString fmt, ... );

extern "C" xdc_Int xdc_runtime_System_snprintf_va__E( xdc_Char buf[], xdc_SizeT n, xdc_CString fmt, va_list _va );

extern "C" xdc_Int xdc_runtime_System_snprintf_va__F( xdc_Char buf[], xdc_SizeT n, xdc_CString fmt, va_list _va );

/* vsnprintf__E */


extern "C" xdc_Int xdc_runtime_System_vsnprintf__E( xdc_Char buf[], xdc_SizeT n, xdc_CString fmt, xdc_VaList va );

/* printfExtend__I */


extern "C" xdc_Int xdc_runtime_System_printfExtend__I( xdc_Char **bufp, xdc_CString *fmt, xdc_VaList *va, xdc_runtime_System_ParseData *parse );

/* doPrint__I */


extern "C" xdc_Int xdc_runtime_System_doPrint__I( xdc_Char buf[], xdc_SizeT n, xdc_CString fmt, xdc_VaList *pva, xdc_Bool aFlag );

/* lastFxn__I */


extern "C" void xdc_runtime_System_lastFxn__I( void );

/* putchar__I */


extern "C" void xdc_runtime_System_putchar__I( xdc_Char **bufp, xdc_Char ch, xdc_SizeT *n );

/* rtsExit__I */


extern "C" void xdc_runtime_System_rtsExit__I( void );

/* atexitDone__I */


extern "C" xdc_Bool xdc_runtime_System_atexitDone__I( void );


/*
 * ======== SYSTEM FUNCTIONS ========
 */

/* Module_startupDone */


/* Object_heap */


/* Module_heap */


/* Module_id */
static inline CT__xdc_runtime_System_Module__id xdc_runtime_System_Module_id( void ) 
{
    return xdc_runtime_System_Module__id__C;
}

/* Module_hasMask */
static inline xdc_Bool xdc_runtime_System_Module_hasMask( void ) 
{
    return xdc_runtime_System_Module__diagsMask__C != 0;
}

/* Module_getMask */
static inline xdc_Bits16 xdc_runtime_System_Module_getMask( void ) 
{
    return xdc_runtime_System_Module__diagsMask__C != 0 ? *xdc_runtime_System_Module__diagsMask__C : 0;
}

/* Module_setMask */
static inline void xdc_runtime_System_Module_setMask( xdc_Bits16 mask ) 
{
    if (xdc_runtime_System_Module__diagsMask__C != 0) *xdc_runtime_System_Module__diagsMask__C = mask;
}


/*
 * ======== EPILOGUE ========
 */








/*
 * ======== STATE STRUCTURES ========
 */

# 449 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/System.h"


/*
 * ======== PREFIX ALIASES ========
 */






/* module prefix */
# 507 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/System.h"

/* proxies */
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/package/System_SupportProxy.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     MODULE-WIDE CONFIGS
 *     VIRTUAL FUNCTIONS
 *     FUNCTION DECLARATIONS
 *     CONVERTORS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 287 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/package/System_SupportProxy.h"


/*
 * ======== PREFIX ALIASES ========
 */






/* module prefix */
# 317 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/package/System_SupportProxy.h"

# 510 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/System.h"

/* proxies */
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/package/System_Module_GateProxy.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     MODULE-WIDE CONFIGS
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION DECLARATIONS
 *     CONVERTORS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/package/System_Module_GateProxy.h"


/*
 * ======== PREFIX ALIASES ========
 */






/* module prefix */
# 404 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/package/System_Module_GateProxy.h"

# 513 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/System.h"



/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 11 "../source/Leds.cpp"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/BIOS.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 54 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/BIOS.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/BIOS__prologue.h"
/*
 * Copyright (c) 2012, Texas Instruments Incorporated
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * *  Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * *  Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * *  Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

# 55 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/BIOS.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/package/package.defs.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */





/*
 * ======== module ti.sysbios.BIOS ========
 */

typedef struct ti_sysbios_BIOS_intSize ti_sysbios_BIOS_intSize;
typedef struct ti_sysbios_BIOS_Module_State ti_sysbios_BIOS_Module_State;

/*
 * ======== module ti.sysbios.BIOS_RtsGateProxy ========
 */

typedef struct ti_sysbios_BIOS_RtsGateProxy_Fxns__ ti_sysbios_BIOS_RtsGateProxy_Fxns__;
typedef const ti_sysbios_BIOS_RtsGateProxy_Fxns__* ti_sysbios_BIOS_RtsGateProxy_Module;
typedef struct ti_sysbios_BIOS_RtsGateProxy_Params ti_sysbios_BIOS_RtsGateProxy_Params;
typedef struct xdc_runtime_IGateProvider___Object *ti_sysbios_BIOS_RtsGateProxy_Handle;


# 56 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/BIOS.h"

# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 369 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 425 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 58 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/BIOS.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 59 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/BIOS.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 104 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 121 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 60 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/BIOS.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IGateProvider.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 192 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IGateProvider.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 227 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IGateProvider.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 61 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/BIOS.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/package/BIOS_RtsGateProxy.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     MODULE-WIDE CONFIGS
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION DECLARATIONS
 *     CONVERTORS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 55 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/package/BIOS_RtsGateProxy.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 132 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 155 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 56 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/package/BIOS_RtsGateProxy.h"


# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IGateProvider.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 192 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IGateProvider.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 227 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IGateProvider.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 59 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/package/BIOS_RtsGateProxy.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* Q_BLOCKING */


/* Q_PREEMPTING */



/*
 * ======== MODULE-WIDE CONFIGS ========
 */

/* Module__diagsEnabled */
typedef xdc_Bits32 CT__ti_sysbios_BIOS_RtsGateProxy_Module__diagsEnabled;
extern "C"  const CT__ti_sysbios_BIOS_RtsGateProxy_Module__diagsEnabled ti_sysbios_BIOS_RtsGateProxy_Module__diagsEnabled__C;

/* Module__diagsIncluded */
typedef xdc_Bits32 CT__ti_sysbios_BIOS_RtsGateProxy_Module__diagsIncluded;
extern "C"  const CT__ti_sysbios_BIOS_RtsGateProxy_Module__diagsIncluded ti_sysbios_BIOS_RtsGateProxy_Module__diagsIncluded__C;

/* Module__diagsMask */
typedef xdc_Bits16 *CT__ti_sysbios_BIOS_RtsGateProxy_Module__diagsMask;
extern "C"  const CT__ti_sysbios_BIOS_RtsGateProxy_Module__diagsMask ti_sysbios_BIOS_RtsGateProxy_Module__diagsMask__C;

/* Module__gateObj */
typedef xdc_Ptr CT__ti_sysbios_BIOS_RtsGateProxy_Module__gateObj;
extern "C"  const CT__ti_sysbios_BIOS_RtsGateProxy_Module__gateObj ti_sysbios_BIOS_RtsGateProxy_Module__gateObj__C;

/* Module__gatePrms */
typedef xdc_Ptr CT__ti_sysbios_BIOS_RtsGateProxy_Module__gatePrms;
extern "C"  const CT__ti_sysbios_BIOS_RtsGateProxy_Module__gatePrms ti_sysbios_BIOS_RtsGateProxy_Module__gatePrms__C;

/* Module__id */
typedef xdc_runtime_Types_ModuleId CT__ti_sysbios_BIOS_RtsGateProxy_Module__id;
extern "C"  const CT__ti_sysbios_BIOS_RtsGateProxy_Module__id ti_sysbios_BIOS_RtsGateProxy_Module__id__C;

/* Module__loggerDefined */
typedef xdc_Bool CT__ti_sysbios_BIOS_RtsGateProxy_Module__loggerDefined;
extern "C"  const CT__ti_sysbios_BIOS_RtsGateProxy_Module__loggerDefined ti_sysbios_BIOS_RtsGateProxy_Module__loggerDefined__C;

/* Module__loggerObj */
typedef xdc_Ptr CT__ti_sysbios_BIOS_RtsGateProxy_Module__loggerObj;
extern "C"  const CT__ti_sysbios_BIOS_RtsGateProxy_Module__loggerObj ti_sysbios_BIOS_RtsGateProxy_Module__loggerObj__C;

/* Module__loggerFxn0 */
typedef xdc_runtime_Types_LoggerFxn0 CT__ti_sysbios_BIOS_RtsGateProxy_Module__loggerFxn0;
extern "C"  const CT__ti_sysbios_BIOS_RtsGateProxy_Module__loggerFxn0 ti_sysbios_BIOS_RtsGateProxy_Module__loggerFxn0__C;

/* Module__loggerFxn1 */
typedef xdc_runtime_Types_LoggerFxn1 CT__ti_sysbios_BIOS_RtsGateProxy_Module__loggerFxn1;
extern "C"  const CT__ti_sysbios_BIOS_RtsGateProxy_Module__loggerFxn1 ti_sysbios_BIOS_RtsGateProxy_Module__loggerFxn1__C;

/* Module__loggerFxn2 */
typedef xdc_runtime_Types_LoggerFxn2 CT__ti_sysbios_BIOS_RtsGateProxy_Module__loggerFxn2;
extern "C"  const CT__ti_sysbios_BIOS_RtsGateProxy_Module__loggerFxn2 ti_sysbios_BIOS_RtsGateProxy_Module__loggerFxn2__C;

/* Module__loggerFxn4 */
typedef xdc_runtime_Types_LoggerFxn4 CT__ti_sysbios_BIOS_RtsGateProxy_Module__loggerFxn4;
extern "C"  const CT__ti_sysbios_BIOS_RtsGateProxy_Module__loggerFxn4 ti_sysbios_BIOS_RtsGateProxy_Module__loggerFxn4__C;

/* Module__loggerFxn8 */
typedef xdc_runtime_Types_LoggerFxn8 CT__ti_sysbios_BIOS_RtsGateProxy_Module__loggerFxn8;
extern "C"  const CT__ti_sysbios_BIOS_RtsGateProxy_Module__loggerFxn8 ti_sysbios_BIOS_RtsGateProxy_Module__loggerFxn8__C;

/* Module__startupDoneFxn */
typedef xdc_Bool (*CT__ti_sysbios_BIOS_RtsGateProxy_Module__startupDoneFxn)(void);
extern "C"  const CT__ti_sysbios_BIOS_RtsGateProxy_Module__startupDoneFxn ti_sysbios_BIOS_RtsGateProxy_Module__startupDoneFxn__C;

/* Object__count */
typedef xdc_Int CT__ti_sysbios_BIOS_RtsGateProxy_Object__count;
extern "C"  const CT__ti_sysbios_BIOS_RtsGateProxy_Object__count ti_sysbios_BIOS_RtsGateProxy_Object__count__C;

/* Object__heap */
typedef xdc_runtime_IHeap_Handle CT__ti_sysbios_BIOS_RtsGateProxy_Object__heap;
extern "C"  const CT__ti_sysbios_BIOS_RtsGateProxy_Object__heap ti_sysbios_BIOS_RtsGateProxy_Object__heap__C;

/* Object__sizeof */
typedef xdc_SizeT CT__ti_sysbios_BIOS_RtsGateProxy_Object__sizeof;
extern "C"  const CT__ti_sysbios_BIOS_RtsGateProxy_Object__sizeof ti_sysbios_BIOS_RtsGateProxy_Object__sizeof__C;

/* Object__table */
typedef xdc_Ptr CT__ti_sysbios_BIOS_RtsGateProxy_Object__table;
extern "C"  const CT__ti_sysbios_BIOS_RtsGateProxy_Object__table ti_sysbios_BIOS_RtsGateProxy_Object__table__C;


/*
 * ======== PER-INSTANCE TYPES ========
 */

/* Params */
struct ti_sysbios_BIOS_RtsGateProxy_Params {
    size_t __size;
    const void *__self;
    void *__fxns;
    xdc_runtime_IInstance_Params *instance;
    xdc_runtime_IInstance_Params __iprms;
};

/* Struct */
struct ti_sysbios_BIOS_RtsGateProxy_Struct {
    const ti_sysbios_BIOS_RtsGateProxy_Fxns__ *__fxns;
    xdc_runtime_Types_CordAddr __name;
};


/*
 * ======== VIRTUAL FUNCTIONS ========
 */

/* Fxns__ */
struct ti_sysbios_BIOS_RtsGateProxy_Fxns__ {
    xdc_runtime_Types_Base* __base;
    const xdc_runtime_Types_SysFxns2 *__sysp;
    xdc_Bool (*query)(xdc_Int);
    xdc_IArg (*enter)(ti_sysbios_BIOS_RtsGateProxy_Handle);
    void (*leave)(ti_sysbios_BIOS_RtsGateProxy_Handle, xdc_IArg);
    xdc_runtime_Types_SysFxns2 __sfxns;
};

/* Module__FXNS__C */
extern "C" const ti_sysbios_BIOS_RtsGateProxy_Fxns__ ti_sysbios_BIOS_RtsGateProxy_Module__FXNS__C;


/*
 * ======== FUNCTION DECLARATIONS ========
 */

/* Module_startup */


/* Handle__label__S */

extern "C" xdc_runtime_Types_Label *ti_sysbios_BIOS_RtsGateProxy_Handle__label__S( xdc_Ptr obj, xdc_runtime_Types_Label *lab );

/* Module__startupDone__S */

extern "C" xdc_Bool ti_sysbios_BIOS_RtsGateProxy_Module__startupDone__S( void );

/* Object__create__S */

extern "C" xdc_Ptr ti_sysbios_BIOS_RtsGateProxy_Object__create__S( xdc_Ptr __oa, xdc_SizeT __osz, xdc_Ptr __aa, const xdc_UChar *__pa, xdc_SizeT __psz, xdc_runtime_Error_Block *__eb );

/* create */

extern "C" ti_sysbios_BIOS_RtsGateProxy_Handle ti_sysbios_BIOS_RtsGateProxy_create( const ti_sysbios_BIOS_RtsGateProxy_Params *__prms, xdc_runtime_Error_Block *__eb );

/* Object__delete__S */

extern "C" void ti_sysbios_BIOS_RtsGateProxy_Object__delete__S( xdc_Ptr instp );

/* delete */

extern "C" void ti_sysbios_BIOS_RtsGateProxy_delete(ti_sysbios_BIOS_RtsGateProxy_Handle *instp);

/* Object__destruct__S */

extern "C" void ti_sysbios_BIOS_RtsGateProxy_Object__destruct__S( xdc_Ptr objp );

/* Object__get__S */

extern "C" xdc_Ptr ti_sysbios_BIOS_RtsGateProxy_Object__get__S( xdc_Ptr oarr, xdc_Int i );

/* Object__first__S */

extern "C" xdc_Ptr ti_sysbios_BIOS_RtsGateProxy_Object__first__S( void );

/* Object__next__S */

extern "C" xdc_Ptr ti_sysbios_BIOS_RtsGateProxy_Object__next__S( xdc_Ptr obj );

/* Params__init__S */

extern "C" void ti_sysbios_BIOS_RtsGateProxy_Params__init__S( xdc_Ptr dst, const void *src, xdc_SizeT psz, xdc_SizeT isz );

/* Proxy__abstract__S */

extern "C" xdc_Bool ti_sysbios_BIOS_RtsGateProxy_Proxy__abstract__S( void );

/* Proxy__delegate__S */

extern "C" xdc_Ptr ti_sysbios_BIOS_RtsGateProxy_Proxy__delegate__S( void );

/* query__E */


extern "C" xdc_Bool ti_sysbios_BIOS_RtsGateProxy_query__E( xdc_Int qual );

/* enter__E */


extern "C" xdc_IArg ti_sysbios_BIOS_RtsGateProxy_enter__E( ti_sysbios_BIOS_RtsGateProxy_Handle __inst );

/* leave__E */


extern "C" void ti_sysbios_BIOS_RtsGateProxy_leave__E( ti_sysbios_BIOS_RtsGateProxy_Handle __inst, xdc_IArg key );


/*
 * ======== CONVERTORS ========
 */

/* Module_upCast */
static inline xdc_runtime_IGateProvider_Module ti_sysbios_BIOS_RtsGateProxy_Module_upCast( void )
{
    return (xdc_runtime_IGateProvider_Module)ti_sysbios_BIOS_RtsGateProxy_Proxy__delegate__S();
}

/* Module_to_xdc_runtime_IGateProvider */


/* Handle_upCast */
static inline xdc_runtime_IGateProvider_Handle ti_sysbios_BIOS_RtsGateProxy_Handle_upCast( ti_sysbios_BIOS_RtsGateProxy_Handle i )
{
    return (xdc_runtime_IGateProvider_Handle)i;
}

/* Handle_to_xdc_runtime_IGateProvider */


/* Handle_downCast */
static inline ti_sysbios_BIOS_RtsGateProxy_Handle ti_sysbios_BIOS_RtsGateProxy_Handle_downCast( xdc_runtime_IGateProvider_Handle i )
{
    xdc_runtime_IGateProvider_Handle i2 = (xdc_runtime_IGateProvider_Handle)i;
if (ti_sysbios_BIOS_RtsGateProxy_Proxy__abstract__S()) return (ti_sysbios_BIOS_RtsGateProxy_Handle)i;
    return (void*)i2->__fxns == (void*)ti_sysbios_BIOS_RtsGateProxy_Proxy__delegate__S() ? (ti_sysbios_BIOS_RtsGateProxy_Handle)i : 0;
}

/* Handle_from_xdc_runtime_IGateProvider */



/*
 * ======== SYSTEM FUNCTIONS ========
 */

/* Module_startupDone */


/* Object_heap */


/* Module_heap */


/* Module_id */
static inline CT__ti_sysbios_BIOS_RtsGateProxy_Module__id ti_sysbios_BIOS_RtsGateProxy_Module_id( void ) 
{
    return ti_sysbios_BIOS_RtsGateProxy_Module__id__C;
}

/* Proxy_abstract */


/* Proxy_delegate */


/* Params_init */
static inline void ti_sysbios_BIOS_RtsGateProxy_Params_init( ti_sysbios_BIOS_RtsGateProxy_Params *prms ) 
{
    if (prms) {
        ti_sysbios_BIOS_RtsGateProxy_Params__init__S(prms, 0, sizeof(ti_sysbios_BIOS_RtsGateProxy_Params), sizeof(xdc_runtime_IInstance_Params));
    }
}

/* Params_copy */
static inline void ti_sysbios_BIOS_RtsGateProxy_Params_copy(ti_sysbios_BIOS_RtsGateProxy_Params *dst, const ti_sysbios_BIOS_RtsGateProxy_Params *src) 
{
    if (dst) {
        ti_sysbios_BIOS_RtsGateProxy_Params__init__S(dst, (const void *)src, sizeof(ti_sysbios_BIOS_RtsGateProxy_Params), sizeof(xdc_runtime_IInstance_Params));
    }
}


/*
 * ======== EPILOGUE ========
 */








/*
 * ======== PREFIX ALIASES ========
 */

# 62 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/BIOS.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* ThreadType */
enum ti_sysbios_BIOS_ThreadType {
    ti_sysbios_BIOS_ThreadType_Hwi,
    ti_sysbios_BIOS_ThreadType_Swi,
    ti_sysbios_BIOS_ThreadType_Task,
    ti_sysbios_BIOS_ThreadType_Main
};
typedef enum ti_sysbios_BIOS_ThreadType ti_sysbios_BIOS_ThreadType;

/* RtsLockType */
enum ti_sysbios_BIOS_RtsLockType {
    ti_sysbios_BIOS_NoLocking,
    ti_sysbios_BIOS_GateHwi,
    ti_sysbios_BIOS_GateSwi,
    ti_sysbios_BIOS_GateMutex,
    ti_sysbios_BIOS_GateMutexPri
};
typedef enum ti_sysbios_BIOS_RtsLockType ti_sysbios_BIOS_RtsLockType;

/* LibType */
enum ti_sysbios_BIOS_LibType {
    ti_sysbios_BIOS_LibType_Instrumented,
    ti_sysbios_BIOS_LibType_NonInstrumented,
    ti_sysbios_BIOS_LibType_Custom,
    ti_sysbios_BIOS_LibType_Debug
};
typedef enum ti_sysbios_BIOS_LibType ti_sysbios_BIOS_LibType;

/* WAIT_FOREVER */


/* NO_WAIT */


/* StartupFuncPtr */
typedef void (*ti_sysbios_BIOS_StartupFuncPtr)(void);

/* version */



/*
 * ======== INTERNAL DEFINITIONS ========
 */

/* intSize */
struct ti_sysbios_BIOS_intSize {
    xdc_Int intSize;
};

/* StartFuncPtr */
typedef void (*ti_sysbios_BIOS_StartFuncPtr)(void);

/* ExitFuncPtr */
typedef void (*ti_sysbios_BIOS_ExitFuncPtr)(xdc_Int);

/* Module_State */
typedef ti_sysbios_BIOS_ThreadType __T1_ti_sysbios_BIOS_Module_State__smpThreadType;
typedef ti_sysbios_BIOS_ThreadType *__ARRAY1_ti_sysbios_BIOS_Module_State__smpThreadType;
typedef __ARRAY1_ti_sysbios_BIOS_Module_State__smpThreadType __TA_ti_sysbios_BIOS_Module_State__smpThreadType;


/*
 * ======== MODULE-WIDE CONFIGS ========
 */

/* Module__diagsEnabled */
typedef xdc_Bits32 CT__ti_sysbios_BIOS_Module__diagsEnabled;
extern "C"  const CT__ti_sysbios_BIOS_Module__diagsEnabled ti_sysbios_BIOS_Module__diagsEnabled__C;

/* Module__diagsIncluded */
typedef xdc_Bits32 CT__ti_sysbios_BIOS_Module__diagsIncluded;
extern "C"  const CT__ti_sysbios_BIOS_Module__diagsIncluded ti_sysbios_BIOS_Module__diagsIncluded__C;

/* Module__diagsMask */
typedef xdc_Bits16 *CT__ti_sysbios_BIOS_Module__diagsMask;
extern "C"  const CT__ti_sysbios_BIOS_Module__diagsMask ti_sysbios_BIOS_Module__diagsMask__C;

/* Module__gateObj */
typedef xdc_Ptr CT__ti_sysbios_BIOS_Module__gateObj;
extern "C"  const CT__ti_sysbios_BIOS_Module__gateObj ti_sysbios_BIOS_Module__gateObj__C;

/* Module__gatePrms */
typedef xdc_Ptr CT__ti_sysbios_BIOS_Module__gatePrms;
extern "C"  const CT__ti_sysbios_BIOS_Module__gatePrms ti_sysbios_BIOS_Module__gatePrms__C;

/* Module__id */
typedef xdc_runtime_Types_ModuleId CT__ti_sysbios_BIOS_Module__id;
extern "C"  const CT__ti_sysbios_BIOS_Module__id ti_sysbios_BIOS_Module__id__C;

/* Module__loggerDefined */
typedef xdc_Bool CT__ti_sysbios_BIOS_Module__loggerDefined;
extern "C"  const CT__ti_sysbios_BIOS_Module__loggerDefined ti_sysbios_BIOS_Module__loggerDefined__C;

/* Module__loggerObj */
typedef xdc_Ptr CT__ti_sysbios_BIOS_Module__loggerObj;
extern "C"  const CT__ti_sysbios_BIOS_Module__loggerObj ti_sysbios_BIOS_Module__loggerObj__C;

/* Module__loggerFxn0 */
typedef xdc_runtime_Types_LoggerFxn0 CT__ti_sysbios_BIOS_Module__loggerFxn0;
extern "C"  const CT__ti_sysbios_BIOS_Module__loggerFxn0 ti_sysbios_BIOS_Module__loggerFxn0__C;

/* Module__loggerFxn1 */
typedef xdc_runtime_Types_LoggerFxn1 CT__ti_sysbios_BIOS_Module__loggerFxn1;
extern "C"  const CT__ti_sysbios_BIOS_Module__loggerFxn1 ti_sysbios_BIOS_Module__loggerFxn1__C;

/* Module__loggerFxn2 */
typedef xdc_runtime_Types_LoggerFxn2 CT__ti_sysbios_BIOS_Module__loggerFxn2;
extern "C"  const CT__ti_sysbios_BIOS_Module__loggerFxn2 ti_sysbios_BIOS_Module__loggerFxn2__C;

/* Module__loggerFxn4 */
typedef xdc_runtime_Types_LoggerFxn4 CT__ti_sysbios_BIOS_Module__loggerFxn4;
extern "C"  const CT__ti_sysbios_BIOS_Module__loggerFxn4 ti_sysbios_BIOS_Module__loggerFxn4__C;

/* Module__loggerFxn8 */
typedef xdc_runtime_Types_LoggerFxn8 CT__ti_sysbios_BIOS_Module__loggerFxn8;
extern "C"  const CT__ti_sysbios_BIOS_Module__loggerFxn8 ti_sysbios_BIOS_Module__loggerFxn8__C;

/* Module__startupDoneFxn */
typedef xdc_Bool (*CT__ti_sysbios_BIOS_Module__startupDoneFxn)(void);
extern "C"  const CT__ti_sysbios_BIOS_Module__startupDoneFxn ti_sysbios_BIOS_Module__startupDoneFxn__C;

/* Object__count */
typedef xdc_Int CT__ti_sysbios_BIOS_Object__count;
extern "C"  const CT__ti_sysbios_BIOS_Object__count ti_sysbios_BIOS_Object__count__C;

/* Object__heap */
typedef xdc_runtime_IHeap_Handle CT__ti_sysbios_BIOS_Object__heap;
extern "C"  const CT__ti_sysbios_BIOS_Object__heap ti_sysbios_BIOS_Object__heap__C;

/* Object__sizeof */
typedef xdc_SizeT CT__ti_sysbios_BIOS_Object__sizeof;
extern "C"  const CT__ti_sysbios_BIOS_Object__sizeof ti_sysbios_BIOS_Object__sizeof__C;

/* Object__table */
typedef xdc_Ptr CT__ti_sysbios_BIOS_Object__table;
extern "C"  const CT__ti_sysbios_BIOS_Object__table ti_sysbios_BIOS_Object__table__C;

/* smpEnabled */




typedef xdc_Bool CT__ti_sysbios_BIOS_smpEnabled;
extern "C"  const CT__ti_sysbios_BIOS_smpEnabled ti_sysbios_BIOS_smpEnabled__C;


/* cpuFreq */

typedef xdc_runtime_Types_FreqHz CT__ti_sysbios_BIOS_cpuFreq;
extern "C"  const CT__ti_sysbios_BIOS_cpuFreq ti_sysbios_BIOS_cpuFreq__C;

/* runtimeCreatesEnabled */




typedef xdc_Bool CT__ti_sysbios_BIOS_runtimeCreatesEnabled;
extern "C"  const CT__ti_sysbios_BIOS_runtimeCreatesEnabled ti_sysbios_BIOS_runtimeCreatesEnabled__C;


/* taskEnabled */




typedef xdc_Bool CT__ti_sysbios_BIOS_taskEnabled;
extern "C"  const CT__ti_sysbios_BIOS_taskEnabled ti_sysbios_BIOS_taskEnabled__C;


/* swiEnabled */




typedef xdc_Bool CT__ti_sysbios_BIOS_swiEnabled;
extern "C"  const CT__ti_sysbios_BIOS_swiEnabled ti_sysbios_BIOS_swiEnabled__C;


/* clockEnabled */




typedef xdc_Bool CT__ti_sysbios_BIOS_clockEnabled;
extern "C"  const CT__ti_sysbios_BIOS_clockEnabled ti_sysbios_BIOS_clockEnabled__C;


/* heapSize */




typedef xdc_SizeT CT__ti_sysbios_BIOS_heapSize;
extern "C"  const CT__ti_sysbios_BIOS_heapSize ti_sysbios_BIOS_heapSize__C;


/* heapSection */

typedef xdc_String CT__ti_sysbios_BIOS_heapSection;
extern "C"  const CT__ti_sysbios_BIOS_heapSection ti_sysbios_BIOS_heapSection__C;

/* heapTrackEnabled */




typedef xdc_Bool CT__ti_sysbios_BIOS_heapTrackEnabled;
extern "C"  const CT__ti_sysbios_BIOS_heapTrackEnabled ti_sysbios_BIOS_heapTrackEnabled__C;


/* setupSecureContext */




typedef xdc_Bool CT__ti_sysbios_BIOS_setupSecureContext;
extern "C"  const CT__ti_sysbios_BIOS_setupSecureContext ti_sysbios_BIOS_setupSecureContext__C;


/* useSK */




typedef xdc_Bool CT__ti_sysbios_BIOS_useSK;
extern "C"  const CT__ti_sysbios_BIOS_useSK ti_sysbios_BIOS_useSK__C;


/* installedErrorHook */

typedef void (*CT__ti_sysbios_BIOS_installedErrorHook)(xdc_runtime_Error_Block*);
extern "C"  const CT__ti_sysbios_BIOS_installedErrorHook ti_sysbios_BIOS_installedErrorHook__C;


/*
 * ======== FUNCTION DECLARATIONS ========
 */

/* Module_startup */


/* Module__startupDone__S */

extern "C" xdc_Bool ti_sysbios_BIOS_Module__startupDone__S( void );

/* start__E */


extern "C" void ti_sysbios_BIOS_start__E( void );

/* exit__E */


extern "C" void ti_sysbios_BIOS_exit__E( xdc_Int stat );

/* getThreadType__E */


extern "C" ti_sysbios_BIOS_ThreadType ti_sysbios_BIOS_getThreadType__E( void );

/* setThreadType__E */


extern "C" ti_sysbios_BIOS_ThreadType ti_sysbios_BIOS_setThreadType__E( ti_sysbios_BIOS_ThreadType ttype );

/* setCpuFreq__E */


extern "C" void ti_sysbios_BIOS_setCpuFreq__E( xdc_runtime_Types_FreqHz *freq );

/* getCpuFreq__E */


extern "C" void ti_sysbios_BIOS_getCpuFreq__E( xdc_runtime_Types_FreqHz *freq );

/* errorRaiseHook__I */


extern "C" void ti_sysbios_BIOS_errorRaiseHook__I( xdc_runtime_Error_Block *eb );

/* startFunc__I */


extern "C" void ti_sysbios_BIOS_startFunc__I( void );

/* atExitFunc__I */


extern "C" void ti_sysbios_BIOS_atExitFunc__I( xdc_Int stat );

/* exitFunc__I */


extern "C" void ti_sysbios_BIOS_exitFunc__I( xdc_Int stat );

/* registerRTSLock__I */


extern "C" void ti_sysbios_BIOS_registerRTSLock__I( void );

/* removeRTSLock__I */


extern "C" void ti_sysbios_BIOS_removeRTSLock__I( void );

/* rtsLock__I */


extern "C" void ti_sysbios_BIOS_rtsLock__I( void );

/* rtsUnlock__I */


extern "C" void ti_sysbios_BIOS_rtsUnlock__I( void );

/* nullFunc__I */


extern "C" void ti_sysbios_BIOS_nullFunc__I( void );


/*
 * ======== SYSTEM FUNCTIONS ========
 */

/* Module_startupDone */


/* Object_heap */


/* Module_heap */


/* Module_id */
static inline CT__ti_sysbios_BIOS_Module__id ti_sysbios_BIOS_Module_id( void ) 
{
    return ti_sysbios_BIOS_Module__id__C;
}

/* Module_hasMask */
static inline xdc_Bool ti_sysbios_BIOS_Module_hasMask( void ) 
{
    return ti_sysbios_BIOS_Module__diagsMask__C != 0;
}

/* Module_getMask */
static inline xdc_Bits16 ti_sysbios_BIOS_Module_getMask( void ) 
{
    return ti_sysbios_BIOS_Module__diagsMask__C != 0 ? *ti_sysbios_BIOS_Module__diagsMask__C : 0;
}

/* Module_setMask */
static inline void ti_sysbios_BIOS_Module_setMask( xdc_Bits16 mask ) 
{
    if (ti_sysbios_BIOS_Module__diagsMask__C != 0) *ti_sysbios_BIOS_Module__diagsMask__C = mask;
}


/*
 * ======== EPILOGUE ========
 */

# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/BIOS__epilogue.h"
/*
 * Copyright (c) 2012, Texas Instruments Incorporated
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * *  Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * *  Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * *  Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */







# 433 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/BIOS.h"








/*
 * ======== STATE STRUCTURES ========
 */

# 468 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/BIOS.h"


/*
 * ======== PREFIX ALIASES ========
 */






/* module prefix */
# 531 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/BIOS.h"

/* proxies */
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/package/BIOS_RtsGateProxy.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     MODULE-WIDE CONFIGS
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION DECLARATIONS
 *     CONVERTORS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/package/BIOS_RtsGateProxy.h"


/*
 * ======== PREFIX ALIASES ========
 */






/* module prefix */
# 404 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/package/BIOS_RtsGateProxy.h"

# 534 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/BIOS.h"

# 12 "../source/Leds.cpp"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Task.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     CREATE ARGS
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     PER-INSTANCE TYPES
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 56 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Task.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 132 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 155 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 57 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Task.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Task__prologue.h"
/*
 * Copyright (c) 2012, Texas Instruments Incorporated
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * *  Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * *  Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * *  Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

# 58 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Task.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/package/package.defs.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */





/*
 * ======== module ti.sysbios.knl.Clock ========
 */

typedef struct ti_sysbios_knl_Clock_Module_State ti_sysbios_knl_Clock_Module_State;
typedef struct ti_sysbios_knl_Clock_Params ti_sysbios_knl_Clock_Params;
typedef struct ti_sysbios_knl_Clock_Object ti_sysbios_knl_Clock_Object;
typedef struct ti_sysbios_knl_Clock_Struct ti_sysbios_knl_Clock_Struct;
typedef ti_sysbios_knl_Clock_Object* ti_sysbios_knl_Clock_Handle;
typedef struct ti_sysbios_knl_Clock_Object__ ti_sysbios_knl_Clock_Instance_State;
typedef ti_sysbios_knl_Clock_Object* ti_sysbios_knl_Clock_Instance;

/*
 * ======== module ti.sysbios.knl.Idle ========
 */


/*
 * ======== module ti.sysbios.knl.Intrinsics ========
 */

typedef struct ti_sysbios_knl_Intrinsics_Fxns__ ti_sysbios_knl_Intrinsics_Fxns__;
typedef const ti_sysbios_knl_Intrinsics_Fxns__* ti_sysbios_knl_Intrinsics_Module;

/*
 * ======== module ti.sysbios.knl.Event ========
 */

typedef struct ti_sysbios_knl_Event_PendElem ti_sysbios_knl_Event_PendElem;
typedef struct ti_sysbios_knl_Event_Params ti_sysbios_knl_Event_Params;
typedef struct ti_sysbios_knl_Event_Object ti_sysbios_knl_Event_Object;
typedef struct ti_sysbios_knl_Event_Struct ti_sysbios_knl_Event_Struct;
typedef ti_sysbios_knl_Event_Object* ti_sysbios_knl_Event_Handle;
typedef struct ti_sysbios_knl_Event_Object__ ti_sysbios_knl_Event_Instance_State;
typedef ti_sysbios_knl_Event_Object* ti_sysbios_knl_Event_Instance;

/*
 * ======== module ti.sysbios.knl.Mailbox ========
 */

typedef struct ti_sysbios_knl_Mailbox_MbxElem ti_sysbios_knl_Mailbox_MbxElem;
typedef struct ti_sysbios_knl_Mailbox_Params ti_sysbios_knl_Mailbox_Params;
typedef struct ti_sysbios_knl_Mailbox_Object ti_sysbios_knl_Mailbox_Object;
typedef struct ti_sysbios_knl_Mailbox_Struct ti_sysbios_knl_Mailbox_Struct;
typedef ti_sysbios_knl_Mailbox_Object* ti_sysbios_knl_Mailbox_Handle;
typedef struct ti_sysbios_knl_Mailbox_Object__ ti_sysbios_knl_Mailbox_Instance_State;
typedef ti_sysbios_knl_Mailbox_Object* ti_sysbios_knl_Mailbox_Instance;

/*
 * ======== module ti.sysbios.knl.Queue ========
 */

typedef struct ti_sysbios_knl_Queue_Elem ti_sysbios_knl_Queue_Elem;
typedef struct ti_sysbios_knl_Queue_Params ti_sysbios_knl_Queue_Params;
typedef struct ti_sysbios_knl_Queue_Object ti_sysbios_knl_Queue_Object;
typedef struct ti_sysbios_knl_Queue_Struct ti_sysbios_knl_Queue_Struct;
typedef ti_sysbios_knl_Queue_Object* ti_sysbios_knl_Queue_Handle;
typedef struct ti_sysbios_knl_Queue_Object__ ti_sysbios_knl_Queue_Instance_State;
typedef ti_sysbios_knl_Queue_Object* ti_sysbios_knl_Queue_Instance;

/*
 * ======== module ti.sysbios.knl.Semaphore ========
 */

typedef struct ti_sysbios_knl_Semaphore_PendElem ti_sysbios_knl_Semaphore_PendElem;
typedef struct ti_sysbios_knl_Semaphore_Params ti_sysbios_knl_Semaphore_Params;
typedef struct ti_sysbios_knl_Semaphore_Object ti_sysbios_knl_Semaphore_Object;
typedef struct ti_sysbios_knl_Semaphore_Struct ti_sysbios_knl_Semaphore_Struct;
typedef ti_sysbios_knl_Semaphore_Object* ti_sysbios_knl_Semaphore_Handle;
typedef struct ti_sysbios_knl_Semaphore_Object__ ti_sysbios_knl_Semaphore_Instance_State;
typedef ti_sysbios_knl_Semaphore_Object* ti_sysbios_knl_Semaphore_Instance;

/*
 * ======== module ti.sysbios.knl.Swi ========
 */

typedef struct ti_sysbios_knl_Swi_HookSet ti_sysbios_knl_Swi_HookSet;
typedef struct ti_sysbios_knl_Swi_Module_State ti_sysbios_knl_Swi_Module_State;
typedef struct ti_sysbios_knl_Swi_Params ti_sysbios_knl_Swi_Params;
typedef struct ti_sysbios_knl_Swi_Object ti_sysbios_knl_Swi_Object;
typedef struct ti_sysbios_knl_Swi_Struct ti_sysbios_knl_Swi_Struct;
typedef ti_sysbios_knl_Swi_Object* ti_sysbios_knl_Swi_Handle;
typedef struct ti_sysbios_knl_Swi_Object__ ti_sysbios_knl_Swi_Instance_State;
typedef ti_sysbios_knl_Swi_Object* ti_sysbios_knl_Swi_Instance;

/*
 * ======== module ti.sysbios.knl.Task ========
 */

typedef struct ti_sysbios_knl_Task_Stat ti_sysbios_knl_Task_Stat;
typedef struct ti_sysbios_knl_Task_HookSet ti_sysbios_knl_Task_HookSet;
typedef struct ti_sysbios_knl_Task_PendElem ti_sysbios_knl_Task_PendElem;
typedef struct ti_sysbios_knl_Task_Module_State ti_sysbios_knl_Task_Module_State;
typedef struct ti_sysbios_knl_Task_RunQEntry ti_sysbios_knl_Task_RunQEntry;
typedef struct ti_sysbios_knl_Task_Module_StateSmp ti_sysbios_knl_Task_Module_StateSmp;
typedef struct ti_sysbios_knl_Task_Params ti_sysbios_knl_Task_Params;
typedef struct ti_sysbios_knl_Task_Object ti_sysbios_knl_Task_Object;
typedef struct ti_sysbios_knl_Task_Struct ti_sysbios_knl_Task_Struct;
typedef ti_sysbios_knl_Task_Object* ti_sysbios_knl_Task_Handle;
typedef struct ti_sysbios_knl_Task_Object__ ti_sysbios_knl_Task_Instance_State;
typedef ti_sysbios_knl_Task_Object* ti_sysbios_knl_Task_Instance;

/*
 * ======== module ti.sysbios.knl.Clock_TimerProxy ========
 */

typedef struct ti_sysbios_knl_Clock_TimerProxy_Fxns__ ti_sysbios_knl_Clock_TimerProxy_Fxns__;
typedef const ti_sysbios_knl_Clock_TimerProxy_Fxns__* ti_sysbios_knl_Clock_TimerProxy_Module;
typedef struct ti_sysbios_knl_Clock_TimerProxy_Params ti_sysbios_knl_Clock_TimerProxy_Params;
typedef struct ti_sysbios_interfaces_ITimer___Object *ti_sysbios_knl_Clock_TimerProxy_Handle;

/*
 * ======== module ti.sysbios.knl.Intrinsics_SupportProxy ========
 */

typedef struct ti_sysbios_knl_Intrinsics_SupportProxy_Fxns__ ti_sysbios_knl_Intrinsics_SupportProxy_Fxns__;
typedef const ti_sysbios_knl_Intrinsics_SupportProxy_Fxns__* ti_sysbios_knl_Intrinsics_SupportProxy_Module;

/*
 * ======== module ti.sysbios.knl.Task_SupportProxy ========
 */

typedef struct ti_sysbios_knl_Task_SupportProxy_Fxns__ ti_sysbios_knl_Task_SupportProxy_Fxns__;
typedef const ti_sysbios_knl_Task_SupportProxy_Fxns__* ti_sysbios_knl_Task_SupportProxy_Module;


# 59 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Task.h"

# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 369 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 425 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 61 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Task.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 223 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 238 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 264 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:43; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 62 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Task.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 315 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 330 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 389 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 63 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Task.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 54 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log__prologue.h"
/* 
 *  Copyright (c) 2008 Texas Instruments. All rights reserved. 
 *  This program and the accompanying materials are made available under the 
 *  terms of the Eclipse Public License v1.0 and Eclipse Distribution License
 *  v. 1.0 which accompanies this distribution. The Eclipse Public License is
 *  available at http://www.eclipse.org/legal/epl-v10.html and the Eclipse
 *  Distribution License is available at 
 *  http://www.eclipse.org/org/documents/edl-v10.php.
 *
 *  Contributors:
 *      Texas Instruments - initial implementation
 * */
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 369 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 425 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 14 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log__prologue.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Main.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 207 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Main.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 222 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Main.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 248 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Main.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:47; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 15 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log__prologue.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 315 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 330 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 389 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 16 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log__prologue.h"

/*
 *  ======== xdc_runtime_Log_Event ========
 *  Log_Event is an encoded type.  Log Events are encoded on the target as
 *  a 32-bit value:
 *
 *      | format rope | module ID or mask |
 *      | 31 ----- 16 | 15 ------------ 0 |
 *
 *  The lower 16-bits contain either a mask or a module ID; when the event
 *  is statically declared this field has a mask, when the event is passed
 *  to an ILogger this field is the module ID of the module that generated
 *  the event.
 *
 *  The upper 16-bits are an ID (rope) that that identifies the format
 *  string to use to render the event (and its arguments).
 */
typedef xdc_Bits32 xdc_runtime_Log_Event;

/*
 *  The following macros establish xdc.runtime.Main as the "default"
 *  module for all sources files not part of a module.
 *
 *      Module__MID     - the module's ID (see Text.xs)
 *      Module__LOGOBJ  - the module's logger object
 *      Module__LOGFXN0 - the module's logger's write0 function
 *      Module__LOGFXN1 - the module's logger's write1 function
 *      Module__LOGFXN2 - the module's logger's write2 function
 *      Module__LOGFXN4 - the module's logger's write4 function
 *      Module__LOGFXN8 - the module's logger's write8 function
 *      Module__LOGDEF  - 0 if the module has a logger, non-zero otherwise
 *
 *  Only define these symbols for xdc.runtime.Main if this file is not one that
 *  will be included in the Registry. This check ensures that Registry.h (which
 *  similarly defines these Module__* symbols) can be included in any order
 *  relative to other xdc.runtime headers.
 */

 
# 69 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log__prologue.h"





/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:47; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 55 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"


# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 104 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 121 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 58 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 315 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 330 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 389 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 59 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 60 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Text.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 54 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Text.h"


# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 104 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 121 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 57 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Text.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 58 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Text.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* CordAddr */
typedef xdc_runtime_Types_CordAddr xdc_runtime_Text_CordAddr;

/* Label */
typedef xdc_runtime_Types_Label xdc_runtime_Text_Label;

/* RopeId */
typedef xdc_runtime_Types_RopeId xdc_runtime_Text_RopeId;


/*
 * ======== INTERNAL DEFINITIONS ========
 */

/* Node */
struct xdc_runtime_Text_Node {
    xdc_runtime_Types_RopeId left;
    xdc_runtime_Types_RopeId right;
};

/* RopeVisitor */
typedef xdc_Bool (*xdc_runtime_Text_RopeVisitor)(xdc_Ptr, xdc_String);

/* MatchVisState */
struct xdc_runtime_Text_MatchVisState {
    xdc_CString pat;
    xdc_Int *lenp;
    xdc_Int res;
};

/* PrintVisState */
struct xdc_runtime_Text_PrintVisState {
    xdc_Char **bufp;
    xdc_Int len;
    xdc_Int res;
};

/* VisitRopeFxn */
typedef void (*xdc_runtime_Text_VisitRopeFxn)(xdc_runtime_Text_RopeId, xdc_Fxn, xdc_Ptr);

/* VisitRopeFxn2 */
typedef void (*xdc_runtime_Text_VisitRopeFxn2)(xdc_runtime_Text_RopeId, xdc_Fxn, xdc_Ptr, xdc_String[]);


/*
 * ======== MODULE-WIDE CONFIGS ========
 */

/* Module__diagsEnabled */
typedef xdc_Bits32 CT__xdc_runtime_Text_Module__diagsEnabled;
extern "C"  const CT__xdc_runtime_Text_Module__diagsEnabled xdc_runtime_Text_Module__diagsEnabled__C;

/* Module__diagsIncluded */
typedef xdc_Bits32 CT__xdc_runtime_Text_Module__diagsIncluded;
extern "C"  const CT__xdc_runtime_Text_Module__diagsIncluded xdc_runtime_Text_Module__diagsIncluded__C;

/* Module__diagsMask */
typedef xdc_Bits16 *CT__xdc_runtime_Text_Module__diagsMask;
extern "C"  const CT__xdc_runtime_Text_Module__diagsMask xdc_runtime_Text_Module__diagsMask__C;

/* Module__gateObj */
typedef xdc_Ptr CT__xdc_runtime_Text_Module__gateObj;
extern "C"  const CT__xdc_runtime_Text_Module__gateObj xdc_runtime_Text_Module__gateObj__C;

/* Module__gatePrms */
typedef xdc_Ptr CT__xdc_runtime_Text_Module__gatePrms;
extern "C"  const CT__xdc_runtime_Text_Module__gatePrms xdc_runtime_Text_Module__gatePrms__C;

/* Module__id */
typedef xdc_runtime_Types_ModuleId CT__xdc_runtime_Text_Module__id;
extern "C"  const CT__xdc_runtime_Text_Module__id xdc_runtime_Text_Module__id__C;

/* Module__loggerDefined */
typedef xdc_Bool CT__xdc_runtime_Text_Module__loggerDefined;
extern "C"  const CT__xdc_runtime_Text_Module__loggerDefined xdc_runtime_Text_Module__loggerDefined__C;

/* Module__loggerObj */
typedef xdc_Ptr CT__xdc_runtime_Text_Module__loggerObj;
extern "C"  const CT__xdc_runtime_Text_Module__loggerObj xdc_runtime_Text_Module__loggerObj__C;

/* Module__loggerFxn0 */
typedef xdc_runtime_Types_LoggerFxn0 CT__xdc_runtime_Text_Module__loggerFxn0;
extern "C"  const CT__xdc_runtime_Text_Module__loggerFxn0 xdc_runtime_Text_Module__loggerFxn0__C;

/* Module__loggerFxn1 */
typedef xdc_runtime_Types_LoggerFxn1 CT__xdc_runtime_Text_Module__loggerFxn1;
extern "C"  const CT__xdc_runtime_Text_Module__loggerFxn1 xdc_runtime_Text_Module__loggerFxn1__C;

/* Module__loggerFxn2 */
typedef xdc_runtime_Types_LoggerFxn2 CT__xdc_runtime_Text_Module__loggerFxn2;
extern "C"  const CT__xdc_runtime_Text_Module__loggerFxn2 xdc_runtime_Text_Module__loggerFxn2__C;

/* Module__loggerFxn4 */
typedef xdc_runtime_Types_LoggerFxn4 CT__xdc_runtime_Text_Module__loggerFxn4;
extern "C"  const CT__xdc_runtime_Text_Module__loggerFxn4 xdc_runtime_Text_Module__loggerFxn4__C;

/* Module__loggerFxn8 */
typedef xdc_runtime_Types_LoggerFxn8 CT__xdc_runtime_Text_Module__loggerFxn8;
extern "C"  const CT__xdc_runtime_Text_Module__loggerFxn8 xdc_runtime_Text_Module__loggerFxn8__C;

/* Module__startupDoneFxn */
typedef xdc_Bool (*CT__xdc_runtime_Text_Module__startupDoneFxn)(void);
extern "C"  const CT__xdc_runtime_Text_Module__startupDoneFxn xdc_runtime_Text_Module__startupDoneFxn__C;

/* Object__count */
typedef xdc_Int CT__xdc_runtime_Text_Object__count;
extern "C"  const CT__xdc_runtime_Text_Object__count xdc_runtime_Text_Object__count__C;

/* Object__heap */
typedef xdc_runtime_IHeap_Handle CT__xdc_runtime_Text_Object__heap;
extern "C"  const CT__xdc_runtime_Text_Object__heap xdc_runtime_Text_Object__heap__C;

/* Object__sizeof */
typedef xdc_SizeT CT__xdc_runtime_Text_Object__sizeof;
extern "C"  const CT__xdc_runtime_Text_Object__sizeof xdc_runtime_Text_Object__sizeof__C;

/* Object__table */
typedef xdc_Ptr CT__xdc_runtime_Text_Object__table;
extern "C"  const CT__xdc_runtime_Text_Object__table xdc_runtime_Text_Object__table__C;

/* nameUnknown */

typedef xdc_String CT__xdc_runtime_Text_nameUnknown;
extern "C"  const CT__xdc_runtime_Text_nameUnknown xdc_runtime_Text_nameUnknown__C;

/* nameEmpty */

typedef xdc_String CT__xdc_runtime_Text_nameEmpty;
extern "C"  const CT__xdc_runtime_Text_nameEmpty xdc_runtime_Text_nameEmpty__C;

/* nameStatic */

typedef xdc_String CT__xdc_runtime_Text_nameStatic;
extern "C"  const CT__xdc_runtime_Text_nameStatic xdc_runtime_Text_nameStatic__C;

/* isLoaded */




typedef xdc_Bool CT__xdc_runtime_Text_isLoaded;
extern "C"  const CT__xdc_runtime_Text_isLoaded xdc_runtime_Text_isLoaded__C;


/* charTab */

typedef xdc_Char __T1_xdc_runtime_Text_charTab;
typedef xdc_Char *__ARRAY1_xdc_runtime_Text_charTab;
typedef __ARRAY1_xdc_runtime_Text_charTab __TA_xdc_runtime_Text_charTab;
typedef __TA_xdc_runtime_Text_charTab CT__xdc_runtime_Text_charTab;
extern "C"  const CT__xdc_runtime_Text_charTab xdc_runtime_Text_charTab__C;

/* nodeTab */

typedef xdc_runtime_Text_Node __T1_xdc_runtime_Text_nodeTab;
typedef xdc_runtime_Text_Node *__ARRAY1_xdc_runtime_Text_nodeTab;
typedef __ARRAY1_xdc_runtime_Text_nodeTab __TA_xdc_runtime_Text_nodeTab;
typedef __TA_xdc_runtime_Text_nodeTab CT__xdc_runtime_Text_nodeTab;
extern "C"  const CT__xdc_runtime_Text_nodeTab xdc_runtime_Text_nodeTab__C;

/* charCnt */




typedef xdc_Int16 CT__xdc_runtime_Text_charCnt;
extern "C"  const CT__xdc_runtime_Text_charCnt xdc_runtime_Text_charCnt__C;


/* nodeCnt */




typedef xdc_Int16 CT__xdc_runtime_Text_nodeCnt;
extern "C"  const CT__xdc_runtime_Text_nodeCnt xdc_runtime_Text_nodeCnt__C;


/* unnamedModsLastId */




typedef xdc_UInt16 CT__xdc_runtime_Text_unnamedModsLastId;
extern "C"  const CT__xdc_runtime_Text_unnamedModsLastId xdc_runtime_Text_unnamedModsLastId__C;


/* registryModsLastId */




typedef xdc_UInt16 CT__xdc_runtime_Text_registryModsLastId;
extern "C"  const CT__xdc_runtime_Text_registryModsLastId xdc_runtime_Text_registryModsLastId__C;


/* visitRopeFxn */

typedef xdc_runtime_Text_VisitRopeFxn CT__xdc_runtime_Text_visitRopeFxn;
extern "C"  const CT__xdc_runtime_Text_visitRopeFxn xdc_runtime_Text_visitRopeFxn__C;

/* visitRopeFxn2 */

typedef xdc_runtime_Text_VisitRopeFxn2 CT__xdc_runtime_Text_visitRopeFxn2;
extern "C"  const CT__xdc_runtime_Text_visitRopeFxn2 xdc_runtime_Text_visitRopeFxn2__C;


/*
 * ======== FUNCTION DECLARATIONS ========
 */

/* Module_startup */


/* Module__startupDone__S */

extern "C" xdc_Bool xdc_runtime_Text_Module__startupDone__S( void );

/* cordText__E */


extern "C" xdc_String xdc_runtime_Text_cordText__E( xdc_runtime_Text_CordAddr cord );

/* ropeText__E */


extern "C" xdc_String xdc_runtime_Text_ropeText__E( xdc_runtime_Text_RopeId rope );

/* matchRope__E */


extern "C" xdc_Int xdc_runtime_Text_matchRope__E( xdc_runtime_Text_RopeId rope, xdc_CString pat, xdc_Int *lenp );

/* putLab__E */


extern "C" xdc_Int xdc_runtime_Text_putLab__E( xdc_runtime_Types_Label *lab, xdc_Char **bufp, xdc_Int len );

/* putMod__E */


extern "C" xdc_Int xdc_runtime_Text_putMod__E( xdc_runtime_Types_ModuleId mid, xdc_Char **bufp, xdc_Int len );

/* putSite__E */


extern "C" xdc_Int xdc_runtime_Text_putSite__E( xdc_runtime_Types_Site *site, xdc_Char **bufp, xdc_Int len );

/* matchVisFxn__I */


extern "C" xdc_Bool xdc_runtime_Text_matchVisFxn__I( xdc_Ptr p, xdc_CString s );

/* printVisFxn__I */


extern "C" xdc_Bool xdc_runtime_Text_printVisFxn__I( xdc_Ptr p, xdc_CString s );

/* visitRope__I */


extern "C" void xdc_runtime_Text_visitRope__I( xdc_runtime_Text_RopeId rope, xdc_Fxn visFxn, xdc_Ptr visState );

/* visitRope2__I */


extern "C" void xdc_runtime_Text_visitRope2__I( xdc_runtime_Text_RopeId rope, xdc_Fxn visFxn, xdc_Ptr visState, xdc_String stack[] );

/* xprintf__I */


extern "C" xdc_Int xdc_runtime_Text_xprintf__I( xdc_Char **bufp, xdc_SizeT len, xdc_CString fmt, ... );


/*
 * ======== SYSTEM FUNCTIONS ========
 */

/* Module_startupDone */


/* Object_heap */


/* Module_heap */


/* Module_id */
static inline CT__xdc_runtime_Text_Module__id xdc_runtime_Text_Module_id( void ) 
{
    return xdc_runtime_Text_Module__id__C;
}

/* Module_hasMask */
static inline xdc_Bool xdc_runtime_Text_Module_hasMask( void ) 
{
    return xdc_runtime_Text_Module__diagsMask__C != 0;
}

/* Module_getMask */
static inline xdc_Bits16 xdc_runtime_Text_Module_getMask( void ) 
{
    return xdc_runtime_Text_Module__diagsMask__C != 0 ? *xdc_runtime_Text_Module__diagsMask__C : 0;
}

/* Module_setMask */
static inline void xdc_runtime_Text_Module_setMask( xdc_Bits16 mask ) 
{
    if (xdc_runtime_Text_Module__diagsMask__C != 0) *xdc_runtime_Text_Module__diagsMask__C = mask;
}


/*
 * ======== EPILOGUE ========
 */








/*
 * ======== STATE STRUCTURES ========
 */

# 408 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Text.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 460 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Text.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 61 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* NUMARGS */


/* PRINTFID */


/* EventRec */
typedef xdc_IArg __T1_xdc_runtime_Log_EventRec__arg;
typedef xdc_IArg __ARRAY1_xdc_runtime_Log_EventRec__arg[8];
typedef __ARRAY1_xdc_runtime_Log_EventRec__arg __TA_xdc_runtime_Log_EventRec__arg;
struct xdc_runtime_Log_EventRec {
    xdc_runtime_Types_Timestamp64 tstamp;
    xdc_Bits32 serial;
    xdc_runtime_Types_Event evt;
    __TA_xdc_runtime_Log_EventRec__arg arg;
};

/* Event */

/* EventId */
typedef xdc_runtime_Types_RopeId xdc_runtime_Log_EventId;


/*
 * ======== INTERNAL DEFINITIONS ========
 */


/*
 * ======== MODULE-WIDE CONFIGS ========
 */

/* Module__diagsEnabled */
typedef xdc_Bits32 CT__xdc_runtime_Log_Module__diagsEnabled;
extern "C"  const CT__xdc_runtime_Log_Module__diagsEnabled xdc_runtime_Log_Module__diagsEnabled__C;

/* Module__diagsIncluded */
typedef xdc_Bits32 CT__xdc_runtime_Log_Module__diagsIncluded;
extern "C"  const CT__xdc_runtime_Log_Module__diagsIncluded xdc_runtime_Log_Module__diagsIncluded__C;

/* Module__diagsMask */
typedef xdc_Bits16 *CT__xdc_runtime_Log_Module__diagsMask;
extern "C"  const CT__xdc_runtime_Log_Module__diagsMask xdc_runtime_Log_Module__diagsMask__C;

/* Module__gateObj */
typedef xdc_Ptr CT__xdc_runtime_Log_Module__gateObj;
extern "C"  const CT__xdc_runtime_Log_Module__gateObj xdc_runtime_Log_Module__gateObj__C;

/* Module__gatePrms */
typedef xdc_Ptr CT__xdc_runtime_Log_Module__gatePrms;
extern "C"  const CT__xdc_runtime_Log_Module__gatePrms xdc_runtime_Log_Module__gatePrms__C;

/* Module__id */
typedef xdc_runtime_Types_ModuleId CT__xdc_runtime_Log_Module__id;
extern "C"  const CT__xdc_runtime_Log_Module__id xdc_runtime_Log_Module__id__C;

/* Module__loggerDefined */
typedef xdc_Bool CT__xdc_runtime_Log_Module__loggerDefined;
extern "C"  const CT__xdc_runtime_Log_Module__loggerDefined xdc_runtime_Log_Module__loggerDefined__C;

/* Module__loggerObj */
typedef xdc_Ptr CT__xdc_runtime_Log_Module__loggerObj;
extern "C"  const CT__xdc_runtime_Log_Module__loggerObj xdc_runtime_Log_Module__loggerObj__C;

/* Module__loggerFxn0 */
typedef xdc_runtime_Types_LoggerFxn0 CT__xdc_runtime_Log_Module__loggerFxn0;
extern "C"  const CT__xdc_runtime_Log_Module__loggerFxn0 xdc_runtime_Log_Module__loggerFxn0__C;

/* Module__loggerFxn1 */
typedef xdc_runtime_Types_LoggerFxn1 CT__xdc_runtime_Log_Module__loggerFxn1;
extern "C"  const CT__xdc_runtime_Log_Module__loggerFxn1 xdc_runtime_Log_Module__loggerFxn1__C;

/* Module__loggerFxn2 */
typedef xdc_runtime_Types_LoggerFxn2 CT__xdc_runtime_Log_Module__loggerFxn2;
extern "C"  const CT__xdc_runtime_Log_Module__loggerFxn2 xdc_runtime_Log_Module__loggerFxn2__C;

/* Module__loggerFxn4 */
typedef xdc_runtime_Types_LoggerFxn4 CT__xdc_runtime_Log_Module__loggerFxn4;
extern "C"  const CT__xdc_runtime_Log_Module__loggerFxn4 xdc_runtime_Log_Module__loggerFxn4__C;

/* Module__loggerFxn8 */
typedef xdc_runtime_Types_LoggerFxn8 CT__xdc_runtime_Log_Module__loggerFxn8;
extern "C"  const CT__xdc_runtime_Log_Module__loggerFxn8 xdc_runtime_Log_Module__loggerFxn8__C;

/* Module__startupDoneFxn */
typedef xdc_Bool (*CT__xdc_runtime_Log_Module__startupDoneFxn)(void);
extern "C"  const CT__xdc_runtime_Log_Module__startupDoneFxn xdc_runtime_Log_Module__startupDoneFxn__C;

/* Object__count */
typedef xdc_Int CT__xdc_runtime_Log_Object__count;
extern "C"  const CT__xdc_runtime_Log_Object__count xdc_runtime_Log_Object__count__C;

/* Object__heap */
typedef xdc_runtime_IHeap_Handle CT__xdc_runtime_Log_Object__heap;
extern "C"  const CT__xdc_runtime_Log_Object__heap xdc_runtime_Log_Object__heap__C;

/* Object__sizeof */
typedef xdc_SizeT CT__xdc_runtime_Log_Object__sizeof;
extern "C"  const CT__xdc_runtime_Log_Object__sizeof xdc_runtime_Log_Object__sizeof__C;

/* Object__table */
typedef xdc_Ptr CT__xdc_runtime_Log_Object__table;
extern "C"  const CT__xdc_runtime_Log_Object__table xdc_runtime_Log_Object__table__C;

/* L_construct */

typedef xdc_runtime_Log_Event CT__xdc_runtime_Log_L_construct;
extern "C"  const CT__xdc_runtime_Log_L_construct xdc_runtime_Log_L_construct__C;

/* L_create */

typedef xdc_runtime_Log_Event CT__xdc_runtime_Log_L_create;
extern "C"  const CT__xdc_runtime_Log_L_create xdc_runtime_Log_L_create__C;

/* L_destruct */

typedef xdc_runtime_Log_Event CT__xdc_runtime_Log_L_destruct;
extern "C"  const CT__xdc_runtime_Log_L_destruct xdc_runtime_Log_L_destruct__C;

/* L_delete */

typedef xdc_runtime_Log_Event CT__xdc_runtime_Log_L_delete;
extern "C"  const CT__xdc_runtime_Log_L_delete xdc_runtime_Log_L_delete__C;

/* L_error */

typedef xdc_runtime_Log_Event CT__xdc_runtime_Log_L_error;
extern "C"  const CT__xdc_runtime_Log_L_error xdc_runtime_Log_L_error__C;

/* L_warning */

typedef xdc_runtime_Log_Event CT__xdc_runtime_Log_L_warning;
extern "C"  const CT__xdc_runtime_Log_L_warning xdc_runtime_Log_L_warning__C;

/* L_info */

typedef xdc_runtime_Log_Event CT__xdc_runtime_Log_L_info;
extern "C"  const CT__xdc_runtime_Log_L_info xdc_runtime_Log_L_info__C;

/* L_start */

typedef xdc_runtime_Log_Event CT__xdc_runtime_Log_L_start;
extern "C"  const CT__xdc_runtime_Log_L_start xdc_runtime_Log_L_start__C;

/* L_stop */

typedef xdc_runtime_Log_Event CT__xdc_runtime_Log_L_stop;
extern "C"  const CT__xdc_runtime_Log_L_stop xdc_runtime_Log_L_stop__C;

/* L_startInstance */

typedef xdc_runtime_Log_Event CT__xdc_runtime_Log_L_startInstance;
extern "C"  const CT__xdc_runtime_Log_L_startInstance xdc_runtime_Log_L_startInstance__C;

/* L_stopInstance */

typedef xdc_runtime_Log_Event CT__xdc_runtime_Log_L_stopInstance;
extern "C"  const CT__xdc_runtime_Log_L_stopInstance xdc_runtime_Log_L_stopInstance__C;


/*
 * ======== FUNCTION DECLARATIONS ========
 */

/* Module_startup */


/* Module__startupDone__S */

extern "C" xdc_Bool xdc_runtime_Log_Module__startupDone__S( void );

/* doPrint__E */


extern "C" void xdc_runtime_Log_doPrint__E( xdc_runtime_Log_EventRec *evRec );


/*
 * ======== SYSTEM FUNCTIONS ========
 */

/* Module_startupDone */


/* Object_heap */


/* Module_heap */


/* Module_id */
static inline CT__xdc_runtime_Log_Module__id xdc_runtime_Log_Module_id( void ) 
{
    return xdc_runtime_Log_Module__id__C;
}

/* Module_hasMask */
static inline xdc_Bool xdc_runtime_Log_Module_hasMask( void ) 
{
    return xdc_runtime_Log_Module__diagsMask__C != 0;
}

/* Module_getMask */
static inline xdc_Bits16 xdc_runtime_Log_Module_getMask( void ) 
{
    return xdc_runtime_Log_Module__diagsMask__C != 0 ? *xdc_runtime_Log_Module__diagsMask__C : 0;
}

/* Module_setMask */
static inline void xdc_runtime_Log_Module_setMask( xdc_Bits16 mask ) 
{
    if (xdc_runtime_Log_Module__diagsMask__C != 0) *xdc_runtime_Log_Module__diagsMask__C = mask;
}


/*
 * ======== EPILOGUE ========
 */

# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log__epilogue.h"
/* 
 *  Copyright (c) 2008 Texas Instruments. All rights reserved. 
 *  This program and the accompanying materials are made available under the 
 *  terms of the Eclipse Public License v1.0 and Eclipse Distribution License
 *  v. 1.0 which accompanies this distribution. The Eclipse Public License is
 *  available at http://www.eclipse.org/legal/epl-v10.html and the Eclipse
 *  Distribution License is available at 
 *  http://www.eclipse.org/org/documents/edl-v10.php.
 *
 *  Contributors:
 *      Texas Instruments - initial implementation
 * */

/*
 *  ======== Log__epilogue.h ========
 *  Implementation of the Log_* macros
 *
 *  The implementation below relies on eight symbols defined by every module
 *  header.  Each of these symbols is a reference to a constant defined in a
 *  separate compilation unit.  The values of these constants are as follows:
 *
 *      Module__MID     - the module's ID (see Text.xs)
 *      Module__LOGOBJ  - the module's logger instance object
 *      Module__LOGFXN0 - the module's logger's write0 function
 *      Module__LOGFXN1 - the module's logger's write1 function 
 *      Module__LOGFXN2 - the module's logger's write2 function
 *      Module__LOGFXN4 - the module's logger's write4 function
 *      Module__LOGFXN8 - the module's logger's write8 function
 *      Module__LOGDEF  - 0 if the module has a logger, non-zero otherwise
 */

/*
 *  Define flags for compiling out all Log calls
 *
 *  The intent of these flags is to allow users to completely optimize logging
 *  out of their code even when not using whole program optimization. This is
 *  implemented by controlling the definitions of the Log macros. This will
 *  only affect code compiled with the flag(s) set, so it will not disable 
 *  logging in any precompiled libraries.
 *
 *  The DISABLE_ALL flag will have the effect of disabling all Log put, write, 
 *  print, error, warning, and info log calls. The flag just has to be defined,
 *  we give it a value of zero or one to use in the macros.
 *
 *  There are additional flags which can be used to disable all log calls
 *  "except for". We use the presence of the DISABLE_ALL flag and the presence
 *  of any ENABLE_ERROR, ENABLE_INFO, or ENABLE_WARNING flags to compute the
 *  value of ENABLE_ERROR, etc., as zero or one.
 *
 *  We ensure that all of the flags are ultimately defined and given a zero or
 *  one value. Then the macro definitions are conditional on the value of the
 *  appropriate flag.
 */

/* 
 * If DISABLE_ALL is defined, give it the value 1, and assign values to all
 * of the ENABLE flags based on whether they've been defined or not.
 */
# 91 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log__epilogue.h"

/*
 *  ======== xdc_runtime_Log_getMask ========
 */


/*
 *  ======== xdc_runtime_Log_getRope ========
 */


/*
 *  ======== xdc_runtime_Log_getEventId ========
 */



/*
 *  ======== xdc_runtime_Log_doPut* ========
 *  The 'doPut' macros are the real implementation of the Log_put* APIs.
 *  The Log_put* macros are just stubs which point to these definitions. We do
 *  this so that we can disable the Log_put* APIs but still leave their
 *  functionality available for any other Log macros which use them. 
 *
 *  For example, if the flags DISABLE_ALL and ENABLE_ERROR are set, we want
 *  to disable the Log_put* macros, but not the Log_error* macros which are
 *  also built on top of these 'doPut' macros.
 */















   
/*
 *  ======== xdc_runtime_Log_put* ========
 *  See Log_doPut*
 */

















# 165 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log__epilogue.h"

/*
 *  ======== xdc_runtime_Log_doWrite* ========
 *  The real implementations of the Log_write* APIs. See Log_doPut* for an
 *  explanation of why we stub-out the Log_put* and Log_write* APIs.
 */





    




     




    









# 202 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log__epilogue.h"







/*
 *  ======== xdc_runtime_Log_write* ========
 *  See Log_doWrite*
 */

 


    


    


    








    


    





    
# 255 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log__epilogue.h"
  
/*
 *  ======== xdc_runtime_Log_print* ========
 *  Since "print" events do not have a rope, we use 0 (an invalid rope value)
 *  as the event Id and construct a Log_Event to pass to Log_put. This has the 
 *  benefit that the Log_Event is equal to just the mask: (0 | mask). For this 
 *  reason, we simply pass the 'mask' as the first argument to 'put'.
 *
 *  Each print function is mapped to a call to appropriate 'put' function.
 *  print0 -> put1
 *  print1 -> put2
 *  print2 -> print3 -> put4
 *  print3 -> put4
 *  print4 -> print6 -> put8
 *  print5 -> print6 -> put8
 *  print6 -> put8
 */

 




    




    




















# 315 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log__epilogue.h"

/*
 *  ======== xdc_runtime_Log_error* ========
 *  Log an error event
 */

 


        





    
# 337 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log__epilogue.h"
    
# 344 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log__epilogue.h"

# 355 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log__epilogue.h"
    
/*
 *  ======== xdc_runtime_Log_warning* ========
 *  Log a warning event
 */

 


    





    
# 377 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log__epilogue.h"
    
# 384 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log__epilogue.h"

# 395 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log__epilogue.h"
    
/*
 *  ======== xdc_runtime_Log_info* ========
 *  Log an informational event
 */




    





    
# 417 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log__epilogue.h"
    
# 424 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log__epilogue.h"

# 435 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log__epilogue.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:47; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 287 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"








/*
 * ======== STATE STRUCTURES ========
 */

# 308 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 390 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:47; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 64 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Task.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IHeap.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 202 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IHeap.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 238 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IHeap.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 65 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Task.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Queue.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     PER-INSTANCE TYPES
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 55 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Queue.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 132 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 155 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 56 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Queue.h"


# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 104 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 121 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 59 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Queue.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* Elem */
struct ti_sysbios_knl_Queue_Elem {
    ti_sysbios_knl_Queue_Elem *volatile next;
    ti_sysbios_knl_Queue_Elem *volatile prev;
};


/*
 * ======== INTERNAL DEFINITIONS ========
 */


/*
 * ======== MODULE-WIDE CONFIGS ========
 */

/* Module__diagsEnabled */
typedef xdc_Bits32 CT__ti_sysbios_knl_Queue_Module__diagsEnabled;
extern "C"  const CT__ti_sysbios_knl_Queue_Module__diagsEnabled ti_sysbios_knl_Queue_Module__diagsEnabled__C;

/* Module__diagsIncluded */
typedef xdc_Bits32 CT__ti_sysbios_knl_Queue_Module__diagsIncluded;
extern "C"  const CT__ti_sysbios_knl_Queue_Module__diagsIncluded ti_sysbios_knl_Queue_Module__diagsIncluded__C;

/* Module__diagsMask */
typedef xdc_Bits16 *CT__ti_sysbios_knl_Queue_Module__diagsMask;
extern "C"  const CT__ti_sysbios_knl_Queue_Module__diagsMask ti_sysbios_knl_Queue_Module__diagsMask__C;

/* Module__gateObj */
typedef xdc_Ptr CT__ti_sysbios_knl_Queue_Module__gateObj;
extern "C"  const CT__ti_sysbios_knl_Queue_Module__gateObj ti_sysbios_knl_Queue_Module__gateObj__C;

/* Module__gatePrms */
typedef xdc_Ptr CT__ti_sysbios_knl_Queue_Module__gatePrms;
extern "C"  const CT__ti_sysbios_knl_Queue_Module__gatePrms ti_sysbios_knl_Queue_Module__gatePrms__C;

/* Module__id */
typedef xdc_runtime_Types_ModuleId CT__ti_sysbios_knl_Queue_Module__id;
extern "C"  const CT__ti_sysbios_knl_Queue_Module__id ti_sysbios_knl_Queue_Module__id__C;

/* Module__loggerDefined */
typedef xdc_Bool CT__ti_sysbios_knl_Queue_Module__loggerDefined;
extern "C"  const CT__ti_sysbios_knl_Queue_Module__loggerDefined ti_sysbios_knl_Queue_Module__loggerDefined__C;

/* Module__loggerObj */
typedef xdc_Ptr CT__ti_sysbios_knl_Queue_Module__loggerObj;
extern "C"  const CT__ti_sysbios_knl_Queue_Module__loggerObj ti_sysbios_knl_Queue_Module__loggerObj__C;

/* Module__loggerFxn0 */
typedef xdc_runtime_Types_LoggerFxn0 CT__ti_sysbios_knl_Queue_Module__loggerFxn0;
extern "C"  const CT__ti_sysbios_knl_Queue_Module__loggerFxn0 ti_sysbios_knl_Queue_Module__loggerFxn0__C;

/* Module__loggerFxn1 */
typedef xdc_runtime_Types_LoggerFxn1 CT__ti_sysbios_knl_Queue_Module__loggerFxn1;
extern "C"  const CT__ti_sysbios_knl_Queue_Module__loggerFxn1 ti_sysbios_knl_Queue_Module__loggerFxn1__C;

/* Module__loggerFxn2 */
typedef xdc_runtime_Types_LoggerFxn2 CT__ti_sysbios_knl_Queue_Module__loggerFxn2;
extern "C"  const CT__ti_sysbios_knl_Queue_Module__loggerFxn2 ti_sysbios_knl_Queue_Module__loggerFxn2__C;

/* Module__loggerFxn4 */
typedef xdc_runtime_Types_LoggerFxn4 CT__ti_sysbios_knl_Queue_Module__loggerFxn4;
extern "C"  const CT__ti_sysbios_knl_Queue_Module__loggerFxn4 ti_sysbios_knl_Queue_Module__loggerFxn4__C;

/* Module__loggerFxn8 */
typedef xdc_runtime_Types_LoggerFxn8 CT__ti_sysbios_knl_Queue_Module__loggerFxn8;
extern "C"  const CT__ti_sysbios_knl_Queue_Module__loggerFxn8 ti_sysbios_knl_Queue_Module__loggerFxn8__C;

/* Module__startupDoneFxn */
typedef xdc_Bool (*CT__ti_sysbios_knl_Queue_Module__startupDoneFxn)(void);
extern "C"  const CT__ti_sysbios_knl_Queue_Module__startupDoneFxn ti_sysbios_knl_Queue_Module__startupDoneFxn__C;

/* Object__count */
typedef xdc_Int CT__ti_sysbios_knl_Queue_Object__count;
extern "C"  const CT__ti_sysbios_knl_Queue_Object__count ti_sysbios_knl_Queue_Object__count__C;

/* Object__heap */
typedef xdc_runtime_IHeap_Handle CT__ti_sysbios_knl_Queue_Object__heap;
extern "C"  const CT__ti_sysbios_knl_Queue_Object__heap ti_sysbios_knl_Queue_Object__heap__C;

/* Object__sizeof */
typedef xdc_SizeT CT__ti_sysbios_knl_Queue_Object__sizeof;
extern "C"  const CT__ti_sysbios_knl_Queue_Object__sizeof ti_sysbios_knl_Queue_Object__sizeof__C;

/* Object__table */
typedef xdc_Ptr CT__ti_sysbios_knl_Queue_Object__table;
extern "C"  const CT__ti_sysbios_knl_Queue_Object__table ti_sysbios_knl_Queue_Object__table__C;


/*
 * ======== PER-INSTANCE TYPES ========
 */

/* Params */
struct ti_sysbios_knl_Queue_Params {
    size_t __size;
    const void *__self;
    void *__fxns;
    xdc_runtime_IInstance_Params *instance;
    xdc_runtime_IInstance_Params __iprms;
};

/* Struct */
struct ti_sysbios_knl_Queue_Struct {
    ti_sysbios_knl_Queue_Elem __f0;
    xdc_runtime_Types_CordAddr __name;
};


/*
 * ======== FUNCTION DECLARATIONS ========
 */

/* Module_startup */


/* Instance_init__E */

extern "C" void ti_sysbios_knl_Queue_Instance_init__E(ti_sysbios_knl_Queue_Object *, const ti_sysbios_knl_Queue_Params *);

/* Handle__label__S */

extern "C" xdc_runtime_Types_Label *ti_sysbios_knl_Queue_Handle__label__S( xdc_Ptr obj, xdc_runtime_Types_Label *lab );

/* Module__startupDone__S */

extern "C" xdc_Bool ti_sysbios_knl_Queue_Module__startupDone__S( void );

/* Object__create__S */

extern "C" xdc_Ptr ti_sysbios_knl_Queue_Object__create__S( xdc_Ptr __oa, xdc_SizeT __osz, xdc_Ptr __aa, const xdc_UChar *__pa, xdc_SizeT __psz, xdc_runtime_Error_Block *__eb );

/* create */

extern "C" ti_sysbios_knl_Queue_Handle ti_sysbios_knl_Queue_create( const ti_sysbios_knl_Queue_Params *__prms, xdc_runtime_Error_Block *__eb );

/* construct */

extern "C" void ti_sysbios_knl_Queue_construct( ti_sysbios_knl_Queue_Struct *__obj, const ti_sysbios_knl_Queue_Params *__prms );

/* Object__delete__S */

extern "C" void ti_sysbios_knl_Queue_Object__delete__S( xdc_Ptr instp );

/* delete */

extern "C" void ti_sysbios_knl_Queue_delete(ti_sysbios_knl_Queue_Handle *instp);

/* Object__destruct__S */

extern "C" void ti_sysbios_knl_Queue_Object__destruct__S( xdc_Ptr objp );

/* destruct */

extern "C" void ti_sysbios_knl_Queue_destruct(ti_sysbios_knl_Queue_Struct *obj);

/* Object__get__S */

extern "C" xdc_Ptr ti_sysbios_knl_Queue_Object__get__S( xdc_Ptr oarr, xdc_Int i );

/* Object__first__S */

extern "C" xdc_Ptr ti_sysbios_knl_Queue_Object__first__S( void );

/* Object__next__S */

extern "C" xdc_Ptr ti_sysbios_knl_Queue_Object__next__S( xdc_Ptr obj );

/* Params__init__S */

extern "C" void ti_sysbios_knl_Queue_Params__init__S( xdc_Ptr dst, const void *src, xdc_SizeT psz, xdc_SizeT isz );

/* elemClear__E */


extern "C" void ti_sysbios_knl_Queue_elemClear__E( ti_sysbios_knl_Queue_Elem *qelem );

/* insert__E */


extern "C" void ti_sysbios_knl_Queue_insert__E( ti_sysbios_knl_Queue_Elem *qelem, ti_sysbios_knl_Queue_Elem *elem );

/* next__E */


extern "C" xdc_Ptr ti_sysbios_knl_Queue_next__E( ti_sysbios_knl_Queue_Elem *qelem );

/* prev__E */


extern "C" xdc_Ptr ti_sysbios_knl_Queue_prev__E( ti_sysbios_knl_Queue_Elem *qelem );

/* remove__E */


extern "C" void ti_sysbios_knl_Queue_remove__E( ti_sysbios_knl_Queue_Elem *qelem );

/* isQueued__E */


extern "C" xdc_Bool ti_sysbios_knl_Queue_isQueued__E( ti_sysbios_knl_Queue_Elem *qelem );

/* dequeue__E */


extern "C" xdc_Ptr ti_sysbios_knl_Queue_dequeue__E( ti_sysbios_knl_Queue_Handle __inst );

/* empty__E */


extern "C" xdc_Bool ti_sysbios_knl_Queue_empty__E( ti_sysbios_knl_Queue_Handle __inst );

/* enqueue__E */


extern "C" void ti_sysbios_knl_Queue_enqueue__E( ti_sysbios_knl_Queue_Handle __inst, ti_sysbios_knl_Queue_Elem *elem );

/* get__E */


extern "C" xdc_Ptr ti_sysbios_knl_Queue_get__E( ti_sysbios_knl_Queue_Handle __inst );

/* getTail__E */


extern "C" xdc_Ptr ti_sysbios_knl_Queue_getTail__E( ti_sysbios_knl_Queue_Handle __inst );

/* head__E */


extern "C" xdc_Ptr ti_sysbios_knl_Queue_head__E( ti_sysbios_knl_Queue_Handle __inst );

/* put__E */


extern "C" void ti_sysbios_knl_Queue_put__E( ti_sysbios_knl_Queue_Handle __inst, ti_sysbios_knl_Queue_Elem *elem );

/* putHead__E */


extern "C" void ti_sysbios_knl_Queue_putHead__E( ti_sysbios_knl_Queue_Handle __inst, ti_sysbios_knl_Queue_Elem *elem );


/*
 * ======== SYSTEM FUNCTIONS ========
 */

/* Module_startupDone */


/* Object_heap */


/* Module_heap */


/* Module_id */
static inline CT__ti_sysbios_knl_Queue_Module__id ti_sysbios_knl_Queue_Module_id( void ) 
{
    return ti_sysbios_knl_Queue_Module__id__C;
}

/* Module_hasMask */
static inline xdc_Bool ti_sysbios_knl_Queue_Module_hasMask( void ) 
{
    return ti_sysbios_knl_Queue_Module__diagsMask__C != 0;
}

/* Module_getMask */
static inline xdc_Bits16 ti_sysbios_knl_Queue_Module_getMask( void ) 
{
    return ti_sysbios_knl_Queue_Module__diagsMask__C != 0 ? *ti_sysbios_knl_Queue_Module__diagsMask__C : 0;
}

/* Module_setMask */
static inline void ti_sysbios_knl_Queue_Module_setMask( xdc_Bits16 mask ) 
{
    if (ti_sysbios_knl_Queue_Module__diagsMask__C != 0) *ti_sysbios_knl_Queue_Module__diagsMask__C = mask;
}

/* Params_init */
static inline void ti_sysbios_knl_Queue_Params_init( ti_sysbios_knl_Queue_Params *prms ) 
{
    if (prms) {
        ti_sysbios_knl_Queue_Params__init__S(prms, 0, sizeof(ti_sysbios_knl_Queue_Params), sizeof(xdc_runtime_IInstance_Params));
    }
}

/* Params_copy */
static inline void ti_sysbios_knl_Queue_Params_copy(ti_sysbios_knl_Queue_Params *dst, const ti_sysbios_knl_Queue_Params *src) 
{
    if (dst) {
        ti_sysbios_knl_Queue_Params__init__S(dst, (const void *)src, sizeof(ti_sysbios_knl_Queue_Params), sizeof(xdc_runtime_IInstance_Params));
    }
}

/* Object_count */


/* Object_sizeof */


/* Object_get */
static inline ti_sysbios_knl_Queue_Handle ti_sysbios_knl_Queue_Object_get(ti_sysbios_knl_Queue_Instance_State *oarr, int i) 
{
    return (ti_sysbios_knl_Queue_Handle)ti_sysbios_knl_Queue_Object__get__S(oarr, i);
}

/* Object_first */
static inline ti_sysbios_knl_Queue_Handle ti_sysbios_knl_Queue_Object_first( void )
{
    return (ti_sysbios_knl_Queue_Handle)ti_sysbios_knl_Queue_Object__first__S();
}

/* Object_next */
static inline ti_sysbios_knl_Queue_Handle ti_sysbios_knl_Queue_Object_next( ti_sysbios_knl_Queue_Object *obj )
{
    return (ti_sysbios_knl_Queue_Handle)ti_sysbios_knl_Queue_Object__next__S(obj);
}

/* Handle_label */
static inline xdc_runtime_Types_Label *ti_sysbios_knl_Queue_Handle_label( ti_sysbios_knl_Queue_Handle inst, xdc_runtime_Types_Label *lab )
{
    return ti_sysbios_knl_Queue_Handle__label__S(inst, lab);
}

/* Handle_name */
static inline xdc_String ti_sysbios_knl_Queue_Handle_name( ti_sysbios_knl_Queue_Handle inst )
{
    xdc_runtime_Types_Label lab;
    return ti_sysbios_knl_Queue_Handle__label__S(inst, &lab)->iname;
}

/* handle */
static inline ti_sysbios_knl_Queue_Handle ti_sysbios_knl_Queue_handle( ti_sysbios_knl_Queue_Struct *str )
{
    return (ti_sysbios_knl_Queue_Handle)str;
}

/* struct */
static inline ti_sysbios_knl_Queue_Struct *ti_sysbios_knl_Queue_struct( ti_sysbios_knl_Queue_Handle inst )
{
    return (ti_sysbios_knl_Queue_Struct*)inst;
}


/*
 * ======== EPILOGUE ========
 */








/*
 * ======== STATE STRUCTURES ========
 */

# 439 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Queue.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 66 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Task.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 104 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 121 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 67 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Task.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/interfaces/ITaskSupport.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 52 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/interfaces/ITaskSupport.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/interfaces/package/package.defs.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */





/*
 * ======== interface ti.sysbios.interfaces.ICore ========
 */

typedef struct ti_sysbios_interfaces_ICore_Fxns__ ti_sysbios_interfaces_ICore_Fxns__;
typedef const ti_sysbios_interfaces_ICore_Fxns__* ti_sysbios_interfaces_ICore_Module;

/*
 * ======== interface ti.sysbios.interfaces.IHwi ========
 */

typedef struct ti_sysbios_interfaces_IHwi_HookSet ti_sysbios_interfaces_IHwi_HookSet;
typedef struct ti_sysbios_interfaces_IHwi_StackInfo ti_sysbios_interfaces_IHwi_StackInfo;
typedef struct ti_sysbios_interfaces_IHwi_Fxns__ ti_sysbios_interfaces_IHwi_Fxns__;
typedef const ti_sysbios_interfaces_IHwi_Fxns__* ti_sysbios_interfaces_IHwi_Module;
typedef struct ti_sysbios_interfaces_IHwi_Params ti_sysbios_interfaces_IHwi_Params;
typedef struct ti_sysbios_interfaces_IHwi___Object { ti_sysbios_interfaces_IHwi_Fxns__* __fxns; xdc_Bits32 __label; } *ti_sysbios_interfaces_IHwi_Handle;

/*
 * ======== interface ti.sysbios.interfaces.ITaskSupport ========
 */

typedef struct ti_sysbios_interfaces_ITaskSupport_Fxns__ ti_sysbios_interfaces_ITaskSupport_Fxns__;
typedef const ti_sysbios_interfaces_ITaskSupport_Fxns__* ti_sysbios_interfaces_ITaskSupport_Module;

/*
 * ======== interface ti.sysbios.interfaces.ITimer ========
 */

typedef struct ti_sysbios_interfaces_ITimer_Fxns__ ti_sysbios_interfaces_ITimer_Fxns__;
typedef const ti_sysbios_interfaces_ITimer_Fxns__* ti_sysbios_interfaces_ITimer_Module;
typedef struct ti_sysbios_interfaces_ITimer_Params ti_sysbios_interfaces_ITimer_Params;
typedef struct ti_sysbios_interfaces_ITimer___Object { ti_sysbios_interfaces_ITimer_Fxns__* __fxns; xdc_Bits32 __label; } *ti_sysbios_interfaces_ITimer_Handle;

/*
 * ======== interface ti.sysbios.interfaces.ITimerSupport ========
 */

typedef struct ti_sysbios_interfaces_ITimerSupport_Fxns__ ti_sysbios_interfaces_ITimerSupport_Fxns__;
typedef const ti_sysbios_interfaces_ITimerSupport_Fxns__* ti_sysbios_interfaces_ITimerSupport_Module;

/*
 * ======== interface ti.sysbios.interfaces.ITimestamp ========
 */

typedef struct ti_sysbios_interfaces_ITimestamp_Fxns__ ti_sysbios_interfaces_ITimestamp_Fxns__;
typedef const ti_sysbios_interfaces_ITimestamp_Fxns__* ti_sysbios_interfaces_ITimestamp_Module;

/*
 * ======== interface ti.sysbios.interfaces.IIntrinsicsSupport ========
 */

typedef struct ti_sysbios_interfaces_IIntrinsicsSupport_Fxns__ ti_sysbios_interfaces_IIntrinsicsSupport_Fxns__;
typedef const ti_sysbios_interfaces_IIntrinsicsSupport_Fxns__* ti_sysbios_interfaces_IIntrinsicsSupport_Module;

/*
 * ======== interface ti.sysbios.interfaces.ICache ========
 */

typedef struct ti_sysbios_interfaces_ICache_Fxns__ ti_sysbios_interfaces_ICache_Fxns__;
typedef const ti_sysbios_interfaces_ICache_Fxns__* ti_sysbios_interfaces_ICache_Module;

/*
 * ======== interface ti.sysbios.interfaces.IPower ========
 */

typedef struct ti_sysbios_interfaces_IPower_Fxns__ ti_sysbios_interfaces_IPower_Fxns__;
typedef const ti_sysbios_interfaces_IPower_Fxns__* ti_sysbios_interfaces_IPower_Module;

/*
 * ======== interface ti.sysbios.interfaces.IRomDevice ========
 */

typedef struct ti_sysbios_interfaces_IRomDevice_Fxns__ ti_sysbios_interfaces_IRomDevice_Fxns__;
typedef const ti_sysbios_interfaces_IRomDevice_Fxns__* ti_sysbios_interfaces_IRomDevice_Module;

/*
 * ======== interface ti.sysbios.interfaces.ISeconds ========
 */

typedef struct ti_sysbios_interfaces_ISeconds_Time ti_sysbios_interfaces_ISeconds_Time;
typedef struct ti_sysbios_interfaces_ISeconds_Fxns__ ti_sysbios_interfaces_ISeconds_Fxns__;
typedef const ti_sysbios_interfaces_ISeconds_Fxns__* ti_sysbios_interfaces_ISeconds_Module;


# 53 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/interfaces/ITaskSupport.h"

# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 369 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 425 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 55 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/interfaces/ITaskSupport.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 104 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 121 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 56 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/interfaces/ITaskSupport.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* FuncPtr */
typedef void (*ti_sysbios_interfaces_ITaskSupport_FuncPtr)(void);


/*
 * ======== VIRTUAL FUNCTIONS ========
 */

/* Fxns__ */
struct ti_sysbios_interfaces_ITaskSupport_Fxns__ {
    xdc_runtime_Types_Base* __base;
    const xdc_runtime_Types_SysFxns2 *__sysp;
    xdc_Ptr (*start)(xdc_Ptr, ti_sysbios_interfaces_ITaskSupport_FuncPtr, ti_sysbios_interfaces_ITaskSupport_FuncPtr, xdc_runtime_Error_Block*);
    void (*swap)(xdc_Ptr*, xdc_Ptr*);
    xdc_Bool (*checkStack)(xdc_Char*, xdc_SizeT);
    xdc_SizeT (*stackUsed)(xdc_Char*, xdc_SizeT);
    xdc_UInt (*getStackAlignment)(void);
    xdc_SizeT (*getDefaultStackSize)(void);
    xdc_runtime_Types_SysFxns2 __sfxns;
};

/* Interface__BASE__C */
extern "C" const xdc_runtime_Types_Base ti_sysbios_interfaces_ITaskSupport_Interface__BASE__C;


/*
 * ======== FUNCTION STUBS ========
 */

/* Module_id */
static inline xdc_runtime_Types_ModuleId ti_sysbios_interfaces_ITaskSupport_Module_id( ti_sysbios_interfaces_ITaskSupport_Module mod )
{
    return mod->__sysp->__mid;
}

/* start */
static inline xdc_Ptr ti_sysbios_interfaces_ITaskSupport_start( ti_sysbios_interfaces_ITaskSupport_Module __inst, xdc_Ptr curTask, ti_sysbios_interfaces_ITaskSupport_FuncPtr enter, ti_sysbios_interfaces_ITaskSupport_FuncPtr exit, xdc_runtime_Error_Block *eb )
{
    return __inst->start(curTask, enter, exit, eb);
}

/* swap */
static inline void ti_sysbios_interfaces_ITaskSupport_swap( ti_sysbios_interfaces_ITaskSupport_Module __inst, xdc_Ptr *oldtskContext, xdc_Ptr *newtskContext )
{
    __inst->swap(oldtskContext, newtskContext);
}

/* checkStack */
static inline xdc_Bool ti_sysbios_interfaces_ITaskSupport_checkStack( ti_sysbios_interfaces_ITaskSupport_Module __inst, xdc_Char *stack, xdc_SizeT size )
{
    return __inst->checkStack(stack, size);
}

/* stackUsed */
static inline xdc_SizeT ti_sysbios_interfaces_ITaskSupport_stackUsed( ti_sysbios_interfaces_ITaskSupport_Module __inst, xdc_Char *stack, xdc_SizeT size )
{
    return __inst->stackUsed(stack, size);
}

/* getStackAlignment */
static inline xdc_UInt ti_sysbios_interfaces_ITaskSupport_getStackAlignment( ti_sysbios_interfaces_ITaskSupport_Module __inst )
{
    return __inst->getStackAlignment();
}

/* getDefaultStackSize */
static inline xdc_SizeT ti_sysbios_interfaces_ITaskSupport_getDefaultStackSize( ti_sysbios_interfaces_ITaskSupport_Module __inst )
{
    return __inst->getDefaultStackSize();
}


/*
 * ======== FUNCTION SELECTORS ========
 */

/* These functions return function pointers for module and instance functions.
 * The functions accept modules and instances declared as types defined in this
 * interface, but they return functions defined for the actual objects passed
 * as parameters. These functions are not invoked by any generated code or
 * XDCtools internal code.
 */

/* start_{FxnT,fxnP} */
typedef xdc_Ptr (*ti_sysbios_interfaces_ITaskSupport_start_FxnT)(xdc_Ptr, ti_sysbios_interfaces_ITaskSupport_FuncPtr, ti_sysbios_interfaces_ITaskSupport_FuncPtr, xdc_runtime_Error_Block*);
static inline ti_sysbios_interfaces_ITaskSupport_start_FxnT ti_sysbios_interfaces_ITaskSupport_start_fxnP( ti_sysbios_interfaces_ITaskSupport_Module __inst )
{
    return (ti_sysbios_interfaces_ITaskSupport_start_FxnT)__inst->start;
}

/* swap_{FxnT,fxnP} */
typedef void (*ti_sysbios_interfaces_ITaskSupport_swap_FxnT)(xdc_Ptr*, xdc_Ptr*);
static inline ti_sysbios_interfaces_ITaskSupport_swap_FxnT ti_sysbios_interfaces_ITaskSupport_swap_fxnP( ti_sysbios_interfaces_ITaskSupport_Module __inst )
{
    return (ti_sysbios_interfaces_ITaskSupport_swap_FxnT)__inst->swap;
}

/* checkStack_{FxnT,fxnP} */
typedef xdc_Bool (*ti_sysbios_interfaces_ITaskSupport_checkStack_FxnT)(xdc_Char*, xdc_SizeT);
static inline ti_sysbios_interfaces_ITaskSupport_checkStack_FxnT ti_sysbios_interfaces_ITaskSupport_checkStack_fxnP( ti_sysbios_interfaces_ITaskSupport_Module __inst )
{
    return (ti_sysbios_interfaces_ITaskSupport_checkStack_FxnT)__inst->checkStack;
}

/* stackUsed_{FxnT,fxnP} */
typedef xdc_SizeT (*ti_sysbios_interfaces_ITaskSupport_stackUsed_FxnT)(xdc_Char*, xdc_SizeT);
static inline ti_sysbios_interfaces_ITaskSupport_stackUsed_FxnT ti_sysbios_interfaces_ITaskSupport_stackUsed_fxnP( ti_sysbios_interfaces_ITaskSupport_Module __inst )
{
    return (ti_sysbios_interfaces_ITaskSupport_stackUsed_FxnT)__inst->stackUsed;
}

/* getStackAlignment_{FxnT,fxnP} */
typedef xdc_UInt (*ti_sysbios_interfaces_ITaskSupport_getStackAlignment_FxnT)(void);
static inline ti_sysbios_interfaces_ITaskSupport_getStackAlignment_FxnT ti_sysbios_interfaces_ITaskSupport_getStackAlignment_fxnP( ti_sysbios_interfaces_ITaskSupport_Module __inst )
{
    return (ti_sysbios_interfaces_ITaskSupport_getStackAlignment_FxnT)__inst->getStackAlignment;
}

/* getDefaultStackSize_{FxnT,fxnP} */
typedef xdc_SizeT (*ti_sysbios_interfaces_ITaskSupport_getDefaultStackSize_FxnT)(void);
static inline ti_sysbios_interfaces_ITaskSupport_getDefaultStackSize_FxnT ti_sysbios_interfaces_ITaskSupport_getDefaultStackSize_fxnP( ti_sysbios_interfaces_ITaskSupport_Module __inst )
{
    return (ti_sysbios_interfaces_ITaskSupport_getDefaultStackSize_FxnT)__inst->getDefaultStackSize;
}


/*
 * ======== EPILOGUE ========
 */








/*
 * ======== PREFIX ALIASES ========
 */

# 68 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Task.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Clock.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     CREATE ARGS
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     PER-INSTANCE TYPES
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 56 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Clock.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 132 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 155 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 57 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Clock.h"


# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 223 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 238 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 264 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:43; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 60 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Clock.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 315 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 330 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 389 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 61 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Clock.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 293 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 308 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 390 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:47; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 62 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Clock.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 104 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 121 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 63 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Clock.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/interfaces/ITimer.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     CREATE ARGS
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 54 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/interfaces/ITimer.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 132 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 155 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 55 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/interfaces/ITimer.h"


# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 58 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/interfaces/ITimer.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 104 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 121 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 59 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/interfaces/ITimer.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* FuncPtr */
typedef void (*ti_sysbios_interfaces_ITimer_FuncPtr)(xdc_UArg);

/* ANY */


/* StartMode */
enum ti_sysbios_interfaces_ITimer_StartMode {
    ti_sysbios_interfaces_ITimer_StartMode_AUTO,
    ti_sysbios_interfaces_ITimer_StartMode_USER
};
typedef enum ti_sysbios_interfaces_ITimer_StartMode ti_sysbios_interfaces_ITimer_StartMode;

/* RunMode */
enum ti_sysbios_interfaces_ITimer_RunMode {
    ti_sysbios_interfaces_ITimer_RunMode_CONTINUOUS,
    ti_sysbios_interfaces_ITimer_RunMode_ONESHOT,
    ti_sysbios_interfaces_ITimer_RunMode_DYNAMIC
};
typedef enum ti_sysbios_interfaces_ITimer_RunMode ti_sysbios_interfaces_ITimer_RunMode;

/* Status */
enum ti_sysbios_interfaces_ITimer_Status {
    ti_sysbios_interfaces_ITimer_Status_INUSE,
    ti_sysbios_interfaces_ITimer_Status_FREE
};
typedef enum ti_sysbios_interfaces_ITimer_Status ti_sysbios_interfaces_ITimer_Status;

/* PeriodType */
enum ti_sysbios_interfaces_ITimer_PeriodType {
    ti_sysbios_interfaces_ITimer_PeriodType_MICROSECS,
    ti_sysbios_interfaces_ITimer_PeriodType_COUNTS
};
typedef enum ti_sysbios_interfaces_ITimer_PeriodType ti_sysbios_interfaces_ITimer_PeriodType;


/*
 * ======== CREATE ARGS ========
 */

/* Args__create */
typedef struct ti_sysbios_interfaces_ITimer_Args__create {
    xdc_Int id;
    ti_sysbios_interfaces_ITimer_FuncPtr tickFxn;
} ti_sysbios_interfaces_ITimer_Args__create;


/*
 * ======== PER-INSTANCE TYPES ========
 */

/* Params */
struct ti_sysbios_interfaces_ITimer_Params {
    size_t __size;
    const void *__self;
    void *__fxns;
    xdc_runtime_IInstance_Params *instance;
    ti_sysbios_interfaces_ITimer_RunMode runMode;
    ti_sysbios_interfaces_ITimer_StartMode startMode;
    xdc_UArg arg;
    xdc_UInt32 period;
    ti_sysbios_interfaces_ITimer_PeriodType periodType;
    xdc_runtime_Types_FreqHz extFreq;
};


/*
 * ======== VIRTUAL FUNCTIONS ========
 */

/* Fxns__ */
struct ti_sysbios_interfaces_ITimer_Fxns__ {
    xdc_runtime_Types_Base* __base;
    const xdc_runtime_Types_SysFxns2 *__sysp;
    xdc_UInt (*getNumTimers)(void);
    ti_sysbios_interfaces_ITimer_Status (*getStatus)(xdc_UInt);
    void (*startup)(void);
    xdc_UInt32 (*getMaxTicks)(void*);
    void (*setNextTick)(void*, xdc_UInt32);
    void (*start)(void*);
    void (*stop)(void*);
    void (*setPeriod)(void*, xdc_UInt32);
    xdc_Bool (*setPeriodMicroSecs)(void*, xdc_UInt32);
    xdc_UInt32 (*getPeriod)(void*);
    xdc_UInt32 (*getCount)(void*);
    void (*getFreq)(void*, xdc_runtime_Types_FreqHz*);
    ti_sysbios_interfaces_ITimer_FuncPtr (*getFunc)(void*, xdc_UArg*);
    void (*setFunc)(void*, ti_sysbios_interfaces_ITimer_FuncPtr, xdc_UArg);
    void (*trigger)(void*, xdc_UInt32);
    xdc_UInt32 (*getExpiredCounts)(void*);
    xdc_UInt32 (*getExpiredTicks)(void*, xdc_UInt32);
    xdc_UInt32 (*getCurrentTick)(void*, xdc_Bool);
    xdc_runtime_Types_SysFxns2 __sfxns;
};

/* Interface__BASE__C */
extern "C" const xdc_runtime_Types_Base ti_sysbios_interfaces_ITimer_Interface__BASE__C;


/*
 * ======== FUNCTION STUBS ========
 */

/* create */

extern "C" ti_sysbios_interfaces_ITimer_Handle ti_sysbios_interfaces_ITimer_create(ti_sysbios_interfaces_ITimer_Module, xdc_Int id, ti_sysbios_interfaces_ITimer_FuncPtr tickFxn, const ti_sysbios_interfaces_ITimer_Params *, xdc_runtime_Error_Block *__eb);

/* delete */

extern "C" void ti_sysbios_interfaces_ITimer_delete(ti_sysbios_interfaces_ITimer_Handle *);

/* Handle_to_Module */
static inline ti_sysbios_interfaces_ITimer_Module ti_sysbios_interfaces_ITimer_Handle_to_Module( ti_sysbios_interfaces_ITimer_Handle inst )
{
    return inst->__fxns;
}

/* Handle_label */
static inline xdc_runtime_Types_Label *ti_sysbios_interfaces_ITimer_Handle_label( ti_sysbios_interfaces_ITimer_Handle inst, xdc_runtime_Types_Label *lab )
{
    return inst->__fxns->__sysp->__label(inst, lab);
}

/* Module_id */
static inline xdc_runtime_Types_ModuleId ti_sysbios_interfaces_ITimer_Module_id( ti_sysbios_interfaces_ITimer_Module mod )
{
    return mod->__sysp->__mid;
}

/* getNumTimers */
static inline xdc_UInt ti_sysbios_interfaces_ITimer_getNumTimers( ti_sysbios_interfaces_ITimer_Module __inst )
{
    return __inst->getNumTimers();
}

/* getStatus */
static inline ti_sysbios_interfaces_ITimer_Status ti_sysbios_interfaces_ITimer_getStatus( ti_sysbios_interfaces_ITimer_Module __inst, xdc_UInt id )
{
    return __inst->getStatus(id);
}

/* startup */
static inline void ti_sysbios_interfaces_ITimer_startup( ti_sysbios_interfaces_ITimer_Module __inst )
{
    __inst->startup();
}

/* getMaxTicks */
static inline xdc_UInt32 ti_sysbios_interfaces_ITimer_getMaxTicks( ti_sysbios_interfaces_ITimer_Handle __inst )
{
    return __inst->__fxns->getMaxTicks((void*)__inst);
}

/* setNextTick */
static inline void ti_sysbios_interfaces_ITimer_setNextTick( ti_sysbios_interfaces_ITimer_Handle __inst, xdc_UInt32 ticks )
{
    __inst->__fxns->setNextTick((void*)__inst, ticks);
}

/* start */
static inline void ti_sysbios_interfaces_ITimer_start( ti_sysbios_interfaces_ITimer_Handle __inst )
{
    __inst->__fxns->start((void*)__inst);
}

/* stop */
static inline void ti_sysbios_interfaces_ITimer_stop( ti_sysbios_interfaces_ITimer_Handle __inst )
{
    __inst->__fxns->stop((void*)__inst);
}

/* setPeriod */
static inline void ti_sysbios_interfaces_ITimer_setPeriod( ti_sysbios_interfaces_ITimer_Handle __inst, xdc_UInt32 period )
{
    __inst->__fxns->setPeriod((void*)__inst, period);
}

/* setPeriodMicroSecs */
static inline xdc_Bool ti_sysbios_interfaces_ITimer_setPeriodMicroSecs( ti_sysbios_interfaces_ITimer_Handle __inst, xdc_UInt32 microsecs )
{
    return __inst->__fxns->setPeriodMicroSecs((void*)__inst, microsecs);
}

/* getPeriod */
static inline xdc_UInt32 ti_sysbios_interfaces_ITimer_getPeriod( ti_sysbios_interfaces_ITimer_Handle __inst )
{
    return __inst->__fxns->getPeriod((void*)__inst);
}

/* getCount */
static inline xdc_UInt32 ti_sysbios_interfaces_ITimer_getCount( ti_sysbios_interfaces_ITimer_Handle __inst )
{
    return __inst->__fxns->getCount((void*)__inst);
}

/* getFreq */
static inline void ti_sysbios_interfaces_ITimer_getFreq( ti_sysbios_interfaces_ITimer_Handle __inst, xdc_runtime_Types_FreqHz *freq )
{
    __inst->__fxns->getFreq((void*)__inst, freq);
}

/* getFunc */
static inline ti_sysbios_interfaces_ITimer_FuncPtr ti_sysbios_interfaces_ITimer_getFunc( ti_sysbios_interfaces_ITimer_Handle __inst, xdc_UArg *arg )
{
    return __inst->__fxns->getFunc((void*)__inst, arg);
}

/* setFunc */
static inline void ti_sysbios_interfaces_ITimer_setFunc( ti_sysbios_interfaces_ITimer_Handle __inst, ti_sysbios_interfaces_ITimer_FuncPtr fxn, xdc_UArg arg )
{
    __inst->__fxns->setFunc((void*)__inst, fxn, arg);
}

/* trigger */
static inline void ti_sysbios_interfaces_ITimer_trigger( ti_sysbios_interfaces_ITimer_Handle __inst, xdc_UInt32 cycles )
{
    __inst->__fxns->trigger((void*)__inst, cycles);
}

/* getExpiredCounts */
static inline xdc_UInt32 ti_sysbios_interfaces_ITimer_getExpiredCounts( ti_sysbios_interfaces_ITimer_Handle __inst )
{
    return __inst->__fxns->getExpiredCounts((void*)__inst);
}

/* getExpiredTicks */
static inline xdc_UInt32 ti_sysbios_interfaces_ITimer_getExpiredTicks( ti_sysbios_interfaces_ITimer_Handle __inst, xdc_UInt32 tickPeriod )
{
    return __inst->__fxns->getExpiredTicks((void*)__inst, tickPeriod);
}

/* getCurrentTick */
static inline xdc_UInt32 ti_sysbios_interfaces_ITimer_getCurrentTick( ti_sysbios_interfaces_ITimer_Handle __inst, xdc_Bool save )
{
    return __inst->__fxns->getCurrentTick((void*)__inst, save);
}


/*
 * ======== FUNCTION SELECTORS ========
 */

/* These functions return function pointers for module and instance functions.
 * The functions accept modules and instances declared as types defined in this
 * interface, but they return functions defined for the actual objects passed
 * as parameters. These functions are not invoked by any generated code or
 * XDCtools internal code.
 */

/* getNumTimers_{FxnT,fxnP} */
typedef xdc_UInt (*ti_sysbios_interfaces_ITimer_getNumTimers_FxnT)(void);
static inline ti_sysbios_interfaces_ITimer_getNumTimers_FxnT ti_sysbios_interfaces_ITimer_getNumTimers_fxnP( ti_sysbios_interfaces_ITimer_Module __inst )
{
    return (ti_sysbios_interfaces_ITimer_getNumTimers_FxnT)__inst->getNumTimers;
}

/* getStatus_{FxnT,fxnP} */
typedef ti_sysbios_interfaces_ITimer_Status (*ti_sysbios_interfaces_ITimer_getStatus_FxnT)(xdc_UInt);
static inline ti_sysbios_interfaces_ITimer_getStatus_FxnT ti_sysbios_interfaces_ITimer_getStatus_fxnP( ti_sysbios_interfaces_ITimer_Module __inst )
{
    return (ti_sysbios_interfaces_ITimer_getStatus_FxnT)__inst->getStatus;
}

/* startup_{FxnT,fxnP} */
typedef void (*ti_sysbios_interfaces_ITimer_startup_FxnT)(void);
static inline ti_sysbios_interfaces_ITimer_startup_FxnT ti_sysbios_interfaces_ITimer_startup_fxnP( ti_sysbios_interfaces_ITimer_Module __inst )
{
    return (ti_sysbios_interfaces_ITimer_startup_FxnT)__inst->startup;
}

/* getMaxTicks_{FxnT,fxnP} */
typedef xdc_UInt32 (*ti_sysbios_interfaces_ITimer_getMaxTicks_FxnT)(void *);
static inline ti_sysbios_interfaces_ITimer_getMaxTicks_FxnT ti_sysbios_interfaces_ITimer_getMaxTicks_fxnP( ti_sysbios_interfaces_ITimer_Handle __inst )
{
    return (ti_sysbios_interfaces_ITimer_getMaxTicks_FxnT)__inst->__fxns->getMaxTicks;
}

/* setNextTick_{FxnT,fxnP} */
typedef void (*ti_sysbios_interfaces_ITimer_setNextTick_FxnT)(void *, xdc_UInt32);
static inline ti_sysbios_interfaces_ITimer_setNextTick_FxnT ti_sysbios_interfaces_ITimer_setNextTick_fxnP( ti_sysbios_interfaces_ITimer_Handle __inst )
{
    return (ti_sysbios_interfaces_ITimer_setNextTick_FxnT)__inst->__fxns->setNextTick;
}

/* start_{FxnT,fxnP} */
typedef void (*ti_sysbios_interfaces_ITimer_start_FxnT)(void *);
static inline ti_sysbios_interfaces_ITimer_start_FxnT ti_sysbios_interfaces_ITimer_start_fxnP( ti_sysbios_interfaces_ITimer_Handle __inst )
{
    return (ti_sysbios_interfaces_ITimer_start_FxnT)__inst->__fxns->start;
}

/* stop_{FxnT,fxnP} */
typedef void (*ti_sysbios_interfaces_ITimer_stop_FxnT)(void *);
static inline ti_sysbios_interfaces_ITimer_stop_FxnT ti_sysbios_interfaces_ITimer_stop_fxnP( ti_sysbios_interfaces_ITimer_Handle __inst )
{
    return (ti_sysbios_interfaces_ITimer_stop_FxnT)__inst->__fxns->stop;
}

/* setPeriod_{FxnT,fxnP} */
typedef void (*ti_sysbios_interfaces_ITimer_setPeriod_FxnT)(void *, xdc_UInt32);
static inline ti_sysbios_interfaces_ITimer_setPeriod_FxnT ti_sysbios_interfaces_ITimer_setPeriod_fxnP( ti_sysbios_interfaces_ITimer_Handle __inst )
{
    return (ti_sysbios_interfaces_ITimer_setPeriod_FxnT)__inst->__fxns->setPeriod;
}

/* setPeriodMicroSecs_{FxnT,fxnP} */
typedef xdc_Bool (*ti_sysbios_interfaces_ITimer_setPeriodMicroSecs_FxnT)(void *, xdc_UInt32);
static inline ti_sysbios_interfaces_ITimer_setPeriodMicroSecs_FxnT ti_sysbios_interfaces_ITimer_setPeriodMicroSecs_fxnP( ti_sysbios_interfaces_ITimer_Handle __inst )
{
    return (ti_sysbios_interfaces_ITimer_setPeriodMicroSecs_FxnT)__inst->__fxns->setPeriodMicroSecs;
}

/* getPeriod_{FxnT,fxnP} */
typedef xdc_UInt32 (*ti_sysbios_interfaces_ITimer_getPeriod_FxnT)(void *);
static inline ti_sysbios_interfaces_ITimer_getPeriod_FxnT ti_sysbios_interfaces_ITimer_getPeriod_fxnP( ti_sysbios_interfaces_ITimer_Handle __inst )
{
    return (ti_sysbios_interfaces_ITimer_getPeriod_FxnT)__inst->__fxns->getPeriod;
}

/* getCount_{FxnT,fxnP} */
typedef xdc_UInt32 (*ti_sysbios_interfaces_ITimer_getCount_FxnT)(void *);
static inline ti_sysbios_interfaces_ITimer_getCount_FxnT ti_sysbios_interfaces_ITimer_getCount_fxnP( ti_sysbios_interfaces_ITimer_Handle __inst )
{
    return (ti_sysbios_interfaces_ITimer_getCount_FxnT)__inst->__fxns->getCount;
}

/* getFreq_{FxnT,fxnP} */
typedef void (*ti_sysbios_interfaces_ITimer_getFreq_FxnT)(void *, xdc_runtime_Types_FreqHz*);
static inline ti_sysbios_interfaces_ITimer_getFreq_FxnT ti_sysbios_interfaces_ITimer_getFreq_fxnP( ti_sysbios_interfaces_ITimer_Handle __inst )
{
    return (ti_sysbios_interfaces_ITimer_getFreq_FxnT)__inst->__fxns->getFreq;
}

/* getFunc_{FxnT,fxnP} */
typedef ti_sysbios_interfaces_ITimer_FuncPtr (*ti_sysbios_interfaces_ITimer_getFunc_FxnT)(void *, xdc_UArg*);
static inline ti_sysbios_interfaces_ITimer_getFunc_FxnT ti_sysbios_interfaces_ITimer_getFunc_fxnP( ti_sysbios_interfaces_ITimer_Handle __inst )
{
    return (ti_sysbios_interfaces_ITimer_getFunc_FxnT)__inst->__fxns->getFunc;
}

/* setFunc_{FxnT,fxnP} */
typedef void (*ti_sysbios_interfaces_ITimer_setFunc_FxnT)(void *, ti_sysbios_interfaces_ITimer_FuncPtr, xdc_UArg);
static inline ti_sysbios_interfaces_ITimer_setFunc_FxnT ti_sysbios_interfaces_ITimer_setFunc_fxnP( ti_sysbios_interfaces_ITimer_Handle __inst )
{
    return (ti_sysbios_interfaces_ITimer_setFunc_FxnT)__inst->__fxns->setFunc;
}

/* trigger_{FxnT,fxnP} */
typedef void (*ti_sysbios_interfaces_ITimer_trigger_FxnT)(void *, xdc_UInt32);
static inline ti_sysbios_interfaces_ITimer_trigger_FxnT ti_sysbios_interfaces_ITimer_trigger_fxnP( ti_sysbios_interfaces_ITimer_Handle __inst )
{
    return (ti_sysbios_interfaces_ITimer_trigger_FxnT)__inst->__fxns->trigger;
}

/* getExpiredCounts_{FxnT,fxnP} */
typedef xdc_UInt32 (*ti_sysbios_interfaces_ITimer_getExpiredCounts_FxnT)(void *);
static inline ti_sysbios_interfaces_ITimer_getExpiredCounts_FxnT ti_sysbios_interfaces_ITimer_getExpiredCounts_fxnP( ti_sysbios_interfaces_ITimer_Handle __inst )
{
    return (ti_sysbios_interfaces_ITimer_getExpiredCounts_FxnT)__inst->__fxns->getExpiredCounts;
}

/* getExpiredTicks_{FxnT,fxnP} */
typedef xdc_UInt32 (*ti_sysbios_interfaces_ITimer_getExpiredTicks_FxnT)(void *, xdc_UInt32);
static inline ti_sysbios_interfaces_ITimer_getExpiredTicks_FxnT ti_sysbios_interfaces_ITimer_getExpiredTicks_fxnP( ti_sysbios_interfaces_ITimer_Handle __inst )
{
    return (ti_sysbios_interfaces_ITimer_getExpiredTicks_FxnT)__inst->__fxns->getExpiredTicks;
}

/* getCurrentTick_{FxnT,fxnP} */
typedef xdc_UInt32 (*ti_sysbios_interfaces_ITimer_getCurrentTick_FxnT)(void *, xdc_Bool);
static inline ti_sysbios_interfaces_ITimer_getCurrentTick_FxnT ti_sysbios_interfaces_ITimer_getCurrentTick_fxnP( ti_sysbios_interfaces_ITimer_Handle __inst )
{
    return (ti_sysbios_interfaces_ITimer_getCurrentTick_FxnT)__inst->__fxns->getCurrentTick;
}


/*
 * ======== EPILOGUE ========
 */








/*
 * ======== PREFIX ALIASES ========
 */

# 64 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Clock.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Queue.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     PER-INSTANCE TYPES
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 420 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Queue.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 439 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Queue.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 65 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Clock.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Swi.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     CREATE ARGS
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     PER-INSTANCE TYPES
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 56 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Swi.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 132 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 155 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 57 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Swi.h"


# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 369 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 425 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 60 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Swi.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 223 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 238 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 264 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:43; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 61 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Swi.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 315 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 330 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 389 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 62 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Swi.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 293 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 308 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 390 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:47; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 63 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Swi.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Queue.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     PER-INSTANCE TYPES
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 420 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Queue.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 439 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Queue.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 64 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Swi.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 104 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 121 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 65 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Swi.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* FuncPtr */
typedef void (*ti_sysbios_knl_Swi_FuncPtr)(xdc_UArg, xdc_UArg);

/* HookSet */
struct ti_sysbios_knl_Swi_HookSet {
    void (*registerFxn)(xdc_Int);
    void (*createFxn)(ti_sysbios_knl_Swi_Handle, xdc_runtime_Error_Block*);
    void (*readyFxn)(ti_sysbios_knl_Swi_Handle);
    void (*beginFxn)(ti_sysbios_knl_Swi_Handle);
    void (*endFxn)(ti_sysbios_knl_Swi_Handle);
    void (*deleteFxn)(ti_sysbios_knl_Swi_Handle);
};


/*
 * ======== CREATE ARGS ========
 */

/* Args__create */
typedef struct ti_sysbios_knl_Swi_Args__create {
    ti_sysbios_knl_Swi_FuncPtr swiFxn;
} ti_sysbios_knl_Swi_Args__create;


/*
 * ======== INTERNAL DEFINITIONS ========
 */

/* Instance_State */
typedef xdc_Ptr __T1_ti_sysbios_knl_Swi_Instance_State__hookEnv;
typedef xdc_Ptr *__ARRAY1_ti_sysbios_knl_Swi_Instance_State__hookEnv;
typedef __ARRAY1_ti_sysbios_knl_Swi_Instance_State__hookEnv __TA_ti_sysbios_knl_Swi_Instance_State__hookEnv;

/* Module_State */
typedef ti_sysbios_knl_Queue_Instance_State __T1_ti_sysbios_knl_Swi_Module_State__readyQ;
typedef ti_sysbios_knl_Queue_Instance_State *__ARRAY1_ti_sysbios_knl_Swi_Module_State__readyQ;
typedef __ARRAY1_ti_sysbios_knl_Swi_Module_State__readyQ __TA_ti_sysbios_knl_Swi_Module_State__readyQ;
typedef ti_sysbios_knl_Swi_Handle __T1_ti_sysbios_knl_Swi_Module_State__constructedSwis;
typedef ti_sysbios_knl_Swi_Handle *__ARRAY1_ti_sysbios_knl_Swi_Module_State__constructedSwis;
typedef __ARRAY1_ti_sysbios_knl_Swi_Module_State__constructedSwis __TA_ti_sysbios_knl_Swi_Module_State__constructedSwis;


/*
 * ======== MODULE-WIDE CONFIGS ========
 */

/* Module__diagsEnabled */
typedef xdc_Bits32 CT__ti_sysbios_knl_Swi_Module__diagsEnabled;
extern "C"  const CT__ti_sysbios_knl_Swi_Module__diagsEnabled ti_sysbios_knl_Swi_Module__diagsEnabled__C;

/* Module__diagsIncluded */
typedef xdc_Bits32 CT__ti_sysbios_knl_Swi_Module__diagsIncluded;
extern "C"  const CT__ti_sysbios_knl_Swi_Module__diagsIncluded ti_sysbios_knl_Swi_Module__diagsIncluded__C;

/* Module__diagsMask */
typedef xdc_Bits16 *CT__ti_sysbios_knl_Swi_Module__diagsMask;
extern "C"  const CT__ti_sysbios_knl_Swi_Module__diagsMask ti_sysbios_knl_Swi_Module__diagsMask__C;

/* Module__gateObj */
typedef xdc_Ptr CT__ti_sysbios_knl_Swi_Module__gateObj;
extern "C"  const CT__ti_sysbios_knl_Swi_Module__gateObj ti_sysbios_knl_Swi_Module__gateObj__C;

/* Module__gatePrms */
typedef xdc_Ptr CT__ti_sysbios_knl_Swi_Module__gatePrms;
extern "C"  const CT__ti_sysbios_knl_Swi_Module__gatePrms ti_sysbios_knl_Swi_Module__gatePrms__C;

/* Module__id */
typedef xdc_runtime_Types_ModuleId CT__ti_sysbios_knl_Swi_Module__id;
extern "C"  const CT__ti_sysbios_knl_Swi_Module__id ti_sysbios_knl_Swi_Module__id__C;

/* Module__loggerDefined */
typedef xdc_Bool CT__ti_sysbios_knl_Swi_Module__loggerDefined;
extern "C"  const CT__ti_sysbios_knl_Swi_Module__loggerDefined ti_sysbios_knl_Swi_Module__loggerDefined__C;

/* Module__loggerObj */
typedef xdc_Ptr CT__ti_sysbios_knl_Swi_Module__loggerObj;
extern "C"  const CT__ti_sysbios_knl_Swi_Module__loggerObj ti_sysbios_knl_Swi_Module__loggerObj__C;

/* Module__loggerFxn0 */
typedef xdc_runtime_Types_LoggerFxn0 CT__ti_sysbios_knl_Swi_Module__loggerFxn0;
extern "C"  const CT__ti_sysbios_knl_Swi_Module__loggerFxn0 ti_sysbios_knl_Swi_Module__loggerFxn0__C;

/* Module__loggerFxn1 */
typedef xdc_runtime_Types_LoggerFxn1 CT__ti_sysbios_knl_Swi_Module__loggerFxn1;
extern "C"  const CT__ti_sysbios_knl_Swi_Module__loggerFxn1 ti_sysbios_knl_Swi_Module__loggerFxn1__C;

/* Module__loggerFxn2 */
typedef xdc_runtime_Types_LoggerFxn2 CT__ti_sysbios_knl_Swi_Module__loggerFxn2;
extern "C"  const CT__ti_sysbios_knl_Swi_Module__loggerFxn2 ti_sysbios_knl_Swi_Module__loggerFxn2__C;

/* Module__loggerFxn4 */
typedef xdc_runtime_Types_LoggerFxn4 CT__ti_sysbios_knl_Swi_Module__loggerFxn4;
extern "C"  const CT__ti_sysbios_knl_Swi_Module__loggerFxn4 ti_sysbios_knl_Swi_Module__loggerFxn4__C;

/* Module__loggerFxn8 */
typedef xdc_runtime_Types_LoggerFxn8 CT__ti_sysbios_knl_Swi_Module__loggerFxn8;
extern "C"  const CT__ti_sysbios_knl_Swi_Module__loggerFxn8 ti_sysbios_knl_Swi_Module__loggerFxn8__C;

/* Module__startupDoneFxn */
typedef xdc_Bool (*CT__ti_sysbios_knl_Swi_Module__startupDoneFxn)(void);
extern "C"  const CT__ti_sysbios_knl_Swi_Module__startupDoneFxn ti_sysbios_knl_Swi_Module__startupDoneFxn__C;

/* Object__count */
typedef xdc_Int CT__ti_sysbios_knl_Swi_Object__count;
extern "C"  const CT__ti_sysbios_knl_Swi_Object__count ti_sysbios_knl_Swi_Object__count__C;

/* Object__heap */
typedef xdc_runtime_IHeap_Handle CT__ti_sysbios_knl_Swi_Object__heap;
extern "C"  const CT__ti_sysbios_knl_Swi_Object__heap ti_sysbios_knl_Swi_Object__heap__C;

/* Object__sizeof */
typedef xdc_SizeT CT__ti_sysbios_knl_Swi_Object__sizeof;
extern "C"  const CT__ti_sysbios_knl_Swi_Object__sizeof ti_sysbios_knl_Swi_Object__sizeof__C;

/* Object__table */
typedef xdc_Ptr CT__ti_sysbios_knl_Swi_Object__table;
extern "C"  const CT__ti_sysbios_knl_Swi_Object__table ti_sysbios_knl_Swi_Object__table__C;

/* LM_begin */

typedef xdc_runtime_Log_Event CT__ti_sysbios_knl_Swi_LM_begin;
extern "C"  const CT__ti_sysbios_knl_Swi_LM_begin ti_sysbios_knl_Swi_LM_begin__C;

/* LD_end */

typedef xdc_runtime_Log_Event CT__ti_sysbios_knl_Swi_LD_end;
extern "C"  const CT__ti_sysbios_knl_Swi_LD_end ti_sysbios_knl_Swi_LD_end__C;

/* LM_post */

typedef xdc_runtime_Log_Event CT__ti_sysbios_knl_Swi_LM_post;
extern "C"  const CT__ti_sysbios_knl_Swi_LM_post ti_sysbios_knl_Swi_LM_post__C;

/* A_swiDisabled */

typedef xdc_runtime_Assert_Id CT__ti_sysbios_knl_Swi_A_swiDisabled;
extern "C"  const CT__ti_sysbios_knl_Swi_A_swiDisabled ti_sysbios_knl_Swi_A_swiDisabled__C;

/* A_badPriority */

typedef xdc_runtime_Assert_Id CT__ti_sysbios_knl_Swi_A_badPriority;
extern "C"  const CT__ti_sysbios_knl_Swi_A_badPriority ti_sysbios_knl_Swi_A_badPriority__C;

/* numPriorities */




typedef xdc_UInt CT__ti_sysbios_knl_Swi_numPriorities;
extern "C"  const CT__ti_sysbios_knl_Swi_numPriorities ti_sysbios_knl_Swi_numPriorities__C;


/* hooks */

typedef ti_sysbios_knl_Swi_HookSet __T1_ti_sysbios_knl_Swi_hooks;
typedef struct { int length; ti_sysbios_knl_Swi_HookSet *elem; } __ARRAY1_ti_sysbios_knl_Swi_hooks;
typedef __ARRAY1_ti_sysbios_knl_Swi_hooks __TA_ti_sysbios_knl_Swi_hooks;
typedef __TA_ti_sysbios_knl_Swi_hooks CT__ti_sysbios_knl_Swi_hooks;
extern "C"  const CT__ti_sysbios_knl_Swi_hooks ti_sysbios_knl_Swi_hooks__C;

/* taskDisable */

typedef xdc_UInt (*CT__ti_sysbios_knl_Swi_taskDisable)(void);
extern "C"  const CT__ti_sysbios_knl_Swi_taskDisable ti_sysbios_knl_Swi_taskDisable__C;

/* taskRestore */

typedef void (*CT__ti_sysbios_knl_Swi_taskRestore)(xdc_UInt);
extern "C"  const CT__ti_sysbios_knl_Swi_taskRestore ti_sysbios_knl_Swi_taskRestore__C;

/* numConstructedSwis */




typedef xdc_UInt CT__ti_sysbios_knl_Swi_numConstructedSwis;
extern "C"  const CT__ti_sysbios_knl_Swi_numConstructedSwis ti_sysbios_knl_Swi_numConstructedSwis__C;



/*
 * ======== PER-INSTANCE TYPES ========
 */

/* Params */
struct ti_sysbios_knl_Swi_Params {
    size_t __size;
    const void *__self;
    void *__fxns;
    xdc_runtime_IInstance_Params *instance;
    xdc_UArg arg0;
    xdc_UArg arg1;
    xdc_UInt priority;
    xdc_UInt trigger;
    xdc_runtime_IInstance_Params __iprms;
};

/* Struct */
struct ti_sysbios_knl_Swi_Struct {
    ti_sysbios_knl_Queue_Elem __f0;
    ti_sysbios_knl_Swi_FuncPtr __f1;
    xdc_UArg __f2;
    xdc_UArg __f3;
    xdc_UInt __f4;
    xdc_UInt __f5;
    xdc_Bool __f6;
    xdc_UInt __f7;
    xdc_UInt __f8;
    ti_sysbios_knl_Queue_Handle __f9;
    __TA_ti_sysbios_knl_Swi_Instance_State__hookEnv __f10;
    xdc_runtime_Types_CordAddr __name;
};


/*
 * ======== FUNCTION DECLARATIONS ========
 */

/* Module_startup */


extern "C" xdc_Int ti_sysbios_knl_Swi_Module_startup__E( xdc_Int state );

extern "C" xdc_Int ti_sysbios_knl_Swi_Module_startup__F( xdc_Int state );

/* Instance_init__E */

extern "C" xdc_Int ti_sysbios_knl_Swi_Instance_init__E(ti_sysbios_knl_Swi_Object *, ti_sysbios_knl_Swi_FuncPtr swiFxn, const ti_sysbios_knl_Swi_Params *, xdc_runtime_Error_Block *);

/* Instance_finalize__E */

extern "C" void ti_sysbios_knl_Swi_Instance_finalize__E( ti_sysbios_knl_Swi_Object* , int );

/* Handle__label__S */

extern "C" xdc_runtime_Types_Label *ti_sysbios_knl_Swi_Handle__label__S( xdc_Ptr obj, xdc_runtime_Types_Label *lab );

/* Module__startupDone__S */

extern "C" xdc_Bool ti_sysbios_knl_Swi_Module__startupDone__S( void );

/* Object__create__S */

extern "C" xdc_Ptr ti_sysbios_knl_Swi_Object__create__S( xdc_Ptr __oa, xdc_SizeT __osz, xdc_Ptr __aa, const xdc_UChar *__pa, xdc_SizeT __psz, xdc_runtime_Error_Block *__eb );

/* create */

extern "C" ti_sysbios_knl_Swi_Handle ti_sysbios_knl_Swi_create( ti_sysbios_knl_Swi_FuncPtr swiFxn, const ti_sysbios_knl_Swi_Params *__prms, xdc_runtime_Error_Block *__eb );

/* construct */

extern "C" void ti_sysbios_knl_Swi_construct( ti_sysbios_knl_Swi_Struct *__obj, ti_sysbios_knl_Swi_FuncPtr swiFxn, const ti_sysbios_knl_Swi_Params *__prms, xdc_runtime_Error_Block *__eb );

/* Object__delete__S */

extern "C" void ti_sysbios_knl_Swi_Object__delete__S( xdc_Ptr instp );

/* delete */

extern "C" void ti_sysbios_knl_Swi_delete(ti_sysbios_knl_Swi_Handle *instp);

/* Object__destruct__S */

extern "C" void ti_sysbios_knl_Swi_Object__destruct__S( xdc_Ptr objp );

/* destruct */

extern "C" void ti_sysbios_knl_Swi_destruct(ti_sysbios_knl_Swi_Struct *obj);

/* Object__get__S */

extern "C" xdc_Ptr ti_sysbios_knl_Swi_Object__get__S( xdc_Ptr oarr, xdc_Int i );

/* Object__first__S */

extern "C" xdc_Ptr ti_sysbios_knl_Swi_Object__first__S( void );

/* Object__next__S */

extern "C" xdc_Ptr ti_sysbios_knl_Swi_Object__next__S( xdc_Ptr obj );

/* Params__init__S */

extern "C" void ti_sysbios_knl_Swi_Params__init__S( xdc_Ptr dst, const void *src, xdc_SizeT psz, xdc_SizeT isz );

/* startup__E */


extern "C" void ti_sysbios_knl_Swi_startup__E( void );

/* enabled__E */


extern "C" xdc_Bool ti_sysbios_knl_Swi_enabled__E( void );

/* unlockSched__E */


extern "C" void ti_sysbios_knl_Swi_unlockSched__E( void );

/* disable__E */


extern "C" xdc_UInt ti_sysbios_knl_Swi_disable__E( void );

/* enable__E */


extern "C" void ti_sysbios_knl_Swi_enable__E( void );

/* restore__E */


extern "C" void ti_sysbios_knl_Swi_restore__E( xdc_UInt key );

/* restoreHwi__E */


extern "C" void ti_sysbios_knl_Swi_restoreHwi__E( xdc_UInt key );

/* self__E */


extern "C" ti_sysbios_knl_Swi_Handle ti_sysbios_knl_Swi_self__E( void );

/* getTrigger__E */


extern "C" xdc_UInt ti_sysbios_knl_Swi_getTrigger__E( void );

/* raisePri__E */


extern "C" xdc_UInt ti_sysbios_knl_Swi_raisePri__E( xdc_UInt priority );

/* restorePri__E */


extern "C" void ti_sysbios_knl_Swi_restorePri__E( xdc_UInt key );

/* andn__E */


extern "C" void ti_sysbios_knl_Swi_andn__E( ti_sysbios_knl_Swi_Handle __inst, xdc_UInt mask );

/* dec__E */


extern "C" void ti_sysbios_knl_Swi_dec__E( ti_sysbios_knl_Swi_Handle __inst );

/* getHookContext__E */


extern "C" xdc_Ptr ti_sysbios_knl_Swi_getHookContext__E( ti_sysbios_knl_Swi_Handle __inst, xdc_Int id );

/* setHookContext__E */


extern "C" void ti_sysbios_knl_Swi_setHookContext__E( ti_sysbios_knl_Swi_Handle __inst, xdc_Int id, xdc_Ptr hookContext );

/* getPri__E */


extern "C" xdc_UInt ti_sysbios_knl_Swi_getPri__E( ti_sysbios_knl_Swi_Handle __inst );

/* getFunc__E */


extern "C" ti_sysbios_knl_Swi_FuncPtr ti_sysbios_knl_Swi_getFunc__E( ti_sysbios_knl_Swi_Handle __inst, xdc_UArg *arg0, xdc_UArg *arg1 );

/* getAttrs__E */


extern "C" void ti_sysbios_knl_Swi_getAttrs__E( ti_sysbios_knl_Swi_Handle __inst, ti_sysbios_knl_Swi_FuncPtr *swiFxn, ti_sysbios_knl_Swi_Params *params );

/* setAttrs__E */


extern "C" void ti_sysbios_knl_Swi_setAttrs__E( ti_sysbios_knl_Swi_Handle __inst, ti_sysbios_knl_Swi_FuncPtr swiFxn, ti_sysbios_knl_Swi_Params *params );

/* inc__E */


extern "C" void ti_sysbios_knl_Swi_inc__E( ti_sysbios_knl_Swi_Handle __inst );

/* or__E */


extern "C" void ti_sysbios_knl_Swi_or__E( ti_sysbios_knl_Swi_Handle __inst, xdc_UInt mask );

/* post__E */


extern "C" void ti_sysbios_knl_Swi_post__E( ti_sysbios_knl_Swi_Handle __inst );

/* schedule__I */


extern "C" void ti_sysbios_knl_Swi_schedule__I( void );

/* runLoop__I */


extern "C" void ti_sysbios_knl_Swi_runLoop__I( void );

/* run__I */


extern "C" void ti_sysbios_knl_Swi_run__I( ti_sysbios_knl_Swi_Object *swi );

/* postInit__I */


extern "C" xdc_Int ti_sysbios_knl_Swi_postInit__I( ti_sysbios_knl_Swi_Object *swi, xdc_runtime_Error_Block *eb );

/* restoreSMP__I */


extern "C" void ti_sysbios_knl_Swi_restoreSMP__I( void );


/*
 * ======== SYSTEM FUNCTIONS ========
 */

/* Module_startupDone */


/* Object_heap */


/* Module_heap */


/* Module_id */
static inline CT__ti_sysbios_knl_Swi_Module__id ti_sysbios_knl_Swi_Module_id( void ) 
{
    return ti_sysbios_knl_Swi_Module__id__C;
}

/* Module_hasMask */
static inline xdc_Bool ti_sysbios_knl_Swi_Module_hasMask( void ) 
{
    return ti_sysbios_knl_Swi_Module__diagsMask__C != 0;
}

/* Module_getMask */
static inline xdc_Bits16 ti_sysbios_knl_Swi_Module_getMask( void ) 
{
    return ti_sysbios_knl_Swi_Module__diagsMask__C != 0 ? *ti_sysbios_knl_Swi_Module__diagsMask__C : 0;
}

/* Module_setMask */
static inline void ti_sysbios_knl_Swi_Module_setMask( xdc_Bits16 mask ) 
{
    if (ti_sysbios_knl_Swi_Module__diagsMask__C != 0) *ti_sysbios_knl_Swi_Module__diagsMask__C = mask;
}

/* Params_init */
static inline void ti_sysbios_knl_Swi_Params_init( ti_sysbios_knl_Swi_Params *prms ) 
{
    if (prms) {
        ti_sysbios_knl_Swi_Params__init__S(prms, 0, sizeof(ti_sysbios_knl_Swi_Params), sizeof(xdc_runtime_IInstance_Params));
    }
}

/* Params_copy */
static inline void ti_sysbios_knl_Swi_Params_copy(ti_sysbios_knl_Swi_Params *dst, const ti_sysbios_knl_Swi_Params *src) 
{
    if (dst) {
        ti_sysbios_knl_Swi_Params__init__S(dst, (const void *)src, sizeof(ti_sysbios_knl_Swi_Params), sizeof(xdc_runtime_IInstance_Params));
    }
}

/* Object_count */


/* Object_sizeof */


/* Object_get */
static inline ti_sysbios_knl_Swi_Handle ti_sysbios_knl_Swi_Object_get(ti_sysbios_knl_Swi_Instance_State *oarr, int i) 
{
    return (ti_sysbios_knl_Swi_Handle)ti_sysbios_knl_Swi_Object__get__S(oarr, i);
}

/* Object_first */
static inline ti_sysbios_knl_Swi_Handle ti_sysbios_knl_Swi_Object_first( void )
{
    return (ti_sysbios_knl_Swi_Handle)ti_sysbios_knl_Swi_Object__first__S();
}

/* Object_next */
static inline ti_sysbios_knl_Swi_Handle ti_sysbios_knl_Swi_Object_next( ti_sysbios_knl_Swi_Object *obj )
{
    return (ti_sysbios_knl_Swi_Handle)ti_sysbios_knl_Swi_Object__next__S(obj);
}

/* Handle_label */
static inline xdc_runtime_Types_Label *ti_sysbios_knl_Swi_Handle_label( ti_sysbios_knl_Swi_Handle inst, xdc_runtime_Types_Label *lab )
{
    return ti_sysbios_knl_Swi_Handle__label__S(inst, lab);
}

/* Handle_name */
static inline xdc_String ti_sysbios_knl_Swi_Handle_name( ti_sysbios_knl_Swi_Handle inst )
{
    xdc_runtime_Types_Label lab;
    return ti_sysbios_knl_Swi_Handle__label__S(inst, &lab)->iname;
}

/* handle */
static inline ti_sysbios_knl_Swi_Handle ti_sysbios_knl_Swi_handle( ti_sysbios_knl_Swi_Struct *str )
{
    return (ti_sysbios_knl_Swi_Handle)str;
}

/* struct */
static inline ti_sysbios_knl_Swi_Struct *ti_sysbios_knl_Swi_struct( ti_sysbios_knl_Swi_Handle inst )
{
    return (ti_sysbios_knl_Swi_Struct*)inst;
}


/*
 * ======== EPILOGUE ========
 */








/*
 * ======== STATE STRUCTURES ========
 */

# 647 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Swi.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 66 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Clock.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/package/Clock_TimerProxy.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     CREATE ARGS
 *     MODULE-WIDE CONFIGS
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION DECLARATIONS
 *     CONVERTORS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 56 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/package/Clock_TimerProxy.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 132 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 155 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 57 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/package/Clock_TimerProxy.h"


# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/interfaces/ITimer.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     CREATE ARGS
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 450 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/interfaces/ITimer.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 60 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/package/Clock_TimerProxy.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* FuncPtr */
typedef ti_sysbios_interfaces_ITimer_FuncPtr ti_sysbios_knl_Clock_TimerProxy_FuncPtr;

/* ANY */


/* StartMode */
typedef ti_sysbios_interfaces_ITimer_StartMode ti_sysbios_knl_Clock_TimerProxy_StartMode;

/* RunMode */
typedef ti_sysbios_interfaces_ITimer_RunMode ti_sysbios_knl_Clock_TimerProxy_RunMode;

/* Status */
typedef ti_sysbios_interfaces_ITimer_Status ti_sysbios_knl_Clock_TimerProxy_Status;

/* PeriodType */
typedef ti_sysbios_interfaces_ITimer_PeriodType ti_sysbios_knl_Clock_TimerProxy_PeriodType;


/*
 * ======== CREATE ARGS ========
 */

/* Args__create */
typedef struct ti_sysbios_knl_Clock_TimerProxy_Args__create {
    xdc_Int id;
    ti_sysbios_interfaces_ITimer_FuncPtr tickFxn;
} ti_sysbios_knl_Clock_TimerProxy_Args__create;


/*
 * ======== MODULE-WIDE CONFIGS ========
 */

/* Module__diagsEnabled */
typedef xdc_Bits32 CT__ti_sysbios_knl_Clock_TimerProxy_Module__diagsEnabled;
extern "C"  const CT__ti_sysbios_knl_Clock_TimerProxy_Module__diagsEnabled ti_sysbios_knl_Clock_TimerProxy_Module__diagsEnabled__C;

/* Module__diagsIncluded */
typedef xdc_Bits32 CT__ti_sysbios_knl_Clock_TimerProxy_Module__diagsIncluded;
extern "C"  const CT__ti_sysbios_knl_Clock_TimerProxy_Module__diagsIncluded ti_sysbios_knl_Clock_TimerProxy_Module__diagsIncluded__C;

/* Module__diagsMask */
typedef xdc_Bits16 *CT__ti_sysbios_knl_Clock_TimerProxy_Module__diagsMask;
extern "C"  const CT__ti_sysbios_knl_Clock_TimerProxy_Module__diagsMask ti_sysbios_knl_Clock_TimerProxy_Module__diagsMask__C;

/* Module__gateObj */
typedef xdc_Ptr CT__ti_sysbios_knl_Clock_TimerProxy_Module__gateObj;
extern "C"  const CT__ti_sysbios_knl_Clock_TimerProxy_Module__gateObj ti_sysbios_knl_Clock_TimerProxy_Module__gateObj__C;

/* Module__gatePrms */
typedef xdc_Ptr CT__ti_sysbios_knl_Clock_TimerProxy_Module__gatePrms;
extern "C"  const CT__ti_sysbios_knl_Clock_TimerProxy_Module__gatePrms ti_sysbios_knl_Clock_TimerProxy_Module__gatePrms__C;

/* Module__id */
typedef xdc_runtime_Types_ModuleId CT__ti_sysbios_knl_Clock_TimerProxy_Module__id;
extern "C"  const CT__ti_sysbios_knl_Clock_TimerProxy_Module__id ti_sysbios_knl_Clock_TimerProxy_Module__id__C;

/* Module__loggerDefined */
typedef xdc_Bool CT__ti_sysbios_knl_Clock_TimerProxy_Module__loggerDefined;
extern "C"  const CT__ti_sysbios_knl_Clock_TimerProxy_Module__loggerDefined ti_sysbios_knl_Clock_TimerProxy_Module__loggerDefined__C;

/* Module__loggerObj */
typedef xdc_Ptr CT__ti_sysbios_knl_Clock_TimerProxy_Module__loggerObj;
extern "C"  const CT__ti_sysbios_knl_Clock_TimerProxy_Module__loggerObj ti_sysbios_knl_Clock_TimerProxy_Module__loggerObj__C;

/* Module__loggerFxn0 */
typedef xdc_runtime_Types_LoggerFxn0 CT__ti_sysbios_knl_Clock_TimerProxy_Module__loggerFxn0;
extern "C"  const CT__ti_sysbios_knl_Clock_TimerProxy_Module__loggerFxn0 ti_sysbios_knl_Clock_TimerProxy_Module__loggerFxn0__C;

/* Module__loggerFxn1 */
typedef xdc_runtime_Types_LoggerFxn1 CT__ti_sysbios_knl_Clock_TimerProxy_Module__loggerFxn1;
extern "C"  const CT__ti_sysbios_knl_Clock_TimerProxy_Module__loggerFxn1 ti_sysbios_knl_Clock_TimerProxy_Module__loggerFxn1__C;

/* Module__loggerFxn2 */
typedef xdc_runtime_Types_LoggerFxn2 CT__ti_sysbios_knl_Clock_TimerProxy_Module__loggerFxn2;
extern "C"  const CT__ti_sysbios_knl_Clock_TimerProxy_Module__loggerFxn2 ti_sysbios_knl_Clock_TimerProxy_Module__loggerFxn2__C;

/* Module__loggerFxn4 */
typedef xdc_runtime_Types_LoggerFxn4 CT__ti_sysbios_knl_Clock_TimerProxy_Module__loggerFxn4;
extern "C"  const CT__ti_sysbios_knl_Clock_TimerProxy_Module__loggerFxn4 ti_sysbios_knl_Clock_TimerProxy_Module__loggerFxn4__C;

/* Module__loggerFxn8 */
typedef xdc_runtime_Types_LoggerFxn8 CT__ti_sysbios_knl_Clock_TimerProxy_Module__loggerFxn8;
extern "C"  const CT__ti_sysbios_knl_Clock_TimerProxy_Module__loggerFxn8 ti_sysbios_knl_Clock_TimerProxy_Module__loggerFxn8__C;

/* Module__startupDoneFxn */
typedef xdc_Bool (*CT__ti_sysbios_knl_Clock_TimerProxy_Module__startupDoneFxn)(void);
extern "C"  const CT__ti_sysbios_knl_Clock_TimerProxy_Module__startupDoneFxn ti_sysbios_knl_Clock_TimerProxy_Module__startupDoneFxn__C;

/* Object__count */
typedef xdc_Int CT__ti_sysbios_knl_Clock_TimerProxy_Object__count;
extern "C"  const CT__ti_sysbios_knl_Clock_TimerProxy_Object__count ti_sysbios_knl_Clock_TimerProxy_Object__count__C;

/* Object__heap */
typedef xdc_runtime_IHeap_Handle CT__ti_sysbios_knl_Clock_TimerProxy_Object__heap;
extern "C"  const CT__ti_sysbios_knl_Clock_TimerProxy_Object__heap ti_sysbios_knl_Clock_TimerProxy_Object__heap__C;

/* Object__sizeof */
typedef xdc_SizeT CT__ti_sysbios_knl_Clock_TimerProxy_Object__sizeof;
extern "C"  const CT__ti_sysbios_knl_Clock_TimerProxy_Object__sizeof ti_sysbios_knl_Clock_TimerProxy_Object__sizeof__C;

/* Object__table */
typedef xdc_Ptr CT__ti_sysbios_knl_Clock_TimerProxy_Object__table;
extern "C"  const CT__ti_sysbios_knl_Clock_TimerProxy_Object__table ti_sysbios_knl_Clock_TimerProxy_Object__table__C;


/*
 * ======== PER-INSTANCE TYPES ========
 */

/* Params */
struct ti_sysbios_knl_Clock_TimerProxy_Params {
    size_t __size;
    const void *__self;
    void *__fxns;
    xdc_runtime_IInstance_Params *instance;
    ti_sysbios_interfaces_ITimer_RunMode runMode;
    ti_sysbios_interfaces_ITimer_StartMode startMode;
    xdc_UArg arg;
    xdc_UInt32 period;
    ti_sysbios_interfaces_ITimer_PeriodType periodType;
    xdc_runtime_Types_FreqHz extFreq;
    xdc_runtime_IInstance_Params __iprms;
};

/* Struct */
struct ti_sysbios_knl_Clock_TimerProxy_Struct {
    const ti_sysbios_knl_Clock_TimerProxy_Fxns__ *__fxns;
    xdc_runtime_Types_CordAddr __name;
};


/*
 * ======== VIRTUAL FUNCTIONS ========
 */

/* Fxns__ */
struct ti_sysbios_knl_Clock_TimerProxy_Fxns__ {
    xdc_runtime_Types_Base* __base;
    const xdc_runtime_Types_SysFxns2 *__sysp;
    xdc_UInt (*getNumTimers)(void);
    ti_sysbios_interfaces_ITimer_Status (*getStatus)(xdc_UInt);
    void (*startup)(void);
    xdc_UInt32 (*getMaxTicks)(ti_sysbios_knl_Clock_TimerProxy_Handle);
    void (*setNextTick)(ti_sysbios_knl_Clock_TimerProxy_Handle, xdc_UInt32);
    void (*start)(ti_sysbios_knl_Clock_TimerProxy_Handle);
    void (*stop)(ti_sysbios_knl_Clock_TimerProxy_Handle);
    void (*setPeriod)(ti_sysbios_knl_Clock_TimerProxy_Handle, xdc_UInt32);
    xdc_Bool (*setPeriodMicroSecs)(ti_sysbios_knl_Clock_TimerProxy_Handle, xdc_UInt32);
    xdc_UInt32 (*getPeriod)(ti_sysbios_knl_Clock_TimerProxy_Handle);
    xdc_UInt32 (*getCount)(ti_sysbios_knl_Clock_TimerProxy_Handle);
    void (*getFreq)(ti_sysbios_knl_Clock_TimerProxy_Handle, xdc_runtime_Types_FreqHz*);
    ti_sysbios_interfaces_ITimer_FuncPtr (*getFunc)(ti_sysbios_knl_Clock_TimerProxy_Handle, xdc_UArg*);
    void (*setFunc)(ti_sysbios_knl_Clock_TimerProxy_Handle, ti_sysbios_interfaces_ITimer_FuncPtr, xdc_UArg);
    void (*trigger)(ti_sysbios_knl_Clock_TimerProxy_Handle, xdc_UInt32);
    xdc_UInt32 (*getExpiredCounts)(ti_sysbios_knl_Clock_TimerProxy_Handle);
    xdc_UInt32 (*getExpiredTicks)(ti_sysbios_knl_Clock_TimerProxy_Handle, xdc_UInt32);
    xdc_UInt32 (*getCurrentTick)(ti_sysbios_knl_Clock_TimerProxy_Handle, xdc_Bool);
    xdc_runtime_Types_SysFxns2 __sfxns;
};

/* Module__FXNS__C */
extern "C" const ti_sysbios_knl_Clock_TimerProxy_Fxns__ ti_sysbios_knl_Clock_TimerProxy_Module__FXNS__C;


/*
 * ======== FUNCTION DECLARATIONS ========
 */

/* Module_startup */


/* Handle__label__S */

extern "C" xdc_runtime_Types_Label *ti_sysbios_knl_Clock_TimerProxy_Handle__label__S( xdc_Ptr obj, xdc_runtime_Types_Label *lab );

/* Module__startupDone__S */

extern "C" xdc_Bool ti_sysbios_knl_Clock_TimerProxy_Module__startupDone__S( void );

/* Object__create__S */

extern "C" xdc_Ptr ti_sysbios_knl_Clock_TimerProxy_Object__create__S( xdc_Ptr __oa, xdc_SizeT __osz, xdc_Ptr __aa, const xdc_UChar *__pa, xdc_SizeT __psz, xdc_runtime_Error_Block *__eb );

/* create */

extern "C" ti_sysbios_knl_Clock_TimerProxy_Handle ti_sysbios_knl_Clock_TimerProxy_create( xdc_Int id, ti_sysbios_interfaces_ITimer_FuncPtr tickFxn, const ti_sysbios_knl_Clock_TimerProxy_Params *__prms, xdc_runtime_Error_Block *__eb );

/* Object__delete__S */

extern "C" void ti_sysbios_knl_Clock_TimerProxy_Object__delete__S( xdc_Ptr instp );

/* delete */

extern "C" void ti_sysbios_knl_Clock_TimerProxy_delete(ti_sysbios_knl_Clock_TimerProxy_Handle *instp);

/* Object__destruct__S */

extern "C" void ti_sysbios_knl_Clock_TimerProxy_Object__destruct__S( xdc_Ptr objp );

/* Object__get__S */

extern "C" xdc_Ptr ti_sysbios_knl_Clock_TimerProxy_Object__get__S( xdc_Ptr oarr, xdc_Int i );

/* Object__first__S */

extern "C" xdc_Ptr ti_sysbios_knl_Clock_TimerProxy_Object__first__S( void );

/* Object__next__S */

extern "C" xdc_Ptr ti_sysbios_knl_Clock_TimerProxy_Object__next__S( xdc_Ptr obj );

/* Params__init__S */

extern "C" void ti_sysbios_knl_Clock_TimerProxy_Params__init__S( xdc_Ptr dst, const void *src, xdc_SizeT psz, xdc_SizeT isz );

/* Proxy__abstract__S */

extern "C" xdc_Bool ti_sysbios_knl_Clock_TimerProxy_Proxy__abstract__S( void );

/* Proxy__delegate__S */

extern "C" xdc_Ptr ti_sysbios_knl_Clock_TimerProxy_Proxy__delegate__S( void );

/* getNumTimers__E */


extern "C" xdc_UInt ti_sysbios_knl_Clock_TimerProxy_getNumTimers__E( void );

/* getStatus__E */


extern "C" ti_sysbios_interfaces_ITimer_Status ti_sysbios_knl_Clock_TimerProxy_getStatus__E( xdc_UInt id );

/* startup__E */


extern "C" void ti_sysbios_knl_Clock_TimerProxy_startup__E( void );

/* getMaxTicks__E */


extern "C" xdc_UInt32 ti_sysbios_knl_Clock_TimerProxy_getMaxTicks__E( ti_sysbios_knl_Clock_TimerProxy_Handle __inst );

/* setNextTick__E */


extern "C" void ti_sysbios_knl_Clock_TimerProxy_setNextTick__E( ti_sysbios_knl_Clock_TimerProxy_Handle __inst, xdc_UInt32 ticks );

/* start__E */


extern "C" void ti_sysbios_knl_Clock_TimerProxy_start__E( ti_sysbios_knl_Clock_TimerProxy_Handle __inst );

/* stop__E */


extern "C" void ti_sysbios_knl_Clock_TimerProxy_stop__E( ti_sysbios_knl_Clock_TimerProxy_Handle __inst );

/* setPeriod__E */


extern "C" void ti_sysbios_knl_Clock_TimerProxy_setPeriod__E( ti_sysbios_knl_Clock_TimerProxy_Handle __inst, xdc_UInt32 period );

/* setPeriodMicroSecs__E */


extern "C" xdc_Bool ti_sysbios_knl_Clock_TimerProxy_setPeriodMicroSecs__E( ti_sysbios_knl_Clock_TimerProxy_Handle __inst, xdc_UInt32 microsecs );

/* getPeriod__E */


extern "C" xdc_UInt32 ti_sysbios_knl_Clock_TimerProxy_getPeriod__E( ti_sysbios_knl_Clock_TimerProxy_Handle __inst );

/* getCount__E */


extern "C" xdc_UInt32 ti_sysbios_knl_Clock_TimerProxy_getCount__E( ti_sysbios_knl_Clock_TimerProxy_Handle __inst );

/* getFreq__E */


extern "C" void ti_sysbios_knl_Clock_TimerProxy_getFreq__E( ti_sysbios_knl_Clock_TimerProxy_Handle __inst, xdc_runtime_Types_FreqHz *freq );

/* getFunc__E */


extern "C" ti_sysbios_interfaces_ITimer_FuncPtr ti_sysbios_knl_Clock_TimerProxy_getFunc__E( ti_sysbios_knl_Clock_TimerProxy_Handle __inst, xdc_UArg *arg );

/* setFunc__E */


extern "C" void ti_sysbios_knl_Clock_TimerProxy_setFunc__E( ti_sysbios_knl_Clock_TimerProxy_Handle __inst, ti_sysbios_interfaces_ITimer_FuncPtr fxn, xdc_UArg arg );

/* trigger__E */


extern "C" void ti_sysbios_knl_Clock_TimerProxy_trigger__E( ti_sysbios_knl_Clock_TimerProxy_Handle __inst, xdc_UInt32 cycles );

/* getExpiredCounts__E */


extern "C" xdc_UInt32 ti_sysbios_knl_Clock_TimerProxy_getExpiredCounts__E( ti_sysbios_knl_Clock_TimerProxy_Handle __inst );

/* getExpiredTicks__E */


extern "C" xdc_UInt32 ti_sysbios_knl_Clock_TimerProxy_getExpiredTicks__E( ti_sysbios_knl_Clock_TimerProxy_Handle __inst, xdc_UInt32 tickPeriod );

/* getCurrentTick__E */


extern "C" xdc_UInt32 ti_sysbios_knl_Clock_TimerProxy_getCurrentTick__E( ti_sysbios_knl_Clock_TimerProxy_Handle __inst, xdc_Bool save );


/*
 * ======== CONVERTORS ========
 */

/* Module_upCast */
static inline ti_sysbios_interfaces_ITimer_Module ti_sysbios_knl_Clock_TimerProxy_Module_upCast( void )
{
    return (ti_sysbios_interfaces_ITimer_Module)ti_sysbios_knl_Clock_TimerProxy_Proxy__delegate__S();
}

/* Module_to_ti_sysbios_interfaces_ITimer */


/* Handle_upCast */
static inline ti_sysbios_interfaces_ITimer_Handle ti_sysbios_knl_Clock_TimerProxy_Handle_upCast( ti_sysbios_knl_Clock_TimerProxy_Handle i )
{
    return (ti_sysbios_interfaces_ITimer_Handle)i;
}

/* Handle_to_ti_sysbios_interfaces_ITimer */


/* Handle_downCast */
static inline ti_sysbios_knl_Clock_TimerProxy_Handle ti_sysbios_knl_Clock_TimerProxy_Handle_downCast( ti_sysbios_interfaces_ITimer_Handle i )
{
    ti_sysbios_interfaces_ITimer_Handle i2 = (ti_sysbios_interfaces_ITimer_Handle)i;
if (ti_sysbios_knl_Clock_TimerProxy_Proxy__abstract__S()) return (ti_sysbios_knl_Clock_TimerProxy_Handle)i;
    return (void*)i2->__fxns == (void*)ti_sysbios_knl_Clock_TimerProxy_Proxy__delegate__S() ? (ti_sysbios_knl_Clock_TimerProxy_Handle)i : 0;
}

/* Handle_from_ti_sysbios_interfaces_ITimer */



/*
 * ======== SYSTEM FUNCTIONS ========
 */

/* Module_startupDone */


/* Object_heap */


/* Module_heap */


/* Module_id */
static inline CT__ti_sysbios_knl_Clock_TimerProxy_Module__id ti_sysbios_knl_Clock_TimerProxy_Module_id( void ) 
{
    return ti_sysbios_knl_Clock_TimerProxy_Module__id__C;
}

/* Proxy_abstract */


/* Proxy_delegate */


/* Params_init */
static inline void ti_sysbios_knl_Clock_TimerProxy_Params_init( ti_sysbios_knl_Clock_TimerProxy_Params *prms ) 
{
    if (prms) {
        ti_sysbios_knl_Clock_TimerProxy_Params__init__S(prms, 0, sizeof(ti_sysbios_knl_Clock_TimerProxy_Params), sizeof(xdc_runtime_IInstance_Params));
    }
}

/* Params_copy */
static inline void ti_sysbios_knl_Clock_TimerProxy_Params_copy(ti_sysbios_knl_Clock_TimerProxy_Params *dst, const ti_sysbios_knl_Clock_TimerProxy_Params *src) 
{
    if (dst) {
        ti_sysbios_knl_Clock_TimerProxy_Params__init__S(dst, (const void *)src, sizeof(ti_sysbios_knl_Clock_TimerProxy_Params), sizeof(xdc_runtime_IInstance_Params));
    }
}


/*
 * ======== EPILOGUE ========
 */








/*
 * ======== PREFIX ALIASES ========
 */

# 67 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Clock.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* TickSource */
enum ti_sysbios_knl_Clock_TickSource {
    ti_sysbios_knl_Clock_TickSource_TIMER,
    ti_sysbios_knl_Clock_TickSource_USER,
    ti_sysbios_knl_Clock_TickSource_NULL
};
typedef enum ti_sysbios_knl_Clock_TickSource ti_sysbios_knl_Clock_TickSource;

/* TickMode */
enum ti_sysbios_knl_Clock_TickMode {
    ti_sysbios_knl_Clock_TickMode_PERIODIC,
    ti_sysbios_knl_Clock_TickMode_DYNAMIC
};
typedef enum ti_sysbios_knl_Clock_TickMode ti_sysbios_knl_Clock_TickMode;

/* FuncPtr */
typedef void (*ti_sysbios_knl_Clock_FuncPtr)(xdc_UArg);


/*
 * ======== CREATE ARGS ========
 */

/* Args__create */
typedef struct ti_sysbios_knl_Clock_Args__create {
    ti_sysbios_knl_Clock_FuncPtr clockFxn;
    xdc_UInt timeout;
} ti_sysbios_knl_Clock_Args__create;


/*
 * ======== INTERNAL DEFINITIONS ========
 */


/*
 * ======== MODULE-WIDE CONFIGS ========
 */

/* Module__diagsEnabled */
typedef xdc_Bits32 CT__ti_sysbios_knl_Clock_Module__diagsEnabled;
extern "C"  const CT__ti_sysbios_knl_Clock_Module__diagsEnabled ti_sysbios_knl_Clock_Module__diagsEnabled__C;

/* Module__diagsIncluded */
typedef xdc_Bits32 CT__ti_sysbios_knl_Clock_Module__diagsIncluded;
extern "C"  const CT__ti_sysbios_knl_Clock_Module__diagsIncluded ti_sysbios_knl_Clock_Module__diagsIncluded__C;

/* Module__diagsMask */
typedef xdc_Bits16 *CT__ti_sysbios_knl_Clock_Module__diagsMask;
extern "C"  const CT__ti_sysbios_knl_Clock_Module__diagsMask ti_sysbios_knl_Clock_Module__diagsMask__C;

/* Module__gateObj */
typedef xdc_Ptr CT__ti_sysbios_knl_Clock_Module__gateObj;
extern "C"  const CT__ti_sysbios_knl_Clock_Module__gateObj ti_sysbios_knl_Clock_Module__gateObj__C;

/* Module__gatePrms */
typedef xdc_Ptr CT__ti_sysbios_knl_Clock_Module__gatePrms;
extern "C"  const CT__ti_sysbios_knl_Clock_Module__gatePrms ti_sysbios_knl_Clock_Module__gatePrms__C;

/* Module__id */
typedef xdc_runtime_Types_ModuleId CT__ti_sysbios_knl_Clock_Module__id;
extern "C"  const CT__ti_sysbios_knl_Clock_Module__id ti_sysbios_knl_Clock_Module__id__C;

/* Module__loggerDefined */
typedef xdc_Bool CT__ti_sysbios_knl_Clock_Module__loggerDefined;
extern "C"  const CT__ti_sysbios_knl_Clock_Module__loggerDefined ti_sysbios_knl_Clock_Module__loggerDefined__C;

/* Module__loggerObj */
typedef xdc_Ptr CT__ti_sysbios_knl_Clock_Module__loggerObj;
extern "C"  const CT__ti_sysbios_knl_Clock_Module__loggerObj ti_sysbios_knl_Clock_Module__loggerObj__C;

/* Module__loggerFxn0 */
typedef xdc_runtime_Types_LoggerFxn0 CT__ti_sysbios_knl_Clock_Module__loggerFxn0;
extern "C"  const CT__ti_sysbios_knl_Clock_Module__loggerFxn0 ti_sysbios_knl_Clock_Module__loggerFxn0__C;

/* Module__loggerFxn1 */
typedef xdc_runtime_Types_LoggerFxn1 CT__ti_sysbios_knl_Clock_Module__loggerFxn1;
extern "C"  const CT__ti_sysbios_knl_Clock_Module__loggerFxn1 ti_sysbios_knl_Clock_Module__loggerFxn1__C;

/* Module__loggerFxn2 */
typedef xdc_runtime_Types_LoggerFxn2 CT__ti_sysbios_knl_Clock_Module__loggerFxn2;
extern "C"  const CT__ti_sysbios_knl_Clock_Module__loggerFxn2 ti_sysbios_knl_Clock_Module__loggerFxn2__C;

/* Module__loggerFxn4 */
typedef xdc_runtime_Types_LoggerFxn4 CT__ti_sysbios_knl_Clock_Module__loggerFxn4;
extern "C"  const CT__ti_sysbios_knl_Clock_Module__loggerFxn4 ti_sysbios_knl_Clock_Module__loggerFxn4__C;

/* Module__loggerFxn8 */
typedef xdc_runtime_Types_LoggerFxn8 CT__ti_sysbios_knl_Clock_Module__loggerFxn8;
extern "C"  const CT__ti_sysbios_knl_Clock_Module__loggerFxn8 ti_sysbios_knl_Clock_Module__loggerFxn8__C;

/* Module__startupDoneFxn */
typedef xdc_Bool (*CT__ti_sysbios_knl_Clock_Module__startupDoneFxn)(void);
extern "C"  const CT__ti_sysbios_knl_Clock_Module__startupDoneFxn ti_sysbios_knl_Clock_Module__startupDoneFxn__C;

/* Object__count */
typedef xdc_Int CT__ti_sysbios_knl_Clock_Object__count;
extern "C"  const CT__ti_sysbios_knl_Clock_Object__count ti_sysbios_knl_Clock_Object__count__C;

/* Object__heap */
typedef xdc_runtime_IHeap_Handle CT__ti_sysbios_knl_Clock_Object__heap;
extern "C"  const CT__ti_sysbios_knl_Clock_Object__heap ti_sysbios_knl_Clock_Object__heap__C;

/* Object__sizeof */
typedef xdc_SizeT CT__ti_sysbios_knl_Clock_Object__sizeof;
extern "C"  const CT__ti_sysbios_knl_Clock_Object__sizeof ti_sysbios_knl_Clock_Object__sizeof__C;

/* Object__table */
typedef xdc_Ptr CT__ti_sysbios_knl_Clock_Object__table;
extern "C"  const CT__ti_sysbios_knl_Clock_Object__table ti_sysbios_knl_Clock_Object__table__C;

/* LW_delayed */

typedef xdc_runtime_Log_Event CT__ti_sysbios_knl_Clock_LW_delayed;
extern "C"  const CT__ti_sysbios_knl_Clock_LW_delayed ti_sysbios_knl_Clock_LW_delayed__C;

/* LM_tick */

typedef xdc_runtime_Log_Event CT__ti_sysbios_knl_Clock_LM_tick;
extern "C"  const CT__ti_sysbios_knl_Clock_LM_tick ti_sysbios_knl_Clock_LM_tick__C;

/* LM_begin */

typedef xdc_runtime_Log_Event CT__ti_sysbios_knl_Clock_LM_begin;
extern "C"  const CT__ti_sysbios_knl_Clock_LM_begin ti_sysbios_knl_Clock_LM_begin__C;

/* A_clockDisabled */

typedef xdc_runtime_Assert_Id CT__ti_sysbios_knl_Clock_A_clockDisabled;
extern "C"  const CT__ti_sysbios_knl_Clock_A_clockDisabled ti_sysbios_knl_Clock_A_clockDisabled__C;

/* A_badThreadType */

typedef xdc_runtime_Assert_Id CT__ti_sysbios_knl_Clock_A_badThreadType;
extern "C"  const CT__ti_sysbios_knl_Clock_A_badThreadType ti_sysbios_knl_Clock_A_badThreadType__C;

/* serviceMargin */




typedef xdc_UInt32 CT__ti_sysbios_knl_Clock_serviceMargin;
extern "C"  const CT__ti_sysbios_knl_Clock_serviceMargin ti_sysbios_knl_Clock_serviceMargin__C;


/* tickSource */

typedef ti_sysbios_knl_Clock_TickSource CT__ti_sysbios_knl_Clock_tickSource;
extern "C"  const CT__ti_sysbios_knl_Clock_tickSource ti_sysbios_knl_Clock_tickSource__C;

/* tickMode */

typedef ti_sysbios_knl_Clock_TickMode CT__ti_sysbios_knl_Clock_tickMode;
extern "C"  const CT__ti_sysbios_knl_Clock_tickMode ti_sysbios_knl_Clock_tickMode__C;

/* timerId */




typedef xdc_UInt CT__ti_sysbios_knl_Clock_timerId;
extern "C"  const CT__ti_sysbios_knl_Clock_timerId ti_sysbios_knl_Clock_timerId__C;


/* tickPeriod */




typedef xdc_UInt32 CT__ti_sysbios_knl_Clock_tickPeriod;
extern "C"  const CT__ti_sysbios_knl_Clock_tickPeriod ti_sysbios_knl_Clock_tickPeriod__C;


/* doTickFunc */

typedef void (*CT__ti_sysbios_knl_Clock_doTickFunc)(xdc_UArg);
extern "C"  const CT__ti_sysbios_knl_Clock_doTickFunc ti_sysbios_knl_Clock_doTickFunc__C;

/* triggerClock */

typedef ti_sysbios_knl_Clock_Handle CT__ti_sysbios_knl_Clock_triggerClock;
extern "C"  const CT__ti_sysbios_knl_Clock_triggerClock ti_sysbios_knl_Clock_triggerClock__C;


/*
 * ======== PER-INSTANCE TYPES ========
 */

/* Params */
struct ti_sysbios_knl_Clock_Params {
    size_t __size;
    const void *__self;
    void *__fxns;
    xdc_runtime_IInstance_Params *instance;
    xdc_Bool startFlag;
    xdc_UInt32 period;
    xdc_UArg arg;
    xdc_runtime_IInstance_Params __iprms;
};

/* Struct */
struct ti_sysbios_knl_Clock_Struct {
    ti_sysbios_knl_Queue_Elem __f0;
    xdc_UInt32 __f1;
    xdc_UInt32 __f2;
    xdc_UInt32 __f3;
    volatile xdc_Bool __f4;
    ti_sysbios_knl_Clock_FuncPtr __f5;
    xdc_UArg __f6;
    xdc_runtime_Types_CordAddr __name;
};


/*
 * ======== FUNCTION DECLARATIONS ========
 */

/* Module_startup */


extern "C" xdc_Int ti_sysbios_knl_Clock_Module_startup__E( xdc_Int state );

extern "C" xdc_Int ti_sysbios_knl_Clock_Module_startup__F( xdc_Int state );

/* Instance_init__E */

extern "C" void ti_sysbios_knl_Clock_Instance_init__E(ti_sysbios_knl_Clock_Object *, ti_sysbios_knl_Clock_FuncPtr clockFxn, xdc_UInt timeout, const ti_sysbios_knl_Clock_Params *);

/* Instance_finalize__E */

extern "C" void ti_sysbios_knl_Clock_Instance_finalize__E( ti_sysbios_knl_Clock_Object* );

/* Handle__label__S */

extern "C" xdc_runtime_Types_Label *ti_sysbios_knl_Clock_Handle__label__S( xdc_Ptr obj, xdc_runtime_Types_Label *lab );

/* Module__startupDone__S */

extern "C" xdc_Bool ti_sysbios_knl_Clock_Module__startupDone__S( void );

/* Object__create__S */

extern "C" xdc_Ptr ti_sysbios_knl_Clock_Object__create__S( xdc_Ptr __oa, xdc_SizeT __osz, xdc_Ptr __aa, const xdc_UChar *__pa, xdc_SizeT __psz, xdc_runtime_Error_Block *__eb );

/* create */

extern "C" ti_sysbios_knl_Clock_Handle ti_sysbios_knl_Clock_create( ti_sysbios_knl_Clock_FuncPtr clockFxn, xdc_UInt timeout, const ti_sysbios_knl_Clock_Params *__prms, xdc_runtime_Error_Block *__eb );

/* construct */

extern "C" void ti_sysbios_knl_Clock_construct( ti_sysbios_knl_Clock_Struct *__obj, ti_sysbios_knl_Clock_FuncPtr clockFxn, xdc_UInt timeout, const ti_sysbios_knl_Clock_Params *__prms );

/* Object__delete__S */

extern "C" void ti_sysbios_knl_Clock_Object__delete__S( xdc_Ptr instp );

/* delete */

extern "C" void ti_sysbios_knl_Clock_delete(ti_sysbios_knl_Clock_Handle *instp);

/* Object__destruct__S */

extern "C" void ti_sysbios_knl_Clock_Object__destruct__S( xdc_Ptr objp );

/* destruct */

extern "C" void ti_sysbios_knl_Clock_destruct(ti_sysbios_knl_Clock_Struct *obj);

/* Object__get__S */

extern "C" xdc_Ptr ti_sysbios_knl_Clock_Object__get__S( xdc_Ptr oarr, xdc_Int i );

/* Object__first__S */

extern "C" xdc_Ptr ti_sysbios_knl_Clock_Object__first__S( void );

/* Object__next__S */

extern "C" xdc_Ptr ti_sysbios_knl_Clock_Object__next__S( xdc_Ptr obj );

/* Params__init__S */

extern "C" void ti_sysbios_knl_Clock_Params__init__S( xdc_Ptr dst, const void *src, xdc_SizeT psz, xdc_SizeT isz );

/* getTicks__E */


extern "C" xdc_UInt32 ti_sysbios_knl_Clock_getTicks__E( void );

/* getTimerHandle__E */


extern "C" ti_sysbios_knl_Clock_TimerProxy_Handle ti_sysbios_knl_Clock_getTimerHandle__E( void );

/* setTicks__E */


extern "C" void ti_sysbios_knl_Clock_setTicks__E( xdc_UInt32 ticks );

/* tickStop__E */


extern "C" void ti_sysbios_knl_Clock_tickStop__E( void );

/* tickReconfig__E */


extern "C" xdc_Bool ti_sysbios_knl_Clock_tickReconfig__E( void );

/* tickStart__E */


extern "C" void ti_sysbios_knl_Clock_tickStart__E( void );

/* tick__E */


extern "C" void ti_sysbios_knl_Clock_tick__E( void );

/* workFunc__E */


extern "C" void ti_sysbios_knl_Clock_workFunc__E( xdc_UArg arg0, xdc_UArg arg1 );

/* workFuncDynamic__E */


extern "C" void ti_sysbios_knl_Clock_workFuncDynamic__E( xdc_UArg arg0, xdc_UArg arg1 );

/* logTick__E */


extern "C" void ti_sysbios_knl_Clock_logTick__E( void );

/* getCompletedTicks__E */


extern "C" xdc_UInt32 ti_sysbios_knl_Clock_getCompletedTicks__E( void );

/* getTickPeriod__E */


extern "C" xdc_UInt32 ti_sysbios_knl_Clock_getTickPeriod__E( void );

/* getTicksUntilInterrupt__E */


extern "C" xdc_UInt32 ti_sysbios_knl_Clock_getTicksUntilInterrupt__E( void );

/* getTicksUntilTimeout__E */


extern "C" xdc_UInt32 ti_sysbios_knl_Clock_getTicksUntilTimeout__E( void );

/* walkQueueDynamic__E */


extern "C" xdc_UInt32 ti_sysbios_knl_Clock_walkQueueDynamic__E( xdc_Bool service, xdc_UInt32 tick );

/* walkQueuePeriodic__E */


extern "C" xdc_UInt32 ti_sysbios_knl_Clock_walkQueuePeriodic__E( void );

/* scheduleNextTick__E */


extern "C" void ti_sysbios_knl_Clock_scheduleNextTick__E( xdc_UInt32 deltaTicks, xdc_UInt32 absTick );

/* addI__E */


extern "C" void ti_sysbios_knl_Clock_addI__E( ti_sysbios_knl_Clock_Handle __inst, ti_sysbios_knl_Clock_FuncPtr clockFxn, xdc_UInt32 timeout, xdc_UArg arg );

/* removeI__E */


extern "C" void ti_sysbios_knl_Clock_removeI__E( ti_sysbios_knl_Clock_Handle __inst );

/* start__E */


extern "C" void ti_sysbios_knl_Clock_start__E( ti_sysbios_knl_Clock_Handle __inst );

/* startI__E */


extern "C" void ti_sysbios_knl_Clock_startI__E( ti_sysbios_knl_Clock_Handle __inst );

/* stop__E */


extern "C" void ti_sysbios_knl_Clock_stop__E( ti_sysbios_knl_Clock_Handle __inst );

/* setPeriod__E */


extern "C" void ti_sysbios_knl_Clock_setPeriod__E( ti_sysbios_knl_Clock_Handle __inst, xdc_UInt32 period );

/* setTimeout__E */


extern "C" void ti_sysbios_knl_Clock_setTimeout__E( ti_sysbios_knl_Clock_Handle __inst, xdc_UInt32 timeout );

/* setFunc__E */


extern "C" void ti_sysbios_knl_Clock_setFunc__E( ti_sysbios_knl_Clock_Handle __inst, ti_sysbios_knl_Clock_FuncPtr fxn, xdc_UArg arg );

/* getPeriod__E */


extern "C" xdc_UInt32 ti_sysbios_knl_Clock_getPeriod__E( ti_sysbios_knl_Clock_Handle __inst );

/* getTimeout__E */


extern "C" xdc_UInt32 ti_sysbios_knl_Clock_getTimeout__E( ti_sysbios_knl_Clock_Handle __inst );

/* isActive__E */


extern "C" xdc_Bool ti_sysbios_knl_Clock_isActive__E( ti_sysbios_knl_Clock_Handle __inst );

/* doTick__I */


extern "C" void ti_sysbios_knl_Clock_doTick__I( xdc_UArg arg );

/* triggerFunc__I */


extern "C" void ti_sysbios_knl_Clock_triggerFunc__I( xdc_UArg arg );


/*
 * ======== SYSTEM FUNCTIONS ========
 */

/* Module_startupDone */


/* Object_heap */


/* Module_heap */


/* Module_id */
static inline CT__ti_sysbios_knl_Clock_Module__id ti_sysbios_knl_Clock_Module_id( void ) 
{
    return ti_sysbios_knl_Clock_Module__id__C;
}

/* Module_hasMask */
static inline xdc_Bool ti_sysbios_knl_Clock_Module_hasMask( void ) 
{
    return ti_sysbios_knl_Clock_Module__diagsMask__C != 0;
}

/* Module_getMask */
static inline xdc_Bits16 ti_sysbios_knl_Clock_Module_getMask( void ) 
{
    return ti_sysbios_knl_Clock_Module__diagsMask__C != 0 ? *ti_sysbios_knl_Clock_Module__diagsMask__C : 0;
}

/* Module_setMask */
static inline void ti_sysbios_knl_Clock_Module_setMask( xdc_Bits16 mask ) 
{
    if (ti_sysbios_knl_Clock_Module__diagsMask__C != 0) *ti_sysbios_knl_Clock_Module__diagsMask__C = mask;
}

/* Params_init */
static inline void ti_sysbios_knl_Clock_Params_init( ti_sysbios_knl_Clock_Params *prms ) 
{
    if (prms) {
        ti_sysbios_knl_Clock_Params__init__S(prms, 0, sizeof(ti_sysbios_knl_Clock_Params), sizeof(xdc_runtime_IInstance_Params));
    }
}

/* Params_copy */
static inline void ti_sysbios_knl_Clock_Params_copy(ti_sysbios_knl_Clock_Params *dst, const ti_sysbios_knl_Clock_Params *src) 
{
    if (dst) {
        ti_sysbios_knl_Clock_Params__init__S(dst, (const void *)src, sizeof(ti_sysbios_knl_Clock_Params), sizeof(xdc_runtime_IInstance_Params));
    }
}

/* Object_count */


/* Object_sizeof */


/* Object_get */
static inline ti_sysbios_knl_Clock_Handle ti_sysbios_knl_Clock_Object_get(ti_sysbios_knl_Clock_Instance_State *oarr, int i) 
{
    return (ti_sysbios_knl_Clock_Handle)ti_sysbios_knl_Clock_Object__get__S(oarr, i);
}

/* Object_first */
static inline ti_sysbios_knl_Clock_Handle ti_sysbios_knl_Clock_Object_first( void )
{
    return (ti_sysbios_knl_Clock_Handle)ti_sysbios_knl_Clock_Object__first__S();
}

/* Object_next */
static inline ti_sysbios_knl_Clock_Handle ti_sysbios_knl_Clock_Object_next( ti_sysbios_knl_Clock_Object *obj )
{
    return (ti_sysbios_knl_Clock_Handle)ti_sysbios_knl_Clock_Object__next__S(obj);
}

/* Handle_label */
static inline xdc_runtime_Types_Label *ti_sysbios_knl_Clock_Handle_label( ti_sysbios_knl_Clock_Handle inst, xdc_runtime_Types_Label *lab )
{
    return ti_sysbios_knl_Clock_Handle__label__S(inst, lab);
}

/* Handle_name */
static inline xdc_String ti_sysbios_knl_Clock_Handle_name( ti_sysbios_knl_Clock_Handle inst )
{
    xdc_runtime_Types_Label lab;
    return ti_sysbios_knl_Clock_Handle__label__S(inst, &lab)->iname;
}

/* handle */
static inline ti_sysbios_knl_Clock_Handle ti_sysbios_knl_Clock_handle( ti_sysbios_knl_Clock_Struct *str )
{
    return (ti_sysbios_knl_Clock_Handle)str;
}

/* struct */
static inline ti_sysbios_knl_Clock_Struct *ti_sysbios_knl_Clock_struct( ti_sysbios_knl_Clock_Handle inst )
{
    return (ti_sysbios_knl_Clock_Struct*)inst;
}


/*
 * ======== EPILOGUE ========
 */








/*
 * ======== STATE STRUCTURES ========
 */

# 670 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Clock.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 69 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Task.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/package/Task_SupportProxy.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     MODULE-WIDE CONFIGS
 *     VIRTUAL FUNCTIONS
 *     FUNCTION DECLARATIONS
 *     CONVERTORS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 54 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/package/Task_SupportProxy.h"


# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/interfaces/ITaskSupport.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 197 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/interfaces/ITaskSupport.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 57 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/package/Task_SupportProxy.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* FuncPtr */
typedef ti_sysbios_interfaces_ITaskSupport_FuncPtr ti_sysbios_knl_Task_SupportProxy_FuncPtr;


/*
 * ======== MODULE-WIDE CONFIGS ========
 */

/* Module__diagsEnabled */
typedef xdc_Bits32 CT__ti_sysbios_knl_Task_SupportProxy_Module__diagsEnabled;
extern "C"  const CT__ti_sysbios_knl_Task_SupportProxy_Module__diagsEnabled ti_sysbios_knl_Task_SupportProxy_Module__diagsEnabled__C;

/* Module__diagsIncluded */
typedef xdc_Bits32 CT__ti_sysbios_knl_Task_SupportProxy_Module__diagsIncluded;
extern "C"  const CT__ti_sysbios_knl_Task_SupportProxy_Module__diagsIncluded ti_sysbios_knl_Task_SupportProxy_Module__diagsIncluded__C;

/* Module__diagsMask */
typedef xdc_Bits16 *CT__ti_sysbios_knl_Task_SupportProxy_Module__diagsMask;
extern "C"  const CT__ti_sysbios_knl_Task_SupportProxy_Module__diagsMask ti_sysbios_knl_Task_SupportProxy_Module__diagsMask__C;

/* Module__gateObj */
typedef xdc_Ptr CT__ti_sysbios_knl_Task_SupportProxy_Module__gateObj;
extern "C"  const CT__ti_sysbios_knl_Task_SupportProxy_Module__gateObj ti_sysbios_knl_Task_SupportProxy_Module__gateObj__C;

/* Module__gatePrms */
typedef xdc_Ptr CT__ti_sysbios_knl_Task_SupportProxy_Module__gatePrms;
extern "C"  const CT__ti_sysbios_knl_Task_SupportProxy_Module__gatePrms ti_sysbios_knl_Task_SupportProxy_Module__gatePrms__C;

/* Module__id */
typedef xdc_runtime_Types_ModuleId CT__ti_sysbios_knl_Task_SupportProxy_Module__id;
extern "C"  const CT__ti_sysbios_knl_Task_SupportProxy_Module__id ti_sysbios_knl_Task_SupportProxy_Module__id__C;

/* Module__loggerDefined */
typedef xdc_Bool CT__ti_sysbios_knl_Task_SupportProxy_Module__loggerDefined;
extern "C"  const CT__ti_sysbios_knl_Task_SupportProxy_Module__loggerDefined ti_sysbios_knl_Task_SupportProxy_Module__loggerDefined__C;

/* Module__loggerObj */
typedef xdc_Ptr CT__ti_sysbios_knl_Task_SupportProxy_Module__loggerObj;
extern "C"  const CT__ti_sysbios_knl_Task_SupportProxy_Module__loggerObj ti_sysbios_knl_Task_SupportProxy_Module__loggerObj__C;

/* Module__loggerFxn0 */
typedef xdc_runtime_Types_LoggerFxn0 CT__ti_sysbios_knl_Task_SupportProxy_Module__loggerFxn0;
extern "C"  const CT__ti_sysbios_knl_Task_SupportProxy_Module__loggerFxn0 ti_sysbios_knl_Task_SupportProxy_Module__loggerFxn0__C;

/* Module__loggerFxn1 */
typedef xdc_runtime_Types_LoggerFxn1 CT__ti_sysbios_knl_Task_SupportProxy_Module__loggerFxn1;
extern "C"  const CT__ti_sysbios_knl_Task_SupportProxy_Module__loggerFxn1 ti_sysbios_knl_Task_SupportProxy_Module__loggerFxn1__C;

/* Module__loggerFxn2 */
typedef xdc_runtime_Types_LoggerFxn2 CT__ti_sysbios_knl_Task_SupportProxy_Module__loggerFxn2;
extern "C"  const CT__ti_sysbios_knl_Task_SupportProxy_Module__loggerFxn2 ti_sysbios_knl_Task_SupportProxy_Module__loggerFxn2__C;

/* Module__loggerFxn4 */
typedef xdc_runtime_Types_LoggerFxn4 CT__ti_sysbios_knl_Task_SupportProxy_Module__loggerFxn4;
extern "C"  const CT__ti_sysbios_knl_Task_SupportProxy_Module__loggerFxn4 ti_sysbios_knl_Task_SupportProxy_Module__loggerFxn4__C;

/* Module__loggerFxn8 */
typedef xdc_runtime_Types_LoggerFxn8 CT__ti_sysbios_knl_Task_SupportProxy_Module__loggerFxn8;
extern "C"  const CT__ti_sysbios_knl_Task_SupportProxy_Module__loggerFxn8 ti_sysbios_knl_Task_SupportProxy_Module__loggerFxn8__C;

/* Module__startupDoneFxn */
typedef xdc_Bool (*CT__ti_sysbios_knl_Task_SupportProxy_Module__startupDoneFxn)(void);
extern "C"  const CT__ti_sysbios_knl_Task_SupportProxy_Module__startupDoneFxn ti_sysbios_knl_Task_SupportProxy_Module__startupDoneFxn__C;

/* Object__count */
typedef xdc_Int CT__ti_sysbios_knl_Task_SupportProxy_Object__count;
extern "C"  const CT__ti_sysbios_knl_Task_SupportProxy_Object__count ti_sysbios_knl_Task_SupportProxy_Object__count__C;

/* Object__heap */
typedef xdc_runtime_IHeap_Handle CT__ti_sysbios_knl_Task_SupportProxy_Object__heap;
extern "C"  const CT__ti_sysbios_knl_Task_SupportProxy_Object__heap ti_sysbios_knl_Task_SupportProxy_Object__heap__C;

/* Object__sizeof */
typedef xdc_SizeT CT__ti_sysbios_knl_Task_SupportProxy_Object__sizeof;
extern "C"  const CT__ti_sysbios_knl_Task_SupportProxy_Object__sizeof ti_sysbios_knl_Task_SupportProxy_Object__sizeof__C;

/* Object__table */
typedef xdc_Ptr CT__ti_sysbios_knl_Task_SupportProxy_Object__table;
extern "C"  const CT__ti_sysbios_knl_Task_SupportProxy_Object__table ti_sysbios_knl_Task_SupportProxy_Object__table__C;

/* defaultStackSize */




typedef xdc_SizeT CT__ti_sysbios_knl_Task_SupportProxy_defaultStackSize;
extern "C"  const CT__ti_sysbios_knl_Task_SupportProxy_defaultStackSize ti_sysbios_knl_Task_SupportProxy_defaultStackSize__C;


/* stackAlignment */




typedef xdc_UInt CT__ti_sysbios_knl_Task_SupportProxy_stackAlignment;
extern "C"  const CT__ti_sysbios_knl_Task_SupportProxy_stackAlignment ti_sysbios_knl_Task_SupportProxy_stackAlignment__C;



/*
 * ======== VIRTUAL FUNCTIONS ========
 */

/* Fxns__ */
struct ti_sysbios_knl_Task_SupportProxy_Fxns__ {
    xdc_runtime_Types_Base* __base;
    const xdc_runtime_Types_SysFxns2 *__sysp;
    xdc_Ptr (*start)(xdc_Ptr, ti_sysbios_interfaces_ITaskSupport_FuncPtr, ti_sysbios_interfaces_ITaskSupport_FuncPtr, xdc_runtime_Error_Block*);
    void (*swap)(xdc_Ptr*, xdc_Ptr*);
    xdc_Bool (*checkStack)(xdc_Char*, xdc_SizeT);
    xdc_SizeT (*stackUsed)(xdc_Char*, xdc_SizeT);
    xdc_UInt (*getStackAlignment)(void);
    xdc_SizeT (*getDefaultStackSize)(void);
    xdc_runtime_Types_SysFxns2 __sfxns;
};

/* Module__FXNS__C */
extern "C" const ti_sysbios_knl_Task_SupportProxy_Fxns__ ti_sysbios_knl_Task_SupportProxy_Module__FXNS__C;


/*
 * ======== FUNCTION DECLARATIONS ========
 */

/* Module_startup */


/* Handle__label__S */

extern "C" xdc_runtime_Types_Label *ti_sysbios_knl_Task_SupportProxy_Handle__label__S( xdc_Ptr obj, xdc_runtime_Types_Label *lab );

/* Module__startupDone__S */

extern "C" xdc_Bool ti_sysbios_knl_Task_SupportProxy_Module__startupDone__S( void );

/* Object__create__S */

extern "C" xdc_Ptr ti_sysbios_knl_Task_SupportProxy_Object__create__S( xdc_Ptr __oa, xdc_SizeT __osz, xdc_Ptr __aa, const xdc_UChar *__pa, xdc_SizeT __psz, xdc_runtime_Error_Block *__eb );

/* Object__delete__S */

extern "C" void ti_sysbios_knl_Task_SupportProxy_Object__delete__S( xdc_Ptr instp );

/* Object__destruct__S */

extern "C" void ti_sysbios_knl_Task_SupportProxy_Object__destruct__S( xdc_Ptr objp );

/* Object__get__S */

extern "C" xdc_Ptr ti_sysbios_knl_Task_SupportProxy_Object__get__S( xdc_Ptr oarr, xdc_Int i );

/* Object__first__S */

extern "C" xdc_Ptr ti_sysbios_knl_Task_SupportProxy_Object__first__S( void );

/* Object__next__S */

extern "C" xdc_Ptr ti_sysbios_knl_Task_SupportProxy_Object__next__S( xdc_Ptr obj );

/* Params__init__S */

extern "C" void ti_sysbios_knl_Task_SupportProxy_Params__init__S( xdc_Ptr dst, const void *src, xdc_SizeT psz, xdc_SizeT isz );

/* Proxy__abstract__S */

extern "C" xdc_Bool ti_sysbios_knl_Task_SupportProxy_Proxy__abstract__S( void );

/* Proxy__delegate__S */

extern "C" xdc_Ptr ti_sysbios_knl_Task_SupportProxy_Proxy__delegate__S( void );

/* start__E */


extern "C" xdc_Ptr ti_sysbios_knl_Task_SupportProxy_start__E( xdc_Ptr curTask, ti_sysbios_interfaces_ITaskSupport_FuncPtr enter, ti_sysbios_interfaces_ITaskSupport_FuncPtr exit, xdc_runtime_Error_Block *eb );

/* swap__E */


extern "C" void ti_sysbios_knl_Task_SupportProxy_swap__E( xdc_Ptr *oldtskContext, xdc_Ptr *newtskContext );

/* checkStack__E */


extern "C" xdc_Bool ti_sysbios_knl_Task_SupportProxy_checkStack__E( xdc_Char *stack, xdc_SizeT size );

/* stackUsed__E */


extern "C" xdc_SizeT ti_sysbios_knl_Task_SupportProxy_stackUsed__E( xdc_Char *stack, xdc_SizeT size );

/* getStackAlignment__E */


extern "C" xdc_UInt ti_sysbios_knl_Task_SupportProxy_getStackAlignment__E( void );

/* getDefaultStackSize__E */


extern "C" xdc_SizeT ti_sysbios_knl_Task_SupportProxy_getDefaultStackSize__E( void );


/*
 * ======== CONVERTORS ========
 */

/* Module_upCast */
static inline ti_sysbios_interfaces_ITaskSupport_Module ti_sysbios_knl_Task_SupportProxy_Module_upCast( void )
{
    return (ti_sysbios_interfaces_ITaskSupport_Module)ti_sysbios_knl_Task_SupportProxy_Proxy__delegate__S();
}

/* Module_to_ti_sysbios_interfaces_ITaskSupport */



/*
 * ======== SYSTEM FUNCTIONS ========
 */

/* Module_startupDone */


/* Object_heap */


/* Module_heap */


/* Module_id */
static inline CT__ti_sysbios_knl_Task_SupportProxy_Module__id ti_sysbios_knl_Task_SupportProxy_Module_id( void ) 
{
    return ti_sysbios_knl_Task_SupportProxy_Module__id__C;
}

/* Proxy_abstract */


/* Proxy_delegate */



/*
 * ======== EPILOGUE ========
 */








/*
 * ======== PREFIX ALIASES ========
 */

# 70 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Task.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* FuncPtr */
typedef void (*ti_sysbios_knl_Task_FuncPtr)(xdc_UArg, xdc_UArg);

/* AllBlockedFuncPtr */
typedef void (*ti_sysbios_knl_Task_AllBlockedFuncPtr)(void);

/* Mode */
enum ti_sysbios_knl_Task_Mode {
    ti_sysbios_knl_Task_Mode_RUNNING,
    ti_sysbios_knl_Task_Mode_READY,
    ti_sysbios_knl_Task_Mode_BLOCKED,
    ti_sysbios_knl_Task_Mode_TERMINATED,
    ti_sysbios_knl_Task_Mode_INACTIVE
};
typedef enum ti_sysbios_knl_Task_Mode ti_sysbios_knl_Task_Mode;

/* Stat */
struct ti_sysbios_knl_Task_Stat {
    xdc_Int priority;
    xdc_Ptr stack;
    xdc_SizeT stackSize;
    xdc_runtime_IHeap_Handle stackHeap;
    xdc_Ptr env;
    ti_sysbios_knl_Task_Mode mode;
    xdc_Ptr sp;
    xdc_SizeT used;
};

/* HookSet */
struct ti_sysbios_knl_Task_HookSet {
    void (*registerFxn)(xdc_Int);
    void (*createFxn)(ti_sysbios_knl_Task_Handle, xdc_runtime_Error_Block*);
    void (*readyFxn)(ti_sysbios_knl_Task_Handle);
    void (*switchFxn)(ti_sysbios_knl_Task_Handle, ti_sysbios_knl_Task_Handle);
    void (*exitFxn)(ti_sysbios_knl_Task_Handle);
    void (*deleteFxn)(ti_sysbios_knl_Task_Handle);
};

/* AFFINITY_NONE */



/*
 * ======== CREATE ARGS ========
 */

/* Args__create */
typedef struct ti_sysbios_knl_Task_Args__create {
    ti_sysbios_knl_Task_FuncPtr fxn;
} ti_sysbios_knl_Task_Args__create;


/*
 * ======== INTERNAL DEFINITIONS ========
 */

/* PendElem */
struct ti_sysbios_knl_Task_PendElem {
    ti_sysbios_knl_Queue_Elem qElem;
    ti_sysbios_knl_Task_Handle task;
    ti_sysbios_knl_Clock_Handle clock;
};

/* Instance_State */
typedef xdc_Char __T1_ti_sysbios_knl_Task_Instance_State__stack;
typedef xdc_Char *__ARRAY1_ti_sysbios_knl_Task_Instance_State__stack;
typedef __ARRAY1_ti_sysbios_knl_Task_Instance_State__stack __TA_ti_sysbios_knl_Task_Instance_State__stack;
typedef xdc_Ptr __T1_ti_sysbios_knl_Task_Instance_State__hookEnv;
typedef xdc_Ptr *__ARRAY1_ti_sysbios_knl_Task_Instance_State__hookEnv;
typedef __ARRAY1_ti_sysbios_knl_Task_Instance_State__hookEnv __TA_ti_sysbios_knl_Task_Instance_State__hookEnv;

/* Module_State */
typedef ti_sysbios_knl_Queue_Instance_State __T1_ti_sysbios_knl_Task_Module_State__readyQ;
typedef ti_sysbios_knl_Queue_Instance_State *__ARRAY1_ti_sysbios_knl_Task_Module_State__readyQ;
typedef __ARRAY1_ti_sysbios_knl_Task_Module_State__readyQ __TA_ti_sysbios_knl_Task_Module_State__readyQ;
typedef volatile xdc_UInt __T1_ti_sysbios_knl_Task_Module_State__smpCurSet;
typedef volatile xdc_UInt *__ARRAY1_ti_sysbios_knl_Task_Module_State__smpCurSet;
typedef __ARRAY1_ti_sysbios_knl_Task_Module_State__smpCurSet __TA_ti_sysbios_knl_Task_Module_State__smpCurSet;
typedef volatile xdc_UInt __T1_ti_sysbios_knl_Task_Module_State__smpCurMask;
typedef volatile xdc_UInt *__ARRAY1_ti_sysbios_knl_Task_Module_State__smpCurMask;
typedef __ARRAY1_ti_sysbios_knl_Task_Module_State__smpCurMask __TA_ti_sysbios_knl_Task_Module_State__smpCurMask;
typedef ti_sysbios_knl_Task_Handle __T1_ti_sysbios_knl_Task_Module_State__smpCurTask;
typedef ti_sysbios_knl_Task_Handle *__ARRAY1_ti_sysbios_knl_Task_Module_State__smpCurTask;
typedef __ARRAY1_ti_sysbios_knl_Task_Module_State__smpCurTask __TA_ti_sysbios_knl_Task_Module_State__smpCurTask;
typedef ti_sysbios_knl_Queue_Handle __T1_ti_sysbios_knl_Task_Module_State__smpReadyQ;
typedef ti_sysbios_knl_Queue_Handle *__ARRAY1_ti_sysbios_knl_Task_Module_State__smpReadyQ;
typedef __ARRAY1_ti_sysbios_knl_Task_Module_State__smpReadyQ __TA_ti_sysbios_knl_Task_Module_State__smpReadyQ;
typedef ti_sysbios_knl_Task_Handle __T1_ti_sysbios_knl_Task_Module_State__idleTask;
typedef ti_sysbios_knl_Task_Handle *__ARRAY1_ti_sysbios_knl_Task_Module_State__idleTask;
typedef __ARRAY1_ti_sysbios_knl_Task_Module_State__idleTask __TA_ti_sysbios_knl_Task_Module_State__idleTask;
typedef ti_sysbios_knl_Task_Handle __T1_ti_sysbios_knl_Task_Module_State__constructedTasks;
typedef ti_sysbios_knl_Task_Handle *__ARRAY1_ti_sysbios_knl_Task_Module_State__constructedTasks;
typedef __ARRAY1_ti_sysbios_knl_Task_Module_State__constructedTasks __TA_ti_sysbios_knl_Task_Module_State__constructedTasks;

/* RunQEntry */
struct ti_sysbios_knl_Task_RunQEntry {
    ti_sysbios_knl_Queue_Elem elem;
    xdc_UInt coreId;
    xdc_Int priority;
};

/* Module_StateSmp */
typedef volatile ti_sysbios_knl_Task_RunQEntry __T1_ti_sysbios_knl_Task_Module_StateSmp__smpRunQ;
typedef volatile ti_sysbios_knl_Task_RunQEntry *__ARRAY1_ti_sysbios_knl_Task_Module_StateSmp__smpRunQ;
typedef __ARRAY1_ti_sysbios_knl_Task_Module_StateSmp__smpRunQ __TA_ti_sysbios_knl_Task_Module_StateSmp__smpRunQ;
struct ti_sysbios_knl_Task_Module_StateSmp {
    ti_sysbios_knl_Queue_Object *sortedRunQ;
    __TA_ti_sysbios_knl_Task_Module_StateSmp__smpRunQ smpRunQ;
};


/*
 * ======== MODULE-WIDE CONFIGS ========
 */

/* Module__diagsEnabled */
typedef xdc_Bits32 CT__ti_sysbios_knl_Task_Module__diagsEnabled;
extern "C"  const CT__ti_sysbios_knl_Task_Module__diagsEnabled ti_sysbios_knl_Task_Module__diagsEnabled__C;

/* Module__diagsIncluded */
typedef xdc_Bits32 CT__ti_sysbios_knl_Task_Module__diagsIncluded;
extern "C"  const CT__ti_sysbios_knl_Task_Module__diagsIncluded ti_sysbios_knl_Task_Module__diagsIncluded__C;

/* Module__diagsMask */
typedef xdc_Bits16 *CT__ti_sysbios_knl_Task_Module__diagsMask;
extern "C"  const CT__ti_sysbios_knl_Task_Module__diagsMask ti_sysbios_knl_Task_Module__diagsMask__C;

/* Module__gateObj */
typedef xdc_Ptr CT__ti_sysbios_knl_Task_Module__gateObj;
extern "C"  const CT__ti_sysbios_knl_Task_Module__gateObj ti_sysbios_knl_Task_Module__gateObj__C;

/* Module__gatePrms */
typedef xdc_Ptr CT__ti_sysbios_knl_Task_Module__gatePrms;
extern "C"  const CT__ti_sysbios_knl_Task_Module__gatePrms ti_sysbios_knl_Task_Module__gatePrms__C;

/* Module__id */
typedef xdc_runtime_Types_ModuleId CT__ti_sysbios_knl_Task_Module__id;
extern "C"  const CT__ti_sysbios_knl_Task_Module__id ti_sysbios_knl_Task_Module__id__C;

/* Module__loggerDefined */
typedef xdc_Bool CT__ti_sysbios_knl_Task_Module__loggerDefined;
extern "C"  const CT__ti_sysbios_knl_Task_Module__loggerDefined ti_sysbios_knl_Task_Module__loggerDefined__C;

/* Module__loggerObj */
typedef xdc_Ptr CT__ti_sysbios_knl_Task_Module__loggerObj;
extern "C"  const CT__ti_sysbios_knl_Task_Module__loggerObj ti_sysbios_knl_Task_Module__loggerObj__C;

/* Module__loggerFxn0 */
typedef xdc_runtime_Types_LoggerFxn0 CT__ti_sysbios_knl_Task_Module__loggerFxn0;
extern "C"  const CT__ti_sysbios_knl_Task_Module__loggerFxn0 ti_sysbios_knl_Task_Module__loggerFxn0__C;

/* Module__loggerFxn1 */
typedef xdc_runtime_Types_LoggerFxn1 CT__ti_sysbios_knl_Task_Module__loggerFxn1;
extern "C"  const CT__ti_sysbios_knl_Task_Module__loggerFxn1 ti_sysbios_knl_Task_Module__loggerFxn1__C;

/* Module__loggerFxn2 */
typedef xdc_runtime_Types_LoggerFxn2 CT__ti_sysbios_knl_Task_Module__loggerFxn2;
extern "C"  const CT__ti_sysbios_knl_Task_Module__loggerFxn2 ti_sysbios_knl_Task_Module__loggerFxn2__C;

/* Module__loggerFxn4 */
typedef xdc_runtime_Types_LoggerFxn4 CT__ti_sysbios_knl_Task_Module__loggerFxn4;
extern "C"  const CT__ti_sysbios_knl_Task_Module__loggerFxn4 ti_sysbios_knl_Task_Module__loggerFxn4__C;

/* Module__loggerFxn8 */
typedef xdc_runtime_Types_LoggerFxn8 CT__ti_sysbios_knl_Task_Module__loggerFxn8;
extern "C"  const CT__ti_sysbios_knl_Task_Module__loggerFxn8 ti_sysbios_knl_Task_Module__loggerFxn8__C;

/* Module__startupDoneFxn */
typedef xdc_Bool (*CT__ti_sysbios_knl_Task_Module__startupDoneFxn)(void);
extern "C"  const CT__ti_sysbios_knl_Task_Module__startupDoneFxn ti_sysbios_knl_Task_Module__startupDoneFxn__C;

/* Object__count */
typedef xdc_Int CT__ti_sysbios_knl_Task_Object__count;
extern "C"  const CT__ti_sysbios_knl_Task_Object__count ti_sysbios_knl_Task_Object__count__C;

/* Object__heap */
typedef xdc_runtime_IHeap_Handle CT__ti_sysbios_knl_Task_Object__heap;
extern "C"  const CT__ti_sysbios_knl_Task_Object__heap ti_sysbios_knl_Task_Object__heap__C;

/* Object__sizeof */
typedef xdc_SizeT CT__ti_sysbios_knl_Task_Object__sizeof;
extern "C"  const CT__ti_sysbios_knl_Task_Object__sizeof ti_sysbios_knl_Task_Object__sizeof__C;

/* Object__table */
typedef xdc_Ptr CT__ti_sysbios_knl_Task_Object__table;
extern "C"  const CT__ti_sysbios_knl_Task_Object__table ti_sysbios_knl_Task_Object__table__C;

/* LM_switch */

typedef xdc_runtime_Log_Event CT__ti_sysbios_knl_Task_LM_switch;
extern "C"  const CT__ti_sysbios_knl_Task_LM_switch ti_sysbios_knl_Task_LM_switch__C;

/* LM_sleep */

typedef xdc_runtime_Log_Event CT__ti_sysbios_knl_Task_LM_sleep;
extern "C"  const CT__ti_sysbios_knl_Task_LM_sleep ti_sysbios_knl_Task_LM_sleep__C;

/* LD_ready */

typedef xdc_runtime_Log_Event CT__ti_sysbios_knl_Task_LD_ready;
extern "C"  const CT__ti_sysbios_knl_Task_LD_ready ti_sysbios_knl_Task_LD_ready__C;

/* LD_block */

typedef xdc_runtime_Log_Event CT__ti_sysbios_knl_Task_LD_block;
extern "C"  const CT__ti_sysbios_knl_Task_LD_block ti_sysbios_knl_Task_LD_block__C;

/* LM_yield */

typedef xdc_runtime_Log_Event CT__ti_sysbios_knl_Task_LM_yield;
extern "C"  const CT__ti_sysbios_knl_Task_LM_yield ti_sysbios_knl_Task_LM_yield__C;

/* LM_setPri */

typedef xdc_runtime_Log_Event CT__ti_sysbios_knl_Task_LM_setPri;
extern "C"  const CT__ti_sysbios_knl_Task_LM_setPri ti_sysbios_knl_Task_LM_setPri__C;

/* LD_exit */

typedef xdc_runtime_Log_Event CT__ti_sysbios_knl_Task_LD_exit;
extern "C"  const CT__ti_sysbios_knl_Task_LD_exit ti_sysbios_knl_Task_LD_exit__C;

/* LM_setAffinity */

typedef xdc_runtime_Log_Event CT__ti_sysbios_knl_Task_LM_setAffinity;
extern "C"  const CT__ti_sysbios_knl_Task_LM_setAffinity ti_sysbios_knl_Task_LM_setAffinity__C;

/* LM_schedule */

typedef xdc_runtime_Log_Event CT__ti_sysbios_knl_Task_LM_schedule;
extern "C"  const CT__ti_sysbios_knl_Task_LM_schedule ti_sysbios_knl_Task_LM_schedule__C;

/* LM_noWork */

typedef xdc_runtime_Log_Event CT__ti_sysbios_knl_Task_LM_noWork;
extern "C"  const CT__ti_sysbios_knl_Task_LM_noWork ti_sysbios_knl_Task_LM_noWork__C;

/* E_stackOverflow */

typedef xdc_runtime_Error_Id CT__ti_sysbios_knl_Task_E_stackOverflow;
extern "C"  const CT__ti_sysbios_knl_Task_E_stackOverflow ti_sysbios_knl_Task_E_stackOverflow__C;

/* E_spOutOfBounds */

typedef xdc_runtime_Error_Id CT__ti_sysbios_knl_Task_E_spOutOfBounds;
extern "C"  const CT__ti_sysbios_knl_Task_E_spOutOfBounds ti_sysbios_knl_Task_E_spOutOfBounds__C;

/* E_deleteNotAllowed */

typedef xdc_runtime_Error_Id CT__ti_sysbios_knl_Task_E_deleteNotAllowed;
extern "C"  const CT__ti_sysbios_knl_Task_E_deleteNotAllowed ti_sysbios_knl_Task_E_deleteNotAllowed__C;

/* A_badThreadType */

typedef xdc_runtime_Assert_Id CT__ti_sysbios_knl_Task_A_badThreadType;
extern "C"  const CT__ti_sysbios_knl_Task_A_badThreadType ti_sysbios_knl_Task_A_badThreadType__C;

/* A_badTaskState */

typedef xdc_runtime_Assert_Id CT__ti_sysbios_knl_Task_A_badTaskState;
extern "C"  const CT__ti_sysbios_knl_Task_A_badTaskState ti_sysbios_knl_Task_A_badTaskState__C;

/* A_noPendElem */

typedef xdc_runtime_Assert_Id CT__ti_sysbios_knl_Task_A_noPendElem;
extern "C"  const CT__ti_sysbios_knl_Task_A_noPendElem ti_sysbios_knl_Task_A_noPendElem__C;

/* A_taskDisabled */

typedef xdc_runtime_Assert_Id CT__ti_sysbios_knl_Task_A_taskDisabled;
extern "C"  const CT__ti_sysbios_knl_Task_A_taskDisabled ti_sysbios_knl_Task_A_taskDisabled__C;

/* A_badPriority */

typedef xdc_runtime_Assert_Id CT__ti_sysbios_knl_Task_A_badPriority;
extern "C"  const CT__ti_sysbios_knl_Task_A_badPriority ti_sysbios_knl_Task_A_badPriority__C;

/* A_badTimeout */

typedef xdc_runtime_Assert_Id CT__ti_sysbios_knl_Task_A_badTimeout;
extern "C"  const CT__ti_sysbios_knl_Task_A_badTimeout ti_sysbios_knl_Task_A_badTimeout__C;

/* A_badAffinity */

typedef xdc_runtime_Assert_Id CT__ti_sysbios_knl_Task_A_badAffinity;
extern "C"  const CT__ti_sysbios_knl_Task_A_badAffinity ti_sysbios_knl_Task_A_badAffinity__C;

/* A_sleepTaskDisabled */

typedef xdc_runtime_Assert_Id CT__ti_sysbios_knl_Task_A_sleepTaskDisabled;
extern "C"  const CT__ti_sysbios_knl_Task_A_sleepTaskDisabled ti_sysbios_knl_Task_A_sleepTaskDisabled__C;

/* A_invalidCoreId */

typedef xdc_runtime_Assert_Id CT__ti_sysbios_knl_Task_A_invalidCoreId;
extern "C"  const CT__ti_sysbios_knl_Task_A_invalidCoreId ti_sysbios_knl_Task_A_invalidCoreId__C;

/* numPriorities */




typedef xdc_UInt CT__ti_sysbios_knl_Task_numPriorities;
extern "C"  const CT__ti_sysbios_knl_Task_numPriorities ti_sysbios_knl_Task_numPriorities__C;


/* defaultStackSize */




typedef xdc_SizeT CT__ti_sysbios_knl_Task_defaultStackSize;
extern "C"  const CT__ti_sysbios_knl_Task_defaultStackSize ti_sysbios_knl_Task_defaultStackSize__C;


/* defaultStackHeap */

typedef xdc_runtime_IHeap_Handle CT__ti_sysbios_knl_Task_defaultStackHeap;
extern "C"  const CT__ti_sysbios_knl_Task_defaultStackHeap ti_sysbios_knl_Task_defaultStackHeap__C;

/* allBlockedFunc */

typedef ti_sysbios_knl_Task_AllBlockedFuncPtr CT__ti_sysbios_knl_Task_allBlockedFunc;
extern "C"  const CT__ti_sysbios_knl_Task_allBlockedFunc ti_sysbios_knl_Task_allBlockedFunc__C;

/* initStackFlag */




typedef xdc_Bool CT__ti_sysbios_knl_Task_initStackFlag;
extern "C"  const CT__ti_sysbios_knl_Task_initStackFlag ti_sysbios_knl_Task_initStackFlag__C;


/* checkStackFlag */




typedef xdc_Bool CT__ti_sysbios_knl_Task_checkStackFlag;
extern "C"  const CT__ti_sysbios_knl_Task_checkStackFlag ti_sysbios_knl_Task_checkStackFlag__C;


/* deleteTerminatedTasks */




typedef xdc_Bool CT__ti_sysbios_knl_Task_deleteTerminatedTasks;
extern "C"  const CT__ti_sysbios_knl_Task_deleteTerminatedTasks ti_sysbios_knl_Task_deleteTerminatedTasks__C;


/* hooks */

typedef ti_sysbios_knl_Task_HookSet __T1_ti_sysbios_knl_Task_hooks;
typedef struct { int length; ti_sysbios_knl_Task_HookSet *elem; } __ARRAY1_ti_sysbios_knl_Task_hooks;
typedef __ARRAY1_ti_sysbios_knl_Task_hooks __TA_ti_sysbios_knl_Task_hooks;
typedef __TA_ti_sysbios_knl_Task_hooks CT__ti_sysbios_knl_Task_hooks;
extern "C"  const CT__ti_sysbios_knl_Task_hooks ti_sysbios_knl_Task_hooks__C;

/* numConstructedTasks */




typedef xdc_UInt CT__ti_sysbios_knl_Task_numConstructedTasks;
extern "C"  const CT__ti_sysbios_knl_Task_numConstructedTasks ti_sysbios_knl_Task_numConstructedTasks__C;


/* startupHookFunc */

typedef void (*CT__ti_sysbios_knl_Task_startupHookFunc)(void);
extern "C"  const CT__ti_sysbios_knl_Task_startupHookFunc ti_sysbios_knl_Task_startupHookFunc__C;


/*
 * ======== PER-INSTANCE TYPES ========
 */

/* Params */
struct ti_sysbios_knl_Task_Params {
    size_t __size;
    const void *__self;
    void *__fxns;
    xdc_runtime_IInstance_Params *instance;
    xdc_UArg arg0;
    xdc_UArg arg1;
    xdc_Int priority;
    xdc_Ptr stack;
    xdc_SizeT stackSize;
    xdc_runtime_IHeap_Handle stackHeap;
    xdc_Ptr env;
    xdc_Bool vitalTaskFlag;
    xdc_UInt affinity;
    xdc_runtime_IInstance_Params __iprms;
};

/* Struct */
struct ti_sysbios_knl_Task_Struct {
    ti_sysbios_knl_Queue_Elem __f0;
    volatile xdc_Int __f1;
    xdc_UInt __f2;
    xdc_Ptr __f3;
    ti_sysbios_knl_Task_Mode __f4;
    ti_sysbios_knl_Task_PendElem *__f5;
    xdc_SizeT __f6;
    __TA_ti_sysbios_knl_Task_Instance_State__stack __f7;
    xdc_runtime_IHeap_Handle __f8;
    ti_sysbios_knl_Task_FuncPtr __f9;
    xdc_UArg __f10;
    xdc_UArg __f11;
    xdc_Ptr __f12;
    __TA_ti_sysbios_knl_Task_Instance_State__hookEnv __f13;
    xdc_Bool __f14;
    ti_sysbios_knl_Queue_Handle __f15;
    xdc_UInt __f16;
    xdc_UInt __f17;
    xdc_runtime_Types_CordAddr __name;
};


/*
 * ======== FUNCTION DECLARATIONS ========
 */

/* Module_startup */


extern "C" xdc_Int ti_sysbios_knl_Task_Module_startup__E( xdc_Int state );

extern "C" xdc_Int ti_sysbios_knl_Task_Module_startup__F( xdc_Int state );

/* Instance_init__E */

extern "C" xdc_Int ti_sysbios_knl_Task_Instance_init__E(ti_sysbios_knl_Task_Object *, ti_sysbios_knl_Task_FuncPtr fxn, const ti_sysbios_knl_Task_Params *, xdc_runtime_Error_Block *);

/* Instance_finalize__E */

extern "C" void ti_sysbios_knl_Task_Instance_finalize__E( ti_sysbios_knl_Task_Object* , int );

/* Handle__label__S */

extern "C" xdc_runtime_Types_Label *ti_sysbios_knl_Task_Handle__label__S( xdc_Ptr obj, xdc_runtime_Types_Label *lab );

/* Module__startupDone__S */

extern "C" xdc_Bool ti_sysbios_knl_Task_Module__startupDone__S( void );

/* Object__create__S */

extern "C" xdc_Ptr ti_sysbios_knl_Task_Object__create__S( xdc_Ptr __oa, xdc_SizeT __osz, xdc_Ptr __aa, const xdc_UChar *__pa, xdc_SizeT __psz, xdc_runtime_Error_Block *__eb );

/* create */

extern "C" ti_sysbios_knl_Task_Handle ti_sysbios_knl_Task_create( ti_sysbios_knl_Task_FuncPtr fxn, const ti_sysbios_knl_Task_Params *__prms, xdc_runtime_Error_Block *__eb );

/* construct */

extern "C" void ti_sysbios_knl_Task_construct( ti_sysbios_knl_Task_Struct *__obj, ti_sysbios_knl_Task_FuncPtr fxn, const ti_sysbios_knl_Task_Params *__prms, xdc_runtime_Error_Block *__eb );

/* Object__delete__S */

extern "C" void ti_sysbios_knl_Task_Object__delete__S( xdc_Ptr instp );

/* delete */

extern "C" void ti_sysbios_knl_Task_delete(ti_sysbios_knl_Task_Handle *instp);

/* Object__destruct__S */

extern "C" void ti_sysbios_knl_Task_Object__destruct__S( xdc_Ptr objp );

/* destruct */

extern "C" void ti_sysbios_knl_Task_destruct(ti_sysbios_knl_Task_Struct *obj);

/* Object__get__S */

extern "C" xdc_Ptr ti_sysbios_knl_Task_Object__get__S( xdc_Ptr oarr, xdc_Int i );

/* Object__first__S */

extern "C" xdc_Ptr ti_sysbios_knl_Task_Object__first__S( void );

/* Object__next__S */

extern "C" xdc_Ptr ti_sysbios_knl_Task_Object__next__S( xdc_Ptr obj );

/* Params__init__S */

extern "C" void ti_sysbios_knl_Task_Params__init__S( xdc_Ptr dst, const void *src, xdc_SizeT psz, xdc_SizeT isz );

/* startup__E */


extern "C" void ti_sysbios_knl_Task_startup__E( void );

/* enabled__E */


extern "C" xdc_Bool ti_sysbios_knl_Task_enabled__E( void );

/* unlockSched__E */


extern "C" void ti_sysbios_knl_Task_unlockSched__E( void );

/* disable__E */


extern "C" xdc_UInt ti_sysbios_knl_Task_disable__E( void );

/* enable__E */


extern "C" void ti_sysbios_knl_Task_enable__E( void );

/* restore__E */


extern "C" void ti_sysbios_knl_Task_restore__E( xdc_UInt key );

/* restoreHwi__E */


extern "C" void ti_sysbios_knl_Task_restoreHwi__E( xdc_UInt key );

/* self__E */


extern "C" ti_sysbios_knl_Task_Handle ti_sysbios_knl_Task_self__E( void );

/* checkStacks__E */


extern "C" void ti_sysbios_knl_Task_checkStacks__E( ti_sysbios_knl_Task_Handle oldTask, ti_sysbios_knl_Task_Handle newTask );

/* exit__E */


extern "C" void ti_sysbios_knl_Task_exit__E( void );

/* sleep__E */


extern "C" void ti_sysbios_knl_Task_sleep__E( xdc_UInt32 nticks );

/* yield__E */


extern "C" void ti_sysbios_knl_Task_yield__E( void );

/* getIdleTask__E */


extern "C" ti_sysbios_knl_Task_Handle ti_sysbios_knl_Task_getIdleTask__E( void );

/* getIdleTaskHandle__E */


extern "C" ti_sysbios_knl_Task_Handle ti_sysbios_knl_Task_getIdleTaskHandle__E( xdc_UInt coreId );

/* startCore__E */


extern "C" void ti_sysbios_knl_Task_startCore__E( xdc_UInt coreId );

/* getArg0__E */


extern "C" xdc_UArg ti_sysbios_knl_Task_getArg0__E( ti_sysbios_knl_Task_Handle __inst );

/* getArg1__E */


extern "C" xdc_UArg ti_sysbios_knl_Task_getArg1__E( ti_sysbios_knl_Task_Handle __inst );

/* getEnv__E */


extern "C" xdc_Ptr ti_sysbios_knl_Task_getEnv__E( ti_sysbios_knl_Task_Handle __inst );

/* getFunc__E */


extern "C" ti_sysbios_knl_Task_FuncPtr ti_sysbios_knl_Task_getFunc__E( ti_sysbios_knl_Task_Handle __inst, xdc_UArg *arg0, xdc_UArg *arg1 );

/* getHookContext__E */


extern "C" xdc_Ptr ti_sysbios_knl_Task_getHookContext__E( ti_sysbios_knl_Task_Handle __inst, xdc_Int id );

/* getPri__E */


extern "C" xdc_Int ti_sysbios_knl_Task_getPri__E( ti_sysbios_knl_Task_Handle __inst );

/* setArg0__E */


extern "C" void ti_sysbios_knl_Task_setArg0__E( ti_sysbios_knl_Task_Handle __inst, xdc_UArg arg );

/* setArg1__E */


extern "C" void ti_sysbios_knl_Task_setArg1__E( ti_sysbios_knl_Task_Handle __inst, xdc_UArg arg );

/* setEnv__E */


extern "C" void ti_sysbios_knl_Task_setEnv__E( ti_sysbios_knl_Task_Handle __inst, xdc_Ptr env );

/* setHookContext__E */


extern "C" void ti_sysbios_knl_Task_setHookContext__E( ti_sysbios_knl_Task_Handle __inst, xdc_Int id, xdc_Ptr hookContext );

/* setPri__E */


extern "C" xdc_UInt ti_sysbios_knl_Task_setPri__E( ti_sysbios_knl_Task_Handle __inst, xdc_Int newpri );

/* stat__E */


extern "C" void ti_sysbios_knl_Task_stat__E( ti_sysbios_knl_Task_Handle __inst, ti_sysbios_knl_Task_Stat *statbuf );

/* getMode__E */


extern "C" ti_sysbios_knl_Task_Mode ti_sysbios_knl_Task_getMode__E( ti_sysbios_knl_Task_Handle __inst );

/* setAffinity__E */


extern "C" xdc_UInt ti_sysbios_knl_Task_setAffinity__E( ti_sysbios_knl_Task_Handle __inst, xdc_UInt coreId );

/* getAffinity__E */


extern "C" xdc_UInt ti_sysbios_knl_Task_getAffinity__E( ti_sysbios_knl_Task_Handle __inst );

/* block__E */


extern "C" void ti_sysbios_knl_Task_block__E( ti_sysbios_knl_Task_Handle __inst );

/* unblock__E */


extern "C" void ti_sysbios_knl_Task_unblock__E( ti_sysbios_knl_Task_Handle __inst );

/* blockI__E */


extern "C" void ti_sysbios_knl_Task_blockI__E( ti_sysbios_knl_Task_Handle __inst );

/* unblockI__E */


extern "C" void ti_sysbios_knl_Task_unblockI__E( ti_sysbios_knl_Task_Handle __inst, xdc_UInt hwiKey );

/* schedule__I */


extern "C" void ti_sysbios_knl_Task_schedule__I( void );

/* enter__I */


extern "C" void ti_sysbios_knl_Task_enter__I( void );

/* sleepTimeout__I */


extern "C" void ti_sysbios_knl_Task_sleepTimeout__I( xdc_UArg arg );

/* postInit__I */


extern "C" xdc_Int ti_sysbios_knl_Task_postInit__I( ti_sysbios_knl_Task_Object *task, xdc_runtime_Error_Block *eb );

/* allBlockedFunction__I */


extern "C" void ti_sysbios_knl_Task_allBlockedFunction__I( void );

/* deleteTerminatedTasksFunc__I */


extern "C" void ti_sysbios_knl_Task_deleteTerminatedTasksFunc__I( void );

/* processVitalTaskFlag__I */


extern "C" void ti_sysbios_knl_Task_processVitalTaskFlag__I( ti_sysbios_knl_Task_Object *task );


/*
 * ======== SYSTEM FUNCTIONS ========
 */

/* Module_startupDone */


/* Object_heap */


/* Module_heap */


/* Module_id */
static inline CT__ti_sysbios_knl_Task_Module__id ti_sysbios_knl_Task_Module_id( void ) 
{
    return ti_sysbios_knl_Task_Module__id__C;
}

/* Module_hasMask */
static inline xdc_Bool ti_sysbios_knl_Task_Module_hasMask( void ) 
{
    return ti_sysbios_knl_Task_Module__diagsMask__C != 0;
}

/* Module_getMask */
static inline xdc_Bits16 ti_sysbios_knl_Task_Module_getMask( void ) 
{
    return ti_sysbios_knl_Task_Module__diagsMask__C != 0 ? *ti_sysbios_knl_Task_Module__diagsMask__C : 0;
}

/* Module_setMask */
static inline void ti_sysbios_knl_Task_Module_setMask( xdc_Bits16 mask ) 
{
    if (ti_sysbios_knl_Task_Module__diagsMask__C != 0) *ti_sysbios_knl_Task_Module__diagsMask__C = mask;
}

/* Params_init */
static inline void ti_sysbios_knl_Task_Params_init( ti_sysbios_knl_Task_Params *prms ) 
{
    if (prms) {
        ti_sysbios_knl_Task_Params__init__S(prms, 0, sizeof(ti_sysbios_knl_Task_Params), sizeof(xdc_runtime_IInstance_Params));
    }
}

/* Params_copy */
static inline void ti_sysbios_knl_Task_Params_copy(ti_sysbios_knl_Task_Params *dst, const ti_sysbios_knl_Task_Params *src) 
{
    if (dst) {
        ti_sysbios_knl_Task_Params__init__S(dst, (const void *)src, sizeof(ti_sysbios_knl_Task_Params), sizeof(xdc_runtime_IInstance_Params));
    }
}

/* Object_count */


/* Object_sizeof */


/* Object_get */
static inline ti_sysbios_knl_Task_Handle ti_sysbios_knl_Task_Object_get(ti_sysbios_knl_Task_Instance_State *oarr, int i) 
{
    return (ti_sysbios_knl_Task_Handle)ti_sysbios_knl_Task_Object__get__S(oarr, i);
}

/* Object_first */
static inline ti_sysbios_knl_Task_Handle ti_sysbios_knl_Task_Object_first( void )
{
    return (ti_sysbios_knl_Task_Handle)ti_sysbios_knl_Task_Object__first__S();
}

/* Object_next */
static inline ti_sysbios_knl_Task_Handle ti_sysbios_knl_Task_Object_next( ti_sysbios_knl_Task_Object *obj )
{
    return (ti_sysbios_knl_Task_Handle)ti_sysbios_knl_Task_Object__next__S(obj);
}

/* Handle_label */
static inline xdc_runtime_Types_Label *ti_sysbios_knl_Task_Handle_label( ti_sysbios_knl_Task_Handle inst, xdc_runtime_Types_Label *lab )
{
    return ti_sysbios_knl_Task_Handle__label__S(inst, lab);
}

/* Handle_name */
static inline xdc_String ti_sysbios_knl_Task_Handle_name( ti_sysbios_knl_Task_Handle inst )
{
    xdc_runtime_Types_Label lab;
    return ti_sysbios_knl_Task_Handle__label__S(inst, &lab)->iname;
}

/* handle */
static inline ti_sysbios_knl_Task_Handle ti_sysbios_knl_Task_handle( ti_sysbios_knl_Task_Struct *str )
{
    return (ti_sysbios_knl_Task_Handle)str;
}

/* struct */
static inline ti_sysbios_knl_Task_Struct *ti_sysbios_knl_Task_struct( ti_sysbios_knl_Task_Handle inst )
{
    return (ti_sysbios_knl_Task_Struct*)inst;
}


/*
 * ======== EPILOGUE ========
 */

# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Task__epilogue.h"
/*
 * Copyright (c) 2012-2014, Texas Instruments Incorporated
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * *  Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * *  Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * *  Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */


extern "C" {


/*
 *  ======== Task_selfMacro ========
 */




}
# 882 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Task.h"








/*
 * ======== STATE STRUCTURES ========
 */

# 959 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Task.h"


/*
 * ======== PREFIX ALIASES ========
 */






/* module prefix */
# 1088 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Task.h"

/* proxies */
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/package/Task_SupportProxy.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     MODULE-WIDE CONFIGS
 *     VIRTUAL FUNCTIONS
 *     FUNCTION DECLARATIONS
 *     CONVERTORS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 314 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/package/Task_SupportProxy.h"


/*
 * ======== PREFIX ALIASES ========
 */






/* module prefix */
# 348 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/package/Task_SupportProxy.h"

# 1091 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/knl/Task.h"

# 13 "../source/Leds.cpp"
# 1 "..\\source\\FastLED/FastLED.h"



///@file FastLED.h
/// central include file for FastLED, defines the CFastLED class/object

# 15 "..\\source\\FastLED/FastLED.h"



















# 1 "..\\source\\FastLED\\cpp_compat.h"



# 1 "..\\source\\FastLED\\FastLED.h"
# 5 "..\\source\\FastLED\\cpp_compat.h"

# 12 "..\\source\\FastLED\\cpp_compat.h"

// things that we can turn on if we're in a C++11 environment


# 35 "..\\source\\FastLED/FastLED.h"
# 1 "..\\source\\FastLED\\led_sysdefs.h"





# 1 "..\\source\\FastLED\\fastled_config.h"





///@file fastled_config.h
/// contains definitions that can be used to configure FastLED at compile time

// Use this option only for debugging pin access and forcing software pin access.  Note that
// software pin access only works in Arduino based environments.  Forces use of digitalWrite
// methods for pin access vs. direct hardware port access
// #define FASTLED_FORCE_SOFTWARE_PINS

// Use this option only for debugging bitbang'd spi access or to work around bugs in hardware
// spi access.  Forces use of bit-banged spi, even on pins that has hardware SPI available.
// #define FASTLED_FORCE_SOFTWARE_SPI

// Use this to force FastLED to allow interrupts in the clockless chipsets (or to force it to
// disallow), overriding the default on platforms that support this.  Set the value to 1 to
// allow interrupts or 0 to disallow them.
// #define FASTLED_ALLOW_INTERRUPTS 1
// #define FASTLED_ALLOW_INTERRUPTS 0

// Use this to allow some integer overflows/underflows in the inoise functions.
// The original implementions allowed this, and had some discontinuties in the noise
// output.  It's technically an implementation bug, and was fixed, but you may wish
// to preserve the old look and feel of the inoise functions in your existing animations.
// The default is 0:  NO overflow, and 'continuous' noise output, aka the fixed way.
// #define FASTLED_NOISE_ALLOW_AVERAGE_TO_OVERFLOW 0
// #define FASTLED_NOISE_ALLOW_AVERAGE_TO_OVERFLOW 1

// Use this toggle whether or not to use the 'fixed' FastLED scale8.  The initial scale8
// had a problem where scale8(255,255) would give you 254.  This is now fixed, and that
// fix is enabled by default.  However, if for some reason you have code that is not
// working right as a result of this (e.g. code that was expecting the old scale8 behavior)
// you can disable it here.

// #define FASTLED_SCALE8_FIXED 0

// Use this toggle whether to use 'fixed' FastLED pixel blending, including ColorFromPalette.
// The prior pixel blend functions had integer-rounding math errors that led to
// small errors being inadvertently added to the low bits of blended colors, including colors
// retrieved from color palettes using LINEAR_BLEND.  This is now fixed, and the
// fix is enabled by default.  However, if for some reason you wish to run with the old
// blending, including the integer rounding and color errors, you can disable the bugfix here.

// #define FASTLED_BLEND_FIXED 0

// Use this toggle whether to use 'fixed' FastLED 8- and 16-bit noise functions.
// The prior noise functions had some math errors that led to 'discontinuities' in the
// output, which by definition should be smooth and continuous.  The bug led to 
// noise function output that had 'edges' and glitches in it.  This is now fixed, and the
// fix is enabled by default.  However, if for some reason you wish to run with the old
// noise code, including the glitches, you can disable the bugfix here.

//#define FASTLED_NOISE_FIXED 0

// Use this to determine how many times FastLED will attempt to re-transmit a frame if interrupted
// for too long by interrupts.




// Use this toggle to enable global brightness in contollers that support is (ADA102 and SK9822).
// It changes how color scaling works and uses global brightness before scaling down color values.
// This enable much more accurate color control on low brightness settings.
//#define FASTLED_USE_GLOBAL_BRIGHTNESS 1

# 7 "..\\source\\FastLED\\led_sysdefs.h"

# 1 "..\\source\\FastLED\\platforms/arm/tirtos/led_sysdefs_arm_tirtos.h"






// Setup DUE timer defines/channels/etc...
// #ifndef DUE_TIMER_CHANNEL
// #define DUE_TIMER_GROUP 0
// #endif

// #ifndef DUE_TIMER_CHANNEL
// #define DUE_TIMER_CHANNEL 0
// #endif

// #define DUE_TIMER ((DUE_TIMER_GROUP==0) ? TC0 : ((DUE_TIMER_GROUP==1) ? TC1 : TC2))
// #define DUE_TIMER_ID (ID_TC0 + (DUE_TIMER_GROUP*3) + DUE_TIMER_CHANNEL)
// #define DUE_TIMER_VAL (DUE_TIMER->TC_CHANNEL[DUE_TIMER_CHANNEL].TC_CV << 1)
// #define DUE_TIMER_RUNNING ((DUE_TIMER->TC_CHANNEL[DUE_TIMER_CHANNEL].TC_SR & TC_SR_CLKSTA) != 0)

// #ifndef INTERRUPT_THRESHOLD
// #define INTERRUPT_THRESHOLD 1
// #endif

// Default to allowing interrupts




// #if FASTLED_ALLOW_INTERRUPTS == 1
// #define FASTLED_ACCURATE_CLOCK
// #endif

// // reusing/abusing cli/sei defs for due
// #define cli()  __disable_irq(); __disable_fault_irq();
// #define sei() __enable_irq(); __enable_fault_irq();


# 43 "..\\source\\FastLED\\led_sysdefs.h"
# 57 "..\\source\\FastLED\\led_sysdefs.h"







// Arduino.h needed for convenience functions digitalPinToPort/BitMask/portOutputRegister and the pinMode methods.






# 36 "..\\source\\FastLED/FastLED.h"

// Utility functions
# 1 "..\\source\\FastLED\\fastled_delay.h"





///@file fastled_delay.h
///Utility functions and classes for managing delaycycles



/// Class to ensure that a minimum amount of time has kicked since the last time run - and delay if not enough time has passed yet
/// this should make sure that chipsets that have
template<int WAIT> class CMinWait {
	uint16_t mLastMicros;

public:
	CMinWait() { mLastMicros = 0; }

	void wait() {
		uint16_t diff;
		do {
			diff = (micros() & 0xFFFF) - mLastMicros;
		} while(diff < WAIT);
	}

	void mark() { mLastMicros = micros() & 0xFFFF; }
};


////////////////////////////////////////////////////////////////////////////////////////////
//
// Clock cycle counted delay loop
//
////////////////////////////////////////////////////////////////////////////////////////////

// Default is now just 'nop', with special case for AVR

// ESP32 core has it's own definition of NOP, so undef it first





# 51 "..\\source\\FastLED\\fastled_delay.h"

// predeclaration to not upset the compiler
template<int CYCLES> inline void delaycycles();
template<int CYCLES> inline void delaycycles_min1() {
	delaycycles<1>();
	delaycycles<CYCLES-1>();
}


// TODO: ARM version of _delaycycles_

// usable definition
# 84 "..\\source\\FastLED\\fastled_delay.h"
// template<int LOOP, int PAD> inline void _delaycycles_ARM() {
// 	delaycycles<PAD>();
// 	// the loop below is 3 cycles * LOOP.  the LDI is one cycle,
// 	// the DEC is 1 cycle, the BRNE is 2 cycles if looping back and
// 	// 1 if not (the LDI balances out the BRNE being 1 cycle on exit)
// 	__asm__ __volatile__ (
// 		"		mov.w r9, %0\n"
// 		"L_%=:  subs.w r9, r9, #1\n"
// 		"		bne.n L_%=\n"
// 		: /* no outputs */
// 		: "M" (LOOP)
// 		: "r9"
// 		);
// }


template<int CYCLES> __attribute__((always_inline)) inline void delaycycles() {
	// _delaycycles_ARM<CYCLES / 3, CYCLES % 3>();
	__asm__ __volatile__ ("nop\n");; delaycycles<CYCLES-1>();
}


// pre-instantiations for values small enough to not need the loop, as well as sanity holders
// for some negative values.
template<> __attribute__((always_inline)) inline void delaycycles<-10>() {}
template<> __attribute__((always_inline)) inline void delaycycles<-9>() {}
template<> __attribute__((always_inline)) inline void delaycycles<-8>() {}
template<> __attribute__((always_inline)) inline void delaycycles<-7>() {}
template<> __attribute__((always_inline)) inline void delaycycles<-6>() {}
template<> __attribute__((always_inline)) inline void delaycycles<-5>() {}
template<> __attribute__((always_inline)) inline void delaycycles<-4>() {}
template<> __attribute__((always_inline)) inline void delaycycles<-3>() {}
template<> __attribute__((always_inline)) inline void delaycycles<-2>() {}
template<> __attribute__((always_inline)) inline void delaycycles<-1>() {}
template<> __attribute__((always_inline)) inline void delaycycles<0>() {}
template<> __attribute__((always_inline)) inline void delaycycles<1>() {__asm__ __volatile__ ("nop\n");;}
template<> __attribute__((always_inline)) inline void delaycycles<2>() {__asm__ __volatile__ ("nop\n\t nop\n");;}
template<> __attribute__((always_inline)) inline void delaycycles<3>() {__asm__ __volatile__ ("nop\n");;__asm__ __volatile__ ("nop\n\t nop\n");;}
template<> __attribute__((always_inline)) inline void delaycycles<4>() {__asm__ __volatile__ ("nop\n\t nop\n");;__asm__ __volatile__ ("nop\n\t nop\n");;}
template<> __attribute__((always_inline)) inline void delaycycles<5>() {__asm__ __volatile__ ("nop\n\t nop\n");;__asm__ __volatile__ ("nop\n\t nop\n");;__asm__ __volatile__ ("nop\n");;}

// Some timing related macros/definitions

// Macro to convert from nano-seconds to clocks and clocks to nano-seconds
// #define NS(_NS) (_NS / (1000 / (F_CPU / 1000000L)))


// #define NS(_NS) ( (_NS * (F_CPU / 1000000L))) / 1000



//  Macro for making sure there's enough time available




# 39 "..\\source\\FastLED/FastLED.h"
# 1 "..\\source\\FastLED\\bitswap.h"







///@file bitswap.h
///Functions for rotating bits/bytes

///@defgroup Bitswap Bit swapping/rotate
///Functions for doing a rotation of bits/bytes used by parallel output
///@{

/// structure representing 8 bits of access
typedef union {
  uint8_t raw;
  struct {
  uint32_t a0:1;
  uint32_t a1:1;
  uint32_t a2:1;
  uint32_t a3:1;
  uint32_t a4:1;
  uint32_t a5:1;
  uint32_t a6:1;
  uint32_t a7:1;
  };
} just8bits;

/// structure representing 32 bits of access
typedef struct {
  uint32_t a0:1;
  uint32_t a1:1;
  uint32_t a2:1;
  uint32_t a3:1;
  uint32_t a4:1;
  uint32_t a5:1;
  uint32_t a6:1;
  uint32_t a7:1;
  uint32_t b0:1;
  uint32_t b1:1;
  uint32_t b2:1;
  uint32_t b3:1;
  uint32_t b4:1;
  uint32_t b5:1;
  uint32_t b6:1;
  uint32_t b7:1;
  uint32_t c0:1;
  uint32_t c1:1;
  uint32_t c2:1;
  uint32_t c3:1;
  uint32_t c4:1;
  uint32_t c5:1;
  uint32_t c6:1;
  uint32_t c7:1;
  uint32_t d0:1;
  uint32_t d1:1;
  uint32_t d2:1;
  uint32_t d3:1;
  uint32_t d4:1;
  uint32_t d5:1;
  uint32_t d6:1;
  uint32_t d7:1;
} sub4;

/// union containing a full 8 bytes to swap the bit orientation on
typedef union {
  uint32_t word[2];
  uint8_t bytes[8];
  struct {
    sub4 a;
    sub4 b;
  };
} bitswap_type;












# 95 "..\\source\\FastLED\\bitswap.h"


/// Do an 8byte by 8bit rotation
__attribute__((always_inline)) inline void swapbits8(bitswap_type in, bitswap_type & out) {

  // SWAPS(a.a,7);
  // SWAPS(a.b,6);
  // SWAPS(a.c,5);
  // SWAPS(a.d,4);
  // SWAPS(b.a,3);
  // SWAPS(b.b,2);
  // SWAPS(b.c,1);
  // SWAPS(b.d,0);

  // SWAPSA(a.a,7);
  // SWAPSA(a.b,6);
  // SWAPSA(a.c,5);
  // SWAPSA(a.d,4);
  //
  // SWAPSB(a.a,7);
  // SWAPSB(a.b,6);
  // SWAPSB(a.c,5);
  // SWAPSB(a.d,4);
  //
  // SWAPSA(b.a,3);
  // SWAPSA(b.b,2);
  // SWAPSA(b.c,1);
  // SWAPSA(b.d,0);
  // //
  // SWAPSB(b.a,3);
  // SWAPSB(b.b,2);
  // SWAPSB(b.c,1);
  // SWAPSB(b.d,0);

  for(int i = 0; i < 8; i++) {
    just8bits work;
    work.a3 = in.word[0] >> 31;
    work.a2 = in.word[0] >> 23;
    work.a1 = in.word[0] >> 15;
    work.a0 = in.word[0] >> 7;
    in.word[0] <<= 1;
    work.a7 = in.word[1] >> 31;
    work.a6 = in.word[1] >> 23;
    work.a5 = in.word[1] >> 15;
    work.a4 = in.word[1] >> 7;
    in.word[1] <<= 1;
    out.bytes[i] = work.raw;
  }
}

/// Slow version of the 8 byte by 8 bit rotation
__attribute__((always_inline)) inline void slowswap(unsigned char *A, unsigned char *B) {

  for(int row = 0; row < 7; row++) {
    uint8_t x = A[row];

    uint8_t bit = (1<<row);
    unsigned char *p = B;
    for(uint32_t mask = 1<<7 ; mask ; mask >>= 1) {
      if(x & mask) {
        *p++ |= bit;
      } else {
        *p++ &= ~bit;
      }
    }
    // B[7] |= (x & 0x01) << row; x >>= 1;
    // B[6] |= (x & 0x01) << row; x >>= 1;
    // B[5] |= (x & 0x01) << row; x >>= 1;
    // B[4] |= (x & 0x01) << row; x >>= 1;
    // B[3] |= (x & 0x01) << row; x >>= 1;
    // B[2] |= (x & 0x01) << row; x >>= 1;
    // B[1] |= (x & 0x01) << row; x >>= 1;
    // B[0] |= (x & 0x01) << row; x >>= 1;
  }
}

void transpose8x1_noinline(unsigned char *A, unsigned char *B);

/// Simplified form of bits rotating function.  Based on code found here - http://www.hackersdelight.org/hdcodetxt/transpose8.c.txt - rotating
/// data into LSB for a faster write (the code using this data can happily walk the array backwards)
__attribute__((always_inline)) inline void transpose8x1(unsigned char *A, unsigned char *B) {
  uint32_t x, y, t;

  // Load the array and pack it into x and y.
  y = *(unsigned int*)(A);
  x = *(unsigned int*)(A+4);

  // pre-transform x
  t = (x ^ (x >> 7)) & 0x00AA00AA;  x = x ^ t ^ (t << 7);
  t = (x ^ (x >>14)) & 0x0000CCCC;  x = x ^ t ^ (t <<14);

  // pre-transform y
  t = (y ^ (y >> 7)) & 0x00AA00AA;  y = y ^ t ^ (t << 7);
  t = (y ^ (y >>14)) & 0x0000CCCC;  y = y ^ t ^ (t <<14);

  // final transform
  t = (x & 0xF0F0F0F0) | ((y >> 4) & 0x0F0F0F0F);
  y = ((x << 4) & 0xF0F0F0F0) | (y & 0x0F0F0F0F);
  x = t;

  *((uint32_t*)B) = y;
  *((uint32_t*)(B+4)) = x;
}

/// Simplified form of bits rotating function.  Based on code  found here - http://www.hackersdelight.org/hdcodetxt/transpose8.c.txt
__attribute__((always_inline)) inline void transpose8x1_MSB(unsigned char *A, unsigned char *B) {
  uint32_t x, y, t;

  // Load the array and pack it into x and y.
  y = *(unsigned int*)(A);
  x = *(unsigned int*)(A+4);

  // pre-transform x
  t = (x ^ (x >> 7)) & 0x00AA00AA;  x = x ^ t ^ (t << 7);
  t = (x ^ (x >>14)) & 0x0000CCCC;  x = x ^ t ^ (t <<14);

  // pre-transform y
  t = (y ^ (y >> 7)) & 0x00AA00AA;  y = y ^ t ^ (t << 7);
  t = (y ^ (y >>14)) & 0x0000CCCC;  y = y ^ t ^ (t <<14);

  // final transform
  t = (x & 0xF0F0F0F0) | ((y >> 4) & 0x0F0F0F0F);
  y = ((x << 4) & 0xF0F0F0F0) | (y & 0x0F0F0F0F);
  x = t;

  B[7] = y; y >>= 8;
  B[6] = y; y >>= 8;
  B[5] = y; y >>= 8;
  B[4] = y;

  B[3] = x; x >>= 8;
  B[2] = x; x >>= 8;
  B[1] = x; x >>= 8;
  B[0] = x; /* */
}

/// templated bit-rotating function.   Based on code found here - http://www.hackersdelight.org/hdcodetxt/transpose8.c.txt
template<int m, int n>
__attribute__((always_inline)) inline void transpose8(unsigned char *A, unsigned char *B) {
  uint32_t x, y, t;

  // Load the array and pack it into x and y.
  if(m == 1) {
    y = *(unsigned int*)(A);
    x = *(unsigned int*)(A+4);
  } else {
    x = (A[0]<<24)   | (A[m]<<16)   | (A[2*m]<<8) | A[3*m];
    y = (A[4*m]<<24) | (A[5*m]<<16) | (A[6*m]<<8) | A[7*m];
  }

  // pre-transform x
  t = (x ^ (x >> 7)) & 0x00AA00AA;  x = x ^ t ^ (t << 7);
  t = (x ^ (x >>14)) & 0x0000CCCC;  x = x ^ t ^ (t <<14);

  // pre-transform y
  t = (y ^ (y >> 7)) & 0x00AA00AA;  y = y ^ t ^ (t << 7);
  t = (y ^ (y >>14)) & 0x0000CCCC;  y = y ^ t ^ (t <<14);

  // final transform
  t = (x & 0xF0F0F0F0) | ((y >> 4) & 0x0F0F0F0F);
  y = ((x << 4) & 0xF0F0F0F0) | (y & 0x0F0F0F0F);
  x = t;

  B[7*n] = y; y >>= 8;
  B[6*n] = y; y >>= 8;
  B[5*n] = y; y >>= 8;
  B[4*n] = y;

  B[3*n] = x; x >>= 8;
  B[2*n] = x; x >>= 8;
  B[n] = x; x >>= 8;
  B[0] = x;
  // B[0]=x>>24;    B[n]=x>>16;    B[2*n]=x>>8;  B[3*n]=x>>0;
  // B[4*n]=y>>24;  B[5*n]=y>>16;  B[6*n]=y>>8;  B[7*n]=y>>0;
}





///@}
# 40 "..\\source\\FastLED/FastLED.h"

# 1 "..\\source\\FastLED\\controller.h"



///@file controller.h
/// base definitions used by led controllers for writing out led data

# 1 "..\\source\\FastLED\\pixeltypes.h"





# 1 "..\\source\\FastLED\\lib8tion.h"











/*

 Fast, efficient 8-bit math functions specifically
 designed for high-performance LED programming.

 Because of the AVR(Arduino) and ARM assembly language
 implementations provided, using these functions often
 results in smaller and faster code than the equivalent
 program using plain "C" arithmetic and logic.


 Included are:


 - Saturating unsigned 8-bit add and subtract.
   Instead of wrapping around if an overflow occurs,
   these routines just 'clamp' the output at a maxumum
   of 255, or a minimum of 0.  Useful for adding pixel
   values.  E.g., qadd8( 200, 100) = 255.

     qadd8( i, j) == MIN( (i + j), 0xFF )
     qsub8( i, j) == MAX( (i - j), 0 )

 - Saturating signed 8-bit ("7-bit") add.
     qadd7( i, j) == MIN( (i + j), 0x7F)


 - Scaling (down) of unsigned 8- and 16- bit values.
   Scaledown value is specified in 1/256ths.
     scale8( i, sc) == (i * sc) / 256
     scale16by8( i, sc) == (i * sc) / 256

   Example: scaling a 0-255 value down into a
   range from 0-99:
     downscaled = scale8( originalnumber, 100);

   A special version of scale8 is provided for scaling
   LED brightness values, to make sure that they don't
   accidentally scale down to total black at low
   dimming levels, since that would look wrong:
     scale8_video( i, sc) = ((i * sc) / 256) +? 1

   Example: reducing an LED brightness by a
   dimming factor:
     new_bright = scale8_video( orig_bright, dimming);


 - Fast 8- and 16- bit unsigned random numbers.
   Significantly faster than Arduino random(), but
   also somewhat less random.  You can add entropy.
     random8()       == random from 0..255
     random8( n)     == random from 0..(N-1)
     random8( n, m)  == random from N..(M-1)

     random16()      == random from 0..65535
     random16( n)    == random from 0..(N-1)
     random16( n, m) == random from N..(M-1)

     random16_set_seed( k)    ==  seed = k
     random16_add_entropy( k) ==  seed += k


 - Absolute value of a signed 8-bit value.
     abs8( i)     == abs( i)


 - 8-bit math operations which return 8-bit values.
   These are provided mostly for completeness,
   not particularly for performance.
     mul8( i, j)  == (i * j) & 0xFF
     add8( i, j)  == (i + j) & 0xFF
     sub8( i, j)  == (i - j) & 0xFF


 - Fast 16-bit approximations of sin and cos.
   Input angle is a uint16_t from 0-65535.
   Output is a signed int16_t from -32767 to 32767.
      sin16( x)  == sin( (x/32768.0) * pi) * 32767
      cos16( x)  == cos( (x/32768.0) * pi) * 32767
   Accurate to more than 99% in all cases.

 - Fast 8-bit approximations of sin and cos.
   Input angle is a uint8_t from 0-255.
   Output is an UNsigned uint8_t from 0 to 255.
       sin8( x)  == (sin( (x/128.0) * pi) * 128) + 128
       cos8( x)  == (cos( (x/128.0) * pi) * 128) + 128
   Accurate to within about 2%.


 - Fast 8-bit "easing in/out" function.
     ease8InOutCubic(x) == 3(x^i) - 2(x^3)
     ease8InOutApprox(x) ==
       faster, rougher, approximation of cubic easing
     ease8InOutQuad(x) == quadratic (vs cubic) easing

 - Cubic, Quadratic, and Triangle wave functions.
   Input is a uint8_t representing phase withing the wave,
     similar to how sin8 takes an angle 'theta'.
   Output is a uint8_t representing the amplitude of
     the wave at that point.
       cubicwave8( x)
       quadwave8( x)
       triwave8( x)

 - Square root for 16-bit integers.  About three times
   faster and five times smaller than Arduino's built-in
   generic 32-bit sqrt routine.
     sqrt16( uint16_t x ) == sqrt( x)

 - Dimming and brightening functions for 8-bit
   light values.
     dim8_video( x)  == scale8_video( x, x)
     dim8_raw( x)    == scale8( x, x)
     dim8_lin( x)    == (x<128) ? ((x+1)/2) : scale8(x,x)
     brighten8_video( x) == 255 - dim8_video( 255 - x)
     brighten8_raw( x) == 255 - dim8_raw( 255 - x)
     brighten8_lin( x) == 255 - dim8_lin( 255 - x)
   The dimming functions in particular are suitable
   for making LED light output appear more 'linear'.


 - Linear interpolation between two values, with the
   fraction between them expressed as an 8- or 16-bit
   fixed point fraction (fract8 or fract16).
     lerp8by8(   fromU8, toU8, fract8 )
     lerp16by8(  fromU16, toU16, fract8 )
     lerp15by8(  fromS16, toS16, fract8 )
       == from + (( to - from ) * fract8) / 256)
     lerp16by16( fromU16, toU16, fract16 )
       == from + (( to - from ) * fract16) / 65536)
     map8( in, rangeStart, rangeEnd)
       == map( in, 0, 255, rangeStart, rangeEnd);

 - Optimized memmove, memcpy, and memset, that are
   faster than standard avr-libc 1.8.
      memmove8( dest, src,  bytecount)
      memcpy8(  dest, src,  bytecount)
      memset8(  buf, value, bytecount)

 - Beat generators which return sine or sawtooth
   waves in a specified number of Beats Per Minute.
   Sine wave beat generators can specify a low and
   high range for the output.  Sawtooth wave beat
   generators always range 0-255 or 0-65535.
     beatsin8( BPM, low8, high8)
         = (sine(beatphase) * (high8-low8)) + low8
     beatsin16( BPM, low16, high16)
         = (sine(beatphase) * (high16-low16)) + low16
     beatsin88( BPM88, low16, high16)
         = (sine(beatphase) * (high16-low16)) + low16
     beat8( BPM)  = 8-bit repeating sawtooth wave
     beat16( BPM) = 16-bit repeating sawtooth wave
     beat88( BPM88) = 16-bit repeating sawtooth wave
   BPM is beats per minute in either simple form
   e.g. 120, or Q8.8 fixed-point form.
   BPM88 is beats per minute in ONLY Q8.8 fixed-point
   form.

Lib8tion is pronounced like 'libation': lie-BAY-shun

*/








# 1 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/string.h"
/* -*- C++ -*- */
/*===--------------------------- complex.h --------------------------------===*/
/*                                                                            */
/*                     The LLVM Compiler Infrastructure                       */
/*                                                                            */
/* This file is dual licensed under the MIT and the University of Illinois Open
** Source Licenses. See LICENSE.TXT for details.
*/
/*===----------------------------------------------------------------------===*/




/*
    string.h synopsis

Macros:

    NULL

Types:

    size_t

void* memcpy(void* restrict s1, const void* restrict s2, size_t n);
void* memmove(void* s1, const void* s2, size_t n);
char* strcpy (char* restrict s1, const char* restrict s2);
char* strncpy(char* restrict s1, const char* restrict s2, size_t n);
char* strcat (char* restrict s1, const char* restrict s2);
char* strncat(char* restrict s1, const char* restrict s2, size_t n);
int memcmp(const void* s1, const void* s2, size_t n);
int strcmp (const char* s1, const char* s2);
int strncmp(const char* s1, const char* s2, size_t n);
int strcoll(const char* s1, const char* s2);
size_t strxfrm(char* restrict s1, const char* restrict s2, size_t n);
const void* memchr(const void* s, int c, size_t n);
      void* memchr(      void* s, int c, size_t n);
const char* strchr(const char* s, int c);
      char* strchr(      char* s, int c);
size_t strcspn(const char* s1, const char* s2);
const char* strpbrk(const char* s1, const char* s2);
      char* strpbrk(      char* s1, const char* s2);
const char* strrchr(const char* s, int c);
      char* strrchr(      char* s, int c);
size_t strspn(const char* s1, const char* s2);
const char* strstr(const char* s1, const char* s2);
      char* strstr(      char* s1, const char* s2);
char* strtok(char* restrict s1, const char* restrict s2);
void* memset(void* s, int c, size_t n);
char* strerror(int errnum);
size_t strlen(const char* s);

*/







# 1 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/string.h"
/*****************************************************************************/
/* string.h                                                                  */
/*                                                                           */
/* Copyright (c) 1993 Texas Instruments Incorporated                         */
/* http://www.ti.com/                                                        */
/*                                                                           */
/*  Redistribution and  use in source  and binary forms, with  or without    */
/*  modification,  are permitted provided  that the  following conditions    */
/*  are met:                                                                 */
/*                                                                           */
/*     Redistributions  of source  code must  retain the  above copyright    */
/*     notice, this list of conditions and the following disclaimer.         */
/*                                                                           */
/*     Redistributions in binary form  must reproduce the above copyright    */
/*     notice, this  list of conditions  and the following  disclaimer in    */
/*     the  documentation  and/or   other  materials  provided  with  the    */
/*     distribution.                                                         */
/*                                                                           */
/*     Neither the  name of Texas Instruments Incorporated  nor the names    */
/*     of its  contributors may  be used to  endorse or  promote products    */
/*     derived  from   this  software  without   specific  prior  written    */
/*     permission.                                                           */
/*                                                                           */
/*  THIS SOFTWARE  IS PROVIDED BY THE COPYRIGHT  HOLDERS AND CONTRIBUTORS    */
/*  "AS IS"  AND ANY  EXPRESS OR IMPLIED  WARRANTIES, INCLUDING,  BUT NOT    */
/*  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR    */
/*  A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT    */
/*  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,    */
/*  SPECIAL,  EXEMPLARY,  OR CONSEQUENTIAL  DAMAGES  (INCLUDING, BUT  NOT    */
/*  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,    */
/*  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY    */
/*  THEORY OF  LIABILITY, WHETHER IN CONTRACT, STRICT  LIABILITY, OR TORT    */
/*  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE    */
/*  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.     */
/*                                                                           */
/*****************************************************************************/












_Pragma("diag_push")
_Pragma("CHECK_MISRA(\"-6.3\")") /* standard types required for standard headers */
_Pragma("CHECK_MISRA(\"-19.1\")") /* #includes required for implementation */
_Pragma("CHECK_MISRA(\"-20.1\")") /* standard headers must define standard names */
_Pragma("CHECK_MISRA(\"-20.2\")") /* standard headers must define standard names */


extern "C" {






# 71 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/string.h"


_Pragma("diag_push")
_Pragma("CHECK_MISRA(\"-19.4\")") /* macros required for implementation */

# 83 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/string.h"

_Pragma("diag_pop")

 size_t  strlen(const char *string);

 char *strcpy(char * __restrict dest,
                        const char * __restrict src);
 char *strncpy(char * __restrict dest,
                         const char * __restrict src, size_t n);
 char *strcat(char * __restrict string1,
                        const char * __restrict string2);
 char *strncat(char * __restrict dest,
                         const char * __restrict src, size_t n);
 char *strchr(const char *string, int c);
 char *strrchr(const char *string, int c);

 int  strcmp(const char *string1, const char *string2);
 int  strncmp(const char *string1, const char *string2, size_t n);

 int     strcoll(const char *string1, const char *_string2);
 size_t  strxfrm(char * __restrict to,
                             const char * __restrict from, size_t n);
 char   *strpbrk(const char *string, const char *chs);
 size_t  strspn(const char *string, const char *chs);
 size_t  strcspn(const char *string, const char *chs);
 char   *strstr(const char *string1, const char *string2);
 char   *strtok(char * __restrict str1,
                            const char * __restrict str2);
 char   *strerror(int _errno);
 char   *strdup(const char *string);


 void   *memmove(void *s1, const void *s2, size_t n);

 void   *memccpy(void *dest, const void *src, int ch, size_t count);

_Pragma("diag_push")
_Pragma("CHECK_MISRA(\"-16.4\")") /* false positives due to builtin declarations */
 void   *memcpy(void * __restrict s1,
                            const void * __restrict s2, size_t n);
_Pragma("diag_pop")

 int     memcmp(const void *cs, const void *ct, size_t n);
 void   *memchr(const void *cs, int c, size_t n);



 void   *memset(void *mem, int ch, size_t length);




# 187 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/string.h"


} /* extern "C" */


# 428 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/string.h"

/*----------------------------------------------------------------------------*/
/* If sys/cdefs.h is available, go ahead and include it. xlocale.h assumes    */
/* this file will have already included sys/cdefs.h.                          */
/*----------------------------------------------------------------------------*/




/*----------------------------------------------------------------------------*/
/* Include xlocale/_string.h> if POSIX is enabled. This will expose the       */
/* xlocale string interface.                                                  */
/*----------------------------------------------------------------------------*/







_Pragma("diag_pop")

# 62 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/string.h"

/* MSVCRT, GNU libc and its derivates may already have the correct prototype in */
/* <string.h>. This macro can be defined by users if their C library provides */
/* the right signature. */





# 109 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/string.h"

# 183 "..\\source\\FastLED\\lib8tion.h"
// for memmove, memcpy, and memset if not defined here





// Can use Cortex M4 DSP instructions
# 199 "..\\source\\FastLED\\lib8tion.h"

# 215 "..\\source\\FastLED\\lib8tion.h"

// end of #if defined(__arm__)

# 328 "..\\source\\FastLED\\lib8tion.h"

///@defgroup lib8tion Fast math functions
///A variety of functions for working with numbers.
///@{


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
typedef uint8_t   fract8;   ///< ANSI: unsigned short _Fract

///  ANSI: signed short _Fract.  range is -0.9921875 to 0.9921875
///                 in steps of 0.0078125
typedef int8_t    sfract7;  ///< ANSI: signed   short _Fract

///  ANSI: unsigned _Fract.  range is 0 to 0.99998474121
///                 in steps of 0.00001525878
typedef uint16_t  fract16;  ///< ANSI: unsigned       _Fract

///  ANSI: signed _Fract.  range is -0.99996948242 to 0.99996948242
///                 in steps of 0.00003051757
typedef int16_t   sfract15; ///< ANSI: signed         _Fract


// accumXY types should be interpreted as X bits of integer,
//         and Y bits of fraction.
//         E.g., accum88 has 8 bits of int, 8 bits of fraction

typedef uint16_t  accum88;  ///< ANSI: unsigned short _Accum.  8 bits int, 8 bits fraction
typedef int16_t   saccum78; ///< ANSI: signed   short _Accum.  7 bits int, 8 bits fraction
typedef uint32_t  accum1616;///< ANSI: signed         _Accum. 16 bits int, 16 bits fraction
typedef int32_t   saccum1516;///< ANSI: signed         _Accum. 15 bits int, 16 bits fraction
typedef uint16_t  accum124; ///< no direct ANSI counterpart. 12 bits int, 4 bits fraction
typedef int32_t   saccum114;///< no direct ANSI counterpart. 1 bit int, 14 bits fraction


/// typedef for IEEE754 "binary32" float type internals
typedef union {
    uint32_t i;
    float    f;
    struct {
        uint32_t mantissa: 23;
        uint32_t exponent:  8;
        uint32_t signbit:   1;
    };
    struct {
        uint32_t mant7 :  7;
        uint32_t mant16: 16;
        uint32_t exp_  :  8;
        uint32_t sb_   :  1;
    };
    struct {
        uint32_t mant_lo8 : 8;
        uint32_t mant_hi16_exp_lo1 : 16;
        uint32_t sb_exphi7 : 8;
    };
} IEEE754binary32_t;

# 1 "..\\source\\FastLED\\lib8tion/math8.h"



# 1 "..\\source\\FastLED\\lib8tion\\scale8.h"



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
__attribute__ ((always_inline)) static inline uint8_t scale8( uint8_t i, fract8 scale)
{


    return (((uint16_t)i) * (1+(uint16_t)(scale))) >> 8;
# 90 "..\\source\\FastLED\\lib8tion\\scale8.h"
}


///  The "video" version of scale8 guarantees that the output will
///  be only be zero if one or both of the inputs are zero.  If both
///  inputs are non-zero, the output is guaranteed to be non-zero.
///  This makes for better 'video'/LED dimming, at the cost of
///  several additional cycles.
__attribute__ ((always_inline)) static inline uint8_t scale8_video( uint8_t i, fract8 scale)
{

    uint8_t j = (((int)i * (int)scale) >> 8) + ((i&&scale)?1:0);
    // uint8_t nonzeroscale = (scale != 0) ? 1 : 0;
    // uint8_t j = (i == 0) ? 0 : (((int)i * (int)(scale) ) >> 8) + nonzeroscale;
    return j;
# 138 "..\\source\\FastLED\\lib8tion\\scale8.h"
}


/// This version of scale8 does not clean up the R1 register on AVR
/// If you are doing several 'scale8's in a row, use this, and
/// then explicitly call cleanup_R1.
__attribute__ ((always_inline)) static inline uint8_t scale8_LEAVING_R1_DIRTY( uint8_t i, fract8 scale)
{


    return (((uint16_t)i) * ((uint16_t)(scale)+1)) >> 8;
# 180 "..\\source\\FastLED\\lib8tion\\scale8.h"
}

/// In place modifying version of scale8, also this version of nscale8 does not
/// clean up the R1 register on AVR
/// If you are doing several 'scale8's in a row, use this, and
/// then explicitly call cleanup_R1.

__attribute__ ((always_inline)) static inline void nscale8_LEAVING_R1_DIRTY( uint8_t& i, fract8 scale)
{


    i = (((uint16_t)i) * ((uint16_t)(scale)+1)) >> 8;
# 222 "..\\source\\FastLED\\lib8tion\\scale8.h"
}


/// This version of scale8_video does not clean up the R1 register on AVR
/// If you are doing several 'scale8_video's in a row, use this, and
/// then explicitly call cleanup_R1.
__attribute__ ((always_inline)) static inline uint8_t scale8_video_LEAVING_R1_DIRTY( uint8_t i, fract8 scale)
{

    uint8_t j = (((int)i * (int)scale) >> 8) + ((i&&scale)?1:0);
    // uint8_t nonzeroscale = (scale != 0) ? 1 : 0;
    // uint8_t j = (i == 0) ? 0 : (((int)i * (int)(scale) ) >> 8) + nonzeroscale;
    return j;
# 267 "..\\source\\FastLED\\lib8tion\\scale8.h"
}

/// In place modifying version of scale8_video, also this version of nscale8_video
/// does not clean up the R1 register on AVR
/// If you are doing several 'scale8_video's in a row, use this, and
/// then explicitly call cleanup_R1.
__attribute__ ((always_inline)) static inline void nscale8_video_LEAVING_R1_DIRTY( uint8_t & i, fract8 scale)
{

    i = (((int)i * (int)scale) >> 8) + ((i&&scale)?1:0);
# 293 "..\\source\\FastLED\\lib8tion\\scale8.h"
}

/// Clean up the r1 register after a series of *LEAVING_R1_DIRTY calls
__attribute__ ((always_inline)) static inline void cleanup_R1()
{




}


/// scale three one byte values by a fourth one, which is treated as
///         the numerator of a fraction whose demominator is 256
///         In other words, it computes r,g,b * (scale / 256)
///
///         THIS FUNCTION ALWAYS MODIFIES ITS ARGUMENTS IN PLACE

__attribute__ ((unused)) static inline void nscale8x3( uint8_t& r, uint8_t& g, uint8_t& b, fract8 scale)
{


    uint16_t scale_fixed = scale + 1;
    r = (((uint16_t)r) * scale_fixed) >> 8;
    g = (((uint16_t)g) * scale_fixed) >> 8;
    b = (((uint16_t)b) * scale_fixed) >> 8;
# 332 "..\\source\\FastLED\\lib8tion\\scale8.h"
}

/// scale three one byte values by a fourth one, which is treated as
///         the numerator of a fraction whose demominator is 256
///         In other words, it computes r,g,b * (scale / 256), ensuring
/// that non-zero values passed in remain non zero, no matter how low the scale
/// argument.
///
///         THIS FUNCTION ALWAYS MODIFIES ITS ARGUMENTS IN PLACE
__attribute__ ((unused)) static inline void nscale8x3_video( uint8_t& r, uint8_t& g, uint8_t& b, fract8 scale)
{

    uint8_t nonzeroscale = (scale != 0) ? 1 : 0;
    r = (r == 0) ? 0 : (((int)r * (int)(scale) ) >> 8) + nonzeroscale;
    g = (g == 0) ? 0 : (((int)g * (int)(scale) ) >> 8) + nonzeroscale;
    b = (b == 0) ? 0 : (((int)b * (int)(scale) ) >> 8) + nonzeroscale;
# 356 "..\\source\\FastLED\\lib8tion\\scale8.h"
}

///  scale two one byte values by a third one, which is treated as
///         the numerator of a fraction whose demominator is 256
///         In other words, it computes i,j * (scale / 256)
///
///         THIS FUNCTION ALWAYS MODIFIES ITS ARGUMENTS IN PLACE

__attribute__ ((unused)) static inline void nscale8x2( uint8_t& i, uint8_t& j, fract8 scale)
{


    uint16_t scale_fixed = scale + 1;
    i = (((uint16_t)i) * scale_fixed ) >> 8;
    j = (((uint16_t)j) * scale_fixed ) >> 8;
# 382 "..\\source\\FastLED\\lib8tion\\scale8.h"
}

///  scale two one byte values by a third one, which is treated as
///         the numerator of a fraction whose demominator is 256
///         In other words, it computes i,j * (scale / 256), ensuring
/// that non-zero values passed in remain non zero, no matter how low the scale
/// argument.
///
///         THIS FUNCTION ALWAYS MODIFIES ITS ARGUMENTS IN PLACE


__attribute__ ((unused)) static inline void nscale8x2_video( uint8_t& i, uint8_t& j, fract8 scale)
{

    uint8_t nonzeroscale = (scale != 0) ? 1 : 0;
    i = (i == 0) ? 0 : (((int)i * (int)(scale) ) >> 8) + nonzeroscale;
    j = (j == 0) ? 0 : (((int)j * (int)(scale) ) >> 8) + nonzeroscale;
# 406 "..\\source\\FastLED\\lib8tion\\scale8.h"
}


/// scale a 16-bit unsigned value by an 8-bit value,
///         considered as numerator of a fraction whose denominator
///         is 256. In other words, it computes i * (scale / 256)

__attribute__ ((always_inline)) static inline uint16_t scale16by8( uint16_t i, fract8 scale )
{

    uint16_t result;

    result = (i * (1+((uint16_t)scale))) >> 8;



    return result;
# 476 "..\\source\\FastLED\\lib8tion\\scale8.h"
}

/// scale a 16-bit unsigned value by a 16-bit value,
///         considered as numerator of a fraction whose denominator
///         is 65536. In other words, it computes i * (scale / 65536)

__attribute__ ((unused)) static inline uint16_t scale16( uint16_t i, fract16 scale )
{

    uint16_t result;

    result = ((uint32_t)(i) * (1+(uint32_t)(scale))) / 65536;



    return result;
# 641 "..\\source\\FastLED\\lib8tion\\scale8.h"
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
__attribute__ ((unused)) static inline uint8_t dim8_raw( uint8_t x)
{
    return scale8( x, x);
}

/// Adjust a scaling value for dimming for video (value will never go below 1)
__attribute__ ((unused)) static inline uint8_t dim8_video( uint8_t x)
{
    return scale8_video( x, x);
}

/// Linear version of the dimming function that halves for values < 128
__attribute__ ((unused)) static inline uint8_t dim8_lin( uint8_t x )
{
    if( x & 0x80 ) {
        x = scale8( x, x);
    } else {
        x += 1;
        x /= 2;
    }
    return x;
}

/// inverse of the dimming function, brighten a value
__attribute__ ((unused)) static inline uint8_t brighten8_raw( uint8_t x)
{
    uint8_t ix = 255 - x;
    return 255 - scale8( ix, ix);
}

/// inverse of the dimming function, brighten a value
__attribute__ ((unused)) static inline uint8_t brighten8_video( uint8_t x)
{
    uint8_t ix = 255 - x;
    return 255 - scale8_video( ix, ix);
}

/// inverse of the dimming function, brighten a value
__attribute__ ((unused)) static inline uint8_t brighten8_lin( uint8_t x )
{
    uint8_t ix = 255 - x;
    if( ix & 0x80 ) {
        ix = scale8( ix, ix);
    } else {
        ix += 1;
        ix /= 2;
    }
    return 255 - ix;
}

///@}
# 5 "..\\source\\FastLED\\lib8tion/math8.h"

///@ingroup lib8tion

///@defgroup Math Basic math operations
/// Fast, efficient 8-bit math functions specifically
/// designed for high-performance LED programming.
///
/// Because of the AVR(Arduino) and ARM assembly language
/// implementations provided, using these functions often
/// results in smaller and faster code than the equivalent
/// program using plain "C" arithmetic and logic.
///@{


/// add one byte to another, saturating at 0xFF
/// @param i - first byte to add
/// @param j - second byte to add
/// @returns the sum of i & j, capped at 0xFF
__attribute__ ((always_inline)) static inline uint8_t qadd8( uint8_t i, uint8_t j)
{
# 46 "..\\source\\FastLED\\lib8tion/math8.h"
    _uqadd8(i,j);
    //asm volatile( "uqadd8 %0, %0, %1" : "+r" (i) : "r" (j));
    return i;



}

/// Add one byte to another, saturating at 0x7F
/// @param i - first byte to add
/// @param j - second byte to add
/// @returns the sum of i & j, capped at 0xFF
__attribute__ ((always_inline)) static inline int8_t qadd7( int8_t i, int8_t j)
{
# 81 "..\\source\\FastLED\\lib8tion/math8.h"
    _qadd8(i,j);
    //asm volatile( "qadd8 %[out], %[inone], %[intwo]" : [out] "=r" (i): [inone] "r" (i), [intwo] "r" (j));
    return i;



}

/// subtract one byte from another, saturating at 0x00
/// @returns i - j with a floor of 0
__attribute__ ((always_inline)) static inline uint8_t qsub8( uint8_t i, uint8_t j)
{

    int t = i - j;
    if( t < 0) t = 0;
    return t;
# 117 "..\\source\\FastLED\\lib8tion/math8.h"
}

/// add one byte to another, with one byte result
__attribute__ ((always_inline)) static inline uint8_t add8( uint8_t i, uint8_t j)
{

    int t = i + j;
    return t;
# 132 "..\\source\\FastLED\\lib8tion/math8.h"
}

/// add one byte to another, with one byte result
__attribute__ ((always_inline)) static inline uint16_t add8to16( uint8_t i, uint16_t j)
{

    uint16_t t = i + j;
    return t;
# 152 "..\\source\\FastLED\\lib8tion/math8.h"
}


/// subtract one byte from another, 8-bit result
__attribute__ ((always_inline)) static inline uint8_t sub8( uint8_t i, uint8_t j)
{

    int t = i - j;
    return t;
# 168 "..\\source\\FastLED\\lib8tion/math8.h"
}

/// Calculate an integer average of two unsigned
///       8-bit integer values (uint8_t).
///       Fractional results are rounded down, e.g. avg8(20,41) = 30
__attribute__ ((always_inline)) static inline uint8_t avg8( uint8_t i, uint8_t j)
{

    return (i + j) >> 1;
# 190 "..\\source\\FastLED\\lib8tion/math8.h"
}

/// Calculate an integer average of two unsigned
///       16-bit integer values (uint16_t).
///       Fractional results are rounded down, e.g. avg16(20,41) = 30
__attribute__ ((always_inline)) static inline uint16_t avg16( uint16_t i, uint16_t j)
{

    return (uint32_t)((uint32_t)(i) + (uint32_t)(j)) >> 1;
# 216 "..\\source\\FastLED\\lib8tion/math8.h"
}


/// Calculate an integer average of two signed 7-bit
///       integers (int8_t)
///       If the first argument is even, result is rounded down.
///       If the first argument is odd, result is result up.
__attribute__ ((always_inline)) static inline int8_t avg7( int8_t i, int8_t j)
{

    return ((i + j) >> 1) + (i & 0x1);
# 239 "..\\source\\FastLED\\lib8tion/math8.h"
}

/// Calculate an integer average of two signed 15-bit
///       integers (int16_t)
///       If the first argument is even, result is rounded down.
///       If the first argument is odd, result is result up.
__attribute__ ((always_inline)) static inline int16_t avg15( int16_t i, int16_t j)
{

    return ((int32_t)((int32_t)(i) + (int32_t)(j)) >> 1) + (i & 0x1);
# 267 "..\\source\\FastLED\\lib8tion/math8.h"
}


///       Calculate the remainder of one unsigned 8-bit
///       value divided by anoter, aka A % M.
///       Implemented by repeated subtraction, which is
///       very compact, and very fast if A is 'probably'
///       less than M.  If A is a large multiple of M,
///       the loop has to execute multiple times.  However,
///       even in that case, the loop is only two
///       instructions long on AVR, i.e., quick.
__attribute__ ((always_inline)) static inline uint8_t mod8( uint8_t a, uint8_t m)
{
# 289 "..\\source\\FastLED\\lib8tion/math8.h"
    while( a >= m) a -= m;

    return a;
}

///          Add two numbers, and calculate the modulo
///          of the sum and a third number, M.
///          In other words, it returns (A+B) % M.
///          It is designed as a compact mechanism for
///          incrementing a 'mode' switch and wrapping
///          around back to 'mode 0' when the switch
///          goes past the end of the available range.
///          e.g. if you have seven modes, this switches
///          to the next one and wraps around if needed:
///            mode = addmod8( mode, 1, 7);
///LIB8STATIC_ALWAYS_INLINESee 'mod8' for notes on performance.
__attribute__ ((unused)) static inline uint8_t addmod8( uint8_t a, uint8_t b, uint8_t m)
{
# 317 "..\\source\\FastLED\\lib8tion/math8.h"
    a += b;
    while( a >= m) a -= m;

    return a;
}

///          Subtract two numbers, and calculate the modulo
///          of the difference and a third number, M.
///          In other words, it returns (A-B) % M.
///          It is designed as a compact mechanism for
///          incrementing a 'mode' switch and wrapping
///          around back to 'mode 0' when the switch
///          goes past the end of the available range.
///          e.g. if you have seven modes, this switches
///          to the next one and wraps around if needed:
///            mode = addmod8( mode, 1, 7);
///LIB8STATIC_ALWAYS_INLINESee 'mod8' for notes on performance.
__attribute__ ((unused)) static inline uint8_t submod8( uint8_t a, uint8_t b, uint8_t m)
{
# 346 "..\\source\\FastLED\\lib8tion/math8.h"
    a -= b;
    while( a >= m) a -= m;

    return a;
}

/// 8x8 bit multiplication, with 8 bit result
__attribute__ ((always_inline)) static inline uint8_t mul8( uint8_t i, uint8_t j)
{

    return ((int)i * (int)(j) ) & 0xFF;
# 373 "..\\source\\FastLED\\lib8tion/math8.h"
}


/// saturating 8x8 bit multiplication, with 8 bit result
/// @returns the product of i * j, capping at 0xFF
__attribute__ ((always_inline)) static inline uint8_t qmul8( uint8_t i, uint8_t j)
{

    int p = ((int)i * (int)(j) );
    if( p > 255) p = 255;
    return p;
# 408 "..\\source\\FastLED\\lib8tion/math8.h"
}


/// take abs() of a signed 8-bit uint8_t
__attribute__ ((always_inline)) static inline int8_t abs8( int8_t i)
{

    if( i < 0) i = -i;
    return i;
# 431 "..\\source\\FastLED\\lib8tion/math8.h"
}

///         square root for 16-bit integers
///         About three times faster and five times smaller
///         than Arduino's general sqrt on AVR.
__attribute__ ((unused)) static inline uint8_t sqrt16(uint16_t x)
{
    if( x <= 1) {
        return x;
    }

    uint8_t low = 1; // lower bound
    uint8_t hi, mid;

    if( x > 7904) {
        hi = 255;
    } else {
        hi = (x >> 5) + 8; // initial estimate for upper bound
    }

    do {
        mid = (low + hi) >> 1;
        if ((uint16_t)(mid * mid) > x) {
            hi = mid - 1;
        } else {
            if( mid == 255) {
                return 255;
            }
            low = mid + 1;
        }
    } while (hi >= low);

    return low - 1;
}

/// blend a variable proproportion(0-255) of one byte to another
/// @param a - the starting byte value
/// @param b - the byte value to blend toward
/// @param amountOfB - the proportion (0-255) of b to blend
/// @returns a byte value between a and b, inclusive

__attribute__ ((unused)) static inline uint8_t blend8( uint8_t a, uint8_t b, uint8_t amountOfB)
{

    uint16_t partial;
    uint8_t result;
    
    uint8_t amountOfA = 255 - amountOfB;
    
    partial = (a * amountOfA);

    partial += a;
    //partial = add8to16( a, partial);

    
    partial += (b * amountOfB);

    partial += b;
    //partial = add8to16( b, partial);

    
    result = partial >> 8;
    
    return result;

# 540 "..\\source\\FastLED\\lib8tion/math8.h"
}

# 556 "..\\source\\FastLED\\lib8tion/math8.h"


///@}
# 412 "..\\source\\FastLED\\lib8tion.h"
# 1 "..\\source\\FastLED\\lib8tion/random8.h"


///@ingroup lib8tion

///@defgroup Random Fast random number generators
/// Fast 8- and 16- bit unsigned random numbers.
///  Significantly faster than Arduino random(), but
///  also somewhat less random.  You can add entropy.
///@{

// X(n+1) = (2053 * X(n)) + 13849)









/// random number seed
extern uint16_t rand16seed;// = RAND16_SEED;

/// Generate an 8-bit random number
__attribute__ ((unused)) static inline uint8_t random8()
{
    rand16seed = (rand16seed * ((uint16_t)(2053))) + ((uint16_t)(13849));
    // return the sum of the high and low bytes, for better
    //  mixing and non-sequential correlation
    return (uint8_t)(((uint8_t)(rand16seed & 0xFF)) +
                     ((uint8_t)(rand16seed >> 8)));
}

/// Generate a 16 bit random number
__attribute__ ((unused)) static inline uint16_t random16()
{
    rand16seed = (rand16seed * ((uint16_t)(2053))) + ((uint16_t)(13849));
    return rand16seed;
}

/// Generate an 8-bit random number between 0 and lim
/// @param lim the upper bound for the result
__attribute__ ((unused)) static inline uint8_t random8(uint8_t lim)
{
    uint8_t r = random8();
    r = (r*lim) >> 8;
    return r;
}

/// Generate an 8-bit random number in the given range
/// @param min the lower bound for the random number
/// @param lim the upper bound for the random number
__attribute__ ((unused)) static inline uint8_t random8(uint8_t min, uint8_t lim)
{
    uint8_t delta = lim - min;
    uint8_t r = random8(delta) + min;
    return r;
}

/// Generate an 16-bit random number between 0 and lim
/// @param lim the upper bound for the result
__attribute__ ((unused)) static inline uint16_t random16( uint16_t lim)
{
    uint16_t r = random16();
    uint32_t p = (uint32_t)lim * (uint32_t)r;
    r = p >> 16;
    return r;
}

/// Generate an 16-bit random number in the given range
/// @param min the lower bound for the random number
/// @param lim the upper bound for the random number
__attribute__ ((unused)) static inline uint16_t random16( uint16_t min, uint16_t lim)
{
    uint16_t delta = lim - min;
    uint16_t r = random16( delta) + min;
    return r;
}

/// Set the 16-bit seed used for the random number generator
__attribute__ ((unused)) static inline void random16_set_seed( uint16_t seed)
{
    rand16seed = seed;
}

/// Get the current seed value for the random number generator
__attribute__ ((unused)) static inline uint16_t random16_get_seed()
{
    return rand16seed;
}

/// Add entropy into the random number generator
__attribute__ ((unused)) static inline void random16_add_entropy( uint16_t entropy)
{
    rand16seed += entropy;
}

///@}

# 414 "..\\source\\FastLED\\lib8tion.h"
# 1 "..\\source\\FastLED\\lib8tion/trig8.h"



///@ingroup lib8tion

///@defgroup Trig Fast trig functions
/// Fast 8 and 16-bit approximations of sin(x) and cos(x).
///        Don't use these approximations for calculating the
///        trajectory of a rocket to Mars, but they're great
///        for art projects and LED displays.
///
///        On Arduino/AVR, the 16-bit approximation is more than
///        10X faster than floating point sin(x) and cos(x), while
/// the 8-bit approximation is more than 20X faster.
///@{







/// Fast 16-bit approximation of sin(x). This approximation never varies more than
/// 0.69% from the floating point value you'd get by doing
///
///     float s = sin(x) * 32767.0;
///
/// @param theta input angle from 0-65535
/// @returns sin of theta, value between -32767 to 32767.
//LIB8STATIC int16_t sin16_avr( uint16_t theta )
//{
//    static const uint8_t data[] =
//    { 0,         0,         49, 0, 6393%256,   6393/256, 48, 0,
//      12539%256, 12539/256, 44, 0, 18204%256, 18204/256, 38, 0,
//      23170%256, 23170/256, 31, 0, 27245%256, 27245/256, 23, 0,
//      30273%256, 30273/256, 14, 0, 32137%256, 32137/256,  4 /*,0*/ };
//
//    uint16_t offset = (theta & 0x3FFF);
//
//    // AVR doesn't have a multi-bit shift instruction,
//    // so if we say "offset >>= 3", gcc makes a tiny loop.
//    // Inserting empty volatile statements between each
//    // bit shift forces gcc to unroll the loop.
//    offset >>= 1; // 0..8191
//    asm volatile("");
//    offset >>= 1; // 0..4095
//    asm volatile("");
//    offset >>= 1; // 0..2047
//
//    if( theta & 0x4000 ) offset = 2047 - offset;
//
//    uint8_t sectionX4;
//    sectionX4 = offset / 256;
//    sectionX4 *= 4;
//
//    uint8_t m;
//
//    union {
//        uint16_t b;
//        struct {
//            uint8_t blo;
//            uint8_t bhi;
//        };
//    } u;
//
//    //in effect u.b = blo + (256 * bhi);
//    u.blo = data[ sectionX4 ];
//    u.bhi = data[ sectionX4 + 1];
//    m     = data[ sectionX4 + 2];
//
//    uint8_t secoffset8 = (uint8_t)(offset) / 2;
//
//    uint16_t mx = m * secoffset8;
//
//    int16_t  y  = mx + u.b;
//    if( theta & 0x8000 ) y = -y;
//
//    return y;
//}

/// Fast 16-bit approximation of sin(x). This approximation never varies more than
/// 0.69% from the floating point value you'd get by doing
///
///     float s = sin(x) * 32767.0;
///
/// @param theta input angle from 0-65535
/// @returns sin of theta, value between -32767 to 32767.
__attribute__ ((unused)) static inline int16_t sin16_C( uint16_t theta )
{
    static const uint16_t base[] =
    { 0, 6393, 12539, 18204, 23170, 27245, 30273, 32137 };
    static const uint8_t slope[] =
    { 49, 48, 44, 38, 31, 23, 14, 4 };

    uint16_t offset = (theta & 0x3FFF) >> 3; // 0..2047
    if( theta & 0x4000 ) offset = 2047 - offset;

    uint8_t section = offset / 256; // 0..7
    uint16_t b   = base[section];
    uint8_t  m   = slope[section];

    uint8_t secoffset8 = (uint8_t)(offset) / 2;

    uint16_t mx = m * secoffset8;
    int16_t  y  = mx + b;

    if( theta & 0x8000 ) y = -y;

    return y;
}


/// Fast 16-bit approximation of cos(x). This approximation never varies more than
/// 0.69% from the floating point value you'd get by doing
///
///     float s = cos(x) * 32767.0;
///
/// @param theta input angle from 0-65535
/// @returns sin of theta, value between -32767 to 32767.
__attribute__ ((unused)) static inline int16_t cos16( uint16_t theta)
{
    return sin16_C( theta + 16384);
}

///////////////////////////////////////////////////////////////////////

// sin8 & cos8
//        Fast 8-bit approximations of sin(x) & cos(x).
//        Input angle is an unsigned int from 0-255.
//        Output is an unsigned int from 0 to 255.
//
//        This approximation can vary to to 2%
//        from the floating point value you'd get by doing
//          float s = (sin( x ) * 128.0) + 128;
//
//        Don't use this approximation for calculating the
//        "real" trigonometric calculations, but it's great
//        for art projects and LED displays.
//
//        On Arduino/AVR, this approximation is more than
//        20X faster than floating point sin(x) and cos(x)








const uint8_t b_m16_interleave[] = { 0, 49, 49, 41, 90, 27, 117, 10 };

/// Fast 8-bit approximation of sin(x). This approximation never varies more than
/// 2% from the floating point value you'd get by doing
///
///     float s = (sin(x) * 128.0) + 128;
///
/// @param theta input angle from 0-255
/// @returns sin of theta, value between 0 and 255
//LIB8STATIC uint8_t  sin8_avr( uint8_t theta)
//{
//    uint8_t offset = theta;
//
//    asm volatile(
//        "sbrc %[theta],6         \n\t"
//        "com  %[offset]           \n\t"
//        : [theta] "+r" (theta), [offset] "+r" (offset)
//    );
//
//    offset &= 0x3F; // 0..63
//
//    uint8_t secoffset  = offset & 0x0F; // 0..15
//    if( theta & 0x40) secoffset++;
//
//    uint8_t m16; uint8_t b;
//
//    uint8_t section = offset >> 4; // 0..3
//    uint8_t s2 = section * 2;
//
//    const uint8_t* p = b_m16_interleave;
//    p += s2;
//    b   = *p;
//    p++;
//    m16 = *p;
//
//    uint8_t mx;
//    uint8_t xr1;
//    asm volatile(
//        "mul %[m16],%[secoffset]   \n\t"
//        "mov %[mx],r0              \n\t"
//        "mov %[xr1],r1             \n\t"
//        "eor  r1, r1               \n\t"
//        "swap %[mx]                \n\t"
//        "andi %[mx],0x0F           \n\t"
//        "swap %[xr1]               \n\t"
//        "andi %[xr1], 0xF0         \n\t"
//        "or   %[mx], %[xr1]        \n\t"
//        : [mx] "=d" (mx), [xr1] "=d" (xr1)
//        : [m16] "d" (m16), [secoffset] "d" (secoffset)
//    );
//
//    int8_t y = mx + b;
//    if( theta & 0x80 ) y = -y;
//
//    y += 128;
//
//    return y;
//}


/// Fast 8-bit approximation of sin(x). This approximation never varies more than
/// 2% from the floating point value you'd get by doing
///
///     float s = (sin(x) * 128.0) + 128;
///
/// @param theta input angle from 0-255
/// @returns sin of theta, value between 0 and 255
__attribute__ ((unused)) static inline uint8_t sin8_C( uint8_t theta)
{
    uint8_t offset = theta;
    if( theta & 0x40 ) {
        offset = (uint8_t)255 - offset;
    }
    offset &= 0x3F; // 0..63

    uint8_t secoffset  = offset & 0x0F; // 0..15
    if( theta & 0x40) secoffset++;

    uint8_t section = offset >> 4; // 0..3
    uint8_t s2 = section * 2;
    const uint8_t* p = b_m16_interleave;
    p += s2;
    uint8_t b   =  *p;
    p++;
    uint8_t m16 =  *p;

    uint8_t mx = (m16 * secoffset) >> 4;

    int8_t y = mx + b;
    if( theta & 0x80 ) y = -y;

    y += 128;

    return y;
}

/// Fast 8-bit approximation of cos(x). This approximation never varies more than
/// 2% from the floating point value you'd get by doing
///
///     float s = (cos(x) * 128.0) + 128;
///
/// @param theta input angle from 0-255
/// @returns sin of theta, value between 0 and 255
__attribute__ ((unused)) static inline uint8_t cos8( uint8_t theta)
{
    return sin8_C( theta + 64);
}

///@}
# 415 "..\\source\\FastLED\\lib8tion.h"

///////////////////////////////////////////////////////////////////////







///////////////////////////////////////////////////////////////////////
//
// float-to-fixed and fixed-to-float conversions
//
// Note that anything involving a 'float' on AVR will be slower.

/// sfract15ToFloat: conversion from sfract15 fixed point to
///                  IEEE754 32-bit float.
__attribute__ ((unused)) static inline float sfract15ToFloat( sfract15 y)
{
    return y / 32768.0;
}

/// conversion from IEEE754 float in the range (-1,1)
///                  to 16-bit fixed point.  Note that the extremes of
///                  one and negative one are NOT representable.  The
///                  representable range is basically
__attribute__ ((unused)) static inline sfract15 floatToSfract15( float f)
{
    return f * 32768.0;
}



///////////////////////////////////////////////////////////////////////
//
// memmove8, memcpy8, and memset8:
//   alternatives to memmove, memcpy, and memset that are
//   faster on AVR than standard avr-libc 1.8

# 461 "..\\source\\FastLED\\lib8tion.h"
// on non-AVR platforms, these names just call standard libc.






///////////////////////////////////////////////////////////////////////
//
// linear interpolation, such as could be used for Perlin noise, etc.
//

// A note on the structure of the lerp functions:
// The cases for b>a and b<=a are handled separately for
// speed: without knowing the relative order of a and b,
// the value (a-b) might be overflow the width of a or b,
// and have to be promoted to a wider, slower type.
// To avoid that, we separate the two cases, and are able
// to do all the math in the same width as the arguments,
// which is much faster and smaller on AVR.

/// linear interpolation between two unsigned 8-bit values,
/// with 8-bit fraction
__attribute__ ((unused)) static inline uint8_t lerp8by8( uint8_t a, uint8_t b, fract8 frac)
{
    uint8_t result;
    if( b > a) {
        uint8_t delta = b - a;
        uint8_t scaled = scale8( delta, frac);
        result = a + scaled;
    } else {
        uint8_t delta = a - b;
        uint8_t scaled = scale8( delta, frac);
        result = a - scaled;
    }
    return result;
}

/// linear interpolation between two unsigned 16-bit values,
/// with 16-bit fraction
__attribute__ ((unused)) static inline uint16_t lerp16by16( uint16_t a, uint16_t b, fract16 frac)
{
    uint16_t result;
    if( b > a ) {
        uint16_t delta = b - a;
        uint16_t scaled = scale16(delta, frac);
        result = a + scaled;
    } else {
        uint16_t delta = a - b;
        uint16_t scaled = scale16( delta, frac);
        result = a - scaled;
    }
    return result;
}

/// linear interpolation between two unsigned 16-bit values,
/// with 8-bit fraction
__attribute__ ((unused)) static inline uint16_t lerp16by8( uint16_t a, uint16_t b, fract8 frac)
{
    uint16_t result;
    if( b > a) {
        uint16_t delta = b - a;
        uint16_t scaled = scale16by8( delta, frac);
        result = a + scaled;
    } else {
        uint16_t delta = a - b;
        uint16_t scaled = scale16by8( delta, frac);
        result = a - scaled;
    }
    return result;
}

/// linear interpolation between two signed 15-bit values,
/// with 8-bit fraction
__attribute__ ((unused)) static inline int16_t lerp15by8( int16_t a, int16_t b, fract8 frac)
{
    int16_t result;
    if( b > a) {
        uint16_t delta = b - a;
        uint16_t scaled = scale16by8( delta, frac);
        result = a + scaled;
    } else {
        uint16_t delta = a - b;
        uint16_t scaled = scale16by8( delta, frac);
        result = a - scaled;
    }
    return result;
}

/// linear interpolation between two signed 15-bit values,
/// with 8-bit fraction
__attribute__ ((unused)) static inline int16_t lerp15by16( int16_t a, int16_t b, fract16 frac)
{
    int16_t result;
    if( b > a) {
        uint16_t delta = b - a;
        uint16_t scaled = scale16( delta, frac);
        result = a + scaled;
    } else {
        uint16_t delta = a - b;
        uint16_t scaled = scale16( delta, frac);
        result = a - scaled;
    }
    return result;
}

///  map8: map from one full-range 8-bit value into a narrower
/// range of 8-bit values, possibly a range of hues.
///
/// E.g. map myValue into a hue in the range blue..purple..pink..red
/// hue = map8( myValue, HUE_BLUE, HUE_RED);
///
/// Combines nicely with the waveform functions (like sin8, etc)
/// to produce continuous hue gradients back and forth:
///
///          hue = map8( sin8( myValue), HUE_BLUE, HUE_RED);
///
/// Mathematically simiar to lerp8by8, but arguments are more
/// like Arduino's "map"; this function is similar to
///
///          map( in, 0, 255, rangeStart, rangeEnd)
///
/// but faster and specifically designed for 8-bit values.
__attribute__ ((unused)) static inline uint8_t map8( uint8_t in, uint8_t rangeStart, uint8_t rangeEnd)
{
    uint8_t rangeWidth = rangeEnd - rangeStart;
    uint8_t out = scale8( in, rangeWidth);
    out += rangeStart;
    return out;
}


///////////////////////////////////////////////////////////////////////
//
// easing functions; see http://easings.net
//

/// ease8InOutQuad: 8-bit quadratic ease-in / ease-out function
///                Takes around 13 cycles on AVR

__attribute__ ((unused)) static inline uint8_t ease8InOutQuad( uint8_t i)
{
    uint8_t j = i;
    if( j & 0x80 ) {
        j = 255 - j;
    }
    uint8_t jj  = scale8(  j, j);
    uint8_t jj2 = jj << 1;
    if( i & 0x80 ) {
        jj2 = 255 - jj2;
    }
    return jj2;
}

# 643 "..\\source\\FastLED\\lib8tion.h"

/// ease16InOutQuad: 16-bit quadratic ease-in / ease-out function
// C implementation at this point
__attribute__ ((unused)) static inline uint16_t ease16InOutQuad( uint16_t i)
{
    uint16_t j = i;
    if( j & 0x8000 ) {
        j = 65535 - j;
    }
    uint16_t jj  = scale16( j, j);
    uint16_t jj2 = jj << 1;
    if( i & 0x8000 ) {
        jj2 = 65535 - jj2;
    }
    return jj2;
}


/// ease8InOutCubic: 8-bit cubic ease-in / ease-out function
///                 Takes around 18 cycles on AVR
__attribute__ ((unused)) static inline fract8 ease8InOutCubic( fract8 i)
{
    uint8_t ii  = scale8_LEAVING_R1_DIRTY(  i, i);
    uint8_t iii = scale8_LEAVING_R1_DIRTY( ii, i);

    uint16_t r1 = (3 * (uint16_t)(ii)) - ( 2 * (uint16_t)(iii));

    /* the code generated for the above *'s automatically
       cleans up R1, so there's no need to explicitily call
       cleanup_R1(); */

    uint8_t result = r1;

    // if we got "256", return 255:
    if( r1 & 0x100 ) {
        result = 255;
    }
    return result;
}

/// ease8InOutApprox: fast, rough 8-bit ease-in/ease-out function
///                   shaped approximately like 'ease8InOutCubic',
///                   it's never off by more than a couple of percent
///                   from the actual cubic S-curve, and it executes
///                   more than twice as fast.  Use when the cycles
///                   are more important than visual smoothness.
///                   Asm version takes around 7 cycles on AVR.


__attribute__ ((unused)) static inline fract8 ease8InOutApprox( fract8 i)
{
    if( i < 64) {
        // start with slope 0.5
        i /= 2;
    } else if( i > (255 - 64)) {
        // end with slope 0.5
        i = 255 - i;
        i /= 2;
        i = 255 - i;
    } else {
        // in the middle, use slope 192/128 = 1.5
        i -= 64;
        i += (i / 2);
        i += 32;
    }

    return i;
}

# 744 "..\\source\\FastLED\\lib8tion.h"



/// triwave8: triangle (sawtooth) wave generator.  Useful for
///           turning a one-byte ever-increasing value into a
///           one-byte value that oscillates up and down.
///
///           input         output
///           0..127        0..254 (positive slope)
///           128..255      254..0 (negative slope)
///
/// On AVR this function takes just three cycles.
///
__attribute__ ((unused)) static inline uint8_t triwave8(uint8_t in)
{
    if( in & 0x80) {
        in = 255 - in;
    }
    uint8_t out = in << 1;
    return out;
}


// quadwave8 and cubicwave8: S-shaped wave generators (like 'sine').
//           Useful for turning a one-byte 'counter' value into a
//           one-byte oscillating value that moves smoothly up and down,
//           with an 'acceleration' and 'deceleration' curve.
//
//           These are even faster than 'sin8', and have
//           slightly different curve shapes.
//

/// quadwave8: quadratic waveform generator.  Spends just a little more
///            time at the limits than 'sine' does.
__attribute__ ((unused)) static inline uint8_t quadwave8(uint8_t in)
{
    return ease8InOutQuad( triwave8( in));
}

/// cubicwave8: cubic waveform generator.  Spends visibly more time
///             at the limits than 'sine' does.
__attribute__ ((unused)) static inline uint8_t cubicwave8(uint8_t in)
{
    return ease8InOutCubic( triwave8( in));
}

/// squarewave8: square wave generator.  Useful for
///           turning a one-byte ever-increasing value
///           into a one-byte value that is either 0 or 255.
///           The width of the output 'pulse' is
///           determined by the pulsewidth argument:
///
///~~~
///           If pulsewidth is 255, output is always 255.
///           If pulsewidth < 255, then
///             if input < pulsewidth  then output is 255
///             if input >= pulsewidth then output is 0
///~~~
///
/// the output looking like:
///
///~~~
///     255   +--pulsewidth--+
///      .    |              |
///      0    0              +--------(256-pulsewidth)--------
///~~~
///
/// @param in
/// @param pulsewidth
/// @returns square wave output
__attribute__ ((unused)) static inline uint8_t squarewave8( uint8_t in, uint8_t pulsewidth=128)
{
    if( in < pulsewidth || (pulsewidth == 255)) {
        return 255;
    } else {
        return 0;
    }
}




/// Template class for represneting fractional ints.
template<class T, int F, int I> class q {
    T i:I;
    T f:F;
public:
    q(float fx) { i = fx; f = (fx-i) * (1<<F); }
    q(uint8_t _i, uint8_t _f) {i=_i; f=_f; }
    uint32_t operator*(uint32_t v) { return (v*i) + ((v*f)>>F); }
    uint16_t operator*(uint16_t v) { return (v*i) + ((v*f)>>F); }
    int32_t operator*(int32_t v) { return (v*i) + ((v*f)>>F); }
    int16_t operator*(int16_t v) { return (v*i) + ((v*f)>>F); }

    //int operator*(int v) { return (v*i) + ((v*f)>>F); }




};

template<class T, int F, int I> static uint32_t operator*(uint32_t v, q<T,F,I> & q) { return q * v; }
template<class T, int F, int I> static uint16_t operator*(uint16_t v, q<T,F,I> & q) { return q * v; }
template<class T, int F, int I> static int32_t operator*(int32_t v, q<T,F,I> & q) { return q * v; }
template<class T, int F, int I> static int16_t operator*(int16_t v, q<T,F,I> & q) { return q * v; }

//template<class T, int F, int I> static int operator*(int v, q<T,F,I> & q) { return q * v; }





/// A 4.4 integer (4 bits integer, 4 bits fraction)
typedef q<uint8_t, 4,4> q44;
/// A 6.2 integer (6 bits integer, 2 bits fraction)
typedef q<uint8_t, 6,2> q62;
/// A 8.8 integer (8 bits integer, 8 bits fraction)
typedef q<uint16_t, 8,8> q88;
/// A 12.4 integer (12 bits integer, 4 bits fraction)
typedef q<uint16_t, 12,4> q124;



// Beat generators - These functions produce waves at a given
//                   number of 'beats per minute'.  Internally, they use
//                   the Arduino function 'millis' to track elapsed time.
//                   Accuracy is a bit better than one part in a thousand.
//
//       beat8( BPM ) returns an 8-bit value that cycles 'BPM' times
//                    per minute, rising from 0 to 255, resetting to zero,
//                    rising up again, etc..  The output of this function
//                    is suitable for feeding directly into sin8, and cos8,
//                    triwave8, quadwave8, and cubicwave8.
//       beat16( BPM ) returns a 16-bit value that cycles 'BPM' times
//                    per minute, rising from 0 to 65535, resetting to zero,
//                    rising up again, etc.  The output of this function is
//                    suitable for feeding directly into sin16 and cos16.
//       beat88( BPM88) is the same as beat16, except that the BPM88 argument
//                    MUST be in Q8.8 fixed point format, e.g. 120BPM must
//                    be specified as 120*256 = 30720.
//       beatsin8( BPM, uint8_t low, uint8_t high) returns an 8-bit value that
//                    rises and falls in a sine wave, 'BPM' times per minute,
//                    between the values of 'low' and 'high'.
//       beatsin16( BPM, uint16_t low, uint16_t high) returns a 16-bit value
//                    that rises and falls in a sine wave, 'BPM' times per
//                    minute, between the values of 'low' and 'high'.
//       beatsin88( BPM88, ...) is the same as beatsin16, except that the
//                    BPM88 argument MUST be in Q8.8 fixed point format,
//                    e.g. 120BPM must be specified as 120*256 = 30720.
//
//  BPM can be supplied two ways.  The simpler way of specifying BPM is as
//  a simple 8-bit integer from 1-255, (e.g., "120").
//  The more sophisticated way of specifying BPM allows for fractional
//  "Q8.8" fixed point number (an 'accum88') with an 8-bit integer part and
//  an 8-bit fractional part.  The easiest way to construct this is to multiply
//  a floating point BPM value (e.g. 120.3) by 256, (e.g. resulting in 30796
//  in this case), and pass that as the 16-bit BPM argument.
//  "BPM88" MUST always be specified in Q8.8 format.
//
//  Originally designed to make an entire animation project pulse with brightness.
//  For that effect, add this line just above your existing call to "FastLED.show()":
//
//     uint8_t bright = beatsin8( 60 /*BPM*/, 192 /*dimmest*/, 255 /*brightest*/ ));
//     FastLED.setBrightness( bright );
//     FastLED.show();
//
//  The entire animation will now pulse between brightness 192 and 255 once per second.


// The beat generators need access to a millisecond counter.
// On Arduino, this is "millis()".  On other platforms, you'll
// need to provide a function with this signature:
//   uint32_t get_millisecond_timer();
// that provides similar functionality.
// You can also force use of the get_millisecond_timer function
// by #defining USE_GET_MILLISECOND_TIMER.





uint32_t get_millisecond_timer();



// beat16 generates a 16-bit 'sawtooth' wave at a given BPM,
///        with BPM specified in Q8.8 fixed-point format; e.g.
///        for this function, 120 BPM MUST BE specified as
///        120*256 = 30720.
///        If you just want to specify "120", use beat16 or beat8.
__attribute__ ((unused)) static inline uint16_t beat88( accum88 beats_per_minute_88, uint32_t timebase = 0)
{
    // BPM is 'beats per minute', or 'beats per 60000ms'.
    // To avoid using the (slower) division operator, we
    // want to convert 'beats per 60000ms' to 'beats per 65536ms',
    // and then use a simple, fast bit-shift to divide by 65536.
    //
    // The ratio 65536:60000 is 279.620266667:256; we'll call it 280:256.
    // The conversion is accurate to about 0.05%, more or less,
    // e.g. if you ask for "120 BPM", you'll get about "119.93".
    return (((get_millisecond_timer()) - timebase) * beats_per_minute_88 * 280) >> 16;
}

/// beat16 generates a 16-bit 'sawtooth' wave at a given BPM
__attribute__ ((unused)) static inline uint16_t beat16( accum88 beats_per_minute, uint32_t timebase = 0)
{
    // Convert simple 8-bit BPM's to full Q8.8 accum88's if needed
    if( beats_per_minute < 256) beats_per_minute <<= 8;
    return beat88(beats_per_minute, timebase);
}

/// beat8 generates an 8-bit 'sawtooth' wave at a given BPM
__attribute__ ((unused)) static inline uint8_t beat8( accum88 beats_per_minute, uint32_t timebase = 0)
{
    return beat16( beats_per_minute, timebase) >> 8;
}

/// beatsin88 generates a 16-bit sine wave at a given BPM,
///           that oscillates within a given range.
///           For this function, BPM MUST BE SPECIFIED as
///           a Q8.8 fixed-point value; e.g. 120BPM must be
///           specified as 120*256 = 30720.
///           If you just want to specify "120", use beatsin16 or beatsin8.
__attribute__ ((unused)) static inline uint16_t beatsin88( accum88 beats_per_minute_88, uint16_t lowest = 0, uint16_t highest = 65535,
                              uint32_t timebase = 0, uint16_t phase_offset = 0)
{
    uint16_t beat = beat88( beats_per_minute_88, timebase);
    uint16_t beatsin = (sin16_C( beat + phase_offset) + 32768);
    uint16_t rangewidth = highest - lowest;
    uint16_t scaledbeat = scale16( beatsin, rangewidth);
    uint16_t result = lowest + scaledbeat;
    return result;
}

/// beatsin16 generates a 16-bit sine wave at a given BPM,
///           that oscillates within a given range.
__attribute__ ((unused)) static inline uint16_t beatsin16( accum88 beats_per_minute, uint16_t lowest = 0, uint16_t highest = 65535,
                               uint32_t timebase = 0, uint16_t phase_offset = 0)
{
    uint16_t beat = beat16( beats_per_minute, timebase);
    uint16_t beatsin = (sin16_C( beat + phase_offset) + 32768);
    uint16_t rangewidth = highest - lowest;
    uint16_t scaledbeat = scale16( beatsin, rangewidth);
    uint16_t result = lowest + scaledbeat;
    return result;
}

/// beatsin8 generates an 8-bit sine wave at a given BPM,
///           that oscillates within a given range.
__attribute__ ((unused)) static inline uint8_t beatsin8( accum88 beats_per_minute, uint8_t lowest = 0, uint8_t highest = 255,
                            uint32_t timebase = 0, uint8_t phase_offset = 0)
{
    uint8_t beat = beat8( beats_per_minute, timebase);
    uint8_t beatsin = sin8_C( beat + phase_offset);
    uint8_t rangewidth = highest - lowest;
    uint8_t scaledbeat = scale8( beatsin, rangewidth);
    uint8_t result = lowest + scaledbeat;
    return result;
}


/// Return the current seconds since boot in a 16-bit value.  Used as part of the
/// "every N time-periods" mechanism
__attribute__ ((unused)) static inline uint16_t seconds16()
{
    uint32_t ms = get_millisecond_timer();
    uint16_t s16;
    s16 = ms / 1000;
    return s16;
}

/// Return the current minutes since boot in a 16-bit value.  Used as part of the
/// "every N time-periods" mechanism
__attribute__ ((unused)) static inline uint16_t minutes16()
{
    uint32_t ms = get_millisecond_timer();
    uint16_t m16;
    m16 = (ms / (60000L)) & 0xFFFF;
    return m16;
}

/// Return the current hours since boot in an 8-bit value.  Used as part of the
/// "every N time-periods" mechanism
__attribute__ ((unused)) static inline uint8_t hours8()
{
    uint32_t ms = get_millisecond_timer();
    uint8_t h8;
    h8 = (ms / (3600000L)) & 0xFF;
    return h8;
}


/// Helper routine to divide a 32-bit value by 1024, returning
/// only the low 16 bits. You'd think this would be just
///   result = (in32 >> 10) & 0xFFFF;
/// and on ARM, that's what you want and all is well.
/// But on AVR that code turns into a loop that executes
/// a four-byte shift ten times: 40 shifts in all, plus loop
/// overhead. This routine gets exactly the same result with
/// just six shifts (vs 40), and no loop overhead.
/// Used to convert millis to 'binary seconds' aka bseconds:
/// one bsecond == 1024 millis.
__attribute__ ((unused)) static inline uint16_t div1024_32_16( uint32_t in32)
{
    uint16_t out16;
# 1063 "..\\source\\FastLED\\lib8tion.h"
    out16 = (in32 >> 10) & 0xFFFF;

    return out16;
}

/// bseconds16 returns the current time-since-boot in
/// "binary seconds", which are actually 1024/1000 of a
/// second long.
__attribute__ ((unused)) static inline uint16_t bseconds16()
{
    uint32_t ms = get_millisecond_timer();
    uint16_t s16;
    s16 = div1024_32_16( ms);
    return s16;
}


// Classes to implement "Every N Milliseconds", "Every N Seconds",
// "Every N Minutes", "Every N Hours", and "Every N BSeconds".
# 1107 "..\\source\\FastLED\\lib8tion.h"
class CEveryNMillis { public: uint32_t mPrevTrigger; uint32_t mPeriod; CEveryNMillis() { reset(); mPeriod = 1; }; CEveryNMillis(uint32_t period) { reset(); setPeriod(period); }; void setPeriod( uint32_t period) { mPeriod = period; }; uint32_t getTime() { return (uint32_t)(get_millisecond_timer()); }; uint32_t getPeriod() { return mPeriod; }; uint32_t getElapsed() { return getTime() - mPrevTrigger; } uint32_t getRemaining() { return mPeriod - getElapsed(); } uint32_t getLastTriggerTime() { return mPrevTrigger; } bool ready() { bool isReady = (getElapsed() >= mPeriod); if( isReady ) { reset(); } return isReady; } void reset() { mPrevTrigger = getTime(); }; void trigger() { mPrevTrigger = getTime() - mPeriod; }; operator bool() { return ready(); } };;
class CEveryNSeconds { public: uint16_t mPrevTrigger; uint16_t mPeriod; CEveryNSeconds() { reset(); mPeriod = 1; }; CEveryNSeconds(uint16_t period) { reset(); setPeriod(period); }; void setPeriod( uint16_t period) { mPeriod = period; }; uint16_t getTime() { return (uint16_t)(seconds16()); }; uint16_t getPeriod() { return mPeriod; }; uint16_t getElapsed() { return getTime() - mPrevTrigger; } uint16_t getRemaining() { return mPeriod - getElapsed(); } uint16_t getLastTriggerTime() { return mPrevTrigger; } bool ready() { bool isReady = (getElapsed() >= mPeriod); if( isReady ) { reset(); } return isReady; } void reset() { mPrevTrigger = getTime(); }; void trigger() { mPrevTrigger = getTime() - mPeriod; }; operator bool() { return ready(); } };;
class CEveryNBSeconds { public: uint16_t mPrevTrigger; uint16_t mPeriod; CEveryNBSeconds() { reset(); mPeriod = 1; }; CEveryNBSeconds(uint16_t period) { reset(); setPeriod(period); }; void setPeriod( uint16_t period) { mPeriod = period; }; uint16_t getTime() { return (uint16_t)(bseconds16()); }; uint16_t getPeriod() { return mPeriod; }; uint16_t getElapsed() { return getTime() - mPrevTrigger; } uint16_t getRemaining() { return mPeriod - getElapsed(); } uint16_t getLastTriggerTime() { return mPrevTrigger; } bool ready() { bool isReady = (getElapsed() >= mPeriod); if( isReady ) { reset(); } return isReady; } void reset() { mPrevTrigger = getTime(); }; void trigger() { mPrevTrigger = getTime() - mPeriod; }; operator bool() { return ready(); } };;
class CEveryNMinutes { public: uint16_t mPrevTrigger; uint16_t mPeriod; CEveryNMinutes() { reset(); mPeriod = 1; }; CEveryNMinutes(uint16_t period) { reset(); setPeriod(period); }; void setPeriod( uint16_t period) { mPeriod = period; }; uint16_t getTime() { return (uint16_t)(minutes16()); }; uint16_t getPeriod() { return mPeriod; }; uint16_t getElapsed() { return getTime() - mPrevTrigger; } uint16_t getRemaining() { return mPeriod - getElapsed(); } uint16_t getLastTriggerTime() { return mPrevTrigger; } bool ready() { bool isReady = (getElapsed() >= mPeriod); if( isReady ) { reset(); } return isReady; } void reset() { mPrevTrigger = getTime(); }; void trigger() { mPrevTrigger = getTime() - mPeriod; }; operator bool() { return ready(); } };;
class CEveryNHours { public: uint8_t mPrevTrigger; uint8_t mPeriod; CEveryNHours() { reset(); mPeriod = 1; }; CEveryNHours(uint8_t period) { reset(); setPeriod(period); }; void setPeriod( uint8_t period) { mPeriod = period; }; uint8_t getTime() { return (uint8_t)(hours8()); }; uint8_t getPeriod() { return mPeriod; }; uint8_t getElapsed() { return getTime() - mPrevTrigger; } uint8_t getRemaining() { return mPeriod - getElapsed(); } uint8_t getLastTriggerTime() { return mPrevTrigger; } bool ready() { bool isReady = (getElapsed() >= mPeriod); if( isReady ) { reset(); } return isReady; } void reset() { mPrevTrigger = getTime(); }; void trigger() { mPrevTrigger = getTime() - mPeriod; }; operator bool() { return ready(); } };;
# 1151 "..\\source\\FastLED\\lib8tion.h"


# 1165 "..\\source\\FastLED\\lib8tion.h"






///@}

# 8 "..\\source\\FastLED\\pixeltypes.h"
# 1 "..\\source\\FastLED\\color.h"







///@file color.h
/// contains definitions for color correction and temperature
///@defgroup ColorEnums Color correction/temperature
/// definitions for color correction and light temperatures
///@{
typedef enum {
    // Color correction starting points

    /// typical values for SMD5050 LEDs
    ///@{
    TypicalSMD5050=0xFFB0F0 /* 255, 176, 240 */,
    TypicalLEDStrip=0xFFB0F0 /* 255, 176, 240 */,
    ///@}

    /// typical values for 8mm "pixels on a string"
    /// also for many through-hole 'T' package LEDs
    ///@{
    Typical8mmPixel=0xFFE08C /* 255, 224, 140 */,
    TypicalPixelString=0xFFE08C /* 255, 224, 140 */,
    ///@}

    /// uncorrected color
    UncorrectedColor=0xFFFFFF

} LEDColorCorrection;


typedef enum {
    /// @name Black-body radiation light sources
    /// Black-body radiation light sources emit a (relatively) continuous
    /// spectrum, and can be described as having a Kelvin 'temperature'
    ///@{
    /// 1900 Kelvin
    Candle=0xFF9329 /* 1900 K, 255, 147, 41 */,
    /// 2600 Kelvin
    Tungsten40W=0xFFC58F /* 2600 K, 255, 197, 143 */,
    /// 2850 Kelvin
    Tungsten100W=0xFFD6AA /* 2850 K, 255, 214, 170 */,
    /// 3200 Kelvin
    Halogen=0xFFF1E0 /* 3200 K, 255, 241, 224 */,
    /// 5200 Kelvin
    CarbonArc=0xFFFAF4 /* 5200 K, 255, 250, 244 */,
    /// 5400 Kelvin
    HighNoonSun=0xFFFFFB /* 5400 K, 255, 255, 251 */,
    /// 6000 Kelvin
    DirectSunlight=0xFFFFFF /* 6000 K, 255, 255, 255 */,
    /// 7000 Kelvin
    OvercastSky=0xC9E2FF /* 7000 K, 201, 226, 255 */,
    /// 20000 Kelvin
    ClearBlueSky=0x409CFF /* 20000 K, 64, 156, 255 */,
    ///@}

    /// @name Gaseous light sources
    /// Gaseous light sources emit discrete spectral bands, and while we can
    /// approximate their aggregate hue with RGB values, they don't actually
    /// have a proper Kelvin temperature.
    ///@{
    WarmFluorescent=0xFFF4E5 /* 0 K, 255, 244, 229 */,
    StandardFluorescent=0xF4FFFA /* 0 K, 244, 255, 250 */,
    CoolWhiteFluorescent=0xD4EBFF /* 0 K, 212, 235, 255 */,
    FullSpectrumFluorescent=0xFFF4F2 /* 0 K, 255, 244, 242 */,
    GrowLightFluorescent=0xFFEFF7 /* 0 K, 255, 239, 247 */,
    BlackLightFluorescent=0xA700FF /* 0 K, 167, 0, 255 */,
    MercuryVapor=0xD8F7FF /* 0 K, 216, 247, 255 */,
    SodiumVapor=0xFFD1B2 /* 0 K, 255, 209, 178 */,
    MetalHalide=0xF2FCFF /* 0 K, 242, 252, 255 */,
    HighPressureSodium=0xFFB74C /* 0 K, 255, 183, 76 */,
    ///@}

    /// Uncorrected temperature 0xFFFFFF
    UncorrectedTemperature=0xFFFFFF
} ColorTemperature;



///@}
# 9 "..\\source\\FastLED\\pixeltypes.h"



struct CRGB;
struct CHSV;

///@defgroup Pixeltypes CHSV and CRGB type definitions
///@{

/// Forward declaration of hsv2rgb_rainbow here,
/// to avoid circular dependencies.
extern void hsv2rgb_rainbow( const CHSV& hsv, CRGB& rgb);

/// Representation of an HSV pixel (hue, saturation, value (aka brightness)).
struct CHSV {
    union {
		struct {
		    union {
		        uint8_t hue;
		        uint8_t h; };
		    union {
		        uint8_t saturation;
		        uint8_t sat;
		        uint8_t s; };
		    union {
		        uint8_t value;
		        uint8_t val;
		        uint8_t v; };
		};
		uint8_t raw[3];
	};

    /// Array access operator to index into the chsv object
	inline uint8_t& operator[] (uint8_t x) __attribute__((always_inline))
    {
        return raw[x];
    }

    /// Array access operator to index into the chsv object
    inline const uint8_t& operator[] (uint8_t x) const __attribute__((always_inline))
    {
        return raw[x];
    }

    /// default values are UNITIALIZED
    inline CHSV() __attribute__((always_inline)) = default;

    /// allow construction from H, S, V
    inline CHSV( uint8_t ih, uint8_t is, uint8_t iv) __attribute__((always_inline))
        : h(ih), s(is), v(iv)
    {
    }

    /// allow copy construction
    inline CHSV(const CHSV& rhs) __attribute__((always_inline)) = default;

    inline CHSV& operator= (const CHSV& rhs) __attribute__((always_inline)) = default;

    inline CHSV& setHSV(uint8_t ih, uint8_t is, uint8_t iv) __attribute__((always_inline))
    {
        h = ih;
        s = is;
        v = iv;
        return *this;
    }
};

/// Pre-defined hue values for HSV objects
typedef enum {
    HUE_RED = 0,
    HUE_ORANGE = 32,
    HUE_YELLOW = 64,
    HUE_GREEN = 96,
    HUE_AQUA = 128,
    HUE_BLUE = 160,
    HUE_PURPLE = 192,
    HUE_PINK = 224
} HSVHue;

/// Representation of an RGB pixel (Red, Green, Blue)
struct CRGB {
	union {
		struct {
            union {
                uint8_t r;
                uint8_t red;
            };
            union {
                uint8_t g;
                uint8_t green;
            };
            union {
                uint8_t b;
                uint8_t blue;
            };
        };
		uint8_t raw[3];
	};

    /// Array access operator to index into the crgb object
	inline uint8_t& operator[] (uint8_t x) __attribute__((always_inline))
    {
        return raw[x];
    }

    /// Array access operator to index into the crgb object
    inline const uint8_t& operator[] (uint8_t x) const __attribute__((always_inline))
    {
        return raw[x];
    }

    // default values are UNINITIALIZED
    inline CRGB() __attribute__((always_inline)) = default;

    /// allow construction from R, G, B
    inline CRGB( uint8_t ir, uint8_t ig, uint8_t ib)  __attribute__((always_inline))
        : r(ir), g(ig), b(ib)
    {
    }

    /// allow construction from 32-bit (really 24-bit) bit 0xRRGGBB color code
    inline CRGB( uint32_t colorcode)  __attribute__((always_inline))
    : r((colorcode >> 16) & 0xFF), g((colorcode >> 8) & 0xFF), b((colorcode >> 0) & 0xFF)
    {
    }

    /// allow construction from a LEDColorCorrection enum
    inline CRGB( LEDColorCorrection colorcode) __attribute__((always_inline))
    : r((colorcode >> 16) & 0xFF), g((colorcode >> 8) & 0xFF), b((colorcode >> 0) & 0xFF)
    {

    }

    /// allow construction from a ColorTemperature enum
    inline CRGB( ColorTemperature colorcode) __attribute__((always_inline))
    : r((colorcode >> 16) & 0xFF), g((colorcode >> 8) & 0xFF), b((colorcode >> 0) & 0xFF)
    {

    }

    /// allow copy construction
	inline CRGB(const CRGB& rhs) __attribute__((always_inline)) = default;
    /// allow construction from HSV color
	inline CRGB(const CHSV& rhs) __attribute__((always_inline))
    {
        hsv2rgb_rainbow( rhs, *this);
    }

    /// allow assignment from one RGB struct to another
	inline CRGB& operator= (const CRGB& rhs) __attribute__((always_inline)) = default;

    /// allow assignment from 32-bit (really 24-bit) 0xRRGGBB color code
	inline CRGB& operator= (const uint32_t colorcode) __attribute__((always_inline))
    {
        r = (colorcode >> 16) & 0xFF;
        g = (colorcode >>  8) & 0xFF;
        b = (colorcode >>  0) & 0xFF;
        return *this;
    }

    /// allow assignment from R, G, and B
	inline CRGB& setRGB (uint8_t nr, uint8_t ng, uint8_t nb) __attribute__((always_inline))
    {
        r = nr;
        g = ng;
        b = nb;
        return *this;
    }

    /// allow assignment from H, S, and V
	inline CRGB& setHSV (uint8_t hue, uint8_t sat, uint8_t val) __attribute__((always_inline))
    {
        hsv2rgb_rainbow( CHSV(hue, sat, val), *this);
        return *this;
    }

    /// allow assignment from just a Hue, saturation and value automatically at max.
	inline CRGB& setHue (uint8_t hue) __attribute__((always_inline))
    {
        hsv2rgb_rainbow( CHSV(hue, 255, 255), *this);
        return *this;
    }

    /// allow assignment from HSV color
	inline CRGB& operator= (const CHSV& rhs) __attribute__((always_inline))
    {
        hsv2rgb_rainbow( rhs, *this);
        return *this;
    }

    /// allow assignment from 32-bit (really 24-bit) 0xRRGGBB color code
	inline CRGB& setColorCode (uint32_t colorcode) __attribute__((always_inline))
    {
        r = (colorcode >> 16) & 0xFF;
        g = (colorcode >>  8) & 0xFF;
        b = (colorcode >>  0) & 0xFF;
        return *this;
    }


    /// add one RGB to another, saturating at 0xFF for each channel
    inline CRGB& operator+= (const CRGB& rhs )
    {
        r = qadd8( r, rhs.r);
        g = qadd8( g, rhs.g);
        b = qadd8( b, rhs.b);
        return *this;
    }

    /// add a contstant to each channel, saturating at 0xFF
    /// this is NOT an operator+= overload because the compiler
    /// can't usefully decide when it's being passed a 32-bit
    /// constant (e.g. CRGB::Red) and an 8-bit one (CRGB::Blue)
    inline CRGB& addToRGB (uint8_t d )
    {
        r = qadd8( r, d);
        g = qadd8( g, d);
        b = qadd8( b, d);
        return *this;
    }

    /// subtract one RGB from another, saturating at 0x00 for each channel
    inline CRGB& operator-= (const CRGB& rhs )
    {
        r = qsub8( r, rhs.r);
        g = qsub8( g, rhs.g);
        b = qsub8( b, rhs.b);
        return *this;
    }

    /// subtract a constant from each channel, saturating at 0x00
    /// this is NOT an operator+= overload because the compiler
    /// can't usefully decide when it's being passed a 32-bit
    /// constant (e.g. CRGB::Red) and an 8-bit one (CRGB::Blue)
    inline CRGB& subtractFromRGB(uint8_t d )
    {
        r = qsub8( r, d);
        g = qsub8( g, d);
        b = qsub8( b, d);
        return *this;
    }

    /// subtract a constant of '1' from each channel, saturating at 0x00
    inline CRGB& operator-- ()  __attribute__((always_inline))
    {
        subtractFromRGB(1);
        return *this;
    }

    /// subtract a constant of '1' from each channel, saturating at 0x00
    inline CRGB operator-- (int )  __attribute__((always_inline))
    {
        CRGB retval(*this);
        --(*this);
        return retval;
    }

    /// add a constant of '1' from each channel, saturating at 0xFF
    inline CRGB& operator++ ()  __attribute__((always_inline))
    {
        addToRGB(1);
        return *this;
    }

    /// add a constant of '1' from each channel, saturating at 0xFF
    inline CRGB operator++ (int )  __attribute__((always_inline))
    {
        CRGB retval(*this);
        ++(*this);
        return retval;
    }

    /// divide each of the channels by a constant
    inline CRGB& operator/= (uint8_t d )
    {
        r /= d;
        g /= d;
        b /= d;
        return *this;
    }

    /// right shift each of the channels by a constant
    inline CRGB& operator>>= (uint8_t d)
    {
        r >>= d;
        g >>= d;
        b >>= d;
        return *this;
    }

    /// multiply each of the channels by a constant,
    /// saturating each channel at 0xFF
    inline CRGB& operator*= (uint8_t d )
    {
        r = qmul8( r, d);
        g = qmul8( g, d);
        b = qmul8( b, d);
        return *this;
    }

    /// scale down a RGB to N 256ths of it's current brightness, using
    /// 'video' dimming rules, which means that unless the scale factor is ZERO
    /// each channel is guaranteed NOT to dim down to zero.  If it's already
    /// nonzero, it'll stay nonzero, even if that means the hue shifts a little
    /// at low brightness levels.
    inline CRGB& nscale8_video (uint8_t scaledown )
    {
        nscale8x3_video( r, g, b, scaledown);
        return *this;
    }

    /// %= is a synonym for nscale8_video.  Think of it is scaling down
    /// by "a percentage"
    inline CRGB& operator%= (uint8_t scaledown )
    {
        nscale8x3_video( r, g, b, scaledown);
        return *this;
    }

    /// fadeLightBy is a synonym for nscale8_video( ..., 255-fadefactor)
    inline CRGB& fadeLightBy (uint8_t fadefactor )
    {
        nscale8x3_video( r, g, b, 255 - fadefactor);
        return *this;
    }

    /// scale down a RGB to N 256ths of it's current brightness, using
    /// 'plain math' dimming rules, which means that if the low light levels
    /// may dim all the way to 100% black.
    inline CRGB& nscale8 (uint8_t scaledown )
    {
        nscale8x3( r, g, b, scaledown);
        return *this;
    }

    /// scale down a RGB to N 256ths of it's current brightness, using
    /// 'plain math' dimming rules, which means that if the low light levels
    /// may dim all the way to 100% black.
    inline CRGB& nscale8 (const CRGB & scaledown )
    {
        r = ::scale8(r, scaledown.r);
        g = ::scale8(g, scaledown.g);
        b = ::scale8(b, scaledown.b);
        return *this;
    }

    /// return a CRGB object that is a scaled down version of this object
    inline CRGB scale8 (const CRGB & scaledown ) const
    {
        CRGB out;
        out.r = ::scale8(r, scaledown.r);
        out.g = ::scale8(g, scaledown.g);
        out.b = ::scale8(b, scaledown.b);
        return out;
    }

    /// fadeToBlackBy is a synonym for nscale8( ..., 255-fadefactor)
    inline CRGB& fadeToBlackBy (uint8_t fadefactor )
    {
        nscale8x3( r, g, b, 255 - fadefactor);
        return *this;
    }

    /// "or" operator brings each channel up to the higher of the two values
    inline CRGB& operator|= (const CRGB& rhs )
    {
        if( rhs.r > r) r = rhs.r;
        if( rhs.g > g) g = rhs.g;
        if( rhs.b > b) b = rhs.b;
        return *this;
    }

    /// "or" operator brings each channel up to the higher of the two values
    inline CRGB& operator|= (uint8_t d )
    {
        if( d > r) r = d;
        if( d > g) g = d;
        if( d > b) b = d;
        return *this;
    }

    /// "and" operator brings each channel down to the lower of the two values
    inline CRGB& operator&= (const CRGB& rhs )
    {
        if( rhs.r < r) r = rhs.r;
        if( rhs.g < g) g = rhs.g;
        if( rhs.b < b) b = rhs.b;
        return *this;
    }

    /// "and" operator brings each channel down to the lower of the two values
    inline CRGB& operator&= (uint8_t d )
    {
        if( d < r) r = d;
        if( d < g) g = d;
        if( d < b) b = d;
        return *this;
    }

    /// this allows testing a CRGB for zero-ness
    inline operator bool() const __attribute__((always_inline))
    {
        return r || g || b;
    }

    /// invert each channel
    inline CRGB operator- ()
    {
        CRGB retval;
        retval.r = 255 - r;
        retval.g = 255 - g;
        retval.b = 255 - b;
        return retval;
    }

# 433 "..\\source\\FastLED\\pixeltypes.h"

    /// Get the 'luma' of a CRGB object - aka roughly how much light the
    /// CRGB pixel is putting out (from 0 to 255).
    inline uint8_t getLuma ( )  const {
        //Y' = 0.2126 R' + 0.7152 G' + 0.0722 B'
        //     54            183       18 (!)

        uint8_t luma = scale8_LEAVING_R1_DIRTY( r, 54) +         scale8_LEAVING_R1_DIRTY( g, 183) +         scale8_LEAVING_R1_DIRTY( b, 18);


        cleanup_R1();
        return luma;
    }

    /// Get the average of the R, G, and B values
    inline uint8_t getAverageLight( )  const {

        const uint8_t eightyfive = 85;



        uint8_t avg = scale8_LEAVING_R1_DIRTY( r, eightyfive) +         scale8_LEAVING_R1_DIRTY( g, eightyfive) +         scale8_LEAVING_R1_DIRTY( b, eightyfive);


        cleanup_R1();
        return avg;
    }

    /// maximize the brightness of this CRGB object
    inline void maximizeBrightness( uint8_t limit = 255 )  {
        uint8_t max = red;
        if( green > max) max = green;
        if( blue > max) max = blue;

        // stop div/0 when color is black
        if(max > 0) {
            uint16_t factor = ((uint16_t)(limit) * 256) / max;
            red =   (red   * factor) / 256;
            green = (green * factor) / 256;
            blue =  (blue  * factor) / 256;
        }
    }

    /// return a new CRGB object after performing a linear interpolation between this object and the passed in object
    inline CRGB lerp8( const CRGB& other, fract8 frac) const
    {
        CRGB ret;

        ret.r = lerp8by8(r,other.r,frac);
        ret.g = lerp8by8(g,other.g,frac);
        ret.b = lerp8by8(b,other.b,frac);

        return ret;
    }

    /// return a new CRGB object after performing a linear interpolation between this object and the passed in object
    inline CRGB lerp16( const CRGB& other, fract16 frac) const
    {
        CRGB ret;

        ret.r = lerp16by16(r<<8,other.r<<8,frac)>>8;
        ret.g = lerp16by16(g<<8,other.g<<8,frac)>>8;
        ret.b = lerp16by16(b<<8,other.b<<8,frac)>>8;

        return ret;
    }

    /// getParity returns 0 or 1, depending on the
    /// lowest bit of the sum of the color components.
    inline uint8_t getParity()
    {
        uint8_t sum = r + g + b;
        return (sum & 0x01);
    }

    /// setParity adjusts the color in the smallest
    /// way possible so that the parity of the color
    /// is now the desired value.  This allows you to
    /// 'hide' one bit of information in the color.
    ///
    /// Ideally, we find one color channel which already
    /// has data in it, and modify just that channel by one.
    /// We don't want to light up a channel that's black
    /// if we can avoid it, and if the pixel is 'grayscale',
    /// (meaning that R==G==B), we modify all three channels
    /// at once, to preserve the neutral hue.
    ///
    /// There's no such thing as a free lunch; in many cases
    /// this 'hidden bit' may actually be visible, but this
    /// code makes reasonable efforts to hide it as much
    /// as is reasonably possible.
    ///
    /// Also, an effort is made to have make it such that
    /// repeatedly setting the parity to different values
    /// will not cause the color to 'drift'.  Toggling
    /// the parity twice should generally result in the
    /// original color again.
    ///
    inline void setParity( uint8_t parity)
    {
        uint8_t curparity = getParity();

        if( parity == curparity) return;

        if( parity ) {
            // going 'up'
            if( (b > 0) && (b < 255)) {
                if( r == g && g == b) {
                    r++;
                    g++;
                }
                b++;
            } else if( (r > 0) && (r < 255)) {
                r++;
            } else if( (g > 0) && (g < 255)) {
                g++;
            } else {
                if( r == g && g == b) {
                    r ^= 0x01;
                    g ^= 0x01;
                }
                b ^= 0x01;
            }
        } else {
            // going 'down'
            if( b > 1) {
                if( r == g && g == b) {
                    r--;
                    g--;
                }
                b--;
            } else if( g > 1) {
                g--;
            } else if( r > 1) {
                r--;
            } else {
                if( r == g && g == b) {
                    r ^= 0x01;
                    g ^= 0x01;
                }
                b ^= 0x01;
            }
        }
    }

    /// Predefined RGB colors
    typedef enum {
        AliceBlue=0xF0F8FF,
        Amethyst=0x9966CC,
        AntiqueWhite=0xFAEBD7,
        Aqua=0x00FFFF,
        Aquamarine=0x7FFFD4,
        Azure=0xF0FFFF,
        Beige=0xF5F5DC,
        Bisque=0xFFE4C4,
        Black=0x000000,
        BlanchedAlmond=0xFFEBCD,
        Blue=0x0000FF,
        BlueViolet=0x8A2BE2,
        Brown=0xA52A2A,
        BurlyWood=0xDEB887,
        CadetBlue=0x5F9EA0,
        Chartreuse=0x7FFF00,
        Chocolate=0xD2691E,
        Coral=0xFF7F50,
        CornflowerBlue=0x6495ED,
        Cornsilk=0xFFF8DC,
        Crimson=0xDC143C,
        Cyan=0x00FFFF,
        DarkBlue=0x00008B,
        DarkCyan=0x008B8B,
        DarkGoldenrod=0xB8860B,
        DarkGray=0xA9A9A9,
        DarkGrey=0xA9A9A9,
        DarkGreen=0x006400,
        DarkKhaki=0xBDB76B,
        DarkMagenta=0x8B008B,
        DarkOliveGreen=0x556B2F,
        DarkOrange=0xFF8C00,
        DarkOrchid=0x9932CC,
        DarkRed=0x8B0000,
        DarkSalmon=0xE9967A,
        DarkSeaGreen=0x8FBC8F,
        DarkSlateBlue=0x483D8B,
        DarkSlateGray=0x2F4F4F,
        DarkSlateGrey=0x2F4F4F,
        DarkTurquoise=0x00CED1,
        DarkViolet=0x9400D3,
        DeepPink=0xFF1493,
        DeepSkyBlue=0x00BFFF,
        DimGray=0x696969,
        DimGrey=0x696969,
        DodgerBlue=0x1E90FF,
        FireBrick=0xB22222,
        FloralWhite=0xFFFAF0,
        ForestGreen=0x228B22,
        Fuchsia=0xFF00FF,
        Gainsboro=0xDCDCDC,
        GhostWhite=0xF8F8FF,
        Gold=0xFFD700,
        Goldenrod=0xDAA520,
        Gray=0x808080,
        Grey=0x808080,
        Green=0x008000,
        GreenYellow=0xADFF2F,
        Honeydew=0xF0FFF0,
        HotPink=0xFF69B4,
        IndianRed=0xCD5C5C,
        Indigo=0x4B0082,
        Ivory=0xFFFFF0,
        Khaki=0xF0E68C,
        Lavender=0xE6E6FA,
        LavenderBlush=0xFFF0F5,
        LawnGreen=0x7CFC00,
        LemonChiffon=0xFFFACD,
        LightBlue=0xADD8E6,
        LightCoral=0xF08080,
        LightCyan=0xE0FFFF,
        LightGoldenrodYellow=0xFAFAD2,
        LightGreen=0x90EE90,
        LightGrey=0xD3D3D3,
        LightPink=0xFFB6C1,
        LightSalmon=0xFFA07A,
        LightSeaGreen=0x20B2AA,
        LightSkyBlue=0x87CEFA,
        LightSlateGray=0x778899,
        LightSlateGrey=0x778899,
        LightSteelBlue=0xB0C4DE,
        LightYellow=0xFFFFE0,
        Lime=0x00FF00,
        LimeGreen=0x32CD32,
        Linen=0xFAF0E6,
        Magenta=0xFF00FF,
        Maroon=0x800000,
        MediumAquamarine=0x66CDAA,
        MediumBlue=0x0000CD,
        MediumOrchid=0xBA55D3,
        MediumPurple=0x9370DB,
        MediumSeaGreen=0x3CB371,
        MediumSlateBlue=0x7B68EE,
        MediumSpringGreen=0x00FA9A,
        MediumTurquoise=0x48D1CC,
        MediumVioletRed=0xC71585,
        MidnightBlue=0x191970,
        MintCream=0xF5FFFA,
        MistyRose=0xFFE4E1,
        Moccasin=0xFFE4B5,
        NavajoWhite=0xFFDEAD,
        Navy=0x000080,
        OldLace=0xFDF5E6,
        Olive=0x808000,
        OliveDrab=0x6B8E23,
        Orange=0xFFA500,
        OrangeRed=0xFF4500,
        Orchid=0xDA70D6,
        PaleGoldenrod=0xEEE8AA,
        PaleGreen=0x98FB98,
        PaleTurquoise=0xAFEEEE,
        PaleVioletRed=0xDB7093,
        PapayaWhip=0xFFEFD5,
        PeachPuff=0xFFDAB9,
        Peru=0xCD853F,
        Pink=0xFFC0CB,
        Plaid=0xCC5533,
        Plum=0xDDA0DD,
        PowderBlue=0xB0E0E6,
        Purple=0x800080,
        Red=0xFF0000,
        RosyBrown=0xBC8F8F,
        RoyalBlue=0x4169E1,
        SaddleBrown=0x8B4513,
        Salmon=0xFA8072,
        SandyBrown=0xF4A460,
        SeaGreen=0x2E8B57,
        Seashell=0xFFF5EE,
        Sienna=0xA0522D,
        Silver=0xC0C0C0,
        SkyBlue=0x87CEEB,
        SlateBlue=0x6A5ACD,
        SlateGray=0x708090,
        SlateGrey=0x708090,
        Snow=0xFFFAFA,
        SpringGreen=0x00FF7F,
        SteelBlue=0x4682B4,
        Tan=0xD2B48C,
        Teal=0x008080,
        Thistle=0xD8BFD8,
        Tomato=0xFF6347,
        Turquoise=0x40E0D0,
        Violet=0xEE82EE,
        Wheat=0xF5DEB3,
        White=0xFFFFFF,
        WhiteSmoke=0xF5F5F5,
        Yellow=0xFFFF00,
        YellowGreen=0x9ACD32,

        // LED RGB color that roughly approximates
        // the color of incandescent fairy lights,
        // assuming that you're using FastLED
        // color correction on your LEDs (recommended).
        FairyLight=0xFFE42D,
        // If you are using no color correction, use this
        FairyLightNCC=0xFF9D2A

    } HTMLColorCode;
};


inline __attribute__((always_inline)) bool operator== (const CRGB& lhs, const CRGB& rhs)
{
    return (lhs.r == rhs.r) && (lhs.g == rhs.g) && (lhs.b == rhs.b);
}

inline __attribute__((always_inline)) bool operator!= (const CRGB& lhs, const CRGB& rhs)
{
    return !(lhs == rhs);
}

inline __attribute__((always_inline)) bool operator< (const CRGB& lhs, const CRGB& rhs)
{
    uint16_t sl, sr;
    sl = lhs.r + lhs.g + lhs.b;
    sr = rhs.r + rhs.g + rhs.b;
    return sl < sr;
}

inline __attribute__((always_inline)) bool operator> (const CRGB& lhs, const CRGB& rhs)
{
    uint16_t sl, sr;
    sl = lhs.r + lhs.g + lhs.b;
    sr = rhs.r + rhs.g + rhs.b;
    return sl > sr;
}

inline __attribute__((always_inline)) bool operator>= (const CRGB& lhs, const CRGB& rhs)
{
    uint16_t sl, sr;
    sl = lhs.r + lhs.g + lhs.b;
    sr = rhs.r + rhs.g + rhs.b;
    return sl >= sr;
}

inline __attribute__((always_inline)) bool operator<= (const CRGB& lhs, const CRGB& rhs)
{
    uint16_t sl, sr;
    sl = lhs.r + lhs.g + lhs.b;
    sr = rhs.r + rhs.g + rhs.b;
    return sl <= sr;
}


__attribute__((always_inline))
inline CRGB operator+( const CRGB& p1, const CRGB& p2)
{
    return CRGB( qadd8( p1.r, p2.r),
                 qadd8( p1.g, p2.g),
                 qadd8( p1.b, p2.b));
}

__attribute__((always_inline))
inline CRGB operator-( const CRGB& p1, const CRGB& p2)
{
    return CRGB( qsub8( p1.r, p2.r),
                 qsub8( p1.g, p2.g),
                 qsub8( p1.b, p2.b));
}

__attribute__((always_inline))
inline CRGB operator*( const CRGB& p1, uint8_t d)
{
    return CRGB( qmul8( p1.r, d),
                 qmul8( p1.g, d),
                 qmul8( p1.b, d));
}

__attribute__((always_inline))
inline CRGB operator/( const CRGB& p1, uint8_t d)
{
    return CRGB( p1.r/d, p1.g/d, p1.b/d);
}


__attribute__((always_inline))
inline CRGB operator&( const CRGB& p1, const CRGB& p2)
{
    return CRGB( p1.r < p2.r ? p1.r : p2.r,
                 p1.g < p2.g ? p1.g : p2.g,
                 p1.b < p2.b ? p1.b : p2.b);
}

__attribute__((always_inline))
inline CRGB operator|( const CRGB& p1, const CRGB& p2)
{
    return CRGB( p1.r > p2.r ? p1.r : p2.r,
                 p1.g > p2.g ? p1.g : p2.g,
                 p1.b > p2.b ? p1.b : p2.b);
}

__attribute__((always_inline))
inline CRGB operator%( const CRGB& p1, uint8_t d)
{
    CRGB retval( p1);
    retval.nscale8_video( d);
    return retval;
}



/// RGB orderings, used when instantiating controllers to determine what
/// order the controller should send RGB data out in, RGB being the default
/// ordering.
enum EOrder {
	RGB=0012,
	RBG=0021,
	GRB=0102,
	GBR=0120,
	BRG=0201,
	BGR=0210
};


///@}

# 10 "..\\source\\FastLED\\controller.h"
# 1 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/stddef.h"
/* -*- C++ -*- */
/*===--------------------------- complex.h --------------------------------===*/
/*                                                                            */
/*                     The LLVM Compiler Infrastructure                       */
/*                                                                            */
/* This file is dual licensed under the MIT and the University of Illinois Open
** Source Licenses. See LICENSE.TXT for details.
*/
/*===----------------------------------------------------------------------===*/

# 12 "..\\source\\FastLED\\controller.h"










// operator byte *(struct CRGB[] arr) { return (byte*)arr; }



typedef uint8_t EDitherMode;

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// LED Controller interface definition
//
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

/// Base definition for an LED controller.  Pretty much the methods that every LED controller object will make available.
/// Note that the showARGB method is not impelemented for all controllers yet.   Note also the methods for eventual checking
/// of background writing of data (I'm looking at you, teensy 3.0 DMA controller!).  If you want to pass LED controllers around
/// to methods, make them references to this type, keeps your code saner.  However, most people won't be seeing/using these objects
/// directly at all
class CLEDController {
protected:
    friend class CFastLED;
    CRGB *m_Data;
    CLEDController *m_pNext;
    CRGB m_ColorCorrection;
    CRGB m_ColorTemperature;
    EDitherMode m_DitherMode;
    int m_nLeds;
    static CLEDController *m_pHead;
    static CLEDController *m_pTail;

    /// set all the leds on the controller to a given color
    ///@param data the crgb color to set the leds to
    ///@param nLeds the number of leds to set to this color
    ///@param scale the rgb scaling value for outputting color
    virtual void showColor(const struct CRGB & data, int nLeds, CRGB scale) = 0;

	/// write the passed in rgb data out to the leds managed by this controller
	///@param data the rgb data to write out to the strip
	///@param nLeds the number of leds being written out
	///@param scale the rgb scaling to apply to each led before writing it out
    virtual void show(const struct CRGB *data, int nLeds, CRGB scale) = 0;

public:
	/// create an led controller object, add it to the chain of controllers
    CLEDController() : m_Data(0), m_ColorCorrection(UncorrectedColor), m_ColorTemperature(UncorrectedTemperature), m_DitherMode(0x01), m_nLeds(0) {
        m_pNext = 0;
        if(m_pHead==0) { m_pHead = this; }
        if(m_pTail != 0) { m_pTail->m_pNext = this; }
        m_pTail = this;
    }

	///initialize the LED controller
	virtual void init() = 0;

	///clear out/zero out the given number of leds.
	virtual void clearLeds(int nLeds) { showColor(CRGB::Black, nLeds, CRGB::Black); }

    /// show function w/integer brightness, will scale for color correction and temperature
    void show(const struct CRGB *data, int nLeds, uint8_t brightness) {
        show(data, nLeds, getAdjustment(brightness));
    }

    /// show function w/integer brightness, will scale for color correction and temperature
    void showColor(const struct CRGB &data, int nLeds, uint8_t brightness) {
        showColor(data, nLeds, getAdjustment(brightness));
    }

    /// show function using the "attached to this controller" led data
    void showLeds(uint8_t brightness=255) {
        show(m_Data, m_nLeds, getAdjustment(brightness));
    }

	/// show the given color on the led strip
    void showColor(const struct CRGB & data, uint8_t brightness=255) {
        showColor(data, m_nLeds, getAdjustment(brightness));
    }

    /// get the first led controller in the chain of controllers
    static CLEDController *head() { return m_pHead; }
    /// get the next controller in the chain after this one.  will return NULL at the end of the chain
    CLEDController *next() { return m_pNext; }

	/// set the default array of leds to be used by this controller
    CLEDController & setLeds(CRGB *data, int nLeds) {
        m_Data = data;
        m_nLeds = nLeds;
        return *this;
    }

	/// zero out the led data managed by this controller
    void clearLedData() {
        if(m_Data) {
            memset((void*)m_Data, 0, sizeof(struct CRGB) * m_nLeds);
        }
    }

    /// How many leds does this controller manage?
    virtual int size() { return m_nLeds; }

    /// Pointer to the CRGB array for this controller
    CRGB* leds() { return m_Data; }

    /// Reference to the n'th item in the controller
    CRGB &operator[](int x) { return m_Data[x]; }

	/// set the dithering mode for this controller to use
    inline CLEDController & setDither(uint8_t ditherMode = 0x01) { m_DitherMode = ditherMode; return *this; }
    /// get the dithering option currently set for this controller
    inline uint8_t getDither() { return m_DitherMode; }

	/// the the color corrction to use for this controller, expressed as an rgb object
    CLEDController & setCorrection(CRGB correction) { m_ColorCorrection = correction; return *this; }
    /// set the color correction to use for this controller
    CLEDController & setCorrection(LEDColorCorrection correction) { m_ColorCorrection = correction; return *this; }
    /// get the correction value used by this controller
    CRGB getCorrection() { return m_ColorCorrection; }

	/// set the color temperature, aka white point, for this controller
    CLEDController & setTemperature(CRGB temperature) { m_ColorTemperature = temperature; return *this; }
    /// set the color temperature, aka white point, for this controller
    CLEDController & setTemperature(ColorTemperature temperature) { m_ColorTemperature = temperature; return *this; }
    /// get the color temperature, aka whipe point, for this controller
    CRGB getTemperature() { return m_ColorTemperature; }

	/// Get the combined brightness/color adjustment for this controller
    CRGB getAdjustment(uint8_t scale) {
        return computeAdjustment(scale, m_ColorCorrection, m_ColorTemperature);
    }

    static CRGB computeAdjustment(uint8_t scale, const CRGB & colorCorrection, const CRGB & colorTemperature) {



              CRGB adj(0,0,0);

              if(scale > 0) {
                  for(uint8_t i = 0; i < 3; i++) {
                      uint8_t cc = colorCorrection.raw[i];
                      uint8_t ct = colorTemperature.raw[i];
                      if(cc > 0 && ct > 0) {
                          uint32_t work = (((uint32_t)cc)+1) * (((uint32_t)ct)+1) * scale;
                          work /= 0x10000L;
                          adj.raw[i] = work & 0xFF;
                      }
                  }
              }

              return adj;

    }
    virtual uint16_t getMaxRefreshRate() const { return 0; }
};

// Pixel controller class.  This is the class that we use to centralize pixel access in a block of data, including
// support for things like RGB reordering, scaling, dithering, skipping (for ARGB data), and eventually, we will
// centralize 8/12/16 conversions here as well.
template<EOrder RGB_ORDER, int LANES=1, uint32_t MASK=0xFFFFFFFF>
struct PixelController {
        const uint8_t *mData;
        int mLen,mLenRemaining;
        uint8_t d[3];
        uint8_t e[3];
        CRGB mScale;
        int8_t mAdvance;
        int mOffsets[LANES];

        PixelController(const PixelController & other) {
            d[0] = other.d[0];
            d[1] = other.d[1];
            d[2] = other.d[2];
            e[0] = other.e[0];
            e[1] = other.e[1];
            e[2] = other.e[2];
            mData = other.mData;
            mScale = other.mScale;
            mAdvance = other.mAdvance;
            mLenRemaining = mLen = other.mLen;
            for(int i = 0; i < LANES; i++) { mOffsets[i] = other.mOffsets[i]; }

        }

        void initOffsets(int len) {
          int nOffset = 0;
          for(int i = 0; i < LANES; i++) {
            mOffsets[i] = nOffset;
            if((1<<i) & MASK) { nOffset += (len * mAdvance); }
          }
        }

        PixelController(const uint8_t *d, int len, CRGB & s, EDitherMode dither = 0x01, bool advance=true, uint8_t skip=0) : mData(d), mLen(len), mLenRemaining(len), mScale(s) {
            enable_dithering(dither);
            mData += skip;
            mAdvance = (advance) ? 3+skip : 0;
            initOffsets(len);
        }

        PixelController(const CRGB *d, int len, CRGB & s, EDitherMode dither = 0x01) : mData((const uint8_t*)d), mLen(len), mLenRemaining(len), mScale(s) {
            enable_dithering(dither);
            mAdvance = 3;
            initOffsets(len);
        }

        PixelController(const CRGB &d, int len, CRGB & s, EDitherMode dither = 0x01) : mData((const uint8_t*)&d), mLen(len), mLenRemaining(len), mScale(s) {
            enable_dithering(dither);
            mAdvance = 0;
            initOffsets(len);
        }

        void init_binary_dithering() {


            // Set 'virtual bits' of dithering to the highest level
            // that is not likely to cause excessive flickering at
            // low brightness levels + low update rates.
            // These pre-set values are a little ambitious, since
            // a 400Hz update rate for WS2811-family LEDs is only
            // possible with 85 pixels or fewer.
            // Once we have a 'number of milliseconds since last update'
            // value available here, we can quickly calculate the correct
            // number of 'virtual bits' on the fly with a couple of 'if'
            // statements -- no division required.  At this point,
            // the division is done at compile time, so there's no runtime
            // cost, but the values are still hard-coded.
# 256 "..\\source\\FastLED\\controller.h"

            // R is the digther signal 'counter'.
            static uint8_t R = 0;
            R++;

            // R is wrapped around at 2^ditherBits,
            // so if ditherBits is 2, R will cycle through (0,1,2,3)
            uint8_t ditherBits = (((400 / 50)>1) + ((400 / 50)>2) + ((400 / 50)>4) + ((400 / 50)>8) + ((400 / 50)>16) + ((400 / 50)>32) + ((400 / 50)>64) + ((400 / 50)>128) );
            R &= (0x01 << ditherBits) - 1;

            // Q is the "unscaled dither signal" itself.
            // It's initialized to the reversed bits of R.
            // If 'ditherBits' is 2, Q here will cycle through (0,128,64,192)
            uint8_t Q = 0;

            // Reverse bits in a byte
            {
                if(R & 0x01) { Q |= 0x80; }
                if(R & 0x02) { Q |= 0x40; }
                if(R & 0x04) { Q |= 0x20; }
                if(R & 0x08) { Q |= 0x10; }
                if(R & 0x10) { Q |= 0x08; }
                if(R & 0x20) { Q |= 0x04; }
                if(R & 0x40) { Q |= 0x02; }
                if(R & 0x80) { Q |= 0x01; }
            }

            // Now we adjust Q to fall in the center of each range,
            // instead of at the start of the range.
            // If ditherBits is 2, Q will be (0, 128, 64, 192) at first,
            // and this adjustment makes it (31, 159, 95, 223).
            if( ditherBits < 8) {
                Q += 0x01 << (7 - ditherBits);
            }

            // D and E form the "scaled dither signal"
            // which is added to pixel values to affect the
            // actual dithering.

            // Setup the initial D and E values
            for(int i = 0; i < 3; i++) {
                    uint8_t s = mScale.raw[i];
                    e[i] = s ? (256/s) + 1 : 0;
                    d[i] = scale8(Q, e[i]);

                    if(d[i]) (d[i]--);

                    if(e[i]) e[i]--;
            }

        }

        // Do we have n pixels left to process?
        __attribute__((always_inline)) inline bool has(int n) {
            return mLenRemaining >= n;
        }

        // toggle dithering enable
        void enable_dithering(EDitherMode dither) {
            switch(dither) {
                case 0x01: init_binary_dithering(); break;
                default: d[0]=d[1]=d[2]=e[0]=e[1]=e[2]=0; break;
            }
        }

        __attribute__((always_inline)) inline int size() { return mLen; }

        // get the amount to advance the pointer by
        __attribute__((always_inline)) inline int advanceBy() { return mAdvance; }

        // advance the data pointer forward, adjust position counter
         __attribute__((always_inline)) inline void advanceData() { mData += mAdvance; mLenRemaining--;}

        // step the dithering forward
         __attribute__((always_inline)) inline void stepDithering() {
             // IF UPDATING HERE, BE SURE TO UPDATE THE ASM VERSION IN
             // clockless_trinket.h!
                d[0] = e[0] - d[0];
                d[1] = e[1] - d[1];
                d[2] = e[2] - d[2];
        }

        // Some chipsets pre-cycle the first byte, which means we want to cycle byte 0's dithering separately
        __attribute__((always_inline)) inline void preStepFirstByteDithering() {
            d[(((RGB_ORDER)>>(3*(2-(0)))) & 0x3)] = e[(((RGB_ORDER)>>(3*(2-(0)))) & 0x3)] - d[(((RGB_ORDER)>>(3*(2-(0)))) & 0x3)];
        }

        template<int SLOT>  __attribute__((always_inline)) inline static uint8_t loadByte(PixelController & pc) { return pc.mData[(((RGB_ORDER)>>(3*(2-(SLOT)))) & 0x3)]; }
        template<int SLOT>  __attribute__((always_inline)) inline static uint8_t loadByte(PixelController & pc, int lane) { return pc.mData[pc.mOffsets[lane] + (((RGB_ORDER)>>(3*(2-(SLOT)))) & 0x3)]; }

        template<int SLOT>  __attribute__((always_inline)) inline static uint8_t dither(PixelController & pc, uint8_t b) { return b ? qadd8(b, pc.d[(((RGB_ORDER)>>(3*(2-(SLOT)))) & 0x3)]) : 0; }
        template<int SLOT>  __attribute__((always_inline)) inline static uint8_t dither(PixelController & , uint8_t b, uint8_t d) { return b ? qadd8(b,d) : 0; }

        template<int SLOT>  __attribute__((always_inline)) inline static uint8_t scale(PixelController & pc, uint8_t b) { return scale8(b, pc.mScale.raw[(((RGB_ORDER)>>(3*(2-(SLOT)))) & 0x3)]); }
        template<int SLOT>  __attribute__((always_inline)) inline static uint8_t scale(PixelController & , uint8_t b, uint8_t scale) { return scale8(b, scale); }

        // composite shortcut functions for loading, dithering, and scaling
        template<int SLOT>  __attribute__((always_inline)) inline static uint8_t loadAndScale(PixelController & pc) { return scale<SLOT>(pc, pc.dither<SLOT>(pc, pc.loadByte<SLOT>(pc))); }
        template<int SLOT>  __attribute__((always_inline)) inline static uint8_t loadAndScale(PixelController & pc, int lane) { return scale<SLOT>(pc, pc.dither<SLOT>(pc, pc.loadByte<SLOT>(pc, lane))); }
        template<int SLOT>  __attribute__((always_inline)) inline static uint8_t loadAndScale(PixelController & pc, int lane, uint8_t d, uint8_t scale) { return scale8(pc.dither<SLOT>(pc, pc.loadByte<SLOT>(pc, lane), d), scale); }
        template<int SLOT>  __attribute__((always_inline)) inline static uint8_t loadAndScale(PixelController & pc, int lane, uint8_t scale) { return scale8(pc.loadByte<SLOT>(pc, lane), scale); }

        template<int SLOT>  __attribute__((always_inline)) inline static uint8_t advanceAndLoadAndScale(PixelController & pc) { pc.advanceData(); return pc.loadAndScale<SLOT>(pc); }
        template<int SLOT>  __attribute__((always_inline)) inline static uint8_t advanceAndLoadAndScale(PixelController & pc, int lane) { pc.advanceData(); return pc.loadAndScale<SLOT>(pc, lane); }
        template<int SLOT>  __attribute__((always_inline)) inline static uint8_t advanceAndLoadAndScale(PixelController & pc, int lane, uint8_t scale) { pc.advanceData(); return pc.loadAndScale<SLOT>(pc, lane, scale); }

        template<int SLOT>  __attribute__((always_inline)) inline static uint8_t getd(PixelController & pc) { return pc.d[(((RGB_ORDER)>>(3*(2-(SLOT)))) & 0x3)]; }
        template<int SLOT>  __attribute__((always_inline)) inline static uint8_t getscale(PixelController & pc) { return pc.mScale.raw[(((RGB_ORDER)>>(3*(2-(SLOT)))) & 0x3)]; }

        // Helper functions to get around gcc stupidities
        __attribute__((always_inline)) inline uint8_t loadAndScale0(int lane, uint8_t scale) { return loadAndScale<0>(*this, lane, scale); }
        __attribute__((always_inline)) inline uint8_t loadAndScale1(int lane, uint8_t scale) { return loadAndScale<1>(*this, lane, scale); }
        __attribute__((always_inline)) inline uint8_t loadAndScale2(int lane, uint8_t scale) { return loadAndScale<2>(*this, lane, scale); }
        __attribute__((always_inline)) inline uint8_t advanceAndLoadAndScale0(int lane, uint8_t scale) { return advanceAndLoadAndScale<0>(*this, lane, scale); }
        __attribute__((always_inline)) inline uint8_t stepAdvanceAndLoadAndScale0(int lane, uint8_t scale) { stepDithering(); return advanceAndLoadAndScale<0>(*this, lane, scale); }

        __attribute__((always_inline)) inline uint8_t loadAndScale0(int lane) { return loadAndScale<0>(*this, lane); }
        __attribute__((always_inline)) inline uint8_t loadAndScale1(int lane) { return loadAndScale<1>(*this, lane); }
        __attribute__((always_inline)) inline uint8_t loadAndScale2(int lane) { return loadAndScale<2>(*this, lane); }
        __attribute__((always_inline)) inline uint8_t advanceAndLoadAndScale0(int lane) { return advanceAndLoadAndScale<0>(*this, lane); }
        __attribute__((always_inline)) inline uint8_t stepAdvanceAndLoadAndScale0(int lane) { stepDithering(); return advanceAndLoadAndScale<0>(*this, lane); }

        __attribute__((always_inline)) inline uint8_t loadAndScale0() { return loadAndScale<0>(*this); }
        __attribute__((always_inline)) inline uint8_t loadAndScale1() { return loadAndScale<1>(*this); }
        __attribute__((always_inline)) inline uint8_t loadAndScale2() { return loadAndScale<2>(*this); }
        __attribute__((always_inline)) inline uint8_t advanceAndLoadAndScale0() { return advanceAndLoadAndScale<0>(*this); }
        __attribute__((always_inline)) inline uint8_t stepAdvanceAndLoadAndScale0() { stepDithering(); return advanceAndLoadAndScale<0>(*this); }

        __attribute__((always_inline)) inline uint8_t getScale0() { return getscale<0>(*this); }
        __attribute__((always_inline)) inline uint8_t getScale1() { return getscale<1>(*this); }
        __attribute__((always_inline)) inline uint8_t getScale2() { return getscale<2>(*this); }
};

template<EOrder RGB_ORDER, int LANES=1, uint32_t MASK=0xFFFFFFFF> class CPixelLEDController : public CLEDController {
protected:
    virtual void showPixels(PixelController<RGB_ORDER,LANES,MASK> & pixels) = 0;

    /// set all the leds on the controller to a given color
    ///@param data the crgb color to set the leds to
    ///@param nLeds the numner of leds to set to this color
    ///@param scale the rgb scaling value for outputting color
    virtual void showColor(const struct CRGB & data, int nLeds, CRGB scale) {
        PixelController<RGB_ORDER, LANES, MASK> pixels(data, nLeds, scale, getDither());
        showPixels(pixels);
    }

    /// write the passed in rgb data out to the leds managed by this controller
    ///@param data the rgb data to write out to the strip
    ///@param nLeds the number of leds being written out
    ///@param scale the rgb scaling to apply to each led before writing it out
    virtual void show(const struct CRGB *data, int nLeds, CRGB scale) {
        PixelController<RGB_ORDER, LANES, MASK> pixels(data, nLeds, scale, getDither());
        showPixels(pixels);
    }

public:
    CPixelLEDController() : CLEDController() {}
};




# 42 "..\\source\\FastLED/FastLED.h"
# 1 "..\\source\\FastLED\\fastspi_types.h"







// Some helper macros for getting at mis-ordered byte values





/// Some of the SPI controllers will need to perform a transform on each byte before doing
/// anyting with it.  Creating a class of this form and passing it in as a template parameter to
/// writeBytes/writeBytes3 below will ensure that the body of this method will get called on every
/// byte worked on.  Recommendation, make the adjust method aggressively inlined.
///
/// TODO: Convinience macro for building these
class DATA_NOP {
public:
    static __attribute__((always_inline)) inline uint8_t adjust(register uint8_t data) { return data; }
    static __attribute__((always_inline)) inline uint8_t adjust(register uint8_t data, register uint8_t scale) { return scale8(data, scale); }
    static __attribute__((always_inline)) inline void postBlock(int /* len */) { }
};




// Clock speed dividers
# 38 "..\\source\\FastLED\\fastspi_types.h"





# 43 "..\\source\\FastLED/FastLED.h"
# 1 "..\\source\\FastLED\\dmx.h"





# 36 "..\\source\\FastLED\\dmx.h"

# 64 "..\\source\\FastLED\\dmx.h"

# 44 "..\\source\\FastLED/FastLED.h"

# 1 "..\\source\\FastLED\\fastled_progmem.h"





///@file fastled_progmem.h
/// wrapper definitions to allow seamless use of PROGMEM in environmens that have it



// Compatibility layer for devices that do or don't
// have "PROGMEM" and the associated pgm_ accessors.
//
// If a platform supports PROGMEM, it should define
// "FASTLED_USE_PROGMEM" as 1, otherwise FastLED will
// fall back to NOT using PROGMEM.
//
// Whether or not pgmspace.h is #included is separately
// controllable by FASTLED_INCLUDE_PGMSPACE, if needed.


// If FASTLED_USE_PROGMEM is 1, we'll map FL_PROGMEM
// and the FL_PGM_* accessors to the Arduino equivalents.
# 54 "..\\source\\FastLED\\fastled_progmem.h"
// If FASTLED_USE_PROGMEM is 0 or undefined,
// we'll use regular memory (RAM) access.

//empty PROGMEM simulation








// On some platforms, most notably ARM M0, unaligned access
// to 'PROGMEM' for multibyte values (eg read dword) is
// not allowed and causes a crash.  This macro can help
// force 4-byte alignment as needed.  The FastLED gradient
// palette code uses 'read dword', and now uses this macro
// to make sure that gradient palettes are 4-byte aligned.









# 46 "..\\source\\FastLED/FastLED.h"

# 1 "..\\source\\FastLED\\hsv2rgb.h"









// hsv2rgb_rainbow - convert a hue, saturation, and value to RGB
//                   using a visually balanced rainbow (vs a straight
//                   mathematical spectrum).
//                   This 'rainbow' yields better yellow and orange
//                   than a straight 'spectrum'.
//
//                   NOTE: here hue is 0-255, not just 0-191

void hsv2rgb_rainbow( const struct CHSV& hsv, struct CRGB& rgb);
void hsv2rgb_rainbow( const struct CHSV* phsv, struct CRGB * prgb, int numLeds);



// hsv2rgb_spectrum - convert a hue, saturation, and value to RGB
//                    using a mathematically straight spectrum (vs
//                    a visually balanced rainbow).
//                    This 'spectrum' will have more green & blue
//                    than a 'rainbow', and less yellow and orange.
//
//                    NOTE: here hue is 0-255, not just 0-191

void hsv2rgb_spectrum( const struct CHSV& hsv, struct CRGB& rgb);
void hsv2rgb_spectrum( const struct CHSV* phsv, struct CRGB * prgb, int numLeds);



// hsv2rgb_raw - convert hue, saturation, and value to RGB.
//               This 'spectrum' conversion will be more green & blue
//               than a real 'rainbow', and the hue is specified just
//               in the range 0-191.  Together, these result in a
//               slightly faster conversion speed, at the expense of
//               color balance.
//
//               NOTE: Hue is 0-191 only!
//               Saturation & value are 0-255 each.
//

void hsv2rgb_raw(const struct CHSV& hsv, struct CRGB & rgb);
void hsv2rgb_raw(const struct CHSV* phsv, struct CRGB * prgb, int numLeds);



// rgb2hsv_approximate - recover _approximate_ HSV values from RGB.
//
//   NOTE 1: This function is a long-term work in process; expect
//   results to change slightly over time as this function is
//   refined and improved.
//
//   NOTE 2: This function is most accurate when the input is an
//   RGB color that came from a fully-saturated HSV color to start
//   with.  E.g. CHSV( hue, 255, 255) -> CRGB -> CHSV will give
//   best results.
//
//   NOTE 3: This function is not nearly as fast as HSV-to-RGB.
//   It is provided for those situations when the need for this
//   function cannot be avoided, or when extremely high performance
//   is not needed.
//
//   NOTE 4: Why is this 'only' an "approximation"?
//   Not all RGB colors have HSV equivalents!  For example, there
//   is no HSV value that will ever convert to RGB(255,255,0) using
//   the code provided in this library.   So if you try to
//   convert RGB(255,255,0) 'back' to HSV, you'll necessarily get
//   only an approximation.  Emphasis has been placed on getting
//   the 'hue' as close as usefully possible, but even that's a bit
//   of a challenge.  The 8-bit HSV and 8-bit RGB color spaces
//   are not a "bijection".
//
//   Nevertheless, this function does a pretty good job, particularly
//   at recovering the 'hue' from fully saturated RGB colors that
//   originally came from HSV rainbow colors.  So if you start
//   with CHSV(hue_in,255,255), and convert that to RGB, and then
//   convert it back to HSV using this function, the resulting output
//   hue will either exactly the same, or very close (+/-1).
//   The more desaturated the original RGB color is, the rougher the
//   approximation, and the less accurate the results.
//
CHSV rgb2hsv_approximate( const CRGB& rgb);



# 50 "..\\source\\FastLED/FastLED.h"
# 1 "..\\source\\FastLED\\colorutils.h"



///@file colorutils.h
/// functions for color fill, paletters, blending, and more






///@defgroup Colorutils Color utility functions
///A variety of functions for working with color, palletes, and leds
///@{

/// fill_solid -   fill a range of LEDs with a solid color
///                Example: fill_solid( leds, NUM_LEDS, CRGB(50,0,200));
void fill_solid( struct CRGB * leds, int numToFill,
                 const struct CRGB& color);

/// fill_solid -   fill a range of LEDs with a solid color
///                Example: fill_solid( leds, NUM_LEDS, CRGB(50,0,200));
void fill_solid( struct CHSV* targetArray, int numToFill,
				 const struct CHSV& hsvColor);


/// fill_rainbow - fill a range of LEDs with a rainbow of colors, at
///                full saturation and full value (brightness)
void fill_rainbow( struct CRGB * pFirstLED, int numToFill,
                   uint8_t initialhue,
                   uint8_t deltahue = 5);

/// fill_rainbow - fill a range of LEDs with a rainbow of colors, at
///                full saturation and full value (brightness)
void fill_rainbow( struct CHSV * targetArray, int numToFill,
                   uint8_t initialhue,
                   uint8_t deltahue = 5);


// fill_gradient - fill an array of colors with a smooth HSV gradient
//                 between two specified HSV colors.
//                 Since 'hue' is a value around a color wheel,
//                 there are always two ways to sweep from one hue
//                 to another.
//                 This function lets you specify which way you want
//                 the hue gradient to sweep around the color wheel:
//                   FORWARD_HUES: hue always goes clockwise
//                   BACKWARD_HUES: hue always goes counter-clockwise
//                   SHORTEST_HUES: hue goes whichever way is shortest
//                   LONGEST_HUES: hue goes whichever way is longest
//                 The default is SHORTEST_HUES, as this is nearly
//                 always what is wanted.
//
// fill_gradient can write the gradient colors EITHER
//     (1) into an array of CRGBs (e.g., into leds[] array, or an RGB Palette)
//   OR
//     (2) into an array of CHSVs (e.g. an HSV Palette).
//
//   In the case of writing into a CRGB array, the gradient is
//   computed in HSV space, and then HSV values are converted to RGB
//   as they're written into the RGB array.

typedef enum { FORWARD_HUES, BACKWARD_HUES, SHORTEST_HUES, LONGEST_HUES } TGradientDirectionCode;





/// fill_gradient - fill an array of colors with a smooth HSV gradient
/// between two specified HSV colors.
/// Since 'hue' is a value around a color wheel,
/// there are always two ways to sweep from one hue
/// to another.
/// This function lets you specify which way you want
/// the hue gradient to sweep around the color wheel:
///
///     FORWARD_HUES: hue always goes clockwise
///     BACKWARD_HUES: hue always goes counter-clockwise
///     SHORTEST_HUES: hue goes whichever way is shortest
///     LONGEST_HUES: hue goes whichever way is longest
///
/// The default is SHORTEST_HUES, as this is nearly
/// always what is wanted.
///
/// fill_gradient can write the gradient colors EITHER
///     (1) into an array of CRGBs (e.g., into leds[] array, or an RGB Palette)
///   OR
///     (2) into an array of CHSVs (e.g. an HSV Palette).
///
///   In the case of writing into a CRGB array, the gradient is
///   computed in HSV space, and then HSV values are converted to RGB
///   as they're written into the RGB array.
template <typename T>
void fill_gradient( T* targetArray,
                    uint16_t startpos, CHSV startcolor,
                    uint16_t endpos,   CHSV endcolor,
                    TGradientDirectionCode directionCode  = SHORTEST_HUES )
{
    // if the points are in the wrong order, straighten them
    if( endpos < startpos ) {
        uint16_t t = endpos;
        CHSV tc = endcolor;
        endcolor = startcolor;
        endpos = startpos;
        startpos = t;
        startcolor = tc;
    }

    // If we're fading toward black (val=0) or white (sat=0),
    // then set the endhue to the starthue.
    // This lets us ramp smoothly to black or white, regardless
    // of what 'hue' was set in the endcolor (since it doesn't matter)
    if( endcolor.value == 0 || endcolor.saturation == 0) {
        endcolor.hue = startcolor.hue;
    }

    // Similarly, if we're fading in from black (val=0) or white (sat=0)
    // then set the starthue to the endhue.
    // This lets us ramp smoothly up from black or white, regardless
    // of what 'hue' was set in the startcolor (since it doesn't matter)
    if( startcolor.value == 0 || startcolor.saturation == 0) {
        startcolor.hue = endcolor.hue;
    }

    int16_t huedistance87;
    int16_t satdistance87;
    int16_t valdistance87;

    satdistance87 = (endcolor.sat - startcolor.sat) << 7;
    valdistance87 = (endcolor.val - startcolor.val) << 7;

    uint8_t huedelta8 = endcolor.hue - startcolor.hue;

    if( directionCode == SHORTEST_HUES ) {
        directionCode = FORWARD_HUES;
        if( huedelta8 > 127) {
            directionCode = BACKWARD_HUES;
        }
    }

    if( directionCode == LONGEST_HUES ) {
        directionCode = FORWARD_HUES;
        if( huedelta8 < 128) {
            directionCode = BACKWARD_HUES;
        }
    }

    if( directionCode == FORWARD_HUES) {
        huedistance87 = huedelta8 << 7;
    }
    else /* directionCode == BACKWARD_HUES */
    {
        huedistance87 = (uint8_t)(256 - huedelta8) << 7;
        huedistance87 = -huedistance87;
    }

    uint16_t pixeldistance = endpos - startpos;
    int16_t divisor = pixeldistance ? pixeldistance : 1;

    int16_t huedelta87 = huedistance87 / divisor;
    int16_t satdelta87 = satdistance87 / divisor;
    int16_t valdelta87 = valdistance87 / divisor;

    huedelta87 *= 2;
    satdelta87 *= 2;
    valdelta87 *= 2;

    accum88 hue88 = startcolor.hue << 8;
    accum88 sat88 = startcolor.sat << 8;
    accum88 val88 = startcolor.val << 8;
    for( uint16_t i = startpos; i <= endpos; i++) {
        targetArray[i] = CHSV( hue88 >> 8, sat88 >> 8, val88 >> 8);
        hue88 += huedelta87;
        sat88 += satdelta87;
        val88 += valdelta87;
    }
}


// Convenience functions to fill an array of colors with a
// two-color, three-color, or four-color gradient
template <typename T>
void fill_gradient( T* targetArray, uint16_t numLeds, const CHSV& c1, const CHSV& c2,
					TGradientDirectionCode directionCode = SHORTEST_HUES )
{
    uint16_t last = numLeds - 1;
    fill_gradient( targetArray, 0, c1, last, c2, directionCode);
}

template <typename T>
void fill_gradient( T* targetArray, uint16_t numLeds,
					const CHSV& c1, const CHSV& c2, const CHSV& c3,
					TGradientDirectionCode directionCode = SHORTEST_HUES )
{
    uint16_t half = (numLeds / 2);
    uint16_t last = numLeds - 1;
    fill_gradient( targetArray,    0, c1, half, c2, directionCode);
    fill_gradient( targetArray, half, c2, last, c3, directionCode);
}

template <typename T>
void fill_gradient( T* targetArray, uint16_t numLeds,
					const CHSV& c1, const CHSV& c2, const CHSV& c3, const CHSV& c4,
					TGradientDirectionCode directionCode = SHORTEST_HUES )
{
    uint16_t onethird = (numLeds / 3);
    uint16_t twothirds = ((numLeds * 2) / 3);
    uint16_t last = numLeds - 1;
    fill_gradient( targetArray,         0, c1,  onethird, c2, directionCode);
    fill_gradient( targetArray,  onethird, c2, twothirds, c3, directionCode);
    fill_gradient( targetArray, twothirds, c3,      last, c4, directionCode);
}

// convenience synonym



// fill_gradient_RGB - fill a range of LEDs with a smooth RGB gradient
//                     between two specified RGB colors.
//                     Unlike HSV, there is no 'color wheel' in RGB space,
//                     and therefore there's only one 'direction' for the
//                     gradient to go, and no 'direction code' is needed.
void fill_gradient_RGB( CRGB* leds,
                       uint16_t startpos, CRGB startcolor,
                       uint16_t endpos,   CRGB endcolor );
void fill_gradient_RGB( CRGB* leds, uint16_t numLeds, const CRGB& c1, const CRGB& c2);
void fill_gradient_RGB( CRGB* leds, uint16_t numLeds, const CRGB& c1, const CRGB& c2, const CRGB& c3);
void fill_gradient_RGB( CRGB* leds, uint16_t numLeds, const CRGB& c1, const CRGB& c2, const CRGB& c3, const CRGB& c4);


// fadeLightBy and fade_video - reduce the brightness of an array
//                              of pixels all at once.  Guaranteed
//                              to never fade all the way to black.
//                              (The two names are synonyms.)
void fadeLightBy(   CRGB* leds, uint16_t num_leds, uint8_t fadeBy);
void fade_video(    CRGB* leds, uint16_t num_leds, uint8_t fadeBy);

// nscale8_video - scale down the brightness of an array of pixels
//                 all at once.  Guaranteed to never scale a pixel
//                 all the way down to black, unless 'scale' is zero.
void nscale8_video( CRGB* leds, uint16_t num_leds, uint8_t scale);

// fadeToBlackBy and fade_raw - reduce the brightness of an array
//                              of pixels all at once.  These
//                              functions will eventually fade all
//                              the way to black.
//                              (The two names are synonyms.)
void fadeToBlackBy( CRGB* leds, uint16_t num_leds, uint8_t fadeBy);
void fade_raw(      CRGB* leds, uint16_t num_leds, uint8_t fadeBy);

// nscale8 - scale down the brightness of an array of pixels
//           all at once.  This function can scale pixels all the
//           way down to black even if 'scale' is not zero.
void nscale8(       CRGB* leds, uint16_t num_leds, uint8_t scale);

// fadeUsingColor - scale down the brightness of an array of pixels,
//                  as though it were seen through a transparent
//                  filter with the specified color.
//                  For example, if the colormask is
//                    CRGB( 200, 100, 50)
//                  then the pixels' red will be faded to 200/256ths,
//                  their green to 100/256ths, and their blue to 50/256ths.
//                  This particular example give a 'hot fade' look,
//                  with white fading to yellow, then red, then black.
//                  You can also use colormasks like CRGB::Blue to
//                  zero out the red and green elements, leaving blue
//                  (largely) the same.
void fadeUsingColor( CRGB* leds, uint16_t numLeds, const CRGB& colormask);


// Pixel blending
//
// blend - computes a new color blended some fraction of the way
//         between two other colors.
CRGB  blend( const CRGB& p1, const CRGB& p2, fract8 amountOfP2 );

CHSV  blend( const CHSV& p1, const CHSV& p2, fract8 amountOfP2,
            TGradientDirectionCode directionCode = SHORTEST_HUES );

// blend - computes a new color blended array of colors, each
//         a given fraction of the way between corresponding
//         elements of two source arrays of colors.
//         Useful for blending palettes.
CRGB* blend( const CRGB* src1, const CRGB* src2, CRGB* dest,
             uint16_t count, fract8 amountOfsrc2 );

CHSV* blend( const CHSV* src1, const CHSV* src2, CHSV* dest,
            uint16_t count, fract8 amountOfsrc2,
            TGradientDirectionCode directionCode = SHORTEST_HUES );

// nblend - destructively modifies one color, blending
//          in a given fraction of an overlay color
CRGB& nblend( CRGB& existing, const CRGB& overlay, fract8 amountOfOverlay );

CHSV& nblend( CHSV& existing, const CHSV& overlay, fract8 amountOfOverlay,
             TGradientDirectionCode directionCode = SHORTEST_HUES );

// nblend - destructively blends a given fraction of
//          a new color array into an existing color array
void  nblend( CRGB* existing, CRGB* overlay, uint16_t count, fract8 amountOfOverlay);

void  nblend( CHSV* existing, CHSV* overlay, uint16_t count, fract8 amountOfOverlay,
             TGradientDirectionCode directionCode = SHORTEST_HUES);


// blur1d: one-dimensional blur filter. Spreads light to 2 line neighbors.
// blur2d: two-dimensional blur filter. Spreads light to 8 XY neighbors.
//
//           0 = no spread at all
//          64 = moderate spreading
//         172 = maximum smooth, even spreading
//
//         173..255 = wider spreading, but increasing flicker
//
//         Total light is NOT entirely conserved, so many repeated
//         calls to 'blur' will also result in the light fading,
//         eventually all the way to black; this is by design so that
//         it can be used to (slowly) clear the LEDs to black.
void blur1d( CRGB* leds, uint16_t numLeds, fract8 blur_amount);
void blur2d( CRGB* leds, uint8_t width, uint8_t height, fract8 blur_amount);

// blurRows: perform a blur1d on every row of a rectangular matrix
void blurRows( CRGB* leds, uint8_t width, uint8_t height, fract8 blur_amount);
// blurColumns: perform a blur1d on each column of a rectangular matrix
void blurColumns(CRGB* leds, uint8_t width, uint8_t height, fract8 blur_amount);


// CRGB HeatColor( uint8_t temperature)
//
// Approximates a 'black body radiation' spectrum for
// a given 'heat' level.  This is useful for animations of 'fire'.
// Heat is specified as an arbitrary scale from 0 (cool) to 255 (hot).
// This is NOT a chromatically correct 'black body radiation'
// spectrum, but it's surprisingly close, and it's fast and small.
CRGB HeatColor( uint8_t temperature);


// Palettes
//
// RGB Palettes map an 8-bit value (0..255) to an RGB color.
//
// You can create any color palette you wish; a couple of starters
// are provided: Forest, Clouds, Lava, Ocean, Rainbow, and Rainbow Stripes.
//
// Palettes come in the traditional 256-entry variety, which take
// up 768 bytes of RAM, and lightweight 16-entry varieties.  The 16-entry
// variety automatically interpolates between its entries to produce
// a full 256-element color map, but at a cost of only 48 bytes or RAM.
//
// Basic operation is like this: (example shows the 16-entry variety)
// 1. Declare your palette storage:
//    CRGBPalette16 myPalette;
//
// 2. Fill myPalette with your own 16 colors, or with a preset color scheme.
//    You can specify your 16 colors a variety of ways:
//      CRGBPalette16 myPalette(
//          CRGB::Black,
//          CRGB::Black,
//          CRGB::Red,
//          CRGB::Yellow,
//          CRGB::Green,
//          CRGB::Blue,
//          CRGB::Purple,
//          CRGB::Black,
//
//          0x100000,
//          0x200000,
//          0x400000,
//          0x800000,
//
//          CHSV( 30,255,255),
//          CHSV( 50,255,255),
//          CHSV( 70,255,255),
//          CHSV( 90,255,255)
//      );
//
//    Or you can initiaize your palette with a preset color scheme:
//      myPalette = RainbowStripesColors_p;
//
// 3. Any time you want to set a pixel to a color from your palette, use
//    "ColorFromPalette(...)" as shown:
//
//      uint8_t index = /* any value 0..255 */;
//      leds[i] = ColorFromPalette( myPalette, index);
//
//    Even though your palette has only 16 explicily defined entries, you
//    can use an 'index' from 0..255.  The 16 explicit palette entries will
//    be spread evenly across the 0..255 range, and the intermedate values
//    will be RGB-interpolated between adjacent explicit entries.
//
//    It's easier to use than it sounds.
//

class CRGBPalette16;
class CRGBPalette32;
class CRGBPalette256;
class CHSVPalette16;
class CHSVPalette32;
class CHSVPalette256;
typedef uint32_t TProgmemRGBPalette16[16];
typedef uint32_t TProgmemHSVPalette16[16];

typedef uint32_t TProgmemRGBPalette32[32];
typedef uint32_t TProgmemHSVPalette32[32];


typedef const uint8_t TProgmemRGBGradientPalette_byte ;
typedef const TProgmemRGBGradientPalette_byte *TProgmemRGBGradientPalette_bytes;
typedef TProgmemRGBGradientPalette_bytes TProgmemRGBGradientPalettePtr;
typedef union {
    struct {
        uint8_t index;
        uint8_t r;
        uint8_t g;
        uint8_t b;
    };
    uint32_t dword;
    uint8_t  bytes[4];
} TRGBGradientPaletteEntryUnion;

typedef uint8_t TDynamicRGBGradientPalette_byte ;
typedef const TDynamicRGBGradientPalette_byte *TDynamicRGBGradientPalette_bytes;
typedef TDynamicRGBGradientPalette_bytes TDynamicRGBGradientPalettePtr;

// Convert a 16-entry palette to a 256-entry palette
void UpscalePalette(const struct CRGBPalette16& srcpal16, struct CRGBPalette256& destpal256);
void UpscalePalette(const struct CHSVPalette16& srcpal16, struct CHSVPalette256& destpal256);

// Convert a 16-entry palette to a 32-entry palette
void UpscalePalette(const struct CRGBPalette16& srcpal16, struct CRGBPalette32& destpal32);
void UpscalePalette(const struct CHSVPalette16& srcpal16, struct CHSVPalette32& destpal32);

// Convert a 32-entry palette to a 256-entry palette
void UpscalePalette(const struct CRGBPalette32& srcpal32, struct CRGBPalette256& destpal256);
void UpscalePalette(const struct CHSVPalette32& srcpal32, struct CHSVPalette256& destpal256);


class CHSVPalette16 {
public:
    CHSV entries[16];
    CHSVPalette16() {};
    CHSVPalette16( const CHSV& c00,const CHSV& c01,const CHSV& c02,const CHSV& c03,
                    const CHSV& c04,const CHSV& c05,const CHSV& c06,const CHSV& c07,
                    const CHSV& c08,const CHSV& c09,const CHSV& c10,const CHSV& c11,
                    const CHSV& c12,const CHSV& c13,const CHSV& c14,const CHSV& c15 )
    {
        entries[0]=c00; entries[1]=c01; entries[2]=c02; entries[3]=c03;
        entries[4]=c04; entries[5]=c05; entries[6]=c06; entries[7]=c07;
        entries[8]=c08; entries[9]=c09; entries[10]=c10; entries[11]=c11;
        entries[12]=c12; entries[13]=c13; entries[14]=c14; entries[15]=c15;
    };

    CHSVPalette16( const CHSVPalette16& rhs)
    {
        memmove( (void *) &(entries[0]), &(rhs.entries[0]), sizeof( entries));
    }
    CHSVPalette16& operator=( const CHSVPalette16& rhs)
    {
        memmove( (void *) &(entries[0]), &(rhs.entries[0]), sizeof( entries));
        return *this;
    }

    CHSVPalette16( const TProgmemHSVPalette16& rhs)
    {
        for( uint8_t i = 0; i < 16; i++) {
            CRGB xyz   =  (*((const uint32_t*)(rhs + i)));
            entries[i].hue = xyz.red;
            entries[i].sat = xyz.green;
            entries[i].val = xyz.blue;
        }
    }
    CHSVPalette16& operator=( const TProgmemHSVPalette16& rhs)
    {
        for( uint8_t i = 0; i < 16; i++) {
            CRGB xyz   =  (*((const uint32_t*)(rhs + i)));
            entries[i].hue = xyz.red;
            entries[i].sat = xyz.green;
            entries[i].val = xyz.blue;
        }
        return *this;
    }

    inline CHSV& operator[] (uint8_t x) __attribute__((always_inline))
    {
        return entries[x];
    }
    inline const CHSV& operator[] (uint8_t x) const __attribute__((always_inline))
    {
        return entries[x];
    }

    inline CHSV& operator[] (int x) __attribute__((always_inline))
    {
        return entries[(uint8_t)x];
    }
    inline const CHSV& operator[] (int x) const __attribute__((always_inline))
    {
        return entries[(uint8_t)x];
    }

    operator CHSV*()
    {
        return &(entries[0]);
    }

    bool operator==( const CHSVPalette16 rhs)
    {
        const uint8_t* p = (const uint8_t*)(&(this->entries[0]));
        const uint8_t* q = (const uint8_t*)(&(rhs.entries[0]));
        if( p == q) return true;
        for( uint8_t i = 0; i < (sizeof( entries)); i++) {
            if( *p != *q) return false;
            p++;
            q++;
        }
        return true;
    }
    bool operator!=( const CHSVPalette16 rhs)
    {
        return !( *this == rhs);
    }
    
    CHSVPalette16( const CHSV& c1)
    {
        fill_solid( &(entries[0]), 16, c1);
    }
    CHSVPalette16( const CHSV& c1, const CHSV& c2)
    {
        fill_gradient( &(entries[0]), 16, c1, c2);
    }
    CHSVPalette16( const CHSV& c1, const CHSV& c2, const CHSV& c3)
    {
        fill_gradient( &(entries[0]), 16, c1, c2, c3);
    }
    CHSVPalette16( const CHSV& c1, const CHSV& c2, const CHSV& c3, const CHSV& c4)
    {
        fill_gradient( &(entries[0]), 16, c1, c2, c3, c4);
    }

};

class CHSVPalette256 {
public:
    CHSV entries[256];
    CHSVPalette256() {};
    CHSVPalette256( const CHSV& c00,const CHSV& c01,const CHSV& c02,const CHSV& c03,
                  const CHSV& c04,const CHSV& c05,const CHSV& c06,const CHSV& c07,
                  const CHSV& c08,const CHSV& c09,const CHSV& c10,const CHSV& c11,
                  const CHSV& c12,const CHSV& c13,const CHSV& c14,const CHSV& c15 )
    {
        CHSVPalette16 p16(c00,c01,c02,c03,c04,c05,c06,c07,
                          c08,c09,c10,c11,c12,c13,c14,c15);
        *this = p16;
    };

    CHSVPalette256( const CHSVPalette256& rhs)
    {
        memmove( (void *) &(entries[0]), &(rhs.entries[0]), sizeof( entries));
    }
    CHSVPalette256& operator=( const CHSVPalette256& rhs)
    {
        memmove( (void *) &(entries[0]), &(rhs.entries[0]), sizeof( entries));
        return *this;
    }

    CHSVPalette256( const CHSVPalette16& rhs16)
    {
        UpscalePalette( rhs16, *this);
    }
    CHSVPalette256& operator=( const CHSVPalette16& rhs16)
    {
        UpscalePalette( rhs16, *this);
        return *this;
    }

    CHSVPalette256( const TProgmemRGBPalette16& rhs)
    {
        CHSVPalette16 p16(rhs);
        *this = p16;
    }
    CHSVPalette256& operator=( const TProgmemRGBPalette16& rhs)
    {
        CHSVPalette16 p16(rhs);
        *this = p16;
        return *this;
    }

    inline CHSV& operator[] (uint8_t x) __attribute__((always_inline))
    {
        return entries[x];
    }
    inline const CHSV& operator[] (uint8_t x) const __attribute__((always_inline))
    {
        return entries[x];
    }

    inline CHSV& operator[] (int x) __attribute__((always_inline))
    {
        return entries[(uint8_t)x];
    }
    inline const CHSV& operator[] (int x) const __attribute__((always_inline))
    {
        return entries[(uint8_t)x];
    }

    operator CHSV*()
    {
        return &(entries[0]);
    }

    bool operator==( const CHSVPalette256 rhs)
    {
        const uint8_t* p = (const uint8_t*)(&(this->entries[0]));
        const uint8_t* q = (const uint8_t*)(&(rhs.entries[0]));
        if( p == q) return true;
        for( uint16_t i = 0; i < (sizeof( entries)); i++) {
            if( *p != *q) return false;
            p++;
            q++;
        }
        return true;
    }
    bool operator!=( const CHSVPalette256 rhs)
    {
        return !( *this == rhs);
    }
    
    CHSVPalette256( const CHSV& c1)
    {
      fill_solid( &(entries[0]), 256, c1);
    }
    CHSVPalette256( const CHSV& c1, const CHSV& c2)
    {
        fill_gradient( &(entries[0]), 256, c1, c2);
    }
    CHSVPalette256( const CHSV& c1, const CHSV& c2, const CHSV& c3)
    {
        fill_gradient( &(entries[0]), 256, c1, c2, c3);
    }
    CHSVPalette256( const CHSV& c1, const CHSV& c2, const CHSV& c3, const CHSV& c4)
    {
        fill_gradient( &(entries[0]), 256, c1, c2, c3, c4);
    }
};

class CRGBPalette16 {
public:
    CRGB entries[16];
    CRGBPalette16() {};
    CRGBPalette16( const CRGB& c00,const CRGB& c01,const CRGB& c02,const CRGB& c03,
                    const CRGB& c04,const CRGB& c05,const CRGB& c06,const CRGB& c07,
                    const CRGB& c08,const CRGB& c09,const CRGB& c10,const CRGB& c11,
                    const CRGB& c12,const CRGB& c13,const CRGB& c14,const CRGB& c15 )
    {
        entries[0]=c00; entries[1]=c01; entries[2]=c02; entries[3]=c03;
        entries[4]=c04; entries[5]=c05; entries[6]=c06; entries[7]=c07;
        entries[8]=c08; entries[9]=c09; entries[10]=c10; entries[11]=c11;
        entries[12]=c12; entries[13]=c13; entries[14]=c14; entries[15]=c15;
    };

    CRGBPalette16( const CRGBPalette16& rhs)
    {
        memmove( (void *) &(entries[0]), &(rhs.entries[0]), sizeof( entries));
    }
    CRGBPalette16( const CRGB rhs[16])
    {
        memmove( (void *) &(entries[0]), &(rhs[0]), sizeof( entries));
    }
    CRGBPalette16& operator=( const CRGBPalette16& rhs)
    {
        memmove( (void *) &(entries[0]), &(rhs.entries[0]), sizeof( entries));
        return *this;
    }
    CRGBPalette16& operator=( const CRGB rhs[16])
    {
        memmove( (void *) &(entries[0]), &(rhs[0]), sizeof( entries));
        return *this;
    }

    CRGBPalette16( const CHSVPalette16& rhs)
    {
        for( uint8_t i = 0; i < 16; i++) {
    		entries[i] = rhs.entries[i]; // implicit HSV-to-RGB conversion
        }
    }
    CRGBPalette16( const CHSV rhs[16])
    {
        for( uint8_t i = 0; i < 16; i++) {
            entries[i] = rhs[i]; // implicit HSV-to-RGB conversion
        }
    }
    CRGBPalette16& operator=( const CHSVPalette16& rhs)
    {
        for( uint8_t i = 0; i < 16; i++) {
    		entries[i] = rhs.entries[i]; // implicit HSV-to-RGB conversion
        }
        return *this;
    }
    CRGBPalette16& operator=( const CHSV rhs[16])
    {
        for( uint8_t i = 0; i < 16; i++) {
            entries[i] = rhs[i]; // implicit HSV-to-RGB conversion
        }
        return *this;
    }

    CRGBPalette16( const TProgmemRGBPalette16& rhs)
    {
        for( uint8_t i = 0; i < 16; i++) {
            entries[i] =  (*((const uint32_t*)(rhs + i)));
        }
    }
    CRGBPalette16& operator=( const TProgmemRGBPalette16& rhs)
    {
        for( uint8_t i = 0; i < 16; i++) {
            entries[i] =  (*((const uint32_t*)(rhs + i)));
        }
        return *this;
    }

    bool operator==( const CRGBPalette16 rhs)
    {
        const uint8_t* p = (const uint8_t*)(&(this->entries[0]));
        const uint8_t* q = (const uint8_t*)(&(rhs.entries[0]));
        if( p == q) return true;
        for( uint8_t i = 0; i < (sizeof( entries)); i++) {
            if( *p != *q) return false;
            p++;
            q++;
        }
        return true;
    }
    bool operator!=( const CRGBPalette16 rhs)
    {
        return !( *this == rhs);
    }
    
    inline CRGB& operator[] (uint8_t x) __attribute__((always_inline))
    {
        return entries[x];
    }
    inline const CRGB& operator[] (uint8_t x) const __attribute__((always_inline))
    {
        return entries[x];
    }

    inline CRGB& operator[] (int x) __attribute__((always_inline))
    {
        return entries[(uint8_t)x];
    }
    inline const CRGB& operator[] (int x) const __attribute__((always_inline))
    {
        return entries[(uint8_t)x];
    }

    operator CRGB*()
    {
        return &(entries[0]);
    }

    CRGBPalette16( const CHSV& c1)
    {
        fill_solid( &(entries[0]), 16, c1);
    }
    CRGBPalette16( const CHSV& c1, const CHSV& c2)
    {
        fill_gradient( &(entries[0]), 16, c1, c2);
    }
    CRGBPalette16( const CHSV& c1, const CHSV& c2, const CHSV& c3)
    {
        fill_gradient( &(entries[0]), 16, c1, c2, c3);
    }
    CRGBPalette16( const CHSV& c1, const CHSV& c2, const CHSV& c3, const CHSV& c4)
    {
        fill_gradient( &(entries[0]), 16, c1, c2, c3, c4);
    }

    CRGBPalette16( const CRGB& c1)
    {
        fill_solid( &(entries[0]), 16, c1);
    }
    CRGBPalette16( const CRGB& c1, const CRGB& c2)
    {
        fill_gradient_RGB( &(entries[0]), 16, c1, c2);
    }
    CRGBPalette16( const CRGB& c1, const CRGB& c2, const CRGB& c3)
    {
        fill_gradient_RGB( &(entries[0]), 16, c1, c2, c3);
    }
    CRGBPalette16( const CRGB& c1, const CRGB& c2, const CRGB& c3, const CRGB& c4)
    {
        fill_gradient_RGB( &(entries[0]), 16, c1, c2, c3, c4);
    }


    // Gradient palettes are loaded into CRGB16Palettes in such a way
    // that, if possible, every color represented in the gradient palette
    // is also represented in the CRGBPalette16.
    // For example, consider a gradient palette that is all black except
    // for a single, one-element-wide (1/256th!) spike of red in the middle:
    //     0,   0,0,0
    //   124,   0,0,0
    //   125, 255,0,0  // one 1/256th-palette-wide red stripe
    //   126,   0,0,0
    //   255,   0,0,0
    // A naive conversion of this 256-element palette to a 16-element palette
    // might accidentally completely eliminate the red spike, rendering the
    // palette completely black.
    // However, the conversions provided here would attempt to include a
    // the red stripe in the output, more-or-less as faithfully as possible.
    // So in this case, the resulting CRGBPalette16 palette would have a red
    // stripe in the middle which was 1/16th of a palette wide -- the
    // narrowest possible in a CRGBPalette16.
    // This means that the relative width of stripes in a CRGBPalette16
    // will be, by definition, different from the widths in the gradient
    // palette.  This code attempts to preserve "all the colors", rather than
    // the exact stripe widths at the expense of dropping some colors.
    CRGBPalette16( TProgmemRGBGradientPalette_bytes progpal )
    {
        *this = progpal;
    }
    CRGBPalette16& operator=( TProgmemRGBGradientPalette_bytes progpal )
    {
        TRGBGradientPaletteEntryUnion* progent = (TRGBGradientPaletteEntryUnion*)(progpal);
        TRGBGradientPaletteEntryUnion u;

        // Count entries
        uint16_t count = 0;
        do {
            u.dword = (*((const uint32_t*)(progent + count)));
            count++;;
        } while ( u.index != 255);

        int8_t lastSlotUsed = -1;

        u.dword = (*((const uint32_t*)(progent)));
        CRGB rgbstart( u.r, u.g, u.b);

        int indexstart = 0;
        uint8_t istart8 = 0;
        uint8_t iend8 = 0;
        while( indexstart < 255) {
            progent++;
            u.dword = (*((const uint32_t*)(progent)));
            int indexend  = u.index;
            CRGB rgbend( u.r, u.g, u.b);
            istart8 = indexstart / 16;
            iend8   = indexend   / 16;
            if( count < 16) {
                if( (istart8 <= lastSlotUsed) && (lastSlotUsed < 15)) {
                    istart8 = lastSlotUsed + 1;
                    if( iend8 < istart8) {
                        iend8 = istart8;
                    }
                }
                lastSlotUsed = iend8;
            }
            fill_gradient_RGB( &(entries[0]), istart8, rgbstart, iend8, rgbend);
            indexstart = indexend;
            rgbstart = rgbend;
        }
        return *this;
    }
    CRGBPalette16& loadDynamicGradientPalette( TDynamicRGBGradientPalette_bytes gpal )
    {
        TRGBGradientPaletteEntryUnion* ent = (TRGBGradientPaletteEntryUnion*)(gpal);
        TRGBGradientPaletteEntryUnion u;

        // Count entries
        uint16_t count = 0;
        do {
            u = *(ent + count);
            count++;;
        } while ( u.index != 255);

        int8_t lastSlotUsed = -1;


        u = *ent;
        CRGB rgbstart( u.r, u.g, u.b);

        int indexstart = 0;
        uint8_t istart8 = 0;
        uint8_t iend8 = 0;
        while( indexstart < 255) {
            ent++;
            u = *ent;
            int indexend  = u.index;
            CRGB rgbend( u.r, u.g, u.b);
            istart8 = indexstart / 16;
            iend8   = indexend   / 16;
            if( count < 16) {
                if( (istart8 <= lastSlotUsed) && (lastSlotUsed < 15)) {
                    istart8 = lastSlotUsed + 1;
                    if( iend8 < istart8) {
                        iend8 = istart8;
                    }
                }
                lastSlotUsed = iend8;
            }
            fill_gradient_RGB( &(entries[0]), istart8, rgbstart, iend8, rgbend);
            indexstart = indexend;
            rgbstart = rgbend;
        }
        return *this;
    }

};



class CHSVPalette32 {
public:
    CHSV entries[32];
    CHSVPalette32() {};
    CHSVPalette32( const CHSV& c00,const CHSV& c01,const CHSV& c02,const CHSV& c03,
                  const CHSV& c04,const CHSV& c05,const CHSV& c06,const CHSV& c07,
                  const CHSV& c08,const CHSV& c09,const CHSV& c10,const CHSV& c11,
                  const CHSV& c12,const CHSV& c13,const CHSV& c14,const CHSV& c15 )
    {
        for( uint8_t i = 0; i < 2; i++) {
            entries[0+i]=c00; entries[2+i]=c01; entries[4+i]=c02; entries[6+i]=c03;
            entries[8+i]=c04; entries[10+i]=c05; entries[12+i]=c06; entries[14+i]=c07;
            entries[16+i]=c08; entries[18+i]=c09; entries[20+i]=c10; entries[22+i]=c11;
            entries[24+i]=c12; entries[26+i]=c13; entries[28+i]=c14; entries[30+i]=c15;
        }
    };
    
    CHSVPalette32( const CHSVPalette32& rhs)
    {
        memmove( (void *) &(entries[0]), &(rhs.entries[0]), sizeof( entries));
    }
    CHSVPalette32& operator=( const CHSVPalette32& rhs)
    {
        memmove( (void *) &(entries[0]), &(rhs.entries[0]), sizeof( entries));
        return *this;
    }
    
    CHSVPalette32( const TProgmemHSVPalette32& rhs)
    {
        for( uint8_t i = 0; i < 32; i++) {
            CRGB xyz   =  (*((const uint32_t*)(rhs + i)));
            entries[i].hue = xyz.red;
            entries[i].sat = xyz.green;
            entries[i].val = xyz.blue;
        }
    }
    CHSVPalette32& operator=( const TProgmemHSVPalette32& rhs)
    {
        for( uint8_t i = 0; i < 32; i++) {
            CRGB xyz   =  (*((const uint32_t*)(rhs + i)));
            entries[i].hue = xyz.red;
            entries[i].sat = xyz.green;
            entries[i].val = xyz.blue;
        }
        return *this;
    }
    
    inline CHSV& operator[] (uint8_t x) __attribute__((always_inline))
    {
        return entries[x];
    }
    inline const CHSV& operator[] (uint8_t x) const __attribute__((always_inline))
    {
        return entries[x];
    }
    
    inline CHSV& operator[] (int x) __attribute__((always_inline))
    {
        return entries[(uint8_t)x];
    }
    inline const CHSV& operator[] (int x) const __attribute__((always_inline))
    {
        return entries[(uint8_t)x];
    }
    
    operator CHSV*()
    {
        return &(entries[0]);
    }
    
    bool operator==( const CHSVPalette32 rhs)
    {
        const uint8_t* p = (const uint8_t*)(&(this->entries[0]));
        const uint8_t* q = (const uint8_t*)(&(rhs.entries[0]));
        if( p == q) return true;
        for( uint8_t i = 0; i < (sizeof( entries)); i++) {
            if( *p != *q) return false;
            p++;
            q++;
        }
        return true;
    }
    bool operator!=( const CHSVPalette32 rhs)
    {
        return !( *this == rhs);
    }
    
    CHSVPalette32( const CHSV& c1)
    {
        fill_solid( &(entries[0]), 32, c1);
    }
    CHSVPalette32( const CHSV& c1, const CHSV& c2)
    {
        fill_gradient( &(entries[0]), 32, c1, c2);
    }
    CHSVPalette32( const CHSV& c1, const CHSV& c2, const CHSV& c3)
    {
        fill_gradient( &(entries[0]), 32, c1, c2, c3);
    }
    CHSVPalette32( const CHSV& c1, const CHSV& c2, const CHSV& c3, const CHSV& c4)
    {
        fill_gradient( &(entries[0]), 32, c1, c2, c3, c4);
    }
    
};

class CRGBPalette32 {
public:
    CRGB entries[32];
    CRGBPalette32() {};
    CRGBPalette32( const CRGB& c00,const CRGB& c01,const CRGB& c02,const CRGB& c03,
                  const CRGB& c04,const CRGB& c05,const CRGB& c06,const CRGB& c07,
                  const CRGB& c08,const CRGB& c09,const CRGB& c10,const CRGB& c11,
                  const CRGB& c12,const CRGB& c13,const CRGB& c14,const CRGB& c15 )
    {
        for( uint8_t i = 0; i < 2; i++) {
            entries[0+i]=c00; entries[2+i]=c01; entries[4+i]=c02; entries[6+i]=c03;
            entries[8+i]=c04; entries[10+i]=c05; entries[12+i]=c06; entries[14+i]=c07;
            entries[16+i]=c08; entries[18+i]=c09; entries[20+i]=c10; entries[22+i]=c11;
            entries[24+i]=c12; entries[26+i]=c13; entries[28+i]=c14; entries[30+i]=c15;
        }
    };
    
    CRGBPalette32( const CRGBPalette32& rhs)
    {
        memmove( (void *) &(entries[0]), &(rhs.entries[0]), sizeof( entries));
    }
    CRGBPalette32( const CRGB rhs[32])
    {
        memmove( (void *) &(entries[0]), &(rhs[0]), sizeof( entries));
    }
    CRGBPalette32& operator=( const CRGBPalette32& rhs)
    {
        memmove( (void *) &(entries[0]), &(rhs.entries[0]), sizeof( entries));
        return *this;
    }
    CRGBPalette32& operator=( const CRGB rhs[32])
    {
        memmove( (void *) &(entries[0]), &(rhs[0]), sizeof( entries));
        return *this;
    }
    
    CRGBPalette32( const CHSVPalette32& rhs)
    {
        for( uint8_t i = 0; i < 32; i++) {
            entries[i] = rhs.entries[i]; // implicit HSV-to-RGB conversion
        }
    }
    CRGBPalette32( const CHSV rhs[32])
    {
        for( uint8_t i = 0; i < 32; i++) {
            entries[i] = rhs[i]; // implicit HSV-to-RGB conversion
        }
    }
    CRGBPalette32& operator=( const CHSVPalette32& rhs)
    {
        for( uint8_t i = 0; i < 32; i++) {
            entries[i] = rhs.entries[i]; // implicit HSV-to-RGB conversion
        }
        return *this;
    }
    CRGBPalette32& operator=( const CHSV rhs[32])
    {
        for( uint8_t i = 0; i < 32; i++) {
            entries[i] = rhs[i]; // implicit HSV-to-RGB conversion
        }
        return *this;
    }
    
    CRGBPalette32( const TProgmemRGBPalette32& rhs)
    {
        for( uint8_t i = 0; i < 32; i++) {
            entries[i] =  (*((const uint32_t*)(rhs + i)));
        }
    }
    CRGBPalette32& operator=( const TProgmemRGBPalette32& rhs)
    {
        for( uint8_t i = 0; i < 32; i++) {
            entries[i] =  (*((const uint32_t*)(rhs + i)));
        }
        return *this;
    }
    
    bool operator==( const CRGBPalette32 rhs)
    {
        const uint8_t* p = (const uint8_t*)(&(this->entries[0]));
        const uint8_t* q = (const uint8_t*)(&(rhs.entries[0]));
        if( p == q) return true;
        for( uint8_t i = 0; i < (sizeof( entries)); i++) {
            if( *p != *q) return false;
            p++;
            q++;
        }
        return true;
    }
    bool operator!=( const CRGBPalette32 rhs)
    {
        return !( *this == rhs);
    }
    
    inline CRGB& operator[] (uint8_t x) __attribute__((always_inline))
    {
        return entries[x];
    }
    inline const CRGB& operator[] (uint8_t x) const __attribute__((always_inline))
    {
        return entries[x];
    }
    
    inline CRGB& operator[] (int x) __attribute__((always_inline))
    {
        return entries[(uint8_t)x];
    }
    inline const CRGB& operator[] (int x) const __attribute__((always_inline))
    {
        return entries[(uint8_t)x];
    }
    
    operator CRGB*()
    {
        return &(entries[0]);
    }
    
    CRGBPalette32( const CHSV& c1)
    {
        fill_solid( &(entries[0]), 32, c1);
    }
    CRGBPalette32( const CHSV& c1, const CHSV& c2)
    {
        fill_gradient( &(entries[0]), 32, c1, c2);
    }
    CRGBPalette32( const CHSV& c1, const CHSV& c2, const CHSV& c3)
    {
        fill_gradient( &(entries[0]), 32, c1, c2, c3);
    }
    CRGBPalette32( const CHSV& c1, const CHSV& c2, const CHSV& c3, const CHSV& c4)
    {
        fill_gradient( &(entries[0]), 32, c1, c2, c3, c4);
    }
    
    CRGBPalette32( const CRGB& c1)
    {
        fill_solid( &(entries[0]), 32, c1);
    }
    CRGBPalette32( const CRGB& c1, const CRGB& c2)
    {
        fill_gradient_RGB( &(entries[0]), 32, c1, c2);
    }
    CRGBPalette32( const CRGB& c1, const CRGB& c2, const CRGB& c3)
    {
        fill_gradient_RGB( &(entries[0]), 32, c1, c2, c3);
    }
    CRGBPalette32( const CRGB& c1, const CRGB& c2, const CRGB& c3, const CRGB& c4)
    {
        fill_gradient_RGB( &(entries[0]), 32, c1, c2, c3, c4);
    }
    
    
    CRGBPalette32( const CRGBPalette16& rhs16)
    {
        UpscalePalette( rhs16, *this);
    }
    CRGBPalette32& operator=( const CRGBPalette16& rhs16)
    {
        UpscalePalette( rhs16, *this);
        return *this;
    }
    
    CRGBPalette32( const TProgmemRGBPalette16& rhs)
    {
        CRGBPalette16 p16(rhs);
        *this = p16;
    }
    CRGBPalette32& operator=( const TProgmemRGBPalette16& rhs)
    {
        CRGBPalette16 p16(rhs);
        *this = p16;
        return *this;
    }
    
    
    // Gradient palettes are loaded into CRGB16Palettes in such a way
    // that, if possible, every color represented in the gradient palette
    // is also represented in the CRGBPalette32.
    // For example, consider a gradient palette that is all black except
    // for a single, one-element-wide (1/256th!) spike of red in the middle:
    //     0,   0,0,0
    //   124,   0,0,0
    //   125, 255,0,0  // one 1/256th-palette-wide red stripe
    //   126,   0,0,0
    //   255,   0,0,0
    // A naive conversion of this 256-element palette to a 16-element palette
    // might accidentally completely eliminate the red spike, rendering the
    // palette completely black.
    // However, the conversions provided here would attempt to include a
    // the red stripe in the output, more-or-less as faithfully as possible.
    // So in this case, the resulting CRGBPalette32 palette would have a red
    // stripe in the middle which was 1/16th of a palette wide -- the
    // narrowest possible in a CRGBPalette32.
    // This means that the relative width of stripes in a CRGBPalette32
    // will be, by definition, different from the widths in the gradient
    // palette.  This code attempts to preserve "all the colors", rather than
    // the exact stripe widths at the expense of dropping some colors.
    CRGBPalette32( TProgmemRGBGradientPalette_bytes progpal )
    {
        *this = progpal;
    }
    CRGBPalette32& operator=( TProgmemRGBGradientPalette_bytes progpal )
    {
        TRGBGradientPaletteEntryUnion* progent = (TRGBGradientPaletteEntryUnion*)(progpal);
        TRGBGradientPaletteEntryUnion u;
        
        // Count entries
        uint16_t count = 0;
        do {
            u.dword = (*((const uint32_t*)(progent + count)));
            count++;;
        } while ( u.index != 255);
        
        int8_t lastSlotUsed = -1;
        
        u.dword = (*((const uint32_t*)(progent)));
        CRGB rgbstart( u.r, u.g, u.b);
        
        int indexstart = 0;
        uint8_t istart8 = 0;
        uint8_t iend8 = 0;
        while( indexstart < 255) {
            progent++;
            u.dword = (*((const uint32_t*)(progent)));
            int indexend  = u.index;
            CRGB rgbend( u.r, u.g, u.b);
            istart8 = indexstart / 8;
            iend8   = indexend   / 8;
            if( count < 16) {
                if( (istart8 <= lastSlotUsed) && (lastSlotUsed < 31)) {
                    istart8 = lastSlotUsed + 1;
                    if( iend8 < istart8) {
                        iend8 = istart8;
                    }
                }
                lastSlotUsed = iend8;
            }
            fill_gradient_RGB( &(entries[0]), istart8, rgbstart, iend8, rgbend);
            indexstart = indexend;
            rgbstart = rgbend;
        }
        return *this;
    }
    CRGBPalette32& loadDynamicGradientPalette( TDynamicRGBGradientPalette_bytes gpal )
    {
        TRGBGradientPaletteEntryUnion* ent = (TRGBGradientPaletteEntryUnion*)(gpal);
        TRGBGradientPaletteEntryUnion u;
        
        // Count entries
        uint16_t count = 0;
        do {
            u = *(ent + count);
            count++;;
        } while ( u.index != 255);
        
        int8_t lastSlotUsed = -1;
        
        
        u = *ent;
        CRGB rgbstart( u.r, u.g, u.b);
        
        int indexstart = 0;
        uint8_t istart8 = 0;
        uint8_t iend8 = 0;
        while( indexstart < 255) {
            ent++;
            u = *ent;
            int indexend  = u.index;
            CRGB rgbend( u.r, u.g, u.b);
            istart8 = indexstart / 8;
            iend8   = indexend   / 8;
            if( count < 16) {
                if( (istart8 <= lastSlotUsed) && (lastSlotUsed < 31)) {
                    istart8 = lastSlotUsed + 1;
                    if( iend8 < istart8) {
                        iend8 = istart8;
                    }
                }
                lastSlotUsed = iend8;
            }
            fill_gradient_RGB( &(entries[0]), istart8, rgbstart, iend8, rgbend);
            indexstart = indexend;
            rgbstart = rgbend;
        }
        return *this;
    }
    
};



class CRGBPalette256 {
public:
    CRGB entries[256];
    CRGBPalette256() {};
    CRGBPalette256( const CRGB& c00,const CRGB& c01,const CRGB& c02,const CRGB& c03,
                  const CRGB& c04,const CRGB& c05,const CRGB& c06,const CRGB& c07,
                  const CRGB& c08,const CRGB& c09,const CRGB& c10,const CRGB& c11,
                  const CRGB& c12,const CRGB& c13,const CRGB& c14,const CRGB& c15 )
    {
        CRGBPalette16 p16(c00,c01,c02,c03,c04,c05,c06,c07,
                          c08,c09,c10,c11,c12,c13,c14,c15);
        *this = p16;
    };

    CRGBPalette256( const CRGBPalette256& rhs)
    {
        memmove( (void *) &(entries[0]), &(rhs.entries[0]), sizeof( entries));
    }
    CRGBPalette256( const CRGB rhs[256])
    {
        memmove( (void *) &(entries[0]), &(rhs[0]), sizeof( entries));
    }
    CRGBPalette256& operator=( const CRGBPalette256& rhs)
    {
        memmove( (void *) &(entries[0]), &(rhs.entries[0]), sizeof( entries));
        return *this;
    }
    CRGBPalette256& operator=( const CRGB rhs[256])
    {
        memmove( (void *) &(entries[0]), &(rhs[0]), sizeof( entries));
        return *this;
    }

    CRGBPalette256( const CHSVPalette256& rhs)
    {
    	for( int i = 0; i < 256; i++) {
	    	entries[i] = rhs.entries[i]; // implicit HSV-to-RGB conversion
    	}
    }
    CRGBPalette256( const CHSV rhs[256])
    {
        for( int i = 0; i < 256; i++) {
            entries[i] = rhs[i]; // implicit HSV-to-RGB conversion
        }
    }
    CRGBPalette256& operator=( const CHSVPalette256& rhs)
    {
    	for( int i = 0; i < 256; i++) {
	    	entries[i] = rhs.entries[i]; // implicit HSV-to-RGB conversion
    	}
        return *this;
    }
    CRGBPalette256& operator=( const CHSV rhs[256])
    {
        for( int i = 0; i < 256; i++) {
            entries[i] = rhs[i]; // implicit HSV-to-RGB conversion
        }
        return *this;
    }

    CRGBPalette256( const CRGBPalette16& rhs16)
    {
        UpscalePalette( rhs16, *this);
    }
    CRGBPalette256& operator=( const CRGBPalette16& rhs16)
    {
        UpscalePalette( rhs16, *this);
        return *this;
    }

    CRGBPalette256( const TProgmemRGBPalette16& rhs)
    {
        CRGBPalette16 p16(rhs);
        *this = p16;
    }
    CRGBPalette256& operator=( const TProgmemRGBPalette16& rhs)
    {
        CRGBPalette16 p16(rhs);
        *this = p16;
        return *this;
    }

    bool operator==( const CRGBPalette256 rhs)
    {
        const uint8_t* p = (const uint8_t*)(&(this->entries[0]));
        const uint8_t* q = (const uint8_t*)(&(rhs.entries[0]));
        if( p == q) return true;
        for( uint16_t i = 0; i < (sizeof( entries)); i++) {
            if( *p != *q) return false;
            p++;
            q++;
        }
        return true;
    }
    bool operator!=( const CRGBPalette256 rhs)
    {
        return !( *this == rhs);
    }
    
    inline CRGB& operator[] (uint8_t x) __attribute__((always_inline))
    {
        return entries[x];
    }
    inline const CRGB& operator[] (uint8_t x) const __attribute__((always_inline))
    {
        return entries[x];
    }

    inline CRGB& operator[] (int x) __attribute__((always_inline))
    {
        return entries[(uint8_t)x];
    }
    inline const CRGB& operator[] (int x) const __attribute__((always_inline))
    {
        return entries[(uint8_t)x];
    }

    operator CRGB*()
    {
        return &(entries[0]);
    }

    CRGBPalette256( const CHSV& c1)
    {
        fill_solid( &(entries[0]), 256, c1);
    }
    CRGBPalette256( const CHSV& c1, const CHSV& c2)
    {
        fill_gradient( &(entries[0]), 256, c1, c2);
    }
    CRGBPalette256( const CHSV& c1, const CHSV& c2, const CHSV& c3)
    {
        fill_gradient( &(entries[0]), 256, c1, c2, c3);
    }
    CRGBPalette256( const CHSV& c1, const CHSV& c2, const CHSV& c3, const CHSV& c4)
    {
        fill_gradient( &(entries[0]), 256, c1, c2, c3, c4);
    }

    CRGBPalette256( const CRGB& c1)
    {
        fill_solid( &(entries[0]), 256, c1);
    }
    CRGBPalette256( const CRGB& c1, const CRGB& c2)
    {
        fill_gradient_RGB( &(entries[0]), 256, c1, c2);
    }
    CRGBPalette256( const CRGB& c1, const CRGB& c2, const CRGB& c3)
    {
        fill_gradient_RGB( &(entries[0]), 256, c1, c2, c3);
    }
    CRGBPalette256( const CRGB& c1, const CRGB& c2, const CRGB& c3, const CRGB& c4)
    {
        fill_gradient_RGB( &(entries[0]), 256, c1, c2, c3, c4);
    }

    CRGBPalette256( TProgmemRGBGradientPalette_bytes progpal )
    {
        *this = progpal;
    }
    CRGBPalette256& operator=( TProgmemRGBGradientPalette_bytes progpal )
    {
        TRGBGradientPaletteEntryUnion* progent = (TRGBGradientPaletteEntryUnion*)(progpal);
        TRGBGradientPaletteEntryUnion u;
        u.dword = (*((const uint32_t*)(progent)));
        CRGB rgbstart( u.r, u.g, u.b);

        int indexstart = 0;
        while( indexstart < 255) {
            progent++;
            u.dword = (*((const uint32_t*)(progent)));
            int indexend  = u.index;
            CRGB rgbend( u.r, u.g, u.b);
            fill_gradient_RGB( &(entries[0]), indexstart, rgbstart, indexend, rgbend);
            indexstart = indexend;
            rgbstart = rgbend;
        }
        return *this;
    }
    CRGBPalette256& loadDynamicGradientPalette( TDynamicRGBGradientPalette_bytes gpal )
    {
        TRGBGradientPaletteEntryUnion* ent = (TRGBGradientPaletteEntryUnion*)(gpal);
        TRGBGradientPaletteEntryUnion u;
        u = *ent;
        CRGB rgbstart( u.r, u.g, u.b);

        int indexstart = 0;
        while( indexstart < 255) {
            ent++;
            u = *ent;
            int indexend  = u.index;
            CRGB rgbend( u.r, u.g, u.b);
            fill_gradient_RGB( &(entries[0]), indexstart, rgbstart, indexend, rgbend);
            indexstart = indexend;
            rgbstart = rgbend;
        }
        return *this;
    }
};



typedef enum { NOBLEND=0, LINEARBLEND=1 } TBlendType;

CRGB ColorFromPalette( const CRGBPalette16& pal,
                      uint8_t index,
                      uint8_t brightness=255,
                      TBlendType blendType=LINEARBLEND);

CRGB ColorFromPalette( const TProgmemRGBPalette16& pal,
                       uint8_t index,
                       uint8_t brightness=255,
                       TBlendType blendType=LINEARBLEND);

CRGB ColorFromPalette( const CRGBPalette256& pal,
                       uint8_t index,
                       uint8_t brightness=255,
                       TBlendType blendType=NOBLEND );

CHSV ColorFromPalette( const CHSVPalette16& pal,
                       uint8_t index,
                       uint8_t brightness=255,
                       TBlendType blendType=LINEARBLEND);

CHSV ColorFromPalette( const CHSVPalette256& pal,
                       uint8_t index,
                       uint8_t brightness=255,
                       TBlendType blendType=NOBLEND );

CRGB ColorFromPalette( const CRGBPalette32& pal,
                      uint8_t index,
                      uint8_t brightness=255,
                      TBlendType blendType=LINEARBLEND);

CRGB ColorFromPalette( const TProgmemRGBPalette32& pal,
                      uint8_t index,
                      uint8_t brightness=255,
                      TBlendType blendType=LINEARBLEND);

CHSV ColorFromPalette( const CHSVPalette32& pal,
                      uint8_t index,
                      uint8_t brightness=255,
                      TBlendType blendType=LINEARBLEND);


// Fill a range of LEDs with a sequece of entryies from a palette
template <typename PALETTE>
void fill_palette(CRGB* L, uint16_t N, uint8_t startIndex, uint8_t incIndex,
                  const PALETTE& pal, uint8_t brightness, TBlendType blendType)
{
    uint8_t colorIndex = startIndex;
    for( uint16_t i = 0; i < N; i++) {
        L[i] = ColorFromPalette( pal, colorIndex, brightness, blendType);
        colorIndex += incIndex;
    }
}

template <typename PALETTE>
void map_data_into_colors_through_palette(
	uint8_t *dataArray, uint16_t dataCount,
	CRGB* targetColorArray,
	const PALETTE& pal,
	uint8_t brightness=255,
	uint8_t opacity=255,
	TBlendType blendType=LINEARBLEND)
{
	for( uint16_t i = 0; i < dataCount; i++) {
		uint8_t d = dataArray[i];
		CRGB rgb = ColorFromPalette( pal, d, brightness, blendType);
		if( opacity == 255 ) {
			targetColorArray[i] = rgb;
		} else {
			targetColorArray[i].nscale8( 256 - opacity);
			rgb.nscale8_video( opacity);
			targetColorArray[i] += rgb;
		}
	}
}

// nblendPaletteTowardPalette:
//               Alter one palette by making it slightly more like
//               a 'target palette', used for palette cross-fades.
//
//               It does this by comparing each of the R, G, and B channels
//               of each entry in the current palette to the corresponding
//               entry in the target palette and making small adjustments:
//                 If the Red channel is too low, it will be increased.
//                 If the Red channel is too high, it will be slightly reduced.
//                 ... and likewise for Green and Blue channels.
//
//               Additionally, there are two significant visual improvements
//               to this algorithm implemented here.  First is this:
//                 When increasing a channel, it is stepped up by ONE.
//                 When decreasing a channel, it is stepped down by TWO.
//               Due to the way the eye perceives light, and the way colors
//               are represented in RGB, this produces a more uniform apparent
//               brightness when cross-fading between most palette colors.
//
//               The second visual tweak is limiting the number of changes
//               that will be made to the palette at once.  If all the palette
//               entries are changed at once, it can give a muddled appearance.
//               However, if only a few palette entries are changed at once,
//               you get a visually smoother transition: in the middle of the
//               cross-fade your current palette will actually contain some
//               colors from the old palette, a few blended colors, and some
//               colors from the new palette.
//               The maximum number of possible palette changes per call
//               is 48 (sixteen color entries time three channels each).
//               The default 'maximim number of changes' here is 12, meaning
//               that only approximately a quarter of the palette entries
//               will be changed per call.
void nblendPaletteTowardPalette( CRGBPalette16& currentPalette,
                                CRGBPalette16& targetPalette,
                                uint8_t maxChanges=24);




//  You can also define a static RGB palette very compactly in terms of a series
//  of connected color gradients.
//  For example, if you want the first 3/4ths of the palette to be a slow
//  gradient ramping from black to red, and then the remaining 1/4 of the
//  palette to be a quicker ramp to white, you specify just three points: the
//  starting black point (at index 0), the red midpoint (at index 192),
//  and the final white point (at index 255).  It looks like this:
//
//    index:  0                                    192          255
//            |----------r-r-r-rrrrrrrrRrRrRrRrRRRR-|-RRWRWWRWWW-|
//    color: (0,0,0)                           (255,0,0)    (255,255,255)
//
//  Here's how you'd define that gradient palette:
//
//    DEFINE_GRADIENT_PALETTE( black_to_red_to_white_p ) {
//          0,      0,  0,  0,    /* at index 0, black(0,0,0) */
//        192,    255,  0,  0,    /* at index 192, red(255,0,0) */
//        255,    255,255,255    /* at index 255, white(255,255,255) */
//    };
//
//  This format is designed for compact storage.  The example palette here
//  takes up just 12 bytes of PROGMEM (flash) storage, and zero bytes
//  of SRAM when not currently in use.
//
//  To use one of these gradient palettes, simply assign it into a
//  CRGBPalette16 or a CRGBPalette256, like this:
//
//    CRGBPalette16 pal = black_to_red_to_white_p;
//
//  When the assignment is made, the gradients are expanded out into
//  either 16 or 256 palette entries, depending on the kind of palette
//  object they're assigned to.
//
//  IMPORTANT NOTES & CAVEATS:
//
//  - The last 'index' position MUST BE 255!  Failure to end with
//    index 255 will result in program hangs or crashes.
//
//  - At this point, these gradient palette definitions MUST BE
//    stored in PROGMEM on AVR-based Arduinos.  If you use the
//    DEFINE_GRADIENT_PALETTE macro, this is taken care of automatically.
//










// Functions to apply gamma adjustments, either:
// - a single gamma adjustment to a single scalar value,
// - a single gamma adjustment to each channel of a CRGB color, or
// - different gamma adjustments for each channel of a CRFB color.
//
// Note that the gamma is specified as a traditional floating point value
// e.g., "2.5", and as such these functions should not be called in
// your innermost pixel loops, or in animations that are extremely
// low on program storage space.  Nevertheless, if you need these
// functions, here they are.
//
// Furthermore, bear in mind that CRGB leds have only eight bits
// per channel of color resolution, and that very small, subtle shadings
// may not be visible.
uint8_t applyGamma_video( uint8_t brightness, float gamma);
CRGB    applyGamma_video( const CRGB& orig, float gamma);
CRGB    applyGamma_video( const CRGB& orig, float gammaR, float gammaG, float gammaB);
// The "n" versions below modify their arguments in-place.
CRGB&  napplyGamma_video( CRGB& rgb, float gamma);
CRGB&  napplyGamma_video( CRGB& rgb, float gammaR, float gammaG, float gammaB);
void   napplyGamma_video( CRGB* rgbarray, uint16_t count, float gamma);
void   napplyGamma_video( CRGB* rgbarray, uint16_t count, float gammaR, float gammaG, float gammaB);




///@}
# 51 "..\\source\\FastLED/FastLED.h"
# 1 "..\\source\\FastLED\\pixelset.h"





# 1 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/stdlib.h"
/* -*- C++ -*- */
/*===--------------------------- complex.h --------------------------------===*/
/*                                                                            */
/*                     The LLVM Compiler Infrastructure                       */
/*                                                                            */
/* This file is dual licensed under the MIT and the University of Illinois Open
** Source Licenses. See LICENSE.TXT for details.
*/
/*===----------------------------------------------------------------------===*/

# 21 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/stdlib.h"

/*
    stdlib.h synopsis

Macros:

    EXIT_FAILURE
    EXIT_SUCCESS
    MB_CUR_MAX
    NULL
    RAND_MAX

Types:

    size_t
    div_t
    ldiv_t
    lldiv_t                                                               // C99

double    atof (const char* nptr);
int       atoi (const char* nptr);
long      atol (const char* nptr);
long long atoll(const char* nptr);                                        // C99
double             strtod  (const char* restrict nptr, char** restrict endptr);
float              strtof  (const char* restrict nptr, char** restrict endptr); // C99
long double        strtold (const char* restrict nptr, char** restrict endptr); // C99
long               strtol  (const char* restrict nptr, char** restrict endptr, int base);
long long          strtoll (const char* restrict nptr, char** restrict endptr, int base); // C99
unsigned long      strtoul (const char* restrict nptr, char** restrict endptr, int base);
unsigned long long strtoull(const char* restrict nptr, char** restrict endptr, int base); // C99
int rand(void);
void srand(unsigned int seed);
void* calloc(size_t nmemb, size_t size);
void free(void* ptr);
void* malloc(size_t size);
void* realloc(void* ptr, size_t size);
void abort(void);
int atexit(void (*func)(void));
void exit(int status);
void _Exit(int status);
char* getenv(const char* name);
int system(const char* string);
void* bsearch(const void* key, const void* base, size_t nmemb, size_t size,
              int (*compar)(const void *, const void *));
void qsort(void* base, size_t nmemb, size_t size,
           int (*compar)(const void *, const void *));
int         abs(      int j);
long        abs(     long j);
long long   abs(long long j);                                             // C++0X
long       labs(     long j);
long long llabs(long long j);                                             // C99
div_t     div(      int numer,       int denom);
ldiv_t    div(     long numer,      long denom);
lldiv_t   div(long long numer, long long denom);                          // C++0X
ldiv_t   ldiv(     long numer,      long denom);
lldiv_t lldiv(long long numer, long long denom);                          // C99
int mblen(const char* s, size_t n);
int mbtowc(wchar_t* restrict pwc, const char* restrict s, size_t n);
int wctomb(char* s, wchar_t wchar);
size_t mbstowcs(wchar_t* restrict pwcs, const char* restrict s, size_t n);
size_t wcstombs(char* restrict s, const wchar_t* restrict pwcs, size_t n);
int at_quick_exit(void (*func)(void))                                     // C++11
void quick_exit(int status);                                              // C++11
void *aligned_alloc(size_t alignment, size_t size);                       // C11

*/







# 1 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/stdlib.h"
/*****************************************************************************/
/* stdlib.h                                                                  */
/*                                                                           */
/* Copyright (c) 1993 Texas Instruments Incorporated                         */
/* http://www.ti.com/                                                        */
/*                                                                           */
/*  Redistribution and  use in source  and binary forms, with  or without    */
/*  modification,  are permitted provided  that the  following conditions    */
/*  are met:                                                                 */
/*                                                                           */
/*     Redistributions  of source  code must  retain the  above copyright    */
/*     notice, this list of conditions and the following disclaimer.         */
/*                                                                           */
/*     Redistributions in binary form  must reproduce the above copyright    */
/*     notice, this  list of conditions  and the following  disclaimer in    */
/*     the  documentation  and/or   other  materials  provided  with  the    */
/*     distribution.                                                         */
/*                                                                           */
/*     Neither the  name of Texas Instruments Incorporated  nor the names    */
/*     of its  contributors may  be used to  endorse or  promote products    */
/*     derived  from   this  software  without   specific  prior  written    */
/*     permission.                                                           */
/*                                                                           */
/*  THIS SOFTWARE  IS PROVIDED BY THE COPYRIGHT  HOLDERS AND CONTRIBUTORS    */
/*  "AS IS"  AND ANY  EXPRESS OR IMPLIED  WARRANTIES, INCLUDING,  BUT NOT    */
/*  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR    */
/*  A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT    */
/*  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,    */
/*  SPECIAL,  EXEMPLARY,  OR CONSEQUENTIAL  DAMAGES  (INCLUDING, BUT  NOT    */
/*  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,    */
/*  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY    */
/*  THEORY OF  LIABILITY, WHETHER IN CONTRACT, STRICT  LIABILITY, OR TORT    */
/*  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE    */
/*  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.     */
/*                                                                           */
/*****************************************************************************/















_Pragma("diag_push")
_Pragma("CHECK_MISRA(\"-6.3\")") /* standard types required for standard headers */
_Pragma("CHECK_MISRA(\"-8.5\")") /* need to define inline function */
_Pragma("CHECK_MISRA(\"-19.1\")") /* #includes required for implementation */
_Pragma("CHECK_MISRA(\"-19.7\")") /* need function-like macros */
_Pragma("CHECK_MISRA(\"-20.1\")") /* standard headers must define standard names */
_Pragma("CHECK_MISRA(\"-20.2\")") /* standard headers must define standard names */

/*---------------------------------------------------------------------------*/
/* Attributes are only available in relaxed ANSI mode.                       */
/*---------------------------------------------------------------------------*/
# 70 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/stdlib.h"


extern "C" {


_Pragma("diag_push")
_Pragma("CHECK_MISRA(\"-5.7\")") /* keep names intact */

typedef struct { int quot, rem; } div_t;




typedef struct { int quot, rem; } ldiv_t;







typedef struct { long long quot, rem; } lldiv_t;


_Pragma("diag_pop")

# 102 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/stdlib.h"





# 115 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/stdlib.h"

# 126 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/stdlib.h"








/*---------------------------------------------------------------*/
/* NOTE - Normally, abs, labs, and fabs are expanded inline, so  */
/*        no formal definition is really required. However, ANSI */
/*        requires that they exist as separate functions, so     */
/*        they are supplied in the library.  The prototype is    */
/*        here mainly for documentation.                         */
/*---------------------------------------------------------------*/
_Pragma("diag_push")
_Pragma("CHECK_MISRA(\"-16.4\")") /* false positives due to builtin declarations */
      int       abs(int _val); 
      long      labs(long _val);

      long long llabs(long long _val);

_Pragma("diag_pop")

     int       atoi(const char *_st);
     long      atol(const char *_st);

     long long atoll(const char *_st);

     char     *ltoa(long val, char * buffer, int radix);
          extern  double    atof(const char *_st);

     long      strtol(const char * __restrict _st,
                                  char ** __restrict _endptr, int _base);
     unsigned long strtoul(const char * __restrict _st,
                                       char ** __restrict _endptr, int _base);

     long long strtoll(const char * __restrict _st,
                                   char ** __restrict _endptr, int _base);
     unsigned long long strtoull(const char * __restrict _st,
                                             char ** __restrict _endptr,
					     int _base);

     float     strtof(const char * __restrict _st,
                                  char ** __restrict _endptr);
     double    strtod(const char * __restrict _st,
                                  char ** __restrict _endptr);
     long double strtold(const char * __restrict _st,
                                     char ** __restrict _endptr);
    
     int    rand(void);
     void   srand(unsigned _seed);
    
     void  *calloc(size_t _num, size_t _size)
               ;
     void  *malloc(size_t _size)
               ;
     void  *realloc(void *_ptr, size_t _size);
     void   free(void *_ptr);
     void  *memalign(size_t _aln, size_t _size)
               ;

     void  *aligned_alloc(size_t _aln, size_t _size)
               ;


     void   __TI_heap_stats(void);
     void  *__TI_heap_check(void);
     size_t __TI_heap_total_available(void);
     size_t __TI_heap_largest_available(void);
    
    [[noreturn]]  void abort(void) noexcept;

    typedef void (*__TI_atexit_fn)(void);
     int    atexit(__TI_atexit_fn _func) noexcept;

    typedef int (*__TI_compar_fn)(const void *_a,const void *_b);
     void  *bsearch(const void *_key, const void *_base,
                                size_t _nmemb, size_t _size, 
                                __TI_compar_fn compar);
     void   qsort(void *_base, size_t _nmemb, size_t _size, 
                              __TI_compar_fn compar);

    [[noreturn]]  void exit(int _status);

    [[noreturn]]  void _Exit(int _status);



    [[noreturn]]  void quick_exit(int _status);
     int at_quick_exit(__TI_atexit_fn _func) noexcept;

    
     div_t  div(int _numer, int _denom);
     ldiv_t ldiv(long _numer, long _denom);

     lldiv_t lldiv(long long _numer, long long _denom);


     char  *getenv(const char *_string);
     int    system(const char *_name);

     int    mblen(const char *_s, size_t _n);
     size_t mbstowcs(wchar_t * __restrict _dest,
                                 const char * __restrict _src, size_t _n);
     int    mbtowc(wchar_t * __restrict _dest,
                               const char * __restrict _src, size_t _n);

     size_t wcstombs(char * __restrict _dest,
                                 const wchar_t * __restrict _src, size_t _n);
     int    wctomb(char *_s, wchar_t _wc);


} /* extern "C" */



# 251 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/stdlib.h"


/*****************************************************************************/
/* If we leave these active when in relaxed ANSI mode, we get infinite       */
/* recursion due to changes in type matching.  See comment in                */
/* ansi/sys_predef.c line 4377 on why we specifically check the              */
/* __TI_PROPRIETARY_STRICT_ANSI_MACRO macro here and its relation to strict  */
/* ANSI and relaxed ANSI parser modes.                                       */
/*****************************************************************************/
# 287 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/stdlib.h"

/* C2000-specific additions to header implemented with #include */

# 431 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/stdlib.h"

_Pragma("diag_pop")








_Pragma("diag_push")
_Pragma("CHECK_MISRA(\"-19.15\")") /* FreeBSD library requires code outside of the
                                 include guard */
_Pragma("CHECK_MISRA(\"-19.1\")")

/*----------------------------------------------------------------------------*/
/* If sys/cdefs.h is available, go ahead and include it. xlocale.h assumes    */
/* this file will have already included sys/cdefs.h.                          */
/*----------------------------------------------------------------------------*/




/*----------------------------------------------------------------------------*/
/* Include xlocale/_stdlib.h if xlocale.h has already been included. This     */
/* comes from FreeBSD's stdlib.h.                                             */
/*----------------------------------------------------------------------------*/
# 464 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/stdlib.h"

/*----------------------------------------------------------------------------*/
/* The _TI_PROPRIETARY_PRAGMA macro exoands to a C99 _Pragma operator. */
/* The _Pragma statement is handled after the Pragma itself causing unexpected */
/* warnings due to the diagnostic state being popped. This is done to suppress */
/* unexpected 19.15 misra warnings.                                   */
/*----------------------------------------------------------------------------*/

#pragma diag_pop
# 95 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/stdlib.h"



extern "C++" {

# 108 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/stdlib.h"

/* MSVCRT already has the correct prototype in <stdlib.h> if __cplusplus is defined */

inline __attribute__ ((__always_inline__)) long      abs(     long __x) noexcept {return  labs(__x);}

inline __attribute__ ((__always_inline__)) long long abs(long long __x) noexcept {return llabs(__x);}


inline __attribute__ ((__always_inline__))  ldiv_t div(     long __x,      long __y) noexcept {return  ldiv(__x, __y);}

inline __attribute__ ((__always_inline__)) lldiv_t div(long long __x, long long __y) noexcept {return lldiv(__x, __y);}



}  /* extern "C++" */



# 8 "..\\source\\FastLED\\pixelset.h"


/////  Represents a set of CRGB led objects.  Provides the [] array operator, and works like a normal array in that case.
/////  This should be kept in sync with the set of functions provided by CRGB as well as functions in colorutils.  Note
/////  that a pixel set is a window into another set of led data, it is not its own set of led data.
template<class PIXEL_TYPE>
class CPixelView {
public:
    const int8_t  dir;
    const int   len;
    PIXEL_TYPE * const leds;
    PIXEL_TYPE * const end_pos;

public:
    /// PixelSet copy constructor
    inline CPixelView(const CPixelView & other) : dir(other.dir), len(other.len), leds(other.leds), end_pos(other.end_pos) {}

    /// pixelset constructor for a pixel set starting at the given PIXEL_TYPE* and going for _len leds.  Note that the length
    /// can be backwards, creating a PixelSet that walks backwards over the data
    /// @param leds point to the raw led data
    /// @param len how many leds in this set
    inline CPixelView(PIXEL_TYPE *_leds, int _len) : dir(_len < 0 ? -1 : 1), len(_len), leds(_leds), end_pos(_leds + _len) {}

    /// PixelSet constructor for the given set of leds, with start and end boundaries.  Note that start can be after
    /// end, resulting in a set that will iterate backwards
    /// @param leds point to the raw led data
    /// @param start the start index of the leds for this array
    /// @param end the end index of the leds for this array
    inline CPixelView(PIXEL_TYPE *_leds, int _start, int _end) : dir(((_end-_start)<0) ? -1 : 1), len((_end - _start) + dir), leds(_leds + _start), end_pos(_leds + _start + len) {}

    /// Get the size of this set
    /// @return the size of the set
    int size() { return abs(len); }

    /// Whether or not this set goes backwards
    /// @return whether or not the set is backwards
    bool reversed() { return len < 0; }

    /// do these sets point to the same thing (note, this is different from the contents of the set being the same)
    bool operator==(const CPixelView & rhs) const { return leds == rhs.leds && len == rhs.len && dir == rhs.dir; }

    /// do these sets point to the different things (note, this is different from the contents of the set being the same)
    bool operator!=(const CPixelView & rhs) const { return leds != rhs.leds || len != rhs.len || dir != rhs.dir; }

    /// access a single element in this set, just like an array operator
    inline PIXEL_TYPE & operator[](int x) const { if(dir & 0x80) { return leds[-x]; } else { return leds[x]; } }

    /// Access an inclusive subset of the leds in this set.  Note that start can be greater than end, which will
    /// result in a reverse ordering for many functions (useful for mirroring)
    /// @param start the first element from this set for the new subset
    /// @param end the last element for the new subset
    inline CPixelView operator()(int start, int end) { return CPixelView(leds, start, end); }

    /// Access an inclusive subset of the leds in this set, starting from the first.
    /// @param end the last element for the new subset
    /// Not sure i want this? inline CPixelView operator()(int end) { return CPixelView(leds, 0, end); }

    /// Return the reverse ordering of this set
    inline CPixelView operator-() { return CPixelView(leds, len - dir, 0); }

    /// Return a pointer to the first element in this set
    inline operator PIXEL_TYPE* () const { return leds; }

    /// Assign the passed in color to all elements in this set
    /// @param color the new color for the elements in the set
    inline CPixelView & operator=(const PIXEL_TYPE & color) {
        for(iterator pixel = begin(), _end = end(); pixel != _end; ++pixel) { (*pixel) = color; }
        return *this;
    }


    void dump() const {
        /**
        Serial.print("len: "); Serial.print(len); Serial.print(", dir:"); Serial.print((int)dir);
        Serial.print(", range:"); Serial.print((uint32_t)leds); Serial.print("-"); Serial.print((uint32_t)end_pos);
        Serial.print(", diff:"); Serial.print((int32_t)(end_pos - leds));
        Serial.println("");
        **/
    }

    /// Copy the contents of the passed in set to our set.  Note if one set is smaller than the other, only the
    /// smallest number of items will be copied over.
    inline CPixelView & operator=(const CPixelView & rhs) {
        for(iterator pixel = begin(), rhspixel = rhs.begin(), _end = end(), rhs_end = rhs.end(); (pixel != _end) && (rhspixel != rhs_end); ++pixel, ++rhspixel) {
            (*pixel) = (*rhspixel);
        }
        return *this;
    }

    /// @name modification/scaling operators
    //@{
    /// Add the passed in value to r,g, b for all the pixels in this set
    inline CPixelView & addToRGB(uint8_t inc) { for(iterator pixel = begin(), _end = end(); pixel != _end; ++pixel) { (*pixel) += inc; } return *this; }
    /// Add every pixel in the other set to this set
    inline CPixelView & operator+=(CPixelView & rhs) { for(iterator pixel = begin(), rhspixel = rhs.begin(), _end = end(), rhs_end = rhs.end(); (pixel != _end) && (rhspixel != rhs_end); ++pixel, ++rhspixel) { (*pixel) += (*rhspixel); } return *this; }

    /// Subtract the passed in value from r,g,b for all pixels in this set
    inline CPixelView & subFromRGB(uint8_t inc) { for(iterator pixel = begin(), _end = end(); pixel != _end; ++pixel) { (*pixel) -= inc; } return *this; }
    /// Subtract every pixel in the other set from this set
    inline CPixelView & operator-=(CPixelView & rhs) { for(iterator pixel = begin(), rhspixel = rhs.begin(), _end = end(), rhs_end = rhs.end(); (pixel != _end) && (rhspixel != rhs_end); ++pixel, ++rhspixel) { (*pixel) -= (*rhspixel); } return *this; }

    /// Increment every pixel value in this set
    inline CPixelView & operator++() { for(iterator pixel = begin(), _end = end(); pixel != _end; ++pixel) { (*pixel)++; } return *this; }
    /// Increment every pixel value in this set
    inline CPixelView & operator++(int DUMMY_ARG) { for(iterator pixel = begin(), _end = end(); pixel != _end; ++pixel) { (*pixel)++; } return *this; }

    /// Decrement every pixel value in this set
    inline CPixelView & operator--() { for(iterator pixel = begin(), _end = end(); pixel != _end; ++pixel) { (*pixel)--; } return *this; }
    /// Decrement every pixel value in this set
    inline CPixelView & operator--(int DUMMY_ARG) { for(iterator pixel = begin(), _end = end(); pixel != _end; ++pixel) { (*pixel)--; } return *this; }

    /// Divide every led by the given value
    inline CPixelView & operator/=(uint8_t d) { for(iterator pixel = begin(), _end = end(); pixel != _end; ++pixel) { (*pixel) /= d; } return *this; }
    /// Shift every led in this set right by the given number of bits
    inline CPixelView & operator>>=(uint8_t d) { for(iterator pixel = begin(), _end = end(); pixel != _end; ++pixel) { (*pixel) >>= d; } return *this; }
    /// Multiply every led in this set by the given value
    inline CPixelView & operator*=(uint8_t d) { for(iterator pixel = begin(), _end = end(); pixel != _end; ++pixel) { (*pixel) *= d; } return *this; }

    /// Scale every led by the given scale
    inline CPixelView & nscale8_video(uint8_t scaledown) { for(iterator pixel = begin(), _end = end(); pixel != _end; ++pixel) { (*pixel).nscale8_video(scaledown); } return *this;}
    /// Scale down every led by the given scale
    inline CPixelView & operator%=(uint8_t scaledown) { for(iterator pixel = begin(), _end = end(); pixel != _end; ++pixel) { (*pixel).nscale8_video(scaledown); } return *this; }
    /// Fade every led down by the given scale
    inline CPixelView & fadeLightBy(uint8_t fadefactor) { return nscale8_video(255 - fadefactor); }

    /// Scale every led by the given scale
    inline CPixelView & nscale8(uint8_t scaledown) { for(iterator pixel = begin(), _end = end(); pixel != _end; ++pixel) { (*pixel).nscale8(scaledown); } return *this; }
    /// Scale every led by the given scale
    inline CPixelView & nscale8(PIXEL_TYPE & scaledown) { for(iterator pixel = begin(), _end = end(); pixel != _end; ++pixel) { (*pixel).nscale8(scaledown); } return *this; }
    /// Scale every led in this set by every led in the other set
    inline CPixelView & nscale8(CPixelView & rhs) { for(iterator pixel = begin(), rhspixel = rhs.begin(), _end = end(), rhs_end = rhs.end(); (pixel != _end) && (rhspixel != rhs_end); ++pixel, ++rhspixel) { (*pixel).nscale8((*rhspixel)); } return *this; }

    /// Fade every led down by the given scale
    inline CPixelView & fadeToBlackBy(uint8_t fade) { return nscale8(255 - fade); }

    /// Apply the PIXEL_TYPE |= operator to every pixel in this set with the given PIXEL_TYPE value (bringing each channel to the higher of the two values)
    inline CPixelView & operator|=(const PIXEL_TYPE & rhs) { for(iterator pixel = begin(), _end = end(); pixel != _end; ++pixel) { (*pixel) |= rhs; } return *this; }
    /// Apply the PIXEL_TYPE |= operator to every pixel in this set with every pixel in the passed in set
    inline CPixelView & operator|=(const CPixelView & rhs) { for(iterator pixel = begin(), rhspixel = rhs.begin(), _end = end(), rhs_end = rhs.end(); (pixel != _end) && (rhspixel != rhs_end); ++pixel, ++rhspixel) { (*pixel) |= (*rhspixel); } return *this; }
    /// Apply the PIXEL_TYPE |= operator to every pixel in this set
    inline CPixelView & operator|=(uint8_t d) { for(iterator pixel = begin(), _end = end(); pixel != _end; ++pixel) { (*pixel) |= d; } return *this; }

    /// Apply the PIXEL_TYPE &= operator to every pixel in this set with the given PIXEL_TYPE value (bringing each channel down to the lower of the two values)
    inline CPixelView & operator&=(const PIXEL_TYPE & rhs) { for(iterator pixel = begin(), _end = end(); pixel != _end; ++pixel) { (*pixel) &= rhs; } return *this; }
    /// Apply the PIXEL_TYPE &= operator to every pixel in this set with every pixel in the passed in set
    inline CPixelView & operator&=(const CPixelView & rhs) { for(iterator pixel = begin(), rhspixel = rhs.begin(), _end = end(), rhs_end = rhs.end(); (pixel != _end) && (rhspixel != rhs_end); ++pixel, ++rhspixel) { (*pixel) &= (*rhspixel); } return *this; }
    /// APply the PIXEL_TYPE &= operator to every pixel in this set with the passed in value
    inline CPixelView & operator&=(uint8_t d) { for(iterator pixel = begin(), _end = end(); pixel != _end; ++pixel) { (*pixel) &= d; } return *this; }
    //@}

    /// Returns whether or not any leds in this set are non-zero
    inline operator bool() { for(iterator pixel = begin(), _end = end(); pixel != _end; ++pixel) { if((*pixel)) return true; } return false; }

    // Color util functions
    inline CPixelView & fill_solid(const PIXEL_TYPE & color) { *this = color; return *this; }
    inline CPixelView & fill_solid(const CHSV & color) { if(dir>0) { *this = color; return *this; } }

    inline CPixelView & fill_rainbow(uint8_t initialhue, uint8_t deltahue=5) {
        if(dir >= 0) {
            ::fill_rainbow(leds,len,initialhue,deltahue);
        } else {
            ::fill_rainbow(leds+len+1,-len,initialhue,deltahue);
        }
        return *this;
    }

    inline CPixelView & fill_gradient(const CHSV & startcolor, const CHSV & endcolor, TGradientDirectionCode directionCode  = SHORTEST_HUES) {
        if(dir >= 0) {
            ::fill_gradient(leds,len,startcolor, endcolor, directionCode);
        } else {
            ::fill_gradient(leds + len + 1, (-len), endcolor, startcolor, directionCode);
        }
        return *this;
    }

    inline CPixelView & fill_gradient(const CHSV & c1, const CHSV & c2, const CHSV &  c3, TGradientDirectionCode directionCode = SHORTEST_HUES) {
        if(dir >= 0) {
            ::fill_gradient(leds, len, c1, c2, c3, directionCode);
        } else {
            ::fill_gradient(leds + len + 1, -len, c3, c2, c1, directionCode);
        }
        return *this;
    }

    inline CPixelView & fill_gradient(const CHSV & c1, const CHSV & c2, const CHSV & c3, const CHSV & c4, TGradientDirectionCode directionCode = SHORTEST_HUES) {
        if(dir >= 0) {
            ::fill_gradient(leds, len, c1, c2, c3, c4, directionCode);
        } else {
            ::fill_gradient(leds + len + 1, -len, c4, c3, c2, c1, directionCode);
        }
        return *this;
    }

    inline CPixelView & fill_gradient_RGB(const PIXEL_TYPE & startcolor, const PIXEL_TYPE & endcolor, TGradientDirectionCode directionCode  = SHORTEST_HUES) {
        if(dir >= 0) {
            ::fill_gradient_RGB(leds,len,startcolor, endcolor);
        } else {
            ::fill_gradient_RGB(leds + len + 1, (-len), endcolor, startcolor);
        }
        return *this;
    }

    inline CPixelView & fill_gradient_RGB(const PIXEL_TYPE & c1, const PIXEL_TYPE & c2, const PIXEL_TYPE &  c3) {
        if(dir >= 0) {
            ::fill_gradient_RGB(leds, len, c1, c2, c3);
        } else {
            ::fill_gradient_RGB(leds + len + 1, -len, c3, c2, c1);
        }
        return *this;
    }

    inline CPixelView & fill_gradient_RGB(const PIXEL_TYPE & c1, const PIXEL_TYPE & c2, const PIXEL_TYPE & c3, const PIXEL_TYPE & c4) {
        if(dir >= 0) {
            ::fill_gradient_RGB(leds, len, c1, c2, c3, c4);
        } else {
            ::fill_gradient_RGB(leds + len + 1, -len, c4, c3, c2, c1);
        }
        return *this;
    }

    inline CPixelView & nblend(const PIXEL_TYPE & overlay, fract8 amountOfOverlay) { for(iterator pixel = begin(), _end = end(); pixel != _end; ++pixel) { ::nblend((*pixel), overlay, amountOfOverlay); } return *this; }
    inline CPixelView & nblend(const CPixelView & rhs, fract8 amountOfOverlay) { for(iterator pixel = begin(), rhspixel = rhs.begin(), _end = end(), rhs_end = rhs.end(); (pixel != _end) && (rhspixel != rhs_end); ++pixel, ++rhspixel) { ::nblend((*pixel), (*rhspixel), amountOfOverlay); } return *this; }

    // Note: only bringing in a 1d blur, not sure 2d blur makes sense when looking at sub arrays
    inline CPixelView & blur1d(fract8 blur_amount) {
        if(dir >= 0) {
            ::blur1d(leds, len, blur_amount);
        } else {
            ::blur1d(leds + len + 1, -len, blur_amount);
        }
        return *this;
    }

    inline CPixelView & napplyGamma_video(float gamma) {
        if(dir >= 0) {
            ::napplyGamma_video(leds, len, gamma);
        } else {
            ::napplyGamma_video(leds + len + 1, -len, gamma);
        }
        return *this;
    }

    inline CPixelView & napplyGamma_video(float gammaR, float gammaG, float gammaB) {
        if(dir >= 0) {
            ::napplyGamma_video(leds, len, gammaR, gammaG, gammaB);
        } else {
            ::napplyGamma_video(leds + len + 1, -len, gammaR, gammaG, gammaB);
        }
        return *this;
    }

    // TODO: Make this a fully specified/proper iterator
    template <class T>
    class pixelset_iterator_base {
        T * leds;
        const int8_t dir;

    public:
        __attribute__((always_inline)) inline pixelset_iterator_base(const pixelset_iterator_base & rhs) : leds(rhs.leds), dir(rhs.dir) {}
        __attribute__((always_inline)) inline pixelset_iterator_base(T * _leds, const char _dir) : leds(_leds), dir(_dir) {}

        __attribute__((always_inline)) inline pixelset_iterator_base& operator++() { leds += dir; return *this; }
        __attribute__((always_inline)) inline pixelset_iterator_base operator++(int) { pixelset_iterator_base tmp(*this); leds += dir; return tmp; }

        __attribute__((always_inline)) inline bool operator==(pixelset_iterator_base & other) const { return leds == other.leds; } // && set==other.set; }
        __attribute__((always_inline)) inline bool operator!=(pixelset_iterator_base & other) const { return leds != other.leds; } // || set != other.set; }

        __attribute__((always_inline)) inline PIXEL_TYPE& operator*() const { return *leds; }
    };

    typedef pixelset_iterator_base<PIXEL_TYPE> iterator;
    typedef pixelset_iterator_base<const PIXEL_TYPE> const_iterator;

    iterator begin() { return iterator(leds, dir); }
    iterator end() { return iterator(end_pos, dir); }

    iterator begin() const { return iterator(leds, dir); }
    iterator end() const { return iterator(end_pos, dir); }

    const_iterator cbegin() const { return const_iterator(leds, dir); }
    const_iterator cend() const { return const_iterator(end_pos, dir); }
};

typedef CPixelView<CRGB> CRGBSet;

__attribute__((always_inline))
inline CRGB *operator+(const CRGBSet & pixels, int offset) { return (CRGB*)pixels + offset; }


template<int SIZE>
class CRGBArray : public CPixelView<CRGB> {
    CRGB rawleds[SIZE];

public:
    CRGBArray() : CPixelView<CRGB>(rawleds, SIZE) {}
    using CPixelView::operator=;
};

# 52 "..\\source\\FastLED/FastLED.h"
# 1 "..\\source\\FastLED\\colorpalettes.h"






///@file colorpalettes.h
/// contains definitions for the predefined color palettes supplied by FastLED.



///@defgroup Colorpalletes Pre-defined color palletes
/// These schemes are all declared as "PROGMEM", meaning
/// that they won't take up SRAM on AVR chips until used.
/// Furthermore, the compiler won't even include these
/// in your PROGMEM (flash) storage unless you specifically
/// use each one, so you only 'pay for' those you actually use.

///@{

/// Cloudy color pallete
extern const TProgmemRGBPalette16 CloudColors_p ;
/// Lava colors
extern const TProgmemRGBPalette16 LavaColors_p ;
/// Ocean colors, blues and whites
extern const TProgmemRGBPalette16 OceanColors_p ;
/// Forest colors, greens
extern const TProgmemRGBPalette16 ForestColors_p ;

/// HSV Rainbow
extern const TProgmemRGBPalette16 RainbowColors_p ;


/// HSV Rainbow colors with alternatating stripes of black
extern const TProgmemRGBPalette16 RainbowStripeColors_p ;

/// HSV color ramp: blue purple ping red orange yellow (and back)
/// Basically, everything but the greens, which tend to make
/// people's skin look unhealthy.  This palette is good for
/// lighting at a club or party, where it'll be shining on people.
extern const TProgmemRGBPalette16 PartyColors_p ;

/// Approximate "black body radiation" palette, akin to
/// the FastLED 'HeatColor' function.
/// Recommend that you use values 0-240 rather than
/// the usual 0-255, as the last 15 colors will be
/// 'wrapping around' from the hot end to the cold end,
/// which looks wrong.
extern const TProgmemRGBPalette16 HeatColors_p ;


__attribute__ ((aligned (4))) extern const TProgmemRGBGradientPalette_byte Rainbow_gp[] ;



///@}
# 53 "..\\source\\FastLED/FastLED.h"

# 1 "..\\source\\FastLED\\noise.h"







///@file noise.h
/// Noise functions provided by the library.

///@defgroup Noise Noise functions
///Simplex noise function definitions
///@{
/// @name scaled 16 bit noise functions
///@{
/// 16 bit, fixed point implementation of perlin's Simplex Noise.  Coordinates are
/// 16.16 fixed point values, 32 bit integers with integral coordinates in the high 16
/// bits and fractional in the low 16 bits, and the function takes 1d, 2d, and 3d coordinate
/// values.  These functions are scaled to return 0-65535

extern uint16_t inoise16(uint32_t x, uint32_t y, uint32_t z);
extern uint16_t inoise16(uint32_t x, uint32_t y);
extern uint16_t inoise16(uint32_t x);
///@}

/// @name raw 16 bit noise functions
//@{
/// 16 bit raw versions of the noise functions.  These values are not scaled/altered and have
/// output values roughly in the range (-18k,18k)
extern int16_t inoise16_raw(uint32_t x, uint32_t y, uint32_t z);
extern int16_t inoise16_raw(uint32_t x, uint32_t y);
extern int16_t inoise16_raw(uint32_t x);
///@}

/// @name 8 bit scaled noise functions
///@{
/// 8 bit, fixed point implementation of perlin's Simplex Noise.  Coordinates are
/// 8.8 fixed point values, 16 bit integers with integral coordinates in the high 8
/// bits and fractional in the low 8 bits, and the function takes 1d, 2d, and 3d coordinate
/// values.  These functions are scaled to return 0-255
extern uint8_t inoise8(uint16_t x, uint16_t y, uint16_t z);
extern uint8_t inoise8(uint16_t x, uint16_t y);
extern uint8_t inoise8(uint16_t x);
///@}

/// @name 8 bit raw noise functions
///@{
/// 8 bit raw versions of the noise functions.  These values are not scaled/altered and have
/// output values roughly in the range (-70,70)
extern int8_t inoise8_raw(uint16_t x, uint16_t y, uint16_t z);
extern int8_t inoise8_raw(uint16_t x, uint16_t y);
extern int8_t inoise8_raw(uint16_t x);
///@}

///@name raw fill functions
///@{
/// Raw noise fill functions - fill into a 1d or 2d array of 8-bit values using either 8-bit noise or 16-bit noise
/// functions.
///@param pData the array of data to write into
///@param num_points the number of points of noise to compute
///@param octaves the number of octaves to use for noise
///@param x the x position in the noise field
///@param y the y position in the noise field for 2d functions
///@param scalex the scale (distance) between x points when filling in noise
///@param scaley the scale (distance) between y points when filling in noise
///@param time the time position for the noise field
void fill_raw_noise8(uint8_t *pData, uint8_t num_points, uint8_t octaves, uint16_t x, int scalex, uint16_t time);
void fill_raw_noise16into8(uint8_t *pData, uint8_t num_points, uint8_t octaves, uint32_t x, int scalex, uint32_t time);
void fill_raw_2dnoise8(uint8_t *pData, int width, int height, uint8_t octaves, uint16_t x, int scalex, uint16_t y, int scaley, uint16_t time);
void fill_raw_2dnoise16into8(uint8_t *pData, int width, int height, uint8_t octaves, uint32_t x, int scalex, uint32_t y, int scaley, uint32_t time);

void fill_raw_2dnoise16(uint16_t *pData, int width, int height, uint8_t octaves, q88 freq88, fract16 amplitude, int skip, uint32_t x, int scalex, uint32_t y, int scaley, uint32_t time);
void fill_raw_2dnoise16into8(uint8_t *pData, int width, int height, uint8_t octaves, q44 freq44, fract8 amplitude, int skip, uint32_t x, int scalex, uint32_t y, int scaley, uint32_t time);
///@}

///@name fill functions
///@{
/// fill functions to fill leds with values based on noise functions.  These functions use the fill_raw_* functions as appropriate.
void fill_noise8(CRGB *leds, int num_leds,
            uint8_t octaves, uint16_t x, int scale,
            uint8_t hue_octaves, uint16_t hue_x, int hue_scale,
            uint16_t time);
void fill_noise16(CRGB *leds, int num_leds,
            uint8_t octaves, uint16_t x, int scale,
            uint8_t hue_octaves, uint16_t hue_x, int hue_scale,
            uint16_t time, uint8_t hue_shift=0);
void fill_2dnoise8(CRGB *leds, int width, int height, bool serpentine,
            uint8_t octaves, uint16_t x, int xscale, uint16_t y, int yscale, uint16_t time,
            uint8_t hue_octaves, uint16_t hue_x, int hue_xscale, uint16_t hue_y, uint16_t hue_yscale,uint16_t hue_time,bool blend);
void fill_2dnoise16(CRGB *leds, int width, int height, bool serpentine,
            uint8_t octaves, uint32_t x, int xscale, uint32_t y, int yscale, uint32_t time,
            uint8_t hue_octaves, uint16_t hue_x, int hue_xscale, uint16_t hue_y, uint16_t hue_yscale,uint16_t hue_time, bool blend, uint16_t hue_shift=0);


///@}

# 55 "..\\source\\FastLED/FastLED.h"


# 14 "../source/Leds.cpp"

# 1 "..\\source\\Leds.h"
/*
 * Leds.h
 *
 *  Created on: Aug 18, 2020
 *      Author: Dan
 */




//#include "defs.h"


//extern void updateLeds(UArg arg0, UArg arg1);


# 16 "../source/Leds.cpp"
# 1 "..\\source\\defs.h"
/*
 * defs.h
 *
 *  Created on: Aug 16, 2020
 *      Author: Dan
 */




# 1 "..\\source\\utils/ioDefs.h"



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 369 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== PREFIX ALIASES ========
 */






/* module prefix */
# 422 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"



/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 6 "..\\source\\utils/ioDefs.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/System.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 426 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/System.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 449 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/System.h"


/*
 * ======== PREFIX ALIASES ========
 */



# 516 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/System.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 7 "..\\source\\utils/ioDefs.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/Hwi.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     CREATE ARGS
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION DECLARATIONS
 *     CONVERTORS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 58 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/Hwi.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 132 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 155 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 59 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/Hwi.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/Hwi__prologue.h"
/*
 * Copyright (c) 2012, Texas Instruments Incorporated
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * *  Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * *  Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * *  Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
# 60 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/Hwi.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/package/package.defs.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */





/*
 * ======== module ti.sysbios.family.arm.m3.Clobber ========
 */


/*
 * ======== module ti.sysbios.family.arm.m3.Hwi ========
 */

typedef struct ti_sysbios_family_arm_m3_Hwi_CCR ti_sysbios_family_arm_m3_Hwi_CCR;
typedef struct ti_sysbios_family_arm_m3_Hwi_NVIC ti_sysbios_family_arm_m3_Hwi_NVIC;
typedef struct ti_sysbios_family_arm_m3_Hwi_ExcContext ti_sysbios_family_arm_m3_Hwi_ExcContext;
typedef struct ti_sysbios_family_arm_m3_Hwi_Module_State ti_sysbios_family_arm_m3_Hwi_Module_State;
typedef struct ti_sysbios_family_arm_m3_Hwi_Fxns__ ti_sysbios_family_arm_m3_Hwi_Fxns__;
typedef const ti_sysbios_family_arm_m3_Hwi_Fxns__* ti_sysbios_family_arm_m3_Hwi_Module;
typedef struct ti_sysbios_family_arm_m3_Hwi_Params ti_sysbios_family_arm_m3_Hwi_Params;
typedef struct ti_sysbios_family_arm_m3_Hwi_Object ti_sysbios_family_arm_m3_Hwi_Object;
typedef struct ti_sysbios_family_arm_m3_Hwi_Struct ti_sysbios_family_arm_m3_Hwi_Struct;
typedef ti_sysbios_family_arm_m3_Hwi_Object* ti_sysbios_family_arm_m3_Hwi_Handle;
typedef struct ti_sysbios_family_arm_m3_Hwi_Object__ ti_sysbios_family_arm_m3_Hwi_Instance_State;
typedef ti_sysbios_family_arm_m3_Hwi_Object* ti_sysbios_family_arm_m3_Hwi_Instance;

/*
 * ======== module ti.sysbios.family.arm.m3.IntrinsicsSupport ========
 */

typedef struct ti_sysbios_family_arm_m3_IntrinsicsSupport_Fxns__ ti_sysbios_family_arm_m3_IntrinsicsSupport_Fxns__;
typedef const ti_sysbios_family_arm_m3_IntrinsicsSupport_Fxns__* ti_sysbios_family_arm_m3_IntrinsicsSupport_Module;

/*
 * ======== module ti.sysbios.family.arm.m3.TaskSupport ========
 */

typedef struct ti_sysbios_family_arm_m3_TaskSupport_Fxns__ ti_sysbios_family_arm_m3_TaskSupport_Fxns__;
typedef const ti_sysbios_family_arm_m3_TaskSupport_Fxns__* ti_sysbios_family_arm_m3_TaskSupport_Module;

/*
 * ======== module ti.sysbios.family.arm.m3.Timer ========
 */

typedef struct ti_sysbios_family_arm_m3_Timer_Module_State ti_sysbios_family_arm_m3_Timer_Module_State;
typedef struct ti_sysbios_family_arm_m3_Timer_Fxns__ ti_sysbios_family_arm_m3_Timer_Fxns__;
typedef const ti_sysbios_family_arm_m3_Timer_Fxns__* ti_sysbios_family_arm_m3_Timer_Module;
typedef struct ti_sysbios_family_arm_m3_Timer_Params ti_sysbios_family_arm_m3_Timer_Params;
typedef struct ti_sysbios_family_arm_m3_Timer_Object ti_sysbios_family_arm_m3_Timer_Object;
typedef struct ti_sysbios_family_arm_m3_Timer_Struct ti_sysbios_family_arm_m3_Timer_Struct;
typedef ti_sysbios_family_arm_m3_Timer_Object* ti_sysbios_family_arm_m3_Timer_Handle;
typedef struct ti_sysbios_family_arm_m3_Timer_Object__ ti_sysbios_family_arm_m3_Timer_Instance_State;
typedef ti_sysbios_family_arm_m3_Timer_Object* ti_sysbios_family_arm_m3_Timer_Instance;

/*
 * ======== module ti.sysbios.family.arm.m3.TimestampProvider ========
 */

typedef struct ti_sysbios_family_arm_m3_TimestampProvider_Module_State ti_sysbios_family_arm_m3_TimestampProvider_Module_State;
typedef struct ti_sysbios_family_arm_m3_TimestampProvider_Fxns__ ti_sysbios_family_arm_m3_TimestampProvider_Fxns__;
typedef const ti_sysbios_family_arm_m3_TimestampProvider_Fxns__* ti_sysbios_family_arm_m3_TimestampProvider_Module;

/*
 * ======== module ti.sysbios.family.arm.m3.Power ========
 */

typedef struct ti_sysbios_family_arm_m3_Power_Fxns__ ti_sysbios_family_arm_m3_Power_Fxns__;
typedef const ti_sysbios_family_arm_m3_Power_Fxns__* ti_sysbios_family_arm_m3_Power_Module;


# 61 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/Hwi.h"

# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 315 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 330 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 389 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Diags.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 63 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/Hwi.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 293 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 308 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 390 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Log.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:47; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 64 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/Hwi.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 223 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 238 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 264 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Assert.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:43; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 65 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/Hwi.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 369 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 425 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 66 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/Hwi.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/BIOS.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 439 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/BIOS.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 468 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/BIOS.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 67 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/Hwi.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/interfaces/IHwi.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     CREATE ARGS
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */


















/*
 * ======== INCLUDES ========
 */



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 362 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"

/*
 * ======== PREFIX ALIASES ========
 */

# 423 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Types.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 54 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/interfaces/IHwi.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 132 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 155 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IInstance.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 55 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/interfaces/IHwi.h"


# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 369 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 425 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 58 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/interfaces/IHwi.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     VIRTUAL FUNCTIONS
 *     FUNCTION STUBS
 *     FUNCTION SELECTORS
 *     
 *     EPILOGUE
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 104 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"


/*
 * ======== PREFIX ALIASES ========
 */

# 121 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/IModule.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:46; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 59 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/interfaces/IHwi.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* FuncPtr */
typedef void (*ti_sysbios_interfaces_IHwi_FuncPtr)(xdc_UArg);

/* Irp */
typedef xdc_UArg ti_sysbios_interfaces_IHwi_Irp;

/* HookSet */
struct ti_sysbios_interfaces_IHwi_HookSet {
    void (*registerFxn)(xdc_Int);
    void (*createFxn)(ti_sysbios_interfaces_IHwi_Handle, xdc_runtime_Error_Block*);
    void (*beginFxn)(ti_sysbios_interfaces_IHwi_Handle);
    void (*endFxn)(ti_sysbios_interfaces_IHwi_Handle);
    void (*deleteFxn)(ti_sysbios_interfaces_IHwi_Handle);
};

/* MaskingOption */
enum ti_sysbios_interfaces_IHwi_MaskingOption {
    ti_sysbios_interfaces_IHwi_MaskingOption_NONE,
    ti_sysbios_interfaces_IHwi_MaskingOption_ALL,
    ti_sysbios_interfaces_IHwi_MaskingOption_SELF,
    ti_sysbios_interfaces_IHwi_MaskingOption_BITMASK,
    ti_sysbios_interfaces_IHwi_MaskingOption_LOWER
};
typedef enum ti_sysbios_interfaces_IHwi_MaskingOption ti_sysbios_interfaces_IHwi_MaskingOption;

/* StackInfo */
struct ti_sysbios_interfaces_IHwi_StackInfo {
    xdc_SizeT hwiStackPeak;
    xdc_SizeT hwiStackSize;
    xdc_Ptr hwiStackBase;
};


/*
 * ======== CREATE ARGS ========
 */

/* Args__create */
typedef struct ti_sysbios_interfaces_IHwi_Args__create {
    xdc_Int intNum;
    ti_sysbios_interfaces_IHwi_FuncPtr hwiFxn;
} ti_sysbios_interfaces_IHwi_Args__create;


/*
 * ======== PER-INSTANCE TYPES ========
 */

/* Params */
struct ti_sysbios_interfaces_IHwi_Params {
    size_t __size;
    const void *__self;
    void *__fxns;
    xdc_runtime_IInstance_Params *instance;
    ti_sysbios_interfaces_IHwi_MaskingOption maskSetting;
    xdc_UArg arg;
    xdc_Bool enableInt;
    xdc_Int eventId;
    xdc_Int priority;
};


/*
 * ======== VIRTUAL FUNCTIONS ========
 */

/* Fxns__ */
struct ti_sysbios_interfaces_IHwi_Fxns__ {
    xdc_runtime_Types_Base* __base;
    const xdc_runtime_Types_SysFxns2 *__sysp;
    xdc_Bool (*getStackInfo)(ti_sysbios_interfaces_IHwi_StackInfo*, xdc_Bool);
    xdc_Bool (*getCoreStackInfo)(ti_sysbios_interfaces_IHwi_StackInfo*, xdc_Bool, xdc_UInt);
    void (*startup)(void);
    xdc_UInt (*disable)(void);
    xdc_UInt (*enable)(void);
    void (*restore)(xdc_UInt);
    void (*switchFromBootStack)(void);
    void (*post)(xdc_UInt);
    xdc_Char *(*getTaskSP)(void);
    xdc_UInt (*disableInterrupt)(xdc_UInt);
    xdc_UInt (*enableInterrupt)(xdc_UInt);
    void (*restoreInterrupt)(xdc_UInt, xdc_UInt);
    void (*clearInterrupt)(xdc_UInt);
    ti_sysbios_interfaces_IHwi_FuncPtr (*getFunc)(void*, xdc_UArg*);
    void (*setFunc)(void*, ti_sysbios_interfaces_IHwi_FuncPtr, xdc_UArg);
    xdc_Ptr (*getHookContext)(void*, xdc_Int);
    void (*setHookContext)(void*, xdc_Int, xdc_Ptr);
    ti_sysbios_interfaces_IHwi_Irp (*getIrp)(void*);
    xdc_runtime_Types_SysFxns2 __sfxns;
};

/* Interface__BASE__C */
extern "C" const xdc_runtime_Types_Base ti_sysbios_interfaces_IHwi_Interface__BASE__C;


/*
 * ======== FUNCTION STUBS ========
 */

/* create */

extern "C" ti_sysbios_interfaces_IHwi_Handle ti_sysbios_interfaces_IHwi_create(ti_sysbios_interfaces_IHwi_Module, xdc_Int intNum, ti_sysbios_interfaces_IHwi_FuncPtr hwiFxn, const ti_sysbios_interfaces_IHwi_Params *, xdc_runtime_Error_Block *__eb);

/* delete */

extern "C" void ti_sysbios_interfaces_IHwi_delete(ti_sysbios_interfaces_IHwi_Handle *);

/* Handle_to_Module */
static inline ti_sysbios_interfaces_IHwi_Module ti_sysbios_interfaces_IHwi_Handle_to_Module( ti_sysbios_interfaces_IHwi_Handle inst )
{
    return inst->__fxns;
}

/* Handle_label */
static inline xdc_runtime_Types_Label *ti_sysbios_interfaces_IHwi_Handle_label( ti_sysbios_interfaces_IHwi_Handle inst, xdc_runtime_Types_Label *lab )
{
    return inst->__fxns->__sysp->__label(inst, lab);
}

/* Module_id */
static inline xdc_runtime_Types_ModuleId ti_sysbios_interfaces_IHwi_Module_id( ti_sysbios_interfaces_IHwi_Module mod )
{
    return mod->__sysp->__mid;
}

/* getStackInfo */
static inline xdc_Bool ti_sysbios_interfaces_IHwi_getStackInfo( ti_sysbios_interfaces_IHwi_Module __inst, ti_sysbios_interfaces_IHwi_StackInfo *stkInfo, xdc_Bool computeStackDepth )
{
    return __inst->getStackInfo(stkInfo, computeStackDepth);
}

/* getCoreStackInfo */
static inline xdc_Bool ti_sysbios_interfaces_IHwi_getCoreStackInfo( ti_sysbios_interfaces_IHwi_Module __inst, ti_sysbios_interfaces_IHwi_StackInfo *stkInfo, xdc_Bool computeStackDepth, xdc_UInt coreId )
{
    return __inst->getCoreStackInfo(stkInfo, computeStackDepth, coreId);
}

/* startup */
static inline void ti_sysbios_interfaces_IHwi_startup( ti_sysbios_interfaces_IHwi_Module __inst )
{
    __inst->startup();
}

/* disable */
static inline xdc_UInt ti_sysbios_interfaces_IHwi_disable( ti_sysbios_interfaces_IHwi_Module __inst )
{
    return __inst->disable();
}

/* enable */
static inline xdc_UInt ti_sysbios_interfaces_IHwi_enable( ti_sysbios_interfaces_IHwi_Module __inst )
{
    return __inst->enable();
}

/* restore */
static inline void ti_sysbios_interfaces_IHwi_restore( ti_sysbios_interfaces_IHwi_Module __inst, xdc_UInt key )
{
    __inst->restore(key);
}

/* switchFromBootStack */
static inline void ti_sysbios_interfaces_IHwi_switchFromBootStack( ti_sysbios_interfaces_IHwi_Module __inst )
{
    __inst->switchFromBootStack();
}

/* post */
static inline void ti_sysbios_interfaces_IHwi_post( ti_sysbios_interfaces_IHwi_Module __inst, xdc_UInt intNum )
{
    __inst->post(intNum);
}

/* getTaskSP */
static inline xdc_Char *ti_sysbios_interfaces_IHwi_getTaskSP( ti_sysbios_interfaces_IHwi_Module __inst )
{
    return __inst->getTaskSP();
}

/* disableInterrupt */
static inline xdc_UInt ti_sysbios_interfaces_IHwi_disableInterrupt( ti_sysbios_interfaces_IHwi_Module __inst, xdc_UInt intNum )
{
    return __inst->disableInterrupt(intNum);
}

/* enableInterrupt */
static inline xdc_UInt ti_sysbios_interfaces_IHwi_enableInterrupt( ti_sysbios_interfaces_IHwi_Module __inst, xdc_UInt intNum )
{
    return __inst->enableInterrupt(intNum);
}

/* restoreInterrupt */
static inline void ti_sysbios_interfaces_IHwi_restoreInterrupt( ti_sysbios_interfaces_IHwi_Module __inst, xdc_UInt intNum, xdc_UInt key )
{
    __inst->restoreInterrupt(intNum, key);
}

/* clearInterrupt */
static inline void ti_sysbios_interfaces_IHwi_clearInterrupt( ti_sysbios_interfaces_IHwi_Module __inst, xdc_UInt intNum )
{
    __inst->clearInterrupt(intNum);
}

/* getFunc */
static inline ti_sysbios_interfaces_IHwi_FuncPtr ti_sysbios_interfaces_IHwi_getFunc( ti_sysbios_interfaces_IHwi_Handle __inst, xdc_UArg *arg )
{
    return __inst->__fxns->getFunc((void*)__inst, arg);
}

/* setFunc */
static inline void ti_sysbios_interfaces_IHwi_setFunc( ti_sysbios_interfaces_IHwi_Handle __inst, ti_sysbios_interfaces_IHwi_FuncPtr fxn, xdc_UArg arg )
{
    __inst->__fxns->setFunc((void*)__inst, fxn, arg);
}

/* getHookContext */
static inline xdc_Ptr ti_sysbios_interfaces_IHwi_getHookContext( ti_sysbios_interfaces_IHwi_Handle __inst, xdc_Int id )
{
    return __inst->__fxns->getHookContext((void*)__inst, id);
}

/* setHookContext */
static inline void ti_sysbios_interfaces_IHwi_setHookContext( ti_sysbios_interfaces_IHwi_Handle __inst, xdc_Int id, xdc_Ptr hookContext )
{
    __inst->__fxns->setHookContext((void*)__inst, id, hookContext);
}

/* getIrp */
static inline ti_sysbios_interfaces_IHwi_Irp ti_sysbios_interfaces_IHwi_getIrp( ti_sysbios_interfaces_IHwi_Handle __inst )
{
    return __inst->__fxns->getIrp((void*)__inst);
}


/*
 * ======== FUNCTION SELECTORS ========
 */

/* These functions return function pointers for module and instance functions.
 * The functions accept modules and instances declared as types defined in this
 * interface, but they return functions defined for the actual objects passed
 * as parameters. These functions are not invoked by any generated code or
 * XDCtools internal code.
 */

/* getStackInfo_{FxnT,fxnP} */
typedef xdc_Bool (*ti_sysbios_interfaces_IHwi_getStackInfo_FxnT)(ti_sysbios_interfaces_IHwi_StackInfo*, xdc_Bool);
static inline ti_sysbios_interfaces_IHwi_getStackInfo_FxnT ti_sysbios_interfaces_IHwi_getStackInfo_fxnP( ti_sysbios_interfaces_IHwi_Module __inst )
{
    return (ti_sysbios_interfaces_IHwi_getStackInfo_FxnT)__inst->getStackInfo;
}

/* getCoreStackInfo_{FxnT,fxnP} */
typedef xdc_Bool (*ti_sysbios_interfaces_IHwi_getCoreStackInfo_FxnT)(ti_sysbios_interfaces_IHwi_StackInfo*, xdc_Bool, xdc_UInt);
static inline ti_sysbios_interfaces_IHwi_getCoreStackInfo_FxnT ti_sysbios_interfaces_IHwi_getCoreStackInfo_fxnP( ti_sysbios_interfaces_IHwi_Module __inst )
{
    return (ti_sysbios_interfaces_IHwi_getCoreStackInfo_FxnT)__inst->getCoreStackInfo;
}

/* startup_{FxnT,fxnP} */
typedef void (*ti_sysbios_interfaces_IHwi_startup_FxnT)(void);
static inline ti_sysbios_interfaces_IHwi_startup_FxnT ti_sysbios_interfaces_IHwi_startup_fxnP( ti_sysbios_interfaces_IHwi_Module __inst )
{
    return (ti_sysbios_interfaces_IHwi_startup_FxnT)__inst->startup;
}

/* disable_{FxnT,fxnP} */
typedef xdc_UInt (*ti_sysbios_interfaces_IHwi_disable_FxnT)(void);
static inline ti_sysbios_interfaces_IHwi_disable_FxnT ti_sysbios_interfaces_IHwi_disable_fxnP( ti_sysbios_interfaces_IHwi_Module __inst )
{
    return (ti_sysbios_interfaces_IHwi_disable_FxnT)__inst->disable;
}

/* enable_{FxnT,fxnP} */
typedef xdc_UInt (*ti_sysbios_interfaces_IHwi_enable_FxnT)(void);
static inline ti_sysbios_interfaces_IHwi_enable_FxnT ti_sysbios_interfaces_IHwi_enable_fxnP( ti_sysbios_interfaces_IHwi_Module __inst )
{
    return (ti_sysbios_interfaces_IHwi_enable_FxnT)__inst->enable;
}

/* restore_{FxnT,fxnP} */
typedef void (*ti_sysbios_interfaces_IHwi_restore_FxnT)(xdc_UInt);
static inline ti_sysbios_interfaces_IHwi_restore_FxnT ti_sysbios_interfaces_IHwi_restore_fxnP( ti_sysbios_interfaces_IHwi_Module __inst )
{
    return (ti_sysbios_interfaces_IHwi_restore_FxnT)__inst->restore;
}

/* switchFromBootStack_{FxnT,fxnP} */
typedef void (*ti_sysbios_interfaces_IHwi_switchFromBootStack_FxnT)(void);
static inline ti_sysbios_interfaces_IHwi_switchFromBootStack_FxnT ti_sysbios_interfaces_IHwi_switchFromBootStack_fxnP( ti_sysbios_interfaces_IHwi_Module __inst )
{
    return (ti_sysbios_interfaces_IHwi_switchFromBootStack_FxnT)__inst->switchFromBootStack;
}

/* post_{FxnT,fxnP} */
typedef void (*ti_sysbios_interfaces_IHwi_post_FxnT)(xdc_UInt);
static inline ti_sysbios_interfaces_IHwi_post_FxnT ti_sysbios_interfaces_IHwi_post_fxnP( ti_sysbios_interfaces_IHwi_Module __inst )
{
    return (ti_sysbios_interfaces_IHwi_post_FxnT)__inst->post;
}

/* getTaskSP_{FxnT,fxnP} */
typedef xdc_Char *(*ti_sysbios_interfaces_IHwi_getTaskSP_FxnT)(void);
static inline ti_sysbios_interfaces_IHwi_getTaskSP_FxnT ti_sysbios_interfaces_IHwi_getTaskSP_fxnP( ti_sysbios_interfaces_IHwi_Module __inst )
{
    return (ti_sysbios_interfaces_IHwi_getTaskSP_FxnT)__inst->getTaskSP;
}

/* disableInterrupt_{FxnT,fxnP} */
typedef xdc_UInt (*ti_sysbios_interfaces_IHwi_disableInterrupt_FxnT)(xdc_UInt);
static inline ti_sysbios_interfaces_IHwi_disableInterrupt_FxnT ti_sysbios_interfaces_IHwi_disableInterrupt_fxnP( ti_sysbios_interfaces_IHwi_Module __inst )
{
    return (ti_sysbios_interfaces_IHwi_disableInterrupt_FxnT)__inst->disableInterrupt;
}

/* enableInterrupt_{FxnT,fxnP} */
typedef xdc_UInt (*ti_sysbios_interfaces_IHwi_enableInterrupt_FxnT)(xdc_UInt);
static inline ti_sysbios_interfaces_IHwi_enableInterrupt_FxnT ti_sysbios_interfaces_IHwi_enableInterrupt_fxnP( ti_sysbios_interfaces_IHwi_Module __inst )
{
    return (ti_sysbios_interfaces_IHwi_enableInterrupt_FxnT)__inst->enableInterrupt;
}

/* restoreInterrupt_{FxnT,fxnP} */
typedef void (*ti_sysbios_interfaces_IHwi_restoreInterrupt_FxnT)(xdc_UInt, xdc_UInt);
static inline ti_sysbios_interfaces_IHwi_restoreInterrupt_FxnT ti_sysbios_interfaces_IHwi_restoreInterrupt_fxnP( ti_sysbios_interfaces_IHwi_Module __inst )
{
    return (ti_sysbios_interfaces_IHwi_restoreInterrupt_FxnT)__inst->restoreInterrupt;
}

/* clearInterrupt_{FxnT,fxnP} */
typedef void (*ti_sysbios_interfaces_IHwi_clearInterrupt_FxnT)(xdc_UInt);
static inline ti_sysbios_interfaces_IHwi_clearInterrupt_FxnT ti_sysbios_interfaces_IHwi_clearInterrupt_fxnP( ti_sysbios_interfaces_IHwi_Module __inst )
{
    return (ti_sysbios_interfaces_IHwi_clearInterrupt_FxnT)__inst->clearInterrupt;
}

/* getFunc_{FxnT,fxnP} */
typedef ti_sysbios_interfaces_IHwi_FuncPtr (*ti_sysbios_interfaces_IHwi_getFunc_FxnT)(void *, xdc_UArg*);
static inline ti_sysbios_interfaces_IHwi_getFunc_FxnT ti_sysbios_interfaces_IHwi_getFunc_fxnP( ti_sysbios_interfaces_IHwi_Handle __inst )
{
    return (ti_sysbios_interfaces_IHwi_getFunc_FxnT)__inst->__fxns->getFunc;
}

/* setFunc_{FxnT,fxnP} */
typedef void (*ti_sysbios_interfaces_IHwi_setFunc_FxnT)(void *, ti_sysbios_interfaces_IHwi_FuncPtr, xdc_UArg);
static inline ti_sysbios_interfaces_IHwi_setFunc_FxnT ti_sysbios_interfaces_IHwi_setFunc_fxnP( ti_sysbios_interfaces_IHwi_Handle __inst )
{
    return (ti_sysbios_interfaces_IHwi_setFunc_FxnT)__inst->__fxns->setFunc;
}

/* getHookContext_{FxnT,fxnP} */
typedef xdc_Ptr (*ti_sysbios_interfaces_IHwi_getHookContext_FxnT)(void *, xdc_Int);
static inline ti_sysbios_interfaces_IHwi_getHookContext_FxnT ti_sysbios_interfaces_IHwi_getHookContext_fxnP( ti_sysbios_interfaces_IHwi_Handle __inst )
{
    return (ti_sysbios_interfaces_IHwi_getHookContext_FxnT)__inst->__fxns->getHookContext;
}

/* setHookContext_{FxnT,fxnP} */
typedef void (*ti_sysbios_interfaces_IHwi_setHookContext_FxnT)(void *, xdc_Int, xdc_Ptr);
static inline ti_sysbios_interfaces_IHwi_setHookContext_FxnT ti_sysbios_interfaces_IHwi_setHookContext_fxnP( ti_sysbios_interfaces_IHwi_Handle __inst )
{
    return (ti_sysbios_interfaces_IHwi_setHookContext_FxnT)__inst->__fxns->setHookContext;
}

/* getIrp_{FxnT,fxnP} */
typedef ti_sysbios_interfaces_IHwi_Irp (*ti_sysbios_interfaces_IHwi_getIrp_FxnT)(void *);
static inline ti_sysbios_interfaces_IHwi_getIrp_FxnT ti_sysbios_interfaces_IHwi_getIrp_fxnP( ti_sysbios_interfaces_IHwi_Handle __inst )
{
    return (ti_sysbios_interfaces_IHwi_getIrp_FxnT)__inst->__fxns->getIrp;
}


/*
 * ======== EPILOGUE ========
 */








/*
 * ======== PREFIX ALIASES ========
 */

# 68 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/Hwi.h"


/*
 * ======== AUXILIARY DEFINITIONS ========
 */

/* FuncPtr */
typedef ti_sysbios_interfaces_IHwi_FuncPtr ti_sysbios_family_arm_m3_Hwi_FuncPtr;

/* Irp */
typedef ti_sysbios_interfaces_IHwi_Irp ti_sysbios_family_arm_m3_Hwi_Irp;

/* HookSet */
typedef ti_sysbios_interfaces_IHwi_HookSet ti_sysbios_family_arm_m3_Hwi_HookSet;

/* MaskingOption */
typedef ti_sysbios_interfaces_IHwi_MaskingOption ti_sysbios_family_arm_m3_Hwi_MaskingOption;

/* StackInfo */
typedef ti_sysbios_interfaces_IHwi_StackInfo ti_sysbios_family_arm_m3_Hwi_StackInfo;

/* VectorFuncPtr */
typedef void (*ti_sysbios_family_arm_m3_Hwi_VectorFuncPtr)(void);

/* ExceptionHookFuncPtr */
typedef void (*ti_sysbios_family_arm_m3_Hwi_ExceptionHookFuncPtr)(ti_sysbios_family_arm_m3_Hwi_ExcContext*);

/* CCR */
struct ti_sysbios_family_arm_m3_Hwi_CCR {
    xdc_Bits8 STKALIGN;
    xdc_Bits8 BFHFNMIGN;
    xdc_Bits8 DIV_0_TRP;
    xdc_Bits8 UNALIGN_TRP;
    xdc_Bits8 USERSETMPEND;
    xdc_Bits8 NONEBASETHRDENA;
};

/* NVIC */
typedef xdc_UInt32 __T1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_20;
typedef xdc_UInt32 __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_20[56];
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_20 __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_20;
typedef xdc_UInt32 __T1_ti_sysbios_family_arm_m3_Hwi_NVIC__ISER;
typedef xdc_UInt32 __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__ISER[8];
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__ISER __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__ISER;
typedef xdc_UInt32 __T1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_120;
typedef xdc_UInt32 __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_120[24];
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_120 __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_120;
typedef xdc_UInt32 __T1_ti_sysbios_family_arm_m3_Hwi_NVIC__ICER;
typedef xdc_UInt32 __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__ICER[8];
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__ICER __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__ICER;
typedef xdc_UInt32 __T1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_1A0;
typedef xdc_UInt32 __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_1A0[24];
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_1A0 __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_1A0;
typedef xdc_UInt32 __T1_ti_sysbios_family_arm_m3_Hwi_NVIC__ISPR;
typedef xdc_UInt32 __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__ISPR[8];
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__ISPR __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__ISPR;
typedef xdc_UInt32 __T1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_220;
typedef xdc_UInt32 __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_220[24];
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_220 __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_220;
typedef xdc_UInt32 __T1_ti_sysbios_family_arm_m3_Hwi_NVIC__ICPR;
typedef xdc_UInt32 __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__ICPR[8];
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__ICPR __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__ICPR;
typedef xdc_UInt32 __T1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_2A0;
typedef xdc_UInt32 __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_2A0[24];
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_2A0 __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_2A0;
typedef xdc_UInt32 __T1_ti_sysbios_family_arm_m3_Hwi_NVIC__IABR;
typedef xdc_UInt32 __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__IABR[8];
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__IABR __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__IABR;
typedef xdc_UInt32 __T1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_320;
typedef xdc_UInt32 __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_320[56];
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_320 __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_320;
typedef xdc_UInt8 __T1_ti_sysbios_family_arm_m3_Hwi_NVIC__IPR;
typedef xdc_UInt8 __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__IPR[240];
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__IPR __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__IPR;
typedef xdc_UInt32 __T1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_4F0;
typedef xdc_UInt32 __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_4F0[516];
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_4F0 __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_4F0;
typedef xdc_UInt8 __T1_ti_sysbios_family_arm_m3_Hwi_NVIC__SHPR;
typedef xdc_UInt8 __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__SHPR[12];
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__SHPR __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__SHPR;
typedef xdc_UInt32 __T1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_D74;
typedef xdc_UInt32 __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_D74[5];
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_D74 __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_D74;
typedef xdc_UInt32 __T1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_D8C;
typedef xdc_UInt32 __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_D8C[93];
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_D8C __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_D8C;
typedef xdc_UInt32 __T1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_F04;
typedef xdc_UInt32 __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_F04[12];
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_F04 __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_F04;
typedef xdc_UInt32 __T1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_F48;
typedef xdc_UInt32 __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_F48[34];
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_F48 __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_F48;
struct ti_sysbios_family_arm_m3_Hwi_NVIC {
    xdc_UInt32 RES_00;
    xdc_UInt32 ICTR;
    xdc_UInt32 RES_08;
    xdc_UInt32 RES_0C;
    xdc_UInt32 STCSR;
    xdc_UInt32 STRVR;
    xdc_UInt32 STCVR;
    xdc_UInt32 STCALIB;
    __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_20 RES_20;
    __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__ISER ISER;
    __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_120 RES_120;
    __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__ICER ICER;
    __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_1A0 RES_1A0;
    __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__ISPR ISPR;
    __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_220 RES_220;
    __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__ICPR ICPR;
    __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_2A0 RES_2A0;
    __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__IABR IABR;
    __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_320 RES_320;
    __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__IPR IPR;
    __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_4F0 RES_4F0;
    xdc_UInt32 CPUIDBR;
    xdc_UInt32 ICSR;
    xdc_UInt32 VTOR;
    xdc_UInt32 AIRCR;
    xdc_UInt32 SCR;
    xdc_UInt32 CCR;
    __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__SHPR SHPR;
    xdc_UInt32 SHCSR;
    xdc_UInt8 MMFSR;
    xdc_UInt8 BFSR;
    xdc_UInt16 UFSR;
    xdc_UInt32 HFSR;
    xdc_UInt32 DFSR;
    xdc_UInt32 MMAR;
    xdc_UInt32 BFAR;
    xdc_UInt32 AFSR;
    xdc_UInt32 PFR0;
    xdc_UInt32 PFR1;
    xdc_UInt32 DFR0;
    xdc_UInt32 AFR0;
    xdc_UInt32 MMFR0;
    xdc_UInt32 MMFR1;
    xdc_UInt32 MMFR2;
    xdc_UInt32 MMFR3;
    xdc_UInt32 ISAR0;
    xdc_UInt32 ISAR1;
    xdc_UInt32 ISAR2;
    xdc_UInt32 ISAR3;
    xdc_UInt32 ISAR4;
    __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_D74 RES_D74;
    xdc_UInt32 CPACR;
    __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_D8C RES_D8C;
    xdc_UInt32 STI;
    __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_F04 RES_F04;
    xdc_UInt32 FPCCR;
    xdc_UInt32 FPCAR;
    xdc_UInt32 FPDSCR;
    xdc_UInt32 MVFR0;
    xdc_UInt32 MVFR1;
    __TA_ti_sysbios_family_arm_m3_Hwi_NVIC__RES_F48 RES_F48;
    xdc_UInt32 PID4;
    xdc_UInt32 PID5;
    xdc_UInt32 PID6;
    xdc_UInt32 PID7;
    xdc_UInt32 PID0;
    xdc_UInt32 PID1;
    xdc_UInt32 PID2;
    xdc_UInt32 PID3;
    xdc_UInt32 CID0;
    xdc_UInt32 CID1;
    xdc_UInt32 CID2;
    xdc_UInt32 CID3;
};

/* nvic */

extern "C" volatile ti_sysbios_family_arm_m3_Hwi_NVIC ti_sysbios_family_arm_m3_Hwi_nvic;

/* vnvic */

extern "C" volatile ti_sysbios_family_arm_m3_Hwi_NVIC ti_sysbios_family_arm_m3_Hwi_vnvic;

/* ExcContext */
struct ti_sysbios_family_arm_m3_Hwi_ExcContext {
    ti_sysbios_BIOS_ThreadType threadType;
    xdc_Ptr threadHandle;
    xdc_Ptr threadStack;
    xdc_SizeT threadStackSize;
    xdc_Ptr r0;
    xdc_Ptr r1;
    xdc_Ptr r2;
    xdc_Ptr r3;
    xdc_Ptr r4;
    xdc_Ptr r5;
    xdc_Ptr r6;
    xdc_Ptr r7;
    xdc_Ptr r8;
    xdc_Ptr r9;
    xdc_Ptr r10;
    xdc_Ptr r11;
    xdc_Ptr r12;
    xdc_Ptr sp;
    xdc_Ptr lr;
    xdc_Ptr pc;
    xdc_Ptr psr;
    xdc_Ptr ICSR;
    xdc_Ptr MMFSR;
    xdc_Ptr BFSR;
    xdc_Ptr UFSR;
    xdc_Ptr HFSR;
    xdc_Ptr DFSR;
    xdc_Ptr MMAR;
    xdc_Ptr BFAR;
    xdc_Ptr AFSR;
};

/* ExcHandlerFuncPtr */
typedef void (*ti_sysbios_family_arm_m3_Hwi_ExcHandlerFuncPtr)(xdc_UInt*, xdc_UInt);

/* MaskingOption_NONE */


/* MaskingOption_ALL */


/* MaskingOption_SELF */


/* MaskingOption_BITMASK */


/* MaskingOption_LOWER */



/*
 * ======== CREATE ARGS ========
 */

/* Args__create */
typedef struct ti_sysbios_family_arm_m3_Hwi_Args__create {
    xdc_Int intNum;
    ti_sysbios_interfaces_IHwi_FuncPtr hwiFxn;
} ti_sysbios_family_arm_m3_Hwi_Args__create;


/*
 * ======== INTERNAL DEFINITIONS ========
 */

/* HandlerFuncPtr */
typedef void (*ti_sysbios_family_arm_m3_Hwi_HandlerFuncPtr)(ti_sysbios_family_arm_m3_Hwi_Handle, xdc_UInt);

/* Instance_State */
typedef xdc_Ptr __T1_ti_sysbios_family_arm_m3_Hwi_Instance_State__hookEnv;
typedef xdc_Ptr *__ARRAY1_ti_sysbios_family_arm_m3_Hwi_Instance_State__hookEnv;
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_Instance_State__hookEnv __TA_ti_sysbios_family_arm_m3_Hwi_Instance_State__hookEnv;

/* Module_State */
typedef xdc_Bool __T1_ti_sysbios_family_arm_m3_Hwi_Module_State__excActive;
typedef xdc_Bool *__ARRAY1_ti_sysbios_family_arm_m3_Hwi_Module_State__excActive;
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_Module_State__excActive __TA_ti_sysbios_family_arm_m3_Hwi_Module_State__excActive;
typedef ti_sysbios_family_arm_m3_Hwi_ExcContext *__T1_ti_sysbios_family_arm_m3_Hwi_Module_State__excContext;
typedef ti_sysbios_family_arm_m3_Hwi_ExcContext **__ARRAY1_ti_sysbios_family_arm_m3_Hwi_Module_State__excContext;
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_Module_State__excContext __TA_ti_sysbios_family_arm_m3_Hwi_Module_State__excContext;
typedef xdc_Ptr __T1_ti_sysbios_family_arm_m3_Hwi_Module_State__excStack;
typedef xdc_Ptr *__ARRAY1_ti_sysbios_family_arm_m3_Hwi_Module_State__excStack;
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_Module_State__excStack __TA_ti_sysbios_family_arm_m3_Hwi_Module_State__excStack;
typedef xdc_UInt8 __T1_ti_sysbios_family_arm_m3_Hwi_Module_State__intAffinity;
typedef xdc_UInt8 *__ARRAY1_ti_sysbios_family_arm_m3_Hwi_Module_State__intAffinity;
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_Module_State__intAffinity __TA_ti_sysbios_family_arm_m3_Hwi_Module_State__intAffinity;
typedef xdc_UInt32 __T1_ti_sysbios_family_arm_m3_Hwi_Module_State__intAffinityMasks;
typedef xdc_UInt32 *__ARRAY1_ti_sysbios_family_arm_m3_Hwi_Module_State__intAffinityMasks;
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_Module_State__intAffinityMasks __T2_ti_sysbios_family_arm_m3_Hwi_Module_State__intAffinityMasks;
typedef xdc_UInt32 **__ARRAY2_ti_sysbios_family_arm_m3_Hwi_Module_State__intAffinityMasks;
typedef __ARRAY2_ti_sysbios_family_arm_m3_Hwi_Module_State__intAffinityMasks __TA_ti_sysbios_family_arm_m3_Hwi_Module_State__intAffinityMasks;


/*
 * ======== MODULE-WIDE CONFIGS ========
 */

/* Module__diagsEnabled */
typedef xdc_Bits32 CT__ti_sysbios_family_arm_m3_Hwi_Module__diagsEnabled;
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_Module__diagsEnabled ti_sysbios_family_arm_m3_Hwi_Module__diagsEnabled__C;

/* Module__diagsIncluded */
typedef xdc_Bits32 CT__ti_sysbios_family_arm_m3_Hwi_Module__diagsIncluded;
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_Module__diagsIncluded ti_sysbios_family_arm_m3_Hwi_Module__diagsIncluded__C;

/* Module__diagsMask */
typedef xdc_Bits16 *CT__ti_sysbios_family_arm_m3_Hwi_Module__diagsMask;
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_Module__diagsMask ti_sysbios_family_arm_m3_Hwi_Module__diagsMask__C;

/* Module__gateObj */
typedef xdc_Ptr CT__ti_sysbios_family_arm_m3_Hwi_Module__gateObj;
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_Module__gateObj ti_sysbios_family_arm_m3_Hwi_Module__gateObj__C;

/* Module__gatePrms */
typedef xdc_Ptr CT__ti_sysbios_family_arm_m3_Hwi_Module__gatePrms;
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_Module__gatePrms ti_sysbios_family_arm_m3_Hwi_Module__gatePrms__C;

/* Module__id */
typedef xdc_runtime_Types_ModuleId CT__ti_sysbios_family_arm_m3_Hwi_Module__id;
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_Module__id ti_sysbios_family_arm_m3_Hwi_Module__id__C;

/* Module__loggerDefined */
typedef xdc_Bool CT__ti_sysbios_family_arm_m3_Hwi_Module__loggerDefined;
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_Module__loggerDefined ti_sysbios_family_arm_m3_Hwi_Module__loggerDefined__C;

/* Module__loggerObj */
typedef xdc_Ptr CT__ti_sysbios_family_arm_m3_Hwi_Module__loggerObj;
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_Module__loggerObj ti_sysbios_family_arm_m3_Hwi_Module__loggerObj__C;

/* Module__loggerFxn0 */
typedef xdc_runtime_Types_LoggerFxn0 CT__ti_sysbios_family_arm_m3_Hwi_Module__loggerFxn0;
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_Module__loggerFxn0 ti_sysbios_family_arm_m3_Hwi_Module__loggerFxn0__C;

/* Module__loggerFxn1 */
typedef xdc_runtime_Types_LoggerFxn1 CT__ti_sysbios_family_arm_m3_Hwi_Module__loggerFxn1;
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_Module__loggerFxn1 ti_sysbios_family_arm_m3_Hwi_Module__loggerFxn1__C;

/* Module__loggerFxn2 */
typedef xdc_runtime_Types_LoggerFxn2 CT__ti_sysbios_family_arm_m3_Hwi_Module__loggerFxn2;
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_Module__loggerFxn2 ti_sysbios_family_arm_m3_Hwi_Module__loggerFxn2__C;

/* Module__loggerFxn4 */
typedef xdc_runtime_Types_LoggerFxn4 CT__ti_sysbios_family_arm_m3_Hwi_Module__loggerFxn4;
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_Module__loggerFxn4 ti_sysbios_family_arm_m3_Hwi_Module__loggerFxn4__C;

/* Module__loggerFxn8 */
typedef xdc_runtime_Types_LoggerFxn8 CT__ti_sysbios_family_arm_m3_Hwi_Module__loggerFxn8;
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_Module__loggerFxn8 ti_sysbios_family_arm_m3_Hwi_Module__loggerFxn8__C;

/* Module__startupDoneFxn */
typedef xdc_Bool (*CT__ti_sysbios_family_arm_m3_Hwi_Module__startupDoneFxn)(void);
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_Module__startupDoneFxn ti_sysbios_family_arm_m3_Hwi_Module__startupDoneFxn__C;

/* Object__count */
typedef xdc_Int CT__ti_sysbios_family_arm_m3_Hwi_Object__count;
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_Object__count ti_sysbios_family_arm_m3_Hwi_Object__count__C;

/* Object__heap */
typedef xdc_runtime_IHeap_Handle CT__ti_sysbios_family_arm_m3_Hwi_Object__heap;
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_Object__heap ti_sysbios_family_arm_m3_Hwi_Object__heap__C;

/* Object__sizeof */
typedef xdc_SizeT CT__ti_sysbios_family_arm_m3_Hwi_Object__sizeof;
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_Object__sizeof ti_sysbios_family_arm_m3_Hwi_Object__sizeof__C;

/* Object__table */
typedef xdc_Ptr CT__ti_sysbios_family_arm_m3_Hwi_Object__table;
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_Object__table ti_sysbios_family_arm_m3_Hwi_Object__table__C;

/* dispatcherAutoNestingSupport */




typedef xdc_Bool CT__ti_sysbios_family_arm_m3_Hwi_dispatcherAutoNestingSupport;
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_dispatcherAutoNestingSupport ti_sysbios_family_arm_m3_Hwi_dispatcherAutoNestingSupport__C;


/* dispatcherSwiSupport */




typedef xdc_Bool CT__ti_sysbios_family_arm_m3_Hwi_dispatcherSwiSupport;
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_dispatcherSwiSupport ti_sysbios_family_arm_m3_Hwi_dispatcherSwiSupport__C;


/* dispatcherTaskSupport */




typedef xdc_Bool CT__ti_sysbios_family_arm_m3_Hwi_dispatcherTaskSupport;
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_dispatcherTaskSupport ti_sysbios_family_arm_m3_Hwi_dispatcherTaskSupport__C;


/* dispatcherIrpTrackingSupport */




typedef xdc_Bool CT__ti_sysbios_family_arm_m3_Hwi_dispatcherIrpTrackingSupport;
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_dispatcherIrpTrackingSupport ti_sysbios_family_arm_m3_Hwi_dispatcherIrpTrackingSupport__C;


/* NUM_INTERRUPTS */




typedef xdc_Int CT__ti_sysbios_family_arm_m3_Hwi_NUM_INTERRUPTS;
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_NUM_INTERRUPTS ti_sysbios_family_arm_m3_Hwi_NUM_INTERRUPTS__C;


/* NUM_PRIORITIES */




typedef xdc_Int CT__ti_sysbios_family_arm_m3_Hwi_NUM_PRIORITIES;
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_NUM_PRIORITIES ti_sysbios_family_arm_m3_Hwi_NUM_PRIORITIES__C;


/* LM_begin */

typedef xdc_runtime_Log_Event CT__ti_sysbios_family_arm_m3_Hwi_LM_begin;
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_LM_begin ti_sysbios_family_arm_m3_Hwi_LM_begin__C;

/* LD_end */

typedef xdc_runtime_Log_Event CT__ti_sysbios_family_arm_m3_Hwi_LD_end;
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_LD_end ti_sysbios_family_arm_m3_Hwi_LD_end__C;

/* A_unsupportedMaskingOption */

typedef xdc_runtime_Assert_Id CT__ti_sysbios_family_arm_m3_Hwi_A_unsupportedMaskingOption;
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_A_unsupportedMaskingOption ti_sysbios_family_arm_m3_Hwi_A_unsupportedMaskingOption__C;

/* E_alreadyDefined */

typedef xdc_runtime_Error_Id CT__ti_sysbios_family_arm_m3_Hwi_E_alreadyDefined;
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_E_alreadyDefined ti_sysbios_family_arm_m3_Hwi_E_alreadyDefined__C;

/* E_hwiLimitExceeded */

typedef xdc_runtime_Error_Id CT__ti_sysbios_family_arm_m3_Hwi_E_hwiLimitExceeded;
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_E_hwiLimitExceeded ti_sysbios_family_arm_m3_Hwi_E_hwiLimitExceeded__C;

/* E_exception */

typedef xdc_runtime_Error_Id CT__ti_sysbios_family_arm_m3_Hwi_E_exception;
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_E_exception ti_sysbios_family_arm_m3_Hwi_E_exception__C;

/* E_noIsr */

typedef xdc_runtime_Error_Id CT__ti_sysbios_family_arm_m3_Hwi_E_noIsr;
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_E_noIsr ti_sysbios_family_arm_m3_Hwi_E_noIsr__C;

/* E_NMI */

typedef xdc_runtime_Error_Id CT__ti_sysbios_family_arm_m3_Hwi_E_NMI;
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_E_NMI ti_sysbios_family_arm_m3_Hwi_E_NMI__C;

/* E_hardFault */

typedef xdc_runtime_Error_Id CT__ti_sysbios_family_arm_m3_Hwi_E_hardFault;
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_E_hardFault ti_sysbios_family_arm_m3_Hwi_E_hardFault__C;

/* E_memFault */

typedef xdc_runtime_Error_Id CT__ti_sysbios_family_arm_m3_Hwi_E_memFault;
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_E_memFault ti_sysbios_family_arm_m3_Hwi_E_memFault__C;

/* E_busFault */

typedef xdc_runtime_Error_Id CT__ti_sysbios_family_arm_m3_Hwi_E_busFault;
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_E_busFault ti_sysbios_family_arm_m3_Hwi_E_busFault__C;

/* E_usageFault */

typedef xdc_runtime_Error_Id CT__ti_sysbios_family_arm_m3_Hwi_E_usageFault;
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_E_usageFault ti_sysbios_family_arm_m3_Hwi_E_usageFault__C;

/* E_svCall */

typedef xdc_runtime_Error_Id CT__ti_sysbios_family_arm_m3_Hwi_E_svCall;
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_E_svCall ti_sysbios_family_arm_m3_Hwi_E_svCall__C;

/* E_debugMon */

typedef xdc_runtime_Error_Id CT__ti_sysbios_family_arm_m3_Hwi_E_debugMon;
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_E_debugMon ti_sysbios_family_arm_m3_Hwi_E_debugMon__C;

/* E_reserved */

typedef xdc_runtime_Error_Id CT__ti_sysbios_family_arm_m3_Hwi_E_reserved;
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_E_reserved ti_sysbios_family_arm_m3_Hwi_E_reserved__C;

/* nullIsrFunc */

typedef ti_sysbios_family_arm_m3_Hwi_VectorFuncPtr CT__ti_sysbios_family_arm_m3_Hwi_nullIsrFunc;
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_nullIsrFunc ti_sysbios_family_arm_m3_Hwi_nullIsrFunc__C;

/* excHandlerFunc */

typedef ti_sysbios_family_arm_m3_Hwi_ExcHandlerFuncPtr CT__ti_sysbios_family_arm_m3_Hwi_excHandlerFunc;
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_excHandlerFunc ti_sysbios_family_arm_m3_Hwi_excHandlerFunc__C;

/* excHookFunc */

typedef ti_sysbios_family_arm_m3_Hwi_ExceptionHookFuncPtr CT__ti_sysbios_family_arm_m3_Hwi_excHookFunc;
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_excHookFunc ti_sysbios_family_arm_m3_Hwi_excHookFunc__C;

/* excHookFuncs */

typedef ti_sysbios_family_arm_m3_Hwi_ExceptionHookFuncPtr __T1_ti_sysbios_family_arm_m3_Hwi_excHookFuncs;
typedef ti_sysbios_family_arm_m3_Hwi_ExceptionHookFuncPtr *__ARRAY1_ti_sysbios_family_arm_m3_Hwi_excHookFuncs;
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_excHookFuncs __TA_ti_sysbios_family_arm_m3_Hwi_excHookFuncs;
typedef __TA_ti_sysbios_family_arm_m3_Hwi_excHookFuncs CT__ti_sysbios_family_arm_m3_Hwi_excHookFuncs;
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_excHookFuncs ti_sysbios_family_arm_m3_Hwi_excHookFuncs__C;

/* disablePriority */




typedef xdc_UInt CT__ti_sysbios_family_arm_m3_Hwi_disablePriority;
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_disablePriority ti_sysbios_family_arm_m3_Hwi_disablePriority__C;


/* priGroup */




typedef xdc_UInt CT__ti_sysbios_family_arm_m3_Hwi_priGroup;
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_priGroup ti_sysbios_family_arm_m3_Hwi_priGroup__C;


/* numSparseInterrupts */




typedef xdc_UInt CT__ti_sysbios_family_arm_m3_Hwi_numSparseInterrupts;
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_numSparseInterrupts ti_sysbios_family_arm_m3_Hwi_numSparseInterrupts__C;


/* swiDisable */

typedef xdc_UInt (*CT__ti_sysbios_family_arm_m3_Hwi_swiDisable)(void);
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_swiDisable ti_sysbios_family_arm_m3_Hwi_swiDisable__C;

/* swiRestoreHwi */

typedef void (*CT__ti_sysbios_family_arm_m3_Hwi_swiRestoreHwi)(xdc_UInt);
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_swiRestoreHwi ti_sysbios_family_arm_m3_Hwi_swiRestoreHwi__C;

/* taskDisable */

typedef xdc_UInt (*CT__ti_sysbios_family_arm_m3_Hwi_taskDisable)(void);
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_taskDisable ti_sysbios_family_arm_m3_Hwi_taskDisable__C;

/* taskRestoreHwi */

typedef void (*CT__ti_sysbios_family_arm_m3_Hwi_taskRestoreHwi)(xdc_UInt);
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_taskRestoreHwi ti_sysbios_family_arm_m3_Hwi_taskRestoreHwi__C;

/* ccr */




typedef xdc_UInt32 CT__ti_sysbios_family_arm_m3_Hwi_ccr;
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_ccr ti_sysbios_family_arm_m3_Hwi_ccr__C;


/* hooks */

typedef ti_sysbios_family_arm_m3_Hwi_HookSet __T1_ti_sysbios_family_arm_m3_Hwi_hooks;
typedef struct { int length; ti_sysbios_family_arm_m3_Hwi_HookSet *elem; } __ARRAY1_ti_sysbios_family_arm_m3_Hwi_hooks;
typedef __ARRAY1_ti_sysbios_family_arm_m3_Hwi_hooks __TA_ti_sysbios_family_arm_m3_Hwi_hooks;
typedef __TA_ti_sysbios_family_arm_m3_Hwi_hooks CT__ti_sysbios_family_arm_m3_Hwi_hooks;
extern "C"  const CT__ti_sysbios_family_arm_m3_Hwi_hooks ti_sysbios_family_arm_m3_Hwi_hooks__C;


/*
 * ======== PER-INSTANCE TYPES ========
 */

/* Params */
struct ti_sysbios_family_arm_m3_Hwi_Params {
    size_t __size;
    const void *__self;
    void *__fxns;
    xdc_runtime_IInstance_Params *instance;
    ti_sysbios_interfaces_IHwi_MaskingOption maskSetting;
    xdc_UArg arg;
    xdc_Bool enableInt;
    xdc_Int eventId;
    xdc_Int priority;
    xdc_Bool useDispatcher;
    xdc_runtime_IInstance_Params __iprms;
};

/* Struct */
struct ti_sysbios_family_arm_m3_Hwi_Struct {
    const ti_sysbios_family_arm_m3_Hwi_Fxns__ *__fxns;
    xdc_UArg __f0;
    ti_sysbios_family_arm_m3_Hwi_FuncPtr __f1;
    ti_sysbios_family_arm_m3_Hwi_Irp __f2;
    xdc_UInt8 __f3;
    xdc_Int16 __f4;
    __TA_ti_sysbios_family_arm_m3_Hwi_Instance_State__hookEnv __f5;
    xdc_runtime_Types_CordAddr __name;
};


/*
 * ======== VIRTUAL FUNCTIONS ========
 */

/* Fxns__ */
struct ti_sysbios_family_arm_m3_Hwi_Fxns__ {
    xdc_runtime_Types_Base* __base;
    const xdc_runtime_Types_SysFxns2 *__sysp;
    xdc_Bool (*getStackInfo)(ti_sysbios_interfaces_IHwi_StackInfo*, xdc_Bool);
    xdc_Bool (*getCoreStackInfo)(ti_sysbios_interfaces_IHwi_StackInfo*, xdc_Bool, xdc_UInt);
    void (*startup)(void);
    xdc_UInt (*disable)(void);
    xdc_UInt (*enable)(void);
    void (*restore)(xdc_UInt);
    void (*switchFromBootStack)(void);
    void (*post)(xdc_UInt);
    xdc_Char *(*getTaskSP)(void);
    xdc_UInt (*disableInterrupt)(xdc_UInt);
    xdc_UInt (*enableInterrupt)(xdc_UInt);
    void (*restoreInterrupt)(xdc_UInt, xdc_UInt);
    void (*clearInterrupt)(xdc_UInt);
    ti_sysbios_interfaces_IHwi_FuncPtr (*getFunc)(ti_sysbios_family_arm_m3_Hwi_Handle, xdc_UArg*);
    void (*setFunc)(ti_sysbios_family_arm_m3_Hwi_Handle, ti_sysbios_interfaces_IHwi_FuncPtr, xdc_UArg);
    xdc_Ptr (*getHookContext)(ti_sysbios_family_arm_m3_Hwi_Handle, xdc_Int);
    void (*setHookContext)(ti_sysbios_family_arm_m3_Hwi_Handle, xdc_Int, xdc_Ptr);
    ti_sysbios_interfaces_IHwi_Irp (*getIrp)(ti_sysbios_family_arm_m3_Hwi_Handle);
    xdc_runtime_Types_SysFxns2 __sfxns;
};

/* Module__FXNS__C */
extern "C" const ti_sysbios_family_arm_m3_Hwi_Fxns__ ti_sysbios_family_arm_m3_Hwi_Module__FXNS__C;


/*
 * ======== FUNCTION DECLARATIONS ========
 */

/* Module_startup */


extern "C" xdc_Int ti_sysbios_family_arm_m3_Hwi_Module_startup__E( xdc_Int state );

extern "C" xdc_Int ti_sysbios_family_arm_m3_Hwi_Module_startup__F( xdc_Int state );

/* Instance_init__E */

extern "C" xdc_Int ti_sysbios_family_arm_m3_Hwi_Instance_init__E(ti_sysbios_family_arm_m3_Hwi_Object *, xdc_Int intNum, ti_sysbios_interfaces_IHwi_FuncPtr hwiFxn, const ti_sysbios_family_arm_m3_Hwi_Params *, xdc_runtime_Error_Block *);

/* Instance_finalize__E */

extern "C" void ti_sysbios_family_arm_m3_Hwi_Instance_finalize__E( ti_sysbios_family_arm_m3_Hwi_Object* , int );

/* Handle__label__S */

extern "C" xdc_runtime_Types_Label *ti_sysbios_family_arm_m3_Hwi_Handle__label__S( xdc_Ptr obj, xdc_runtime_Types_Label *lab );

/* Module__startupDone__S */

extern "C" xdc_Bool ti_sysbios_family_arm_m3_Hwi_Module__startupDone__S( void );

/* Object__create__S */

extern "C" xdc_Ptr ti_sysbios_family_arm_m3_Hwi_Object__create__S( xdc_Ptr __oa, xdc_SizeT __osz, xdc_Ptr __aa, const xdc_UChar *__pa, xdc_SizeT __psz, xdc_runtime_Error_Block *__eb );

/* create */

extern "C" ti_sysbios_family_arm_m3_Hwi_Handle ti_sysbios_family_arm_m3_Hwi_create( xdc_Int intNum, ti_sysbios_interfaces_IHwi_FuncPtr hwiFxn, const ti_sysbios_family_arm_m3_Hwi_Params *__prms, xdc_runtime_Error_Block *__eb );

/* construct */

extern "C" void ti_sysbios_family_arm_m3_Hwi_construct( ti_sysbios_family_arm_m3_Hwi_Struct *__obj, xdc_Int intNum, ti_sysbios_interfaces_IHwi_FuncPtr hwiFxn, const ti_sysbios_family_arm_m3_Hwi_Params *__prms, xdc_runtime_Error_Block *__eb );

/* Object__delete__S */

extern "C" void ti_sysbios_family_arm_m3_Hwi_Object__delete__S( xdc_Ptr instp );

/* delete */

extern "C" void ti_sysbios_family_arm_m3_Hwi_delete(ti_sysbios_family_arm_m3_Hwi_Handle *instp);

/* Object__destruct__S */

extern "C" void ti_sysbios_family_arm_m3_Hwi_Object__destruct__S( xdc_Ptr objp );

/* destruct */

extern "C" void ti_sysbios_family_arm_m3_Hwi_destruct(ti_sysbios_family_arm_m3_Hwi_Struct *obj);

/* Object__get__S */

extern "C" xdc_Ptr ti_sysbios_family_arm_m3_Hwi_Object__get__S( xdc_Ptr oarr, xdc_Int i );

/* Object__first__S */

extern "C" xdc_Ptr ti_sysbios_family_arm_m3_Hwi_Object__first__S( void );

/* Object__next__S */

extern "C" xdc_Ptr ti_sysbios_family_arm_m3_Hwi_Object__next__S( xdc_Ptr obj );

/* Params__init__S */

extern "C" void ti_sysbios_family_arm_m3_Hwi_Params__init__S( xdc_Ptr dst, const void *src, xdc_SizeT psz, xdc_SizeT isz );

/* getStackInfo__E */


extern "C" xdc_Bool ti_sysbios_family_arm_m3_Hwi_getStackInfo__E( ti_sysbios_interfaces_IHwi_StackInfo *stkInfo, xdc_Bool computeStackDepth );

/* getCoreStackInfo__E */


extern "C" xdc_Bool ti_sysbios_family_arm_m3_Hwi_getCoreStackInfo__E( ti_sysbios_interfaces_IHwi_StackInfo *stkInfo, xdc_Bool computeStackDepth, xdc_UInt coreId );

/* startup__E */


extern "C" void ti_sysbios_family_arm_m3_Hwi_startup__E( void );

/* switchFromBootStack__E */


extern "C" void ti_sysbios_family_arm_m3_Hwi_switchFromBootStack__E( void );

/* post__E */


extern "C" void ti_sysbios_family_arm_m3_Hwi_post__E( xdc_UInt intNum );

/* getTaskSP__E */


extern "C" xdc_Char *ti_sysbios_family_arm_m3_Hwi_getTaskSP__E( void );

/* disableInterrupt__E */


extern "C" xdc_UInt ti_sysbios_family_arm_m3_Hwi_disableInterrupt__E( xdc_UInt intNum );

/* enableInterrupt__E */


extern "C" xdc_UInt ti_sysbios_family_arm_m3_Hwi_enableInterrupt__E( xdc_UInt intNum );

/* restoreInterrupt__E */


extern "C" void ti_sysbios_family_arm_m3_Hwi_restoreInterrupt__E( xdc_UInt intNum, xdc_UInt key );

/* clearInterrupt__E */


extern "C" void ti_sysbios_family_arm_m3_Hwi_clearInterrupt__E( xdc_UInt intNum );

/* getFunc__E */


extern "C" ti_sysbios_interfaces_IHwi_FuncPtr ti_sysbios_family_arm_m3_Hwi_getFunc__E( ti_sysbios_family_arm_m3_Hwi_Handle __inst, xdc_UArg *arg );

/* setFunc__E */


extern "C" void ti_sysbios_family_arm_m3_Hwi_setFunc__E( ti_sysbios_family_arm_m3_Hwi_Handle __inst, ti_sysbios_interfaces_IHwi_FuncPtr fxn, xdc_UArg arg );

/* getHookContext__E */


extern "C" xdc_Ptr ti_sysbios_family_arm_m3_Hwi_getHookContext__E( ti_sysbios_family_arm_m3_Hwi_Handle __inst, xdc_Int id );

/* setHookContext__E */


extern "C" void ti_sysbios_family_arm_m3_Hwi_setHookContext__E( ti_sysbios_family_arm_m3_Hwi_Handle __inst, xdc_Int id, xdc_Ptr hookContext );

/* getIrp__E */


extern "C" ti_sysbios_interfaces_IHwi_Irp ti_sysbios_family_arm_m3_Hwi_getIrp__E( ti_sysbios_family_arm_m3_Hwi_Handle __inst );

/* disableFxn__E */


extern "C" xdc_UInt ti_sysbios_family_arm_m3_Hwi_disableFxn__E( void );

/* enableFxn__E */


extern "C" xdc_UInt ti_sysbios_family_arm_m3_Hwi_enableFxn__E( void );

/* restoreFxn__E */


extern "C" void ti_sysbios_family_arm_m3_Hwi_restoreFxn__E( xdc_UInt key );

/* plug__E */


extern "C" void ti_sysbios_family_arm_m3_Hwi_plug__E( xdc_UInt intNum, void *fxn );

/* getHandle__E */


extern "C" ti_sysbios_family_arm_m3_Hwi_Handle ti_sysbios_family_arm_m3_Hwi_getHandle__E( xdc_UInt intNum );

/* setPriority__E */


extern "C" void ti_sysbios_family_arm_m3_Hwi_setPriority__E( xdc_UInt intNum, xdc_UInt priority );

/* excSetBuffers__E */


extern "C" void ti_sysbios_family_arm_m3_Hwi_excSetBuffers__E( xdc_Ptr excContextBuffer, xdc_Ptr excStackBuffer );

/* initNVIC__E */


extern "C" void ti_sysbios_family_arm_m3_Hwi_initNVIC__E( void );

/* initStacks__E */


extern "C" void ti_sysbios_family_arm_m3_Hwi_initStacks__E( xdc_Ptr hwiStack );

/* flushVnvic__E */


extern "C" void ti_sysbios_family_arm_m3_Hwi_flushVnvic__E( void );

/* reconfig__E */


extern "C" void ti_sysbios_family_arm_m3_Hwi_reconfig__E( ti_sysbios_family_arm_m3_Hwi_Handle __inst, ti_sysbios_family_arm_m3_Hwi_FuncPtr fxn, const ti_sysbios_family_arm_m3_Hwi_Params *params );

/* postInit__I */


extern "C" xdc_Int ti_sysbios_family_arm_m3_Hwi_postInit__I( ti_sysbios_family_arm_m3_Hwi_Object *hwi, xdc_runtime_Error_Block *eb );

/* updateNvic__I */


extern "C" void ti_sysbios_family_arm_m3_Hwi_updateNvic__I( xdc_UInt intNum );

/* excHandlerAsm__I */


extern "C" void ti_sysbios_family_arm_m3_Hwi_excHandlerAsm__I( void );

/* excHandler__I */


extern "C" void ti_sysbios_family_arm_m3_Hwi_excHandler__I( xdc_UInt *excStack, xdc_UInt lr );

/* excHandlerMin__I */


extern "C" void ti_sysbios_family_arm_m3_Hwi_excHandlerMin__I( xdc_UInt *excStack, xdc_UInt lr );

/* excHandlerMax__I */


extern "C" void ti_sysbios_family_arm_m3_Hwi_excHandlerMax__I( xdc_UInt *excStack, xdc_UInt lr );

/* excFillContext__I */


extern "C" void ti_sysbios_family_arm_m3_Hwi_excFillContext__I( xdc_UInt *excStack );

/* excNmi__I */


extern "C" void ti_sysbios_family_arm_m3_Hwi_excNmi__I( xdc_UInt *excStack );

/* excHardFault__I */


extern "C" void ti_sysbios_family_arm_m3_Hwi_excHardFault__I( xdc_UInt *excStack );

/* excMemFault__I */


extern "C" void ti_sysbios_family_arm_m3_Hwi_excMemFault__I( xdc_UInt *excStack );

/* excBusFault__I */


extern "C" void ti_sysbios_family_arm_m3_Hwi_excBusFault__I( xdc_UInt *excStack );

/* excUsageFault__I */


extern "C" void ti_sysbios_family_arm_m3_Hwi_excUsageFault__I( xdc_UInt *excStack );

/* excSvCall__I */


extern "C" void ti_sysbios_family_arm_m3_Hwi_excSvCall__I( xdc_UInt *excStack );

/* excDebugMon__I */


extern "C" void ti_sysbios_family_arm_m3_Hwi_excDebugMon__I( xdc_UInt *excStack );

/* excReserved__I */


extern "C" void ti_sysbios_family_arm_m3_Hwi_excReserved__I( xdc_UInt *excStack, xdc_UInt excNum );

/* excNoIsr__I */


extern "C" void ti_sysbios_family_arm_m3_Hwi_excNoIsr__I( xdc_UInt *excStack, xdc_UInt excNum );

/* excDumpRegs__I */


extern "C" void ti_sysbios_family_arm_m3_Hwi_excDumpRegs__I( xdc_UInt lr );

/* pendSV__I */


extern "C" void ti_sysbios_family_arm_m3_Hwi_pendSV__I( void );

/* dispatch__I */


extern "C" void ti_sysbios_family_arm_m3_Hwi_dispatch__I( void );

/* cc26xxRomInitNVIC__I */


extern "C" void ti_sysbios_family_arm_m3_Hwi_cc26xxRomInitNVIC__I( void );

/* dispatchC__I */


extern "C" xdc_UInt ti_sysbios_family_arm_m3_Hwi_dispatchC__I( ti_sysbios_family_arm_m3_Hwi_Irp irp, xdc_UInt32 dummy1, xdc_UInt32 dummy2, ti_sysbios_family_arm_m3_Hwi_Object *hwi );

/* doSwiRestore__I */


extern "C" void ti_sysbios_family_arm_m3_Hwi_doSwiRestore__I( xdc_UInt tskKey );

/* doTaskRestore__I */


extern "C" void ti_sysbios_family_arm_m3_Hwi_doTaskRestore__I( xdc_UInt tskKey );


/*
 * ======== CONVERTORS ========
 */

/* Module_upCast */
static inline ti_sysbios_interfaces_IHwi_Module ti_sysbios_family_arm_m3_Hwi_Module_upCast( void )
{
    return (ti_sysbios_interfaces_IHwi_Module)&ti_sysbios_family_arm_m3_Hwi_Module__FXNS__C;
}

/* Module_to_ti_sysbios_interfaces_IHwi */


/* Handle_upCast */
static inline ti_sysbios_interfaces_IHwi_Handle ti_sysbios_family_arm_m3_Hwi_Handle_upCast( ti_sysbios_family_arm_m3_Hwi_Handle i )
{
    return (ti_sysbios_interfaces_IHwi_Handle)i;
}

/* Handle_to_ti_sysbios_interfaces_IHwi */


/* Handle_downCast */
static inline ti_sysbios_family_arm_m3_Hwi_Handle ti_sysbios_family_arm_m3_Hwi_Handle_downCast( ti_sysbios_interfaces_IHwi_Handle i )
{
    ti_sysbios_interfaces_IHwi_Handle i2 = (ti_sysbios_interfaces_IHwi_Handle)i;
    return (void*)i2->__fxns == (void*)&ti_sysbios_family_arm_m3_Hwi_Module__FXNS__C ? (ti_sysbios_family_arm_m3_Hwi_Handle)i : 0;
}

/* Handle_from_ti_sysbios_interfaces_IHwi */



/*
 * ======== SYSTEM FUNCTIONS ========
 */

/* Module_startupDone */


/* Object_heap */


/* Module_heap */


/* Module_id */
static inline CT__ti_sysbios_family_arm_m3_Hwi_Module__id ti_sysbios_family_arm_m3_Hwi_Module_id( void ) 
{
    return ti_sysbios_family_arm_m3_Hwi_Module__id__C;
}

/* Module_hasMask */
static inline xdc_Bool ti_sysbios_family_arm_m3_Hwi_Module_hasMask( void ) 
{
    return ti_sysbios_family_arm_m3_Hwi_Module__diagsMask__C != 0;
}

/* Module_getMask */
static inline xdc_Bits16 ti_sysbios_family_arm_m3_Hwi_Module_getMask( void ) 
{
    return ti_sysbios_family_arm_m3_Hwi_Module__diagsMask__C != 0 ? *ti_sysbios_family_arm_m3_Hwi_Module__diagsMask__C : 0;
}

/* Module_setMask */
static inline void ti_sysbios_family_arm_m3_Hwi_Module_setMask( xdc_Bits16 mask ) 
{
    if (ti_sysbios_family_arm_m3_Hwi_Module__diagsMask__C != 0) *ti_sysbios_family_arm_m3_Hwi_Module__diagsMask__C = mask;
}

/* Params_init */
static inline void ti_sysbios_family_arm_m3_Hwi_Params_init( ti_sysbios_family_arm_m3_Hwi_Params *prms ) 
{
    if (prms) {
        ti_sysbios_family_arm_m3_Hwi_Params__init__S(prms, 0, sizeof(ti_sysbios_family_arm_m3_Hwi_Params), sizeof(xdc_runtime_IInstance_Params));
    }
}

/* Params_copy */
static inline void ti_sysbios_family_arm_m3_Hwi_Params_copy(ti_sysbios_family_arm_m3_Hwi_Params *dst, const ti_sysbios_family_arm_m3_Hwi_Params *src) 
{
    if (dst) {
        ti_sysbios_family_arm_m3_Hwi_Params__init__S(dst, (const void *)src, sizeof(ti_sysbios_family_arm_m3_Hwi_Params), sizeof(xdc_runtime_IInstance_Params));
    }
}

/* Object_count */


/* Object_sizeof */


/* Object_get */
static inline ti_sysbios_family_arm_m3_Hwi_Handle ti_sysbios_family_arm_m3_Hwi_Object_get(ti_sysbios_family_arm_m3_Hwi_Instance_State *oarr, int i) 
{
    return (ti_sysbios_family_arm_m3_Hwi_Handle)ti_sysbios_family_arm_m3_Hwi_Object__get__S(oarr, i);
}

/* Object_first */
static inline ti_sysbios_family_arm_m3_Hwi_Handle ti_sysbios_family_arm_m3_Hwi_Object_first( void )
{
    return (ti_sysbios_family_arm_m3_Hwi_Handle)ti_sysbios_family_arm_m3_Hwi_Object__first__S();
}

/* Object_next */
static inline ti_sysbios_family_arm_m3_Hwi_Handle ti_sysbios_family_arm_m3_Hwi_Object_next( ti_sysbios_family_arm_m3_Hwi_Object *obj )
{
    return (ti_sysbios_family_arm_m3_Hwi_Handle)ti_sysbios_family_arm_m3_Hwi_Object__next__S(obj);
}

/* Handle_label */
static inline xdc_runtime_Types_Label *ti_sysbios_family_arm_m3_Hwi_Handle_label( ti_sysbios_family_arm_m3_Hwi_Handle inst, xdc_runtime_Types_Label *lab )
{
    return ti_sysbios_family_arm_m3_Hwi_Handle__label__S(inst, lab);
}

/* Handle_name */
static inline xdc_String ti_sysbios_family_arm_m3_Hwi_Handle_name( ti_sysbios_family_arm_m3_Hwi_Handle inst )
{
    xdc_runtime_Types_Label lab;
    return ti_sysbios_family_arm_m3_Hwi_Handle__label__S(inst, &lab)->iname;
}

/* handle */
static inline ti_sysbios_family_arm_m3_Hwi_Handle ti_sysbios_family_arm_m3_Hwi_handle( ti_sysbios_family_arm_m3_Hwi_Struct *str )
{
    return (ti_sysbios_family_arm_m3_Hwi_Handle)str;
}

/* struct */
static inline ti_sysbios_family_arm_m3_Hwi_Struct *ti_sysbios_family_arm_m3_Hwi_struct( ti_sysbios_family_arm_m3_Hwi_Handle inst )
{
    return (ti_sysbios_family_arm_m3_Hwi_Struct*)inst;
}


/*
 * ======== EPILOGUE ========
 */

# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/Hwi__epilogue.h"
/*
 * Copyright (c) 2015, Texas Instruments Incorporated
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * *  Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * *  Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * *  Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */


extern "C" {




/* Use function call implementations */

/*
 *  ======== Hwi_disable ========
 */


/*
 *  ======== Hwi_enable ========
 */


/*
 *  ======== Hwi_restore ========
 */


# 138 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/Hwi__epilogue.h"


}
# 1156 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/Hwi.h"








/*
 * ======== STATE STRUCTURES ========
 */

# 1207 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/Hwi.h"


/*
 * ======== PREFIX ALIASES ========
 */






/* module prefix */
# 1341 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/Hwi.h"

# 8 "..\\source\\utils/ioDefs.h"

# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/inc/hw_ints.h"
//*****************************************************************************
//
// hw_ints.h - Macros that define the interrupt assignment on Tiva C Series
// MCUs.
//
// Copyright (c) 2005-2015 Texas Instruments Incorporated.  All rights reserved.
// Software License Agreement
// 
//   Redistribution and use in source and binary forms, with or without
//   modification, are permitted provided that the following conditions
//   are met:
// 
//   Redistributions of source code must retain the above copyright
//   notice, this list of conditions and the following disclaimer.
// 
//   Redistributions in binary form must reproduce the above copyright
//   notice, this list of conditions and the following disclaimer in the
//   documentation and/or other materials provided with the  
//   distribution.
// 
//   Neither the name of Texas Instruments Incorporated nor the names of
//   its contributors may be used to endorse or promote products derived
//   from this software without specific prior written permission.
// 
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
// 
// This is part of revision 2.1.1.71 of the Tiva Firmware Development Package.
//
//*****************************************************************************




//*****************************************************************************
//
// The following are defines for the fault assignments.
//
//*****************************************************************************
# 58 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/inc/hw_ints.h"

//*****************************************************************************
//
// TM4C123 Class Interrupts
//
//*****************************************************************************
# 94 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/inc/hw_ints.h"
                                            // Control
# 170 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/inc/hw_ints.h"

//*****************************************************************************
//
// TM4C129 Class Interrupts
//
//*****************************************************************************
# 244 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/inc/hw_ints.h"
                                            // (imprecise)
# 283 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/inc/hw_ints.h"

//*****************************************************************************
//
// TM4C123 Interrupt Class Definition
//
//*****************************************************************************
# 318 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/inc/hw_ints.h"

//*****************************************************************************
//
// TM4C129 Interrupt Class Definition
//
//*****************************************************************************
# 339 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/inc/hw_ints.h"

//*****************************************************************************
//
// Macros to resolve the INT_PERIPH_CLASS name to a common INT_PERIPH name.
//
//*****************************************************************************


//*****************************************************************************
//
// The following are defines for the interrupt assignments.
//
//*****************************************************************************
# 475 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/inc/hw_ints.h"

//*****************************************************************************
//
// The following are defines for the total number of interrupts.
//
//*****************************************************************************


//*****************************************************************************
//
// The following are defines for the total number of priority levels.
//
//*****************************************************************************



# 10 "..\\source\\utils/ioDefs.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/inc/hw_memmap.h"
//*****************************************************************************
//
// hw_memmap.h - Macros defining the memory map of the device.
//
// Copyright (c) 2005-2015 Texas Instruments Incorporated.  All rights reserved.
// Software License Agreement
// 
//   Redistribution and use in source and binary forms, with or without
//   modification, are permitted provided that the following conditions
//   are met:
// 
//   Redistributions of source code must retain the above copyright
//   notice, this list of conditions and the following disclaimer.
// 
//   Redistributions in binary form must reproduce the above copyright
//   notice, this list of conditions and the following disclaimer in the
//   documentation and/or other materials provided with the  
//   distribution.
// 
//   Neither the name of Texas Instruments Incorporated nor the names of
//   its contributors may be used to endorse or promote products derived
//   from this software without specific prior written permission.
// 
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
// 
// This is part of revision 2.1.1.71 of the Tiva Firmware Development Package.
//
//*****************************************************************************




//*****************************************************************************
//
// The following are defines for the base address of the memories and
// peripherals.
//
//*****************************************************************************
# 116 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/inc/hw_memmap.h"
                                            // (GPIOs)

                                            // (GPIOs)

                                            // (GPIOs)
# 141 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/inc/hw_memmap.h"
                                            // Hardware-Accelerated Module

                                            // Accelerator (DES)
# 150 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/inc/hw_memmap.h"

# 11 "..\\source\\utils/ioDefs.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/inc/hw_types.h"
//*****************************************************************************
//
// hw_types.h - Common types and macros.
//
// Copyright (c) 2005-2015 Texas Instruments Incorporated.  All rights reserved.
// Software License Agreement
// 
//   Redistribution and use in source and binary forms, with or without
//   modification, are permitted provided that the following conditions
//   are met:
// 
//   Redistributions of source code must retain the above copyright
//   notice, this list of conditions and the following disclaimer.
// 
//   Redistributions in binary form must reproduce the above copyright
//   notice, this list of conditions and the following disclaimer in the
//   documentation and/or other materials provided with the  
//   distribution.
// 
//   Neither the name of Texas Instruments Incorporated nor the names of
//   its contributors may be used to endorse or promote products derived
//   from this software without specific prior written permission.
// 
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
// 
// This is part of revision 2.1.1.71 of the Tiva Firmware Development Package.
//
//*****************************************************************************




//*****************************************************************************
//
// Macros for hardware access, both direct and via the bit-band region.
//
//*****************************************************************************
# 63 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/inc/hw_types.h"

//*****************************************************************************
//
// Helper Macros for determining silicon revisions, etc.
//
// These macros will be used by Driverlib at "run-time" to create necessary
// conditional code blocks that will allow a single version of the Driverlib
// "binary" code to support multiple(all) Tiva silicon revisions.
//
// It is expected that these macros will be used inside of a standard 'C'
// conditional block of code, e.g.
//
//     if(CLASS_IS_TM4C123)
//     {
//         do some TM4C123-class specific code here.
//     }
//
// By default, these macros will be defined as run-time checks of the
// appropriate register(s) to allow creation of run-time conditional code
// blocks for a common DriverLib across the entire Tiva family.
//
// However, if code-space optimization is required, these macros can be "hard-
// coded" for a specific version of Tiva silicon.  Many compilers will then
// detect the "hard-coded" conditionals, and appropriately optimize the code
// blocks, eliminating any "unreachable" code.  This would result in a smaller
// Driverlib, thus producing a smaller final application size, but at the cost
// of limiting the Driverlib binary to a specific Tiva silicon revision.
//
//*****************************************************************************










































//*****************************************************************************
//
// For TivaWare 2.1, we removed all references to Tiva IC codenames from the
// source.  To ensure that existing customer code doesn't break as a result
// of this change, make sure that the old definitions are still available at
// least for the time being.
//
//*****************************************************************************





# 12 "..\\source\\utils/ioDefs.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/inc/hw_gpio.h"
//*****************************************************************************
//
// hw_gpio.h - Defines and Macros for GPIO hardware.
//
// Copyright (c) 2005-2015 Texas Instruments Incorporated.  All rights reserved.
// Software License Agreement
// 
//   Redistribution and use in source and binary forms, with or without
//   modification, are permitted provided that the following conditions
//   are met:
// 
//   Redistributions of source code must retain the above copyright
//   notice, this list of conditions and the following disclaimer.
// 
//   Redistributions in binary form must reproduce the above copyright
//   notice, this list of conditions and the following disclaimer in the
//   documentation and/or other materials provided with the  
//   distribution.
// 
//   Neither the name of Texas Instruments Incorporated nor the names of
//   its contributors may be used to endorse or promote products derived
//   from this software without specific prior written permission.
// 
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
// 
// This is part of revision 2.1.1.71 of the Tiva Firmware Development Package.
//
//*****************************************************************************




//*****************************************************************************
//
// The following are defines for the GPIO register offsets.
//
//*****************************************************************************
# 79 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/inc/hw_gpio.h"

//*****************************************************************************
//
// The following are defines for the bit fields in the GPIO_O_IM register.
//
//*****************************************************************************

                                            // Enable



//*****************************************************************************
//
// The following are defines for the bit fields in the GPIO_O_RIS register.
//
//*****************************************************************************

                                            // Status



//*****************************************************************************
//
// The following are defines for the bit fields in the GPIO_O_MIS register.
//
//*****************************************************************************

                                            // Status



//*****************************************************************************
//
// The following are defines for the bit fields in the GPIO_O_ICR register.
//
//*****************************************************************************




//*****************************************************************************
//
// The following are defines for the bit fields in the GPIO_O_LOCK register.
//
//*****************************************************************************


                                            // and may be modified

                                            // and may not be modified


//*****************************************************************************
//
// The following are defines for the bit fields in the GPIO_O_SI register.
//
//*****************************************************************************


//*****************************************************************************
//
// The following are defines for the bit fields in the GPIO_O_DR12R register.
//
//*****************************************************************************


                                            // 12-mA drive. This encoding is
                                            // only valid if the GPIOPP EDE bit
                                            // is set and the appropriate
                                            // GPIOPC EDM bit field is
                                            // programmed to 0x3

//*****************************************************************************
//
// The following are defines for the bit fields in the GPIO_O_WAKEPEN register.
//
//*****************************************************************************


//*****************************************************************************
//
// The following are defines for the bit fields in the GPIO_O_WAKELVL register.
//
//*****************************************************************************


//*****************************************************************************
//
// The following are defines for the bit fields in the GPIO_O_WAKESTAT
// register.
//
//*****************************************************************************


//*****************************************************************************
//
// The following are defines for the bit fields in the GPIO_O_PP register.
//
//*****************************************************************************


//*****************************************************************************
//
// The following are defines for the bit fields in the GPIO_O_PC register.
//
//*****************************************************************************
# 194 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/inc/hw_gpio.h"
                                            // are maintained. GPIO n Drive
                                            // Select (GPIODRnR) registers
                                            // function as normal

                                            // provided

                                            // setting the corresponding
                                            // GPIODR4R register bit adds 2 mA
                                            // and setting the corresponding
                                            // GPIODR8R of GPIODR12R register
                                            // bit adds an additional 4 mA
# 212 "C:/ti/tirtos_tivac_2_16_00_08/products/TivaWare_C_Series-2.1.1.71b/inc/hw_gpio.h"

# 13 "..\\source\\utils/ioDefs.h"




# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/tidrivers_tivac_2_16_00_08/packages/ti/drivers/I2C.h"
/*
 * Copyright (c) 2015, Texas Instruments Incorporated
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * *  Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * *  Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * *  Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
/** ============================================================================
 *  @file       I2C.h
 *
 *  @brief      I2C driver interface
 *
 *  The I2C header file should be included in an application as follows:
 *  @code
 *  #include <ti/drivers/I2C.h>
 *  @endcode
 *
 *  # Operation #
 *  The I2C driver operates as a master on a single-master I2C bus in either
 *  I2C_MODE_BLOCKING or I2C_MODE_CALLBACK.
 *  In blocking mode, the task's execution is blocked during the I2C
 *  transaction. When the transfer has completed, code execution will resume.
 *  In callback mode, the task's execution is not blocked, allowing for other
 *  transactions to be queued up or to process some other code. When the
 *  transfer has completed, the I2C driver will call a user-specified callback
 *  function (from a HWI or SWI context, depending on the device).
 *
 *  The APIs in this driver serve as an interface to a typical TI-RTOS
 *  application. The specific peripheral implementations are responsible to
 *  create all the SYS/BIOS specific primitives to allow for thread-safe
 *  operation.
 *
 *  ## Opening the driver #
 *
 *  @code
 *  I2C_Handle      handle;
 *  I2C_Params      params;
 *  I2C_Transaction i2cTransaction;
 *
 *  I2C_Params_init(&params);
 *  params.transferMode  = I2C_MODE_CALLBACK;
 *  params.transferCallbackFxn = someI2CCallbackFunction;
 *  handle = I2C_open(someI2C_configIndexValue, &params);
 *  if (!handle) {
 *      System_printf("I2C did not open");
 *  }
 *  @endcode
 *
 *  ## Transferring data #
 *  A I2C transaction with a I2C peripheral is started by calling
 *  I2C_transfer(). The details of the I2C transaction is specified with a
 *  I2C_Transaction data structure. This structure allows for any of the three
 *  types of transactions: Write, Read, or Write/Read. Each transfer is
 *  performed atomically with the I2C slave peripheral.
 *
 *  @code
 *  I2C_Transaction i2cTransaction;
 *
 *  i2cTransaction.writeBuf = someWriteBuffer;
 *  i2cTransaction.writeCount = numOfBytesToWrite;
 *
 *  i2cTransaction.readBuf = someReadBuffer;
 *  i2cTransaction.readCount = numOfBytesToRead;
 *
 *  i2cTransaction.slaveAddress = some7BitI2CSlaveAddress;
 *
 *  ret = I2C_transfer(handle, &i2cTransaction);
 *  if (!ret) {
 *      System_printf("Unsuccessful I2C transfer");
 *  }
 *  @endcode
 *
 *  # Implementation #
 *
 *  This module serves as the main interface for TI-RTOS
 *  applications. Its purpose is to redirect the module's APIs to specific
 *  peripheral implementations which are specified using a pointer to a
 *  I2C_FxnTable.
 *
 *  The I2C driver interface module is joined (at link time) to a
 *  NULL-terminated array of I2C_Config data structures named *I2C_config*.
 *  *I2C_config* is implemented in the application with each entry being an
 *  instance of a I2C peripheral. Each entry in *I2C_config* contains a:
 *  - (I2C_FxnTable *) to a set of functions that implement a I2C peripheral
 *  - (void *) data object that is associated with the I2C_FxnTable
 *  - (void *) hardware attributes that are associated to the I2C_FxnTable
 *
 *  # Instrumentation #
 *  The I2C driver interface produces log statements if instrumentation is
 *  enabled.
 *
 *  Diagnostics Mask | Log details |
 *  ---------------- | ----------- |
 *  Diags_USER1      | basic operations performed |
 *  Diags_USER2      | detailed operations performed |
 *
 *  ============================================================================
 */





extern "C" {


# 1 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/stddef.h"
/* -*- C++ -*- */
/*===--------------------------- complex.h --------------------------------===*/
/*                                                                            */
/*                     The LLVM Compiler Infrastructure                       */
/*                                                                            */
/* This file is dual licensed under the MIT and the University of Illinois Open
** Source Licenses. See LICENSE.TXT for details.
*/
/*===----------------------------------------------------------------------===*/

# 134 "C:/ti/tirtos_tivac_2_16_00_08/products/tidrivers_tivac_2_16_00_08/packages/ti/drivers/I2C.h"

/**
 *  @defgroup I2C_CONTROL I2C_control command and status codes
 *  These I2C macros are reservations for I2C.h
 *  @{
 */

/*!
 * Common I2C_control command code reservation offset.
 * I2C driver implementations should offset command codes with I2C_CMD_RESERVED
 * growing positively
 *
 * Example implementation specific command codes:
 * @code
 * #define I2CXYZ_CMD_COMMAND0      I2C_CMD_RESERVED + 0
 * #define I2CXYZ_CMD_COMMAND1      I2C_CMD_RESERVED + 1
 * @endcode
 */


/*!
 * Common I2C_control status code reservation offset.
 * I2C driver implementations should offset status codes with
 * I2C_STATUS_RESERVED growing negatively.
 *
 * Example implementation specific status codes:
 * @code
 * #define I2CXYZ_STATUS_ERROR0     I2C_STATUS_RESERVED - 0
 * #define I2CXYZ_STATUS_ERROR1     I2C_STATUS_RESERVED - 1
 * #define I2CXYZ_STATUS_ERROR2     I2C_STATUS_RESERVED - 2
 * @endcode
 */


/**
 *  @defgroup I2C_STATUS Status Codes
 *  I2C_STATUS_* macros are general status codes returned by I2C_control()
 *  @{
 *  @ingroup I2C_CONTROL
 */

/*!
 * @brief   Successful status code returned by I2C_control().
 *
 * I2C_control() returns I2C_STATUS_SUCCESS if the control code was executed
 * successfully.
 */


/*!
 * @brief   Generic error status code returned by I2C_control().
 *
 * I2C_control() returns I2C_STATUS_ERROR if the control code was not executed
 * successfully.
 */


/*!
 * @brief   An error status code returned by I2C_control() for undefined
 * command codes.
 *
 * I2C_control() returns I2C_STATUS_UNDEFINEDCMD if the control code is not
 * recognized by the driver implementation.
 */

/** @}*/

/**
 *  @defgroup I2C_CMD Command Codes
 *  I2C_CMD_* macros are general command codes for I2C_control(). Not all I2C
 *  driver implementations support these command codes.
 *  @{
 *  @ingroup I2C_CONTROL
 */

/* Add I2C_CMD_<commands> here */

/** @}*/

/** @}*/

/*!
 *  @brief      A handle that is returned from a I2C_open() call.
 */
typedef struct I2C_Config      *I2C_Handle;

/*!
 *  @brief  I2C transaction
 *
 *  This structure defines the nature of the I2C transaction. This structure
 *  specifies the buffer and buffer's size that is to be written to or read from
 *  the I2C slave peripheral.
 *  arg is an optional user supplied argument that will be passed
 *  to the callback function when the I2C driver is in I2C_MODE_CALLBACK.
 *  nextPtr is to be only used by the I2C driver.
 */
typedef struct I2C_Transaction {
    void    *writeBuf;    /*!< buffer containing data to be written */
    size_t  writeCount;   /*!< Number of bytes to be written to the slave */

    void    *readBuf;     /*!< buffer to which data is to be read into */
    size_t  readCount;    /*!< Number of bytes to be read from the slave */

    unsigned char slaveAddress; /*!< Address of the I2C slave device */

    void    *arg;         /*!< argument to be passed to the callback function */
    void    *nextPtr;     /*!< used for queuing in I2C_MODE_CALLBACK mode */
} I2C_Transaction;

/*!
 *  @brief  I2C transfer mode
 *
 *  I2C_MODE_BLOCKING block task execution while a I2C transfer is in progress
 *  I2C_MODE_CALLBACK does not block task execution; but calls a callback
 *  function when the I2C transfer has completed
 */
typedef enum I2C_TransferMode {
    I2C_MODE_BLOCKING,  /*!< I2C_transfer blocks execution*/
    I2C_MODE_CALLBACK   /*!< I2C_transfer queues transactions and does not block */
} I2C_TransferMode;

/*!
 *  @brief  I2C callback function
 *
 *  User definable callback function prototype. The I2C driver will call the
 *  defined function and pass in the I2C driver's handle, the pointer to the I2C
 *  transaction that just completed, and the return value of I2C_transfer.
 *
 *  @param  I2C_Handle          I2C_Handle

 *  @param  I2C_Transaction*    Address of the I2C_Transaction performed

 *  @param  bool                Results of the I2C transaction
 */
typedef void (*I2C_CallbackFxn)(I2C_Handle, I2C_Transaction *, bool);

/*!
 *  @brief  I2C bitRate
 *
 *  Specify one of the standardized I2C bus bit rates for I2C communications.
 *  The default is I2C_100kHz.
 */
typedef enum I2C_BitRate {
    I2C_100kHz = 0,
    I2C_400kHz = 1
} I2C_BitRate;

/*!
 *  @brief  I2C Parameters
 *
 *  I2C parameters are used to with the I2C_open() call. Default values for
 *  these parameters are set using I2C_Params_init().
 *
 *  If I2C_TransferMode is set to I2C_MODE_BLOCKING then I2C_transfer function
 *  calls will block thread execution until the transaction has completed.
 *
 *  If I2C_TransferMode is set to I2C_MODE_CALLBACK then I2C_transfer will not
 *  block thread execution and it will call the function specified by
 *  transferCallbackFxn. Sequential calls to I2C_transfer in I2C_MODE_CALLBACK
 *  mode will put the designated transaction onto an internal queue that
 *  automatically starts queued transactions after the previous transaction has
 *  completed. (regardless of error state).
 *
 *  I2C_BitRate specifies the I2C bus rate used for I2C communications.
 *
 *  @sa     I2C_Params_init()
 */
typedef struct I2C_Params {
    I2C_TransferMode    transferMode; /*!< Blocking or Callback mode */
    I2C_CallbackFxn     transferCallbackFxn; /*!< Callback function pointer */
    I2C_BitRate         bitRate; /*!< I2C bus bit rate */
    uintptr_t           custom;  /*!< Custom argument used by driver
                                      implementation */
} I2C_Params;

/*!
 *  @brief      A function pointer to a driver specific implementation of
 *              I2C_close().
 */
typedef void        (*I2C_CloseFxn)    (I2C_Handle handle);

/*!
 *  @brief      A function pointer to a driver specific implementation of
 *              I2C_control().
 */
typedef int         (*I2C_ControlFxn)  (I2C_Handle handle,
                                        unsigned int cmd,
                                        void *arg);

/*!
 *  @brief      A function pointer to a driver specific implementation of
 *              I2C_init().
 */
typedef void        (*I2C_InitFxn)     (I2C_Handle handle);

/*!
 *  @brief      A function pointer to a driver specific implementation of
 *              I2C_open().
 */
typedef I2C_Handle  (*I2C_OpenFxn)     (I2C_Handle handle,
                                        I2C_Params *params);

/*!
 *  @brief      A function pointer to a driver specific implementation of
 *              I2C_transfer().
 */
typedef bool        (*I2C_TransferFxn) (I2C_Handle handle,
                                        I2C_Transaction *transaction);

/*!
 *  @brief      The definition of a I2C function table that contains the
 *              required set of functions to control a specific I2C driver
 *              implementation.
 */
typedef struct I2C_FxnTable {
    /*! Function to close the specified peripheral */
    I2C_CloseFxn        closeFxn;

    /*! Function to implementation specific control function */
    I2C_ControlFxn      controlFxn;

    /*! Function to initialize the given data object */
    I2C_InitFxn         initFxn;

    /*! Function to open the specified peripheral */
    I2C_OpenFxn         openFxn;

    /*! Function to initiate a I2C data transfer */
    I2C_TransferFxn     transferFxn;
} I2C_FxnTable;

/*!
 *  @brief  I2C Global configuration
 *
 *  The I2C_Config structure contains a set of pointers used to characterize
 *  the I2C driver implementation.
 *
 *  This structure needs to be defined before calling I2C_init() and it must
 *  not be changed thereafter.
 *
 *  @sa     I2C_init()
 */
typedef struct I2C_Config {
    /*! Pointer to a table of driver-specific implementations of I2C APIs */
    I2C_FxnTable const *fxnTablePtr;

    /*! Pointer to a driver specific data object */
    void               *object;

    /*! Pointer to a driver specific hardware attributes structure */
    void         const *hwAttrs;
} I2C_Config;


/*!
 *  @brief  Function to close a I2C peripheral specified by the I2C handle
 *
 *  @pre    I2C_open() had to be called first.
 *
 *  @param  handle  A I2C_Handle returned from I2C_open
 *
 *  @sa     I2C_open()
 */
extern void I2C_close(I2C_Handle handle);

/*!
 *  @brief  Function performs implementation specific features on a given
 *          I2C_Handle.
 *
 *  Commands for I2C_control can originate from I2C.h or from implementation
 *  specific I2C*.h (_I2CCC26XX.h_, _I2CTiva.h_, etc.. ) files.
 *  While commands from I2C.h are API portable across driver implementations,
 *  not all implementations may support all these commands.
 *  Conversely, commands from driver implementation specific I2C*.h files add
 *  unique driver capabilities but are not API portable across all I2C driver
 *  implementations.
 *
 *  Commands supported by I2C.h follow a I2C_CMD_\<cmd\> naming
 *  convention.<br>
 *  Commands supported by I2C*.h follow a I2C*_CMD_\<cmd\> naming
 *  convention.<br>
 *  Each control command defines @b arg differently. The types of @b arg are
 *  documented with each command.
 *
 *  See @ref I2C_CMD "I2C_control command codes" for command codes.
 *
 *  See @ref I2C_STATUS "I2C_control return status codes" for status codes.
 *
 *  @pre    I2C_open() has to be called first.
 *
 *  @param  handle      A I2C handle returned from I2C_open()
 *
 *  @param  cmd         I2C.h or I2C*.h commands.
 *
 *  @param  arg         An optional R/W (read/write) command argument
 *                      accompanied with cmd
 *
 *  @return Implementation specific return codes. Negative values indicate
 *          unsuccessful operations.
 *
 *  @sa     I2C_open()
 */
extern int I2C_control(I2C_Handle handle, unsigned int cmd, void *arg);

/*!
 *  @brief  Function to initializes the I2C module
 *
 *  @pre    The I2C_config structure must exist and be persistent before this
 *          function can be called. This function must also be called before
 *          any other I2C driver APIs. This function call does not modify any
 *          peripheral registers.
 */
extern void I2C_init(void);

/*!
 *  @brief  Function to initialize a given I2C peripheral specified by the
 *          particular index value. The parameter specifies which mode the I2C
 *          will operate.
 *
 *  @pre    I2C controller has been initialized
 *
 *  @param  index         Logical peripheral number for the I2C indexed into
 *                        the I2C_config table
 *
 *  @param  params        Pointer to an parameter block, if NULL it will use
 *                        default values. All the fields in this structure are
 *                        RO (read-only).
 *
 *  @return A I2C_Handle on success or a NULL on an error or if it has been
 *          opened already.
 *
 *  @sa     I2C_init()
 *  @sa     I2C_close()
 */
extern I2C_Handle I2C_open(unsigned int index, I2C_Params *params);

/*!
 *  @brief  Function to initialize the I2C_Params struct to its defaults
 *
 *  @param  params      An pointer to I2C_Params structure for
 *                      initialization
 *
 *  Defaults values are:
 *      transferMode = I2C_MODE_BLOCKING
 *      transferCallbackFxn = NULL
 *      bitRate = I2C_100kHz
 */
extern void I2C_Params_init(I2C_Params *params);

/*!
 *  @brief  Function to perform an I2C transaction with an I2C slave peripheral.
 *
 *  This function will start a I2C transfer and can only be called from a Task
 *  context when in I2C_MODE_BLOCKING.
 *  The I2C transfer procedure starts with evaluating how many bytes are to be
 *  written and how many are to be read from the I2C peripheral. Due to common
 *  I2C data transfer processes, to be written will always sent before any data
 *  is read.
 *
 *  The data written to the peripheral is preceded with the peripheral's 7-bit
 *  I2C slave address (with the Write bit set).
 *  After all the data has been transmitted, the driver will evaluate if any
 *  data needs to be read from the device.
 *  If so, a Re-START bit is sent, along with the same 7-bit I2C slave address
 *  (with the Read bit). Else, the transfer is concluded with a STOP bit.
 *  After the specified number of bytes have been read by the I2C, the transfer
 *  is ended with a NACK and STOP bit.
 *
 *  In I2C_MODE_BLOCKING, I2C_transfer will block task execution until the
 *  transaction has completed.
 *
 *  In I2C_MODE_CALLBACK, I2C_transfer does not block task execution and calls a
 *  callback function specified by transferCallbackFxn when the transfer
 *  completed. Success or failure of the transaction is determined via the
 *  callback function's bool argument. If a transfer is already taking place,
 *  the transaction is put on an internal queue. The queue is serviced in a
 *  first come first served basis.
 *  The I2C_Transaction structure must stay persistent until the I2C_transfer
 *  function has completed!
 *
 *  @param  handle      A I2C_Handle
 *
 *  @param  transaction A pointer to a I2C_Transaction. All of the fields within
 *                      transaction are WO (write-only) unless otherwise noted
 *                      in the driver implementations.
 *
 *  @return In I2C_MODE_BLOCKING: true on successful transfer; false on an
 *          error, such as an I2C bus fault (NACK).
 *          In I2C_MODE_CALLBACK: always true. The transferCallbackFxn's bool
 *          argument will be true if successful; false on an error, such as an
 *          I2C bus fault (NACK).
 *
 *  @sa     I2C_open
 */
extern bool I2C_transfer(I2C_Handle handle, I2C_Transaction *transaction);


}


# 18 "..\\source\\utils/ioDefs.h"



//AD0, AD1 (AD0 is MSB)














/* Segment Arrangement https://en.wikipedia.org/wiki/Seven-segment_display#/media/File:7_Segment_Display_with_Labeled_Segments.svg
 *    A
 *  F   B
 *    G
 *  E   C
 *    D
 *
 * MIRRORED ALONG Z:
 *    A
 *  B   F
 *    G
 *  C   E
 *    D
 */

/* Segment Mapping
 * Pins of IO Expander in IO Expander order, Motor Driver, Physical Location (from board side) Segment Assignment
 * P00	S7F Bottom		D
 * P01 	S7R
 * P02	S6F	Right Bot	E
 * P03	S6R
 * P04	S5F	Right Mid	G
 * P05	S5R
 * P06	S4F	Right Top	F
 * P07	S4R
 * P10	S3F	Top			A
 * P11	S3R
 * P12	S2F	Left Top	B
 * P13	S2R
 * P14	S1F	Left Mid	Extra
 * P15	S1R
 * P16	S0F	Left Bot	C
 * P17	S0R
 */

typedef union SegState
{
    struct
    { //right ordering for io driver
        uint16_t a :2;
        uint16_t b :2;
        uint16_t extra :2;
        uint16_t c :2;
        uint16_t d :2;
        uint16_t e :2;
        uint16_t g :2;
        uint16_t f :2;
    };
    uint16_t rawWord;
} SegState;

extern const SegState segVal0;
extern const SegState segVal1;
extern const SegState segVal2;
extern const SegState segVal3;
extern const SegState segVal4;
extern const SegState segVal5;
extern const SegState segVal6;
extern const SegState segVal7;
extern const SegState segVal8;
extern const SegState segVal9;
extern const SegState segVal_A;
extern const SegState segVal_b;
extern const SegState segVal_C;
extern const SegState segVal_c;
extern const SegState segVal_d;
extern const SegState segVal_E;
extern const SegState segVal_F;
extern const SegState segVal_G;
extern const SegState segVal_H;
extern const SegState segVal_h;
extern const SegState segVal_I;
extern const SegState segVal_i;
extern const SegState segVal_J;
extern const SegState segVal_L;
extern const SegState segVal_n;
extern const SegState segVal_O;
extern const SegState segVal_o;
extern const SegState segVal_P;
extern const SegState segVal_q;
extern const SegState segVal_r;
extern const SegState segVal_S;
extern const SegState segVal_t;
extern const SegState segVal_U;
extern const SegState segVal_u;
extern const SegState segVal_y;
extern const SegState segValQuestion;

extern const SegState segValBlank;
extern const SegState segValAll;
extern const SegState segValOff;

extern const SegState segValShowExtra;
extern const SegState segValHideExtra;

extern const SegState segValAOnly;
extern const SegState segValBOnly;
extern const SegState segValCOnly;
extern const SegState segValDOnly;
extern const SegState segValEOnly;
extern const SegState segValFOnly;
extern const SegState segValGOnly;

//if any conflict or brake, do coast
SegState unionSeg(SegState s0, SegState s1);

//Return new state or 0 if new state is the same is old. Does not care if anything is set to brake. Only periodically do a full set, usually just delta segments
SegState subtractSeg(SegState newState, SegState oldState);

//set state then turn off after delayms
bool applySegState(uint8_t slaveAddress, SegState state, uint32_t onTimeMs);
bool applySegDelta(uint8_t slaveAddress, SegState oldState, SegState newState,
                   uint32_t onTimeMs);

# 12 "..\\source\\defs.h"






# 17 "../source/Leds.cpp"
# 1 "..\\source\\config/gpioConfig.h"
/*
 * Copyright (c) 2015, Texas Instruments Incorporated
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * *  Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * *  Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * *  Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */




typedef enum GPIONames {
	RTC_SQW = 0,
	LAUNCHPAD_SW1,
	LAUNCHPAD_SW2,
	HSD_DISABLE_0, //high is disable
	HSD_DISABLE_1,
	HSD_DISABLE_2,
	HSD_DISABLE_3,
	IO_RESET, //high is reset
	ESP_ENABLE, //high is enable
	BUF_DISABLE, //high is disable
	LAUNCHPAD_LED_BLUE,
	LAUNCHPAD_LED_GREEN,
	LAUNCHPAD_LED_RED,
	GPIOCOUNT
} EK_TM4C123GXL_GPIOName;

extern void initGPIO(void);

/*!
 *  @brief  Initialize board specific I2C settings
 *
 *  This function initializes the board specific I2C settings and then calls
 *  the I2C_init API to initialize the I2C module.
 *
 *  The I2C peripherals controlled by the I2C module are determined by the
 *  I2C_config variable.
 */

# 18 "../source/Leds.cpp"
# 1 "..\\source\\utils/ledDefs.h"
/*
 * ledDefs.h
 *
 *  Created on: Dec 22, 2020
 *      Author: Dan
 */







# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 369 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== PREFIX ALIASES ========
 */



# 425 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 16 "..\\source\\utils/ledDefs.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/System.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 426 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/System.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 449 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/System.h"


/*
 * ======== PREFIX ALIASES ========
 */



# 516 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/System.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 17 "..\\source\\utils/ledDefs.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/Hwi.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     CREATE ARGS
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION DECLARATIONS
 *     CONVERTORS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 1162 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/Hwi.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 1207 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/Hwi.h"


/*
 * ======== PREFIX ALIASES ========
 */



# 18 "..\\source\\utils/ledDefs.h"

# 1 "..\\source\\utils\\iodefs.h"



# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 347 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 369 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"


/*
 * ======== PREFIX ALIASES ========
 */



# 425 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/Error.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:45; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 6 "..\\source\\utils\\iodefs.h"
# 1 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/System.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     FUNCTION DECLARATIONS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 426 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/System.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 449 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/System.h"


/*
 * ======== PREFIX ALIASES ========
 */



# 516 "C:/ti/xdctools_3_32_00_06_core/packages/xdc/runtime/System.h"
/*
 *  @(#) xdc.runtime; 2, 1, 0,0; 12-9-2015 17:36:49; /db/ztree/library/trees/xdc/xdc-B06/src/packages/
 */

# 7 "..\\source\\utils\\iodefs.h"
# 1 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/Hwi.h"
/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-B06
 */

/*
 * ======== GENERATED SECTIONS ========
 *     
 *     PROLOGUE
 *     INCLUDES
 *     
 *     CREATE ARGS
 *     INTERNAL DEFINITIONS
 *     MODULE-WIDE CONFIGS
 *     PER-INSTANCE TYPES
 *     VIRTUAL FUNCTIONS
 *     FUNCTION DECLARATIONS
 *     CONVERTORS
 *     SYSTEM FUNCTIONS
 *     
 *     EPILOGUE
 *     STATE STRUCTURES
 *     PREFIX ALIASES
 */


/*
 * ======== PROLOGUE ========
 */

# 1162 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/Hwi.h"


/*
 * ======== STATE STRUCTURES ========
 */

# 1207 "C:/ti/tirtos_tivac_2_16_00_08/products/bios_6_45_01_29/packages/ti/sysbios/family/arm/m3/Hwi.h"


/*
 * ======== PREFIX ALIASES ========
 */



# 8 "..\\source\\utils\\iodefs.h"






# 24 "..\\source\\utils/ledDefs.h"

/* Segment Arrangement https://en.wikipedia.org/wiki/Seven-segment_display#/media/File:7_Segment_Display_with_Labeled_Segments.svg
 *    A
 *  F   B
 *    G
 *  E   C
 *    D
 *
 * MIRRORED ALONG Z:
 *    A
 *  B   F
 *    G
 *  C   E
 *    D
 */

/* LED Ordering
 * Segment Index, Direction (increasing index)
 * C		up
 * Extra	??
 * B		up
 * A		left
 * F		down
 * G		left
 * E		down
 * D		left
 */










//default to on



//#define GEN_LED_STRING_STRUCT_ELEMENTS(TYPE)	struct Elements_type_##TYPE    { /*Overall ordering*/        TYPE amPm[6];        TYPE alarm[8];        TYPE minutesOnes[NUM_LEDS_NO_EXTRA+2];/*using extra segment for moving part of ampm*/		TYPE minutesTens[NUM_LEDS_NO_EXTRA];		TYPE dots[2];		TYPE hoursOnes[NUM_LEDS_NO_EXTRA];		TYPE hoursTens[NUM_LEDS_NO_EXTRA];    }
# 76 "..\\source\\utils/ledDefs.h"









//plain-c version of CRGB
typedef struct CRGB_C{
	union {
		struct {
			union {
				uint8_t r;
				uint8_t red;
			};
			union {
				uint8_t g;
				uint8_t green;
			};
			union {
				uint8_t b;
				uint8_t blue;
			};
		};
		uint8_t raw[3];
	};
} CRGB_C;

typedef union LedStringVals{
	struct Elements_type_CRGB_C { CRGB_C hoursTens[21]; };
	CRGB_C fullArray[sizeof(struct Elements_type_CRGB_C)];
} LedStringVals;

typedef union LedStringMasks{
	struct Elements_type_bool { bool hoursTens[21]; };
	bool fullArray[sizeof(struct Elements_type_bool)];
} LedStringMasks;

typedef struct SegmentMaskRequest {
	bool maskArray[21+2];
	uint8_t segmentLedId;
} SegmentMaskRequest;

void calculateMask(SegState segState, bool returnMaskArray[], uint8_t numExtraLeds); //returnMaskArray of appropriate size

# 19 "../source/Leds.cpp"

void buildFrameBuf();
void initFrameBuf();




CRGB colorCorrection=LEDColorCorrection::TypicalLEDStrip;
CRGB colorTemperature=ColorTemperature::UncorrectedTemperature;
LedStringVals ledstringVals;
uint8_t brightness;

uint8_t frameBuf[(4+(3*8)*4+(((3*8)+14)/16))];
uint8_t rxbuf[(4+(3*8)*4+(((3*8)+14)/16))]; //Garbage data, required by RTOS drivers

extern "C" void updateLeds(UArg arg0, UArg arg1) {
	uint32_t frameIdx = 0;

	initFrameBuf();

	while (1) {
		//fill_rainbow(leds, NUM_LEDS, frameIdx, 20);
		fill_solid(ledStringVals.fullArray, (3*8),CRGB::Black);
		//fill_solid(leds, (frameIdx/10)%NUM_LEDS,CRGB::White);
		fill_rainbow(leds, (frameIdx/10)%(3*8), ((frameIdx/10)/(3*8))*10, 20);
		if(frameIdx%60==0)
			brightness++;

		buildFrameBuf();

		SPI_Transaction transaction;
		transaction.count = sizeof(frameBuf);
		transaction.txBuf = frameBuf;
		transaction.rxBuf = rxbuf;
		transaction.arg = (void *)frameIdx;
		bool success;
		success = SPI_transfer(ledSPIHandle, &transaction);
		if (!success) {
			xdc_runtime_System_printf__E("SPI Transaction Failed, status %d", transaction.status);
		}

		++frameIdx;
		ti_sysbios_knl_Task_sleep__E(1000 / 60);
	}
}

void buildFrameBuf() {
	uint8_t brightByte = ~(brightness | 0xE0);
	CRGB adjustment = CLEDController::computeAdjustment(255, colorCorrection, colorTemperature);
	for (size_t i = 0; i < (3*8); i++) {
		size_t bufIdx = i * 4 + 4;

		frameBuf[bufIdx++] = brightByte;
		frameBuf[bufIdx++] = ~scale8(leds[i].blue, adjustment.blue);
		frameBuf[bufIdx++] = ~scale8(leds[i].green, adjustment.green);
		frameBuf[bufIdx] = ~scale8(leds[i].red, adjustment.red);
	}

}

void initFrameBuf() {
	frameBuf[0] = ~0x00;
	frameBuf[1] = ~0x00;
	frameBuf[2] = ~0x00;
	frameBuf[3] = ~0x00;

	for (size_t i = (4+(3*8)*4+(((3*8)+14)/16)) - (((3*8)+14)/16); i < (4+(3*8)*4+(((3*8)+14)/16)); i++) {
		frameBuf[i] = ~0x00;
	}
}
