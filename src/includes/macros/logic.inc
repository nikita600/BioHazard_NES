.macro load_a_masked addr, mask
	LDA	addr
	AND	mask
.endmacro

.macro and_byte addr, value
	LDA	addr
	AND	value
	STA	addr
.endmacro

.macro or_byte addr, value
	LDA	addr
	ORA	value
	STA	addr
.endmacro

.macro xor_byte addr, value
	LDA addr
	EOR value
	STA addr
.endmacro
