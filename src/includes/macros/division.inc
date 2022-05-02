
.macro div_byte_by_2 addr
	LSR addr
.endmacro

.macro div_byte_by_4 addr
	LSR addr
	LSR addr
.endmacro

.macro div_byte_by_8 addr
	LSR addr
	LSR addr
	LSR addr
.endmacro

.macro div_a_by_2_addr addr
	LDA addr
	LSR A
.endmacro

.macro div_a_by_4_addr addr
	LDA addr
	LSR A
	LSR A
.endmacro

.macro div_a_by_8_addr addr
	LDA addr
	LSR A
	LSR A
	LSR A
.endmacro

.macro div_a_by_16_addr addr
	LDA addr
	LSR A
	LSR A
	LSR A
	LSR A
.endmacro

.macro div_a_by_2
	LSR A
.endmacro

.macro div_a_by_4
	LSR A
	LSR A
.endmacro

.macro div_a_by_8
	LSR A
	LSR A
	LSR A
.endmacro

.macro div_a_by_16
	LSR A
	LSR A
	LSR A
	LSR A
.endmacro