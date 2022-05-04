; ---------------------------------------------------------------------------

.macro load_sprite_palette_func palette_addr
	set_ptr palette_addr

	set data_2, #0
	LDA	inv_sprite_idx_31C
	mult_a_by_2
	ROL	data_2
	add_to_a ptr_0
	STA	ptr_0
	add_byte_to_byte ptr_1, data_2

	read_word  data_2, {(ptr_0),Y}

	set_ptr _PPU_PALETTE

	LDA	sprPalIdx_319
	mult_a_by_4
	TAX
	add_to_a ptr_0
	STA	ptr_0
	add_byte_to_byte ptr_1, #0

	LDY	#0
copy_palette:
	set_inx {palette_bg_321,X}, {(data_2),Y}
	INY
	if_y_greater_cmp #4, copy_palette

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
	if_y_greater_cmp #$10, loc_4F381

	add_word_to_word_imm data_2, $10
	add_byte_to_word ptr_0, #$10

	DEC	inv_spr_dscr1_30C
	if_a_equal_cmp_addr inv_spr_dscr1_30C, #0, locret_4F3B2
	JMP	loc_4F375

locret_4F3B2:
	RTS
.endmacro

; ---------------------------------------------------------------------------

.macro upload_sprite_chunks_to_ppu get_sprite_func, upload_chunk_func

    JSR	get_sprite_func

loc_4F3B6:
	if_a_greater_cmp_addr inv_spr_dscr1_30C, #4, loc_4F3CD
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
	if_a_not_equal_cmp_addr inv_spr_dscr1_30C, #0, loc_4F3B6
	RTS

.endmacro

; ---------------------------------------------------------------------------

.macro get_sprite_offset_func sprite_addr

    set_ptr sprite_addr

get_offset_4F3EF:
	set data_2, #0
	LDA	inv_sprite_idx_31C
	mult_a_by_2
	ROL	data_2
	add_to_a ptr_0
	STA	ptr_0
	add_byte_to_byte ptr_1, data_2

get_sprite_ptr_4F404:
	read_word  data_2, {(ptr_0),Y}

get_sprite_descr_4F40F:
	LDY	#0
	set inv_spr_dscr1_30C, {(data_2),Y}

skip_2_byte_4f416:
	add_word_to_word_imm data_2, $2

	set ptr_0, byte_31E
	set ptr_1, #0
	mult_word_by_2 ptr_0
	mult_word_by_2 ptr_0
	mult_word_by_2 ptr_0
	mult_word_by_2 ptr_0
	or_byte ptr_1, #$10
	RTS

.endmacro

; ---------------------------------------------------------------------------

.macro load_sprite_tilemap_func tilemap_addr, upload_sprite_func
    set_ptr tilemap_addr

get_offset_4F44B:
	set data_2, #0
	LDA	inv_sprite_idx_31C
	mult_a_by_2
	ROL	data_2
	add_to_a ptr_0
	STA	ptr_0
	add_byte_to_byte ptr_1, data_2

get_ptr_4F460:
	read_word  data_2, {(ptr_0),Y}

get_tilemap_offset_4F46B:
	set ptr_0, #0
	LDA	inv_itemPrev_idx_31D
	mult_a_by_2
	ROL	ptr_0
	add_to_a data_2
	STA	data_2
	add_byte_to_byte data_3, ptr_0

get_tilemap_ptr_4F480:
	read_word  ptr_0, {(data_2),Y}

get_tilemap_descr_4F48B:
	LDY	#0
	set_iny tilemapWidth_308, {(ptr_0),Y}
	set tilemapHeight_30A, {(ptr_0),Y}

	add_byte_to_word ptr_0, #2

	set data_2, #0
	set data_3, #$20 
	LDA	byte_36E
	mult_a_by_4
	add_to_a data_3
	STA	data_3
	LDY	ppu_unk_byte_309

loc_4F4BA:
	if_y_equal_cmp #0, loc_4F4CF

	add_word_to_word_imm data_2, $20

	DEY
	JMP	loc_4F4BA
; ---------------------------------------------------------------------------

loc_4F4CF:
	add_byte_to_word data_2, tilemap_size_307

	set inv_spr_dscr1_30C, #0
	STA	ppu_unk_byte_309
	LDA	#$32 

loc_4F4E7:
	if_a_greater_cmp tilemapWidth_308, loc_4F4F6
	sub_a_sec tilemapWidth_308
	INC	inv_spr_dscr1_30C
	JMP	loc_4F4E7
; ---------------------------------------------------------------------------

loc_4F4F6:
	LDA	tilemapHeight_30A

loc_4F4F9:
	if_a_greater_cmp inv_spr_dscr1_30C, loc_4F50B
	sub_a_sec inv_spr_dscr1_30C
	STA	tilemapHeight_30A
	INC	ppu_unk_byte_309
	JMP	loc_4F4F9
; ---------------------------------------------------------------------------

loc_4F50B:

	if_a_equal ppu_unk_byte_309, loc_4F51B
	JSR	upload_sprite_func
	DEC	ppu_unk_byte_309
	if_a_not_equal ppu_unk_byte_309, loc_4F50B

loc_4F51B:
	if_a_equal tilemapHeight_30A, locret_4F526
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
	LDA	(ptr_0),Y
	add_to_a byte_31E
	STA	ppu_data_70,X
	INX
	INY
	if_y_greater_cmp tilemapWidth_308, loc_4F54A

	add_word_to_word_imm data_2, $20
	add_byte_to_word ptr_0, tilemapWidth_308

	INC	tilemapTypeUnk_30B
	if_a_greater_cmp_addr tilemapTypeUnk_30B, inv_spr_dscr1_30C, loc_4F538
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
	if_y_greater_cmp tilemapTypeUnk_30B, loc_13E195

	add_byte_to_word data_2, tilemapTypeUnk_30B
	add_byte_to_word ptr_0, tilemapTypeUnk_30B

	JSR	wait_for_ppu_data_upload_FC8C
	RTS
.endmacro

; ---------------------------------------------------------------------------