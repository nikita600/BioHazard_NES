.macro from_stack_to_a dst
	PLA
	STA dst
.endmacro

.macro a_to_stack src
	LDA src
	PHA
.endmacro

.macro from_stack_to_x
	PLA
	TAX
.endmacro

.macro x_to_stack
	TXA
	PHA
.endmacro

.macro from_stack_to_y
	PLA
	TAY
.endmacro

.macro y_to_stack
	TYA
	PHA
.endmacro