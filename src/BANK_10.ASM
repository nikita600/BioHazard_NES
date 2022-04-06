; Segment type:	Pure code
		;.segment BANK_10 (Tilemaps)
		* =  $8000

; =============== S U B	R O U T	I N E =======================================


bank_switch_108000:
		.include "common/bank_switch_func.asm"

switch_case_8035:				
					; bank_switch_108000+1Dj ...
		LDA	bank_to_344
		STA	bank_prev_345
		LDA	#$88 
		STA	bank_switch_flag_6C
		LDA	bank_command_346
		CMP	#0
		BEQ	loc_108047
		RTS
; ---------------------------------------------------------------------------

loc_108047:				
		JSR	tilemap_handler_10F897
		JMP	loc_10804D
; ---------------------------------------------------------------------------

loc_10804D:				
		LDA	#$FF
		STA	bank_command_346
		LDA	bank_from_343
		STA	bank_to_344
		JMP	bank_switch_108000
; End of function bank_switch_108000

; ---------------------------------------------------------------------------
off_10805B:	
		.include "tilemaps/bank_10.asm"
		
; =============== S U B	R O U T	I N E =======================================


tilemap_handler_10F897:			
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
		BEQ	loc_10F8DF
		LDA	ptr_0
		CLC
		ADC	#$C0 
		STA	ptr_0
		LDA	ptr_1
		ADC	#3
		STA	ptr_1

loc_10F8DF:				
		LDY	tilemap_line_idx_4F

loc_10F8E1:				
		CPY	#0
		BEQ	loc_10F8F6
		LDA	ptr_0
		CLC
		ADC	tilemap_line_size_51
		STA	ptr_0
		LDA	ptr_1
		ADC	#0
		STA	ptr_1
		DEY
		JMP	loc_10F8E1
; ---------------------------------------------------------------------------

loc_10F8F6:				
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

loc_10F90F:				
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
		BCC	loc_10F90F
		RTS
; End of function tilemap_handler_10F897


; =============== S U B	R O U T	I N E =======================================


unused_10F926:
		LDA	#1
		STA	has_ppu_data_to_upload_6F

loc_10F92A:				
		LDA	has_ppu_data_to_upload_6F
		BNE	loc_10F92A
		RTS
; End of function unused_10F926


; =============== S U B	R O U T	I N E =======================================


unused_10F92F:				
		LDA	_PPU_STATUS
		BMI	unused_10F92F

loc_10F934:				
		LDA	_PPU_STATUS
		BPL	loc_10F934
		RTS
; End of function unused_10F92F


; =============== S U B	R O U T	I N E =======================================


unused_10F93A:
		LDA	#1
		STA	frame_render_count_350

loc_10F93F:				
		LDA	frame_render_count_350
		BNE	loc_10F93F
		RTS
; End of function unused_10F93A


; =============== S U B	R O U T	I N E =======================================


unused_10F945:
		LDY	#0

loc_10F947:				
		LDX	#0

loc_10F949:				
		LDA	input_reg1_347
		CMP	#0
		BNE	locret_10F956
		INX
		BNE	loc_10F949
		INY
		BNE	loc_10F947

locret_10F956:				
		RTS
; End of function unused_10F945


; =============== S U B	R O U T	I N E =======================================


unused_10F957:				
		LDA	input_pressed_34A
		CMP	#$80 
		BNE	unused_10F957
		RTS
; End of function unused_10F957


; =============== S U B	R O U T	I N E =======================================


unused_10F95F:				
		LDA	input_pressed_34A
		CMP	#$40 
		BNE	unused_10F95F
		RTS
; End of function unused_10F95F


; =============== S U B	R O U T	I N E =======================================


unused_10F967:				
		LDA	input_pressed_34A
		CMP	#0
		BEQ	unused_10F967
		RTS
; End of function unused_10F967


; =============== S U B	R O U T	I N E =======================================


unused_10F96F:				
		PHA
		JSR	unused_10F97A
		PLA
		SEC
		SBC	#1
		BNE	unused_10F96F
		RTS
; End of function unused_10F96F


; =============== S U B	R O U T	I N E =======================================


unused_10F97A:				
		PHA
		TXA
		PHA
		TYA
		PHA
		LDX	#0

loc_10F981:				
		LDY	#0

loc_10F983:				
		DEY
		BNE	loc_10F983
		DEX
		BNE	loc_10F981
		PLA
		TAY
		PLA
		TAX
		PLA
		RTS
; End of function unused_10F97A


; =============== S U B	R O U T	I N E =======================================


nmi_sub_10F98F:				
		LDA	#$F0 
		STA	byte_218
		STA	byte_21C
		STA	byte_220
		STA	byte_224
		STA	byte_2E8
		STA	byte_2EC
		RTS
; End of function nmi_sub_10F98F


; =============== S U B	R O U T	I N E =======================================


nmi_sub_10F9A4:				
		LDA	byte_43E
		BEQ	loc_10F9CB
		LDA	byte_203
		BNE	loc_10F9B6
		LDA	#0
		STA	byte_43E
		JMP	locret_10F9EC
; ---------------------------------------------------------------------------

loc_10F9B6:				
		LDA	byte_203
		SEC
		SBC	#8
		STA	byte_203
		LDA	byte_207
		SEC
		SBC	#8
		STA	byte_207
		JMP	locret_10F9EC
; ---------------------------------------------------------------------------

loc_10F9CB:				
		LDA	byte_203
		CMP	#$F8 
		BNE	loc_10F9DA
		LDA	#1
		STA	byte_43E
		JMP	locret_10F9EC
; ---------------------------------------------------------------------------

loc_10F9DA:				
		LDA	byte_203
		CLC
		ADC	#8
		STA	byte_203
		LDA	byte_207
		CLC
		ADC	#8
		STA	byte_207

locret_10F9EC:				
					; nmi_sub_10F9A4+24j ...
		RTS
; End of function nmi_sub_10F9A4


; =============== S U B	R O U T	I N E =======================================


NMI_10F9ED:				
		PHP
		PHA
		TXA
		PHA
		TYA
		PHA
		LDA	bank_switch_flag_6C
		CMP	#$88 
		BEQ	loc_10F9FC
		JMP	loc_10FA2D
; ---------------------------------------------------------------------------

loc_10F9FC:				
		LDA	#$EE 
		STA	bank_switch_flag_6C
		LDA	sprite_type_306
		BNE	loc_10FA08
		JSR	nmi_sub_10F98F

loc_10FA08:				
		LDA	#2
		STA	_PPU_OAM_DMA
		JSR	nmi_sub_10FA65
		JSR	nmi_sub_10FABA
		JSR	nmi_sub_10FAD3
		LDA	sprite_type_306
		CMP	#1
		BNE	loc_10FA23
		JSR	nmi_sub_10F9A4
		JSR	nmi_sub_10FB70

loc_10FA23:				
		JSR	nmi_sub_10FB36
		JSR	apu_music_update_10FBC8
		LDA	#$88 
		STA	bank_switch_flag_6C

loc_10FA2D:				
		LDA	byte_432
		BEQ	loc_10FA35
		DEC	byte_432

loc_10FA35:				
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
		BEQ	loc_10FA5E
		DEC	frame_render_count_350

loc_10FA5E:				
		PLA
		TAY
		PLA
		TAX
		PLA
		PLP

locret_10FA64:				
		RTI
; End of function NMI_10F9ED


; =============== S U B	R O U T	I N E =======================================


nmi_sub_10FA65:				
		LDA	has_ppu_data_to_upload_6F
		BNE	loc_10FA6A
		RTS
; ---------------------------------------------------------------------------

loc_10FA6A:				
		LDA	ppu_data_70
		BEQ	loc_10FAB5
		STA	ppu_fld0_x_6D
		LDX	#1

loc_10FA72:				
		LDA	ppu_data_70,X
		AND	#$80 
		BEQ	loc_10FA86
		LDA	ppu_ctrl_31F
		ORA	#4
		STA	ppu_ctrl_31F
		STA	_PPU_CTRL
		JMP	loc_10FA91
; ---------------------------------------------------------------------------

loc_10FA86:				
		LDA	ppu_ctrl_31F
		AND	#$FB 
		STA	ppu_ctrl_31F
		STA	_PPU_CTRL

loc_10FA91:				
		LDA	ppu_data_70,X
		AND	#$7F 
		STA	ppu_fld1_y_6E
		INX
		LDA	ppu_data_70,X
		STA	_PPU_ADDR
		INX
		LDA	ppu_data_70,X
		STA	_PPU_ADDR

loc_10FAA3:				
		INX
		LDA	ppu_data_70,X
		STA	_PPU_DATA
		DEC	ppu_fld1_y_6E
		BNE	loc_10FAA3
		DEC	ppu_fld0_x_6D
		BEQ	loc_10FAB5
		INX
		JMP	loc_10FA72
; ---------------------------------------------------------------------------

loc_10FAB5:				
					; nmi_sub_10FA65+4Aj
		LDA	#0
		STA	has_ppu_data_to_upload_6F
		RTS
; End of function nmi_sub_10FA65


; =============== S U B	R O U T	I N E =======================================


nmi_sub_10FABA:				
		LDA	ppu_ctrl_31F
		STA	_PPU_CTRL
		LDA	ppu_mask_320
		STA	_PPU_MASK
		LDA	ppu_scroll_x_304
		STA	_PPU_SCROLL
		LDA	ppu_scroll_y_305
		STA	_PPU_SCROLL
		RTS
; End of function nmi_sub_10FABA


; =============== S U B	R O U T	I N E =======================================


nmi_sub_10FAD3:				
		TYA
		PHA
		TYA
		PHA
		JSR	pad_input_update_10FAEB
		JSR	input_sub_10FB0B
		LDA	input_pressed_34A
		ORA	input_unk_34B
		STA	input_unk_349
		PLA
		TAX
		PLA
		TAY
		RTS
; End of function nmi_sub_10FAD3


; =============== S U B	R O U T	I N E =======================================


pad_input_update_10FAEB:		
		LDX	#1
		STX	_PAD0_REG
		DEX
		STX	_PAD0_REG
		LDA	#0
		LDY	#8

loc_10FAF8:				
		PHA
		LDA	_PAD0_REG,X
		STA	input_reg0_34E
		LSR	input_reg0_34E
		PLA
		ROL	A
		DEY
		BNE	loc_10FAF8
		STA	input_reg1_347,X
		RTS
; End of function pad_input_update_10FAEB


; =============== S U B	R O U T	I N E =======================================


input_sub_10FB0B:			
		LDX	#0
		LDA	input_reg1_347,X
		EOR	input_unk_34C,X
		AND	input_reg1_347,X
		STA	input_pressed_34A,X
		LDA	input_reg1_347,X
		STA	input_unk_34C,X
		RTS
; End of function input_sub_10FB0B


; =============== S U B	R O U T	I N E =======================================


unused_10FB20:
		LDA	ppu_ctrl_31F
		STA	_PPU_CTRL
		LDA	ppu_mask_320
		STA	_PPU_MASK
		RTS
; End of function unused_10FB20


; =============== S U B	R O U T	I N E =======================================


unused_10FB2D:
		LDA	#0
		STA	_PPU_CTRL
		STA	_PPU_MASK
		RTS
; End of function unused_10FB2D


; =============== S U B	R O U T	I N E =======================================


nmi_sub_10FB36:				
		INC	byte_353
		LDA	byte_353
		CMP	#$19
		BCS	loc_10FB41
		RTS
; ---------------------------------------------------------------------------

loc_10FB41:				
		LDA	#0
		STA	byte_353
		LDA	byte_354
		CMP	#0
		BNE	loc_10FB6C
		LDA	byte_355
		CMP	#0
		BNE	loc_10FB64
		LDA	byte_356
		CMP	#0
		BNE	loc_10FB5C
		RTS
; ---------------------------------------------------------------------------

loc_10FB5C:				
		DEC	byte_356
		LDA	#$A
		STA	byte_355

loc_10FB64:				
		DEC	byte_355
		LDA	#$A
		STA	byte_354

loc_10FB6C:				
		DEC	byte_354
		RTS
; End of function nmi_sub_10FB36


; =============== S U B	R O U T	I N E =======================================


nmi_sub_10FB70:				
		INC	scroll_offset_x_479
		LDA	scroll_offset_x_479
		CMP	#$A
		BCC	locret_10FBC7
		LDA	scroll_offset_y_47A
		EOR	#$80 
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		AND	#$FE 
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		AND	#$7F 
		CMP	#0
		BEQ	locret_10FBC7
		LDA	scroll_offset_y_47A
		PHA
		LDA	scroll_offset_y_47A
		AND	#$80 
		CMP	#0
		BEQ	loc_10FBA8
		LDA	#0
		STA	ppu_scroll_y_305
		JMP	loc_10FBBA
; ---------------------------------------------------------------------------

loc_10FBA8:				
		LDA	scroll_offset_y_47A
		AND	#$7F 
		STA	scroll_offset_y_47A
		LDA	ppu_scroll_y_305
		CLC
		ADC	scroll_offset_y_47A
		STA	ppu_scroll_y_305

loc_10FBBA:				
		PLA
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		SEC
		SBC	#2
		STA	scroll_offset_y_47A

locret_10FBC7:				
					; nmi_sub_10FB70+21j
		RTS
; End of function nmi_sub_10FB70


; =============== S U B	R O U T	I N E =======================================


apu_music_update_10FBC8:		
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
		JSR	bank_switch_108000
		PLA
		STA	bank_from_343
		PLA
		STA	bank_to_344
		PLA
		STA	bank_command_346
		RTS
; End of function apu_music_update_10FBC8

; ---------------------------------------------------------------------------
aDPCrT:		.BYTE ', D, P, <CR> = T) : ',0
aListOnOffListingDestin:.BYTE 'LIST ON/OFF Listing Destination  (T, D, P, <CR> = T) : ',0
aEnterRunTimeSelection:.BYTE $A
		.BYTE $A
		.BYTE 'Enter Run Time Selection : ',0
		.BYTE  $A
		.BYTE	0
aAssemblyTerminatedByOp:.BYTE 'Assembly Terminated By Operator',$A
		.BYTE $A,0
aCanTCreateDiskListingF:.BYTE 'Can',$27,'t Create Disk Listing File',$A,0
aActiveCommands:.BYTE $A
		.BYTE '                         ***** Active Commands *****',$A
		.BYTE $A,0
aCtrlSStopOutput:.BYTE '                           Ctrl S = Stop Output',$A,0
aCtrlQStartOutput:.BYTE	'                           Ctrl Q = Start Output',$A,0
aEscCStopAssembly:.BYTE	'                           Esc  C = Stop Assembly',$A,0
aEscTTerminalOutput:.BYTE '                           Esc  T = Terminal Output',$A,0
aEscPPrinterOutput:.BYTE '                           Esc  P = Printer Output',$A,0
aEscDDiskOutput:.BYTE '                           Esc  D = Disk Output',$A,0
aEscMMultipleOutput:.BYTE '                           Esc  M = Multiple Output',$A,0
aEscNNoOutput:	.BYTE '                           Esc  N = No Output',$A
		.BYTE $A,0
aRenameFileError:.BYTE 'Rename File Error',$A,0
aPage4u:	.BYTE 'Page %4u',0
aLib:		.BYTE 'LIB',0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE	0
aC:		.BYTE '%c',0
		.BYTE  $A
aMaximumNumberOfDiffere:.BYTE 'Maximum Number of Different Sections (%d) Exceeded.  Link Term'
		.BYTE 'inated.',$A
		.BYTE $A,0
aS:		.BYTE '%s',0
		.BYTE	0
aDiskListingFilename:.BYTE 'Disk Listing  Filename : ',0
aSymbolTableFilename:.BYTE 'Symbol Table  Filename : ',0
aFormat:	.BYTE 'Format   : ',0
aLinkerOutputFilename:.BYTE 'Linker Output Filename : ',0
aMicrotek:	.BYTE 'Microtek',0
aZax:		.BYTE 'Zax',0
aAbbreviated2500A_d_:.BYTE 'Abbreviated 2500 A.D.',0
a2500A_d__0:	.BYTE '2500 A.D.',0
aNoneSpecified:	.BYTE '<None Specified>',0
aLinkErrors_0:	.BYTE $A
		.BYTE '         Link Errors :  ',0
aOutputFormat_0:.BYTE '         Output Format :  ',0
aExecutable:	.BYTE 'Executable',0
aIntelHex:	.BYTE 'Intel Hex',0
aExtendedIntelHex:.BYTE	'Extended Intel Hex',0
aTektronixHex:	.BYTE 'Tektronix Hex',0
aMotorolaS1:	.BYTE 'Motorola S1',0
		.BYTE	0
aMotorolaS:	.BYTE 'Motorola S'
		.WORD NMI_10F9ED
		.WORD off_10805B
		.WORD locret_10FA64
; end of 'BANK_10'

; ===========================================================================