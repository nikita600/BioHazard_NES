; =============== S U B	R O U T	I N E =======================================

wait_for_ppu_data_upload_FC8C:
	set has_ppu_data_to_upload_6F, #1

loc_FC90:
	if_a_not_equal has_ppu_data_to_upload_6F, loc_FC90
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
	if_a_not_equal frame_render_count_350, loop_FCA5
	RTS
; End of function wait_for_frame_rendered_FCA0

; =============== S U B	R O U T	I N E =======================================

wait_any_input_65k_cycles_FCAB:

	LDY	#0

loc_FCAD:
	LDX	#0

loc_FCAF:
	if_a_not_equal_cmp_addr input_reg1_347, #0, exit_FCBC
	INX
	BNE	loc_FCAF
	INY
	BNE	loc_FCAD

exit_FCBC:
	RTS
; End of function wait_any_input_65k_cycles_FCAB

; =============== S U B	R O U T	I N E =======================================

wait_for_a_pressed_FCBD:
	if_a_not_equal_cmp_addr input_pressed_34A, #a_80, wait_for_a_pressed_FCBD
	RTS
; End of function wait_for_a_pressed_FCBD

; =============== S U B	R O U T	I N E =======================================

wait_for_b_pressed_FCC5:
	if_a_not_equal_cmp_addr input_pressed_34A, #b_40, wait_for_b_pressed_FCC5
	RTS
; End of function wait_for_b_pressed_FCC5

; =============== S U B	R O U T	I N E =======================================

wait_for_any_input_FCCD:
	if_a_equal_cmp_addr input_pressed_34A, #0, wait_for_any_input_FCCD
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
	TXA
	PHA
	TYA
	PHA

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

nmi_sub_FCF5:
	set byte_218, #$F0 
	STA	byte_21C
	STA	byte_220
	STA	byte_224
	STA	byte_2E8
	STA	byte_2EC
	RTS
; End of function nmi_sub_FCF5

; =============== S U B	R O U T	I N E =======================================

sub_FD0A:
	if_a_equal byte_43E, loc_FD31
	if_a_not_equal byte_203, loc_FD1C
	set byte_43E, #0
	JMP	locret_FD52
; ---------------------------------------------------------------------------

loc_FD1C:
	sub_byte_sec byte_203, #8
	sub_byte_sec byte_207, #8
	JMP	locret_FD52
; ---------------------------------------------------------------------------

loc_FD31:
	if_a_not_equal_cmp_addr byte_203, #$F8, loc_FD40
	set byte_43E, #1
	JMP	locret_FD52
; ---------------------------------------------------------------------------

loc_FD40:
	add_to_byte_clc byte_203, #8
	add_to_byte_clc byte_207, #8

locret_FD52:
	RTS
; End of function sub_FD0A

; =============== S U B	R O U T	I N E =======================================

NMI_FD53:
	PHP
	PHA
	TXA
	PHA
	TYA
	PHA
	if_a_equal_cmp_addr bank_switch_flag_6C, #$88, loc_FD62
	JMP	loc_FD93
; ---------------------------------------------------------------------------

loc_FD62:
	set bank_switch_flag_6C, #$EE 
	if_a_not_equal sprite_type_306, battle_screen_update_FD6E
	JSR	nmi_sub_FCF5

battle_screen_update_FD6E:
	set _PPU_OAM_DMA, #2
	JSR	ppu_upset_data_FDCB
	JSR	ppu_update_FE20
	JSR	input_update_FE39
	if_a_not_equal_cmp_addr sprite_type_306, #1, music_update_FD89
	JSR	sub_FD0A
	JSR	scroll_update_FED6

music_update_FD89:
	JSR	sub_FE9C
	JSR	apu_update_music_FF2E
	set bank_switch_flag_6C, #$88 

loc_FD93:
	if_a_equal byte_432, next_frame_FD9B
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
	if_a_equal frame_render_count_350, stack_reset_FDC4
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
	if_a_not_equal has_ppu_data_to_upload_6F, loc_FDD0
	RTS
; ---------------------------------------------------------------------------

loc_FDD0:
	if_a_equal ppu_data_70, loc_FE1B
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
	TYA
	PHA
	TYA
	PHA
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
	div_byte_by_2 input_reg0_34E
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
	set _PPU_CTRL, #0
	STA	_PPU_MASK
	RTS
; End of function ppu_reset_ctrl_mask_FE93

; =============== S U B	R O U T	I N E =======================================

sub_FE9C:
	INC	byte_353
	if_a_lower_cmp_addr byte_353, #$19, loc_FEA7
	RTS
; ---------------------------------------------------------------------------

loc_FEA7:
	set byte_353, #0
	if_a_not_equal_cmp_addr byte_354, #0, loc_FED2
	if_a_not_equal_cmp_addr byte_355, #0, loc_FECA
	if_a_not_equal_cmp_addr byte_356, #0, loc_FEC2
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
	if_a_greater_cmp_addr scroll_offset_x_479, #$A, locret_FF2D
	xor_byte scroll_offset_y_47A, #$80 
	and_byte scroll_offset_y_47A, #$FE 
	load_a_masked scroll_offset_y_47A, #$7F 
	if_a_equal_cmp #0, locret_FF2D
	to_stack scroll_offset_y_47A
	load_a_masked scroll_offset_y_47A, #$80 
	if_a_equal_cmp #0, loc_FF0E
	set ppu_scroll_y_305, #0
	JMP	loc_FF20
; ---------------------------------------------------------------------------

loc_FF0E:
	and_byte scroll_offset_y_47A, #$7F 
	add_to_byte_clc ppu_scroll_y_305, scroll_offset_y_47A

loc_FF20:
	from_stack scroll_offset_y_47A
	sub_byte_sec scroll_offset_y_47A, #2

locret_FF2D:

	RTS
; End of function scroll_update_FED6

; =============== S U B	R O U T	I N E =======================================

apu_update_music_FF2E:
	to_stack bank_command_346
	to_stack bank_to_344
	to_stack bank_from_343
	
	set bank_to_344, #banks_13
	set bank_command_346, #$88 
	JSR	bank_switch_8000

	from_stack bank_from_343
	from_stack bank_to_344
	from_stack bank_command_346
	RTS
; End of function apu_update_music_FF2E