.include "includes/macros/stack.inc"
.include "includes/macros/set.inc"
.include "includes/macros/logic.inc"
.include "includes/macros/addition.inc"
.include "includes/macros/subtraction.inc"
.include "includes/macros/multiplication.inc"
.include "includes/macros/division.inc"
.include "includes/macros/branching.inc"

; ---------------------------------------------------------------------------

.macro READ_WORD dst, src
	LDY	#0
	LDA	src
	STA	dst
	
	INY
	LDA	src
	STA	dst+1
.endmacro

; ---------------------------------------------------------------------------

.macro GET_PTR_FROM_TBL ptr_addr, ptr_idx

	SET_WORD_TO_WORD_CONST ptr_0, ptr_addr

	SET_BYTE_TO_WORD data_2, ptr_idx
	MULT_WORD_BY_2 data_2
	ADD_WORD_TO_WORD ptr_0, data_2

	READ_WORD data_2, {(ptr_0),Y}

.endmacro

; ---------------------------------------------------------------------------

.macro BANK_SWITCH_FUNC switch_case_func

bank_switch_8000:
		SET bank_switch_flag_6C, #$EE 

		LDA	bank_to_344
		CMP	#$10
		BCS	bank_idx_greater_10_8020
		MULT_A_BY_8
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
		MULT_A_BY_8
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

.macro EXECUTE_BANK_COMMAND command, to, from

	SET bank_command_346, command
	SET bank_to_344, to
	SET bank_from_343, from
	JSR	bank_switch_8000

.endmacro

; ---------------------------------------------------------------------------

.macro RETURN_FROM_BANK_COMMAND

	SET bank_command_346, #$FF
	SET bank_to_344, bank_from_343
	JMP	bank_switch_8000

.endmacro

; ---------------------------------------------------------------------------

.macro UPLOAD_SPRITE_TO_PPU_FUNCS sprites_ptr

upload_sprite_to_ppu:
	GET_PTR_FROM_TBL sprites_ptr, entry_idx_300
	SET_WORD_TO_WORD_CONST ptr_0, _PPU_PAT_TBL_1
	JSR	upload_data_to_ppu
	RTS

	UPLOAD_DATA_TO_PPU_FUNC

.endmacro

; ---------------------------------------------------------------------------

.macro UPLOAD_DATA_TO_PPU_FUNC

upload_data_to_ppu:
	LDY	#0
	SET tilemapWidth_308, {(data_2),Y}
	ADD_WORD_TO_WORD_IMM data_2, $2

	LDX	#0
	PPU_WRITE_DATA_FUNC tilemapWidth_308
	RTS

.endmacro

; ---------------------------------------------------------------------------

.macro PPU_WRITE_DATA_FUNC data_count

set_ppu_addr:
	SET _PPU_ADDR, ptr_1
	SET _PPU_ADDR, ptr_0

	LDY	#0
write_ppu_data:
	SET_INY _PPU_DATA, {(data_2),Y}
	IF_Y_GREATER_CMP #$10, write_ppu_data

	ADD_BYTE_TO_WORD ptr_0, #$10
	ADD_WORD_TO_WORD_IMM data_2, $10

	INX
	IF_X_GREATER_CMP data_count, set_ppu_addr

.endmacro

; ---------------------------------------------------------------------------