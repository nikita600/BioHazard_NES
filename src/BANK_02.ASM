; Segment type:Pure code
	;.segment BANK_02 (Sprites)
	;* =  $8000

	.include "includes/ram.inc"
	.include "includes/macros.inc"

; =============== S U B	R O U T	I N E =======================================

bank_switch_8000:
	.include "common/bank_switch_func.asm"

switch_case_8035:
	set bank_prev_345, bank_to_344
	set bank_switch_flag_6C, #$88 
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
			; bank_switch_8000+68j ...
	set bank_command_346, #$FF
	set bank_to_344, bank_from_343
	JMP	bank_switch_8000
; End of function bank_switch_8000

; ---------------------------------------------------------------------------
off_28097:
	.include "text/bank_02_text.asm"

; =============== S U B	R O U T	I N E =======================================


sub_2D11F:
	set sprite_secondByte_31B, #$CF 
	set byte_35E, #$C
	set byte_364, #0
	JMP	loc_2D14F
; End of function sub_2D11F


; =============== S U B	R O U T	I N E =======================================


sub_2D131:
	set byte_310, #0
	set sprite_secondByte_31B, #$D7 
	set byte_35E, #$A
	set byte_364, #7
	set byte_360, #0
	set byte_361, #1

loc_2D14F:
	set ppu_unk_byte_309, #$1B
	set tilemap_size_307, #4
	set byte_35F, #1
	set byte_362, #0
	set byte_363, #0
	JMP	sub_2D1CB
; End of function sub_2D131


; =============== S U B	R O U T	I N E =======================================


sub_2D16B:
	set byte_364, #8
	set ppu_unk_byte_309, #$14
	set tilemap_size_307, #4
	set byte_35E, #$C
	set byte_35F, #2
	set byte_362, #0
	set byte_363, #1
	set sprite_secondByte_31B, #$A0 
	JMP	sub_2D1CB
; End of function sub_2D16B


; =============== S U B	R O U T	I N E =======================================


sub_2D196:
	set ppu_unk_byte_309, #8
	set tilemap_size_307, #4
	set byte_35E, #$C
	set byte_35F, #5
	set byte_362, #0
	set byte_363, #2
	set sprite_secondByte_31B, #4
	set byte_364, #6
	set byte_360, #0
	set byte_361, #3
	JMP	sub_2D1CB
; End of function sub_2D196


; =============== S U B	R O U T	I N E =======================================


sub_2D1CB:
			; sub_2D131+37j ...
	to_stack text_idx_35C
	to_stack char_type_id_35D
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
	set_iny data_2, {(ptr_0),Y}
	set data_3, {(ptr_0),Y}
	add_to_byte_clc data_2, text_idx_35C
	add_to_byte data_3, #0

	LDY	#0
	set_iny ptr_0, {(data_2),Y}
	set ptr_1, {(data_2),Y}

loc_2D21A:
	set tilemapHeight_30A, #0
	set data_2, sprite_secondByte_31B
	set data_3, #0
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
	set tilemapWidth_308, #0

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
	add_to_byte_clc ptr_0, #2
	add_to_byte ptr_1, #0


	LDA	tilemapWidth_308
	ASL	A
	CLC
	ADC	ptr_0
	STA	ptr_0
	add_to_byte ptr_1, #0

	LDA	byte_35E
	SEC
	SBC	tilemapWidth_308
	TAY

loc_2D284:
	CPY	#0
	BEQ	loc_2D299

	add_to_data $40

	DEY
	JMP	loc_2D284
; ---------------------------------------------------------------------------

loc_2D299:
	JMP	loc_2D305
; ---------------------------------------------------------------------------

loc_2D29C:
			; sub_2D1CB+92j
	set_iny char_type_id_35D, {(ptr_0),Y}
	set_iny text_idx_35C, {(ptr_0),Y}
	ASL	text_idx_35C
	ROL	char_type_id_35D
	to_stack ptr_0
	to_stack ptr_1
	to_stack data_2
	to_stack data_3
	to_stack tilemap_size_307
	to_stack ppu_unk_byte_309
	JSR	sub_2D4D7
	from_stack ppu_unk_byte_309
	from_stack tilemap_size_307
	from_stack data_3
	from_stack data_2
	from_stack ptr_1
	from_stack ptr_0

	add_to_data $40

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
	add_to_byte ptr_1, #0


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
	JSR	wait_any_input_65k_cycles_FCAB
	JSR	wait_any_input_65k_cycles_FCAB
	JSR	wait_any_input_65k_cycles_FCAB
	JSR	wait_any_input_65k_cycles_FCAB
	JSR	wait_any_input_65k_cycles_FCAB
	JSR	wait_any_input_65k_cycles_FCAB
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
	JSR	wait_any_input_65k_cycles_FCAB
	JSR	wait_any_input_65k_cycles_FCAB
	JSR	wait_any_input_65k_cycles_FCAB
	JSR	wait_any_input_65k_cycles_FCAB
	JSR	wait_any_input_65k_cycles_FCAB
	JSR	wait_any_input_65k_cycles_FCAB
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
	from_stack char_type_id_35D
	from_stack text_idx_35C
	add_to_byte_clc text_idx_35C, #1
	add_to_byte char_type_id_35D, #0

	set byte_364, #0
	RTS
; End of function sub_2D1CB


; =============== S U B	R O U T	I N E =======================================


sub_2D397:
			; sub_2D1CB+11p ...
	to_stack tilemapWidth_308
	to_stack ppu_unk_byte_309
	to_stack tilemap_size_307
	to_stack ptr_0
	to_stack ptr_1
	to_stack data_2
	to_stack data_3
	set tilemapTypeUnk_30B, byte_35F
	set tilemapHeight_30A, #0

loc_2D3BA:
	set tilemapWidth_308, #0
	to_stack tilemapTypeUnk_30B
	to_stack ppu_unk_byte_309
	to_stack tilemap_size_307
	JSR	sub_2E44B
	from_stack tilemap_size_307
	JSR	sub_2D401
	from_stack ppu_unk_byte_309
	from_stack tilemapTypeUnk_30B
	INC	tilemapHeight_30A
	LDA	tilemapHeight_30A
	CMP	tilemapTypeUnk_30B
	BNE	loc_2D3BA
	from_stack data_3
	from_stack data_2
	from_stack ptr_1
	from_stack ptr_0
	from_stack tilemap_size_307
	from_stack ppu_unk_byte_309
	from_stack tilemapWidth_308
	RTS
; End of function sub_2D397


; =============== S U B	R O U T	I N E =======================================


sub_2D401:
	set inv_spr_dscr1_30C, #0
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
	set tilemapTypeUnk_30B, #$20 
	JMP	loc_2D445
; ---------------------------------------------------------------------------

loc_2D435:
			; sub_2D401+1Bj
	to_stack data_2
	to_stack data_3
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
	set_inx {ppu_data_70,X}, tilemapTypeUnk_30B
	set_inx {ppu_data_70,X}, data_3
	set_inx {ppu_data_70,X}, data_2
	LDY	#0

loc_2D471:
	set_inx {ppu_data_70,X}, byte_310
	INY
	CPY	tilemapTypeUnk_30B
	BCC	loc_2D471
	LDA	tilemapTypeUnk_30B
	LSR	A
	CMP	byte_35E
	BEQ	loc_2D4C3
	to_stack data_2
	to_stack data_3
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
	set_inx {ppu_data_70,X}, tilemapTypeUnk_30B
	set_inx {ppu_data_70,X}, data_3
	set_inx {ppu_data_70,X}, data_2
	LDY	#0

loc_2D4B1:
	set_inx {ppu_data_70,X}, byte_310
	INY
	CPY	tilemapTypeUnk_30B
	BCC	loc_2D4B1
	from_stack data_3
	from_stack data_2

loc_2D4C3:
	JSR	sub_2E500
	INC	inv_spr_dscr1_30C
	LDA	inv_spr_dscr1_30C
	CMP	#2
	BEQ	loc_2D4D3
	JMP	loc_2D40B
; ---------------------------------------------------------------------------

loc_2D4D3:
	JSR	wait_for_ppu_data_upload_FC8C
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
	to_stack bank_from_343

exec_b3_c0_D4E7:
	set bank_command_346, #0
	set bank_from_343, bank_to_344
	set bank_to_344, #glyphs_3
	JSR	bank_switch_8000

loc_2D4FA:
	from_stack bank_from_343
	RTS
; End of function sub_2D4D7


; =============== S U B	R O U T	I N E =======================================


sub_2D4FF:
			; sub_2D1CB+19Ep
	set count_unk_365, #0
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
	set count_unk_365, #0
	TYA
	EOR	#1
	TAY
	CLC
	ADC	#$D4 
	STA	byte_200
	set byte_201, #$5A 
	set byte_202, #0
	set byte_203, #$E2 

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
	set byte_200, #$F0 
	RTS
; End of function sub_2D542

; ---------------------------------------------------------------------------
Fonts:
	.include "text/bank_02_fonts.asm"

; =============== S U B	R O U T	I N E =======================================


sub_2E244:
	to_stack data_2
	to_stack data_3
	LDA	#$50 
	CLC
	ADC	char_type_id_35D
	STA	ptr_0
	LDA	#$D5 
	ADC	#0
	STA	ptr_1
	LDY	#0
	set_iny data_2, {(ptr_0),Y}
	set data_3, {(ptr_0),Y}
	add_to_byte_clc data_2, text_idx_35C
	add_to_byte data_3, #0

	LDY	#0
	set_iny ptr_0, {(data_2),Y}
	set ptr_1, {(data_2),Y}
	from_stack data_3
	from_stack data_2
	LDY	#0
	set has_ppu_data_to_upload_6F, #0
	LDX	#0
	set_inx {ppu_data_70,X}, #5
	set_inx {ppu_data_70,X}, #$40 
	INX
	set {ppu_data_70,X}, data_2
	DEX
	set_inx {ppu_data_70,X}, data_3
	INX
	set inv_spr_dscr1_30C, #0

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
	set tilemapTypeUnk_30B, #0

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
	from_stack_to_y
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
	set ptr_0, sprite_secondByte_31B
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
	set inv_spr_dscr1_30C, #0

loc_2E33E:
	to_stack data_2
	to_stack data_3
	set_inx {ppu_data_70,X}, #1
	INX
	set {ppu_data_70,X}, data_2
	DEX
	set_inx {ppu_data_70,X}, data_3
	INX
	set_inx {ppu_data_70,X}, ptr_0
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
	add_to_data $1

loc_2E381:
	set_inx {ppu_data_70,X}, #1
	INX
	set {ppu_data_70,X}, data_2
	DEX
	set_inx {ppu_data_70,X}, data_3
	INX
	set_inx {ppu_data_70,X}, ptr_0
	from_stack data_3
	from_stack data_2
	INC	ptr_0
	JSR	sub_2E500
	INC	inv_spr_dscr1_30C
	LDA	inv_spr_dscr1_30C
	CMP	#2
	BEQ	loc_2E3AF
	JMP	loc_2E33E
; ---------------------------------------------------------------------------

loc_2E3AF:
	JSR	wait_for_ppu_data_upload_FC8C
	RTS
; End of function sub_2E244

; ---------------------------------------------------------------------------
byte_2E3B3:.BYTE	2,  2,	0,  2,	2,  0,	0,  0,	1,  2,	3,  2,	1,  0,	3,  0
			
	.BYTE	2,  1,	0,  1,	2,  3,	0,  3,	1,  1,	3,  1,	1,  3,	3,  3

; =============== S U B	R O U T	I N E =======================================


sub_2E3D3:
	to_stack inv_spr_dscr1_30C
	set inv_spr_dscr1_30C, #0

loc_2E3DC:
	set_inx {ppu_data_70,X}, {(ptr_0),Y}
	INY
	INC	inv_spr_dscr1_30C
	LDA	inv_spr_dscr1_30C
	CMP	#8
	BCC	loc_2E3DC
	from_stack inv_spr_dscr1_30C
	RTS
; End of function sub_2E3D3


; =============== S U B	R O U T	I N E =======================================


sub_2E3F1:
	to_stack inv_spr_dscr1_30C
	set inv_spr_dscr1_30C, #0

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
	from_stack inv_spr_dscr1_30C
	RTS
; End of function sub_2E3F1


; =============== S U B	R O U T	I N E =======================================


sub_2E411:
	to_stack inv_spr_dscr1_30C
	set inv_spr_dscr1_30C, #0

loc_2E41A:
	set_inx {ppu_data_70,X}, #0
	INC	inv_spr_dscr1_30C
	LDA	inv_spr_dscr1_30C
	CMP	#8
	BCC	loc_2E41A
	from_stack inv_spr_dscr1_30C
	RTS
; End of function sub_2E411


; =============== S U B	R O U T	I N E =======================================


sub_2E42E:
	to_stack inv_spr_dscr1_30C
	set inv_spr_dscr1_30C, #0

loc_2E437:
	set_inx {ppu_data_70,X}, #$FF
	INC	inv_spr_dscr1_30C
	LDA	inv_spr_dscr1_30C
	CMP	#8
	BCC	loc_2E437
	from_stack inv_spr_dscr1_30C
	RTS
; End of function sub_2E42E


; =============== S U B	R O U T	I N E =======================================


sub_2E44B:
			; sub_2E244:loc_2E312p
	LDY	tilemapHeight_30A

loc_2E44E:
	CPY	#0
	BEQ	loc_2E466
	add_to_byte_clc ppu_unk_byte_309, byte_363
	INC	ppu_unk_byte_309
	INC	ppu_unk_byte_309
	DEY
	JMP	loc_2E44E
; ---------------------------------------------------------------------------

loc_2E466:
	set ptr_0, ppu_unk_byte_303
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
	set data_2, #0
	set data_3, #$28 
	JMP	loc_2E4B4
; ---------------------------------------------------------------------------

loc_2E4AC:
	set data_2, #0
	set data_3, #$20 

loc_2E4B4:
	LDY	ppu_unk_byte_309

loc_2E4B7:
	CPY	#0
	BEQ	loc_2E4CC

	add_to_data $20
	
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
	add_to_byte_clc data_2, tilemap_size_307
	add_to_byte data_3, #0

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
	set data_3, #$20 
	JMP	loc_2E518
; ---------------------------------------------------------------------------

loc_2E514:
	set data_3, #$28 

loc_2E518:
	LDA	data_2
	AND	#$1F
	STA	data_2
	JMP	locret_2E52E
; ---------------------------------------------------------------------------

loc_2E521:
	add_to_data $20

locret_2E52E:
	RTS
; End of function sub_2E500

; ---------------------------------------------------------------------------

off_2E52F:
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

	set_ptr off_2E52F

	set data_2, entry_idx_300
	set data_3, #0
	ASL	data_2
	ROL	data_3

	add_to_byte_clc ptr_0, data_2
	add_to_byte ptr_1, data_3

	
	LDY	#0
	set_iny data_2, {(ptr_0),Y}
	set data_3, {(ptr_0),Y}
	LDY	#0

loc_2E7B0:
	set_iny {palette_bg_321,Y}, {(data_2),Y}
	CPY	#$10
	BCC	loc_2E7B0
	RTS
; End of function sub_2E781



Common_Code_02:
	.include "common/common_funcs.asm"

; ---------------------------------------------------------------------------
	.include "garbage/bank_02_garbage.asm"

Vectors_02:
	.WORD NMI_FD53
	.WORD off_28097
	.WORD return_FDCA
; end of 'BANK_02'

; ===========================================================================