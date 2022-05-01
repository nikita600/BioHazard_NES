
; ---------------------------------------------------------------------------

.macro to_stack src

	LDA src
	PHA

.endmacro

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

.macro set dst, src

	LDA	src
	STA	dst

.endmacro

.macro set_inx dst, src

	LDA	src
	STA	dst
	INX

.endmacro

.macro set_iny dst, src

	LDA	src
	STA	dst
	INY

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

; ---------------------------------------------------------------------------

.macro if_equal value, branch

	CMP	value
	BEQ	branch

.endmacro

.macro if_not_equal value, branch

	CMP value
	BNE branch

.endmacro

.macro if_lower value, branch

	CMP value
	BCS branch

.endmacro

.macro if_greater value, branch

	CMP value
	BCC branch

.endmacro

; ---------------------------------------------------------------------------