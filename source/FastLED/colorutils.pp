# 1 "../source/FastLED/colorutils.cpp"



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

# 5 "../source/FastLED/colorutils.cpp"
# 1 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/math.h"
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
    math.h synopsis

Macros:

    HUGE_VAL
    HUGE_VALF               // C99
    HUGE_VALL               // C99
    INFINITY                // C99
    NAN                     // C99
    FP_INFINITE             // C99
    FP_NAN                  // C99
    FP_NORMAL               // C99
    FP_SUBNORMAL            // C99
    FP_ZERO                 // C99
    FP_FAST_FMA             // C99
    FP_FAST_FMAF            // C99
    FP_FAST_FMAL            // C99
    FP_ILOGB0               // C99
    FP_ILOGBNAN             // C99
    MATH_ERRNO              // C99
    MATH_ERREXCEPT          // C99
    math_errhandling        // C99

Types:

    float_t                 // C99
    double_t                // C99

// C90

floating_point abs(floating_point x);

floating_point acos (arithmetic x);
float          acosf(float x);
long double    acosl(long double x);

floating_point asin (arithmetic x);
float          asinf(float x);
long double    asinl(long double x);

floating_point atan (arithmetic x);
float          atanf(float x);
long double    atanl(long double x);

floating_point atan2 (arithmetic y, arithmetic x);
float          atan2f(float y, float x);
long double    atan2l(long double y, long double x);

floating_point ceil (arithmetic x);
float          ceilf(float x);
long double    ceill(long double x);

floating_point cos (arithmetic x);
float          cosf(float x);
long double    cosl(long double x);

floating_point cosh (arithmetic x);
float          coshf(float x);
long double    coshl(long double x);

floating_point exp (arithmetic x);
float          expf(float x);
long double    expl(long double x);

floating_point fabs (arithmetic x);
float          fabsf(float x);
long double    fabsl(long double x);

floating_point floor (arithmetic x);
float          floorf(float x);
long double    floorl(long double x);

floating_point fmod (arithmetic x, arithmetic y);
float          fmodf(float x, float y);
long double    fmodl(long double x, long double y);

floating_point frexp (arithmetic value, int* exp);
float          frexpf(float value, int* exp);
long double    frexpl(long double value, int* exp);

floating_point ldexp (arithmetic value, int exp);
float          ldexpf(float value, int exp);
long double    ldexpl(long double value, int exp);

floating_point log (arithmetic x);
float          logf(float x);
long double    logl(long double x);

floating_point log10 (arithmetic x);
float          log10f(float x);
long double    log10l(long double x);

floating_point modf (floating_point value, floating_point* iptr);
float          modff(float value, float* iptr);
long double    modfl(long double value, long double* iptr);

floating_point pow (arithmetic x, arithmetic y);
float          powf(float x, float y);
long double    powl(long double x, long double y);

floating_point sin (arithmetic x);
float          sinf(float x);
long double    sinl(long double x);

floating_point sinh (arithmetic x);
float          sinhf(float x);
long double    sinhl(long double x);

floating_point sqrt (arithmetic x);
float          sqrtf(float x);
long double    sqrtl(long double x);

floating_point tan (arithmetic x);
float          tanf(float x);
long double    tanl(long double x);

floating_point tanh (arithmetic x);
float          tanhf(float x);
long double    tanhl(long double x);

//  C99

bool signbit(arithmetic x);

int fpclassify(arithmetic x);

bool isfinite(arithmetic x);
bool isinf(arithmetic x);
bool isnan(arithmetic x);
bool isnormal(arithmetic x);

bool isgreater(arithmetic x, arithmetic y);
bool isgreaterequal(arithmetic x, arithmetic y);
bool isless(arithmetic x, arithmetic y);
bool islessequal(arithmetic x, arithmetic y);
bool islessgreater(arithmetic x, arithmetic y);
bool isunordered(arithmetic x, arithmetic y);

floating_point acosh (arithmetic x);
float          acoshf(float x);
long double    acoshl(long double x);

floating_point asinh (arithmetic x);
float          asinhf(float x);
long double    asinhl(long double x);

floating_point atanh (arithmetic x);
float          atanhf(float x);
long double    atanhl(long double x);

floating_point cbrt (arithmetic x);
float          cbrtf(float x);
long double    cbrtl(long double x);

floating_point copysign (arithmetic x, arithmetic y);
float          copysignf(float x, float y);
long double    copysignl(long double x, long double y);

floating_point erf (arithmetic x);
float          erff(float x);
long double    erfl(long double x);

floating_point erfc (arithmetic x);
float          erfcf(float x);
long double    erfcl(long double x);

floating_point exp2 (arithmetic x);
float          exp2f(float x);
long double    exp2l(long double x);

floating_point expm1 (arithmetic x);
float          expm1f(float x);
long double    expm1l(long double x);

floating_point fdim (arithmetic x, arithmetic y);
float          fdimf(float x, float y);
long double    fdiml(long double x, long double y);

floating_point fma (arithmetic x, arithmetic y, arithmetic z);
float          fmaf(float x, float y, float z);
long double    fmal(long double x, long double y, long double z);

floating_point fmax (arithmetic x, arithmetic y);
float          fmaxf(float x, float y);
long double    fmaxl(long double x, long double y);

floating_point fmin (arithmetic x, arithmetic y);
float          fminf(float x, float y);
long double    fminl(long double x, long double y);

floating_point hypot (arithmetic x, arithmetic y);
float          hypotf(float x, float y);
long double    hypotl(long double x, long double y);

int ilogb (arithmetic x);
int ilogbf(float x);
int ilogbl(long double x);

floating_point lgamma (arithmetic x);
float          lgammaf(float x);
long double    lgammal(long double x);

long long llrint (arithmetic x);
long long llrintf(float x);
long long llrintl(long double x);

long long llround (arithmetic x);
long long llroundf(float x);
long long llroundl(long double x);

floating_point log1p (arithmetic x);
float          log1pf(float x);
long double    log1pl(long double x);

floating_point log2 (arithmetic x);
float          log2f(float x);
long double    log2l(long double x);

floating_point logb (arithmetic x);
float          logbf(float x);
long double    logbl(long double x);

long lrint (arithmetic x);
long lrintf(float x);
long lrintl(long double x);

long lround (arithmetic x);
long lroundf(float x);
long lroundl(long double x);

double      nan (const char* str);
float       nanf(const char* str);
long double nanl(const char* str);

floating_point nearbyint (arithmetic x);
float          nearbyintf(float x);
long double    nearbyintl(long double x);

floating_point nextafter (arithmetic x, arithmetic y);
float          nextafterf(float x, float y);
long double    nextafterl(long double x, long double y);

floating_point nexttoward (arithmetic x, long double y);
float          nexttowardf(float x, long double y);
long double    nexttowardl(long double x, long double y);

floating_point remainder (arithmetic x, arithmetic y);
float          remainderf(float x, float y);
long double    remainderl(long double x, long double y);

floating_point remquo (arithmetic x, arithmetic y, int* pquo);
float          remquof(float x, float y, int* pquo);
long double    remquol(long double x, long double y, int* pquo);

floating_point rint (arithmetic x);
float          rintf(float x);
long double    rintl(long double x);

floating_point round (arithmetic x);
float          roundf(float x);
long double    roundl(long double x);

floating_point scalbln (arithmetic x, long ex);
float          scalblnf(float x, long ex);
long double    scalblnl(long double x, long ex);

floating_point scalbn (arithmetic x, int ex);
float          scalbnf(float x, int ex);
long double    scalbnl(long double x, int ex);

floating_point tgamma (arithmetic x);
float          tgammaf(float x);
long double    tgammal(long double x);

floating_point trunc (arithmetic x);
float          truncf(float x);
long double    truncl(long double x);

*/







# 1 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/math.h"
/*
 * Copyright (c) 2015-2015 Texas Instruments Incorporated
 *
 * ====================================================
 * Copyright (C) 1993 by Sun Microsystems, Inc. All rights reserved.
 *
 * Developed at SunPro, a Sun Microsystems, Inc. business.
 * Permission to use, copy, modify, and distribute this
 * software is freely granted, provided that this notice
 * is preserved.
 * ====================================================
 */

/*
 * from: @(#)fdlibm.h 5.1 93/09/24
 * $FreeBSD$
 */






_Pragma("diag_push")
_Pragma("CHECK_MISRA(\"-6.3\")") /* standard types required for standard headers */
_Pragma("CHECK_MISRA(\"-12.7\")") /* bitwise operators not allowed on signed ints */
_Pragma("CHECK_MISRA(\"-16.4\")") /* identifiers in fn defn/decl identical??? fabs/fabsf */
_Pragma("CHECK_MISRA(\"-19.1\")") /* only comments and preproc before #include */
_Pragma("CHECK_MISRA(\"-19.4\")") /* macros expand to simple things */
_Pragma("CHECK_MISRA(\"-19.7\")") /* macros required for implementation */
_Pragma("CHECK_MISRA(\"-19.10\")") /* macro params enclosed in parens */
_Pragma("CHECK_MISRA(\"-20.1\")") /* standard headers must define standard names */
_Pragma("CHECK_MISRA(\"-20.2\")") /* standard headers must define standard names */

# 1 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/_defs.h"
/*****************************************************************************/
/* _defs.h                                                                   */
/*                                                                           */
/* Copyright (c) 2015 Texas Instruments Incorporated                         */
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

_Pragma("CHECK_MISRA(\"-6.3\")") /* numerical typedefs */
_Pragma("CHECK_MISRA(\"-8.1\")") /* visible prototypes */
_Pragma("CHECK_MISRA(\"-8.5\")") /* functions in header files */
_Pragma("CHECK_MISRA(\"-8.11\")") /* use static on fns with internal linkage */
_Pragma("CHECK_MISRA(\"-10.1\")") /* implicit conversion ... bool to int??? */
_Pragma("CHECK_MISRA(\"-10.3\")") /* cast integers but don't widen */
_Pragma("CHECK_MISRA(\"-12.1\")") /* operator precedence */
_Pragma("CHECK_MISRA(\"-12.2\")") /* different order of operations??? */
_Pragma("CHECK_MISRA(\"-12.4\")") /* RHS of &&/|| has side effects??? */
_Pragma("CHECK_MISRA(\"-12.7\")") /* Bitwise operators on signed types */
_Pragma("CHECK_MISRA(\"-14.7\")") /* single point of return */
_Pragma("CHECK_MISRA(\"-14.9\")") /* only compound statement after if/else */
_Pragma("CHECK_MISRA(\"-19.1\")") /* only comments and preproc before #include??? */
_Pragma("CHECK_MISRA(\"-19.4\")") /* macro expands to unparenthesized */
_Pragma("CHECK_MISRA(\"-19.6\")") /* #undef */
_Pragma("CHECK_MISRA(\"-19.7\")") /* function-like macro */

_Pragma("diag_suppress 1558") /* --float_operations_allowed checks */
_Pragma("diag_suppress 3195") /* --advice:performance EABI float_operations_allowed checks */

/*---------------------------------------------------------------------------*/
/* _INLINE_DEFINITION                                                        */
/*                                                                           */
/* The regular (non-llvm-based) TI tools assume C++ inline semantics by      */
/* default, so if a function ends up not being inlined, then its definition  */
/* is kept in the compilation unit (but via COMDAT, we'll only keep one      */
/* definition of the function for the whole application).                    */
/*                                                                           */
/* However, llvm-based TI tools (like arm-llvm) use clang, and clang does    */
/* not assume C++ inline semantics by default. With the below definition of  */
/* _INLINE_DEFINITION for clang, we are going to force functions that are    */
/* declared with __inline to be *always* inlined (even when optimization or  */
/* inlining is somehow disabled).                                            */
/*---------------------------------------------------------------------------*/
# 88 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/_defs.h"

/* This file is included in other user header files; take care not to
   pollute the namespace */

# 1 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/machine/_limits.h"
/*-
 * SPDX-License-Identifier: BSD-3-Clause
 *
 * Copyright (c) 1988, 1993
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
 *	@(#)limits.h	8.3 (Berkeley) 1/4/94
 * $FreeBSD$
 */






_Pragma("diag_push")
_Pragma("CHECK_MISRA(\"-19.4\")")

/*
 * According to ANSI (section 2.2.4.2), the values below must be usable by
 * #if preprocessing directives.  Additionally, the expression must have the
 * same type as would an expression that is an object of the corresponding
 * type converted according to the integral promotions.  The subtraction for
 * INT_MIN, etc., is so the value is not unsigned; e.g., 0x80000000 is an
 * unsigned int for 32-bit two's complement ANSI compilers (section 3.1.3.2).
 */




















			/* max value for an unsigned long long */











/* Quads and long longs are the same size.  Ensure they stay in sync. */







/* Minimum signal stack size. */


_Pragma("diag_pop")

# 95 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/_defs.h"
# 105 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/_defs.h"

# 117 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/_defs.h"

/* normalize target-specific intrinsics */

# 184 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/_defs.h"

# 193 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/_defs.h"






























# 231 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/_defs.h"































# 268 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/_defs.h"

# 286 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/_defs.h"

# 302 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/_defs.h"

extern "C" {



# 329 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/_defs.h"


/* always inline these functions so that calls to them don't appear in
   an object file and become part of the ABI. */

 inline int __isfinite(double d)
{ return (((((unsigned int)(((((__uint64_t)_hi(d) << 32 | _lo(d)))) >> 48)) & 0x7ff0u) == 0x7ff0u)) == 0; }
 inline int __isfinitef(float f)
{ return (((((unsigned int)((_ftoi(f)) >> 16)) & 0x7f80u) == 0x7f80u)) == 0; }
 inline int __isfinitel(long double e)
{ return (((((unsigned int)(((((__uint64_t)_hi(e) << 32 | _lo(e)))) >> 48)) & 0x7ff0u) == 0x7ff0u)) == 0; }

 inline int __isnan(double d)
{ return (((((unsigned int)(((((__uint64_t)_hi(d) << 32 | _lo(d)))) >> 48)) & 0x7ff0u) == 0x7ff0u)) &&
        ((((((((__uint64_t)_hi(d) << 32 | _lo(d)))) & (((__uint64_t)(1) << (53-1)) - 1)) == 0)) == 0); }
 inline int __isnanf(float f)
{ return (((((unsigned int)((_ftoi(f)) >> 16)) & 0x7f80u) == 0x7f80u)) &&
        (((((_ftoi(f)) & (((__uint32_t)(1) << (24-1)) - 1)) == 0)) == 0); }
 inline int __isnanl(long double e)
{ return (((((unsigned int)(((((__uint64_t)_hi(e) << 32 | _lo(e)))) >> 48)) & 0x7ff0u) == 0x7ff0u)) &&
        ((((((((__uint64_t)_hi(e) << 32 | _lo(e)))) & (((__uint64_t)(1) << (53-1)) - 1)) == 0)) == 0); }

 inline int __isnormal(double d)
{ return (((((((((__uint64_t)_hi(d) << 32 | _lo(d)))) >> (53-1)) & ((1024u * 2) - 1)) == 0)) == 0) &&
         ((((((unsigned int)(((((__uint64_t)_hi(d) << 32 | _lo(d)))) >> 48)) & 0x7ff0u) == 0x7ff0u)) == 0); }

 inline int __isnormalf(float f)
{ return ((((((unsigned int)((_ftoi(f)) >> (24-1))) & ((128u * 2) - 1)) == 0)) == 0) &&
         ((((((unsigned int)((_ftoi(f)) >> 16)) & 0x7f80u) == 0x7f80u)) == 0); }

 inline int __isnormall(long double e)
{ return (((((((((__uint64_t)_hi(e) << 32 | _lo(e)))) >> (53-1)) & ((1024u * 2) - 1)) == 0)) == 0) &&
         ((((((unsigned int)(((((__uint64_t)_hi(e) << 32 | _lo(e)))) >> 48)) & 0x7ff0u) == 0x7ff0u)) == 0); }

 inline int __signbit(double d)
{ return (((((((__uint64_t)_hi(d) << 32 | _lo(d)))) & ((__uint64_t)(1) << (64-1))) == 0)) == 0; }
 inline int __signbitf(float f)
{ return ((((_ftoi(f)) & ((__uint32_t)(1) << (32-1))) == 0)) == 0; }
 inline int __signbitl(long double e)
{ return (((((((__uint64_t)_hi(e) << 32 | _lo(e)))) & ((__uint64_t)(1) << (64-1))) == 0)) == 0; }

/* FreeBSD lib/libc/gen/isinf.c says "These routines belong in libm,
   but they must remain in libc for binary compat until we can bump
   libm's major version number" */

 inline int __isinff(float f)
{ return (((((unsigned int)((_ftoi(f)) >> 16)) & 0x7f80u) == 0x7f80u)) && ((((_ftoi(f)) & (((__uint32_t)(1) << (24-1)) - 1)) == 0)); }
 inline int __isinf (double d)
{ return (((((unsigned int)(((((__uint64_t)_hi(d) << 32 | _lo(d)))) >> 48)) & 0x7ff0u) == 0x7ff0u)) && (((((((__uint64_t)_hi(d) << 32 | _lo(d)))) & (((__uint64_t)(1) << (53-1)) - 1)) == 0)); }
 inline int __isinfl(long double e)
{ return (((((unsigned int)(((((__uint64_t)_hi(e) << 32 | _lo(e)))) >> 48)) & 0x7ff0u) == 0x7ff0u)) && (((((((__uint64_t)_hi(e) << 32 | _lo(e)))) & (((__uint64_t)(1) << (53-1)) - 1)) == 0)); }

/* Symbolic constants to classify floating point numbers. */
# 395 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/_defs.h"

 inline int __fpclassifyf(float f)
{
    if ((((((unsigned int)((_ftoi(f)) >> 16)) & 0x7f80u) == 0x7f80u)))
    {
        if (((((_ftoi(f)) & (((__uint32_t)(1) << (24-1)) - 1)) == 0)))
            return 1;
        else return 2;
    }
    if ((((((unsigned int)((_ftoi(f)) >> (24-1))) & ((128u * 2) - 1)) == 0)))
    {
        if (((((_ftoi(f)) & (((__uint32_t)(1) << (24-1)) - 1)) == 0)))
            return 0;
        else return (-2);
    }
    return (-1);
}

 inline int __fpclassify (double d)
{
    if ((((((unsigned int)(((((__uint64_t)_hi(d) << 32 | _lo(d)))) >> 48)) & 0x7ff0u) == 0x7ff0u)))
    {
        if ((((((((__uint64_t)_hi(d) << 32 | _lo(d)))) & (((__uint64_t)(1) << (53-1)) - 1)) == 0)))
            return 1;
        else return 2;
    }
    if (((((((((__uint64_t)_hi(d) << 32 | _lo(d)))) >> (53-1)) & ((1024u * 2) - 1)) == 0)))
    {
        if ((((((((__uint64_t)_hi(d) << 32 | _lo(d)))) & (((__uint64_t)(1) << (53-1)) - 1)) == 0)))
            return 0;
        else return (-2);
    }
    return (-1);
}

 inline int __fpclassifyl(long double e)
{
    if ((((((unsigned int)(((((__uint64_t)_hi(e) << 32 | _lo(e)))) >> 48)) & 0x7ff0u) == 0x7ff0u)))
    {
        if ((((((((__uint64_t)_hi(e) << 32 | _lo(e)))) & (((__uint64_t)(1) << (53-1)) - 1)) == 0)))
            return 1;
        else return 2;
    }
    if (((((((((__uint64_t)_hi(e) << 32 | _lo(e)))) >> (53-1)) & ((1024u * 2) - 1)) == 0)))
    {
        if ((((((((__uint64_t)_hi(e) << 32 | _lo(e)))) & (((__uint64_t)(1) << (53-1)) - 1)) == 0)))
            return 0;
        else return (-2);
    }
    return (-1);
}



}

/*
 * Relevant target macros indicating hardware float support
 *
 * all
 * 	__TI_PROPRIETARY_STRICT_FP_MACRO
 * ARM
 *      __ARM_FP
 * C2000
 *      __TMS320C28XX_FPU32__
 *      __TMS320C28XX_FPU64__
 *      __TMS320C28XX_TMU__	adds div, sqrt, sin, cos, atan, atan2
 * C6000
 *      _TMS320C6700		indicates C67x or later
 */

# 475 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/_defs.h"

# 483 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/_defs.h"

















_Pragma("diag_pop")

# 36 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/math.h"

/*
 * ANSI/POSIX
 */

# 72 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/math.h"



















/* Symbolic constants to classify floating point numbers. */







# 121 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/math.h"







# 144 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/math.h"



/*
 * XOPEN/SVID
 */
# 165 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/math.h"


extern "C" {


/*---------------------------------------------------------------------------*/
/* If --fp_mode=relaxed is used and VFP is enabled, use the hardware square  */
/* root directly instead of calling the sqrtx routine. This will not set     */
/* errno if the argument is negative.                                        */
/*                                                                           */
/* This is done by defining sqrt to _relaxed_sqrt to allow other translation */
/* units to use the normal sqrt routine under strict mode.                   */
/*---------------------------------------------------------------------------*/
# 213 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/math.h"

/*---------------------------------------------------------------------------*/
/* TMU SUPPORT AND RELAXED MODE: USE INSTRINSICS.                            */
/*---------------------------------------------------------------------------*/
# 318 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/math.h"

/* Disable double_t and float_t for C28x because of Motorware (AY 2015) */


/* These typedefs depend on the value of FLT_EVAL_METHOD */
typedef	double	double_t;
typedef	float	float_t;


 double      acos(double x);
 float       acosf(float x);
 long double acosl(long double x);
 double      asin(double x);
 float       asinf(float x);
 long double asinl(long double x);
 double      atan(double x);
 float       atanf(float x);
 long double atanl(long double x);
 double      atan2(double y, double x);
 float       atan2f(float y, float x);
 long double atan2l(long double y, long double x);
 double      cos(double x);
 float       cosf(float x);
 long double cosl(long double x);
 double      sin(double x);
 float       sinf(float x);
 long double sinl(long double x);
 double      tan(double x);
 float       tanf(float x);
 long double tanl(long double x);
 double      acosh(double x);
 float       acoshf(float x);
 long double acoshl(long double x);
 double      asinh(double x);
 float       asinhf(float x);
 long double asinhl(long double x);
 double      atanh(double x);
 float       atanhf(float x);
 long double atanhl(long double x);
 double      cosh(double x);
 float       coshf(float x);
 long double coshl(long double x);
 double      sinh(double x);
 float       sinhf(float x);
 long double sinhl(long double x);
 double      tanh(double x);
 float       tanhf(float x);
 long double tanhl(long double x);
 double      exp(double x);
 float       expf(float x);
 long double expl(long double x);
 double      exp2(double x);
 float       exp2f(float x);
 long double exp2l(long double x);
 double      expm1(double x);
 float       expm1f(float x);
 long double expm1l(long double x);
 double      frexp(double val, int *e);
 float       frexpf(float val, int *e);
 long double frexpl(long double val, int *e);
 int         ilogb(double x);
 int         ilogbf(float x);
 int         ilogbl(long double x);
 double      ldexp(double x, int e);
 float       ldexpf(float x, int e);
 long double ldexpl(long double x, int e);
 double      log(double x);
 float       logf(float x);
 long double logl(long double x);
 double      log10(double x);
 float       log10f(float x);
 long double log10l(long double x);
 double      log1p(double x);
 float       log1pf(float x);
 long double log1pl(long double x);
 double      log2(double x);
 float       log2f(float x);
 long double log2l(long double x);
 double      logb(double x);
 float       logbf(float x);
 long double logbl(long double x);
 double      modf(double val, double *iptr);
 float       modff(float val, float *iptr);
 long double modfl(long double val, long double *iptr);
 double      scalbn(double x, int n);
 float       scalbnf(float x, int n);
 long double scalbnl(long double x, int n);
 double      scalbln(double x, long n);
 float       scalblnf(float x, long n);
 long double scalblnl(long double x, long n);
 double      cbrt(double x);
 float       cbrtf(float x);
 long double cbrtl(long double x);
 double      fabs(double x);
 float       fabsf(float x);
 long double fabsl(long double x);
 double      hypot(double x, double y);
 float       hypotf(float x, float y);
 long double hypotl(long double x, long double y);
 double      pow(double x, double y);
 float       powf(float x, float y);
 long double powl(long double x, long double y);
 double      sqrt(double x);
 float       sqrtf(float x);
 long double sqrtl(long double x);
 double      erf(double x);
 float       erff(float x);
 long double erfl(long double x);
 double      erfc(double x);
 float       erfcf(float x);
 long double erfcl(long double x);
 double      lgamma(double x);
 float       lgammaf(float x);
 long double lgammal(long double x);
 double      tgamma(double x);
 float       tgammaf(float x);
 long double tgammal(long double x);
 double      ceil(double x);
 float       ceilf(float x);
 long double ceill(long double x);
 double      floor(double x);
 float       floorf(float x);
 long double floorl(long double x);
 double      nearbyint(double x);
 float       nearbyintf(float x);
 long double nearbyintl(long double x);
 double      rint(double x);
 float       rintf(float x);
 long double rintl(long double x);
 long        lrint(double x);
 long        lrintf(float x);
 long        lrintl(long double x);
 long long   llrint(double x);
 long long   llrintf(float x);
 long long   llrintl(long double x);
 double      round(double x);
 float       roundf(float x);
 long double roundl(long double x);
 long        lround(double x);
 long        lroundf(float x);
 long        lroundl(long double x);
 long long   llround(double x);
 long long   llroundf(float x);
 long long   llroundl(long double x);
 double      trunc(double x);
 float       truncf(float x);
 long double truncl(long double x);
 double      fmod(double x, double y);
 float       fmodf(float x, float y);
 long double fmodl(long double x, long double y);
 double      remainder(double x, double y);
 float       remainderf(float x, float y);
 long double remainderl(long double x, long double y);
 double      remquo(double x, double y, int *quo);
 float       remquof(float x, float y, int *quo);
 long double remquol(long double x, long double y, int *quo);
 double      copysign(double x, double y);
 float       copysignf(float x, float y);
 long double copysignl(long double x, long double y);
 double      nan(const char *tagp);
 float       nanf(const char *tagp);
 long double nanl(const char *tagp);
 double      nextafter(double x, double y);
 float       nextafterf(float x, float y);
 long double nextafterl(long double x, long double y);
 double      nexttoward(double x, long double y);
 float       nexttowardf(float x, long double y);
 long double nexttowardl(long double x, long double y);
 double      fdim(double x, double y);
 float       fdimf(float x, float y);
 long double fdiml(long double x, long double y);
 double      fmax(double x, double y);
 float       fmaxf(float x, float y);
 long double fmaxl(long double x, long double y);
 double      fmin(double x, double y);
 float       fminf(float x, float y);
 long double fminl(long double x, long double y);
 double      fma(double x, double y, double z);
 float       fmaf(float x, float y, float z);
 long double fmal(long double x, long double y, long double z);


    }







_Pragma("diag_pop")

# 302 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/math.h"



/* We support including .h headers inside 'extern "C"' contexts, so switch */
/* back to C++ linkage before including these C++ headers. */
extern "C++" {

# 1 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/type_traits"
// -*- C++ -*-
//===------------------------ type_traits ---------------------------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is dual licensed under the MIT and the University of Illinois Open
// Source Licenses. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//




/*
    type_traits synopsis

namespace std
{

    // helper class:
    template <class T, T v> struct integral_constant;
    typedef integral_constant<bool, true>  true_type;   // C++11
    typedef integral_constant<bool, false> false_type;  // C++11
    
    template <bool B>                                   // C++14
    using bool_constant = integral_constant<bool, B>;   // C++14
    typedef bool_constant<true> true_type;              // C++14
    typedef bool_constant<false> false_type;            // C++14

    // helper traits
    template <bool, class T = void> struct enable_if;
    template <bool, class T, class F> struct conditional;

    // Primary classification traits:
    template <class T> struct is_void;
    template <class T> struct is_null_pointer;  // C++14
    template <class T> struct is_integral;
    template <class T> struct is_floating_point;
    template <class T> struct is_array;
    template <class T> struct is_pointer;
    template <class T> struct is_lvalue_reference;
    template <class T> struct is_rvalue_reference;
    template <class T> struct is_member_object_pointer;
    template <class T> struct is_member_function_pointer;
    template <class T> struct is_enum;
    template <class T> struct is_union;
    template <class T> struct is_class;
    template <class T> struct is_function;

    // Secondary classification traits:
    template <class T> struct is_reference;
    template <class T> struct is_arithmetic;
    template <class T> struct is_fundamental;
    template <class T> struct is_member_pointer;
    template <class T> struct is_scalar;
    template <class T> struct is_object;
    template <class T> struct is_compound;

    // Const-volatile properties and transformations:
    template <class T> struct is_const;
    template <class T> struct is_volatile;
    template <class T> struct remove_const;
    template <class T> struct remove_volatile;
    template <class T> struct remove_cv;
    template <class T> struct add_const;
    template <class T> struct add_volatile;
    template <class T> struct add_cv;

    // Reference transformations:
    template <class T> struct remove_reference;
    template <class T> struct add_lvalue_reference;
    template <class T> struct add_rvalue_reference;

    // Pointer transformations:
    template <class T> struct remove_pointer;
    template <class T> struct add_pointer;

    // Integral properties:
    template <class T> struct is_signed;
    template <class T> struct is_unsigned;
    template <class T> struct make_signed;
    template <class T> struct make_unsigned;

    // Array properties and transformations:
    template <class T> struct rank;
    template <class T, unsigned I = 0> struct extent;
    template <class T> struct remove_extent;
    template <class T> struct remove_all_extents;

    // Member introspection:
    template <class T> struct is_pod;
    template <class T> struct is_trivial;
    template <class T> struct is_trivially_copyable;
    template <class T> struct is_standard_layout;
    template <class T> struct is_literal_type;
    template <class T> struct is_empty;
    template <class T> struct is_polymorphic;
    template <class T> struct is_abstract;
    template <class T> struct is_final; // C++14
    template <class T> struct is_aggregate; // C++17

    template <class T, class... Args> struct is_constructible;
    template <class T>                struct is_default_constructible;
    template <class T>                struct is_copy_constructible;
    template <class T>                struct is_move_constructible;
    template <class T, class U>       struct is_assignable;
    template <class T>                struct is_copy_assignable;
    template <class T>                struct is_move_assignable;
    template <class T, class U>       struct is_swappable_with;       // C++17
    template <class T>                struct is_swappable;            // C++17
    template <class T>                struct is_destructible;

    template <class T, class... Args> struct is_trivially_constructible;
    template <class T>                struct is_trivially_default_constructible;
    template <class T>                struct is_trivially_copy_constructible;
    template <class T>                struct is_trivially_move_constructible;
    template <class T, class U>       struct is_trivially_assignable;
    template <class T>                struct is_trivially_copy_assignable;
    template <class T>                struct is_trivially_move_assignable;
    template <class T>                struct is_trivially_destructible;

    template <class T, class... Args> struct is_nothrow_constructible;
    template <class T>                struct is_nothrow_default_constructible;
    template <class T>                struct is_nothrow_copy_constructible;
    template <class T>                struct is_nothrow_move_constructible;
    template <class T, class U>       struct is_nothrow_assignable;
    template <class T>                struct is_nothrow_copy_assignable;
    template <class T>                struct is_nothrow_move_assignable;
    template <class T, class U>       struct is_nothrow_swappable_with; // C++17
    template <class T>                struct is_nothrow_swappable;      // C++17
    template <class T>                struct is_nothrow_destructible;

    template <class T> struct has_virtual_destructor;

    // Relationships between types:
    template <class T, class U> struct is_same;
    template <class Base, class Derived> struct is_base_of;
    template <class From, class To> struct is_convertible;

    template <class, class R = void> struct is_callable; // not defined
    template <class Fn, class... ArgTypes, class R>
      struct is_callable<Fn(ArgTypes...), R>;

    template <class, class R = void> struct is_nothrow_callable; // not defined
    template <class Fn, class... ArgTypes, class R>
      struct is_nothrow_callable<Fn(ArgTypes...), R>;

    // Alignment properties and transformations:
    template <class T> struct alignment_of;
    template <size_t Len, size_t Align = most_stringent_alignment_requirement>
        struct aligned_storage;
    template <size_t Len, class... Types> struct aligned_union;

    template <class T> struct decay;
    template <class... T> struct common_type;
    template <class T> struct underlying_type;
    template <class> class result_of; // undefined
    template <class Fn, class... ArgTypes> class result_of<Fn(ArgTypes...)>;

    // const-volatile modifications:
    template <class T>
      using remove_const_t    = typename remove_const<T>::type;  // C++14
    template <class T>
      using remove_volatile_t = typename remove_volatile<T>::type;  // C++14
    template <class T>
      using remove_cv_t       = typename remove_cv<T>::type;  // C++14
    template <class T>
      using add_const_t       = typename add_const<T>::type;  // C++14
    template <class T>
      using add_volatile_t    = typename add_volatile<T>::type;  // C++14
    template <class T>
      using add_cv_t          = typename add_cv<T>::type;  // C++14
  
    // reference modifications:
    template <class T>
      using remove_reference_t     = typename remove_reference<T>::type;  // C++14
    template <class T>
      using add_lvalue_reference_t = typename add_lvalue_reference<T>::type;  // C++14
    template <class T>
      using add_rvalue_reference_t = typename add_rvalue_reference<T>::type;  // C++14
  
    // sign modifications:
    template <class T>
      using make_signed_t   = typename make_signed<T>::type;  // C++14
    template <class T>
      using make_unsigned_t = typename make_unsigned<T>::type;  // C++14
  
    // array modifications:
    template <class T>
      using remove_extent_t      = typename remove_extent<T>::type;  // C++14
    template <class T>
      using remove_all_extents_t = typename remove_all_extents<T>::type;  // C++14

    // pointer modifications:
    template <class T>
      using remove_pointer_t = typename remove_pointer<T>::type;  // C++14
    template <class T>
      using add_pointer_t    = typename add_pointer<T>::type;  // C++14

    // other transformations:
    template <size_t Len, std::size_t Align=default-alignment>
      using aligned_storage_t = typename aligned_storage<Len,Align>::type;  // C++14
    template <std::size_t Len, class... Types>
      using aligned_union_t   = typename aligned_union<Len,Types...>::type;  // C++14
    template <class T>
      using decay_t           = typename decay<T>::type;  // C++14
    template <bool b, class T=void>
      using enable_if_t       = typename enable_if<b,T>::type;  // C++14
    template <bool b, class T, class F>
      using conditional_t     = typename conditional<b,T,F>::type;  // C++14
    template <class... T>
      using common_type_t     = typename common_type<T...>::type;  // C++14
    template <class T>
      using underlying_type_t = typename underlying_type<T>::type;  // C++14
    template <class F, class... ArgTypes>
      using result_of_t       = typename result_of<F(ArgTypes...)>::type;  // C++14

    template <class...>
      using void_t = void;   // C++17
      
      // See C++14 20.10.4.1, primary type categories
      template <class T> constexpr bool is_void_v
        = is_void<T>::value;                                             // C++17
      template <class T> constexpr bool is_null_pointer_v
        = is_null_pointer<T>::value;                                     // C++17
      template <class T> constexpr bool is_integral_v
        = is_integral<T>::value;                                         // C++17
      template <class T> constexpr bool is_floating_point_v
        = is_floating_point<T>::value;                                   // C++17
      template <class T> constexpr bool is_array_v
        = is_array<T>::value;                                            // C++17
      template <class T> constexpr bool is_pointer_v
        = is_pointer<T>::value;                                          // C++17
      template <class T> constexpr bool is_lvalue_reference_v
        = is_lvalue_reference<T>::value;                                 // C++17
      template <class T> constexpr bool is_rvalue_reference_v
        = is_rvalue_reference<T>::value;                                 // C++17
      template <class T> constexpr bool is_member_object_pointer_v
        = is_member_object_pointer<T>::value;                            // C++17
      template <class T> constexpr bool is_member_function_pointer_v
        = is_member_function_pointer<T>::value;                          // C++17
      template <class T> constexpr bool is_enum_v
        = is_enum<T>::value;                                             // C++17
      template <class T> constexpr bool is_union_v
        = is_union<T>::value;                                            // C++17
      template <class T> constexpr bool is_class_v
        = is_class<T>::value;                                            // C++17
      template <class T> constexpr bool is_function_v
        = is_function<T>::value;                                         // C++17

      // See C++14 20.10.4.2, composite type categories
      template <class T> constexpr bool is_reference_v
        = is_reference<T>::value;                                        // C++17
      template <class T> constexpr bool is_arithmetic_v
        = is_arithmetic<T>::value;                                       // C++17
      template <class T> constexpr bool is_fundamental_v
        = is_fundamental<T>::value;                                      // C++17
      template <class T> constexpr bool is_object_v
        = is_object<T>::value;                                           // C++17
      template <class T> constexpr bool is_scalar_v
        = is_scalar<T>::value;                                           // C++17
      template <class T> constexpr bool is_compound_v
        = is_compound<T>::value;                                         // C++17
      template <class T> constexpr bool is_member_pointer_v
        = is_member_pointer<T>::value;                                   // C++17

      // See C++14 20.10.4.3, type properties
      template <class T> constexpr bool is_const_v
        = is_const<T>::value;                                            // C++17
      template <class T> constexpr bool is_volatile_v
        = is_volatile<T>::value;                                         // C++17
      template <class T> constexpr bool is_trivial_v
        = is_trivial<T>::value;                                          // C++17
      template <class T> constexpr bool is_trivially_copyable_v
        = is_trivially_copyable<T>::value;                               // C++17
      template <class T> constexpr bool is_standard_layout_v
        = is_standard_layout<T>::value;                                  // C++17
      template <class T> constexpr bool is_pod_v
        = is_pod<T>::value;                                              // C++17
      template <class T> constexpr bool is_literal_type_v
        = is_literal_type<T>::value;                                     // C++17
      template <class T> constexpr bool is_empty_v
        = is_empty<T>::value;                                            // C++17
      template <class T> constexpr bool is_polymorphic_v
        = is_polymorphic<T>::value;                                      // C++17
      template <class T> constexpr bool is_abstract_v
        = is_abstract<T>::value;                                         // C++17
      template <class T> constexpr bool is_final_v
        = is_final<T>::value;                                            // C++17
      template <class T> constexpr bool is_aggregate_v
        = is_aggregate<T>::value;                                        // C++17
      template <class T> constexpr bool is_signed_v
        = is_signed<T>::value;                                           // C++17
      template <class T> constexpr bool is_unsigned_v
        = is_unsigned<T>::value;                                         // C++17
      template <class T, class... Args> constexpr bool is_constructible_v
        = is_constructible<T, Args...>::value;                           // C++17
      template <class T> constexpr bool is_default_constructible_v
        = is_default_constructible<T>::value;                            // C++17
      template <class T> constexpr bool is_copy_constructible_v
        = is_copy_constructible<T>::value;                               // C++17
      template <class T> constexpr bool is_move_constructible_v
        = is_move_constructible<T>::value;                               // C++17
      template <class T, class U> constexpr bool is_assignable_v
        = is_assignable<T, U>::value;                                    // C++17
      template <class T> constexpr bool is_copy_assignable_v
        = is_copy_assignable<T>::value;                                  // C++17
      template <class T> constexpr bool is_move_assignable_v
        = is_move_assignable<T>::value;                                  // C++17
      template <class T, class U> constexpr bool is_swappable_with_v
        = is_swappable_with<T, U>::value;                                // C++17
      template <class T> constexpr bool is_swappable_v
        = is_swappable<T>::value;                                        // C++17
      template <class T> constexpr bool is_destructible_v
        = is_destructible<T>::value;                                     // C++17
      template <class T, class... Args> constexpr bool is_trivially_constructible_v
        = is_trivially_constructible<T, Args...>::value;                 // C++17
      template <class T> constexpr bool is_trivially_default_constructible_v
        = is_trivially_default_constructible<T>::value;                  // C++17
      template <class T> constexpr bool is_trivially_copy_constructible_v
        = is_trivially_copy_constructible<T>::value;                     // C++17
      template <class T> constexpr bool is_trivially_move_constructible_v
        = is_trivially_move_constructible<T>::value;                     // C++17
      template <class T, class U> constexpr bool is_trivially_assignable_v
        = is_trivially_assignable<T, U>::value;                          // C++17
      template <class T> constexpr bool is_trivially_copy_assignable_v
        = is_trivially_copy_assignable<T>::value;                        // C++17
      template <class T> constexpr bool is_trivially_move_assignable_v
        = is_trivially_move_assignable<T>::value;                        // C++17
      template <class T> constexpr bool is_trivially_destructible_v
        = is_trivially_destructible<T>::value;                           // C++17
      template <class T, class... Args> constexpr bool is_nothrow_constructible_v
        = is_nothrow_constructible<T, Args...>::value;                   // C++17
      template <class T> constexpr bool is_nothrow_default_constructible_v
        = is_nothrow_default_constructible<T>::value;                    // C++17
      template <class T> constexpr bool is_nothrow_copy_constructible_v
        = is_nothrow_copy_constructible<T>::value;                       // C++17
      template <class T> constexpr bool is_nothrow_move_constructible_v
        = is_nothrow_move_constructible<T>::value;                       // C++17
      template <class T, class U> constexpr bool is_nothrow_assignable_v
        = is_nothrow_assignable<T, U>::value;                            // C++17
      template <class T> constexpr bool is_nothrow_copy_assignable_v
        = is_nothrow_copy_assignable<T>::value;                          // C++17
      template <class T> constexpr bool is_nothrow_move_assignable_v
        = is_nothrow_move_assignable<T>::value;                          // C++17
      template <class T, class U> constexpr bool is_nothrow_swappable_with_v
        = is_nothrow_swappable_with<T, U>::value;                       // C++17
      template <class T> constexpr bool is_nothrow_swappable_v
        = is_nothrow_swappable<T>::value;                               // C++17
      template <class T> constexpr bool is_nothrow_destructible_v
        = is_nothrow_destructible<T>::value;                             // C++17
      template <class T> constexpr bool has_virtual_destructor_v
        = has_virtual_destructor<T>::value;                              // C++17

      // See C++14 20.10.5, type property queries
      template <class T> constexpr size_t alignment_of_v
        = alignment_of<T>::value;                                        // C++17
      template <class T> constexpr size_t rank_v
        = rank<T>::value;                                                // C++17
      template <class T, unsigned I = 0> constexpr size_t extent_v
        = extent<T, I>::value;                                           // C++17

      // See C++14 20.10.6, type relations
      template <class T, class U> constexpr bool is_same_v
        = is_same<T, U>::value;                                          // C++17
      template <class Base, class Derived> constexpr bool is_base_of_v
        = is_base_of<Base, Derived>::value;                              // C++17
      template <class From, class To> constexpr bool is_convertible_v
        = is_convertible<From, To>::value;                               // C++17
      template <class T, class R = void> constexpr bool is_callable_v
        = is_callable<T, R>::value;                                      // C++17
      template <class T, class R = void> constexpr bool is_nothrow_callable_v
        = is_nothrow_callable<T, R>::value;                              // C++17

      // [meta.logical], logical operator traits:
      template<class... B> struct conjunction;                           // C++17
      template<class... B> 
        constexpr bool conjunction_v = conjunction<B...>::value;         // C++17
      template<class... B> struct disjunction;                           // C++17
      template<class... B>
        constexpr bool disjunction_v = disjunction<B...>::value;         // C++17
      template<class B> struct negation;                                 // C++17
      template<class B> 
        constexpr bool negation_v = negation<B>::value;                  // C++17

}

*/
# 1 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/cstddef"
// -*- C++ -*-
//===--------------------------- cstddef ----------------------------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is dual licensed under the MIT and the University of Illinois Open
// Source Licenses. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//




/*
    cstddef synopsis

Macros:

    offsetof(type,member-designator)
    NULL

namespace std
{

Types:

    ptrdiff_t
    size_t
    max_align_t
    nullptr_t
    byte // C++17

}  // std

*/







// Don't include our own <stddef.h>; we don't want to declare ::nullptr_t.
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

# 45 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/cstddef"
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



# 46 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/cstddef"

namespace std { inline namespace __2 {

using ::ptrdiff_t;
using ::size_t;



// Re-use the compiler's <stddef.h> max_align_t where possible.
using ::max_align_t;




} }

# 89 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/cstddef"

# 391 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/type_traits"





namespace std { inline namespace __2 {

template <class _T1, class _T2> struct  pair;
template <class _Tp> class  reference_wrapper;
template <class _Tp> struct  hash;

template <class>
struct __void_t { typedef void type; };

template <class _Tp>
struct __identity { typedef _Tp type; };

template <class _Tp, bool>
struct  __dependent_type : public _Tp {};

template <bool _Bp, class _If, class _Then>
    struct  conditional {typedef _If type;};
template <class _If, class _Then>
    struct  conditional<false, _If, _Then> {typedef _Then type;};


template <bool _Bp, class _If, class _Then> using conditional_t = typename conditional<_Bp, _If, _Then>::type;


template <bool, class _Tp> struct  __lazy_enable_if {};
template <class _Tp> struct  __lazy_enable_if<true, _Tp> {typedef typename _Tp::type type;};

template <bool, class _Tp = void> struct  enable_if {};
template <class _Tp> struct  enable_if<true, _Tp> {typedef _Tp type;};


template <bool _Bp, class _Tp = void> using enable_if_t = typename enable_if<_Bp, _Tp>::type;


// addressof


template <class _Tp>
inline 
 __attribute__ ((__always_inline__))
_Tp*
addressof(_Tp& __x) noexcept
{
    return __builtin_addressof(__x);
}

# 454 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/type_traits"

# 494 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/type_traits"


template <class _Tp> _Tp* addressof(const _Tp&&) noexcept = delete;


struct __two {char __lx[2];};

// helper class:

template <class _Tp, _Tp __v>
struct  integral_constant
{
    static constexpr const _Tp      value = __v;
    typedef _Tp               value_type;
    typedef integral_constant type;
    __attribute__ ((__always_inline__))
        constexpr operator value_type() const noexcept {return value;}

    __attribute__ ((__always_inline__))
         constexpr value_type operator ()() const noexcept {return value;}

};

template <class _Tp, _Tp __v>
constexpr const _Tp integral_constant<_Tp, __v>::value;

# 527 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/type_traits"

typedef integral_constant<bool,(true)>  true_type;
typedef integral_constant<bool,(false)> false_type;



// __lazy_and

template <bool _Last, class ..._Preds>
struct __lazy_and_impl;

template <class ..._Preds>
struct __lazy_and_impl<false, _Preds...> : false_type {};

template <>
struct __lazy_and_impl<true> : true_type {};

template <class _Pred>
struct __lazy_and_impl<true, _Pred> : integral_constant<bool, _Pred::type::value> {};

template <class _Hp, class ..._Tp>
struct __lazy_and_impl<true, _Hp, _Tp...> : __lazy_and_impl<_Hp::type::value, _Tp...> {};

template <class _P1, class ..._Pr>
struct __lazy_and : __lazy_and_impl<_P1::type::value, _Pr...> {};

// __lazy_or

template <bool _List, class ..._Preds>
struct __lazy_or_impl;

template <class ..._Preds>
struct __lazy_or_impl<true, _Preds...> : true_type {};

template <>
struct __lazy_or_impl<false> : false_type {};

template <class _Hp, class ..._Tp>
struct __lazy_or_impl<false, _Hp, _Tp...>
        : __lazy_or_impl<_Hp::type::value, _Tp...> {};

template <class _P1, class ..._Pr>
struct __lazy_or : __lazy_or_impl<_P1::type::value, _Pr...> {};

// __lazy_not

template <class _Pred>
struct __lazy_not : integral_constant<bool, !_Pred::type::value> {};

// __and_
template<class...> struct __and_;
template<> struct __and_<> : true_type {};

template<class _B0> struct __and_<_B0> : _B0 {};

template<class _B0, class _B1>
struct __and_<_B0, _B1> : conditional<_B0::value, _B1, _B0>::type {};

template<class _B0, class _B1, class _B2, class... _Bn>
struct __and_<_B0, _B1, _B2, _Bn...> 
        : conditional<_B0::value, __and_<_B1, _B2, _Bn...>, _B0>::type {};

// __or_
template<class...> struct __or_;
template<> struct __or_<> : false_type {};

template<class _B0> struct __or_<_B0> : _B0 {};

template<class _B0, class _B1>
struct __or_<_B0, _B1> : conditional<_B0::value, _B0, _B1>::type {};

template<class _B0, class _B1, class _B2, class... _Bn>
struct __or_<_B0, _B1, _B2, _Bn...> 
        : conditional<_B0::value, _B0, __or_<_B1, _B2, _Bn...> >::type {};

// __not_
template<class _Tp> 
struct __not_ : conditional<_Tp::value, false_type, true_type>::type {};



// is_const

template <class _Tp> struct  is_const            : public false_type {};
template <class _Tp> struct  is_const<_Tp const> : public true_type {};






// is_volatile

template <class _Tp> struct  is_volatile               : public false_type {};
template <class _Tp> struct  is_volatile<_Tp volatile> : public true_type {};






// remove_const

template <class _Tp> struct  remove_const            {typedef _Tp type;};
template <class _Tp> struct  remove_const<const _Tp> {typedef _Tp type;};

template <class _Tp> using remove_const_t = typename remove_const<_Tp>::type;


// remove_volatile

template <class _Tp> struct  remove_volatile               {typedef _Tp type;};
template <class _Tp> struct  remove_volatile<volatile _Tp> {typedef _Tp type;};

template <class _Tp> using remove_volatile_t = typename remove_volatile<_Tp>::type;


// remove_cv

template <class _Tp> struct  remove_cv
{typedef typename remove_volatile<typename remove_const<_Tp>::type>::type type;};

template <class _Tp> using remove_cv_t = typename remove_cv<_Tp>::type;


// is_void

template <class _Tp> struct __libcpp_is_void       : public false_type {};
template <>          struct __libcpp_is_void<void> : public true_type {};

template <class _Tp> struct  is_void
    : public __libcpp_is_void<typename remove_cv<_Tp>::type> {};






// __is_nullptr_t

template <class _Tp> struct __is_nullptr_t_impl       : public false_type {};
template <>          struct __is_nullptr_t_impl<nullptr_t> : public true_type {};

template <class _Tp> struct  __is_nullptr_t
    : public __is_nullptr_t_impl<typename remove_cv<_Tp>::type> {};


template <class _Tp> struct  is_null_pointer
    : public __is_nullptr_t_impl<typename remove_cv<_Tp>::type> {};







// is_integral

template <class _Tp> struct __libcpp_is_integral                     : public false_type {};
template <>          struct __libcpp_is_integral<bool>               : public true_type {};
template <>          struct __libcpp_is_integral<char>               : public true_type {};
template <>          struct __libcpp_is_integral<signed char>        : public true_type {};
template <>          struct __libcpp_is_integral<unsigned char>      : public true_type {};
template <>          struct __libcpp_is_integral<wchar_t>            : public true_type {};

template <>          struct __libcpp_is_integral<char16_t>           : public true_type {};
template <>          struct __libcpp_is_integral<char32_t>           : public true_type {};

template <>          struct __libcpp_is_integral<short>              : public true_type {};
template <>          struct __libcpp_is_integral<unsigned short>     : public true_type {};
template <>          struct __libcpp_is_integral<int>                : public true_type {};
template <>          struct __libcpp_is_integral<unsigned int>       : public true_type {};
template <>          struct __libcpp_is_integral<long>               : public true_type {};
template <>          struct __libcpp_is_integral<unsigned long>      : public true_type {};
template <>          struct __libcpp_is_integral<long long>          : public true_type {};
template <>          struct __libcpp_is_integral<unsigned long long> : public true_type {};





template <class _Tp> struct  is_integral
    : public __libcpp_is_integral<typename remove_cv<_Tp>::type> {};






// is_floating_point

template <class _Tp> struct __libcpp_is_floating_point              : public false_type {};
template <>          struct __libcpp_is_floating_point<float>       : public true_type {};
template <>          struct __libcpp_is_floating_point<double>      : public true_type {};
template <>          struct __libcpp_is_floating_point<long double> : public true_type {};

template <class _Tp> struct  is_floating_point
    : public __libcpp_is_floating_point<typename remove_cv<_Tp>::type> {};






// is_array

template <class _Tp> struct  is_array
    : public false_type {};
template <class _Tp> struct  is_array<_Tp[]>
    : public true_type {};
template <class _Tp, size_t _Np> struct  is_array<_Tp[_Np]>
    : public true_type {};






// is_pointer

template <class _Tp> struct __libcpp_is_pointer       : public false_type {};
template <class _Tp> struct __libcpp_is_pointer<_Tp*> : public true_type {};

template <class _Tp> struct  is_pointer
    : public __libcpp_is_pointer<typename remove_cv<_Tp>::type> {};






// is_reference

template <class _Tp> struct  is_lvalue_reference       : public false_type {};
template <class _Tp> struct  is_lvalue_reference<_Tp&> : public true_type {};

template <class _Tp> struct  is_rvalue_reference        : public false_type {};

template <class _Tp> struct  is_rvalue_reference<_Tp&&> : public true_type {};


template <class _Tp> struct  is_reference        : public false_type {};
template <class _Tp> struct  is_reference<_Tp&>  : public true_type {};

template <class _Tp> struct  is_reference<_Tp&&> : public true_type {};


# 784 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/type_traits"
// is_union



template <class _Tp> struct  is_union
    : public integral_constant<bool, __is_union(_Tp)> {};

# 798 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/type_traits"






// is_class



template <class _Tp> struct  is_class
    : public integral_constant<bool, __is_class(_Tp)> {};

# 823 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/type_traits"






// is_same

template <class _Tp, class _Up> struct  is_same           : public false_type {};
template <class _Tp>            struct  is_same<_Tp, _Tp> : public true_type {};






// is_function

namespace __libcpp_is_function_imp
{
struct __dummy_type {};
template <class _Tp> char  __test(_Tp*);
template <class _Tp> char __test(__dummy_type);
template <class _Tp> __two __test(...);
template <class _Tp> _Tp&  __source(int);
template <class _Tp> __dummy_type __source(...);
}

template <class _Tp, bool = is_class<_Tp>::value ||
                            is_union<_Tp>::value ||
                            is_void<_Tp>::value  ||
                            is_reference<_Tp>::value ||
                            __is_nullptr_t<_Tp>::value >
struct __libcpp_is_function
    : public integral_constant<bool, sizeof(__libcpp_is_function_imp::__test<_Tp>(__libcpp_is_function_imp::__source<_Tp>(0))) == 1>
    {};
template <class _Tp> struct __libcpp_is_function<_Tp, true> : public false_type {};

template <class _Tp> struct  is_function
    : public __libcpp_is_function<_Tp> {};






// is_member_function_pointer

// template <class _Tp> struct            __libcpp_is_member_function_pointer             : public false_type {};
// template <class _Tp, class _Up> struct __libcpp_is_member_function_pointer<_Tp _Up::*> : public is_function<_Tp> {};
// 

template <class _MP, bool _IsMemberFunctionPtr, bool _IsMemberObjectPtr>
struct __member_pointer_traits_imp
{  // forward declaration; specializations later
};


template <class _Tp> struct __libcpp_is_member_function_pointer
    : public false_type {};

template <class _Ret, class _Class>
struct __libcpp_is_member_function_pointer<_Ret _Class::*>
    : public is_function<_Ret> {};

template <class _Tp> struct  is_member_function_pointer
    : public __libcpp_is_member_function_pointer<typename remove_cv<_Tp>::type>::type {};






// is_member_pointer

template <class _Tp>            struct __libcpp_is_member_pointer             : public false_type {};
template <class _Tp, class _Up> struct __libcpp_is_member_pointer<_Tp _Up::*> : public true_type {};

template <class _Tp> struct  is_member_pointer
    : public __libcpp_is_member_pointer<typename remove_cv<_Tp>::type> {};






// is_member_object_pointer

template <class _Tp> struct  is_member_object_pointer
    : public integral_constant<bool, is_member_pointer<_Tp>::value &&
                                    !is_member_function_pointer<_Tp>::value> {};






// is_enum



template <class _Tp> struct  is_enum
    : public integral_constant<bool, __is_enum(_Tp)> {};

# 942 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/type_traits"






// is_arithmetic

template <class _Tp> struct  is_arithmetic
    : public integral_constant<bool, is_integral<_Tp>::value      ||
                                     is_floating_point<_Tp>::value> {};






// is_fundamental

template <class _Tp> struct  is_fundamental
    : public integral_constant<bool, is_void<_Tp>::value        ||
                                     __is_nullptr_t<_Tp>::value ||
                                     is_arithmetic<_Tp>::value> {};






// is_scalar

template <class _Tp> struct  is_scalar
    : public integral_constant<bool, is_arithmetic<_Tp>::value     ||
                                     is_member_pointer<_Tp>::value ||
                                     is_pointer<_Tp>::value        ||
                                     __is_nullptr_t<_Tp>::value    ||
                                     is_enum<_Tp>::value           > {};

template <> struct  is_scalar<nullptr_t> : public true_type {};






// is_object

template <class _Tp> struct  is_object
    : public integral_constant<bool, is_scalar<_Tp>::value ||
                                     is_array<_Tp>::value  ||
                                     is_union<_Tp>::value  ||
                                     is_class<_Tp>::value  > {};






// is_compound

template <class _Tp> struct  is_compound
    : public integral_constant<bool, !is_fundamental<_Tp>::value> {};







// __is_referenceable  [defns.referenceable]

struct __is_referenceable_impl {
    template <class _Tp> static _Tp& __test(int);
    template <class _Tp> static __two __test(...);
};

template <class _Tp>
struct __is_referenceable : integral_constant<bool,
    !is_same<decltype(__is_referenceable_impl::__test<_Tp>(0)), __two>::value> {};


// add_const

template <class _Tp, bool = is_reference<_Tp>::value ||
                            is_function<_Tp>::value  ||
                            is_const<_Tp>::value     >
struct __add_const             {typedef _Tp type;};

template <class _Tp>
struct __add_const<_Tp, false> {typedef const _Tp type;};

template <class _Tp> struct  add_const
    {typedef typename __add_const<_Tp>::type type;};


template <class _Tp> using add_const_t = typename add_const<_Tp>::type;


// add_volatile

template <class _Tp, bool = is_reference<_Tp>::value ||
                            is_function<_Tp>::value  ||
                            is_volatile<_Tp>::value  >
struct __add_volatile             {typedef _Tp type;};

template <class _Tp>
struct __add_volatile<_Tp, false> {typedef volatile _Tp type;};

template <class _Tp> struct  add_volatile
    {typedef typename __add_volatile<_Tp>::type type;};


template <class _Tp> using add_volatile_t = typename add_volatile<_Tp>::type;


// add_cv

template <class _Tp> struct  add_cv
    {typedef typename add_const<typename add_volatile<_Tp>::type>::type type;};


template <class _Tp> using add_cv_t = typename add_cv<_Tp>::type;


// remove_reference

template <class _Tp> struct  remove_reference        {typedef _Tp type;};
template <class _Tp> struct  remove_reference<_Tp&>  {typedef _Tp type;};

template <class _Tp> struct  remove_reference<_Tp&&> {typedef _Tp type;};



template <class _Tp> using remove_reference_t = typename remove_reference<_Tp>::type;


// add_lvalue_reference

template <class _Tp, bool = __is_referenceable<_Tp>::value> struct __add_lvalue_reference_impl            { typedef _Tp  type; };
template <class _Tp                                       > struct __add_lvalue_reference_impl<_Tp, true> { typedef _Tp& type; };

template <class _Tp> struct  add_lvalue_reference
{typedef typename __add_lvalue_reference_impl<_Tp>::type type;};


template <class _Tp> using add_lvalue_reference_t = typename add_lvalue_reference<_Tp>::type;




template <class _Tp, bool = __is_referenceable<_Tp>::value> struct __add_rvalue_reference_impl            { typedef _Tp   type; };
template <class _Tp                                       > struct __add_rvalue_reference_impl<_Tp, true> { typedef _Tp&& type; };

template <class _Tp> struct  add_rvalue_reference
{typedef typename __add_rvalue_reference_impl<_Tp>::type type;};


template <class _Tp> using add_rvalue_reference_t = typename add_rvalue_reference<_Tp>::type;






template <class _Tp> _Tp&& __declval(int);
template <class _Tp> _Tp   __declval(long);

template <class _Tp>
decltype(std::__2::__declval<_Tp>(0))
declval() noexcept;

# 1120 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/type_traits"

// __uncvref

template <class _Tp>
struct __uncvref  {
    typedef typename remove_cv<typename remove_reference<_Tp>::type>::type type;
};

template <class _Tp>
struct __unconstref {
    typedef typename remove_const<typename remove_reference<_Tp>::type>::type type;
};


template <class _Tp>
using __uncvref_t = typename __uncvref<_Tp>::type;


// __is_same_uncvref

template <class _Tp, class _Up>
struct __is_same_uncvref : is_same<typename __uncvref<_Tp>::type,
                                   typename __uncvref<_Up>::type> {};

struct __any
{
    __any(...);
};

// remove_pointer

template <class _Tp> struct  remove_pointer                      {typedef _Tp type;};
template <class _Tp> struct  remove_pointer<_Tp*>                {typedef _Tp type;};
template <class _Tp> struct  remove_pointer<_Tp* const>          {typedef _Tp type;};
template <class _Tp> struct  remove_pointer<_Tp* volatile>       {typedef _Tp type;};
template <class _Tp> struct  remove_pointer<_Tp* const volatile> {typedef _Tp type;};


template <class _Tp> using remove_pointer_t = typename remove_pointer<_Tp>::type;


// add_pointer

template <class _Tp, 
        bool = __is_referenceable<_Tp>::value || 
                is_same<typename remove_cv<_Tp>::type, void>::value>
struct __add_pointer_impl
    {typedef typename remove_reference<_Tp>::type* type;};
template <class _Tp> struct __add_pointer_impl<_Tp, false> 
    {typedef _Tp type;};

template <class _Tp> struct  add_pointer
    {typedef typename __add_pointer_impl<_Tp>::type type;};


template <class _Tp> using add_pointer_t = typename add_pointer<_Tp>::type;


// is_signed

template <class _Tp, bool = is_integral<_Tp>::value>
struct __libcpp_is_signed_impl : public integral_constant<bool,(_Tp(-1) < _Tp(0))> {};

template <class _Tp>
struct __libcpp_is_signed_impl<_Tp, false> : public true_type {};  // floating point

template <class _Tp, bool = is_arithmetic<_Tp>::value>
struct __libcpp_is_signed : public __libcpp_is_signed_impl<_Tp> {};

template <class _Tp> struct __libcpp_is_signed<_Tp, false> : public false_type {};

template <class _Tp> struct  is_signed : public __libcpp_is_signed<_Tp> {};






// is_unsigned

template <class _Tp, bool = is_integral<_Tp>::value>
struct __libcpp_is_unsigned_impl : public integral_constant<bool,(_Tp(0) < _Tp(-1))> {};

template <class _Tp>
struct __libcpp_is_unsigned_impl<_Tp, false> : public false_type {};  // floating point

template <class _Tp, bool = is_arithmetic<_Tp>::value>
struct __libcpp_is_unsigned : public __libcpp_is_unsigned_impl<_Tp> {};

template <class _Tp> struct __libcpp_is_unsigned<_Tp, false> : public false_type {};

template <class _Tp> struct  is_unsigned : public __libcpp_is_unsigned<_Tp> {};






// rank

template <class _Tp> struct  rank
    : public integral_constant<size_t, 0> {};
template <class _Tp> struct  rank<_Tp[]>
    : public integral_constant<size_t, rank<_Tp>::value + 1> {};
template <class _Tp, size_t _Np> struct  rank<_Tp[_Np]>
    : public integral_constant<size_t, rank<_Tp>::value + 1> {};






// extent

template <class _Tp, unsigned _Ip = 0> struct  extent
    : public integral_constant<size_t, 0> {};
template <class _Tp> struct  extent<_Tp[], 0>
    : public integral_constant<size_t, 0> {};
template <class _Tp, unsigned _Ip> struct  extent<_Tp[], _Ip>
    : public integral_constant<size_t, extent<_Tp, _Ip-1>::value> {};
template <class _Tp, size_t _Np> struct  extent<_Tp[_Np], 0>
    : public integral_constant<size_t, _Np> {};
template <class _Tp, size_t _Np, unsigned _Ip> struct  extent<_Tp[_Np], _Ip>
    : public integral_constant<size_t, extent<_Tp, _Ip-1>::value> {};






// remove_extent

template <class _Tp> struct  remove_extent
    {typedef _Tp type;};
template <class _Tp> struct  remove_extent<_Tp[]>
    {typedef _Tp type;};
template <class _Tp, size_t _Np> struct  remove_extent<_Tp[_Np]>
    {typedef _Tp type;};


template <class _Tp> using remove_extent_t = typename remove_extent<_Tp>::type;


// remove_all_extents

template <class _Tp> struct  remove_all_extents
    {typedef _Tp type;};
template <class _Tp> struct  remove_all_extents<_Tp[]>
    {typedef typename remove_all_extents<_Tp>::type type;};
template <class _Tp, size_t _Np> struct  remove_all_extents<_Tp[_Np]>
    {typedef typename remove_all_extents<_Tp>::type type;};


template <class _Tp> using remove_all_extents_t = typename remove_all_extents<_Tp>::type;


// decay

template <class _Up, bool>
struct __decay {
    typedef typename remove_cv<_Up>::type type;
};

template <class _Up>
struct __decay<_Up, true> {
public:
    typedef typename conditional
                     <
                         is_array<_Up>::value,
                         typename remove_extent<_Up>::type*,
                         typename conditional
                         <
                              is_function<_Up>::value,
                              typename add_pointer<_Up>::type,
                              typename remove_cv<_Up>::type
                         >::type
                     >::type type;
};

template <class _Tp>
struct  decay
{
private:
    typedef typename remove_reference<_Tp>::type _Up;
public:
    typedef typename __decay<_Up, __is_referenceable<_Up>::value>::type type;
};


template <class _Tp> using decay_t = typename decay<_Tp>::type;


// is_abstract

template <class _Tp> struct  is_abstract
    : public integral_constant<bool, __is_abstract(_Tp)> {};






// is_final


template <class _Tp> struct 
__libcpp_is_final : public integral_constant<bool, __is_final(_Tp)> {};






template <class _Tp> struct 
is_final : public integral_constant<bool, __is_final(_Tp)> {};







// is_aggregate
# 1354 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/type_traits"

// is_base_of



template <class _Bp, class _Dp>
struct  is_base_of
    : public integral_constant<bool, __is_base_of(_Bp, _Dp)> {};

# 1389 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/type_traits"






// is_convertible



template <class _T1, class _T2> struct  is_convertible
    : public integral_constant<bool, __is_convertible_to(_T1, _T2) &&
                                     !is_abstract<_T2>::value> {};

# 1479 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/type_traits"






// is_empty



template <class _Tp>
struct  is_empty
    : public integral_constant<bool, __is_empty(_Tp)> {};

# 1515 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/type_traits"






// is_polymorphic



template <class _Tp>
struct  is_polymorphic
    : public integral_constant<bool, __is_polymorphic(_Tp)> {};

# 1540 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/type_traits"






// has_virtual_destructor



template <class _Tp> struct  has_virtual_destructor
    : public integral_constant<bool, __has_virtual_destructor(_Tp)> {};

# 1559 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/type_traits"






// alignment_of

template <class _Tp> struct  alignment_of
    : public integral_constant<size_t, __alignof__(_Tp)> {};






// aligned_storage

template <class _Hp, class _Tp>
struct __type_list
{
    typedef _Hp _Head;
    typedef _Tp _Tail;
};

struct __nat
{

    __nat() = delete;
    __nat(const __nat&) = delete;
    __nat& operator=(const __nat&) = delete;
    ~__nat() = delete;

};

template <class _Tp>
struct __align_type
{
    static const size_t value = alignment_of<_Tp>::value;
    typedef _Tp type;
};

struct __struct_double {long double __lx;};
struct __struct_double4 {double __lx[4];};

typedef
    __type_list<__align_type<unsigned char>,
    __type_list<__align_type<unsigned short>,
    __type_list<__align_type<unsigned int>,
    __type_list<__align_type<unsigned long>,
    __type_list<__align_type<unsigned long long>,
    __type_list<__align_type<double>,
    __type_list<__align_type<long double>,
    __type_list<__align_type<__struct_double>,
    __type_list<__align_type<__struct_double4>,
    __type_list<__align_type<int*>,
    __nat
    > > > > > > > > > > __all_types;

template <class _TL, size_t _Align> struct __find_pod;

template <class _Hp, size_t _Align>
struct __find_pod<__type_list<_Hp, __nat>, _Align>
{
    typedef typename conditional<
                             _Align == _Hp::value,
                             typename _Hp::type,
                             void
                         >::type type;
};

template <class _Hp, class _Tp, size_t _Align>
struct __find_pod<__type_list<_Hp, _Tp>, _Align>
{
    typedef typename conditional<
                             _Align == _Hp::value,
                             typename _Hp::type,
                             typename __find_pod<_Tp, _Align>::type
                         >::type type;
};

template <class _TL, size_t _Len> struct __find_max_align;

template <class _Hp, size_t _Len>
struct __find_max_align<__type_list<_Hp, __nat>, _Len> : public integral_constant<size_t, _Hp::value> {};

template <size_t _Len, size_t _A1, size_t _A2>
struct __select_align
{
private:
    static const size_t __min = _A2 < _A1 ? _A2 : _A1;
    static const size_t __max = _A1 < _A2 ? _A2 : _A1;
public:
    static const size_t value = _Len < __max ? __min : __max;
};

template <class _Hp, class _Tp, size_t _Len>
struct __find_max_align<__type_list<_Hp, _Tp>, _Len>
    : public integral_constant<size_t, __select_align<_Len, _Hp::value, __find_max_align<_Tp, _Len>::value>::value> {};

template <size_t _Len, size_t _Align = __find_max_align<__all_types, _Len>::value>
struct  aligned_storage
{
    typedef typename __find_pod<__all_types, _Align>::type _Aligner;
    static_assert(!is_void<_Aligner>::value, "");
    union type
    {
        _Aligner __align;
        unsigned char __data[(_Len + _Align - 1)/_Align * _Align];
    };
};


template <size_t _Len, size_t _Align = __find_max_align<__all_types, _Len>::value>
    using aligned_storage_t = typename aligned_storage<_Len, _Align>::type;


# 1685 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/type_traits"

template <size_t _Len>struct  aligned_storage<_Len, 0x1>{ struct alignas(0x1) type { unsigned char __lx[(_Len + 0x1 - 1)/0x1 * 0x1]; };};
template <size_t _Len>struct  aligned_storage<_Len, 0x2>{ struct alignas(0x2) type { unsigned char __lx[(_Len + 0x2 - 1)/0x2 * 0x2]; };};
template <size_t _Len>struct  aligned_storage<_Len, 0x4>{ struct alignas(0x4) type { unsigned char __lx[(_Len + 0x4 - 1)/0x4 * 0x4]; };};
template <size_t _Len>struct  aligned_storage<_Len, 0x8>{ struct alignas(0x8) type { unsigned char __lx[(_Len + 0x8 - 1)/0x8 * 0x8]; };};
template <size_t _Len>struct  aligned_storage<_Len, 0x10>{ struct alignas(0x10) type { unsigned char __lx[(_Len + 0x10 - 1)/0x10 * 0x10]; };};
template <size_t _Len>struct  aligned_storage<_Len, 0x20>{ struct alignas(0x20) type { unsigned char __lx[(_Len + 0x20 - 1)/0x20 * 0x20]; };};
template <size_t _Len>struct  aligned_storage<_Len, 0x40>{ struct alignas(0x40) type { unsigned char __lx[(_Len + 0x40 - 1)/0x40 * 0x40]; };};
template <size_t _Len>struct  aligned_storage<_Len, 0x80>{ struct alignas(0x80) type { unsigned char __lx[(_Len + 0x80 - 1)/0x80 * 0x80]; };};
template <size_t _Len>struct  aligned_storage<_Len, 0x100>{ struct alignas(0x100) type { unsigned char __lx[(_Len + 0x100 - 1)/0x100 * 0x100]; };};
template <size_t _Len>struct  aligned_storage<_Len, 0x200>{ struct alignas(0x200) type { unsigned char __lx[(_Len + 0x200 - 1)/0x200 * 0x200]; };};
template <size_t _Len>struct  aligned_storage<_Len, 0x400>{ struct alignas(0x400) type { unsigned char __lx[(_Len + 0x400 - 1)/0x400 * 0x400]; };};
template <size_t _Len>struct  aligned_storage<_Len, 0x800>{ struct alignas(0x800) type { unsigned char __lx[(_Len + 0x800 - 1)/0x800 * 0x800]; };};
template <size_t _Len>struct  aligned_storage<_Len, 0x1000>{ struct alignas(0x1000) type { unsigned char __lx[(_Len + 0x1000 - 1)/0x1000 * 0x1000]; };};
template <size_t _Len>struct  aligned_storage<_Len, 0x2000>{ struct alignas(0x2000) type { unsigned char __lx[(_Len + 0x2000 - 1)/0x2000 * 0x2000]; };};
// PE/COFF does not support alignment beyond 8192 (=0x2000)

template <size_t _Len>struct  aligned_storage<_Len, 0x4000>{ struct alignas(0x4000) type { unsigned char __lx[(_Len + 0x4000 - 1)/0x4000 * 0x4000]; };};






// aligned_union

template <size_t _I0, size_t ..._In>
struct __static_max;

template <size_t _I0>
struct __static_max<_I0>
{
    static const size_t value = _I0;
};

template <size_t _I0, size_t _I1, size_t ..._In>
struct __static_max<_I0, _I1, _In...>
{
    static const size_t value = _I0 >= _I1 ? __static_max<_I0, _In...>::value :
                                             __static_max<_I1, _In...>::value;
};

template <size_t _Len, class _Type0, class ..._Types>
struct aligned_union
{
    static const size_t alignment_value = __static_max<__alignof__(_Type0),
                                                       __alignof__(_Types)...>::value;
    static const size_t __len = __static_max<_Len, sizeof(_Type0),
                                             sizeof(_Types)...>::value;
    typedef typename aligned_storage<__len, alignment_value>::type type;
};


template <size_t _Len, class ..._Types> using aligned_union_t = typename aligned_union<_Len, _Types...>::type;




template <class _Tp>
struct __numeric_type
{
   static void __test(...);
   static float __test(float);
   static double __test(char);
   static double __test(int);
   static double __test(unsigned);
   static double __test(long);
   static double __test(unsigned long);
   static double __test(long long);
   static double __test(unsigned long long);
   static double __test(double);
   static long double __test(long double);

   typedef decltype(__test(declval<_Tp>())) type;
   static const bool value = !is_same<type, void>::value;
};

template <>
struct __numeric_type<void>
{
   static const bool value = true;
};

// __promote

template <class _A1, class _A2 = void, class _A3 = void,
          bool = __numeric_type<_A1>::value &&
                 __numeric_type<_A2>::value &&
                 __numeric_type<_A3>::value>
class __promote_imp
{
public:
    static const bool value = false;
};

template <class _A1, class _A2, class _A3>
class __promote_imp<_A1, _A2, _A3, true>
{
private:
    typedef typename __promote_imp<_A1>::type __type1;
    typedef typename __promote_imp<_A2>::type __type2;
    typedef typename __promote_imp<_A3>::type __type3;
public:
    typedef decltype(__type1() + __type2() + __type3()) type;
    static const bool value = true;
};

template <class _A1, class _A2>
class __promote_imp<_A1, _A2, void, true>
{
private:
    typedef typename __promote_imp<_A1>::type __type1;
    typedef typename __promote_imp<_A2>::type __type2;
public:
    typedef decltype(__type1() + __type2()) type;
    static const bool value = true;
};

template <class _A1>
class __promote_imp<_A1, void, void, true>
{
public:
    typedef typename __numeric_type<_A1>::type type;
    static const bool value = true;
};

template <class _A1, class _A2 = void, class _A3 = void>
class __promote : public __promote_imp<_A1, _A2, _A3> {};

// make_signed / make_unsigned

typedef
    __type_list<signed char,
    __type_list<signed short,
    __type_list<signed int,
    __type_list<signed long,
    __type_list<signed long long,



    __nat



    > > > > > __signed_types;

typedef
    __type_list<unsigned char,
    __type_list<unsigned short,
    __type_list<unsigned int,
    __type_list<unsigned long,
    __type_list<unsigned long long,



    __nat



    > > > > > __unsigned_types;

template <class _TypeList, size_t _Size, bool = _Size <= sizeof(typename _TypeList::_Head)> struct __find_first;

template <class _Hp, class _Tp, size_t _Size>
struct __find_first<__type_list<_Hp, _Tp>, _Size, true>
{
    typedef _Hp type;
};

template <class _Hp, class _Tp, size_t _Size>
struct __find_first<__type_list<_Hp, _Tp>, _Size, false>
{
    typedef typename __find_first<_Tp, _Size>::type type;
};

template <class _Tp, class _Up, bool = is_const<typename remove_reference<_Tp>::type>::value,
                             bool = is_volatile<typename remove_reference<_Tp>::type>::value>
struct __apply_cv
{
    typedef _Up type;
};

template <class _Tp, class _Up>
struct __apply_cv<_Tp, _Up, true, false>
{
    typedef const _Up type;
};

template <class _Tp, class _Up>
struct __apply_cv<_Tp, _Up, false, true>
{
    typedef volatile _Up type;
};

template <class _Tp, class _Up>
struct __apply_cv<_Tp, _Up, true, true>
{
    typedef const volatile _Up type;
};

template <class _Tp, class _Up>
struct __apply_cv<_Tp&, _Up, false, false>
{
    typedef _Up& type;
};

template <class _Tp, class _Up>
struct __apply_cv<_Tp&, _Up, true, false>
{
    typedef const _Up& type;
};

template <class _Tp, class _Up>
struct __apply_cv<_Tp&, _Up, false, true>
{
    typedef volatile _Up& type;
};

template <class _Tp, class _Up>
struct __apply_cv<_Tp&, _Up, true, true>
{
    typedef const volatile _Up& type;
};

template <class _Tp, bool = is_integral<_Tp>::value || is_enum<_Tp>::value>
struct __make_signed {};

template <class _Tp>
struct __make_signed<_Tp, true>
{
    typedef typename __find_first<__signed_types, sizeof(_Tp)>::type type;
};

template <> struct __make_signed<bool,               true> {};
template <> struct __make_signed<  signed short,     true> {typedef short     type;};
template <> struct __make_signed<unsigned short,     true> {typedef short     type;};
template <> struct __make_signed<  signed int,       true> {typedef int       type;};
template <> struct __make_signed<unsigned int,       true> {typedef int       type;};
template <> struct __make_signed<  signed long,      true> {typedef long      type;};
template <> struct __make_signed<unsigned long,      true> {typedef long      type;};
template <> struct __make_signed<  signed long long, true> {typedef long long type;};
template <> struct __make_signed<unsigned long long, true> {typedef long long type;};





template <class _Tp>
struct  make_signed
{
    typedef typename __apply_cv<_Tp, typename __make_signed<typename remove_cv<_Tp>::type>::type>::type type;
};


template <class _Tp> using make_signed_t = typename make_signed<_Tp>::type;


template <class _Tp, bool = is_integral<_Tp>::value || is_enum<_Tp>::value>
struct __make_unsigned {};

template <class _Tp>
struct __make_unsigned<_Tp, true>
{
    typedef typename __find_first<__unsigned_types, sizeof(_Tp)>::type type;
};

template <> struct __make_unsigned<bool,               true> {};
template <> struct __make_unsigned<  signed short,     true> {typedef unsigned short     type;};
template <> struct __make_unsigned<unsigned short,     true> {typedef unsigned short     type;};
template <> struct __make_unsigned<  signed int,       true> {typedef unsigned int       type;};
template <> struct __make_unsigned<unsigned int,       true> {typedef unsigned int       type;};
template <> struct __make_unsigned<  signed long,      true> {typedef unsigned long      type;};
template <> struct __make_unsigned<unsigned long,      true> {typedef unsigned long      type;};
template <> struct __make_unsigned<  signed long long, true> {typedef unsigned long long type;};
template <> struct __make_unsigned<unsigned long long, true> {typedef unsigned long long type;};





template <class _Tp>
struct  make_unsigned
{
    typedef typename __apply_cv<_Tp, typename __make_unsigned<typename remove_cv<_Tp>::type>::type>::type type;
};


template <class _Tp> using make_unsigned_t = typename make_unsigned<_Tp>::type;


# 2007 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/type_traits"

// bullet 1 - sizeof...(Tp) == 0

template <class ..._Tp>
struct  common_type {};

// bullet 2 - sizeof...(Tp) == 1

template <class _Tp>
struct  common_type<_Tp>
    : public common_type<_Tp, _Tp> {};

// bullet 3 - sizeof...(Tp) == 2

template <class _Tp, class _Up, class = void>
struct __common_type2_imp {};

template <class _Tp, class _Up>
struct __common_type2_imp<_Tp, _Up,
    typename __void_t<decltype(
        true ? std::__2::declval<_Tp>() : std::__2::declval<_Up>()
    )>::type>
{
    typedef typename decay<decltype(
        true ? std::__2::declval<_Tp>() : std::__2::declval<_Up>()
    )>::type type;
};

template <class _Tp, class _Up,
          class _DTp = typename decay<_Tp>::type,
          class _DUp = typename decay<_Up>::type>
using __common_type2 =
  typename conditional<
    is_same<_Tp, _DTp>::value && is_same<_Up, _DUp>::value,
    __common_type2_imp<_Tp, _Up>,
    common_type<_DTp, _DUp>
  >::type;

template <class _Tp, class _Up>
struct  common_type<_Tp, _Up>
    : __common_type2<_Tp, _Up> {};

// bullet 4 - sizeof...(Tp) > 2

template <class ...Tp> struct __common_types;

template <class, class = void>
struct __common_type_impl {};

template <class _Tp, class _Up>
struct __common_type_impl<
    __common_types<_Tp, _Up>,
    typename __void_t<typename common_type<_Tp, _Up>::type>::type>
{
  typedef typename common_type<_Tp, _Up>::type type;
};

template <class _Tp, class _Up, class ..._Vp>
struct __common_type_impl<__common_types<_Tp, _Up, _Vp...>,
    typename __void_t<typename common_type<_Tp, _Up>::type>::type>
  : __common_type_impl<
      __common_types<typename common_type<_Tp, _Up>::type, _Vp...> >
{

};

template <class _Tp, class _Up, class ..._Vp>
struct  common_type<_Tp, _Up, _Vp...>
    : __common_type_impl<__common_types<_Tp, _Up, _Vp...> > {};


template <class ..._Tp> using common_type_t = typename common_type<_Tp...>::type;




// is_assignable

template<typename, typename _Tp> struct __select_2nd { typedef _Tp type; };

template <class _Tp, class _Arg>
typename __select_2nd<decltype((std::__2::declval<_Tp>() = std::__2::declval<_Arg>())), true_type>::type
__is_assignable_test(int);

template <class, class>
false_type __is_assignable_test(...);


template <class _Tp, class _Arg, bool = is_void<_Tp>::value || is_void<_Arg>::value>
struct __is_assignable_imp
    : public decltype((std::__2::__is_assignable_test<_Tp, _Arg>(0))) {};

template <class _Tp, class _Arg>
struct __is_assignable_imp<_Tp, _Arg, true>
    : public false_type
{
};

template <class _Tp, class _Arg>
struct is_assignable
    : public __is_assignable_imp<_Tp, _Arg> {};






// is_copy_assignable

template <class _Tp> struct  is_copy_assignable
    : public is_assignable<typename add_lvalue_reference<_Tp>::type,
                  typename add_lvalue_reference<typename add_const<_Tp>::type>::type> {};






// is_move_assignable

template <class _Tp> struct  is_move_assignable

    : public is_assignable<typename add_lvalue_reference<_Tp>::type,
                           typename add_rvalue_reference<_Tp>::type> {};









// is_destructible

//  if it's a reference, return true
//  if it's a function, return false
//  if it's   void,     return false
//  if it's an array of unknown bound, return false
//  Otherwise, return "std::declval<_Up&>().~_Up()" is well-formed
//    where _Up is remove_all_extents<_Tp>::type

template <class>
struct __is_destructible_apply { typedef int type; };

template <typename _Tp>
struct __is_destructor_wellformed {
    template <typename _Tp1>
    static char  __test (
        typename __is_destructible_apply<decltype(std::__2::declval<_Tp1&>().~_Tp1())>::type
    );

    template <typename _Tp1>
    static __two __test (...);
    
    static const bool value = sizeof(__test<_Tp>(12)) == sizeof(char);
};

template <class _Tp, bool>
struct __destructible_imp;

template <class _Tp>
struct __destructible_imp<_Tp, false> 
   : public std::__2::integral_constant<bool, 
        __is_destructor_wellformed<typename std::__2::remove_all_extents<_Tp>::type>::value> {};

template <class _Tp>
struct __destructible_imp<_Tp, true>
    : public std::__2::true_type {};

template <class _Tp, bool>
struct __destructible_false;

template <class _Tp>
struct __destructible_false<_Tp, false> : public __destructible_imp<_Tp, std::__2::is_reference<_Tp>::value> {};

template <class _Tp>
struct __destructible_false<_Tp, true> : public std::__2::false_type {};

template <class _Tp>
struct is_destructible
    : public __destructible_false<_Tp, std::__2::is_function<_Tp>::value> {};

template <class _Tp>
struct is_destructible<_Tp[]>
    : public std::__2::false_type {};

template <>
struct is_destructible<void>
    : public std::__2::false_type {};






// move



template <class _Tp>
inline __attribute__ ((__always_inline__)) constexpr
typename remove_reference<_Tp>::type&&
move(_Tp&& __t) noexcept
{
    typedef typename remove_reference<_Tp>::type _Up;
    return static_cast<_Up&&>(__t);
}

template <class _Tp>
inline __attribute__ ((__always_inline__)) constexpr
_Tp&&
forward(typename remove_reference<_Tp>::type& __t) noexcept
{
    return static_cast<_Tp&&>(__t);
}

template <class _Tp>
inline __attribute__ ((__always_inline__)) constexpr
_Tp&&
forward(typename remove_reference<_Tp>::type&& __t) noexcept
{
    static_assert(!is_lvalue_reference<_Tp>::value,
                  "can not forward an rvalue as an lvalue");
    return static_cast<_Tp&&>(__t);
}

# 2274 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/type_traits"



template <class _Tp>
inline __attribute__ ((__always_inline__))
typename decay<_Tp>::type
__decay_copy(_Tp&& __t)
{
    return std::__2::forward<_Tp>(__t);
}

# 2296 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/type_traits"



template <class _Rp, class _Class, class ..._Param>
struct __member_pointer_traits_imp<_Rp (_Class::*)(_Param...), true, false>
{
    typedef _Class _ClassType;
    typedef _Rp _ReturnType;
    typedef _Rp (_FnType) (_Param...);
};

template <class _Rp, class _Class, class ..._Param>
struct __member_pointer_traits_imp<_Rp (_Class::*)(_Param..., ...), true, false>
{
    typedef _Class _ClassType;
    typedef _Rp _ReturnType;
    typedef _Rp (_FnType) (_Param..., ...);
};

template <class _Rp, class _Class, class ..._Param>
struct __member_pointer_traits_imp<_Rp (_Class::*)(_Param...) const, true, false>
{
    typedef _Class const _ClassType;
    typedef _Rp _ReturnType;
    typedef _Rp (_FnType) (_Param...);
};

template <class _Rp, class _Class, class ..._Param>
struct __member_pointer_traits_imp<_Rp (_Class::*)(_Param..., ...) const, true, false>
{
    typedef _Class const _ClassType;
    typedef _Rp _ReturnType;
    typedef _Rp (_FnType) (_Param..., ...);
};

template <class _Rp, class _Class, class ..._Param>
struct __member_pointer_traits_imp<_Rp (_Class::*)(_Param...) volatile, true, false>
{
    typedef _Class volatile _ClassType;
    typedef _Rp _ReturnType;
    typedef _Rp (_FnType) (_Param...);
};

template <class _Rp, class _Class, class ..._Param>
struct __member_pointer_traits_imp<_Rp (_Class::*)(_Param..., ...) volatile, true, false>
{
    typedef _Class volatile _ClassType;
    typedef _Rp _ReturnType;
    typedef _Rp (_FnType) (_Param..., ...);
};

template <class _Rp, class _Class, class ..._Param>
struct __member_pointer_traits_imp<_Rp (_Class::*)(_Param...) const volatile, true, false>
{
    typedef _Class const volatile _ClassType;
    typedef _Rp _ReturnType;
    typedef _Rp (_FnType) (_Param...);
};

template <class _Rp, class _Class, class ..._Param>
struct __member_pointer_traits_imp<_Rp (_Class::*)(_Param..., ...) const volatile, true, false>
{
    typedef _Class const volatile _ClassType;
    typedef _Rp _ReturnType;
    typedef _Rp (_FnType) (_Param..., ...);
};




template <class _Rp, class _Class, class ..._Param>
struct __member_pointer_traits_imp<_Rp (_Class::*)(_Param...) &, true, false>
{
    typedef _Class& _ClassType;
    typedef _Rp _ReturnType;
    typedef _Rp (_FnType) (_Param...);
};

template <class _Rp, class _Class, class ..._Param>
struct __member_pointer_traits_imp<_Rp (_Class::*)(_Param..., ...) &, true, false>
{
    typedef _Class& _ClassType;
    typedef _Rp _ReturnType;
    typedef _Rp (_FnType) (_Param..., ...);
};

template <class _Rp, class _Class, class ..._Param>
struct __member_pointer_traits_imp<_Rp (_Class::*)(_Param...) const&, true, false>
{
    typedef _Class const& _ClassType;
    typedef _Rp _ReturnType;
    typedef _Rp (_FnType) (_Param...);
};

template <class _Rp, class _Class, class ..._Param>
struct __member_pointer_traits_imp<_Rp (_Class::*)(_Param..., ...) const&, true, false>
{
    typedef _Class const& _ClassType;
    typedef _Rp _ReturnType;
    typedef _Rp (_FnType) (_Param..., ...);
};

template <class _Rp, class _Class, class ..._Param>
struct __member_pointer_traits_imp<_Rp (_Class::*)(_Param...) volatile&, true, false>
{
    typedef _Class volatile& _ClassType;
    typedef _Rp _ReturnType;
    typedef _Rp (_FnType) (_Param...);
};

template <class _Rp, class _Class, class ..._Param>
struct __member_pointer_traits_imp<_Rp (_Class::*)(_Param..., ...) volatile&, true, false>
{
    typedef _Class volatile& _ClassType;
    typedef _Rp _ReturnType;
    typedef _Rp (_FnType) (_Param..., ...);
};

template <class _Rp, class _Class, class ..._Param>
struct __member_pointer_traits_imp<_Rp (_Class::*)(_Param...) const volatile&, true, false>
{
    typedef _Class const volatile& _ClassType;
    typedef _Rp _ReturnType;
    typedef _Rp (_FnType) (_Param...);
};

template <class _Rp, class _Class, class ..._Param>
struct __member_pointer_traits_imp<_Rp (_Class::*)(_Param..., ...) const volatile&, true, false>
{
    typedef _Class const volatile& _ClassType;
    typedef _Rp _ReturnType;
    typedef _Rp (_FnType) (_Param..., ...);
};

template <class _Rp, class _Class, class ..._Param>
struct __member_pointer_traits_imp<_Rp (_Class::*)(_Param...) &&, true, false>
{
    typedef _Class&& _ClassType;
    typedef _Rp _ReturnType;
    typedef _Rp (_FnType) (_Param...);
};

template <class _Rp, class _Class, class ..._Param>
struct __member_pointer_traits_imp<_Rp (_Class::*)(_Param..., ...) &&, true, false>
{
    typedef _Class&& _ClassType;
    typedef _Rp _ReturnType;
    typedef _Rp (_FnType) (_Param..., ...);
};

template <class _Rp, class _Class, class ..._Param>
struct __member_pointer_traits_imp<_Rp (_Class::*)(_Param...) const&&, true, false>
{
    typedef _Class const&& _ClassType;
    typedef _Rp _ReturnType;
    typedef _Rp (_FnType) (_Param...);
};

template <class _Rp, class _Class, class ..._Param>
struct __member_pointer_traits_imp<_Rp (_Class::*)(_Param..., ...) const&&, true, false>
{
    typedef _Class const&& _ClassType;
    typedef _Rp _ReturnType;
    typedef _Rp (_FnType) (_Param..., ...);
};

template <class _Rp, class _Class, class ..._Param>
struct __member_pointer_traits_imp<_Rp (_Class::*)(_Param...) volatile&&, true, false>
{
    typedef _Class volatile&& _ClassType;
    typedef _Rp _ReturnType;
    typedef _Rp (_FnType) (_Param...);
};

template <class _Rp, class _Class, class ..._Param>
struct __member_pointer_traits_imp<_Rp (_Class::*)(_Param..., ...) volatile&&, true, false>
{
    typedef _Class volatile&& _ClassType;
    typedef _Rp _ReturnType;
    typedef _Rp (_FnType) (_Param..., ...);
};

template <class _Rp, class _Class, class ..._Param>
struct __member_pointer_traits_imp<_Rp (_Class::*)(_Param...) const volatile&&, true, false>
{
    typedef _Class const volatile&& _ClassType;
    typedef _Rp _ReturnType;
    typedef _Rp (_FnType) (_Param...);
};

template <class _Rp, class _Class, class ..._Param>
struct __member_pointer_traits_imp<_Rp (_Class::*)(_Param..., ...) const volatile&&, true, false>
{
    typedef _Class const volatile&& _ClassType;
    typedef _Rp _ReturnType;
    typedef _Rp (_FnType) (_Param..., ...);
};



# 2755 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/type_traits"

template <class _Rp, class _Class>
struct __member_pointer_traits_imp<_Rp _Class::*, false, true>
{
    typedef _Class _ClassType;
    typedef _Rp _ReturnType;
};

template <class _MP>
struct __member_pointer_traits
    : public __member_pointer_traits_imp<typename remove_cv<_MP>::type,
                    is_member_function_pointer<_MP>::value,
                    is_member_object_pointer<_MP>::value>
{
//     typedef ... _ClassType;
//     typedef ... _ReturnType;
//     typedef ... _FnType;
};


template <class _DecayedFp>
struct __member_pointer_class_type {};

template <class _Ret, class _ClassType>
struct __member_pointer_class_type<_Ret _ClassType::*> {
  typedef _ClassType type;
};

// result_of

template <class _Callable> class result_of;

# 2934 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/type_traits"

// template <class T, class... Args> struct is_constructible;

namespace __is_construct
{
struct __nat {};
}




template <class _Tp, class... _Args>
struct __libcpp_is_constructible;

template <class _To, class _From>
struct __is_invalid_base_to_derived_cast {
  static_assert(is_reference<_To>::value, "Wrong specialization");
  using _RawFrom = __uncvref_t<_From>;
  using _RawTo = __uncvref_t<_To>;
  static const bool value = __lazy_and<
        __lazy_not<is_same<_RawFrom, _RawTo>>,
        is_base_of<_RawFrom, _RawTo>,
        __lazy_not<__libcpp_is_constructible<_RawTo, _From>>
  >::value;
};

template <class _To, class _From>
struct __is_invalid_lvalue_to_rvalue_cast : false_type {
  static_assert(is_reference<_To>::value, "Wrong specialization");
};

template <class _ToRef, class _FromRef>
struct __is_invalid_lvalue_to_rvalue_cast<_ToRef&&, _FromRef&> {
  using _RawFrom = __uncvref_t<_FromRef>;
  using _RawTo = __uncvref_t<_ToRef>;
  static const bool value = __lazy_and<
      __lazy_not<is_function<_RawTo>>,
      __lazy_or<
        is_same<_RawFrom, _RawTo>,
        is_base_of<_RawTo, _RawFrom>>
    >::value;
};

struct __is_constructible_helper
{
    template <class _To>
    static void __eat(_To);

    // This overload is needed to work around a Clang bug that disallows
    // static_cast<T&&>(e) for non-reference-compatible types.
    // Example: static_cast<int&&>(declval<double>());
    // NOTE: The static_cast implementation below is required to support
    //  classes with explicit conversion operators.
    template <class _To, class _From,
              class = decltype(__eat<_To>(std::__2::declval<_From>()))>
    static true_type __test_cast(int);

    template <class _To, class _From,
              class = decltype(static_cast<_To>(std::__2::declval<_From>()))>
    static integral_constant<bool,
        !__is_invalid_base_to_derived_cast<_To, _From>::value &&
        !__is_invalid_lvalue_to_rvalue_cast<_To, _From>::value
    > __test_cast(long);

    template <class, class>
    static false_type __test_cast(...);

    template <class _Tp, class ..._Args,
        class = decltype(_Tp(std::__2::declval<_Args>()...))>
    static true_type __test_nary(int);
    template <class _Tp, class...>
    static false_type __test_nary(...);

    template <class _Tp, class _A0, class = decltype(::new _Tp(std::__2::declval<_A0>()))>
    static is_destructible<_Tp> __test_unary(int);
    template <class, class>
    static false_type __test_unary(...);
};

template <class _Tp, bool = is_void<_Tp>::value>
struct __is_default_constructible
    : decltype(__is_constructible_helper::__test_nary<_Tp>(0))
{};

template <class _Tp>
struct __is_default_constructible<_Tp, true> : false_type {};

template <class _Tp>
struct __is_default_constructible<_Tp[], false> : false_type {};

template <class _Tp, size_t _Nx>
struct __is_default_constructible<_Tp[_Nx], false>
    : __is_default_constructible<typename remove_all_extents<_Tp>::type>  {};

template <class _Tp, class... _Args>
struct __libcpp_is_constructible
{
  static_assert(sizeof...(_Args) > 1, "Wrong specialization");
  typedef decltype(__is_constructible_helper::__test_nary<_Tp, _Args...>(0))
      type;
};

template <class _Tp>
struct __libcpp_is_constructible<_Tp> : __is_default_constructible<_Tp> {};

template <class _Tp, class _A0>
struct __libcpp_is_constructible<_Tp, _A0>
    : public decltype(__is_constructible_helper::__test_unary<_Tp, _A0>(0))
{};

template <class _Tp, class _A0>
struct __libcpp_is_constructible<_Tp&, _A0>
    : public decltype(__is_constructible_helper::
    __test_cast<_Tp&, _A0>(0))
{};

template <class _Tp, class _A0>
struct __libcpp_is_constructible<_Tp&&, _A0>
    : public decltype(__is_constructible_helper::
    __test_cast<_Tp&&, _A0>(0))
{};



# 3064 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/type_traits"
template <class _Tp, class... _Args>
struct  is_constructible
    : public __libcpp_is_constructible<_Tp, _Args...>::type {};
# 3241 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/type_traits"







// is_default_constructible

template <class _Tp>
struct  is_default_constructible
    : public is_constructible<_Tp>
    {};






// is_copy_constructible

template <class _Tp>
struct  is_copy_constructible
    : public is_constructible<_Tp, 
                  typename add_lvalue_reference<typename add_const<_Tp>::type>::type> {};






// is_move_constructible

template <class _Tp>
struct  is_move_constructible

    : public is_constructible<_Tp, typename add_rvalue_reference<_Tp>::type>



    {};






// is_trivially_constructible





template <class _Tp, class... _Args>
struct  is_trivially_constructible
    : integral_constant<bool, __is_trivially_constructible(_Tp, _Args...)>
{
};

# 3341 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/type_traits"

# 3414 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/type_traits"






// is_trivially_default_constructible

template <class _Tp> struct  is_trivially_default_constructible
    : public is_trivially_constructible<_Tp>
    {};






// is_trivially_copy_constructible

template <class _Tp> struct  is_trivially_copy_constructible
    : public is_trivially_constructible<_Tp, typename add_lvalue_reference<const _Tp>::type>
    {};






// is_trivially_move_constructible

template <class _Tp> struct  is_trivially_move_constructible

    : public is_trivially_constructible<_Tp, typename add_rvalue_reference<_Tp>::type>



    {};






// is_trivially_assignable



template <class _Tp, class _Arg>
struct is_trivially_assignable
    : integral_constant<bool, __is_trivially_assignable(_Tp, _Arg)>
{
};

# 3494 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/type_traits"






// is_trivially_copy_assignable

template <class _Tp> struct  is_trivially_copy_assignable
    : public is_trivially_assignable<typename add_lvalue_reference<_Tp>::type,
                  typename add_lvalue_reference<typename add_const<_Tp>::type>::type> {};






// is_trivially_move_assignable

template <class _Tp> struct  is_trivially_move_assignable
    : public is_trivially_assignable<typename add_lvalue_reference<_Tp>::type,

                                     typename add_rvalue_reference<_Tp>::type>



    {};






// is_trivially_destructible



template <class _Tp> struct  is_trivially_destructible
    : public integral_constant<bool, is_destructible<_Tp>::value && __has_trivial_destructor(_Tp)> {};

# 3547 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/type_traits"






// is_nothrow_constructible

# 3563 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/type_traits"





template <bool, bool, class _Tp, class... _Args> struct __libcpp_is_nothrow_constructible;

template <class _Tp, class... _Args>
struct __libcpp_is_nothrow_constructible</*is constructible*/true, /*is reference*/false, _Tp, _Args...>
    : public integral_constant<bool, noexcept(_Tp(declval<_Args>()...))>
{
};

template <class _Tp>
void __implicit_conversion_to(_Tp) noexcept { }

template <class _Tp, class _Arg>
struct __libcpp_is_nothrow_constructible</*is constructible*/true, /*is reference*/true, _Tp, _Arg>
    : public integral_constant<bool, noexcept(__implicit_conversion_to<_Tp>(declval<_Arg>()))>
{
};

template <class _Tp, bool _IsReference, class... _Args>
struct __libcpp_is_nothrow_constructible</*is constructible*/false, _IsReference, _Tp, _Args...>
    : public false_type
{
};

template <class _Tp, class... _Args>
struct  is_nothrow_constructible
    : __libcpp_is_nothrow_constructible<is_constructible<_Tp, _Args...>::value, is_reference<_Tp>::value, _Tp, _Args...>
{
};

template <class _Tp, size_t _Ns>
struct  is_nothrow_constructible<_Tp[_Ns]>
    : __libcpp_is_nothrow_constructible<is_constructible<_Tp>::value, is_reference<_Tp>::value, _Tp>
{
};

# 3656 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/type_traits"

# 3712 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/type_traits"






// is_nothrow_default_constructible

template <class _Tp> struct  is_nothrow_default_constructible
    : public is_nothrow_constructible<_Tp>
    {};






// is_nothrow_copy_constructible

template <class _Tp> struct  is_nothrow_copy_constructible
    : public is_nothrow_constructible<_Tp,
                  typename add_lvalue_reference<typename add_const<_Tp>::type>::type> {};






// is_nothrow_move_constructible

template <class _Tp> struct  is_nothrow_move_constructible

    : public is_nothrow_constructible<_Tp, typename add_rvalue_reference<_Tp>::type>



    {};






// is_nothrow_assignable



template <bool, class _Tp, class _Arg> struct __libcpp_is_nothrow_assignable;

template <class _Tp, class _Arg>
struct __libcpp_is_nothrow_assignable<false, _Tp, _Arg>
    : public false_type
{
};

template <class _Tp, class _Arg>
struct __libcpp_is_nothrow_assignable<true, _Tp, _Arg>
    : public integral_constant<bool, noexcept(std::__2::declval<_Tp>() = std::__2::declval<_Arg>()) >
{
};

template <class _Tp, class _Arg>
struct  is_nothrow_assignable
    : public __libcpp_is_nothrow_assignable<is_assignable<_Tp, _Arg>::value, _Tp, _Arg>
{
};

# 3822 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/type_traits"






// is_nothrow_copy_assignable

template <class _Tp> struct  is_nothrow_copy_assignable
    : public is_nothrow_assignable<typename add_lvalue_reference<_Tp>::type,
                  typename add_lvalue_reference<typename add_const<_Tp>::type>::type> {};






// is_nothrow_move_assignable

template <class _Tp> struct  is_nothrow_move_assignable
    : public is_nothrow_assignable<typename add_lvalue_reference<_Tp>::type,

                                     typename add_rvalue_reference<_Tp>::type>



    {};






// is_nothrow_destructible



template <bool, class _Tp> struct __libcpp_is_nothrow_destructible;

template <class _Tp>
struct __libcpp_is_nothrow_destructible<false, _Tp>
    : public false_type
{
};

template <class _Tp>
struct __libcpp_is_nothrow_destructible<true, _Tp>
    : public integral_constant<bool, noexcept(std::__2::declval<_Tp>().~_Tp()) >
{
};

template <class _Tp>
struct  is_nothrow_destructible
    : public __libcpp_is_nothrow_destructible<is_destructible<_Tp>::value, _Tp>
{
};

template <class _Tp, size_t _Ns>
struct  is_nothrow_destructible<_Tp[_Ns]>
    : public is_nothrow_destructible<_Tp>
{
};

template <class _Tp>
struct  is_nothrow_destructible<_Tp&>
    : public true_type
{
};



template <class _Tp>
struct  is_nothrow_destructible<_Tp&&>
    : public true_type
{
};



# 3915 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/type_traits"






// is_pod



template <class _Tp> struct  is_pod
    : public integral_constant<bool, __is_pod(_Tp)> {};

# 3937 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/type_traits"






// is_literal_type;

template <class _Tp> struct  is_literal_type

    : public integral_constant<bool, __is_literal_type(_Tp)>




    {};
    





// is_standard_layout;

template <class _Tp> struct  is_standard_layout

    : public integral_constant<bool, __is_standard_layout(_Tp)>



    {};
    





// is_trivially_copyable;

template <class _Tp> struct  is_trivially_copyable

    : public integral_constant<bool, __is_trivially_copyable(_Tp)>





    {};
    





// is_trivial;

template <class _Tp> struct  is_trivial

    : public integral_constant<bool, __is_trivial(_Tp)>




    {};






template <class _Tp> struct __is_reference_wrapper_impl : public false_type {};
template <class _Tp> struct __is_reference_wrapper_impl<reference_wrapper<_Tp> > : public true_type {};
template <class _Tp> struct __is_reference_wrapper
    : public __is_reference_wrapper_impl<typename remove_cv<_Tp>::type> {};



// Check for complete types

template <class ..._Tp> struct __check_complete;

template <>
struct __check_complete<>
{
};

template <class _Hp, class _T0, class ..._Tp>
struct __check_complete<_Hp, _T0, _Tp...>
    : private __check_complete<_Hp>,
      private __check_complete<_T0, _Tp...>
{
};

template <class _Hp>
struct __check_complete<_Hp, _Hp>
    : private __check_complete<_Hp>
{
};

template <class _Tp>
struct __check_complete<_Tp>
{
    static_assert(sizeof(_Tp) > 0, "Type must be complete.");
};

template <class _Tp>
struct __check_complete<_Tp&>
    : private __check_complete<_Tp>
{
};

template <class _Tp>
struct __check_complete<_Tp&&>
    : private __check_complete<_Tp>
{
};

template <class _Rp, class ..._Param>
struct __check_complete<_Rp (*)(_Param...)>
    : private __check_complete<_Rp>
{
};

template <class ..._Param>
struct __check_complete<void (*)(_Param...)>
{
};

template <class _Rp, class ..._Param>
struct __check_complete<_Rp (_Param...)>
    : private __check_complete<_Rp>
{
};

template <class ..._Param>
struct __check_complete<void (_Param...)>
{
};

template <class _Rp, class _Class, class ..._Param>
struct __check_complete<_Rp (_Class::*)(_Param...)>
    : private __check_complete<_Class>
{
};

template <class _Rp, class _Class, class ..._Param>
struct __check_complete<_Rp (_Class::*)(_Param...) const>
    : private __check_complete<_Class>
{
};

template <class _Rp, class _Class, class ..._Param>
struct __check_complete<_Rp (_Class::*)(_Param...) volatile>
    : private __check_complete<_Class>
{
};

template <class _Rp, class _Class, class ..._Param>
struct __check_complete<_Rp (_Class::*)(_Param...) const volatile>
    : private __check_complete<_Class>
{
};

template <class _Rp, class _Class, class ..._Param>
struct __check_complete<_Rp (_Class::*)(_Param...) &>
    : private __check_complete<_Class>
{
};

template <class _Rp, class _Class, class ..._Param>
struct __check_complete<_Rp (_Class::*)(_Param...) const&>
    : private __check_complete<_Class>
{
};

template <class _Rp, class _Class, class ..._Param>
struct __check_complete<_Rp (_Class::*)(_Param...) volatile&>
    : private __check_complete<_Class>
{
};

template <class _Rp, class _Class, class ..._Param>
struct __check_complete<_Rp (_Class::*)(_Param...) const volatile&>
    : private __check_complete<_Class>
{
};

template <class _Rp, class _Class, class ..._Param>
struct __check_complete<_Rp (_Class::*)(_Param...) &&>
    : private __check_complete<_Class>
{
};

template <class _Rp, class _Class, class ..._Param>
struct __check_complete<_Rp (_Class::*)(_Param...) const&&>
    : private __check_complete<_Class>
{
};

template <class _Rp, class _Class, class ..._Param>
struct __check_complete<_Rp (_Class::*)(_Param...) volatile&&>
    : private __check_complete<_Class>
{
};

template <class _Rp, class _Class, class ..._Param>
struct __check_complete<_Rp (_Class::*)(_Param...) const volatile&&>
    : private __check_complete<_Class>
{
};

template <class _Rp, class _Class>
struct __check_complete<_Rp _Class::*>
    : private __check_complete<_Class>
{
};


template <class _Fp, class _A0,
         class _DecayFp = typename decay<_Fp>::type,
         class _DecayA0 = typename decay<_A0>::type,
         class _ClassT = typename __member_pointer_class_type<_DecayFp>::type>
using __enable_if_bullet1 = typename enable_if
    <
        is_member_function_pointer<_DecayFp>::value
        && is_base_of<_ClassT, _DecayA0>::value
    >::type;

template <class _Fp, class _A0,
         class _DecayFp = typename decay<_Fp>::type,
         class _DecayA0 = typename decay<_A0>::type>
using __enable_if_bullet2 = typename enable_if
    <
        is_member_function_pointer<_DecayFp>::value
        && __is_reference_wrapper<_DecayA0>::value
    >::type;

template <class _Fp, class _A0,
         class _DecayFp = typename decay<_Fp>::type,
         class _DecayA0 = typename decay<_A0>::type,
         class _ClassT = typename __member_pointer_class_type<_DecayFp>::type>
using __enable_if_bullet3 = typename enable_if
    <
        is_member_function_pointer<_DecayFp>::value
        && !is_base_of<_ClassT, _DecayA0>::value
        && !__is_reference_wrapper<_DecayA0>::value
    >::type;

template <class _Fp, class _A0,
         class _DecayFp = typename decay<_Fp>::type,
         class _DecayA0 = typename decay<_A0>::type,
         class _ClassT = typename __member_pointer_class_type<_DecayFp>::type>
using __enable_if_bullet4 = typename enable_if
    <
        is_member_object_pointer<_DecayFp>::value
        && is_base_of<_ClassT, _DecayA0>::value
    >::type;

template <class _Fp, class _A0,
         class _DecayFp = typename decay<_Fp>::type,
         class _DecayA0 = typename decay<_A0>::type>
using __enable_if_bullet5 = typename enable_if
    <
        is_member_object_pointer<_DecayFp>::value
        && __is_reference_wrapper<_DecayA0>::value
    >::type;

template <class _Fp, class _A0,
         class _DecayFp = typename decay<_Fp>::type,
         class _DecayA0 = typename decay<_A0>::type,
         class _ClassT = typename __member_pointer_class_type<_DecayFp>::type>
using __enable_if_bullet6 = typename enable_if
    <
        is_member_object_pointer<_DecayFp>::value
        && !is_base_of<_ClassT, _DecayA0>::value
        && !__is_reference_wrapper<_DecayA0>::value
    >::type;

// __invoke forward declarations

// fall back - none of the bullets





template <class ..._Args>
auto __invoke(__any, _Args&& ...__args) -> __nat;

template <class ..._Args>
auto __invoke_constexpr(__any, _Args&& ...__args) -> __nat;

// bullets 1, 2 and 3

template <class _Fp, class _A0, class ..._Args,
          class = __enable_if_bullet1<_Fp, _A0>>
inline __attribute__ ((__always_inline__))
auto
__invoke(_Fp&& __f, _A0&& __a0, _Args&& ...__args)
noexcept(noexcept((std::__2::forward<_A0>(__a0).*__f)(std::__2::forward<_Args>(__args)...))) -> decltype((std::__2::forward<_A0>(__a0).*__f)(std::__2::forward<_Args>(__args)...)) { return (std::__2::forward<_A0>(__a0).*__f)(std::__2::forward<_Args>(__args)...); }

template <class _Fp, class _A0, class ..._Args,
          class = __enable_if_bullet1<_Fp, _A0>>
inline __attribute__ ((__always_inline__))
constexpr auto
__invoke_constexpr(_Fp&& __f, _A0&& __a0, _Args&& ...__args)
noexcept(noexcept((std::__2::forward<_A0>(__a0).*__f)(std::__2::forward<_Args>(__args)...))) -> decltype((std::__2::forward<_A0>(__a0).*__f)(std::__2::forward<_Args>(__args)...)) { return (std::__2::forward<_A0>(__a0).*__f)(std::__2::forward<_Args>(__args)...); }

template <class _Fp, class _A0, class ..._Args,
          class = __enable_if_bullet2<_Fp, _A0>>
inline __attribute__ ((__always_inline__))
auto
__invoke(_Fp&& __f, _A0&& __a0, _Args&& ...__args)
noexcept(noexcept((__a0 . get().*__f)(std::__2::forward<_Args>(__args)...))) -> decltype((__a0 . get().*__f)(std::__2::forward<_Args>(__args)...)) { return (__a0 . get().*__f)(std::__2::forward<_Args>(__args)...); }

template <class _Fp, class _A0, class ..._Args,
          class = __enable_if_bullet2<_Fp, _A0>>
inline __attribute__ ((__always_inline__))
constexpr auto
__invoke_constexpr(_Fp&& __f, _A0&& __a0, _Args&& ...__args)
noexcept(noexcept((__a0 . get().*__f)(std::__2::forward<_Args>(__args)...))) -> decltype((__a0 . get().*__f)(std::__2::forward<_Args>(__args)...)) { return (__a0 . get().*__f)(std::__2::forward<_Args>(__args)...); }

template <class _Fp, class _A0, class ..._Args,
          class = __enable_if_bullet3<_Fp, _A0>>
inline __attribute__ ((__always_inline__))
auto
__invoke(_Fp&& __f, _A0&& __a0, _Args&& ...__args)
noexcept(noexcept(((*std::__2::forward<_A0>(__a0)).*__f)(std::__2::forward<_Args>(__args)...))) -> decltype(((*std::__2::forward<_A0>(__a0)).*__f)(std::__2::forward<_Args>(__args)...)) { return ((*std::__2::forward<_A0>(__a0)).*__f)(std::__2::forward<_Args>(__args)...); }

template <class _Fp, class _A0, class ..._Args,
          class = __enable_if_bullet3<_Fp, _A0>>
inline __attribute__ ((__always_inline__))
constexpr auto
__invoke_constexpr(_Fp&& __f, _A0&& __a0, _Args&& ...__args)
noexcept(noexcept(((*std::__2::forward<_A0>(__a0)).*__f)(std::__2::forward<_Args>(__args)...))) -> decltype(((*std::__2::forward<_A0>(__a0)).*__f)(std::__2::forward<_Args>(__args)...)) { return ((*std::__2::forward<_A0>(__a0)).*__f)(std::__2::forward<_Args>(__args)...); }

// bullets 4, 5 and 6

template <class _Fp, class _A0,
          class = __enable_if_bullet4<_Fp, _A0>>
inline __attribute__ ((__always_inline__))
auto
__invoke(_Fp&& __f, _A0&& __a0)
noexcept(noexcept(std::__2::forward<_A0>(__a0).*__f)) -> decltype(std::__2::forward<_A0>(__a0).*__f) { return std::__2::forward<_A0>(__a0).*__f; }

template <class _Fp, class _A0,
          class = __enable_if_bullet4<_Fp, _A0>>
inline __attribute__ ((__always_inline__))
constexpr auto
__invoke_constexpr(_Fp&& __f, _A0&& __a0)
noexcept(noexcept(std::__2::forward<_A0>(__a0).*__f)) -> decltype(std::__2::forward<_A0>(__a0).*__f) { return std::__2::forward<_A0>(__a0).*__f; }

template <class _Fp, class _A0,
          class = __enable_if_bullet5<_Fp, _A0>>
inline __attribute__ ((__always_inline__))
auto
__invoke(_Fp&& __f, _A0&& __a0)
noexcept(noexcept(__a0 . get().*__f)) -> decltype(__a0 . get().*__f) { return __a0 . get().*__f; }

template <class _Fp, class _A0,
          class = __enable_if_bullet5<_Fp, _A0>>
inline __attribute__ ((__always_inline__))
constexpr auto
__invoke_constexpr(_Fp&& __f, _A0&& __a0)
noexcept(noexcept(__a0 . get().*__f)) -> decltype(__a0 . get().*__f) { return __a0 . get().*__f; }

template <class _Fp, class _A0,
          class = __enable_if_bullet6<_Fp, _A0>>
inline __attribute__ ((__always_inline__))
auto
__invoke(_Fp&& __f, _A0&& __a0)
noexcept(noexcept((*std::__2::forward<_A0>(__a0)).*__f)) -> decltype((*std::__2::forward<_A0>(__a0)).*__f) { return (*std::__2::forward<_A0>(__a0)).*__f; }

template <class _Fp, class _A0,
          class = __enable_if_bullet6<_Fp, _A0>>
inline __attribute__ ((__always_inline__))
constexpr auto
__invoke_constexpr(_Fp&& __f, _A0&& __a0)
noexcept(noexcept((*std::__2::forward<_A0>(__a0)).*__f)) -> decltype((*std::__2::forward<_A0>(__a0)).*__f) { return (*std::__2::forward<_A0>(__a0)).*__f; }

// bullet 7

template <class _Fp, class ..._Args>
inline __attribute__ ((__always_inline__))
auto
__invoke(_Fp&& __f, _Args&& ...__args)
noexcept(noexcept(std::__2::forward<_Fp>(__f)(std::__2::forward<_Args>(__args)...))) -> decltype(std::__2::forward<_Fp>(__f)(std::__2::forward<_Args>(__args)...)) { return std::__2::forward<_Fp>(__f)(std::__2::forward<_Args>(__args)...); }

template <class _Fp, class ..._Args>
inline __attribute__ ((__always_inline__))
constexpr auto
__invoke_constexpr(_Fp&& __f, _Args&& ...__args)
noexcept(noexcept(std::__2::forward<_Fp>(__f)(std::__2::forward<_Args>(__args)...))) -> decltype(std::__2::forward<_Fp>(__f)(std::__2::forward<_Args>(__args)...)) { return std::__2::forward<_Fp>(__f)(std::__2::forward<_Args>(__args)...); }



// __invokable

template <class _Ret, class _Fp, class ..._Args>
struct __invokable_r
    : private __check_complete<_Fp>
{
    using _Result = decltype(
        std::__2::__invoke(std::__2::declval<_Fp>(), std::__2::declval<_Args>()...));

    using type =
        typename conditional<
            !is_same<_Result, __nat>::value,
            typename conditional<
                is_void<_Ret>::value,
                true_type,
                is_convertible<_Result, _Ret>
            >::type,
            false_type
        >::type;
    static const bool value = type::value;
};

template <class _Fp, class ..._Args>
using __invokable = __invokable_r<void, _Fp, _Args...>;

template <bool _IsInvokable, bool _IsCVVoid, class _Ret, class _Fp, class ..._Args>
struct __nothrow_invokable_r_imp {
  static const bool value = false;
};

template <class _Ret, class _Fp, class ..._Args>
struct __nothrow_invokable_r_imp<true, false, _Ret, _Fp, _Args...>
{
    typedef __nothrow_invokable_r_imp _ThisT;

    template <class _Tp>
    static void __test_noexcept(_Tp) noexcept;

    static const bool value = noexcept(_ThisT::__test_noexcept<_Ret>(
        std::__2::__invoke(std::__2::declval<_Fp>(), std::__2::declval<_Args>()...)));
};

template <class _Ret, class _Fp, class ..._Args>
struct __nothrow_invokable_r_imp<true, true, _Ret, _Fp, _Args...>
{
    static const bool value = noexcept(
        std::__2::__invoke(std::__2::declval<_Fp>(), std::__2::declval<_Args>()...));
};

template <class _Ret, class _Fp, class ..._Args>
using __nothrow_invokable_r =
    __nothrow_invokable_r_imp<
            __invokable_r<_Ret, _Fp, _Args...>::value,
            is_void<_Ret>::value,
            _Ret, _Fp, _Args...
    >;

template <class _Fp, class ..._Args>
struct __invoke_of
    : public enable_if<
        __invokable<_Fp, _Args...>::value,
        typename __invokable_r<void, _Fp, _Args...>::_Result>
{
};

// result_of

template <class _Fp, class ..._Args>
class  result_of<_Fp(_Args...)>
    : public __invoke_of<_Fp, _Args...>
{
};


template <class _Tp> using result_of_t = typename result_of<_Tp>::type;


# 4438 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/type_traits"



template <class _Tp> struct __is_swappable;
template <class _Tp> struct __is_nothrow_swappable;

template <class _Tp>
inline __attribute__ ((__always_inline__))

typename enable_if
<
    is_move_constructible<_Tp>::value &&
    is_move_assignable<_Tp>::value
>::type



swap(_Tp& __x, _Tp& __y) noexcept(is_nothrow_move_constructible<_Tp> ::value && is_nothrow_move_assignable<_Tp> ::value)

{
    _Tp __t(std::__2::move(__x));
    __x = std::__2::move(__y);
    __y = std::__2::move(__t);
}

template<class _Tp, size_t _Np>
inline __attribute__ ((__always_inline__))
typename enable_if<
    __is_swappable<_Tp>::value
>::type
swap(_Tp (&__a)[_Np], _Tp (&__b)[_Np]) noexcept(__is_nothrow_swappable<_Tp> ::value);

template <class _ForwardIterator1, class _ForwardIterator2>
inline __attribute__ ((__always_inline__))
void
iter_swap(_ForwardIterator1 __a, _ForwardIterator2 __b)
    //                                  _NOEXCEPT_(_NOEXCEPT_(swap(*__a, *__b)))
               noexcept(noexcept(swap(*std::__2::declval<_ForwardIterator1>(), *std::__2::declval<_ForwardIterator2>())))

{
    swap(*__a, *__b);
}

// __swappable

namespace __detail
{
// ALL generic swap overloads MUST already have a declaration available at this point.

template <class _Tp, class _Up = _Tp,
          bool _NotVoid = !is_void<_Tp>::value && !is_void<_Up>::value>
struct __swappable_with
{
    template <class _LHS, class _RHS>
    static decltype(swap(std::__2::declval<_LHS>(), std::__2::declval<_RHS>()))
    __test_swap(int);
    template <class, class>
    static __nat __test_swap(long);

    // Extra parens are needed for the C++03 definition of decltype.
    typedef decltype((__test_swap<_Tp, _Up>(0))) __swap1;
    typedef decltype((__test_swap<_Up, _Tp>(0))) __swap2;

    static const bool value = !is_same<__swap1, __nat>::value
                           && !is_same<__swap2, __nat>::value;
};

template <class _Tp, class _Up>
struct __swappable_with<_Tp, _Up,  false> : false_type {};

template <class _Tp, class _Up = _Tp, bool _Swappable = __swappable_with<_Tp, _Up>::value>
struct __nothrow_swappable_with {
  static const bool value =

      noexcept(swap(std::__2::declval<_Tp>(), std::__2::declval<_Up>()))
  &&  noexcept(swap(std::__2::declval<_Up>(), std::__2::declval<_Tp>()));



};

template <class _Tp, class _Up>
struct __nothrow_swappable_with<_Tp, _Up, false> : false_type {};

}  // __detail

template <class _Tp>
struct __is_swappable
    : public integral_constant<bool, __detail::__swappable_with<_Tp&>::value>
{
};

template <class _Tp>
struct __is_nothrow_swappable
    : public integral_constant<bool, __detail::__nothrow_swappable_with<_Tp&>::value>
{
};

# 4587 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/type_traits"



template <class _Tp>
struct underlying_type
{
    typedef __underlying_type(_Tp) type;
};


template <class _Tp> using underlying_type_t = typename underlying_type<_Tp>::type;


# 4611 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/type_traits"


template <class _Tp, bool = is_enum<_Tp>::value>
struct __sfinae_underlying_type
{
    typedef typename underlying_type<_Tp>::type type;
    typedef decltype(((type)1) + 0) __promoted_type;
};

template <class _Tp>
struct __sfinae_underlying_type<_Tp, false> {};

inline __attribute__ ((__always_inline__))
int __convert_to_integral(int __val) { return __val; }

inline __attribute__ ((__always_inline__))
unsigned __convert_to_integral(unsigned __val) { return __val; }

inline __attribute__ ((__always_inline__))
long __convert_to_integral(long __val) { return __val; }

inline __attribute__ ((__always_inline__))
unsigned long __convert_to_integral(unsigned long __val) { return __val; }

inline __attribute__ ((__always_inline__))
long long __convert_to_integral(long long __val) { return __val; }

inline __attribute__ ((__always_inline__))
unsigned long long __convert_to_integral(unsigned long long __val) {return __val; }

# 4648 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/type_traits"

template <class _Tp>
inline __attribute__ ((__always_inline__))
typename __sfinae_underlying_type<_Tp>::__promoted_type
__convert_to_integral(_Tp __val) { return __val; }



template <class _Tp>
struct __has_operator_addressof_member_imp
{
    template <class _Up>
        static auto __test(int)
            -> typename __select_2nd<decltype(std::__2::declval<_Up>().operator&()), true_type>::type;
    template <class>
        static auto __test(long) -> false_type;

    static const bool value = decltype(__test<_Tp>(0))::value;
};

template <class _Tp>
struct __has_operator_addressof_free_imp
{
    template <class _Up>
        static auto __test(int)
            -> typename __select_2nd<decltype(operator&(std::__2::declval<_Up>())), true_type>::type;
    template <class>
        static auto __test(long) -> false_type;

    static const bool value = decltype(__test<_Tp>(0))::value;
};

template <class _Tp>
struct __has_operator_addressof
    : public integral_constant<bool, __has_operator_addressof_member_imp<_Tp>::value
                                  || __has_operator_addressof_free_imp<_Tp>::value>
{};



# 4707 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/type_traits"

// These traits are used in __tree and __hash_table

struct __extract_key_fail_tag {};
struct __extract_key_self_tag {};
struct __extract_key_first_tag {};

template <class _ValTy, class _Key,
          class _RawValTy = typename __unconstref<_ValTy>::type>
struct __can_extract_key
    : conditional<is_same<_RawValTy, _Key>::value, __extract_key_self_tag,
                  __extract_key_fail_tag>::type {};

template <class _Pair, class _Key, class _First, class _Second>
struct __can_extract_key<_Pair, _Key, pair<_First, _Second>>
    : conditional<is_same<typename remove_const<_First>::type, _Key>::value,
                  __extract_key_first_tag, __extract_key_fail_tag>::type {};

// __can_extract_map_key uses true_type/false_type instead of the tags.
// It returns true if _Key != _ContainerValueTy (the container is a map not a set)
// and _ValTy == _Key.
template <class _ValTy, class _Key, class _ContainerValueTy,
          class _RawValTy = typename __unconstref<_ValTy>::type>
struct __can_extract_map_key
    : integral_constant<bool, is_same<_RawValTy, _Key>::value> {};

// This specialization returns __extract_key_fail_tag for non-map containers
// because _Key == _ContainerValueTy
template <class _ValTy, class _Key, class _RawValTy>
struct __can_extract_map_key<_ValTy, _Key, _Key, _RawValTy>
    : false_type {};



} }

# 4773 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/type_traits"

# 310 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/math.h"
# 1 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/limits"
// -*- C++ -*-
//===---------------------------- limits ----------------------------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is dual licensed under the MIT and the University of Illinois Open
// Source Licenses. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//




/*
    limits synopsis

namespace std
{

template<class T>
class numeric_limits
{
public:
    static constexpr bool is_specialized = false;
    static constexpr T min() noexcept;
    static constexpr T max() noexcept;
    static constexpr T lowest() noexcept;

    static constexpr int  digits = 0;
    static constexpr int  digits10 = 0;
    static constexpr int  max_digits10 = 0;
    static constexpr bool is_signed = false;
    static constexpr bool is_integer = false;
    static constexpr bool is_exact = false;
    static constexpr int  radix = 0;
    static constexpr T epsilon() noexcept;
    static constexpr T round_error() noexcept;

    static constexpr int  min_exponent = 0;
    static constexpr int  min_exponent10 = 0;
    static constexpr int  max_exponent = 0;
    static constexpr int  max_exponent10 = 0;

    static constexpr bool has_infinity = false;
    static constexpr bool has_quiet_NaN = false;
    static constexpr bool has_signaling_NaN = false;
    static constexpr float_denorm_style has_denorm = denorm_absent;
    static constexpr bool has_denorm_loss = false;
    static constexpr T infinity() noexcept;
    static constexpr T quiet_NaN() noexcept;
    static constexpr T signaling_NaN() noexcept;
    static constexpr T denorm_min() noexcept;

    static constexpr bool is_iec559 = false;
    static constexpr bool is_bounded = false;
    static constexpr bool is_modulo = false;

    static constexpr bool traps = false;
    static constexpr bool tinyness_before = false;
    static constexpr float_round_style round_style = round_toward_zero;
};

enum __attribute__((packed)) float_round_style
{
    round_indeterminate       = -1,
    round_toward_zero         =  0,
    round_to_nearest          =  1,
    round_toward_infinity     =  2,
    round_toward_neg_infinity =  3
};

enum __attribute__((packed)) float_denorm_style
{
    denorm_indeterminate = -1,
    denorm_absent = 0,
    denorm_present = 1
};

template<> class numeric_limits<cv bool>;

template<> class numeric_limits<cv char>;
template<> class numeric_limits<cv signed char>;
template<> class numeric_limits<cv unsigned char>;
template<> class numeric_limits<cv wchar_t>;
template<> class numeric_limits<cv char16_t>;
template<> class numeric_limits<cv char32_t>;

template<> class numeric_limits<cv short>;
template<> class numeric_limits<cv int>;
template<> class numeric_limits<cv long>;
template<> class numeric_limits<cv long long>;
template<> class numeric_limits<cv unsigned short>;
template<> class numeric_limits<cv unsigned int>;
template<> class numeric_limits<cv unsigned long>;
template<> class numeric_limits<cv unsigned long long>;

template<> class numeric_limits<cv float>;
template<> class numeric_limits<cv double>;
template<> class numeric_limits<cv long double>;

}  // std

*/



# 1 "C:\\ti\\ccs930\\ccs\\tools\\compiler\\ti-cgt-arm_20.2.3.LTS\\include\\libcxx\\support/ti/__limit_defs.h"
// -*- C++ -*-
//===--------------------- support/ti/limits.h ----------------------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is dual licensed under the MIT and the University of Illinois Open
// Source Licenses. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//




# 1 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/float.h"
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
    float.h synopsis

Macros:

    FLT_ROUNDS
    FLT_EVAL_METHOD     // C99
    FLT_RADIX

    FLT_MANT_DIG
    DBL_MANT_DIG
    LDBL_MANT_DIG

    DECIMAL_DIG         // C99

    FLT_DIG
    DBL_DIG
    LDBL_DIG

    FLT_MIN_EXP
    DBL_MIN_EXP
    LDBL_MIN_EXP

    FLT_MIN_10_EXP
    DBL_MIN_10_EXP
    LDBL_MIN_10_EXP

    FLT_MAX_EXP
    DBL_MAX_EXP
    LDBL_MAX_EXP

    FLT_MAX_10_EXP
    DBL_MAX_10_EXP
    LDBL_MAX_10_EXP

    FLT_MAX
    DBL_MAX
    LDBL_MAX

    FLT_EPSILON
    DBL_EPSILON
    LDBL_EPSILON

    FLT_MIN
    DBL_MIN
    LDBL_MIN

*/







# 1 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/float.h"
/*****************************************************************************/
/* float.h                                                                   */
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

/********************************************************************/
/*    KEY:  FLT_     - APPLIES TO TYPE FLOAT                        */
/*          DBL_     - APPLIES TO TYPE DOUBLE                       */
/*          LDBL_    - APPLIES TO TYPE LONG DOUBLE                  */
/********************************************************************/





_Pragma("diag_push")
_Pragma("CHECK_MISRA(\"-20.1\")") /* standard headers must define standard names */





# 69 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/float.h"

# 88 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/float.h"

# 103 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/float.h"



# 124 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/float.h"

# 139 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/float.h"





_Pragma("diag_pop")

# 70 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/float.h"













# 16 "C:\\ti\\ccs930\\ccs\\tools\\compiler\\ti-cgt-arm_20.2.3.LTS\\include\\libcxx\\support/ti/__limit_defs.h"

# 27 "C:\\ti\\ccs930\\ccs\\tools\\compiler\\ti-cgt-arm_20.2.3.LTS\\include\\libcxx\\support/ti/__limit_defs.h"

# 39 "C:\\ti\\ccs930\\ccs\\tools\\compiler\\ti-cgt-arm_20.2.3.LTS\\include\\libcxx\\support/ti/__limit_defs.h"

# 50 "C:\\ti\\ccs930\\ccs\\tools\\compiler\\ti-cgt-arm_20.2.3.LTS\\include\\libcxx\\support/ti/__limit_defs.h"

# 111 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/limits"










_Pragma("push_macro(\"min\")") _Pragma("push_macro(\"max\")")
# 1 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__undef_macros"
// -*- C++ -*-
//===------------------------ __undef_macros ------------------------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//


# 23 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/__undef_macros"

# 123 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/limits"


namespace std { inline namespace __2 {

enum __attribute__((packed)) float_round_style
{
    round_indeterminate       = -1,
    round_toward_zero         =  0,
    round_to_nearest          =  1,
    round_toward_infinity     =  2,
    round_toward_neg_infinity =  3
};

enum __attribute__((packed)) float_denorm_style
{
    denorm_indeterminate = -1,
    denorm_absent = 0,
    denorm_present = 1
};

template <class _Tp, bool = is_arithmetic<_Tp>::value>
class __libcpp_numeric_limits
{
protected:
    typedef _Tp type;

    static constexpr const  bool is_specialized = false;
    __attribute__ ((__always_inline__)) static constexpr type min() noexcept {return type();}
    __attribute__ ((__always_inline__)) static constexpr type max() noexcept {return type();}
    __attribute__ ((__always_inline__)) static constexpr type lowest() noexcept {return type();}

    static constexpr const int  digits = 0;
    static constexpr const int  digits10 = 0;
    static constexpr const int  max_digits10 = 0;
    static constexpr const bool is_signed = false;
    static constexpr const bool is_integer = false;
    static constexpr const bool is_exact = false;
    static constexpr const int  radix = 0;
    __attribute__ ((__always_inline__)) static constexpr type epsilon() noexcept {return type();}
    __attribute__ ((__always_inline__)) static constexpr type round_error() noexcept {return type();}

    static constexpr const int  min_exponent = 0;
    static constexpr const int  min_exponent10 = 0;
    static constexpr const int  max_exponent = 0;
    static constexpr const int  max_exponent10 = 0;

    static constexpr const bool has_infinity = false;
    static constexpr const bool has_quiet_NaN = false;
    static constexpr const bool has_signaling_NaN = false;
    static constexpr const float_denorm_style has_denorm = denorm_absent;
    static constexpr const bool has_denorm_loss = false;
    __attribute__ ((__always_inline__)) static constexpr type infinity() noexcept {return type();}
    __attribute__ ((__always_inline__)) static constexpr type quiet_NaN() noexcept {return type();}
    __attribute__ ((__always_inline__)) static constexpr type signaling_NaN() noexcept {return type();}
    __attribute__ ((__always_inline__)) static constexpr type denorm_min() noexcept {return type();}

    static constexpr const bool is_iec559 = false;
    static constexpr const bool is_bounded = false;
    static constexpr const bool is_modulo = false;

    static constexpr const bool traps = false;
    static constexpr const bool tinyness_before = false;
    static constexpr const float_round_style round_style = round_toward_zero;
};

template <class _Tp, int __digits, bool _IsSigned>
struct __libcpp_compute_min
{
    static constexpr const _Tp value = _Tp(_Tp(1) << __digits);
};

template <class _Tp, int __digits>
struct __libcpp_compute_min<_Tp, __digits, false>
{
    static constexpr const _Tp value = _Tp(0);
};

template <class _Tp>
class __libcpp_numeric_limits<_Tp, true>
{
protected:
    typedef _Tp type;

    static constexpr const bool is_specialized = true;

    static constexpr const bool is_signed = type(-1) < type(0);
    static constexpr const int  digits = static_cast<int>(sizeof(type) * 8 - is_signed);
    static constexpr const int  digits10 = digits * 3 / 10;
    static constexpr const int  max_digits10 = 0;
    static constexpr const type __min = __libcpp_compute_min<type, digits, is_signed>::value;
    static constexpr const type __max = is_signed ? type(type(~0) ^ __min) : type(~0);
    __attribute__ ((__always_inline__)) static constexpr type min() noexcept {return __min;}
    __attribute__ ((__always_inline__)) static constexpr type max() noexcept {return __max;}
    __attribute__ ((__always_inline__)) static constexpr type lowest() noexcept {return min();}

    static constexpr const bool is_integer = true;
    static constexpr const bool is_exact = true;
    static constexpr const int  radix = 2;
    __attribute__ ((__always_inline__)) static constexpr type epsilon() noexcept {return type(0);}
    __attribute__ ((__always_inline__)) static constexpr type round_error() noexcept {return type(0);}

    static constexpr const int  min_exponent = 0;
    static constexpr const int  min_exponent10 = 0;
    static constexpr const int  max_exponent = 0;
    static constexpr const int  max_exponent10 = 0;

    static constexpr const bool has_infinity = false;
    static constexpr const bool has_quiet_NaN = false;
    static constexpr const bool has_signaling_NaN = false;
    static constexpr const float_denorm_style has_denorm = denorm_absent;
    static constexpr const bool has_denorm_loss = false;
    __attribute__ ((__always_inline__)) static constexpr type infinity() noexcept {return type(0);}
    __attribute__ ((__always_inline__)) static constexpr type quiet_NaN() noexcept {return type(0);}
    __attribute__ ((__always_inline__)) static constexpr type signaling_NaN() noexcept {return type(0);}
    __attribute__ ((__always_inline__)) static constexpr type denorm_min() noexcept {return type(0);}

    static constexpr const bool is_iec559 = false;
    static constexpr const bool is_bounded = true;
    static constexpr const bool is_modulo = !std::__2::is_signed<_Tp>::value;





    static constexpr const bool traps = false;

    static constexpr const bool tinyness_before = false;
    static constexpr const float_round_style round_style = round_toward_zero;
};

template <>
class __libcpp_numeric_limits<bool, true>
{
protected:
    typedef bool type;

    static constexpr const bool is_specialized = true;

    static constexpr const bool is_signed = false;
    static constexpr const int  digits = 1;
    static constexpr const int  digits10 = 0;
    static constexpr const int  max_digits10 = 0;
    static constexpr const type __min = false;
    static constexpr const type __max = true;
    __attribute__ ((__always_inline__)) static constexpr type min() noexcept {return __min;}
    __attribute__ ((__always_inline__)) static constexpr type max() noexcept {return __max;}
    __attribute__ ((__always_inline__)) static constexpr type lowest() noexcept {return min();}

    static constexpr const bool is_integer = true;
    static constexpr const bool is_exact = true;
    static constexpr const int  radix = 2;
    __attribute__ ((__always_inline__)) static constexpr type epsilon() noexcept {return type(0);}
    __attribute__ ((__always_inline__)) static constexpr type round_error() noexcept {return type(0);}

    static constexpr const int  min_exponent = 0;
    static constexpr const int  min_exponent10 = 0;
    static constexpr const int  max_exponent = 0;
    static constexpr const int  max_exponent10 = 0;

    static constexpr const bool has_infinity = false;
    static constexpr const bool has_quiet_NaN = false;
    static constexpr const bool has_signaling_NaN = false;
    static constexpr const float_denorm_style has_denorm = denorm_absent;
    static constexpr const bool has_denorm_loss = false;
    __attribute__ ((__always_inline__)) static constexpr type infinity() noexcept {return type(0);}
    __attribute__ ((__always_inline__)) static constexpr type quiet_NaN() noexcept {return type(0);}
    __attribute__ ((__always_inline__)) static constexpr type signaling_NaN() noexcept {return type(0);}
    __attribute__ ((__always_inline__)) static constexpr type denorm_min() noexcept {return type(0);}

    static constexpr const bool is_iec559 = false;
    static constexpr const bool is_bounded = true;
    static constexpr const bool is_modulo = false;

    static constexpr const bool traps = false;
    static constexpr const bool tinyness_before = false;
    static constexpr const float_round_style round_style = round_toward_zero;
};

template <>
class __libcpp_numeric_limits<float, true>
{
protected:
    typedef float type;

    static constexpr const bool is_specialized = true;

    static constexpr const bool is_signed = true;
    static constexpr const int  digits = 24;
    static constexpr const int  digits10 = 6;
    static constexpr const int  max_digits10 = 2+(digits * 30103l)/100000l;
    __attribute__ ((__always_inline__)) static constexpr type min() noexcept {return 1.175494351E-38F;}
    __attribute__ ((__always_inline__)) static constexpr type max() noexcept {return 3.402823466E+38F;}
    __attribute__ ((__always_inline__)) static constexpr type lowest() noexcept {return -max();}

    static constexpr const bool is_integer = false;
    static constexpr const bool is_exact = false;
    static constexpr const int  radix = 2;
    __attribute__ ((__always_inline__)) static constexpr type epsilon() noexcept {return 1.192092896E-07F;}
    __attribute__ ((__always_inline__)) static constexpr type round_error() noexcept {return 0.5F;}

    static constexpr const int  min_exponent = (-125);
    static constexpr const int  min_exponent10 = (-37);
    static constexpr const int  max_exponent = 128;
    static constexpr const int  max_exponent10 = 38;

    static constexpr const bool has_infinity = true;
    static constexpr const bool has_quiet_NaN = true;
    static constexpr const bool has_signaling_NaN = false;
    static constexpr const float_denorm_style has_denorm = denorm_absent;
    static constexpr const bool has_denorm_loss = false;
    __attribute__ ((__always_inline__)) static constexpr type infinity() noexcept {return __builtin_huge_valf();}
    __attribute__ ((__always_inline__)) static constexpr type quiet_NaN() noexcept {return __builtin_nanf("");}
    __attribute__ ((__always_inline__)) static constexpr type signaling_NaN() noexcept {return __builtin_nansf("");}
    __attribute__ ((__always_inline__)) static constexpr type denorm_min() noexcept {return has_denorm == denorm_absent ? min() : (0.0f);}

    static constexpr const bool is_iec559 = false; // Because has_signaling_NaN is false
    static constexpr const bool is_bounded = true;
    static constexpr const bool is_modulo = false;

    static constexpr const bool traps = false;
    static constexpr const bool tinyness_before = false;
    static constexpr const float_round_style round_style = round_to_nearest;
};

template <>
class __libcpp_numeric_limits<double, true>
{
protected:
    typedef double type;

    static constexpr const bool is_specialized = true;

    static constexpr const bool is_signed = true;
    static constexpr const int  digits = 53;
    static constexpr const int  digits10 = 15;
    static constexpr const int  max_digits10 = 2+(digits * 30103l)/100000l;
    __attribute__ ((__always_inline__)) static constexpr type min() noexcept {return 2.2250738585072014E-308;}
    __attribute__ ((__always_inline__)) static constexpr type max() noexcept {return 1.7976931348623157E+308;}
    __attribute__ ((__always_inline__)) static constexpr type lowest() noexcept {return -max();}

    static constexpr const bool is_integer = false;
    static constexpr const bool is_exact = false;
    static constexpr const int  radix = 2;
    __attribute__ ((__always_inline__)) static constexpr type epsilon() noexcept {return 2.2204460492503131E-16;}
    __attribute__ ((__always_inline__)) static constexpr type round_error() noexcept {return 0.5;}

    static constexpr const int  min_exponent = (-1021);
    static constexpr const int  min_exponent10 = (-307);
    static constexpr const int  max_exponent = 1024;
    static constexpr const int  max_exponent10 = 308;

    static constexpr const bool has_infinity = true;
    static constexpr const bool has_quiet_NaN = true;
    static constexpr const bool has_signaling_NaN = false;
    static constexpr const float_denorm_style has_denorm = denorm_absent;
    static constexpr const bool has_denorm_loss = false;
    __attribute__ ((__always_inline__)) static constexpr type infinity() noexcept {return __builtin_huge_val();}
    __attribute__ ((__always_inline__)) static constexpr type quiet_NaN() noexcept {return __builtin_nan("");}
    __attribute__ ((__always_inline__)) static constexpr type signaling_NaN() noexcept {return __builtin_nans("");}
    __attribute__ ((__always_inline__)) static constexpr type denorm_min() noexcept {return has_denorm == denorm_absent ? min() : (0.0);}

    static constexpr const bool is_iec559 = false; // Because has_signaling_NaN is false
    static constexpr const bool is_bounded = true;
    static constexpr const bool is_modulo = false;

    static constexpr const bool traps = false;
    static constexpr const bool tinyness_before = false;
    static constexpr const float_round_style round_style = round_to_nearest;
};

template <>
class __libcpp_numeric_limits<long double, true>
{
protected:
    typedef long double type;

    static constexpr const bool is_specialized = true;

    static constexpr const bool is_signed = true;
    static constexpr const int  digits = 53;
    static constexpr const int  digits10 = 15;
    static constexpr const int  max_digits10 = 2+(digits * 30103l)/100000l;
    __attribute__ ((__always_inline__)) static constexpr type min() noexcept {return 2.2250738585072014E-308L;}
    __attribute__ ((__always_inline__)) static constexpr type max() noexcept {return 1.7976931348623157E+308L;}
    __attribute__ ((__always_inline__)) static constexpr type lowest() noexcept {return -max();}

    static constexpr const bool is_integer = false;
    static constexpr const bool is_exact = false;
    static constexpr const int  radix = 2;
    __attribute__ ((__always_inline__)) static constexpr type epsilon() noexcept {return 2.2204460492503131E-16L;}
    __attribute__ ((__always_inline__)) static constexpr type round_error() noexcept {return 0.5;}

    static constexpr const int  min_exponent = (-1021);
    static constexpr const int  min_exponent10 = (-307);
    static constexpr const int  max_exponent = 1024;
    static constexpr const int  max_exponent10 = 308;

    static constexpr const bool has_infinity = true;
    static constexpr const bool has_quiet_NaN = true;
    static constexpr const bool has_signaling_NaN = false;
    static constexpr const float_denorm_style has_denorm = denorm_absent;
    static constexpr const bool has_denorm_loss = false;
    __attribute__ ((__always_inline__)) static constexpr type infinity() noexcept {return __builtin_huge_vall();}
    __attribute__ ((__always_inline__)) static constexpr type quiet_NaN() noexcept {return __builtin_nanl("");}
    __attribute__ ((__always_inline__)) static constexpr type signaling_NaN() noexcept {return __builtin_nansl("");}
    __attribute__ ((__always_inline__)) static constexpr type denorm_min() noexcept {return has_denorm == denorm_absent ? min() : (0.0l);}




    static constexpr const bool is_iec559 = false; // Because has_signaling_NaN is false

    static constexpr const bool is_bounded = true;
    static constexpr const bool is_modulo = false;

    static constexpr const bool traps = false;
    static constexpr const bool tinyness_before = false;
    static constexpr const float_round_style round_style = round_to_nearest;
};

template <class _Tp>
class  numeric_limits
    : private __libcpp_numeric_limits<typename remove_cv<_Tp>::type>
{
    typedef __libcpp_numeric_limits<typename remove_cv<_Tp>::type> __base;
    typedef typename __base::type type;
public:
    static constexpr const bool is_specialized = __base::is_specialized;
    __attribute__ ((__always_inline__)) static constexpr type min() noexcept {return __base::min();}
    __attribute__ ((__always_inline__)) static constexpr type max() noexcept {return __base::max();}
    __attribute__ ((__always_inline__)) static constexpr type lowest() noexcept {return __base::lowest();}

    static constexpr const int  digits = __base::digits;
    static constexpr const int  digits10 = __base::digits10;
    static constexpr const int  max_digits10 = __base::max_digits10;
    static constexpr const bool is_signed = __base::is_signed;
    static constexpr const bool is_integer = __base::is_integer;
    static constexpr const bool is_exact = __base::is_exact;
    static constexpr const int  radix = __base::radix;
    __attribute__ ((__always_inline__)) static constexpr type epsilon() noexcept {return __base::epsilon();}
    __attribute__ ((__always_inline__)) static constexpr type round_error() noexcept {return __base::round_error();}

    static constexpr const int  min_exponent = __base::min_exponent;
    static constexpr const int  min_exponent10 = __base::min_exponent10;
    static constexpr const int  max_exponent = __base::max_exponent;
    static constexpr const int  max_exponent10 = __base::max_exponent10;

    static constexpr const bool has_infinity = __base::has_infinity;
    static constexpr const bool has_quiet_NaN = __base::has_quiet_NaN;
    static constexpr const bool has_signaling_NaN = __base::has_signaling_NaN;
    static constexpr const float_denorm_style has_denorm = __base::has_denorm;
    static constexpr const bool has_denorm_loss = __base::has_denorm_loss;
    __attribute__ ((__always_inline__)) static constexpr type infinity() noexcept {return __base::infinity();}
    __attribute__ ((__always_inline__)) static constexpr type quiet_NaN() noexcept {return __base::quiet_NaN();}
    __attribute__ ((__always_inline__)) static constexpr type signaling_NaN() noexcept {return __base::signaling_NaN();}
    __attribute__ ((__always_inline__)) static constexpr type denorm_min() noexcept {return __base::denorm_min();}

    static constexpr const bool is_iec559 = __base::is_iec559;
    static constexpr const bool is_bounded = __base::is_bounded;
    static constexpr const bool is_modulo = __base::is_modulo;

    static constexpr const bool traps = __base::traps;
    static constexpr const bool tinyness_before = __base::tinyness_before;
    static constexpr const float_round_style round_style = __base::round_style;
};

template <class _Tp>
    constexpr const bool numeric_limits<_Tp>::is_specialized;
template <class _Tp>
    constexpr const int numeric_limits<_Tp>::digits;
template <class _Tp>
    constexpr const int numeric_limits<_Tp>::digits10;
template <class _Tp>
    constexpr const int numeric_limits<_Tp>::max_digits10;
template <class _Tp>
    constexpr const bool numeric_limits<_Tp>::is_signed;
template <class _Tp>
    constexpr const bool numeric_limits<_Tp>::is_integer;
template <class _Tp>
    constexpr const bool numeric_limits<_Tp>::is_exact;
template <class _Tp>
    constexpr const int numeric_limits<_Tp>::radix;
template <class _Tp>
    constexpr const int numeric_limits<_Tp>::min_exponent;
template <class _Tp>
    constexpr const int numeric_limits<_Tp>::min_exponent10;
template <class _Tp>
    constexpr const int numeric_limits<_Tp>::max_exponent;
template <class _Tp>
    constexpr const int numeric_limits<_Tp>::max_exponent10;
template <class _Tp>
    constexpr const bool numeric_limits<_Tp>::has_infinity;
template <class _Tp>
    constexpr const bool numeric_limits<_Tp>::has_quiet_NaN;
template <class _Tp>
    constexpr const bool numeric_limits<_Tp>::has_signaling_NaN;
template <class _Tp>
    constexpr const float_denorm_style numeric_limits<_Tp>::has_denorm;
template <class _Tp>
    constexpr const bool numeric_limits<_Tp>::has_denorm_loss;
template <class _Tp>
    constexpr const bool numeric_limits<_Tp>::is_iec559;
template <class _Tp>
    constexpr const bool numeric_limits<_Tp>::is_bounded;
template <class _Tp>
    constexpr const bool numeric_limits<_Tp>::is_modulo;
template <class _Tp>
    constexpr const bool numeric_limits<_Tp>::traps;
template <class _Tp>
    constexpr const bool numeric_limits<_Tp>::tinyness_before;
template <class _Tp>
    constexpr const float_round_style numeric_limits<_Tp>::round_style;

template <class _Tp>
class  numeric_limits<const _Tp>
    : private numeric_limits<_Tp>
{
    typedef numeric_limits<_Tp> __base;
    typedef _Tp type;
public:
    static constexpr const bool is_specialized = __base::is_specialized;
    __attribute__ ((__always_inline__)) static constexpr type min() noexcept {return __base::min();}
    __attribute__ ((__always_inline__)) static constexpr type max() noexcept {return __base::max();}
    __attribute__ ((__always_inline__)) static constexpr type lowest() noexcept {return __base::lowest();}

    static constexpr const int  digits = __base::digits;
    static constexpr const int  digits10 = __base::digits10;
    static constexpr const int  max_digits10 = __base::max_digits10;
    static constexpr const bool is_signed = __base::is_signed;
    static constexpr const bool is_integer = __base::is_integer;
    static constexpr const bool is_exact = __base::is_exact;
    static constexpr const int  radix = __base::radix;
    __attribute__ ((__always_inline__)) static constexpr type epsilon() noexcept {return __base::epsilon();}
    __attribute__ ((__always_inline__)) static constexpr type round_error() noexcept {return __base::round_error();}

    static constexpr const int  min_exponent = __base::min_exponent;
    static constexpr const int  min_exponent10 = __base::min_exponent10;
    static constexpr const int  max_exponent = __base::max_exponent;
    static constexpr const int  max_exponent10 = __base::max_exponent10;

    static constexpr const bool has_infinity = __base::has_infinity;
    static constexpr const bool has_quiet_NaN = __base::has_quiet_NaN;
    static constexpr const bool has_signaling_NaN = __base::has_signaling_NaN;
    static constexpr const float_denorm_style has_denorm = __base::has_denorm;
    static constexpr const bool has_denorm_loss = __base::has_denorm_loss;
    __attribute__ ((__always_inline__)) static constexpr type infinity() noexcept {return __base::infinity();}
    __attribute__ ((__always_inline__)) static constexpr type quiet_NaN() noexcept {return __base::quiet_NaN();}
    __attribute__ ((__always_inline__)) static constexpr type signaling_NaN() noexcept {return __base::signaling_NaN();}
    __attribute__ ((__always_inline__)) static constexpr type denorm_min() noexcept {return __base::denorm_min();}

    static constexpr const bool is_iec559 = __base::is_iec559;
    static constexpr const bool is_bounded = __base::is_bounded;
    static constexpr const bool is_modulo = __base::is_modulo;

    static constexpr const bool traps = __base::traps;
    static constexpr const bool tinyness_before = __base::tinyness_before;
    static constexpr const float_round_style round_style = __base::round_style;
};

template <class _Tp>
    constexpr const bool numeric_limits<const _Tp>::is_specialized;
template <class _Tp>
    constexpr const int numeric_limits<const _Tp>::digits;
template <class _Tp>
    constexpr const int numeric_limits<const _Tp>::digits10;
template <class _Tp>
    constexpr const int numeric_limits<const _Tp>::max_digits10;
template <class _Tp>
    constexpr const bool numeric_limits<const _Tp>::is_signed;
template <class _Tp>
    constexpr const bool numeric_limits<const _Tp>::is_integer;
template <class _Tp>
    constexpr const bool numeric_limits<const _Tp>::is_exact;
template <class _Tp>
    constexpr const int numeric_limits<const _Tp>::radix;
template <class _Tp>
    constexpr const int numeric_limits<const _Tp>::min_exponent;
template <class _Tp>
    constexpr const int numeric_limits<const _Tp>::min_exponent10;
template <class _Tp>
    constexpr const int numeric_limits<const _Tp>::max_exponent;
template <class _Tp>
    constexpr const int numeric_limits<const _Tp>::max_exponent10;
template <class _Tp>
    constexpr const bool numeric_limits<const _Tp>::has_infinity;
template <class _Tp>
    constexpr const bool numeric_limits<const _Tp>::has_quiet_NaN;
template <class _Tp>
    constexpr const bool numeric_limits<const _Tp>::has_signaling_NaN;
template <class _Tp>
    constexpr const float_denorm_style numeric_limits<const _Tp>::has_denorm;
template <class _Tp>
    constexpr const bool numeric_limits<const _Tp>::has_denorm_loss;
template <class _Tp>
    constexpr const bool numeric_limits<const _Tp>::is_iec559;
template <class _Tp>
    constexpr const bool numeric_limits<const _Tp>::is_bounded;
template <class _Tp>
    constexpr const bool numeric_limits<const _Tp>::is_modulo;
template <class _Tp>
    constexpr const bool numeric_limits<const _Tp>::traps;
template <class _Tp>
    constexpr const bool numeric_limits<const _Tp>::tinyness_before;
template <class _Tp>
    constexpr const float_round_style numeric_limits<const _Tp>::round_style;

template <class _Tp>
class  numeric_limits<volatile _Tp>
    : private numeric_limits<_Tp>
{
    typedef numeric_limits<_Tp> __base;
    typedef _Tp type;
public:
    static constexpr const bool is_specialized = __base::is_specialized;
    __attribute__ ((__always_inline__)) static constexpr type min() noexcept {return __base::min();}
    __attribute__ ((__always_inline__)) static constexpr type max() noexcept {return __base::max();}
    __attribute__ ((__always_inline__)) static constexpr type lowest() noexcept {return __base::lowest();}

    static constexpr const int  digits = __base::digits;
    static constexpr const int  digits10 = __base::digits10;
    static constexpr const int  max_digits10 = __base::max_digits10;
    static constexpr const bool is_signed = __base::is_signed;
    static constexpr const bool is_integer = __base::is_integer;
    static constexpr const bool is_exact = __base::is_exact;
    static constexpr const int  radix = __base::radix;
    __attribute__ ((__always_inline__)) static constexpr type epsilon() noexcept {return __base::epsilon();}
    __attribute__ ((__always_inline__)) static constexpr type round_error() noexcept {return __base::round_error();}

    static constexpr const int  min_exponent = __base::min_exponent;
    static constexpr const int  min_exponent10 = __base::min_exponent10;
    static constexpr const int  max_exponent = __base::max_exponent;
    static constexpr const int  max_exponent10 = __base::max_exponent10;

    static constexpr const bool has_infinity = __base::has_infinity;
    static constexpr const bool has_quiet_NaN = __base::has_quiet_NaN;
    static constexpr const bool has_signaling_NaN = __base::has_signaling_NaN;
    static constexpr const float_denorm_style has_denorm = __base::has_denorm;
    static constexpr const bool has_denorm_loss = __base::has_denorm_loss;
    __attribute__ ((__always_inline__)) static constexpr type infinity() noexcept {return __base::infinity();}
    __attribute__ ((__always_inline__)) static constexpr type quiet_NaN() noexcept {return __base::quiet_NaN();}
    __attribute__ ((__always_inline__)) static constexpr type signaling_NaN() noexcept {return __base::signaling_NaN();}
    __attribute__ ((__always_inline__)) static constexpr type denorm_min() noexcept {return __base::denorm_min();}

    static constexpr const bool is_iec559 = __base::is_iec559;
    static constexpr const bool is_bounded = __base::is_bounded;
    static constexpr const bool is_modulo = __base::is_modulo;

    static constexpr const bool traps = __base::traps;
    static constexpr const bool tinyness_before = __base::tinyness_before;
    static constexpr const float_round_style round_style = __base::round_style;
};

template <class _Tp>
    constexpr const bool numeric_limits<volatile _Tp>::is_specialized;
template <class _Tp>
    constexpr const int numeric_limits<volatile _Tp>::digits;
template <class _Tp>
    constexpr const int numeric_limits<volatile _Tp>::digits10;
template <class _Tp>
    constexpr const int numeric_limits<volatile _Tp>::max_digits10;
template <class _Tp>
    constexpr const bool numeric_limits<volatile _Tp>::is_signed;
template <class _Tp>
    constexpr const bool numeric_limits<volatile _Tp>::is_integer;
template <class _Tp>
    constexpr const bool numeric_limits<volatile _Tp>::is_exact;
template <class _Tp>
    constexpr const int numeric_limits<volatile _Tp>::radix;
template <class _Tp>
    constexpr const int numeric_limits<volatile _Tp>::min_exponent;
template <class _Tp>
    constexpr const int numeric_limits<volatile _Tp>::min_exponent10;
template <class _Tp>
    constexpr const int numeric_limits<volatile _Tp>::max_exponent;
template <class _Tp>
    constexpr const int numeric_limits<volatile _Tp>::max_exponent10;
template <class _Tp>
    constexpr const bool numeric_limits<volatile _Tp>::has_infinity;
template <class _Tp>
    constexpr const bool numeric_limits<volatile _Tp>::has_quiet_NaN;
template <class _Tp>
    constexpr const bool numeric_limits<volatile _Tp>::has_signaling_NaN;
template <class _Tp>
    constexpr const float_denorm_style numeric_limits<volatile _Tp>::has_denorm;
template <class _Tp>
    constexpr const bool numeric_limits<volatile _Tp>::has_denorm_loss;
template <class _Tp>
    constexpr const bool numeric_limits<volatile _Tp>::is_iec559;
template <class _Tp>
    constexpr const bool numeric_limits<volatile _Tp>::is_bounded;
template <class _Tp>
    constexpr const bool numeric_limits<volatile _Tp>::is_modulo;
template <class _Tp>
    constexpr const bool numeric_limits<volatile _Tp>::traps;
template <class _Tp>
    constexpr const bool numeric_limits<volatile _Tp>::tinyness_before;
template <class _Tp>
    constexpr const float_round_style numeric_limits<volatile _Tp>::round_style;

template <class _Tp>
class  numeric_limits<const volatile _Tp>
    : private numeric_limits<_Tp>
{
    typedef numeric_limits<_Tp> __base;
    typedef _Tp type;
public:
    static constexpr const bool is_specialized = __base::is_specialized;
    __attribute__ ((__always_inline__)) static constexpr type min() noexcept {return __base::min();}
    __attribute__ ((__always_inline__)) static constexpr type max() noexcept {return __base::max();}
    __attribute__ ((__always_inline__)) static constexpr type lowest() noexcept {return __base::lowest();}

    static constexpr const int  digits = __base::digits;
    static constexpr const int  digits10 = __base::digits10;
    static constexpr const int  max_digits10 = __base::max_digits10;
    static constexpr const bool is_signed = __base::is_signed;
    static constexpr const bool is_integer = __base::is_integer;
    static constexpr const bool is_exact = __base::is_exact;
    static constexpr const int  radix = __base::radix;
    __attribute__ ((__always_inline__)) static constexpr type epsilon() noexcept {return __base::epsilon();}
    __attribute__ ((__always_inline__)) static constexpr type round_error() noexcept {return __base::round_error();}

    static constexpr const int  min_exponent = __base::min_exponent;
    static constexpr const int  min_exponent10 = __base::min_exponent10;
    static constexpr const int  max_exponent = __base::max_exponent;
    static constexpr const int  max_exponent10 = __base::max_exponent10;

    static constexpr const bool has_infinity = __base::has_infinity;
    static constexpr const bool has_quiet_NaN = __base::has_quiet_NaN;
    static constexpr const bool has_signaling_NaN = __base::has_signaling_NaN;
    static constexpr const float_denorm_style has_denorm = __base::has_denorm;
    static constexpr const bool has_denorm_loss = __base::has_denorm_loss;
    __attribute__ ((__always_inline__)) static constexpr type infinity() noexcept {return __base::infinity();}
    __attribute__ ((__always_inline__)) static constexpr type quiet_NaN() noexcept {return __base::quiet_NaN();}
    __attribute__ ((__always_inline__)) static constexpr type signaling_NaN() noexcept {return __base::signaling_NaN();}
    __attribute__ ((__always_inline__)) static constexpr type denorm_min() noexcept {return __base::denorm_min();}

    static constexpr const bool is_iec559 = __base::is_iec559;
    static constexpr const bool is_bounded = __base::is_bounded;
    static constexpr const bool is_modulo = __base::is_modulo;

    static constexpr const bool traps = __base::traps;
    static constexpr const bool tinyness_before = __base::tinyness_before;
    static constexpr const float_round_style round_style = __base::round_style;
};

template <class _Tp>
    constexpr const bool numeric_limits<const volatile _Tp>::is_specialized;
template <class _Tp>
    constexpr const int numeric_limits<const volatile _Tp>::digits;
template <class _Tp>
    constexpr const int numeric_limits<const volatile _Tp>::digits10;
template <class _Tp>
    constexpr const int numeric_limits<const volatile _Tp>::max_digits10;
template <class _Tp>
    constexpr const bool numeric_limits<const volatile _Tp>::is_signed;
template <class _Tp>
    constexpr const bool numeric_limits<const volatile _Tp>::is_integer;
template <class _Tp>
    constexpr const bool numeric_limits<const volatile _Tp>::is_exact;
template <class _Tp>
    constexpr const int numeric_limits<const volatile _Tp>::radix;
template <class _Tp>
    constexpr const int numeric_limits<const volatile _Tp>::min_exponent;
template <class _Tp>
    constexpr const int numeric_limits<const volatile _Tp>::min_exponent10;
template <class _Tp>
    constexpr const int numeric_limits<const volatile _Tp>::max_exponent;
template <class _Tp>
    constexpr const int numeric_limits<const volatile _Tp>::max_exponent10;
template <class _Tp>
    constexpr const bool numeric_limits<const volatile _Tp>::has_infinity;
template <class _Tp>
    constexpr const bool numeric_limits<const volatile _Tp>::has_quiet_NaN;
template <class _Tp>
    constexpr const bool numeric_limits<const volatile _Tp>::has_signaling_NaN;
template <class _Tp>
    constexpr const float_denorm_style numeric_limits<const volatile _Tp>::has_denorm;
template <class _Tp>
    constexpr const bool numeric_limits<const volatile _Tp>::has_denorm_loss;
template <class _Tp>
    constexpr const bool numeric_limits<const volatile _Tp>::is_iec559;
template <class _Tp>
    constexpr const bool numeric_limits<const volatile _Tp>::is_bounded;
template <class _Tp>
    constexpr const bool numeric_limits<const volatile _Tp>::is_modulo;
template <class _Tp>
    constexpr const bool numeric_limits<const volatile _Tp>::traps;
template <class _Tp>
    constexpr const bool numeric_limits<const volatile _Tp>::tinyness_before;
template <class _Tp>
    constexpr const float_round_style numeric_limits<const volatile _Tp>::round_style;

} }

_Pragma("pop_macro(\"min\")") _Pragma("pop_macro(\"max\")")

# 311 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/math.h"

/* signbit */



template <class _A1>
__attribute__ ((__always_inline__))
bool
__libcpp_signbit(_A1 __lcpp_x) noexcept
{
    return (((sizeof((__lcpp_x)) == sizeof(float)) ? (__signbitf)((__lcpp_x)) : (sizeof((__lcpp_x)) == sizeof(double)) ? (__signbit)((__lcpp_x)) : (__signbitl)((__lcpp_x))));
}



template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<std::is_floating_point<_A1>::value, bool>::type
signbit(_A1 __lcpp_x) noexcept
{
    return __libcpp_signbit((typename std::__promote<_A1>::type)__lcpp_x);
}

template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<
    std::is_integral<_A1>::value && std::is_signed<_A1>::value, bool>::type
signbit(_A1 __lcpp_x) noexcept
{ return __lcpp_x < 0; }

template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<
    std::is_integral<_A1>::value && !std::is_signed<_A1>::value, bool>::type
signbit(_A1) noexcept
{ return false; }

# 373 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/math.h"

/* fpclassify */



template <class _A1>
__attribute__ ((__always_inline__))
int
__libcpp_fpclassify(_A1 __lcpp_x) noexcept
{
    return (((sizeof((__lcpp_x)) == sizeof(float)) ? (__fpclassifyf)((__lcpp_x)) : (sizeof((__lcpp_x)) == sizeof(double)) ? (__fpclassify)((__lcpp_x)) : (__fpclassifyl)((__lcpp_x))));
}



template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<std::is_floating_point<_A1>::value, int>::type
fpclassify(_A1 __lcpp_x) noexcept
{
    return __libcpp_fpclassify((typename std::__promote<_A1>::type)__lcpp_x);
}

template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<std::is_integral<_A1>::value, int>::type
fpclassify(_A1 __lcpp_x) noexcept
{ return __lcpp_x == 0 ? (0) : ((-1)); }

# 419 "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_20.2.3.LTS/include/libcxx/math.h"

/* isfinite */



template <class _A1>
__attribute__ ((__always_inline__))
bool
__libcpp_isfinite(_A1 __lcpp_x) noexcept
{
    return (((sizeof((__lcpp_x)) == sizeof(float)) ? (__isfinitef)((__lcpp_x)) : (sizeof((__lcpp_x)) == sizeof(double)) ? (__isfinite)((__lcpp_x)) : (__isfinitel)((__lcpp_x))));
}



template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<
    std::is_arithmetic<_A1>::value && std::numeric_limits<_A1>::has_infinity,
    bool>::type
isfinite(_A1 __lcpp_x) noexcept
{
    return __libcpp_isfinite((typename std::__promote<_A1>::type)__lcpp_x);
}

template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<
    std::is_arithmetic<_A1>::value && !std::numeric_limits<_A1>::has_infinity,
    bool>::type
isfinite(_A1) noexcept
{ return true; }



/* isinf */



template <class _A1>
__attribute__ ((__always_inline__))
bool
__libcpp_isinf(_A1 __lcpp_x) noexcept
{
    return (((sizeof((__lcpp_x)) == sizeof(float)) ? (__isinff)((__lcpp_x)) : (sizeof((__lcpp_x)) == sizeof(double)) ? (__isinf)((__lcpp_x)) : (__isinfl)((__lcpp_x))));
}



template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<
    std::is_arithmetic<_A1>::value && std::numeric_limits<_A1>::has_infinity,
    bool>::type
isinf(_A1 __lcpp_x) noexcept
{
    return __libcpp_isinf((typename std::__promote<_A1>::type)__lcpp_x);
}

template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<
    std::is_arithmetic<_A1>::value && !std::numeric_limits<_A1>::has_infinity,
    bool>::type
isinf(_A1) noexcept
{ return false; }



/* isnan */



template <class _A1>
__attribute__ ((__always_inline__))
bool
__libcpp_isnan(_A1 __lcpp_x) noexcept
{
    return (((sizeof((__lcpp_x)) == sizeof(float)) ? (__isnanf)((__lcpp_x)) : (sizeof((__lcpp_x)) == sizeof(double)) ? (__isnan)((__lcpp_x)) : (__isnanl)((__lcpp_x))));
}



template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<std::is_floating_point<_A1>::value, bool>::type
isnan(_A1 __lcpp_x) noexcept
{
    return __libcpp_isnan((typename std::__promote<_A1>::type)__lcpp_x);
}

template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<std::is_integral<_A1>::value, bool>::type
isnan(_A1) noexcept
{ return false; }



/* isnormal */



template <class _A1>
__attribute__ ((__always_inline__))
bool
__libcpp_isnormal(_A1 __lcpp_x) noexcept
{
    return (((sizeof((__lcpp_x)) == sizeof(float)) ? (__isnormalf)((__lcpp_x)) : (sizeof((__lcpp_x)) == sizeof(double)) ? (__isnormal)((__lcpp_x)) : (__isnormall)((__lcpp_x))));
}



template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<std::is_floating_point<_A1>::value, bool>::type
isnormal(_A1 __lcpp_x) noexcept
{
    return __libcpp_isnormal((typename std::__promote<_A1>::type)__lcpp_x);
}

template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<std::is_integral<_A1>::value, bool>::type
isnormal(_A1 __lcpp_x) noexcept
{ return __lcpp_x != 0; }



/* isgreater */



template <class _A1, class _A2>
__attribute__ ((__always_inline__))
bool
__libcpp_isgreater(_A1 __lcpp_x, _A2 __lcpp_y) noexcept
{
    return (!(isnan((__lcpp_x)) || isnan((__lcpp_y))) && (__lcpp_x) > (__lcpp_y));
}



template <class _A1, class _A2>
inline __attribute__ ((__always_inline__))
typename std::enable_if
<
    std::is_arithmetic<_A1>::value &&
    std::is_arithmetic<_A2>::value,
    bool
>::type
isgreater(_A1 __lcpp_x, _A2 __lcpp_y) noexcept
{
    typedef typename std::__promote<_A1, _A2>::type type;
    return __libcpp_isgreater((type)__lcpp_x, (type)__lcpp_y);
}



/* isgreaterequal */



template <class _A1, class _A2>
__attribute__ ((__always_inline__))
bool
__libcpp_isgreaterequal(_A1 __lcpp_x, _A2 __lcpp_y) noexcept
{
    return (!(isnan((__lcpp_x)) || isnan((__lcpp_y))) && (__lcpp_x) >= (__lcpp_y));
}



template <class _A1, class _A2>
inline __attribute__ ((__always_inline__))
typename std::enable_if
<
    std::is_arithmetic<_A1>::value &&
    std::is_arithmetic<_A2>::value,
    bool
>::type
isgreaterequal(_A1 __lcpp_x, _A2 __lcpp_y) noexcept
{
    typedef typename std::__promote<_A1, _A2>::type type;
    return __libcpp_isgreaterequal((type)__lcpp_x, (type)__lcpp_y);
}



/* isless */



template <class _A1, class _A2>
__attribute__ ((__always_inline__))
bool
__libcpp_isless(_A1 __lcpp_x, _A2 __lcpp_y) noexcept
{
    return (!(isnan((__lcpp_x)) || isnan((__lcpp_y))) && (__lcpp_x) < (__lcpp_y));
}



template <class _A1, class _A2>
inline __attribute__ ((__always_inline__))
typename std::enable_if
<
    std::is_arithmetic<_A1>::value &&
    std::is_arithmetic<_A2>::value,
    bool
>::type
isless(_A1 __lcpp_x, _A2 __lcpp_y) noexcept
{
    typedef typename std::__promote<_A1, _A2>::type type;
    return __libcpp_isless((type)__lcpp_x, (type)__lcpp_y);
}



/* islessequal */



template <class _A1, class _A2>
__attribute__ ((__always_inline__))
bool
__libcpp_islessequal(_A1 __lcpp_x, _A2 __lcpp_y) noexcept
{
    return (!(isnan((__lcpp_x)) || isnan((__lcpp_y))) && (__lcpp_x) <= (__lcpp_y));
}



template <class _A1, class _A2>
inline __attribute__ ((__always_inline__))
typename std::enable_if
<
    std::is_arithmetic<_A1>::value &&
    std::is_arithmetic<_A2>::value,
    bool
>::type
islessequal(_A1 __lcpp_x, _A2 __lcpp_y) noexcept
{
    typedef typename std::__promote<_A1, _A2>::type type;
    return __libcpp_islessequal((type)__lcpp_x, (type)__lcpp_y);
}



/* islessgreater */



template <class _A1, class _A2>
__attribute__ ((__always_inline__))
bool
__libcpp_islessgreater(_A1 __lcpp_x, _A2 __lcpp_y) noexcept
{
    return (!(isnan((__lcpp_x)) || isnan((__lcpp_y))) && ((__lcpp_x) > (__lcpp_y) || (__lcpp_y) > (__lcpp_x)));
}



template <class _A1, class _A2>
inline __attribute__ ((__always_inline__))
typename std::enable_if
<
    std::is_arithmetic<_A1>::value &&
    std::is_arithmetic<_A2>::value,
    bool
>::type
islessgreater(_A1 __lcpp_x, _A2 __lcpp_y) noexcept
{
    typedef typename std::__promote<_A1, _A2>::type type;
    return __libcpp_islessgreater((type)__lcpp_x, (type)__lcpp_y);
}



/* isunordered */



template <class _A1, class _A2>
__attribute__ ((__always_inline__))
bool
__libcpp_isunordered(_A1 __lcpp_x, _A2 __lcpp_y) noexcept
{
    return (isnan(__lcpp_x) || isnan(__lcpp_y));
}



template <class _A1, class _A2>
inline __attribute__ ((__always_inline__))
typename std::enable_if
<
    std::is_arithmetic<_A1>::value &&
    std::is_arithmetic<_A2>::value,
    bool
>::type
isunordered(_A1 __lcpp_x, _A2 __lcpp_y) noexcept
{
    typedef typename std::__promote<_A1, _A2>::type type;
    return __libcpp_isunordered((type)__lcpp_x, (type)__lcpp_y);
}



/* abs */


inline __attribute__ ((__always_inline__))
float
abs(float __lcpp_x) noexcept {return ::fabsf(__lcpp_x);}

inline __attribute__ ((__always_inline__))
double
abs(double __lcpp_x) noexcept {return ::fabs(__lcpp_x);}

inline __attribute__ ((__always_inline__))
long double
abs(long double __lcpp_x) noexcept {return ::fabsl(__lcpp_x);}


/* acos */


inline __attribute__ ((__always_inline__)) float       acos(float __lcpp_x) noexcept       {return ::acosf(__lcpp_x);}
inline __attribute__ ((__always_inline__)) long double acos(long double __lcpp_x) noexcept {return ::acosl(__lcpp_x);}


template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<std::is_integral<_A1>::value, double>::type
acos(_A1 __lcpp_x) noexcept {return ::acos((double)__lcpp_x);}

/* asin */


inline __attribute__ ((__always_inline__)) float       asin(float __lcpp_x) noexcept       {return ::asinf(__lcpp_x);}
inline __attribute__ ((__always_inline__)) long double asin(long double __lcpp_x) noexcept {return ::asinl(__lcpp_x);}


template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<std::is_integral<_A1>::value, double>::type
asin(_A1 __lcpp_x) noexcept {return ::asin((double)__lcpp_x);}

/* atan */


inline __attribute__ ((__always_inline__)) float       atan(float __lcpp_x) noexcept       {return ::atanf(__lcpp_x);}
inline __attribute__ ((__always_inline__)) long double atan(long double __lcpp_x) noexcept {return ::atanl(__lcpp_x);}


template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<std::is_integral<_A1>::value, double>::type
atan(_A1 __lcpp_x) noexcept {return ::atan((double)__lcpp_x);}

/* atan2 */


inline __attribute__ ((__always_inline__)) float       atan2(float __lcpp_y, float __lcpp_x) noexcept             {return ::atan2f(__lcpp_y, __lcpp_x);}
inline __attribute__ ((__always_inline__)) long double atan2(long double __lcpp_y, long double __lcpp_x) noexcept {return ::atan2l(__lcpp_y, __lcpp_x);}


template <class _A1, class _A2>
inline __attribute__ ((__always_inline__))
typename std::__lazy_enable_if
<
    std::is_arithmetic<_A1>::value &&
    std::is_arithmetic<_A2>::value,
    std::__promote<_A1, _A2>
>::type
atan2(_A1 __lcpp_y, _A2 __lcpp_x) noexcept
{
    typedef typename std::__promote<_A1, _A2>::type __result_type;
    static_assert((!(std::is_same<_A1, __result_type>::value &&
                     std::is_same<_A2, __result_type>::value)), "");
    return ::atan2((__result_type)__lcpp_y, (__result_type)__lcpp_x);
}

/* ceil */


inline __attribute__ ((__always_inline__)) float       ceil(float __lcpp_x) noexcept       {return ::ceilf(__lcpp_x);}
inline __attribute__ ((__always_inline__)) long double ceil(long double __lcpp_x) noexcept {return ::ceill(__lcpp_x);}


template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<std::is_integral<_A1>::value, double>::type
ceil(_A1 __lcpp_x) noexcept {return ::ceil((double)__lcpp_x);}

/* cos */


inline __attribute__ ((__always_inline__)) float       cos(float __lcpp_x) noexcept       {return ::cosf(__lcpp_x);}
inline __attribute__ ((__always_inline__)) long double cos(long double __lcpp_x) noexcept {return ::cosl(__lcpp_x);}


template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<std::is_integral<_A1>::value, double>::type
cos(_A1 __lcpp_x) noexcept {return ::cos((double)__lcpp_x);}

/* cosh */


inline __attribute__ ((__always_inline__)) float       cosh(float __lcpp_x) noexcept       {return ::coshf(__lcpp_x);}
inline __attribute__ ((__always_inline__)) long double cosh(long double __lcpp_x) noexcept {return ::coshl(__lcpp_x);}


template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<std::is_integral<_A1>::value, double>::type
cosh(_A1 __lcpp_x) noexcept {return ::cosh((double)__lcpp_x);}

/* exp */


inline __attribute__ ((__always_inline__)) float       exp(float __lcpp_x) noexcept       {return ::expf(__lcpp_x);}
inline __attribute__ ((__always_inline__)) long double exp(long double __lcpp_x) noexcept {return ::expl(__lcpp_x);}


template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<std::is_integral<_A1>::value, double>::type
exp(_A1 __lcpp_x) noexcept {return ::exp((double)__lcpp_x);}

/* fabs */


inline __attribute__ ((__always_inline__)) float       fabs(float __lcpp_x) noexcept       {return ::fabsf(__lcpp_x);}
inline __attribute__ ((__always_inline__)) long double fabs(long double __lcpp_x) noexcept {return ::fabsl(__lcpp_x);}


template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<std::is_integral<_A1>::value, double>::type
fabs(_A1 __lcpp_x) noexcept {return ::fabs((double)__lcpp_x);}

/* floor */


inline __attribute__ ((__always_inline__)) float       floor(float __lcpp_x) noexcept       {return ::floorf(__lcpp_x);}
inline __attribute__ ((__always_inline__)) long double floor(long double __lcpp_x) noexcept {return ::floorl(__lcpp_x);}


template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<std::is_integral<_A1>::value, double>::type
floor(_A1 __lcpp_x) noexcept {return ::floor((double)__lcpp_x);}

/* fmod */


inline __attribute__ ((__always_inline__)) float       fmod(float __lcpp_x, float __lcpp_y) noexcept             {return ::fmodf(__lcpp_x, __lcpp_y);}
inline __attribute__ ((__always_inline__)) long double fmod(long double __lcpp_x, long double __lcpp_y) noexcept {return ::fmodl(__lcpp_x, __lcpp_y);}


template <class _A1, class _A2>
inline __attribute__ ((__always_inline__))
typename std::__lazy_enable_if
<
    std::is_arithmetic<_A1>::value &&
    std::is_arithmetic<_A2>::value,
    std::__promote<_A1, _A2>
>::type
fmod(_A1 __lcpp_x, _A2 __lcpp_y) noexcept
{
    typedef typename std::__promote<_A1, _A2>::type __result_type;
    static_assert((!(std::is_same<_A1, __result_type>::value &&
                     std::is_same<_A2, __result_type>::value)), "");
    return ::fmod((__result_type)__lcpp_x, (__result_type)__lcpp_y);
}

/* frexp */


inline __attribute__ ((__always_inline__)) float       frexp(float __lcpp_x, int* __lcpp_e) noexcept       {return ::frexpf(__lcpp_x, __lcpp_e);}
inline __attribute__ ((__always_inline__)) long double frexp(long double __lcpp_x, int* __lcpp_e) noexcept {return ::frexpl(__lcpp_x, __lcpp_e);}


template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<std::is_integral<_A1>::value, double>::type
frexp(_A1 __lcpp_x, int* __lcpp_e) noexcept {return ::frexp((double)__lcpp_x, __lcpp_e);}

/* ldexp */


inline __attribute__ ((__always_inline__)) float       ldexp(float __lcpp_x, int __lcpp_e) noexcept       {return ::ldexpf(__lcpp_x, __lcpp_e);}
inline __attribute__ ((__always_inline__)) long double ldexp(long double __lcpp_x, int __lcpp_e) noexcept {return ::ldexpl(__lcpp_x, __lcpp_e);}


template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<std::is_integral<_A1>::value, double>::type
ldexp(_A1 __lcpp_x, int __lcpp_e) noexcept {return ::ldexp((double)__lcpp_x, __lcpp_e);}

/* log */


inline __attribute__ ((__always_inline__)) float       log(float __lcpp_x) noexcept       {return ::logf(__lcpp_x);}
inline __attribute__ ((__always_inline__)) long double log(long double __lcpp_x) noexcept {return ::logl(__lcpp_x);}


template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<std::is_integral<_A1>::value, double>::type
log(_A1 __lcpp_x) noexcept {return ::log((double)__lcpp_x);}

/* log10 */


inline __attribute__ ((__always_inline__)) float       log10(float __lcpp_x) noexcept       {return ::log10f(__lcpp_x);}
inline __attribute__ ((__always_inline__)) long double log10(long double __lcpp_x) noexcept {return ::log10l(__lcpp_x);}


template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<std::is_integral<_A1>::value, double>::type
log10(_A1 __lcpp_x) noexcept {return ::log10((double)__lcpp_x);}

/* modf */


inline __attribute__ ((__always_inline__)) float       modf(float __lcpp_x, float* __lcpp_y) noexcept             {return ::modff(__lcpp_x, __lcpp_y);}
inline __attribute__ ((__always_inline__)) long double modf(long double __lcpp_x, long double* __lcpp_y) noexcept {return ::modfl(__lcpp_x, __lcpp_y);}


/* pow */


inline __attribute__ ((__always_inline__)) float       pow(float __lcpp_x, float __lcpp_y) noexcept             {return ::powf(__lcpp_x, __lcpp_y);}
inline __attribute__ ((__always_inline__)) long double pow(long double __lcpp_x, long double __lcpp_y) noexcept {return ::powl(__lcpp_x, __lcpp_y);}


template <class _A1, class _A2>
inline __attribute__ ((__always_inline__))
typename std::__lazy_enable_if
<
    std::is_arithmetic<_A1>::value &&
    std::is_arithmetic<_A2>::value,
    std::__promote<_A1, _A2>
>::type
pow(_A1 __lcpp_x, _A2 __lcpp_y) noexcept
{
    typedef typename std::__promote<_A1, _A2>::type __result_type;
    static_assert((!(std::is_same<_A1, __result_type>::value &&
                     std::is_same<_A2, __result_type>::value)), "");
    return ::pow((__result_type)__lcpp_x, (__result_type)__lcpp_y);
}

/* sin */


inline __attribute__ ((__always_inline__)) float       sin(float __lcpp_x) noexcept       {return ::sinf(__lcpp_x);}
inline __attribute__ ((__always_inline__)) long double sin(long double __lcpp_x) noexcept {return ::sinl(__lcpp_x);}


template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<std::is_integral<_A1>::value, double>::type
sin(_A1 __lcpp_x) noexcept {return ::sin((double)__lcpp_x);}

/* sinh */


inline __attribute__ ((__always_inline__)) float       sinh(float __lcpp_x) noexcept       {return ::sinhf(__lcpp_x);}
inline __attribute__ ((__always_inline__)) long double sinh(long double __lcpp_x) noexcept {return ::sinhl(__lcpp_x);}


template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<std::is_integral<_A1>::value, double>::type
sinh(_A1 __lcpp_x) noexcept {return ::sinh((double)__lcpp_x);}

/* sqrt */


inline __attribute__ ((__always_inline__)) float       sqrt(float __lcpp_x) noexcept       {return ::sqrtf(__lcpp_x);}
inline __attribute__ ((__always_inline__)) long double sqrt(long double __lcpp_x) noexcept {return ::sqrtl(__lcpp_x);}


template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<std::is_integral<_A1>::value, double>::type
sqrt(_A1 __lcpp_x) noexcept {return ::sqrt((double)__lcpp_x);}

/* tan */


inline __attribute__ ((__always_inline__)) float       tan(float __lcpp_x) noexcept       {return ::tanf(__lcpp_x);}
inline __attribute__ ((__always_inline__)) long double tan(long double __lcpp_x) noexcept {return ::tanl(__lcpp_x);}


template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<std::is_integral<_A1>::value, double>::type
tan(_A1 __lcpp_x) noexcept {return ::tan((double)__lcpp_x);}

/* tanh */


inline __attribute__ ((__always_inline__)) float       tanh(float __lcpp_x) noexcept       {return ::tanhf(__lcpp_x);}
inline __attribute__ ((__always_inline__)) long double tanh(long double __lcpp_x) noexcept {return ::tanhl(__lcpp_x);}


template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<std::is_integral<_A1>::value, double>::type
tanh(_A1 __lcpp_x) noexcept {return ::tanh((double)__lcpp_x);}

/* acosh */

inline __attribute__ ((__always_inline__)) float       acosh(float __lcpp_x) noexcept       {return ::acoshf(__lcpp_x);}
inline __attribute__ ((__always_inline__)) long double acosh(long double __lcpp_x) noexcept {return ::acoshl(__lcpp_x);}

template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<std::is_integral<_A1>::value, double>::type
acosh(_A1 __lcpp_x) noexcept {return ::acosh((double)__lcpp_x);}

/* asinh */

inline __attribute__ ((__always_inline__)) float       asinh(float __lcpp_x) noexcept       {return ::asinhf(__lcpp_x);}
inline __attribute__ ((__always_inline__)) long double asinh(long double __lcpp_x) noexcept {return ::asinhl(__lcpp_x);}

template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<std::is_integral<_A1>::value, double>::type
asinh(_A1 __lcpp_x) noexcept {return ::asinh((double)__lcpp_x);}

/* atanh */

inline __attribute__ ((__always_inline__)) float       atanh(float __lcpp_x) noexcept       {return ::atanhf(__lcpp_x);}
inline __attribute__ ((__always_inline__)) long double atanh(long double __lcpp_x) noexcept {return ::atanhl(__lcpp_x);}

template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<std::is_integral<_A1>::value, double>::type
atanh(_A1 __lcpp_x) noexcept {return ::atanh((double)__lcpp_x);}

/* cbrt */

inline __attribute__ ((__always_inline__)) float       cbrt(float __lcpp_x) noexcept       {return ::cbrtf(__lcpp_x);}
inline __attribute__ ((__always_inline__)) long double cbrt(long double __lcpp_x) noexcept {return ::cbrtl(__lcpp_x);}

template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<std::is_integral<_A1>::value, double>::type
cbrt(_A1 __lcpp_x) noexcept {return ::cbrt((double)__lcpp_x);}

/* copysign */

inline __attribute__ ((__always_inline__)) float copysign(float __lcpp_x,
                                                float __lcpp_y) noexcept {
  return ::copysignf(__lcpp_x, __lcpp_y);
}
inline __attribute__ ((__always_inline__)) long double
copysign(long double __lcpp_x, long double __lcpp_y) noexcept {
  return ::copysignl(__lcpp_x, __lcpp_y);
}

template <class _A1, class _A2>
inline __attribute__ ((__always_inline__))
typename std::__lazy_enable_if
<
    std::is_arithmetic<_A1>::value &&
    std::is_arithmetic<_A2>::value,
    std::__promote<_A1, _A2>
>::type
copysign(_A1 __lcpp_x, _A2 __lcpp_y) noexcept
{
    typedef typename std::__promote<_A1, _A2>::type __result_type;
    static_assert((!(std::is_same<_A1, __result_type>::value &&
                     std::is_same<_A2, __result_type>::value)), "");
    return ::copysign((__result_type)__lcpp_x, (__result_type)__lcpp_y);
}

/* erf */

inline __attribute__ ((__always_inline__)) float       erf(float __lcpp_x) noexcept       {return ::erff(__lcpp_x);}
inline __attribute__ ((__always_inline__)) long double erf(long double __lcpp_x) noexcept {return ::erfl(__lcpp_x);}

template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<std::is_integral<_A1>::value, double>::type
erf(_A1 __lcpp_x) noexcept {return ::erf((double)__lcpp_x);}

/* erfc */

inline __attribute__ ((__always_inline__)) float       erfc(float __lcpp_x) noexcept       {return ::erfcf(__lcpp_x);}
inline __attribute__ ((__always_inline__)) long double erfc(long double __lcpp_x) noexcept {return ::erfcl(__lcpp_x);}

template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<std::is_integral<_A1>::value, double>::type
erfc(_A1 __lcpp_x) noexcept {return ::erfc((double)__lcpp_x);}

/* exp2 */

inline __attribute__ ((__always_inline__)) float       exp2(float __lcpp_x) noexcept       {return ::exp2f(__lcpp_x);}
inline __attribute__ ((__always_inline__)) long double exp2(long double __lcpp_x) noexcept {return ::exp2l(__lcpp_x);}

template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<std::is_integral<_A1>::value, double>::type
exp2(_A1 __lcpp_x) noexcept {return ::exp2((double)__lcpp_x);}

/* expm1 */

inline __attribute__ ((__always_inline__)) float       expm1(float __lcpp_x) noexcept       {return ::expm1f(__lcpp_x);}
inline __attribute__ ((__always_inline__)) long double expm1(long double __lcpp_x) noexcept {return ::expm1l(__lcpp_x);}

template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<std::is_integral<_A1>::value, double>::type
expm1(_A1 __lcpp_x) noexcept {return ::expm1((double)__lcpp_x);}

/* fdim */

inline __attribute__ ((__always_inline__)) float       fdim(float __lcpp_x, float __lcpp_y) noexcept             {return ::fdimf(__lcpp_x, __lcpp_y);}
inline __attribute__ ((__always_inline__)) long double fdim(long double __lcpp_x, long double __lcpp_y) noexcept {return ::fdiml(__lcpp_x, __lcpp_y);}

template <class _A1, class _A2>
inline __attribute__ ((__always_inline__))
typename std::__lazy_enable_if
<
    std::is_arithmetic<_A1>::value &&
    std::is_arithmetic<_A2>::value,
    std::__promote<_A1, _A2>
>::type
fdim(_A1 __lcpp_x, _A2 __lcpp_y) noexcept
{
    typedef typename std::__promote<_A1, _A2>::type __result_type;
    static_assert((!(std::is_same<_A1, __result_type>::value &&
                     std::is_same<_A2, __result_type>::value)), "");
    return ::fdim((__result_type)__lcpp_x, (__result_type)__lcpp_y);
}

/* fma */

inline __attribute__ ((__always_inline__)) float       fma(float __lcpp_x, float __lcpp_y, float __lcpp_z) noexcept                   {return ::fmaf(__lcpp_x, __lcpp_y, __lcpp_z);}
inline __attribute__ ((__always_inline__)) long double fma(long double __lcpp_x, long double __lcpp_y, long double __lcpp_z) noexcept {return ::fmal(__lcpp_x, __lcpp_y, __lcpp_z);}

template <class _A1, class _A2, class _A3>
inline __attribute__ ((__always_inline__))
typename std::__lazy_enable_if
<
    std::is_arithmetic<_A1>::value &&
    std::is_arithmetic<_A2>::value &&
    std::is_arithmetic<_A3>::value,
    std::__promote<_A1, _A2, _A3>
>::type
fma(_A1 __lcpp_x, _A2 __lcpp_y, _A3 __lcpp_z) noexcept
{
    typedef typename std::__promote<_A1, _A2, _A3>::type __result_type;
    static_assert((!(std::is_same<_A1, __result_type>::value &&
                     std::is_same<_A2, __result_type>::value &&
                     std::is_same<_A3, __result_type>::value)), "");
    return ::fma((__result_type)__lcpp_x, (__result_type)__lcpp_y, (__result_type)__lcpp_z);
}

/* fmax */

inline __attribute__ ((__always_inline__)) float       fmax(float __lcpp_x, float __lcpp_y) noexcept             {return ::fmaxf(__lcpp_x, __lcpp_y);}
inline __attribute__ ((__always_inline__)) long double fmax(long double __lcpp_x, long double __lcpp_y) noexcept {return ::fmaxl(__lcpp_x, __lcpp_y);}

template <class _A1, class _A2>
inline __attribute__ ((__always_inline__))
typename std::__lazy_enable_if
<
    std::is_arithmetic<_A1>::value &&
    std::is_arithmetic<_A2>::value,
    std::__promote<_A1, _A2>
>::type
fmax(_A1 __lcpp_x, _A2 __lcpp_y) noexcept
{
    typedef typename std::__promote<_A1, _A2>::type __result_type;
    static_assert((!(std::is_same<_A1, __result_type>::value &&
                     std::is_same<_A2, __result_type>::value)), "");
    return ::fmax((__result_type)__lcpp_x, (__result_type)__lcpp_y);
}

/* fmin */

inline __attribute__ ((__always_inline__)) float       fmin(float __lcpp_x, float __lcpp_y) noexcept             {return ::fminf(__lcpp_x, __lcpp_y);}
inline __attribute__ ((__always_inline__)) long double fmin(long double __lcpp_x, long double __lcpp_y) noexcept {return ::fminl(__lcpp_x, __lcpp_y);}

template <class _A1, class _A2>
inline __attribute__ ((__always_inline__))
typename std::__lazy_enable_if
<
    std::is_arithmetic<_A1>::value &&
    std::is_arithmetic<_A2>::value,
    std::__promote<_A1, _A2>
>::type
fmin(_A1 __lcpp_x, _A2 __lcpp_y) noexcept
{
    typedef typename std::__promote<_A1, _A2>::type __result_type;
    static_assert((!(std::is_same<_A1, __result_type>::value &&
                     std::is_same<_A2, __result_type>::value)), "");
    return ::fmin((__result_type)__lcpp_x, (__result_type)__lcpp_y);
}

/* hypot */

inline __attribute__ ((__always_inline__)) float       hypot(float __lcpp_x, float __lcpp_y) noexcept             {return ::hypotf(__lcpp_x, __lcpp_y);}
inline __attribute__ ((__always_inline__)) long double hypot(long double __lcpp_x, long double __lcpp_y) noexcept {return ::hypotl(__lcpp_x, __lcpp_y);}

template <class _A1, class _A2>
inline __attribute__ ((__always_inline__))
typename std::__lazy_enable_if
<
    std::is_arithmetic<_A1>::value &&
    std::is_arithmetic<_A2>::value,
    std::__promote<_A1, _A2>
>::type
hypot(_A1 __lcpp_x, _A2 __lcpp_y) noexcept
{
    typedef typename std::__promote<_A1, _A2>::type __result_type;
    static_assert((!(std::is_same<_A1, __result_type>::value &&
                     std::is_same<_A2, __result_type>::value)), "");
    return ::hypot((__result_type)__lcpp_x, (__result_type)__lcpp_y);
}

/* ilogb */

inline __attribute__ ((__always_inline__)) int ilogb(float __lcpp_x) noexcept       {return ::ilogbf(__lcpp_x);}
inline __attribute__ ((__always_inline__)) int ilogb(long double __lcpp_x) noexcept {return ::ilogbl(__lcpp_x);}

template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<std::is_integral<_A1>::value, int>::type
ilogb(_A1 __lcpp_x) noexcept {return ::ilogb((double)__lcpp_x);}

/* lgamma */

inline __attribute__ ((__always_inline__)) float       lgamma(float __lcpp_x) noexcept       {return ::lgammaf(__lcpp_x);}
inline __attribute__ ((__always_inline__)) long double lgamma(long double __lcpp_x) noexcept {return ::lgammal(__lcpp_x);}

template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<std::is_integral<_A1>::value, double>::type
lgamma(_A1 __lcpp_x) noexcept {return ::lgamma((double)__lcpp_x);}

/* llrint */

inline __attribute__ ((__always_inline__)) long long llrint(float __lcpp_x) noexcept       {return ::llrintf(__lcpp_x);}
inline __attribute__ ((__always_inline__)) long long llrint(long double __lcpp_x) noexcept {return ::llrintl(__lcpp_x);}

template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<std::is_integral<_A1>::value, long long>::type
llrint(_A1 __lcpp_x) noexcept {return ::llrint((double)__lcpp_x);}

/* llround */

inline __attribute__ ((__always_inline__)) long long llround(float __lcpp_x) noexcept       {return ::llroundf(__lcpp_x);}
inline __attribute__ ((__always_inline__)) long long llround(long double __lcpp_x) noexcept {return ::llroundl(__lcpp_x);}

template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<std::is_integral<_A1>::value, long long>::type
llround(_A1 __lcpp_x) noexcept {return ::llround((double)__lcpp_x);}

/* log1p */

inline __attribute__ ((__always_inline__)) float       log1p(float __lcpp_x) noexcept       {return ::log1pf(__lcpp_x);}
inline __attribute__ ((__always_inline__)) long double log1p(long double __lcpp_x) noexcept {return ::log1pl(__lcpp_x);}

template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<std::is_integral<_A1>::value, double>::type
log1p(_A1 __lcpp_x) noexcept {return ::log1p((double)__lcpp_x);}

/* log2 */

inline __attribute__ ((__always_inline__)) float       log2(float __lcpp_x) noexcept       {return ::log2f(__lcpp_x);}
inline __attribute__ ((__always_inline__)) long double log2(long double __lcpp_x) noexcept {return ::log2l(__lcpp_x);}

template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<std::is_integral<_A1>::value, double>::type
log2(_A1 __lcpp_x) noexcept {return ::log2((double)__lcpp_x);}

/* logb */

inline __attribute__ ((__always_inline__)) float       logb(float __lcpp_x) noexcept       {return ::logbf(__lcpp_x);}
inline __attribute__ ((__always_inline__)) long double logb(long double __lcpp_x) noexcept {return ::logbl(__lcpp_x);}

template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<std::is_integral<_A1>::value, double>::type
logb(_A1 __lcpp_x) noexcept {return ::logb((double)__lcpp_x);}

/* lrint */

inline __attribute__ ((__always_inline__)) long lrint(float __lcpp_x) noexcept       {return ::lrintf(__lcpp_x);}
inline __attribute__ ((__always_inline__)) long lrint(long double __lcpp_x) noexcept {return ::lrintl(__lcpp_x);}

template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<std::is_integral<_A1>::value, long>::type
lrint(_A1 __lcpp_x) noexcept {return ::lrint((double)__lcpp_x);}

/* lround */

inline __attribute__ ((__always_inline__)) long lround(float __lcpp_x) noexcept       {return ::lroundf(__lcpp_x);}
inline __attribute__ ((__always_inline__)) long lround(long double __lcpp_x) noexcept {return ::lroundl(__lcpp_x);}

template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<std::is_integral<_A1>::value, long>::type
lround(_A1 __lcpp_x) noexcept {return ::lround((double)__lcpp_x);}

/* nan */

/* nearbyint */

inline __attribute__ ((__always_inline__)) float       nearbyint(float __lcpp_x) noexcept       {return ::nearbyintf(__lcpp_x);}
inline __attribute__ ((__always_inline__)) long double nearbyint(long double __lcpp_x) noexcept {return ::nearbyintl(__lcpp_x);}

template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<std::is_integral<_A1>::value, double>::type
nearbyint(_A1 __lcpp_x) noexcept {return ::nearbyint((double)__lcpp_x);}

/* nextafter */

inline __attribute__ ((__always_inline__)) float       nextafter(float __lcpp_x, float __lcpp_y) noexcept             {return ::nextafterf(__lcpp_x, __lcpp_y);}
inline __attribute__ ((__always_inline__)) long double nextafter(long double __lcpp_x, long double __lcpp_y) noexcept {return ::nextafterl(__lcpp_x, __lcpp_y);}

template <class _A1, class _A2>
inline __attribute__ ((__always_inline__))
typename std::__lazy_enable_if
<
    std::is_arithmetic<_A1>::value &&
    std::is_arithmetic<_A2>::value,
    std::__promote<_A1, _A2>
>::type
nextafter(_A1 __lcpp_x, _A2 __lcpp_y) noexcept
{
    typedef typename std::__promote<_A1, _A2>::type __result_type;
    static_assert((!(std::is_same<_A1, __result_type>::value &&
                     std::is_same<_A2, __result_type>::value)), "");
    return ::nextafter((__result_type)__lcpp_x, (__result_type)__lcpp_y);
}

/* nexttoward */

inline __attribute__ ((__always_inline__)) float       nexttoward(float __lcpp_x, long double __lcpp_y) noexcept       {return ::nexttowardf(__lcpp_x, __lcpp_y);}
inline __attribute__ ((__always_inline__)) long double nexttoward(long double __lcpp_x, long double __lcpp_y) noexcept {return ::nexttowardl(__lcpp_x, __lcpp_y);}

template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<std::is_integral<_A1>::value, double>::type
nexttoward(_A1 __lcpp_x, long double __lcpp_y) noexcept {return ::nexttoward((double)__lcpp_x, __lcpp_y);}

/* remainder */

inline __attribute__ ((__always_inline__)) float       remainder(float __lcpp_x, float __lcpp_y) noexcept             {return ::remainderf(__lcpp_x, __lcpp_y);}
inline __attribute__ ((__always_inline__)) long double remainder(long double __lcpp_x, long double __lcpp_y) noexcept {return ::remainderl(__lcpp_x, __lcpp_y);}

template <class _A1, class _A2>
inline __attribute__ ((__always_inline__))
typename std::__lazy_enable_if
<
    std::is_arithmetic<_A1>::value &&
    std::is_arithmetic<_A2>::value,
    std::__promote<_A1, _A2>
>::type
remainder(_A1 __lcpp_x, _A2 __lcpp_y) noexcept
{
    typedef typename std::__promote<_A1, _A2>::type __result_type;
    static_assert((!(std::is_same<_A1, __result_type>::value &&
                     std::is_same<_A2, __result_type>::value)), "");
    return ::remainder((__result_type)__lcpp_x, (__result_type)__lcpp_y);
}

/* remquo */

inline __attribute__ ((__always_inline__)) float       remquo(float __lcpp_x, float __lcpp_y, int* __lcpp_z) noexcept             {return ::remquof(__lcpp_x, __lcpp_y, __lcpp_z);}
inline __attribute__ ((__always_inline__)) long double remquo(long double __lcpp_x, long double __lcpp_y, int* __lcpp_z) noexcept {return ::remquol(__lcpp_x, __lcpp_y, __lcpp_z);}

template <class _A1, class _A2>
inline __attribute__ ((__always_inline__))
typename std::__lazy_enable_if
<
    std::is_arithmetic<_A1>::value &&
    std::is_arithmetic<_A2>::value,
    std::__promote<_A1, _A2>
>::type
remquo(_A1 __lcpp_x, _A2 __lcpp_y, int* __lcpp_z) noexcept
{
    typedef typename std::__promote<_A1, _A2>::type __result_type;
    static_assert((!(std::is_same<_A1, __result_type>::value &&
                     std::is_same<_A2, __result_type>::value)), "");
    return ::remquo((__result_type)__lcpp_x, (__result_type)__lcpp_y, __lcpp_z);
}

/* rint */

inline __attribute__ ((__always_inline__)) float       rint(float __lcpp_x) noexcept       {return ::rintf(__lcpp_x);}
inline __attribute__ ((__always_inline__)) long double rint(long double __lcpp_x) noexcept {return ::rintl(__lcpp_x);}

template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<std::is_integral<_A1>::value, double>::type
rint(_A1 __lcpp_x) noexcept {return ::rint((double)__lcpp_x);}

/* round */

inline __attribute__ ((__always_inline__)) float       round(float __lcpp_x) noexcept       {return ::roundf(__lcpp_x);}
inline __attribute__ ((__always_inline__)) long double round(long double __lcpp_x) noexcept {return ::roundl(__lcpp_x);}

template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<std::is_integral<_A1>::value, double>::type
round(_A1 __lcpp_x) noexcept {return ::round((double)__lcpp_x);}

/* scalbln */

inline __attribute__ ((__always_inline__)) float       scalbln(float __lcpp_x, long __lcpp_y) noexcept       {return ::scalblnf(__lcpp_x, __lcpp_y);}
inline __attribute__ ((__always_inline__)) long double scalbln(long double __lcpp_x, long __lcpp_y) noexcept {return ::scalblnl(__lcpp_x, __lcpp_y);}

template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<std::is_integral<_A1>::value, double>::type
scalbln(_A1 __lcpp_x, long __lcpp_y) noexcept {return ::scalbln((double)__lcpp_x, __lcpp_y);}

/* scalbn */

inline __attribute__ ((__always_inline__)) float       scalbn(float __lcpp_x, int __lcpp_y) noexcept       {return ::scalbnf(__lcpp_x, __lcpp_y);}
inline __attribute__ ((__always_inline__)) long double scalbn(long double __lcpp_x, int __lcpp_y) noexcept {return ::scalbnl(__lcpp_x, __lcpp_y);}

template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<std::is_integral<_A1>::value, double>::type
scalbn(_A1 __lcpp_x, int __lcpp_y) noexcept {return ::scalbn((double)__lcpp_x, __lcpp_y);}

/* tgamma */

inline __attribute__ ((__always_inline__)) float       tgamma(float __lcpp_x) noexcept       {return ::tgammaf(__lcpp_x);}
inline __attribute__ ((__always_inline__)) long double tgamma(long double __lcpp_x) noexcept {return ::tgammal(__lcpp_x);}

template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<std::is_integral<_A1>::value, double>::type
tgamma(_A1 __lcpp_x) noexcept {return ::tgamma((double)__lcpp_x);}

/* trunc */

inline __attribute__ ((__always_inline__)) float       trunc(float __lcpp_x) noexcept       {return ::truncf(__lcpp_x);}
inline __attribute__ ((__always_inline__)) long double trunc(long double __lcpp_x) noexcept {return ::truncl(__lcpp_x);}

template <class _A1>
inline __attribute__ ((__always_inline__))
typename std::enable_if<std::is_integral<_A1>::value, double>::type
trunc(_A1 __lcpp_x) noexcept {return ::trunc((double)__lcpp_x);}

} /* extern "C++" */



# 6 "../source/FastLED/colorutils.cpp"

# 1 "..\\source\\FastLED\\FastLED.h"



///@file FastLED.h
/// central include file for FastLED, defines the CFastLED class/object

# 15 "..\\source\\FastLED\\FastLED.h"



















# 1 "..\\source\\FastLED\\cpp_compat.h"



# 1 "..\\source\\FastLED\\FastLED.h"
# 5 "..\\source\\FastLED\\cpp_compat.h"

# 12 "..\\source\\FastLED\\cpp_compat.h"

// things that we can turn on if we're in a C++11 environment


# 35 "..\\source\\FastLED\\FastLED.h"
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






# 36 "..\\source\\FastLED\\FastLED.h"

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




# 39 "..\\source\\FastLED\\FastLED.h"
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
# 40 "..\\source\\FastLED\\FastLED.h"

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











extern "C++" {

using std::nullptr_t;
}

/* Re-use the compiler's <stddef.h> max_align_t where possible. */







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




# 42 "..\\source\\FastLED\\FastLED.h"
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





# 43 "..\\source\\FastLED\\FastLED.h"
# 1 "..\\source\\FastLED\\dmx.h"





# 36 "..\\source\\FastLED\\dmx.h"

# 64 "..\\source\\FastLED\\dmx.h"

# 44 "..\\source\\FastLED\\FastLED.h"

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









# 46 "..\\source\\FastLED\\FastLED.h"

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



# 50 "..\\source\\FastLED\\FastLED.h"
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
# 51 "..\\source\\FastLED\\FastLED.h"
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

# 52 "..\\source\\FastLED\\FastLED.h"
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
# 53 "..\\source\\FastLED\\FastLED.h"

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

# 55 "..\\source\\FastLED\\FastLED.h"


# 8 "../source/FastLED/colorutils.cpp"





void fill_solid( struct CRGB * leds, int numToFill,
                 const struct CRGB& color)
{
    for( int i = 0; i < numToFill; i++) {
        leds[i] = color;
    }
}

void fill_solid( struct CHSV * targetArray, int numToFill,
                 const struct CHSV& hsvColor)
{
    for( int i = 0; i < numToFill; i++) {
        targetArray[i] = hsvColor;
    }
}


// void fill_solid( struct CRGB* targetArray, int numToFill,
// 				 const struct CHSV& hsvColor)
// {
// 	fill_solid<CRGB>( targetArray, numToFill, (CRGB) hsvColor);
// }

void fill_rainbow( struct CRGB * pFirstLED, int numToFill,
                  uint8_t initialhue,
                  uint8_t deltahue )
{
    CHSV hsv;
    hsv.hue = initialhue;
    hsv.val = 255;
    hsv.sat = 240;
    for( int i = 0; i < numToFill; i++) {
        pFirstLED[i] = hsv;
        hsv.hue += deltahue;
    }
}

void fill_rainbow( struct CHSV * targetArray, int numToFill,
                  uint8_t initialhue,
                  uint8_t deltahue )
{
    CHSV hsv;
    hsv.hue = initialhue;
    hsv.val = 255;
    hsv.sat = 240;
    for( int i = 0; i < numToFill; i++) {
        targetArray[i] = hsv;
        hsv.hue += deltahue;
    }
}


void fill_gradient_RGB( CRGB* leds,
                   uint16_t startpos, CRGB startcolor,
                   uint16_t endpos,   CRGB endcolor )
{
    // if the points are in the wrong order, straighten them
    if( endpos < startpos ) {
        uint16_t t = endpos;
        CRGB tc = endcolor;
        endcolor = startcolor;
        endpos = startpos;
        startpos = t;
        startcolor = tc;
    }

    int16_t rdistance87;
    int16_t gdistance87;
    int16_t bdistance87;

    rdistance87 = (endcolor.r - startcolor.r) << 7;
    gdistance87 = (endcolor.g - startcolor.g) << 7;
    bdistance87 = (endcolor.b - startcolor.b) << 7;

    uint16_t pixeldistance = endpos - startpos;
    int16_t divisor = pixeldistance ? pixeldistance : 1;

    int16_t rdelta87 = rdistance87 / divisor;
    int16_t gdelta87 = gdistance87 / divisor;
    int16_t bdelta87 = bdistance87 / divisor;

    rdelta87 *= 2;
    gdelta87 *= 2;
    bdelta87 *= 2;

    accum88 r88 = startcolor.r << 8;
    accum88 g88 = startcolor.g << 8;
    accum88 b88 = startcolor.b << 8;
    for( uint16_t i = startpos; i <= endpos; i++) {
        leds[i] = CRGB( r88 >> 8, g88 >> 8, b88 >> 8);
        r88 += rdelta87;
        g88 += gdelta87;
        b88 += bdelta87;
    }
}

# 140 "../source/FastLED/colorutils.cpp"




void fill_gradient_RGB( CRGB* leds, uint16_t numLeds, const CRGB& c1, const CRGB& c2)
{
    uint16_t last = numLeds - 1;
    fill_gradient_RGB( leds, 0, c1, last, c2);
}


void fill_gradient_RGB( CRGB* leds, uint16_t numLeds, const CRGB& c1, const CRGB& c2, const CRGB& c3)
{
    uint16_t half = (numLeds / 2);
    uint16_t last = numLeds - 1;
    fill_gradient_RGB( leds,    0, c1, half, c2);
    fill_gradient_RGB( leds, half, c2, last, c3);
}

void fill_gradient_RGB( CRGB* leds, uint16_t numLeds, const CRGB& c1, const CRGB& c2, const CRGB& c3, const CRGB& c4)
{
    uint16_t onethird = (numLeds / 3);
    uint16_t twothirds = ((numLeds * 2) / 3);
    uint16_t last = numLeds - 1;
    fill_gradient_RGB( leds,         0, c1,  onethird, c2);
    fill_gradient_RGB( leds,  onethird, c2, twothirds, c3);
    fill_gradient_RGB( leds, twothirds, c3,      last, c4);
}




void nscale8_video( CRGB* leds, uint16_t num_leds, uint8_t scale)
{
    for( uint16_t i = 0; i < num_leds; i++) {
        leds[i].nscale8_video( scale);
    }
}

void fade_video(CRGB* leds, uint16_t num_leds, uint8_t fadeBy)
{
    nscale8_video( leds, num_leds, 255 - fadeBy);
}

void fadeLightBy(CRGB* leds, uint16_t num_leds, uint8_t fadeBy)
{
    nscale8_video( leds, num_leds, 255 - fadeBy);
}


void fadeToBlackBy( CRGB* leds, uint16_t num_leds, uint8_t fadeBy)
{
    nscale8( leds, num_leds, 255 - fadeBy);
}

void fade_raw( CRGB* leds, uint16_t num_leds, uint8_t fadeBy)
{
    nscale8( leds, num_leds, 255 - fadeBy);
}

void nscale8_raw( CRGB* leds, uint16_t num_leds, uint8_t scale)
{
    nscale8( leds, num_leds, scale);
}

void nscale8( CRGB* leds, uint16_t num_leds, uint8_t scale)
{
    for( uint16_t i = 0; i < num_leds; i++) {
        leds[i].nscale8( scale);
    }
}

void fadeUsingColor( CRGB* leds, uint16_t numLeds, const CRGB& colormask)
{
    uint8_t fr, fg, fb;
    fr = colormask.r;
    fg = colormask.g;
    fb = colormask.b;

    for( uint16_t i = 0; i < numLeds; i++) {
        leds[i].r = scale8_LEAVING_R1_DIRTY( leds[i].r, fr);
        leds[i].g = scale8_LEAVING_R1_DIRTY( leds[i].g, fg);
        leds[i].b = scale8                 ( leds[i].b, fb);
    }
}


CRGB& nblend( CRGB& existing, const CRGB& overlay, fract8 amountOfOverlay )
{
    if( amountOfOverlay == 0) {
        return existing;
    }

    if( amountOfOverlay == 255) {
        existing = overlay;
        return existing;
    }

# 251 "../source/FastLED/colorutils.cpp"
    // Corrected blend method, with no loss-of-precision rounding errors
    existing.red   = blend8( existing.red,   overlay.red,   amountOfOverlay);
    existing.green = blend8( existing.green, overlay.green, amountOfOverlay);
    existing.blue  = blend8( existing.blue,  overlay.blue,  amountOfOverlay);

    
    return existing;
}



void nblend( CRGB* existing, CRGB* overlay, uint16_t count, fract8 amountOfOverlay)
{
    for( uint16_t i = count; i; i--) {
        nblend( *existing, *overlay, amountOfOverlay);
        existing++;
        overlay++;
    }
}

CRGB blend( const CRGB& p1, const CRGB& p2, fract8 amountOfP2 )
{
    CRGB nu(p1);
    nblend( nu, p2, amountOfP2);
    return nu;
}

CRGB* blend( const CRGB* src1, const CRGB* src2, CRGB* dest, uint16_t count, fract8 amountOfsrc2 )
{
    for( uint16_t i = 0; i < count; i++) {
        dest[i] = blend(src1[i], src2[i], amountOfsrc2);
    }
    return dest;
}



CHSV& nblend( CHSV& existing, const CHSV& overlay, fract8 amountOfOverlay, TGradientDirectionCode directionCode)
{
    if( amountOfOverlay == 0) {
        return existing;
    }

    if( amountOfOverlay == 255) {
        existing = overlay;
        return existing;
    }

    fract8 amountOfKeep = 255 - amountOfOverlay;

    uint8_t huedelta8 = overlay.hue - existing.hue;

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
        existing.hue = existing.hue + scale8( huedelta8, amountOfOverlay);
    }
    else /* directionCode == BACKWARD_HUES */
    {
        huedelta8 = -huedelta8;
        existing.hue = existing.hue - scale8( huedelta8, amountOfOverlay);
    }

    existing.sat   = scale8_LEAVING_R1_DIRTY( existing.sat,   amountOfKeep)
    + scale8_LEAVING_R1_DIRTY( overlay.sat,    amountOfOverlay);
    existing.val = scale8_LEAVING_R1_DIRTY( existing.val, amountOfKeep)
    + scale8_LEAVING_R1_DIRTY( overlay.val,  amountOfOverlay);

    cleanup_R1();

    return existing;
}



void nblend( CHSV* existing, CHSV* overlay, uint16_t count, fract8 amountOfOverlay, TGradientDirectionCode directionCode )
{
    if(existing == overlay) return;
    for( uint16_t i = count; i; i--) {
        nblend( *existing, *overlay, amountOfOverlay, directionCode);
        existing++;
        overlay++;
    }
}

CHSV blend( const CHSV& p1, const CHSV& p2, fract8 amountOfP2, TGradientDirectionCode directionCode )
{
    CHSV nu(p1);
    nblend( nu, p2, amountOfP2, directionCode);
    return nu;
}

CHSV* blend( const CHSV* src1, const CHSV* src2, CHSV* dest, uint16_t count, fract8 amountOfsrc2, TGradientDirectionCode directionCode )
{
    for( uint16_t i = 0; i < count; i++) {
        dest[i] = blend(src1[i], src2[i], amountOfsrc2, directionCode);
    }
    return dest;
}



// Forward declaration of the function "XY" which must be provided by
// the application for use in two-dimensional filter functions.
uint16_t XY( uint8_t, uint8_t);// __attribute__ ((weak));


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
void blur1d( CRGB* leds, uint16_t numLeds, fract8 blur_amount)
{
    uint8_t keep = 255 - blur_amount;
    uint8_t seep = blur_amount >> 1;
    CRGB carryover = CRGB::Black;
    for( uint16_t i = 0; i < numLeds; i++) {
        CRGB cur = leds[i];
        CRGB part = cur;
        part.nscale8( seep);
        cur.nscale8( keep);
        cur += carryover;
        if( i) leds[i-1] += part;
        leds[i] = cur;
        carryover = part;
    }
}

void blur2d( CRGB* leds, uint8_t width, uint8_t height, fract8 blur_amount)
{
    blurRows(leds, width, height, blur_amount);
    blurColumns(leds, width, height, blur_amount);
}

// blurRows: perform a blur1d on every row of a rectangular matrix
void blurRows( CRGB* leds, uint8_t width, uint8_t height, fract8 blur_amount)
{
    for( uint8_t row = 0; row < height; row++) {
        CRGB* rowbase = leds + (row * width);
        blur1d( rowbase, width, blur_amount);
    }
}

// blurColumns: perform a blur1d on each column of a rectangular matrix
void blurColumns(CRGB* leds, uint8_t width, uint8_t height, fract8 blur_amount)
{
    // blur columns
    uint8_t keep = 255 - blur_amount;
    uint8_t seep = blur_amount >> 1;
    for( uint8_t col = 0; col < width; col++) {
        CRGB carryover = CRGB::Black;
        for( uint8_t i = 0; i < height; i++) {
            CRGB cur = leds[XY(col,i)];
            CRGB part = cur;
            part.nscale8( seep);
            cur.nscale8( keep);
            cur += carryover;
            if( i) leds[XY(col,i-1)] += part;
            leds[XY(col,i)] = cur;
            carryover = part;
        }
    }
}



// CRGB HeatColor( uint8_t temperature)
//
// Approximates a 'black body radiation' spectrum for
// a given 'heat' level.  This is useful for animations of 'fire'.
// Heat is specified as an arbitrary scale from 0 (cool) to 255 (hot).
// This is NOT a chromatically correct 'black body radiation'
// spectrum, but it's surprisingly close, and it's fast and small.
//
// On AVR/Arduino, this typically takes around 70 bytes of program memory,
// versus 768 bytes for a full 256-entry RGB lookup table.

CRGB HeatColor( uint8_t temperature)
{
    CRGB heatcolor;

    // Scale 'heat' down from 0-255 to 0-191,
    // which can then be easily divided into three
    // equal 'thirds' of 64 units each.
    uint8_t t192 = scale8_video( temperature, 191);

    // calculate a value that ramps up from
    // zero to 255 in each 'third' of the scale.
    uint8_t heatramp = t192 & 0x3F; // 0..63
    heatramp <<= 2; // scale up to 0..252

    // now figure out which third of the spectrum we're in:
    if( t192 & 0x80) {
        // we're in the hottest third
        heatcolor.r = 255; // full red
        heatcolor.g = 255; // full green
        heatcolor.b = heatramp; // ramp up blue

    } else if( t192 & 0x40 ) {
        // we're in the middle third
        heatcolor.r = 255; // full red
        heatcolor.g = heatramp; // ramp up green
        heatcolor.b = 0; // no blue

    } else {
        // we're in the coolest third
        heatcolor.r = heatramp; // ramp up red
        heatcolor.g = 0; // no green
        heatcolor.b = 0; // no blue
    }

    return heatcolor;
}


// lsrX4: helper function to divide a number by 16, aka four LSR's.
// On avr-gcc, "u8 >> 4" generates a loop, which is big, and slow.
// merely forcing it to be four /=2's causes avr-gcc to emit
// a SWAP instruction followed by an AND 0x0F, which is faster, and smaller.
inline uint8_t lsrX4( uint8_t dividend) __attribute__((always_inline));
inline uint8_t lsrX4( uint8_t dividend)
{
# 500 "../source/FastLED/colorutils.cpp"
    dividend >>= 4;

    return dividend;
}


CRGB ColorFromPalette( const CRGBPalette16& pal, uint8_t index, uint8_t brightness, TBlendType blendType)
{
    //      hi4 = index >> 4;
    uint8_t hi4 = lsrX4(index);
    uint8_t lo4 = index & 0x0F;
    
    // const CRGB* entry = &(pal[0]) + hi4;
    // since hi4 is always 0..15, hi4 * sizeof(CRGB) can be a single-byte value,
    // instead of the two byte 'int' that avr-gcc defaults to.
    // So, we multiply hi4 X sizeof(CRGB), giving hi4XsizeofCRGB;
    uint8_t hi4XsizeofCRGB = hi4 * sizeof(CRGB);
    // We then add that to a base array pointer.
    const CRGB* entry = (CRGB*)( (uint8_t*)(&(pal[0])) + hi4XsizeofCRGB);
    
    uint8_t blend = lo4 && (blendType != NOBLEND);
    
    uint8_t red1   = entry->red;
    uint8_t green1 = entry->green;
    uint8_t blue1  = entry->blue;
    
    
    if( blend ) {
        
        if( hi4 == 15 ) {
            entry = &(pal[0]);
        } else {
            entry++;
        }
        
        uint8_t f2 = lo4 << 4;
        uint8_t f1 = 255 - f2;
        
        //    rgb1.nscale8(f1);
        uint8_t red2   = entry->red;
        red1   = scale8_LEAVING_R1_DIRTY( red1,   f1);
        red2   = scale8_LEAVING_R1_DIRTY( red2,   f2);
        red1   += red2;

        uint8_t green2 = entry->green;
        green1 = scale8_LEAVING_R1_DIRTY( green1, f1);
        green2 = scale8_LEAVING_R1_DIRTY( green2, f2);
        green1 += green2;

        uint8_t blue2  = entry->blue;
        blue1  = scale8_LEAVING_R1_DIRTY( blue1,  f1);
        blue2  = scale8_LEAVING_R1_DIRTY( blue2,  f2);
        blue1  += blue2;
        
        cleanup_R1();
    }
    
    if( brightness != 255) {
        if( brightness ) {
            brightness++; // adjust for rounding
            // Now, since brightness is nonzero, we don't need the full scale8_video logic;
            // we can just to scale8 and then add one (unless scale8 fixed) to all nonzero inputs.
            if( red1 )   {
                red1 = scale8_LEAVING_R1_DIRTY( red1, brightness);



            }
            if( green1 ) {
                green1 = scale8_LEAVING_R1_DIRTY( green1, brightness);



            }
            if( blue1 )  {
                blue1 = scale8_LEAVING_R1_DIRTY( blue1, brightness);



            }
            cleanup_R1();
        } else {
            red1 = 0;
            green1 = 0;
            blue1 = 0;
        }
    }
    
    return CRGB( red1, green1, blue1);
}

CRGB ColorFromPalette( const TProgmemRGBPalette16& pal, uint8_t index, uint8_t brightness, TBlendType blendType)
{
    //      hi4 = index >> 4;
    uint8_t hi4 = lsrX4(index);
    uint8_t lo4 = index & 0x0F;

    CRGB entry   =  (*((const uint32_t*)(&(pal[0]) + hi4)));
    

    uint8_t red1   = entry.red;
    uint8_t green1 = entry.green;
    uint8_t blue1  = entry.blue;

    uint8_t blend = lo4 && (blendType != NOBLEND);

    if( blend ) {

        if( hi4 == 15 ) {
            entry =   (*((const uint32_t*)(&(pal[0]))));
        } else {
            entry =   (*((const uint32_t*)(&(pal[1]) + hi4)));
        }

        uint8_t f2 = lo4 << 4;
        uint8_t f1 = 255 - f2;

        uint8_t red2   = entry.red;
        red1   = scale8_LEAVING_R1_DIRTY( red1,   f1);
        red2   = scale8_LEAVING_R1_DIRTY( red2,   f2);
        red1   += red2;

        uint8_t green2 = entry.green;
        green1 = scale8_LEAVING_R1_DIRTY( green1, f1);
        green2 = scale8_LEAVING_R1_DIRTY( green2, f2);
        green1 += green2;

        uint8_t blue2  = entry.blue;
        blue1  = scale8_LEAVING_R1_DIRTY( blue1,  f1);
        blue2  = scale8_LEAVING_R1_DIRTY( blue2,  f2);
        blue1  += blue2;

        cleanup_R1();
    }

    if( brightness != 255) {
        if( brightness ) {
            brightness++; // adjust for rounding
            // Now, since brightness is nonzero, we don't need the full scale8_video logic;
            // we can just to scale8 and then add one (unless scale8 fixed) to all nonzero inputs.
            if( red1 )   {
                red1 = scale8_LEAVING_R1_DIRTY( red1, brightness);



            }
            if( green1 ) {
                green1 = scale8_LEAVING_R1_DIRTY( green1, brightness);



            }
            if( blue1 )  {
                blue1 = scale8_LEAVING_R1_DIRTY( blue1, brightness);



            }
            cleanup_R1();
        } else {
            red1 = 0;
            green1 = 0;
            blue1 = 0;
        }
    }

    return CRGB( red1, green1, blue1);
}


CRGB ColorFromPalette( const CRGBPalette32& pal, uint8_t index, uint8_t brightness, TBlendType blendType)
{
    uint8_t hi5 = index;





    hi5 >>= 3;

    uint8_t lo3 = index & 0x07;
    
    // const CRGB* entry = &(pal[0]) + hi5;
    // since hi5 is always 0..31, hi4 * sizeof(CRGB) can be a single-byte value,
    // instead of the two byte 'int' that avr-gcc defaults to.
    // So, we multiply hi5 X sizeof(CRGB), giving hi5XsizeofCRGB;
    uint8_t hi5XsizeofCRGB = hi5 * sizeof(CRGB);
    // We then add that to a base array pointer.
    const CRGB* entry = (CRGB*)( (uint8_t*)(&(pal[0])) + hi5XsizeofCRGB);
    
    uint8_t red1   = entry->red;
    uint8_t green1 = entry->green;
    uint8_t blue1  = entry->blue;
    
    uint8_t blend = lo3 && (blendType != NOBLEND);
    
    if( blend ) {
        
        if( hi5 == 31 ) {
            entry = &(pal[0]);
        } else {
            entry++;
        }
        
        uint8_t f2 = lo3 << 5;
        uint8_t f1 = 255 - f2;
        
        uint8_t red2   = entry->red;
        red1   = scale8_LEAVING_R1_DIRTY( red1,   f1);
        red2   = scale8_LEAVING_R1_DIRTY( red2,   f2);
        red1   += red2;
        
        uint8_t green2 = entry->green;
        green1 = scale8_LEAVING_R1_DIRTY( green1, f1);
        green2 = scale8_LEAVING_R1_DIRTY( green2, f2);
        green1 += green2;
        
        uint8_t blue2  = entry->blue;
        blue1  = scale8_LEAVING_R1_DIRTY( blue1,  f1);
        blue2  = scale8_LEAVING_R1_DIRTY( blue2,  f2);
        blue1  += blue2;

        cleanup_R1();
        
    }
    
    if( brightness != 255) {
        if( brightness ) {
            brightness++; // adjust for rounding
            // Now, since brightness is nonzero, we don't need the full scale8_video logic;
            // we can just to scale8 and then add one (unless scale8 fixed) to all nonzero inputs.
            if( red1 )   {
                red1 = scale8_LEAVING_R1_DIRTY( red1, brightness);



            }
            if( green1 ) {
                green1 = scale8_LEAVING_R1_DIRTY( green1, brightness);



            }
            if( blue1 )  {
                blue1 = scale8_LEAVING_R1_DIRTY( blue1, brightness);



            }
            cleanup_R1();
        } else {
            red1 = 0;
            green1 = 0;
            blue1 = 0;
        }
    }
    
    return CRGB( red1, green1, blue1);
}


CRGB ColorFromPalette( const TProgmemRGBPalette32& pal, uint8_t index, uint8_t brightness, TBlendType blendType)
{
    uint8_t hi5 = index;





    hi5 >>= 3;

    uint8_t lo3 = index & 0x07;
    
    CRGB entry = (*((const uint32_t*)(&(pal[0]) + hi5)));
    
    uint8_t red1   = entry.red;
    uint8_t green1 = entry.green;
    uint8_t blue1  = entry.blue;
    
    uint8_t blend = lo3 && (blendType != NOBLEND);
    
    if( blend ) {
        
        if( hi5 == 31 ) {
            entry =   (*((const uint32_t*)(&(pal[0]))));
        } else {
            entry =   (*((const uint32_t*)(&(pal[1]) + hi5)));
        }
        
        uint8_t f2 = lo3 << 5;
        uint8_t f1 = 255 - f2;
        
        uint8_t red2   = entry.red;
        red1   = scale8_LEAVING_R1_DIRTY( red1,   f1);
        red2   = scale8_LEAVING_R1_DIRTY( red2,   f2);
        red1   += red2;
        
        uint8_t green2 = entry.green;
        green1 = scale8_LEAVING_R1_DIRTY( green1, f1);
        green2 = scale8_LEAVING_R1_DIRTY( green2, f2);
        green1 += green2;
        
        uint8_t blue2  = entry.blue;
        blue1  = scale8_LEAVING_R1_DIRTY( blue1,  f1);
        blue2  = scale8_LEAVING_R1_DIRTY( blue2,  f2);
        blue1  += blue2;
        
        cleanup_R1();
    }
    
    if( brightness != 255) {
        if( brightness ) {
            brightness++; // adjust for rounding
            // Now, since brightness is nonzero, we don't need the full scale8_video logic;
            // we can just to scale8 and then add one (unless scale8 fixed) to all nonzero inputs.
            if( red1 )   {
                red1 = scale8_LEAVING_R1_DIRTY( red1, brightness);



            }
            if( green1 ) {
                green1 = scale8_LEAVING_R1_DIRTY( green1, brightness);



            }
            if( blue1 )  {
                blue1 = scale8_LEAVING_R1_DIRTY( blue1, brightness);



            }
            cleanup_R1();
        } else {
            red1 = 0;
            green1 = 0;
            blue1 = 0;
        }
    }
    
    return CRGB( red1, green1, blue1);
}



CRGB ColorFromPalette( const CRGBPalette256& pal, uint8_t index, uint8_t brightness, TBlendType)
{
    const CRGB* entry = &(pal[0]) + index;

    uint8_t red   = entry->red;
    uint8_t green = entry->green;
    uint8_t blue  = entry->blue;

    if( brightness != 255) {
        brightness++; // adjust for rounding
        red   = scale8_video_LEAVING_R1_DIRTY( red,   brightness);
        green = scale8_video_LEAVING_R1_DIRTY( green, brightness);
        blue  = scale8_video_LEAVING_R1_DIRTY( blue,  brightness);
        cleanup_R1();
    }

    return CRGB( red, green, blue);
}


CHSV ColorFromPalette( const struct CHSVPalette16& pal, uint8_t index, uint8_t brightness, TBlendType blendType)
{
    //      hi4 = index >> 4;
    uint8_t hi4 = lsrX4(index);
    uint8_t lo4 = index & 0x0F;

    //  CRGB rgb1 = pal[ hi4];
    const CHSV* entry = &(pal[0]) + hi4;

    uint8_t hue1   = entry->hue;
    uint8_t sat1   = entry->sat;
    uint8_t val1   = entry->val;

    uint8_t blend = lo4 && (blendType != NOBLEND);

    if( blend ) {

        if( hi4 == 15 ) {
            entry = &(pal[0]);
        } else {
            entry++;
        }

        uint8_t f2 = lo4 << 4;
        uint8_t f1 = 255 - f2;

        uint8_t hue2  = entry->hue;
        uint8_t sat2  = entry->sat;
        uint8_t val2  = entry->val;

        // Now some special casing for blending to or from
        // either black or white.  Black and white don't have
        // proper 'hue' of their own, so when ramping from
        // something else to/from black/white, we set the 'hue'
        // of the black/white color to be the same as the hue
        // of the other color, so that you get the expected
        // brightness or saturation ramp, with hue staying
        // constant:

        // If we are starting from white (sat=0)
        // or black (val=0), adopt the target hue.
        if( sat1 == 0 || val1 == 0) {
            hue1 = hue2;
        }

        // If we are ending at white (sat=0)
        // or black (val=0), adopt the starting hue.
        if( sat2 == 0 || val2 == 0) {
            hue2 = hue1;
        }


        sat1  = scale8_LEAVING_R1_DIRTY( sat1, f1);
        val1  = scale8_LEAVING_R1_DIRTY( val1, f1);

        sat2  = scale8_LEAVING_R1_DIRTY( sat2, f2);
        val2  = scale8_LEAVING_R1_DIRTY( val2, f2);

        //    cleanup_R1();

        // These sums can't overflow, so no qadd8 needed.
        sat1  += sat2;
        val1  += val2;

        uint8_t deltaHue = (uint8_t)(hue2 - hue1);
        if( deltaHue & 0x80 ) {
          // go backwards
          hue1 -= scale8( 256 - deltaHue, f2);
        } else {
          // go forwards
          hue1 += scale8( deltaHue, f2);
        }

        cleanup_R1();
    }

    if( brightness != 255) {
        val1 = scale8_video( val1, brightness);
    }

    return CHSV( hue1, sat1, val1);
}


CHSV ColorFromPalette( const struct CHSVPalette32& pal, uint8_t index, uint8_t brightness, TBlendType blendType)
{
    uint8_t hi5 = index;





    hi5 >>= 3;

    uint8_t lo3 = index & 0x07;
    
    uint8_t hi5XsizeofCHSV = hi5 * sizeof(CHSV);
    const CHSV* entry = (CHSV*)( (uint8_t*)(&(pal[0])) + hi5XsizeofCHSV);
    
    uint8_t hue1   = entry->hue;
    uint8_t sat1   = entry->sat;
    uint8_t val1   = entry->val;
    
    uint8_t blend = lo3 && (blendType != NOBLEND);
    
    if( blend ) {
        
        if( hi5 == 31 ) {
            entry = &(pal[0]);
        } else {
            entry++;
        }
        
        uint8_t f2 = lo3 << 5;
        uint8_t f1 = 255 - f2;
        
        uint8_t hue2  = entry->hue;
        uint8_t sat2  = entry->sat;
        uint8_t val2  = entry->val;
        
        // Now some special casing for blending to or from
        // either black or white.  Black and white don't have
        // proper 'hue' of their own, so when ramping from
        // something else to/from black/white, we set the 'hue'
        // of the black/white color to be the same as the hue
        // of the other color, so that you get the expected
        // brightness or saturation ramp, with hue staying
        // constant:
        
        // If we are starting from white (sat=0)
        // or black (val=0), adopt the target hue.
        if( sat1 == 0 || val1 == 0) {
            hue1 = hue2;
        }
        
        // If we are ending at white (sat=0)
        // or black (val=0), adopt the starting hue.
        if( sat2 == 0 || val2 == 0) {
            hue2 = hue1;
        }
        
        
        sat1  = scale8_LEAVING_R1_DIRTY( sat1, f1);
        val1  = scale8_LEAVING_R1_DIRTY( val1, f1);
        
        sat2  = scale8_LEAVING_R1_DIRTY( sat2, f2);
        val2  = scale8_LEAVING_R1_DIRTY( val2, f2);
        
        //    cleanup_R1();
        
        // These sums can't overflow, so no qadd8 needed.
        sat1  += sat2;
        val1  += val2;
        
        uint8_t deltaHue = (uint8_t)(hue2 - hue1);
        if( deltaHue & 0x80 ) {
            // go backwards
            hue1 -= scale8( 256 - deltaHue, f2);
        } else {
            // go forwards
            hue1 += scale8( deltaHue, f2);
        }
        
        cleanup_R1();
    }
    
    if( brightness != 255) {
        val1 = scale8_video( val1, brightness);
    }
    
    return CHSV( hue1, sat1, val1);
}

CHSV ColorFromPalette( const struct CHSVPalette256& pal, uint8_t index, uint8_t brightness, TBlendType)
{
    CHSV hsv = *( &(pal[0]) + index );

    if( brightness != 255) {
        hsv.value = scale8_video( hsv.value, brightness);
    }

    return hsv;
}


void UpscalePalette(const struct CRGBPalette16& srcpal16, struct CRGBPalette256& destpal256)
{
    for( int i = 0; i < 256; i++) {
        destpal256[(uint8_t)(i)] = ColorFromPalette( srcpal16, i);
    }
}

void UpscalePalette(const struct CHSVPalette16& srcpal16, struct CHSVPalette256& destpal256)
{
    for( int i = 0; i < 256; i++) {
        destpal256[(uint8_t)(i)] = ColorFromPalette( srcpal16, i);
    }
}


void UpscalePalette(const struct CRGBPalette16& srcpal16, struct CRGBPalette32& destpal32)
{
    for( uint8_t i = 0; i < 16; i++) {
        uint8_t j = i * 2;
        destpal32[j+0] = srcpal16[i];
        destpal32[j+1] = srcpal16[i];
    }
}

void UpscalePalette(const struct CHSVPalette16& srcpal16, struct CHSVPalette32& destpal32)
{
    for( uint8_t i = 0; i < 16; i++) {
        uint8_t j = i * 2;
        destpal32[j+0] = srcpal16[i];
        destpal32[j+1] = srcpal16[i];
    }
}

void UpscalePalette(const struct CRGBPalette32& srcpal32, struct CRGBPalette256& destpal256)
{
    for( int i = 0; i < 256; i++) {
        destpal256[(uint8_t)(i)] = ColorFromPalette( srcpal32, i);
    }
}

void UpscalePalette(const struct CHSVPalette32& srcpal32, struct CHSVPalette256& destpal256)
{
    for( int i = 0; i < 256; i++) {
        destpal256[(uint8_t)(i)] = ColorFromPalette( srcpal32, i);
    }
}



# 1108 "../source/FastLED/colorutils.cpp"


void nblendPaletteTowardPalette( CRGBPalette16& current, CRGBPalette16& target, uint8_t maxChanges)
{
    uint8_t* p1;
    uint8_t* p2;
    uint8_t  changes = 0;

    p1 = (uint8_t*)current.entries;
    p2 = (uint8_t*)target.entries;

    const uint8_t totalChannels = sizeof(CRGBPalette16);
    for( uint8_t i = 0; i < totalChannels; i++) {
        // if the values are equal, no changes are needed
        if( p1[i] == p2[i] ) { continue; }

        // if the current value is less than the target, increase it by one
        if( p1[i] < p2[i] ) { p1[i]++; changes++; }

        // if the current value is greater than the target,
        // increase it by one (or two if it's still greater).
        if( p1[i] > p2[i] ) {
            p1[i]--; changes++;
            if( p1[i] > p2[i] ) { p1[i]--; }
        }

        // if we've hit the maximum number of changes, exit
        if( changes >= maxChanges) { break; }
    }
}


uint8_t applyGamma_video( uint8_t brightness, float gamma)
{
    float orig;
    float adj;
    orig = (float)(brightness) / (255.0);
    adj =  pow( orig, gamma)   * (255.0);
    uint8_t result = (uint8_t)(adj);
    if( (brightness > 0) && (result == 0)) {
        result = 1; // never gamma-adjust a positive number down to zero
    }
    return result;
}

CRGB applyGamma_video( const CRGB& orig, float gamma)
{
    CRGB adj;
    adj.r = applyGamma_video( orig.r, gamma);
    adj.g = applyGamma_video( orig.g, gamma);
    adj.b = applyGamma_video( orig.b, gamma);
    return adj;
}

CRGB applyGamma_video( const CRGB& orig, float gammaR, float gammaG, float gammaB)
{
    CRGB adj;
    adj.r = applyGamma_video( orig.r, gammaR);
    adj.g = applyGamma_video( orig.g, gammaG);
    adj.b = applyGamma_video( orig.b, gammaB);
    return adj;
}

CRGB& napplyGamma_video( CRGB& rgb, float gamma)
{
    rgb = applyGamma_video( rgb, gamma);
    return rgb;
}

CRGB& napplyGamma_video( CRGB& rgb, float gammaR, float gammaG, float gammaB)
{
    rgb = applyGamma_video( rgb, gammaR, gammaG, gammaB);
    return rgb;
}

void napplyGamma_video( CRGB* rgbarray, uint16_t count, float gamma)
{
    for( uint16_t i = 0; i < count; i++) {
        rgbarray[i] = applyGamma_video( rgbarray[i], gamma);
    }
}

void napplyGamma_video( CRGB* rgbarray, uint16_t count, float gammaR, float gammaG, float gammaB)
{
    for( uint16_t i = 0; i < count; i++) {
        rgbarray[i] = applyGamma_video( rgbarray[i], gammaR, gammaG, gammaB);
    }
}



