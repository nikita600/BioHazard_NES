; ---------------------------------------------------------------------------

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

; ---------------------------------------------------------------------------

.macro set_ptr addr

	set ptr_0, #.LOBYTE(addr)
	set ptr_1, #.HIBYTE(addr)

.endmacro

; ---------------------------------------------------------------------------

.macro set_ptr_iny addr

	set ptr_0, #.LOBYTE(addr)
	INY
	set ptr_1, #.HIBYTE(addr)

.endmacro

; ---------------------------------------------------------------------------

.macro set_data addr

	set data_2, #.LOBYTE(addr)
	set data_3, #.HIBYTE(addr) 

.endmacro

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

.macro add_byte_to_word addr, value
	add_to addr, addr+1, value, #0
.endmacro

.macro add_word_to_word addr, value
	add_to addr, addr+1, value, value+1
.endmacro

.macro add_word_to_word_imm addr, value
	add_to addr, addr+1, #.LOBYTE(value), #.HIBYTE(value)
.endmacro

.macro add_byte_to_byte_clc dst, src
	LDA	dst
	CLC
	ADC	src
	STA	dst
.endmacro

.macro add_byte_to_byte dst, src
	LDA	dst
	ADC	src
	STA	dst
.endmacro

.macro add_to dst_lo, dst_hi, src_lo, src_hi
	LDA	dst_lo
	CLC
	ADC	src_lo
	STA	dst_lo

	LDA	dst_hi
	ADC	src_hi
	STA	dst_hi
.endmacro

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

.macro div_byte_by_2 addr
	LSR addr
.endmacro

.macro div_byte_by_4 addr
	LSR addr
	LSR addr
.endmacro

.macro div_byte_by_8 addr
	LSR addr
	LSR addr
	LSR addr
.endmacro

; ---------------------------------------------------------------------------

.macro div_a_by_2_addr addr
	LDA addr
	LSR A
.endmacro

.macro div_a_by_4_addr addr
	LDA addr
	LSR A
	LSR A
.endmacro

.macro div_a_by_8_addr addr
	LDA addr
	LSR A
	LSR A
	LSR A
.endmacro

.macro div_a_by_16_addr addr
	LDA addr
	LSR A
	LSR A
	LSR A
	LSR A
.endmacro

; ---------------------------------------------------------------------------

.macro div_a_by_2
	LSR A
.endmacro

.macro div_a_by_4
	LSR A
	LSR A
.endmacro

.macro div_a_by_8
	LSR A
	LSR A
	LSR A
.endmacro

.macro div_a_by_16
	LSR A
	LSR A
	LSR A
	LSR A
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

.macro get_word_offset addr, idx
	LDA	idx
	mult_a_by_2
	add_to_a addr
	STA	addr
	add_byte_to_byte addr+1, #0
.endmacro

; ---------------------------------------------------------------------------