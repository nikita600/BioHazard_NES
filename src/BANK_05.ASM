; Segment type:Pure code
	;.segment BANK_05 (Sprites)
	;* =  $8000

	.include "includes/ram.inc"
	.include "includes/macros.inc"

; =============== S U B	R O U T	I N E =======================================

bank_switch_8000:
	.include "common/bank_switch_func.asm"

switch_case_8035:
	set bank_prev_345, bank_to_344
	set bank_switch_flag_6C, #$88 
	if_equal_cmp_addr bank_command_346, #0, loc_58047
	RTS
; ---------------------------------------------------------------------------

loc_58047:
	JSR	upload_gfx_to_ppu_5F093
	JMP	loc_5804D
; ---------------------------------------------------------------------------

loc_5804D:
	set bank_command_346, #$FF
	set bank_to_344, bank_from_343
	JMP	bank_switch_8000
; End of function bank_switch_8000

; ---------------------------------------------------------------------------

Sprites3_5805B:
	.include "sprites/bank_05_sprites.asm"

; =============== S U B	R O U T	I N E =======================================

upload_gfx_to_ppu_5F093:
	
	set_ptr Sprites3_5805B

	set data_2, entry_idx_300
	set data_3, #0
	mult_word_by_2 data_2

	add_to_byte_clc ptr_0, data_2
	add_to_byte ptr_1, data_3

	LDY	#0
	set_iny data_2, {(ptr_0),Y}
	set data_3, {(ptr_0),Y}

	set_ptr _PPU_PAT_TBL_1

	JSR	upload_gfx_5F0CC
	RTS
; End of function upload_gfx_to_ppu_5F093

; =============== S U B	R O U T	I N E =======================================

upload_gfx_5F0CC:
	LDY	#0
	set tilemapWidth_308, {(data_2),Y}

	add_to_data $2

	LDX	#0

loc_5F0E2:
	set _PPU_ADDR, ptr_1
	set _PPU_ADDR, ptr_0
	LDY	#0

loc_5F0EE:
	set_iny _PPU_DATA, {(data_2),Y}
	CPY	#$10
	BCC	loc_5F0EE
	
	add_to_byte_clc ptr_0, #$10
	add_to_byte ptr_1, #0

	add_to_data $10

	INX
	CPX	tilemapWidth_308
	BCC	loc_5F0E2
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
