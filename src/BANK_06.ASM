; Segment type:Pure code
	;.segment BANK_06 (Sprites)
	;* =  $8000

	.include "includes/ram.inc"
	.include "includes/macros.inc"

; =============== S U B	R O U T	I N E =======================================


bank_switch_8000:
	.include "common/bank_switch_func.asm"

switch_case_8035:
	set bank_prev_345, bank_to_344
	set bank_switch_flag_6C, #$88 
	LDA	bank_command_346
	CMP	#0
	BEQ	loc_68047
	RTS
; ---------------------------------------------------------------------------

loc_68047:
	JSR	upload_gfx_to_ppu_6F863
	JMP	loc_6804D
; ---------------------------------------------------------------------------

loc_6804D:
	set bank_command_346, #$FF
	set bank_to_344, bank_from_343
	JMP	bank_switch_8000
; End of function bank_switch_8000

; ---------------------------------------------------------------------------
GFX_6805B:
	.include "sprites/bank_06_sprites.asm"

; =============== S U B	R O U T	I N E =======================================


upload_gfx_to_ppu_6F863:
	
	set_ptr GFX_6805B

	set data_2, entry_idx_300
	set data_3, #0
	ASL	data_2
	ROL	data_3

	add_to_byte_clc ptr_0, data_2

	add_to_byte ptr_1, data_3


	LDY	#0
	set_iny data_2, {(ptr_0),Y}
	set data_3, {(ptr_0),Y}
	
	set_ptr _PPU_PAT_TBL_1

	JSR	upload_gfx_to_ppu_6F89C
	RTS
; End of function upload_gfx_to_ppu_6F863


; =============== S U B	R O U T	I N E =======================================


upload_gfx_to_ppu_6F89C:
	LDY	#0
	set tilemapWidth_308, {(data_2),Y}

	add_to_data $2

	LDX	#0

loc_6F8B2:
	set _PPU_ADDR, ptr_1
	set _PPU_ADDR, ptr_0
	LDY	#0

loc_6F8BE:
	set_iny _PPU_DATA, {(data_2),Y}
	CPY	#$10
	BCC	loc_6F8BE
	
	add_to_byte_clc ptr_0, #$10

	add_to_byte ptr_1, #0


	add_to_data $10

	INX
	CPX	tilemapWidth_308
	BCC	loc_6F8B2
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