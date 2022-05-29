.macro ADD_2_TO dst
	INC dst
	INC dst
.endmacro

.macro ADD_TO_A value
	CLC
	ADC	value
.endmacro

.macro ADD_BYTE_TO_WORD addr, value
	ADD_TO addr, addr+1, value, #0
.endmacro

.macro ADD_WORD_TO_WORD addr, value
	ADD_TO addr, addr+1, value, value+1
.endmacro

.macro ADD_WORD_TO_WORD_IMM addr, value
	ADD_TO addr, addr+1, #.LOBYTE(value), #.HIBYTE(value)
.endmacro

.macro ADD_BYTE_TO_BYTE_CLC dst, src
	LDA	dst
	CLC
	ADC	src
	STA	dst
.endmacro

.macro ADD_BYTE_TO_BYTE_CLC_IMM dst, src, value
	LDA	src
	CLC
	ADC	value
	STA	dst
.endmacro

.macro ADD_BYTE_TO_BYTE dst, src
	LDA	dst
	ADC	src
	STA	dst
.endmacro

.macro ADD_TO dst_lo, dst_hi, src_lo, src_hi
	LDA	dst_lo
	CLC
	ADC	src_lo
	STA	dst_lo

	LDA	dst_hi
	ADC	src_hi
	STA	dst_hi
.endmacro
