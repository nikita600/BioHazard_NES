

; ---------------------------------------------------------------------------

.macro set dst, src

	LDA	src
	STA	dst

.endmacro

.include "includes/macros/set_macros.inc"

; ---------------------------------------------------------------------------

.macro add_to dst_lo, dst_hi, src_lo, src_hi

	LDA	dst_lo
	CLC
	ADC	src_lo
	STA	dst_lo

	LDA	dst_hi
	ADC	src_hi
	STA	dst_hi

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

; ---------------------------------------------------------------------------
