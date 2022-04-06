; Segment type:	Pure code
		;.segment BANK_09 (Tilemaps)
		* =  $8000

; =============== S U B	R O U T	I N E =======================================


bank_switch_98000:			
		.include "common/bank_switch_func.asm"

switch_case_8035:
		LDA	bank_to_344
		STA	bank_prev_345
		LDA	#$88 
		STA	bank_switch_flag_6C
		LDA	bank_command_346
		CMP	#0
		BEQ	loc_98047
		RTS
; ---------------------------------------------------------------------------

loc_98047:				
		JSR	tilemap_handler_9F097
		JMP	loc_9804D
; ---------------------------------------------------------------------------

loc_9804D:				
		LDA	#$FF
		STA	bank_command_346
		LDA	bank_from_343
		STA	bank_to_344
		JMP	bank_switch_98000
; End of function bank_switch_98000

; ---------------------------------------------------------------------------
Tilemaps_9805B:
		.include "tilemaps/bank_09.asm"
		
; =============== S U B	R O U T	I N E =======================================


tilemap_handler_9F097:			
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
		BEQ	loc_9F0DF
		LDA	ptr_0
		CLC
		ADC	#$C0 
		STA	ptr_0
		LDA	ptr_1
		ADC	#3
		STA	ptr_1

loc_9F0DF:				
		LDY	tilemap_line_idx_4F

loc_9F0E1:				
		CPY	#0
		BEQ	loc_9F0F6
		LDA	ptr_0
		CLC
		ADC	tilemap_line_size_51
		STA	ptr_0
		LDA	ptr_1
		ADC	#0
		STA	ptr_1
		DEY
		JMP	loc_9F0E1
; ---------------------------------------------------------------------------

loc_9F0F6:				
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

loc_9F10F:				
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
		BCC	loc_9F10F
		RTS
; End of function tilemap_handler_9F097


; =============== S U B	R O U T	I N E =======================================


sub_9F126:
		LDA	#1
		STA	has_ppu_data_to_upload_6F

loc_9F12A:				
		LDA	has_ppu_data_to_upload_6F
		BNE	loc_9F12A
		RTS
; End of function sub_9F126


; =============== S U B	R O U T	I N E =======================================


sub_9F12F:				
		LDA	_PPU_STATUS
		BMI	sub_9F12F

loc_9F134:				
		LDA	_PPU_STATUS
		BPL	loc_9F134
		RTS
; End of function sub_9F12F


; =============== S U B	R O U T	I N E =======================================


wait_for_count350_zero_9F13A:
		LDA	#1
		STA	frame_render_count_350

loc_9F13F:				
		LDA	frame_render_count_350
		BNE	loc_9F13F
		RTS
; End of function wait_for_count350_zero_9F13A


; =============== S U B	R O U T	I N E =======================================


sub_9F145:
		LDY	#0

loc_9F147:				
		LDX	#0

loc_9F149:				
		LDA	input_reg1_347
		CMP	#0
		BNE	locret_9F156
		INX
		BNE	loc_9F149
		INY
		BNE	loc_9F147

locret_9F156:				
		RTS
; End of function sub_9F145


; =============== S U B	R O U T	I N E =======================================


unused_9F157:				
		LDA	input_pressed_34A
		CMP	#$80 
		BNE	unused_9F157
		RTS
; End of function unused_9F157


; =============== S U B	R O U T	I N E =======================================


unused_9F15F:				
		LDA	input_pressed_34A
		CMP	#$40 
		BNE	unused_9F15F
		RTS
; End of function unused_9F15F


; =============== S U B	R O U T	I N E =======================================


unused_9F167:				
		LDA	input_pressed_34A
		CMP	#0
		BEQ	unused_9F167
		RTS
; End of function unused_9F167


; =============== S U B	R O U T	I N E =======================================


sub_9F16F:				
		PHA
		JSR	sub_9F17A
		PLA
		SEC
		SBC	#1
		BNE	sub_9F16F
		RTS
; End of function sub_9F16F


; =============== S U B	R O U T	I N E =======================================


sub_9F17A:				
		PHA
		TXA
		PHA
		TYA
		PHA
		LDX	#0

loc_9F181:				
		LDY	#0

loc_9F183:				
		DEY
		BNE	loc_9F183
		DEX
		BNE	loc_9F181
		PLA
		TAY
		PLA
		TAX
		PLA
		RTS
; End of function sub_9F17A


; =============== S U B	R O U T	I N E =======================================


nmi_sub_9F18F:				
		LDA	#$F0 
		STA	byte_218
		STA	byte_21C
		STA	byte_220
		STA	byte_224
		STA	byte_2E8
		STA	byte_2EC
		RTS
; End of function nmi_sub_9F18F


; =============== S U B	R O U T	I N E =======================================


sub_9F1A4:				
		LDA	byte_43E
		BEQ	loc_9F1CB
		LDA	byte_203
		BNE	loc_9F1B6
		LDA	#0
		STA	byte_43E
		JMP	locret_9F1EC
; ---------------------------------------------------------------------------

loc_9F1B6:				
		LDA	byte_203
		SEC
		SBC	#8
		STA	byte_203
		LDA	byte_207
		SEC
		SBC	#8
		STA	byte_207
		JMP	locret_9F1EC
; ---------------------------------------------------------------------------

loc_9F1CB:				
		LDA	byte_203
		CMP	#$F8 
		BNE	loc_9F1DA
		LDA	#1
		STA	byte_43E
		JMP	locret_9F1EC
; ---------------------------------------------------------------------------

loc_9F1DA:				
		LDA	byte_203
		CLC
		ADC	#8
		STA	byte_203
		LDA	byte_207
		CLC
		ADC	#8
		STA	byte_207

locret_9F1EC:				
					; sub_9F1A4+24j ...
		RTS
; End of function sub_9F1A4


; =============== S U B	R O U T	I N E =======================================


NMI_9F1ED:				
		PHP
		PHA
		TXA
		PHA
		TYA
		PHA
		LDA	bank_switch_flag_6C
		CMP	#$88 
		BEQ	loc_9F1FC
		JMP	loc_9F22D
; ---------------------------------------------------------------------------

loc_9F1FC:				
		LDA	#$EE 
		STA	bank_switch_flag_6C
		LDA	sprite_type_306
		BNE	loc_9F208
		JSR	nmi_sub_9F18F

loc_9F208:				
		LDA	#2
		STA	_PPU_OAM_DMA
		JSR	sub_9F265
		JSR	sub_9F2BA
		JSR	sub_9F2D3
		LDA	sprite_type_306
		CMP	#1
		BNE	loc_9F223
		JSR	sub_9F1A4
		JSR	sub_9F370

loc_9F223:				
		JSR	sub_9F336
		JSR	apu_music_update_9F3C8
		LDA	#$88 
		STA	bank_switch_flag_6C

loc_9F22D:				
		LDA	byte_432
		BEQ	loc_9F235
		DEC	byte_432

loc_9F235:				
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
		BEQ	loc_9F25E
		DEC	frame_render_count_350

loc_9F25E:				
		PLA
		TAY
		PLA
		TAX
		PLA
		PLP

locret_9F264:				
		RTI
; End of function NMI_9F1ED


; =============== S U B	R O U T	I N E =======================================


sub_9F265:				
		LDA	has_ppu_data_to_upload_6F
		BNE	loc_9F26A
		RTS
; ---------------------------------------------------------------------------

loc_9F26A:				
		LDA	ppu_data_70
		BEQ	loc_9F2B5
		STA	ppu_fld0_x_6D
		LDX	#1

loc_9F272:				
		LDA	ppu_data_70,X
		AND	#$80 
		BEQ	loc_9F286
		LDA	ppu_ctrl_31F
		ORA	#4
		STA	ppu_ctrl_31F
		STA	_PPU_CTRL
		JMP	loc_9F291
; ---------------------------------------------------------------------------

loc_9F286:				
		LDA	ppu_ctrl_31F
		AND	#$FB 
		STA	ppu_ctrl_31F
		STA	_PPU_CTRL

loc_9F291:				
		LDA	ppu_data_70,X
		AND	#$7F 
		STA	ppu_fld1_y_6E
		INX
		LDA	ppu_data_70,X
		STA	_PPU_ADDR
		INX
		LDA	ppu_data_70,X
		STA	_PPU_ADDR

loc_9F2A3:				
		INX
		LDA	ppu_data_70,X
		STA	_PPU_DATA
		DEC	ppu_fld1_y_6E
		BNE	loc_9F2A3
		DEC	ppu_fld0_x_6D
		BEQ	loc_9F2B5
		INX
		JMP	loc_9F272
; ---------------------------------------------------------------------------

loc_9F2B5:				
					; sub_9F265+4Aj
		LDA	#0
		STA	has_ppu_data_to_upload_6F
		RTS
; End of function sub_9F265


; =============== S U B	R O U T	I N E =======================================


sub_9F2BA:				
		LDA	ppu_ctrl_31F
		STA	_PPU_CTRL
		LDA	ppu_mask_320
		STA	_PPU_MASK
		LDA	ppu_scroll_x_304
		STA	_PPU_SCROLL
		LDA	ppu_scroll_y_305
		STA	_PPU_SCROLL
		RTS
; End of function sub_9F2BA


; =============== S U B	R O U T	I N E =======================================


sub_9F2D3:				
		TYA
		PHA
		TYA
		PHA
		JSR	pad_input_update_9F2EB
		JSR	input_sub_9F30B
		LDA	input_pressed_34A
		ORA	input_unk_34B
		STA	input_unk_349
		PLA
		TAX
		PLA
		TAY
		RTS
; End of function sub_9F2D3


; =============== S U B	R O U T	I N E =======================================


pad_input_update_9F2EB:			
		LDX	#1
		STX	_PAD0_REG
		DEX
		STX	_PAD0_REG
		LDA	#0
		LDY	#8

loc_9F2F8:				
		PHA
		LDA	_PAD0_REG,X
		STA	input_reg0_34E
		LSR	input_reg0_34E
		PLA
		ROL	A
		DEY
		BNE	loc_9F2F8
		STA	input_reg1_347,X
		RTS
; End of function pad_input_update_9F2EB


; =============== S U B	R O U T	I N E =======================================


input_sub_9F30B:			
		LDX	#0
		LDA	input_reg1_347,X
		EOR	input_unk_34C,X
		AND	input_reg1_347,X
		STA	input_pressed_34A,X
		LDA	input_reg1_347,X
		STA	input_unk_34C,X
		RTS
; End of function input_sub_9F30B


; =============== S U B	R O U T	I N E =======================================


unused_9F320:
		LDA	ppu_ctrl_31F
		STA	_PPU_CTRL
		LDA	ppu_mask_320
		STA	_PPU_MASK
		RTS
; End of function unused_9F320


; =============== S U B	R O U T	I N E =======================================


unused_9F32D:
		LDA	#0
		STA	_PPU_CTRL
		STA	_PPU_MASK
		RTS
; End of function unused_9F32D


; =============== S U B	R O U T	I N E =======================================


sub_9F336:				
		INC	byte_353
		LDA	byte_353
		CMP	#$19
		BCS	loc_9F341
		RTS
; ---------------------------------------------------------------------------

loc_9F341:				
		LDA	#0
		STA	byte_353
		LDA	byte_354
		CMP	#0
		BNE	loc_9F36C
		LDA	byte_355
		CMP	#0
		BNE	loc_9F364
		LDA	byte_356
		CMP	#0
		BNE	loc_9F35C
		RTS
; ---------------------------------------------------------------------------

loc_9F35C:				
		DEC	byte_356
		LDA	#$A
		STA	byte_355

loc_9F364:				
		DEC	byte_355
		LDA	#$A
		STA	byte_354

loc_9F36C:				
		DEC	byte_354
		RTS
; End of function sub_9F336


; =============== S U B	R O U T	I N E =======================================


sub_9F370:				
		INC	scroll_offset_x_479
		LDA	scroll_offset_x_479
		CMP	#$A
		BCC	locret_9F3C7
		LDA	scroll_offset_y_47A
		EOR	#$80 
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		AND	#$FE 
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		AND	#$7F 
		CMP	#0
		BEQ	locret_9F3C7
		LDA	scroll_offset_y_47A
		PHA
		LDA	scroll_offset_y_47A
		AND	#$80 
		CMP	#0
		BEQ	loc_9F3A8
		LDA	#0
		STA	ppu_scroll_y_305
		JMP	loc_9F3BA
; ---------------------------------------------------------------------------

loc_9F3A8:				
		LDA	scroll_offset_y_47A
		AND	#$7F 
		STA	scroll_offset_y_47A
		LDA	ppu_scroll_y_305
		CLC
		ADC	scroll_offset_y_47A
		STA	ppu_scroll_y_305

loc_9F3BA:				
		PLA
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		SEC
		SBC	#2
		STA	scroll_offset_y_47A

locret_9F3C7:				
					; sub_9F370+21j
		RTS
; End of function sub_9F370


; =============== S U B	R O U T	I N E =======================================


apu_music_update_9F3C8:			
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
		JSR	bank_switch_98000
		PLA
		STA	bank_from_343
		PLA
		STA	bank_to_344
		PLA
		STA	bank_command_346
		RTS
; End of function apu_music_update_9F3C8

; ---------------------------------------------------------------------------
		.BYTE $AD,  3,$FA, $B,$8B,$E5,$16,$8D,$46,$1C,$50,$16,$8D,$46,$10,$50
		.BYTE $16,$8D,$46,  4,$50,$9A,$DB,  3,$FA, $B,$8B,$E5,$B1,  8,$8B,$46
		.BYTE $14,$D3,$F8,$25,$FF,  0,$89,$46,	2,$BB, $A,  0,$31,$D2,$F7,$F3
		.BYTE	5,$30,	0,$A2,$A9,$5B,$8B,$46,	2,$31,$D2,$F7,$F3,$83,$C2,$30
		.BYTE $C6,  6,$AB,$5B,$3A,$8B,$46,$14,$25,$FF,	0,$88,$16,$AA,$5B,$89
		.BYTE $46,  2,$31,$D2,$F7,$F3,	5,$30,	0,$A2,$AC,$5B,$8B,$46,	2,$31
		.BYTE $D2,$F7,$F3,$83,$C2,$30,$C6,  6,$AE,$5B,	0,$88,$16,$AD,$5B,$83
		.BYTE $C4,$24,$5D,$CB,$55,$8B,$EC,$C6,	6,$A0,$15,  0,$5D,$CB,$55,$83
		.BYTE $EC,  2,$8B,$EC,$C6,  6,$A0,$15,	0,$1E,$B8,$6B,	1,$50,$9A,$43
		.BYTE	0,$1C,$20,$8B,$E5,$1E,$B8,$E1,$15,$50,$9A,  6,	0,$91, $C,$8B
		.BYTE $E5,$1E,$B8,$89,	1,$50,$9A,$43,	0,$1C,$20,$8B,$E5,$1E,$B8,$E1
		.BYTE $15,$50,$9A,$E1,	1,$91, $C,$8B,$E5,$A0,$E1,$15,$30,$E4,$E9,$F0
		.BYTE	0,$C6,	6,$A0,$15,$FF,$FF,$36,$E4,$CE,$9A, $A,	0,$57,$1F,$8B
		.BYTE $E5,$1E,$B8,$CB,$5B,$50,$9A,$C9,	3,$FA, $B,$8B,$E5,$A0,$A4,$15
		.BYTE $30,$E4,$48,$75,$17,$FF,$36,$96,$CE,$9A, $A,  0,$57,$1F,$8B,$E5
		.BYTE $1E,$B8,$FD,$5B,$50,$9A,$C9,  3,$FA, $B,$8B,$E5,$1E,$B8,$8B,  1
		.BYTE $50,$9A,$43,  0,$1C,$20,$8B,$E5,$E9,$BA,	0,$B0,	2,$C7,	6,$F0
		.BYTE $CE,  0,	0,$C6,	6,$A3,$15,  1,$A2,$A2,$15,$A2,$A1,$15,$A2,$9A
		.BYTE $15,$E9,$A1,  0,$B0,  0,$C6,  6,$A2,$15,	1,$C7,	6,$F0,$CE,$20
		.BYTE	0,$A2,$A3,$15,$A2,$A1,$15,$A2,$9A,$15, $E,$E8,$15,  1,$E9,$84
		.BYTE	0,$B0,	1,$C6,	6,$A2,$15,  2,$C7,  6,$F0,$CE,	0,  0,$A2,$A3
		.BYTE $15,$A2,$A1,$15,$A2,$9A,$15,$EB,$6C, $E,$E8,$6D,	0,$B0,	4,$C6
		.BYTE	6,$A2,$15,  2,$C6,  6,$A3,$15,	1,$C7,	6,$F0,$CE,$20,	0,$A2
		.BYTE $A1,$15,$A2,$9A,$15, $E,$E8,$DA,	0,$EB,$4A, $E,$E8,$4B,	0,$B0
		.BYTE	5,$C6,	6,$A2,$15,  2,$C7,  6,$F0,$CE,	0,  0,$C6,  6,$A3,$15
		.BYTE	1,$A2,$A1,$15,$A2,$9A,$15,$EB,$2C,$4D,	0,$A9,	9,$44,	0,$87
		.BYTE	9,$54,	0,$6F,	9,$4E,	0,$52,	9,$50,	0,$39,	9,$43,	0,$EF
		.BYTE	8,$BE,$14,  0,$2E,$3B,$84,$C7,	9,$75,	5,$2E,$FF,$A4,$C9,  9
		.BYTE $83,$EE,	4,$79,$EF,$83,$C4,  2,$5D,$CB,$55,$83,$EC,  2,$8B,$EC
		.BYTE $A0,$A4,$15,$30,$E4,$85,$C0,$75,$2C,$B8,$FF,  1,$50,$1E,$B8,$FD
		.BYTE $5B,$50,$9A,$78,	2, $C,$1F,$8B,$E5,$A3,$96,$CE,$40,$75,$11,$1E
		.BYTE $B8,$AD,	1,$50,$9A,$43,	0,$1C,$20,$8B,$E5,$C6,	6,$A0,$15,$FF
		.BYTE $C6,  6,$A4,$15,	1,$83,$C4,  2,$5D,$CB,$55,$83,$EC,  4,$8B,$EC
		.BYTE $A1,$F0,$CE,$8B,$1E,$14,$D7,$23,$D8,$74,	5,$83,$C4,  4,$5D,$CB
		.BYTE $9A, $E,	0,$3A,$20,$A3,$4E,$CE,$85,$C0,$74,$1D,$9A, $B,	0,$5C
		.BYTE $1F,$88,$46,  2,$30,$E4,$3D,$1B,	0,$75,	7,$C6,	6,$A0,$15,  1
		.BYTE $EB, $C,$C6,  6,$A0,$15,	0,$EB,	5,$C6,	6,$A0,$15,  0,$83,$C4
		.BYTE	4,$5D,$CB,$55,$83,$EC,	2,$8B,$EC,$A0,$AA,$15,$30,$E4,$85,$C0
		.BYTE $75,$6C,$1E,$B8,$CD,  1,$50,$9A,$43,  0,$1C,$20,$8B,$E5,$1E,$B8
		.BYTE	5,  2,$50,$9A,$43,  0,$1C,$20,$8B,$E5,$1E,$B8,$36,  2,$50,$9A
		.BYTE $43,  0,$1C,$20,$8B,$E5,$1E,$B8,$68,  2,$50,$9A,$43,  0,$1C,$20
		.BYTE $8B,$E5,$1E,$B8,$9B,  2,$50,$9A,$43,  0,$1C,$20,$8B,$E5,$1E,$B8
		.BYTE $D0,  2,$50,$9A,$43,  0,$1C,$20,$8B,$E5,$1E,$B8,	4,  3,$50,$9A
		.BYTE $43,  0,$1C,$20,$8B,$E5,$1E,$B8,$35,  3,$50,$9A,$43,  0,$1C,$20
		.BYTE $8B,$E5,$1E,$B8,$6A,  3,$50,$9A,$43,  0,$1C,$20,$8B,$E5,$83,$C4
		.BYTE	2,$5D,$CB,$55,$8B,$EC,$FF,$76,	8,$FF,$76,  6,$9A,$C9,	3,$FA
		.BYTE  $B,$8B,$E5,$5D,$CB,$55,$83,$EC,	8,$8B,$EC,$C7,$46,  2,	0,  0
		.BYTE $33,$C0,$50,$FF,$76,$10,$FF,$76, $E, $E,$E8,$22,$F5,$8B,$E5,$89
		.BYTE $46,  4,$40,$74,$78,$B8,$FF,  1,$50,$FF,$76,$14,$FF,$76,$12, $E
		.BYTE $E8,$34,$F5,$8B,$E5,$89,$46,  6,$40,$74,$62,$C7,	6,$4E,$CE,$FF
		.BYTE $FF,$83,$3E,$4E,$CE,  0,$74,$32,$B8,  0,$20,$50,$FF,$36,$1F,$C1
		.BYTE $FF,$36,$1D,$C1,$FF,$76,	4,$9A,	8,  0,$22,$20,$8B,$E5,$85,$C0
		.BYTE $A3,$4E,$CE,$74,$DC,$50,$FF,$36,$1F,$C1,$FF,$36,$1D,$C1,$FF,$76
		.BYTE	6,$9A,	7,  0,$5F,$1F,$8B,$E5,$EB,$C7,$FF,$76,	6,$9A, $A,  0
		.BYTE $57,$1F,$8B,$E5,$FF,$76,	4,$9A, $A,  0,$57,$1F,$8B,$E5,$FF,$76
		.BYTE $10,$FF,$76, $E,$9A,$C9,	3,$FA, $B,$8B,$E5,$EB,$11,$1E,$B8,$9A
		.BYTE	3,$50,$9A,$43,	0,$1C,$20,$8B,$E5,$C7,$46,  2,	1,  0,$8B,$46
		.BYTE	2,$83,$C4,  8,$5D,$CB,$55,$8B,$EC,$B8,	1,  0,$5D,$CB,$55,$83
		.BYTE $EC, $C,$8B,$EC, $E,$E8,$62,$FE,$A0,$A0,$15,$30,$E4,$85,$C0,$74
		.BYTE $14, $E,$E8,$C9,$FC,$A0,$A0,$15,$30,$E4,$25,$FF,	0,$3D,$FF,  0
		.BYTE $75,  3,$E9,$D5,	1,$A0,$9A,$15,$30,$E4,$85,$C0,$75,  3,$E9,$C9
		.BYTE	1,$A1,$12,$D7,$3B,  6,$10,$D7,$73,  3,$E9,$BD,	1,$83,$3E, $E
		.BYTE $D7,  1,$77,  9,$A0,$BC,	3,$30,$E4,$85,$C0,$74,$11,$C4,$36,$25
		.BYTE $C1,$FF,	6,$25,$C1,$26,$C6,  4, $C,$C6,	6,$BC,	3,  0,$C7,  6
		.BYTE $12,$D7,	0,  0,$C7,  6,$4E,$CE,	0,  0,$A0,$B2,$15,$30,$E4,$8B
		.BYTE $1E,$4E,$CE,$3B,$D8,$74,$12,$C4,$36,$25,$C1,$FF,	6,$25,$C1,$26
		.BYTE $C6,  4, $A,$FF,	6,$4E,$CE,$EB,$E1,$C7,	6,$4E,$CE,  0,	0,$83
		.BYTE $3E,$4E,$CE,  2,$74,$12,$C4,$36,$25,$C1,$FF,  6,$25,$C1,$26,$C6
		.BYTE	4,$20,$FF,  6,$4E,$CE,$EB,$E7,$8C,$D8,$BB,$99,$5B,$A3,$7F,$C0
		.BYTE $89,$1E,$7D,$C0,$C4,$36,$7D,$C0,$26,$8A,	4,$30,$E4,$85,$C0,$74
		.BYTE $1C,$8B,$3E,$25,$C1,$FF,	6,$25,$C1,$FF,	6,$7D,$C0,$26,$8A,  4
		.BYTE $8E,  6,$27,$C1,$26,$88,	5,$FF,	6,$4E,$CE,$EB,$D7,$A1, $C,$D7
		.BYTE $2D, $B,	0,$8B,$1E,$4E,$CE,$3B,$D8,$74,$12,$C4,$36,$25,$C1,$FF
		.BYTE	6,$25,$C1,$26,$C6,  4,$20,$FF,	6,$4E,$CE,$EB,$E0,$FF,$36, $E
		.BYTE $D7,$1E,$B8,$AD,	3,$50,$FF,$36,$27,$C1,$FF,$36,$25,$C1,$9A,$29
		.BYTE	0,$91,$1F,$8B,$E5,$C4,$36,$25,$C1,$26,$8A,  4,$30,$E4,$85,$C0
		.BYTE $74,  6,$FF,  6,$25,$C1,$EB,$ED,$C4,$36,$25,$C1,$8B,$C6,$89,$46
		.BYTE	0,$40,$B3, $A,$26,$88,$1C,$8B,$F0,$A3,$25,$C1,$40,$26,$88,$1C
		.BYTE $8A,$1E,$9A,$15,$30,$FF,$85,$DB,$A3,$25,$C1,$75,	3,$E9,$AA,  0
		.BYTE $C7,  6,$4E,$CE,	0,  0,$8B,$36,$4E,$CE,$8A,$84,$7F,$5C,$30,$E4
		.BYTE $3D, $A,	0,$74,$19,$8B,$3E,$25,$C1,$FF,	6,$25,$C1,$8A,$84,$7F
		.BYTE $5C,$8E,	6,$27,$C1,$26,$88,  5,$FF,  6,$4E,$CE,$EB,$D8,$C4,$36
		.BYTE $25,$C1,$FF,  6,$25,$C1,$26,$C6,	4, $A,$C7,  6,$4E,$CE,	0,  0
		.BYTE $8B,$36,$4E,$CE,$8A,$84,$80,$5C,$30,$E4,$3D, $A,	0,$74,$19,$8B
		.BYTE $3E,$25,$C1,$FF,	6,$25,$C1,$8A,$84,$80,$5C,$8E,	6,$27,$C1,$26
		.BYTE $88,  5,$FF,  6,$4E,$CE,$EB,$D8,$C4,$36,$25,$C1,$8B,$C6,$89,$46
		.BYTE	0,$40,$B3, $A,$26,$88,$1C,$8B,$F0,$A3,$25,$C1,$40,$26,$88,$1C
		.BYTE $8B,$F0,$26,$C6,	4,  0,$FF,  6, $E,$D7,$FF,$36,$23,$C1,$FF,$36
		.BYTE $21,$C1,$A3,$25,$C1,$9A,$58,  2,$91, $C,$8B,$E5,$A1,$23,$C1,$8B
		.BYTE $1E,$21,$C1,$A3,$27,$C1,$89,$1E,$25,$C1,$83,$C4, $C,$5D,$CB,$55
		.BYTE $83,$EC,$16,$8B,$EC,$C6,$46,$14,$3A,$B8,	4,  0,$50,$FF,$76,$1E
		.BYTE $FF,$76,$1C,$9A,	3,  0,$97,$1F,$8B,$E5,$85,$C0,$89,$46, $E,$78
		.BYTE	3,$E9,$F8,  0,$A0,$BB,	3,$30,$E4,$85,$C0,$74,	3,$E9,$EC,  0
		.BYTE $1E,$B8,$B6,  3,$50,$9A, $D,  0,$4E,$1F,$8B,$E5,$89,$46,$12,$89
		.BYTE $5E,$10,$82,$3E,$BA,  3,	0,$74,	4,$C6,$46,$14,$3B,$8B,$46,$12
		.BYTE  $B,$46,$10,$75,	3,$E9,$D6,  0,$8B,$46,$1E, $B,$46,$1C,$75,  3
		.BYTE $E9,$CB,	0,$8B,$46, $E,$85,$C0,$78,  3,$E9,$C1,	0,$C4,$76,$10
		.BYTE $26,$8A,	4,$30,$E4,$85,$C0,$75,	3,$E9,$B2,  0,$C7,$46, $C,  0
		.BYTE	0,$C4,$76,$10,$26,$8A,	4,$30,$E4,$85,$C0,$89,$46,  0,$74,$1D
		.BYTE $8A,$5E,$14,$30,$FF,$3B,$C3,$74,$14,$8B,$46, $C,$FF,$46, $C,$8B
		.BYTE $F8,$FF,$46,$10,$26,$8A,	4,$88,$85,$81,$5C,$EB,$D4,$8A,$46,$14
		.BYTE $30,$E4,$C4,$76,$10,$26,$8A,$1C,$30,$FF,$3B,$D8,$75,  3,$FF,$46
		.BYTE $10,$A0,$C6,  0,$30,$E4,$8B,$76, $C,$8A,$9C,$80,$5C,$30,$FF,$3B
		.BYTE $D8,$89,$46,  4,$74,$16,$C4,$7E,$1C,$26,$8A,$1D,$30,$FF,$3B,$D8
		.BYTE $74, $A,$A0,$C6,	0,$88,$84,$81,$5C,$FF,$46, $C,$8B,$76, $C,$C6
		.BYTE $84,$81,$5C,  0,$FF,$76,$1E,$FF,$76,$1C,$1E,$B8,$81,$5C,$50,$9A
		.BYTE $41,  3,$FA, $B,$8B,$E5,$B8,  4,	0,$50,$1E,$B8,$81,$5C,$50,$9A
		.BYTE	3,  0,$97,$1F,$8B,$E5,$89,$46, $E,$E9,$47,$FF,$FF,$76,$1E,$FF
		.BYTE $76,$1C,$1E,$B8,$81,$5C,$50,$9A,$7B,  3,$FA, $B,$8B,$E5,$8B,$46
		.BYTE  $E,$83,$C4,$16,$5D,$CB,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	3,  0,$4C,$43,$20,$33,$2E,$30,$30,  0,	7, $A,$ED,$30
		.BYTE $B0,  7,	0,  8,$C0,$EC,	0,  0,$EA, $B,	0,  0,$21,$22,	0,  0
		.BYTE $6D,$31,	0,  0,$3E,$5F,$30,  0,	0,  0,$57,$53,$70,$62,	1,  0
		.BYTE $C0,$EC,	0,  0,$D8,  7,$ED,$30,$B0,  7,$ED,$30,	4,  0,	9,  0
		.BYTE $ED,  7,$ED,$30,	0,  0,$D8, $B,$E2,  0,	6,  1,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	1,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0
aInvalidStackSizeInsu_1:.BYTE 'Invalid stack size',$D,$A
		.BYTE '$Insufficient memory',$D,$A
		.BYTE '$',$A
		.BYTE '2500 A.D. Linker  Copyright (C) 1985  -  Version 4.01f',$A
		.BYTE $A,0
		.BYTE $18
aFListingDestinationN_1:.BYTE 'F',$5C,'Listing Destination  (N, T, D, E, L, P, <CR> = N) : ',0
aErrorOnlyListingDest_1:.BYTE 'Error Only Listing Destination  (T, D, P, <CR> = T) : ',0
aListOnOffListingDest_7:.BYTE 'LIST ON/OFF Listing Destination  (T, D, P, <CR> = T) : ',0
aEnterRunTimeSelectio_7:.BYTE $A
		.BYTE $A
		.BYTE 'Enter Run Time Selection : ',0
		.BYTE $A,0
aAssemblyTerminatedBy_8:.BYTE 'Assembly Terminated By Operator',$A
		.BYTE $A,0
aCanTCreateDiskListin_7:.BYTE 'Can',$27,'t Create Disk Listing File',$A,0
aActiveCommands_8:.BYTE	$A
		.BYTE '                         ***** Active Commands *****',$A
		.BYTE $A,0
aCtrlSStopOutput_7:.BYTE '                           Ctrl S = Stop Output',$A,0
aCtrlQStartOutput_7:.BYTE '                           Ctrl Q = Start Output',$A,0
aEscCStopAssembly_7:.BYTE '                           Esc  C = Stop Assembly',$A,0
aEscTTerminalOutput_7:.BYTE '                           Esc  T = Terminal Output',$A,0
aEscPPrinterOutput_7:.BYTE '                           Esc  P = Printer Output',$A,0
aEscDDiskOutput_7:.BYTE	'                           Esc  D = Disk Output',$A,0
aEscMMultipleOutput_7:.BYTE '                           Esc  M = Multiple Output',$A,0
aEscNNoOutput_8:.BYTE '                           Esc  N = No Output',$A
		.BYTE $A,0
aRenameFileError_7:.BYTE 'Rename File Error',$A,0
aPage4u_7:	.BYTE 'Page %4u',0
aLib_7:		.BYTE 'LIB',0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE	0
aC_7:		.BYTE '%c',0
aMaximumNumberOfDiffe_8:.BYTE $A
		.BYTE 'Maximum Number of Different Sections (%d) Exceeded.  Link Term'
		.BYTE 'inated.',$A
		.BYTE $A,0
aS_7:		.BYTE '%s',0
		.BYTE	0
aDiskListingFilename_7:.BYTE 'Disk Listing  Filename : ',0
aSymbolTableFilename_7:.BYTE 'Symbol Table  Filename : ',0
aFormat_7:	.BYTE 'Format   : ',0
aLinkerOutputFilename_7:.BYTE 'Linker Output Filename : ',0
aMicrotek_7:	.BYTE 'Microtek',0
aZax_7:		.BYTE 'Zax',0
aAbbreviated2500A_d__7:.BYTE 'Abbreviated 2500 A.D.',0
a2500A_d__8:	.BYTE '2500 A.D.',0
aNoneSpecified_7:.BYTE '<None Specified>',0
aLinkErrors_8:	.BYTE $A
		.BYTE '         Link Errors :  ',0
aOutputFormat_8:.BYTE '         Output Format :  ',0
aExecutable_7:	.BYTE 'Executable',0
aIntelHex_7:	.BYTE 'Intel Hex',0
aExtendedIntelHex_7:.BYTE 'Extended Intel Hex',0
aTektronixHex_7:.BYTE 'Tektronix Hex',0
aMotorolaS1_7:	.BYTE 'Motorola S1',0
		.BYTE	0
aMotorolaS_7:	.BYTE 'Motorola S'
		.WORD NMI_9F1ED
		.WORD Tilemaps_9805B
		.WORD locret_9F264
; end of 'BANK_09'

; ===========================================================================