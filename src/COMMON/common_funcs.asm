; =============== S U B	R O U T	I N E =======================================


wait_for_ppu_data_upload_FC8C:
		LDA	#1
		STA	has_ppu_data_to_upload_6F

loc_FC90:				
		LDA	has_ppu_data_to_upload_6F
		BNE	loc_FC90
		RTS
; End of function wait_for_ppu_data_upload_FC8C


; =============== S U B	R O U T	I N E =======================================


wait_for_vblank_FC95:			
					; wait_for_vblank_FC95+3j
		LDA	_PPU_STATUS
		BMI	wait_for_vblank_FC95

loc_FC9A:				
		LDA	_PPU_STATUS
		BPL	loc_FC9A
		RTS
; End of function wait_for_vblank_FC95


; =============== S U B	R O U T	I N E =======================================


wait_for_frame_rendered_FCA0:		
					; gameplay_update_88C2-1F6p ...
		LDA	#1
		STA	frame_render_count_350

loop_FCA5:				
		LDA	frame_render_count_350
		BNE	loop_FCA5
		RTS
; End of function wait_for_frame_rendered_FCA0


; =============== S U B	R O U T	I N E =======================================


wait_any_input_65k_cycles_FCAB:		
					; gameplay_update_88C2-32Ep ...
		LDY	#0

loc_FCAD:				
		LDX	#0

loc_FCAF:				
		LDA	input_reg1_347
		CMP	#0
		BNE	exit_FCBC
		INX
		BNE	loc_FCAF
		INY
		BNE	loc_FCAD

exit_FCBC:				
		RTS
; End of function wait_any_input_65k_cycles_FCAB


; =============== S U B	R O U T	I N E =======================================


wait_for_a_pressed_FCBD:		
		LDA	input_pressed_34A
		CMP	#a_80
		BNE	wait_for_a_pressed_FCBD
		RTS
; End of function wait_for_a_pressed_FCBD


; =============== S U B	R O U T	I N E =======================================


wait_for_b_pressed_FCC5:		
		LDA	input_pressed_34A
		CMP	#b_40
		BNE	wait_for_b_pressed_FCC5
		RTS
; End of function wait_for_b_pressed_FCC5


; =============== S U B	R O U T	I N E =======================================


wait_for_any_input_FCCD:		
		LDA	input_pressed_34A
		CMP	#0
		BEQ	wait_for_any_input_FCCD
		RTS
; End of function wait_for_any_input_FCCD


; =============== S U B	R O U T	I N E =======================================


wait_for_n_65k_cycles_FCD5:		
					; gameplay_update_88C2+1EBp ...
		PHA
		JSR	wait_65k_cycles_FCE0
		PLA
		SEC
		SBC	#1
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
		PLA
		TAY
		PLA
		TAX
		PLA
		RTS
; End of function wait_65k_cycles_FCE0


; =============== S U B	R O U T	I N E =======================================


nmi_sub_FCF5:				
		LDA	#$F0 
		STA	byte_218
		STA	byte_21C
		STA	byte_220
		STA	byte_224
		STA	byte_2E8
		STA	byte_2EC
		RTS
; End of function nmi_sub_FCF5


; =============== S U B	R O U T	I N E =======================================


sub_FD0A:				
		LDA	byte_43E
		BEQ	loc_FD31
		LDA	byte_203
		BNE	loc_FD1C
		LDA	#0
		STA	byte_43E
		JMP	locret_FD52
; ---------------------------------------------------------------------------

loc_FD1C:				
		LDA	byte_203
		SEC
		SBC	#8
		STA	byte_203
		LDA	byte_207
		SEC
		SBC	#8
		STA	byte_207
		JMP	locret_FD52
; ---------------------------------------------------------------------------

loc_FD31:				
		LDA	byte_203
		CMP	#$F8 
		BNE	loc_FD40
		LDA	#1
		STA	byte_43E
		JMP	locret_FD52
; ---------------------------------------------------------------------------

loc_FD40:				
		LDA	byte_203
		CLC
		ADC	#8
		STA	byte_203
		LDA	byte_207
		CLC
		ADC	#8
		STA	byte_207

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
		LDA	bank_switch_flag_6C
		CMP	#$88 
		BEQ	loc_FD62
		JMP	loc_FD93
; ---------------------------------------------------------------------------

loc_FD62:				
		LDA	#$EE 
		STA	bank_switch_flag_6C
		LDA	sprite_type_306
		BNE	battle_screen_update_FD6E
		JSR	nmi_sub_FCF5

battle_screen_update_FD6E:		
		LDA	#2
		STA	_PPU_OAM_DMA
		JSR	ppu_upload_data_FDCB
		JSR	ppu_update_FE20
		JSR	input_update_FE39
		LDA	sprite_type_306
		CMP	#1
		BNE	music_update_FD89
		JSR	sub_FD0A
		JSR	scroll_update_FED6

music_update_FD89:			
		JSR	sub_FE9C
		JSR	apu_update_music_FF2E
		LDA	#$88 
		STA	bank_switch_flag_6C

loc_FD93:				
		LDA	byte_432
		BEQ	next_frame_FD9B
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
		LDA	frame_render_count_350
		BEQ	stack_reset_FDC4
		DEC	frame_render_count_350

stack_reset_FDC4:			
		PLA
		TAY
		PLA
		TAX
		PLA
		PLP

return_FDCA:				
		RTI
; End of function NMI_FD53


; =============== S U B	R O U T	I N E =======================================


ppu_upload_data_FDCB:			
		LDA	has_ppu_data_to_upload_6F
		BNE	loc_FDD0
		RTS
; ---------------------------------------------------------------------------

loc_FDD0:				
		LDA	ppu_data_70
		BEQ	loc_FE1B
		STA	ppu_fld0_x_6D
		LDX	#1

loc_FDD8:				
		LDA	ppu_data_70,X
		AND	#$80 
		BEQ	loc_FDEC
		LDA	ppu_ctrl_31F
		ORA	#4
		STA	ppu_ctrl_31F
		STA	_PPU_CTRL
		JMP	loc_FDF7
; ---------------------------------------------------------------------------

loc_FDEC:				
		LDA	ppu_ctrl_31F
		AND	#$FB 
		STA	ppu_ctrl_31F
		STA	_PPU_CTRL

loc_FDF7:				
		LDA	ppu_data_70,X
		AND	#$7F 
		STA	ppu_fld1_y_6E
		INX
		LDA	ppu_data_70,X
		STA	_PPU_ADDR
		INX
		LDA	ppu_data_70,X
		STA	_PPU_ADDR

loc_FE09:				
		INX
		LDA	ppu_data_70,X
		STA	_PPU_DATA
		DEC	ppu_fld1_y_6E
		BNE	loc_FE09
		DEC	ppu_fld0_x_6D
		BEQ	loc_FE1B
		INX
		JMP	loc_FDD8
; ---------------------------------------------------------------------------

loc_FE1B:				
					; ppu_upload_data_FDCB+4Aj
		LDA	#0
		STA	has_ppu_data_to_upload_6F
		RTS
; End of function ppu_upload_data_FDCB


; =============== S U B	R O U T	I N E =======================================


ppu_update_FE20:			
		LDA	ppu_ctrl_31F
		STA	_PPU_CTRL
		LDA	ppu_mask_320
		STA	_PPU_MASK
		LDA	ppu_scroll_x_304
		STA	_PPU_SCROLL
		LDA	ppu_scroll_y_305
		STA	_PPU_SCROLL
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
		PLA
		TAX
		PLA
		TAY
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
		LDA	_PAD0_REG,X
		STA	input_reg0_34E
		LSR	input_reg0_34E
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
		LDA	input_reg1_347,X
		STA	input_unk_34C,X
		RTS
; End of function input_sub_FE71


; =============== S U B	R O U T	I N E =======================================


ppu_update_ctrl_mask_FE86:		
		LDA	ppu_ctrl_31F
		STA	_PPU_CTRL
		LDA	ppu_mask_320
		STA	_PPU_MASK
		RTS
; End of function ppu_update_ctrl_mask_FE86


; =============== S U B	R O U T	I N E =======================================


ppu_reset_ctrl_mask_FE93:		
		LDA	#0
		STA	_PPU_CTRL
		STA	_PPU_MASK
		RTS
; End of function ppu_reset_ctrl_mask_FE93


; =============== S U B	R O U T	I N E =======================================


sub_FE9C:				
		INC	byte_353
		LDA	byte_353
		CMP	#$19
		BCS	loc_FEA7
		RTS
; ---------------------------------------------------------------------------

loc_FEA7:				
		LDA	#0
		STA	byte_353
		LDA	byte_354
		CMP	#0
		BNE	loc_FED2
		LDA	byte_355
		CMP	#0
		BNE	loc_FECA
		LDA	byte_356
		CMP	#0
		BNE	loc_FEC2
		RTS
; ---------------------------------------------------------------------------

loc_FEC2:				
		DEC	byte_356
		LDA	#$A
		STA	byte_355

loc_FECA:				
		DEC	byte_355
		LDA	#$A
		STA	byte_354

loc_FED2:				
		DEC	byte_354
		RTS
; End of function sub_FE9C


; =============== S U B	R O U T	I N E =======================================


scroll_update_FED6:			
		INC	scroll_offset_x_479
		LDA	scroll_offset_x_479
		CMP	#$A
		BCC	locret_FF2D
		LDA	scroll_offset_y_47A
		EOR	#$80 
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		AND	#$FE 
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		AND	#$7F 
		CMP	#0
		BEQ	locret_FF2D
		LDA	scroll_offset_y_47A
		PHA
		LDA	scroll_offset_y_47A
		AND	#$80 
		CMP	#0
		BEQ	loc_FF0E
		LDA	#0
		STA	ppu_scroll_y_305
		JMP	loc_FF20
; ---------------------------------------------------------------------------

loc_FF0E:				
		LDA	scroll_offset_y_47A
		AND	#$7F 
		STA	scroll_offset_y_47A
		LDA	ppu_scroll_y_305
		CLC
		ADC	scroll_offset_y_47A
		STA	ppu_scroll_y_305

loc_FF20:				
		PLA
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		SEC
		SBC	#2
		STA	scroll_offset_y_47A

locret_FF2D:				
					; scroll_update_FED6+21j
		RTS
; End of function scroll_update_FED6


; =============== S U B	R O U T	I N E =======================================


apu_update_music_FF2E:			
		LDA	bank_command_346
		PHA
		LDA	bank_to_344
		PHA
		LDA	bank_from_343
		PHA
		LDA	#banks_13
		STA	bank_to_344
		LDA	#$88 
		STA	bank_command_346
		JSR	bank_switch_8000
		PLA
		STA	bank_from_343
		PLA
		STA	bank_to_344
		PLA
		STA	bank_command_346
		RTS
; End of function apu_update_music_FF2E