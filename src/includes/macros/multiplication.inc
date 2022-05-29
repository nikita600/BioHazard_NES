.macro MULT_BYTE_BY_2 addr
	ASL addr
.endmacro

.macro MULT_BYTE_BY_4 addr
	ASL addr
	ASL addr
.endmacro

.macro MULT_BYTE_BY_8 addr
	ASL addr
	ASL addr
	ASL addr
.endmacro

.macro MULT_WORD_BY_2 addr
	ASL addr
	ROL	addr+1
.endmacro

.macro MULT_WORD_BY_16 addr
	ASL addr
	ROL	addr+1
	ASL addr
	ROL	addr+1
	ASL addr
	ROL	addr+1
	ASL addr
	ROL	addr+1
.endmacro

.macro MULT_BY_2_BYTE addr
	LDA addr
	MULT_A_BY_2
.endmacro

.macro MULT_BY_4_BYTE addr
	LDA addr
	MULT_A_BY_4
.endmacro

.macro MULT_BY_8_BYTE addr
	LDA addr
	MULT_A_BY_8
.endmacro

.macro MULT_A_BY_2
	ASL A
.endmacro

.macro MULT_A_BY_4
	ASL A
	ASL A
.endmacro

.macro MULT_A_BY_8
	ASL A
	ASL A
	ASL A
.endmacro

.macro MULT_A_BY_16
	ASL A
	ASL A
	ASL A
	ASL A
.endmacro

.macro MULT_A_BY_32
	ASL A
	ASL A
	ASL A
	ASL A
	ASL A
.endmacro

.macro MULT_A_BY_64
	ASL A
	ASL A
	ASL A
	ASL A
	ASL A
	ASL A
.endmacro
