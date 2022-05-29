
.include "includes/ram.inc"
.include "includes/macros.inc"

.org $1234
data:
	NOP
	NOP
	NOP
	NOP

	NOP
	NOP
	NOP
	NOP

start:
	SET_WORD_TO_WORD_CONST ptr_0, data
