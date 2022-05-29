; ---------------------------------------------------------------------------

.macro tilemap_entry_point_func

tilemap_switch_case:
	set bank_prev_345, bank_to_344
	set bank_switch_flag_6C, #$88
	IF_A_EQUAL_CMP_ADDR bank_command_346, #0, case0_8047
	RTS

case0_8047:
	JSR	load_tilemap_chunk_in_ram_F897
	JMP	return_804D

return_804D:
	RETURN_FROM_BANK_COMMAND

.endmacro

; ---------------------------------------------------------------------------

.macro load_tilemap_chunk_in_ram_func tilemaps_ptr

load_tilemap_chunk_in_ram_F897:
	GET_PTR_FROM_TBL tilemaps_ptr, entry_idx_300
	set_word_to_word ptr_0, data_2

getOffset_F8CC:
	IF_A_EQUAL_CMP_ADDR tilemap_line_size_51, #$20, size_20_F8DF
	ADD_WORD_TO_WORD_IMM ptr_0, $3C0

size_20_F8DF:
	LDY	tilemap_line_idx_4F

add_size_F8E1:
	IF_Y_EQUAL_CMP #0, addOffset_F8F6
	ADD_BYTE_TO_WORD ptr_0, tilemap_line_size_51
	DEY
	JMP	add_size_F8E1

; ---------------------------------------------------------------------------

addOffset_F8F6:
	ADD_BYTE_TO_WORD ptr_0, mapLineSize_50

init_F903:
	set data_2, mapLineWidth_52
	set data_3, mapLineHeight_53

	LDY	#0
	LDX	#0
write_tilemap_line_F90F:
	set {tilemapData_4C,X}, {(ptr_0),Y}
	ADD_BYTE_TO_WORD ptr_0, data_3
	INX
	IF_X_GREATER_CMP data_2, write_tilemap_line_F90F

	RTS

.endmacro

; ---------------------------------------------------------------------------