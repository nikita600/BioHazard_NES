; Segment type:Pure code
	;.segment BANK_02 (Sprites)
	* =  $8000

; =============== S U B	R O U T	I N E =======================================


bank_switch_28000:
	.include "common/bank_switch_func.asm"

switch_case_8035:
	LDA	bank_to_344
	STA	bank_prev_345
	LDA	#$88 
	STA	bank_switch_flag_6C
	LDA	bank_command_346
	CMP	#0
	BEQ	loc_2805F
	CMP	#1
	BEQ	loc_28065
	CMP	#2
	BEQ	loc_2806B
	CMP	#3
	BEQ	loc_28071
	CMP	#4
	BEQ	loc_28077
	CMP	#5
	BEQ	loc_2807D
	CMP	#6
	BEQ	loc_28083
	RTS
; ---------------------------------------------------------------------------

loc_2805F:
	JSR	sub_2D11F
	JMP	loc_28089
; ---------------------------------------------------------------------------

loc_28065:
	JSR	sub_2D131
	JMP	loc_28089
; ---------------------------------------------------------------------------

loc_2806B:
	JSR	sub_2D16B
	JMP	loc_28089
; ---------------------------------------------------------------------------

loc_28071:
	JSR	sub_2D196
	JMP	loc_28089
; ---------------------------------------------------------------------------

loc_28077:
	JSR	sub_2D1CB
	JMP	loc_28089
; ---------------------------------------------------------------------------

loc_2807D:
	JSR	sub_2D397
	JMP	loc_28089
; ---------------------------------------------------------------------------

loc_28083:
	JSR	sub_2E781
	JMP	loc_28089
; ---------------------------------------------------------------------------

loc_28089:
			; bank_switch_28000+68j ...
	LDA	#$FF
	STA	bank_command_346
	LDA	bank_from_343
	STA	bank_to_344
	JMP	bank_switch_28000
; End of function bank_switch_28000

; ---------------------------------------------------------------------------
off_28097:
	.include "text/bank_02_text.asm"

; =============== S U B	R O U T	I N E =======================================


sub_2D11F:
	LDA	#$CF 
	STA	sprite_secondByte_31B
	LDA	#$C
	STA	byte_35E
	LDA	#0
	STA	byte_364
	JMP	loc_2D14F
; End of function sub_2D11F


; =============== S U B	R O U T	I N E =======================================


sub_2D131:
	LDA	#0
	STA	byte_310
	LDA	#$D7 
	STA	sprite_secondByte_31B
	LDA	#$A
	STA	byte_35E
	LDA	#7
	STA	byte_364
	LDA	#0
	STA	byte_360
	LDA	#1
	STA	byte_361

loc_2D14F:
	LDA	#$1B
	STA	ppu_unk_byte_309
	LDA	#4
	STA	tilemap_size_307
	LDA	#1
	STA	byte_35F
	LDA	#0
	STA	byte_362
	LDA	#0
	STA	byte_363
	JMP	sub_2D1CB
; End of function sub_2D131


; =============== S U B	R O U T	I N E =======================================


sub_2D16B:
	LDA	#8
	STA	byte_364
	LDA	#$14
	STA	ppu_unk_byte_309
	LDA	#4
	STA	tilemap_size_307
	LDA	#$C
	STA	byte_35E
	LDA	#2
	STA	byte_35F
	LDA	#0
	STA	byte_362
	LDA	#1
	STA	byte_363
	LDA	#$A0 
	STA	sprite_secondByte_31B
	JMP	sub_2D1CB
; End of function sub_2D16B


; =============== S U B	R O U T	I N E =======================================


sub_2D196:
	LDA	#8
	STA	ppu_unk_byte_309
	LDA	#4
	STA	tilemap_size_307
	LDA	#$C
	STA	byte_35E
	LDA	#5
	STA	byte_35F
	LDA	#0
	STA	byte_362
	LDA	#2
	STA	byte_363
	LDA	#4
	STA	sprite_secondByte_31B
	LDA	#6
	STA	byte_364
	LDA	#0
	STA	byte_360
	LDA	#3
	STA	byte_361
	JMP	sub_2D1CB
; End of function sub_2D196


; =============== S U B	R O U T	I N E =======================================


sub_2D1CB:
			; sub_2D131+37j ...
	LDA	text_idx_35C
	PHA
	LDA	char_type_id_35D
	PHA
	LDA	byte_364
	AND	#1
	CMP	#0
	BEQ	loc_2D1DF
	JSR	sub_2D397

loc_2D1DF:
	ASL	text_idx_35C
	ROL	char_type_id_35D
	ASL	char_type_id_35D
	LDA	#$97 
	CLC
	ADC	char_type_id_35D
	STA	ptr_0
	LDA	#$80 
	ADC	#0
	STA	ptr_1
	LDY	#0
	LDA	(ptr_0),Y
	STA	data_2
	INY
	LDA	(ptr_0),Y
	STA	data_3
	LDA	data_2
	CLC
	ADC	text_idx_35C
	STA	data_2
	LDA	data_3
	ADC	#0
	STA	data_3
	LDY	#0
	LDA	(data_2),Y
	STA	ptr_0
	INY
	LDA	(data_2),Y
	STA	ptr_1

loc_2D21A:
	LDA	#0
	STA	tilemapHeight_30A
	LDA	sprite_secondByte_31B
	STA	data_2
	LDA	#0
	STA	data_3
	ASL	data_2
	ROL	data_3
	ASL	data_2
	ROL	data_3
	ASL	data_2
	ROL	data_3
	ASL	data_2
	ROL	data_3
	LDA	data_3
	ORA	#$10
	STA	data_3

loc_2D23E:
	LDA	#0
	STA	tilemapWidth_308

loc_2D243:
	LDA	tilemapWidth_308
	ASL	A
	TAY
	LDA	(ptr_0),Y
	CMP	#0
	BNE	loc_2D251
	JMP	loc_2D342
; ---------------------------------------------------------------------------

loc_2D251:
	CMP	#$FF
	BNE	loc_2D29C
	INY
	LDA	(ptr_0),Y
	CMP	#$FF
	BEQ	loc_2D260
	DEY
	JMP	loc_2D29C
; ---------------------------------------------------------------------------

loc_2D260:
	LDA	ptr_0
	CLC
	ADC	#2
	STA	ptr_0
	LDA	ptr_1
	ADC	#0
	STA	ptr_1
	LDA	tilemapWidth_308
	ASL	A
	CLC
	ADC	ptr_0
	STA	ptr_0
	LDA	ptr_1
	ADC	#0
	STA	ptr_1
	LDA	byte_35E
	SEC
	SBC	tilemapWidth_308
	TAY

loc_2D284:
	CPY	#0
	BEQ	loc_2D299
	LDA	data_2
	CLC
	ADC	#$40 
	STA	data_2
	LDA	data_3
	ADC	#0
	STA	data_3
	DEY
	JMP	loc_2D284
; ---------------------------------------------------------------------------

loc_2D299:
	JMP	loc_2D305
; ---------------------------------------------------------------------------

loc_2D29C:
			; sub_2D1CB+92j
	LDA	(ptr_0),Y
	STA	char_type_id_35D
	INY
	LDA	(ptr_0),Y
	STA	text_idx_35C
	INY
	ASL	text_idx_35C
	ROL	char_type_id_35D
	LDA	ptr_0
	PHA
	LDA	ptr_1
	PHA
	LDA	data_2
	PHA
	LDA	data_3
	PHA
	LDA	tilemap_size_307
	PHA
	LDA	ppu_unk_byte_309
	PHA
	JSR	sub_2D4D7
	PLA
	STA	ppu_unk_byte_309
	PLA
	STA	tilemap_size_307
	PLA
	STA	data_3
	PLA
	STA	data_2
	PLA
	STA	ptr_1
	PLA
	STA	ptr_0
	LDA	data_2
	CLC
	ADC	#$40 
	STA	data_2
	LDA	data_3
	ADC	#0
	STA	data_3
	INC	tilemapWidth_308
	LDA	tilemapWidth_308
	CMP	byte_35E
	BEQ	loc_2D2F6
	BCS	loc_2D2F6
	JMP	loc_2D243
; ---------------------------------------------------------------------------

loc_2D2F6:
			; sub_2D1CB+126j
	LDA	tilemapWidth_308
	ASL	A
	CLC
	ADC	ptr_0
	STA	ptr_0
	LDA	ptr_1
	ADC	#0
	STA	ptr_1

loc_2D305:
	LDY	#0
	LDA	(ptr_0),Y
	CMP	#0
	BEQ	loc_2D342
	INC	tilemapHeight_30A
	LDA	tilemapHeight_30A
	CMP	byte_35F
	BEQ	loc_2D31B
	JMP	loc_2D23E
; ---------------------------------------------------------------------------

loc_2D31B:
	LDA	byte_364
	AND	#8
	CMP	#0
	BEQ	loc_2D339
	JSR	sub_2E7DA
	JSR	sub_2E7DA
	JSR	sub_2E7DA
	JSR	sub_2E7DA
	JSR	sub_2E7DA
	JSR	sub_2E7DA
	JMP	loc_2D33C
; ---------------------------------------------------------------------------

loc_2D339:
	JSR	sub_2D4FF

loc_2D33C:
	JSR	sub_2D397
	JMP	loc_2D21A
; ---------------------------------------------------------------------------

loc_2D342:
			; sub_2D1CB+140j
	LDA	byte_364
	AND	#8
	CMP	#0
	BEQ	loc_2D360
	JSR	sub_2E7DA
	JSR	sub_2E7DA
	JSR	sub_2E7DA
	JSR	sub_2E7DA
	JSR	sub_2E7DA
	JSR	sub_2E7DA
	JMP	loc_2D36C
; ---------------------------------------------------------------------------

loc_2D360:
	LDA	byte_364
	AND	#2
	CMP	#0
	BNE	loc_2D36C
	JSR	sub_2D4FF

loc_2D36C:
			; sub_2D1CB+19Cj
	LDA	byte_364
	AND	#4
	CMP	#0
	BNE	loc_2D378
	JSR	sub_2D397

loc_2D378:
	PLA
	STA	char_type_id_35D
	PLA
	STA	text_idx_35C
	LDA	text_idx_35C
	CLC
	ADC	#1
	STA	text_idx_35C
	LDA	char_type_id_35D
	ADC	#0
	STA	char_type_id_35D
	LDA	#0
	STA	byte_364
	RTS
; End of function sub_2D1CB


; =============== S U B	R O U T	I N E =======================================


sub_2D397:
			; sub_2D1CB+11p ...
	LDA	tilemapWidth_308
	PHA
	LDA	ppu_unk_byte_309
	PHA
	LDA	tilemap_size_307
	PHA
	LDA	ptr_0
	PHA
	LDA	ptr_1
	PHA
	LDA	data_2
	PHA
	LDA	data_3
	PHA
	LDA	byte_35F
	STA	tilemapTypeUnk_30B
	LDA	#0
	STA	tilemapHeight_30A

loc_2D3BA:
	LDA	#0
	STA	tilemapWidth_308
	LDA	tilemapTypeUnk_30B
	PHA
	LDA	ppu_unk_byte_309
	PHA
	LDA	tilemap_size_307
	PHA
	JSR	sub_2E44B
	PLA
	STA	tilemap_size_307
	JSR	sub_2D401
	PLA
	STA	ppu_unk_byte_309
	PLA
	STA	tilemapTypeUnk_30B
	INC	tilemapHeight_30A
	LDA	tilemapHeight_30A
	CMP	tilemapTypeUnk_30B
	BNE	loc_2D3BA
	PLA
	STA	data_3
	PLA
	STA	data_2
	PLA
	STA	ptr_1
	PLA
	STA	ptr_0
	PLA
	STA	tilemap_size_307
	PLA
	STA	ppu_unk_byte_309
	PLA
	STA	tilemapWidth_308
	RTS
; End of function sub_2D397


; =============== S U B	R O U T	I N E =======================================


sub_2D401:
	LDA	#0
	STA	inv_spr_dscr1_30C
	LDX	#0
	STX	ppu_data_70
	INX

loc_2D40B:
	LDA	ppu_scroll_x_304
	LSR	A
	LSR	A
	LSR	A
	CLC
	ADC	tilemap_size_307
	STA	tilemapTypeUnk_30B
	CMP	#$20 
	BEQ	loc_2D435
	BCS	loc_2D435
	LDA	byte_35E
	ASL	A
	CLC
	ADC	tilemapTypeUnk_30B
	STA	tilemapTypeUnk_30B
	CMP	#$20 
	BCC	loc_2D445
	LDA	#$20 
	STA	tilemapTypeUnk_30B
	JMP	loc_2D445
; ---------------------------------------------------------------------------

loc_2D435:
			; sub_2D401+1Bj
	LDA	data_2
	PHA
	LDA	data_3
	PHA
	LDA	byte_35E
	ASL	A
	STA	tilemapTypeUnk_30B
	JMP	loc_2D49D
; ---------------------------------------------------------------------------

loc_2D445:
			; sub_2D401+31j
	LDY	tilemapTypeUnk_30B
	LDA	ppu_scroll_x_304
	LSR	A
	LSR	A
	LSR	A
	CLC
	ADC	tilemap_size_307
	STA	tilemapTypeUnk_30B
	TYA
	SEC
	SBC	tilemapTypeUnk_30B
	STA	tilemapTypeUnk_30B
	INC	ppu_data_70
	LDA	tilemapTypeUnk_30B
	STA	ppu_data_70,X
	INX
	LDA	data_3
	STA	ppu_data_70,X
	INX
	LDA	data_2
	STA	ppu_data_70,X
	INX
	LDY	#0

loc_2D471:
	LDA	byte_310
	STA	ppu_data_70,X
	INX
	INY
	CPY	tilemapTypeUnk_30B
	BCC	loc_2D471
	LDA	tilemapTypeUnk_30B
	LSR	A
	CMP	byte_35E
	BEQ	loc_2D4C3
	LDA	data_2
	PHA
	LDA	data_3
	PHA
	LDA	data_2
	AND	#$E0 
	STA	data_2
	LDA	byte_35E
	ASL	A
	SEC
	SBC	tilemapTypeUnk_30B
	STA	tilemapTypeUnk_30B

loc_2D49D:
	INC	ppu_data_70
	LDA	tilemapTypeUnk_30B
	STA	ppu_data_70,X
	INX
	LDA	data_3
	STA	ppu_data_70,X
	INX
	LDA	data_2
	STA	ppu_data_70,X
	INX
	LDY	#0

loc_2D4B1:
	LDA	byte_310
	STA	ppu_data_70,X
	INX
	INY
	CPY	tilemapTypeUnk_30B
	BCC	loc_2D4B1
	PLA
	STA	data_3
	PLA
	STA	data_2

loc_2D4C3:
	JSR	sub_2E500
	INC	inv_spr_dscr1_30C
	LDA	inv_spr_dscr1_30C
	CMP	#2
	BEQ	loc_2D4D3
	JMP	loc_2D40B
; ---------------------------------------------------------------------------

loc_2D4D3:
	JSR	sub_2E7BB
	RTS
; End of function sub_2D401


; =============== S U B	R O U T	I N E =======================================


sub_2D4D7:
	LDA	char_type_id_35D
	LSR	A
	CMP	#8
	BCC	loc_2D4E3
	JSR	sub_2E244
	RTS
; ---------------------------------------------------------------------------

loc_2D4E3:
	LDA	bank_from_343
	PHA

exec_b3_c0_D4E7:
	LDA	#0
	STA	bank_command_346
	LDA	bank_to_344
	STA	bank_from_343
	LDA	#glyphs_3
	STA	bank_to_344
	JSR	bank_switch_28000

loc_2D4FA:
	PLA
	STA	bank_from_343
	RTS
; End of function sub_2D4D7


; =============== S U B	R O U T	I N E =======================================


sub_2D4FF:
			; sub_2D1CB+19Ep
	LDA	#0
	STA	count_unk_365
	LDY	#$FF

loc_2D506:
	JSR	sub_2D514
	LDA	input_pressed_34A
	CMP	#0
	BEQ	loc_2D506
	JSR	sub_2D542
	RTS
; End of function sub_2D4FF


; =============== S U B	R O U T	I N E =======================================


sub_2D514:
	LDA	sprite_type_306
	CMP	#0
	BEQ	loc_2D51C
	RTS
; ---------------------------------------------------------------------------

loc_2D51C:
	LDA	count_unk_365
	CMP	#$A
	BCC	locret_2D541
	LDA	#0
	STA	count_unk_365
	TYA
	EOR	#1
	TAY
	CLC
	ADC	#$D4 
	STA	byte_200
	LDA	#$5A 
	STA	byte_201
	LDA	#0
	STA	byte_202
	LDA	#$E2 
	STA	byte_203

locret_2D541:
	RTS
; End of function sub_2D514


; =============== S U B	R O U T	I N E =======================================


sub_2D542:
	LDA	sprite_type_306
	CMP	#0
	BEQ	loc_2D54A
	RTS
; ---------------------------------------------------------------------------

loc_2D54A:
	LDA	#$F0 
	STA	byte_200
	RTS
; End of function sub_2D542

; ---------------------------------------------------------------------------
Fonts:
	.include "text/bank_02_fonts.asm"

; =============== S U B	R O U T	I N E =======================================


sub_2E244:
	LDA	data_2
	PHA
	LDA	data_3
	PHA
	LDA	#$50 
	CLC
	ADC	char_type_id_35D
	STA	ptr_0
	LDA	#$D5 
	ADC	#0
	STA	ptr_1
	LDY	#0
	LDA	(ptr_0),Y
	STA	data_2
	INY
	LDA	(ptr_0),Y
	STA	data_3
	LDA	data_2
	CLC
	ADC	text_idx_35C
	STA	data_2
	LDA	data_3
	ADC	#0
	STA	data_3
	LDY	#0
	LDA	(data_2),Y
	STA	ptr_0
	INY
	LDA	(data_2),Y
	STA	ptr_1
	PLA
	STA	data_3
	PLA
	STA	data_2
	LDY	#0
	LDA	#0
	STA	has_ppu_data_to_upload_6F
	LDX	#0
	LDA	#5
	STA	ppu_data_70,X
	INX
	LDA	#$40 
	STA	ppu_data_70,X
	INX
	INX
	LDA	data_2
	STA	ppu_data_70,X
	DEX
	LDA	data_3
	STA	ppu_data_70,X
	INX
	INX
	LDA	#0
	STA	inv_spr_dscr1_30C

loc_2E2A5:
	LDA	byte_360
	ASL	A
	ASL	A
	ASL	A
	STA	tilemapTypeUnk_30B
	LDA	byte_361
	ASL	A
	CLC
	ADC	tilemapTypeUnk_30B
	TAY
	LDA	#0
	STA	tilemapTypeUnk_30B

loc_2E2BC:
	TYA
	PHA
	CLC
	ADC	tilemapTypeUnk_30B
	TAY
	LDA	byte_2E3B3,Y
	CMP	#0
	BNE	loc_2E2D7
	LDA	inv_spr_dscr1_30C
	ASL	A
	ASL	A
	ASL	A
	TAY
	JSR	sub_2E3D3
	JMP	loc_2E2F9
; ---------------------------------------------------------------------------

loc_2E2D7:
	CMP	#1
	BNE	loc_2E2E8
	LDA	inv_spr_dscr1_30C
	ASL	A
	ASL	A
	ASL	A
	TAY
	JSR	sub_2E3F1
	JMP	loc_2E2F9
; ---------------------------------------------------------------------------

loc_2E2E8:
	CMP	#2
	BNE	loc_2E2F2
	JSR	sub_2E411
	JMP	loc_2E2F9
; ---------------------------------------------------------------------------

loc_2E2F2:
	CMP	#3
	BNE	loc_2E2F9
	JSR	sub_2E42E

loc_2E2F9:
			; sub_2E244+A1j ...
	PLA
	TAY
	INC	tilemapTypeUnk_30B
	LDA	tilemapTypeUnk_30B
	CMP	#2
	BCC	loc_2E2BC
	INC	inv_spr_dscr1_30C
	LDA	inv_spr_dscr1_30C
	CMP	#4
	BEQ	loc_2E312
	JMP	loc_2E2A5
; ---------------------------------------------------------------------------

loc_2E312:
	JSR	sub_2E44B
	LDA	sprite_secondByte_31B
	STA	ptr_0
	LDY	tilemapHeight_30A

loc_2E31D:
	CPY	#0
	BEQ	loc_2E32F
	LDA	byte_35E
	ASL	A
	ASL	A
	CLC
	ADC	ptr_0
	STA	ptr_0
	DEY
	JMP	loc_2E31D
; ---------------------------------------------------------------------------

loc_2E32F:
	LDA	tilemapWidth_308
	ASL	A
	ASL	A
	CLC
	ADC	ptr_0
	STA	ptr_0
	LDA	#0
	STA	inv_spr_dscr1_30C

loc_2E33E:
	LDA	data_2
	PHA
	LDA	data_3
	PHA
	LDA	#1
	STA	ppu_data_70,X
	INX
	INX
	LDA	data_2
	STA	ppu_data_70,X
	DEX
	LDA	data_3
	STA	ppu_data_70,X
	INX
	INX
	LDA	ptr_0
	STA	ppu_data_70,X
	INX
	INC	ptr_0
	LDA	data_2
	AND	#$1F
	CMP	#$1F
	BNE	loc_2E374
	LDA	data_2
	SEC
	SBC	#$1F
	STA	data_2
	LDA	data_3
	SBC	#0
	STA	data_3
	JMP	loc_2E381
; ---------------------------------------------------------------------------

loc_2E374:
	LDA	data_2
	CLC
	ADC	#1
	STA	data_2
	LDA	data_3
	ADC	#0
	STA	data_3

loc_2E381:
	LDA	#1
	STA	ppu_data_70,X
	INX
	INX
	LDA	data_2
	STA	ppu_data_70,X
	DEX
	LDA	data_3
	STA	ppu_data_70,X
	INX
	INX
	LDA	ptr_0
	STA	ppu_data_70,X
	INX
	PLA
	STA	data_3
	PLA
	STA	data_2
	INC	ptr_0
	JSR	sub_2E500
	INC	inv_spr_dscr1_30C
	LDA	inv_spr_dscr1_30C
	CMP	#2
	BEQ	loc_2E3AF
	JMP	loc_2E33E
; ---------------------------------------------------------------------------

loc_2E3AF:
	JSR	sub_2E7BB
	RTS
; End of function sub_2E244

; ---------------------------------------------------------------------------
byte_2E3B3:.BYTE	2,  2,	0,  2,	2,  0,	0,  0,	1,  2,	3,  2,	1,  0,	3,  0
			
	.BYTE	2,  1,	0,  1,	2,  3,	0,  3,	1,  1,	3,  1,	1,  3,	3,  3

; =============== S U B	R O U T	I N E =======================================


sub_2E3D3:
	LDA	inv_spr_dscr1_30C
	PHA
	LDA	#0
	STA	inv_spr_dscr1_30C

loc_2E3DC:
	LDA	(ptr_0),Y
	STA	ppu_data_70,X
	INX
	INY
	INC	inv_spr_dscr1_30C
	LDA	inv_spr_dscr1_30C
	CMP	#8
	BCC	loc_2E3DC
	PLA
	STA	inv_spr_dscr1_30C
	RTS
; End of function sub_2E3D3


; =============== S U B	R O U T	I N E =======================================


sub_2E3F1:
	LDA	inv_spr_dscr1_30C
	PHA
	LDA	#0
	STA	inv_spr_dscr1_30C

loc_2E3FA:
	LDA	(ptr_0),Y
	EOR	#$FF
	STA	ppu_data_70,X
	INX
	INY
	INC	inv_spr_dscr1_30C
	LDA	inv_spr_dscr1_30C
	CMP	#8
	BCC	loc_2E3FA
	PLA
	STA	inv_spr_dscr1_30C
	RTS
; End of function sub_2E3F1


; =============== S U B	R O U T	I N E =======================================


sub_2E411:
	LDA	inv_spr_dscr1_30C
	PHA
	LDA	#0
	STA	inv_spr_dscr1_30C

loc_2E41A:
	LDA	#0
	STA	ppu_data_70,X
	INX
	INC	inv_spr_dscr1_30C
	LDA	inv_spr_dscr1_30C
	CMP	#8
	BCC	loc_2E41A
	PLA
	STA	inv_spr_dscr1_30C
	RTS
; End of function sub_2E411


; =============== S U B	R O U T	I N E =======================================


sub_2E42E:
	LDA	inv_spr_dscr1_30C
	PHA
	LDA	#0
	STA	inv_spr_dscr1_30C

loc_2E437:
	LDA	#$FF
	STA	ppu_data_70,X
	INX
	INC	inv_spr_dscr1_30C
	LDA	inv_spr_dscr1_30C
	CMP	#8
	BCC	loc_2E437
	PLA
	STA	inv_spr_dscr1_30C
	RTS
; End of function sub_2E42E


; =============== S U B	R O U T	I N E =======================================


sub_2E44B:
			; sub_2E244:loc_2E312p
	LDY	tilemapHeight_30A

loc_2E44E:
	CPY	#0
	BEQ	loc_2E466
	LDA	ppu_unk_byte_309
	CLC
	ADC	byte_363
	STA	ppu_unk_byte_309
	INC	ppu_unk_byte_309
	INC	ppu_unk_byte_309
	DEY
	JMP	loc_2E44E
; ---------------------------------------------------------------------------

loc_2E466:
	LDA	ppu_unk_byte_303
	STA	ptr_0
	LDA	ppu_scroll_x_304
	LSR	A
	LSR	A
	LSR	A
	CLC
	ADC	tilemap_size_307
	STA	tilemap_size_307
	CMP	#$20 
	BCC	loc_2E482
	SEC
	SBC	#$20 
	STA	tilemap_size_307

loc_2E482:
	LDA	ppu_scroll_y_305
	LSR	A
	LSR	A
	LSR	A
	CLC
	ADC	ppu_unk_byte_309
	STA	ppu_unk_byte_309
	CMP	#$1E
	BCC	loc_2E49B
	SEC
	SBC	#$1E
	STA	ppu_unk_byte_309
	INC	ptr_0

loc_2E49B:
	LDA	ptr_0
	AND	#1
	BEQ	loc_2E4AC
	LDA	#0
	STA	data_2
	LDA	#$28 
	STA	data_3
	JMP	loc_2E4B4
; ---------------------------------------------------------------------------

loc_2E4AC:
	LDA	#0
	STA	data_2
	LDA	#$20 
	STA	data_3

loc_2E4B4:
	LDY	ppu_unk_byte_309

loc_2E4B7:
	CPY	#0
	BEQ	loc_2E4CC
	LDA	data_2
	CLC
	ADC	#$20 
	STA	data_2
	LDA	data_3
	ADC	#0
	STA	data_3
	DEY
	JMP	loc_2E4B7
; ---------------------------------------------------------------------------

loc_2E4CC:
	LDA	#0
	LDY	tilemapWidth_308

loc_2E4D1:
	CPY	#0
	BEQ	loc_2E4E0
	CLC
	ADC	#2
	CLC
	ADC	byte_362
	DEY
	JMP	loc_2E4D1
; ---------------------------------------------------------------------------

loc_2E4E0:
	CLC
	ADC	tilemap_size_307
	STA	tilemap_size_307
	CMP	#$20 
	BCC	loc_2E4F1
	SEC
	SBC	#$20 
	STA	tilemap_size_307

loc_2E4F1:
	LDA	data_2
	CLC
	ADC	tilemap_size_307
	STA	data_2
	LDA	data_3
	ADC	#0
	STA	data_3
	RTS
; End of function sub_2E44B


; =============== S U B	R O U T	I N E =======================================


sub_2E500:
			; sub_2E244+15Bp
	LDA	ppu_unk_byte_309
	CMP	#$1D
	BNE	loc_2E521
	LDA	data_3
	CMP	#$28 
	BCC	loc_2E514
	LDA	#$20 
	STA	data_3
	JMP	loc_2E518
; ---------------------------------------------------------------------------

loc_2E514:
	LDA	#$28 
	STA	data_3

loc_2E518:
	LDA	data_2
	AND	#$1F
	STA	data_2
	JMP	locret_2E52E
; ---------------------------------------------------------------------------

loc_2E521:
	LDA	data_2
	CLC
	ADC	#$20 
	STA	data_2
	LDA	data_3
	ADC	#0
	STA	data_3

locret_2E52E:
	RTS
; End of function sub_2E500

; ---------------------------------------------------------------------------
	.WORD byte_2E571
	.WORD byte_2E581
	.WORD byte_2E591
	.WORD byte_2E5A1
	.WORD byte_2E5B1
	.WORD byte_2E5C1
	.WORD byte_2E5D1
	.WORD byte_2E5E1
	.WORD byte_2E5F1
	.WORD byte_2E601
	.WORD byte_2E611
	.WORD byte_2E621
	.WORD byte_2E631
	.WORD byte_2E641
	.WORD byte_2E651
	.WORD byte_2E661
	.WORD byte_2E671
	.WORD byte_2E681
	.WORD byte_2E691
	.WORD byte_2E6A1
	.WORD byte_2E6B1
	.WORD byte_2E6C1
	.WORD byte_2E6D1
	.WORD byte_2E6E1
	.WORD byte_2E6F1
	.WORD byte_2E701
	.WORD byte_2E711
	.WORD byte_2E721
	.WORD byte_2E731
	.WORD byte_2E741
	.WORD byte_2E751
	.WORD byte_2E761
	.WORD byte_2E771
byte_2E571:.BYTE $3E, $A,$1C,  6,$3E,$1C,$2C,$30, $E, $E, $E, $E, $E, $E, $E, $E
			
byte_2E581:.BYTE  $F,  0,	8,  6,$35,  0,	0,$30,$26,  0,	0,$2D, $F,  0,	0,$30
			
byte_2E591:.BYTE $3E,  6,$16,$26,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
			
byte_2E5A1:.BYTE $3E,$28,	9,$38,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
			
byte_2E5B1:.BYTE $3E,$28,	9,$38,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
			
byte_2E5C1:.BYTE $3E,$28,	9,$38,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
			
byte_2E5D1:.BYTE $3E,$28,	9,$38,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
			
byte_2E5E1:.BYTE $3E,$28,	9,$38,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
			
byte_2E5F1:.BYTE $1D,$30,$3D,$2D,$1D,  2,$16,$3D,$1D,  7,$17,$37,$1D,$2D,$3D,$30
			
byte_2E601:.BYTE $3E,  0,	0,$30,$3E,  0,	0,  0,$3E,  0,	0,  0,$3E,  0,	0,$30
			
byte_2E611:.BYTE $3E,$1C,$27,$30,$3E,  7,$27,$30,	0,  0,$10,$30,	0,  0,	0,  0
			
byte_2E621:.BYTE $3E,  5,	8,  6,$3E,  7,$16,$30,	0,  0,	0,  0,$3E,  0,	0,$30
			
byte_2E631:.BYTE $3E,$28,	9,$38,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
			
byte_2E641:.BYTE $3E,$28,	9,$38,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
			
byte_2E651:.BYTE $3E,$28,	9,$38,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
			
byte_2E661:.BYTE $3E,$28,	9,$38,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
			
byte_2E671:.BYTE  $F,  9, $B,$1A, $F,  7,$17,$37, $F,$2D,$3D,$10, $F,$3E,$3E,$30
			
byte_2E681:.BYTE  $F,  7,$27,$30, $F,  9, $B,$1B, $F,$2D,$3D,$10, $F,$3E,$3E,$30
			
byte_2E691:.BYTE  $F,  1,$10,$30, $F,  0,	0,  0, $F,$2D,$3D,$10, $F,$3E,$3E,$30
			
byte_2E6A1:.BYTE  $F,$1C,	0,$3C, $F,  9, $B,$1B, $F,$2D,$3D,$10, $F,$3E,$3E,$30
			
byte_2E6B1:.BYTE $3E,$28,	9,$38,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
			
byte_2E6C1:.BYTE $3E,$28,	9,$38,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
			
byte_2E6D1:.BYTE $3E,$30,	4,$3D,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
			
byte_2E6E1:.BYTE $3E,$2D,$3D,$30,$3E,  7,$27,$30,$3E,$16,$27,$38,$3E,  9,$1A,$30
			
byte_2E6F1:.BYTE $3E,$2D,$3D,$30,$3E,  7,$27,$30,	0,$16,$27,$17,$3E,  9,$1A,$30
			
byte_2E701:.BYTE $3E,$2D,$3D,$30,$3E,  7,$27,$30,$3E,$2D,$3D,$16,	0,  9,$1B,$30
			
byte_2E711:.BYTE $3E,$2D,$3D,$30,$3E, $C,$1C,$3E,$3E,  7,$17,$30,$3E,  9,$1A,$30
			
byte_2E721:.BYTE $3E,$2D,$3D,$30,$3E,  7,$27,$30,	0,  0,	0,  0,$3E,  9,$1A,$30
			
byte_2E731:.BYTE $3E,  7,$27,$30,	0,$3E,	0,  0,	0,  0,	0,  0,$3E,  9,$1A,$30
			
byte_2E741:.BYTE $3E,  7,$27,$30,$3E,$14,$27,$33,	0,  0,	0,  0,$3E,  9,$1A,$30
			
byte_2E751:.BYTE $3E,  1,$11,$21,	0,  0,	0,  0,	0,  0,	0,  0,$3E,$3B, $A,$39
			
byte_2E761:.BYTE  $F,$30,$1C,$1D, $F,$30,	0,  0, $F,  0,	0,  0, $F,  0,	0,  0
			
byte_2E771:.BYTE $3E,  1,$16,$21,$3E,  0,$27,$30,	0,  0,	0,  0,	0,  0,	0,  0
			

; =============== S U B	R O U T	I N E =======================================


sub_2E781:
	LDA	#$2F 
	STA	ptr_0
	LDA	#$E5 
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
	LDY	#0

loc_2E7B0:
	LDA	(data_2),Y
	STA	palette_bg_321,Y ; "����������������"
	INY
	CPY	#$10
	BCC	loc_2E7B0
	RTS
; End of function sub_2E781



Common_Code_02
	.include "common/common_funcs.asm"

; ---------------------------------------------------------------------------
	.include "garbage/bank_02_garbage.asm"

Vectors_02:
	.WORD NMI_2E882
	.WORD off_28097
	.WORD locret_2E8F9
; end of 'BANK_02'

; ===========================================================================