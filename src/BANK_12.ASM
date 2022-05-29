;BANK_12 (Code + Music)
;* =  $8000

	.include "includes/ram.inc"
	.include "includes/macros.inc"

; =============== S U B	R O U T	I N E =======================================

	BANK_SWITCH_FUNC switch_case_8035

switch_case_8035:
	SET bank_prev_345, bank_to_344
	SET bank_switch_flag_6C, #$88 
	IF_A_EQUAL_CMP_ADDR bank_command_346, #$FF, locret_12805A
	MULT_A_BY_2
	TAX
	SET_INX ptr_0, {CommandPtrs_12805B,X}
	SET ptr_1, {CommandPtrs_12805B,X}
	a_to_stack bank_from_343
	JMP	(ptr_0)
; ---------------------------------------------------------------------------

locret_12805A:
	RTS
; End of function bank_switch_func

; ---------------------------------------------------------------------------
CommandPtrs_12805B:
	.WORD command_0_1280FB 
	.WORD command_1_128101
	.WORD command_2_128107
	.WORD command_3_12810D
	.WORD command_4_128113
	.WORD command_5_128119
	.WORD command_6_12811F
	.WORD command_7_128125
	.WORD command_8_12812B
	.WORD command_9_check_level_128131
	.WORD command_A_128137
	.WORD command_B_open_inventory_12813D
	.WORD command_C_128143
	.WORD command_D_open_item_128149
	.WORD command_E_load_game_12814F
	.WORD command_F_128155
	.WORD command_10_12815B
	.WORD command_11_close_inventory_128161
	.WORD loc_128167
	.WORD loc_12816D
	.WORD loc_128173
	.WORD loc_128179
	.WORD loc_12817F
	.WORD command_17_player_update_128185
	.WORD command_18_12818B
	.WORD loc_128191
	.WORD loc_128197
	.WORD loc_12819D
	.WORD loc_1281A3
	.WORD command_1D_1281A9
	.WORD loc_1281AF
	.WORD loc_1281B5
	.WORD command_20_1281BB
	.WORD loc_1281C1
	.WORD loc_1281C7
	.WORD loc_1281CD
	.WORD loc_1281D3
	.WORD loc_1281D9
	.WORD loc_1281DF
	.WORD loc_1281E5
	.WORD command_28_1281EB
	.WORD command_29_open_level_1281F1
	.WORD command_2A_1281F7
	.WORD command_2B_1281FD
	.WORD command_2C_128203
	.WORD loc_128209
	.WORD loc_12820F
	.WORD loc_128215
	.WORD command_30_12821B
	.WORD loc_128221
	.WORD loc_128227
	.WORD loc_12822D
	.WORD loc_128233
	.WORD loc_128239
	.WORD loc_12823F
	.WORD show_tree_screen_c36_128245
	.WORD loc_12824B
	.WORD loc_128251
	.WORD loc_128257
	.WORD loc_12825D
	.WORD loc_128263
	.WORD loc_128269
	.WORD loc_12826F
	.WORD loc_128275
	.WORD loc_12827B
	.WORD command_40_128281
	.WORD loc_128287
	.WORD loc_12828D
	.WORD loc_128293
	.WORD command_44_battle_1282CA
	.WORD loc_1282D0
	.WORD command_46_1282D6
	.WORD loc_1282DC
	.WORD command_48_take_item_1282E2
	.WORD loc_1282E8
	.WORD return_1282EE
	.WORD return_1282EE
	.WORD return_1282EE
	.WORD return_1282EE
	.WORD return_1282EE

; =============== S U B	R O U T	I N E =======================================

command_0_1280FB:
	JSR	sub_12B1B0
	JMP	return_1282EE
; ---------------------------------------------------------------------------

command_1_128101:
	JSR	sub_12B1E3
	JMP	return_1282EE
; ---------------------------------------------------------------------------

command_2_128107:
	JSR	sub_12B225
	JMP	return_1282EE
; ---------------------------------------------------------------------------

command_3_12810D:
	JSR	sub_12B267
	JMP	return_1282EE
; ---------------------------------------------------------------------------

command_4_128113:
	JSR	sub_12B2A9
	JMP	return_1282EE
; ---------------------------------------------------------------------------

command_5_128119:
	JSR	sub_12B2EB
	JMP	return_1282EE
; ---------------------------------------------------------------------------

command_6_12811F:
	JSR	sub_12B32D
	JMP	return_1282EE
; ---------------------------------------------------------------------------

command_7_128125:
	JSR	sub_12B36F
	JMP	return_1282EE
; ---------------------------------------------------------------------------

command_8_12812B:
	JSR	sub_12B404
	JMP	return_1282EE
; ---------------------------------------------------------------------------

command_9_check_level_128131:
	JSR	entry_idx_handler_unk_12AA6D
	JMP	return_1282EE
; ---------------------------------------------------------------------------

command_A_128137:
	JSR	sub_12B441
	JMP	return_1282EE
; ---------------------------------------------------------------------------

command_B_open_inventory_12813D:
	JSR	sub_12D4C6
	JMP	return_1282EE
; ---------------------------------------------------------------------------

command_C_128143:
	JSR	sub_12EF66
	JMP	return_1282EE
; ---------------------------------------------------------------------------

command_D_open_item_128149:
	JSR	sub_12D58C
	JMP	return_1282EE
; ---------------------------------------------------------------------------

command_E_load_game_12814F:
	JSR	com_E_load_game_12CD30
	JMP	return_1282EE
; ---------------------------------------------------------------------------

command_F_128155:
	JSR	sub_12BEB5
	JMP	return_1282EE
; ---------------------------------------------------------------------------

command_10_12815B:
	JSR	sub_12BEFA
	JMP	return_1282EE
; ---------------------------------------------------------------------------

command_11_close_inventory_128161:
	JSR	sub_12ACDB
	JMP	return_1282EE
; ---------------------------------------------------------------------------

loc_128167:
	JSR	sub_12BF32
	JMP	return_1282EE
; ---------------------------------------------------------------------------

loc_12816D:
	JSR	sub_12BF52
	JMP	return_1282EE
; ---------------------------------------------------------------------------

loc_128173:
	JSR	sub_12BF79
	JMP	return_1282EE
; ---------------------------------------------------------------------------

loc_128179:
	JSR	sub_12BF89
	JMP	return_1282EE
; ---------------------------------------------------------------------------

loc_12817F:
	JSR	sub_12BF99
	JMP	return_1282EE
; ---------------------------------------------------------------------------

command_17_player_update_128185:
	JSR	com_17_player_update_12A9C4
	JMP	return_1282EE
; ---------------------------------------------------------------------------

command_18_12818B:
	JSR	sub_12BFDF
	JMP	return_1282EE
; ---------------------------------------------------------------------------

loc_128191:
	JSR	sub_12C022
	JMP	return_1282EE
; ---------------------------------------------------------------------------

loc_128197:
	JSR	sub_12C096
	JMP	return_1282EE
; ---------------------------------------------------------------------------

loc_12819D:
	JSR	sub_12C0AE
	JMP	return_1282EE
; ---------------------------------------------------------------------------

loc_1281A3:
	JSR	sub_12C0CE
	JMP	return_1282EE
; ---------------------------------------------------------------------------

command_1D_1281A9:
	JSR	sub_12C119
	JMP	return_1282EE
; ---------------------------------------------------------------------------

loc_1281AF:
	JSR	sub_12C1F2
	JMP	return_1282EE
; ---------------------------------------------------------------------------

loc_1281B5:
	JSR	sub_12C221
	JMP	return_1282EE
; ---------------------------------------------------------------------------

command_20_1281BB:
	JSR	sub_12C25E
	JMP	return_1282EE
; ---------------------------------------------------------------------------

loc_1281C1:
	JSR	sub_12C27E
	JMP	return_1282EE
; ---------------------------------------------------------------------------

loc_1281C7:
	JSR	sub_12C2BF
	JMP	return_1282EE
; ---------------------------------------------------------------------------

loc_1281CD:
	JSR	sub_12C2D6
	JMP	return_1282EE
; ---------------------------------------------------------------------------

loc_1281D3:
	JSR	sub_12F07D
	JMP	return_1282EE
; ---------------------------------------------------------------------------

loc_1281D9:
	JSR	sub_12C324
	JMP	return_1282EE
; ---------------------------------------------------------------------------

loc_1281DF:
	JSR	nullsub_3
	JMP	return_1282EE
; ---------------------------------------------------------------------------

loc_1281E5:
	JSR	sub_12C373
	JMP	return_1282EE
; ---------------------------------------------------------------------------

command_28_1281EB:
	JSR	sub_12C393
	JMP	return_1282EE
; ---------------------------------------------------------------------------

command_29_open_level_1281F1:
	JSR	com_29_start_new_game_12A646
	JMP	return_1282EE
; ---------------------------------------------------------------------------

command_2A_1281F7:
	JSR	sub_12C3B8
	JMP	return_1282EE
; ---------------------------------------------------------------------------

command_2B_1281FD:
	JSR	sub_12C3BE
	JMP	return_1282EE
; ---------------------------------------------------------------------------

command_2C_128203:
	JSR	sub_12C413
	JMP	return_1282EE
; ---------------------------------------------------------------------------

loc_128209:
	JSR	sub_12C438
	JMP	return_1282EE
; ---------------------------------------------------------------------------

loc_12820F:
	JSR	sub_12C43F
	JMP	return_1282EE
; ---------------------------------------------------------------------------

loc_128215:
	JSR	sub_12C45F
	JMP	return_1282EE
; ---------------------------------------------------------------------------

command_30_12821B:
	JSR	sub_12C46C
	JMP	return_1282EE
; ---------------------------------------------------------------------------

loc_128221:
	JSR	sub_12C4AE
	JMP	return_1282EE
; ---------------------------------------------------------------------------

loc_128227:
	JSR	sub_12C4D3
	JMP	return_1282EE
; ---------------------------------------------------------------------------

loc_12822D:
	JSR	sub_12C4F3
	JMP	return_1282EE
; ---------------------------------------------------------------------------

loc_128233:
	JSR	sub_12C51A
	JMP	return_1282EE
; ---------------------------------------------------------------------------

loc_128239:
	JSR	sub_12C541
	JMP	return_1282EE
; ---------------------------------------------------------------------------

loc_12823F:
	JSR	sub_12C568
	JMP	return_1282EE
; ---------------------------------------------------------------------------

show_tree_screen_c36_128245:
	JSR	show_tree_screen_12C588
	JMP	return_1282EE
; ---------------------------------------------------------------------------

loc_12824B:
	JSR	sub_12C5F0
	JMP	return_1282EE
; ---------------------------------------------------------------------------

loc_128251:
	JSR	sub_12C637
	JMP	return_1282EE
; ---------------------------------------------------------------------------

loc_128257:
	JSR	sub_12C694
	JMP	return_1282EE
; ---------------------------------------------------------------------------

loc_12825D:
	JSR	sub_12C6B9
	JMP	return_1282EE
; ---------------------------------------------------------------------------

loc_128263:
	JSR	sub_12C6DE
	JMP	return_1282EE
; ---------------------------------------------------------------------------

loc_128269:
	JSR	sub_12C700
	JMP	return_1282EE
; ---------------------------------------------------------------------------

loc_12826F:
	JSR	sub_12C755
	JMP	return_1282EE
; ---------------------------------------------------------------------------

loc_128275:
	JSR	sub_12C792
	JMP	return_1282EE
; ---------------------------------------------------------------------------

loc_12827B:
	JSR	sub_12C7CB
	JMP	return_1282EE
; ---------------------------------------------------------------------------

command_40_128281:
	JSR	sub_12C7DE
	JMP	return_1282EE
; ---------------------------------------------------------------------------

loc_128287:
	JSR	sub_12C3EE
	JMP	return_1282EE
; ---------------------------------------------------------------------------

loc_12828D:
	JSR	sub_12C3C9
	JMP	return_1282EE
; ---------------------------------------------------------------------------

loc_128293:
	a_to_stack apu_unk_76C
	SET apu_unk_76C, #5

exec_b13_c5_12829C:
	EXECUTE_BANK_COMMAND #5, #banks_13, #$12

loc_1282AE:
	JSR	sub_128955
	from_stack_to_a apu_unk_76C

exec_b13_c5_1282B5:
	EXECUTE_BANK_COMMAND #5, #banks_13, #$12
	JMP	return_1282EE
; ---------------------------------------------------------------------------

command_44_battle_1282CA:
	JSR	show_intro_screen_12CB58
	JMP	return_1282EE
; ---------------------------------------------------------------------------

loc_1282D0:
	JSR	sub_12873A
	JMP	return_1282EE
; ---------------------------------------------------------------------------

command_46_1282D6:
	JSR	comm_46_12CCE3
	JMP	return_1282EE
; ---------------------------------------------------------------------------

loc_1282DC:
	JSR	sub_128531
	JMP	return_1282EE
; ---------------------------------------------------------------------------

command_48_take_item_1282E2:
	JSR	comm_48_take_item_12CD1D
	JMP	return_1282EE
; ---------------------------------------------------------------------------

loc_1282E8:
	JSR	sub_12D21B
	JMP	return_1282EE
; ---------------------------------------------------------------------------

return_1282EE:
	from_stack_to_a bank_from_343
	RETURN_FROM_BANK_COMMAND
; End of function command_0_1280FB

; =============== S U B	R O U T	I N E =======================================

exec_b2_c1_128300:
	EXECUTE_BANK_COMMAND #1, #text_2, #$12
	RTS
; End of function exec_b2_c1_128300

; =============== S U B	R O U T	I N E =======================================

exec_b2_c3_128313:
	EXECUTE_BANK_COMMAND #3, #2, #$12
	RTS
; End of function exec_b2_c3_128313

; =============== S U B	R O U T	I N E =======================================

sub_128326:
	a_to_stack inv_itemPrev_idx_31D
	a_to_stack ppu_unk_byte_309
	a_to_stack tilemap_size_307
	SET byte_36E, #0
	SET inv_sprite_idx_31C, inv_itemPrev_idx_31D
	SET inv_itemPrev_idx_31D, #0
	SET byte_31E, sprite_secondByte_31B
	JSR	exec_b4_c2_1283A7
	from_stack_to_a tilemap_size_307
	from_stack_to_a ppu_unk_byte_309
	from_stack_to_a inv_itemPrev_idx_31D
	RTS
; End of function sub_128326

; =============== S U B	R O U T	I N E =======================================

sub_128358:
	a_to_stack inv_itemPrev_idx_31D
	a_to_stack ppu_unk_byte_309
	a_to_stack tilemap_size_307
	SET inv_sprite_idx_31C, inv_itemPrev_idx_31D
	SET inv_itemPrev_idx_31D, #0
	SET byte_31E, sprite_secondByte_31B

exec_b4_c3_128375:
	EXECUTE_BANK_COMMAND #3, #items_spr_4, #$12

loc_128387:
	from_stack_to_a tilemap_size_307
	from_stack_to_a ppu_unk_byte_309
	from_stack_to_a inv_itemPrev_idx_31D
	RTS
; End of function sub_128358

; =============== S U B	R O U T	I N E =======================================

exec_b1_c1_128394:
	EXECUTE_BANK_COMMAND #1, #sprites_1, #$12
	RTS
; End of function exec_b1_c1_128394

; =============== S U B	R O U T	I N E =======================================

exec_b4_c2_1283A7:
	EXECUTE_BANK_COMMAND #2, #items_spr_4, #$12
	RTS
; End of function exec_b4_c2_1283A7

; =============== S U B	R O U T	I N E =======================================

sub_1283BA:
	SET image_id_4A4, entry_idx_300
	SET image_offset_4A5, ppu_unk_byte_302
	SET ppu_prev_unk_4A6, ppu_unk_byte_303
	SET ppu_prev_scroll_x_unk_4A7, ppu_scroll_x_304
	SET ppu_prev_scroll_y_unk_4A8, ppu_scroll_y_305
	SET prev_sprite_type_4A9, sprite_type_306
	RTS
; End of function sub_1283BA

; =============== S U B	R O U T	I N E =======================================

exec_b2_c2_1283DF:
	EXECUTE_BANK_COMMAND #2, #text_2, #$12
	RTS
; End of function exec_b2_c2_1283DF

; =============== S U B	R O U T	I N E =======================================

exec_b2_c4_1283F2:
	EXECUTE_BANK_COMMAND #4, #text_2, #$12
	RTS
; End of function exec_b2_c4_1283F2

; =============== S U B	R O U T	I N E =======================================

exec_b2_c5_128405:
	EXECUTE_BANK_COMMAND #5, #text_2, #$12
	RTS
; End of function exec_b2_c5_128405

; =============== S U B	R O U T	I N E =======================================

exec_b0_c3_128418:
	EXECUTE_BANK_COMMAND #3, #code_0, #$12
	RTS
; End of function exec_b0_c3_128418

; =============== S U B	R O U T	I N E =======================================

exec_b0_c4_12842B:
	EXECUTE_BANK_COMMAND #4, #code_0, #$12
	RTS
; End of function exec_b0_c4_12842B

; =============== S U B	R O U T	I N E =======================================

exec_b0_c5_12843E:
	a_to_stack bank_from_343
	EXECUTE_BANK_COMMAND #5, #code_0, #$12
	from_stack_to_a bank_from_343
	RTS
; End of function exec_b0_c5_12843E

; =============== S U B	R O U T	I N E =======================================

exec_b0_c6_128459:
	a_to_stack bank_from_343
	EXECUTE_BANK_COMMAND #6, #code_0, #$12
	from_stack_to_a bank_from_343
	RTS
; End of function exec_b0_c6_128459

; =============== S U B	R O U T	I N E =======================================

exec_b0_c7_128474:
	a_to_stack bank_from_343
	EXECUTE_BANK_COMMAND #7, #code_0, #$12
	from_stack_to_a bank_from_343
	RTS
; End of function exec_b0_c7_128474

; =============== S U B	R O U T	I N E =======================================

exec_b0_c8_12848F:
	a_to_stack bank_from_343
	EXECUTE_BANK_COMMAND #8, #code_0, #$12
	from_stack_to_a bank_from_343
	RTS
; End of function exec_b0_c8_12848F

; =============== S U B	R O U T	I N E =======================================

exec_b0_c9_1284AA:
	a_to_stack bank_from_343
	EXECUTE_BANK_COMMAND #9, #code_0, #$12
	from_stack_to_a bank_from_343
	RTS
; End of function exec_b0_c9_1284AA

; =============== S U B	R O U T	I N E =======================================

exec_b0_cA_1284C5:
	a_to_stack bank_from_343
	EXECUTE_BANK_COMMAND #$A, #code_0, #$12
	from_stack_to_a bank_from_343
	RTS
; End of function exec_b0_cA_1284C5

; =============== S U B	R O U T	I N E =======================================

exec_b0_cB_1284E0:
	a_to_stack bank_from_343
	EXECUTE_BANK_COMMAND #$B, #code_0, #$12
	from_stack_to_a bank_from_343
	RTS
; End of function exec_b0_cB_1284E0

; =============== S U B	R O U T	I N E =======================================

exec_b0_cC_1284FB:
	a_to_stack bank_from_343
	EXECUTE_BANK_COMMAND #$C, #code_0, #$12
	from_stack_to_a bank_from_343
	RTS
; End of function exec_b0_cC_1284FB

; =============== S U B	R O U T	I N E =======================================

exec_b0_cD_128516:
	a_to_stack bank_from_343
	EXECUTE_BANK_COMMAND #$D, #code_0, #$12
	from_stack_to_a bank_from_343
	RTS
; End of function exec_b0_cD_128516

; =============== S U B	R O U T	I N E =======================================

sub_128531:
	IF_A_GREATER_CMP_ADDR tilemapTypeUnk_30B, #$47, loc_12853B
	BEQ	loc_12853B
	RTS
; ---------------------------------------------------------------------------

loc_12853B:
	LDX	#$F
	STX	_APU_STATUS
	PHA
	TAY
	IF_A_GREATER_CMP #$40, loc_128549
	sub_a_sec #$40 

loc_128549:
	MULT_A_BY_4
	TAX
	LDA	byte_12858A,Y
	LDA	byte_1285D2,Y
	TAY
	PLA
	IF_A_LOWER_CMP #$40, loc_128571
	SET {_APU_PULSE1_ENV,Y}, {apu_pulse_timer1_12861A,X}
	SET {_APU_PULSE1_SWEEP,Y}, {apu_pulse_timer1_12861A+1,X}
	SET {_APU_PULSE1_TIME,Y}, {apu_pulse_timer1_12861A+2,X}
	SET {_APU_PULSE1_LEN,Y}, {apu_pulse_timer1_12861A+3,X}
	RTS
; ---------------------------------------------------------------------------

loc_128571:
	SET {_APU_PULSE1_ENV,Y}, {stru_12871A,X}
	SET {_APU_PULSE1_SWEEP,Y}, {stru_12871A+1,X}
	SET {_APU_PULSE1_TIME,Y}, {stru_12871A+2,X}
	SET {_APU_PULSE1_LEN,Y}, {stru_12871A+3,X}
	RTS
; End of function sub_128531

; ---------------------------------------------------------------------------

	.include "music\\bank_12_apu.asm"

; =============== S U B	R O U T	I N E =======================================

sub_12873A:
	IF_A_NOT_EQUAL_CMP_ADDR byte_46F, #$17, loc_12875A
	IF_A_NOT_EQUAL_CMP_ADDR byte_470, #0, loc_12875A
	IF_A_NOT_EQUAL_CMP_ADDR byte_54E, #3, loc_12875A
	SET byte_54E, #0
	JSR	exec_b0_cC_1284FB
	JMP	locret_128954
; ---------------------------------------------------------------------------

loc_12875A:
	IF_A_EQUAL_CMP_ADDR byte_46F, #$69, loc_128768
	IF_A_EQUAL_CMP #$98, loc_128768
	JMP	loc_128777
; ---------------------------------------------------------------------------

loc_128768:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$63, loc_128774
	SET byte_5D5, #$FF

loc_128774:
	JMP	locret_128954
; ---------------------------------------------------------------------------

loc_128777:
	IF_A_NOT_EQUAL_CMP_ADDR byte_46F, #$1B, loc_12878D
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$18, loc_12878A
	SET byte_5D4, #$FF

loc_12878A:
	JMP	locret_128954
; ---------------------------------------------------------------------------

loc_12878D:
	IF_A_NOT_EQUAL_CMP_ADDR byte_46F, #$19, loc_1287A3
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$18, loc_1287A0
	SET byte_5D3, #$FF

loc_1287A0:
	JMP	locret_128954
; ---------------------------------------------------------------------------

loc_1287A3:
	IF_A_NOT_EQUAL_CMP_ADDR byte_46F, #$7B, loc_1287B9
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$74, loc_1287B6
	SET byte_690, #$FF

loc_1287B6:
	JMP	locret_128954
; ---------------------------------------------------------------------------

loc_1287B9:
	IF_A_NOT_EQUAL_CMP_ADDR byte_46F, #$71, loc_128817
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$6F, loc_128814
	IF_A_NOT_EQUAL_CMP_ADDR byte_6A2, #0, loc_128814
	SET byte_313, #1
	JSR	exec_b0_c9_1284AA
	SET byte_690, #$FF
	SET cur_obj_idx_unk_43A, #0
	JSR	sub_12BF29
	SET cur_obj_idx_unk_43A, #1
	JSR	sub_12BF29
	SET_TEXT_ARGS #$80, #1
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	SET tilemapTypeUnk_30B, #2
	SET byte_313, #2
	JSR	exec_b0_cA_1284C5
	SET byte_551, #$FF
	SET byte_553, #$FF

loc_128814:
	JMP	locret_128954
; ---------------------------------------------------------------------------

loc_128817:
	IF_A_EQUAL_CMP_ADDR byte_46F, #$7C, loc_128821
	JMP	loc_1288EE
; ---------------------------------------------------------------------------

loc_128821:
	IF_A_EQUAL_CMP_ADDR entry_idx_300, #$82, loc_12882B
	JMP	loc_1288EB
; ---------------------------------------------------------------------------

loc_12882B:
	IF_A_NOT_EQUAL_CMP_ADDR byte_597, #$FF, loc_128835
	JMP	loc_1288EB
; ---------------------------------------------------------------------------

loc_128835:
	SET byte_597, #$FF
	SET tilemapTypeUnk_30B, #8
	SET byte_313, #2
	JSR	exec_b0_cA_1284C5
	SET byte_313, #0
	JSR	exec_b0_c9_1284AA
	SET_TEXT_ARGS #$40, #1
	SET tilemapTypeUnk_30B, #$11
	JSR	exec_b0_c0_12A973
	SET tilemapData_4C, #1
	SET room_pos_x_4D, #2
	SET room_pos_y_4E, #2
	SET tilemap_line_idx_4F, #1
	JSR	exec_b0_cB_1284E0
	SET tilemapData_4C, #1
	SET room_pos_x_4D, #2
	SET room_pos_y_4E, #8
	SET tilemap_line_idx_4F, #3
	JSR	exec_b0_cB_1284E0
	SET cur_obj_idx_unk_43A, #2
	JSR	exec_b0_c3_128418
	SET_TEXT_ARGS #$51, #1
	SET tilemapTypeUnk_30B, #$E
	JSR	exec_b0_c0_12A973
	SET tilemapTypeUnk_30B, #5
	SET byte_313, #1
	JSR	exec_b0_cA_1284C5
	SET2 byte_6C3, byte_6C4, #0

set_tyrant_level_1288B6:
	SET image_id_4A4, #$83 
	SET5 image_offset_4A5, ppu_prev_unk_4A6, ppu_prev_scroll_x_unk_4A7, ppu_prev_scroll_y_unk_4A8, prev_sprite_type_4A9, #0
	SET byte_4AD, #$40 
	SET byte_4AE, #$50 
	JSR	exec_b0_c2_12A9A9
	SET_TEXT_ARGS #$3F, #2
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973

loc_1288EB:
	JMP	locret_128954
; ---------------------------------------------------------------------------

loc_1288EE:
	IF_A_NOT_EQUAL_CMP_ADDR byte_46F, #$78, locret_128954
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$79, loc_128951
	IF_A_EQUAL_CMP_ADDR byte_6C6, #0, loc_128951
	SET tilemapTypeUnk_30B, #2
	SET byte_313, #1
	JSR	exec_b0_cA_1284C5
	SET tilemapTypeUnk_30B, #1
	SET byte_313, #2
	JSR	exec_b0_cA_1284C5
	SET tilemapTypeUnk_30B, #3
	SET byte_313, #1
	JSR	exec_b0_cA_1284C5
	SET byte_313, #2
	JSR	exec_b0_c9_1284AA
	SET_TEXT_ARGS #$78, #1
	SET tilemapTypeUnk_30B, #3
	JSR	exec_b0_c0_12A973
	SET2 byte_552, byte_6C5, #$FF
	SET byte_6C6, #0

loc_128951:
	JMP	locret_128954
; ---------------------------------------------------------------------------

locret_128954:
	RTS
; End of function sub_12873A

; =============== S U B	R O U T	I N E =======================================

sub_128955:
	JSR	sub_1283BA
	a_to_stack image_id_4A4
	a_to_stack image_offset_4A5
	a_to_stack ppu_prev_unk_4A6
	a_to_stack ppu_prev_scroll_x_unk_4A7
	a_to_stack ppu_prev_scroll_y_unk_4A8
	a_to_stack prev_sprite_type_4A9
	sub_addr_sec inv_sprite_idx_31C, #$2A 
	MULT_A_BY_2
	TAX
	SET byte_475, {byte_129255,X}
	SET2 byte_43F, byte_472, #0

loc_128986:
	SET byte_43E, #0
	JSR	sub_12EEAE
	JSR	ppu_reset_ctrl_mask_FE93
	SET _PPU_ADDR, #$28 
	SET _PPU_ADDR, #0
	LDA	#0
	LDX	#0

loc_12899F:
	LDY	#0

ppu_clear_ram_1289A1:
	STA	_PPU_DATA
	INY
	BNE	ppu_clear_ram_1289A1
	INX
	IF_X_NOT_EQUAL_CMP #4, loc_12899F
	SET byte_341, #1
	SET entry_idx_300, #0
	SET ppu_unk_byte_302, #0
	SET ppu_unk_byte_303, #0
	SET ppu_scroll_x_304, #0
	SET ppu_scroll_y_305, #0
	SET sprite_type_306, #1
	JSR	sub_12D261
	JSR	exec_b0_c6_128459
	SET sprPalIdx_319, #0
	SET byte_31E, #4
	JSR	exec_b0_c7_128474
	SET objectIdx_318, #4
	JSR	exec_b0_c8_12848F
	AND_BYTE ppu_ctrl_31F, #$FC 
	JSR	ppu_update_ctrl_mask_FE86
	JSR	exec_b0_cD_128516
	JSR	sub_12EDF5
	SET inv_itemPrev_idx_31D, #0
	SET tilemap_size_307, #$B
	SET ppu_unk_byte_309, #4
	SET byte_36E, #0
	JSR	exec_b4_c2_1283A7
	JSR	sub_128B0F
	SET count_unk_465, #0
; End of function sub_128955

; =============== S U B	R O U T	I N E =======================================

sub_128A1A:
	STA	count_unk_466
	STA	count_unk_466

loc_128A20:
	JSR	sub_128FC1
	IF_A_EQUAL_CMP_ADDR is_game_finished_561, #0, game_not_finished_128A43
	from_stack_to_a prev_sprite_type_4A9
	from_stack_to_a ppu_prev_scroll_y_unk_4A8
	from_stack_to_a ppu_prev_scroll_x_unk_4A7
	from_stack_to_a ppu_prev_unk_4A6
	from_stack_to_a image_offset_4A5
	from_stack_to_a image_id_4A4
	RTS
; ---------------------------------------------------------------------------

game_not_finished_128A43:
	JSR	sub_128B43
	JSR	sub_128CC0
	JSR	sub_128D20
	JSR	sub_128E24
	JSR	sub_128EC2
	JSR	sub_129019
	JSR	wait_for_frame_rendered_FCA0
	IF_A_NOT_EQUAL_CMP_ADDR input_pressed_34A, #$20, loc_128A72
	JSR	sub_12ED3B
	XOR_BYTE  byte_472, #1
	SET byte_440, #0
	JMP	loc_128A20
; ---------------------------------------------------------------------------

loc_128A72:
	IF_A_NOT_EQUAL_CMP #$10, loc_128A87
	JSR	sub_12ED44
	a_to_stack inv_sprite_idx_31C
	JSR	sub_12D4C6
	from_stack_to_a inv_sprite_idx_31C
	JMP	loc_128986
; ---------------------------------------------------------------------------

loc_128A87:
	IF_A_NOT_EQUAL_CMP #$80, loc_128A9C
	JSR	sub_1290C3
	IF_A_EQUAL_CMP_ADDR sprite_length_30F, #$FF, loc_128AA5
	IF_A_EQUAL_CMP #$FE, loc_128A9F
	JMP	loc_128A20
; ---------------------------------------------------------------------------

loc_128A9C:
	JMP	loc_128A20
; ---------------------------------------------------------------------------

loc_128A9F:
	JSR	sub_1291F5
	JMP	loc_128AE9
; ---------------------------------------------------------------------------

loc_128AA5:
	from_stack_to_a prev_sprite_type_4A9
	from_stack_to_a ppu_prev_scroll_y_unk_4A8
	from_stack_to_a ppu_prev_scroll_x_unk_4A7
	from_stack_to_a ppu_prev_unk_4A6
	from_stack_to_a image_offset_4A5
	from_stack_to_a image_id_4A4
	IF_A_EQUAL_CMP_ADDR image_id_4A4, #$17, loc_128B01
	IF_A_EQUAL_CMP #$45, loc_128B01
	JSR	sub_12C7DE
	JSR	exec_b0_c3_128418
	IF_A_NOT_EQUAL_CMP_ADDR image_id_4A4, #$96, loc_128ADA
	SET byte_6C9, #$FF

loc_128ADA:
	IF_A_NOT_EQUAL_CMP_ADDR image_id_4A4, #$9A, loc_128AE6
	SET is_game_finished_561, #$88 

loc_128AE6:
	JMP	loc_128B01
; ---------------------------------------------------------------------------

loc_128AE9:
	from_stack_to_a prev_sprite_type_4A9
	from_stack_to_a ppu_prev_scroll_y_unk_4A8
	from_stack_to_a ppu_prev_scroll_x_unk_4A7
	from_stack_to_a ppu_prev_unk_4A6
	from_stack_to_a image_offset_4A5
	from_stack_to_a image_id_4A4

loc_128B01:
	SET map_show_43B, #$FF
	JSR	exec_b0_c2_12A9A9
	SET map_show_43B, #0
	RTS
; End of function sub_128A1A

; =============== S U B	R O U T	I N E =======================================

sub_128B0F:
	SET byte_366, #$80 
	SET byte_367, #0
	SET byte_36A, ppu_scroll_x_304
	SET byte_36B, #0
	SET2 sprite_secondByte_31B, byte_31A, #0
	SET objectIdx_318, #4
	SET objMapIdx_316, #$21 
	LDX	objMapIdx_316
	SET byte_317, {byte_128F59,X}
	JSR	exec_b1_c1_128394
	RTS
; End of function sub_128B0F

; =============== S U B	R O U T	I N E =======================================

sub_128B43:
	IF_A_NOT_EQUAL byte_472, loc_128B4B
	JMP	loc_128BFB
; ---------------------------------------------------------------------------

loc_128B4B:
	SET byte_31A, #8
	SET tilemapWidth_308, #8
	JSR	sub_12D26B
	sub_addr_sec inv_sprite_idx_31C, #$2A 
	MULT_A_BY_2
	TAY
	sub_addr_sec {byte_129006,Y}, byte_43F
	MULT_A_BY_4
	STA	tilemapTypeUnk_30B
	sub_addr_sec #$80 , tilemapTypeUnk_30B
	STA	byte_36A
	STA	byte_473
	sub_addr #0, #0
	STA	byte_36B
	SET byte_366, #$80 
	SET byte_367, #0
	SET sprite_secondByte_31B, #0
	SET byte_31A, #$10
	SET objectIdx_318, #4
	SET objMapIdx_316, #$26 
	LDX	objMapIdx_316
	SET byte_317, {byte_128F59,X}
	JSR	exec_b1_c1_128394
	sub_addr_sec inv_sprite_idx_31C, #$2A 
	MULT_A_BY_2
	TAY
	sub_addr_sec {byte_129006,Y}, byte_43F
	MULT_A_BY_4
	STA	tilemapTypeUnk_30B
	ADD_BYTE_TO_BYTE_CLC_IMM byte_36A, #$80 , tilemapTypeUnk_30B
	STA	byte_474
	LDA	#0
	ADC	#0
	STA	byte_36B
	SET byte_366, #$80 
	SET byte_367, #0
	SET sprite_secondByte_31B, #0
	SET byte_31A, #$18
	SET objectIdx_318, #4
	SET objMapIdx_316, #$27 
	LDX	objMapIdx_316
	SET byte_317, {byte_128F59,X}
	JSR	exec_b1_c1_128394
	RTS
; ---------------------------------------------------------------------------

loc_128BFB:
	SET byte_36A, #$80 
	SET byte_36B, #0
	SET byte_366, #$80 
	SET byte_367, #0
	SET sprite_secondByte_31B, #0
	SET byte_31A, #8
	SET objectIdx_318, #4
	SET objMapIdx_316, #$28 
	LDX	objMapIdx_316
	SET byte_317, {byte_128F59,X}
	JSR	exec_b1_c1_128394
	LDA	byte_43F
	ADD_TO_A #1
	MULT_A_BY_4
	STA	tilemapTypeUnk_30B
	sub_addr_sec #$80 , tilemapTypeUnk_30B
	STA	byte_36A
	STA	byte_473
	sub_addr #0, #0
	STA	byte_36B
	SET byte_366, #$80 
	SET byte_367, #0
	SET sprite_secondByte_31B, #0
	SET byte_31A, #$10
	SET objectIdx_318, #4
	SET objMapIdx_316, #$26 
	LDX	objMapIdx_316
	SET byte_317, {byte_128F59,X}
	JSR	exec_b1_c1_128394
	LDA	byte_43F
	ADD_TO_A #1
	MULT_A_BY_4
	STA	tilemapTypeUnk_30B
	ADD_BYTE_TO_BYTE_CLC_IMM byte_36A, #$80 , tilemapTypeUnk_30B
	STA	byte_474
	LDA	#0
	ADC	#0
	STA	byte_36B
	SET byte_366, #$80 
	SET byte_367, #0
	SET sprite_secondByte_31B, #0
	SET byte_31A, #$18
	SET objectIdx_318, #4
	SET objMapIdx_316, #$27 
	LDX	objMapIdx_316
	SET byte_317, {byte_128F59,X}
	JSR	exec_b1_c1_128394
	RTS
; End of function sub_128B43

; =============== S U B	R O U T	I N E =======================================

sub_128CC0:
	IF_A_NOT_EQUAL_CMP_ADDR byte_543, #0, loc_128CD5
	SET byte_31A, #$38 
	SET tilemapWidth_308, #$40 
	JSR	sub_12D26B
	RTS
; ---------------------------------------------------------------------------

loc_128CD5:
	SET byte_366, #$A0 
	SET byte_367, #0
	SET byte_36A, ppu_scroll_x_304
	SET byte_36B, #0
	ADD_BYTE_TO_WORD byte_36A, #$C0 

	SET sprite_secondByte_31B, #0
	SET byte_31A, #$38 
	SET objectIdx_318, #4
	ADD_BYTE_TO_BYTE_CLC_IMM objMapIdx_316, #$1A, byte_543
	LDX	objMapIdx_316
	SET byte_317, {byte_128F59,X}
	JSR	exec_b1_c1_128394
	RTS
; End of function sub_128CC0

; =============== S U B	R O U T	I N E =======================================

sub_128D20:
	IF_A_NOT_EQUAL_CMP_ADDR byte_543, #0, loc_128D35
	SET byte_31A, #$78 
	SET tilemapWidth_308, #8
	JSR	sub_12D26B
	RTS
; ---------------------------------------------------------------------------

loc_128D35:
	LDX	byte_544
	SET tilemapTypeUnk_30B, {unk_53B,X}
	JSR	sub_128F1B
	IF_A_NOT_EQUAL_CMP_ADDR byte_543, #1, loc_128D8F
	SET objMapIdx_316, #$33 
	SET byte_366, #$C0 
	SET byte_367, #0
	SET byte_36A, ppu_scroll_x_304
	SET byte_36B, #0
	ADD_BYTE_TO_WORD byte_36A, #$C8 

	SET sprite_secondByte_31B, #0
	SET byte_31A, #$78 
	SET objectIdx_318, #4
	LDX	objMapIdx_316
	SET byte_317, {byte_128F59,X}

loc_128D8B:
	JSR	exec_b1_c1_128394
	RTS
; ---------------------------------------------------------------------------

loc_128D8F:
	ADD_BYTE_TO_BYTE_CLC_IMM objMapIdx_316, byte_355, #$29 
	SET byte_366, #$C0 
	SET byte_367, #0
	SET byte_36A, ppu_scroll_x_304
	SET byte_36B, #0
	ADD_BYTE_TO_WORD byte_36A, #$C8 

	SET sprite_secondByte_31B, #0
	SET byte_31A, #$78 
	SET objectIdx_318, #4
	LDX	objMapIdx_316
	SET byte_317, {byte_128F59,X}
	JSR	exec_b1_c1_128394
	ADD_BYTE_TO_BYTE_CLC_IMM objMapIdx_316, byte_354, #$29 
	SET byte_366, #$C0 
	SET byte_367, #0
	SET byte_36A, ppu_scroll_x_304
	SET byte_36B, #0
	ADD_BYTE_TO_WORD byte_36A, #$D0 

	SET sprite_secondByte_31B, #0
	SET byte_31A, #$7C 
	SET objectIdx_318, #4
	LDX	objMapIdx_316
	SET byte_317, {byte_128F59,X}
	JSR	exec_b1_c1_128394
	RTS
; End of function sub_128D20

; =============== S U B	R O U T	I N E =======================================

sub_128E24:
	SET byte_366, #$A0 
	SET byte_367, #0
	SET byte_36A, ppu_scroll_x_304
	SET byte_36B, #0
	ADD_BYTE_TO_WORD byte_36A, #$20 

	SET sprite_secondByte_31B, #0
	SET byte_31A, #$88 
	SET objMapIdx_316, #0
	IF_A_GREATER_CMP_ADDR byte_549, #$55, loc_128E7D
	IF_A_GREATER_CMP #$AA, loc_128E6C
	SET byte_54B, #0
	JMP	loc_128E8B
; ---------------------------------------------------------------------------

loc_128E6C:
	ADD_BYTE_TO_BYTE_CLC objMapIdx_316, #7
	SET byte_54B, #1
	JMP	loc_128E8B
; ---------------------------------------------------------------------------

loc_128E7D:
	ADD_BYTE_TO_BYTE_CLC objMapIdx_316, #$E
	SET byte_54B, #2

loc_128E8B:
	IF_A_GREATER_CMP_ADDR count_unk_465, #$A, loc_128EA6
	SET count_unk_465, #0
	IF_A_GREATER_CMP_ADDR byte_54C, #6, loc_128EA3
	SET byte_54C, #$FF

loc_128EA3:
	INC	byte_54C

loc_128EA6:
	ADD_BYTE_TO_BYTE_CLC objMapIdx_316, byte_54C
	SET objectIdx_318, #4
	LDX	objMapIdx_316
	SET byte_317, {byte_128F59,X}
	JSR	exec_b1_c1_128394
	RTS
; End of function sub_128E24

; =============== S U B	R O U T	I N E =======================================

sub_128EC2:
	SET byte_366, #$B8 
	SET byte_367, #0
	SET byte_36A, ppu_scroll_x_304
	SET byte_36B, #0
	ADD_BYTE_TO_WORD byte_36A, #$20 

	SET sprite_secondByte_31B, #0
	SET byte_31A, #$B8 
	SET objectIdx_318, #4
	ADD_BYTE_TO_BYTE_CLC_IMM objMapIdx_316, #$15, byte_54B
	IF_A_EQUAL byte_54A, loc_128F0E
	ADD_BYTE_TO_BYTE_CLC objMapIdx_316, #3

loc_128F0E:
	LDX	objMapIdx_316
	SET byte_317, {byte_128F59,X}
	JSR	exec_b1_c1_128394
	RTS
; End of function sub_128EC2

; =============== S U B	R O U T	I N E =======================================

sub_128F1B:
	SET3 byte_354, byte_355, byte_356, #0

loc_128F26:
	IF_A_GREATER_CMP_ADDR tilemapTypeUnk_30B, #$64, loc_128F3C
	sub_byte_sec tilemapTypeUnk_30B, #$64 
	INC	byte_356
	JMP	loc_128F26
; ---------------------------------------------------------------------------

loc_128F3C:
	IF_A_GREATER_CMP_ADDR tilemapTypeUnk_30B, #$A, loc_128F52
	sub_byte_sec tilemapTypeUnk_30B, #$A
	INC	byte_355
	JMP	loc_128F3C
; ---------------------------------------------------------------------------

loc_128F52:
	SET byte_354, tilemapTypeUnk_30B
	RTS
; End of function sub_128F1B

; ---------------------------------------------------------------------------
byte_128F59:
	.BYTE	0,  0,	0,  0,	0,  0,	0,  1,	1,  1,	1,  1,	1,  1,	2,  2
	.BYTE	2,  2,	2,  2,	2,  0,	1,  2,	0,  1,	2,  3,	3,  3,	3,  3
	.BYTE	3,  1,	2,  2,	3,  3,	0,  0,	2,  2,	2,  2,	2,  2,	2,  2
	.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
	.BYTE	3,  3,	3,  3,	3,  3,	3,  3,	3,  3,	3,  3,	3,  3,	3,  3
	.BYTE	3,  3,	3,  3,	3,  3,	3,  3,	3,  3,	3,  3,	3,  3,	3,  3
	.BYTE	3,  3,	3,  3,	3,  3,	3,  3

; =============== S U B	R O U T	I N E =======================================

sub_128FC1:
	IF_A_GREATER_CMP_ADDR count_unk_467, #$32, locret_129004
	SET count_unk_467, #0
	ADD_BYTE_TO_BYTE_CLC_IMM inv_itemPrev_idx_31D, #0, byte_43F
	SET tilemap_size_307, #$B
	SET ppu_unk_byte_309, #4
	SET byte_36E, #0
	JSR	exec_b4_c2_1283A7
	INC	byte_43F
	sub_addr_sec inv_sprite_idx_31C, #$2A 
	MULT_A_BY_2
	TAY
	IF_A_NOT_EQUAL_CMP_ADDR {byte_129006,Y}, byte_43F, locret_129004
	SET byte_43F, {byte_129005,Y}
	JSR	sub_129155

locret_129004:
	RTS
; End of function sub_128FC1

; ---------------------------------------------------------------------------
byte_129005:
	.BYTE	3	
byte_129006:
	.BYTE	6,  1,	4,  1,	3,  1,	4,  1,	4,  1,	4,  1,	4,  1,	4,  2
	.BYTE	5,  1,	6

; =============== S U B	R O U T	I N E =======================================

sub_129019:
	IF_A_NOT_EQUAL byte_440, loc_12902C
	SET byte_31A, #$C8 
	SET tilemapWidth_308, #$38 
	JSR	sub_12D26B
	RTS
; ---------------------------------------------------------------------------

loc_12902C:
	SET byte_366, #$40 
	SET byte_367, #0
	sub_addr_sec byte_441, #4
	STA	byte_36A
	sub_addr #0, #0
	STA	byte_36B
	SET sprite_secondByte_31B, #0
	SET byte_31A, #$C8 
	SET objectIdx_318, #4
	IF_A_EQUAL byte_472, loc_12905F
	LDA	#0
	JMP	loc_129071
; ---------------------------------------------------------------------------

loc_12905F:
	IF_A_NOT_EQUAL_CMP_ADDR byte_543, #0, loc_129069
	JMP	loc_12908C
; ---------------------------------------------------------------------------

loc_129069:
	sub_addr_sec byte_543, #1
	MULT_A_BY_4

loc_129071:
	ADD_TO_A #$34 
	ADD_TO_A byte_443
	STA	objMapIdx_316
	SET byte_478, #4
	LDX	objMapIdx_316
	SET byte_317, {byte_128F59,X}
	JSR	exec_b1_c1_128394

loc_12908C:
	IF_A_GREATER_CMP_ADDR count_unk_466, #5, locret_1290A8
	SET count_unk_466, #0
	INC	byte_443
	IF_A_GREATER_CMP_ADDR byte_443, byte_478, locret_1290A8
	SET byte_440, #0

locret_1290A8:
	RTS
; End of function sub_129019

; ---------------------------------------------------------------------------
	.BYTE $FF
	.BYTE $2F ; /
	.BYTE $2A ; *
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $2B ; +
	.BYTE $FF
	.BYTE $2C ;,
	.BYTE $31 ; 1
	.BYTE $FF
	.BYTE $32 ; 2
	.BYTE $2D ; -
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $30 ; 0
	.BYTE $33 ; 3

; =============== S U B	R O U T	I N E =======================================

sub_1290C3:
	SET sprite_length_30F, #0
	IF_A_NOT_EQUAL byte_472, loc_1290EA
	IF_A_EQUAL_CMP_ADDR byte_543, #1, loc_1290EA
	IF_A_NOT_EQUAL_CMP_ADDR byte_543, #0, loc_1290DC
	RTS
; ---------------------------------------------------------------------------

loc_1290DC:
	LDX	byte_544
	IF_A_NOT_EQUAL_CMP_ADDR {unk_53B,X}, #0, loc_1290E7
	RTS
; ---------------------------------------------------------------------------

loc_1290E7:
	DEC	unk_53B,X

loc_1290EA:
	SET byte_443, #0
	SET byte_440, #$FF
	ADD_BYTE_TO_BYTE_CLC_IMM byte_441, ppu_scroll_x_304, spr_x_pos_203
	SET byte_476, #0
	IF_A_GREATER_CMP_ADDR byte_441, byte_473, loc_129117
	IF_A_EQUAL_CMP byte_474, loc_129117
	BCS	loc_129117
	SET byte_476, #$FF

loc_129117:
	IF_A_NOT_EQUAL byte_476, loc_129120
	JSR	sub_12ED29
	RTS
; ---------------------------------------------------------------------------

loc_129120:
	JSR	sub_12ED20
	IF_A_EQUAL byte_472, loc_12912E
	SET sprite_length_30F, #$FE 
	RTS
; ---------------------------------------------------------------------------

loc_12912E:
	JSR	sub_129196
	IF_A_GREATER_CMP_ADDR byte_475, byte_477, loc_129143
	sub_a_sec byte_477
	STA	byte_475
	JMP	loc_129148
; ---------------------------------------------------------------------------

loc_129143:
	SET byte_475, #0

loc_129148:
	IF_A_NOT_EQUAL_CMP_ADDR byte_475, #0, locret_129154
	SET sprite_length_30F, #$FF

locret_129154:
	RTS
; End of function sub_1290C3

; =============== S U B	R O U T	I N E =======================================

sub_129155:
	SET scroll_offset_y_47A, #$10
	SET is_game_finished_561, #0
	JSR	sub_129186
	IF_A_GREATER_CMP_ADDR byte_549, byte_477, loc_129174
	sub_a_sec byte_477
	STA	byte_549
	JMP	loc_129179
; ---------------------------------------------------------------------------

loc_129174:
	SET byte_549, #0

loc_129179:
	IF_A_NOT_EQUAL_CMP_ADDR byte_549, #0, locret_129185
	SET is_game_finished_561, #$FF

locret_129185:
	RTS
; End of function sub_129155

; =============== S U B	R O U T	I N E =======================================

sub_129186:
	sub_addr_sec inv_sprite_idx_31C, #$2A 
	MULT_A_BY_2
	TAX
	INX

loc_12918F:
	SET byte_477, {byte_129255,X}
	RTS
; End of function sub_129186

; =============== S U B	R O U T	I N E =======================================

sub_129196:
	SET byte_477, #0
	IF_A_NOT_EQUAL_CMP_ADDR byte_476, #$FF, locret_1291F4
	IF_A_EQUAL_CMP_ADDR byte_441, #$80, loc_1291C3
	BCC	loc_1291B7
	sub_addr_sec byte_441, #$80 
	STA	tilemapTypeUnk_30B
	JMP	loc_1291C8
; ---------------------------------------------------------------------------

loc_1291B7:
	sub_addr_sec #$80 , byte_441
	STA	tilemapTypeUnk_30B
	JMP	loc_1291C8
; ---------------------------------------------------------------------------

loc_1291C3:
	SET tilemapTypeUnk_30B, #0

loc_1291C8:
	sub_addr_sec #$14, tilemapTypeUnk_30B
	STA	byte_477
	IF_A_NOT_EQUAL_CMP_ADDR byte_301, #$9A, loc_1291DE
	SET byte_477, byte_543

loc_1291DE:
	LDA	byte_477
	LDY	byte_543
	DEY

loc_1291E5:
	IF_Y_EQUAL_CMP #0, loc_1291F1
	ADD_TO_A byte_477
	DEY
	JMP	loc_1291E5
; ---------------------------------------------------------------------------

loc_1291F1:
	STA	byte_477

locret_1291F4:
	RTS
; End of function sub_129196

; =============== S U B	R O U T	I N E =======================================

sub_1291F5:
	LDX	cur_obj_idx_unk_43A
	IF_A_NOT_EQUAL_CMP_ADDR {array_unk_3A7,X}, #1, loc_129213
	sub_byte_sec {array_unk_3D9,X}, #8
	sub_byte {array_unk_3CF,X}, #0
	JMP	locret_129254
; ---------------------------------------------------------------------------

loc_129213:
	IF_A_NOT_EQUAL_CMP #0, loc_12922B
	ADD_TO {array_unk_3D9,X}, {array_unk_3CF,X}, #8, #0
	JMP	locret_129254
; ---------------------------------------------------------------------------

loc_12922B:
	IF_A_NOT_EQUAL_CMP #3, loc_129243
	sub_byte_sec {array_unk_3C5,X}, #8
	sub_byte {array_unk_3BB,X}, #0
	JMP	locret_129254
; ---------------------------------------------------------------------------

loc_129243:
	ADD_TO {array_unk_3C5,X}, {array_unk_3BB,X}, #8, #0

locret_129254:
	RTS
; End of function sub_1291F5

; ---------------------------------------------------------------------------
byte_129255:
	.BYTE $78,$1E
	.BYTE $A0,$28
	.BYTE $A0,$1E
	.BYTE $FF,$3C
	.BYTE $C8,$28
	.BYTE $A0,$28
	.BYTE $78,$1E
	.BYTE $78,$1E
	.BYTE $A0,$28
	.BYTE $C8,$32

off_129269:
	.include "binary_data/bank_12_9269.asm"

; =============== S U B	R O U T	I N E =======================================

com_29_start_new_game_12A646:
	LDX	#0
	LDA	#0

loc_12A64A:
	STA	objArraySize_373,X
	INX
	IF_X_NOT_EQUAL_CMP #$AC , loc_12A64A

	GET_PTR_FROM_TBL off_129269, entry_idx_300
	
	LDY	#0
	SET objArraySize_373, {(data_2),Y}
	IF_A_NOT_EQUAL_CMP #0, loc_12A68B
	RTS
; ---------------------------------------------------------------------------

loc_12A68B:
	ADD_WORD_TO_WORD_IMM data_2, $1

	SET inv_spr_dscr1_30C, #0

loc_12A69D:
	a_to_stack data_2
	a_to_stack data_3
	MULT_BY_2_BYTE inv_spr_dscr1_30C
	ADD_TO_A data_2
	STA	data_2
	ADD_BYTE_TO_BYTE data_3, #0

	READ_WORD ptr_0, {(data_2),Y}
	LDX	inv_spr_dscr1_30C
	LDY	#0
	SET_INY {array_unk_3C5,X}, {(ptr_0),Y}
	SET_INY {array_unk_3BB,X}, {(ptr_0),Y}
	SET_INY {array_unk_3D9,X}, {(ptr_0),Y}
	SET_INY {array_unk_3CF,X}, {(ptr_0),Y}
	SET_INY {objIdxArray_375,X}, {(ptr_0),Y}
	SET_INY {array_unk_39D,X}, {(ptr_0),Y}
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$65, loc_12A70C
	IF_A_NOT_EQUAL_CMP_ADDR {objIdxArray_375,X}, #3, loc_12A70C
	SET {array_unk_3C5,X}, byte_567
	SET {array_unk_3BB,X}, byte_568
	SET {array_unk_3D9,X}, byte_569
	SET {array_unk_3CF,X}, byte_56A

loc_12A70C:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$3C, loc_12A732
	IF_A_NOT_EQUAL_CMP_ADDR {objIdxArray_375,X}, #3, loc_12A732
	SET {array_unk_3C5,X}, byte_56B
	SET {array_unk_3BB,X}, byte_56C
	SET {array_unk_3D9,X}, byte_56D
	SET {array_unk_3CF,X}, byte_56E

loc_12A732:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$5C, loc_12A758
	IF_A_NOT_EQUAL_CMP_ADDR {objIdxArray_375,X}, #3, loc_12A758
	SET {array_unk_3C5,X}, byte_56F
	SET {array_unk_3BB,X}, byte_570
	SET {array_unk_3D9,X}, byte_571
	SET {array_unk_3CF,X}, byte_572

loc_12A758:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$93, loc_12A79E
	IF_A_NOT_EQUAL_CMP_ADDR {objIdxArray_375,X}, #3, loc_12A79E
	IF_A_EQUAL_CMP_ADDR byte_56F, #$40, loc_12A786
	BCS	loc_12A786
	IF_A_EQUAL_CMP_ADDR byte_571, #$50, loc_12A781
	IF_A_EQUAL_CMP #$60, loc_12A781
	IF_A_EQUAL_CMP #$70, loc_12A781
	JMP	loc_12A786
; ---------------------------------------------------------------------------

loc_12A781:
	SET byte_56F, #$40 

loc_12A786:
	SET {array_unk_3C5,X}, byte_56F
	SET {array_unk_3BB,X}, byte_570
	SET {array_unk_3D9,X}, byte_571
	SET {array_unk_3CF,X}, byte_572

loc_12A79E:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$5D, loc_12A7F7
	IF_A_NOT_EQUAL_CMP_ADDR {objIdxArray_375,X}, #3, loc_12A7F7
	IF_A_NOT_EQUAL_CMP_ADDR byte_573, #$90, loc_12A7CB
	IF_A_NOT_EQUAL_CMP_ADDR byte_574, #1, loc_12A7CB
	IF_A_NOT_EQUAL_CMP_ADDR byte_575, #$B0, loc_12A7CB
	IF_A_NOT_EQUAL_CMP_ADDR byte_576, #0, loc_12A7CB
	JMP	loc_12A7DF
; ---------------------------------------------------------------------------

loc_12A7CB:
	SET byte_573, #0
	SET byte_574, #1
	SET byte_575, #$60 
	SET byte_576, #0

loc_12A7DF:
	SET {array_unk_3C5,X}, byte_573
	SET {array_unk_3BB,X}, byte_574
	SET {array_unk_3D9,X}, byte_575
	SET {array_unk_3CF,X}, byte_576

loc_12A7F7:
	IF_A_NOT_EQUAL_CMP_ADDR {objIdxArray_375,X}, #6, loc_12A809
	SET {obj_array_unk_415,X}, {array_unk_39D,X}
	SET {array_unk_39D,X}, #0

loc_12A809:
	IF_A_NOT_EQUAL_CMP_ADDR {objIdxArray_375,X}, #7, loc_12A81B
	SET {obj_array_unk_415,X}, {array_unk_39D,X}
	SET {array_unk_39D,X}, #0

loc_12A81B:
	TYA
	ADD_TO_A ptr_0
	STA	data_2
	LDA	ptr_1
	ADC	#0
	STA	data_3
	JSR	sub_12A893
	IF_A_NOT_EQUAL_CMP_ADDR byte_36F, #0, loc_12A839
	LDX	inv_spr_dscr1_30C
	SET {objCreatedArray_393,X}, #$FF

loc_12A839:
	from_stack_to_a data_3
	from_stack_to_a data_2
	INC	inv_spr_dscr1_30C
	IF_A_EQUAL_CMP_ADDR inv_spr_dscr1_30C, objArraySize_373, loc_12A84D
	JMP	loc_12A69D
; ---------------------------------------------------------------------------

loc_12A84D:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$6A, locret_12A892
	IF_A_NOT_EQUAL_CMP_ADDR byte_577, #$FF, loc_12A88D
	LDY	#0
	LDX	#0

loc_12A85F:
	IF_A_EQUAL_CMP_ADDR {objIdxArray_375,X}, #3, loc_12A86D
	INX
	IF_X_GREATER_CMP objArraySize_373, loc_12A85F
	RTS
; ---------------------------------------------------------------------------

loc_12A86D:
	SET {array_unk_3C5,X}, {byte_578,Y}
	SET {array_unk_3BB,X}, {byte_57B,Y}
	SET {array_unk_3D9,X}, {byte_57E,Y}
	SET_INY {array_unk_3CF,X}, {byte_581,Y}
	INX
	IF_X_GREATER_CMP objArraySize_373, loc_12A85F
	RTS
; ---------------------------------------------------------------------------

loc_12A88D:
	SET byte_577, #0

locret_12A892:
	RTS
; End of function com_29_start_new_game_12A646

; =============== S U B	R O U T	I N E =======================================

sub_12A893:
	SET3 byte_36F, byte_370, byte_371, #0
	y_to_stack
	a_to_stack ptr_0
	a_to_stack ptr_1
	a_to_stack tilemapTypeUnk_30B
	a_to_stack inv_spr_dscr1_30C
	LDY	#0
	SET tilemapTypeUnk_30B, {(data_2),Y}
	IF_A_NOT_EQUAL_CMP #0, loc_12A8C1
	SET byte_36F, #$FF
	JMP	loc_12A933
; ---------------------------------------------------------------------------

loc_12A8C1:
	ADD_WORD_TO_WORD_IMM data_2, $1

	SET inv_spr_dscr1_30C, #0

loc_12A8D3:
	MULT_BY_2_BYTE inv_spr_dscr1_30C
	TAY
	SET_INY ptr_0, {(data_2),Y}
	SET ptr_1, {(data_2),Y}

	LDY	#0
loc_12A8E3:
	SET_INY tilemapFrameCount_30D, {(ptr_0),Y}
	SET_INY byte_30E, {(ptr_0),Y}
	IF_A_NOT_EQUAL_CMP_ADDR tilemapFrameCount_30D, #$FF, loc_12A8FD
	IF_A_EQUAL_CMP_ADDR tilemapFrameCount_30D, #$FF, loc_12A91F

loc_12A8FD:
	ADD_WORD_TO_WORD byte_370, tilemapFrameCount_30D

	JSR	sub_12A944
	OR_BYTE byte_36F, tilemapFrameCount_30D
	JMP	loc_12A8E3
; ---------------------------------------------------------------------------

loc_12A91F:
	AND_BYTE byte_36F, tilemapFrameCount_30D
	INC	inv_spr_dscr1_30C
	IF_A_GREATER_CMP_ADDR inv_spr_dscr1_30C, tilemapTypeUnk_30B, loc_12A8D3

loc_12A933:
	from_stack_to_a inv_spr_dscr1_30C
	from_stack_to_a tilemapTypeUnk_30B
	from_stack_to_a ptr_1
	from_stack_to_a ptr_0
	from_stack_to_y
	RTS
; End of function sub_12A893

; =============== S U B	R O U T	I N E =======================================

sub_12A944:
	a_to_stack ptr_0
	a_to_stack ptr_1
	y_to_stack

	SET_WORD_TO_WORD_CONST ptr_0, byte_598

	ADD_WORD_TO_WORD ptr_0, tilemapFrameCount_30D

	LDY	#0
	SET tilemapFrameCount_30D, {(ptr_0),Y}
	from_stack_to_y
	from_stack_to_a ptr_1
	from_stack_to_a ptr_0
	RTS
; End of function sub_12A944

; =============== S U B	R O U T	I N E =======================================

exec_b0_c0_12A973:
	a_to_stack bank_from_343
	EXECUTE_BANK_COMMAND #0, #code_0, #$12
	from_stack_to_a bank_from_343
	RTS
; End of function exec_b0_c0_12A973

; =============== S U B	R O U T	I N E =======================================

exec_b0_c1_12A98E:
	a_to_stack bank_from_343
	EXECUTE_BANK_COMMAND #1, #code_0, #$12
	from_stack_to_a bank_from_343
	RTS
; End of function exec_b0_c1_12A98E

; =============== S U B	R O U T	I N E =======================================

exec_b0_c2_12A9A9:
	a_to_stack bank_from_343
	EXECUTE_BANK_COMMAND #2, #code_0, #$12
	from_stack_to_a bank_from_343
	RTS
; End of function exec_b0_c2_12A9A9

; =============== S U B	R O U T	I N E =======================================

com_17_player_update_12A9C4:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$46, loc_12AA0E
	IF_A_NOT_EQUAL_CMP_ADDR byte_560, #$FF, locret_12AA0D
	IF_A_NOT_EQUAL_CMP_ADDR byte_355, #0, locret_12AA0D
	IF_A_NOT_EQUAL_CMP_ADDR byte_354, #0, locret_12AA0D
	IF_A_NOT_EQUAL_CMP_ADDR byte_356, #0, locret_12AA0D
	SET byte_354, #$A
	SET2 byte_355, byte_356, #0
	LOAD_A_MASKED byte_54B, #$F
	ORA	#$F0 
	STA	byte_54B
	INC	byte_54B
	IF_A_GREATER_CMP_ADDR byte_54B, #$F2, locret_12AA0D

set_game_finished_12AA08:
	SET is_game_finished_561, #$FF

locret_12AA0D:
	RTS
; ---------------------------------------------------------------------------

loc_12AA0E:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$41, loc_12AA1B
	SET byte_560, #0
	RTS
; ---------------------------------------------------------------------------

loc_12AA1B:
	IF_A_EQUAL_CMP_ADDR entry_idx_300, #$2F, locret_12AA6C
	IF_A_EQUAL_CMP_ADDR entry_idx_300, #$5C, locret_12AA6C
	IF_A_EQUAL_CMP #$93, locret_12AA6C
	IF_A_NOT_EQUAL_CMP_ADDR byte_56F, #$B0, loc_12AA3E
	IF_A_NOT_EQUAL_CMP_ADDR byte_571, #$60, loc_12AA3E
	JMP	loc_12AA52
; ---------------------------------------------------------------------------

loc_12AA3E:
	SET byte_56F, #$20 
	SET byte_570, #0
	SET byte_571, #$A0 
	SET byte_572, #0

loc_12AA52:
	LDA	#0
	STA	byte_555
	STA	byte_556
	STA	byte_557
	STA	byte_558
	STA	byte_559
	STA	byte_55A
	STA	byte_627
	STA	byte_628

locret_12AA6C:
	RTS
; End of function com_17_player_update_12A9C4

; =============== S U B	R O U T	I N E =======================================

entry_idx_handler_unk_12AA6D:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$83, check_room_7D_12AA81
	IF_A_EQUAL_CMP_ADDR byte_595, #0, locret_12AA80
	SET entry_idx_300, #$96 

locret_12AA80:
	RTS
; ---------------------------------------------------------------------------

check_room_7D_12AA81:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$7D, check_room_95_12AA95
	IF_A_EQUAL_CMP_ADDR byte_594, #0, locret_12AA94
	SET entry_idx_300, #$95 

locret_12AA94:
	RTS
; ---------------------------------------------------------------------------

check_room_95_12AA95:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$95, check_room_76_12AAA9
	IF_A_NOT_EQUAL_CMP_ADDR byte_594, #0, locret_12AAA8
	SET entry_idx_300, #$7D 

locret_12AAA8:
	RTS
; ---------------------------------------------------------------------------

check_room_76_12AAA9:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$76, check_room_94_12AABD
	IF_A_EQUAL_CMP_ADDR byte_593, #0, locret_12AABC
	SET entry_idx_300, #$94 

locret_12AABC:
	RTS
; ---------------------------------------------------------------------------

check_room_94_12AABD:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$94, check_room_53_12AAD1
	IF_A_NOT_EQUAL_CMP_ADDR byte_593, #0, locret_12AAD0
	SET entry_idx_300, #$76 

locret_12AAD0:
	RTS
; ---------------------------------------------------------------------------

check_room_53_12AAD1:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$53, check_room_90_12AAE5
	IF_A_NOT_EQUAL_CMP_ADDR byte_58C, #$FF, locret_12AAE4
	SET entry_idx_300, #$90 

locret_12AAE4:
	RTS
; ---------------------------------------------------------------------------

check_room_90_12AAE5:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$90, check_room_3D_12AAF9
	IF_A_EQUAL_CMP_ADDR byte_58C, #$FF, locret_12AAF8
	SET entry_idx_300, #$53 

locret_12AAF8:
	RTS
; ---------------------------------------------------------------------------

check_room_3D_12AAF9:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$3D, check_room_44_12AB0D
	IF_A_NOT_EQUAL_CMP_ADDR byte_58A, #$FF, locret_12AB0C
	SET entry_idx_300, #$8B 

locret_12AB0C:
	RTS
; ---------------------------------------------------------------------------

check_room_44_12AB0D:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$44, check_room_9C_12AB21
	IF_A_EQUAL_CMP_ADDR byte_58B, #0, locret_12AB20
	SET entry_idx_300, #$9C 

locret_12AB20:
	RTS
; ---------------------------------------------------------------------------

check_room_9C_12AB21:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$9C, check_room_38_12AB35
	IF_A_NOT_EQUAL_CMP_ADDR byte_58B, #0, locret_12AB34
	SET entry_idx_300, #$44 

locret_12AB34:
	RTS
; ---------------------------------------------------------------------------

check_room_38_12AB35:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$38, check_room_8A_12AB49
	IF_A_EQUAL_CMP_ADDR byte_589, #0, locret_12AB48
	SET entry_idx_300, #$8A 

locret_12AB48:
	RTS
; ---------------------------------------------------------------------------

check_room_8A_12AB49:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$8A, check_room_2F_12AB5D
	IF_A_EQUAL_CMP_ADDR byte_589, #$FF, locret_12AB5C
	SET entry_idx_300, #$38 

locret_12AB5C:
	RTS
; ---------------------------------------------------------------------------

check_room_2F_12AB5D:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$2F, check_room_1A_12AB71
	IF_A_EQUAL_CMP_ADDR byte_55B, #0, check_room_1A_12AB71
	SET entry_idx_300, #$89 
	RTS
; ---------------------------------------------------------------------------

check_room_1A_12AB71:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$1A, check_room_17_12AB85
	IF_A_EQUAL_CMP_ADDR byte_55F, #0, check_room_17_12AB85
	SET entry_idx_300, #$86 
	RTS
; ---------------------------------------------------------------------------

check_room_17_12AB85:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$17, check_room_4F_12AB99
	IF_A_EQUAL_CMP_ADDR byte_5A9, #0, check_room_4F_12AB99
	SET entry_idx_300, #$85 
	RTS
; ---------------------------------------------------------------------------

check_room_4F_12AB99:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$4F, check_room_50_12ABAD
	IF_A_EQUAL_CMP_ADDR byte_565, #0, check_room_50_12ABAD
	SET entry_idx_300, #$8D 
	RTS
; ---------------------------------------------------------------------------

check_room_50_12ABAD:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$50, check_room_8D_12ABC1
	IF_A_NOT_EQUAL_CMP_ADDR byte_565, #0, check_room_8D_12ABC1
	SET entry_idx_300, #$8E 
	RTS
; ---------------------------------------------------------------------------

check_room_8D_12ABC1:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$8D, check_room_8E_12ABD5
	IF_A_NOT_EQUAL_CMP_ADDR byte_565, #0, check_room_8E_12ABD5
	SET entry_idx_300, #$4F 
	RTS
; ---------------------------------------------------------------------------

check_room_8E_12ABD5:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$8E, check_room_60_12ABE9
	IF_A_EQUAL_CMP_ADDR byte_565, #0, check_room_60_12ABE9
	SET entry_idx_300, #$50 
	RTS
; ---------------------------------------------------------------------------

check_room_60_12ABE9:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$60, check_room_6B_12ABFD
	IF_A_EQUAL_CMP_ADDR byte_566, #0, check_room_6B_12ABFD
	SET entry_idx_300, #$97 
	RTS
; ---------------------------------------------------------------------------

check_room_6B_12ABFD:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$6B, check_room_67_12AC11
	IF_A_EQUAL_CMP_ADDR byte_585, #0, check_room_67_12AC11
	SET entry_idx_300, #$99 
	RTS
; ---------------------------------------------------------------------------

check_room_67_12AC11:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$67, check_room_69_12AC25
	IF_A_EQUAL_CMP_ADDR byte_586, #0, check_room_69_12AC25
	SET entry_idx_300, #$9B 
	RTS
; ---------------------------------------------------------------------------

check_room_69_12AC25:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$69, check_room_1C_12AC39
	IF_A_EQUAL_CMP_ADDR byte_587, #0, check_room_1C_12AC39
	SET entry_idx_300, #$98 
	RTS
; ---------------------------------------------------------------------------

check_room_1C_12AC39:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$1C, check_room_57_12AC4D
	IF_A_EQUAL_CMP_ADDR byte_588, #0, check_room_57_12AC4D
	SET entry_idx_300, #$87 
	RTS
; ---------------------------------------------------------------------------

check_room_57_12AC4D:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$57, check_room_91_12AC61
	IF_A_NOT_EQUAL_CMP_ADDR byte_646, #0, check_room_91_12AC61
	SET entry_idx_300, #$91 
	RTS
; ---------------------------------------------------------------------------

check_room_91_12AC61:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$91, check_room_5B_12AC75
	IF_A_EQUAL_CMP_ADDR byte_646, #0, check_room_5B_12AC75
	SET entry_idx_300, #$57 
	RTS
; ---------------------------------------------------------------------------

check_room_5B_12AC75:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$5B, check_room_5C_12AC89
	IF_A_EQUAL_CMP_ADDR byte_58F, #0, check_room_5C_12AC89
	SET entry_idx_300, #$92 
	RTS
; ---------------------------------------------------------------------------

check_room_5C_12AC89:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$5C, check_room_92_12AC9D
	IF_A_EQUAL_CMP_ADDR byte_590, #0, check_room_92_12AC9D
	SET entry_idx_300, #$93 
	RTS
; ---------------------------------------------------------------------------

check_room_92_12AC9D:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$92, check_room_93_12ACB1
	IF_A_NOT_EQUAL_CMP_ADDR byte_58F, #0, check_room_93_12ACB1
	SET entry_idx_300, #$5B 
	RTS
; ---------------------------------------------------------------------------

check_room_93_12ACB1:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$93, check_room_52_12ACC5
	IF_A_NOT_EQUAL_CMP_ADDR byte_590, #0, check_room_52_12ACC5
	SET entry_idx_300, #$5C 
	RTS
; ---------------------------------------------------------------------------

check_room_52_12ACC5:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$52, locret_12ACDA
	LOAD_A_MASKED byte_591, byte_592
	BEQ	locret_12ACDA
	SET entry_idx_300, #$8F 
	RTS
; ---------------------------------------------------------------------------

locret_12ACDA:
	RTS
; End of function entry_idx_handler_unk_12AA6D

; =============== S U B	R O U T	I N E =======================================

sub_12ACDB:
	LDA	byte_46E

is_save_game_12ACDE:
	IF_A_NOT_EQUAL_CMP #$1A, loc_12ACE6
	JSR	com_E_load_game_12CD30
	RTS
; ---------------------------------------------------------------------------

loc_12ACE6:
	IF_A_NOT_EQUAL_CMP_ADDR byte_46E, #$2F, loc_12AD06
	SET2 byte_6A6, byte_6A7, #$FF
	SET cur_obj_idx_unk_43A, #1
	JSR	sub_12BF29
	SET cur_obj_idx_unk_43A, #2
	JSR	sub_12BF29
	RTS
; ---------------------------------------------------------------------------

loc_12AD06:
	IF_A_NOT_EQUAL_CMP_ADDR byte_46E, #$30, loc_12AD65
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$77, loc_12AD27
	SET byte_68D, #$FF
	LDX	byte_4D0
	SET {unk_4C2,X}, #$4D 
	INC	byte_4D0
	JMP	loc_12AD58
; ---------------------------------------------------------------------------

loc_12AD27:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$7B, loc_12AD41
	SET byte_68E, #$FF
	LDX	byte_4D0
	SET {unk_4C2,X}, #$4E 
	INC	byte_4D0
	JMP	loc_12AD58
; ---------------------------------------------------------------------------

loc_12AD41:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$80, locret_12AD64
	SET byte_68F, #$FF
	LDX	byte_4D0
	SET {unk_4C2,X}, #$4F 
	INC	byte_4D0

loc_12AD58:
	LOAD_A_MASKED byte_68D, byte_68E
	AND	byte_68F
	STA	byte_6A4

locret_12AD64:
	RTS
; ---------------------------------------------------------------------------

loc_12AD65:
	IF_A_NOT_EQUAL_CMP_ADDR byte_46E, #$27, loc_12ADA0
	SET byte_591, #$FF
	LOAD_A_MASKED byte_591, byte_592
	IF_A_EQUAL_CMP #0, locret_12AD9F
	JSR	entry_idx_handler_unk_12AA6D
	SET image_id_4A4, entry_idx_300
	SET image_offset_4A5, ppu_unk_byte_302
	SET ppu_prev_unk_4A6, ppu_unk_byte_303
	SET ppu_prev_scroll_x_unk_4A7, ppu_scroll_x_304
	SET ppu_prev_scroll_y_unk_4A8, ppu_scroll_y_305
	JSR	exec_b0_c2_12A9A9

locret_12AD9F:
	RTS
; ---------------------------------------------------------------------------

loc_12ADA0:
	IF_A_NOT_EQUAL_CMP_ADDR byte_46E, #$28, loc_12ADDB
	SET byte_592, #$FF
	LOAD_A_MASKED byte_591, byte_592
	IF_A_EQUAL_CMP #0, locret_12ADDA
	JSR	entry_idx_handler_unk_12AA6D
	SET image_id_4A4, entry_idx_300
	SET image_offset_4A5, ppu_unk_byte_302
	SET ppu_prev_unk_4A6, ppu_unk_byte_303
	SET ppu_prev_scroll_x_unk_4A7, ppu_scroll_x_304
	SET ppu_prev_scroll_y_unk_4A8, ppu_scroll_y_305
	JSR	exec_b0_c2_12A9A9

locret_12ADDA:
	RTS
; ---------------------------------------------------------------------------

loc_12ADDB:
	IF_A_NOT_EQUAL_CMP_ADDR byte_46E, #$39, loc_12ADE8
	SET byte_587, #$FF
	RTS
; ---------------------------------------------------------------------------

loc_12ADE8:
	IF_A_NOT_EQUAL_CMP_ADDR byte_46E, #0, loc_12ADF5
	SET byte_64C, #$FF
	RTS
; ---------------------------------------------------------------------------

loc_12ADF5:
	IF_A_NOT_EQUAL_CMP_ADDR byte_46E, #$15, loc_12AE02
	SET byte_59B, #$FF
	RTS
; ---------------------------------------------------------------------------

loc_12AE02:
	IF_A_NOT_EQUAL_CMP_ADDR byte_46E, #$16, loc_12AE0F
	SET byte_59C, #$FF
	RTS
; ---------------------------------------------------------------------------

loc_12AE0F:
	IF_A_NOT_EQUAL_CMP_ADDR byte_46E, #$2A, loc_12AE6C
	IF_A_EQUAL_CMP_ADDR entry_idx_300, #$53, loc_12AE3F
	IF_A_EQUAL_CMP #$90, loc_12AE3F
	IF_A_EQUAL_CMP #$5C, loc_12AE34
	IF_A_EQUAL_CMP #$93, loc_12AE34
	XOR_BYTE  byte_58F, #$FF
	JMP	loc_12AE47
; ---------------------------------------------------------------------------

loc_12AE34:
	XOR_BYTE  byte_590, #$FF
	JMP	loc_12AE47
; ---------------------------------------------------------------------------

loc_12AE3F:
	XOR_BYTE  byte_58C, #$FF

loc_12AE47:
	JSR	entry_idx_handler_unk_12AA6D
	SET image_id_4A4, entry_idx_300
	SET image_offset_4A5, ppu_unk_byte_302
	SET ppu_prev_unk_4A6, ppu_unk_byte_303
	SET ppu_prev_scroll_x_unk_4A7, ppu_scroll_x_304
	SET ppu_prev_scroll_y_unk_4A8, ppu_scroll_y_305
	JSR	exec_b0_c2_12A9A9
	RTS
; ---------------------------------------------------------------------------

loc_12AE6C:
	IF_A_EQUAL_CMP_ADDR byte_46E, #$2E, loc_12AE76
	JMP	loc_12AF01
; ---------------------------------------------------------------------------

loc_12AE76:
	IF_A_EQUAL_CMP_ADDR entry_idx_300, #$70, loc_12AE86
	SET2 byte_636, byte_633, #$FF
	RTS
; ---------------------------------------------------------------------------

loc_12AE86:
	SET byte_6CA, #$FF
	SET byte_313, #1
	JSR	exec_b0_c9_1284AA
	SET_TEXT_ARGS #$81, #1
	SET tilemapTypeUnk_30B, #2
	JSR	exec_b0_c0_12A973
	SET tilemapData_4C, #1
	SET room_pos_x_4D, #1
	SET room_pos_y_4E, #3
	SET tilemap_line_idx_4F, #3
	JSR	exec_b0_cB_1284E0
	SET tilemapData_4C, #1
	SET room_pos_x_4D, #1
	SET room_pos_y_4E, #3
	SET tilemap_line_idx_4F, #1
	JSR	exec_b0_cB_1284E0
	SET_TEXT_ARGS #$84, #1
	SET tilemapTypeUnk_30B, #6
	JSR	exec_b0_c0_12A973

set_helipad_level_12AEDD:
	SET image_id_4A4, #$9A 
	SET5 image_offset_4A5, ppu_prev_unk_4A6, ppu_prev_scroll_x_unk_4A7, ppu_prev_scroll_y_unk_4A8, prev_sprite_type_4A9, #0
	SET byte_4AD, #$40 
	SET byte_4AE, #$50 
	JSR	exec_b0_c2_12A9A9
	RTS
; ---------------------------------------------------------------------------

loc_12AF01:
	IF_A_NOT_EQUAL_CMP_ADDR byte_46E, #2, loc_12AF16
	SET byte_5EF, #$FF
	SET cur_obj_idx_unk_43A, #0
	JSR	sub_12BF29
	RTS
; ---------------------------------------------------------------------------

loc_12AF16:
	IF_A_NOT_EQUAL_CMP_ADDR byte_46E, #$3B, loc_12AF2B
	SET byte_5F9, #$FF
	SET cur_obj_idx_unk_43A, #0
	JSR	sub_12BF29
	RTS
; ---------------------------------------------------------------------------

loc_12AF2B:
	IF_A_NOT_EQUAL_CMP_ADDR byte_46E, #$2C, loc_12AF69
	SET byte_5E7, #0
	SET cur_obj_idx_unk_43A, #8
	JSR	exec_b0_c3_128418
	SET cur_obj_idx_unk_43A, #9
	JSR	exec_b0_c3_128418
	SET image_id_4A4, entry_idx_300
	SET image_offset_4A5, ppu_unk_byte_302
	SET ppu_prev_unk_4A6, ppu_unk_byte_303
	SET ppu_prev_scroll_x_unk_4A7, ppu_scroll_x_304
	SET ppu_prev_scroll_y_unk_4A8, ppu_scroll_y_305
	JSR	exec_b0_c2_12A9A9
	RTS
; ---------------------------------------------------------------------------

loc_12AF69:
	IF_A_NOT_EQUAL_CMP_ADDR byte_46E, #$24, loc_12AF9A
	SET byte_586, #$FF
	JSR	entry_idx_handler_unk_12AA6D
	SET image_id_4A4, entry_idx_300
	SET image_offset_4A5, ppu_unk_byte_302
	SET ppu_prev_unk_4A6, ppu_unk_byte_303
	SET ppu_prev_scroll_x_unk_4A7, ppu_scroll_x_304
	SET ppu_prev_scroll_y_unk_4A8, ppu_scroll_y_305
	JSR	exec_b0_c2_12A9A9
	RTS
; ---------------------------------------------------------------------------

loc_12AF9A:
	IF_A_NOT_EQUAL_CMP_ADDR byte_46E, #$17, loc_12AFA7
	SET byte_5CB, #$FF
	RTS
; ---------------------------------------------------------------------------

loc_12AFA7:
	IF_A_NOT_EQUAL_CMP_ADDR byte_46E, #$18, loc_12AFB4
	SET byte_59D, #$FF
	RTS
; ---------------------------------------------------------------------------

loc_12AFB4:
	IF_A_NOT_EQUAL_CMP_ADDR byte_46E, #$13, loc_12AFC1
	SET byte_599, #$FF
	RTS
; ---------------------------------------------------------------------------

loc_12AFC1:
	IF_A_NOT_EQUAL_CMP_ADDR byte_46E, #$14, loc_12AFCE
	SET byte_59A, #$FF
	RTS
; ---------------------------------------------------------------------------

loc_12AFCE:
	IF_A_NOT_EQUAL_CMP_ADDR byte_46E, #$22, loc_12AFE3
	SET byte_5D9, #$FF
	SET cur_obj_idx_unk_43A, #0
	JSR	sub_12BF29
	RTS
; ---------------------------------------------------------------------------

loc_12AFE3:
	IF_A_NOT_EQUAL_CMP_ADDR byte_46E, #$23, loc_12AFF8
	SET byte_5B3, #$FF
	SET cur_obj_idx_unk_43A, #1
	JSR	sub_12BF29
	RTS
; ---------------------------------------------------------------------------

loc_12AFF8:
	IF_A_NOT_EQUAL_CMP_ADDR byte_46E, #$2D, loc_12B03B
	SET_TEXT_ARGS #$BC, #1
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	SET byte_55F, #$FF
	JSR	entry_idx_handler_unk_12AA6D
	SET image_id_4A4, entry_idx_300
	SET image_offset_4A5, ppu_unk_byte_302
	SET ppu_prev_unk_4A6, ppu_unk_byte_303
	SET ppu_prev_scroll_x_unk_4A7, ppu_scroll_x_304
	SET ppu_prev_scroll_y_unk_4A8, ppu_scroll_y_305
	JSR	exec_b0_c2_12A9A9
	RTS
; ---------------------------------------------------------------------------

loc_12B03B:
	IF_A_NOT_EQUAL_CMP #$1C, loc_12B074
	IF_A_EQUAL_CMP_ADDR entry_idx_300, #$1E, loc_12B054
	SET byte_5A8, #$FF
	SET cur_obj_idx_unk_43A, #0
	JSR	sub_12BF29
	RTS
; ---------------------------------------------------------------------------

loc_12B054:
	SET byte_5BD, #$FF
	SET cur_obj_idx_unk_43A, #7
	JSR	sub_12BF29
	SET_TEXT_ARGS #6, #2
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; ---------------------------------------------------------------------------

loc_12B074:
	IF_A_NOT_EQUAL_CMP #$1D, loc_12B0E2
	IF_A_EQUAL_CMP_ADDR entry_idx_300, #$1E, loc_12B0C2
	SET byte_5A9, #$FF
	SET cur_obj_idx_unk_43A, #2
	IF_A_EQUAL_CMP_ADDR entry_idx_300, #$17, loc_12B095
	SET cur_obj_idx_unk_43A, #1

loc_12B095:
	JSR	sub_12BF29
	SET byte_5BE, #$FF
	JSR	entry_idx_handler_unk_12AA6D
	SET image_id_4A4, entry_idx_300
	SET image_offset_4A5, ppu_unk_byte_302
	SET ppu_prev_unk_4A6, ppu_unk_byte_303
	SET ppu_prev_scroll_x_unk_4A7, ppu_scroll_x_304
	SET ppu_prev_scroll_y_unk_4A8, ppu_scroll_y_305
	JSR	exec_b0_c2_12A9A9
	RTS
; ---------------------------------------------------------------------------

loc_12B0C2:
	SET byte_5BC, #$FF
	SET cur_obj_idx_unk_43A, #6
	JSR	sub_12BF29
	SET_TEXT_ARGS #6, #2
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; ---------------------------------------------------------------------------

loc_12B0E2:
	IF_A_NOT_EQUAL_CMP #$1B, loc_12B106
	SET_TEXT_ARGS #6, #1
	SET tilemapTypeUnk_30B, #4
	JSR	exec_b0_c0_12A973
	SET byte_545, #1
	SET2 byte_562, byte_6C7, #$FF
	RTS
; ---------------------------------------------------------------------------

loc_12B106:
	IF_A_NOT_EQUAL_CMP #$1E, loc_12B11F
	SET byte_59F, #$FF
	LOAD_A_MASKED byte_59F, byte_5A0
	AND	byte_5A1
	AND	byte_5A2
	STA	byte_6C8
	RTS
; ---------------------------------------------------------------------------

loc_12B11F:
	IF_A_NOT_EQUAL_CMP #$1F, loc_12B138
	SET byte_5A0, #$FF
	LOAD_A_MASKED byte_59F, byte_5A0
	AND	byte_5A1
	AND	byte_5A2
	STA	byte_6C8
	RTS
; ---------------------------------------------------------------------------

loc_12B138:
	IF_A_NOT_EQUAL_CMP #$20, loc_12B151
	SET byte_5A1, #$FF
	LOAD_A_MASKED byte_59F, byte_5A0
	AND	byte_5A1
	AND	byte_5A2
	STA	byte_6C8
	RTS
; ---------------------------------------------------------------------------

loc_12B151:
	IF_A_NOT_EQUAL_CMP #$21, loc_12B16A
	SET byte_5A2, #$FF
	LOAD_A_MASKED byte_59F, byte_5A0
	AND	byte_5A1
	AND	byte_5A2
	STA	byte_6C8
	RTS
; ---------------------------------------------------------------------------

loc_12B16A:
	IF_A_NOT_EQUAL_CMP #$29, locret_12B1AF
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$4F, loc_12B17D
	SET byte_565, #$FF
	JMP	loc_12B18A
; ---------------------------------------------------------------------------

loc_12B17D:
	IF_A_NOT_EQUAL_CMP #$8D, locret_12B189
	SET byte_565, #0
	JMP	loc_12B18A
; ---------------------------------------------------------------------------

locret_12B189:
	RTS
; ---------------------------------------------------------------------------

loc_12B18A:
	JSR	entry_idx_handler_unk_12AA6D
	SET image_id_4A4, entry_idx_300
	SET image_offset_4A5, ppu_unk_byte_302
	SET ppu_prev_unk_4A6, ppu_unk_byte_303
	SET ppu_prev_scroll_x_unk_4A7, ppu_scroll_x_304
	SET ppu_prev_scroll_y_unk_4A8, ppu_scroll_y_305
	JSR	exec_b0_c2_12A9A9
	RTS
; ---------------------------------------------------------------------------

locret_12B1AF:
	RTS
; End of function sub_12ACDB

; =============== S U B	R O U T	I N E =======================================

sub_12B1B0:
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_12B1B8
	RTS
; ---------------------------------------------------------------------------

loc_12B1B8:
	SET_TEXT_ARGS #$AA, #1
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; End of function sub_12B1B0

; =============== S U B	R O U T	I N E =======================================

sub_12B1CB:
	LDY	#0
	LDX	#0

loc_12B1CF:
	IF_A_EQUAL {byte_555,X}, loc_12B1D5
	INY

loc_12B1D5:
	INX
	IF_X_GREATER_CMP #6, loc_12B1CF
	INY
	RTS
; End of function sub_12B1CB

; ---------------------------------------------------------------------------
byte_12B1DC:
	.BYTE	5,  1,	4,  2,	3,  6,	0 

; =============== S U B	R O U T	I N E =======================================

sub_12B1E3:
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_12B1EB
	RTS
; ---------------------------------------------------------------------------

loc_12B1EB:
	SET_TEXT_ARGS #$AB, #1
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	IF_A_NOT_EQUAL byte_55B, locret_12B224
	SET_TEXT_ARGS #$B3, #1
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c1_12A98E
	IF_A_EQUAL_CMP_ADDR byte_372, #1, locret_12B224
	JSR	sub_12B1CB
	STY	byte_555

locret_12B224:
	RTS
; End of function sub_12B1E3

; =============== S U B	R O U T	I N E =======================================

sub_12B225:
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_12B22D
	RTS
; ---------------------------------------------------------------------------

loc_12B22D:
	SET_TEXT_ARGS #$AC, #1
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	IF_A_NOT_EQUAL byte_55B, locret_12B266
	SET_TEXT_ARGS #$B3, #1
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c1_12A98E
	IF_A_EQUAL_CMP_ADDR byte_372, #1, locret_12B266
	JSR	sub_12B1CB
	STY	byte_556

locret_12B266:
	RTS
; End of function sub_12B225

; =============== S U B	R O U T	I N E =======================================

sub_12B267:
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_12B26F
	RTS
; ---------------------------------------------------------------------------

loc_12B26F:
	SET_TEXT_ARGS #$AD, #1
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	IF_A_NOT_EQUAL byte_55B, locret_12B2A8
	SET_TEXT_ARGS #$B3, #1
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c1_12A98E
	IF_A_EQUAL_CMP_ADDR byte_372, #1, locret_12B2A8
	JSR	sub_12B1CB
	STY	byte_557

locret_12B2A8:
	RTS
; End of function sub_12B267

; =============== S U B	R O U T	I N E =======================================

sub_12B2A9:
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_12B2B1
	RTS
; ---------------------------------------------------------------------------

loc_12B2B1:
	SET_TEXT_ARGS #$AE, #1
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	IF_A_NOT_EQUAL byte_55B, locret_12B2EA
	SET_TEXT_ARGS #$B3, #1
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c1_12A98E
	IF_A_EQUAL_CMP_ADDR byte_372, #1, locret_12B2EA
	JSR	sub_12B1CB
	STY	byte_558

locret_12B2EA:
	RTS
; End of function sub_12B2A9

; =============== S U B	R O U T	I N E =======================================

sub_12B2EB:
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_12B2F3
	RTS
; ---------------------------------------------------------------------------

loc_12B2F3:
	SET_TEXT_ARGS #$AF, #1
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	IF_A_NOT_EQUAL byte_55B, locret_12B32C
	SET_TEXT_ARGS #$B3, #1
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c1_12A98E
	IF_A_EQUAL_CMP_ADDR byte_372, #1, locret_12B32C
	JSR	sub_12B1CB
	STY	byte_559

locret_12B32C:
	RTS
; End of function sub_12B2EB

; =============== S U B	R O U T	I N E =======================================

sub_12B32D:
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_12B335
	RTS
; ---------------------------------------------------------------------------

loc_12B335:
	SET_TEXT_ARGS #$B0, #1
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	IF_A_NOT_EQUAL byte_55B, locret_12B36E
	SET_TEXT_ARGS #$B3, #1
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c1_12A98E
	IF_A_EQUAL_CMP_ADDR byte_372, #1, locret_12B36E
	JSR	sub_12B1CB
	STY	byte_55A

locret_12B36E:
	RTS
; End of function sub_12B32D

; =============== S U B	R O U T	I N E =======================================

sub_12B36F:
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_12B377
	RTS
; ---------------------------------------------------------------------------

loc_12B377:
	IF_A_EQUAL byte_55B, loc_12B37F
	JMP	locret_12B403
; ---------------------------------------------------------------------------

loc_12B37F:
	SET_TEXT_ARGS #$B1, #1
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	SET_TEXT_ARGS #$B3, #1
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c1_12A98E
	IF_A_EQUAL_CMP_ADDR byte_372, #1, locret_12B403
	LDX	#0

loc_12B3AF:
	IF_A_NOT_EQUAL_CMP_ADDR {byte_12B1DC,X}, {byte_555,X}, loc_12B3E8
	INX
	IF_X_GREATER_CMP #6, loc_12B3AF
	SET byte_55B, #$F
	JSR	entry_idx_handler_unk_12AA6D
	SET image_id_4A4, entry_idx_300
	SET image_offset_4A5, ppu_unk_byte_302
	SET ppu_prev_unk_4A6, ppu_unk_byte_303
	SET ppu_prev_scroll_x_unk_4A7, ppu_scroll_x_304
	SET ppu_prev_scroll_y_unk_4A8, ppu_scroll_y_305
	JSR	exec_b0_c2_12A9A9
	JMP	locret_12B403
; ---------------------------------------------------------------------------

loc_12B3E8:
	SET2 byte_627, byte_628, #$FF
	SET cur_obj_idx_unk_43A, #0
	JSR	sub_12BF29
	SET cur_obj_idx_unk_43A, #1
	JSR	sub_12BF29
	JMP	locret_12B403
; ---------------------------------------------------------------------------

locret_12B403:
	RTS
; End of function sub_12B36F

; =============== S U B	R O U T	I N E =======================================

sub_12B404:
	IF_A_NOT_EQUAL_CMP_ADDR byte_471, #0, loc_12B41E
	SET_TEXT_ARGS #$A7, #1
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; ---------------------------------------------------------------------------

loc_12B41E:
	IF_A_NOT_EQUAL_CMP_ADDR byte_59F, #$FF, loc_12B43B
	IF_A_NOT_EQUAL_CMP_ADDR byte_5A0, #$FF, loc_12B43B
	IF_A_NOT_EQUAL_CMP_ADDR byte_5A1, #$FF, loc_12B43B
	IF_A_NOT_EQUAL_CMP_ADDR byte_5A2, #$FF, loc_12B43B
	RTS
; ---------------------------------------------------------------------------

loc_12B43B:
	SET byte_46D, #$1E
	RTS
; End of function sub_12B404

; =============== S U B	R O U T	I N E =======================================

sub_12B441:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$24, loc_12B45E
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #$1A, loc_12B458
	SET byte_5E2, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B458:
	SET byte_6B0, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B45E:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$25, loc_12B47F
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #$1A, loc_12B475
	SET byte_5E3, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B475:
	IF_A_NOT_EQUAL_CMP #6, locret_12B47E
	SET byte_5E6, #0

locret_12B47E:
	RTS
; ---------------------------------------------------------------------------

loc_12B47F:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$1E, loc_12B4D9
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #$A, loc_12B4A3
	IF_A_NOT_EQUAL_CMP_ADDR byte_434, #4, loc_12B49D
	SET byte_5B9, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B49D:
	SET byte_5BA, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B4A3:
	IF_A_NOT_EQUAL_CMP #$B, loc_12B4C8
	IF_A_NOT_EQUAL_CMP_ADDR byte_434, #1, loc_12B4B4
	SET byte_5B6, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B4B4:
	IF_A_NOT_EQUAL_CMP #2, loc_12B4BE
	SET byte_5B7, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B4BE:
	IF_A_NOT_EQUAL_CMP #3, locret_12B4C7
	SET byte_5B8, #0

locret_12B4C7:
	RTS
; ---------------------------------------------------------------------------

loc_12B4C8:
	IF_A_NOT_EQUAL_CMP #$13, loc_12B4D2
	SET byte_5B5, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B4D2:
	JMP	loc_12BD54
; ---------------------------------------------------------------------------
	RTS
; ---------------------------------------------------------------------------
	JMP	loc_12BD54
; ---------------------------------------------------------------------------

loc_12B4D9:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$6E, loc_12B52B
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #6, loc_12B503
	IF_A_NOT_EQUAL_CMP_ADDR byte_434, #1, loc_12B4FA
	SET byte_5CD, #0
	RTS
; ---------------------------------------------------------------------------
	JMP	loc_12BD54
; ---------------------------------------------------------------------------

loc_12B4FA:
	SET byte_5CE, #0
	RTS
; ---------------------------------------------------------------------------
	JMP	loc_12BD54
; ---------------------------------------------------------------------------

loc_12B503:
	IF_A_NOT_EQUAL_CMP #7, loc_12B51D
	IF_A_NOT_EQUAL_CMP_ADDR byte_434, #2, loc_12B517
	SET byte_5CF, #0
	RTS
; ---------------------------------------------------------------------------
	JMP	loc_12BD54
; ---------------------------------------------------------------------------

loc_12B517:
	SET byte_5D0, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B51D:
	IF_A_NOT_EQUAL_CMP #$17, locret_12B527
	SET byte_5CC, #0
	RTS
; ---------------------------------------------------------------------------

locret_12B527:
	RTS
; ---------------------------------------------------------------------------
	JMP	loc_12BD54
; ---------------------------------------------------------------------------

loc_12B52B:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$1C, loc_12B58E
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #6, loc_12B545
	SET byte_5D7, #0
	RTS
; ---------------------------------------------------------------------------
	JMP	loc_12BD54
; ---------------------------------------------------------------------------

loc_12B545:
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #7, loc_12B552
	SET byte_5D6, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B552:
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #$47, locret_12B58A
	SET byte_6A8, #0
	SET2 byte_588, byte_5D8, #$FF
	JSR	entry_idx_handler_unk_12AA6D
	SET image_id_4A4, entry_idx_300
	SET image_offset_4A5, ppu_unk_byte_302
	SET ppu_prev_unk_4A6, ppu_unk_byte_303
	SET ppu_prev_scroll_x_unk_4A7, ppu_scroll_x_304
	SET ppu_prev_scroll_y_unk_4A8, ppu_scroll_y_305
	JSR	exec_b0_c2_12A9A9

locret_12B58A:
	RTS
; ---------------------------------------------------------------------------
	JMP	loc_12BD54
; ---------------------------------------------------------------------------

loc_12B58E:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$87, loc_12B5A8
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #6, loc_12B545
	SET byte_5D7, #0
	RTS
; ---------------------------------------------------------------------------
	JMP	loc_12BD54
; ---------------------------------------------------------------------------

loc_12B5A8:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$20, loc_12B5CC
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #6, loc_12B5BF
	SET byte_5DD, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B5BF:
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #$3B, locret_12B5CB
	SET byte_5DC, #0

locret_12B5CB:
	RTS
; ---------------------------------------------------------------------------

loc_12B5CC:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$21, loc_12B5F0
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #$1A, loc_12B5E3
	SET byte_5DE, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B5E3:
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #$1B, locret_12B5EF
	SET byte_5C3, #0

locret_12B5EF:
	RTS
; ---------------------------------------------------------------------------

loc_12B5F0:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$16, loc_12B606
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #$1A, loc_12B606
	SET byte_5EA, #0

loc_12B606:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$26, loc_12B61C
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #$B, loc_12B61C
	SET byte_5EB, #0

loc_12B61C:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$27, loc_12B636
	IF_A_NOT_EQUAL_CMP_ADDR byte_434, #0, loc_12B630
	SET byte_5EC, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B630:
	SET byte_5ED, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B636:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$28, loc_12B64C
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #6, loc_12B64C
	SET byte_5EE, #0

loc_12B64C:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$2A, loc_12B662
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #$14, loc_12B662
	SET byte_5EF, #0

loc_12B662:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$2C, loc_12B678
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #$B, loc_12B678
	SET byte_5F3, #0

loc_12B678:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$2E, loc_12B69C
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #8, loc_12B68F
	SET byte_5F4, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B68F:
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #$25, locret_12B69B
	SET byte_5F5, #0

locret_12B69B:
	RTS
; ---------------------------------------------------------------------------

loc_12B69C:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$2D, loc_12B6C0
	IF_A_NOT_EQUAL_CMP_ADDR byte_434, #1, loc_12B6B0
	SET byte_5F7, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B6B0:
	IF_A_NOT_EQUAL_CMP #2, loc_12B6BA
	SET byte_5F8, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B6BA:
	SET byte_5B4, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B6C0:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$32, loc_12B6E8
	IF_A_NOT_EQUAL_CMP_ADDR byte_434, #0, loc_12B6D4
	SET byte_5FB, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B6D4:
	IF_A_NOT_EQUAL_CMP #1, loc_12B6DE
	SET byte_5FA, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B6DE:
	IF_A_NOT_EQUAL_CMP #3, locret_12B6E7
	SET byte_6B2, #0

locret_12B6E7:
	RTS
; ---------------------------------------------------------------------------

loc_12B6E8:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$34, loc_12B6FF
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #7, loc_12B6FF
	SET byte_601, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B6FF:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$38, loc_12B72D
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #7, loc_12B716
	SET byte_604, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B716:
	IF_A_NOT_EQUAL_CMP #$52, loc_12B720
	SET byte_6AE, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B720:
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #8, locret_12B72C
	SET byte_605, #0

locret_12B72C:
	RTS
; ---------------------------------------------------------------------------

loc_12B72D:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$3A, loc_12B747
	IF_A_NOT_EQUAL_CMP_ADDR byte_434, #0, loc_12B741
	SET byte_608, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B741:
	SET byte_609, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B747:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$3B, loc_12B783
	IF_A_NOT_EQUAL_CMP_ADDR byte_434, #0, loc_12B75B
	SET byte_60D, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B75B:
	IF_A_NOT_EQUAL_CMP #1, loc_12B765
	SET byte_60E, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B765:
	IF_A_NOT_EQUAL_CMP #2, loc_12B76F
	SET byte_611, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B76F:
	IF_A_NOT_EQUAL_CMP #3, loc_12B779
	SET byte_610, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B779:
	IF_A_NOT_EQUAL_CMP #4, locret_12B782
	SET byte_60F, #0

locret_12B782:
	RTS
; ---------------------------------------------------------------------------

loc_12B783:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$3C, loc_12B7A4
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #8, loc_12B79A
	SET byte_613, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B79A:
	IF_A_NOT_EQUAL_CMP #$4A, locret_12B7A3
	SET byte_6AB, #0

locret_12B7A3:
	RTS
; ---------------------------------------------------------------------------

loc_12B7A4:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$3E, loc_12B7BB
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #6, locret_12B7BA
	SET byte_615, #0

locret_12B7BA:
	RTS
; ---------------------------------------------------------------------------

loc_12B7BB:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$42, loc_12B7D9
	IF_A_NOT_EQUAL_CMP_ADDR byte_434, #1, loc_12B7CF
	SET byte_61C, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B7CF:
	IF_A_NOT_EQUAL_CMP #2, locret_12B7D8
	SET byte_61B, #0

locret_12B7D8:
	RTS
; ---------------------------------------------------------------------------

loc_12B7D9:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$9C, loc_12B7F0
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #9, locret_12B7EF
	SET byte_61D, #0

locret_12B7EF:
	RTS
; ---------------------------------------------------------------------------

loc_12B7F0:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$45, loc_12B811
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #7, loc_12B807
	SET byte_61E, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B807:
	IF_A_NOT_EQUAL_CMP #$1F, locret_12B810
	SET byte_5C4, #0

locret_12B810:
	RTS
; ---------------------------------------------------------------------------

loc_12B811:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$47, loc_12B832
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #7, loc_12B828
	SET byte_61F, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B828:
	IF_A_NOT_EQUAL_CMP #$53, locret_12B831
	SET byte_6AF, #0

locret_12B831:
	RTS
; ---------------------------------------------------------------------------

loc_12B832:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$4A, loc_12B853
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #$2B, loc_12B849
	SET byte_622, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B849:
	IF_A_NOT_EQUAL_CMP #$C, locret_12B852
	SET byte_623, #0

locret_12B852:
	RTS
; ---------------------------------------------------------------------------

loc_12B853:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$4B, loc_12B87E
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #9, loc_12B86A
	SET byte_624, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B86A:
	IF_A_NOT_EQUAL_CMP #6, loc_12B874
	SET byte_625, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B874:
	IF_A_NOT_EQUAL_CMP #$48, locret_12B87D
	SET byte_6A9, #0

locret_12B87D:
	RTS
; ---------------------------------------------------------------------------

loc_12B87E:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$4C, loc_12B89F
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #$B, loc_12B895
	SET byte_626, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B895:
	IF_A_NOT_EQUAL_CMP #$3E, locret_12B89E
	SET byte_6B1, #0

locret_12B89E:
	RTS
; ---------------------------------------------------------------------------

loc_12B89F:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$4E, loc_12B8DB
	IF_A_NOT_EQUAL_CMP_ADDR byte_434, #0, loc_12B8B3
	SET byte_62A, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B8B3:
	IF_A_NOT_EQUAL_CMP #1, loc_12B8BD
	SET byte_62B, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B8BD:
	IF_A_NOT_EQUAL_CMP #2, loc_12B8C7
	SET byte_62C, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B8C7:
	IF_A_NOT_EQUAL_CMP #3, loc_12B8D1
	SET byte_62D, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B8D1:
	IF_A_NOT_EQUAL_CMP #4, locret_12B8DA
	SET byte_6B3, #0

locret_12B8DA:
	RTS
; ---------------------------------------------------------------------------

loc_12B8DB:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$51, loc_12B90D
	IF_A_NOT_EQUAL_CMP_ADDR byte_434, #0, loc_12B8EF
	SET byte_637, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B8EF:
	IF_A_NOT_EQUAL_CMP #1, loc_12B8F9
	SET byte_638, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B8F9:
	IF_A_NOT_EQUAL_CMP #2, loc_12B903
	SET byte_639, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B903:
	IF_A_NOT_EQUAL_CMP #3, locret_12B90C
	SET byte_63A, #0

locret_12B90C:
	RTS
; ---------------------------------------------------------------------------

loc_12B90D:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$53, loc_12B924
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #$1A, locret_12B923
	SET byte_63D, #0

locret_12B923:
	RTS
; ---------------------------------------------------------------------------

loc_12B924:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$90, loc_12B93B
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #$1A, locret_12B93A
	SET byte_63D, #0

locret_12B93A:
	RTS
; ---------------------------------------------------------------------------

loc_12B93B:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$55, loc_12B95C
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #$12, loc_12B952
	SET byte_641, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B952:
	IF_A_NOT_EQUAL_CMP #9, locret_12B95B
	SET byte_642, #0

locret_12B95B:
	RTS
; ---------------------------------------------------------------------------

loc_12B95C:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$56, loc_12B97D
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #$2A, loc_12B973
	SET byte_643, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B973:
	IF_A_NOT_EQUAL_CMP #9, locret_12B97C
	SET byte_644, #0

locret_12B97C:
	RTS
; ---------------------------------------------------------------------------

loc_12B97D:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$57, loc_12B994
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #9, locret_12B993
	SET byte_645, #0

locret_12B993:
	RTS
; ---------------------------------------------------------------------------

loc_12B994:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$91, loc_12B9AB
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #9, locret_12B9AA
	SET byte_645, #0

locret_12B9AA:
	RTS
; ---------------------------------------------------------------------------

loc_12B9AB:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$58, loc_12B9C2
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #0, locret_12B9C1
	SET byte_64B, #0

locret_12B9C1:
	RTS
; ---------------------------------------------------------------------------

loc_12B9C2:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$5A, loc_12B9ED
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #$C, loc_12B9D9
	SET byte_64D, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B9D9:
	IF_A_NOT_EQUAL_CMP #$1A, loc_12B9E3
	SET byte_64F, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B9E3:
	IF_A_NOT_EQUAL_CMP #$12, locret_12B9EC
	SET byte_64E, #0

locret_12B9EC:
	RTS
; ---------------------------------------------------------------------------

loc_12B9ED:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$5B, loc_12BA0E
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #$30, loc_12BA04
	SET byte_650, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BA04:
	IF_A_NOT_EQUAL_CMP #$40, locret_12BA0D
	SET byte_6B4, #0

locret_12BA0D:
	RTS
; ---------------------------------------------------------------------------

loc_12BA0E:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$92, loc_12BA25
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #$30, locret_12BA24
	SET byte_650, #0

locret_12BA24:
	RTS
; ---------------------------------------------------------------------------

loc_12BA25:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$5D, loc_12BA57
	IF_A_NOT_EQUAL_CMP_ADDR byte_434, #0, loc_12BA39
	SET byte_655, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BA39:
	IF_A_NOT_EQUAL_CMP #1, loc_12BA43
	SET byte_656, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BA43:
	IF_A_NOT_EQUAL_CMP #2, loc_12BA4D
	SET byte_657, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BA4D:
	IF_A_NOT_EQUAL_CMP #3, locret_12BA56
	SET byte_658, #0

locret_12BA56:
	RTS
; ---------------------------------------------------------------------------

loc_12BA57:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$5E, loc_12BA78
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #9, loc_12BA6E
	SET byte_65A, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BA6E:
	IF_A_NOT_EQUAL_CMP #$12, locret_12BA77
	SET byte_65B, #0

locret_12BA77:
	RTS
; ---------------------------------------------------------------------------

loc_12BA78:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$5F, loc_12BA99
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #$24, loc_12BA8F
	SET byte_5C5, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BA8F:
	IF_A_NOT_EQUAL_CMP #7, locret_12BA98
	SET byte_65C, #0

locret_12BA98:
	RTS
; ---------------------------------------------------------------------------

loc_12BA99:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$60, loc_12BABA
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #9, loc_12BAB0
	SET byte_65D, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BAB0:
	IF_A_NOT_EQUAL_CMP #$18, locret_12BAB9
	SET byte_5C8, #0

locret_12BAB9:
	RTS
; ---------------------------------------------------------------------------

loc_12BABA:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$97, loc_12BADB
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #9, loc_12BAD1
	SET byte_65D, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BAD1:
	IF_A_NOT_EQUAL_CMP #$18, locret_12BADA
	SET byte_5C8, #0

locret_12BADA:
	RTS
; ---------------------------------------------------------------------------

loc_12BADB:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$61, loc_12BB06
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #6, loc_12BAF2
	SET byte_65F, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BAF2:
	IF_A_NOT_EQUAL_CMP #$55, loc_12BAFC
	SET byte_6BC, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BAFC:
	IF_A_NOT_EQUAL_CMP #$1A, locret_12BB05
	SET byte_660, #0

locret_12BB05:
	RTS
; ---------------------------------------------------------------------------

loc_12BB06:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$62, loc_12BB24
	IF_A_NOT_EQUAL_CMP_ADDR byte_434, #0, loc_12BB1A
	SET byte_663, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BB1A:
	IF_A_NOT_EQUAL_CMP #1, locret_12BB23
	SET byte_664, #0

locret_12BB23:
	RTS
; ---------------------------------------------------------------------------

loc_12BB24:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$65, loc_12BB4F
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #8, loc_12BB3B
	SET byte_66D, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BB3B:
	IF_A_NOT_EQUAL_CMP #$41, loc_12BB45
	SET byte_6B5, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BB45:
	IF_A_NOT_EQUAL_CMP #$49, locret_12BB4E
	SET byte_6AA, #0

locret_12BB4E:
	RTS
; ---------------------------------------------------------------------------

loc_12BB4F:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$67, loc_12BB70
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #7, loc_12BB66
	SET byte_66F, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BB66:
	IF_A_NOT_EQUAL_CMP #$4C, locret_12BB6F
	SET byte_6AC, #0

locret_12BB6F:
	RTS
; ---------------------------------------------------------------------------

loc_12BB70:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$9B, loc_12BB87
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #7, locret_12BB86
	SET byte_66F, #0

locret_12BB86:
	RTS
; ---------------------------------------------------------------------------

loc_12BB87:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$68, loc_12BB9E
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #9, locret_12BB9D
	SET byte_671, #0

locret_12BB9D:
	RTS
; ---------------------------------------------------------------------------

loc_12BB9E:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$6A, loc_12BBC6
	IF_A_NOT_EQUAL_CMP_ADDR byte_434, #3, loc_12BBB2
	SET byte_672, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BBB2:
	IF_A_NOT_EQUAL_CMP #4, loc_12BBBC
	SET byte_673, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BBBC:
	IF_A_NOT_EQUAL_CMP #5, locret_12BBC5
	SET byte_6B6, #0

locret_12BBC5:
	RTS
; ---------------------------------------------------------------------------

loc_12BBC6:
	IF_A_EQUAL_CMP_ADDR entry_idx_300, #$52, loc_12BBD4
	IF_A_EQUAL_CMP #$8F, loc_12BBD4
	JMP	loc_12BC09
; ---------------------------------------------------------------------------

loc_12BBD4:
	IF_A_NOT_EQUAL_CMP_ADDR byte_434, #0, loc_12BBE1
	SET byte_675, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BBE1:
	IF_A_NOT_EQUAL_CMP #1, loc_12BBEB
	SET byte_676, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BBEB:
	IF_A_NOT_EQUAL_CMP #2, loc_12BBF5
	SET byte_677, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BBF5:
	IF_A_NOT_EQUAL_CMP #3, loc_12BBFF
	SET byte_678, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BBFF:
	IF_A_NOT_EQUAL_CMP #4, locret_12BC08
	SET byte_679, #0

locret_12BC08:
	RTS
; ---------------------------------------------------------------------------

loc_12BC09:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$72, loc_12BC3B
	IF_A_NOT_EQUAL_CMP_ADDR byte_434, #2, loc_12BC1D
	SET byte_67E, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BC1D:
	IF_A_NOT_EQUAL_CMP #3, loc_12BC27
	SET byte_67F, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BC27:
	IF_A_NOT_EQUAL_CMP #4, loc_12BC31
	SET byte_680, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BC31:
	IF_A_NOT_EQUAL_CMP #5, locret_12BC3A
	SET byte_681, #0

locret_12BC3A:
	RTS
; ---------------------------------------------------------------------------

loc_12BC3B:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$70, loc_12BC52
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #$2E, locret_12BC51
	SET byte_682, #0

locret_12BC51:
	RTS
; ---------------------------------------------------------------------------

loc_12BC52:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$6F, loc_12BC69
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #$43, locret_12BC68
	SET byte_6B7, #0

locret_12BC68:
	RTS
; ---------------------------------------------------------------------------

loc_12BC69:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$71, loc_12BC80
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #$44, locret_12BC7F
	SET byte_6B8, #0

locret_12BC7F:
	RTS
; ---------------------------------------------------------------------------

loc_12BC80:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$75, loc_12BC97
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #$45, locret_12BC96
	SET byte_6B9, #0

locret_12BC96:
	RTS
; ---------------------------------------------------------------------------

loc_12BC97:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$82, loc_12BCAE
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #$46, locret_12BCAD
	SET byte_6BA, #0

locret_12BCAD:
	RTS
; ---------------------------------------------------------------------------

loc_12BCAE:
	IF_A_EQUAL_CMP_ADDR entry_idx_300, #$76, loc_12BCBC
	IF_A_EQUAL_CMP #$94, loc_12BCBC
	JMP	loc_12BCDC
; ---------------------------------------------------------------------------

loc_12BCBC:
	IF_A_NOT_EQUAL_CMP_ADDR byte_434, #1, loc_12BCC9
	SET byte_685, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BCC9:
	IF_A_NOT_EQUAL_CMP #2, loc_12BCD2
	SET byte_686, #0

loc_12BCD2:
	IF_A_NOT_EQUAL_CMP #3, locret_12BCDB
	SET byte_687, #0

locret_12BCDB:
	RTS
; ---------------------------------------------------------------------------

loc_12BCDC:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$77, loc_12BD04
	IF_A_NOT_EQUAL_CMP_ADDR byte_434, #0, loc_12BCF0
	SET byte_68B, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BCF0:
	IF_A_NOT_EQUAL_CMP #1, loc_12BCFA
	SET byte_68C, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BCFA:
	IF_A_NOT_EQUAL_CMP #5, locret_12BD03
	SET byte_69F, #0

locret_12BD03:
	RTS
; ---------------------------------------------------------------------------

loc_12BD04:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$7E, loc_12BD36
	IF_A_NOT_EQUAL_CMP_ADDR byte_434, #0, loc_12BD18
	SET byte_691, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BD18:
	IF_A_NOT_EQUAL_CMP #1, loc_12BD22
	SET byte_692, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BD22:
	IF_A_NOT_EQUAL_CMP #2, loc_12BD2C
	SET byte_693, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BD2C:
	IF_A_NOT_EQUAL_CMP #3, locret_12BD35
	SET byte_694, #0

locret_12BD35:
	RTS
; ---------------------------------------------------------------------------

loc_12BD36:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$9A, loc_12BD54
	IF_A_NOT_EQUAL_CMP_ADDR byte_434, #0, loc_12BD4A
	SET byte_6A5, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BD4A:
	IF_A_NOT_EQUAL_CMP #1, locret_12BD53
	SET byte_6A6, #0

locret_12BD53:
	RTS
; ---------------------------------------------------------------------------

loc_12BD54:
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,X}, #$20, loc_12BD64
	SET byte_5AD, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BD64:
	IF_A_NOT_EQUAL_CMP #$1C, loc_12BD8D
	IF_A_EQUAL_CMP_ADDR entry_idx_300, #$1E, loc_12BD75
	SET byte_5A8, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BD75:
	SET byte_5BD, #0
	SET_TEXT_ARGS #5, #2
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; ---------------------------------------------------------------------------

loc_12BD8D:
	IF_A_NOT_EQUAL_CMP #$19, loc_12BD9C
	SET byte_683, #0
	SET byte_59E, #$FF
	RTS
; ---------------------------------------------------------------------------

loc_12BD9C:
	IF_A_NOT_EQUAL_CMP #$39, loc_12BDA6
	SET byte_6BB, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BDA6:
	IF_A_NOT_EQUAL_CMP #$50, loc_12BDB0
	SET byte_6AD, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BDB0:
	IF_A_NOT_EQUAL_CMP #$21, loc_12BDBA
	SET byte_5B3, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BDBA:
	IF_A_NOT_EQUAL_CMP #$16, loc_12BDC4
	SET byte_5C9, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BDC4:
	IF_A_NOT_EQUAL_CMP #$2D, loc_12BDCE
	SET byte_5BB, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BDCE:
	IF_A_NOT_EQUAL_CMP #$30, loc_12BDD8
	SET byte_614, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BDD8:
	IF_A_NOT_EQUAL_CMP #$1D, loc_12BE01
	IF_A_EQUAL_CMP_ADDR entry_idx_300, #$1E, loc_12BDE9
	SET byte_5A9, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BDE9:
	SET byte_5BC, #0
	SET_TEXT_ARGS #5, #2
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; ---------------------------------------------------------------------------

loc_12BE01:
	IF_A_NOT_EQUAL_CMP #$14, loc_12BE0B
	SET byte_5BE, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BE0B:
	IF_A_NOT_EQUAL_CMP #$23, loc_12BE15
	SET byte_5AA, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BE15:
	IF_A_NOT_EQUAL_CMP #$15, loc_12BE5D
	SET byte_5D1, #0
	
	LDA	#$FF
	STA	byte_596
	STA	byte_5DA
	STA	byte_5DB
	STA	byte_5E0
	STA	byte_5E1
	STA	byte_5E8
	STA	byte_5E9
	STA	byte_5F0
	STA	byte_5F1
	STA	byte_5F2
	STA	byte_602
	STA	byte_603
	STA	byte_60A
	STA	byte_60B
	STA	byte_60C
	STA	byte_612
	STA	byte_619
	STA	byte_61A
	STA	byte_620
	STA	byte_621
	RTS
; ---------------------------------------------------------------------------

loc_12BE5D:
	IF_A_NOT_EQUAL_CMP #3, loc_12BE67
	SET byte_5D9, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BE67:
	IF_A_NOT_EQUAL_CMP #2, loc_12BE7E
	IF_A_EQUAL_CMP_ADDR byte_5F9, #$FF, loc_12BE78
	SET byte_5EF, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BE78:
	SET byte_5F9, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BE7E:
	IF_A_NOT_EQUAL_CMP #$22, loc_12BE88
	SET byte_606, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BE88:
	IF_A_NOT_EQUAL_CMP #4, loc_12BEAA
	SET byte_616, #0
	SET2 byte_617, byte_618, #$FF
	SET cur_obj_idx_unk_43A, #1
	JSR	sub_12BF29
	SET cur_obj_idx_unk_43A, #2
	JSR	sub_12BF29
	RTS
; ---------------------------------------------------------------------------

loc_12BEAA:
	IF_A_NOT_EQUAL_CMP #$26, locret_12BEB4
	SET byte_654, #0
	RTS
; ---------------------------------------------------------------------------

locret_12BEB4:
	RTS
; End of function sub_12B441

; =============== S U B	R O U T	I N E =======================================

sub_12BEB5:
	IF_A_EQUAL byte_5B0, locret_12BEF9
	SET_TEXT_ARGS #0, #2
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c1_12A98E
	IF_A_EQUAL_CMP_ADDR byte_372, #1, locret_12BEF9
	LDX	#0

loc_12BED8:
	IF_A_NOT_EQUAL_CMP_ADDR {objIdxArray_375,X}, #3, loc_12BEE2
	JMP	loc_12BEE9
; ---------------------------------------------------------------------------

loc_12BEE2:
	INX
	IF_X_GREATER_CMP objArraySize_373, loc_12BED8
	RTS
; ---------------------------------------------------------------------------

loc_12BEE9:
	STX	cur_obj_idx_unk_43A
	JSR	exec_b0_c3_128418
	SET byte_5B0, #0
	SET byte_5AA, #$FF

locret_12BEF9:
	RTS
; End of function sub_12BEB5

; =============== S U B	R O U T	I N E =======================================

sub_12BEFA:
	IF_A_NOT_EQUAL_CMP_ADDR byte_471, #0, loc_12BF14
	SET_TEXT_ARGS #$39, #2
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; ---------------------------------------------------------------------------

loc_12BF14:
	IF_A_EQUAL_CMP_ADDR byte_55C, #0, loc_12BF23
	IF_A_EQUAL_CMP_ADDR byte_55D, #0, loc_12BF23
	RTS
; ---------------------------------------------------------------------------

loc_12BF23:
	SET byte_46D, #$22 
	RTS
; End of function sub_12BEFA

; =============== S U B	R O U T	I N E =======================================

sub_12BF29:
	LDX	cur_obj_idx_unk_43A
	SET {objCreatedArray_393,X}, #0
	RTS
; End of function sub_12BF29

; =============== S U B	R O U T	I N E =======================================

sub_12BF32:
	IF_A_NOT_EQUAL_CMP_ADDR byte_471, #0, loc_12BF4C
	SET_TEXT_ARGS #$37, #2
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; ---------------------------------------------------------------------------

loc_12BF4C:
	SET byte_46D, #$2C 
	RTS
; End of function sub_12BF32

; =============== S U B	R O U T	I N E =======================================

sub_12BF52:
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_12BF66
	IF_A_EQUAL_CMP_ADDR byte_55F, #$FF, locret_12BF65
	SET byte_46D, #$2D 

locret_12BF65:
	RTS
; ---------------------------------------------------------------------------

loc_12BF66:
	SET_TEXT_ARGS #$BE, #1
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; End of function sub_12BF52

; =============== S U B	R O U T	I N E =======================================

sub_12BF79:
	IF_A_NOT_EQUAL byte_5BC, locret_12BF88
	IF_A_NOT_EQUAL byte_5BD, locret_12BF88
	SET byte_46D, #$1C

locret_12BF88:
	RTS
; End of function sub_12BF79

; =============== S U B	R O U T	I N E =======================================

sub_12BF89:
	IF_A_NOT_EQUAL byte_5A8, locret_12BF98
	IF_A_NOT_EQUAL byte_5A9, locret_12BF98
	SET byte_46D, #$1C

locret_12BF98:
	RTS
; End of function sub_12BF89

; =============== S U B	R O U T	I N E =======================================

sub_12BF99:
	IF_A_EQUAL_CMP_ADDR byte_5C1, #0, loc_12BFC1
	IF_A_EQUAL_CMP_ADDR byte_5C2, #0, loc_12BFC1
	IF_A_NOT_EQUAL_CMP_ADDR byte_59F, #0, locret_12BFC0
	SET tilemapTypeUnk_30B, #$1E
	JSR	sub_12D58C
	IF_A_EQUAL sprite_length_30F, locret_12BFC0
	SET byte_59F, #1

locret_12BFC0:
	RTS
; ---------------------------------------------------------------------------

loc_12BFC1:
	SET byte_560, #$FF
	JSR	exec_b0_c4_12842B
	SET_TEXT_ARGS #1, #2
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c4_12842B
	RTS
; End of function sub_12BF99

; =============== S U B	R O U T	I N E =======================================

sub_12BFDF:
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_12BFEC
	SET byte_46D, #$1B
	RTS
; ---------------------------------------------------------------------------

loc_12BFEC:
	IF_A_NOT_EQUAL_CMP_ADDR byte_562, #0, loc_12C00B
	SET_TEXT_ARGS #$FF, #0
	SET tilemapTypeUnk_30B, #7
	JSR	exec_b0_c0_12A973
	SET byte_562, #$F
	RTS
; ---------------------------------------------------------------------------

loc_12C00B:
	IF_A_NOT_EQUAL_CMP #$F, locret_12C021
	SET_TEXT_ARGS #5, #1
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973

locret_12C021:
	RTS
; End of function sub_12BFDF

; =============== S U B	R O U T	I N E =======================================

sub_12C022:
	IF_A_NOT_EQUAL_CMP_ADDR byte_313, #2, locret_12C095
	IF_A_NOT_EQUAL byte_563, locret_12C095
	IF_A_EQUAL_CMP_ADDR byte_5C4, #$FF, locret_12C095
	SET byte_563, #$FF
	SET_TEXT_ARGS #2, #2
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	sub_12D21B
	SET_TEXT_ARGS #3, #2
	JSR	exec_b2_c3_128313

set_mansion_saveroom_12C05C:
	SET image_id_4A4, #$21 
	SET image_offset_4A5, #0
	SET ppu_prev_unk_4A6, #0
	SET3 ppu_prev_scroll_x_unk_4A7, ppu_prev_scroll_y_unk_4A8, prev_sprite_type_4A9, #0
	SET byte_4AD, #$60 
	SET byte_4AE, #$70 
	JSR	exec_b0_c2_12A9A9
	SET_TEXT_ARGS #$B, #1
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973

locret_12C095:
	RTS
; End of function sub_12C022

; =============== S U B	R O U T	I N E =======================================

sub_12C096:
	IF_A_NOT_EQUAL byte_564, locret_12C0AD
	SET tilemapTypeUnk_30B, #$29 
	JSR	sub_12D58C
	IF_A_EQUAL sprite_length_30F, locret_12C0AD
	SET byte_564, #$FF

locret_12C0AD:
	RTS
; End of function sub_12C096

; =============== S U B	R O U T	I N E =======================================

sub_12C0AE:
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_12C0BB
	SET byte_46D, #$29 
	RTS
; ---------------------------------------------------------------------------

loc_12C0BB:
	SET_TEXT_ARGS #$CB, #1
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; End of function sub_12C0AE

; =============== S U B	R O U T	I N E =======================================

sub_12C0CE:
	IF_A_NOT_EQUAL_CMP_ADDR byte_566, #0, locret_12C118
	SET_TEXT_ARGS #$D6, #1
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c1_12A98E
	IF_A_NOT_EQUAL byte_372, locret_12C118
	SET byte_566, #$FF
	JSR	entry_idx_handler_unk_12AA6D
	SET image_id_4A4, entry_idx_300
	SET image_offset_4A5, ppu_unk_byte_302
	SET ppu_prev_unk_4A6, ppu_unk_byte_303
	SET ppu_prev_scroll_x_unk_4A7, ppu_scroll_x_304
	SET ppu_prev_scroll_y_unk_4A8, ppu_scroll_y_305
	JSR	exec_b0_c2_12A9A9

locret_12C118:
	RTS
; End of function sub_12C0CE

; =============== S U B	R O U T	I N E =======================================

sub_12C119:
	LDX	#0

loc_12C11B:
	IF_A_NOT_EQUAL {objCreatedArray_393,X}, locret_12C13B
	IF_A_EQUAL_CMP_ADDR {objIdxArray_375,X}, #3, loc_12C12E
	INX
	IF_X_GREATER_CMP objArraySize_373, loc_12C11B
	RTS
; ---------------------------------------------------------------------------

loc_12C12E:
	x_to_stack
	JSR	sub_12C13C
	from_stack_to_x
	INX
	IF_X_GREATER_CMP objArraySize_373, loc_12C11B

locret_12C13B:
	RTS
; End of function sub_12C119

; =============== S U B	R O U T	I N E =======================================

sub_12C13C:
	sub_addr_sec {array_unk_3C5,X}, #$B0 
	sub_addr {array_unk_3BB,X}, #1
	BCC	locret_12C1B7
	sub_addr_sec {array_unk_3D9,X}, #0
	sub_addr {array_unk_3CF,X}, #1
	BCC	locret_12C1B7
	sub_addr_sec #$EF , {array_unk_3C5,X}
	sub_addr #1, {array_unk_3BB,X}
	BCC	locret_12C1B7
	sub_addr_sec #$F, {array_unk_3D9,X}
	sub_addr #1, {array_unk_3CF,X}
	BCC	locret_12C1B7
	JSR	sub_12C1B8
	LDY	byte_577
	SET {byte_578,Y}, {array_unk_3C5,X}
	SET {byte_57B,Y}, {array_unk_3BB,X}
	SET {byte_57E,Y}, {array_unk_3D9,X}
	SET {byte_581,Y}, {array_unk_3CF,X}
	INC	byte_577
	IF_A_NOT_EQUAL_CMP_ADDR byte_577, #3, locret_12C1B7
	IF_A_NOT_EQUAL_CMP_ADDR byte_578, byte_579, locret_12C1B7
	IF_A_NOT_EQUAL_CMP byte_57A, locret_12C1B7
	IF_A_NOT_EQUAL_CMP_ADDR byte_57B, byte_57C, locret_12C1B7
	IF_A_NOT_EQUAL_CMP byte_57D, locret_12C1B7
	SET byte_577, #$FF

locret_12C1B7:
	RTS
; End of function sub_12C13C

; =============== S U B	R O U T	I N E =======================================

sub_12C1B8:
	sub_addr_sec #3, byte_577
	MULT_A_BY_16
	TAY
; End of function sub_12C1B8

; =============== S U B	R O U T	I N E =======================================

sub_12C1C3:
	DEY
	DEY
	ADD_TO {array_unk_3D9,X}, {array_unk_3CF,X}, #2, #0
	y_to_stack
	x_to_stack
	JSR	exec_b0_c5_12843E
	JSR	wait_for_frame_rendered_FCA0
	JSR	wait_for_frame_rendered_FCA0
	JSR	wait_for_frame_rendered_FCA0
	JSR	wait_for_frame_rendered_FCA0
	from_stack_to_x
	from_stack_to_y
	IF_Y_NOT_EQUAL_CMP #0, sub_12C1C3
	RTS
; End of function sub_12C1C3

; =============== S U B	R O U T	I N E =======================================

sub_12C1F2:
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_12C1FA
	RTS
; ---------------------------------------------------------------------------

loc_12C1FA:
	IF_A_EQUAL_CMP_ADDR byte_585, #$FF, locret_12C220
	SET_TEXT_ARGS #$E2, #1
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c1_12A98E
	IF_A_NOT_EQUAL byte_372, locret_12C220
	SET byte_585, #$FF

locret_12C220:
	RTS
; End of function sub_12C1F2

; =============== S U B	R O U T	I N E =======================================

sub_12C221:
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_12C229
	RTS
; ---------------------------------------------------------------------------

loc_12C229:
	SET_TEXT_ARGS #$E3, #1
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c1_12A98E
	IF_A_NOT_EQUAL byte_372, locret_12C25D
	SET_TEXT_ARGS #$E4, #1
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	XOR_BYTE  byte_5CA, #$FF

locret_12C25D:
	RTS
; End of function sub_12C221

; =============== S U B	R O U T	I N E =======================================

sub_12C25E:
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_12C26B
	SET byte_46D, #$24 
	RTS
; ---------------------------------------------------------------------------

loc_12C26B:
	SET_TEXT_ARGS #$42, #2
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; End of function sub_12C25E

; =============== S U B	R O U T	I N E =======================================

sub_12C27E:
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_12C286
	RTS
; ---------------------------------------------------------------------------

loc_12C286:
	SET inv_sprite_idx_31C, #$33 
	JSR	sub_128955
	IF_A_EQUAL_CMP_ADDR is_game_finished_561, #$FF, return_12C2BE
	SET byte_587, #$FF
	JSR	entry_idx_handler_unk_12AA6D
	SET image_id_4A4, entry_idx_300
	SET image_offset_4A5, ppu_unk_byte_302
	SET ppu_prev_unk_4A6, ppu_unk_byte_303
	SET ppu_prev_scroll_x_unk_4A7, ppu_scroll_x_304
	SET ppu_prev_scroll_y_unk_4A8, ppu_scroll_y_305
	JSR	exec_b0_c2_12A9A9

return_12C2BE:
	RTS
; End of function sub_12C27E

; =============== S U B	R O U T	I N E =======================================

sub_12C2BF:
	IF_A_EQUAL_CMP_ADDR byte_471, #0, locret_12C2D5
	LDA	byte_5EF
	ORA	byte_5F9
	IF_A_NOT_EQUAL_CMP #0, locret_12C2D5
	SET byte_46D, #2

locret_12C2D5:
	RTS
; End of function sub_12C2BF

; =============== S U B	R O U T	I N E =======================================

sub_12C2D6:
	IF_A_NOT_EQUAL_CMP_ADDR byte_471, #0, locret_12C323
	SET_TEXT_ARGS #$E3, #1
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c1_12A98E
	IF_A_NOT_EQUAL byte_372, locret_12C323
	XOR_BYTE  byte_589, #$FF
	JSR	entry_idx_handler_unk_12AA6D
	SET image_id_4A4, entry_idx_300
	SET image_offset_4A5, ppu_unk_byte_302
	SET ppu_prev_unk_4A6, ppu_unk_byte_303
	SET ppu_prev_scroll_x_unk_4A7, ppu_scroll_x_304
	SET ppu_prev_scroll_y_unk_4A8, ppu_scroll_y_305
	JSR	exec_b0_c2_12A9A9

locret_12C323:
	RTS
; End of function sub_12C2D6

; =============== S U B	R O U T	I N E =======================================

sub_12C324:
	IF_A_NOT_EQUAL_CMP_ADDR byte_471, #0, locret_12C371
	SET_TEXT_ARGS #$E3, #1
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c1_12A98E
	IF_A_NOT_EQUAL byte_372, locret_12C371
	XOR_BYTE  byte_58B, #$FF
	JSR	entry_idx_handler_unk_12AA6D
	SET image_id_4A4, entry_idx_300
	SET image_offset_4A5, ppu_unk_byte_302
	SET ppu_prev_unk_4A6, ppu_unk_byte_303
	SET ppu_prev_scroll_x_unk_4A7, ppu_scroll_x_304
	SET ppu_prev_scroll_y_unk_4A8, ppu_scroll_y_305
	JSR	exec_b0_c2_12A9A9

locret_12C371:
	RTS
; End of function sub_12C324

; =============== S U B	R O U T	I N E =======================================

nullsub_3:
	RTS
; End of function nullsub_3

; =============== S U B	R O U T	I N E =======================================

sub_12C373:
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_12C380
	SET byte_46D, #$2A 
	RTS
; ---------------------------------------------------------------------------

loc_12C380:
	SET_TEXT_ARGS #$B, #2
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; End of function sub_12C373

; =============== S U B	R O U T	I N E =======================================

sub_12C393:
	IF_A_NOT_EQUAL_CMP_ADDR byte_471, #0, loc_12C3AD
	SET_TEXT_ARGS #$BA, #0
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; ---------------------------------------------------------------------------

loc_12C3AD:
	SET byte_47F, #3
	SET byte_46D, #$1A
	RTS
; End of function sub_12C393

; =============== S U B	R O U T	I N E =======================================

sub_12C3B8:
	SET byte_58D, #$FF
	RTS
; End of function sub_12C3B8

; =============== S U B	R O U T	I N E =======================================

sub_12C3BE:
	IF_A_EQUAL byte_58D, locret_12C3C8
	SET byte_58E, #$FF

locret_12C3C8:
	RTS
; End of function sub_12C3BE

; =============== S U B	R O U T	I N E =======================================

sub_12C3C9:
	IF_A_NOT_EQUAL_CMP_ADDR byte_471, #0, loc_12C3E3
	SET_TEXT_ARGS #$BA, #0
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; ---------------------------------------------------------------------------

loc_12C3E3:
	SET byte_47F, #1
	SET byte_46D, #$1A
	RTS
; End of function sub_12C3C9

; =============== S U B	R O U T	I N E =======================================

sub_12C3EE:
	IF_A_NOT_EQUAL_CMP_ADDR byte_471, #0, loc_12C408
	SET_TEXT_ARGS #$BA, #0
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; ---------------------------------------------------------------------------

loc_12C408:
	SET byte_47F, #2
	SET byte_46D, #$1A
	RTS
; End of function sub_12C3EE

; =============== S U B	R O U T	I N E =======================================

sub_12C413:
	IF_A_NOT_EQUAL_CMP_ADDR byte_471, #0, loc_12C42D
	SET_TEXT_ARGS #$BA, #0
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; ---------------------------------------------------------------------------

loc_12C42D:
	SET byte_47F, #4
	SET byte_46D, #$1A
	RTS
; End of function sub_12C413

; =============== S U B	R O U T	I N E =======================================

sub_12C438:
	JSR	sub_12ED3B
	JSR	sub_12D700
	RTS
; End of function sub_12C438

; =============== S U B	R O U T	I N E =======================================

sub_12C43F:
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_12C44C
	SET byte_46D, #$2A 
	RTS
; ---------------------------------------------------------------------------

loc_12C44C:
	SET_TEXT_ARGS #$B, #2
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; End of function sub_12C43F

; =============== S U B	R O U T	I N E =======================================

sub_12C45F:
	IF_A_EQUAL_CMP_ADDR byte_651, #0, locret_12C46B
	SET byte_58D, #$FF

locret_12C46B:
	RTS
; End of function sub_12C45F

; =============== S U B	R O U T	I N E =======================================

sub_12C46C:
	IF_A_NOT_EQUAL_CMP_ADDR byte_313, #1, locret_12C4AD
	LDX	#4
	IF_A_NOT_EQUAL_CMP_ADDR {array_unk_3C5,X}, #$90, locret_12C4AD
	IF_A_NOT_EQUAL_CMP_ADDR {array_unk_3BB,X}, #1, locret_12C4AD
	IF_A_NOT_EQUAL_CMP_ADDR {array_unk_3D9,X}, #$A0, locret_12C4AD
	IF_A_NOT_EQUAL_CMP_ADDR {array_unk_3CF,X}, #0, locret_12C4AD
	LDX	#4
	LDY	#$10
	JSR	sub_12C1C3
	SET cur_obj_idx_unk_43A, #5
	JSR	exec_b0_c3_128418
	SET cur_obj_idx_unk_43A, #6
	JSR	exec_b0_c3_128418
	SET byte_659, #0

locret_12C4AD:
	RTS
; End of function sub_12C46C

; =============== S U B	R O U T	I N E =======================================

sub_12C4AE:
	IF_A_NOT_EQUAL_CMP_ADDR byte_471, #0, loc_12C4C8
	SET_TEXT_ARGS #$BA, #0
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; ---------------------------------------------------------------------------

loc_12C4C8:
	SET byte_47F, #5
	SET byte_46D, #$1A
	RTS
; End of function sub_12C4AE

; =============== S U B	R O U T	I N E =======================================

sub_12C4D3:
	IF_A_NOT_EQUAL_CMP_ADDR byte_313, #1, locret_12C4F2
	SET cur_obj_idx_unk_43A, #1
	JSR	sub_12BF29
	SET cur_obj_idx_unk_43A, #2
	JSR	sub_12BF29
	SET cur_obj_idx_unk_43A, #3
	JSR	sub_12BF29

locret_12C4F2:
	RTS
; End of function sub_12C4D3

; =============== S U B	R O U T	I N E =======================================

sub_12C4F3:
	IF_A_EQUAL_CMP_ADDR byte_587, #$FF, locret_12C519
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_12C507
	SET byte_46D, #$39 
	RTS
; ---------------------------------------------------------------------------

loc_12C507:
	SET_TEXT_ARGS #$D, #2
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973

locret_12C519:
	RTS
; End of function sub_12C4F3

; =============== S U B	R O U T	I N E =======================================

sub_12C51A:
	IF_A_EQUAL_CMP_ADDR byte_591, #$FF, locret_12C540
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_12C52E
	SET byte_46D, #$27 
	RTS
; ---------------------------------------------------------------------------

loc_12C52E:
	SET_TEXT_ARGS #$E, #2
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973

locret_12C540:
	RTS
; End of function sub_12C51A

; =============== S U B	R O U T	I N E =======================================

sub_12C541:
	IF_A_EQUAL_CMP_ADDR byte_592, #$FF, locret_12C567
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_12C555
	SET byte_46D, #$28 
	RTS
; ---------------------------------------------------------------------------

loc_12C555:
	SET_TEXT_ARGS #$F, #2
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973

locret_12C567:
	RTS
; End of function sub_12C541

; =============== S U B	R O U T	I N E =======================================

sub_12C568:
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_12C575
	SET byte_46D, #$2E 
	RTS
; ---------------------------------------------------------------------------

loc_12C575:
	SET_TEXT_ARGS #$12, #2
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; End of function sub_12C568

; =============== S U B	R O U T	I N E =======================================

show_tree_screen_12C588:
	a_to_stack entry_idx_300
	a_to_stack ppu_unk_byte_302
	a_to_stack ppu_unk_byte_303
	a_to_stack ppu_scroll_x_304
	a_to_stack ppu_scroll_y_305
	a_to_stack sprite_type_306

set_tree_screen_12C5A0:
	SET image_id_4A4, #$9D 
	IF_A_EQUAL_CMP_ADDR byte_593, #0, loc_12C5B1
	SET image_id_4A4, #$9E 

loc_12C5B1:
	SET4 image_offset_4A5, ppu_prev_unk_4A6, ppu_prev_scroll_x_unk_4A7, ppu_prev_scroll_y_unk_4A8, #0
	SET prev_sprite_type_4A9, #$FF
	JSR	exec_b0_c2_12A9A9
	JSR	wait_for_b_pressed_FCC5
	from_stack_to_a prev_sprite_type_4A9
	from_stack_to_a ppu_prev_scroll_y_unk_4A8
	from_stack_to_a ppu_prev_scroll_x_unk_4A7
	from_stack_to_a ppu_prev_unk_4A6
	from_stack_to_a image_offset_4A5
	from_stack_to_a image_id_4A4
	SET map_show_43B, #$FF
	JSR	exec_b0_c2_12A9A9
	SET map_show_43B, #0
	RTS
; End of function show_tree_screen_12C588

; =============== S U B	R O U T	I N E =======================================

sub_12C5F0:
	SET_TEXT_ARGS #$E3, #1
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c1_12A98E
	IF_A_NOT_EQUAL byte_372, locret_12C636
	XOR_BYTE  byte_593, #$FF
	JSR	entry_idx_handler_unk_12AA6D
	SET image_id_4A4, entry_idx_300
	SET image_offset_4A5, ppu_unk_byte_302
	SET ppu_prev_unk_4A6, ppu_unk_byte_303
	SET ppu_prev_scroll_x_unk_4A7, ppu_scroll_x_304
	SET ppu_prev_scroll_y_unk_4A8, ppu_scroll_y_305
	JSR	exec_b0_c2_12A9A9

locret_12C636:
	RTS
; End of function sub_12C5F0

; =============== S U B	R O U T	I N E =======================================

sub_12C637:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$77, loc_12C645
	IF_A_EQUAL_CMP_ADDR byte_68D, #$FF, loc_12C681

loc_12C645:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$7B, loc_12C653
	IF_A_EQUAL_CMP_ADDR byte_68E, #$FF, loc_12C681

loc_12C653:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$80, loc_12C661
	IF_A_EQUAL_CMP_ADDR byte_68F, #$FF, loc_12C681

loc_12C661:
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_12C66E
	SET byte_46D, #$30 
	RTS
; ---------------------------------------------------------------------------

loc_12C66E:
	SET_TEXT_ARGS #$20, #2
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; ---------------------------------------------------------------------------

loc_12C681:
	SET_TEXT_ARGS #$21, #2
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; End of function sub_12C637

; =============== S U B	R O U T	I N E =======================================

sub_12C694:
	SET_TEXT_ARGS #$24, #2
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c1_12A98E
	IF_A_EQUAL_CMP_ADDR byte_372, #1, locret_12C6B8
	SET byte_420, #2
	JSR	sub_12F07D

locret_12C6B8:
	RTS
; End of function sub_12C694

; =============== S U B	R O U T	I N E =======================================

sub_12C6B9:
	IF_A_NOT_EQUAL_CMP_ADDR byte_471, #0, loc_12C6D3
	SET_TEXT_ARGS #$BA, #0
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; ---------------------------------------------------------------------------

loc_12C6D3:
	SET byte_47F, #6
	SET byte_46D, #$1A
	RTS
; End of function sub_12C6B9

; =============== S U B	R O U T	I N E =======================================

sub_12C6DE:
	SET_TEXT_ARGS #$2A, #2
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c1_12A98E
	IF_A_EQUAL_CMP_ADDR byte_372, #1, locret_12C6FF
	SET byte_67B, #$FF

locret_12C6FF:
	RTS
; End of function sub_12C6DE

; =============== S U B	R O U T	I N E =======================================

sub_12C700:
	IF_A_EQUAL_CMP_ADDR byte_67A, #$FF, loc_12C72A
	SET_TEXT_ARGS #$27, #2
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c1_12A98E
	IF_A_EQUAL_CMP_ADDR byte_372, #1, locret_12C754
	IF_A_NOT_EQUAL_CMP_ADDR byte_67B, #$FF, loc_12C742

loc_12C72A:
	SET_TEXT_ARGS #$28, #2
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	SET byte_67A, #$FF
	RTS
; ---------------------------------------------------------------------------

loc_12C742:
	SET_TEXT_ARGS #$29, #2
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973

locret_12C754:
	RTS
; End of function sub_12C700

; =============== S U B	R O U T	I N E =======================================

sub_12C755:
	SET_TEXT_ARGS #$26, #2
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c1_12A98E
	IF_A_EQUAL_CMP_ADDR byte_372, #1, locret_12C791
	IF_A_EQUAL_CMP_ADDR byte_67A, #0, loc_12C77E
	SET byte_6A0, #$FF
	RTS
; ---------------------------------------------------------------------------

loc_12C77E:
	SET_TEXT_ARGS #$33, #2
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; ---------------------------------------------------------------------------

locret_12C791:
	RTS
; End of function sub_12C755

; =============== S U B	R O U T	I N E =======================================

sub_12C792:
	IF_A_EQUAL_CMP_ADDR byte_595, #$FF, locret_12C7CA
	SET2 byte_595, byte_6A1, #$FF
	SET byte_6A3, #0
	JSR	entry_idx_handler_unk_12AA6D
	SET image_id_4A4, entry_idx_300
	SET image_offset_4A5, ppu_unk_byte_302
	SET ppu_prev_unk_4A6, ppu_unk_byte_303
	SET ppu_prev_scroll_x_unk_4A7, ppu_scroll_x_304
	SET ppu_prev_scroll_y_unk_4A8, ppu_scroll_y_305
	JSR	exec_b0_c2_12A9A9

locret_12C7CA:
	RTS
; End of function sub_12C792

; =============== S U B	R O U T	I N E =======================================

sub_12C7CB:
	SET_TEXT_ARGS #$35, #2
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; End of function sub_12C7CB

; =============== S U B	R O U T	I N E =======================================

sub_12C7DE:
	IF_A_NOT_EQUAL_CMP_ADDR image_id_4A4, #$18, loc_12C7EB
	SET byte_54E, #2
	RTS
; ---------------------------------------------------------------------------

loc_12C7EB:
	IF_A_NOT_EQUAL_CMP_ADDR image_id_4A4, #$1B, loc_12C805
	IF_A_NOT_EQUAL_CMP_ADDR cur_obj_idx_unk_43A, #0, loc_12C7FF
	SET byte_5E8, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C7FF:
	SET byte_5E9, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C805:
	IF_A_NOT_EQUAL_CMP_ADDR image_id_4A4, #$87, loc_12C812
	SET byte_5D8, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C812:
	IF_A_NOT_EQUAL_CMP_ADDR image_id_4A4, #$1F, loc_12C82C
	IF_A_NOT_EQUAL_CMP_ADDR cur_obj_idx_unk_43A, #0, loc_12C826
	SET byte_5DA, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C826:
	SET byte_5DB, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C82C:
	IF_A_NOT_EQUAL_CMP_ADDR image_id_4A4, #$22, loc_12C839
	SET byte_5E0, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C839:
	IF_A_NOT_EQUAL_CMP_ADDR image_id_4A4, #$23, loc_12C846
	SET byte_5E1, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C846:
	IF_A_NOT_EQUAL_CMP_ADDR image_id_4A4, #$25, loc_12C860
	IF_A_NOT_EQUAL_CMP_ADDR cur_obj_idx_unk_43A, #1, loc_12C85A
	SET byte_5E4, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C85A:
	SET byte_5E5, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C860:
	IF_A_NOT_EQUAL_CMP_ADDR image_id_4A4, #$2B, loc_12C87A
	IF_A_NOT_EQUAL_CMP_ADDR cur_obj_idx_unk_43A, #0, loc_12C874
	SET byte_5F0, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C874:
	SET byte_5F1, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C87A:
	IF_A_NOT_EQUAL_CMP_ADDR image_id_4A4, #$2C, loc_12C887
	SET byte_5F2, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C887:
	IF_A_NOT_EQUAL_CMP_ADDR image_id_4A4, #$30, loc_12C894
	SET byte_5F6, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C894:
	IF_A_NOT_EQUAL_CMP_ADDR image_id_4A4, #$36, loc_12C8AE
	IF_A_NOT_EQUAL_CMP_ADDR cur_obj_idx_unk_43A, #1, loc_12C8A8
	SET byte_5B2, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C8A8:
	SET byte_5B1, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C8AE:
	IF_A_NOT_EQUAL_CMP_ADDR image_id_4A4, #$37, loc_12C8C8
	IF_A_NOT_EQUAL_CMP_ADDR cur_obj_idx_unk_43A, #0, loc_12C8C2
	SET byte_602, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C8C2:
	SET byte_603, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C8C8:
	IF_A_NOT_EQUAL_CMP_ADDR image_id_4A4, #$3C, loc_12C8D5
	SET byte_612, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C8D5:
	IF_A_NOT_EQUAL_CMP_ADDR image_id_4A4, #$3A, loc_12C8F9
	IF_A_NOT_EQUAL_CMP_ADDR cur_obj_idx_unk_43A, #2, loc_12C8E9
	SET byte_60A, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C8E9:
	IF_A_NOT_EQUAL_CMP #3, loc_12C8F3
	SET byte_60B, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C8F3:
	SET byte_60C, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C8F9:
	IF_A_NOT_EQUAL_CMP_ADDR image_id_4A4, #$41, loc_12C913
	IF_A_NOT_EQUAL_CMP_ADDR cur_obj_idx_unk_43A, #0, loc_12C90D
	SET byte_619, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C90D:
	SET byte_61A, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C913:
	IF_A_NOT_EQUAL_CMP_ADDR image_id_4A4, #$48, loc_12C92D
	IF_A_NOT_EQUAL_CMP_ADDR cur_obj_idx_unk_43A, #0, loc_12C927
	SET byte_620, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C927:
	SET byte_621, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C92D:
	IF_A_NOT_EQUAL_CMP_ADDR image_id_4A4, #$32, loc_12C93A
	SET byte_5FC, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C93A:
	IF_A_NOT_EQUAL_CMP_ADDR image_id_4A4, #$33, loc_12C954
	IF_A_NOT_EQUAL_CMP_ADDR cur_obj_idx_unk_43A, #0, loc_12C94E
	SET byte_5FD, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C94E:
	SET byte_5FE, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C954:
	IF_A_NOT_EQUAL_CMP_ADDR image_id_4A4, #$34, loc_12C96E
	IF_A_NOT_EQUAL_CMP_ADDR cur_obj_idx_unk_43A, #0, loc_12C968
	SET byte_5FF, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C968:
	SET byte_600, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C96E:
	IF_A_NOT_EQUAL_CMP_ADDR image_id_4A4, #$4E, loc_12C992
	IF_A_NOT_EQUAL_CMP_ADDR cur_obj_idx_unk_43A, #6, loc_12C982
	SET byte_630, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C982:
	IF_A_NOT_EQUAL_CMP #7, loc_12C98C
	SET byte_631, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C98C:
	SET byte_632, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C992:
	IF_A_NOT_EQUAL_CMP_ADDR image_id_4A4, #$50, loc_12C9AC
	IF_A_NOT_EQUAL_CMP_ADDR cur_obj_idx_unk_43A, #0, loc_12C9A6
	SET byte_634, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C9A6:
	SET byte_634, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C9AC:
	IF_A_NOT_EQUAL_CMP_ADDR image_id_4A4, #$51, loc_12C9C6
	IF_A_NOT_EQUAL_CMP_ADDR cur_obj_idx_unk_43A, #4, loc_12C9C0
	SET byte_63B, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C9C0:
	SET byte_63C, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C9C6:
	IF_A_NOT_EQUAL_CMP_ADDR image_id_4A4, #$54, loc_12C9D3
	SET byte_63E, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C9D3:
	IF_A_NOT_EQUAL_CMP_ADDR image_id_4A4, #$55, loc_12C9ED
	IF_A_NOT_EQUAL_CMP_ADDR cur_obj_idx_unk_43A, #0, loc_12C9E7
	SET byte_63F, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C9E7:
	SET byte_640, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C9ED:
	IF_A_NOT_EQUAL_CMP_ADDR image_id_4A4, #$91, loc_12C9FA
	SET byte_647, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C9FA:
	IF_A_NOT_EQUAL_CMP_ADDR image_id_4A4, #$58, loc_12CA1E
	IF_A_NOT_EQUAL_CMP_ADDR cur_obj_idx_unk_43A, #0, loc_12CA0E
	SET byte_648, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CA0E:
	IF_A_NOT_EQUAL_CMP #1, loc_12CA18
	SET byte_649, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CA18:
	SET byte_64A, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CA1E:
	IF_A_NOT_EQUAL_CMP_ADDR image_id_4A4, #$60, loc_12CA2B
	SET byte_65E, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CA2B:
	IF_A_NOT_EQUAL_CMP_ADDR image_id_4A4, #$61, loc_12CA45
	IF_A_NOT_EQUAL_CMP_ADDR cur_obj_idx_unk_43A, #2, loc_12CA3F
	SET byte_661, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CA3F:
	SET byte_662, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CA45:
	IF_A_NOT_EQUAL_CMP_ADDR image_id_4A4, #$5F, loc_12CA5F
	IF_A_NOT_EQUAL_CMP_ADDR cur_obj_idx_unk_43A, #2, loc_12CA59
	SET byte_668, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CA59:
	SET byte_669, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CA5F:
	IF_A_NOT_EQUAL_CMP_ADDR image_id_4A4, #$65, loc_12CA79
	IF_A_NOT_EQUAL_CMP_ADDR cur_obj_idx_unk_43A, #1, loc_12CA73
	SET byte_66B, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CA73:
	SET byte_66C, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CA79:
	IF_A_NOT_EQUAL_CMP_ADDR image_id_4A4, #$66, loc_12CA86
	SET byte_66E, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CA86:
	IF_A_NOT_EQUAL_CMP_ADDR image_id_4A4, #$68, loc_12CA93
	SET byte_670, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CA93:
	IF_A_NOT_EQUAL_CMP_ADDR image_id_4A4, #$72, loc_12CAAD
	IF_A_NOT_EQUAL_CMP_ADDR cur_obj_idx_unk_43A, #0, loc_12CAA7
	SET byte_67C, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CAA7:
	SET byte_67D, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CAAD:
	IF_A_NOT_EQUAL_CMP_ADDR image_id_4A4, #$77, loc_12CAD1
	IF_A_NOT_EQUAL_CMP_ADDR cur_obj_idx_unk_43A, #0, loc_12CAC1
	SET byte_688, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CAC1:
	IF_A_NOT_EQUAL_CMP #1, loc_12CACB
	SET byte_689, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CACB:
	SET byte_68A, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CAD1:
	IF_A_NOT_EQUAL_CMP_ADDR image_id_4A4, #$7F, loc_12CAF5
	IF_A_NOT_EQUAL_CMP_ADDR cur_obj_idx_unk_43A, #0, loc_12CAE5
	SET byte_695, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CAE5:
	IF_A_NOT_EQUAL_CMP #1, loc_12CAEF
	SET byte_696, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CAEF:
	SET byte_697, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CAF5:
	IF_A_NOT_EQUAL_CMP_ADDR image_id_4A4, #$74, loc_12CB23
	IF_A_NOT_EQUAL_CMP_ADDR cur_obj_idx_unk_43A, #0, loc_12CB09
	SET byte_698, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CB09:
	IF_A_NOT_EQUAL_CMP #1, loc_12CB13
	SET byte_699, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CB13:
	IF_A_NOT_EQUAL_CMP #2, loc_12CB1D
	SET byte_69A, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CB1D:
	SET byte_69B, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CB23:
	IF_A_NOT_EQUAL_CMP_ADDR image_id_4A4, #$7C, loc_12CB3D
	IF_A_NOT_EQUAL_CMP_ADDR cur_obj_idx_unk_43A, #0, loc_12CB37
	SET byte_69C, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CB37:
	SET byte_69D, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CB3D:
	IF_A_NOT_EQUAL_CMP_ADDR image_id_4A4, #$9A, loc_12CB4A
	SET byte_6A7, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CB4A:
	IF_A_NOT_EQUAL_CMP_ADDR image_id_4A4, #$96, locret_12CB57
	SET byte_6A1, #0
	RTS
; ---------------------------------------------------------------------------

locret_12CB57:
	RTS
; End of function sub_12C7DE

; =============== S U B	R O U T	I N E =======================================

show_intro_screen_12CB58:
	JSR	wait_any_input_65k_cycles_FCAB
	SET image_id_4A4, #$10
	SET4 image_offset_4A5, ppu_prev_unk_4A6, ppu_prev_scroll_x_unk_4A7, ppu_prev_scroll_y_unk_4A8, #0
	SET prev_sprite_type_4A9, #2
	SET objectIdx_318, #$1A
	JSR	exec_b0_c2_12A9A9
	SET byte_42C, #$88 
	SET byte_42E, #$26 
	SET5 byte_430, byte_431, byte_433, byte_434, byte_42B, #0

loc_12CB96:
	JSR	sub_12CC34
	JSR	wait_for_frame_rendered_FCA0
	JSR	wait_for_frame_rendered_FCA0
	JSR	wait_for_frame_rendered_FCA0
	JSR	wait_for_frame_rendered_FCA0
	IF_A_EQUAL_CMP_ADDR byte_42E, #$26, loc_12CBB2
	DEC	byte_42E
	JMP	loc_12CB96
; ---------------------------------------------------------------------------

loc_12CBB2:
	IF_A_EQUAL_CMP_ADDR byte_434, #4, loc_12CBD9
	BCS	loc_12CBD9
	ADD_BYTE_TO_BYTE_CLC_IMM objMapIdx_316, #2, byte_434
	JSR	sub_12CCAB
	IF_A_GREATER_CMP_ADDR count_unk_468, #$14, loc_12CBD6
	SET count_unk_468, #0
	INC	byte_434

loc_12CBD6:
	JMP	loc_12CB96
; ---------------------------------------------------------------------------

loc_12CBD9:
	IF_A_GREATER_CMP_ADDR count_unk_469, #$A, loc_12CBF7
	SET count_unk_469, #0
	XOR_BYTE  byte_434, #1
	IF_A_EQUAL_CMP_ADDR byte_42B, #$14, show_ending_screen_12CC06
	INC	byte_42B

loc_12CBF7:
	ADD_BYTE_TO_BYTE_CLC_IMM objMapIdx_316, #2, byte_434
	JSR	sub_12CCAB
	JMP	loc_12CB96
; ---------------------------------------------------------------------------

show_ending_screen_12CC06:
	SET image_id_4A4, #$A0 
	SET4 image_offset_4A5, ppu_prev_unk_4A6, ppu_prev_scroll_x_unk_4A7, ppu_prev_scroll_y_unk_4A8, #0
	SET prev_sprite_type_4A9, #2
	SET objectIdx_318, #$1A
	JSR	exec_b0_c2_12A9A9
	SET_TEXT_ARGS #$46, #2
	JSR	exec_b2_c2_1283DF
	RTS
; End of function show_intro_screen_12CB58

; =============== S U B	R O U T	I N E =======================================

sub_12CC34:
	IF_A_GREATER_CMP_ADDR count_unk_465, #$A, loc_12CC48
	SET count_unk_465, #0
	XOR_BYTE  byte_430, #1

loc_12CC48:
	IF_A_GREATER_CMP_ADDR count_unk_466, #$F, loc_12CC5C
	SET count_unk_466, #0
	XOR_BYTE  byte_431, #1

loc_12CC5C:
	IF_A_GREATER_CMP_ADDR count_unk_467, #$A, loc_12CC70
	SET count_unk_467, #0
	XOR_BYTE  byte_433, #1

loc_12CC70:
	ADD_BYTE_TO_BYTE_CLC_IMM byte_36A, byte_42C, byte_430
	ADD_BYTE_TO_BYTE_CLC_IMM byte_366, byte_42E, byte_431
	SET2 byte_367, byte_36B, #0
	SET2 sprite_secondByte_31B, byte_31A, #0
	SET objectIdx_318, #$1A
	ADD_BYTE_TO_BYTE_CLC_IMM objMapIdx_316, #0, byte_433
	SET byte_317, #0
	JSR	exec_b1_c1_128394
	RTS
; End of function sub_12CC34

; =============== S U B	R O U T	I N E =======================================

sub_12CCAB:
	SET byte_36A, #$70 
	SET byte_36B, #0
	SET byte_366, #$50 
	SET byte_367, #0
	SET sprite_secondByte_31B, #0
	SET byte_31A, #$8C 
	SET objectIdx_318, #$1A
	SET byte_317, #1
	IF_A_GREATER_CMP_ADDR objMapIdx_316, #6, loc_12CCDF
	SET byte_317, #2

loc_12CCDF:
	JSR	exec_b1_c1_128394
	RTS
; End of function sub_12CCAB

; =============== S U B	R O U T	I N E =======================================

comm_46_12CCE3:
	IF_A_EQUAL_CMP_ADDR byte_6C5, #0, return_12CD1C
	SET_TEXT_ARGS #$7B, #1
	SET tilemapTypeUnk_30B, #4
	JSR	exec_b0_c0_12A973
	SET tilemapData_4C, #1
	SET room_pos_x_4D, #0
	SET room_pos_y_4E, #8
	SET tilemap_line_idx_4F, #1
	JSR	exec_b0_cB_1284E0
	SET cur_obj_idx_unk_43A, #0
	JSR	exec_b0_c3_128418
	SET byte_6C5, #0

return_12CD1C:
	RTS
; End of function comm_46_12CCE3

; =============== S U B	R O U T	I N E =======================================

comm_48_take_item_12CD1D:
	SET_TEXT_ARGS #$45, #2
	SET tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; End of function comm_48_take_item_12CD1D

; =============== S U B	R O U T	I N E =======================================

com_E_load_game_12CD30:
	SET byte_100, image_id_4A4
	SET byte_101, image_offset_4A5
	SET byte_102, ppu_prev_unk_4A6
	SET byte_103, ppu_prev_scroll_x_unk_4A7
	SET byte_104, ppu_prev_scroll_y_unk_4A8
	SET byte_105, prev_sprite_type_4A9
	a_to_stack image_id_4A4
	a_to_stack image_offset_4A5
	a_to_stack ppu_prev_unk_4A6
	a_to_stack ppu_prev_scroll_x_unk_4A7
	a_to_stack ppu_prev_scroll_y_unk_4A8
	a_to_stack prev_sprite_type_4A9
	SET objectIdx_318, #5
	SET byte_360, #0
	SET byte_361, #3
	SET image_id_4A4, #$B
	SET4 image_offset_4A5, ppu_prev_unk_4A6, ppu_prev_scroll_x_unk_4A7, ppu_prev_scroll_y_unk_4A8, #0
	SET prev_sprite_type_4A9, #2
	JSR	exec_b0_c2_12A9A9
	LDY	#0
	SET ppu_unk_byte_309, #$B
	SET sprite_secondByte_31B, #$7A 

loc_12CDA2:
	IF_Y_EQUAL_CMP #4, loc_12CE00
	IF_A_EQUAL_CMP_ADDR {byte_4A0,Y}, #$FF, loc_12CDEA
	ADD_TO_A #$7E 
	STA	text_idx_35C
	SET char_type_id_35D, #0
	SET tilemap_size_307, #8
	SET byte_35E, #8
	SET byte_35F, #1
	SET byte_362, #0
	SET byte_363, #0
	SET byte_364, #7
	SET byte_310, #0
	y_to_stack
	a_to_stack ppu_unk_byte_309
	JSR	exec_b2_c4_1283F2
	from_stack_to_a ppu_unk_byte_309
	from_stack_to_y

loc_12CDEA:
	ADD_BYTE_TO_BYTE_CLC ppu_unk_byte_309, #4
	ADD_BYTE_TO_BYTE_CLC sprite_secondByte_31B, #$18

	INY
	JMP	loc_12CDA2
; ---------------------------------------------------------------------------

loc_12CE00:
	SET byte_372, #0

loc_12CE05:
	JSR	sub_12D0C2
	JSR	wait_for_frame_rendered_FCA0
	IF_A_NOT_EQUAL_CMP_ADDR input_pressed_34A, #8, loc_12CE25
	IF_A_NOT_EQUAL byte_372, loc_12CE1C
	SET byte_372, #4

loc_12CE1C:
	DEC	byte_372
	JSR	sub_12ED32
	JMP	loc_12CE05
; ---------------------------------------------------------------------------

loc_12CE25:
	IF_A_NOT_EQUAL_CMP #4, loc_12CE3E
	IF_A_NOT_EQUAL_CMP_ADDR byte_372, #3, loc_12CE35
	SET byte_372, #$FF

loc_12CE35:
	INC	byte_372
	JSR	sub_12ED32
	JMP	loc_12CE05
; ---------------------------------------------------------------------------

loc_12CE3E:
	IF_A_NOT_EQUAL_CMP #$80, loc_12CE62
	JSR	sub_12ED20
	IF_A_NOT_EQUAL_CMP_ADDR jill_pos_y_47E, #$FF, loc_12CE57
	JSR	sub_12D120
	IF_A_NOT_EQUAL sprite_length_30F, loc_12CE69
	JMP	loc_12CE05
; ---------------------------------------------------------------------------

loc_12CE57:
	JSR	sub_12CEAC
	IF_A_NOT_EQUAL sprite_length_30F, loc_12CE69
	JMP	loc_12CE05
; ---------------------------------------------------------------------------

loc_12CE62:
	IF_A_EQUAL_CMP #$40, loc_12CE69
	JMP	loc_12CE05
; ---------------------------------------------------------------------------

loc_12CE69:
	JSR	sub_12ED29
	IF_A_EQUAL_CMP_ADDR jill_pos_y_47E, #$FF, loc_12CE99
	from_stack_to_a prev_sprite_type_4A9
	from_stack_to_a ppu_prev_scroll_y_unk_4A8
	from_stack_to_a ppu_prev_scroll_x_unk_4A7
	from_stack_to_a ppu_prev_unk_4A6
	from_stack_to_a image_offset_4A5
	from_stack_to_a image_id_4A4
	SET map_show_43B, #$FF
	JSR	exec_b0_c2_12A9A9
	SET map_show_43B, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CE99:
	IF_A_NOT_EQUAL_CMP_ADDR sprite_length_30F, #$FF, loc_12CEA5
	SET jill_pos_y_47E, #0

loc_12CEA5:
	PLA
	PLA
	PLA
	PLA
	PLA
	PLA
	RTS
; End of function com_E_load_game_12CD30

; =============== S U B	R O U T	I N E =======================================

sub_12CEAC:
	LDY	byte_372
	IF_A_NOT_EQUAL_CMP_ADDR {byte_4A0,Y}, #$FF, loc_12CEBA
	JSR	sub_12CFBA
	RTS
; ---------------------------------------------------------------------------

loc_12CEBA:
	SET ppu_unk_byte_309, #$1B
	SET tilemap_size_307, #6
	SET sprite_secondByte_31B, #$DA 
	SET_TEXT_ARGS #$85, #0
	SET byte_35E, #$C
	SET byte_35F, #1
	SET byte_362, #0
	SET byte_363, #0
	SET byte_364, #7
	SET byte_310, #0
	JSR	exec_b2_c4_1283F2
	SET ppu_unk_byte_309, #$1B
	SET tilemap_size_307, #$15
	SET sprite_secondByte_31B, #$F2 
	SET_TEXT_ARGS #$86, #0
	SET byte_35E, #3
	SET byte_35F, #1
	SET byte_364, #6
	SET byte_310, #0
	JSR	exec_b2_c4_1283F2
	a_to_stack byte_372
	SET byte_372, #1

loc_12CF2D:
	JSR	sub_12D070
	JSR	wait_for_vblank_FC95
	IF_A_NOT_EQUAL_CMP_ADDR input_pressed_34A, #2, loc_12CF48
	XOR_BYTE  byte_372, #1
	JSR	sub_12ED32
	JMP	loc_12CF2D
; ---------------------------------------------------------------------------

loc_12CF48:
	IF_A_NOT_EQUAL_CMP #1, loc_12CF5A
	XOR_BYTE  byte_372, #1
	JSR	sub_12ED32
	JMP	loc_12CF2D
; ---------------------------------------------------------------------------

loc_12CF5A:
	IF_A_EQUAL_CMP #$80, loc_12CF61
	JMP	loc_12CF2D
; ---------------------------------------------------------------------------

loc_12CF61:
	JSR	sub_12ED20
	SET spr_y_pos_204, #$F0 
	IF_A_NOT_EQUAL byte_372, loc_12CF76
	from_stack_to_a byte_372
	JSR	sub_12CFBA
	RTS
; ---------------------------------------------------------------------------

loc_12CF76:
	SET ppu_unk_byte_309, #$1B
	SET tilemap_size_307, #6
	SET sprite_secondByte_31B, #$DA 
	SET_TEXT_ARGS #$74, #0
	SET byte_35E, #$C
	SET byte_35F, #1
	SET byte_362, #0
	SET byte_363, #0
	SET byte_364, #7
	SET byte_310, #0
	JSR	exec_b2_c4_1283F2
	from_stack_to_a byte_372
	SET sprite_length_30F, #0
	RTS
; End of function sub_12CEAC

; =============== S U B	R O U T	I N E =======================================

sub_12CFBA:
	SET spr_y_pos_204, #$F0 
	LDY	byte_372
	SET {byte_4A0,Y}, byte_47F
	a_to_stack byte_372
	SET ppu_unk_byte_309, #$B
	SET sprite_secondByte_31B, #$7A 
	ADD_BYTE_TO_BYTE_CLC_IMM text_idx_35C, #$7E , byte_47F
	LDA	#0
	ADC	#0
	STA	char_type_id_35D

loc_12CFE6:
	IF_A_EQUAL byte_372, loc_12D003
	ADD_BYTE_TO_BYTE_CLC ppu_unk_byte_309, #4
	ADD_BYTE_TO_BYTE_CLC sprite_secondByte_31B, #$18

	DEC	byte_372
	JMP	loc_12CFE6
; ---------------------------------------------------------------------------

loc_12D003:
	SET tilemap_size_307, #8
	SET byte_35E, #8
	SET byte_35F, #1
	SET byte_362, #0
	SET byte_363, #0
	SET byte_364, #7
	SET byte_310, #0
	JSR	exec_b2_c4_1283F2
	SET ppu_unk_byte_309, #$1B
	SET tilemap_size_307, #6
	SET sprite_secondByte_31B, #$DA 
	SET_TEXT_ARGS #$87, #0
	SET byte_35E, #$C
	SET byte_35F, #1
	SET byte_362, #0
	SET byte_363, #0
	SET byte_364, #7
	SET byte_310, #0
	JSR	exec_b2_c4_1283F2
	from_stack_to_a byte_372
	JSR	sub_12D167
	SET sprite_length_30F, #$FF
	RTS
; End of function sub_12CFBA

; =============== S U B	R O U T	I N E =======================================

sub_12D070:
	IF_A_GREATER_CMP_ADDR count_unk_466, #$A, loc_12D084
	SET count_unk_466, #0
	XOR_BYTE  byte_547, #1

loc_12D084:
	SET objMapIdx_316, #$25 
	MULT_BY_2_BYTE byte_372
	TAY
	ADD_BYTE_TO_BYTE_CLC_IMM byte_36A, {byte_12D11C,Y}, byte_547
	INY
	ADD_BYTE_TO_BYTE_CLC_IMM byte_366, {byte_12D11C,Y}, #2
	SET2 byte_36B, byte_367, #0
	SET objectIdx_318, #5
	SET byte_31A, #4
	SET sprite_secondByte_31B, #0
	SET byte_317, #0
	JSR	exec_b1_c1_128394
	RTS
; End of function sub_12D070

; =============== S U B	R O U T	I N E =======================================

sub_12D0C2:
	IF_A_GREATER_CMP_ADDR count_unk_465, #$A, loc_12D0D6
	SET count_unk_465, #0
	XOR_BYTE  byte_547, #1

loc_12D0D6:
	SET objMapIdx_316, #$25 
	MULT_BY_2_BYTE byte_372
	TAY
	ADD_BYTE_TO_BYTE_CLC_IMM byte_36A, {byte_12D114,Y}, byte_547
	INY
	ADD_BYTE_TO_BYTE_CLC_IMM byte_366, {byte_12D114,Y}, #2
	SET2 byte_36B, byte_367, #0
	SET objectIdx_318, #5
	SET byte_31A, #0
	SET sprite_secondByte_31B, #0
	SET byte_317, #0
	JSR	exec_b1_c1_128394
	RTS
; End of function sub_12D0C2

; ---------------------------------------------------------------------------
byte_12D114:.BYTE $20,$58	
	
	.BYTE $20,$78
	.BYTE $20,$98
	.BYTE $20,$B8
byte_12D11C:.BYTE $9D,$DA	
	
	.BYTE $BD,$DA

; =============== S U B	R O U T	I N E =======================================

sub_12D120:
	LDY	byte_372
	IF_A_EQUAL_CMP_ADDR {byte_4A0,Y}, #$FF, loc_12D133
	JSR	sub_12D1E9
	SET sprite_length_30F, #$FF
	RTS
; ---------------------------------------------------------------------------

loc_12D133:
	SET sprite_length_30F, #0
	RTS
; End of function sub_12D120

; =============== S U B	R O U T	I N E =======================================

sub_12D139:
	SET_WORD_TO_WORD_CONST ptr_0, _SAVE_RAM

	ADD_BYTE_TO_WORD ptr_0, #$14

	LDY	byte_372

loc_12D151:
	IF_Y_EQUAL_CMP #0, locret_12D166

	ADD_BYTE_TO_BYTE_CLC ptr_0, #$58 
	ADD_BYTE_TO_BYTE ptr_1, #2

	DEY
	JMP	loc_12D151
; ---------------------------------------------------------------------------

locret_12D166:
	RTS
; End of function sub_12D139

; =============== S U B	R O U T	I N E =======================================

sub_12D167:
	SET_WORD_TO_WORD_CONST ptr_0, _SAVE_RAM

	LDY	#0

loc_12D171:
	TYA
	STA	(ptr_0),Y
	INY
	IF_Y_GREATER_CMP #$10, loc_12D171
	LDX	#0

loc_12D17B:
	SET_INX {(ptr_0),Y}, {byte_4A0,X}
	INY
	IF_X_GREATER_CMP #4, loc_12D17B

	ADD_BYTE_TO_WORD ptr_0, #$14

	SET image_id_4A4, byte_100
	SET image_offset_4A5, byte_101
	SET ppu_prev_unk_4A6, byte_102
	SET ppu_prev_scroll_x_unk_4A7, byte_103
	SET ppu_prev_scroll_y_unk_4A8, byte_104
	SET prev_sprite_type_4A9, byte_105
	JSR	sub_12D139
	LDY	#0

loc_12D1BC:
	SET_INY {(ptr_0),Y}, {image_id_4A4,Y}
	IF_Y_NOT_EQUAL_CMP #0, loc_12D1BC
	ADD_BYTE_TO_BYTE_CLC ptr_1, #4

loc_12D1CD:
	SET_INY {(ptr_0),Y}, {byte_5A4,Y}
	IF_Y_NOT_EQUAL_CMP #0, loc_12D1CD
	ADD_BYTE_TO_BYTE_CLC ptr_1, #4

loc_12D1DE:
	SET_INY {(ptr_0),Y}, {byte_6A4,Y}
	IF_Y_NOT_EQUAL_CMP #$44 , loc_12D1DE
	RTS
; End of function sub_12D167

; =============== S U B	R O U T	I N E =======================================

sub_12D1E9:
	JSR	sub_12D139
	LDY	#0

loc_12D1EE:
	SET_INY {image_id_4A4,Y}, {(ptr_0),Y}
	IF_Y_NOT_EQUAL_CMP #0, loc_12D1EE
	ADD_BYTE_TO_BYTE_CLC ptr_1, #4

loc_12D1FF:
	SET_INY {byte_5A4,Y}, {(ptr_0),Y}
	IF_Y_NOT_EQUAL_CMP #0, loc_12D1FF
	ADD_BYTE_TO_BYTE_CLC ptr_1, #4

loc_12D210:
	SET_INY {byte_6A4,Y}, {(ptr_0),Y}
	IF_Y_NOT_EQUAL_CMP #$44 , loc_12D210
	RTS
; End of function sub_12D1E9

; =============== S U B	R O U T	I N E =======================================

sub_12D21B:
	JSR	sub_12EEAE
	JSR	ppu_reset_ctrl_mask_FE93
	JSR	sub_12D261
	SET _PPU_ADDR, #$10
	SET _PPU_ADDR, #0
	LDX	#$20 

loc_12D230:
	LDY	#0

loc_12D232:
	SET_INY _PPU_DATA, #0
	BNE	loc_12D232
	DEX
	BNE	loc_12D230
	LDX	#0

loc_12D23F:
	SET_INX {palette_bg_321,X}, {byte_12D251,X}
	IF_X_NOT_EQUAL_CMP #$10, loc_12D23F
	JSR	ppu_update_ctrl_mask_FE86
	JSR	sub_12EDF5
	RTS
; End of function sub_12D21B

; ---------------------------------------------------------------------------
byte_12D251:.BYTE $3E,  7,$37,$30	
	.BYTE $3E,  7,$37,$30
	.BYTE $3E,  7,$37,$30
	.BYTE $3E,  7,$37,$30

; =============== S U B	R O U T	I N E =======================================

sub_12D261:
	SET tilemapWidth_308, #0
	SET byte_31A, #0
; End of function sub_12D261

; =============== S U B	R O U T	I N E =======================================

sub_12D26B:
	ADD_BYTE_TO_BYTE_CLC tilemapWidth_308, byte_31A
	LDY	byte_31A

loc_12D278:
	SET_INY {spr_y_pos_200,Y}, #$F0 
	INY
	INY
	INY
	IF_Y_NOT_EQUAL_CMP tilemapWidth_308, loc_12D278
	RTS
; End of function sub_12D26B

; =============== S U B	R O U T	I N E =======================================

sub_12D287:
	SET sprite_length_30F, #0
	SET2 byte_42C, byte_42E, #0
	SET objectIdx_318, #5
	SET byte_360, #0
	SET byte_361, #1

set_inventory_screen_12D2A3:
	SET image_id_4A4, #8
	SET4 image_offset_4A5, ppu_prev_unk_4A6, ppu_prev_scroll_x_unk_4A7, ppu_prev_scroll_y_unk_4A8, #0
	SET prev_sprite_type_4A9, #2
	JSR	exec_b0_c2_12A9A9
	JSR	sub_12DC52
	JSR	sub_12DE49
	JSR	sub_12DEB5
	SET byte_372, #0
	SET sprite_secondByte_31B, #$3C 
	IF_A_EQUAL byte_532, loc_12D315

loc_12D2D6:
	LDY	byte_372
	LDA	byte_533,Y
	TAX
	SET inv_itemPrev_idx_31D, {byte_12E869,X}
	MULT_BY_2_BYTE byte_372
	TAY
	DIV_A_BY_8_ADDR {byte_12E851,Y}
	STA	tilemap_size_307
	INY
	DIV_A_BY_8_ADDR {byte_12E851,Y}
	STA	ppu_unk_byte_309
	JSR	sub_128358
	JSR	sub_128326
	ADD_BYTE_TO_BYTE_CLC sprite_secondByte_31B, #$11
	INC	byte_372
	IF_A_NOT_EQUAL_CMP_ADDR byte_372, byte_532, loc_12D2D6

loc_12D315:
	JSR	sub_12E3DF
	RTS
; End of function sub_12D287

; =============== S U B	R O U T	I N E =======================================

sub_12D319:
	JSR	sub_12DD0A
	SET byte_31A, #$80 
	SET tilemapWidth_308, #$C
	JSR	sub_12D26B
; End of function sub_12D319

; =============== S U B	R O U T	I N E =======================================

sub_12D329:
	MULT_BY_2_BYTE byte_42E
	ADD_TO_A byte_42C
	IF_A_GREATER_CMP byte_532, loc_12D33A
	JSR	sub_12D49F
	RTS
; ---------------------------------------------------------------------------

loc_12D33A:
	STA	tilemapTypeUnk_30B
	MULT_BY_2_BYTE tilemapTypeUnk_30B
	TAX
	SET_INX tilemap_size_307, {byte_12E851,X}
	ADD_BYTE_TO_BYTE_CLC_IMM ppu_unk_byte_309, {byte_12E851,X}, #$10
	LDY	tilemapTypeUnk_30B
	IF_A_EQUAL_CMP_ADDR {byte_533,Y}, #1, loc_12D383
	IF_A_EQUAL_CMP #2, loc_12D383
	IF_A_EQUAL_CMP #3, loc_12D383
	IF_A_EQUAL_CMP #4, loc_12D383
	IF_A_EQUAL_CMP #5, loc_12D383
	IF_A_EQUAL_CMP #6, loc_12D383
	IF_A_EQUAL_CMP #7, loc_12D383
	IF_A_EQUAL_CMP #8, loc_12D383
	IF_A_EQUAL_CMP #9, loc_12D383
	IF_A_EQUAL_CMP #$1A, loc_12D383
	JMP	loc_12D394
; ---------------------------------------------------------------------------

loc_12D383:
	a_to_stack tilemapTypeUnk_30B
	LDY	tilemapTypeUnk_30B
	LDA	unk_53B,Y
	JSR	sub_12D3AB
	from_stack_to_a tilemapTypeUnk_30B

loc_12D394:
	LDY	tilemapTypeUnk_30B
	SET_TEXT_ARGS {byte_533,Y}, #0
	SET byte_364, #7
	JSR	exec_b2_c1_128300
	RTS
; End of function sub_12D329

; =============== S U B	R O U T	I N E =======================================

sub_12D3AB:
	STA	ptr_0
	SET2 data_2, data_3, #0

loc_12D3B3:
	IF_A_GREATER_CMP_ADDR ptr_0, #$64, loc_12D3C5
	sub_byte_sec ptr_0, #$64 
	INC	data_3
	JMP	loc_12D3B3
; ---------------------------------------------------------------------------

loc_12D3C5:
	IF_A_GREATER_CMP_ADDR ptr_0, #$A, loc_12D3D7
	sub_byte_sec ptr_0, #$A
	INC	data_2
	JMP	loc_12D3C5
; ---------------------------------------------------------------------------

loc_12D3D7:
	IF_A_EQUAL data_3, loc_12D423
	ADD_BYTE_TO_BYTE_CLC tilemap_size_307, #4
	ADD_BYTE_TO_BYTE_CLC_IMM objMapIdx_316, data_3, #$32 
	SET byte_317, #0
	SET byte_31A, #$80 
	SET sprite_secondByte_31B, #0
	a_to_stack tilemap_size_307
	a_to_stack ppu_unk_byte_309
	a_to_stack data_2
	a_to_stack data_3
	a_to_stack ptr_0
	JSR	sub_12E829
	from_stack_to_a ptr_0
	from_stack_to_a data_3
	from_stack_to_a data_2
	from_stack_to_a ppu_unk_byte_309
	PLA
	ADD_TO_A #8
	STA	tilemap_size_307

loc_12D423:
	IF_A_NOT_EQUAL data_3, loc_12D434
	IF_A_EQUAL data_2, loc_12D473
	ADD_BYTE_TO_BYTE_CLC tilemap_size_307, #8

loc_12D434:
	ADD_BYTE_TO_BYTE_CLC_IMM objMapIdx_316, data_2, #$32 
	SET byte_317, #0
	SET byte_31A, #$84 
	SET sprite_secondByte_31B, #0
	a_to_stack tilemap_size_307
	a_to_stack ppu_unk_byte_309
	a_to_stack data_2
	a_to_stack data_3
	a_to_stack ptr_0
	JSR	sub_12E829
	from_stack_to_a ptr_0
	from_stack_to_a data_3
	from_stack_to_a data_2
	from_stack_to_a ppu_unk_byte_309
	PLA
	ADD_TO_A #8
	STA	tilemap_size_307

loc_12D473:
	IF_A_NOT_EQUAL data_3, loc_12D484
	IF_A_NOT_EQUAL data_2, loc_12D484
	ADD_BYTE_TO_BYTE_CLC tilemap_size_307, #$C

loc_12D484:
	ADD_BYTE_TO_BYTE_CLC_IMM objMapIdx_316, ptr_0, #$32 
	SET byte_317, #0
	SET byte_31A, #$88 
	SET sprite_secondByte_31B, #0
	JSR	sub_12E829
	RTS
; End of function sub_12D3AB

; =============== S U B	R O U T	I N E =======================================

sub_12D49F:
	SET byte_310, #0
	SET byte_35E, #$A
	SET ppu_unk_byte_309, #$1B
	SET tilemap_size_307, #4
; End of function sub_12D49F

; =============== S U B	R O U T	I N E =======================================

sub_12D4B3:
	SET byte_35F, #1
	SET byte_362, #0
	SET byte_363, #0
	JSR	exec_b2_c5_128405
	RTS
; End of function sub_12D4B3

; =============== S U B	R O U T	I N E =======================================

sub_12D4C6:
	JSR	sub_1283BA
	a_to_stack image_id_4A4
	a_to_stack image_offset_4A5
	a_to_stack ppu_prev_unk_4A6
	a_to_stack ppu_prev_scroll_x_unk_4A7
	a_to_stack ppu_prev_scroll_y_unk_4A8
	a_to_stack prev_sprite_type_4A9
	JSR	sub_12D287
	JSR	sub_12D319

loc_12D4E7:
	JSR	sub_12DE49
	JSR	sub_12DEB5
	JSR	sub_12DD0A
	JSR	wait_for_vblank_FC95
	IF_A_NOT_EQUAL_CMP_ADDR input_pressed_34A, #8, loc_12D512
	IF_A_NOT_EQUAL_CMP_ADDR byte_42E, #0, loc_12D506
	SET byte_42E, #6

loc_12D506:
	DEC	byte_42E
	JSR	sub_12ED32
	JSR	sub_12D319
	JMP	loc_12D4E7
; ---------------------------------------------------------------------------

loc_12D512:
	IF_A_NOT_EQUAL_CMP #4, loc_12D52E
	IF_A_NOT_EQUAL_CMP_ADDR byte_42E, #5, loc_12D522
	SET byte_42E, #$FF

loc_12D522:
	INC	byte_42E
	JSR	sub_12ED32
	JSR	sub_12D319
	JMP	loc_12D4E7
; ---------------------------------------------------------------------------

loc_12D52E:
	IF_A_NOT_EQUAL_CMP #2, loc_12D543
	XOR_BYTE  byte_42C, #1
	JSR	sub_12ED32
	JSR	sub_12D319
	JMP	loc_12D4E7
; ---------------------------------------------------------------------------

loc_12D543:
	IF_A_NOT_EQUAL_CMP #1, loc_12D558
	XOR_BYTE  byte_42C, #1
	JSR	sub_12ED32
	JSR	sub_12D319
	JMP	loc_12D4E7
; ---------------------------------------------------------------------------

loc_12D558:
	IF_A_NOT_EQUAL_CMP #$80, loc_12D569
	JSR	sub_12DB1E
	IF_A_EQUAL_CMP_ADDR sprite_length_30F, #$FF, loc_12D570
	JMP	loc_12D4E7
; ---------------------------------------------------------------------------

loc_12D569:
	IF_A_EQUAL_CMP #$10, loc_12D570
	JMP	loc_12D4E7
; ---------------------------------------------------------------------------

loc_12D570:
	JSR	sub_12ED29
	from_stack_to_a prev_sprite_type_4A9
	from_stack_to_a ppu_prev_scroll_y_unk_4A8
	from_stack_to_a ppu_prev_scroll_x_unk_4A7
	from_stack_to_a ppu_prev_unk_4A6
	from_stack_to_a image_offset_4A5
	from_stack_to_a image_id_4A4
	RTS
; End of function sub_12D4C6

; =============== S U B	R O U T	I N E =======================================

sub_12D58C:
	JSR	sub_1283BA
	a_to_stack image_id_4A4
	a_to_stack image_offset_4A5
	a_to_stack ppu_prev_unk_4A6
	a_to_stack ppu_prev_scroll_x_unk_4A7
	a_to_stack ppu_prev_scroll_y_unk_4A8
	a_to_stack prev_sprite_type_4A9
	a_to_stack tilemapTypeUnk_30B
	JSR	sub_12D287
	from_stack_to_a tilemapTypeUnk_30B
	a_to_stack tilemapTypeUnk_30B
	SET_TEXT_ARGS tilemapTypeUnk_30B, #0
	IF_A_NOT_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #$3B, loc_12D5D2
	SET_TEXT_ARGS #7, #2

loc_12D5D2:
	LDY	tilemapTypeUnk_30B
	SET inv_itemPrev_idx_31D, {byte_12E869,Y}
	SET tilemap_size_307, #$A
	SET ppu_unk_byte_309, #8
	SET sprite_secondByte_31B, #$C4 
	JSR	sub_128358
	JSR	sub_128326
	SET byte_364, #7
	JSR	exec_b2_c1_128300
	JSR	sub_12DAD0
	from_stack_to_a tilemapTypeUnk_30B
	IF_A_GREATER_CMP_ADDR byte_532, #8, loc_12D623
	SET_TEXT_ARGS #$7D, #0
	SET byte_364, #7
	JSR	exec_b2_c1_128300
	JSR	sub_12DAD0
	SET sprite_length_30F, #0
	JMP	loc_12D652
; ---------------------------------------------------------------------------

loc_12D623:
	SET_TEXT_ARGS #$7A, #0
	SET byte_364, #7
	a_to_stack tilemapTypeUnk_30B
	JSR	exec_b2_c1_128300
	JSR	sub_12D680
	from_stack_to_a tilemapTypeUnk_30B
	SET sprite_length_30F, #0
	IF_A_NOT_EQUAL byte_372, loc_12D652
	JSR	sub_12D82B
	SET sprite_length_30F, #$FF

loc_12D652:
	from_stack_to_a prev_sprite_type_4A9
	from_stack_to_a ppu_prev_scroll_y_unk_4A8
	from_stack_to_a ppu_prev_scroll_x_unk_4A7
	from_stack_to_a ppu_prev_unk_4A6
	from_stack_to_a image_offset_4A5
	from_stack_to_a image_id_4A4
	SET map_show_43B, #$FF
	a_to_stack sprite_length_30F
	JSR	exec_b0_c2_12A9A9
	from_stack_to_a sprite_length_30F
	SET map_show_43B, #0
	RTS
; End of function sub_12D58C

; =============== S U B	R O U T	I N E =======================================

sub_12D680:
	SET byte_372, #0

loc_12D685:
	IF_A_GREATER_CMP_ADDR byte_546, #$A, loc_12D699
	SET byte_546, #0
	XOR_BYTE  byte_547, #1

loc_12D699:
	SET byte_31A, #$70 
	SET sprite_secondByte_31B, #0
	SET byte_317, #0
	SET objMapIdx_316, #$30 

	LDA	byte_372
	MULT_A_BY_32
	ADD_TO_A #$84 
	ADD_TO_A byte_547
	ADD_TO_A byte_547
	STA	tilemap_size_307

	SET ppu_unk_byte_309, #$DC 
	JSR	sub_12E829
	JSR	wait_for_vblank_FC95
	IF_A_NOT_EQUAL_CMP_ADDR input_pressed_34A, #2, loc_12D6E3
	XOR_BYTE  byte_372, #1
	JSR	sub_12ED32
	JMP	loc_12D685
; ---------------------------------------------------------------------------

loc_12D6E3:
	IF_A_NOT_EQUAL_CMP #1, loc_12D6F5
	XOR_BYTE  byte_372, #1
	JSR	sub_12ED32
	JMP	loc_12D685
; ---------------------------------------------------------------------------

loc_12D6F5:
	IF_A_EQUAL_CMP #$80, loc_12D6FC
	JMP	loc_12D685
; ---------------------------------------------------------------------------

loc_12D6FC:
	JSR	sub_12ED20
	RTS
; End of function sub_12D680

; =============== S U B	R O U T	I N E =======================================

sub_12D700:
	JSR	sub_1283BA
	a_to_stack image_id_4A4
	a_to_stack image_offset_4A5
	a_to_stack ppu_prev_unk_4A6
	a_to_stack ppu_prev_scroll_x_unk_4A7
	a_to_stack ppu_prev_scroll_y_unk_4A8
	a_to_stack prev_sprite_type_4A9
	JSR	sub_12D287
	JSR	sub_12D319
	SET byte_372, #0
	JSR	sub_12DF32
	JSR	sub_12DCCC
	JSR	sub_12DCE9

loc_12D72F:
	JSR	sub_12DD0A
	JSR	wait_for_vblank_FC95
	IF_A_NOT_EQUAL_CMP_ADDR input_pressed_34A, #8, loc_12D76F
	IF_A_NOT_EQUAL_CMP_ADDR byte_42E, #0, loc_12D757
	IF_A_NOT_EQUAL_CMP_ADDR byte_42C, #1, loc_12D752
	SET byte_42E, #6
	JMP	loc_12D757
; ---------------------------------------------------------------------------

loc_12D752:
	SET byte_42E, #4

loc_12D757:
	IF_A_NOT_EQUAL_CMP_ADDR byte_42E, #5, loc_12D763
	SET byte_42E, #4

loc_12D763:
	DEC	byte_42E
	JSR	sub_12ED32
	JSR	sub_12D319
	JMP	loc_12D72F
; ---------------------------------------------------------------------------

loc_12D76F:
	IF_A_NOT_EQUAL_CMP #4, loc_12D7A6
	IF_A_NOT_EQUAL_CMP_ADDR byte_42E, #3, loc_12D78E
	IF_A_NOT_EQUAL_CMP_ADDR byte_42C, #1, loc_12D789
	SET byte_42E, #4
	JMP	loc_12D78E
; ---------------------------------------------------------------------------

loc_12D789:
	SET byte_42E, #$FF

loc_12D78E:
	IF_A_NOT_EQUAL_CMP_ADDR byte_42E, #5, loc_12D79A
	SET byte_42E, #$FF

loc_12D79A:
	INC	byte_42E
	JSR	sub_12ED32
	JSR	sub_12D319
	JMP	loc_12D72F
; ---------------------------------------------------------------------------

loc_12D7A6:
	IF_A_NOT_EQUAL_CMP #2, loc_12D7C5
	IF_A_NOT_EQUAL_CMP_ADDR byte_42E, #5, loc_12D7B4
	JMP	loc_12D72F
; ---------------------------------------------------------------------------

loc_12D7B4:
	XOR_BYTE  byte_42C, #1
	JSR	sub_12ED32
	JSR	sub_12D319
	JMP	loc_12D72F
; ---------------------------------------------------------------------------

loc_12D7C5:
	IF_A_NOT_EQUAL_CMP #1, loc_12D7E4
	IF_A_NOT_EQUAL_CMP_ADDR byte_42E, #5, loc_12D7D3
	JMP	loc_12D72F
; ---------------------------------------------------------------------------

loc_12D7D3:
	XOR_BYTE  byte_42C, #1
	JSR	sub_12ED32
	JSR	sub_12D319
	JMP	loc_12D72F
; ---------------------------------------------------------------------------

loc_12D7E4:
	IF_A_NOT_EQUAL_CMP #$80, loc_12D7FB
	IF_A_EQUAL_CMP_ADDR byte_42E, #5, loc_12D802
	JSR	sub_12ED20
	JSR	sub_12DC76
	JSR	sub_12D319
	JMP	loc_12D72F
; ---------------------------------------------------------------------------

loc_12D7FB:
	IF_A_EQUAL_CMP #$10, loc_12D802
	JMP	loc_12D72F
; ---------------------------------------------------------------------------

loc_12D802:
	JSR	sub_12ED29
	from_stack_to_a prev_sprite_type_4A9
	from_stack_to_a ppu_prev_scroll_y_unk_4A8
	from_stack_to_a ppu_prev_scroll_x_unk_4A7
	from_stack_to_a ppu_prev_unk_4A6
	from_stack_to_a image_offset_4A5
	from_stack_to_a image_id_4A4
	SET map_show_43B, #$FF
	JSR	exec_b0_c2_12A9A9
	SET map_show_43B, #0
	RTS
; End of function sub_12D700

; =============== S U B	R O U T	I N E =======================================

sub_12D82B:
	LDY	byte_532
	SET {byte_533,Y}, tilemapTypeUnk_30B
	IF_A_NOT_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #1, loc_12D840
	SET {unk_53B,Y}, #$F

loc_12D840:
	IF_A_NOT_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #2, loc_12D84C
	SET {unk_53B,Y}, #6

loc_12D84C:
	IF_A_NOT_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #3, loc_12D858
	SET {unk_53B,Y}, #6

loc_12D858:
	IF_A_NOT_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #4, loc_12D864
	SET {unk_53B,Y}, #6

loc_12D864:
	IF_A_NOT_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #5, loc_12D870
	SET {unk_53B,Y}, #6

loc_12D870:
	IF_A_NOT_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #6, loc_12D87C
	SET {unk_53B,Y}, #$F

loc_12D87C:
	IF_A_NOT_EQUAL_CMP #7, loc_12D885
	SET {unk_53B,Y}, #6

loc_12D885:
	IF_A_NOT_EQUAL_CMP #8, loc_12D88E
	SET {unk_53B,Y}, #6

loc_12D88E:
	IF_A_NOT_EQUAL_CMP #9, loc_12D897
	SET {unk_53B,Y}, #6

loc_12D897:
	IF_A_NOT_EQUAL_CMP #$1A, loc_12D8A0
	SET {unk_53B,Y}, #3

loc_12D8A0:
	IF_A_NOT_EQUAL byte_4B4, loc_12D8AF
	ADD_BYTE_TO_BYTE_CLC {unk_53B,Y}, {unk_53B,Y}

loc_12D8AF:
	INC	byte_532
	RTS
; End of function sub_12D82B

; =============== S U B	R O U T	I N E =======================================

sub_12D8B3:
	IF_A_GREATER_CMP_ADDR tilemapTypeUnk_30B, byte_532, loc_12D8BC
	RTS
; ---------------------------------------------------------------------------

loc_12D8BC:
	LDY	tilemapTypeUnk_30B
	LDX	tilemapTypeUnk_30B
	INX

loc_12D8C3:
	IF_X_EQUAL_CMP byte_532, loc_12D8D9
	SET {byte_533,Y}, {byte_533,X}
	SET_INX {unk_53B,Y}, {unk_53B,X}
	INY
	JMP	loc_12D8C3
; ---------------------------------------------------------------------------

loc_12D8D9:
	DEC	byte_532
	RTS
; End of function sub_12D8B3

; =============== S U B	R O U T	I N E =======================================

sub_12D8DD:
	LDX	byte_372
	LDA	unk_4D2,X
	PHA
	LDA	unk_502,X
	PHA
	MULT_BY_2_BYTE byte_42E
	ADD_TO_A byte_42C
	IF_A_GREATER_CMP byte_532, loc_12D900
	LDX	byte_372
	SET {unk_4D2,X}, #$3A 
	JMP	loc_12D910
; ---------------------------------------------------------------------------

loc_12D900:
	TAY
	LDX	byte_372
	SET {unk_4D2,X}, {byte_533,Y}
	SET {unk_502,X}, {unk_53B,Y}

loc_12D910:
	JSR	sub_12DF2B
	from_stack_to_a inv_spr_dscr1_30C
	from_stack_to_a tilemapTypeUnk_30B
	MULT_BY_2_BYTE byte_42E
	ADD_TO_A byte_42C
	TAY
	IF_Y_GREATER_CMP byte_532, loc_12D946
	IF_A_NOT_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #$3A, loc_12D931
	RTS
; ---------------------------------------------------------------------------

loc_12D931:
	LDY	byte_532
	SET {byte_533,Y}, tilemapTypeUnk_30B
	SET {unk_53B,Y}, inv_spr_dscr1_30C
	INC	byte_532
	JMP	loc_12D9A3
; ---------------------------------------------------------------------------

loc_12D946:
	IF_A_EQUAL_CMP_ADDR {byte_533,Y}, #6, loc_12D966
	BCS	loc_12D966
	a_to_stack tilemapTypeUnk_30B
	a_to_stack inv_spr_dscr1_30C
	y_to_stack
	JSR	sub_12DFFC
	from_stack_to_y
	from_stack_to_a inv_spr_dscr1_30C
	from_stack_to_a tilemapTypeUnk_30B

loc_12D966:
	SET {unk_53B,Y}, inv_spr_dscr1_30C
	SET {byte_533,Y}, tilemapTypeUnk_30B
	IF_A_NOT_EQUAL_CMP #$3A, loc_12D9A3
	y_to_stack
	TAX

loc_12D979:
	TYA
	TAX
	INX
	IF_X_EQUAL_CMP byte_532, loc_12D991
	SET {byte_533,Y}, {byte_533,X}
	SET_INY {unk_53B,Y}, {unk_53B,X}
	JMP	loc_12D979
; ---------------------------------------------------------------------------

loc_12D991:
	from_stack_to_x
	LDY	byte_532
	JSR	sub_12D9F7
	DEC	byte_532
	LDY	byte_532
	JSR	sub_12DA33
	RTS
; ---------------------------------------------------------------------------

loc_12D9A3:
	a_to_stack tilemapTypeUnk_30B
	y_to_stack
	TAX
	INY
	SET sprite_secondByte_31B, #$A
	JSR	sub_12D9F7
	from_stack_to_y
	from_stack_to_a tilemapTypeUnk_30B
	LDX	tilemapTypeUnk_30B
	SET inv_itemPrev_idx_31D, {byte_12E869,X}
	TYA
	TAX
	SET sprite_secondByte_31B, #$3C 

loc_12D9C9:
	IF_X_EQUAL_CMP #0, loc_12D9DA
	ADD_BYTE_TO_BYTE_CLC sprite_secondByte_31B, #$11
	DEX
	JMP	loc_12D9C9
; ---------------------------------------------------------------------------

loc_12D9DA:
	TYA
	MULT_A_BY_2
	TAY
	DIV_A_BY_8_ADDR {byte_12E851,Y}
	STA	tilemap_size_307
	INY
	DIV_A_BY_8_ADDR {byte_12E851,Y}
	STA	ppu_unk_byte_309
	JSR	sub_128358
	JSR	sub_128326
	RTS
; End of function sub_12D8DD

; =============== S U B	R O U T	I N E =======================================

sub_12D9F7:
	x_to_stack
	y_to_stack

loc_12D9FB:
	x_to_stack
	MULT_A_BY_2
	TAX
	DIV_A_BY_8_ADDR {byte_12E851,X}
	STA	tilemap_size_307
	INX
	DIV_A_BY_8_ADDR {byte_12E851,X}
	STA	ppu_unk_byte_309
	SET inv_itemPrev_idx_31D, #$29 
	SET sprite_secondByte_31B, #$A
	y_to_stack
	JSR	sub_128326
	from_stack_to_y
	STY	tilemapTypeUnk_30B
	from_stack_to_x
	INX
	IF_X_GREATER_CMP tilemapTypeUnk_30B, loc_12D9FB
	from_stack_to_y
	from_stack_to_x
	RTS
; End of function sub_12D9F7

; =============== S U B	R O U T	I N E =======================================

sub_12DA33:
	x_to_stack
	y_to_stack
	STX	tilemapTypeUnk_30B
	TYA
	IF_A_NOT_EQUAL_CMP tilemapTypeUnk_30B, loc_12DA43
	JMP	loc_12DACB
; ---------------------------------------------------------------------------

loc_12DA43:
	SET sprite_secondByte_31B, #$3C 

loc_12DA48:
	IF_A_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #0, loc_12DA5E
	ADD_BYTE_TO_BYTE_CLC sprite_secondByte_31B, #$11
	DEC	tilemapTypeUnk_30B
	JMP	loc_12DA48
; ---------------------------------------------------------------------------

loc_12DA5E:
	x_to_stack
	LDA	byte_533,X
	TAX
	SET inv_itemPrev_idx_31D, {byte_12E869,X}
	from_stack_to_x
	PHA
	MULT_A_BY_2
	TAX
	DIV_A_BY_8_ADDR {byte_12E851,X}
	STA	tilemap_size_307
	INX
	DIV_A_BY_8_ADDR {byte_12E851,X}
	STA	ppu_unk_byte_309
	y_to_stack
	JSR	sub_128358
	JSR	sub_128326
	from_stack_to_y
	STA	tilemapTypeUnk_30B
	from_stack_to_x
	x_to_stack
	LDA	byte_533,X
	ADD_TO_A #1
	IF_A_NOT_EQUAL_CMP byte_543, loc_12DABA
	STX	byte_544
	SET tilemap_size_307, #$10
	SET ppu_unk_byte_309, #$14
	a_to_stack tilemapTypeUnk_30B
	y_to_stack
	JSR	sub_128326
	from_stack_to_y
	from_stack_to_a tilemapTypeUnk_30B

loc_12DABA:
	ADD_BYTE_TO_BYTE_CLC sprite_secondByte_31B, #$11
	from_stack_to_x
	INX
	IF_X_GREATER_CMP tilemapTypeUnk_30B, loc_12DA5E

loc_12DACB:
	from_stack_to_y
	from_stack_to_x
	RTS
; End of function sub_12DA33

; =============== S U B	R O U T	I N E =======================================

sub_12DAD0:
	IF_A_GREATER_CMP_ADDR byte_546, #$A, loc_12DAE4
	SET byte_546, #0
	XOR_BYTE  byte_547, #1

loc_12DAE4:
	SET byte_31A, #$70 
	SET sprite_secondByte_31B, #0
	SET byte_317, #0
	SET objMapIdx_316, #$2F 
	SET tilemap_size_307, #$C4 
	LDA	#$E0 
	ADD_TO_A byte_547
	ADD_TO_A byte_547
	STA	ppu_unk_byte_309
	JSR	sub_12E829
	JSR	wait_for_vblank_FC95
	IF_A_NOT_EQUAL_CMP_ADDR input_pressed_34A, #0, loc_12DB1A
	JMP	sub_12DAD0
; ---------------------------------------------------------------------------

loc_12DB1A:
	JSR	sub_12ED32
	RTS
; End of function sub_12DAD0

; =============== S U B	R O U T	I N E =======================================

sub_12DB1E:
	IF_A_NOT_EQUAL_CMP_ADDR byte_42E, #4, loc_12DB3A
	IF_A_NOT_EQUAL_CMP_ADDR byte_42C, #0, loc_12DB33
	JSR	sub_12ED20
	JSR	sub_12E5E6
	RTS
; ---------------------------------------------------------------------------

loc_12DB33:
	JSR	sub_12ED20
	JSR	sub_12E69F
	RTS
; ---------------------------------------------------------------------------

loc_12DB3A:
	IF_A_NOT_EQUAL_CMP_ADDR byte_42E, #5, loc_12DB75
	IF_A_NOT_EQUAL_CMP_ADDR byte_42C, #0, loc_12DB6C
	IF_A_EQUAL byte_545, locret_12DB6B
	JSR	sub_12ED20
	SET_TEXT_ARGS #$44, #2
	SET byte_364, #7
	JSR	exec_b2_c1_128300
	JSR	sub_12E3D4
	JSR	sub_12ED29
	JSR	sub_12D49F

locret_12DB6B:
	RTS
; ---------------------------------------------------------------------------

loc_12DB6C:
	JSR	sub_12ED29
	SET sprite_length_30F, #$FF
	RTS
; ---------------------------------------------------------------------------

loc_12DB75:
	MULT_BY_2_BYTE byte_42E
	ADD_TO_A byte_42C
	IF_A_GREATER_CMP byte_532, loc_12DB83
	RTS
; ---------------------------------------------------------------------------

loc_12DB83:
	JSR	sub_12ED20
	SET byte_372, #0
	JSR	sub_12DC31

loc_12DB8E:
	JSR	wait_for_vblank_FC95
	IF_A_NOT_EQUAL_CMP_ADDR input_pressed_34A, #8, loc_12DBB0
	IF_A_NOT_EQUAL_CMP_ADDR byte_372, #0, loc_12DBA4
	SET byte_372, #3

loc_12DBA4:
	DEC	byte_372
	JSR	sub_12ED32
	JSR	sub_12DC31
	JMP	loc_12DB8E
; ---------------------------------------------------------------------------

loc_12DBB0:
	IF_A_NOT_EQUAL_CMP #4, loc_12DBCC
	IF_A_NOT_EQUAL_CMP_ADDR byte_372, #2, loc_12DBC0
	SET byte_372, #$FF

loc_12DBC0:
	INC	byte_372
	JSR	sub_12ED32
	JSR	sub_12DC31
	JMP	loc_12DB8E
; ---------------------------------------------------------------------------

loc_12DBCC:
	IF_A_NOT_EQUAL_CMP #$80, loc_12DC0F
	JSR	sub_12ED20
	MULT_BY_2_BYTE byte_42E
	ADD_TO_A byte_42C
	STA	byte_47B
	IF_A_NOT_EQUAL_CMP_ADDR byte_372, #0, loc_12DBEB
	JSR	sub_12DFA5
	JMP	loc_12DC0C
; ---------------------------------------------------------------------------

loc_12DBEB:
	IF_A_NOT_EQUAL_CMP #1, loc_12DBF5
	JSR	sub_12E384
	JMP	loc_12DC0C
; ---------------------------------------------------------------------------

loc_12DBF5:
	IF_A_NOT_EQUAL_CMP #2, loc_12DC0C
	a_to_stack byte_42C
	a_to_stack byte_42E
	JSR	sub_12E428
	from_stack_to_a byte_42E
	from_stack_to_a byte_42C

loc_12DC0C:
	JMP	loc_12DC16
; ---------------------------------------------------------------------------

loc_12DC0F:
	IF_A_EQUAL_CMP #$40, loc_12DC16
	JMP	loc_12DB8E
; ---------------------------------------------------------------------------

loc_12DC16:
	JSR	sub_12ED29
	SET tilemapWidth_308, #$60 
	SET byte_31A, #$A0 
	JSR	sub_12D26B
	IF_A_EQUAL_CMP_ADDR sprite_length_30F, #$FF, locret_12DC30
	JSR	sub_12D319

locret_12DC30:
	RTS
; End of function sub_12DB1E

; =============== S U B	R O U T	I N E =======================================

sub_12DC31:
	ADD_BYTE_TO_BYTE_CLC_IMM objMapIdx_316, byte_372, #$20 
	SET tilemap_size_307, #$80 
	SET ppu_unk_byte_309, #$50 
	SET byte_31A, #$A0 
	SET sprite_secondByte_31B, #0
	JSR	sub_12E829
	RTS
; End of function sub_12DC31

; =============== S U B	R O U T	I N E =======================================

sub_12DC52:
	ADD_BYTE_TO_BYTE_CLC_IMM objMapIdx_316, byte_545, #$1B
	SET byte_31A, #$40 
	SET2 sprite_secondByte_31B, byte_317, #0
	SET tilemap_size_307, #$B0 
	SET ppu_unk_byte_309, #$1F
	JSR	sub_12E829
	RTS
; End of function sub_12DC52

; =============== S U B	R O U T	I N E =======================================

sub_12DC76:
	JSR	sub_12DF6C

loc_12DC79:
	JSR	wait_for_vblank_FC95
	IF_A_NOT_EQUAL_CMP_ADDR input_reg1_347, #8, loc_12DC97
	IF_A_EQUAL byte_372, loc_12DC79
	DEC	byte_372
	JSR	sub_12ED32
	JSR	sub_12DF2B
	JSR	sub_12DCE9
	JMP	loc_12DC79
; ---------------------------------------------------------------------------

loc_12DC97:
	IF_A_NOT_EQUAL_CMP #4, loc_12DCB1
	IF_A_EQUAL_CMP_ADDR byte_372, #$2F, loc_12DC79
	INC	byte_372
	JSR	sub_12ED32
	JSR	sub_12DF2B
	JSR	sub_12DCE9
	JMP	loc_12DC79
; ---------------------------------------------------------------------------

loc_12DCB1:
	IF_A_NOT_EQUAL_CMP_ADDR input_pressed_34A, #$80, loc_12DCC1
	JSR	sub_12ED20
	JSR	sub_12D8DD
	JMP	loc_12DCC8
; ---------------------------------------------------------------------------

loc_12DCC1:
	IF_A_EQUAL_CMP #$40, loc_12DCC8
	JMP	loc_12DC79
; ---------------------------------------------------------------------------

loc_12DCC8:
	JSR	sub_12ED29
	RTS
; End of function sub_12DC76

; =============== S U B	R O U T	I N E =======================================

sub_12DCCC:
	SET objMapIdx_316, #$23 
	SET tilemap_size_307, #$90 
	SET ppu_unk_byte_309, #$30 
	SET byte_31A, #$A8 
	SET sprite_secondByte_31B, #0
	JSR	sub_12E829
	RTS
; End of function sub_12DCCC

; =============== S U B	R O U T	I N E =======================================

sub_12DCE9:
	SET objMapIdx_316, #$24 
	SET tilemap_size_307, #$90 
	ADD_BYTE_TO_BYTE_CLC_IMM ppu_unk_byte_309, #$38 , byte_372
	SET byte_31A, #$A0 
	SET sprite_secondByte_31B, #0
	JSR	sub_12E829
	RTS
; End of function sub_12DCE9

; =============== S U B	R O U T	I N E =======================================

sub_12DD0A:
	IF_A_GREATER_CMP_ADDR byte_546, #$A, loc_12DD1E
	SET byte_546, #0
	XOR_BYTE  byte_547, #1

loc_12DD1E:
	MULT_BY_4_BYTE byte_42E
	ADD_TO_A byte_42C
	ADD_TO_A byte_42C
	TAY
	SET_INY tilemap_size_307, {byte_12E851,Y}
	SET ppu_unk_byte_309, {byte_12E851,Y}

	SET byte_31A, #$60 
	SET sprite_secondByte_31B, #0
	SET byte_317, #0
	SET objMapIdx_316, #$2A 
	a_to_stack tilemap_size_307
	a_to_stack ppu_unk_byte_309
	ADD_BYTE_TO_BYTE_CLC ppu_unk_byte_309, byte_547
	ADD_BYTE_TO_BYTE_CLC tilemap_size_307, byte_547

	JSR	sub_12E829
	from_stack_to_a ppu_unk_byte_309
	from_stack_to_a tilemap_size_307
	ADD_BYTE_TO_BYTE_CLC byte_31A, #4

	SET objMapIdx_316, #$2B 
	a_to_stack tilemap_size_307
	a_to_stack ppu_unk_byte_309
	ADD_BYTE_TO_BYTE_CLC ppu_unk_byte_309, byte_547

	LDA	tilemap_size_307
	ADD_TO_A #$18
	sub_a_sec byte_547
	STA	tilemap_size_307
	JSR	sub_12E829
	from_stack_to_a ppu_unk_byte_309
	from_stack_to_a tilemap_size_307
	ADD_BYTE_TO_BYTE_CLC byte_31A, #4
	SET objMapIdx_316, #$2C 
	a_to_stack tilemap_size_307
	a_to_stack ppu_unk_byte_309
	LDA	ppu_unk_byte_309
	ADD_TO_A #$18
	sub_a_sec byte_547
	STA	ppu_unk_byte_309
	ADD_BYTE_TO_BYTE_CLC tilemap_size_307, byte_547
	IF_A_GREATER_CMP_ADDR byte_42E, #4, loc_12DDE9
	sub_byte_sec ppu_unk_byte_309, #$10

loc_12DDE9:
	JSR	sub_12E829
	from_stack_to_a ppu_unk_byte_309
	from_stack_to_a tilemap_size_307
	ADD_BYTE_TO_BYTE_CLC byte_31A, #4
	SET objMapIdx_316, #$2D 
	a_to_stack tilemap_size_307
	a_to_stack ppu_unk_byte_309
	LDA	tilemap_size_307
	ADD_TO_A #$18
	sub_a_sec byte_547
	STA	tilemap_size_307
	LDA	ppu_unk_byte_309
	ADD_TO_A #$18
	sub_a_sec byte_547
	STA	ppu_unk_byte_309
	IF_A_GREATER_CMP_ADDR byte_42E, #4, loc_12DE34
	sub_byte_sec ppu_unk_byte_309, #$10

loc_12DE34:
	JSR	sub_12E829
	from_stack_to_a ppu_unk_byte_309
	from_stack_to_a tilemap_size_307
	ADD_BYTE_TO_BYTE_CLC byte_31A, #4
	RTS
; End of function sub_12DD0A

; =============== S U B	R O U T	I N E =======================================

sub_12DE49:
	IF_A_GREATER_CMP_ADDR count_unk_465, #5, locret_12DEB4
	SET count_unk_465, #0
	INC	byte_54D
	IF_A_GREATER_CMP_ADDR byte_54D, #7, loc_12DE64
	SET byte_54D, #0

loc_12DE64:
	SET objMapIdx_316, byte_54D
	IF_A_GREATER_CMP_ADDR byte_549, #$55, loc_12DE8E
	IF_A_GREATER_CMP #$AA, loc_12DE7D
	SET byte_54B, #0
	JMP	loc_12DE9C
; ---------------------------------------------------------------------------

loc_12DE7D:
	ADD_BYTE_TO_BYTE_CLC objMapIdx_316, #7
	SET byte_54B, #1
	JMP	loc_12DE9C
; ---------------------------------------------------------------------------

loc_12DE8E:
	ADD_BYTE_TO_BYTE_CLC objMapIdx_316, #$E
	SET byte_54B, #2

loc_12DE9C:
	SET3 byte_31A, sprite_secondByte_31B, byte_317, #0
	SET tilemap_size_307, #$40 
	SET ppu_unk_byte_309, #$A0 
	JSR	sub_12E829

locret_12DEB4:
	RTS
; End of function sub_12DE49

; =============== S U B	R O U T	I N E =======================================

sub_12DEB5:
	SET objMapIdx_316, byte_54B
	IF_A_EQUAL byte_54A, loc_12DEC9
	ADD_BYTE_TO_BYTE_CLC objMapIdx_316, #3

loc_12DEC9:
	ADD_BYTE_TO_BYTE_CLC objMapIdx_316, #$15
	SET byte_31A, #$30 
	SET2 sprite_secondByte_31B, byte_317, #0
	SET tilemap_size_307, #$40 
	SET ppu_unk_byte_309, #$B8 
	JSR	sub_12E829
	RTS
; End of function sub_12DEB5

; ---------------------------------------------------------------------------
byte_12DEED:
	.BYTE	0,  0,	0,  0,	0,  0,	0,  1,	1,  1,	1,  1,	1,  1,	2,  2
	.BYTE	2,  2,	2,  2,	2,  0,	1,  2,	0,  1,	2,  3,	3,  3,	3,  3
	.BYTE	3,  3,	3,  3,	3,  3,	3,  3,	3,  3,	0,  0,	0,  0,	0,  0
	.BYTE	0,  0,	3,  3,	3,  3,	3,  3,	3,  3,	3,  3,	3,  3

; =============== S U B	R O U T	I N E =======================================

sub_12DF2B:
	JSR	sub_12DF32
	JSR	sub_12DF6C
	RTS
; End of function sub_12DF2B

; =============== S U B	R O U T	I N E =======================================

sub_12DF32:
	SET tilemap_size_307, #$A
	SET ppu_unk_byte_309, #8
	SET inv_itemPrev_idx_31D, #$29 
	SET sprite_secondByte_31B, #$A
	JSR	sub_128326
	LDX	byte_372
	LDA	unk_4D2,X
	TAY
	SET inv_itemPrev_idx_31D, {byte_12E869,Y}
	SET tilemap_size_307, #$A
	SET ppu_unk_byte_309, #8
	SET sprite_secondByte_31B, #$C4 
	JSR	sub_128358
	JSR	sub_128326
	RTS
; End of function sub_12DF32

; =============== S U B	R O U T	I N E =======================================

sub_12DF6C:
	LDX	byte_372
	SET_TEXT_ARGS {unk_4D2,X}, #0
	IF_A_NOT_EQUAL_CMP_ADDR inv_itemPrev_idx_31D, #$29, loc_12DF8B
	SET_TEXT_ARGS #$75, #0

loc_12DF8B:
	IF_A_NOT_EQUAL_CMP_ADDR inv_itemPrev_idx_31D, #$15, loc_12DF9C
	SET_TEXT_ARGS #7, #2

loc_12DF9C:
	SET byte_364, #7
	JSR	exec_b2_c1_128300
	RTS
; End of function sub_12DF6C

; =============== S U B	R O U T	I N E =======================================

sub_12DFA5:
; FUNCTION CHUNK AT E019 SIZE 0000013D BYTES
; FUNCTION CHUNK AT E166 SIZE 0000021E BYTES

	MULT_BY_2_BYTE byte_42E
	ADD_TO_A byte_42C
	TAY
	SET tilemapTypeUnk_30B, {byte_533,Y}
	IF_A_GREATER_CMP_ADDR tilemapTypeUnk_30B, #6, loc_12DFC6
	IF_A_GREATER_CMP #$A, loc_12E019
	IF_A_GREATER_CMP #$13, loc_12E035
	JMP	loc_12E166
; ---------------------------------------------------------------------------

loc_12DFC6:
	IF_A_NOT_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #2, loc_12DFD7
	IF_A_NOT_EQUAL_CMP_ADDR byte_46D, #2, loc_12DFD7
	JMP	loc_12E166
; ---------------------------------------------------------------------------

loc_12DFD7:
	IF_A_NOT_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #0, loc_12DFE8
	IF_A_NOT_EQUAL_CMP_ADDR byte_46D, #0, loc_12DFE8
	JMP	loc_12E166
; ---------------------------------------------------------------------------

loc_12DFE8:
	LDA	tilemapTypeUnk_30B
	ADD_TO_A #1
	IF_A_EQUAL_CMP byte_543, sub_12DFFC
	STA	byte_543
	STY	byte_544
	JMP	sub_12E3DF
; End of function sub_12DFA5

; =============== S U B	R O U T	I N E =======================================

sub_12DFFC:
	SET byte_543, #0
	SET tilemap_size_307, #$10
	SET ppu_unk_byte_309, #$14
	SET inv_itemPrev_idx_31D, #$29 
	SET sprite_secondByte_31B, #$A
	JSR	sub_128326
	RTS
; End of function sub_12DFFC

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_12DFA5

loc_12E019:
	SET_TEXT_ARGS #$77, #0
	SET byte_364, #7
	JSR	exec_b2_c1_128300
	JSR	sub_12E3D4
	JSR	sub_12ED29
	JSR	sub_12D49F
	RTS
; ---------------------------------------------------------------------------

loc_12E035:
	IF_A_NOT_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #$12, loc_12E05D
	IF_A_NOT_EQUAL_CMP_ADDR byte_54A, #0, loc_12E04D
	IF_A_GREATER_CMP_ADDR byte_549, #$C8, loc_12E04D
	JMP	loc_12E05D
; ---------------------------------------------------------------------------

loc_12E04D:
	SET byte_549, #$FF
	SET2 byte_54A, byte_4B5, #0
	JMP	loc_12E13A
; ---------------------------------------------------------------------------

loc_12E05D:
	IF_A_NOT_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #$C, loc_12E076
	IF_A_EQUAL_CMP_ADDR byte_54A, #0, loc_12E076
	SET2 byte_54A, byte_4B5, #0
	JMP	loc_12E13A
; ---------------------------------------------------------------------------

loc_12E076:
	IF_A_NOT_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #$E, loc_12E09E
	IF_A_NOT_EQUAL_CMP_ADDR byte_54A, #0, loc_12E08E
	IF_A_GREATER_CMP_ADDR byte_549, #$C8, loc_12E08E
	JMP	loc_12E09E
; ---------------------------------------------------------------------------

loc_12E08E:
	SET2 byte_54A, byte_4B5, #0
	LDA	#$AA 
	JSR	sub_12E156
	JMP	loc_12E13A
; ---------------------------------------------------------------------------

loc_12E09E:
	IF_A_NOT_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #$11, loc_12E0C6
	IF_A_NOT_EQUAL_CMP_ADDR byte_54A, #0, loc_12E0B6
	IF_A_GREATER_CMP_ADDR byte_549, #$C8, loc_12E0B6
	JMP	loc_12E0C6
; ---------------------------------------------------------------------------

loc_12E0B6:
	SET2 byte_54A, byte_4B5, #0
	LDA	#$55 
	JSR	sub_12E156
	JMP	loc_12E13A
; ---------------------------------------------------------------------------

loc_12E0C6:
	IF_A_NOT_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #$B, loc_12E0DC
	IF_A_LOWER_CMP_ADDR byte_549, #$C8, loc_12E0DC
	LDA	#$55 
	JSR	sub_12E156
	JMP	loc_12E13A
; ---------------------------------------------------------------------------

loc_12E0DC:
	IF_A_NOT_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #$D, loc_12E0F2
	IF_A_LOWER_CMP_ADDR byte_549, #$C8, loc_12E0F2
	LDA	#$AA 
	JSR	sub_12E156
	JMP	loc_12E13A
; ---------------------------------------------------------------------------

loc_12E0F2:
	IF_A_NOT_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #$F, loc_12E108
	IF_A_LOWER_CMP_ADDR byte_549, #$C8, loc_12E108
	LDA	#$AA 
	JSR	sub_12E156
	JMP	loc_12E13A
; ---------------------------------------------------------------------------

loc_12E108:
	IF_A_NOT_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #$10, loc_12E11E
	IF_A_LOWER_CMP_ADDR byte_549, #$C8, loc_12E11E
	LDA	#$FF
	JSR	sub_12E156
	JMP	loc_12E13A
; ---------------------------------------------------------------------------

loc_12E11E:
	SET_TEXT_ARGS #$78, #0
	SET byte_364, #7
	JSR	exec_b2_c1_128300
	JSR	sub_12E3D4
	JSR	sub_12ED29
	JSR	sub_12D49F
	RTS
; ---------------------------------------------------------------------------

loc_12E13A:
	LDX	byte_47B
	LDY	byte_532
	JSR	sub_12D9F7
	SET tilemapTypeUnk_30B, byte_47B
	JSR	sub_12D8B3
	LDX	byte_47B
	LDY	byte_532
	JSR	sub_12DA33
	RTS
; END OF FUNCTION CHUNK	FOR sub_12DFA5

; =============== S U B	R O U T	I N E =======================================

sub_12E156:
	ADD_TO_A byte_549
	BCC	loc_12E162
	SET byte_549, #$FF
	RTS
; ---------------------------------------------------------------------------

loc_12E162:
	STA	byte_549
	RTS
; End of function sub_12E156

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_12DFA5

loc_12E166:
	IF_A_NOT_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #$2F, loc_12E170
	JMP	loc_12E315
; ---------------------------------------------------------------------------

loc_12E170:
	IF_A_NOT_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #$12, loc_12E17A
	JMP	loc_12E035
; ---------------------------------------------------------------------------

loc_12E17A:
	IF_A_NOT_EQUAL_CMP_ADDR byte_46D, #$1E, loc_12E1A0
	IF_A_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #$1E, loc_12E202
	IF_A_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #$1F, loc_12E202
	IF_A_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #$20, loc_12E202
	IF_A_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #$21, loc_12E202
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E1A0:
	IF_A_NOT_EQUAL_CMP #$22, loc_12E1B5
	IF_A_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #$22, loc_12E202
	IF_A_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #$23, loc_12E202
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E1B5:
	IF_A_NOT_EQUAL_CMP #$2D, loc_12E1C3
	IF_A_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #$2D, loc_12E202
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E1C3:
	IF_A_NOT_EQUAL_CMP #$1C, loc_12E1D8
	IF_A_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #$1C, loc_12E202
	IF_A_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #$1D, loc_12E202
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E1D8:
	IF_A_NOT_EQUAL_CMP #$1B, loc_12E1E6
	IF_A_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #$1B, loc_12E202
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E1E6:
	IF_A_NOT_EQUAL_CMP #$29, loc_12E1F4
	IF_A_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #$29, loc_12E202
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E1F4:
	IF_A_NOT_EQUAL_CMP #$13, loc_12E205
	IF_A_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #$13, loc_12E202
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E202:
	JMP	loc_12E315
; ---------------------------------------------------------------------------

loc_12E205:
	IF_A_NOT_EQUAL_CMP #$18, loc_12E213
	IF_A_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #$18, loc_12E28A
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E213:
	IF_A_NOT_EQUAL_CMP #$17, loc_12E221
	IF_A_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #$17, loc_12E28A
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E221:
	IF_A_NOT_EQUAL_CMP #$16, loc_12E22F
	IF_A_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #$16, loc_12E28A
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E22F:
	IF_A_NOT_EQUAL_CMP #$24, loc_12E23D
	IF_A_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #$24, loc_12E28A
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E23D:
	IF_A_NOT_EQUAL_CMP #$2C, loc_12E24B
	IF_A_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #$2C, loc_12E28A
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E24B:
	IF_A_NOT_EQUAL_CMP #2, loc_12E260
	IF_A_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #2, loc_12E28A
	IF_A_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #$3B, loc_12E28A
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E260:
	IF_A_NOT_EQUAL_CMP #$2E, loc_12E26E
	IF_A_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #$2E, loc_12E28A
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E26E:
	IF_A_NOT_EQUAL_CMP #$2A, loc_12E27C
	IF_A_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #$2A, loc_12E28A
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E27C:
	IF_A_NOT_EQUAL_CMP #0, loc_12E28D
	IF_A_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #0, loc_12E28A
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E28A:
	JMP	loc_12E315
; ---------------------------------------------------------------------------

loc_12E28D:
	IF_A_NOT_EQUAL_CMP #$39, loc_12E29B
	IF_A_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #$39, loc_12E315
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E29B:
	IF_A_NOT_EQUAL_CMP #$27, loc_12E2A9
	IF_A_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #$27, loc_12E315
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E2A9:
	IF_A_NOT_EQUAL_CMP #$28, loc_12E2B7
	IF_A_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #$28, loc_12E315
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E2B7:
	IF_A_NOT_EQUAL_CMP #$30, loc_12E2C5
	IF_A_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #$30, loc_12E315
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E2C5:
	IF_A_NOT_EQUAL_CMP #$14, loc_12E2D3
	IF_A_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #$14, loc_12E315
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E2D3:
	IF_A_NOT_EQUAL_CMP #$15, loc_12E2E1
	IF_A_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #$15, loc_12E315
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E2E1:
	IF_A_NOT_EQUAL_CMP #$1A, loc_12E312
	IF_A_NOT_EQUAL_CMP_ADDR byte_598, #0, loc_12E308
	SET_TEXT_ARGS #$B7, #0
	SET byte_364, #7
	JSR	exec_b2_c1_128300
	JSR	sub_12E3D4
	JSR	sub_12ED29
	JSR	sub_12D49F
	RTS
; ---------------------------------------------------------------------------

loc_12E308:
	IF_A_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #$1A, loc_12E315
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E312:
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E315:
	SET byte_46E, tilemapTypeUnk_30B
	IF_A_EQUAL_CMP #0, loc_12E362
	IF_A_EQUAL_CMP #$13, loc_12E362
	IF_A_EQUAL_CMP #$14, loc_12E362
	IF_A_EQUAL_CMP #$15, loc_12E362
	IF_A_EQUAL_CMP #$16, loc_12E362
	IF_A_EQUAL_CMP #$17, loc_12E362
	IF_A_EQUAL_CMP #$18, loc_12E362
	IF_A_EQUAL_CMP #$19, loc_12E362
	IF_A_EQUAL_CMP #$29, loc_12E362
	IF_A_EQUAL_CMP #$2A, loc_12E362
	IF_A_EQUAL_CMP #$2B, loc_12E362
	IF_A_NOT_EQUAL_CMP #$1A, loc_12E35C
	sub_byte_sec {unk_53B,Y}, #1
	IF_A_EQUAL {unk_53B,Y}, loc_12E35C
	JMP	loc_12E362
; ---------------------------------------------------------------------------

loc_12E35C:
	STY	tilemapTypeUnk_30B
	JSR	sub_12D8B3

loc_12E362:
	SET sprite_length_30F, #$FF
	RTS
; ---------------------------------------------------------------------------

loc_12E368:
	SET_TEXT_ARGS #$76, #0
	SET byte_364, #7
	JSR	exec_b2_c1_128300
	JSR	sub_12E3D4
	JSR	sub_12ED29
	JSR	sub_12D49F
	RTS
; END OF FUNCTION CHUNK	FOR sub_12DFA5

; =============== S U B	R O U T	I N E =======================================

sub_12E384:
	MULT_BY_2_BYTE byte_42E
	ADD_TO_A byte_42C
	TAY
	ADD_BYTE_TO_BYTE_CLC_IMM text_idx_35C, {byte_533,Y}, #$3A 
	SET char_type_id_35D, #0
	SET byte_364, #7
	JSR	exec_b2_c1_128300
	JSR	sub_12E3D4
	JSR	sub_12ED29
	MULT_BY_2_BYTE byte_42E
	ADD_TO_A byte_42C
	TAY
	IF_A_NOT_EQUAL_CMP_ADDR {byte_533,Y}, #$25, loc_12E3C1
	SET {byte_533,Y}, #$27 
	JMP	loc_12E3CA
; ---------------------------------------------------------------------------

loc_12E3C1:
	IF_A_NOT_EQUAL_CMP #$26, locret_12E3D3
	SET {byte_533,Y}, #$28 

loc_12E3CA:
	TYA
	TAX
	INY
	JSR	sub_12D9F7
	JSR	sub_12DA33

locret_12E3D3:
	RTS
; End of function sub_12E384

; =============== S U B	R O U T	I N E =======================================

sub_12E3D4:
	JSR	wait_for_vblank_FC95
	IF_A_NOT_EQUAL_CMP_ADDR input_pressed_34A, #$40, sub_12E3D4
	RTS
; End of function sub_12E3D4

; =============== S U B	R O U T	I N E =======================================

sub_12E3DF:
	IF_A_EQUAL_CMP_ADDR byte_543, #0, locret_12E427
	SET tilemap_size_307, #$10
	SET ppu_unk_byte_309, #$14
	sub_addr_sec byte_543, #1
	STA	tilemapTypeUnk_30B
	LDY	tilemapTypeUnk_30B
	SET inv_itemPrev_idx_31D, {byte_12E869,Y}
	LDY	#0

loc_12E404:
	LDA	byte_533,Y
	INY
	IF_A_NOT_EQUAL_CMP tilemapTypeUnk_30B, loc_12E404
	DEY
	SET sprite_secondByte_31B, #$3C 

loc_12E413:
	IF_Y_EQUAL_CMP #0, loc_12E424
	ADD_BYTE_TO_BYTE_CLC sprite_secondByte_31B, #$11
	DEY
	JMP	loc_12E413
; ---------------------------------------------------------------------------

loc_12E424:
	JSR	sub_128326

locret_12E427:
	RTS
; End of function sub_12E3DF

; =============== S U B	R O U T	I N E =======================================

sub_12E428:
	JSR	sub_12E4CD
	JSR	wait_for_vblank_FC95
	IF_A_NOT_EQUAL_CMP_ADDR input_pressed_34A, #8, loc_12E450
	IF_A_NOT_EQUAL_CMP_ADDR byte_42E, #0, loc_12E441
	SET byte_42E, #4

loc_12E441:
	DEC	byte_42E
	JSR	sub_12ED32
	JSR	sub_12E4CD
	JSR	sub_12D329
	JMP	sub_12E428
; ---------------------------------------------------------------------------

loc_12E450:
	IF_A_NOT_EQUAL_CMP #4, loc_12E46F
	IF_A_GREATER_CMP_ADDR byte_42E, #3, loc_12E460
	SET byte_42E, #$FF

loc_12E460:
	INC	byte_42E
	JSR	sub_12ED32
	JSR	sub_12E4CD
	JSR	sub_12D329
	JMP	sub_12E428
; ---------------------------------------------------------------------------

loc_12E46F:
	IF_A_NOT_EQUAL_CMP #2, loc_12E487
	XOR_BYTE  byte_42C, #1
	JSR	sub_12ED32
	JSR	sub_12E4CD
	JSR	sub_12D329
	JMP	sub_12E428
; ---------------------------------------------------------------------------

loc_12E487:
	IF_A_NOT_EQUAL_CMP #1, loc_12E49F
	XOR_BYTE  byte_42C, #1
	JSR	sub_12ED32
	JSR	sub_12E4CD
	JSR	sub_12D329
	JMP	sub_12E428
; ---------------------------------------------------------------------------

loc_12E49F:
	IF_A_NOT_EQUAL_CMP #$80, loc_12E4B0
	JSR	sub_12E8A5
	IF_A_EQUAL_CMP_ADDR sprite_length_30F, #$FF, loc_12E4B7
	JMP	sub_12E428
; ---------------------------------------------------------------------------

loc_12E4B0:
	IF_A_EQUAL_CMP #$40, loc_12E4B7
	JMP	sub_12E428
; ---------------------------------------------------------------------------

loc_12E4B7:
	JSR	sub_12ED29
	SET tilemapWidth_308, #$10
	SET byte_31A, #$70 
	JSR	sub_12D26B
	SET sprite_length_30F, #0
	RTS
; End of function sub_12E428

; =============== S U B	R O U T	I N E =======================================

sub_12E4CD:
	SET byte_31A, #$80 
	SET tilemapWidth_308, #$C
	JSR	sub_12D26B
	IF_A_GREATER_CMP_ADDR byte_546, #$A, loc_12E4EE
	SET byte_546, #0
	XOR_BYTE  byte_547, #1

loc_12E4EE:
	MULT_BY_4_BYTE byte_42E
	ADD_TO_A byte_42C
	ADD_TO_A byte_42C
	TAY
	SET_INY tilemap_size_307, {byte_12E851,Y}
	SET ppu_unk_byte_309, {byte_12E851,Y}

	SET byte_31A, #$70 
	SET sprite_secondByte_31B, #0
	SET byte_317, #0
	SET objMapIdx_316, #$2F 
	a_to_stack tilemap_size_307
	a_to_stack ppu_unk_byte_309
	ADD_BYTE_TO_BYTE_CLC tilemap_size_307, #$C
	ADD_BYTE_TO_BYTE_CLC ppu_unk_byte_309, byte_547

	JSR	sub_12E829
	from_stack_to_a ppu_unk_byte_309
	from_stack_to_a tilemap_size_307
	ADD_BYTE_TO_BYTE_CLC byte_31A, #4

	SET objMapIdx_316, #$2E 
	a_to_stack tilemap_size_307
	a_to_stack ppu_unk_byte_309
	ADD_BYTE_TO_BYTE_CLC tilemap_size_307, #$C

	LDA	ppu_unk_byte_309
	ADD_TO_A #$18
	sub_a_sec byte_547
	STA	ppu_unk_byte_309
	JSR	sub_12E829
	from_stack_to_a ppu_unk_byte_309
	from_stack_to_a tilemap_size_307
	ADD_BYTE_TO_BYTE_CLC byte_31A, #4

	SET objMapIdx_316, #$30 
	a_to_stack tilemap_size_307
	a_to_stack ppu_unk_byte_309
	ADD_BYTE_TO_BYTE_CLC ppu_unk_byte_309, #$C
	ADD_BYTE_TO_BYTE_CLC tilemap_size_307, byte_547

	JSR	sub_12E829
	from_stack_to_a ppu_unk_byte_309
	from_stack_to_a tilemap_size_307
	ADD_BYTE_TO_BYTE_CLC byte_31A, #4

	SET objMapIdx_316, #$31 
	a_to_stack tilemap_size_307
	a_to_stack ppu_unk_byte_309
	LDA	tilemap_size_307
	ADD_TO_A #$18
	sub_a_sec byte_547
	STA	tilemap_size_307
	ADD_BYTE_TO_BYTE_CLC ppu_unk_byte_309, #$C
	JSR	sub_12E829
	from_stack_to_a ppu_unk_byte_309
	from_stack_to_a tilemap_size_307
	RTS
; End of function sub_12E4CD

; =============== S U B	R O U T	I N E =======================================

sub_12E5E6:
	a_to_stack byte_372
	SET byte_372, #0
	IF_A_NOT_EQUAL_CMP_ADDR byte_4C1, #0, loc_12E603
	SET_TEXT_ARGS #$75, #0
	JMP	loc_12E616
; ---------------------------------------------------------------------------

loc_12E603:
	LDX	byte_372
	ADD_BYTE_TO_BYTE_CLC_IMM text_idx_35C, {unk_4B6,X}, #$14
	LDA	#2
	ADC	#0
	STA	char_type_id_35D

loc_12E616:
	JSR	sub_12E798
	JSR	sub_12E7D3
	JSR	sub_12E7F0
	IF_A_NOT_EQUAL byte_4C1, loc_12E62A
	JSR	wait_for_b_pressed_FCC5
	JMP	loc_12E67A
; ---------------------------------------------------------------------------

loc_12E62A:
	IF_A_NOT_EQUAL_CMP_ADDR input_pressed_34A, #4, loc_12E645
	LDA	byte_372
	ADD_TO_A #1
	IF_A_EQUAL_CMP byte_4C1, loc_12E62A
	INC	byte_372
	JSR	sub_12ED32
	JMP	loc_12E603
; ---------------------------------------------------------------------------

loc_12E645:
	IF_A_NOT_EQUAL_CMP #8, loc_12E659
	IF_A_EQUAL_CMP_ADDR byte_372, #0, loc_12E62A
	DEC	byte_372
	JSR	sub_12ED32
	JMP	loc_12E603
; ---------------------------------------------------------------------------

loc_12E659:
	IF_A_EQUAL_CMP #$80, loc_12E664
	IF_A_EQUAL_CMP #$40, loc_12E67A
	JMP	loc_12E62A
; ---------------------------------------------------------------------------

loc_12E664:
	JSR	sub_12ED20
	LDX	byte_372
	LDA	unk_4B6,X
	TAY
	JSR	sub_12EF77
	JSR	sub_12ED29
	JSR	sub_12D287
	JSR	sub_12D319

loc_12E67A:
	JSR	sub_12ED29
	SET byte_310, #$A
	SET byte_35E, #8
	SET ppu_unk_byte_309, #9
	SET tilemap_size_307, #4
	JSR	sub_12D4B3
	JSR	sub_12E80D
	JSR	sub_12E81B
	from_stack_to_a byte_372
	RTS
; End of function sub_12E5E6

; =============== S U B	R O U T	I N E =======================================

sub_12E69F:
	a_to_stack byte_372
	SET byte_372, #0
	IF_A_NOT_EQUAL_CMP_ADDR byte_4D0, #0, loc_12E6BC
	SET_TEXT_ARGS #$75, #0
	JMP	loc_12E6E0
; ---------------------------------------------------------------------------

loc_12E6BC:
	LDX	byte_372
	ADD_BYTE_TO_BYTE_CLC_IMM text_idx_35C, {unk_4C2,X}, #$99 
	LDA	#0
	ADC	#0
	STA	char_type_id_35D
	IF_A_NOT_EQUAL_CMP_ADDR {unk_4C2,X}, #$E, loc_12E6E0
	SET_TEXT_ARGS #$3A, #2

loc_12E6E0:
	JSR	sub_12E798
	JSR	sub_12E7D3
	JSR	sub_12E7F0
	IF_A_NOT_EQUAL byte_4D0, loc_12E6F7
	JSR	wait_for_b_pressed_FCC5
	JSR	sub_12ED29
	JMP	loc_12E776
; ---------------------------------------------------------------------------

loc_12E6F7:
	IF_A_NOT_EQUAL_CMP_ADDR input_pressed_34A, #4, loc_12E712
	LDA	byte_372
	ADD_TO_A #1
	IF_A_EQUAL_CMP byte_4D0, loc_12E6F7
	INC	byte_372
	JSR	sub_12ED32
	JMP	loc_12E6BC
; ---------------------------------------------------------------------------

loc_12E712:
	IF_A_NOT_EQUAL_CMP #8, loc_12E726
	IF_A_EQUAL_CMP_ADDR byte_372, #0, loc_12E6F7
	DEC	byte_372
	JSR	sub_12ED32
	JMP	loc_12E6BC
; ---------------------------------------------------------------------------

loc_12E726:
	IF_A_EQUAL_CMP #$80, loc_12E731
	IF_A_EQUAL_CMP #$40, loc_12E776
	JMP	loc_12E6F7
; ---------------------------------------------------------------------------

loc_12E731:
	JSR	sub_12ED20
	JSR	sub_12D21B
	LDX	byte_372
	ADD_BYTE_TO_BYTE_CLC_IMM text_idx_35C, {unk_4C2,X}, #$A7 
	LDA	#0
	ADC	#0
	STA	char_type_id_35D
	IF_A_NOT_EQUAL_CMP_ADDR {unk_4C2,X}, #$E, loc_12E75B
	SET_TEXT_ARGS #$3B, #2

loc_12E75B:
	SET byte_310, #0
	JSR	exec_b2_c3_128313

loc_12E763:
	JSR	wait_for_frame_rendered_FCA0
	IF_A_NOT_EQUAL_CMP_ADDR input_pressed_34A, #$40, loc_12E763
	JSR	sub_12ED29
	JSR	sub_12D287
	JSR	sub_12D319

loc_12E776:
	SET byte_310, #$A
	SET byte_35E, #8
	SET ppu_unk_byte_309, #9
	SET tilemap_size_307, #4
	JSR	sub_12D4B3
	JSR	sub_12E80D
	JSR	sub_12E81B
	from_stack_to_a byte_372
	RTS
; End of function sub_12E69F

; =============== S U B	R O U T	I N E =======================================

sub_12E798:
	SET tilemap_size_307, #4
	SET ppu_unk_byte_309, #9
	SET byte_35E, #8
	SET byte_35F, #1
	SET byte_362, #0
	SET byte_363, #0
	SET byte_364, #7
	SET sprite_secondByte_31B, #$C4 
	SET byte_310, #$A
	SET byte_360, #1
	SET byte_361, #0
	JSR	exec_b2_c4_1283F2
	RTS
; End of function sub_12E798

; =============== S U B	R O U T	I N E =======================================

sub_12E7D3:
	SET objMapIdx_316, #$2E 
	LDA	#$54 

loc_12E7DA:
	STA	tilemap_size_307
	SET ppu_unk_byte_309, #$38 
	SET byte_31A, #$A0 
	SET sprite_secondByte_31B, #0
	JSR	sub_12E829
	RTS
; End of function sub_12E7D3

; =============== S U B	R O U T	I N E =======================================

sub_12E7F0:
	SET objMapIdx_316, #$2F 
	SET tilemap_size_307, #$54 
	SET ppu_unk_byte_309, #$60 
	SET byte_31A, #$A4 
	SET sprite_secondByte_31B, #0
	JSR	sub_12E829
	RTS
; End of function sub_12E7F0

; =============== S U B	R O U T	I N E =======================================

sub_12E80D:
	SET byte_31A, #$A0 
	SET tilemapWidth_308, #4
	JSR	sub_12D26B
	RTS
; End of function sub_12E80D

; =============== S U B	R O U T	I N E =======================================

sub_12E81B:
	SET byte_31A, #$A4 
	SET tilemapWidth_308, #4
	JSR	sub_12D26B
	RTS
; End of function sub_12E81B

; =============== S U B	R O U T	I N E =======================================

sub_12E829:
	SET byte_36A, tilemap_size_307
	SET byte_36B, #0
	SET byte_366, ppu_unk_byte_309
	SET byte_367, #0
	SET objectIdx_318, #5
	LDX	objMapIdx_316
	SET byte_317, {byte_12DEED,X}
	JSR	exec_b1_c1_128394
	RTS
; End of function sub_12E829

; ---------------------------------------------------------------------------
byte_12E851:
	.BYTE $B0,$40,$D0,$40,$B0,$60,$D0,$60,$B0,$80,$D0,$80,$B0,$A0,$D0,$A0
	.BYTE $B0,$10,$D0,$10,$B0,$20,$D0,$20
byte_12E869:
	.BYTE $1D,$1F,$19,$24,$1E,$12,$23, $E, $B, $A,$1A,$1A,$1A,$1B,$1B,$1B
	.BYTE $1B,$1B,$28,  7,	3,$17, $F,$18,	5,$27,$13,$28,$26,$26,$1C,  0
	.BYTE $22,$21,	8,  8,	4, $C, $C,  2,	9,  6,	6,  1,$20,$16,$14,$11
	.BYTE $25, $D,$28,$28,$28,$28,$28,$28,$28,$28,$29,$15

; =============== S U B	R O U T	I N E =======================================

sub_12E8A5:
	MULT_BY_2_BYTE byte_42E
	ADD_TO_A byte_42C
	IF_A_GREATER_CMP byte_532, loc_12E8B5
	JMP	loc_12ED0E
; ---------------------------------------------------------------------------

loc_12E8B5:
	STA	byte_47C

loc_12E8B8:
	LDX	byte_47B
	LDY	byte_47C
	IF_A_NOT_EQUAL_CMP_ADDR {byte_533,X}, #1, loc_12E926

loc_12E8C5:
	IF_A_NOT_EQUAL_CMP_ADDR {byte_533,Y}, #6, loc_12E923
	LDA	unk_53B,X
	ADD_TO_A {unk_53B,Y}
	IF_A_GREATER_CMP #$F, loc_12E8FB
	BEQ	loc_12E8FB
	IF_A_EQUAL_CMP_ADDR {unk_53B,X}, #$F, loc_12E923
	sub_addr_sec #$F, {unk_53B,X}
	STA	tilemapTypeUnk_30B
	sub_byte_sec {unk_53B,Y}, tilemapTypeUnk_30B
	SET {unk_53B,X}, #$F
	JMP	loc_12ED17
; ---------------------------------------------------------------------------

loc_12E8FB:
	ADD_BYTE_TO_BYTE_CLC {unk_53B,X}, {unk_53B,Y}
	LDX	byte_47C
	LDY	byte_532
	JSR	sub_12D9F7
	SET tilemapTypeUnk_30B, byte_47C
	JSR	sub_12D8B3
	LDX	byte_47C
	LDY	byte_532
	JSR	sub_12DA33
	JMP	loc_12ED17
; ---------------------------------------------------------------------------

loc_12E923:
	JMP	loc_12ED0E
; ---------------------------------------------------------------------------

loc_12E926:
	IF_A_NOT_EQUAL_CMP #2, loc_12E98B

loc_12E92A:
	IF_A_NOT_EQUAL_CMP_ADDR {byte_533,Y}, #7, loc_12E988
	LDA	unk_53B,X
	ADD_TO_A {unk_53B,Y}
	IF_A_GREATER_CMP #6, loc_12E960
	BEQ	loc_12E960
	IF_A_EQUAL_CMP_ADDR {unk_53B,X}, #6, loc_12E988
	sub_addr_sec #6, {unk_53B,X}
	STA	tilemapTypeUnk_30B
	sub_byte_sec {unk_53B,Y}, tilemapTypeUnk_30B
	SET {unk_53B,X}, #6
	JMP	loc_12ED17
; ---------------------------------------------------------------------------

loc_12E960:
	ADD_BYTE_TO_BYTE_CLC {unk_53B,X}, {unk_53B,Y}
	LDX	byte_47C
	LDY	byte_532
	JSR	sub_12D9F7
	SET tilemapTypeUnk_30B, byte_47C
	JSR	sub_12D8B3
	LDX	byte_47C
	LDY	byte_532
	JSR	sub_12DA33
	JMP	loc_12ED17
; ---------------------------------------------------------------------------

loc_12E988:
	JMP	loc_12ED0E
; ---------------------------------------------------------------------------

loc_12E98B:
	IF_A_NOT_EQUAL_CMP #3, loc_12E9F0

loc_12E98F:
	IF_A_NOT_EQUAL_CMP_ADDR {byte_533,Y}, #8, loc_12E9ED
	LDA	unk_53B,X
	ADD_TO_A {unk_53B,Y}
	IF_A_GREATER_CMP #6, loc_12E9C5
	BEQ	loc_12E9C5
	IF_A_EQUAL_CMP_ADDR {unk_53B,X}, #6, loc_12E9ED
	sub_addr_sec #6, {unk_53B,X}
	STA	tilemapTypeUnk_30B
	sub_byte_sec {unk_53B,Y}, tilemapTypeUnk_30B
	SET {unk_53B,X}, #6
	JMP	loc_12ED17
; ---------------------------------------------------------------------------

loc_12E9C5:
	ADD_BYTE_TO_BYTE_CLC {unk_53B,X}, {unk_53B,Y}
	LDX	byte_47C
	LDY	byte_532
	JSR	sub_12D9F7
	SET tilemapTypeUnk_30B, byte_47C
	JSR	sub_12D8B3
	LDX	byte_47C
	LDY	byte_532
	JSR	sub_12DA33
	JMP	loc_12ED17
; ---------------------------------------------------------------------------

loc_12E9ED:
	JMP	loc_12ED0E
; ---------------------------------------------------------------------------

loc_12E9F0:
	IF_A_NOT_EQUAL_CMP #4, loc_12EA55

loc_12E9F4:
	IF_A_NOT_EQUAL_CMP_ADDR {byte_533,Y}, #9, loc_12EA52
	LDA	unk_53B,X
	ADD_TO_A {unk_53B,Y}
	IF_A_GREATER_CMP #6, loc_12EA2A
	BEQ	loc_12EA2A
	IF_A_EQUAL_CMP_ADDR {unk_53B,X}, #6, loc_12EA52
	sub_addr_sec #6, {unk_53B,X}
	STA	tilemapTypeUnk_30B
	sub_byte_sec {unk_53B,Y}, tilemapTypeUnk_30B
	SET {unk_53B,X}, #6
	JMP	loc_12ED17
; ---------------------------------------------------------------------------

loc_12EA2A:
	ADD_BYTE_TO_BYTE_CLC {unk_53B,X}, {unk_53B,Y}
	LDX	byte_47C
	LDY	byte_532
	JSR	sub_12D9F7
	SET tilemapTypeUnk_30B, byte_47C
	JSR	sub_12D8B3
	LDX	byte_47C
	LDY	byte_532
	JSR	sub_12DA33
	JMP	loc_12ED17
; ---------------------------------------------------------------------------

loc_12EA52:
	JMP	loc_12ED0E
; ---------------------------------------------------------------------------

loc_12EA55:
	IF_A_NOT_EQUAL_CMP #6, loc_12EA7A
	IF_A_NOT_EQUAL_CMP_ADDR {byte_533,Y}, #1, loc_12EA77
	a_to_stack byte_47C
	SET byte_47C, byte_47B
	from_stack_to_a byte_47B
	LDX	byte_47B
	LDY	byte_47C
	JMP	loc_12E8C5
; ---------------------------------------------------------------------------

loc_12EA77:
	JMP	loc_12ED0E
; ---------------------------------------------------------------------------

loc_12EA7A:
	IF_A_NOT_EQUAL_CMP #7, loc_12EA9F
	IF_A_NOT_EQUAL_CMP_ADDR {byte_533,Y}, #2, loc_12EA9C
	a_to_stack byte_47C
	SET byte_47C, byte_47B
	from_stack_to_a byte_47B
	LDX	byte_47B
	LDY	byte_47C
	JMP	loc_12E92A
; ---------------------------------------------------------------------------

loc_12EA9C:
	JMP	loc_12ED0E
; ---------------------------------------------------------------------------

loc_12EA9F:
	IF_A_NOT_EQUAL_CMP #8, loc_12EAC4
	IF_A_NOT_EQUAL_CMP_ADDR {byte_533,Y}, #3, loc_12EAC1
	a_to_stack byte_47C
	SET byte_47C, byte_47B
	from_stack_to_a byte_47B
	LDX	byte_47B
	LDY	byte_47C
	JMP	loc_12E98F
; ---------------------------------------------------------------------------

loc_12EAC1:
	JMP	loc_12ED0E
; ---------------------------------------------------------------------------

loc_12EAC4:
	IF_A_NOT_EQUAL_CMP #9, loc_12EAE9
	IF_A_NOT_EQUAL_CMP_ADDR {byte_533,Y}, #4, loc_12EAE6
	a_to_stack byte_47C
	SET byte_47C, byte_47B
	from_stack_to_a byte_47B
	LDX	byte_47B
	LDY	byte_47C
	JMP	loc_12E9F4
; ---------------------------------------------------------------------------

loc_12EAE6:
	JMP	loc_12ED0E
; ---------------------------------------------------------------------------

loc_12EAE9:
	IF_A_NOT_EQUAL_CMP #$A, loc_12EB3C
	IF_A_NOT_EQUAL_CMP_ADDR {byte_533,Y}, #$B, loc_12EAFC
	SET {byte_533,X}, #$D
	JMP	loc_12EB05
; ---------------------------------------------------------------------------

loc_12EAFC:
	IF_A_NOT_EQUAL_CMP #$11, loc_12EB39
	SET {byte_533,X}, #$E

loc_12EB05:
	LDX	byte_47B
	IF_A_GREATER_CMP_ADDR byte_47B, byte_47C, loc_12EB13
	LDX	byte_47C

loc_12EB13:
	LDY	byte_532
	JSR	sub_12D9F7
	SET tilemapTypeUnk_30B, byte_47C
	JSR	sub_12D8B3
	LDX	byte_47B
	IF_A_GREATER_CMP_ADDR byte_47B, byte_47C, loc_12EB30
	LDX	byte_47C

loc_12EB30:
	LDY	byte_532
	JSR	sub_12DA33
	JMP	loc_12ED17
; ---------------------------------------------------------------------------

loc_12EB39:
	JMP	loc_12ED0E
; ---------------------------------------------------------------------------

loc_12EB3C:
	IF_A_NOT_EQUAL_CMP #$B, loc_12EBAF
	IF_A_NOT_EQUAL_CMP_ADDR {byte_533,Y}, #$A, loc_12EB4F
	SET {byte_533,X}, #$D
	JMP	loc_12EB78
; ---------------------------------------------------------------------------

loc_12EB4F:
	IF_A_NOT_EQUAL_CMP #$B, loc_12EB63
	IF_A_EQUAL_CMP_ADDR byte_47B, byte_47C, loc_12EB63
	SET {byte_533,X}, #$F
	JMP	loc_12EB78
; ---------------------------------------------------------------------------

loc_12EB63:
	IF_A_NOT_EQUAL_CMP #$C, loc_12EB6F
	SET {byte_533,X}, #$11
	JMP	loc_12EB78
; ---------------------------------------------------------------------------

loc_12EB6F:
	IF_A_NOT_EQUAL_CMP #$F, loc_12EBAC
	SET {byte_533,X}, #$10

loc_12EB78:
	LDX	byte_47B
	IF_A_GREATER_CMP_ADDR byte_47B, byte_47C, loc_12EB86
	LDX	byte_47C

loc_12EB86:
	LDY	byte_532
	JSR	sub_12D9F7
	SET tilemapTypeUnk_30B, byte_47C
	JSR	sub_12D8B3
	LDX	byte_47B
	IF_A_GREATER_CMP_ADDR byte_47B, byte_47C, loc_12EBA3
	LDX	byte_47C

loc_12EBA3:
	LDY	byte_532
	JSR	sub_12DA33
	JMP	loc_12ED17
; ---------------------------------------------------------------------------

loc_12EBAC:
	JMP	loc_12ED0E
; ---------------------------------------------------------------------------

loc_12EBAF:
	IF_A_EQUAL_CMP #$C, loc_12EBB6
	JMP	loc_12EC39
; ---------------------------------------------------------------------------

loc_12EBB6:
	IF_A_NOT_EQUAL_CMP_ADDR {byte_533,Y}, #$B, loc_12EBF6
	SET {byte_533,X}, #$11
	LDX	byte_47B
	IF_A_GREATER_CMP_ADDR byte_47B, byte_47C, loc_12EBD0
	LDX	byte_47C

loc_12EBD0:
	LDY	byte_532
	JSR	sub_12D9F7
	SET tilemapTypeUnk_30B, byte_47C
	JSR	sub_12D8B3
	LDX	byte_47B
	IF_A_GREATER_CMP_ADDR byte_47B, byte_47C, loc_12EBED
	LDX	byte_47C

loc_12EBED:
	LDY	byte_532
	JSR	sub_12DA33
	JMP	loc_12ED17
; ---------------------------------------------------------------------------

loc_12EBF6:
	IF_A_NOT_EQUAL_CMP_ADDR {byte_533,Y}, #$D, loc_12EC36
	SET {byte_533,X}, #$E
	LDX	byte_47B
	IF_A_GREATER_CMP_ADDR byte_47B, byte_47C, loc_12EC10
	LDX	byte_47C

loc_12EC10:
	LDY	byte_532
	JSR	sub_12D9F7
	SET tilemapTypeUnk_30B, byte_47C
	JSR	sub_12D8B3
	LDX	byte_47B
	IF_A_GREATER_CMP_ADDR byte_47B, byte_47C, loc_12EC2D
	LDX	byte_47C

loc_12EC2D:
	LDY	byte_532
	JSR	sub_12DA33
	JMP	loc_12ED17
; ---------------------------------------------------------------------------

loc_12EC36:
	JMP	loc_12ED0E
; ---------------------------------------------------------------------------

loc_12EC39:
	IF_A_NOT_EQUAL_CMP #$D, loc_12EC80
	IF_A_NOT_EQUAL_CMP_ADDR {byte_533,Y}, #$C, loc_12EC7D
	SET {byte_533,X}, #$E
	LDX	byte_47B
	IF_A_GREATER_CMP_ADDR byte_47B, byte_47C, loc_12EC57
	LDX	byte_47C

loc_12EC57:
	LDY	byte_532
	JSR	sub_12D9F7
	SET tilemapTypeUnk_30B, byte_47C
	JSR	sub_12D8B3
	LDX	byte_47B
	IF_A_GREATER_CMP_ADDR byte_47B, byte_47C, loc_12EC74
	LDX	byte_47C

loc_12EC74:
	LDY	byte_532
	JSR	sub_12DA33
	JMP	loc_12ED17
; ---------------------------------------------------------------------------

loc_12EC7D:
	JMP	loc_12ED0E
; ---------------------------------------------------------------------------

loc_12EC80:
	IF_A_NOT_EQUAL_CMP #$F, loc_12ECC7
	IF_A_NOT_EQUAL_CMP_ADDR {byte_533,Y}, #$B, loc_12ECC4
	SET {byte_533,X}, #$10
	LDX	byte_47B
	IF_A_GREATER_CMP_ADDR byte_47B, byte_47C, loc_12EC9E
	LDX	byte_47C

loc_12EC9E:
	LDY	byte_532
	JSR	sub_12D9F7
	SET tilemapTypeUnk_30B, byte_47C
	JSR	sub_12D8B3
	LDX	byte_47B
	IF_A_GREATER_CMP_ADDR byte_47B, byte_47C, loc_12ECBB
	LDX	byte_47C

loc_12ECBB:
	LDY	byte_532
	JSR	sub_12DA33
	JMP	loc_12ED17
; ---------------------------------------------------------------------------

loc_12ECC4:
	JMP	loc_12ED0E
; ---------------------------------------------------------------------------

loc_12ECC7:
	IF_A_NOT_EQUAL_CMP #$11, loc_12ED0E
	IF_A_NOT_EQUAL_CMP_ADDR {byte_533,Y}, #$A, loc_12ED0B
	SET {byte_533,X}, #$E
	LDX	byte_47B
	IF_A_GREATER_CMP_ADDR byte_47B, byte_47C, loc_12ECE5
	LDX	byte_47C

loc_12ECE5:
	LDY	byte_532
	JSR	sub_12D9F7
	SET tilemapTypeUnk_30B, byte_47C
	JSR	sub_12D8B3
	LDX	byte_47B
	IF_A_GREATER_CMP_ADDR byte_47B, byte_47C, loc_12ED02
	LDX	byte_47C

loc_12ED02:
	LDY	byte_532
	JSR	sub_12DA33
	JMP	loc_12ED17
; ---------------------------------------------------------------------------

loc_12ED0B:
	JMP	loc_12ED0E
; ---------------------------------------------------------------------------

loc_12ED0E:
	JSR	sub_12ED29
	SET sprite_length_30F, #0
	RTS
; ---------------------------------------------------------------------------

loc_12ED17:
	JSR	sub_12ED20
	SET sprite_length_30F, #$FF
	RTS
; End of function sub_12E8A5

; =============== S U B	R O U T	I N E =======================================

sub_12ED20:
	a_to_stack tilemapTypeUnk_30B
	LDA	#6
	JMP	loc_12ED4D
; End of function sub_12ED20

; =============== S U B	R O U T	I N E =======================================

sub_12ED29:
	a_to_stack tilemapTypeUnk_30B
	LDA	#$B
	JMP	loc_12ED4D
; End of function sub_12ED29

; =============== S U B	R O U T	I N E =======================================

sub_12ED32:
	a_to_stack tilemapTypeUnk_30B
	LDA	#$2B 
	JMP	loc_12ED4D
; End of function sub_12ED32

; =============== S U B	R O U T	I N E =======================================

sub_12ED3B:
	a_to_stack tilemapTypeUnk_30B
	LDA	#$2D 
	JMP	loc_12ED4D
; End of function sub_12ED3B

; =============== S U B	R O U T	I N E =======================================

sub_12ED44:
	a_to_stack tilemapTypeUnk_30B
	LDA	#$18
	JMP	loc_12ED4D
; ---------------------------------------------------------------------------

loc_12ED4D:
	STA	tilemapTypeUnk_30B
	JSR	sub_128531
	from_stack_to_a tilemapTypeUnk_30B
	RTS
; End of function sub_12ED44

; =============== S U B	R O U T	I N E =======================================

sub_12ED58:
	SET objectIdx_318, #5

set_inventory_screen_12ED5D:
	SET image_id_4A4, #8
	SET4 image_offset_4A5, ppu_prev_unk_4A6, ppu_prev_scroll_x_unk_4A7, ppu_prev_scroll_y_unk_4A8, #0
	SET prev_sprite_type_4A9, #2
	JSR	exec_b0_c2_12A9A9
	SET tilemapTypeUnk_30B, #0
	SET2 tilemap_size_307, ppu_unk_byte_309, #$80 
	a_to_stack tilemapTypeUnk_30B
	JSR	sub_12D3AB
	from_stack_to_a tilemapTypeUnk_30B

loc_12ED90:
	JSR	wait_for_frame_rendered_FCA0
	IF_A_NOT_EQUAL_CMP_ADDR input_pressed_34A, #8, loc_12EDC0
	IF_A_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #0, loc_12ED90
	DEC	tilemapTypeUnk_30B
	SET2 tilemap_size_307, ppu_unk_byte_309, #$80 
	JSR	sub_12D261
	a_to_stack tilemapTypeUnk_30B
	JSR	sub_12D3AB
	from_stack_to_a tilemapTypeUnk_30B
	JSR	sub_128531
	JMP	loc_12ED90
; ---------------------------------------------------------------------------

loc_12EDC0:
	IF_A_NOT_EQUAL_CMP #4, loc_12EDE7
	IF_A_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #$47, loc_12ED90
	INC	tilemapTypeUnk_30B
	SET2 tilemap_size_307, ppu_unk_byte_309, #$80 
	a_to_stack tilemapTypeUnk_30B
	JSR	sub_12D3AB
	from_stack_to_a tilemapTypeUnk_30B
	JSR	sub_128531
	JMP	loc_12ED90
; ---------------------------------------------------------------------------

loc_12EDE7:
	IF_A_NOT_EQUAL_CMP #$80, loc_12EDF1
	JSR	sub_128531
	JMP	loc_12ED90
; ---------------------------------------------------------------------------

loc_12EDF1:
	JMP	loc_12ED90
; End of function sub_12ED58

; ---------------------------------------------------------------------------
	RTS

; =============== S U B	R O U T	I N E =======================================

sub_12EDF5:
	LDX	#0
	LDA	palette_bg_321,X 
	LDX	#$10
	STA	palette_bg_321,X 
	SET inv_spr_dscr1_30C, #4

loc_12EE04:
	SET has_ppu_data_to_upload_6F, #0
	LDX	#0
	SET_INX {ppu_data_70,X}, #1
	SET_INX {ppu_data_70,X}, #$20 
	SET_INX {ppu_data_70,X}, #$3F 
	SET_INX {ppu_data_70,X}, #0
	IF_A_NOT_EQUAL_CMP_ADDR byte_341, #0, loc_12EE2A
	SET inv_spr_dscr1_30C, #1

loc_12EE2A:
	LDY	#0

loc_12EE2C:
	IF_A_EQUAL_CMP_ADDR inv_spr_dscr1_30C, #4, loc_12EE3F
	IF_A_EQUAL_CMP #3, loc_12EE47
	IF_A_EQUAL_CMP #2, loc_12EE58
	IF_A_EQUAL_CMP #1, loc_12EE69

loc_12EE3F:
	LOAD_A_MASKED {palette_bg_321,Y }, #$CF 
	JMP	loc_12EE7D
; ---------------------------------------------------------------------------

loc_12EE47:
	LOAD_A_MASKED {palette_bg_321,Y }, #$30 
	IF_A_GREATER_CMP #$30, loc_12EE7A
	LOAD_A_MASKED {palette_bg_321,Y }, #$DF 
	JMP	loc_12EE7D
; ---------------------------------------------------------------------------

loc_12EE58:
	LOAD_A_MASKED {palette_bg_321,Y }, #$30 
	IF_A_GREATER_CMP #$20, loc_12EE7A
	LOAD_A_MASKED {palette_bg_321,Y }, #$EF 
	JMP	loc_12EE7D
; ---------------------------------------------------------------------------

loc_12EE69:
	LOAD_A_MASKED {palette_bg_321,Y }, #$30 
	IF_A_GREATER_CMP #$10, loc_12EE7A
	LOAD_A_MASKED {palette_bg_321,Y }, #$FF
	JMP	loc_12EE7D
; ---------------------------------------------------------------------------

loc_12EE7A:
	LDA	palette_bg_321,Y 

loc_12EE7D:
	STA	ppu_data_70,X
	INX
	INY
	IF_Y_GREATER_CMP #$20 , loc_12EE2C
	SET has_ppu_data_to_upload_6F, #1
	DEC	inv_spr_dscr1_30C
	IF_A_EQUAL_CMP_ADDR inv_spr_dscr1_30C, #0, loc_12EE9C
	LDA	byte_341
	JSR	wait_for_frame_rendered_FCA0
	JMP	loc_12EE04
; ---------------------------------------------------------------------------

loc_12EE9C:
	IF_A_EQUAL_CMP_ADDR byte_341, #0, loc_12EEA7
	JSR	wait_for_frame_rendered_FCA0
	RTS
; ---------------------------------------------------------------------------

loc_12EEA7:
	ADD_TO_A #1
	JSR	wait_for_frame_rendered_FCA0
	RTS
; End of function sub_12EDF5

; =============== S U B	R O U T	I N E =======================================

sub_12EEAE:
	SET inv_spr_dscr1_30C, #4

write_ppu_entry_12EEB3:
	SET has_ppu_data_to_upload_6F, #0
	LDX	#0
	SET_INX {ppu_data_70,X}, #1
	SET_INX {ppu_data_70,X}, #$20 
	SET_INX {ppu_data_70,X}, #$3F 
	SET_INX {ppu_data_70,X}, #0
	IF_A_NOT_EQUAL_CMP_ADDR byte_341, #0, loc_12EED9
	SET inv_spr_dscr1_30C, #0

loc_12EED9:
	LDY	#0

loc_12EEDB:
	IF_A_EQUAL_CMP_ADDR inv_spr_dscr1_30C, #4, loc_12EEF2
	IF_A_EQUAL_CMP #3, loc_12EEFA
	IF_A_EQUAL_CMP #2, loc_12EF0B
	IF_A_EQUAL_CMP #1, loc_12EF1C
	IF_A_EQUAL_CMP #0, loc_12EF2D

loc_12EEF2:
	LOAD_A_MASKED {palette_bg_321,Y }, #$FF
	JMP	loc_12EF35
; ---------------------------------------------------------------------------

loc_12EEFA:
	LOAD_A_MASKED {palette_bg_321,Y }, #$30 
	IF_A_GREATER_CMP #$30, loc_12EF32
	LOAD_A_MASKED {palette_bg_321,Y }, #$EF 
	JMP	loc_12EF35
; ---------------------------------------------------------------------------

loc_12EF0B:
	LOAD_A_MASKED {palette_bg_321,Y }, #$30 
	IF_A_GREATER_CMP #$20, loc_12EF32
	LOAD_A_MASKED {palette_bg_321,Y }, #$DF 
	JMP	loc_12EF35
; ---------------------------------------------------------------------------

loc_12EF1C:
	LOAD_A_MASKED {palette_bg_321,Y }, #$30 
	IF_A_GREATER_CMP #$10, loc_12EF32
	LOAD_A_MASKED {palette_bg_321,Y }, #$CF 
	JMP	loc_12EF35
; ---------------------------------------------------------------------------

loc_12EF2D:
	LDA	#$1D
	JMP	loc_12EF35
; ---------------------------------------------------------------------------

loc_12EF32:
	LDA	palette_bg_321,Y 

loc_12EF35:
	STA	ppu_data_70,X
	INX
	INY
	IF_Y_GREATER_CMP #$20 , loc_12EEDB
	SET has_ppu_data_to_upload_6F, #1
	DEC	inv_spr_dscr1_30C
	IF_A_EQUAL_CMP_ADDR inv_spr_dscr1_30C, #$FF, loc_12EF54
	LDA	byte_341
	JSR	wait_for_frame_rendered_FCA0
	JMP	write_ppu_entry_12EEB3
; ---------------------------------------------------------------------------

loc_12EF54:
	IF_A_EQUAL_CMP_ADDR byte_341, #0, loc_12EF5F
	JSR	wait_for_frame_rendered_FCA0
	RTS
; ---------------------------------------------------------------------------

loc_12EF5F:
	ADD_TO_A #1
	JSR	wait_for_frame_rendered_FCA0
	RTS
; End of function sub_12EEAE

; =============== S U B	R O U T	I N E =======================================

sub_12EF66:
	LDY	byte_301
	LDA	byte_12EFD7,Y
	TAY
	IF_Y_NOT_EQUAL_CMP #$F, sub_12EF77
	SET sprite_length_30F, #$FF
	RTS
; End of function sub_12EF66

; =============== S U B	R O U T	I N E =======================================

sub_12EF77:
	y_to_stack
	JSR	sub_1283BA
	from_stack_to_y
	a_to_stack image_id_4A4
	a_to_stack image_offset_4A5
	a_to_stack ppu_prev_unk_4A6
	a_to_stack ppu_prev_scroll_x_unk_4A7
	a_to_stack ppu_prev_scroll_y_unk_4A8
	a_to_stack prev_sprite_type_4A9
	SET image_id_4A4, {map_sequence_12F072,Y}
	SET4 image_offset_4A5, ppu_prev_unk_4A6, ppu_prev_scroll_x_unk_4A7, ppu_prev_scroll_y_unk_4A8, #0
	SET prev_sprite_type_4A9, #2
	JSR	exec_b0_c2_12A9A9
	JSR	wait_for_any_input_FCCD
	from_stack_to_a prev_sprite_type_4A9
	from_stack_to_a ppu_prev_scroll_y_unk_4A8
	from_stack_to_a ppu_prev_scroll_x_unk_4A7
	from_stack_to_a ppu_prev_unk_4A6
	from_stack_to_a image_offset_4A5
	from_stack_to_a image_id_4A4
	SET sprite_length_30F, #0
	RTS
; End of function sub_12EF77

; ---------------------------------------------------------------------------
	.BYTE $60,$60,$60,$60
byte_12EFD7:.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
	
	.BYTE  $F, $F, $F, $F, $F, $F,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
	.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
	.BYTE	0,  0,	1,  1,	1,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
	.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	3,  3
	.BYTE	3,  3,	3,  4,	4,  4,	4,  4,	4,  4,	4,  4,	4,  5,	5,  5
	.BYTE	5,  0,	5,  5,	5,  5,	5,  5,	5,  5,	6,  6,	6,  6,	6,  7
	.BYTE	7,  8,	8,  8,	9,  9,	9,  9,	9,  9,	9,  9,	9,  9,	9,  9
	.BYTE	9,  9, $A, $A, $F,  0,	0,  0,	0,  0,	1,  1,	1,  3,	3,  3
	.BYTE	4,  4,	4,  4,	9,  9, $A,  5,	5,  6, $F
map_sequence_12F072:.BYTE   4,	6,  5,	7,  3,$14,$15, $C, $D, $E, $F
	

; =============== S U B	R O U T	I N E =======================================

sub_12F07D:
	SET3 byte_41F, byte_421, byte_547, #0
	JSR	sub_1283BA
	a_to_stack image_id_4A4
	a_to_stack image_offset_4A5
	a_to_stack ppu_prev_unk_4A6
	a_to_stack ppu_prev_scroll_x_unk_4A7
	a_to_stack ppu_prev_scroll_y_unk_4A8
	a_to_stack prev_sprite_type_4A9
	SET objectIdx_318, #5
	SET byte_360, #0
	SET byte_361, #3

show_computer_12F0B2:
	SET image_id_4A4, #$84 
	SET2 image_offset_4A5, ppu_prev_unk_4A6, #0
	SET2 ppu_prev_scroll_x_unk_4A7, ppu_prev_scroll_y_unk_4A8, #0
	SET prev_sprite_type_4A9, #2
	JSR	exec_b0_c2_12A9A9
	SET_TEXT_ARGS #$2B, #2
	JSR	sub_12F5B9
	SET byte_372, #0

loc_12F0E1:
	JSR	sub_12F564
	JSR	sub_12F168
	JSR	wait_for_frame_rendered_FCA0
	IF_A_NOT_EQUAL_CMP_ADDR input_pressed_34A, #8, loc_12F0FA
	JSR	sub_12ED32
	JSR	sub_12F4C0
	JMP	loc_12F0E1
; ---------------------------------------------------------------------------

loc_12F0FA:
	IF_A_NOT_EQUAL_CMP #4, loc_12F107
	JSR	sub_12ED32
	JSR	sub_12F4E4
	JMP	loc_12F0E1
; ---------------------------------------------------------------------------

loc_12F107:
	IF_A_NOT_EQUAL_CMP #2, loc_12F114
	JSR	sub_12ED32
	JSR	sub_12F514
	JMP	loc_12F0E1
; ---------------------------------------------------------------------------

loc_12F114:
	IF_A_NOT_EQUAL_CMP #1, loc_12F121
	JSR	sub_12ED32
	JSR	sub_12F527
	JMP	loc_12F0E1
; ---------------------------------------------------------------------------

loc_12F121:
	IF_A_NOT_EQUAL_CMP #$80, loc_12F138
	JSR	sub_12ED20
	JSR	sub_12F2C9
	JSR	sub_12F583
	IF_A_EQUAL_CMP_ADDR byte_41F, #$FF, loc_12F13F
	JMP	loc_12F0E1
; ---------------------------------------------------------------------------

loc_12F138:
	IF_A_EQUAL_CMP #$40, loc_12F13F
	JMP	loc_12F0E1
; ---------------------------------------------------------------------------

loc_12F13F:
	JSR	sub_12ED29
	from_stack_to_a prev_sprite_type_4A9
	from_stack_to_a ppu_prev_scroll_y_unk_4A8
	from_stack_to_a ppu_prev_scroll_x_unk_4A7
	from_stack_to_a ppu_prev_unk_4A6
	from_stack_to_a image_offset_4A5
	from_stack_to_a image_id_4A4
	SET map_show_43B, #$FF
	JSR	exec_b0_c2_12A9A9
	SET map_show_43B, #0
	RTS
; End of function sub_12F07D

; =============== S U B	R O U T	I N E =======================================

sub_12F168:
	SET objMapIdx_316, #$2A 
	MULT_BY_2_BYTE byte_372
	TAY
	SET_INY byte_36A, {byte_12F28B,Y}
	SET byte_366, {byte_12F28B,Y}
	
	SET2 byte_36B, byte_367, #0
	SET objectIdx_318, #5
	SET byte_31A, #0
	SET sprite_secondByte_31B, #0
	SET byte_317, #0
	JSR	exec_b1_c1_128394
	SET objMapIdx_316, #$2B 
	MULT_BY_2_BYTE byte_372
	TAY
	ADD_BYTE_TO_BYTE_CLC_IMM byte_36A, {byte_12F28B,Y}, #8
	IF_A_EQUAL_CMP_ADDR byte_372, #$14, loc_12F1C7
	IF_A_EQUAL_CMP #$1C, loc_12F1C7
	IF_A_EQUAL_CMP #$1D, loc_12F1C7
	IF_A_EQUAL_CMP #$1E, loc_12F1C7
	JMP	loc_12F1D0
; ---------------------------------------------------------------------------

loc_12F1C7:
	ADD_BYTE_TO_BYTE_CLC byte_36A, #$10

loc_12F1D0:
	INY
	SET byte_366, {byte_12F28B,Y}
	SET2 byte_36B, byte_367, #0
	SET objectIdx_318, #5
	SET byte_31A, #4
	SET sprite_secondByte_31B, #0
	SET byte_317, #0
	JSR	exec_b1_c1_128394
	SET objMapIdx_316, #$2C 
	MULT_BY_2_BYTE byte_372
	TAY
	SET_INY byte_36A, {byte_12F28B,Y}
	ADD_BYTE_TO_BYTE_CLC_IMM byte_366, {byte_12F28B,Y}, #8
	SET2 byte_36B, byte_367, #0
	SET objectIdx_318, #5
	SET byte_31A, #8
	SET sprite_secondByte_31B, #0
	SET byte_317, #0
	JSR	exec_b1_c1_128394
	SET objMapIdx_316, #$2D 
	MULT_BY_2_BYTE byte_372
	TAY
	ADD_BYTE_TO_BYTE_CLC_IMM byte_36A, {byte_12F28B,Y}, #8
	IF_A_EQUAL_CMP_ADDR byte_372, #$14, loc_12F258
	IF_A_EQUAL_CMP #$1C, loc_12F258
	IF_A_EQUAL_CMP #$1D, loc_12F258
	IF_A_EQUAL_CMP #$1E, loc_12F258
	JMP	loc_12F261
; ---------------------------------------------------------------------------

loc_12F258:
	ADD_BYTE_TO_BYTE_CLC byte_36A, #$10

loc_12F261:
	INY
	ADD_BYTE_TO_BYTE_CLC_IMM byte_366, {byte_12F28B,Y}, #8
	SET2 byte_36B, byte_367, #0
	SET objectIdx_318, #5
	SET byte_31A, #$C
	SET sprite_secondByte_31B, #0
	SET byte_317, #0
	JSR	exec_b1_c1_128394
	RTS
; End of function sub_12F168

; ---------------------------------------------------------------------------
byte_12F28B:.BYTE $28,$88,$38,$88,$48,$88,$58,$88,$68,$88,$78,$88,$88,$88,$98,$88
	
	
	.BYTE $A8,$88,$B8,$88,$C8,$88,$28,$98,$38,$98,$48,$98,$58,$98,$68,$98
	.BYTE $78,$98,$88,$98,$98,$98,$A8,$98,$B8,$98,$28,$A8,$38,$A8,$48,$A8
	.BYTE $58,$A8,$68,$A8,$78,$A8,$88,$A8,$70,$28,$70,$38,$70,$48

; =============== S U B	R O U T	I N E =======================================

sub_12F2C9:
	IF_A_GREATER_CMP_ADDR byte_421, #$A, loc_12F2D8
	IF_A_EQUAL_CMP_ADDR byte_372, #$A, loc_12F2D8
	RTS
; ---------------------------------------------------------------------------

loc_12F2D8:
	IF_A_NOT_EQUAL_CMP_ADDR byte_372, #$A, loc_12F2ED
	IF_A_EQUAL_CMP_ADDR byte_421, #0, locret_12F2EC
	DEC	byte_421
	JMP	loc_12F2ED
; ---------------------------------------------------------------------------

locret_12F2EC:
	RTS
; ---------------------------------------------------------------------------

loc_12F2ED:
	ADD_BYTE_TO_BYTE_CLC_IMM data_2, #$4E , byte_421
	LDA	#$21 
	ADC	#0
	STA	data_3

	LDX	byte_372
	SET tilemapTypeUnk_30B, {byte_12F45C,X}
	IF_A_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #$FF, loc_12F30E
	JMP	loc_12F411
; ---------------------------------------------------------------------------

loc_12F30E:
	SET_WORD_TO_WORD_CONST ptr_0, off_12F53A

	MULT_BY_2_BYTE byte_420
	ADD_TO_A ptr_0
	STA	ptr_0
	ADD_BYTE_TO_BYTE ptr_1, #0

	READ_WORD data_2, {(ptr_0),Y}
	LDY	#0
	SET tilemapTypeUnk_30B, {(data_2),Y}
	IF_A_EQUAL_CMP byte_421, loc_12F33F
	JMP	locret_12F410
; ---------------------------------------------------------------------------

loc_12F33F:
	INY
	LDX	#0

loc_12F342:
	IF_A_EQUAL_CMP_ADDR {(data_2),Y}, {unk_422,X}, loc_12F34C
	JMP	locret_12F410
; ---------------------------------------------------------------------------

loc_12F34C:
	INX
	INY
	IF_X_GREATER_CMP byte_421, loc_12F342
	IF_A_NOT_EQUAL_CMP_ADDR byte_420, #2, loc_12F377
	SET byte_420, #3
	SET_TEXT_ARGS #$2C, #2
	JSR	sub_12F5B9
	SET byte_421, #0
	JSR	sub_12F583
	JMP	locret_12F410
; ---------------------------------------------------------------------------

loc_12F377:
	IF_A_NOT_EQUAL_CMP_ADDR byte_420, #3, loc_12F3F4

loc_12F37E:
	JSR	sub_12F5FC
	a_to_stack byte_372
	SET byte_372, #$1C

loc_12F38A:
	JSR	wait_for_frame_rendered_FCA0
	JSR	sub_12F168
	IF_A_NOT_EQUAL_CMP_ADDR input_pressed_34A, #8, loc_12F3A4
	IF_A_EQUAL_CMP_ADDR byte_372, #$1C, loc_12F38A
	DEC	byte_372
	JMP	loc_12F38A
; ---------------------------------------------------------------------------

loc_12F3A4:
	IF_A_NOT_EQUAL_CMP #4, loc_12F3B5
	IF_A_EQUAL_CMP_ADDR byte_372, #$1E, loc_12F38A
	INC	byte_372
	JMP	loc_12F38A
; ---------------------------------------------------------------------------

loc_12F3B5:
	IF_A_EQUAL_CMP #$80, loc_12F3BC
	JMP	loc_12F38A
; ---------------------------------------------------------------------------

loc_12F3BC:
	SET tilemapTypeUnk_30B, byte_372
	from_stack_to_a byte_372
	a_to_stack tilemapTypeUnk_30B
	JSR	sub_12F168
	from_stack_to_a tilemapTypeUnk_30B
	IF_A_EQUAL_CMP #$1E, loc_12F3F4
	IF_A_EQUAL_CMP #$1D, loc_12F3E9
	JSR	sub_12F6D8
	SET byte_420, #4
	SET byte_421, #0
	JMP	locret_12F410
; ---------------------------------------------------------------------------

loc_12F3E9:
	JSR	sub_12F698
	SET byte_684, #$FF
	JMP	loc_12F37E
; ---------------------------------------------------------------------------

loc_12F3F4:
	IF_A_NOT_EQUAL_CMP_ADDR byte_420, #4, loc_12F40B
	JSR	sub_12F698
	SET byte_69E, #$FF
	SET byte_420, #3
	JMP	loc_12F37E
; ---------------------------------------------------------------------------

loc_12F40B:
	SET byte_41F, #$FF

locret_12F410:
	RTS
; ---------------------------------------------------------------------------

loc_12F411:
	ADD_BYTE_TO_BYTE_CLC_IMM ptr_0, #$3C , tilemapTypeUnk_30B
	LDA	#$F4 
	ADC	#0
	STA	ptr_1
	
	LDX	byte_421
	SET {unk_422,X}, byte_372
	SET tilemapTypeUnk_30B, #1
	JSR	sub_12F478
	IF_A_NOT_EQUAL_CMP_ADDR byte_372, #$A, loc_12F438
	RTS
; ---------------------------------------------------------------------------

loc_12F438:
	INC	byte_421
	RTS
; End of function sub_12F2C9

; ---------------------------------------------------------------------------

byte_12F43C:
	.BYTE $89,$8A, $E,$8B,$8C,$8D,$8E,$8F,$90,$91,$92,$17,$93,$94,$13,$16
	.BYTE $95,$15,$14,$96,	7,$97,$98,$99,$9A,$9B,$9C,  5,	5,  5,	5,  5

byte_12F45C:
	.BYTE $10,$16,	4,$11,$13,$18,$14,  8, $E, $F,$1B,  0,$12,  3,	5,  6
	.BYTE	7,  9, $A, $B,$FF,$19,$17,  2,$15,  1, $D, $C

; =============== S U B	R O U T	I N E =======================================

sub_12F478:
	SET has_ppu_data_to_upload_6F, #0
	LDX	#0
	SET_INX {ppu_data_70,X}, #1
	SET_INX {ppu_data_70,X}, tilemapTypeUnk_30B
	SET_INX {ppu_data_70,X}, data_3
	SET_INX {ppu_data_70,X}, data_2
	LDY	#0

loc_12F495:
	SET_INX {ppu_data_70,X}, {(ptr_0),Y}
	INY
	IF_Y_GREATER_CMP tilemapTypeUnk_30B, loc_12F495
	ADD_BYTE_TO_WORD data_2, tilemapTypeUnk_30B

	
	ADD_BYTE_TO_WORD ptr_0, tilemapTypeUnk_30B

	JSR	wait_for_ppu_data_upload_FC8C
	RTS
; End of function sub_12F478

; =============== S U B	R O U T	I N E =======================================

sub_12F4C0:
	IF_A_GREATER_CMP_ADDR byte_372, #$A, locret_12F4E3
	BEQ	locret_12F4E3
	IF_A_GREATER_CMP #$14, loc_12F4D9
	BEQ	loc_12F4D9
	sub_byte_sec byte_372, #$A
	RTS
; ---------------------------------------------------------------------------

loc_12F4D9:
	sub_byte_sec byte_372, #$B
	RTS
; ---------------------------------------------------------------------------

locret_12F4E3:
	RTS
; End of function sub_12F4C0

; =============== S U B	R O U T	I N E =======================================

sub_12F4E4:
	IF_A_LOWER_CMP_ADDR byte_372, #$15, locret_12F513
	BEQ	locret_12F513
	IF_A_LOWER_CMP #$B, loc_12F503
	BEQ	loc_12F503
	IF_A_LOWER_CMP #$A, locret_12F513
	BEQ	locret_12F513
	ADD_BYTE_TO_BYTE_CLC byte_372, #$B
	RTS
; ---------------------------------------------------------------------------

loc_12F503:
	IF_A_LOWER_CMP #$12, locret_12F513
	BEQ	locret_12F513
	ADD_BYTE_TO_BYTE_CLC byte_372, #$A
	RTS
; ---------------------------------------------------------------------------

locret_12F513:
	RTS
; End of function sub_12F4E4

; =============== S U B	R O U T	I N E =======================================

sub_12F514:
	IF_A_EQUAL_CMP_ADDR byte_372, #0, locret_12F526
	IF_A_EQUAL_CMP #$B, locret_12F526
	IF_A_EQUAL_CMP #$15, locret_12F526
	DEC	byte_372

locret_12F526:
	RTS
; End of function sub_12F514

; =============== S U B	R O U T	I N E =======================================

sub_12F527:
	IF_A_EQUAL_CMP_ADDR byte_372, #$A, locret_12F539
	IF_A_EQUAL_CMP #$14, locret_12F539
	IF_A_EQUAL_CMP #$1B, locret_12F539
	INC	byte_372

locret_12F539:
	RTS
; End of function sub_12F527

; ---------------------------------------------------------------------------
off_12F53A:
	.WORD byte_12F544
	.WORD byte_12F54D
	.WORD byte_12F556
	.WORD byte_12F55B
	.WORD byte_12F55F
byte_12F544:.BYTE	8,  9,$10, $B,	3,$1B, $B,$17,	5 
byte_12F54D:.BYTE	8,$19,	7, $F,$10,  8,	6, $C,	2 
byte_12F556:.BYTE	4,$11,	8,$10,$1A 
byte_12F55B:.BYTE	3, $B, $D, $B	
byte_12F55F:.BYTE	4,$1B,	8,$13,	2 

; =============== S U B	R O U T	I N E =======================================

sub_12F564:
	IF_A_GREATER_CMP_ADDR count_unk_465, #$F, locret_12F5B8
	SET count_unk_465, #0
	XOR_BYTE  byte_547, #1
	IF_A_EQUAL byte_547, sub_12F583
; End of function sub_12F564

; =============== S U B	R O U T	I N E =======================================

hide_sprite_12F57D:
	SET spr_y_pos_280, #$F0 
	RTS
; End of function hide_sprite_12F57D

; =============== S U B	R O U T	I N E =======================================

sub_12F583:
	SET objMapIdx_316, #$3C 
	MULT_BY_8_BYTE byte_421
	ADD_TO_A #$70 
	STA	byte_36A
	SET byte_366, #$50 
	SET2 byte_36B, byte_367, #0
	SET objectIdx_318, #5
	SET byte_31A, #$80 
	SET sprite_secondByte_31B, #0
	SET byte_317, #2
	JSR	exec_b1_c1_128394

locret_12F5B8:
	RTS
; End of function sub_12F583

; =============== S U B	R O U T	I N E =======================================

sub_12F5B9:
	SET ppu_unk_byte_309, #9
	SET tilemap_size_307, #9
	SET byte_35E, #8
	SET byte_35F, #1
	SET sprite_secondByte_31B, #$AF 
; End of function sub_12F5B9

; =============== S U B	R O U T	I N E =======================================

sub_12F5D2:
	SET byte_362, #0
	SET byte_363, #0
; End of function sub_12F5D2

; =============== S U B	R O U T	I N E =======================================

sub_12F5DC:
	SET byte_364, #7
	SET byte_360, #1
	SET byte_361, #0
	a_to_stack byte_310
	SET byte_310, #5
	JSR	exec_b2_c4_1283F2
	from_stack_to_a byte_310
	RTS
; End of function sub_12F5DC

; =============== S U B	R O U T	I N E =======================================

sub_12F5FC:
	JSR	hide_sprite_12F57D
	SET_TEXT_ARGS #$2D, #2
	SET ppu_unk_byte_309, #3
	SET tilemap_size_307, #5
	SET byte_35E, #$B
	SET byte_35F, #4
	SET sprite_secondByte_31B, #$AF 
	JSR	sub_12F5D2
	SET_TEXT_ARGS #$2E, #2
	SET ppu_unk_byte_309, #5
	SET tilemap_size_307, #$E
	SET byte_35E, #2
	SET byte_35F, #1
	SET sprite_secondByte_31B, #$D7 
	JSR	sub_12F5D2
	SET_TEXT_ARGS #$2F, #2
	SET ppu_unk_byte_309, #7
	SET tilemap_size_307, #$E
	SET byte_35E, #2
	SET byte_35F, #1
	SET sprite_secondByte_31B, #$DF 
	JSR	sub_12F5D2
	SET_TEXT_ARGS #$30, #2
	SET ppu_unk_byte_309, #9
	SET tilemap_size_307, #$E
	SET byte_35E, #2
	SET byte_35F, #1
	SET sprite_secondByte_31B, #$E7 
	JSR	sub_12F5D2
	RTS
; End of function sub_12F5FC

; =============== S U B	R O U T	I N E =======================================

sub_12F698:
	JSR	sub_12F732
	SET_TEXT_ARGS #$32, #2
	SET ppu_unk_byte_309, #5
	SET tilemap_size_307, #5
	SET byte_35E, #$B
	SET byte_35F, #2
	SET sprite_secondByte_31B, #$B3 
	SET byte_362, #0
	SET byte_363, #1
	JSR	sub_12F5DC
	JSR	wait_any_input_65k_cycles_FCAB
	JSR	wait_any_input_65k_cycles_FCAB
	JSR	wait_any_input_65k_cycles_FCAB
	JSR	wait_any_input_65k_cycles_FCAB
	RTS
; End of function sub_12F698

; =============== S U B	R O U T	I N E =======================================

sub_12F6D8:
	JSR	sub_12F732
	SET_TEXT_ARGS #$31, #2
	SET ppu_unk_byte_309, #3
	SET tilemap_size_307, #5
	SET byte_35E, #$B
	SET byte_35F, #2
	SET sprite_secondByte_31B, #$B3 
	SET byte_362, #0
	SET byte_363, #1
	JSR	sub_12F5DC
	SET_TEXT_ARGS #$2C, #2
	SET ppu_unk_byte_309, #9
	SET tilemap_size_307, #9
	SET byte_35E, #3
	SET byte_35F, #1
	SET sprite_secondByte_31B, #$F3 
	JSR	sub_12F5D2
	RTS
; End of function sub_12F6D8

; =============== S U B	R O U T	I N E =======================================

sub_12F732:
	JSR	hide_sprite_12F57D
	SET_TEXT_ARGS #$74, #0
	SET ppu_unk_byte_309, #3
	SET tilemap_size_307, #5
	SET byte_35E, #$B
	SET byte_35F, #4
	SET sprite_secondByte_31B, #$AF 
	JSR	sub_12F5D2
	RTS
; End of function sub_12F732

Common_Code_12:
	.include "common/common_funcs.asm"

; ---------------------------------------------------------------------------
	.include "garbage/bank_12_garbage.asm"

Vectors_12:
	.WORD NMI_FD53
	.WORD bank_switch_8000
	.WORD return_FDCA
; end of 'BANK_12'

; ===========================================================================