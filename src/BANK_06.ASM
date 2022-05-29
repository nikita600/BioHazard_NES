;BANK_06 (Sprites)
;* =  $8000

	.include "includes/ram.inc"
	.include "includes/macros.inc"

; =============== S U B	R O U T	I N E =======================================

	BANK_SWITCH_FUNC switch_case_8035

switch_case_8035:
	set bank_prev_345, bank_to_344
	set bank_switch_flag_6C, #$88 
	if_a_equal_cmp_addr bank_command_346, #0, loc_68047
	RTS
; ---------------------------------------------------------------------------

loc_68047:
	JSR	upload_gfx_to_ppu_6F863
	JMP	loc_6804D
; ---------------------------------------------------------------------------

loc_6804D:
	RETURN_FROM_BANK_COMMAND
; End of function bank_switch_func

; ---------------------------------------------------------------------------
GFX_6805B:
	.include "sprites/bank_06_sprites.asm"

; =============== S U B	R O U T	I N E =======================================

upload_gfx_to_ppu_6F863:

	GET_PTR_FROM_TBL GFX_6805B, entry_idx_300
	
	set_word_to_word_const ptr_0, _PPU_PAT_TBL_1

	JSR	upload_gfx_to_ppu_6F89C
	RTS
; End of function upload_gfx_to_ppu_6F863

; =============== S U B	R O U T	I N E =======================================

upload_gfx_to_ppu_6F89C:
	LDY	#0
	set tilemapWidth_308, {(data_2),Y}

	add_word_to_word_imm data_2, $2

	LDX	#0

loc_6F8B2:
	set _PPU_ADDR, ptr_1
	set _PPU_ADDR, ptr_0
	LDY	#0

loc_6F8BE:
	set_iny _PPU_DATA, {(data_2),Y}
	if_y_greater_cmp #$10, loc_6F8BE
	
	add_byte_to_word ptr_0, #$10

	add_word_to_word_imm data_2, $10

	INX
	if_x_greater_cmp tilemapWidth_308, loc_6F8B2
	RTS
; End of function upload_gfx_to_ppu_6F89C

Common_Code_06:
	.include "common/common_funcs.asm"

; ---------------------------------------------------------------------------
	.include "garbage/bank_06_garbage.asm"

Vectors_06:
	.WORD NMI_FD53
	.WORD GFX_6805B
	.WORD return_FDCA
; end of 'BANK_06'

; ===========================================================================