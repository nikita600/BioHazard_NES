; Segment type:Pure code
	;.segment BANK_04 (Text)
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
	BEQ	loc_48053
	CMP	#1
	BEQ	loc_48059
	CMP	#2
	BEQ	loc_48083
	CMP	#3
	BEQ	loc_48089
	RTS
; ---------------------------------------------------------------------------

loc_48053:
	JSR	load_palette_4F323
	JMP	loc_4808F
; ---------------------------------------------------------------------------

loc_48059:
	LDA	inv_sprite_idx_31C
	CMP	#$2F 
	BCC	loc_4807D
	to_stack bank_from_343

exec_b13_c1_48064:
	set bank_command_346, #1
	set bank_to_344, #banks_13
	set bank_from_343, #4
	JSR	bank_switch_8000

loc_48076:
	from_stack bank_from_343
	JMP	loc_4808F
; ---------------------------------------------------------------------------

loc_4807D:
	JSR	load_inventory_sprite_4F372
	JMP	loc_4808F
; ---------------------------------------------------------------------------

loc_48083:
	JSR	load_inventory_sprite_tilemap_4F443
	JMP	loc_4808F
; ---------------------------------------------------------------------------

loc_48089:
	JSR	sub_4F3B3
	JMP	loc_4808F
; ---------------------------------------------------------------------------

loc_4808F:
	set bank_command_346, #$FF
	set bank_to_344, bank_from_343
	JMP	bank_switch_8000
; End of function bank_switch_8000

; ---------------------------------------------------------------------------
Palette_4809D:
	.include "sprites/bank_04_palettes.asm"

TilemapsUnk_8445:
	.include "sprites/bank_04_tilemaps.asm"

InvItemSprites_9817:
	.include "sprites/bank_04_sprites.asm"

; =============== S U B	R O U T	I N E =======================================


load_palette_4F323:

	set_ptr Palette_4809D

	set data_2, #0
	LDA	inv_sprite_idx_31C
	mult_a_by_2
	ROL	data_2
	CLC
	ADC	ptr_0
	STA	ptr_0
	add_to_byte ptr_1, data_2

	LDY	#0
	set_iny data_2, {(ptr_0),Y}
	set data_3, {(ptr_0),Y}

	set_ptr _PPU_PALETTE

	LDA	sprPalIdx_319
	mult_a_by_4
	TAX
	CLC
	ADC	ptr_0
	STA	ptr_0
	add_to_byte ptr_1, #0

	LDY	#0

loc_4F366:
	set_inx {palette_bg_321,X}, {(data_2),Y}
	INY
	CPY	#4
	BCC	loc_4F366
	RTS
; End of function load_palette_4F323


; =============== S U B	R O U T	I N E =======================================


load_inventory_sprite_4F372:
	JSR	get_inventory_sprite_ptr_4F3E7

loc_4F375:
	set _PPU_ADDR, ptr_1
	set _PPU_ADDR, ptr_0
	LDY	#0

loc_4F381:
	set_iny _PPU_DATA, {(data_2),Y}
	CPY	#$10
	BCC	loc_4F381

	add_to_data $10

	add_to_byte_clc ptr_0, #$10
	add_to_byte ptr_1, #0


	DEC	inv_spr_dscr1_30C
	LDA	inv_spr_dscr1_30C
	CMP	#0
	BEQ	locret_4F3B2
	JMP	loc_4F375
; ---------------------------------------------------------------------------

locret_4F3B2:
	RTS
; End of function load_inventory_sprite_4F372


; =============== S U B	R O U T	I N E =======================================


sub_4F3B3:
	JSR	get_inventory_sprite_ptr_4F3E7

loc_4F3B6:
	LDA	inv_spr_dscr1_30C
	CMP	#4
	BCC	loc_4F3CD
	BEQ	loc_4F3CD
	SEC
	SBC	#4
	STA	inv_spr_dscr1_30C
	set tilemapTypeUnk_30B, #$40 
	JMP	loc_4F3DC
; ---------------------------------------------------------------------------

loc_4F3CD:
	LDA	inv_spr_dscr1_30C
	mult_a_by_16
	STA	tilemapTypeUnk_30B
	set inv_spr_dscr1_30C, #0

loc_4F3DC:
	JSR	sub_4F583
	LDA	inv_spr_dscr1_30C
	CMP	#0
	BNE	loc_4F3B6
	RTS
; End of function sub_4F3B3


; =============== S U B	R O U T	I N E =======================================


get_inventory_sprite_ptr_4F3E7:

	set_ptr InvItemSprites_9817

get_offset_4F3EF:
	set data_2, #0
	LDA	inv_sprite_idx_31C
	mult_a_by_2
	ROL	data_2
	CLC
	ADC	ptr_0
	STA	ptr_0
	add_to_byte ptr_1, data_2


get_sprite_ptr_4F404:
	LDY	#0
	set_iny data_2, {(ptr_0),Y}
	set data_3, {(ptr_0),Y}

get_sprite_descr_4F40F:
	LDY	#0
	set inv_spr_dscr1_30C, {(data_2),Y}

skip_2_byte_4f416:

	add_to_data $2

	set ptr_0, byte_31E
	set ptr_1, #0
	ASL	ptr_0
	ROL	ptr_1
	ASL	ptr_0
	ROL	ptr_1
	ASL	ptr_0
	ROL	ptr_1
	ASL	ptr_0
	ROL	ptr_1
	LDA	ptr_1
	ORA	#$10
	STA	ptr_1
	RTS
; End of function get_inventory_sprite_ptr_4F3E7


; =============== S U B	R O U T	I N E =======================================


load_inventory_sprite_tilemap_4F443:

	set_ptr TilemapsUnk_8445

get_offset_4F44B:
	set data_2, #0
	LDA	inv_sprite_idx_31C
	mult_a_by_2
	ROL	data_2
	CLC
	ADC	ptr_0
	STA	ptr_0
	add_to_byte ptr_1, data_2


get_ptr_4F460:
	LDY	#0
	set_iny data_2, {(ptr_0),Y}
	set data_3, {(ptr_0),Y}

get_tilemap_offset_4F46B:
	set ptr_0, #0
	LDA	inv_itemPrev_idx_31D
	mult_a_by_2
	ROL	ptr_0
	CLC
	ADC	data_2
	STA	data_2
	add_to_byte data_3, ptr_0


get_tilemap_ptr_4F480:
	LDY	#0
	set_iny ptr_0, {(data_2),Y}
	set ptr_1, {(data_2),Y}

get_tilemap_descr_4F48B:
	LDY	#0
	set_iny tilemapWidth_308, {(ptr_0),Y}
	set tilemapHeight_30A, {(ptr_0),Y}

	add_to_byte_clc ptr_0, #2
	add_to_byte ptr_1, #0


	set data_2, #0
	set data_3, #$20 
	LDA	byte_36E
	mult_a_by_4
	CLC
	ADC	data_3
	STA	data_3
	LDY	ppu_unk_byte_309

loc_4F4BA:
	CPY	#0
	BEQ	loc_4F4CF

	add_to_data $20

	DEY
	JMP	loc_4F4BA
; ---------------------------------------------------------------------------

loc_4F4CF:
	add_to_byte_clc data_2, tilemap_size_307
	add_to_byte data_3, #0

	set inv_spr_dscr1_30C, #0
	STA	ppu_unk_byte_309
	LDA	#$32 

loc_4F4E7:
	CMP	tilemapWidth_308
	BCC	loc_4F4F6
	SEC
	SBC	tilemapWidth_308
	INC	inv_spr_dscr1_30C
	JMP	loc_4F4E7
; ---------------------------------------------------------------------------

loc_4F4F6:
	LDA	tilemapHeight_30A

loc_4F4F9:
	CMP	inv_spr_dscr1_30C
	BCC	loc_4F50B
	SEC
	SBC	inv_spr_dscr1_30C
	STA	tilemapHeight_30A
	INC	ppu_unk_byte_309
	JMP	loc_4F4F9
; ---------------------------------------------------------------------------

loc_4F50B:
			; load_inventory_sprite_tilemap_4F443+D6j
	LDA	ppu_unk_byte_309
	BEQ	loc_4F51B
	JSR	sub_4F527
	DEC	ppu_unk_byte_309
	LDA	ppu_unk_byte_309
	BNE	loc_4F50B

loc_4F51B:
	LDA	tilemapHeight_30A
	BEQ	locret_4F526
	STA	inv_spr_dscr1_30C
	JSR	sub_4F527

locret_4F526:
	RTS
; End of function load_inventory_sprite_tilemap_4F443


; =============== S U B	R O U T	I N E =======================================


sub_4F527:
			; load_inventory_sprite_tilemap_4F443+E0p
	set tilemapTypeUnk_30B, #0
	set has_ppu_data_to_upload_6F, #0
	LDX	#0
	set_inx {ppu_data_70,X}, inv_spr_dscr1_30C

loc_4F538:
	set_inx {ppu_data_70,X}, tilemapWidth_308
	set_inx {ppu_data_70,X}, data_3
	set_inx {ppu_data_70,X}, data_2
	LDY	#0

loc_4F54A:
	LDA	(ptr_0),Y
	CLC
	ADC	byte_31E
	STA	ppu_data_70,X
	INX
	INY
	CPY	tilemapWidth_308
	BCC	loc_4F54A

	add_to_data $20

	add_to_byte_clc ptr_0, tilemapWidth_308
	add_to_byte ptr_1, #0


	INC	tilemapTypeUnk_30B
	LDA	tilemapTypeUnk_30B
	CMP	inv_spr_dscr1_30C
	BCC	loc_4F538
	JSR	wait_for_ppu_data_upload_FC8C
	RTS
; End of function sub_4F527


; =============== S U B	R O U T	I N E =======================================


sub_4F583:
	set has_ppu_data_to_upload_6F, #0
	LDX	#0
	set_inx {ppu_data_70,X}, #1
	set_inx {ppu_data_70,X}, tilemapTypeUnk_30B
	set_inx {ppu_data_70,X}, ptr_1
	set_inx {ppu_data_70,X}, ptr_0
	LDY	#0

loc_4F5A0:
	set_inx {ppu_data_70,X}, {(data_2),Y}
	INY
	CPY	tilemapTypeUnk_30B
	BCC	loc_4F5A0
	add_to_byte_clc data_2, tilemapTypeUnk_30B
	add_to_byte data_3, #0


	add_to_byte_clc ptr_0, tilemapTypeUnk_30B
	add_to_byte ptr_1, #0

	
	JSR	wait_for_ppu_data_upload_FC8C
	RTS
; End of function sub_4F583



Common_Code_04:
	.include "common/common_funcs.asm"

; ---------------------------------------------------------------------------
	.include "garbage/bank_04_garbage.asm"

Vectors_04:
	.WORD NMI_FD53
	.WORD Palette_4809D
	.WORD return_FDCA
; end of 'BANK_04'

; ===========================================================================