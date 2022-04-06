; Segment type:	Pure code
		;.segment BANK_0C (Tilemaps)
		* =  $8000

; =============== S U B	R O U T	I N E =======================================


bank_switch_C8000:			
		.include "common/bank_switch_func.asm"

switch_case_8035:
		LDA	bank_to_344
		STA	bank_prev_345
		LDA	#$88 
		STA	bank_switch_flag_6C
		LDA	bank_command_346
		CMP	#0
		BEQ	loc_C8047
		RTS
; ---------------------------------------------------------------------------

loc_C8047:				
		JSR	tilemap_handler_CF897
		JMP	loc_C804D
; ---------------------------------------------------------------------------

loc_C804D:				
		LDA	#$FF
		STA	bank_command_346
		LDA	bank_from_343
		STA	bank_to_344
		JMP	bank_switch_C8000
; End of function bank_switch_C8000

; ---------------------------------------------------------------------------
off_C805B:
		.include "tilemaps/bank_0C.asm"
		
; =============== S U B	R O U T	I N E =======================================


tilemap_handler_CF897:			
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
		BEQ	loc_CF8DF
		LDA	ptr_0
		CLC
		ADC	#$C0 
		STA	ptr_0
		LDA	ptr_1
		ADC	#3
		STA	ptr_1

loc_CF8DF:				
		LDY	tilemap_line_idx_4F

loc_CF8E1:				
		CPY	#0
		BEQ	loc_CF8F6
		LDA	ptr_0
		CLC
		ADC	tilemap_line_size_51
		STA	ptr_0
		LDA	ptr_1
		ADC	#0
		STA	ptr_1
		DEY
		JMP	loc_CF8E1
; ---------------------------------------------------------------------------

loc_CF8F6:				
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

loc_CF90F:				
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
		BCC	loc_CF90F
		RTS
; End of function tilemap_handler_CF897


; =============== S U B	R O U T	I N E =======================================


sub_CF926:
		LDA	#1
		STA	has_ppu_data_to_upload_6F

loc_CF92A:				
		LDA	has_ppu_data_to_upload_6F
		BNE	loc_CF92A
		RTS
; End of function sub_CF926


; =============== S U B	R O U T	I N E =======================================


sub_CF92F:				
		LDA	_PPU_STATUS
		BMI	sub_CF92F

loc_CF934:				
		LDA	_PPU_STATUS
		BPL	loc_CF934
		RTS
; End of function sub_CF92F


; =============== S U B	R O U T	I N E =======================================


wait_for_count350_zero_CF93A:
		LDA	#1
		STA	frame_render_count_350

loc_CF93F:				
		LDA	frame_render_count_350
		BNE	loc_CF93F
		RTS
; End of function wait_for_count350_zero_CF93A


; =============== S U B	R O U T	I N E =======================================


sub_CF945:
		LDY	#0

loc_CF947:				
		LDX	#0

loc_CF949:				
		LDA	input_reg1_347
		CMP	#0
		BNE	locret_CF956
		INX
		BNE	loc_CF949
		INY
		BNE	loc_CF947

locret_CF956:				
		RTS
; End of function sub_CF945


; =============== S U B	R O U T	I N E =======================================


unused_CF957:				
		LDA	input_pressed_34A
		CMP	#$80 
		BNE	unused_CF957
		RTS
; End of function unused_CF957


; =============== S U B	R O U T	I N E =======================================


unused_CF95F:				
		LDA	input_pressed_34A
		CMP	#$40 
		BNE	unused_CF95F
		RTS
; End of function unused_CF95F


; =============== S U B	R O U T	I N E =======================================


unused_CF967:				
		LDA	input_pressed_34A
		CMP	#0
		BEQ	unused_CF967
		RTS
; End of function unused_CF967


; =============== S U B	R O U T	I N E =======================================


sub_CF96F:				
		PHA
		JSR	sub_CF97A
		PLA
		SEC
		SBC	#1
		BNE	sub_CF96F
		RTS
; End of function sub_CF96F


; =============== S U B	R O U T	I N E =======================================


sub_CF97A:				
		PHA
		TXA
		PHA
		TYA
		PHA
		LDX	#0

loc_CF981:				
		LDY	#0

loc_CF983:				
		DEY
		BNE	loc_CF983
		DEX
		BNE	loc_CF981
		PLA
		TAY
		PLA
		TAX
		PLA
		RTS
; End of function sub_CF97A


; =============== S U B	R O U T	I N E =======================================


nmi_sub_CF98F:				
		LDA	#$F0 
		STA	byte_218
		STA	byte_21C
		STA	byte_220
		STA	byte_224
		STA	byte_2E8
		STA	byte_2EC
		RTS
; End of function nmi_sub_CF98F


; =============== S U B	R O U T	I N E =======================================


sub_CF9A4:				
		LDA	byte_43E
		BEQ	loc_CF9CB
		LDA	byte_203
		BNE	loc_CF9B6
		LDA	#0
		STA	byte_43E
		JMP	locret_CF9EC
; ---------------------------------------------------------------------------

loc_CF9B6:				
		LDA	byte_203
		SEC
		SBC	#8
		STA	byte_203
		LDA	byte_207
		SEC
		SBC	#8
		STA	byte_207
		JMP	locret_CF9EC
; ---------------------------------------------------------------------------

loc_CF9CB:				
		LDA	byte_203
		CMP	#$F8 
		BNE	loc_CF9DA
		LDA	#1
		STA	byte_43E
		JMP	locret_CF9EC
; ---------------------------------------------------------------------------

loc_CF9DA:				
		LDA	byte_203
		CLC
		ADC	#8
		STA	byte_203
		LDA	byte_207
		CLC
		ADC	#8
		STA	byte_207

locret_CF9EC:				
					; sub_CF9A4+24j ...
		RTS
; End of function sub_CF9A4


; =============== S U B	R O U T	I N E =======================================


NMI_CF9ED:				
		PHP
		PHA
		TXA
		PHA
		TYA
		PHA
		LDA	bank_switch_flag_6C
		CMP	#$88 
		BEQ	loc_CF9FC
		JMP	loc_CFA2D
; ---------------------------------------------------------------------------

loc_CF9FC:				
		LDA	#$EE 
		STA	bank_switch_flag_6C
		LDA	sprite_type_306
		BNE	loc_CFA08
		JSR	nmi_sub_CF98F

loc_CFA08:				
		LDA	#2
		STA	_PPU_OAM_DMA
		JSR	sub_CFA65
		JSR	sub_CFABA
		JSR	sub_CFAD3
		LDA	sprite_type_306
		CMP	#1
		BNE	loc_CFA23
		JSR	sub_CF9A4
		JSR	sub_CFB70

loc_CFA23:				
		JSR	sub_CFB36
		JSR	apu_music_update_CFBC8
		LDA	#$88 
		STA	bank_switch_flag_6C

loc_CFA2D:				
		LDA	byte_432
		BEQ	loc_CFA35
		DEC	byte_432

loc_CFA35:				
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
		BEQ	loc_CFA5E
		DEC	frame_render_count_350

loc_CFA5E:				
		PLA
		TAY
		PLA
		TAX
		PLA
		PLP

locret_CFA64:				
		RTI
; End of function NMI_CF9ED


; =============== S U B	R O U T	I N E =======================================


sub_CFA65:				
		LDA	has_ppu_data_to_upload_6F
		BNE	loc_CFA6A
		RTS
; ---------------------------------------------------------------------------

loc_CFA6A:				
		LDA	ppu_data_70
		BEQ	loc_CFAB5
		STA	ppu_fld0_x_6D
		LDX	#1

loc_CFA72:				
		LDA	ppu_data_70,X
		AND	#$80 
		BEQ	loc_CFA86
		LDA	ppu_ctrl_31F
		ORA	#4
		STA	ppu_ctrl_31F
		STA	_PPU_CTRL
		JMP	loc_CFA91
; ---------------------------------------------------------------------------

loc_CFA86:				
		LDA	ppu_ctrl_31F
		AND	#$FB 
		STA	ppu_ctrl_31F
		STA	_PPU_CTRL

loc_CFA91:				
		LDA	ppu_data_70,X
		AND	#$7F 
		STA	ppu_fld1_y_6E
		INX
		LDA	ppu_data_70,X
		STA	_PPU_ADDR
		INX
		LDA	ppu_data_70,X
		STA	_PPU_ADDR

loc_CFAA3:				
		INX
		LDA	ppu_data_70,X
		STA	_PPU_DATA
		DEC	ppu_fld1_y_6E
		BNE	loc_CFAA3
		DEC	ppu_fld0_x_6D
		BEQ	loc_CFAB5
		INX
		JMP	loc_CFA72
; ---------------------------------------------------------------------------

loc_CFAB5:				
					; sub_CFA65+4Aj
		LDA	#0
		STA	has_ppu_data_to_upload_6F
		RTS
; End of function sub_CFA65


; =============== S U B	R O U T	I N E =======================================


sub_CFABA:				
		LDA	ppu_ctrl_31F
		STA	_PPU_CTRL
		LDA	ppu_mask_320
		STA	_PPU_MASK
		LDA	ppu_scroll_x_304
		STA	_PPU_SCROLL
		LDA	ppu_scroll_y_305
		STA	_PPU_SCROLL
		RTS
; End of function sub_CFABA


; =============== S U B	R O U T	I N E =======================================


sub_CFAD3:				
		TYA
		PHA
		TYA
		PHA
		JSR	pad_input_update_CFAEB
		JSR	input_sub_CFB0B
		LDA	input_pressed_34A
		ORA	input_unk_34B
		STA	input_unk_349
		PLA
		TAX
		PLA
		TAY
		RTS
; End of function sub_CFAD3


; =============== S U B	R O U T	I N E =======================================


pad_input_update_CFAEB:			
		LDX	#1
		STX	_PAD0_REG
		DEX
		STX	_PAD0_REG
		LDA	#0
		LDY	#8

loc_CFAF8:				
		PHA
		LDA	_PAD0_REG,X
		STA	input_reg0_34E
		LSR	input_reg0_34E
		PLA
		ROL	A
		DEY
		BNE	loc_CFAF8
		STA	input_reg1_347,X
		RTS
; End of function pad_input_update_CFAEB


; =============== S U B	R O U T	I N E =======================================


input_sub_CFB0B:			
		LDX	#0
		LDA	input_reg1_347,X
		EOR	input_unk_34C,X
		AND	input_reg1_347,X
		STA	input_pressed_34A,X
		LDA	input_reg1_347,X
		STA	input_unk_34C,X
		RTS
; End of function input_sub_CFB0B


; =============== S U B	R O U T	I N E =======================================


unused_CFB20:
		LDA	ppu_ctrl_31F
		STA	_PPU_CTRL
		LDA	ppu_mask_320
		STA	_PPU_MASK
		RTS
; End of function unused_CFB20


; =============== S U B	R O U T	I N E =======================================


unused_CFB2D:
		LDA	#0
		STA	_PPU_CTRL
		STA	_PPU_MASK
		RTS
; End of function unused_CFB2D


; =============== S U B	R O U T	I N E =======================================


sub_CFB36:				
		INC	byte_353
		LDA	byte_353
		CMP	#$19
		BCS	loc_CFB41
		RTS
; ---------------------------------------------------------------------------

loc_CFB41:				
		LDA	#0
		STA	byte_353
		LDA	byte_354
		CMP	#0
		BNE	loc_CFB6C
		LDA	byte_355
		CMP	#0
		BNE	loc_CFB64
		LDA	byte_356
		CMP	#0
		BNE	loc_CFB5C
		RTS
; ---------------------------------------------------------------------------

loc_CFB5C:				
		DEC	byte_356
		LDA	#$A
		STA	byte_355

loc_CFB64:				
		DEC	byte_355
		LDA	#$A
		STA	byte_354

loc_CFB6C:				
		DEC	byte_354
		RTS
; End of function sub_CFB36


; =============== S U B	R O U T	I N E =======================================


sub_CFB70:				
		INC	scroll_offset_x_479
		LDA	scroll_offset_x_479
		CMP	#$A
		BCC	locret_CFBC7
		LDA	scroll_offset_y_47A
		EOR	#$80 
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		AND	#$FE 
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		AND	#$7F 
		CMP	#0
		BEQ	locret_CFBC7
		LDA	scroll_offset_y_47A
		PHA
		LDA	scroll_offset_y_47A
		AND	#$80 
		CMP	#0
		BEQ	loc_CFBA8
		LDA	#0
		STA	ppu_scroll_y_305
		JMP	loc_CFBBA
; ---------------------------------------------------------------------------

loc_CFBA8:				
		LDA	scroll_offset_y_47A
		AND	#$7F 
		STA	scroll_offset_y_47A
		LDA	ppu_scroll_y_305
		CLC
		ADC	scroll_offset_y_47A
		STA	ppu_scroll_y_305

loc_CFBBA:				
		PLA
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		SEC
		SBC	#2
		STA	scroll_offset_y_47A

locret_CFBC7:				
					; sub_CFB70+21j
		RTS
; End of function sub_CFB70


; =============== S U B	R O U T	I N E =======================================


apu_music_update_CFBC8:			
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
		JSR	bank_switch_C8000
		PLA
		STA	bank_from_343
		PLA
		STA	bank_to_344
		PLA
		STA	bank_command_346
		RTS
; End of function apu_music_update_CFBC8

; ---------------------------------------------------------------------------
aDPCrT_3:	.BYTE ', D, P, <CR> = T) : ',0
aListOnOffListingDest_5:.BYTE 'LIST ON/OFF Listing Destination  (T, D, P, <CR> = T) : ',0
aEnterRunTimeSelectio_5:.BYTE $A
		.BYTE $A
		.BYTE 'Enter Run Time Selection : ',0
		.BYTE $A,0
aAssemblyTerminatedBy_6:.BYTE 'Assembly Terminated By Operator',$A
		.BYTE $A,0
aCanTCreateDiskListin_5:.BYTE 'Can',$27,'t Create Disk Listing File',$A,0
aActiveCommands_5:.BYTE	$A
		.BYTE '                         ***** Active Commands *****',$A
		.BYTE $A,0
aCtrlSStopOutput_5:.BYTE '                           Ctrl S = Stop Output',$A,0
aCtrlQStartOutput_5:.BYTE '                           Ctrl Q = Start Output',$A,0
aEscCStopAssembly_5:.BYTE '                           Esc  C = Stop Assembly',$A,0
aEscTTerminalOutput_5:.BYTE '                           Esc  T = Terminal Output',$A,0
aEscPPrinterOutput_5:.BYTE '                           Esc  P = Printer Output',$A,0
aEscDDiskOutput_5:.BYTE	'                           Esc  D = Disk Output',$A,0
aEscMMultipleOutput_5:.BYTE '                           Esc  M = Multiple Output',$A,0
aEscNNoOutput_6:.BYTE '                           Esc  N = No Output',$A
		.BYTE $A,0
aRenameFileError_5:.BYTE 'Rename File Error',$A,0
aPage4u_5:	.BYTE 'Page %4u',0
aLib_5:		.BYTE 'LIB',0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE	0
aC_5:		.BYTE '%c',0
aMaximumNumberOfDiffe_4:.BYTE $A
		.BYTE 'Maximum Number of Different Sections (%d) Exceeded.  Link Term'
		.BYTE 'inated.',$A
		.BYTE $A,0
aS_5:		.BYTE '%s',0
		.BYTE	0
aDiskListingFilename_5:.BYTE 'Disk Listing  Filename : ',0
aSymbolTableFilename_5:.BYTE 'Symbol Table  Filename : ',0
aFormat_5:	.BYTE 'Format   : ',0
aLinkerOutputFilename_5:.BYTE 'Linker Output Filename : ',0
aMicrotek_5:	.BYTE 'Microtek',0
aZax_5:		.BYTE 'Zax',0
aAbbreviated2500A_d__5:.BYTE 'Abbreviated 2500 A.D.',0
a2500A_d__6:	.BYTE '2500 A.D.',0
aNoneSpecified_5:.BYTE '<None Specified>',0
aLinkErrors_6:	.BYTE $A
		.BYTE '         Link Errors :  ',0
aOutputFormat_6:.BYTE '         Output Format :  ',0
aExecutable_5:	.BYTE 'Executable',0
aIntelHex_5:	.BYTE 'Intel Hex',0
aExtendedIntelHex_5:.BYTE 'Extended Intel Hex',0
aTektronixHex_4:.BYTE 'Tektronix Hex',0
aMotorolaS1_5:	.BYTE 'Motorola S1',0
		.BYTE	0
aMotorolaS_5:	.BYTE 'Motorola S'
		.WORD NMI_CF9ED
		.WORD off_C805B
		.WORD locret_CFA64
; end of 'BANK_0C'

; ===========================================================================