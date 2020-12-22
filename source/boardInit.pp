# 1 "../source/boardInit.c"
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

# 100 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/_ti_config.h"
/* C */

 /* C11 */
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

# 347 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/sys/cdefs.h"

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
	long long __max_align1 __attribute__((aligned(_Alignof(long long))));
	long double __max_align2 __attribute__((aligned(_Alignof(long double))));
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

# 150 "C:/ti/tirtos_tivac_2_16_00_08/products/tidrivers_tivac_2_16_00_08/packages/ti/drivers/SPI.h"
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













_Pragma("diag_pop")

# 151 "C:/ti/tirtos_tivac_2_16_00_08/products/tidrivers_tivac_2_16_00_08/packages/ti/drivers/SPI.h"
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









typedef int ptrdiff_t;







typedef unsigned size_t;


# 73 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/stddef.h"

typedef unsigned short wchar_t;




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





_Pragma("diag_pop")

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
typedef _Bool        (*SPI_TransferFxn)       (SPI_Handle handle,
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
extern _Bool SPI_transfer(SPI_Handle handle, SPI_Transaction *transaction);

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





# 12 "C:/Users/Dan/Documents/GitHub/FlipClock/source/config/serialConfig.h"

SPI_Handle ledSPIHandle;

extern void initSPI();
extern void initI2C();

# 2 "../source/boardInit.c"
# 1 "..\\source\\boardInit.h"
/*
 * boardInit.h
 *
 *  Created on: Aug 16, 2020
 *      Author: Dan
 */




extern void init();

# 3 "../source/boardInit.c"
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

# 4 "../source/boardInit.c"
# 1 "..\\source\\config/adcConfig.h"
/*
 * adcConfig.h
 *
 *  Created on: Aug 29, 2020
 *      Author: Dan
 */




void initADC(void);

# 5 "../source/boardInit.c"

void init() {
	initGPIO();
	initSPI();
	initI2C();
	initADC();
}
