.macro tilemap_entry_point_func

tilemap_switch_case:
	set bank_prev_345, bank_to_344
	set bank_switch_flag_6C, #$88

	if_a_equal_cmp_addr bank_command_346, #0, case0_78047
	RTS
; ---------------------------------------------------------------------------

case0_78047:
	JSR	load_tilemap_chunk_in_ram_7F897
	JMP	return_7804D
; ---------------------------------------------------------------------------

return_7804D:
	set bank_command_346, #$FF
	set bank_to_344, bank_from_343

	JMP	bank_switch_8000

.endmacro

.macro load_tilemap_chunk_in_ram_func tilemaps_ptr

; =============== S U B	R O U T	I N E =======================================

load_tilemap_chunk_in_ram_7F897:
	set_word_to_word_const ptr_0, tilemaps_ptr

getTilemapPtr: ; ptr + idx * 2
	set_byte_to_word data_2, entry_idx_300
	mult_word_by_2 data_2

	add_word_to_word ptr_0, data_2

getPtrToTilemap:
	read_word data_2, {(ptr_0),Y}
	set_word_to_word ptr_0, data_2

getOffset_F8CC:
	if_a_equal_cmp_addr tilemap_line_size_51, #$20, size_20_7F8DF
	add_word_to_word_imm ptr_0, $3C0

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

.endmacro