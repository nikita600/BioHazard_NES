; Segment type:Pure code
	;.segment BANK_01 (Sprites)
	;* =  $8000

; =============== S U B	R O U T	I N E =======================================

; SPRITE_BANK

    .include "includes/ram.inc"
	.include "includes/macros.inc"

bank_switch_8000:
	.include "common/bank_switch_func.asm"

switch_case_8035:
	LDA	bank_to_344
	STA	bank_prev_345
	LDA	#$88 
	STA	bank_switch_flag_6C
	LDA	bank_command_346
	CMP	#0
	BEQ	loc_18053
	CMP	#1
	BEQ	loc_18059
	CMP	#2
	BEQ	loc_1805F
	CMP	#3
	BEQ	loc_18068
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
	LDA	#$FF
	STA	bank_command_346
	LDA	bank_from_343
	STA	bank_to_344
	JMP	bank_switch_8000 ; SPRITE_BANK
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
	LDA	sprite_type_306
	CMP	#0
	BEQ	loc_1F2C3

palette0_F26F:
	LDA	#0
	STA	sprPalIdx_319
	JSR	get_sprite_palette_ptr_1F2F3
	JSR	copy_sprite_palette_to_ram_1F316

palette1_F27A:
	LDA	#1
	STA	sprPalIdx_319
	JSR	get_sprite_palette_ptr_1F2F3

	add_to_data $4

	JSR	copy_sprite_palette_to_ram_1F316

palette2_F292:
	LDA	#2
	STA	sprPalIdx_319
	JSR	get_sprite_palette_ptr_1F2F3

	add_to_data $8

	JSR	copy_sprite_palette_to_ram_1F316

palette3_F2AA:
	LDA	#3
	STA	sprPalIdx_319
	JSR	get_sprite_palette_ptr_1F2F3
	
	add_to_data $C

	JSR	copy_sprite_palette_to_ram_1F316
	RTS
; ---------------------------------------------------------------------------

loc_1F2C3:
	LDA	#0
	STA	objectIdx_318
	STA	sprPalIdx_319
	JSR	get_sprite_palette_ptr_1F2F3
	JSR	copy_sprite_palette_to_ram_1F316
	LDX	#0

loop_1F2D3:
	CPX	objArraySize_373
	BEQ	return_1F2F2
	LDA	objIdxArray_375,X
	STA	objectIdx_318
	LDA	objPalIdxArray_3F7,X
	STA	sprPalIdx_319
	TXA
	PHA
	JSR	get_sprite_palette_ptr_1F2F3
	JSR	copy_sprite_palette_to_ram_1F316
	PLA
	TAX
	INX
	JMP	loop_1F2D3
; ---------------------------------------------------------------------------

return_1F2F2:
	RTS
; End of function load_palettes_to_ram_1F268


; =============== S U B	R O U T	I N E =======================================


get_sprite_palette_ptr_1F2F3:

	load_ptr SpritePalettes_18079

get_offset_F2FB:
	LDA	objectIdx_318
	ASL	A
	CLC
	ADC	ptr_0
	STA	ptr_0
	LDA	ptr_1
	ADC	#0
	STA	ptr_1

get_ptr_F30A:
	LDY	#0
	LDA	(ptr_0),Y
	STA	data_2
	INY
	LDA	(ptr_0),Y
	STA	data_3
	RTS
; End of function get_sprite_palette_ptr_1F2F3


; =============== S U B	R O U T	I N E =======================================


copy_sprite_palette_to_ram_1F316:
	; load_palettes_to_ram_1F268+27p ...
	LDY	#0
	LDA	sprPalIdx_319
	ASL	A
	ASL	A
	TAX

loc_1F31E:
	LDA	(data_2),Y
	STA	sprite_palette_331,X ; "����������������"
	INX
	INY
	CPY	#4
	BCC	loc_1F31E
	RTS
; End of function copy_sprite_palette_to_ram_1F316


; =============== S U B	R O U T	I N E =======================================


upload_tiles_to_ppu_1F32A:
	LDA	sprite_type_306
	CMP	#0
	BEQ	loc_1F33D
	LDA	#0
	STA	sprite_secondByte_31B
	JSR	load_sprite_to_vram_1F36D
	JSR	upload_to_ppu_1F6D1
	RTS
; ---------------------------------------------------------------------------

loc_1F33D:
	LDA	#0
	STA	objectIdx_318
	STA	sprite_secondByte_31B
	JSR	load_sprite_to_vram_1F36D
	JSR	upload_to_ppu_1F6D1
	LDX	#0

loc_1F34D:
	CPX	objArraySize_373
	BEQ	locret_1F36C
	LDA	objIdxArray_375,X
	STA	objectIdx_318
	LDA	unk_401,X
	STA	sprite_secondByte_31B
	TXA
	PHA
	JSR	load_sprite_to_vram_1F36D
	JSR	upload_to_ppu_1F6D1
	PLA
	TAX
	INX
	JMP	loc_1F34D
; ---------------------------------------------------------------------------

locret_1F36C:
	RTS
; End of function upload_tiles_to_ppu_1F32A


; =============== S U B	R O U T	I N E =======================================


load_sprite_to_vram_1F36D:

	load_ptr_iny Sprites

get_offset_F376:; spriteIdx
	LDA	objectIdx_318
	ASL	A
	CLC
	ADC	ptr_0
	STA	ptr_0
	LDA	ptr_1
	ADC	#0
	STA	ptr_1

get_ptr_F385:
	LDY	#0
	LDA	(ptr_0),Y
	STA	data_2
	INY
	LDA	(ptr_0),Y
	STA	data_3

get_sprite_length_F390:
	LDY	#0
	LDA	(data_2),Y
	STA	sprite_length_30F

get_sprite_descr2_F397:
	LDA	sprite_secondByte_31B
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
	; sub_1F3B1p
	LDA	#$5F 
	STA	data_2
	INY
	LDA	#$82 
	STA	data_3

get_container_offset_F3C1:
	LDA	objectIdx_318
	ASL	A
	CLC
	ADC	data_2
	STA	data_2
	LDA	data_3
	ADC	#0
	STA	data_3

get_container_ptr_F3D0:
	LDY	#0
	LDA	(data_2),Y
	STA	ptr_0
	INY
	LDA	(data_2),Y
	STA	ptr_1

get_tilemap_offset_F3DB:
	LDA	objMapIdx_316
	ASL	A
	CLC
	ADC	ptr_0
	STA	ptr_0
	LDA	ptr_1
	ADC	#0
	STA	ptr_1

get_tilemap_ptr_F3EA:
	LDY	#0
	LDA	(ptr_0),Y
	STA	data_2
	INY
	LDA	(ptr_0),Y
	STA	data_3

get_width_F3F5:
	LDY	#0
	LDA	(data_2),Y
	STA	tilemapWidth_308
	INY

get_height_F3FD:
	LDA	(data_2),Y
	STA	tilemapHeight_30A
	INY

get_frame_count_F403:
	LDA	(data_2),Y
	STA	tilemapFrameCount_30D

add_offset_F408:
	add_to_data $3
	RTS
; End of function load_sprite_tilemap_1F3B8


; =============== S U B	R O U T	I N E =======================================


sub_1F416:
	LDA	#0
	CLC
	ADC	byte_31A
	STA	ptr_0
	LDA	#2
	ADC	#0
	STA	ptr_1
	LDA	byte_317
	AND	#$40 
	CMP	#$40 
	BNE	loc_1F430
	JMP	loc_1F4CA
; ---------------------------------------------------------------------------

loc_1F430:
	LDA	byte_317
	AND	#$80 
	CMP	#$80 
	BNE	loc_1F43C
	JMP	loc_1F559
; ---------------------------------------------------------------------------

loc_1F43C:
	LDX	#0
	LDY	#0

loc_1F440:
	LDA	byte_36A
	PHA
	LDA	byte_36B
	PHA
	LDA	#0
	STA	tilemapTypeUnk_30B

loc_1F44D:
	JSR	sub_1F5FF
	LDA	ppu_unk_byte_309
	STA	(ptr_0),Y
	INY
	TYA
	PHA
	LDY	tilemapTypeUnk_30B
	LDA	(data_2),Y
	CLC
	ADC	sprite_secondByte_31B
	STA	inv_spr_dscr1_30C
	PLA
	TAY
	LDA	inv_spr_dscr1_30C
	STA	(ptr_0),Y
	INY
	LDA	byte_317
	STA	(ptr_0),Y
	INY
	LDA	tilemap_size_307
	STA	(ptr_0),Y
	INY
	LDA	byte_36A
	CLC
	ADC	#8
	STA	byte_36A
	LDA	byte_36B
	ADC	#0
	STA	byte_36B
	INC	tilemapTypeUnk_30B
	LDA	tilemapTypeUnk_30B
	CMP	tilemapWidth_308
	BCC	loc_1F44D
	PLA
	STA	byte_36B
	PLA
	STA	byte_36A
	LDA	data_2
	CLC
	ADC	tilemapWidth_308
	STA	data_2
	LDA	data_3
	ADC	#0
	STA	data_3
	LDA	byte_366
	CLC
	ADC	#8
	STA	byte_366
	LDA	byte_367
	ADC	#0
	STA	byte_367
	INX
	CPX	tilemapHeight_30A
	BEQ	loc_1F4C4
	JMP	loc_1F440
; ---------------------------------------------------------------------------

loc_1F4C4:
	LDA	#0
	STA	byte_317
	RTS
; ---------------------------------------------------------------------------

loc_1F4CA:
	LDX	#0
	LDY	#0

loc_1F4CE:
	LDA	byte_36A
	PHA
	LDA	byte_36B
	PHA
	LDA	tilemapWidth_308
	STA	tilemapTypeUnk_30B

loc_1F4DC:
	JSR	sub_1F5FF
	LDA	ppu_unk_byte_309
	STA	(ptr_0),Y
	INY
	TYA
	PHA
	LDY	tilemapTypeUnk_30B
	DEY
	LDA	(data_2),Y
	CLC
	ADC	sprite_secondByte_31B
	STA	inv_spr_dscr1_30C
	PLA
	TAY
	LDA	inv_spr_dscr1_30C
	STA	(ptr_0),Y
	INY
	LDA	byte_317
	STA	(ptr_0),Y
	INY
	LDA	tilemap_size_307
	STA	(ptr_0),Y
	INY
	LDA	byte_36A
	CLC
	ADC	#8
	STA	byte_36A
	LDA	byte_36B
	ADC	#0
	STA	byte_36B
	DEC	tilemapTypeUnk_30B
	LDA	tilemapTypeUnk_30B
	CMP	#0
	BNE	loc_1F4DC
	PLA
	STA	byte_36B
	PLA
	STA	byte_36A
	LDA	data_2
	CLC
	ADC	tilemapWidth_308
	STA	data_2
	LDA	data_3
	ADC	#0
	STA	data_3
	LDA	byte_366
	CLC
	ADC	#8
	STA	byte_366
	LDA	byte_367
	ADC	#0
	STA	byte_367
	INX
	CPX	tilemapHeight_30A
	BEQ	loc_1F553
	JMP	loc_1F4CE
; ---------------------------------------------------------------------------

loc_1F553:
	LDA	#0
	STA	byte_317
	RTS
; ---------------------------------------------------------------------------

loc_1F559:
	LDY	tilemapHeight_30A
	DEY

loc_1F55D:
	CPY	#0
	BEQ	loc_1F572
	LDA	data_2
	CLC
	ADC	tilemapWidth_308
	STA	data_2
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
	LDA	byte_36A
	PHA
	LDA	byte_36B
	PHA
	LDA	#0
	STA	tilemapTypeUnk_30B

loc_1F583:
	JSR	sub_1F5FF
	LDA	ppu_unk_byte_309
	STA	(ptr_0),Y
	INY
	TYA
	PHA
	LDY	tilemapTypeUnk_30B
	LDA	(data_2),Y
	CLC
	ADC	sprite_secondByte_31B
	STA	inv_spr_dscr1_30C
	PLA
	TAY
	LDA	inv_spr_dscr1_30C
	STA	(ptr_0),Y
	INY
	LDA	byte_317
	STA	(ptr_0),Y
	INY
	LDA	tilemap_size_307
	STA	(ptr_0),Y
	INY
	LDA	byte_36A
	CLC
	ADC	#8
	STA	byte_36A
	LDA	byte_36B
	ADC	#0
	STA	byte_36B
	DEC	tilemapTypeUnk_30B
	LDA	tilemapTypeUnk_30B
	CMP	#0
	BNE	loc_1F583
	PLA
	STA	byte_36B
	PLA
	STA	byte_36A
	LDA	data_2
	SEC
	SBC	tilemapWidth_308
	STA	data_2
	LDA	data_3
	SBC	#0
	STA	data_3
	LDA	byte_366
	CLC
	ADC	#8
	STA	byte_366
	LDA	byte_367
	ADC	#0
	STA	byte_367
	INX
	CPX	tilemapHeight_30A
	BEQ	loc_1F5F9
	JMP	loc_1F576
; ---------------------------------------------------------------------------

loc_1F5F9:
	LDA	#0
	STA	byte_317
	RTS
; End of function sub_1F416


; =============== S U B	R O U T	I N E =======================================


sub_1F5FF:
	; sub_1F416:loc_1F4DCp	...
	LDA	ppu_scroll_x_304
	STA	byte_36C
	LDA	ppu_unk_byte_302
	STA	byte_36D
	LDA	ppu_scroll_y_305
	STA	byte_368
	LDA	ppu_unk_byte_303
	STA	byte_369
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
	LDA	byte_368
	CLC
	ADC	#$F0 
	STA	byte_368
	LDA	byte_369
	ADC	#0
	STA	byte_369
	LDA	byte_36C
	SEC
	SBC	byte_36A
	LDA	byte_36D
	SBC	byte_36B
	BCC	loc_1F68D
	LDA	byte_36C
	CMP	byte_36A
	BNE	loc_1F66B
	LDA	byte_36D
	CMP	byte_36B
	BEQ	loc_1F68D

loc_1F66B:
	LDA	byte_368
	SEC
	SBC	byte_366
	LDA	byte_369
	SBC	byte_367
	BCC	loc_1F68D
	LDA	byte_368
	CMP	byte_366
	BNE	loc_1F693
	LDA	byte_369
	CMP	byte_367
	BEQ	loc_1F68D
	JMP	loc_1F693
; ---------------------------------------------------------------------------

loc_1F68D:
	; sub_1F5FF+37j ...
	LDA	#$F0 
	STA	ppu_unk_byte_309
	RTS
; ---------------------------------------------------------------------------

loc_1F693:
	; sub_1F5FF+8Bj
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
	LDA	#0
	STA	byte_369

loc_1F6B5:
	CPY	#0
	BEQ	loc_1F6CE
	LDA	byte_368
	CLC
	ADC	#$F0 
	STA	byte_368
	LDA	byte_369
	ADC	#0
	STA	byte_369
	DEY
	JMP	loc_1F6B5
; ---------------------------------------------------------------------------

loc_1F6CE:
	PLA
	TAY
	RTS
; End of function sub_1F6AB


; =============== S U B	R O U T	I N E =======================================


upload_to_ppu_1F6D1:
	; upload_tiles_to_ppu_1F32A+1Ep ...
	LDY	#0
	LDA	(data_2),Y
	STA	tilemapWidth_308

	add_to_data $2

	LDX	#0

loc_1F6E7:
	LDA	ptr_1
	STA	_PPU_ADDR
	LDA	ptr_0
	STA	_PPU_ADDR
	LDY	#0

loc_1F6F3:
	LDA	(data_2),Y
	STA	_PPU_DATA
	INY
	CPY	#$10
	BCC	loc_1F6F3
	LDA	ptr_0
	CLC
	ADC	#$10
	STA	ptr_0
	LDA	ptr_1
	ADC	#0
	STA	ptr_1

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