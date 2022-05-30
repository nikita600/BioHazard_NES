;BANK_02 (Sprites)
;* =  $8000

	.include "includes/ram.inc"
	.include "includes/macros.inc"

; =============== S U B	R O U T	I N E =======================================

	BANK_SWITCH_FUNC switch_case_8035

switch_case_8035:
	SET bank_prev_345, bank_to_344
	SET bank_switch_flag_6C, #$88 
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
	SET sprite_secondByte_31B, #$CF 
	SET byte_35E, #$C
	SET byte_364, #0
	JMP	loc_2D14F
; End of function sub_2D11F

; =============== S U B	R O U T	I N E =======================================

sub_2D131:
	SET byte_310, #0
	SET sprite_secondByte_31B, #$D7 
	SET byte_35E, #$A
	SET byte_364, #7
	SET byte_360, #0
	SET byte_361, #1

loc_2D14F:
	SET ppu_unk_byte_309, #$1B
	SET tilemap_size_307, #4
	SET byte_35F, #1
	SET byte_362, #0
	SET byte_363, #0
	JMP	sub_2D1CB
; End of function sub_2D131

; =============== S U B	R O U T	I N E =======================================

sub_2D16B:
	SET byte_364, #8
	SET ppu_unk_byte_309, #$14
	SET tilemap_size_307, #4
	SET byte_35E, #$C
	SET byte_35F, #2
	SET byte_362, #0
	SET byte_363, #1
	SET sprite_secondByte_31B, #$A0 
	JMP	sub_2D1CB
; End of function sub_2D16B

; =============== S U B	R O U T	I N E =======================================

sub_2D196:
	SET ppu_unk_byte_309, #8
	SET tilemap_size_307, #4
	SET byte_35E, #$C
	SET byte_35F, #5
	SET byte_362, #0
	SET byte_363, #2
	SET sprite_secondByte_31B, #4
	SET byte_364, #6
	SET byte_360, #0
	SET byte_361, #3
	JMP	sub_2D1CB
; End of function sub_2D196

; =============== S U B	R O U T	I N E =======================================

sub_2D1CB:
	A_TO_STACK text_idx_35C
	A_TO_STACK char_type_id_35D

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
	SET tilemapHeight_30A, #0

	SET_BYTE_TO_WORD data_2, sprite_secondByte_31B
	MULT_WORD_BY_16 data_2
	OR_BYTE data_3, #$10

loc_2D23E:
	SET tilemapWidth_308, #0

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

	SUB_ADDR_SEC byte_35E, tilemapWidth_308
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

	SET_INY char_type_id_35D, {(ptr_0),Y}
	SET_INY text_idx_35C, {(ptr_0),Y}
	MULT_WORD_BY_2 text_idx_35C

	A_TO_STACK ptr_0
	A_TO_STACK ptr_1
	A_TO_STACK data_2
	A_TO_STACK data_3
	A_TO_STACK tilemap_size_307
	A_TO_STACK ppu_unk_byte_309
	JSR	sub_2D4D7
	FROM_STACK_TO_A ppu_unk_byte_309
	FROM_STACK_TO_A tilemap_size_307
	FROM_STACK_TO_A data_3
	FROM_STACK_TO_A data_2
	FROM_STACK_TO_A ptr_1
	FROM_STACK_TO_A ptr_0

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
	FROM_STACK_TO_A char_type_id_35D
	FROM_STACK_TO_A text_idx_35C
	ADD_BYTE_TO_WORD text_idx_35C, #1

	SET byte_364, #0
	RTS
; End of function sub_2D1CB

; =============== S U B	R O U T	I N E =======================================

sub_2D397:

	A_TO_STACK tilemapWidth_308
	A_TO_STACK ppu_unk_byte_309
	A_TO_STACK tilemap_size_307
	A_TO_STACK ptr_0
	A_TO_STACK ptr_1
	A_TO_STACK data_2
	A_TO_STACK data_3
	SET tilemapTypeUnk_30B, byte_35F
	SET tilemapHeight_30A, #0

loc_2D3BA:
	SET tilemapWidth_308, #0
	A_TO_STACK tilemapTypeUnk_30B
	A_TO_STACK ppu_unk_byte_309
	A_TO_STACK tilemap_size_307
	JSR	sub_2E44B
	FROM_STACK_TO_A tilemap_size_307
	JSR	sub_2D401
	FROM_STACK_TO_A ppu_unk_byte_309
	FROM_STACK_TO_A tilemapTypeUnk_30B
	INC	tilemapHeight_30A
	IF_A_NOT_EQUAL_CMP_ADDR tilemapHeight_30A, tilemapTypeUnk_30B, loc_2D3BA
	FROM_STACK_TO_A data_3
	FROM_STACK_TO_A data_2
	FROM_STACK_TO_A ptr_1
	FROM_STACK_TO_A ptr_0
	FROM_STACK_TO_A tilemap_size_307
	FROM_STACK_TO_A ppu_unk_byte_309
	FROM_STACK_TO_A tilemapWidth_308
	RTS
; End of function sub_2D397

; =============== S U B	R O U T	I N E =======================================

sub_2D401:
	SET inv_spr_dscr1_30C, #0
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
	SET tilemapTypeUnk_30B, #$20 
	JMP	loc_2D445
; ---------------------------------------------------------------------------

loc_2D435:

	A_TO_STACK data_2
	A_TO_STACK data_3
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
	SUB_A_SEC tilemapTypeUnk_30B
	STA	tilemapTypeUnk_30B
	INC	ppu_data_70
	SET_INX {ppu_data_70,X}, tilemapTypeUnk_30B
	SET_INX {ppu_data_70,X}, data_3
	SET_INX {ppu_data_70,X}, data_2
	LDY	#0

loc_2D471:
	SET_INX {ppu_data_70,X}, byte_310
	INY
	IF_Y_GREATER_CMP tilemapTypeUnk_30B, loc_2D471
	DIV_A_BY_2_ADDR tilemapTypeUnk_30B
	IF_A_EQUAL_CMP byte_35E, loc_2D4C3
	A_TO_STACK data_2
	A_TO_STACK data_3
	AND_BYTE data_2, #$E0 
	MULT_BY_2_BYTE byte_35E
	SUB_A_SEC tilemapTypeUnk_30B
	STA	tilemapTypeUnk_30B

loc_2D49D:
	INC	ppu_data_70
	SET_INX {ppu_data_70,X}, tilemapTypeUnk_30B
	SET_INX {ppu_data_70,X}, data_3
	SET_INX {ppu_data_70,X}, data_2
	LDY	#0

loc_2D4B1:
	SET_INX {ppu_data_70,X}, byte_310
	INY
	IF_Y_GREATER_CMP tilemapTypeUnk_30B, loc_2D4B1
	FROM_STACK_TO_A data_3
	FROM_STACK_TO_A data_2

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
	A_TO_STACK bank_from_343

exec_b3_c0_D4E7:
	SET bank_command_346, #0
	SET bank_from_343, bank_to_344
	SET bank_to_344, #glyphs_3
	JSR	bank_switch_8000

loc_2D4FA:
	FROM_STACK_TO_A bank_from_343
	RTS
; End of function sub_2D4D7

; =============== S U B	R O U T	I N E =======================================

sub_2D4FF:

	SET count_unk_365, #0
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
	SET count_unk_365, #0
	TYA
	EOR	#1
	TAY
	ADD_TO_A #$D4 
	STA	spr_y_pos_200
	SET spr_idx_201, #$5A 
	SET spr_pal_idx_202, #0
	SET spr_x_pos_203, #$E2 

locret_2D541:
	RTS
; End of function sub_2D514

; =============== S U B	R O U T	I N E =======================================

sub_2D542:
	IF_A_EQUAL_CMP_ADDR sprite_type_306, #0, loc_2D54A
	RTS
; ---------------------------------------------------------------------------

loc_2D54A:
	SET spr_y_pos_200, #$F0 
	RTS
; End of function sub_2D542

; ---------------------------------------------------------------------------
Fonts_D550:
	.include "text/bank_02_fonts.asm"

; =============== S U B	R O U T	I N E =======================================

sub_2E244:
	A_TO_STACK data_2
	A_TO_STACK data_3

	ADD_BYTE_TO_BYTE_CLC_IMM ptr_0, #.LOBYTE(Fonts_D550), char_type_id_35D
	LDA	#.HIBYTE(Fonts_D550)
	ADC	#0
	STA	ptr_1

	.include "common/text_funcs.asm"

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
byte_2E571:
	.BYTE $3E, $A,$1C,  6,$3E,$1C,$2C,$30, $E, $E, $E, $E, $E, $E, $E, $E
	
byte_2E581:
	.BYTE  $F,  0,	8,  6,$35,  0,	0,$30,$26,  0,	0,$2D, $F,  0,	0,$30
	
byte_2E591:
	.BYTE $3E,  6,$16,$26,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
	
byte_2E5A1:
	.BYTE $3E,$28,	9,$38,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
	
byte_2E5B1:
	.BYTE $3E,$28,	9,$38,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
	
byte_2E5C1:
	.BYTE $3E,$28,	9,$38,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
	
byte_2E5D1:
	.BYTE $3E,$28,	9,$38,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
	
byte_2E5E1:
	.BYTE $3E,$28,	9,$38,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
	
byte_2E5F1:
	.BYTE $1D,$30,$3D,$2D,$1D,  2,$16,$3D,$1D,  7,$17,$37,$1D,$2D,$3D,$30
	
byte_2E601:
	.BYTE $3E,  0,	0,$30,$3E,  0,	0,  0,$3E,  0,	0,  0,$3E,  0,	0,$30
	
byte_2E611:
	.BYTE $3E,$1C,$27,$30,$3E,  7,$27,$30,	0,  0,$10,$30,	0,  0,	0,  0
	
byte_2E621:
	.BYTE $3E,  5,	8,  6,$3E,  7,$16,$30,	0,  0,	0,  0,$3E,  0,	0,$30
	
byte_2E631:
	.BYTE $3E,$28,	9,$38,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
	
byte_2E641:
	.BYTE $3E,$28,	9,$38,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
	
byte_2E651:
	.BYTE $3E,$28,	9,$38,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
	
byte_2E661:
	.BYTE $3E,$28,	9,$38,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
	
byte_2E671:
	.BYTE  $F,  9, $B,$1A, $F,  7,$17,$37, $F,$2D,$3D,$10, $F,$3E,$3E,$30
	
byte_2E681:
	.BYTE  $F,  7,$27,$30, $F,  9, $B,$1B, $F,$2D,$3D,$10, $F,$3E,$3E,$30
	
byte_2E691:
	.BYTE  $F,  1,$10,$30, $F,  0,	0,  0, $F,$2D,$3D,$10, $F,$3E,$3E,$30
	
byte_2E6A1:
	.BYTE  $F,$1C,	0,$3C, $F,  9, $B,$1B, $F,$2D,$3D,$10, $F,$3E,$3E,$30
	
byte_2E6B1:
	.BYTE $3E,$28,	9,$38,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
	
byte_2E6C1:
	.BYTE $3E,$28,	9,$38,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
	
byte_2E6D1:
	.BYTE $3E,$30,	4,$3D,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
	
byte_2E6E1:
	.BYTE $3E,$2D,$3D,$30,$3E,  7,$27,$30,$3E,$16,$27,$38,$3E,  9,$1A,$30
	
byte_2E6F1:
	.BYTE $3E,$2D,$3D,$30,$3E,  7,$27,$30,	0,$16,$27,$17,$3E,  9,$1A,$30
	
byte_2E701:
	.BYTE $3E,$2D,$3D,$30,$3E,  7,$27,$30,$3E,$2D,$3D,$16,	0,  9,$1B,$30
	
byte_2E711:
	.BYTE $3E,$2D,$3D,$30,$3E, $C,$1C,$3E,$3E,  7,$17,$30,$3E,  9,$1A,$30
	
byte_2E721:
	.BYTE $3E,$2D,$3D,$30,$3E,  7,$27,$30,	0,  0,	0,  0,$3E,  9,$1A,$30
	
byte_2E731:
	.BYTE $3E,  7,$27,$30,	0,$3E,	0,  0,	0,  0,	0,  0,$3E,  9,$1A,$30
	
byte_2E741:
	.BYTE $3E,  7,$27,$30,$3E,$14,$27,$33,	0,  0,	0,  0,$3E,  9,$1A,$30
	
byte_2E751:
	.BYTE $3E,  1,$11,$21,	0,  0,	0,  0,	0,  0,	0,  0,$3E,$3B, $A,$39
	
byte_2E761:
	.BYTE  $F,$30,$1C,$1D, $F,$30,	0,  0, $F,  0,	0,  0, $F,  0,	0,  0
	
byte_2E771:
	.BYTE $3E,  1,$16,$21,$3E,  0,$27,$30,	0,  0,	0,  0,	0,  0,	0,  0
	

; =============== S U B	R O U T	I N E =======================================

sub_2E781:

	GET_PTR_FROM_TBL off_2E52F, entry_idx_300

	LDY	#0
loc_2E7B0:
	SET_INY {palette_bg_321,Y}, {(data_2),Y}
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