; =============== S U B	R O U T	I N E =======================================

load_tilemap_chunk_in_ram_7F897:	
		LDA	#$5B 
		STA	ptr_0
		LDA	#$80 
		STA	ptr_1

getTilemapPtr:
		LDA	entry_idx_300
		STA	data_2
		LDA	#0
		STA	data_3
		ASL	data_2
		ROL	data_3
		LDA	ptr_0
		CLC
		ADC	data_2
		STA	ptr_0
		LDA	ptr_1
		ADC	data_3
		STA	ptr_1

getPtrToTilemap:			; getPtrToTilemap
		LDY	#0
		LDA	(ptr_0),Y
		STA	data_2
		INY
		LDA	(ptr_0),Y
		STA	data_3
		LDA	data_2
		STA	ptr_0
		LDA	data_3
		STA	ptr_1

getOffset_F8CC:				; unk data
		LDA	tilemap_line_size_51
		CMP	#$20 
		BEQ	size_20_7F8DF
		LDA	ptr_0
		CLC
		ADC	#$C0 
		STA	ptr_0
		LDA	ptr_1
		ADC	#3
		STA	ptr_1

size_20_7F8DF:				
		LDY	tilemap_line_idx_4F

add_size_7F8E1:				
		CPY	#0
		BEQ	addOffset_7F8F6
		LDA	ptr_0
		CLC
		ADC	tilemap_line_size_51
		STA	ptr_0
		LDA	ptr_1
		ADC	#0
		STA	ptr_1
		DEY
		JMP	add_size_7F8E1
; ---------------------------------------------------------------------------

addOffset_7F8F6:			
		LDA	ptr_0
		CLC
		ADC	mapLineSize_50
		STA	ptr_0
		LDA	ptr_1
		ADC	#0
		STA	ptr_1

init_F903:
		LDA	mapLineWidth_52
		STA	data_2
		LDA	mapLineHeight_53
		STA	data_3
		LDY	#0
		LDX	#0

write_tilemap_line_7F90F:		
		LDA	(ptr_0),Y
		STA	tilemapData_4C,X
		LDA	ptr_0
		CLC
		ADC	data_3		; entrySize
		STA	ptr_0
		LDA	ptr_1
		ADC	#0
		STA	ptr_1
		INX
		CPX	data_2		; lineSize
		BCC	write_tilemap_line_7F90F
		RTS
; End of function load_tilemap_chunk_in_ram_7F897

Common_Code_Tilemap:
		.include "common/common_funcs.asm"