
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
	set_word_to_word_const ptr_0, data
