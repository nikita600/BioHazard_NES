; ---------------------------------------------------------------------------

.macro LOAD_SPRITE_PALETTE_FUNC palette_addr
	SET_WORD_TO_WORD_CONST ptr_0, palette_addr

	SET data_2, #0
	MULT_BY_2_BYTE inv_sprite_idx_31C
	ROL	data_2
	ADD_TO_A ptr_0
	STA	ptr_0
	ADD_BYTE_TO_BYTE ptr_1, data_2

	READ_WORD data_2, {(ptr_0),Y}

	SET_WORD_TO_WORD_CONST ptr_0, _PPU_PALETTE

	MULT_BY_4_BYTE sprPalIdx_319
	TAX
	ADD_TO_A ptr_0
	STA	ptr_0
	ADD_BYTE_TO_BYTE ptr_1, #0

	LDY	#0
copy_palette:
	SET_INX {palette_bg_321,X}, {(data_2),Y}
	INY
	IF_Y_GREATER_CMP #4, copy_palette

	RTS
.endmacro

; ---------------------------------------------------------------------------

.macro LOAD_SPRITE get_sprite_func
    JSR	get_sprite_func

set_ppu_addr_4F375:
	SET _PPU_ADDR, ptr_1
	SET _PPU_ADDR, ptr_0

	LDY	#0
loc_4F381:
	SET_INY _PPU_DATA, {(data_2),Y}
	IF_Y_GREATER_CMP #$10, loc_4F381

	ADD_WORD_TO_WORD_IMM data_2, $10
	ADD_BYTE_TO_WORD ptr_0, #$10

	DEC	inv_spr_dscr1_30C
	IF_A_EQUAL_CMP_ADDR inv_spr_dscr1_30C, #0, locret_4F3B2
	JMP	set_ppu_addr_4F375

locret_4F3B2:
	RTS
.endmacro

; ---------------------------------------------------------------------------

.macro UPLOAD_SPRITE_CHUNKS_TO_PPU get_sprite_func, upload_chunk_func

    JSR	get_sprite_func

loc_4F3B6:
	IF_A_GREATER_CMP_ADDR inv_spr_dscr1_30C, #4, loc_4F3CD
	BEQ	loc_4F3CD
	SUB_A_SEC #4
	STA	inv_spr_dscr1_30C
	SET tilemapTypeUnk_30B, #$40 
	JMP	loc_4F3DC
; ---------------------------------------------------------------------------

loc_4F3CD:
	LDA	inv_spr_dscr1_30C
	MULT_A_BY_16
	STA	tilemapTypeUnk_30B
	SET inv_spr_dscr1_30C, #0

loc_4F3DC:
	JSR	upload_chunk_func
	IF_A_NOT_EQUAL_CMP_ADDR inv_spr_dscr1_30C, #0, loc_4F3B6
	RTS

.endmacro

; ---------------------------------------------------------------------------

.macro GET_SPRITE_OFFSET_FUNC sprite_addr

	SET_WORD_TO_WORD_CONST ptr_0, sprite_addr

get_offset_4F3EF:
	SET data_2, #0
	MULT_BY_2_BYTE inv_sprite_idx_31C
	ROL	data_2
	ADD_TO_A ptr_0
	STA	ptr_0
	ADD_BYTE_TO_BYTE ptr_1, data_2

get_sprite_ptr_4F404:
	READ_WORD data_2, {(ptr_0),Y}

get_sprite_descr_4F40F:
	LDY	#0
	SET inv_spr_dscr1_30C, {(data_2),Y}

skip_2_byte_4f416:
	ADD_WORD_TO_WORD_IMM data_2, $2

	SET_BYTE_TO_WORD ptr_0, byte_31E
	MULT_WORD_BY_16 ptr_0
	OR_BYTE ptr_1, #$10

	RTS

.endmacro

; ---------------------------------------------------------------------------

.macro LOAD_SPRITE_TILEMAP_FUNC tilemap_addr, upload_sprite_func

	SET_WORD_TO_WORD_CONST ptr_0, tilemap_addr

get_offset_4F44B:
	SET data_2, #0
	MULT_BY_2_BYTE inv_sprite_idx_31C
	ROL	data_2
	ADD_TO_A ptr_0
	STA	ptr_0
	ADD_BYTE_TO_BYTE ptr_1, data_2

get_ptr_4F460:
	READ_WORD data_2, {(ptr_0),Y}

get_tilemap_offset_4F46B:
	SET ptr_0, #0
	MULT_BY_2_BYTE inv_itemPrev_idx_31D
	ROL	ptr_0
	ADD_TO_A data_2
	STA	data_2
	ADD_BYTE_TO_BYTE data_3, ptr_0

get_tilemap_ptr_4F480:
	READ_WORD ptr_0, {(data_2),Y}

get_tilemap_descr_4F48B:
	LDY	#0
	SET_INY tilemapWidth_308, {(ptr_0),Y}
	SET tilemapHeight_30A, {(ptr_0),Y}

	ADD_BYTE_TO_WORD ptr_0, #2

	SET data_2, #0
	SET data_3, #$20 
	MULT_BY_4_BYTE byte_36E
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

	SET2 inv_spr_dscr1_30C, ppu_unk_byte_309, #0
	LDA	#$32 

loc_4F4E7:
	IF_A_GREATER_CMP tilemapWidth_308, loc_4F4F6
	SUB_A_SEC tilemapWidth_308
	INC	inv_spr_dscr1_30C
	JMP	loc_4F4E7
; ---------------------------------------------------------------------------

loc_4F4F6:
	LDA	tilemapHeight_30A

loc_4F4F9:
	IF_A_GREATER_CMP inv_spr_dscr1_30C, loc_4F50B
	SUB_A_SEC inv_spr_dscr1_30C
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

.macro UPLOAD_SPRITE_TO_PPU
    SET tilemapTypeUnk_30B, #0
	SET has_ppu_data_to_upload_6F, #0

	LDX	#0
	SET_INX {ppu_data_70,X}, inv_spr_dscr1_30C
loc_4F538:
	SET_INX {ppu_data_70,X}, tilemapWidth_308
	SET_INX {ppu_data_70,X}, data_3
	SET_INX {ppu_data_70,X}, data_2

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

.macro UPLOAD_SPRITE_CHUNK_TO_PPU
	SET has_ppu_data_to_upload_6F, #0

	LDX	#0
	SET_INX {ppu_data_70,X}, #1
	SET_INX {ppu_data_70,X}, tilemapTypeUnk_30B
	SET_INX {ppu_data_70,X}, ptr_1
	SET_INX {ppu_data_70,X}, ptr_0

	LDY	#0
loc_13E195:
	SET_INX {ppu_data_70,X}, {(data_2),Y}
	INY
	IF_Y_GREATER_CMP tilemapTypeUnk_30B, loc_13E195

	ADD_BYTE_TO_WORD data_2, tilemapTypeUnk_30B
	ADD_BYTE_TO_WORD ptr_0, tilemapTypeUnk_30B

	JSR	wait_for_ppu_data_upload_FC8C
	RTS
.endmacro

; ---------------------------------------------------------------------------