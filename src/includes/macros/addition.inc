.macro add_2_to dst
	INC dst
	INC dst
.endmacro

.macro add_to_a value
	CLC
	ADC	value
.endmacro

.macro add_byte_to_word addr, value
	add_to addr, addr+1, value, #0
.endmacro

.macro add_word_to_word addr, value
	add_to addr, addr+1, value, value+1
.endmacro

.macro add_word_to_word_imm addr, value
	add_to addr, addr+1, #.LOBYTE(value), #.HIBYTE(value)
.endmacro

.macro add_byte_to_byte_clc dst, src
	LDA	dst
	CLC
	ADC	src
	STA	dst
.endmacro

.macro add_byte_to_byte_clc_imm dst, src, value
	LDA	src
	CLC
	ADC	value
	STA	dst
.endmacro

.macro add_byte_to_byte dst, src
	LDA	dst
	ADC	src
	STA	dst
.endmacro

.macro add_to dst_lo, dst_hi, src_lo, src_hi
	LDA	dst_lo
	CLC
	ADC	src_lo
	STA	dst_lo

	LDA	dst_hi
	ADC	src_hi
	STA	dst_hi
.endmacro
