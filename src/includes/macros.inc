

; ---------------------------------------------------------------------------

.macro set dst, src

	LDA	src
	STA	dst

.endmacro

.include "includes/macros/set_macros.inc"

; ---------------------------------------------------------------------------

.macro add_to_byte_clc dst, src
	
	LDA	dst
	CLC
	ADC	src
	STA	dst

.endmacro

.macro add_to_byte dst, src

	LDA	dst
	ADC	src
	STA	dst

.endmacro

.macro add_to dst_lo, dst_hi, src_lo, src_hi

	add_to_byte_clc	dst_lo, src_lo
	add_to_byte dst_hi, src_hi

.endmacro

.include "includes/macros/add_to_macros.inc"

; ---------------------------------------------------------------------------

.macro to_stack src

	LDA src
	PHA

.endmacro

; ---------------------------------------------------------------------------

.macro from_stack dst

	PLA
	STA dst

.endmacro

.macro from_stack_to_x
	PLA
	TAX
.endmacro

.macro from_stack_to_y
	PLA
	TAY
.endmacro

; ---------------------------------------------------------------------------
