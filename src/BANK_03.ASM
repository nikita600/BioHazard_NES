; Segment type:Pure code
	;.segment BANK_03 (Text Data)
	;* =  $8000

	.include "includes/ram.inc"
	.include "includes/macros.inc"

; =============== S U B	R O U T	I N E =======================================

bank_switch_8000:
	.include "common/bank_switch_func.asm"

switch_case_8035:
	set bank_prev_345, bank_to_344
	set bank_switch_flag_6C, #$88 
	if_equal_cmp_addr bank_command_346, #0, loc_38047
	RTS
; ---------------------------------------------------------------------------

loc_38047:
	JSR	sub_3F76B
	JMP	loc_3804D
; ---------------------------------------------------------------------------

loc_3804D:
	set bank_command_346, #$FF
	set bank_to_344, bank_from_343
	JMP	bank_switch_8000
; End of function bank_switch_8000

; ---------------------------------------------------------------------------
off_3805B:
	.include "text/bank_03_text.asm"

; =============== S U B	R O U T	I N E =======================================

sub_3F76B:
	to_stack data_2
	to_stack data_3
	LDA	#$5B 
	add_to_a char_type_id_35D
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

loc_3F7CC:
	LDA	byte_360
	mult_a_by_8
	STA	tilemapTypeUnk_30B
	LDA	byte_361
	mult_a_by_2
	add_to_a tilemapTypeUnk_30B
	TAY
	set tilemapTypeUnk_30B, #0

loc_3F7E3:
	TYA
	PHA
	add_to_a tilemapTypeUnk_30B
	TAY
	if_not_equal_cmp_addr {byte_3F8DA,Y}, #0, loc_3F7FE
	LDA	inv_spr_dscr1_30C
	mult_a_by_8
	TAY
	JSR	sub_3F8FA
	JMP	loc_3F820
; ---------------------------------------------------------------------------

loc_3F7FE:
	if_not_equal_cmp #1, loc_3F80F
	LDA	inv_spr_dscr1_30C
	mult_a_by_8
	TAY
	JSR	sub_3F918
	JMP	loc_3F820
; ---------------------------------------------------------------------------

loc_3F80F:
	if_not_equal_cmp #2, loc_3F819
	JSR	sub_3F938
	JMP	loc_3F820
; ---------------------------------------------------------------------------

loc_3F819:
	if_not_equal_cmp #3, loc_3F820
	JSR	sub_3F955

loc_3F820:

	from_stack_to_y
	INC	tilemapTypeUnk_30B
	if_greater_cmp_addr tilemapTypeUnk_30B, #2, loc_3F7E3
	INC	inv_spr_dscr1_30C
	if_equal_cmp_addr inv_spr_dscr1_30C, #4, loc_3F839
	JMP	loc_3F7CC
; ---------------------------------------------------------------------------

loc_3F839:
	JSR	sub_3F972
	set ptr_0, sprite_secondByte_31B
	LDY	tilemapHeight_30A

loc_3F844:
	CPY	#0
	BEQ	loc_3F856
	LDA	byte_35E
	mult_a_by_4
	add_to_a ptr_0
	STA	ptr_0
	DEY
	JMP	loc_3F844
; ---------------------------------------------------------------------------

loc_3F856:
	LDA	tilemapWidth_308
	mult_a_by_4
	add_to_a ptr_0
	STA	ptr_0
	set inv_spr_dscr1_30C, #0

loc_3F865:
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
	load_a_masked data_2, #$1F
	if_not_equal_cmp #$1F, loc_3F89B
	sub_from_sec data_2, #$1F
	sub_from_byte data_3, #0
	JMP	loc_3F8A8
; ---------------------------------------------------------------------------

loc_3F89B:
	add_to_data $1

loc_3F8A8:
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
	JSR	sub_3FA27
	INC	inv_spr_dscr1_30C
	if_equal_cmp_addr inv_spr_dscr1_30C, #2, loc_3F8D6
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
	to_stack inv_spr_dscr1_30C
	set inv_spr_dscr1_30C, #0

loc_3F903:
	set_inx {ppu_data_70,X}, {(ptr_0),Y}
	INY
	INC	inv_spr_dscr1_30C
	if_greater_cmp_addr inv_spr_dscr1_30C, #8, loc_3F903
	from_stack inv_spr_dscr1_30C
	RTS
; End of function sub_3F8FA

; =============== S U B	R O U T	I N E =======================================

sub_3F918:
	to_stack inv_spr_dscr1_30C
	set inv_spr_dscr1_30C, #0

loc_3F921:
	LDA	(ptr_0),Y
	EOR	#$FF
	STA	ppu_data_70,X
	INX
	INY
	INC	inv_spr_dscr1_30C
	if_greater_cmp_addr inv_spr_dscr1_30C, #8, loc_3F921
	from_stack inv_spr_dscr1_30C
	RTS
; End of function sub_3F918

; =============== S U B	R O U T	I N E =======================================

sub_3F938:
	to_stack inv_spr_dscr1_30C
	set inv_spr_dscr1_30C, #0

loc_3F941:
	set_inx {ppu_data_70,X}, #0
	INC	inv_spr_dscr1_30C
	if_greater_cmp_addr inv_spr_dscr1_30C, #8, loc_3F941
	from_stack inv_spr_dscr1_30C
	RTS
; End of function sub_3F938

; =============== S U B	R O U T	I N E =======================================

sub_3F955:
	to_stack inv_spr_dscr1_30C
	set inv_spr_dscr1_30C, #0

loc_3F95E:
	set_inx {ppu_data_70,X}, #$FF
	INC	inv_spr_dscr1_30C
	if_greater_cmp_addr inv_spr_dscr1_30C, #8, loc_3F95E
	from_stack inv_spr_dscr1_30C
	RTS
; End of function sub_3F955

; =============== S U B	R O U T	I N E =======================================

sub_3F972:
	LDY	tilemapHeight_30A

loc_3F975:
	CPY	#0
	BEQ	loc_3F98D
	add_to_byte_clc ppu_unk_byte_309, byte_363
	INC	ppu_unk_byte_309
	INC	ppu_unk_byte_309
	DEY
	JMP	loc_3F975
; ---------------------------------------------------------------------------

loc_3F98D:
	set ptr_0, ppu_unk_byte_303
	LDA	ppu_scroll_x_304
	LSR	A
	LSR	A
	LSR	A
	add_to_a tilemap_size_307
	STA	tilemap_size_307
	if_greater_cmp #$20, loc_3F9A9
	SEC
	SBC	#$20 
	STA	tilemap_size_307

loc_3F9A9:
	LDA	ppu_scroll_y_305
	LSR	A
	LSR	A
	LSR	A
	add_to_a ppu_unk_byte_309
	STA	ppu_unk_byte_309
	if_greater_cmp #$1E, loc_3F9C2
	SEC
	SBC	#$1E
	STA	ppu_unk_byte_309
	INC	ptr_0

loc_3F9C2:
	load_a_masked ptr_0, #1
	BEQ	loc_3F9D3
	set data_2, #0
	set data_3, #$28 
	JMP	loc_3F9DB
; ---------------------------------------------------------------------------

loc_3F9D3:
	set data_2, #0
	set data_3, #$20 

loc_3F9DB:
	LDY	ppu_unk_byte_309

loc_3F9DE:
	CPY	#0
	BEQ	loc_3F9F3

	add_to_data $20

	DEY
	JMP	loc_3F9DE
; ---------------------------------------------------------------------------

loc_3F9F3:
	LDA	#0
	LDY	tilemapWidth_308

loc_3F9F8:
	CPY	#0
	BEQ	loc_3FA07
	add_to_a #2
	add_to_a byte_362
	DEY
	JMP	loc_3F9F8
; ---------------------------------------------------------------------------

loc_3FA07:
	add_to_a tilemap_size_307
	STA	tilemap_size_307
	if_greater_cmp #$20, loc_3FA18
	SEC
	SBC	#$20 
	STA	tilemap_size_307

loc_3FA18:
	add_to_byte_clc data_2, tilemap_size_307
	add_to_byte data_3, #0

	RTS
; End of function sub_3F972

; =============== S U B	R O U T	I N E =======================================

sub_3FA27:
	if_not_equal_cmp_addr ppu_unk_byte_309, #$1D, loc_3FA48
	if_greater_cmp_addr data_3, #$28, loc_3FA3B
	set data_3, #$20 
	JMP	loc_3FA3F
; ---------------------------------------------------------------------------

loc_3FA3B:
	set data_3, #$28 

loc_3FA3F:
	and_byte data_2, #$1F
	JMP	locret_3FA55
; ---------------------------------------------------------------------------

loc_3FA48:
	add_to_data $20

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