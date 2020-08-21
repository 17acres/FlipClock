#ifndef __INC_FASTSPI_ARM_TIRTOS_H
#define __INC_FASTSPI_ARM_TIRTOS_H

FASTLED_NAMESPACE_BEGIN

#if defined(TIVAWARE)

template <uint8_t _DATA_PIN, uint8_t _CLOCK_PIN, uint32_t _SPI_CLOCK_DIVIDER>
class TIRTOSHardwareSPIOutput {
	Selectable *m_pSelect;

	static inline void waitForEmpty() { while ((m_SPI->SPI_SR & SPI_SR_TDRE) == 0); }

	void enableConfig() { m_SPI->SPI_WPMR &= ~SPI_WPMR_WPEN; }
	void disableConfig() { m_SPI->SPI_WPMR |= SPI_WPMR_WPEN; }

	void enableSPI() { m_SPI->SPI_CR = SPI_CR_SPIEN; }
	void disableSPI() { m_SPI->SPI_CR = SPI_CR_SPIDIS; }
	void resetSPI() { m_SPI->SPI_CR = SPI_CR_SWRST; }

	template<int BITS> static inline void writeBits(uint16_t w) {
		waitForEmpty();
		m_SPI->SPI_TDR = (uint32_t)w | SPI_PCS(0);
	}

public:
	TIRTOSHardwareSPIOutput() { m_pSelect = NULL; }
	TIRTOSHardwareSPIOutput(Selectable *pSelect) { m_pSelect = pSelect; }

	// set the object representing the selectable
	void setSelect(Selectable *pSelect) { /* TODO */ }

	// initialize the SPI subssytem
	void init() {
		// m_SPI = SPI0;

		// set the output pins master out, master in, clock.  Note doing this here because I still don't
		// know how I want to expose this type of functionality in FastPin.
		PIO_Configure(PIOA, PIO_PERIPH_A, FastPin<_DATA_PIN>::mask(), PIO_DEFAULT);
		PIO_Configure(PIOA, PIO_PERIPH_A, FastPin<_DATA_PIN-1>::mask(), PIO_DEFAULT);
		PIO_Configure(PIOA, PIO_PERIPH_A, FastPin<_CLOCK_PIN>::mask(), PIO_DEFAULT);

		release();

		// Configure the SPI clock, divider between 1-255
		// SCBR = _SPI_CLOCK_DIVIDER
		pmc_enable_periph_clk(ID_SPI0);
		disableSPI();

		// reset twice (what the sam code does, not sure why?)
		resetSPI();
		resetSPI();

		// Configure SPI as master, enable
		// Bits we want in MR: master, disable mode fault detection, variable peripheral select
		m_SPI->SPI_MR = SPI_MR_MSTR | SPI_MR_MODFDIS | SPI_MR_PS;

		enableSPI();

	}

	// latch the CS select
	void inline select() __attribute__((always_inline)) { if(m_pSelect != NULL) { m_pSelect->select(); } }

	// release the CS select
	void inline release() __attribute__((always_inline)) { if(m_pSelect != NULL) { m_pSelect->release(); } }

	// wait until all queued up data has been written
	void waitFully() { while((m_SPI->SPI_SR & SPI_SR_TXEMPTY) == 0); }

	// write a byte out via SPI (returns immediately on writing register)
	static void writeByte(uint8_t b) {
		writeBits<8>(b);
	}

	// write a word out via SPI (returns immediately on writing register)
	static void writeWord(uint16_t w) {
		writeBits<16>(w);
	}

	// A raw set of writing byte values, assumes setup/init/waiting done elsewhere
	static void writeBytesValueRaw(uint8_t value, int len) {
		while(len--) { writeByte(value); }
	}

	// A full cycle of writing a value for len bytes, including select, release, and waiting
	void writeBytesValue(uint8_t value, int len) {
		select(); writeBytesValueRaw(value, len); release();
	}

	template <class D> void writeBytes(register uint8_t *data, int len) {
		uint8_t *end = data + len;
		select();
		// could be optimized to write 16bit words out instead of 8bit bytes
		while(data != end) {
			writeByte(D::adjust(*data++));
		}
		D::postBlock(len);
		waitFully();
		release();
	}

	void writeBytes(register uint8_t *data, int len) { writeBytes<DATA_NOP>(data, len); }

	// write a single bit out, which bit from the passed in byte is determined by template parameter
	// not the most efficient mechanism in the world - but should be enough for sm16716 and friends
	template <uint8_t BIT> inline void writeBit(uint8_t b) {
		// need to wait for all exisiting data to go out the door, first
		waitFully();
		disableSPI();
		if(b & (1 << BIT)) {
			FastPin<_DATA_PIN>::hi();
		} else {
			FastPin<_DATA_PIN>::lo();
		}

		FastPin<_CLOCK_PIN>::hi();
		FastPin<_CLOCK_PIN>::lo();
		enableSPI();
	}

	// write a block of uint8_ts out in groups of three.  len is the total number of uint8_ts to write out.  The template
	// parameters indicate how many uint8_ts to skip at the beginning and/or end of each grouping
	template <uint8_t FLAGS, class D, EOrder RGB_ORDER> void writePixels(PixelController<RGB_ORDER> pixels) {
		select();
		int len = pixels.mLen;

		if(FLAGS & FLAG_START_BIT) {
			while(pixels.has(1)) {
				writeBits<9>((1<<8) | D::adjust(pixels.loadAndScale0()));
				writeByte(D::adjust(pixels.loadAndScale1()));
				writeByte(D::adjust(pixels.loadAndScale2()));
				pixels.advanceData();
				pixels.stepDithering();
			}
		} else {
			while(pixels.has(1)) {
				writeByte(D::adjust(pixels.loadAndScale0()));
				writeByte(D::adjust(pixels.loadAndScale1()));
				writeByte(D::adjust(pixels.loadAndScale2()));
				pixels.advanceData();
				pixels.stepDithering();
			}
		}
		D::postBlock(len);
		release();
	}
};

#endif

FASTLED_NAMESPACE_END
#endif
