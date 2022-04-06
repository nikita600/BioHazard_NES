; Segment type:	Pure code
		;.segment BANK_0D (Tilemaps)
		* =  $8000

; =============== S U B	R O U T	I N E =======================================


bank_switch_D8000:
		.include "common/bank_switch_func.asm"

switch_case_8035:				
					; bank_switch_D8000+1Dj ...
		LDA	bank_to_344
		STA	bank_prev_345
		LDA	#$88 
		STA	bank_switch_flag_6C
		LDA	bank_command_346
		CMP	#0
		BEQ	loc_D8047
		RTS
; ---------------------------------------------------------------------------

loc_D8047:				
		JSR	tilemap_handler_DF897
		JMP	loc_D804D
; ---------------------------------------------------------------------------

loc_D804D:				
		LDA	#$FF
		STA	bank_command_346
		LDA	bank_from_343
		STA	bank_to_344
		JMP	bank_switch_D8000
; End of function bank_switch_D8000

; ---------------------------------------------------------------------------
off_D805B:
		.include "tilemaps/bank_0D.asm"
		
; =============== S U B	R O U T	I N E =======================================


tilemap_handler_DF897:			
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
		BEQ	loc_DF8DF
		LDA	ptr_0
		CLC
		ADC	#$C0 
		STA	ptr_0
		LDA	ptr_1
		ADC	#3
		STA	ptr_1

loc_DF8DF:				
		LDY	tilemap_line_idx_4F

loc_DF8E1:				
		CPY	#0
		BEQ	loc_DF8F6
		LDA	ptr_0
		CLC
		ADC	tilemap_line_size_51
		STA	ptr_0
		LDA	ptr_1
		ADC	#0
		STA	ptr_1
		DEY
		JMP	loc_DF8E1
; ---------------------------------------------------------------------------

loc_DF8F6:				
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

loc_DF90F:				
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
		BCC	loc_DF90F
		RTS
; End of function tilemap_handler_DF897


; =============== S U B	R O U T	I N E =======================================


sub_DF926:
		LDA	#1
		STA	has_ppu_data_to_upload_6F

loc_DF92A:				
		LDA	has_ppu_data_to_upload_6F
		BNE	loc_DF92A
		RTS
; End of function sub_DF926


; =============== S U B	R O U T	I N E =======================================


sub_DF92F:				
		LDA	_PPU_STATUS
		BMI	sub_DF92F

loc_DF934:				
		LDA	_PPU_STATUS
		BPL	loc_DF934
		RTS
; End of function sub_DF92F


; =============== S U B	R O U T	I N E =======================================


wait_for_count350_zero_DF93A:
		LDA	#1
		STA	frame_render_count_350

loc_DF93F:				
		LDA	frame_render_count_350
		BNE	loc_DF93F
		RTS
; End of function wait_for_count350_zero_DF93A


; =============== S U B	R O U T	I N E =======================================


sub_DF945:
		LDY	#0

loc_DF947:				
		LDX	#0

loc_DF949:				
		LDA	input_reg1_347
		CMP	#0
		BNE	locret_DF956
		INX
		BNE	loc_DF949
		INY
		BNE	loc_DF947

locret_DF956:				
		RTS
; End of function sub_DF945


; =============== S U B	R O U T	I N E =======================================


sub_DF957:				
		LDA	input_pressed_34A
		CMP	#$80 
		BNE	sub_DF957
		RTS
; End of function sub_DF957


; =============== S U B	R O U T	I N E =======================================


sub_DF95F:				
		LDA	input_pressed_34A
		CMP	#$40 
		BNE	sub_DF95F
		RTS
; End of function sub_DF95F


; =============== S U B	R O U T	I N E =======================================


sub_DF967:				
		LDA	input_pressed_34A
		CMP	#0
		BEQ	sub_DF967
		RTS
; End of function sub_DF967


; =============== S U B	R O U T	I N E =======================================


sub_DF96F:				
		PHA
		JSR	sub_DF97A
		PLA
		SEC
		SBC	#1
		BNE	sub_DF96F
		RTS
; End of function sub_DF96F


; =============== S U B	R O U T	I N E =======================================


sub_DF97A:				
		PHA
		TXA
		PHA
		TYA
		PHA
		LDX	#0

loc_DF981:				
		LDY	#0

loc_DF983:				
		DEY
		BNE	loc_DF983
		DEX
		BNE	loc_DF981
		PLA
		TAY
		PLA
		TAX
		PLA
		RTS
; End of function sub_DF97A


; =============== S U B	R O U T	I N E =======================================


nmi_sub_DF98F:				
		LDA	#$F0 
		STA	byte_218
		STA	byte_21C
		STA	byte_220
		STA	byte_224
		STA	byte_2E8
		STA	byte_2EC
		RTS
; End of function nmi_sub_DF98F


; =============== S U B	R O U T	I N E =======================================


sub_DF9A4:				
		LDA	byte_43E
		BEQ	loc_DF9CB
		LDA	byte_203
		BNE	loc_DF9B6
		LDA	#0
		STA	byte_43E
		JMP	locret_DF9EC
; ---------------------------------------------------------------------------

loc_DF9B6:				
		LDA	byte_203
		SEC
		SBC	#8
		STA	byte_203
		LDA	byte_207
		SEC
		SBC	#8
		STA	byte_207
		JMP	locret_DF9EC
; ---------------------------------------------------------------------------

loc_DF9CB:				
		LDA	byte_203
		CMP	#$F8 
		BNE	loc_DF9DA
		LDA	#1
		STA	byte_43E
		JMP	locret_DF9EC
; ---------------------------------------------------------------------------

loc_DF9DA:				
		LDA	byte_203
		CLC
		ADC	#8
		STA	byte_203
		LDA	byte_207
		CLC
		ADC	#8
		STA	byte_207

locret_DF9EC:				
					; sub_DF9A4+24j ...
		RTS
; End of function sub_DF9A4


; =============== S U B	R O U T	I N E =======================================


NMI_DF9ED:				
		PHP
		PHA
		TXA
		PHA
		TYA
		PHA
		LDA	bank_switch_flag_6C
		CMP	#$88 
		BEQ	loc_DF9FC
		JMP	loc_DFA2D
; ---------------------------------------------------------------------------

loc_DF9FC:				
		LDA	#$EE 
		STA	bank_switch_flag_6C
		LDA	sprite_type_306
		BNE	loc_DFA08
		JSR	nmi_sub_DF98F

loc_DFA08:				
		LDA	#2
		STA	_PPU_OAM_DMA
		JSR	sub_DFA65
		JSR	sub_DFABA
		JSR	sub_DFAD3
		LDA	sprite_type_306
		CMP	#1
		BNE	loc_DFA23
		JSR	sub_DF9A4
		JSR	sub_DFB70

loc_DFA23:				
		JSR	sub_DFB36
		JSR	apu_music_update_DFBC8
		LDA	#$88 
		STA	bank_switch_flag_6C

loc_DFA2D:				
		LDA	byte_432
		BEQ	loc_DFA35
		DEC	byte_432

loc_DFA35:				
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
		BEQ	loc_DFA5E
		DEC	frame_render_count_350

loc_DFA5E:				
		PLA
		TAY
		PLA
		TAX
		PLA
		PLP

locret_DFA64:				
		RTI
; End of function NMI_DF9ED


; =============== S U B	R O U T	I N E =======================================


sub_DFA65:				
		LDA	has_ppu_data_to_upload_6F
		BNE	loc_DFA6A
		RTS
; ---------------------------------------------------------------------------

loc_DFA6A:				
		LDA	ppu_data_70
		BEQ	loc_DFAB5
		STA	ppu_fld0_x_6D
		LDX	#1

loc_DFA72:				
		LDA	ppu_data_70,X
		AND	#$80 
		BEQ	loc_DFA86
		LDA	ppu_ctrl_31F
		ORA	#4
		STA	ppu_ctrl_31F
		STA	_PPU_CTRL
		JMP	loc_DFA91
; ---------------------------------------------------------------------------

loc_DFA86:				
		LDA	ppu_ctrl_31F
		AND	#$FB 
		STA	ppu_ctrl_31F
		STA	_PPU_CTRL

loc_DFA91:				
		LDA	ppu_data_70,X
		AND	#$7F 
		STA	ppu_fld1_y_6E
		INX
		LDA	ppu_data_70,X
		STA	_PPU_ADDR
		INX
		LDA	ppu_data_70,X
		STA	_PPU_ADDR

loc_DFAA3:				
		INX
		LDA	ppu_data_70,X
		STA	_PPU_DATA
		DEC	ppu_fld1_y_6E
		BNE	loc_DFAA3
		DEC	ppu_fld0_x_6D
		BEQ	loc_DFAB5
		INX
		JMP	loc_DFA72
; ---------------------------------------------------------------------------

loc_DFAB5:				
					; sub_DFA65+4Aj
		LDA	#0
		STA	has_ppu_data_to_upload_6F
		RTS
; End of function sub_DFA65


; =============== S U B	R O U T	I N E =======================================


sub_DFABA:				
		LDA	ppu_ctrl_31F
		STA	_PPU_CTRL
		LDA	ppu_mask_320
		STA	_PPU_MASK
		LDA	ppu_scroll_x_304
		STA	_PPU_SCROLL
		LDA	ppu_scroll_y_305
		STA	_PPU_SCROLL
		RTS
; End of function sub_DFABA


; =============== S U B	R O U T	I N E =======================================


sub_DFAD3:				
		TYA
		PHA
		TYA
		PHA
		JSR	pad_input_update_DFAEB
		JSR	input_sub_DFB0B
		LDA	input_pressed_34A
		ORA	input_unk_34B
		STA	input_unk_349
		PLA
		TAX
		PLA
		TAY
		RTS
; End of function sub_DFAD3


; =============== S U B	R O U T	I N E =======================================


pad_input_update_DFAEB:			
		LDX	#1
		STX	_PAD0_REG
		DEX
		STX	_PAD0_REG
		LDA	#0
		LDY	#8

loc_DFAF8:				
		PHA
		LDA	_PAD0_REG,X
		STA	input_reg0_34E
		LSR	input_reg0_34E
		PLA
		ROL	A
		DEY
		BNE	loc_DFAF8
		STA	input_reg1_347,X
		RTS
; End of function pad_input_update_DFAEB


; =============== S U B	R O U T	I N E =======================================


input_sub_DFB0B:			
		LDX	#0
		LDA	input_reg1_347,X
		EOR	input_unk_34C,X
		AND	input_reg1_347,X
		STA	input_pressed_34A,X
		LDA	input_reg1_347,X
		STA	input_unk_34C,X
		RTS
; End of function input_sub_DFB0B


; =============== S U B	R O U T	I N E =======================================


unused_DFB20:
		LDA	ppu_ctrl_31F
		STA	_PPU_CTRL
		LDA	ppu_mask_320
		STA	_PPU_MASK
		RTS
; End of function unused_DFB20


; =============== S U B	R O U T	I N E =======================================


unused_DFB2D:
		LDA	#0
		STA	_PPU_CTRL
		STA	_PPU_MASK
		RTS
; End of function unused_DFB2D


; =============== S U B	R O U T	I N E =======================================


sub_DFB36:				
		INC	byte_353
		LDA	byte_353
		CMP	#$19
		BCS	loc_DFB41
		RTS
; ---------------------------------------------------------------------------

loc_DFB41:				
		LDA	#0
		STA	byte_353
		LDA	byte_354
		CMP	#0
		BNE	loc_DFB6C
		LDA	byte_355
		CMP	#0
		BNE	loc_DFB64
		LDA	byte_356
		CMP	#0
		BNE	loc_DFB5C
		RTS
; ---------------------------------------------------------------------------

loc_DFB5C:				
		DEC	byte_356
		LDA	#$A
		STA	byte_355

loc_DFB64:				
		DEC	byte_355
		LDA	#$A
		STA	byte_354

loc_DFB6C:				
		DEC	byte_354
		RTS
; End of function sub_DFB36


; =============== S U B	R O U T	I N E =======================================


sub_DFB70:				
		INC	scroll_offset_x_479
		LDA	scroll_offset_x_479
		CMP	#$A
		BCC	locret_DFBC7
		LDA	scroll_offset_y_47A
		EOR	#$80 
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		AND	#$FE 
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		AND	#$7F 
		CMP	#0
		BEQ	locret_DFBC7
		LDA	scroll_offset_y_47A
		PHA
		LDA	scroll_offset_y_47A
		AND	#$80 
		CMP	#0
		BEQ	loc_DFBA8
		LDA	#0
		STA	ppu_scroll_y_305
		JMP	loc_DFBBA
; ---------------------------------------------------------------------------

loc_DFBA8:				
		LDA	scroll_offset_y_47A
		AND	#$7F 
		STA	scroll_offset_y_47A
		LDA	ppu_scroll_y_305
		CLC
		ADC	scroll_offset_y_47A
		STA	ppu_scroll_y_305

loc_DFBBA:				
		PLA
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		SEC
		SBC	#2
		STA	scroll_offset_y_47A

locret_DFBC7:				
					; sub_DFB70+21j
		RTS
; End of function sub_DFB70


; =============== S U B	R O U T	I N E =======================================


apu_music_update_DFBC8:			
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
		JSR	bank_switch_D8000
		PLA
		STA	bank_from_343
		PLA
		STA	bank_to_344
		PLA
		STA	bank_command_346
		RTS
; End of function apu_music_update_DFBC8

; ---------------------------------------------------------------------------
aDPCrT_2:	.BYTE ', D, P, <CR> = T) : ',0
aListOnOffListingDest_4:.BYTE 'LIST ON/OFF Listing Destination  (T, D, P, <CR> = T) : ',0
aEnterRunTimeSelectio_4:.BYTE $A
		.BYTE $A
		.BYTE 'Enter Run Time Selection : ',0
		.BYTE $A,0
aAssemblyTerminatedBy_5:.BYTE 'Assembly Terminated By Operator',$A
		.BYTE $A,0
aCanTCreateDiskListin_4:.BYTE 'Can',$27,'t Create Disk Listing File',$A,0
aActiveCommands_4:.BYTE	$A
		.BYTE '                         ***** Active Commands *****',$A
		.BYTE $A,0
aCtrlSStopOutput_4:.BYTE '                           Ctrl S = Stop Output',$A,0
aCtrlQStartOutput_4:.BYTE '                           Ctrl Q = Start Output',$A,0
aEscCStopAssembly_4:.BYTE '                           Esc  C = Stop Assembly',$A,0
aEscTTerminalOutput_4:.BYTE '                           Esc  T = Terminal Output',$A,0
aEscPPrinterOutput_4:.BYTE '                           Esc  P = Printer Output',$A,0
aEscDDiskOutput_4:.BYTE	'                           Esc  D = Disk Output',$A,0
aEscMMultipleOutput_4:.BYTE '                           Esc  M = Multiple Output',$A,0
aEscNNoOutput_5:.BYTE '                           Esc  N = No Output',$A
		.BYTE $A,0
aRenameFileError_4:.BYTE 'Rename File Error',$A,0
aPage4u_4:	.BYTE 'Page %4u',0
aLib_4:		.BYTE 'LIB',0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE	0
aC_4:		.BYTE '%c',0
aMaximumNumberOfDiffe_5:.BYTE $A
		.BYTE 'Maximum Number of Different Sections (%d) Exceeded.  Link Term'
		.BYTE 'inated.',$A
		.BYTE $A,0
aS_4:		.BYTE '%s',0
		.BYTE	0
aDiskListingFilename_4:.BYTE 'Disk Listing  Filename : ',0
aSymbolTableFilename_4:.BYTE 'Symbol Table  Filename : ',0
aFormat_4:	.BYTE 'Format   : ',0
aLinkerOutputFilename_4:.BYTE 'Linker Output Filename : ',0
aMicrotek_4:	.BYTE 'Microtek',0
aZax_4:		.BYTE 'Zax',0
aAbbreviated2500A_d__4:.BYTE 'Abbreviated 2500 A.D.',0
a2500A_d__5:	.BYTE '2500 A.D.',0
aNoneSpecified_4:.BYTE '<None Specified>',0
aLinkErrors_5:	.BYTE $A
		.BYTE '         Link Errors :  ',0
aOutputFormat_5:.BYTE '         Output Format :  ',0
aExecutable_4:	.BYTE 'Executable',0
aIntelHex_4:	.BYTE 'Intel Hex',0
aExtendedIntelHex_4:.BYTE 'Extended Intel Hex',0
aTektronixHex_5:.BYTE 'Tektronix Hex',0
aMotorolaS1_4:	.BYTE 'Motorola S1',0
		.BYTE	0
aMotorolaS_4:	.BYTE 'Motorola S'
		.WORD NMI_DF9ED
		.WORD off_D805B
		.WORD locret_DFA64
; end of 'BANK_0D'

; ===========================================================================