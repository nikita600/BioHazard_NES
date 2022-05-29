;BANK_02 (Sprites)
;* =  $8000

	.include "includes/ram.inc"
	.include "includes/macros.inc"

; =============== S U B	R O U T	I N E =======================================

	BANK_SWITCH_FUNC switch_case_8035

switch_case_8035:
	set bank_prev_345, bank_to_344
	set bank_switch_flag_6C, #$88 
	IF_A_EQUAL_CMP_ADDR bank_command_346, #0, case0_2805F
	IF_A_EQUAL_CMP #1, case1_28065
	IF_A_EQUAL_CMP #2, case2_2806B
	IF_A_EQUAL_CMP #3, case3_28071
	IF_A_EQUAL_CMP #4, case4_28077
	IF_A_EQUAL_CMP #5, case5_2807D
	IF_A_EQUAL_CMP #6, case6_28083
	RTS
; ---------------------------------------------------------------------------

case0_2805F:
	JSR	sub_2D11F
	JMP	return_28089
; ---------------------------------------------------------------------------

case1_28065:
	JSR	sub_2D131
	JMP	return_28089
; ---------------------------------------------------------------------------

case2_2806B:
	JSR	sub_2D16B
	JMP	return_28089
; ---------------------------------------------------------------------------

case3_28071:
	JSR	sub_2D196
	JMP	return_28089
; ---------------------------------------------------------------------------

case4_28077:
	JSR	sub_2D1CB
	JMP	return_28089
; ---------------------------------------------------------------------------

case5_2807D:
	JSR	sub_2D397
	JMP	return_28089
; ---------------------------------------------------------------------------

case6_28083:
	JSR	sub_2E781
	JMP	return_28089
; ---------------------------------------------------------------------------

return_28089:
	RETURN_FROM_BANK_COMMAND
; End of function bank_switch_func

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
	a_to_stack text_idx_35C
	a_to_stack char_type_id_35D

	LOAD_A_MASKED byte_364, #1
	IF_A_EQUAL_CMP #0, loc_2D1DF
	JSR	sub_2D397

loc_2D1DF:
	MULT_WORD_BY_2 text_idx_35C
	MULT_BYTE_BY_2 char_type_id_35D

	ADD_BYTE_TO_BYTE_CLC_IMM ptr_0, #.LOBYTE(off_28097), char_type_id_35D
	LDA	#.HIBYTE(off_28097)
	ADC	#0
	STA	ptr_1

	READ_WORD data_2, {(ptr_0),Y}
	ADD_BYTE_TO_WORD data_2, text_idx_35C

	READ_WORD ptr_0, {(data_2),Y}

loc_2D21A:
	set tilemapHeight_30A, #0

	set_byte_to_word data_2, sprite_secondByte_31B
	MULT_WORD_BY_16 data_2
	OR_BYTE data_3, #$10

loc_2D23E:
	set tilemapWidth_308, #0

loc_2D243:
	MULT_BY_2_BYTE tilemapWidth_308
	TAY
	IF_A_NOT_EQUAL_CMP_ADDR {(ptr_0),Y}, #0, loc_2D251
	JMP	loc_2D342
; ---------------------------------------------------------------------------

loc_2D251:
	IF_A_NOT_EQUAL_CMP #$FF, loc_2D29C
	INY
	IF_A_EQUAL_CMP_ADDR {(ptr_0),Y}, #$FF, loc_2D260
	DEY
	JMP	loc_2D29C
; ---------------------------------------------------------------------------

loc_2D260:
	ADD_BYTE_TO_WORD ptr_0, #2

	MULT_BY_2_BYTE tilemapWidth_308
	ADD_TO_A ptr_0
	STA	ptr_0
	ADD_BYTE_TO_BYTE ptr_1, #0

	sub_addr_sec byte_35E, tilemapWidth_308
	TAY

loc_2D284:
	IF_Y_EQUAL_CMP #0, loc_2D299

	ADD_WORD_TO_WORD_IMM data_2, $40

	DEY
	JMP	loc_2D284
; ---------------------------------------------------------------------------

loc_2D299:
	JMP	loc_2D305
; ---------------------------------------------------------------------------

loc_2D29C:

	set_iny char_type_id_35D, {(ptr_0),Y}
	set_iny text_idx_35C, {(ptr_0),Y}
	MULT_WORD_BY_2 text_idx_35C

	a_to_stack ptr_0
	a_to_stack ptr_1
	a_to_stack data_2
	a_to_stack data_3
	a_to_stack tilemap_size_307
	a_to_stack ppu_unk_byte_309
	JSR	sub_2D4D7
	from_stack_to_a ppu_unk_byte_309
	from_stack_to_a tilemap_size_307
	from_stack_to_a data_3
	from_stack_to_a data_2
	from_stack_to_a ptr_1
	from_stack_to_a ptr_0

	ADD_WORD_TO_WORD_IMM data_2, $40

	INC	tilemapWidth_308
	IF_A_EQUAL_CMP_ADDR tilemapWidth_308, byte_35E, loc_2D2F6
	BCS	loc_2D2F6
	JMP	loc_2D243
; ---------------------------------------------------------------------------

loc_2D2F6:

	MULT_BY_2_BYTE tilemapWidth_308
	ADD_TO_A ptr_0
	STA	ptr_0
	ADD_BYTE_TO_BYTE ptr_1, #0

loc_2D305:
	LDY	#0
	IF_A_EQUAL_CMP_ADDR {(ptr_0),Y}, #0, loc_2D342
	INC	tilemapHeight_30A
	IF_A_EQUAL_CMP_ADDR tilemapHeight_30A, byte_35F, loc_2D31B
	JMP	loc_2D23E
; ---------------------------------------------------------------------------

loc_2D31B:
	LOAD_A_MASKED byte_364, #8
	IF_A_EQUAL_CMP #0, loc_2D339
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

	LOAD_A_MASKED byte_364, #8
	IF_A_EQUAL_CMP #0, loc_2D360
	JSR	wait_any_input_65k_cycles_FCAB
	JSR	wait_any_input_65k_cycles_FCAB
	JSR	wait_any_input_65k_cycles_FCAB
	JSR	wait_any_input_65k_cycles_FCAB
	JSR	wait_any_input_65k_cycles_FCAB
	JSR	wait_any_input_65k_cycles_FCAB
	JMP	loc_2D36C
; ---------------------------------------------------------------------------

loc_2D360:
	LOAD_A_MASKED byte_364, #2
	IF_A_NOT_EQUAL_CMP #0, loc_2D36C
	JSR	sub_2D4FF

loc_2D36C:

	LOAD_A_MASKED byte_364, #4
	IF_A_NOT_EQUAL_CMP #0, loc_2D378
	JSR	sub_2D397

loc_2D378:
	from_stack_to_a char_type_id_35D
	from_stack_to_a text_idx_35C
	ADD_BYTE_TO_WORD text_idx_35C, #1

	set byte_364, #0
	RTS
; End of function sub_2D1CB

; =============== S U B	R O U T	I N E =======================================

sub_2D397:

	a_to_stack tilemapWidth_308
	a_to_stack ppu_unk_byte_309
	a_to_stack tilemap_size_307
	a_to_stack ptr_0
	a_to_stack ptr_1
	a_to_stack data_2
	a_to_stack data_3
	set tilemapTypeUnk_30B, byte_35F
	set tilemapHeight_30A, #0

loc_2D3BA:
	set tilemapWidth_308, #0
	a_to_stack tilemapTypeUnk_30B
	a_to_stack ppu_unk_byte_309
	a_to_stack tilemap_size_307
	JSR	sub_2E44B
	from_stack_to_a tilemap_size_307
	JSR	sub_2D401
	from_stack_to_a ppu_unk_byte_309
	from_stack_to_a tilemapTypeUnk_30B
	INC	tilemapHeight_30A
	IF_A_NOT_EQUAL_CMP_ADDR tilemapHeight_30A, tilemapTypeUnk_30B, loc_2D3BA
	from_stack_to_a data_3
	from_stack_to_a data_2
	from_stack_to_a ptr_1
	from_stack_to_a ptr_0
	from_stack_to_a tilemap_size_307
	from_stack_to_a ppu_unk_byte_309
	from_stack_to_a tilemapWidth_308
	RTS
; End of function sub_2D397

; =============== S U B	R O U T	I N E =======================================

sub_2D401:
	set inv_spr_dscr1_30C, #0
	LDX	#0
	STX	ppu_data_70
	INX

loc_2D40B:
	DIV_A_BY_8_ADDR ppu_scroll_x_304
	ADD_TO_A tilemap_size_307
	STA	tilemapTypeUnk_30B
	IF_A_EQUAL_CMP #$20, loc_2D435
	BCS	loc_2D435
	MULT_BY_2_BYTE byte_35E
	ADD_TO_A tilemapTypeUnk_30B
	STA	tilemapTypeUnk_30B
	IF_A_GREATER_CMP #$20, loc_2D445
	set tilemapTypeUnk_30B, #$20 
	JMP	loc_2D445
; ---------------------------------------------------------------------------

loc_2D435:

	a_to_stack data_2
	a_to_stack data_3
	MULT_BY_2_BYTE byte_35E
	STA	tilemapTypeUnk_30B
	JMP	loc_2D49D
; ---------------------------------------------------------------------------

loc_2D445:

	LDY	tilemapTypeUnk_30B
	DIV_A_BY_8_ADDR ppu_scroll_x_304
	ADD_TO_A tilemap_size_307
	STA	tilemapTypeUnk_30B
	TYA
	sub_a_sec tilemapTypeUnk_30B
	STA	tilemapTypeUnk_30B
	INC	ppu_data_70
	set_inx {ppu_data_70,X}, tilemapTypeUnk_30B
	set_inx {ppu_data_70,X}, data_3
	set_inx {ppu_data_70,X}, data_2
	LDY	#0

loc_2D471:
	set_inx {ppu_data_70,X}, byte_310
	INY
	IF_Y_GREATER_CMP tilemapTypeUnk_30B, loc_2D471
	DIV_A_BY_2_ADDR tilemapTypeUnk_30B
	IF_A_EQUAL_CMP byte_35E, loc_2D4C3
	a_to_stack data_2
	a_to_stack data_3
	AND_BYTE data_2, #$E0 
	MULT_BY_2_BYTE byte_35E
	sub_a_sec tilemapTypeUnk_30B
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
	IF_Y_GREATER_CMP tilemapTypeUnk_30B, loc_2D4B1
	from_stack_to_a data_3
	from_stack_to_a data_2

loc_2D4C3:
	JSR	sub_2E500
	INC	inv_spr_dscr1_30C
	IF_A_EQUAL_CMP_ADDR inv_spr_dscr1_30C, #2, loc_2D4D3
	JMP	loc_2D40B
; ---------------------------------------------------------------------------

loc_2D4D3:
	JSR	wait_for_ppu_data_upload_FC8C
	RTS
; End of function sub_2D401

; =============== S U B	R O U T	I N E =======================================

sub_2D4D7:
	DIV_A_BY_2_ADDR char_type_id_35D
	IF_A_GREATER_CMP #8, loc_2D4E3
	JSR	sub_2E244
	RTS
; ---------------------------------------------------------------------------

loc_2D4E3:
	a_to_stack bank_from_343

exec_b3_c0_D4E7:
	set bank_command_346, #0
	set bank_from_343, bank_to_344
	set bank_to_344, #glyphs_3
	JSR	bank_switch_8000

loc_2D4FA:
	from_stack_to_a bank_from_343
	RTS
; End of function sub_2D4D7

; =============== S U B	R O U T	I N E =======================================

sub_2D4FF:

	set count_unk_365, #0
	LDY	#$FF

loc_2D506:
	JSR	sub_2D514
	IF_A_EQUAL_CMP_ADDR input_pressed_34A, #0, loc_2D506
	JSR	sub_2D542
	RTS
; End of function sub_2D4FF

; =============== S U B	R O U T	I N E =======================================

sub_2D514:
	IF_A_EQUAL_CMP_ADDR sprite_type_306, #0, loc_2D51C
	RTS
; ---------------------------------------------------------------------------

loc_2D51C:
	IF_A_GREATER_CMP_ADDR count_unk_365, #$A, locret_2D541
	set count_unk_365, #0
	TYA
	EOR	#1
	TAY
	ADD_TO_A #$D4 
	STA	spr_y_pos_200
	set spr_idx_201, #$5A 
	set spr_pal_idx_202, #0
	set spr_x_pos_203, #$E2 

locret_2D541:
	RTS
; End of function sub_2D514

; =============== S U B	R O U T	I N E =======================================

sub_2D542:
	IF_A_EQUAL_CMP_ADDR sprite_type_306, #0, loc_2D54A
	RTS
; ---------------------------------------------------------------------------

loc_2D54A:
	set spr_y_pos_200, #$F0 
	RTS
; End of function sub_2D542

; ---------------------------------------------------------------------------
Fonts_D550:
	.include "text/bank_02_fonts.asm"

; =============== S U B	R O U T	I N E =======================================

sub_2E244:
	a_to_stack data_2
	a_to_stack data_3

	ADD_BYTE_TO_BYTE_CLC_IMM ptr_0, #$50 , char_type_id_35D
	LDA	#$D5 
	ADC	#0
	STA	ptr_1

	READ_WORD data_2, {(ptr_0),Y}
	ADD_BYTE_TO_WORD data_2, text_idx_35C

	READ_WORD ptr_0, {(data_2),Y}
	from_stack_to_a data_3
	from_stack_to_a data_2
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
	MULT_BY_8_BYTE byte_360
	STA	tilemapTypeUnk_30B
	MULT_BY_2_BYTE byte_361
	ADD_TO_A tilemapTypeUnk_30B
	TAY
	set tilemapTypeUnk_30B, #0

loc_2E2BC:
	y_to_stack
	ADD_TO_A tilemapTypeUnk_30B
	TAY
	IF_A_NOT_EQUAL_CMP_ADDR {byte_2E3B3,Y}, #0, loc_2E2D7
	MULT_BY_8_BYTE inv_spr_dscr1_30C
	TAY
	JSR	sub_2E3D3
	JMP	loc_2E2F9
; ---------------------------------------------------------------------------

loc_2E2D7:
	IF_A_NOT_EQUAL_CMP #1, loc_2E2E8
	MULT_BY_8_BYTE inv_spr_dscr1_30C
	TAY
	JSR	sub_2E3F1
	JMP	loc_2E2F9
; ---------------------------------------------------------------------------

loc_2E2E8:
	IF_A_NOT_EQUAL_CMP #2, loc_2E2F2
	JSR	sub_2E411
	JMP	loc_2E2F9
; ---------------------------------------------------------------------------

loc_2E2F2:
	IF_A_NOT_EQUAL_CMP #3, loc_2E2F9
	JSR	sub_2E42E

loc_2E2F9:

	from_stack_to_y
	INC	tilemapTypeUnk_30B
	IF_A_GREATER_CMP_ADDR tilemapTypeUnk_30B, #2, loc_2E2BC
	INC	inv_spr_dscr1_30C
	IF_A_EQUAL_CMP_ADDR inv_spr_dscr1_30C, #4, loc_2E312
	JMP	loc_2E2A5
; ---------------------------------------------------------------------------

loc_2E312:
	JSR	sub_2E44B
	set ptr_0, sprite_secondByte_31B
	LDY	tilemapHeight_30A

loc_2E31D:
	IF_Y_EQUAL_CMP #0, loc_2E32F
	MULT_BY_4_BYTE byte_35E
	ADD_TO_A ptr_0
	STA	ptr_0
	DEY
	JMP	loc_2E31D
; ---------------------------------------------------------------------------

loc_2E32F:
	MULT_BY_4_BYTE tilemapWidth_308
	ADD_TO_A ptr_0
	STA	ptr_0
	set inv_spr_dscr1_30C, #0

loc_2E33E:
	a_to_stack data_2
	a_to_stack data_3
	set_inx {ppu_data_70,X}, #1
	INX
	set {ppu_data_70,X}, data_2
	DEX
	set_inx {ppu_data_70,X}, data_3
	INX
	set_inx {ppu_data_70,X}, ptr_0
	INC	ptr_0
	LOAD_A_MASKED data_2, #$1F
	IF_A_NOT_EQUAL_CMP #$1F, loc_2E374
	sub_byte_from_word data_2, #$1F
	JMP	loc_2E381
; ---------------------------------------------------------------------------

loc_2E374:
	ADD_WORD_TO_WORD_IMM data_2, $1

loc_2E381:
	set_inx {ppu_data_70,X}, #1
	INX
	set {ppu_data_70,X}, data_2
	DEX
	set_inx {ppu_data_70,X}, data_3
	INX
	set_inx {ppu_data_70,X}, ptr_0
	from_stack_to_a data_3
	from_stack_to_a data_2
	INC	ptr_0
	JSR	sub_2E500
	INC	inv_spr_dscr1_30C
	IF_A_EQUAL_CMP_ADDR inv_spr_dscr1_30C, #2, loc_2E3AF
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
	a_to_stack inv_spr_dscr1_30C
	set inv_spr_dscr1_30C, #0

loc_2E3DC:
	set_inx {ppu_data_70,X}, {(ptr_0),Y}
	INY
	INC	inv_spr_dscr1_30C
	IF_A_GREATER_CMP_ADDR inv_spr_dscr1_30C, #8, loc_2E3DC
	from_stack_to_a inv_spr_dscr1_30C
	RTS
; End of function sub_2E3D3

; =============== S U B	R O U T	I N E =======================================

sub_2E3F1:
	a_to_stack inv_spr_dscr1_30C
	set inv_spr_dscr1_30C, #0

loc_2E3FA:
	LDA	(ptr_0),Y
	EOR	#$FF
	STA	ppu_data_70,X
	INX
	INY
	INC	inv_spr_dscr1_30C
	IF_A_GREATER_CMP_ADDR inv_spr_dscr1_30C, #8, loc_2E3FA
	from_stack_to_a inv_spr_dscr1_30C
	RTS
; End of function sub_2E3F1

; =============== S U B	R O U T	I N E =======================================

sub_2E411:
	a_to_stack inv_spr_dscr1_30C
	set inv_spr_dscr1_30C, #0

loc_2E41A:
	set_inx {ppu_data_70,X}, #0
	INC	inv_spr_dscr1_30C
	IF_A_GREATER_CMP_ADDR inv_spr_dscr1_30C, #8, loc_2E41A
	from_stack_to_a inv_spr_dscr1_30C
	RTS
; End of function sub_2E411

; =============== S U B	R O U T	I N E =======================================

sub_2E42E:
	a_to_stack inv_spr_dscr1_30C
	set inv_spr_dscr1_30C, #0

loc_2E437:
	set_inx {ppu_data_70,X}, #$FF
	INC	inv_spr_dscr1_30C
	IF_A_GREATER_CMP_ADDR inv_spr_dscr1_30C, #8, loc_2E437
	from_stack_to_a inv_spr_dscr1_30C
	RTS
; End of function sub_2E42E

; =============== S U B	R O U T	I N E =======================================

sub_2E44B:

	LDY	tilemapHeight_30A

loc_2E44E:
	IF_Y_EQUAL_CMP #0, loc_2E466
	ADD_BYTE_TO_BYTE_CLC ppu_unk_byte_309, byte_363
	ADD_2_TO ppu_unk_byte_309
	DEY
	JMP	loc_2E44E
; ---------------------------------------------------------------------------

loc_2E466:
	set ptr_0, ppu_unk_byte_303
	DIV_A_BY_8_ADDR ppu_scroll_x_304
	ADD_TO_A tilemap_size_307
	STA	tilemap_size_307
	IF_A_GREATER_CMP #$20, loc_2E482
	sub_a_sec #$20 
	STA	tilemap_size_307

loc_2E482:
	DIV_A_BY_8_ADDR ppu_scroll_y_305
	ADD_TO_A ppu_unk_byte_309
	STA	ppu_unk_byte_309
	IF_A_GREATER_CMP #$1E, loc_2E49B
	sub_a_sec #$1E
	STA	ppu_unk_byte_309
	INC	ptr_0

loc_2E49B:
	LOAD_A_MASKED ptr_0, #1
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
	IF_Y_EQUAL_CMP #0, loc_2E4CC

	ADD_WORD_TO_WORD_IMM data_2, $20
	
	DEY
	JMP	loc_2E4B7
; ---------------------------------------------------------------------------

loc_2E4CC:
	LDA	#0
	LDY	tilemapWidth_308

loc_2E4D1:
	IF_Y_EQUAL_CMP #0, loc_2E4E0
	ADD_TO_A #2
	ADD_TO_A byte_362
	DEY
	JMP	loc_2E4D1
; ---------------------------------------------------------------------------

loc_2E4E0:
	ADD_TO_A tilemap_size_307
	STA	tilemap_size_307
	IF_A_GREATER_CMP #$20, loc_2E4F1
	sub_a_sec #$20 
	STA	tilemap_size_307

loc_2E4F1:
	ADD_BYTE_TO_WORD data_2, tilemap_size_307

	RTS
; End of function sub_2E44B

; =============== S U B	R O U T	I N E =======================================

sub_2E500:

	IF_A_NOT_EQUAL_CMP_ADDR ppu_unk_byte_309, #$1D, loc_2E521
	IF_A_GREATER_CMP_ADDR data_3, #$28, loc_2E514
	set data_3, #$20 
	JMP	loc_2E518
; ---------------------------------------------------------------------------

loc_2E514:
	set data_3, #$28 

loc_2E518:
	AND_BYTE data_2, #$1F
	JMP	locret_2E52E
; ---------------------------------------------------------------------------

loc_2E521:
	ADD_WORD_TO_WORD_IMM data_2, $20

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

	GET_PTR_FROM_TBL off_2E52F, entry_idx_300

	LDY	#0
loc_2E7B0:
	set_iny {palette_bg_321,Y}, {(data_2),Y}
	IF_Y_GREATER_CMP #$10, loc_2E7B0
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