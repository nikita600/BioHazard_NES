
.macro DIV_BYTE_BY_2 addr
	LSR addr
.endmacro

.macro DIV_BYTE_BY_4 addr
	LSR addr
	LSR addr
.endmacro

.macro DIV_BYTE_BY_8  addr
	LSR addr
	LSR addr
	LSR addr
.endmacro

.macro DIV_A_BY_2_ADDR addr
	LDA addr
	LSR A
.endmacro

.macro DIV_A_BY_4_ADDR addr
	LDA addr
	LSR A
	LSR A
.endmacro

.macro DIV_A_BY_8_ADDR addr
	LDA addr
	LSR A
	LSR A
	LSR A
.endmacro

.macro DIV_A_BY_2
	LSR A
.endmacro

.macro DIV_A_BY_4
	LSR A
	LSR A
.endmacro

.macro DIV_A_BY_16
	LSR A
	LSR A
	LSR A
	LSR A
.endmacro