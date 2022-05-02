.include "includes/macros/stack.inc"
.include "includes/macros/set.inc"
.include "includes/macros/logic.inc"
.include "includes/macros/addition.inc"
.include "includes/macros/subtraction.inc"
.include "includes/macros/multiplication.inc"
.include "includes/macros/division.inc"
.include "includes/macros/branching.inc"


; ---------------------------------------------------------------------------

.macro get_word_offset addr, idx
	LDA	idx
	mult_a_by_2
	add_to_a addr
	STA	addr
	add_byte_to_byte addr+1, #0
.endmacro

; ---------------------------------------------------------------------------