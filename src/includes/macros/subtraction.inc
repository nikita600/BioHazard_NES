.macro sub_a_sec value
	SEC
	SBC	value
.endmacro

.macro sub_addr_sec dst, value
	LDA	dst
	SEC
	SBC	value
.endmacro

.macro sub_addr dst, value
	LDA	dst
	SBC	value
.endmacro

.macro sub_word_from_word dst, value
	LDA	dst
	SEC
	SBC	value

	LDA	dst+1
	SBC	value+1
.endmacro

.macro sub_byte_sec dst, value
	LDA	dst
	SEC
	SBC	value
	STA	dst
.endmacro

.macro sub_byte dst, value
	LDA	dst
	SBC	value
	STA	dst
.endmacro

.macro sub_byte_from_word dst, value
	LDA	dst
	SEC
	SBC	value
	STA	dst

	LDA	dst+1
	SBC	#0
	STA	dst+1
.endmacro
