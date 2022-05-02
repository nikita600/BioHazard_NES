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
