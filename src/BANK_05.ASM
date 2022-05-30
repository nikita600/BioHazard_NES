;BANK_05 (Sprites)
;* =  $8000

	.include "includes/ram.inc"
	.include "includes/macros.inc"

; =============== S U B	R O U T	I N E =======================================

	BANK_SWITCH_FUNC switch_case_8035

switch_case_8035:
	SET bank_prev_345, bank_to_344
	SET bank_switch_flag_6C, #$88 
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

	SET_WORD_TO_WORD_CONST ptr_0, _PPU_PAT_TBL_1

	JSR	upload_gfx_5F0CC
	RTS
; End of function upload_gfx_to_ppu_5F093

; =============== S U B	R O U T	I N E =======================================

upload_gfx_5F0CC:
	LDY	#0
	SET tilemapWidth_308, {(data_2),Y}
	ADD_WORD_TO_WORD_IMM data_2, $2

	LDX	#0
	PPU_WRITE_DATA_FUNC tilemapWidth_308
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
