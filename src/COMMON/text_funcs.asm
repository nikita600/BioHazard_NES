
	READ_WORD data_2, {(ptr_0),Y}
	ADD_BYTE_TO_WORD data_2, text_idx_35C

	READ_WORD ptr_0, {(data_2),Y}
	FROM_STACK_TO_A data_3
	FROM_STACK_TO_A data_2
	LDY	#0
	SET has_ppu_data_to_upload_6F, #0
	LDX	#0
	SET_INX {ppu_data_70,X}, #5
	SET_INX {ppu_data_70,X}, #$40 
	INX
	SET {ppu_data_70,X}, data_2
	DEX
	SET_INX {ppu_data_70,X}, data_3
	INX
	SET inv_spr_dscr1_30C, #0

loc_2E2A5:
	MULT_BY_8_BYTE byte_360
	STA	tilemapTypeUnk_30B
	MULT_BY_2_BYTE byte_361
	ADD_TO_A tilemapTypeUnk_30B
	TAY
	SET tilemapTypeUnk_30B, #0

loc_2E2BC:
	Y_TO_STACK
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

	FROM_STACK_TO_Y
	INC	tilemapTypeUnk_30B
	IF_A_GREATER_CMP_ADDR tilemapTypeUnk_30B, #2, loc_2E2BC
	INC	inv_spr_dscr1_30C
	IF_A_EQUAL_CMP_ADDR inv_spr_dscr1_30C, #4, loc_2E312
	JMP	loc_2E2A5
; ---------------------------------------------------------------------------

loc_2E312:
	JSR	sub_2E44B
	SET ptr_0, sprite_secondByte_31B
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
	SET inv_spr_dscr1_30C, #0

loc_2E33E:
	A_TO_STACK data_2
	A_TO_STACK data_3
	SET_INX {ppu_data_70,X}, #1
	INX
	SET {ppu_data_70,X}, data_2
	DEX
	SET_INX {ppu_data_70,X}, data_3
	INX
	SET_INX {ppu_data_70,X}, ptr_0
	INC	ptr_0
	LOAD_A_MASKED data_2, #$1F
	IF_A_NOT_EQUAL_CMP #$1F, loc_2E374
	SUB_BYTE_FROM_WORD data_2, #$1F
	JMP	loc_2E381
; ---------------------------------------------------------------------------

loc_2E374:
	ADD_WORD_TO_WORD_IMM data_2, $1

loc_2E381:
	SET_INX {ppu_data_70,X}, #1
	INX
	SET {ppu_data_70,X}, data_2
	DEX
	SET_INX {ppu_data_70,X}, data_3
	INX
	SET_INX {ppu_data_70,X}, ptr_0
	FROM_STACK_TO_A data_3
	FROM_STACK_TO_A data_2
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
byte_2E3B3:
	.BYTE	2,  2,	0,  2,	2,  0,	0,  0,	1,  2,	3,  2,	1,  0,	3,  0
	.BYTE	2,  1,	0,  1,	2,  3,	0,  3,	1,  1,	3,  1,	1,  3,	3,  3

; =============== S U B	R O U T	I N E =======================================

sub_2E3D3:
	A_TO_STACK inv_spr_dscr1_30C
	SET inv_spr_dscr1_30C, #0

loc_2E3DC:
	SET_INX {ppu_data_70,X}, {(ptr_0),Y}
	INY
	INC	inv_spr_dscr1_30C
	IF_A_GREATER_CMP_ADDR inv_spr_dscr1_30C, #8, loc_2E3DC
	FROM_STACK_TO_A inv_spr_dscr1_30C
	RTS
; End of function sub_2E3D3

; =============== S U B	R O U T	I N E =======================================

sub_2E3F1:
	A_TO_STACK inv_spr_dscr1_30C
	SET inv_spr_dscr1_30C, #0

loc_2E3FA:
	LDA	(ptr_0),Y
	EOR	#$FF
	STA	ppu_data_70,X
	INX
	INY
	INC	inv_spr_dscr1_30C
	IF_A_GREATER_CMP_ADDR inv_spr_dscr1_30C, #8, loc_2E3FA
	FROM_STACK_TO_A inv_spr_dscr1_30C
	RTS
; End of function sub_2E3F1

; =============== S U B	R O U T	I N E =======================================

sub_2E411:
	A_TO_STACK inv_spr_dscr1_30C
	SET inv_spr_dscr1_30C, #0

loc_2E41A:
	SET_INX {ppu_data_70,X}, #0
	INC	inv_spr_dscr1_30C
	IF_A_GREATER_CMP_ADDR inv_spr_dscr1_30C, #8, loc_2E41A
	FROM_STACK_TO_A inv_spr_dscr1_30C
	RTS
; End of function sub_2E411

; =============== S U B	R O U T	I N E =======================================

sub_2E42E:
	A_TO_STACK inv_spr_dscr1_30C
	SET inv_spr_dscr1_30C, #0

loc_2E437:
	SET_INX {ppu_data_70,X}, #$FF
	INC	inv_spr_dscr1_30C
	IF_A_GREATER_CMP_ADDR inv_spr_dscr1_30C, #8, loc_2E437
	FROM_STACK_TO_A inv_spr_dscr1_30C
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
	SET ptr_0, ppu_unk_byte_303
	DIV_A_BY_8_ADDR ppu_scroll_x_304
	ADD_TO_A tilemap_size_307
	STA	tilemap_size_307
	IF_A_GREATER_CMP #$20, loc_2E482
	SUB_A_SEC #$20 
	STA	tilemap_size_307

loc_2E482:
	DIV_A_BY_8_ADDR ppu_scroll_y_305
	ADD_TO_A ppu_unk_byte_309
	STA	ppu_unk_byte_309
	IF_A_GREATER_CMP #$1E, loc_2E49B
	SUB_A_SEC #$1E
	STA	ppu_unk_byte_309
	INC	ptr_0

loc_2E49B:
	LOAD_A_MASKED ptr_0, #1
	BEQ	loc_2E4AC
	SET data_2, #0
	SET data_3, #$28 
	JMP	loc_2E4B4
; ---------------------------------------------------------------------------

loc_2E4AC:
	SET data_2, #0
	SET data_3, #$20 

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
	SUB_A_SEC #$20 
	STA	tilemap_size_307

loc_2E4F1:
	ADD_BYTE_TO_WORD data_2, tilemap_size_307

	RTS
; End of function sub_2E44B

; =============== S U B	R O U T	I N E =======================================

sub_2E500:

	IF_A_NOT_EQUAL_CMP_ADDR ppu_unk_byte_309, #$1D, loc_2E521
	IF_A_GREATER_CMP_ADDR data_3, #$28, loc_2E514
	SET data_3, #$20 
	JMP	loc_2E518
; ---------------------------------------------------------------------------

loc_2E514:
	SET data_3, #$28 

loc_2E518:
	AND_BYTE data_2, #$1F
	JMP	locret_2E52E
; ---------------------------------------------------------------------------

loc_2E521:
	ADD_WORD_TO_WORD_IMM data_2, $20

locret_2E52E:
	RTS
; End of function sub_2E500