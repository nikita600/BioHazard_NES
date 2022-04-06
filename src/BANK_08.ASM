; Segment type:	Pure code
		;.segment BANK_08 (Tilemaps)
		* =  $8000

; =============== S U B	R O U T	I N E =======================================

; Tilemaps

bank_switch_88000:			
		.include "common/bank_switch_func.asm"
		
switch_case_8035:
		LDA	bank_to_344
		STA	bank_prev_345
		LDA	#$88 
		STA	bank_switch_flag_6C
		LDA	bank_command_346
		CMP	#0
		BEQ	loc_88047
		RTS
; ---------------------------------------------------------------------------

loc_88047:				
		JSR	tilemap_handler_8F897
		JMP	loc_8804D
; ---------------------------------------------------------------------------

loc_8804D:				
		LDA	#$FF
		STA	bank_command_346
		LDA	bank_from_343
		STA	bank_to_344
		JMP	bank_switch_88000 ; Tilemaps
; End of function sub_88035

; ---------------------------------------------------------------------------
Tilemaps_8805B:	
		.include "tilemaps/bank_08.asm"
		
; =============== S U B	R O U T	I N E =======================================


tilemap_handler_8F897:			
		LDA	#$5B 
		STA	ptr_0
		LDA	#$80 
		STA	ptr_1
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
		LDA	tilemap_line_size_51
		CMP	#$20 
		BEQ	loc_8F8DF
		LDA	ptr_0
		CLC
		ADC	#$C0 
		STA	ptr_0
		LDA	ptr_1
		ADC	#3
		STA	ptr_1

loc_8F8DF:				
		LDY	tilemap_line_idx_4F

loc_8F8E1:				
		CPY	#0
		BEQ	loc_8F8F6
		LDA	ptr_0
		CLC
		ADC	tilemap_line_size_51
		STA	ptr_0
		LDA	ptr_1
		ADC	#0
		STA	ptr_1
		DEY
		JMP	loc_8F8E1
; ---------------------------------------------------------------------------

loc_8F8F6:				
		LDA	ptr_0
		CLC
		ADC	mapLineSize_50
		STA	ptr_0
		LDA	ptr_1
		ADC	#0
		STA	ptr_1
		LDA	mapLineWidth_52
		STA	data_2
		LDA	mapLineHeight_53
		STA	data_3
		LDY	#0
		LDX	#0

loc_8F90F:				
		LDA	(ptr_0),Y
		STA	tilemapData_4C,X
		LDA	ptr_0
		CLC
		ADC	data_3
		STA	ptr_0
		LDA	ptr_1
		ADC	#0
		STA	ptr_1
		INX
		CPX	data_2
		BCC	loc_8F90F
		RTS
; End of function tilemap_handler_8F897


; =============== S U B	R O U T	I N E =======================================


sub_8F926:
		LDA	#1
		STA	has_ppu_data_to_upload_6F

loc_8F92A:				
		LDA	has_ppu_data_to_upload_6F
		BNE	loc_8F92A
		RTS
; End of function sub_8F926


; =============== S U B	R O U T	I N E =======================================


sub_8F92F:				
		LDA	_PPU_STATUS
		BMI	sub_8F92F

loc_8F934:				
		LDA	_PPU_STATUS
		BPL	loc_8F934
		RTS
; End of function sub_8F92F


; =============== S U B	R O U T	I N E =======================================


wait_for_count350_zero_8F93A:
		LDA	#1
		STA	frame_render_count_350

loc_8F93F:				
		LDA	frame_render_count_350
		BNE	loc_8F93F
		RTS
; End of function wait_for_count350_zero_8F93A


; =============== S U B	R O U T	I N E =======================================


sub_8F945:
		LDY	#0

loc_8F947:				
		LDX	#0

loc_8F949:				
		LDA	input_reg1_347
		CMP	#0
		BNE	locret_8F956
		INX
		BNE	loc_8F949
		INY
		BNE	loc_8F947

locret_8F956:				
		RTS
; End of function sub_8F945


; =============== S U B	R O U T	I N E =======================================


unused_8F957:				
		LDA	input_pressed_34A
		CMP	#$80 
		BNE	unused_8F957
		RTS
; End of function unused_8F957


; =============== S U B	R O U T	I N E =======================================


unused_8F95F:				
		LDA	input_pressed_34A
		CMP	#$40 
		BNE	unused_8F95F
		RTS
; End of function unused_8F95F


; =============== S U B	R O U T	I N E =======================================


unused_8F967:				
		LDA	input_pressed_34A
		CMP	#0
		BEQ	unused_8F967
		RTS
; End of function unused_8F967


; =============== S U B	R O U T	I N E =======================================


sub_8F96F:				
		PHA
		JSR	sub_8F97A
		PLA
		SEC
		SBC	#1
		BNE	sub_8F96F
		RTS
; End of function sub_8F96F


; =============== S U B	R O U T	I N E =======================================


sub_8F97A:				
		PHA
		TXA
		PHA
		TYA
		PHA
		LDX	#0

loc_8F981:				
		LDY	#0

loc_8F983:				
		DEY
		BNE	loc_8F983
		DEX
		BNE	loc_8F981
		PLA
		TAY
		PLA
		TAX
		PLA
		RTS
; End of function sub_8F97A


; =============== S U B	R O U T	I N E =======================================


nmi_sub_8F98F:				
		LDA	#$F0 
		STA	byte_218
		STA	byte_21C
		STA	byte_220
		STA	byte_224
		STA	byte_2E8
		STA	byte_2EC
		RTS
; End of function nmi_sub_8F98F


; =============== S U B	R O U T	I N E =======================================


sub_8F9A4:				
		LDA	byte_43E
		BEQ	loc_8F9CB
		LDA	byte_203
		BNE	loc_8F9B6
		LDA	#0
		STA	byte_43E
		JMP	locret_8F9EC
; ---------------------------------------------------------------------------

loc_8F9B6:				
		LDA	byte_203
		SEC
		SBC	#8
		STA	byte_203
		LDA	byte_207
		SEC
		SBC	#8
		STA	byte_207
		JMP	locret_8F9EC
; ---------------------------------------------------------------------------

loc_8F9CB:				
		LDA	byte_203
		CMP	#$F8 
		BNE	loc_8F9DA
		LDA	#1
		STA	byte_43E
		JMP	locret_8F9EC
; ---------------------------------------------------------------------------

loc_8F9DA:				
		LDA	byte_203
		CLC
		ADC	#8
		STA	byte_203
		LDA	byte_207
		CLC
		ADC	#8
		STA	byte_207

locret_8F9EC:				
					; sub_8F9A4+24j ...
		RTS
; End of function sub_8F9A4


; =============== S U B	R O U T	I N E =======================================


NMI_8F9ED:				
		PHP
		PHA
		TXA
		PHA
		TYA
		PHA
		LDA	bank_switch_flag_6C
		CMP	#$88 
		BEQ	loc_8F9FC
		JMP	loc_8FA2D
; ---------------------------------------------------------------------------

loc_8F9FC:				
		LDA	#$EE 
		STA	bank_switch_flag_6C
		LDA	sprite_type_306
		BNE	loc_8FA08
		JSR	nmi_sub_8F98F

loc_8FA08:				
		LDA	#2
		STA	_PPU_OAM_DMA
		JSR	sub_8FA65
		JSR	sub_8FABA
		JSR	sub_8FAD3
		LDA	sprite_type_306
		CMP	#1
		BNE	loc_8FA23
		JSR	sub_8F9A4
		JSR	sub_8FB70

loc_8FA23:				
		JSR	sub_8FB36
		JSR	apu_music_update_8FBC8
		LDA	#$88 
		STA	bank_switch_flag_6C

loc_8FA2D:				
		LDA	byte_432
		BEQ	loc_8FA35
		DEC	byte_432

loc_8FA35:				
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
		BEQ	loc_8FA5E
		DEC	frame_render_count_350

loc_8FA5E:				
		PLA
		TAY
		PLA
		TAX
		PLA
		PLP

locret_8FA64:				
		RTI
; End of function NMI_8F9ED


; =============== S U B	R O U T	I N E =======================================


sub_8FA65:				
		LDA	has_ppu_data_to_upload_6F
		BNE	loc_8FA6A
		RTS
; ---------------------------------------------------------------------------

loc_8FA6A:				
		LDA	ppu_data_70
		BEQ	loc_8FAB5
		STA	ppu_fld0_x_6D
		LDX	#1

loc_8FA72:				
		LDA	ppu_data_70,X
		AND	#$80 
		BEQ	loc_8FA86
		LDA	ppu_ctrl_31F
		ORA	#4
		STA	ppu_ctrl_31F
		STA	_PPU_CTRL
		JMP	loc_8FA91
; ---------------------------------------------------------------------------

loc_8FA86:				
		LDA	ppu_ctrl_31F
		AND	#$FB 
		STA	ppu_ctrl_31F
		STA	_PPU_CTRL

loc_8FA91:				
		LDA	ppu_data_70,X
		AND	#$7F 
		STA	ppu_fld1_y_6E
		INX
		LDA	ppu_data_70,X
		STA	_PPU_ADDR
		INX
		LDA	ppu_data_70,X
		STA	_PPU_ADDR

loc_8FAA3:				
		INX
		LDA	ppu_data_70,X
		STA	_PPU_DATA
		DEC	ppu_fld1_y_6E
		BNE	loc_8FAA3
		DEC	ppu_fld0_x_6D
		BEQ	loc_8FAB5
		INX
		JMP	loc_8FA72
; ---------------------------------------------------------------------------

loc_8FAB5:				
					; sub_8FA65+4Aj
		LDA	#0
		STA	has_ppu_data_to_upload_6F
		RTS
; End of function sub_8FA65


; =============== S U B	R O U T	I N E =======================================


sub_8FABA:				
		LDA	ppu_ctrl_31F
		STA	_PPU_CTRL
		LDA	ppu_mask_320
		STA	_PPU_MASK
		LDA	ppu_scroll_x_304
		STA	_PPU_SCROLL
		LDA	ppu_scroll_y_305
		STA	_PPU_SCROLL
		RTS
; End of function sub_8FABA


; =============== S U B	R O U T	I N E =======================================


sub_8FAD3:				
		TYA
		PHA
		TYA
		PHA
		JSR	pad_input_update_8FAEB
		JSR	input_sub_8FB0B
		LDA	input_pressed_34A
		ORA	input_unk_34B
		STA	input_unk_349
		PLA
		TAX
		PLA
		TAY
		RTS
; End of function sub_8FAD3


; =============== S U B	R O U T	I N E =======================================


pad_input_update_8FAEB:			
		LDX	#1
		STX	_PAD0_REG
		DEX
		STX	_PAD0_REG
		LDA	#0
		LDY	#8

loc_8FAF8:				
		PHA
		LDA	_PAD0_REG,X
		STA	input_reg0_34E
		LSR	input_reg0_34E
		PLA
		ROL	A
		DEY
		BNE	loc_8FAF8
		STA	input_reg1_347,X
		RTS
; End of function pad_input_update_8FAEB


; =============== S U B	R O U T	I N E =======================================


input_sub_8FB0B:			
		LDX	#0
		LDA	input_reg1_347,X
		EOR	input_unk_34C,X
		AND	input_reg1_347,X
		STA	input_pressed_34A,X
		LDA	input_reg1_347,X
		STA	input_unk_34C,X
		RTS
; End of function input_sub_8FB0B


; =============== S U B	R O U T	I N E =======================================


unused_8FB20:
		LDA	ppu_ctrl_31F
		STA	_PPU_CTRL
		LDA	ppu_mask_320
		STA	_PPU_MASK
		RTS
; End of function unused_8FB20


; =============== S U B	R O U T	I N E =======================================


unused_8FB2D:
		LDA	#0
		STA	_PPU_CTRL
		STA	_PPU_MASK
		RTS
; End of function unused_8FB2D


; =============== S U B	R O U T	I N E =======================================


sub_8FB36:				
		INC	byte_353
		LDA	byte_353
		CMP	#$19
		BCS	loc_8FB41
		RTS
; ---------------------------------------------------------------------------

loc_8FB41:				
		LDA	#0
		STA	byte_353
		LDA	byte_354
		CMP	#0
		BNE	loc_8FB6C
		LDA	byte_355
		CMP	#0
		BNE	loc_8FB64
		LDA	byte_356
		CMP	#0
		BNE	loc_8FB5C
		RTS
; ---------------------------------------------------------------------------

loc_8FB5C:				
		DEC	byte_356
		LDA	#$A
		STA	byte_355

loc_8FB64:				
		DEC	byte_355
		LDA	#$A
		STA	byte_354

loc_8FB6C:				
		DEC	byte_354
		RTS
; End of function sub_8FB36


; =============== S U B	R O U T	I N E =======================================


sub_8FB70:				
		INC	scroll_offset_x_479
		LDA	scroll_offset_x_479
		CMP	#$A
		BCC	locret_8FBC7
		LDA	scroll_offset_y_47A
		EOR	#$80 
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		AND	#$FE 
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		AND	#$7F 
		CMP	#0
		BEQ	locret_8FBC7
		LDA	scroll_offset_y_47A
		PHA
		LDA	scroll_offset_y_47A
		AND	#$80 
		CMP	#0
		BEQ	loc_8FBA8
		LDA	#0
		STA	ppu_scroll_y_305
		JMP	loc_8FBBA
; ---------------------------------------------------------------------------

loc_8FBA8:				
		LDA	scroll_offset_y_47A
		AND	#$7F 
		STA	scroll_offset_y_47A
		LDA	ppu_scroll_y_305
		CLC
		ADC	scroll_offset_y_47A
		STA	ppu_scroll_y_305

loc_8FBBA:				
		PLA
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		SEC
		SBC	#2
		STA	scroll_offset_y_47A

locret_8FBC7:				
					; sub_8FB70+21j
		RTS
; End of function sub_8FB70


; =============== S U B	R O U T	I N E =======================================


apu_music_update_8FBC8:			
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
		JSR	bank_switch_88000 ; Tilemaps
		PLA
		STA	bank_from_343
		PLA
		STA	bank_to_344
		PLA
		STA	bank_command_346
		RTS
; End of function apu_music_update_8FBC8

; ---------------------------------------------------------------------------
aDPCrT_5:	.BYTE ', D, P, <CR> = T) : ',0
aListOnOffListingDest_8:.BYTE 'LIST ON/OFF Listing Destination  (T, D, P, <CR> = T) : ',0
aEnterRunTimeSelectio_9:.BYTE $A
		.BYTE $A
		.BYTE 'Enter Run Time Selection : ',0
		.BYTE $A,0
aAssemblyTerminatedBy_9:.BYTE 'Assembly Terminated By Operator',$A
		.BYTE $A,0
aCanTCreateDiskListin_8:.BYTE 'Can',$27,'t Create Disk Listing File',$A,0
aActiveCommands_6:.BYTE	$A
		.BYTE '                         ***** Active Commands *****',$A
		.BYTE $A,0
aCtrlSStopOutput_8:.BYTE '                           Ctrl S = Stop Output',$A,0
aCtrlQStartOutput_8:.BYTE '                           Ctrl Q = Start Output',$A,0
aEscCStopAssembly_8:.BYTE '                           Esc  C = Stop Assembly',$A,0
aEscTTerminalOutput_8:.BYTE '                           Esc  T = Terminal Output',$A,0
aEscPPrinterOutput_8:.BYTE '                           Esc  P = Printer Output',$A,0
aEscDDiskOutput_8:.BYTE	'                           Esc  D = Disk Output',$A,0
aEscMMultipleOutput_8:.BYTE '                           Esc  M = Multiple Output',$A,0
aEscNNoOutput_9:.BYTE '                           Esc  N = No Output',$A
		.BYTE $A,0
aRenameFileError_8:.BYTE 'Rename File Error',$A,0
aPage4u_8:	.BYTE 'Page %4u',0
aLib_8:		.BYTE 'LIB',0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE	0
aC_8:		.BYTE '%c',0
aMaximumNumberOfDiffe_7:.BYTE $A
		.BYTE 'Maximum Number of Different Sections (%d) Exceeded.  Link Term'
		.BYTE 'inated.',$A
		.BYTE $A,0
aS_8:		.BYTE '%s',0
		.BYTE	0
aDiskListingFilename_8:.BYTE 'Disk Listing  Filename : ',0
aSymbolTableFilename_8:.BYTE 'Symbol Table  Filename : ',0
aFormat_8:	.BYTE 'Format   : ',0
aLinkerOutputFilename_8:.BYTE 'Linker Output Filename : ',0
aMicrotek_8:	.BYTE 'Microtek',0
aZax_8:		.BYTE 'Zax',0
aAbbreviated2500A_d__8:.BYTE 'Abbreviated 2500 A.D.',0
a2500A_d__9:	.BYTE '2500 A.D.',0
aNoneSpecified_8:.BYTE '<None Specified>',0
aLinkErrors_9:	.BYTE $A
		.BYTE '         Link Errors :  ',0
aOutputFormat_9:.BYTE '         Output Format :  ',0
aExecutable_8:	.BYTE 'Executable',0
aIntelHex_8:	.BYTE 'Intel Hex',0
aExtendedIntelHex_8:.BYTE 'Extended Intel Hex',0
aTektronixHex_8:.BYTE 'Tektronix Hex',0
aMotorolaS1_8:	.BYTE 'Motorola S1',0
		.BYTE	0
aMotorolaS_8:	.BYTE 'Motorola S'
		.WORD NMI_8F9ED
		.WORD Tilemaps_8805B
		.WORD locret_8FA64
; end of 'BANK_08'

; ===========================================================================