; ---------------------------------------------------------------------------

.macro load_sprite_palette_func palette_addr
	set_word_to_word_const ptr_0, palette_addr

	set data_2, #0
	mult_by_2_byte inv_sprite_idx_31C
	ROL	data_2
	ADD_TO_A ptr_0
	STA	ptr_0
	ADD_BYTE_TO_BYTE ptr_1, data_2

	READ_WORD data_2, {(ptr_0),Y}

	set_word_to_word_const ptr_0, _PPU_PALETTE

	mult_by_4_byte sprPalIdx_319
	TAX
	ADD_TO_A ptr_0
	STA	ptr_0
	ADD_BYTE_TO_BYTE ptr_1, #0

	LDY	#0
copy_palette:
	set_inx {palette_bg_321,X}, {(data_2),Y}
	INY
	IF_Y_GREATER_CMP #4, copy_palette

	RTS
.endmacro

; ---------------------------------------------------------------------------

.macro load_sprite get_sprite_func
    JSR	get_sprite_func

loc_4F375:
	set _PPU_ADDR, ptr_1
	set _PPU_ADDR, ptr_0
	LDY	#0

loc_4F381:
	set_iny _PPU_DATA, {(data_2),Y}
	IF_Y_GREATER_CMP #$10, loc_4F381

	ADD_WORD_TO_WORD_IMM data_2, $10
	ADD_BYTE_TO_WORD ptr_0, #$10

	DEC	inv_spr_dscr1_30C
	IF_A_EQUAL_CMP_ADDR inv_spr_dscr1_30C, #0, locret_4F3B2
	JMP	loc_4F375

locret_4F3B2:
	RTS
.endmacro

; ---------------------------------------------------------------------------

.macro upload_sprite_chunks_to_ppu get_sprite_func, upload_chunk_func

    JSR	get_sprite_func

loc_4F3B6:
	IF_A_GREATER_CMP_ADDR inv_spr_dscr1_30C, #4, loc_4F3CD
	BEQ	loc_4F3CD
	sub_a_sec #4
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
	JSR	upload_chunk_func
	IF_A_NOT_EQUAL_CMP_ADDR inv_spr_dscr1_30C, #0, loc_4F3B6
	RTS

.endmacro

; ---------------------------------------------------------------------------

.macro get_sprite_offset_func sprite_addr

	set_word_to_word_const ptr_0, sprite_addr

get_offset_4F3EF:
	set data_2, #0
	mult_by_2_byte inv_sprite_idx_31C
	ROL	data_2
	ADD_TO_A ptr_0
	STA	ptr_0
	ADD_BYTE_TO_BYTE ptr_1, data_2

get_sprite_ptr_4F404:
	READ_WORD data_2, {(ptr_0),Y}

get_sprite_descr_4F40F:
	LDY	#0
	set inv_spr_dscr1_30C, {(data_2),Y}

skip_2_byte_4f416:
	ADD_WORD_TO_WORD_IMM data_2, $2

	set_byte_to_word ptr_0, byte_31E
	mult_word_by_16 ptr_0
	OR_BYTE ptr_1, #$10

	RTS

.endmacro

; ---------------------------------------------------------------------------

.macro load_sprite_tilemap_func tilemap_addr, upload_sprite_func

	set_word_to_word_const ptr_0, tilemap_addr

get_offset_4F44B:
	set data_2, #0
	mult_by_2_byte inv_sprite_idx_31C
	ROL	data_2
	ADD_TO_A ptr_0
	STA	ptr_0
	ADD_BYTE_TO_BYTE ptr_1, data_2

get_ptr_4F460:
	READ_WORD data_2, {(ptr_0),Y}

get_tilemap_offset_4F46B:
	set ptr_0, #0
	mult_by_2_byte inv_itemPrev_idx_31D
	ROL	ptr_0
	ADD_TO_A data_2
	STA	data_2
	ADD_BYTE_TO_BYTE data_3, ptr_0

get_tilemap_ptr_4F480:
	READ_WORD ptr_0, {(data_2),Y}

get_tilemap_descr_4F48B:
	LDY	#0
	set_iny tilemapWidth_308, {(ptr_0),Y}
	set tilemapHeight_30A, {(ptr_0),Y}

	ADD_BYTE_TO_WORD ptr_0, #2

	set data_2, #0
	set data_3, #$20 
	mult_by_4_byte byte_36E
	ADD_TO_A data_3
	STA	data_3
	LDY	ppu_unk_byte_309

loc_4F4BA:
	IF_Y_EQUAL_CMP #0, loc_4F4CF

	ADD_WORD_TO_WORD_IMM data_2, $20

	DEY
	JMP	loc_4F4BA
; ---------------------------------------------------------------------------

loc_4F4CF:
	ADD_BYTE_TO_WORD data_2, tilemap_size_307

	set2 inv_spr_dscr1_30C, ppu_unk_byte_309, #0
	LDA	#$32 

loc_4F4E7:
	IF_A_GREATER_CMP tilemapWidth_308, loc_4F4F6
	sub_a_sec tilemapWidth_308
	INC	inv_spr_dscr1_30C
	JMP	loc_4F4E7
; ---------------------------------------------------------------------------

loc_4F4F6:
	LDA	tilemapHeight_30A

loc_4F4F9:
	IF_A_GREATER_CMP inv_spr_dscr1_30C, loc_4F50B
	sub_a_sec inv_spr_dscr1_30C
	STA	tilemapHeight_30A
	INC	ppu_unk_byte_309
	JMP	loc_4F4F9
; ---------------------------------------------------------------------------

loc_4F50B:

	IF_A_EQUAL ppu_unk_byte_309, loc_4F51B
	JSR	upload_sprite_func
	DEC	ppu_unk_byte_309
	IF_A_NOT_EQUAL ppu_unk_byte_309, loc_4F50B

loc_4F51B:
	IF_A_EQUAL tilemapHeight_30A, locret_4F526
	STA	inv_spr_dscr1_30C
	JSR	upload_sprite_func

locret_4F526:
	RTS
.endmacro

; ---------------------------------------------------------------------------

.macro upload_sprite_to_ppu
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
	ADD_BYTE_TO_BYTE_CLC_IMM {ppu_data_70,X}, {(ptr_0),Y}, byte_31E
	INX
	INY
	IF_Y_GREATER_CMP tilemapWidth_308, loc_4F54A

	ADD_WORD_TO_WORD_IMM data_2, $20
	ADD_BYTE_TO_WORD ptr_0, tilemapWidth_308

	INC	tilemapTypeUnk_30B
	IF_A_GREATER_CMP_ADDR tilemapTypeUnk_30B, inv_spr_dscr1_30C, loc_4F538
	JSR	wait_for_ppu_data_upload_FC8C
	RTS
.endmacro

; ---------------------------------------------------------------------------

.macro upload_sprite_chunk_to_ppu
	set has_ppu_data_to_upload_6F, #0

	LDX	#0
	set_inx {ppu_data_70,X}, #1
	set_inx {ppu_data_70,X}, tilemapTypeUnk_30B
	set_inx {ppu_data_70,X}, ptr_1
	set_inx {ppu_data_70,X}, ptr_0

	LDY	#0
loc_13E195:
	set_inx {ppu_data_70,X}, {(data_2),Y}
	INY
	IF_Y_GREATER_CMP tilemapTypeUnk_30B, loc_13E195

	ADD_BYTE_TO_WORD data_2, tilemapTypeUnk_30B
	ADD_BYTE_TO_WORD ptr_0, tilemapTypeUnk_30B

	JSR	wait_for_ppu_data_upload_FC8C
	RTS
.endmacro

; ---------------------------------------------------------------------------