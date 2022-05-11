.include "includes/macros/stack.inc"
.include "includes/macros/set.inc"
.include "includes/macros/logic.inc"
.include "includes/macros/addition.inc"
.include "includes/macros/subtraction.inc"
.include "includes/macros/multiplication.inc"
.include "includes/macros/division.inc"
.include "includes/macros/branching.inc"


; ---------------------------------------------------------------------------

.macro read_word dst, src
	LDY	#0
	LDA	src
	STA	dst
	
	INY
	LDA	src
	STA	dst+1
.endmacro

.macro get_word_offset addr, idx
	LDA	idx
	mult_a_by_2
	add_to_a addr
	STA	addr
	add_byte_to_byte addr+1, #0
.endmacro

.macro get_ptr_from_tbl ptr_addr, ptr_idx

	set_word_to_word_const ptr_0, ptr_addr
	set_byte_to_word data_2, ptr_idx
	mult_word_by_2 data_2
	add_word_to_word ptr_0, data_2

.endmacro

.macro bank_switch_func switch_case_func

bank_switch_8000:
		set bank_switch_flag_6C, #$EE 

		LDA	bank_to_344
		CMP	#$10
		BCS	bank_idx_greater_10_8020
		mult_a_by_2
		mult_a_by_2
		mult_a_by_2
		TAY
		LDA	mirroring_type_342
		BNE	vertical_801A

horizontal_8014:
		STA	$8083,Y
		JMP	switch_case_func
vertical_801A:
		STA	$8081,Y
		JMP	switch_case_func

bank_idx_greater_10_8020:
		SEC
		SBC	#$10
		mult_a_by_2
		mult_a_by_2
		mult_a_by_2
		TAY
		LDA	mirroring_type_342
		BNE	vertical_8032

horizontal_802C:
		STA	$8183,Y
		JMP	switch_case_func
vertical_8032:
		STA	$8181,Y

.endmacro

; ---------------------------------------------------------------------------