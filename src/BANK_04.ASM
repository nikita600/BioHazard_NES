; Segment type:Pure code
	;.segment BANK_04 (Text)
	;* =  $8000

	.include "includes/ram.inc"
	.include "includes/macros.inc"

; =============== S U B	R O U T	I N E =======================================


bank_switch_8000:
	.include "common/bank_switch_func.asm"

switch_case_8035:
	LDA	bank_to_344
	STA	bank_prev_345
	LDA	#$88 
	STA	bank_switch_flag_6C
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
	LDA	#1
	STA	bank_command_346
	LDA	#banks_13
	STA	bank_to_344
	LDA	#4
	STA	bank_from_343
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
	LDA	#$FF
	STA	bank_command_346
	LDA	bank_from_343
	STA	bank_to_344
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

	LDA	#0
	STA	data_2
	LDA	inv_sprite_idx_31C
	ASL	A
	ROL	data_2
	CLC
	ADC	ptr_0
	STA	ptr_0
	LDA	ptr_1
	ADC	data_2
	STA	ptr_1
	LDY	#0
	LDA	(ptr_0),Y
	STA	data_2
	INY
	LDA	(ptr_0),Y
	STA	data_3

	set_ptr _PPU_PALETTE

	LDA	sprPalIdx_319
	ASL	A
	ASL	A
	TAX
	CLC
	ADC	ptr_0
	STA	ptr_0
	LDA	ptr_1
	ADC	#0
	STA	ptr_1
	LDY	#0

loc_4F366:
	LDA	(data_2),Y
	STA	palette_bg_321,X ; "����������������"
	INX
	INY
	CPY	#4
	BCC	loc_4F366
	RTS
; End of function load_palette_4F323


; =============== S U B	R O U T	I N E =======================================


load_inventory_sprite_4F372:
	JSR	get_inventory_sprite_ptr_4F3E7

loc_4F375:
	LDA	ptr_1
	STA	_PPU_ADDR
	LDA	ptr_0
	STA	_PPU_ADDR
	LDY	#0

loc_4F381:
	LDA	(data_2),Y
	STA	_PPU_DATA
	INY
	CPY	#$10
	BCC	loc_4F381

	add_to_data $10

	LDA	ptr_0
	CLC
	ADC	#$10
	STA	ptr_0
	LDA	ptr_1
	ADC	#0
	STA	ptr_1

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
	LDA	#$40 
	STA	tilemapTypeUnk_30B
	JMP	loc_4F3DC
; ---------------------------------------------------------------------------

loc_4F3CD:
	LDA	inv_spr_dscr1_30C
	ASL	A
	ASL	A
	ASL	A
	ASL	A
	STA	tilemapTypeUnk_30B
	LDA	#0
	STA	inv_spr_dscr1_30C

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
	LDA	#0
	STA	data_2
	LDA	inv_sprite_idx_31C
	ASL	A
	ROL	data_2
	CLC
	ADC	ptr_0
	STA	ptr_0
	LDA	ptr_1
	ADC	data_2
	STA	ptr_1

get_sprite_ptr_4F404:
	LDY	#0
	LDA	(ptr_0),Y
	STA	data_2
	INY
	LDA	(ptr_0),Y
	STA	data_3

get_sprite_descr_4F40F:
	LDY	#0
	LDA	(data_2),Y
	STA	inv_spr_dscr1_30C

skip_2_byte_4f416:

	add_to_data $2

	LDA	byte_31E
	STA	ptr_0
	LDA	#0
	STA	ptr_1
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
	LDA	#0
	STA	data_2
	LDA	inv_sprite_idx_31C
	ASL	A
	ROL	data_2
	CLC
	ADC	ptr_0
	STA	ptr_0
	LDA	ptr_1
	ADC	data_2
	STA	ptr_1

get_ptr_4F460:
	LDY	#0
	LDA	(ptr_0),Y
	STA	data_2
	INY
	LDA	(ptr_0),Y
	STA	data_3

get_tilemap_offset_4F46B:
	LDA	#0
	STA	ptr_0
	LDA	inv_itemPrev_idx_31D
	ASL	A
	ROL	ptr_0
	CLC
	ADC	data_2
	STA	data_2
	LDA	data_3
	ADC	ptr_0
	STA	data_3

get_tilemap_ptr_4F480:
	LDY	#0
	LDA	(data_2),Y
	STA	ptr_0
	INY
	LDA	(data_2),Y
	STA	ptr_1

get_tilemap_descr_4F48B:
	LDY	#0
	LDA	(ptr_0),Y
	STA	tilemapWidth_308
	INY
	LDA	(ptr_0),Y
	STA	tilemapHeight_30A

	LDA	ptr_0
	CLC
	ADC	#2
	STA	ptr_0
	LDA	ptr_1
	ADC	#0
	STA	ptr_1

	LDA	#0
	STA	data_2
	LDA	#$20 
	STA	data_3
	LDA	byte_36E
	ASL	A
	ASL	A
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
	LDA	data_2
	CLC
	ADC	tilemap_size_307
	STA	data_2
	LDA	data_3
	ADC	#0
	STA	data_3
	LDA	#0
	STA	inv_spr_dscr1_30C
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
	LDA	#0
	STA	tilemapTypeUnk_30B
	LDA	#0
	STA	has_ppu_data_to_upload_6F
	LDX	#0
	LDA	inv_spr_dscr1_30C
	STA	ppu_data_70,X
	INX

loc_4F538:
	LDA	tilemapWidth_308
	STA	ppu_data_70,X
	INX
	LDA	data_3
	STA	ppu_data_70,X
	INX
	LDA	data_2
	STA	ppu_data_70,X
	INX
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

	LDA	ptr_0
	CLC
	ADC	tilemapWidth_308
	STA	ptr_0
	LDA	ptr_1
	ADC	#0
	STA	ptr_1

	INC	tilemapTypeUnk_30B
	LDA	tilemapTypeUnk_30B
	CMP	inv_spr_dscr1_30C
	BCC	loc_4F538
	JSR	wait_for_ppu_data_upload_FC8C
	RTS
; End of function sub_4F527


; =============== S U B	R O U T	I N E =======================================


sub_4F583:
	LDA	#0
	STA	has_ppu_data_to_upload_6F
	LDX	#0
	LDA	#1
	STA	ppu_data_70,X
	INX
	LDA	tilemapTypeUnk_30B
	STA	ppu_data_70,X
	INX
	LDA	ptr_1
	STA	ppu_data_70,X
	INX
	LDA	ptr_0
	STA	ppu_data_70,X
	INX
	LDY	#0

loc_4F5A0:
	LDA	(data_2),Y
	STA	ppu_data_70,X
	INX
	INY
	CPY	tilemapTypeUnk_30B
	BCC	loc_4F5A0
	LDA	data_2
	CLC
	ADC	tilemapTypeUnk_30B
	STA	data_2
	LDA	data_3
	ADC	#0
	STA	data_3

	LDA	ptr_0
	CLC
	ADC	tilemapTypeUnk_30B
	STA	ptr_0
	LDA	ptr_1
	ADC	#0
	STA	ptr_1
	
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