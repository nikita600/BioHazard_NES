; =============== S U B	R O U T	I N E =======================================

wait_for_ppu_data_upload_FC8C:
	set has_ppu_data_to_upload_6F, #1

loc_FC90:
	IF_A_NOT_EQUAL has_ppu_data_to_upload_6F, loc_FC90
	RTS
; End of function wait_for_ppu_data_upload_FC8C

; =============== S U B	R O U T	I N E =======================================

wait_for_vblank_FC95:
	LDA	_PPU_STATUS
	BMI	wait_for_vblank_FC95

loc_FC9A:
	LDA	_PPU_STATUS
	BPL	loc_FC9A
	RTS
; End of function wait_for_vblank_FC95

; =============== S U B	R O U T	I N E =======================================

wait_for_frame_rendered_FCA0:
	set frame_render_count_350, #1

loop_FCA5:
	IF_A_NOT_EQUAL frame_render_count_350, loop_FCA5
	RTS
; End of function wait_for_frame_rendered_FCA0

; =============== S U B	R O U T	I N E =======================================

wait_any_input_65k_cycles_FCAB:
	LDY	#0

loc_FCAD:
	LDX	#0

loc_FCAF:
	IF_A_NOT_EQUAL_CMP_ADDR input_reg1_347, #0, exit_FCBC
	INX
	BNE	loc_FCAF
	INY
	BNE	loc_FCAD

exit_FCBC:
	RTS
; End of function wait_any_input_65k_cycles_FCAB

; =============== S U B	R O U T	I N E =======================================

wait_for_a_pressed_FCBD:
	IF_A_NOT_EQUAL_CMP_ADDR input_pressed_34A, #a_80, wait_for_a_pressed_FCBD
	RTS
; End of function wait_for_a_pressed_FCBD

; =============== S U B	R O U T	I N E =======================================

wait_for_b_pressed_FCC5:
	IF_A_NOT_EQUAL_CMP_ADDR input_pressed_34A, #b_40, wait_for_b_pressed_FCC5
	RTS
; End of function wait_for_b_pressed_FCC5

; =============== S U B	R O U T	I N E =======================================

wait_for_any_input_FCCD:
	IF_A_EQUAL_CMP_ADDR input_pressed_34A, #0, wait_for_any_input_FCCD
	RTS
; End of function wait_for_any_input_FCCD

; =============== S U B	R O U T	I N E =======================================

wait_for_n_65k_cycles_FCD5:
	PHA
	JSR	wait_65k_cycles_FCE0
	PLA
	sub_a_sec #1
	BNE	wait_for_n_65k_cycles_FCD5
	RTS
; End of function wait_for_n_65k_cycles_FCD5

; =============== S U B	R O U T	I N E =======================================

wait_65k_cycles_FCE0:
	PHA
	x_to_stack
	y_to_stack

start_wait_FCE5:
	LDX	#0

loc_FCE7:
	LDY	#0

loc_FCE9:
	DEY
	BNE	loc_FCE9
	DEX
	BNE	loc_FCE7

revert_stack_FCEF:
	from_stack_to_y
	from_stack_to_x
	PLA
	RTS
; End of function wait_65k_cycles_FCE0

; =============== S U B	R O U T	I N E =======================================

hide_sprites_FCF5:
	LDA	#$F0 
	STA	spr_y_pos_218
	STA	spr_y_pos_21C
	STA	spr_y_pos_220
	STA	spr_y_pos_224
	STA	spr_y_pos_2E8
	STA	spr_y_pos_2EC
	RTS
; End of function hide_sprites_FCF5

; =============== S U B	R O U T	I N E =======================================

sub_FD0A:
	IF_A_EQUAL byte_43E, loc_FD31
	IF_A_NOT_EQUAL spr_x_pos_203, loc_FD1C
	set byte_43E, #0
	JMP	locret_FD52
; ---------------------------------------------------------------------------

loc_FD1C:
	sub_byte_sec spr_x_pos_203, #8
	sub_byte_sec spr_x_pos_207, #8
	JMP	locret_FD52
; ---------------------------------------------------------------------------

loc_FD31:
	IF_A_NOT_EQUAL_CMP_ADDR spr_x_pos_203, #$F8, loc_FD40
	set byte_43E, #1
	JMP	locret_FD52
; ---------------------------------------------------------------------------

loc_FD40:
	ADD_BYTE_TO_BYTE_CLC spr_x_pos_203, #8
	ADD_BYTE_TO_BYTE_CLC spr_x_pos_207, #8

locret_FD52:
	RTS
; End of function sub_FD0A

; =============== S U B	R O U T	I N E =======================================

NMI_FD53:
	PHP
	PHA
	x_to_stack
	y_to_stack
	IF_A_EQUAL_CMP_ADDR bank_switch_flag_6C, #$88, loc_FD62
	JMP	loc_FD93
; ---------------------------------------------------------------------------

loc_FD62:
	set bank_switch_flag_6C, #$EE 
	IF_A_NOT_EQUAL sprite_type_306, battle_screen_update_FD6E
	JSR	hide_sprites_FCF5

battle_screen_update_FD6E:
	set _PPU_OAM_DMA, #2
	JSR	ppu_upset_data_FDCB
	JSR	ppu_update_FE20
	JSR	input_update_FE39
	IF_A_NOT_EQUAL_CMP_ADDR sprite_type_306, #1, music_update_FD89
	JSR	sub_FD0A
	JSR	scroll_update_FED6

music_update_FD89:
	JSR	sub_FE9C
	JSR	apu_update_music_FF2E
	set bank_switch_flag_6C, #$88 

loc_FD93:
	IF_A_EQUAL byte_432, next_frame_FD9B
	DEC	byte_432

next_frame_FD9B:
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
	IF_A_EQUAL frame_render_count_350, stack_reset_FDC4
	DEC	frame_render_count_350

stack_reset_FDC4:
	from_stack_to_y
	from_stack_to_x
	PLA
	PLP

return_FDCA:
	RTI
; End of function NMI_FD53

; =============== S U B	R O U T	I N E =======================================

ppu_upset_data_FDCB:
	IF_A_NOT_EQUAL has_ppu_data_to_upload_6F, loc_FDD0
	RTS
; ---------------------------------------------------------------------------

loc_FDD0:
	IF_A_EQUAL ppu_data_70, loc_FE1B
	STA	ppu_fld0_x_6D
	LDX	#1

loc_FDD8:
	load_a_masked {ppu_data_70,X}, #$80 
	BEQ	loc_FDEC
	or_byte ppu_ctrl_31F, #4
	STA	_PPU_CTRL
	JMP	loc_FDF7
; ---------------------------------------------------------------------------

loc_FDEC:
	and_byte ppu_ctrl_31F, #$FB 
	STA	_PPU_CTRL

loc_FDF7:
	load_a_masked {ppu_data_70,X}, #$7F 
	STA	ppu_fld1_y_6E
	INX
	set_inx _PPU_ADDR, {ppu_data_70,X}
	set _PPU_ADDR, {ppu_data_70,X}

loc_FE09:
	INX
	set _PPU_DATA, {ppu_data_70,X}
	DEC	ppu_fld1_y_6E
	BNE	loc_FE09
	DEC	ppu_fld0_x_6D
	BEQ	loc_FE1B
	INX
	JMP	loc_FDD8
; ---------------------------------------------------------------------------

loc_FE1B:
	set has_ppu_data_to_upload_6F, #0
	RTS
; End of function ppu_upset_data_FDCB

; =============== S U B	R O U T	I N E =======================================

ppu_update_FE20:
	set _PPU_CTRL, ppu_ctrl_31F
	set _PPU_MASK, ppu_mask_320
	set _PPU_SCROLL, ppu_scroll_x_304
	set _PPU_SCROLL, ppu_scroll_y_305
	RTS
; End of function ppu_update_FE20

; =============== S U B	R O U T	I N E =======================================

input_update_FE39:
	y_to_stack
	y_to_stack
	JSR	read_pad0_FE51
	JSR	input_sub_FE71
	LDA	input_pressed_34A
	ORA	input_unk_34B
	STA	input_unk_349
	from_stack_to_x
	from_stack_to_y
	RTS
; End of function input_update_FE39

; =============== S U B	R O U T	I N E =======================================

read_pad0_FE51:
	LDX	#1
	STX	_PAD0_REG
	DEX
	STX	_PAD0_REG
	LDA	#0
	LDY	#8

loc_FE5E:
	PHA
	set input_reg0_34E, {_PAD0_REG,X}
	DIV_BYTE_BY_2 input_reg0_34E
	PLA
	ROL	A
	DEY
	BNE	loc_FE5E
	STA	input_reg1_347,X
	RTS
; End of function read_pad0_FE51

; =============== S U B	R O U T	I N E =======================================

input_sub_FE71:
	LDX	#0
	LDA	input_reg1_347,X
	EOR	input_unk_34C,X
	AND	input_reg1_347,X
	STA	input_pressed_34A,X
	set {input_unk_34C,X}, {input_reg1_347,X}
	RTS
; End of function input_sub_FE71

; =============== S U B	R O U T	I N E =======================================

ppu_update_ctrl_mask_FE86:
	set _PPU_CTRL, ppu_ctrl_31F
	set _PPU_MASK, ppu_mask_320
	RTS
; End of function ppu_update_ctrl_mask_FE86

; =============== S U B	R O U T	I N E =======================================

ppu_reset_ctrl_mask_FE93:
	set2 _PPU_CTRL, _PPU_MASK, #0
	RTS
; End of function ppu_reset_ctrl_mask_FE93

; =============== S U B	R O U T	I N E =======================================

sub_FE9C:
	INC	byte_353
	IF_A_LOWER_CMP_ADDR byte_353, #$19, loc_FEA7
	RTS
; ---------------------------------------------------------------------------

loc_FEA7:
	set byte_353, #0
	IF_A_NOT_EQUAL_CMP_ADDR byte_354, #0, loc_FED2
	IF_A_NOT_EQUAL_CMP_ADDR byte_355, #0, loc_FECA
	IF_A_NOT_EQUAL_CMP_ADDR byte_356, #0, loc_FEC2
	RTS
; ---------------------------------------------------------------------------

loc_FEC2:
	DEC	byte_356
	set byte_355, #$A

loc_FECA:
	DEC	byte_355
	set byte_354, #$A

loc_FED2:
	DEC	byte_354
	RTS
; End of function sub_FE9C

; =============== S U B	R O U T	I N E =======================================

scroll_update_FED6:
	INC	scroll_offset_x_479
	IF_A_GREATER_CMP_ADDR scroll_offset_x_479, #$A, locret_FF2D
	xor_byte scroll_offset_y_47A, #$80 
	and_byte scroll_offset_y_47A, #$FE 
	load_a_masked scroll_offset_y_47A, #$7F 
	IF_A_EQUAL_CMP #0, locret_FF2D
	a_to_stack scroll_offset_y_47A
	load_a_masked scroll_offset_y_47A, #$80 
	IF_A_EQUAL_CMP #0, loc_FF0E
	set ppu_scroll_y_305, #0
	JMP	loc_FF20
; ---------------------------------------------------------------------------

loc_FF0E:
	and_byte scroll_offset_y_47A, #$7F 
	ADD_BYTE_TO_BYTE_CLC ppu_scroll_y_305, scroll_offset_y_47A

loc_FF20:
	from_stack_to_a scroll_offset_y_47A
	sub_byte_sec scroll_offset_y_47A, #2

locret_FF2D:
	RTS
; End of function scroll_update_FED6

; =============== S U B	R O U T	I N E =======================================

apu_update_music_FF2E:
	a_to_stack bank_command_346
	a_to_stack bank_to_344
	a_to_stack bank_from_343
	
	set bank_to_344, #banks_13
	set bank_command_346, #$88 
	JSR	bank_switch_8000

	from_stack_to_a bank_from_343
	from_stack_to_a bank_to_344
	from_stack_to_a bank_command_346
	RTS
; End of function apu_update_music_FF2E