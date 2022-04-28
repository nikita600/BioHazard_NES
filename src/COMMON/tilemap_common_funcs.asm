; =============== S U B	R O U T	I N E =======================================

load_tilemap_chunk_in_ram_7F897:

	set_ptr $805B

getTilemapPtr:

	set data_2, entry_idx_300
	set data_3, #0

	ASL	data_2
	ROL	data_3

	add_to_byte_clc ptr_0, data_2

	LDA	ptr_1
	ADC	data_3
	STA	ptr_1

getPtrToTilemap: ; getPtrToTilemap
	LDY	#0
	LDA	(ptr_0),Y
	STA	data_2
	INY
	LDA	(ptr_0),Y
	STA	data_3

	set ptr_0, data_2
	set ptr_1, data_3

getOffset_F8CC: ; unk data
	LDA	tilemap_line_size_51
	CMP	#$20 
	BEQ	size_20_7F8DF
	
	add_to_byte_clc ptr_0, #$C0 

	LDA	ptr_1
	ADC	#3
	STA	ptr_1

size_20_7F8DF:
	LDY	tilemap_line_idx_4F

add_size_7F8E1:
	CPY	#0
	BEQ	addOffset_7F8F6
	
	add_to_ptr_byte tilemap_line_size_51

	DEY
	JMP	add_size_7F8E1
; ---------------------------------------------------------------------------

addOffset_7F8F6:
	add_to_byte_clc ptr_0, mapLineSize_50


	LDA	ptr_1
	ADC	#0
	STA	ptr_1

init_F903:
	set data_2, mapLineWidth_52
	set data_3, mapLineHeight_53

	LDY	#0
	LDX	#0

write_tilemap_line_7F90F:	
	LDA	(ptr_0),Y
	STA	tilemapData_4C,X

	add_to_byte_clc ptr_0, data_3	; entrySize

	LDA	ptr_1
	ADC	#0
	STA	ptr_1
	
	INX
	CPX	data_2	; lineSize
	BCC	write_tilemap_line_7F90F
	RTS
; End of function load_tilemap_chunk_in_ram_7F897

Common_Code_Tilemap:
	.include "common/common_funcs.asm"