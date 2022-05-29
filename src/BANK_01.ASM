

; =============== S U B	R O U T	I N E =======================================

; SPRITE_BANK

	.include "includes/ram.inc"
	.include "includes/macros.inc"

	BANK_SWITCH_FUNC switch_case_8035

switch_case_8035:
	SET bank_prev_345, bank_to_344
	SET bank_switch_flag_6C, #$88 
	IF_A_EQUAL_CMP_ADDR bank_command_346, #0, case0_18053
	IF_A_EQUAL_CMP #1, case1_18059
	IF_A_EQUAL_CMP #2, case2_1805F
	IF_A_EQUAL_CMP #3, case3_18068
	RTS
; ---------------------------------------------------------------------------

case0_18053:
	JSR	load_tiles_state_1F25D
	JMP	return_1806B
; ---------------------------------------------------------------------------

case1_18059:
	JSR	load_obj_tilemap_1F264
	JMP	return_1806B
; ---------------------------------------------------------------------------

case2_1805F:
	JSR	load_sprite_to_vram_1F36D
	JSR	load_sprite_tilemap_1F3B8
	JMP	return_1806B
; ---------------------------------------------------------------------------

case3_18068:
	JMP	return_1806B
; ---------------------------------------------------------------------------

return_1806B:
	RETURN_FROM_BANK_COMMAND
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
	IF_A_EQUAL_CMP_ADDR sprite_type_306, #0, loc_1F2C3

palette0_F26F:
	SET sprPalIdx_319, #0
	JSR	get_sprite_palette_ptr_1F2F3
	JSR	copy_sprite_palette_to_ram_1F316

palette1_F27A:
	SET sprPalIdx_319, #1
	JSR	get_sprite_palette_ptr_1F2F3

	ADD_WORD_TO_WORD_IMM data_2, $4

	JSR	copy_sprite_palette_to_ram_1F316

palette2_F292:
	SET sprPalIdx_319, #2
	JSR	get_sprite_palette_ptr_1F2F3

	ADD_WORD_TO_WORD_IMM data_2, $8

	JSR	copy_sprite_palette_to_ram_1F316

palette3_F2AA:
	SET sprPalIdx_319, #3
	JSR	get_sprite_palette_ptr_1F2F3
	
	ADD_WORD_TO_WORD_IMM data_2, $C

	JSR	copy_sprite_palette_to_ram_1F316
	RTS
; ---------------------------------------------------------------------------

loc_1F2C3:
	SET2 objectIdx_318, sprPalIdx_319, #0
	JSR	get_sprite_palette_ptr_1F2F3
	JSR	copy_sprite_palette_to_ram_1F316
	LDX	#0

loop_1F2D3:
	IF_X_EQUAL_CMP objArraySize_373, return_1F2F2
	SET objectIdx_318, {objIdxArray_375,X}
	SET sprPalIdx_319, {objPalIdxArray_3F7,X}
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
	SET_WORD_TO_WORD_CONST ptr_0, SpritePalettes_18079

get_offset_F2FB:
	MULT_BY_2_BYTE objectIdx_318
	ADD_TO_A ptr_0
	STA	ptr_0
	ADD_BYTE_TO_BYTE ptr_1, #0

get_ptr_F30A:
	READ_WORD data_2, {(ptr_0),Y}
	RTS
; End of function get_sprite_palette_ptr_1F2F3

; =============== S U B	R O U T	I N E =======================================

copy_sprite_palette_to_ram_1F316:
	LDY	#0
	MULT_BY_4_BYTE sprPalIdx_319
	TAX

loc_1F31E:
	SET_INX {sprite_palette_331,X}, {(data_2),Y}
	INY
	IF_Y_GREATER_CMP #4, loc_1F31E
	RTS
; End of function copy_sprite_palette_to_ram_1F316

; =============== S U B	R O U T	I N E =======================================

upload_tiles_to_ppu_1F32A:
	IF_A_EQUAL_CMP_ADDR sprite_type_306, #0, loc_1F33D
	SET sprite_secondByte_31B, #0
	JSR	load_sprite_to_vram_1F36D
	JSR	upload_to_ppu_1F6D1
	RTS
; ---------------------------------------------------------------------------

loc_1F33D:
	SET2 objectIdx_318, sprite_secondByte_31B, #0
	JSR	load_sprite_to_vram_1F36D
	JSR	upload_to_ppu_1F6D1
	LDX	#0

loc_1F34D:
	IF_X_EQUAL_CMP objArraySize_373, locret_1F36C
	SET objectIdx_318, {objIdxArray_375,X}
	SET sprite_secondByte_31B, {unk_401,X}
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

	SET_INY ptr_0, #.LOBYTE(Sprites)
	SET ptr_1, #.HIBYTE(Sprites)

get_offset_F376:; spriteIdx
	MULT_BY_2_BYTE objectIdx_318
	ADD_TO_A ptr_0
	STA	ptr_0
	ADD_BYTE_TO_BYTE ptr_1, #0

get_ptr_F385:
	READ_WORD data_2, {(ptr_0),Y}

get_sprite_length_F390:
	LDY	#0
	SET sprite_length_30F, {(data_2),Y}

get_sprite_descr2_F397:
	SET_BYTE_TO_WORD ptr_0, sprite_secondByte_31B
	MULT_WORD_BY_16 ptr_0

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
	SET_INY data_2, #$5F 
	SET data_3, #$82 

get_container_offset_F3C1:
	MULT_BY_2_BYTE objectIdx_318
	ADD_TO_A data_2
	STA	data_2
	ADD_BYTE_TO_BYTE data_3, #0

get_container_ptr_F3D0:
	READ_WORD ptr_0, {(data_2),Y}

get_tilemap_offset_F3DB:
	MULT_BY_2_BYTE objMapIdx_316
	ADD_TO_A ptr_0
	STA	ptr_0
	ADD_BYTE_TO_BYTE ptr_1, #0

get_tilemap_ptr_F3EA:
	READ_WORD data_2, {(ptr_0),Y}

get_width_F3F5:
	LDY	#0
	SET_INY tilemapWidth_308, {(data_2),Y}

get_height_F3FD:
	SET_INY tilemapHeight_30A, {(data_2),Y}

get_frame_count_F403:
	SET tilemapFrameCount_30D, {(data_2),Y}

add_offset_F408:
	ADD_WORD_TO_WORD_IMM data_2, $3
	RTS
; End of function load_sprite_tilemap_1F3B8

; =============== S U B	R O U T	I N E =======================================

sub_1F416:
	ADD_BYTE_TO_BYTE_CLC_IMM ptr_0, #0, byte_31A
	LDA	#2
	ADC	#0
	STA	ptr_1
	
	LOAD_A_MASKED byte_317, #$40 
	IF_A_NOT_EQUAL_CMP #$40, loc_1F430
	JMP	loc_1F4CA
; ---------------------------------------------------------------------------

loc_1F430:
	LOAD_A_MASKED byte_317, #$80 
	IF_A_NOT_EQUAL_CMP #$80, loc_1F43C
	JMP	loc_1F559
; ---------------------------------------------------------------------------

loc_1F43C:
	LDX	#0
	LDY	#0

loc_1F440:
	a_to_stack byte_36A
	a_to_stack byte_36B
	SET tilemapTypeUnk_30B, #0

loc_1F44D:
	JSR	sub_1F5FF
	SET_INY {(ptr_0),Y}, ppu_unk_byte_309
	y_to_stack
	LDY	tilemapTypeUnk_30B
	ADD_BYTE_TO_BYTE_CLC_IMM inv_spr_dscr1_30C, {(data_2),Y}, sprite_secondByte_31B
	from_stack_to_y
	SET_INY {(ptr_0),Y}, inv_spr_dscr1_30C
	SET_INY {(ptr_0),Y}, byte_317
	SET_INY {(ptr_0),Y}, tilemap_size_307
	ADD_BYTE_TO_WORD byte_36A, #8
	INC	tilemapTypeUnk_30B
	IF_A_GREATER_CMP_ADDR tilemapTypeUnk_30B, tilemapWidth_308, loc_1F44D
	from_stack_to_a byte_36B
	from_stack_to_a byte_36A
	ADD_BYTE_TO_WORD data_2, tilemapWidth_308
	ADD_BYTE_TO_WORD byte_366, #8
	INX
	IF_X_EQUAL_CMP tilemapHeight_30A, loc_1F4C4
	JMP	loc_1F440
; ---------------------------------------------------------------------------

loc_1F4C4:
	SET byte_317, #0
	RTS
; ---------------------------------------------------------------------------

loc_1F4CA:
	LDX	#0
	LDY	#0

loc_1F4CE:
	a_to_stack byte_36A
	a_to_stack byte_36B
	SET tilemapTypeUnk_30B, tilemapWidth_308

loc_1F4DC:
	JSR	sub_1F5FF
	SET_INY {(ptr_0),Y}, ppu_unk_byte_309
	y_to_stack
	LDY	tilemapTypeUnk_30B
	DEY
	ADD_BYTE_TO_BYTE_CLC_IMM inv_spr_dscr1_30C, {(data_2),Y}, sprite_secondByte_31B
	from_stack_to_y
	SET_INY {(ptr_0),Y}, inv_spr_dscr1_30C
	SET_INY {(ptr_0),Y}, byte_317
	SET_INY {(ptr_0),Y}, tilemap_size_307
	ADD_BYTE_TO_WORD byte_36A, #8
	DEC	tilemapTypeUnk_30B
	IF_A_NOT_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #0, loc_1F4DC
	from_stack_to_a byte_36B
	from_stack_to_a byte_36A
	ADD_BYTE_TO_WORD data_2, tilemapWidth_308
	ADD_BYTE_TO_WORD byte_366, #8
	INX
	IF_X_EQUAL_CMP tilemapHeight_30A, loc_1F553
	JMP	loc_1F4CE
; ---------------------------------------------------------------------------

loc_1F553:
	SET byte_317, #0
	RTS
; ---------------------------------------------------------------------------

loc_1F559:
	LDY	tilemapHeight_30A
	DEY

loc_1F55D:
	IF_Y_EQUAL_CMP #0, loc_1F572
	ADD_BYTE_TO_BYTE_CLC data_2, tilemapWidth_308
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
	SET tilemapTypeUnk_30B, #0

loc_1F583:
	JSR	sub_1F5FF
	SET_INY {(ptr_0),Y}, ppu_unk_byte_309
	y_to_stack
	LDY	tilemapTypeUnk_30B
	ADD_BYTE_TO_BYTE_CLC_IMM inv_spr_dscr1_30C, {(data_2),Y}, sprite_secondByte_31B
	from_stack_to_y
	SET_INY {(ptr_0),Y}, inv_spr_dscr1_30C
	SET_INY {(ptr_0),Y}, byte_317
	SET_INY {(ptr_0),Y}, tilemap_size_307
	ADD_BYTE_TO_WORD byte_36A, #8
	DEC	tilemapTypeUnk_30B
	IF_A_NOT_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #0, loc_1F583
	from_stack_to_a byte_36B
	from_stack_to_a byte_36A
	sub_byte_from_word data_2, tilemapWidth_308
	ADD_BYTE_TO_WORD byte_366, #8
	INX
	IF_X_EQUAL_CMP tilemapHeight_30A, loc_1F5F9
	JMP	loc_1F576
; ---------------------------------------------------------------------------

loc_1F5F9:
	SET byte_317, #0
	RTS
; End of function sub_1F416

; =============== S U B	R O U T	I N E =======================================

sub_1F5FF:
	SET byte_36C, ppu_scroll_x_304
	SET byte_36D, ppu_unk_byte_302
	SET byte_368, ppu_scroll_y_305
	SET byte_369, ppu_unk_byte_303
	JSR	sub_1F6AB
	sub_word_from_word byte_36A, byte_36C
	BCC	loc_1F68D
	sub_word_from_word byte_366, byte_368
	BCC	loc_1F68D
	INC	byte_36D
	ADD_BYTE_TO_WORD byte_368, #$F0 
	sub_word_from_word byte_36C, byte_36A
	BCC	loc_1F68D
	IF_A_NOT_EQUAL_CMP_ADDR byte_36C, byte_36A, loc_1F66B
	IF_A_EQUAL_CMP_ADDR byte_36D, byte_36B, loc_1F68D

loc_1F66B:
	sub_word_from_word byte_368, byte_366
	BCC	loc_1F68D
	IF_A_NOT_EQUAL_CMP_ADDR byte_368, byte_366, loc_1F693
	IF_A_EQUAL_CMP_ADDR byte_369, byte_367, loc_1F68D
	JMP	loc_1F693
; ---------------------------------------------------------------------------

loc_1F68D:
	SET ppu_unk_byte_309, #$F0 
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
	SET byte_369, #0

loc_1F6B5:
	IF_Y_EQUAL_CMP #0, loc_1F6CE
	ADD_BYTE_TO_WORD byte_368, #$F0 
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
	SET tilemapWidth_308, {(data_2),Y}
	ADD_WORD_TO_WORD_IMM data_2, $2

	LDX	#0

loc_1F6E7:
	SET _PPU_ADDR, ptr_1
	SET _PPU_ADDR, ptr_0
	LDY	#0

copy_byte_to_ppu_1F6F3:
	SET_INY _PPU_DATA, {(data_2),Y}
	IF_Y_GREATER_CMP #$10, copy_byte_to_ppu_1F6F3

	ADD_BYTE_TO_WORD ptr_0, #$10
	ADD_WORD_TO_WORD_IMM data_2, $10
	INX
	IF_X_GREATER_CMP tilemapWidth_308, loc_1F6E7
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