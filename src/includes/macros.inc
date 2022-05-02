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

.include "includes/macros/set_macros.inc"

; ---------------------------------------------------------------------------

.macro load_a_masked addr, mask
	LDA	addr
	AND	mask
.endmacro

.macro and_byte addr, value
	LDA	addr
	AND	value
	STA	addr
.endmacro

.macro or_byte addr, value
	LDA	addr
	ORA	value
	STA	addr
.endmacro

.macro xor_byte addr, value
	LDA addr
	EOR value
	STA addr
.endmacro

; ---------------------------------------------------------------------------

.macro sub_a_sec value
	SEC
	SBC	value
.endmacro

.macro sub_addr_sec dst, value
	LDA	dst
	SEC
	SBC	value
.endmacro

.macro sub_addr dst, value
	LDA	dst
	SBC	value
.endmacro

.macro sub_byte_sec dst, value
	LDA	dst
	SEC
	SBC	value
	STA	dst
.endmacro

.macro sub_byte dst, value
	LDA	dst
	SBC	value
	STA	dst
.endmacro

; ---------------------------------------------------------------------------

.macro add_to_a value
	CLC
	ADC	value
.endmacro

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

.macro mult_byte_by_2 addr
	ASL addr
.endmacro

.macro mult_byte_by_4 addr
	ASL addr
	ASL addr
.endmacro

.macro mult_byte_by_8 addr
	ASL addr
	ASL addr
	ASL addr
.endmacro

.macro mult_word_by_2 addr
	ASL addr
	ROL	addr+1
.endmacro

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

.macro if_a_equal value, branch
	LDA	value
	BEQ	branch
.endmacro

.macro if_a_not_equal value, branch
	LDA	value
	BNE	branch
.endmacro

.macro if_a_lower value, branch
	LDA value
	BCS branch
.endmacro

.macro if_a_greater value, branch
	LDA value
	BCC branch
.endmacro

; ---------------------------------------------------------------------------

.macro if_a_equal_cmp_addr addr, value, branch
	LDA addr
	CMP	value
	BEQ	branch
.endmacro

.macro if_a_equal_cmp value, branch
	CMP	value
	BEQ	branch
.endmacro

.macro if_x_equal_cmp value, branch
	CPX	value
	BEQ	branch
.endmacro

.macro if_y_equal_cmp value, branch
	CPY	value
	BEQ	branch
.endmacro

; ---------------------------------------------------------------------------

.macro if_a_not_equal_cmp_addr addr, value, branch
	LDA addr
	CMP value
	BNE branch
.endmacro

.macro if_a_not_equal_cmp value, branch
	CMP value
	BNE branch
.endmacro

.macro if_x_not_equal_cmp value, branch
	CPX value
	BNE branch
.endmacro

.macro if_y_not_equal_cmp value, branch
	CPY value
	BNE branch
.endmacro

; ---------------------------------------------------------------------------

.macro if_a_lower_cmp_addr addr, value, branch
	LDA addr
	CMP value
	BCS branch
.endmacro

.macro if_a_lower_cmp value, branch
	CMP value
	BCS branch
.endmacro

.macro if_x_lower_cmp value, branch
	CPX value
	BCS branch
.endmacro

.macro if_y_lower_cmp value, branch
	CPY value
	BCS branch
.endmacro

; ---------------------------------------------------------------------------

.macro if_a_greater_cmp_addr addr, value, branch
	LDA addr
	CMP value
	BCC branch
.endmacro


.macro if_a_greater_cmp value, branch
	CMP value
	BCC branch
.endmacro

.macro if_x_greater_cmp value, branch
	CPX value
	BCC branch
.endmacro

.macro if_y_greater_cmp value, branch
	CPY value
	BCC branch
.endmacro

; ---------------------------------------------------------------------------