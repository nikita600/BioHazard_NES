.macro FROM_STACK_TO_A dst
	PLA
	STA dst
.endmacro

.macro A_TO_STACK src
	LDA src
	PHA
.endmacro

.macro FROM_STACK_TO_X
	PLA
	TAX
.endmacro

.macro X_TO_STACK
	TXA
	PHA
.endmacro

.macro FROM_STACK_TO_Y
	PLA
	TAY
.endmacro

.macro Y_TO_STACK
	TYA
	PHA
.endmacro