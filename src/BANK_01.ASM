; Segment type:Pure code


; =============== S U B	R O U T	I N E =======================================

; SPRITE_BANK

	.include "includes/ram.inc"
	.include "includes/macros.inc"

	bank_switch_func switch_case_8035

switch_case_8035:
	set bank_prev_345, bank_to_344
	set bank_switch_flag_6C, #$88 
	if_a_equal_cmp_addr bank_command_346, #0, loc_18053
	if_a_equal_cmp #1, loc_18059
	if_a_equal_cmp #2, loc_1805F
	if_a_equal_cmp #3, loc_18068
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
	return_from_bank_command
; End of function bank_switch_func

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
	if_a_equal_cmp_addr sprite_type_306, #0, loc_1F2C3

palette0_F26F:
	set sprPalIdx_319, #0
	JSR	get_sprite_palette_ptr_1F2F3
	JSR	copy_sprite_palette_to_ram_1F316

palette1_F27A:
	set sprPalIdx_319, #1
	JSR	get_sprite_palette_ptr_1F2F3

	add_word_to_word_imm data_2, $4

	JSR	copy_sprite_palette_to_ram_1F316

palette2_F292:
	set sprPalIdx_319, #2
	JSR	get_sprite_palette_ptr_1F2F3

	add_word_to_word_imm data_2, $8

	JSR	copy_sprite_palette_to_ram_1F316

palette3_F2AA:
	set sprPalIdx_319, #3
	JSR	get_sprite_palette_ptr_1F2F3
	
	add_word_to_word_imm data_2, $C

	JSR	copy_sprite_palette_to_ram_1F316
	RTS
; ---------------------------------------------------------------------------

loc_1F2C3:
	set2 objectIdx_318, sprPalIdx_319, #0
	JSR	get_sprite_palette_ptr_1F2F3
	JSR	copy_sprite_palette_to_ram_1F316
	LDX	#0

loop_1F2D3:
	if_x_equal_cmp objArraySize_373, return_1F2F2
	set objectIdx_318, {objIdxArray_375,X}
	set sprPalIdx_319, {objPalIdxArray_3F7,X}
	x_to_stack
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
	set_word_to_word_const ptr_0, SpritePalettes_18079

get_offset_F2FB:
	LDA	objectIdx_318
	mult_a_by_2
	add_to_a ptr_0
	STA	ptr_0
	add_byte_to_byte ptr_1, #0

get_ptr_F30A:
	read_word  data_2, {(ptr_0),Y}
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
	if_y_greater_cmp #4, loc_1F31E
	RTS
; End of function copy_sprite_palette_to_ram_1F316

; =============== S U B	R O U T	I N E =======================================

upload_tiles_to_ppu_1F32A:
	if_a_equal_cmp_addr sprite_type_306, #0, loc_1F33D
	set sprite_secondByte_31B, #0
	JSR	load_sprite_to_vram_1F36D
	JSR	upload_to_ppu_1F6D1
	RTS
; ---------------------------------------------------------------------------

loc_1F33D:
	set2 objectIdx_318, sprite_secondByte_31B, #0
	JSR	load_sprite_to_vram_1F36D
	JSR	upload_to_ppu_1F6D1
	LDX	#0

loc_1F34D:
	if_x_equal_cmp objArraySize_373, locret_1F36C
	set objectIdx_318, {objIdxArray_375,X}
	set sprite_secondByte_31B, {unk_401,X}
	x_to_stack
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
	add_byte_to_byte ptr_1, #0

get_ptr_F385:
	read_word  data_2, {(ptr_0),Y}

get_sprite_length_F390:
	LDY	#0
	set sprite_length_30F, {(data_2),Y}

get_sprite_descr2_F397:
	set_byte_to_word ptr_0, sprite_secondByte_31B
	mult_word_by_16 ptr_0

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
	add_byte_to_byte data_3, #0

get_container_ptr_F3D0:
	read_word  ptr_0, {(data_2),Y}

get_tilemap_offset_F3DB:
	LDA	objMapIdx_316
	mult_a_by_2
	add_to_a ptr_0
	STA	ptr_0
	add_byte_to_byte ptr_1, #0

get_tilemap_ptr_F3EA:
	read_word  data_2, {(ptr_0),Y}

get_width_F3F5:
	LDY	#0
	set_iny tilemapWidth_308, {(data_2),Y}

get_height_F3FD:
	set_iny tilemapHeight_30A, {(data_2),Y}

get_frame_count_F403:
	set tilemapFrameCount_30D, {(data_2),Y}

add_offset_F408:
	add_word_to_word_imm data_2, $3
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
	load_a_masked byte_317, #$40 
	if_a_not_equal_cmp #$40, loc_1F430
	JMP	loc_1F4CA
; ---------------------------------------------------------------------------

loc_1F430:
	load_a_masked byte_317, #$80 
	if_a_not_equal_cmp #$80, loc_1F43C
	JMP	loc_1F559
; ---------------------------------------------------------------------------

loc_1F43C:
	LDX	#0
	LDY	#0

loc_1F440:
	a_to_stack byte_36A
	a_to_stack byte_36B
	set tilemapTypeUnk_30B, #0

loc_1F44D:
	JSR	sub_1F5FF
	set_iny {(ptr_0),Y}, ppu_unk_byte_309
	y_to_stack
	LDY	tilemapTypeUnk_30B
	LDA	(data_2),Y
	add_to_a sprite_secondByte_31B
	STA	inv_spr_dscr1_30C
	from_stack_to_y
	set_iny {(ptr_0),Y}, inv_spr_dscr1_30C
	set_iny {(ptr_0),Y}, byte_317
	set_iny {(ptr_0),Y}, tilemap_size_307
	add_byte_to_word byte_36A, #8
	INC	tilemapTypeUnk_30B
	if_a_greater_cmp_addr tilemapTypeUnk_30B, tilemapWidth_308, loc_1F44D
	from_stack_to_a byte_36B
	from_stack_to_a byte_36A
	add_byte_to_word data_2, tilemapWidth_308
	add_byte_to_word byte_366, #8
	INX
	if_x_equal_cmp tilemapHeight_30A, loc_1F4C4
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
	a_to_stack byte_36A
	a_to_stack byte_36B
	set tilemapTypeUnk_30B, tilemapWidth_308

loc_1F4DC:
	JSR	sub_1F5FF
	set_iny {(ptr_0),Y}, ppu_unk_byte_309
	y_to_stack
	LDY	tilemapTypeUnk_30B
	DEY
	LDA	(data_2),Y
	add_to_a sprite_secondByte_31B
	STA	inv_spr_dscr1_30C
	from_stack_to_y
	set_iny {(ptr_0),Y}, inv_spr_dscr1_30C
	set_iny {(ptr_0),Y}, byte_317
	set_iny {(ptr_0),Y}, tilemap_size_307
	add_byte_to_word byte_36A, #8
	DEC	tilemapTypeUnk_30B
	if_a_not_equal_cmp_addr tilemapTypeUnk_30B, #0, loc_1F4DC
	from_stack_to_a byte_36B
	from_stack_to_a byte_36A
	add_byte_to_word data_2, tilemapWidth_308
	add_byte_to_word byte_366, #8
	INX
	if_x_equal_cmp tilemapHeight_30A, loc_1F553
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
	if_y_equal_cmp #0, loc_1F572
	add_byte_to_byte_clc data_2, tilemapWidth_308
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
	a_to_stack byte_36A
	a_to_stack byte_36B
	set tilemapTypeUnk_30B, #0

loc_1F583:
	JSR	sub_1F5FF
	set_iny {(ptr_0),Y}, ppu_unk_byte_309
	y_to_stack
	LDY	tilemapTypeUnk_30B
	LDA	(data_2),Y
	add_to_a sprite_secondByte_31B
	STA	inv_spr_dscr1_30C
	from_stack_to_y
	set_iny {(ptr_0),Y}, inv_spr_dscr1_30C
	set_iny {(ptr_0),Y}, byte_317
	set_iny {(ptr_0),Y}, tilemap_size_307
	add_byte_to_word byte_36A, #8
	DEC	tilemapTypeUnk_30B
	if_a_not_equal_cmp_addr tilemapTypeUnk_30B, #0, loc_1F583
	from_stack_to_a byte_36B
	from_stack_to_a byte_36A
	sub_byte_from_word data_2, tilemapWidth_308
	add_byte_to_word byte_366, #8
	INX
	if_x_equal_cmp tilemapHeight_30A, loc_1F5F9
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
	sub_word_from_word byte_36A, byte_36C
	BCC	loc_1F68D
	sub_word_from_word byte_366, byte_368
	BCC	loc_1F68D
	INC	byte_36D
	add_byte_to_word byte_368, #$F0 
	sub_word_from_word byte_36C, byte_36A
	BCC	loc_1F68D
	if_a_not_equal_cmp_addr byte_36C, byte_36A, loc_1F66B
	if_a_equal_cmp_addr byte_36D, byte_36B, loc_1F68D

loc_1F66B:
	sub_word_from_word byte_368, byte_366
	BCC	loc_1F68D
	if_a_not_equal_cmp_addr byte_368, byte_366, loc_1F693
	if_a_equal_cmp_addr byte_369, byte_367, loc_1F68D
	JMP	loc_1F693
; ---------------------------------------------------------------------------

loc_1F68D:
	set ppu_unk_byte_309, #$F0 
	RTS
; ---------------------------------------------------------------------------

loc_1F693:
	sub_addr_sec byte_36A, byte_36C
	STA	tilemap_size_307
	sub_addr_sec byte_366, byte_368
	sub_a_sec #$10
	STA	ppu_unk_byte_309
	RTS
; End of function sub_1F5FF

; =============== S U B	R O U T	I N E =======================================

sub_1F6AB:
	y_to_stack
	LDY	byte_369
	set byte_369, #0

loc_1F6B5:
	if_y_equal_cmp #0, loc_1F6CE
	add_byte_to_word byte_368, #$F0 
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
	add_word_to_word_imm data_2, $2

	LDX	#0

loc_1F6E7:
	set _PPU_ADDR, ptr_1
	set _PPU_ADDR, ptr_0
	LDY	#0

copy_byte_to_ppu_1F6F3:
	set_iny _PPU_DATA, {(data_2),Y}
	if_y_greater_cmp #$10, copy_byte_to_ppu_1F6F3

	add_byte_to_word ptr_0, #$10
	add_word_to_word_imm data_2, $10
	INX
	if_x_greater_cmp tilemapWidth_308, loc_1F6E7
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