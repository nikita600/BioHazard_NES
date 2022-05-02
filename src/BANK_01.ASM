; Segment type:Pure code


; =============== S U B	R O U T	I N E =======================================

; SPRITE_BANK

    .include "includes/ram.inc"
	.include "includes/macros.inc"

bank_switch_8000:
	.include "common/bank_switch_func.asm"

switch_case_8035:
	set bank_prev_345, bank_to_344
	set bank_switch_flag_6C, #$88 
	if_equal_cmp_addr bank_command_346, #0, loc_18053
	if_equal_cmp #1, loc_18059
	if_equal_cmp #2, loc_1805F
	if_equal_cmp #3, loc_18068
	RTS
; ---------------------------------------------------------------------------

loc_18053:
	JSR	load_tiles_state_1F25D
	JMP	loc_1806B
; ---------------------------------------------------------------------------

loc_18059:
	JSR	load_obj_tilemap_1F264
	JMP	loc_1806B
; ---------------------------------------------------------------------------

loc_1805F:
	JSR	load_sprite_to_vram_1F36D
	JSR	load_sprite_tilemap_1F3B8
	JMP	loc_1806B
; ---------------------------------------------------------------------------

loc_18068:
	JMP	loc_1806B
; ---------------------------------------------------------------------------

loc_1806B:
	set bank_command_346, #$FF
	set bank_to_344, bank_from_343
	JMP	bank_switch_8000
; End of function bank_switch_8000

; ---------------------------------------------------------------------------
SpritePalettes_18079:
	.include "sprites/bank_01_palettes.asm"
	
SpriteTileMaps:
	.include "sprites/bank_01_tilemaps.asm"

Sprites:
	.include "sprites/bank_01_sprites.asm"

; =============== S U B	R O U T	I N E =======================================

load_tiles_state_1F25D:
	JSR	load_palettes_to_ram_1F268
	JSR	upload_tiles_to_ppu_1F32A
	RTS
; End of function load_tiles_state_1F25D

; =============== S U B	R O U T	I N E =======================================

load_obj_tilemap_1F264:
	JSR	sub_1F3B1
	RTS
; End of function load_obj_tilemap_1F264

; =============== S U B	R O U T	I N E =======================================

load_palettes_to_ram_1F268:
	if_equal_cmp_addr sprite_type_306, #0, loc_1F2C3

palette0_F26F:
	set sprPalIdx_319, #0
	JSR	get_sprite_palette_ptr_1F2F3
	JSR	copy_sprite_palette_to_ram_1F316

palette1_F27A:
	set sprPalIdx_319, #1
	JSR	get_sprite_palette_ptr_1F2F3

	add_to_data $4

	JSR	copy_sprite_palette_to_ram_1F316

palette2_F292:
	set sprPalIdx_319, #2
	JSR	get_sprite_palette_ptr_1F2F3

	add_to_data $8

	JSR	copy_sprite_palette_to_ram_1F316

palette3_F2AA:
	set sprPalIdx_319, #3
	JSR	get_sprite_palette_ptr_1F2F3
	
	add_to_data $C

	JSR	copy_sprite_palette_to_ram_1F316
	RTS
; ---------------------------------------------------------------------------

loc_1F2C3:
	set objectIdx_318, #0
	STA	sprPalIdx_319
	JSR	get_sprite_palette_ptr_1F2F3
	JSR	copy_sprite_palette_to_ram_1F316
	LDX	#0

loop_1F2D3:
	CPX	objArraySize_373
	BEQ	return_1F2F2
	set objectIdx_318, {objIdxArray_375,X}
	set sprPalIdx_319, {objPalIdxArray_3F7,X}
	TXA
	PHA
	JSR	get_sprite_palette_ptr_1F2F3
	JSR	copy_sprite_palette_to_ram_1F316
	from_stack_to_x
	INX
	JMP	loop_1F2D3
; ---------------------------------------------------------------------------

return_1F2F2:
	RTS
; End of function load_palettes_to_ram_1F268

; =============== S U B	R O U T	I N E =======================================

get_sprite_palette_ptr_1F2F3:
	set_ptr SpritePalettes_18079

get_offset_F2FB:
	LDA	objectIdx_318
	mult_a_by_2
	add_to_a ptr_0
	STA	ptr_0
	add_to_byte ptr_1, #0

get_ptr_F30A:
	LDY	#0
	set_iny data_2, {(ptr_0),Y}
	set data_3, {(ptr_0),Y}
	RTS
; End of function get_sprite_palette_ptr_1F2F3

; =============== S U B	R O U T	I N E =======================================

copy_sprite_palette_to_ram_1F316:
	LDY	#0
	LDA	sprPalIdx_319
	mult_a_by_4
	TAX

loc_1F31E:
	set_inx {sprite_palette_331,X}, {(data_2),Y}
	INY
	CPY	#4
	BCC	loc_1F31E
	RTS
; End of function copy_sprite_palette_to_ram_1F316

; =============== S U B	R O U T	I N E =======================================

upload_tiles_to_ppu_1F32A:
	if_equal_cmp_addr sprite_type_306, #0, loc_1F33D
	set sprite_secondByte_31B, #0
	JSR	load_sprite_to_vram_1F36D
	JSR	upload_to_ppu_1F6D1
	RTS
; ---------------------------------------------------------------------------

loc_1F33D:
	set objectIdx_318, #0
	STA	sprite_secondByte_31B
	JSR	load_sprite_to_vram_1F36D
	JSR	upload_to_ppu_1F6D1
	LDX	#0

loc_1F34D:
	CPX	objArraySize_373
	BEQ	locret_1F36C
	set objectIdx_318, {objIdxArray_375,X}
	set sprite_secondByte_31B, {unk_401,X}
	TXA
	PHA
	JSR	load_sprite_to_vram_1F36D
	JSR	upload_to_ppu_1F6D1
	from_stack_to_x
	INX
	JMP	loc_1F34D
; ---------------------------------------------------------------------------

locret_1F36C:
	RTS
; End of function upload_tiles_to_ppu_1F32A

; =============== S U B	R O U T	I N E =======================================

load_sprite_to_vram_1F36D:
	set_ptr_iny Sprites

get_offset_F376:; spriteIdx
	LDA	objectIdx_318
	mult_a_by_2
	add_to_a ptr_0
	STA	ptr_0
	add_to_byte ptr_1, #0

get_ptr_F385:
	LDY	#0
	set_iny data_2, {(ptr_0),Y}
	set data_3, {(ptr_0),Y}

get_sprite_length_F390:
	LDY	#0
	set sprite_length_30F, {(data_2),Y}

get_sprite_descr2_F397:
	set ptr_0, sprite_secondByte_31B
	set ptr_1, #0
	mult_word_by_2 ptr_0
	mult_word_by_2 ptr_0
	mult_word_by_2 ptr_0
	mult_word_by_2 ptr_0
	RTS
; End of function load_sprite_to_vram_1F36D

; =============== S U B	R O U T	I N E =======================================

sub_1F3B1:
	JSR	load_sprite_tilemap_1F3B8
	JSR	sub_1F416
	RTS
; End of function sub_1F3B1

; =============== S U B	R O U T	I N E =======================================

load_sprite_tilemap_1F3B8:
	set_iny data_2, #$5F 
	set data_3, #$82 

get_container_offset_F3C1:
	LDA	objectIdx_318
	mult_a_by_2
	add_to_a data_2
	STA	data_2
	add_to_byte data_3, #0

get_container_ptr_F3D0:
	LDY	#0
	set_iny ptr_0, {(data_2),Y}
	set ptr_1, {(data_2),Y}

get_tilemap_offset_F3DB:
	LDA	objMapIdx_316
	mult_a_by_2
	add_to_a ptr_0
	STA	ptr_0
	add_to_byte ptr_1, #0

get_tilemap_ptr_F3EA:
	LDY	#0
	set_iny data_2, {(ptr_0),Y}
	set data_3, {(ptr_0),Y}

get_width_F3F5:
	LDY	#0
	set_iny tilemapWidth_308, {(data_2),Y}

get_height_F3FD:
	set_iny tilemapHeight_30A, {(data_2),Y}

get_frame_count_F403:
	set tilemapFrameCount_30D, {(data_2),Y}

add_offset_F408:
	add_to_data $3
	RTS
; End of function load_sprite_tilemap_1F3B8

; =============== S U B	R O U T	I N E =======================================

sub_1F416:
	LDA	#0
	add_to_a byte_31A
	STA	ptr_0
	LDA	#2
	ADC	#0
	STA	ptr_1
	LDA	byte_317
	AND	#$40 
	if_not_equal_cmp #$40, loc_1F430
	JMP	loc_1F4CA
; ---------------------------------------------------------------------------

loc_1F430:
	LDA	byte_317
	AND	#$80 
	if_not_equal_cmp #$80, loc_1F43C
	JMP	loc_1F559
; ---------------------------------------------------------------------------

loc_1F43C:
	LDX	#0
	LDY	#0

loc_1F440:
	to_stack byte_36A
	to_stack byte_36B
	set tilemapTypeUnk_30B, #0

loc_1F44D:
	JSR	sub_1F5FF
	set_iny {(ptr_0),Y}, ppu_unk_byte_309
	TYA
	PHA
	LDY	tilemapTypeUnk_30B
	LDA	(data_2),Y
	add_to_a sprite_secondByte_31B
	STA	inv_spr_dscr1_30C
	from_stack_to_y
	set_iny {(ptr_0),Y}, inv_spr_dscr1_30C
	set_iny {(ptr_0),Y}, byte_317
	set_iny {(ptr_0),Y}, tilemap_size_307
	add_to_byte_clc byte_36A, #8
	add_to_byte byte_36B, #0
	INC	tilemapTypeUnk_30B
	if_greater_cmp_addr tilemapTypeUnk_30B, tilemapWidth_308, loc_1F44D
	from_stack byte_36B
	from_stack byte_36A
	add_to_byte_clc data_2, tilemapWidth_308
	add_to_byte data_3, #0
	add_to_byte_clc byte_366, #8
	add_to_byte byte_367, #0
	INX
	CPX	tilemapHeight_30A
	BEQ	loc_1F4C4
	JMP	loc_1F440
; ---------------------------------------------------------------------------

loc_1F4C4:
	set byte_317, #0
	RTS
; ---------------------------------------------------------------------------

loc_1F4CA:
	LDX	#0
	LDY	#0

loc_1F4CE:
	to_stack byte_36A
	to_stack byte_36B
	set tilemapTypeUnk_30B, tilemapWidth_308

loc_1F4DC:
	JSR	sub_1F5FF
	set_iny {(ptr_0),Y}, ppu_unk_byte_309
	TYA
	PHA
	LDY	tilemapTypeUnk_30B
	DEY
	LDA	(data_2),Y
	add_to_a sprite_secondByte_31B
	STA	inv_spr_dscr1_30C
	from_stack_to_y
	set_iny {(ptr_0),Y}, inv_spr_dscr1_30C
	set_iny {(ptr_0),Y}, byte_317
	set_iny {(ptr_0),Y}, tilemap_size_307
	add_to_byte_clc byte_36A, #8
	add_to_byte byte_36B, #0
	DEC	tilemapTypeUnk_30B
	if_not_equal_cmp_addr tilemapTypeUnk_30B, #0, loc_1F4DC
	from_stack byte_36B
	from_stack byte_36A
	add_to_byte_clc data_2, tilemapWidth_308
	add_to_byte data_3, #0
	add_to_byte_clc byte_366, #8
	add_to_byte byte_367, #0
	INX
	CPX	tilemapHeight_30A
	BEQ	loc_1F553
	JMP	loc_1F4CE
; ---------------------------------------------------------------------------

loc_1F553:
	set byte_317, #0
	RTS
; ---------------------------------------------------------------------------

loc_1F559:
	LDY	tilemapHeight_30A
	DEY

loc_1F55D:
	CPY	#0
	BEQ	loc_1F572
	add_to_byte_clc data_2, tilemapWidth_308
	LDA	data_3
	CLC
	STA	data_3
	DEY
	JMP	loc_1F55D
; ---------------------------------------------------------------------------

loc_1F572:
	LDX	#0
	LDY	#0

loc_1F576:
	to_stack byte_36A
	to_stack byte_36B
	set tilemapTypeUnk_30B, #0

loc_1F583:
	JSR	sub_1F5FF
	set_iny {(ptr_0),Y}, ppu_unk_byte_309
	TYA
	PHA
	LDY	tilemapTypeUnk_30B
	LDA	(data_2),Y
	add_to_a sprite_secondByte_31B
	STA	inv_spr_dscr1_30C
	from_stack_to_y
	set_iny {(ptr_0),Y}, inv_spr_dscr1_30C
	set_iny {(ptr_0),Y}, byte_317
	set_iny {(ptr_0),Y}, tilemap_size_307
	add_to_byte_clc byte_36A, #8
	add_to_byte byte_36B, #0
	DEC	tilemapTypeUnk_30B
	if_not_equal_cmp_addr tilemapTypeUnk_30B, #0, loc_1F583
	from_stack byte_36B
	from_stack byte_36A
	sub_from_sec data_2, tilemapWidth_308
	sub_from_byte data_3, #0
	add_to_byte_clc byte_366, #8
	add_to_byte byte_367, #0
	INX
	CPX	tilemapHeight_30A
	BEQ	loc_1F5F9
	JMP	loc_1F576
; ---------------------------------------------------------------------------

loc_1F5F9:
	set byte_317, #0
	RTS
; End of function sub_1F416

; =============== S U B	R O U T	I N E =======================================

sub_1F5FF:
	set byte_36C, ppu_scroll_x_304
	set byte_36D, ppu_unk_byte_302
	set byte_368, ppu_scroll_y_305
	set byte_369, ppu_unk_byte_303
	JSR	sub_1F6AB
	LDA	byte_36A
	SEC
	SBC	byte_36C
	LDA	byte_36B
	SBC	byte_36D
	BCC	loc_1F68D
	LDA	byte_366
	SEC
	SBC	byte_368
	LDA	byte_367
	SBC	byte_369
	BCC	loc_1F68D
	INC	byte_36D
	add_to_byte_clc byte_368, #$F0 
	add_to_byte byte_369, #0
	LDA	byte_36C
	SEC
	SBC	byte_36A
	LDA	byte_36D
	SBC	byte_36B
	BCC	loc_1F68D
	if_not_equal_cmp_addr byte_36C, byte_36A, loc_1F66B
	if_equal_cmp_addr byte_36D, byte_36B, loc_1F68D

loc_1F66B:
	LDA	byte_368
	SEC
	SBC	byte_366
	LDA	byte_369
	SBC	byte_367
	BCC	loc_1F68D
	if_not_equal_cmp_addr byte_368, byte_366, loc_1F693
	if_equal_cmp_addr byte_369, byte_367, loc_1F68D
	JMP	loc_1F693
; ---------------------------------------------------------------------------

loc_1F68D:
	set ppu_unk_byte_309, #$F0 
	RTS
; ---------------------------------------------------------------------------

loc_1F693:
	LDA	byte_36A
	SEC
	SBC	byte_36C
	STA	tilemap_size_307
	LDA	byte_366
	SEC
	SBC	byte_368
	SEC
	SBC	#$10
	STA	ppu_unk_byte_309
	RTS
; End of function sub_1F5FF

; =============== S U B	R O U T	I N E =======================================

sub_1F6AB:
	TYA
	PHA
	LDY	byte_369
	set byte_369, #0

loc_1F6B5:
	CPY	#0
	BEQ	loc_1F6CE
	add_to_byte_clc byte_368, #$F0 
	add_to_byte byte_369, #0
	DEY
	JMP	loc_1F6B5
; ---------------------------------------------------------------------------

loc_1F6CE:
	from_stack_to_y
	RTS
; End of function sub_1F6AB

; =============== S U B	R O U T	I N E =======================================

upload_to_ppu_1F6D1:
	LDY	#0
	set tilemapWidth_308, {(data_2),Y}

	add_to_data $2

	LDX	#0

loc_1F6E7:
	set _PPU_ADDR, ptr_1
	set _PPU_ADDR, ptr_0
	LDY	#0

loc_1F6F3:
	set_iny _PPU_DATA, {(data_2),Y}
	CPY	#$10
	BCC	loc_1F6F3
	
	add_to_byte_clc ptr_0, #$10
	add_to_byte ptr_1, #0

	add_to_data $10

	INX
	CPX	tilemapWidth_308
	BCC	loc_1F6E7
	RTS
; End of function upload_to_ppu_1F6D1

Common_Code_01:
	.include "common/common_funcs.asm"

; ---------------------------------------------------------------------------
	.include "garbage/bank_01_garbage.asm"

Vectors_01:
	.WORD NMI_FD53
	.WORD SpritePalettes_18079
	.WORD return_FDCA
; end of 'BANK_01'

; ===========================================================================