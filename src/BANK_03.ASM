; Segment type:Pure code
	;.segment BANK_03 (Text Data)
	;* =  $8000

	.include "includes/ram.inc"
	.include "includes/macros.inc"

; =============== S U B	R O U T	I N E =======================================


bank_switch_8000:
	.include "common/bank_switch_func.asm"

switch_case_8035:
	LDA	bank_to_344
	STA	bank_prev_345
	LDA	#$88 
	STA	bank_switch_flag_6C
	LDA	bank_command_346
	CMP	#0
	BEQ	loc_38047
	RTS
; ---------------------------------------------------------------------------

loc_38047:
	JSR	sub_3F76B
	JMP	loc_3804D
; ---------------------------------------------------------------------------

loc_3804D:
	LDA	#$FF
	STA	bank_command_346
	LDA	bank_from_343
	STA	bank_to_344
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
	from_stack data_3
	from_stack data_2
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

loc_3F7CC:
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

loc_3F7E3:
	TYA
	PHA
	CLC
	ADC	tilemapTypeUnk_30B
	TAY
	LDA	byte_3F8DA,Y
	CMP	#0
	BNE	loc_3F7FE
	LDA	inv_spr_dscr1_30C
	ASL	A
	ASL	A
	ASL	A
	TAY
	JSR	sub_3F8FA
	JMP	loc_3F820
; ---------------------------------------------------------------------------

loc_3F7FE:
	CMP	#1
	BNE	loc_3F80F
	LDA	inv_spr_dscr1_30C
	ASL	A
	ASL	A
	ASL	A
	TAY
	JSR	sub_3F918
	JMP	loc_3F820
; ---------------------------------------------------------------------------

loc_3F80F:
	CMP	#2
	BNE	loc_3F819
	JSR	sub_3F938
	JMP	loc_3F820
; ---------------------------------------------------------------------------

loc_3F819:
	CMP	#3
	BNE	loc_3F820
	JSR	sub_3F955

loc_3F820:
			; sub_3F76B+A1j ...
	from_stack_to_y
	INC	tilemapTypeUnk_30B
	LDA	tilemapTypeUnk_30B
	CMP	#2
	BCC	loc_3F7E3
	INC	inv_spr_dscr1_30C
	LDA	inv_spr_dscr1_30C
	CMP	#4
	BEQ	loc_3F839
	JMP	loc_3F7CC
; ---------------------------------------------------------------------------

loc_3F839:
	JSR	sub_3F972
	LDA	sprite_secondByte_31B
	STA	ptr_0
	LDY	tilemapHeight_30A

loc_3F844:
	CPY	#0
	BEQ	loc_3F856
	LDA	byte_35E
	ASL	A
	ASL	A
	CLC
	ADC	ptr_0
	STA	ptr_0
	DEY
	JMP	loc_3F844
; ---------------------------------------------------------------------------

loc_3F856:
	LDA	tilemapWidth_308
	ASL	A
	ASL	A
	CLC
	ADC	ptr_0
	STA	ptr_0
	LDA	#0
	STA	inv_spr_dscr1_30C

loc_3F865:
	to_stack data_2
	to_stack data_3
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
	BNE	loc_3F89B
	LDA	data_2
	SEC
	SBC	#$1F
	STA	data_2
	LDA	data_3
	SBC	#0
	STA	data_3
	JMP	loc_3F8A8
; ---------------------------------------------------------------------------

loc_3F89B:
	add_to_data $1

loc_3F8A8:
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
	from_stack data_3
	from_stack data_2
	INC	ptr_0
	JSR	sub_3FA27
	INC	inv_spr_dscr1_30C
	LDA	inv_spr_dscr1_30C
	CMP	#2
	BEQ	loc_3F8D6
	JMP	loc_3F865
; ---------------------------------------------------------------------------

loc_3F8D6:
	JSR	wait_for_ppu_data_upload_FC8C
	RTS
; End of function sub_3F76B

; ---------------------------------------------------------------------------
byte_3F8DA:.BYTE	2,  2,	0,  2,	2,  0,	0,  0,	1,  2,	3,  2,	1,  0,	3,  0
			
	.BYTE	2,  1,	0,  1,	2,  3,	0,  3,	1,  1,	3,  1,	1,  3,	3,  3

; =============== S U B	R O U T	I N E =======================================


sub_3F8FA:
	to_stack inv_spr_dscr1_30C
	LDA	#0
	STA	inv_spr_dscr1_30C

loc_3F903:
	LDA	(ptr_0),Y
	STA	ppu_data_70,X
	INX
	INY
	INC	inv_spr_dscr1_30C
	LDA	inv_spr_dscr1_30C
	CMP	#8
	BCC	loc_3F903
	from_stack inv_spr_dscr1_30C
	RTS
; End of function sub_3F8FA


; =============== S U B	R O U T	I N E =======================================


sub_3F918:
	to_stack inv_spr_dscr1_30C
	LDA	#0
	STA	inv_spr_dscr1_30C

loc_3F921:
	LDA	(ptr_0),Y
	EOR	#$FF
	STA	ppu_data_70,X
	INX
	INY
	INC	inv_spr_dscr1_30C
	LDA	inv_spr_dscr1_30C
	CMP	#8
	BCC	loc_3F921
	from_stack inv_spr_dscr1_30C
	RTS
; End of function sub_3F918


; =============== S U B	R O U T	I N E =======================================


sub_3F938:
	to_stack inv_spr_dscr1_30C
	LDA	#0
	STA	inv_spr_dscr1_30C

loc_3F941:
	LDA	#0
	STA	ppu_data_70,X
	INX
	INC	inv_spr_dscr1_30C
	LDA	inv_spr_dscr1_30C
	CMP	#8
	BCC	loc_3F941
	from_stack inv_spr_dscr1_30C
	RTS
; End of function sub_3F938


; =============== S U B	R O U T	I N E =======================================


sub_3F955:
	to_stack inv_spr_dscr1_30C
	LDA	#0
	STA	inv_spr_dscr1_30C

loc_3F95E:
	LDA	#$FF
	STA	ppu_data_70,X
	INX
	INC	inv_spr_dscr1_30C
	LDA	inv_spr_dscr1_30C
	CMP	#8
	BCC	loc_3F95E
	from_stack inv_spr_dscr1_30C
	RTS
; End of function sub_3F955


; =============== S U B	R O U T	I N E =======================================


sub_3F972:
	LDY	tilemapHeight_30A

loc_3F975:
	CPY	#0
	BEQ	loc_3F98D
	LDA	ppu_unk_byte_309
	CLC
	ADC	byte_363
	STA	ppu_unk_byte_309
	INC	ppu_unk_byte_309
	INC	ppu_unk_byte_309
	DEY
	JMP	loc_3F975
; ---------------------------------------------------------------------------

loc_3F98D:
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
	BCC	loc_3F9A9
	SEC
	SBC	#$20 
	STA	tilemap_size_307

loc_3F9A9:
	LDA	ppu_scroll_y_305
	LSR	A
	LSR	A
	LSR	A
	CLC
	ADC	ppu_unk_byte_309
	STA	ppu_unk_byte_309
	CMP	#$1E
	BCC	loc_3F9C2
	SEC
	SBC	#$1E
	STA	ppu_unk_byte_309
	INC	ptr_0

loc_3F9C2:
	LDA	ptr_0
	AND	#1
	BEQ	loc_3F9D3
	LDA	#0
	STA	data_2
	LDA	#$28 
	STA	data_3
	JMP	loc_3F9DB
; ---------------------------------------------------------------------------

loc_3F9D3:
	LDA	#0
	STA	data_2
	LDA	#$20 
	STA	data_3

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
	CLC
	ADC	#2
	CLC
	ADC	byte_362
	DEY
	JMP	loc_3F9F8
; ---------------------------------------------------------------------------

loc_3FA07:
	CLC
	ADC	tilemap_size_307
	STA	tilemap_size_307
	CMP	#$20 
	BCC	loc_3FA18
	SEC
	SBC	#$20 
	STA	tilemap_size_307

loc_3FA18:
	LDA	data_2
	CLC
	ADC	tilemap_size_307
	STA	data_2
	LDA	data_3
	ADC	#0
	STA	data_3
	RTS
; End of function sub_3F972


; =============== S U B	R O U T	I N E =======================================


sub_3FA27:
	LDA	ppu_unk_byte_309
	CMP	#$1D
	BNE	loc_3FA48
	LDA	data_3
	CMP	#$28 
	BCC	loc_3FA3B
	LDA	#$20 
	STA	data_3
	JMP	loc_3FA3F
; ---------------------------------------------------------------------------

loc_3FA3B:
	LDA	#$28 
	STA	data_3

loc_3FA3F:
	LDA	data_2
	AND	#$1F
	STA	data_2
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