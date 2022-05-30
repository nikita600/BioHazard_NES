;BANK_03 (Text Data)
;* =  $8000

	.include "includes/ram.inc"
	.include "includes/macros.inc"

; =============== S U B	R O U T	I N E =======================================

	BANK_SWITCH_FUNC switch_case_8035

switch_case_8035:
	SET bank_prev_345, bank_to_344
	SET bank_switch_flag_6C, #$88 
	IF_A_EQUAL_CMP_ADDR bank_command_346, #0, case0_38047
	RTS
; ---------------------------------------------------------------------------

case0_38047:
	JSR	sub_3F76B
	JMP	return_3804D
; ---------------------------------------------------------------------------

return_3804D:
	RETURN_FROM_BANK_COMMAND
; End of function bank_switch_func

; ---------------------------------------------------------------------------
off_3805B:
	.include "text/bank_03_text.asm"

; =============== S U B	R O U T	I N E =======================================

sub_3F76B:
	A_TO_STACK data_2
	A_TO_STACK data_3
	
	ADD_BYTE_TO_BYTE_CLC_IMM ptr_0, #.LOBYTE(off_3805B), char_type_id_35D
	LDA	#.HIBYTE(off_3805B)
	ADC	#0
	STA	ptr_1

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

loc_3F7CC:
	MULT_BY_8_BYTE byte_360
	STA	tilemapTypeUnk_30B
	MULT_BY_2_BYTE byte_361
	ADD_TO_A tilemapTypeUnk_30B
	TAY
	SET tilemapTypeUnk_30B, #0

loc_3F7E3:
	Y_TO_STACK
	ADD_TO_A tilemapTypeUnk_30B
	TAY
	IF_A_NOT_EQUAL_CMP_ADDR {byte_3F8DA,Y}, #0, loc_3F7FE
	MULT_BY_8_BYTE inv_spr_dscr1_30C
	TAY
	JSR	sub_3F8FA
	JMP	loc_3F820
; ---------------------------------------------------------------------------

loc_3F7FE:
	IF_A_NOT_EQUAL_CMP #1, loc_3F80F
	MULT_BY_8_BYTE inv_spr_dscr1_30C
	TAY
	JSR	sub_3F918
	JMP	loc_3F820
; ---------------------------------------------------------------------------

loc_3F80F:
	IF_A_NOT_EQUAL_CMP #2, loc_3F819
	JSR	sub_3F938
	JMP	loc_3F820
; ---------------------------------------------------------------------------

loc_3F819:
	IF_A_NOT_EQUAL_CMP #3, loc_3F820
	JSR	sub_3F955

loc_3F820:

	FROM_STACK_TO_Y
	INC	tilemapTypeUnk_30B
	IF_A_GREATER_CMP_ADDR tilemapTypeUnk_30B, #2, loc_3F7E3
	INC	inv_spr_dscr1_30C
	IF_A_EQUAL_CMP_ADDR inv_spr_dscr1_30C, #4, loc_3F839
	JMP	loc_3F7CC
; ---------------------------------------------------------------------------

loc_3F839:
	JSR	sub_3F972
	SET ptr_0, sprite_secondByte_31B
	LDY	tilemapHeight_30A

loc_3F844:
	IF_Y_EQUAL_CMP #0, loc_3F856
	MULT_BY_4_BYTE byte_35E
	ADD_TO_A ptr_0
	STA	ptr_0
	DEY
	JMP	loc_3F844
; ---------------------------------------------------------------------------

loc_3F856:
	MULT_BY_4_BYTE tilemapWidth_308
	ADD_TO_A ptr_0
	STA	ptr_0
	SET inv_spr_dscr1_30C, #0

loc_3F865:
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
	IF_A_NOT_EQUAL_CMP #$1F, loc_3F89B
	SUB_BYTE_FROM_WORD data_2, #$1F
	JMP	loc_3F8A8
; ---------------------------------------------------------------------------

loc_3F89B:
	ADD_WORD_TO_WORD_IMM data_2, $1

loc_3F8A8:
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
	JSR	sub_3FA27
	INC	inv_spr_dscr1_30C
	IF_A_EQUAL_CMP_ADDR inv_spr_dscr1_30C, #2, loc_3F8D6
	JMP	loc_3F865
; ---------------------------------------------------------------------------

loc_3F8D6:
	JSR	wait_for_ppu_data_upload_FC8C
	RTS
; End of function sub_3F76B

; ---------------------------------------------------------------------------
byte_3F8DA:
	.BYTE	2,  2,	0,  2,	2,  0,	0,  0,	1,  2,	3,  2,	1,  0,	3,  0
	.BYTE	2,  1,	0,  1,	2,  3,	0,  3,	1,  1,	3,  1,	1,  3,	3,  3

; =============== S U B	R O U T	I N E =======================================

sub_3F8FA:
	A_TO_STACK inv_spr_dscr1_30C
	SET inv_spr_dscr1_30C, #0

loc_3F903:
	SET_INX {ppu_data_70,X}, {(ptr_0),Y}
	INY
	INC	inv_spr_dscr1_30C
	IF_A_GREATER_CMP_ADDR inv_spr_dscr1_30C, #8, loc_3F903
	FROM_STACK_TO_A inv_spr_dscr1_30C
	RTS
; End of function sub_3F8FA

; =============== S U B	R O U T	I N E =======================================

sub_3F918:
	A_TO_STACK inv_spr_dscr1_30C
	SET inv_spr_dscr1_30C, #0

loc_3F921:
	LDA	(ptr_0),Y
	EOR	#$FF
	STA	ppu_data_70,X
	INX
	INY
	INC	inv_spr_dscr1_30C
	IF_A_GREATER_CMP_ADDR inv_spr_dscr1_30C, #8, loc_3F921
	FROM_STACK_TO_A inv_spr_dscr1_30C
	RTS
; End of function sub_3F918

; =============== S U B	R O U T	I N E =======================================

sub_3F938:
	A_TO_STACK inv_spr_dscr1_30C
	SET inv_spr_dscr1_30C, #0

loc_3F941:
	SET_INX {ppu_data_70,X}, #0
	INC	inv_spr_dscr1_30C
	IF_A_GREATER_CMP_ADDR inv_spr_dscr1_30C, #8, loc_3F941
	FROM_STACK_TO_A inv_spr_dscr1_30C
	RTS
; End of function sub_3F938

; =============== S U B	R O U T	I N E =======================================

sub_3F955:
	A_TO_STACK inv_spr_dscr1_30C
	SET inv_spr_dscr1_30C, #0

loc_3F95E:
	SET_INX {ppu_data_70,X}, #$FF
	INC	inv_spr_dscr1_30C
	IF_A_GREATER_CMP_ADDR inv_spr_dscr1_30C, #8, loc_3F95E
	FROM_STACK_TO_A inv_spr_dscr1_30C
	RTS
; End of function sub_3F955

; =============== S U B	R O U T	I N E =======================================

sub_3F972:
	LDY	tilemapHeight_30A

loc_3F975:
	IF_Y_EQUAL_CMP #0, loc_3F98D
	ADD_BYTE_TO_BYTE_CLC ppu_unk_byte_309, byte_363
	ADD_2_TO ppu_unk_byte_309
	DEY
	JMP	loc_3F975
; ---------------------------------------------------------------------------

loc_3F98D:
	SET ptr_0, ppu_unk_byte_303
	DIV_A_BY_8_ADDR ppu_scroll_x_304
	ADD_TO_A tilemap_size_307
	STA	tilemap_size_307
	IF_A_GREATER_CMP #$20, loc_3F9A9
	SUB_A_SEC #$20 
	STA	tilemap_size_307

loc_3F9A9:
	DIV_A_BY_8_ADDR ppu_scroll_y_305
	ADD_TO_A ppu_unk_byte_309
	STA	ppu_unk_byte_309
	IF_A_GREATER_CMP #$1E, loc_3F9C2
	SUB_A_SEC #$1E
	STA	ppu_unk_byte_309
	INC	ptr_0

loc_3F9C2:
	LOAD_A_MASKED ptr_0, #1
	BEQ	loc_3F9D3
	SET data_2, #0
	SET data_3, #$28 
	JMP	loc_3F9DB
; ---------------------------------------------------------------------------

loc_3F9D3:
	SET data_2, #0
	SET data_3, #$20 

loc_3F9DB:
	LDY	ppu_unk_byte_309

loc_3F9DE:
	IF_Y_EQUAL_CMP #0, loc_3F9F3

	ADD_WORD_TO_WORD_IMM data_2, $20

	DEY
	JMP	loc_3F9DE
; ---------------------------------------------------------------------------

loc_3F9F3:
	LDA	#0
	LDY	tilemapWidth_308

loc_3F9F8:
	IF_Y_EQUAL_CMP #0, loc_3FA07
	ADD_TO_A #2
	ADD_TO_A byte_362
	DEY
	JMP	loc_3F9F8
; ---------------------------------------------------------------------------

loc_3FA07:
	ADD_TO_A tilemap_size_307
	STA	tilemap_size_307
	IF_A_GREATER_CMP #$20, loc_3FA18
	SUB_A_SEC #$20 
	STA	tilemap_size_307

loc_3FA18:
	ADD_BYTE_TO_WORD data_2, tilemap_size_307

	RTS
; End of function sub_3F972

; =============== S U B	R O U T	I N E =======================================

sub_3FA27:
	IF_A_NOT_EQUAL_CMP_ADDR ppu_unk_byte_309, #$1D, loc_3FA48
	IF_A_GREATER_CMP_ADDR data_3, #$28, loc_3FA3B
	SET data_3, #$20 
	JMP	loc_3FA3F
; ---------------------------------------------------------------------------

loc_3FA3B:
	SET data_3, #$28 

loc_3FA3F:
	AND_BYTE data_2, #$1F
	JMP	locret_3FA55
; ---------------------------------------------------------------------------

loc_3FA48:
	ADD_WORD_TO_WORD_IMM data_2, $20

locret_3FA55:
	RTS
; End of function sub_3FA27

Common_Code_03:
	.include "common/common_funcs.asm"

; ---------------------------------------------------------------------------
	.include "garbage/bank_03_garbage.asm"

Vectors_03:
	.WORD NMI_FD53
	.WORD off_3805B
	.WORD return_FDCA
; end of 'BANK_03'

; ===========================================================================