; =============== S U B	R O U T	I N E =======================================

load_tilemap_chunk_in_ram_7F897:
	set_ptr $805B

getTilemapPtr:
	set data_2, entry_idx_300
	set data_3, #0

	mult_word_by_2 data_2

	add_word_to_word ptr_0, data_2

getPtrToTilemap: ; getPtrToTilemap
	LDY	#0
	set data_2, {(ptr_0),Y}
	INY
	set data_3, {(ptr_0),Y}

	set ptr_0, data_2
	set ptr_1, data_3

getOffset_F8CC: ; unk data
	if_a_equal_cmp_addr tilemap_line_size_51, #$20, size_20_7F8DF
	
	add_byte_to_byte_clc ptr_0, #$C0 
	add_byte_to_byte ptr_1, #3

size_20_7F8DF:
	LDY	tilemap_line_idx_4F

add_size_7F8E1:
	if_y_equal_cmp #0, addOffset_7F8F6
	
	add_byte_to_word ptr_0, tilemap_line_size_51

	DEY
	JMP	add_size_7F8E1
; ---------------------------------------------------------------------------

addOffset_7F8F6:
	add_byte_to_word ptr_0, mapLineSize_50

init_F903:
	set data_2, mapLineWidth_52
	set data_3, mapLineHeight_53

	LDY	#0
	LDX	#0

write_tilemap_line_7F90F:
	set {tilemapData_4C,X}, {(ptr_0),Y}

	add_byte_to_word ptr_0, data_3

	
	INX
	if_x_greater_cmp data_2, write_tilemap_line_7F90F
	RTS
; End of function load_tilemap_chunk_in_ram_7F897

Common_Code_Tilemap:
	.include "common/common_funcs.asm"