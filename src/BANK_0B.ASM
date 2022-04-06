; Segment type:	Pure code
		;.segment BANK_0B (Tilemaps)
		* =  $8000

; =============== S U B	R O U T	I N E =======================================


bank_switch_B8000:			
		.include "common/bank_switch_func.asm"

switch_case_8035:
		LDA	bank_to_344
		STA	bank_prev_345
		LDA	#$88 
		STA	bank_switch_flag_6C
		LDA	bank_command_346
		CMP	#0
		BEQ	loc_B8047
		RTS
; ---------------------------------------------------------------------------

loc_B8047:				
		JSR	tilemap_handler_BF897
		JMP	loc_B804D
; ---------------------------------------------------------------------------

loc_B804D:				
		LDA	#$FF
		STA	bank_command_346
		LDA	bank_from_343
		STA	bank_to_344
		JMP	bank_switch_B8000
; End of function bank_switch_B8000

; ---------------------------------------------------------------------------
off_B805B:
		.include "tilemaps/bank_0B.asm"
		
; =============== S U B	R O U T	I N E =======================================


tilemap_handler_BF897:			
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
		BEQ	loc_BF8DF
		LDA	ptr_0
		CLC
		ADC	#$C0 
		STA	ptr_0
		LDA	ptr_1
		ADC	#3
		STA	ptr_1

loc_BF8DF:				
		LDY	tilemap_line_idx_4F

loc_BF8E1:				
		CPY	#0
		BEQ	loc_BF8F6
		LDA	ptr_0
		CLC
		ADC	tilemap_line_size_51
		STA	ptr_0
		LDA	ptr_1
		ADC	#0
		STA	ptr_1
		DEY
		JMP	loc_BF8E1
; ---------------------------------------------------------------------------

loc_BF8F6:				
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

loc_BF90F:				
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
		BCC	loc_BF90F
		RTS
; End of function tilemap_handler_BF897


; =============== S U B	R O U T	I N E =======================================


sub_BF926:
		LDA	#1
		STA	has_ppu_data_to_upload_6F

loc_BF92A:				
		LDA	has_ppu_data_to_upload_6F
		BNE	loc_BF92A
		RTS
; End of function sub_BF926


; =============== S U B	R O U T	I N E =======================================


sub_BF92F:				
		LDA	_PPU_STATUS
		BMI	sub_BF92F

loc_BF934:				
		LDA	_PPU_STATUS
		BPL	loc_BF934
		RTS
; End of function sub_BF92F


; =============== S U B	R O U T	I N E =======================================


wait_for_count350_zero_BF93A:
		LDA	#1
		STA	frame_render_count_350

loc_BF93F:				
		LDA	frame_render_count_350
		BNE	loc_BF93F
		RTS
; End of function wait_for_count350_zero_BF93A


; =============== S U B	R O U T	I N E =======================================


sub_BF945:
		LDY	#0

loc_BF947:				
		LDX	#0

loc_BF949:				
		LDA	input_reg1_347
		CMP	#0
		BNE	locret_BF956
		INX
		BNE	loc_BF949
		INY
		BNE	loc_BF947

locret_BF956:				
		RTS
; End of function sub_BF945


; =============== S U B	R O U T	I N E =======================================


unused_BF957:				
		LDA	input_pressed_34A
		CMP	#$80 
		BNE	unused_BF957
		RTS
; End of function unused_BF957


; =============== S U B	R O U T	I N E =======================================


unused_BF95F:				
		LDA	input_pressed_34A
		CMP	#$40 
		BNE	unused_BF95F
		RTS
; End of function unused_BF95F


; =============== S U B	R O U T	I N E =======================================


unused_BF967:				
		LDA	input_pressed_34A
		CMP	#0
		BEQ	unused_BF967
		RTS
; End of function unused_BF967


; =============== S U B	R O U T	I N E =======================================


sub_BF96F:				
		PHA
		JSR	sub_BF97A
		PLA
		SEC
		SBC	#1
		BNE	sub_BF96F
		RTS
; End of function sub_BF96F


; =============== S U B	R O U T	I N E =======================================


sub_BF97A:				
		PHA
		TXA
		PHA
		TYA
		PHA
		LDX	#0

loc_BF981:				
		LDY	#0

loc_BF983:				
		DEY
		BNE	loc_BF983
		DEX
		BNE	loc_BF981
		PLA
		TAY
		PLA
		TAX
		PLA
		RTS
; End of function sub_BF97A


; =============== S U B	R O U T	I N E =======================================


nmi_sub_BF98F:				
		LDA	#$F0 
		STA	byte_218
		STA	byte_21C
		STA	byte_220
		STA	byte_224
		STA	byte_2E8
		STA	byte_2EC
		RTS
; End of function nmi_sub_BF98F


; =============== S U B	R O U T	I N E =======================================


sub_BF9A4:				
		LDA	byte_43E
		BEQ	loc_BF9CB
		LDA	byte_203
		BNE	loc_BF9B6
		LDA	#0
		STA	byte_43E
		JMP	locret_BF9EC
; ---------------------------------------------------------------------------

loc_BF9B6:				
		LDA	byte_203
		SEC
		SBC	#8
		STA	byte_203
		LDA	byte_207
		SEC
		SBC	#8
		STA	byte_207
		JMP	locret_BF9EC
; ---------------------------------------------------------------------------

loc_BF9CB:				
		LDA	byte_203
		CMP	#$F8 
		BNE	loc_BF9DA
		LDA	#1
		STA	byte_43E
		JMP	locret_BF9EC
; ---------------------------------------------------------------------------

loc_BF9DA:				
		LDA	byte_203
		CLC
		ADC	#8
		STA	byte_203
		LDA	byte_207
		CLC
		ADC	#8
		STA	byte_207

locret_BF9EC:				
					; sub_BF9A4+24j ...
		RTS
; End of function sub_BF9A4


; =============== S U B	R O U T	I N E =======================================


NMI_BF9ED:				
		PHP
		PHA
		TXA
		PHA
		TYA
		PHA
		LDA	bank_switch_flag_6C
		CMP	#$88 
		BEQ	loc_BF9FC
		JMP	loc_BFA2D
; ---------------------------------------------------------------------------

loc_BF9FC:				
		LDA	#$EE 
		STA	bank_switch_flag_6C
		LDA	sprite_type_306
		BNE	loc_BFA08
		JSR	nmi_sub_BF98F

loc_BFA08:				
		LDA	#2
		STA	_PPU_OAM_DMA
		JSR	sub_BFA65
		JSR	sub_BFABA
		JSR	sub_BFAD3
		LDA	sprite_type_306
		CMP	#1
		BNE	loc_BFA23
		JSR	sub_BF9A4
		JSR	sub_BFB70

loc_BFA23:				
		JSR	sub_BFB36
		JSR	apu_music_update_BFBC8
		LDA	#$88 
		STA	bank_switch_flag_6C

loc_BFA2D:				
		LDA	byte_432
		BEQ	loc_BFA35
		DEC	byte_432

loc_BFA35:				
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
		BEQ	loc_BFA5E
		DEC	frame_render_count_350

loc_BFA5E:				
		PLA
		TAY
		PLA
		TAX
		PLA
		PLP

locret_BFA64:				
		RTI
; End of function NMI_BF9ED


; =============== S U B	R O U T	I N E =======================================


sub_BFA65:				
		LDA	has_ppu_data_to_upload_6F
		BNE	loc_BFA6A
		RTS
; ---------------------------------------------------------------------------

loc_BFA6A:				
		LDA	ppu_data_70
		BEQ	loc_BFAB5
		STA	ppu_fld0_x_6D
		LDX	#1

loc_BFA72:				
		LDA	ppu_data_70,X
		AND	#$80 
		BEQ	loc_BFA86
		LDA	ppu_ctrl_31F
		ORA	#4
		STA	ppu_ctrl_31F
		STA	_PPU_CTRL
		JMP	loc_BFA91
; ---------------------------------------------------------------------------

loc_BFA86:				
		LDA	ppu_ctrl_31F
		AND	#$FB 
		STA	ppu_ctrl_31F
		STA	_PPU_CTRL

loc_BFA91:				
		LDA	ppu_data_70,X
		AND	#$7F 
		STA	ppu_fld1_y_6E
		INX
		LDA	ppu_data_70,X
		STA	_PPU_ADDR
		INX
		LDA	ppu_data_70,X
		STA	_PPU_ADDR

loc_BFAA3:				
		INX
		LDA	ppu_data_70,X
		STA	_PPU_DATA
		DEC	ppu_fld1_y_6E
		BNE	loc_BFAA3
		DEC	ppu_fld0_x_6D
		BEQ	loc_BFAB5
		INX
		JMP	loc_BFA72
; ---------------------------------------------------------------------------

loc_BFAB5:				
					; sub_BFA65+4Aj
		LDA	#0
		STA	has_ppu_data_to_upload_6F
		RTS
; End of function sub_BFA65


; =============== S U B	R O U T	I N E =======================================


sub_BFABA:				
		LDA	ppu_ctrl_31F
		STA	_PPU_CTRL
		LDA	ppu_mask_320
		STA	_PPU_MASK
		LDA	ppu_scroll_x_304
		STA	_PPU_SCROLL
		LDA	ppu_scroll_y_305
		STA	_PPU_SCROLL
		RTS
; End of function sub_BFABA


; =============== S U B	R O U T	I N E =======================================


sub_BFAD3:				
		TYA
		PHA
		TYA
		PHA
		JSR	pad_input_update_BFAEB
		JSR	input_sub_BFB0B
		LDA	input_pressed_34A
		ORA	input_unk_34B
		STA	input_unk_349
		PLA
		TAX
		PLA
		TAY
		RTS
; End of function sub_BFAD3


; =============== S U B	R O U T	I N E =======================================


pad_input_update_BFAEB:			
		LDX	#1
		STX	_PAD0_REG
		DEX
		STX	_PAD0_REG
		LDA	#0
		LDY	#8

loc_BFAF8:				
		PHA
		LDA	_PAD0_REG,X
		STA	input_reg0_34E
		LSR	input_reg0_34E
		PLA
		ROL	A
		DEY
		BNE	loc_BFAF8
		STA	input_reg1_347,X
		RTS
; End of function pad_input_update_BFAEB


; =============== S U B	R O U T	I N E =======================================


input_sub_BFB0B:			
		LDX	#0
		LDA	input_reg1_347,X
		EOR	input_unk_34C,X
		AND	input_reg1_347,X
		STA	input_pressed_34A,X
		LDA	input_reg1_347,X
		STA	input_unk_34C,X
		RTS
; End of function input_sub_BFB0B


; =============== S U B	R O U T	I N E =======================================


unused_BFB20:
		LDA	ppu_ctrl_31F
		STA	_PPU_CTRL
		LDA	ppu_mask_320
		STA	_PPU_MASK
		RTS
; End of function unused_BFB20


; =============== S U B	R O U T	I N E =======================================


unused_BFB2D:
		LDA	#0
		STA	_PPU_CTRL
		STA	_PPU_MASK
		RTS
; End of function unused_BFB2D


; =============== S U B	R O U T	I N E =======================================


sub_BFB36:				
		INC	byte_353
		LDA	byte_353
		CMP	#$19
		BCS	loc_BFB41
		RTS
; ---------------------------------------------------------------------------

loc_BFB41:				
		LDA	#0
		STA	byte_353
		LDA	byte_354
		CMP	#0
		BNE	loc_BFB6C
		LDA	byte_355
		CMP	#0
		BNE	loc_BFB64
		LDA	byte_356
		CMP	#0
		BNE	loc_BFB5C
		RTS
; ---------------------------------------------------------------------------

loc_BFB5C:				
		DEC	byte_356
		LDA	#$A
		STA	byte_355

loc_BFB64:				
		DEC	byte_355
		LDA	#$A
		STA	byte_354

loc_BFB6C:				
		DEC	byte_354
		RTS
; End of function sub_BFB36


; =============== S U B	R O U T	I N E =======================================


sub_BFB70:				
		INC	scroll_offset_x_479
		LDA	scroll_offset_x_479
		CMP	#$A
		BCC	locret_BFBC7
		LDA	scroll_offset_y_47A
		EOR	#$80 
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		AND	#$FE 
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		AND	#$7F 
		CMP	#0
		BEQ	locret_BFBC7
		LDA	scroll_offset_y_47A
		PHA
		LDA	scroll_offset_y_47A
		AND	#$80 
		CMP	#0
		BEQ	loc_BFBA8
		LDA	#0
		STA	ppu_scroll_y_305
		JMP	loc_BFBBA
; ---------------------------------------------------------------------------

loc_BFBA8:				
		LDA	scroll_offset_y_47A
		AND	#$7F 
		STA	scroll_offset_y_47A
		LDA	ppu_scroll_y_305
		CLC
		ADC	scroll_offset_y_47A
		STA	ppu_scroll_y_305

loc_BFBBA:				
		PLA
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		SEC
		SBC	#2
		STA	scroll_offset_y_47A

locret_BFBC7:				
					; sub_BFB70+21j
		RTS
; End of function sub_BFB70


; =============== S U B	R O U T	I N E =======================================


apu_music_update_BFBC8:			
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
		JSR	bank_switch_B8000
		PLA
		STA	bank_from_343
		PLA
		STA	bank_to_344
		PLA
		STA	bank_command_346
		RTS
; End of function apu_music_update_BFBC8

; ---------------------------------------------------------------------------
aDPCrT_7:	.BYTE ', D, P, <CR> = T) : ',0
aListOnOffListingDes_15:.BYTE 'LIST ON/OFF Listing Destination  (T, D, P, <CR> = T) : ',0
aEnterRunTimeSelecti_15:.BYTE $A
		.BYTE $A
		.BYTE 'Enter Run Time Selection : ',0
		.BYTE $A,0
aAssemblyTerminatedB_16:.BYTE 'Assembly Terminated By Operator',$A
		.BYTE $A,0
aCanTCreateDiskListi_15:.BYTE 'Can',$27,'t Create Disk Listing File',$A,0
aActiveCommands_16:.BYTE $A
		.BYTE '                         ***** Active Commands *****',$A
		.BYTE $A,0
aCtrlSStopOutput_15:.BYTE '                           Ctrl S = Stop Output',$A,0
aCtrlQStartOutput_16:.BYTE '                           Ctrl Q = Start Output',$A,0
aEscCStopAssembly_16:.BYTE '                           Esc  C = Stop Assembly',$A,0
aEscTTerminalOutput_16:.BYTE '                           Esc  T = Terminal Output',$A,0
aEscPPrinterOutput_16:.BYTE '                           Esc  P = Printer Output',$A,0
aEscDDiskOutput_16:.BYTE '                           Esc  D = Disk Output',$A,0
aEscMMultipleOutput_16:.BYTE '                           Esc  M = Multiple Output',$A,0
aEscNNoOutput_17:.BYTE '                           Esc  N = No Output',$A
		.BYTE $A,0
aRenameFileError_16:.BYTE 'Rename File Error',$A,0
aPage4u_16:	.BYTE 'Page %4u',0
aLib_16:	.BYTE 'LIB',0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE	0
aC_16:		.BYTE '%c',0
aMaximumNumberOfDiff_17:.BYTE $A
		.BYTE 'Maximum Number of Different Sections (%d) Exceeded.  Link Term'
		.BYTE 'inated.',$A
		.BYTE $A,0
aS_16:		.BYTE '%s',0
		.BYTE	0
aDiskListingFilename_16:.BYTE 'Disk Listing  Filename : ',0
aSymbolTableFilename_16:.BYTE 'Symbol Table  Filename : ',0
aFormat_16:	.BYTE 'Format   : ',0
aLinkerOutputFilenam_16:.BYTE 'Linker Output Filename : ',0
aMicrotek_16:	.BYTE 'Microtek',0
aZax_16:	.BYTE 'Zax',0
aAbbreviated2500A_d__16:.BYTE 'Abbreviated 2500 A.D.',0
a2500A_d__17:	.BYTE '2500 A.D.',0
aNoneSpecified_16:.BYTE	'<None Specified>',0
aLinkErrors_17:	.BYTE $A
		.BYTE '         Link Errors :  ',0
aOutputFormat_17:.BYTE '         Output Format :  ',0
aExecutable_16:	.BYTE 'Executable',0
aIntelHex_16:	.BYTE 'Intel Hex',0
aExtendedIntelHex_16:.BYTE 'Extended Intel Hex',0
aTektronixHex_16:.BYTE 'Tektronix Hex',0
aMotorolaS1_16:	.BYTE 'Motorola S1',0
		.BYTE	0
aMotorolaS_16:	.BYTE 'Motorola S'
		.WORD NMI_BF9ED
		.WORD off_B805B
		.WORD locret_BFA64
; end of 'BANK_0B'

; ===========================================================================