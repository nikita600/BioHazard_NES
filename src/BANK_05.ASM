;BANK_05 (Sprites)
;* =  $8000

	.include "includes/ram.inc"
	.include "includes/macros.inc"

; =============== S U B	R O U T	I N E =======================================

	BANK_SWITCH_FUNC switch_case_8035

switch_case_8035:
	set bank_prev_345, bank_to_344
	set bank_switch_flag_6C, #$88 
	IF_A_EQUAL_CMP_ADDR bank_command_346, #0, loc_58047
	RTS
; ---------------------------------------------------------------------------

loc_58047:
	JSR	upload_gfx_to_ppu_5F093
	JMP	loc_5804D
; ---------------------------------------------------------------------------

loc_5804D:
	RETURN_FROM_BANK_COMMAND
; End of function bank_switch_func

; ---------------------------------------------------------------------------

Sprites3_5805B:
	.include "sprites/bank_05_sprites.asm"

; =============== S U B	R O U T	I N E =======================================

upload_gfx_to_ppu_5F093:

	GET_PTR_FROM_TBL Sprites3_5805B, entry_idx_300

	set_word_to_word_const ptr_0, _PPU_PAT_TBL_1

	JSR	upload_gfx_5F0CC
	RTS
; End of function upload_gfx_to_ppu_5F093

; =============== S U B	R O U T	I N E =======================================

upload_gfx_5F0CC:
	LDY	#0
	set tilemapWidth_308, {(data_2),Y}

	ADD_WORD_TO_WORD_IMM data_2, $2

	LDX	#0

loc_5F0E2:
	set _PPU_ADDR, ptr_1
	set _PPU_ADDR, ptr_0
	LDY	#0

loc_5F0EE:
	set_iny _PPU_DATA, {(data_2),Y}
	IF_Y_GREATER_CMP #$10, loc_5F0EE
	
	ADD_BYTE_TO_WORD ptr_0, #$10

	ADD_WORD_TO_WORD_IMM data_2, $10

	INX
	IF_X_GREATER_CMP tilemapWidth_308, loc_5F0E2
	RTS
; End of function upload_gfx_5F0CC

Common_Code_05:
	.include "common/common_funcs.asm"

; ---------------------------------------------------------------------------

	.include "garbage/bank_05_garbage.asm"

Vectors_05:
	.WORD NMI_FD53
	.WORD Sprites3_5805B
	.WORD return_FDCA
; end of 'BANK_05'

; ===========================================================================
