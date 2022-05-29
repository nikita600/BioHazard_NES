.macro SUB_2_FROM dst
	DEC dst
	DEC dst
.endmacro

.macro SUB_A_SEC value
	SEC
	SBC	value
.endmacro

.macro SUB_ADDR_SEC dst, value
	LDA	dst
	SEC
	SBC	value
.endmacro

.macro SUB_ADDR dst, value
	LDA	dst
	SBC	value
.endmacro

.macro SUB_WORD_FROM_WORD dst, value
	LDA	dst
	SEC
	SBC	value

	LDA	dst+1
	SBC	value+1
.endmacro

.macro SUB_BYTE_SEC dst, value
	LDA	dst
	SEC
	SBC	value
	STA	dst
.endmacro

.macro SUB_BYTE dst, value
	LDA	dst
	SBC	value
	STA	dst
.endmacro

.macro SUB_BYTE_FROM_WORD dst, value
	LDA	dst
	SEC
	SBC	value
	STA	dst

	LDA	dst+1
	SBC	#0
	STA	dst+1
.endmacro
