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


; =============== S U B	R O U T	I N E =======================================


unused_sub_7F926:
		LDA	#1
		STA	has_ppu_data_to_upload_6F

loc_7F92A:				
		LDA	has_ppu_data_to_upload_6F
		BNE	loc_7F92A
		RTS
; End of function unused_sub_7F926


; =============== S U B	R O U T	I N E =======================================


unused_sub_7F92F:			
		LDA	_PPU_STATUS
		BMI	unused_sub_7F92F

loc_7F934:				
		LDA	_PPU_STATUS
		BPL	loc_7F934
		RTS
; End of function unused_sub_7F92F


; =============== S U B	R O U T	I N E =======================================


unused_sub_7F93A:
		LDA	#1
		STA	frame_render_count_350

loc_7F93F:				
		LDA	frame_render_count_350
		BNE	loc_7F93F
		RTS
; End of function unused_sub_7F93A


; =============== S U B	R O U T	I N E =======================================


unused_sub_7F945:
		LDY	#0

loc_7F947:				
		LDX	#0

loc_7F949:				
		LDA	input_reg1_347
		CMP	#0
		BNE	locret_7F956
		INX
		BNE	loc_7F949
		INY
		BNE	loc_7F947

locret_7F956:				
		RTS
; End of function unused_sub_7F945


; =============== S U B	R O U T	I N E =======================================


unused_sub_7F957:			
		LDA	input_pressed_34A
		CMP	#$80 
		BNE	unused_sub_7F957
		RTS
; End of function unused_sub_7F957


; =============== S U B	R O U T	I N E =======================================


unused_sub_7F95F:			
		LDA	input_pressed_34A
		CMP	#$40 
		BNE	unused_sub_7F95F
		RTS
; End of function unused_sub_7F95F


; =============== S U B	R O U T	I N E =======================================


unused_sub_7F967:			
		LDA	input_pressed_34A
		CMP	#0
		BEQ	unused_sub_7F967
		RTS
; End of function unused_sub_7F967


; =============== S U B	R O U T	I N E =======================================


unused_sub_7F96F:			
		PHA
		JSR	unused_sub_7F97A
		PLA
		SEC
		SBC	#1
		BNE	unused_sub_7F96F
		RTS
; End of function unused_sub_7F96F


; =============== S U B	R O U T	I N E =======================================


unused_sub_7F97A:			
		PHA
		TXA
		PHA
		TYA
		PHA
		LDX	#0

loc_7F981:				
		LDY	#0

loc_7F983:				
		DEY
		BNE	loc_7F983
		DEX
		BNE	loc_7F981
		PLA
		TAY
		PLA
		TAX
		PLA
		RTS
; End of function unused_sub_7F97A


; =============== S U B	R O U T	I N E =======================================


nmi_sub_7F98F:				
		LDA	#$F0 
		STA	byte_218
		STA	byte_21C
		STA	byte_220
		STA	byte_224
		STA	byte_2E8
		STA	byte_2EC
		RTS
; End of function nmi_sub_7F98F


; =============== S U B	R O U T	I N E =======================================


nmi_sub_7F9A4:				
		LDA	byte_43E
		BEQ	loc_7F9CB
		LDA	byte_203
		BNE	loc_7F9B6
		LDA	#0
		STA	byte_43E
		JMP	locret_7F9EC
; ---------------------------------------------------------------------------

loc_7F9B6:				
		LDA	byte_203
		SEC
		SBC	#8
		STA	byte_203
		LDA	byte_207
		SEC
		SBC	#8
		STA	byte_207
		JMP	locret_7F9EC
; ---------------------------------------------------------------------------

loc_7F9CB:				
		LDA	byte_203
		CMP	#$F8 
		BNE	loc_7F9DA
		LDA	#1
		STA	byte_43E
		JMP	locret_7F9EC
; ---------------------------------------------------------------------------

loc_7F9DA:				
		LDA	byte_203
		CLC
		ADC	#8
		STA	byte_203
		LDA	byte_207
		CLC
		ADC	#8
		STA	byte_207

locret_7F9EC:				
					; nmi_sub_7F9A4+24j ...
		RTS
; End of function nmi_sub_7F9A4


; =============== S U B	R O U T	I N E =======================================


NMI_7F9ED:				
		PHP
		PHA
		TXA
		PHA
		TYA
		PHA

check_bank_switch_7F9F3:
		LDA	bank_switch_flag_6C
		CMP	#$88 
		BEQ	loc_7F9FC
		JMP	loc_7FA2D
; ---------------------------------------------------------------------------

loc_7F9FC:				
		LDA	#$EE 
		STA	bank_switch_flag_6C
		LDA	sprite_type_306
		BNE	loc_7FA08
		JSR	nmi_sub_7F98F

loc_7FA08:				
		LDA	#2
		STA	_PPU_OAM_DMA
		JSR	nmi_sub_7FA65
		JSR	nmi_sub_7FABA
		JSR	nmi_sub_7FAD3
		LDA	sprite_type_306
		CMP	#1
		BNE	loc_7FA23
		JSR	nmi_sub_7F9A4
		JSR	nmi_sub_7FB70

loc_7FA23:				
		JSR	nmi_sub_7FB36
		JSR	apu_music_update_7FBC8
		LDA	#$88 
		STA	bank_switch_flag_6C

loc_7FA2D:				
		LDA	byte_432
		BEQ	loc_7FA35
		DEC	byte_432

loc_7FA35:				
		INC	count_unk_463
		INC	count_unk_464
		INC	count_unk_465
		INC	count_unk_466
		INC	count_unk_467
		INC	count_unk_468
		INC	count_unk_469
		INC	count_unk_46A
		INC	count_unk_46B
		INC	count_unk_365
		INC	count_unk_46C
		LDA	frame_render_count_350
		BEQ	loc_7FA5E
		DEC	frame_render_count_350

loc_7FA5E:				
		PLA
		TAY
		PLA
		TAX
		PLA
		PLP

locret_7FA64:				
		RTI
; End of function NMI_7F9ED


; =============== S U B	R O U T	I N E =======================================


nmi_sub_7FA65:				
		LDA	has_ppu_data_to_upload_6F
		BNE	loc_7FA6A
		RTS
; ---------------------------------------------------------------------------

loc_7FA6A:				
		LDA	ppu_data_70
		BEQ	loc_7FAB5
		STA	ppu_fld0_x_6D
		LDX	#1

loc_7FA72:				
		LDA	ppu_data_70,X
		AND	#$80 
		BEQ	loc_7FA86
		LDA	ppu_ctrl_31F
		ORA	#4
		STA	ppu_ctrl_31F
		STA	_PPU_CTRL
		JMP	loc_7FA91
; ---------------------------------------------------------------------------

loc_7FA86:				
		LDA	ppu_ctrl_31F
		AND	#$FB 
		STA	ppu_ctrl_31F
		STA	_PPU_CTRL

loc_7FA91:				
		LDA	ppu_data_70,X
		AND	#$7F 
		STA	ppu_fld1_y_6E
		INX
		LDA	ppu_data_70,X
		STA	_PPU_ADDR
		INX
		LDA	ppu_data_70,X
		STA	_PPU_ADDR

loc_7FAA3:				
		INX
		LDA	ppu_data_70,X
		STA	_PPU_DATA
		DEC	ppu_fld1_y_6E
		BNE	loc_7FAA3
		DEC	ppu_fld0_x_6D
		BEQ	loc_7FAB5
		INX
		JMP	loc_7FA72
; ---------------------------------------------------------------------------

loc_7FAB5:				
					; nmi_sub_7FA65+4Aj
		LDA	#0
		STA	has_ppu_data_to_upload_6F
		RTS
; End of function nmi_sub_7FA65


; =============== S U B	R O U T	I N E =======================================


nmi_sub_7FABA:				
		LDA	ppu_ctrl_31F
		STA	_PPU_CTRL
		LDA	ppu_mask_320
		STA	_PPU_MASK
		LDA	ppu_scroll_x_304
		STA	_PPU_SCROLL
		LDA	ppu_scroll_y_305
		STA	_PPU_SCROLL
		RTS
; End of function nmi_sub_7FABA


; =============== S U B	R O U T	I N E =======================================


nmi_sub_7FAD3:				
		TYA
		PHA
		TYA
		PHA
		JSR	pad_input_update_7FAEB
		JSR	input_sub_7FB0B
		LDA	input_pressed_34A
		ORA	input_unk_34B
		STA	input_unk_349
		PLA
		TAX
		PLA
		TAY
		RTS
; End of function nmi_sub_7FAD3


; =============== S U B	R O U T	I N E =======================================


pad_input_update_7FAEB:			
		LDX	#1
		STX	_PAD0_REG
		DEX
		STX	_PAD0_REG
		LDA	#0
		LDY	#8

loc_7FAF8:				
		PHA
		LDA	_PAD0_REG,X
		STA	input_reg0_34E
		LSR	input_reg0_34E
		PLA
		ROL	A
		DEY
		BNE	loc_7FAF8
		STA	input_reg1_347,X
		RTS
; End of function pad_input_update_7FAEB


; =============== S U B	R O U T	I N E =======================================


input_sub_7FB0B:			
		LDX	#0
		LDA	input_reg1_347,X
		EOR	input_unk_34C,X
		AND	input_reg1_347,X
		STA	input_pressed_34A,X
		LDA	input_reg1_347,X
		STA	input_unk_34C,X
		RTS
; End of function input_sub_7FB0B


; =============== S U B	R O U T	I N E =======================================


unused_sub_7FB20:
		LDA	ppu_ctrl_31F
		STA	_PPU_CTRL
		LDA	ppu_mask_320
		STA	_PPU_MASK
		RTS
; End of function unused_sub_7FB20


; =============== S U B	R O U T	I N E =======================================


unused_sub_7FB2D:
		LDA	#0
		STA	_PPU_CTRL
		STA	_PPU_MASK
		RTS
; End of function unused_sub_7FB2D


; =============== S U B	R O U T	I N E =======================================


nmi_sub_7FB36:				
		INC	byte_353
		LDA	byte_353
		CMP	#$19
		BCS	loc_7FB41
		RTS
; ---------------------------------------------------------------------------

loc_7FB41:				
		LDA	#0
		STA	byte_353
		LDA	byte_354
		CMP	#0
		BNE	loc_7FB6C
		LDA	byte_355
		CMP	#0
		BNE	loc_7FB64
		LDA	byte_356
		CMP	#0
		BNE	loc_7FB5C
		RTS
; ---------------------------------------------------------------------------

loc_7FB5C:				
		DEC	byte_356
		LDA	#$A
		STA	byte_355

loc_7FB64:				
		DEC	byte_355
		LDA	#$A
		STA	byte_354

loc_7FB6C:				
		DEC	byte_354
		RTS
; End of function nmi_sub_7FB36


; =============== S U B	R O U T	I N E =======================================


nmi_sub_7FB70:				
		INC	scroll_offset_x_479
		LDA	scroll_offset_x_479
		CMP	#$A
		BCC	locret_7FBC7
		LDA	scroll_offset_y_47A
		EOR	#$80 
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		AND	#$FE 
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		AND	#$7F 
		CMP	#0
		BEQ	locret_7FBC7
		LDA	scroll_offset_y_47A
		PHA
		LDA	scroll_offset_y_47A
		AND	#$80 
		CMP	#0
		BEQ	loc_7FBA8
		LDA	#0
		STA	ppu_scroll_y_305
		JMP	loc_7FBBA
; ---------------------------------------------------------------------------

loc_7FBA8:				
		LDA	scroll_offset_y_47A
		AND	#$7F 
		STA	scroll_offset_y_47A
		LDA	ppu_scroll_y_305
		CLC
		ADC	scroll_offset_y_47A
		STA	ppu_scroll_y_305

loc_7FBBA:				
		PLA
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		SEC
		SBC	#2
		STA	scroll_offset_y_47A

locret_7FBC7:				
					; nmi_sub_7FB70+21j
		RTS
; End of function nmi_sub_7FB70


; =============== S U B	R O U T	I N E =======================================


apu_music_update_7FBC8:			
		LDA	bank_command_346
		PHA
		LDA	bank_to_344
		PHA
		LDA	bank_from_343
		PHA
		LDA	#banks_13
		STA	bank_to_344
		LDA	#$88 
		STA	bank_command_346
		JSR	bank_switch_78000
		PLA
		STA	bank_from_343
		PLA
		STA	bank_to_344
		PLA
		STA	bank_command_346
		RTS
; End of function apu_music_update_7FBC8