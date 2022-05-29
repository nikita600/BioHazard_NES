.macro LOAD_A_MASKED addr, mask
	LDA	addr
	AND	mask
.endmacro

.macro AND_BYTE addr, value
	LDA	addr
	AND	value
	STA	addr
.endmacro

.macro OR_BYTE addr, value
	LDA	addr
	ORA	value
	STA	addr
.endmacro

.macro XOR_BYTE  addr, value
	LDA addr
	EOR value
	STA addr
.endmacro
