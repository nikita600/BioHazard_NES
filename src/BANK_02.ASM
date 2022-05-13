; Segment type:Pure code
	;.segment BANK_02 (Sprites)
	;* =  $8000

	.include "includes/ram.inc"
	.include "includes/macros.inc"

; =============== S U B	R O U T	I N E =======================================

	bank_switch_func switch_case_8035

switch_case_8035:
	set bank_prev_345, bank_to_344
	set bank_switch_flag_6C, #$88 
	if_a_equal_cmp_addr bank_command_346, #0, loc_2805F
	if_a_equal_cmp #1, loc_28065
	if_a_equal_cmp #2, loc_2806B
	if_a_equal_cmp #3, loc_28071
	if_a_equal_cmp #4, loc_28077
	if_a_equal_cmp #5, loc_2807D
	if_a_equal_cmp #6, loc_28083
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
	return_from_bank_command
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
	load_a_masked byte_364, #1
	if_a_equal_cmp #0, loc_2D1DF
	JSR	sub_2D397

loc_2D1DF:
	mult_word_by_2 text_idx_35C
	mult_byte_by_2 char_type_id_35D
	LDA	#$97 
	add_to_a char_type_id_35D
	STA	ptr_0
	LDA	#$80 
	ADC	#0
	STA	ptr_1
	read_word  data_2, {(ptr_0),Y}
	add_byte_to_word data_2, text_idx_35C

	read_word  ptr_0, {(data_2),Y}

loc_2D21A:
	set tilemapHeight_30A, #0

	set_byte_to_word data_2, sprite_secondByte_31B
	mult_word_by_16 data_2
	or_byte data_3, #$10

loc_2D23E:
	set tilemapWidth_308, #0

loc_2D243:
	mult_by_2_byte tilemapWidth_308
	TAY
	if_a_not_equal_cmp_addr {(ptr_0),Y}, #0, loc_2D251
	JMP	loc_2D342
; ---------------------------------------------------------------------------

loc_2D251:
	if_a_not_equal_cmp #$FF, loc_2D29C
	INY
	if_a_equal_cmp_addr {(ptr_0),Y}, #$FF, loc_2D260
	DEY
	JMP	loc_2D29C
; ---------------------------------------------------------------------------

loc_2D260:
	add_byte_to_word ptr_0, #2

	mult_by_2_byte tilemapWidth_308
	add_to_a ptr_0
	STA	ptr_0
	add_byte_to_byte ptr_1, #0

	sub_addr_sec byte_35E, tilemapWidth_308
	TAY

loc_2D284:
	if_y_equal_cmp #0, loc_2D299

	add_word_to_word_imm data_2, $40

	DEY
	JMP	loc_2D284
; ---------------------------------------------------------------------------

loc_2D299:
	JMP	loc_2D305
; ---------------------------------------------------------------------------

loc_2D29C:

	set_iny char_type_id_35D, {(ptr_0),Y}
	set_iny text_idx_35C, {(ptr_0),Y}
	mult_word_by_2 text_idx_35C

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

	add_word_to_word_imm data_2, $40

	INC	tilemapWidth_308
	if_a_equal_cmp_addr tilemapWidth_308, byte_35E, loc_2D2F6
	BCS	loc_2D2F6
	JMP	loc_2D243
; ---------------------------------------------------------------------------

loc_2D2F6:

	mult_by_2_byte tilemapWidth_308
	add_to_a ptr_0
	STA	ptr_0
	add_byte_to_byte ptr_1, #0

loc_2D305:
	LDY	#0
	if_a_equal_cmp_addr {(ptr_0),Y}, #0, loc_2D342
	INC	tilemapHeight_30A
	if_a_equal_cmp_addr tilemapHeight_30A, byte_35F, loc_2D31B
	JMP	loc_2D23E
; ---------------------------------------------------------------------------

loc_2D31B:
	load_a_masked byte_364, #8
	if_a_equal_cmp #0, loc_2D339
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

	load_a_masked byte_364, #8
	if_a_equal_cmp #0, loc_2D360
	JSR	wait_any_input_65k_cycles_FCAB
	JSR	wait_any_input_65k_cycles_FCAB
	JSR	wait_any_input_65k_cycles_FCAB
	JSR	wait_any_input_65k_cycles_FCAB
	JSR	wait_any_input_65k_cycles_FCAB
	JSR	wait_any_input_65k_cycles_FCAB
	JMP	loc_2D36C
; ---------------------------------------------------------------------------

loc_2D360:
	load_a_masked byte_364, #2
	if_a_not_equal_cmp #0, loc_2D36C
	JSR	sub_2D4FF

loc_2D36C:

	load_a_masked byte_364, #4
	if_a_not_equal_cmp #0, loc_2D378
	JSR	sub_2D397

loc_2D378:
	from_stack_to_a char_type_id_35D
	from_stack_to_a text_idx_35C
	add_byte_to_word text_idx_35C, #1

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
	if_a_not_equal_cmp_addr tilemapHeight_30A, tilemapTypeUnk_30B, loc_2D3BA
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
	div_a_by_8_addr ppu_scroll_x_304
	add_to_a tilemap_size_307
	STA	tilemapTypeUnk_30B
	if_a_equal_cmp #$20, loc_2D435
	BCS	loc_2D435
	mult_by_2_byte byte_35E
	add_to_a tilemapTypeUnk_30B
	STA	tilemapTypeUnk_30B
	if_a_greater_cmp #$20, loc_2D445
	set tilemapTypeUnk_30B, #$20 
	JMP	loc_2D445
; ---------------------------------------------------------------------------

loc_2D435:

	a_to_stack data_2
	a_to_stack data_3
	mult_by_2_byte byte_35E
	STA	tilemapTypeUnk_30B
	JMP	loc_2D49D
; ---------------------------------------------------------------------------

loc_2D445:

	LDY	tilemapTypeUnk_30B
	div_a_by_8_addr ppu_scroll_x_304
	add_to_a tilemap_size_307
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
	if_y_greater_cmp tilemapTypeUnk_30B, loc_2D471
	div_a_by_2_addr tilemapTypeUnk_30B
	if_a_equal_cmp byte_35E, loc_2D4C3
	a_to_stack data_2
	a_to_stack data_3
	and_byte data_2, #$E0 
	mult_by_2_byte byte_35E
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
	if_y_greater_cmp tilemapTypeUnk_30B, loc_2D4B1
	from_stack_to_a data_3
	from_stack_to_a data_2

loc_2D4C3:
	JSR	sub_2E500
	INC	inv_spr_dscr1_30C
	if_a_equal_cmp_addr inv_spr_dscr1_30C, #2, loc_2D4D3
	JMP	loc_2D40B
; ---------------------------------------------------------------------------

loc_2D4D3:
	JSR	wait_for_ppu_data_upload_FC8C
	RTS
; End of function sub_2D401

; =============== S U B	R O U T	I N E =======================================

sub_2D4D7:
	div_a_by_2_addr char_type_id_35D
	if_a_greater_cmp #8, loc_2D4E3
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
	if_a_equal_cmp_addr input_pressed_34A, #0, loc_2D506
	JSR	sub_2D542
	RTS
; End of function sub_2D4FF

; =============== S U B	R O U T	I N E =======================================

sub_2D514:
	if_a_equal_cmp_addr sprite_type_306, #0, loc_2D51C
	RTS
; ---------------------------------------------------------------------------

loc_2D51C:
	if_a_greater_cmp_addr count_unk_365, #$A, locret_2D541
	set count_unk_365, #0
	TYA
	EOR	#1
	TAY
	add_to_a #$D4 
	STA	spr_y_pos_200
	set spr_idx_201, #$5A 
	set spr_pal_idx_202, #0
	set spr_x_pos_203, #$E2 

locret_2D541:
	RTS
; End of function sub_2D514

; =============== S U B	R O U T	I N E =======================================

sub_2D542:
	if_a_equal_cmp_addr sprite_type_306, #0, loc_2D54A
	RTS
; ---------------------------------------------------------------------------

loc_2D54A:
	set spr_y_pos_200, #$F0 
	RTS
; End of function sub_2D542

; ---------------------------------------------------------------------------
Fonts:
	.include "text/bank_02_fonts.asm"

; =============== S U B	R O U T	I N E =======================================

sub_2E244:
	a_to_stack data_2
	a_to_stack data_3
	LDA	#$50 
	add_to_a char_type_id_35D
	STA	ptr_0
	LDA	#$D5 
	ADC	#0
	STA	ptr_1
	read_word  data_2, {(ptr_0),Y}
	add_byte_to_word data_2, text_idx_35C

	read_word  ptr_0, {(data_2),Y}
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
	mult_a_by_8_byte byte_360
	STA	tilemapTypeUnk_30B
	mult_by_2_byte byte_361
	add_to_a tilemapTypeUnk_30B
	TAY
	set tilemapTypeUnk_30B, #0

loc_2E2BC:
	y_to_stack
	add_to_a tilemapTypeUnk_30B
	TAY
	if_a_not_equal_cmp_addr {byte_2E3B3,Y}, #0, loc_2E2D7
	mult_a_by_8_byte inv_spr_dscr1_30C
	TAY
	JSR	sub_2E3D3
	JMP	loc_2E2F9
; ---------------------------------------------------------------------------

loc_2E2D7:
	if_a_not_equal_cmp #1, loc_2E2E8
	mult_a_by_8_byte inv_spr_dscr1_30C
	TAY
	JSR	sub_2E3F1
	JMP	loc_2E2F9
; ---------------------------------------------------------------------------

loc_2E2E8:
	if_a_not_equal_cmp #2, loc_2E2F2
	JSR	sub_2E411
	JMP	loc_2E2F9
; ---------------------------------------------------------------------------

loc_2E2F2:
	if_a_not_equal_cmp #3, loc_2E2F9
	JSR	sub_2E42E

loc_2E2F9:

	from_stack_to_y
	INC	tilemapTypeUnk_30B
	if_a_greater_cmp_addr tilemapTypeUnk_30B, #2, loc_2E2BC
	INC	inv_spr_dscr1_30C
	if_a_equal_cmp_addr inv_spr_dscr1_30C, #4, loc_2E312
	JMP	loc_2E2A5
; ---------------------------------------------------------------------------

loc_2E312:
	JSR	sub_2E44B
	set ptr_0, sprite_secondByte_31B
	LDY	tilemapHeight_30A

loc_2E31D:
	if_y_equal_cmp #0, loc_2E32F
	mult_by_4_byte byte_35E
	add_to_a ptr_0
	STA	ptr_0
	DEY
	JMP	loc_2E31D
; ---------------------------------------------------------------------------

loc_2E32F:
	mult_by_4_byte tilemapWidth_308
	add_to_a ptr_0
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
	load_a_masked data_2, #$1F
	if_a_not_equal_cmp #$1F, loc_2E374
	sub_byte_from_word data_2, #$1F
	JMP	loc_2E381
; ---------------------------------------------------------------------------

loc_2E374:
	add_word_to_word_imm data_2, $1

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
	if_a_equal_cmp_addr inv_spr_dscr1_30C, #2, loc_2E3AF
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
	if_a_greater_cmp_addr inv_spr_dscr1_30C, #8, loc_2E3DC
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
	if_a_greater_cmp_addr inv_spr_dscr1_30C, #8, loc_2E3FA
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
	if_a_greater_cmp_addr inv_spr_dscr1_30C, #8, loc_2E41A
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
	if_a_greater_cmp_addr inv_spr_dscr1_30C, #8, loc_2E437
	from_stack_to_a inv_spr_dscr1_30C
	RTS
; End of function sub_2E42E

; =============== S U B	R O U T	I N E =======================================

sub_2E44B:

	LDY	tilemapHeight_30A

loc_2E44E:
	if_y_equal_cmp #0, loc_2E466
	add_byte_to_byte_clc ppu_unk_byte_309, byte_363
	add_2_to ppu_unk_byte_309
	DEY
	JMP	loc_2E44E
; ---------------------------------------------------------------------------

loc_2E466:
	set ptr_0, ppu_unk_byte_303
	div_a_by_8_addr ppu_scroll_x_304
	add_to_a tilemap_size_307
	STA	tilemap_size_307
	if_a_greater_cmp #$20, loc_2E482
	sub_a_sec #$20 
	STA	tilemap_size_307

loc_2E482:
	div_a_by_8_addr ppu_scroll_y_305
	add_to_a ppu_unk_byte_309
	STA	ppu_unk_byte_309
	if_a_greater_cmp #$1E, loc_2E49B
	sub_a_sec #$1E
	STA	ppu_unk_byte_309
	INC	ptr_0

loc_2E49B:
	load_a_masked ptr_0, #1
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
	if_y_equal_cmp #0, loc_2E4CC

	add_word_to_word_imm data_2, $20
	
	DEY
	JMP	loc_2E4B7
; ---------------------------------------------------------------------------

loc_2E4CC:
	LDA	#0
	LDY	tilemapWidth_308

loc_2E4D1:
	if_y_equal_cmp #0, loc_2E4E0
	add_to_a #2
	add_to_a byte_362
	DEY
	JMP	loc_2E4D1
; ---------------------------------------------------------------------------

loc_2E4E0:
	add_to_a tilemap_size_307
	STA	tilemap_size_307
	if_a_greater_cmp #$20, loc_2E4F1
	sub_a_sec #$20 
	STA	tilemap_size_307

loc_2E4F1:
	add_byte_to_word data_2, tilemap_size_307

	RTS
; End of function sub_2E44B

; =============== S U B	R O U T	I N E =======================================

sub_2E500:

	if_a_not_equal_cmp_addr ppu_unk_byte_309, #$1D, loc_2E521
	if_a_greater_cmp_addr data_3, #$28, loc_2E514
	set data_3, #$20 
	JMP	loc_2E518
; ---------------------------------------------------------------------------

loc_2E514:
	set data_3, #$28 

loc_2E518:
	and_byte data_2, #$1F
	JMP	locret_2E52E
; ---------------------------------------------------------------------------

loc_2E521:
	add_word_to_word_imm data_2, $20

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

	get_ptr_from_tbl off_2E52F, entry_idx_300

	LDY	#0
loc_2E7B0:
	set_iny {palette_bg_321,Y}, {(data_2),Y}
	if_y_greater_cmp #$10, loc_2E7B0
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