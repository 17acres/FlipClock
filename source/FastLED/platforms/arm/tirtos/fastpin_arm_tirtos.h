#ifndef __INC_FASTPIN_ARM_SAM_H
#define __INC_FASTPIN_ARM_SAM_H

FASTLED_NAMESPACE_BEGIN
#if FASTLED_ALLOW_INTERRUPTS == 0
#error "Software pin support unavailable."
#elif defined(FASTLED_FORCE_SOFTWARE_PINS)
#error "Software pin support unavailable."
#define NO_HARDWARE_PIN_SUPPORT
#undef HAS_HARDWARE_PIN_SUPPORT
#else


/// Template definition for arduino due style ARM pins, providing direct access to the various GPIO registers.  Note that this
/// uses the full port GPIO registers.  In theory, in some way, bit-band register access -should- be faster, however I have found
/// that something about the way gcc does register allocation results in the bit-band code being slower.  It will need more fine tuning.
/// The registers are data register, set output register, clear output register, set data direction register
template<uint8_t PIN, uint32_t _MASK, typename _PDOR, typename _PSOR, typename _PCOR, typename _PDDR> class _DUEPIN {
public:
	typedef volatile uint32_t * port_ptr_t;
	typedef uint32_t port_t;

	inline static void setOutput() {} // TODO: perform MUX config { _PDDR::r() |= _MASK; }
	inline static void setInput() {  } // TODO: preform MUX config { _PDDR::r() &= ~_MASK; }

	inline static void hi() __attribute__ ((always_inline)) {  }
	inline static void lo() __attribute__ ((always_inline)) { }
	inline static void set(register port_t val) __attribute__ ((always_inline)) { }

	inline static void strobe() __attribute__ ((always_inline)) { }

	inline static void toggle() __attribute__ ((always_inline)) {}

	inline static void hi(register port_ptr_t port) __attribute__ ((always_inline)) {}
	inline static void lo(register port_ptr_t port) __attribute__ ((always_inline)) {}
	inline static void fastset(register port_ptr_t port, register port_t val) __attribute__ ((always_inline)) { }

	inline static port_t hival() __attribute__ ((always_inline)) {  }
	inline static port_t loval() __attribute__ ((always_inline)) {  }
	inline static port_ptr_t port() __attribute__ ((always_inline)) { }
	inline static port_ptr_t sport() __attribute__ ((always_inline)) {  }
	inline static port_ptr_t cport() __attribute__ ((always_inline)) {  }
	inline static port_t mask() __attribute__ ((always_inline)) {  }
};


/// Template definition for DUE  style ARM pins using bit banding, providing direct access to the various GPIO registers.  GCC
/// does a poor job of optimizing around these accesses so they are not being used just yet.
template<uint8_t PIN, uint32_t _BIT, typename _PDOR, typename _PSOR, typename _PCOR, typename _PDDR> class _DUEPIN_BITBAND {
public:
	typedef volatile uint32_t * port_ptr_t;
	typedef uint32_t port_t;

	inline static void setOutput() { } // TODO: perform MUX config { _PDDR::r() |= _MASK; }
	inline static void setInput() { } // TODO: preform MUX config { _PDDR::r() &= ~_MASK; }

	inline static void hi() __attribute__ ((always_inline)) {}
	inline static void lo() __attribute__ ((always_inline)) {  }
	inline static void set(register port_t val) __attribute__ ((always_inline)) {  }

	inline static void strobe() __attribute__ ((always_inline)) {}

	inline static void toggle() __attribute__ ((always_inline)) {}

	inline static void hi(register port_ptr_t port) __attribute__ ((always_inline)) { }
	inline static void lo(register port_ptr_t port) __attribute__ ((always_inline)) { }
	inline static void fastset(register port_ptr_t port, register port_t val) __attribute__ ((always_inline)) { }

	inline static port_t hival() __attribute__ ((always_inline)) {}
	inline static port_t loval() __attribute__ ((always_inline)) {}
	inline static port_ptr_t port() __attribute__ ((always_inline)) {}
	inline static port_t mask() __attribute__ ((always_inline)) {}
};

#define ARM_HARDWARE_SPI
#define HAS_HARDWARE_PIN_SUPPORT

#endif

#endif // FASTLED_FORCE_SOFTWARE_PINS

FASTLED_NAMESPACE_END


#endif // __INC_FASTPIN_ARM_SAM_H
