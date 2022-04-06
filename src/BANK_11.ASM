; Segment type:	Pure code
		;.segment BANK_11 (Tilemaps)
		* =  $8000

; =============== S U B	R O U T	I N E =======================================


bank_switch_118000:
		.include "common/bank_switch_func.asm"

switch_case_8035:				
					; bank_switch_118000+1Dj ...
		LDA	bank_to_344
		STA	bank_prev_345
		LDA	#$88 
		STA	bank_switch_flag_6C
		LDA	bank_command_346
		CMP	#0
		BEQ	loc_118047
		RTS
; ---------------------------------------------------------------------------

loc_118047:				
		JSR	tilemap_handler_11EC91
		JMP	loc_11804D
; ---------------------------------------------------------------------------

loc_11804D:				
		LDA	#$FF
		STA	bank_command_346
		LDA	bank_from_343
		STA	bank_to_344
		JMP	bank_switch_118000
; End of function bank_switch_118000

; ---------------------------------------------------------------------------
off_11805B:
		.include "tilemaps/bank_11.asm"
		
; =============== S U B	R O U T	I N E =======================================


tilemap_handler_11EC91:			
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
		BEQ	loc_11ECD9
		LDA	ptr_0
		CLC
		ADC	#$C0 
		STA	ptr_0
		LDA	ptr_1
		ADC	#3
		STA	ptr_1

loc_11ECD9:				
		LDY	tilemap_line_idx_4F

loc_11ECDB:				
		CPY	#0
		BEQ	loc_11ECF0
		LDA	ptr_0
		CLC
		ADC	tilemap_line_size_51
		STA	ptr_0
		LDA	ptr_1
		ADC	#0
		STA	ptr_1
		DEY
		JMP	loc_11ECDB
; ---------------------------------------------------------------------------

loc_11ECF0:				
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

loc_11ED09:				
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
		BCC	loc_11ED09
		RTS
; End of function tilemap_handler_11EC91


; =============== S U B	R O U T	I N E =======================================


unused_11ED20:
		LDA	#1
		STA	has_ppu_data_to_upload_6F

loc_11ED24:				
		LDA	has_ppu_data_to_upload_6F
		BNE	loc_11ED24
		RTS
; End of function unused_11ED20


; =============== S U B	R O U T	I N E =======================================


unused_11ED29:				
		LDA	_PPU_STATUS
		BMI	unused_11ED29

loc_11ED2E:				
		LDA	_PPU_STATUS
		BPL	loc_11ED2E
		RTS
; End of function unused_11ED29


; =============== S U B	R O U T	I N E =======================================


unused_11ED34:
		LDA	#1
		STA	frame_render_count_350

loc_11ED39:				
		LDA	frame_render_count_350
		BNE	loc_11ED39
		RTS
; End of function unused_11ED34


; =============== S U B	R O U T	I N E =======================================


unused_11ED3F:
		LDY	#0

loc_11ED41:				
		LDX	#0

loc_11ED43:				
		LDA	input_reg1_347
		CMP	#0
		BNE	locret_11ED50
		INX
		BNE	loc_11ED43
		INY
		BNE	loc_11ED41

locret_11ED50:				
		RTS
; End of function unused_11ED3F


; =============== S U B	R O U T	I N E =======================================


unused_11ED51:				
		LDA	input_pressed_34A
		CMP	#$80 
		BNE	unused_11ED51
		RTS
; End of function unused_11ED51


; =============== S U B	R O U T	I N E =======================================


unused_11ED59:				
		LDA	input_pressed_34A
		CMP	#$40 
		BNE	unused_11ED59
		RTS
; End of function unused_11ED59


; =============== S U B	R O U T	I N E =======================================


unused_11ED61:				
		LDA	input_pressed_34A
		CMP	#0
		BEQ	unused_11ED61
		RTS
; End of function unused_11ED61


; =============== S U B	R O U T	I N E =======================================


unused_11ED69:				
		PHA
		JSR	unused_11ED74
		PLA
		SEC
		SBC	#1
		BNE	unused_11ED69
		RTS
; End of function unused_11ED69


; =============== S U B	R O U T	I N E =======================================


unused_11ED74:				
		PHA
		TXA
		PHA
		TYA
		PHA
		LDX	#0

loc_11ED7B:				
		LDY	#0

loc_11ED7D:				
		DEY
		BNE	loc_11ED7D
		DEX
		BNE	loc_11ED7B
		PLA
		TAY
		PLA
		TAX
		PLA
		RTS
; End of function unused_11ED74


; =============== S U B	R O U T	I N E =======================================


nmi_sub_11ED89:				
		LDA	#$F0 
		STA	byte_218
		STA	byte_21C
		STA	byte_220
		STA	byte_224
		STA	byte_2E8
		STA	byte_2EC
		RTS
; End of function nmi_sub_11ED89


; =============== S U B	R O U T	I N E =======================================


nmi_sub_11ED9E:				
		LDA	byte_43E
		BEQ	loc_11EDC5
		LDA	byte_203
		BNE	loc_11EDB0
		LDA	#0
		STA	byte_43E
		JMP	locret_11EDE6
; ---------------------------------------------------------------------------

loc_11EDB0:				
		LDA	byte_203
		SEC
		SBC	#8
		STA	byte_203
		LDA	byte_207
		SEC
		SBC	#8
		STA	byte_207
		JMP	locret_11EDE6
; ---------------------------------------------------------------------------

loc_11EDC5:				
		LDA	byte_203
		CMP	#$F8 
		BNE	loc_11EDD4
		LDA	#1
		STA	byte_43E
		JMP	locret_11EDE6
; ---------------------------------------------------------------------------

loc_11EDD4:				
		LDA	byte_203
		CLC
		ADC	#8
		STA	byte_203
		LDA	byte_207
		CLC
		ADC	#8
		STA	byte_207

locret_11EDE6:				
					; nmi_sub_11ED9E+24j ...
		RTS
; End of function nmi_sub_11ED9E


; =============== S U B	R O U T	I N E =======================================


NMI_11EDE7:				
		PHP
		PHA
		TXA
		PHA
		TYA
		PHA
		LDA	bank_switch_flag_6C
		CMP	#$88 
		BEQ	loc_11EDF6
		JMP	loc_11EE27
; ---------------------------------------------------------------------------

loc_11EDF6:				
		LDA	#$EE 
		STA	bank_switch_flag_6C
		LDA	sprite_type_306
		BNE	loc_11EE02
		JSR	nmi_sub_11ED89

loc_11EE02:				
		LDA	#2
		STA	_PPU_OAM_DMA
		JSR	nmi_sub_11EE5F
		JSR	nmi_sub_11EEB4
		JSR	nmi_sub_11EECD
		LDA	sprite_type_306
		CMP	#1
		BNE	loc_11EE1D
		JSR	nmi_sub_11ED9E
		JSR	nmi_sub_11EF6A

loc_11EE1D:				
		JSR	nmi_sub_11EF30
		JSR	apu_music_update_11EFC2
		LDA	#$88 
		STA	bank_switch_flag_6C

loc_11EE27:				
		LDA	byte_432
		BEQ	loc_11EE2F
		DEC	byte_432

loc_11EE2F:				
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
		BEQ	loc_11EE58
		DEC	frame_render_count_350

loc_11EE58:				
		PLA
		TAY
		PLA
		TAX
		PLA
		PLP

locret_11EE5E:				
		RTI
; End of function NMI_11EDE7


; =============== S U B	R O U T	I N E =======================================


nmi_sub_11EE5F:				
		LDA	has_ppu_data_to_upload_6F
		BNE	loc_11EE64
		RTS
; ---------------------------------------------------------------------------

loc_11EE64:				
		LDA	ppu_data_70
		BEQ	loc_11EEAF
		STA	ppu_fld0_x_6D
		LDX	#1

loc_11EE6C:				
		LDA	ppu_data_70,X
		AND	#$80 
		BEQ	loc_11EE80
		LDA	ppu_ctrl_31F
		ORA	#4
		STA	ppu_ctrl_31F
		STA	_PPU_CTRL
		JMP	loc_11EE8B
; ---------------------------------------------------------------------------

loc_11EE80:				
		LDA	ppu_ctrl_31F
		AND	#$FB 
		STA	ppu_ctrl_31F
		STA	_PPU_CTRL

loc_11EE8B:				
		LDA	ppu_data_70,X
		AND	#$7F 
		STA	ppu_fld1_y_6E
		INX
		LDA	ppu_data_70,X
		STA	_PPU_ADDR
		INX
		LDA	ppu_data_70,X
		STA	_PPU_ADDR

loc_11EE9D:				
		INX
		LDA	ppu_data_70,X
		STA	_PPU_DATA
		DEC	ppu_fld1_y_6E
		BNE	loc_11EE9D
		DEC	ppu_fld0_x_6D
		BEQ	loc_11EEAF
		INX
		JMP	loc_11EE6C
; ---------------------------------------------------------------------------

loc_11EEAF:				
					; nmi_sub_11EE5F+4Aj
		LDA	#0
		STA	has_ppu_data_to_upload_6F
		RTS
; End of function nmi_sub_11EE5F


; =============== S U B	R O U T	I N E =======================================


nmi_sub_11EEB4:				
		LDA	ppu_ctrl_31F
		STA	_PPU_CTRL
		LDA	ppu_mask_320
		STA	_PPU_MASK
		LDA	ppu_scroll_x_304
		STA	_PPU_SCROLL
		LDA	ppu_scroll_y_305
		STA	_PPU_SCROLL
		RTS
; End of function nmi_sub_11EEB4


; =============== S U B	R O U T	I N E =======================================


nmi_sub_11EECD:				
		TYA
		PHA
		TYA
		PHA
		JSR	pad_input_update_11EEE5
		JSR	input_sub_11EF05
		LDA	input_pressed_34A
		ORA	input_unk_34B
		STA	input_unk_349
		PLA
		TAX
		PLA
		TAY
		RTS
; End of function nmi_sub_11EECD


; =============== S U B	R O U T	I N E =======================================


pad_input_update_11EEE5:		
		LDX	#1
		STX	_PAD0_REG
		DEX
		STX	_PAD0_REG
		LDA	#0
		LDY	#8

loc_11EEF2:				
		PHA
		LDA	_PAD0_REG,X
		STA	input_reg0_34E
		LSR	input_reg0_34E
		PLA
		ROL	A
		DEY
		BNE	loc_11EEF2
		STA	input_reg1_347,X
		RTS
; End of function pad_input_update_11EEE5


; =============== S U B	R O U T	I N E =======================================


input_sub_11EF05:			
		LDX	#0
		LDA	input_reg1_347,X
		EOR	input_unk_34C,X
		AND	input_reg1_347,X
		STA	input_pressed_34A,X
		LDA	input_reg1_347,X
		STA	input_unk_34C,X
		RTS
; End of function input_sub_11EF05


; =============== S U B	R O U T	I N E =======================================


unused_11EF1A:
		LDA	ppu_ctrl_31F
		STA	_PPU_CTRL
		LDA	ppu_mask_320
		STA	_PPU_MASK
		RTS
; End of function unused_11EF1A


; =============== S U B	R O U T	I N E =======================================


unused_11EF27:
		LDA	#0
		STA	_PPU_CTRL
		STA	_PPU_MASK
		RTS
; End of function unused_11EF27


; =============== S U B	R O U T	I N E =======================================


nmi_sub_11EF30:				
		INC	byte_353
		LDA	byte_353
		CMP	#$19
		BCS	loc_11EF3B
		RTS
; ---------------------------------------------------------------------------

loc_11EF3B:				
		LDA	#0
		STA	byte_353
		LDA	byte_354
		CMP	#0
		BNE	loc_11EF66
		LDA	byte_355
		CMP	#0
		BNE	loc_11EF5E
		LDA	byte_356
		CMP	#0
		BNE	loc_11EF56
		RTS
; ---------------------------------------------------------------------------

loc_11EF56:				
		DEC	byte_356
		LDA	#$A
		STA	byte_355

loc_11EF5E:				
		DEC	byte_355
		LDA	#$A
		STA	byte_354

loc_11EF66:				
		DEC	byte_354
		RTS
; End of function nmi_sub_11EF30


; =============== S U B	R O U T	I N E =======================================


nmi_sub_11EF6A:				
		INC	scroll_offset_x_479
		LDA	scroll_offset_x_479
		CMP	#$A
		BCC	locret_11EFC1
		LDA	scroll_offset_y_47A
		EOR	#$80 
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		AND	#$FE 
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		AND	#$7F 
		CMP	#0
		BEQ	locret_11EFC1
		LDA	scroll_offset_y_47A
		PHA
		LDA	scroll_offset_y_47A
		AND	#$80 
		CMP	#0
		BEQ	loc_11EFA2
		LDA	#0
		STA	ppu_scroll_y_305
		JMP	loc_11EFB4
; ---------------------------------------------------------------------------

loc_11EFA2:				
		LDA	scroll_offset_y_47A
		AND	#$7F 
		STA	scroll_offset_y_47A
		LDA	ppu_scroll_y_305
		CLC
		ADC	scroll_offset_y_47A
		STA	ppu_scroll_y_305

loc_11EFB4:				
		PLA
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		SEC
		SBC	#2
		STA	scroll_offset_y_47A

locret_11EFC1:				
					; nmi_sub_11EF6A+21j
		RTS
; End of function nmi_sub_11EF6A


; =============== S U B	R O U T	I N E =======================================


apu_music_update_11EFC2:		
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
		JSR	bank_switch_118000
		PLA
		STA	bank_from_343
		PLA
		STA	bank_to_344
		PLA
		STA	bank_command_346
		RTS
; End of function apu_music_update_11EFC2

; ---------------------------------------------------------------------------
		.BYTE $44,  2,$8A,$46,$1C,$26,$88,$44,	3,$26,$C6,$44,	4,  0,$EB,  7
		.BYTE $C4,$76,	8,$26,$C6,  4,	0,$8B,$46, $C,$83,$C4, $E,$5D,$CB,$55
		.BYTE $83,$EC, $C,$8B,$EC,$C7,	6,$80,$CE,  0,	0,$8B,$46,$14,$8B,$5E
		.BYTE $12,$81,$CB,  3,	0,$83,$C3,  1,$15,  0,	0,$8B, $E,$BE,	3,$D1
		.BYTE $E1,$D1,$E1,$8B,$F1,$50,$53,$89,$46,$14,$89,$5E,$12,$89,$76,  0
		.BYTE $9A,  3,	0,$9B,$1F,$8B,$E5,$8B,$76,  0,$89,$84,$CF,$CD,$89,$9C
		.BYTE $CD,$CD,$A1,$BE,	3,$FF,	6,$BE,	3,$D1,$E0,$D1,$E0,$8B,$F0,$8B
		.BYTE $84,$CF,$CD,$8B,$9C,$CD,$CD,$89,$46, $A, $B,$C3,$89,$5E,	8,$75
		.BYTE	6,$C7,	6,$80,$CE,  1,	0,$8B,$46, $A,$8B,$5E,	8,$83,$C4, $C
		.BYTE $5D,$CB,$55,$83,$EC, $E,$8B,$EC,$C7,  6,$80,$CE,	0,  0,$8B,$46
		.BYTE $14,$89,$46, $C, $D,  3,	0,$40,$89,$46, $C,  5,	4,  0,$8B,$1E
		.BYTE $C4,  0,$3B,$D8,$89,$46,	0,$72,$27,$8B, $E,$9F,$C0,$8B,$16,$9D
		.BYTE $C0,$8B,$46, $C,$89,$56,	8,  3,$D0,$83,$C2,  4,$8B,$46,	0,$29
		.BYTE	6,$C4,	0,$89, $E,$9F,$C0,$89,$4E, $A,$89,$16,$9D,$C0,$EB,$72
		.BYTE $A1,$BE,	3,$D1,$E0,$D1,$E0,$8B,$F0,$B8,$80,$FF,$50,$89,$76,  0
		.BYTE $9A,  3,	0,$9B,$1F,$8B,$E5,$8B,$76,  0,$89,$84,$CF,$CD,$89,$9C
		.BYTE $CD,$CD,$A1,$BE,	3,$FF,	6,$BE,	3,$D1,$E0,$D1,$E0,$8B,$F0,$8B
		.BYTE $84,$CF,$CD,$8B,$9C,$CD,$CD,$89,$46, $A,$A3,$9F,$C0, $B,$C3,$89
		.BYTE $5E,  8,$89,$1E,$9D,$C0,$75,  6,$C7,  6,$80,$CE,	1,  0,$8B,$46
		.BYTE  $C,$8B,$1E,$9F,$C0,$8B, $E,$9D,$C0,  3,$C8,$83,$C1,  4,	5,  4
		.BYTE	0,$BA,$80,$FF,$2B,$D0,$89, $E,$9D,$C0,$89,$16,$C4,  0,$89,$1E
		.BYTE $9F,$C0,$8B,$46, $A,$8B,$5E,  8,$83,$C4, $E,$5D,$CB,$55,$8B,$EC
		.BYTE $C4,$76,	6,$26,$C6,  4, $D,$26,$C6,$44,	1, $A,$B8,  2,	0,$5D
		.BYTE $CB,$55,$83,$EC,$24,$8B,$EC,$16,$8D,$46,$1C,$50,$9A,$AD,	3,$FA
		.BYTE  $B,$8B,$E5,$C7,$46,  4,	0,$2A,$16,$8D,$46,$1C,$50,$16,$8D,$46
		.BYTE $10,$50,$16,$8D,$46,  4,$50,$9A,$DB,  3,$FA, $B,$8B,$E5,$8B,$46
		.BYTE $10,$25,$FF,  0,$89,$46,	2,$E9,$89,  0,$C6,  6,$99,$5B,$53,$C6
		.BYTE	6,$9A,$5B,$75,$C6,  6,$9B,$5B,$6E,$E9,$88,  0,$C6,  6,$99,$5B
		.BYTE $4D,$C6,	6,$9A,$5B,$6F,$C6,  6,$9B,$5B,$6E,$EB,$77,$C6,	6,$99
		.BYTE $5B,$54,$C6,  6,$9A,$5B,$75,$C6,	6,$9B,$5B,$65,$EB,$66,$C6,  6
		.BYTE $99,$5B,$57,$C6,	6,$9A,$5B,$65,$C6,  6,$9B,$5B,$64,$EB,$55,$C6
		.BYTE	6,$99,$5B,$54,$C6,  6,$9A,$5B,$68,$C6,	6,$9B,$5B,$75,$EB,$44
		.BYTE $C6,  6,$99,$5B,$46,$C6,	6,$9A,$5B,$72,$C6,  6,$9B,$5B,$69,$EB
		.BYTE $33,$C6,	6,$99,$5B,$53,$C6,  6,$9A,$5B,$61,$C6,	6,$9B,$5B,$74
		.BYTE $EB,$22,$E9,$50,	2,$D2,	5,$E4,	5,$F5,	5,  6,	6,$17,	6,$28
		.BYTE	6,$39,	6,$8B,$F0,$83,$FE,  7,$73,  7,$D1,$E6,$2E,$FF,$A4,$4D
		.BYTE	6,$E9,$31,  2,$C6,  6,$9C,$5B,$20,$B1,	8,$8B,$46,$16,$D3,$F8
		.BYTE $25,$FF,	0,$89,$46,  2,$E9,$EE,	0,$C6,	6,$9D,$5B,$4A,$C6,  6
		.BYTE $9E,$5B,$61,$C6,	6,$9F,$5B,$6E,$E9,$F2,	0,$C6,	6,$9D,$5B,$46
		.BYTE $C6,  6,$9E,$5B,$65,$C6,	6,$9F,$5B,$62,$E9,$E0,	0,$C6,	6,$9D
		.BYTE $5B,$4D,$C6,  6,$9E,$5B,$61,$C6,	6,$9F,$5B,$72,$E9,$CE,	0,$C6
		.BYTE	6,$9D,$5B,$41,$C6,  6,$9E,$5B,$70,$C6,	6,$9F,$5B,$72,$E9,$BC
		.BYTE	0,$C6,	6,$9D,$5B,$4D,$C6,  6,$9E,$5B,$61,$C6,	6,$9F,$5B,$79
		.BYTE $E9,$AA,	0,$C6,	6,$9D,$5B,$4A,$C6,  6,$9E,$5B,$75,$C6,	6,$9F
		.BYTE $5B,$6E,$E9,$98,	0,$C6,	6,$9D,$5B,$4A,$C6,  6,$9E,$5B,$75,$C6
		.BYTE	6,$9F,$5B,$6C,$E9,$86,	0,$C6,	6,$9D,$5B,$41,$C6,  6,$9E,$5B
		.BYTE $75,$C6,	6,$9F,$5B,$67,$EB,$75,$C6,  6,$9D,$5B,$53,$C6,	6,$9E
		.BYTE $5B,$65,$C6,  6,$9F,$5B,$70,$EB,$64,$C6,	6,$9D,$5B,$4F,$C6,  6
		.BYTE $9E,$5B,$63,$C6,	6,$9F,$5B,$74,$EB,$53,$C6,  6,$9D,$5B,$4E,$C6
		.BYTE	6,$9E,$5B,$6F,$C6,  6,$9F,$5B,$76,$EB,$42,$C6,	6,$9D,$5B,$44
		.BYTE $C6,  6,$9E,$5B,$65,$C6,	6,$9F,$5B,$63,$EB,$31,$E9,$46,	1,$81
		.BYTE	6,$93,	6,$A5,	6,$B7,	6,$C9,	6,$DB,	6,$ED,	6,$FF,	6,$10
		.BYTE	7,$21,	7,$32,	7,$43,	7,$8B,$F0,$83,$EE,  1,$72, $C,$83,$FE
		.BYTE  $C,$73,	7,$D1,$E6,$2E,$FF,$A4,$57,  7,$E9,$18,	1,$C6,	6,$A0
		.BYTE $5B,$20,$8B,$46,$16,$25,$FF,  0,$3D,  9,	0,$89,$46,  2,$76,$1D
		.BYTE $BB, $A,	0,$31,$D2,$F7,$F3,  5,$30,  0,$A2,$A1,$5B,$8B,$46,  2
		.BYTE $31,$D2,$F7,$F3,$83,$C2,$30,$88,$16,$A2,$5B,$EB, $E,$C6,	6,$A1
		.BYTE $5B,$20,$8B,$46,	2,  5,$30,  0,$A2,$A2,$5B,$B0,$20,$8B,$5E,$14
		.BYTE $A2,$A3,$5B,$8B,$C3,$89,$46,  2,$B9,$E8,	3,$31,$D2,$F7,$F1,  5
		.BYTE $30,  0,$A2,$A4,$5B,$8B,$C3,$31,$D2,$F7,$F1,$89,$56,  2,$8B,$46
		.BYTE	2,$BB,$64,  0,$31,$D2,$F7,$F3,	5,$30,	0,$A2,$A5,$5B,$8B,$46
		.BYTE	2,$31,$D2,$F7,$F3,$89,$56,  2,$8B,$46,	2,$BB, $A,  0,$31,$D2
		.BYTE $F7,$F3,	5,$30,	0,$A2,$A6,$5B,$8B,$46,	2,$31,$D2,$F7,$F3,$83
		.BYTE $C2,$30,$C6,  6,$A8,$5B,$20,$C7,$46,  4,	0,$2C,$16,$8D,$46,$1C
		.BYTE $50,$88,$16,$A7,$5B,$9A,$AD,  3,$FA, $B,$8B,$E5,$16,$8D,$46,$1C
		.BYTE $50,$16,$8D,$46,$10,$50,$16,$8D,$46,  4,$50,$9A,$DB,  3,$FA, $B
		.BYTE $8B,$E5,$B1,  8,$8B,$46,$14,$D3,$F8,$25,$FF,  0,$89,$46,	2,$BB
		.BYTE  $A,  0,$31,$D2,$F7,$F3,	5,$30,	0,$A2,$A9,$5B,$8B,$46,	2,$31
		.BYTE $D2,$F7,$F3,$83,$C2,$30,$C6,  6,$AB,$5B,$3A,$8B,$46,$14,$25,$FF
		.BYTE	0,$88,$16,$AA,$5B,$89,$46,  2,$31,$D2,$F7,$F3,	5,$30,	0,$A2
		.BYTE $AC,$5B,$8B,$46,	2,$31,$D2,$F7,$F3,$83,$C2,$30,$C6,  6,$AE,$5B
		.BYTE	0,$88,$16,$AD,$5B,$83,$C4,$24,$5D,$CB,$55,$8B,$EC,$C6,	6,$A0
		.BYTE $15,  0,$5D,$CB,$55,$83,$EC,  2,$8B,$EC,$C6,  6,$A0,$15,	0,$1E
		.BYTE $B8,$6B,	1,$50,$9A,$43,	0,$1C,$20,$8B,$E5,$1E,$B8,$E1,$15,$50
		.BYTE $9A,  6,	0,$91, $C,$8B,$E5,$1E,$B8,$89,	1,$50,$9A,$43,	0,$1C
		.BYTE $20,$8B,$E5,$1E,$B8,$E1,$15,$50,$9A,$E1,	1,$91, $C,$8B,$E5,$A0
		.BYTE $E1,$15,$30,$E4,$E9,$F0,	0,$C6,	6,$A0,$15,$FF,$FF,$36,$E4,$CE
		.BYTE $9A, $A,	0,$57,$1F,$8B,$E5,$1E,$B8,$CB,$5B,$50,$9A,$C9,	3,$FA
		.BYTE  $B,$8B,$E5,$A0,$A4,$15,$30,$E4,$48,$75,$17,$FF,$36,$96,$CE,$9A
		.BYTE  $A,  0,$57,$1F,$8B,$E5,$1E,$B8,$FD,$5B,$50,$9A,$C9,  3,$FA, $B
		.BYTE $8B,$E5,$1E,$B8,$8B,  1,$50,$9A,$43,  0,$1C,$20,$8B,$E5,$E9,$BA
		.BYTE	0,$B0,	2,$C7,	6,$F0,$CE,  0,	0,$C6,	6,$A3,$15,  1,$A2,$A2
		.BYTE $15,$A2,$A1,$15,$A2,$9A,$15,$E9,$A1,  0,$B0,  0,$C6,  6,$A2,$15
		.BYTE	1,$C7,	6,$F0,$CE,$20,	0,$A2,$A3,$15,$A2,$A1,$15,$A2,$9A,$15
		.BYTE  $E,$E8,$15,  1,$E9,$84,	0,$B0,	1,$C6,	6,$A2,$15,  2,$C7,  6
		.BYTE $F0,$CE,	0,  0,$A2,$A3,$15,$A2,$A1,$15,$A2,$9A,$15,$EB,$6C, $E
		.BYTE $E8,$6D,	0,$B0,	4,$C6,	6,$A2,$15,  2,$C6,  6,$A3,$15,	1,$C7
		.BYTE	6,$F0,$CE,$20,	0,$A2,$A1,$15,$A2,$9A,$15, $E,$E8,$DA,	0,$EB
		.BYTE $4A, $E,$E8,$4B,	0,$B0,	5,$C6,	6,$A2,$15,  2,$C7,  6,$F0,$CE
		.BYTE	0,  0,$C6,  6,$A3,$15,	1,$A2,$A1,$15,$A2,$9A,$15,$EB,$2C,$4D
		.BYTE	0,$A9,	9,$44,	0,$87,	9,$54,	0,$6F,	9,$4E,	0,$52,	9,$50
		.BYTE	0,$39,	9,$43,	0,$EF,	8,$BE,$14,  0,$2E,$3B,$84,$C7,	9,$75
		.BYTE	5,$2E,$FF,$A4,$C9,  9,$83,$EE,	4,$79,$EF,$83,$C4,  2,$5D,$CB
		.BYTE $55,$83,$EC,  2,$8B,$EC,$A0,$A4,$15,$30,$E4,$85,$C0,$75,$2C,$B8
		.BYTE $FF,  1,$50,$1E,$B8,$FD,$5B,$50,$9A,$78,	2, $C,$1F,$8B,$E5,$A3
		.BYTE $96,$CE,$40,$75,$11,$1E,$B8,$AD,	1,$50,$9A,$43,	0,$1C,$20,$8B
		.BYTE $E5,$C6,	6,$A0,$15,$FF,$C6,  6,$A4,$15,	1,$83,$C4,  2,$5D,$CB
		.BYTE $55,$83,$EC,  4,$8B,$EC,$A1,$F0,$CE,$8B,$1E,$14,$D7,$23,$D8,$74
		.BYTE	5,$83,$C4,  4,$5D,$CB,$9A, $E,	0,$3A,$20,$A3,$4E,$CE,$85,$C0
		.BYTE $74,$1D,$9A, $B,	0,$5C,$1F,$88,$46,  2,$30,$E4,$3D,$1B,	0,$75
		.BYTE	7,$C6,	6,$A0,$15,  1,$EB, $C,$C6,  6,$A0,$15,	0,$EB,	5,$C6
		.BYTE	6,$A0,$15,  0,$83,$C4,	4,$5D,$CB,$55,$83,$EC,	2,$8B,$EC,$A0
		.BYTE $AA,$15,$30,$E4,$85,$C0,$75,$6C,$1E,$B8,$CD,  1,$50,$9A,$43,  0
		.BYTE $1C,$20,$8B,$E5,$1E,$B8,	5,  2,$50,$9A,$43,  0,$1C,$20,$8B,$E5
		.BYTE $1E,$B8,$36,  2,$50,$9A,$43,  0,$1C,$20,$8B,$E5,$1E,$B8,$68,  2
		.BYTE $50,$9A,$43,  0,$1C,$20,$8B,$E5,$1E,$B8,$9B,  2,$50,$9A,$43,  0
		.BYTE $1C,$20,$8B,$E5,$1E,$B8,$D0,  2,$50,$9A,$43,  0,$1C,$20,$8B,$E5
		.BYTE $1E,$B8,	4,  3,$50,$9A,$43,  0,$1C,$20,$8B,$E5,$1E,$B8,$35,  3
		.BYTE $50,$9A,$43,  0,$1C,$20,$8B,$E5,$1E,$B8,$6A,  3,$50,$9A,$43,  0
		.BYTE $1C,$20,$8B,$E5,$83,$C4,	2,$5D,$CB,$55,$8B,$EC,$FF,$76,	8,$FF
		.BYTE $76,  6,$9A,$C9,	3,$FA, $B,$8B,$E5,$5D,$CB,$55,$83,$EC,	8,$8B
		.BYTE $EC,$C7,$46,  2,	0,  0,$33,$C0,$50,$FF,$76,$10,$FF,$76, $E, $E
		.BYTE $E8,$22,$F5,$8B,$E5,$89,$46,  4,$40,$74,$78,$B8,$FF,  1,$50,$FF
		.BYTE $76,$14,$FF,$76,$12, $E,$E8,$34,$F5,$8B,$E5,$89,$46,  6,$40,$74
		.BYTE $62,$C7,	6,$4E,$CE,$FF,$FF,$83,$3E,$4E,$CE,  0,$74,$32,$B8,  0
		.BYTE $20,$50,$FF,$36,$1F,$C1,$FF,$36,$1D,$C1,$FF,$76,	4,$9A,	8,  0
		.BYTE $22,$20,$8B,$E5,$85,$C0,$A3,$4E,$CE,$74,$DC,$50,$FF,$36,$1F,$C1
		.BYTE $FF,$36,$1D,$C1,$FF,$76,	6,$9A,	7,  0,$5F,$1F,$8B,$E5,$EB,$C7
		.BYTE $FF,$76,	6,$9A, $A,  0,$57,$1F,$8B,$E5,$FF,$76,	4,$9A, $A,  0
		.BYTE $57,$1F,$8B,$E5,$FF,$76,$10,$FF,$76, $E,$9A,$C9,	3,$FA, $B,$8B
		.BYTE $E5,$EB,$11,$1E,$B8,$9A,	3,$50,$9A,$43,	0,$1C,$20,$8B,$E5,$C7
		.BYTE $46,  2,	1,  0,$8B,$46,	2,$83,$C4,  8,$5D,$CB,$55,$8B,$EC,$B8
		.BYTE	1,  0,$5D,$CB,$55,$83,$EC, $C,$8B,$EC, $E,$E8,$62,$FE,$A0,$A0
		.BYTE $15,$30,$E4,$85,$C0,$74,$14, $E,$E8,$C9,$FC,$A0,$A0,$15,$30,$E4
		.BYTE $25,$FF,	0,$3D,$FF,  0,$75,  3,$E9,$D5,	1,$A0,$9A,$15,$30,$E4
		.BYTE $85,$C0,$75,  3,$E9,$C9,	1,$A1,$12,$D7,$3B,  6,$10,$D7,$73,  3
		.BYTE $E9,$BD,	1,$83,$3E, $E,$D7,  1,$77,  9,$A0,$BC,	3,$30,$E4,$85
		.BYTE $C0,$74,$11,$C4,$36,$25,$C1,$FF,	6,$25,$C1,$26,$C6,  4, $C,$C6
		.BYTE	6,$BC,	3,  0,$C7,  6,$12,$D7,	0,  0,$C7,  6,$4E,$CE,	0,  0
		.BYTE $A0,$B2,$15,$30,$E4,$8B,$1E,$4E,$CE,$3B,$D8,$74,$12,$C4,$36,$25
		.BYTE $C1,$FF,	6,$25,$C1,$26,$C6,  4, $A,$FF,	6,$4E,$CE,$EB,$E1,$C7
		.BYTE	6,$4E,$CE,  0,	0,$83,$3E,$4E,$CE,  2,$74,$12,$C4,$36,$25,$C1
		.BYTE $FF,  6,$25,$C1,$26,$C6,	4,$20,$FF,  6,$4E,$CE,$EB,$E7,$8C,$D8
		.BYTE $BB,$99,$5B,$A3,$7F,$C0,$89,$1E,$7D,$C0,$C4,$36,$7D,$C0,$26,$8A
		.BYTE	4,$30,$E4,$85,$C0,$74,$1C,$8B,$3E,$25,$C1,$FF,	6,$25,$C1,$FF
		.BYTE	6,$7D,$C0,$26,$8A,  4,$8E,  6,$27,$C1,$26,$88,	5,$FF,	6,$4E
		.BYTE $CE,$EB,$D7,$A1, $C,$D7,$2D, $B,	0,$8B,$1E,$4E,$CE,$3B,$D8,$74
		.BYTE $12,$C4,$36,$25,$C1,$FF,	6,$25,$C1,$26,$C6,  4,$20,$FF,	6,$4E
		.BYTE $CE,$EB,$E0,$FF,$36, $E,$D7,$1E,$B8,$AD,	3,$50,$FF,$36,$27,$C1
		.BYTE $FF,$36,$25,$C1,$9A,$29,	0,$91,$1F,$8B,$E5,$C4,$36,$25,$C1,$26
		.BYTE $8A,  4,$30,$E4,$85,$C0,$74,  6,$FF,  6,$25,$C1,$EB,$ED,$C4,$36
		.BYTE $25,$C1,$8B,$C6,$89,$46,	0,$40,$B3, $A,$26,$88,$1C,$8B,$F0,$A3
		.BYTE $25,$C1,$40,$26,$88,$1C,$8A,$1E,$9A,$15,$30,$FF,$85,$DB,$A3,$25
		.BYTE $C1,$75,	3,$E9,$AA,  0,$C7,  6,$4E,$CE,	0,  0,$8B,$36,$4E,$CE
		.BYTE $8A,$84,$7F,$5C,$30,$E4,$3D, $A,	0,$74,$19,$8B,$3E,$25,$C1,$FF
		.BYTE	6,$25,$C1,$8A,$84,$7F,$5C,$8E,	6,$27,$C1,$26,$88,  5,$FF,  6
		.BYTE $4E,$CE,$EB,$D8,$C4,$36,$25,$C1,$FF,  6,$25,$C1,$26,$C6,	4, $A
		.BYTE $C7,  6,$4E,$CE,	0,  0,$8B,$36,$4E,$CE,$8A,$84,$80,$5C,$30,$E4
		.BYTE $3D, $A,	0,$74,$19,$8B,$3E,$25,$C1,$FF,	6,$25,$C1,$8A,$84,$80
		.BYTE $5C,$8E,	6,$27,$C1,$26,$88,  5,$FF,  6,$4E,$CE,$EB,$D8,$C4,$36
		.BYTE $25,$C1,$8B,$C6,$89,$46,	0,$40,$B3, $A,$26,$88,$1C,$8B,$F0,$A3
		.BYTE $25,$C1,$40,$26,$88,$1C,$8B,$F0,$26,$C6,	4,  0,$FF,  6, $E,$D7
		.BYTE $FF,$36,$23,$C1,$FF,$36,$21,$C1,$A3,$25,$C1,$9A,$58,  2,$91, $C
		.BYTE $8B,$E5,$A1,$23,$C1,$8B,$1E,$21,$C1,$A3,$27,$C1,$89,$1E,$25,$C1
		.BYTE $83,$C4, $C,$5D,$CB,$55,$83,$EC,$16,$8B,$EC,$C6,$46,$14,$3A,$B8
		.BYTE	4,  0,$50,$FF,$76,$1E,$FF,$76,$1C,$9A,	3,  0,$97,$1F,$8B,$E5
		.BYTE $85,$C0,$89,$46, $E,$78,	3,$E9,$F8,  0,$A0,$BB,	3,$30,$E4,$85
		.BYTE $C0,$74,	3,$E9,$EC,  0,$1E,$B8,$B6,  3,$50,$9A, $D,  0,$4E,$1F
		.BYTE $8B,$E5,$89,$46,$12,$89,$5E,$10,$82,$3E,$BA,  3,	0,$74,	4,$C6
		.BYTE $46,$14,$3B,$8B,$46,$12, $B,$46,$10,$75,	3,$E9,$D6,  0,$8B,$46
		.BYTE $1E, $B,$46,$1C,$75,  3,$E9,$CB,	0,$8B,$46, $E,$85,$C0,$78,  3
		.BYTE $E9,$C1,	0,$C4,$76,$10,$26,$8A,	4,$30,$E4,$85,$C0,$75,	3,$E9
		.BYTE $B2,  0,$C7,$46, $C,  0,	0,$C4,$76,$10,$26,$8A,	4,$30,$E4,$85
		.BYTE $C0,$89,$46,  0,$74,$1D,$8A,$5E,$14,$30,$FF,$3B,$C3,$74,$14,$8B
		.BYTE $46, $C,$FF,$46, $C,$8B,$F8,$FF,$46,$10,$26,$8A,	4,$88,$85,$81
		.BYTE $5C,$EB,$D4,$8A,$46,$14,$30,$E4,$C4,$76,$10,$26,$8A,$1C,$30,$FF
		.BYTE $3B,$D8,$75,  3,$FF,$46,$10,$A0,$C6,  0,$30,$E4,$8B,$76, $C,$8A
		.BYTE $9C,$80,$5C,$30,$FF,$3B,$D8,$89,$46,  4,$74,$16,$C4,$7E,$1C,$26
		.BYTE $8A,$1D,$30,$FF,$3B,$D8,$74, $A,$A0,$C6,	0,$88,$84,$81,$5C,$FF
		.BYTE $46, $C,$8B,$76, $C,$C6,$84,$81,$5C,  0,$FF,$76,$1E,$FF,$76,$1C
		.BYTE $1E,$B8,$81,$5C,$50,$9A,$41,  3,$FA, $B,$8B,$E5,$B8,  4,	0,$50
		.BYTE $1E,$B8,$81,$5C,$50,$9A,	3,  0,$97,$1F,$8B,$E5,$89,$46, $E,$E9
		.BYTE $47,$FF,$FF,$76,$1E,$FF,$76,$1C,$1E,$B8,$81,$5C,$50,$9A,$7B,  3
		.BYTE $FA, $B,$8B,$E5,$8B,$46, $E,$83,$C4,$16,$5D,$CB,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	3,  0,$4C,$43,$20,$33,$2E,$30
		.BYTE $30,  0,	7, $A,$ED,$30,$B0,  7,	0,  8,$C0,$EC,	0,  0,$EA, $B
		.BYTE	0,  0,$21,$22,	0,  0,$6D,$31,	0,  0,$3E,$5F,$30,  0,	0,  0
		.BYTE $57,$53,$70,$62,	1,  0,$C0,$EC,	0,  0,$D8,  7,$ED,$30,$B0,  7
		.BYTE $ED,$30,	4,  0,	9,  0,$ED,  7,$ED,$30,	0,  0,$D8, $B,$E2,  0
		.BYTE	6,  1,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	1,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0
aInvalidStackSizeInsu_4:.BYTE 'Invalid stack size',$D,$A
		.BYTE '$Insufficient memory',$D,$A
		.BYTE '$',$A
		.BYTE '2500 A.D. Linker  Copyright (C) 1985  -  Version 4.01f',$A
		.BYTE $A,0
		.BYTE $18
aFListingDestinationN_5:.BYTE 'F',$5C,'Listing Destination  (N, T, D, E, L, P, <CR> = N) : ',0
aErrorOnlyListingDest_6:.BYTE 'Error Only Listing Destination  (T, D, P, <CR> = T) : ',0
aListOnOffListingDes_14:.BYTE 'LIST ON/OFF Listing Destination  (T, D, P, <CR> = T) : ',0
aEnterRunTimeSelecti_14:.BYTE $A
		.BYTE $A
		.BYTE 'Enter Run Time Selection : ',0
		.BYTE  $A
		.BYTE	0
aAssemblyTerminatedB_15:.BYTE 'Assembly Terminated By Operator',$A
		.BYTE $A,0
aCanTCreateDiskListi_14:.BYTE 'Can',$27,'t Create Disk Listing File',$A,0
		.BYTE  $A
aActiveCommands_14:.BYTE '                         ***** Active Commands *****',$A
		.BYTE $A,0
aCtrlSStopOutput_14:.BYTE '                           Ctrl S = Stop Output',$A,0
aCtrlQStartOutput_15:.BYTE '                           Ctrl Q = Start Output',$A,0
aEscCStopAssembly_15:.BYTE '                           Esc  C = Stop Assembly',$A,0
aEscTTerminalOutput_15:.BYTE '                           Esc  T = Terminal Output',$A,0
aEscPPrinterOutput_15:.BYTE '                           Esc  P = Printer Output',$A,0
aEscDDiskOutput_15:.BYTE '                           Esc  D = Disk Output',$A,0
aEscMMultipleOutput_15:.BYTE '                           Esc  M = Multiple Output',$A,0
aEscNNoOutput_15:.BYTE '                           Esc  N = No Output',$A
		.BYTE $A,0
aRenameFileError_15:.BYTE 'Rename File Error',$A,0
aPage4u_15:	.BYTE 'Page %4u',0
aLib_15:	.BYTE 'LIB',0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE	0
aC_15:		.BYTE '%c',0
		.BYTE  $A
aMaximumNumberOfDiff_15:.BYTE 'Maximum Number of Different Sections (%d) Exceeded.  Link Term'
		.BYTE 'inated.',$A
		.BYTE $A,0
aS_15:		.BYTE '%s',0
		.BYTE	0
aDiskListingFilename_15:.BYTE 'Disk Listing  Filename : ',0
aSymbolTableFilename_15:.BYTE 'Symbol Table  Filename : ',0
aFormat_15:	.BYTE 'Format   : ',0
aLinkerOutputFilenam_15:.BYTE 'Linker Output Filename : ',0
aMicrotek_15:	.BYTE 'Microtek',0
aZax_15:	.BYTE 'Zax',0
aAbbreviated2500A_d__15:.BYTE 'Abbreviated 2500 A.D.',0
a2500A_d__16:	.BYTE '2500 A.D.',0
aNoneSpecified_15:.BYTE	'<None Specified>',0
		.BYTE  $A
aLinkErrors_16:	.BYTE '         Link Errors :  ',0
aOutputFormat_16:.BYTE '         Output Format :  ',0
aExecutable_15:	.BYTE 'Executable',0
aIntelHex_15:	.BYTE 'Intel Hex',0
aExtendedIntelHex_15:.BYTE 'Extended Intel Hex',0
aTektronixHex_15:.BYTE 'Tektronix Hex',0
aMotorolaS1_15:	.BYTE 'Motorola S1',0
		.BYTE	0
aMotorolaS_15:	.BYTE 'Motorola S'
		.WORD NMI_11EDE7
		.WORD off_11805B
		.WORD locret_11EE5E
; end of 'BANK_11'

; ===========================================================================