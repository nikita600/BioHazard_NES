.macro mult_byte_by_2 addr
	ASL addr
.endmacro

.macro mult_byte_by_4 addr
	ASL addr
	ASL addr
.endmacro

.macro mult_byte_by_8 addr
	ASL addr
	ASL addr
	ASL addr
.endmacro

.macro mult_word_by_2 addr
	ASL addr
	ROL	addr+1
.endmacro

.macro mult_a_by_2
	ASL A
.endmacro

.macro mult_a_by_4
	ASL A
	ASL A
.endmacro

.macro mult_a_by_8
	ASL A
	ASL A
	ASL A
.endmacro

.macro mult_a_by_16
	ASL A
	ASL A
	ASL A
	ASL A
.endmacro

.macro mult_a_by_32
	ASL A
	ASL A
	ASL A
	ASL A
	ASL A
.endmacro

.macro mult_a_by_64
	ASL A
	ASL A
	ASL A
	ASL A
	ASL A
	ASL A
.endmacro
