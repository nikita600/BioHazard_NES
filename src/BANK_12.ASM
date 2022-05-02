; Segment type:Pure code
	;.segment BANK_12 (Code + Music)
	;* =  $8000

	.include "includes/ram.inc"
	.include "includes/macros.inc"

; =============== S U B	R O U T	I N E =======================================

bank_switch_8000:
	.include "common/bank_switch_func.asm"

switch_case_8035:
	set bank_prev_345, bank_to_344
	set bank_switch_flag_6C, #$88 
	if_a_equal_cmp_addr bank_command_346, #$FF, locret_12805A
	mult_a_by_2
	TAX
	set_inx ptr_0, {CommandPtrs_12805B,X}
	set ptr_1, {CommandPtrs_12805B,X}
	a_to_stack bank_from_343
	JMP	(ptr_0)
; ---------------------------------------------------------------------------

locret_12805A:
	RTS
; End of function bank_switch_8000

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
	set apu_unk_76C, #5

exec_b13_c5_12829C:
	set bank_command_346, #5
	set bank_to_344, #banks_13
	set bank_from_343, #$12
	JSR	bank_switch_8000

loc_1282AE:
	JSR	sub_128955
	from_stack_to_a apu_unk_76C

exec_b13_c5_1282B5:
	set bank_command_346, #5
	set bank_to_344, #banks_13
	set bank_from_343, #$12
	JSR	bank_switch_8000
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
	set bank_command_346, #$FF
	set bank_to_344, bank_from_343
	JMP	bank_switch_8000
; End of function command_0_1280FB

; =============== S U B	R O U T	I N E =======================================

exec_b2_c1_128300:
	set bank_command_346, #1
	set bank_to_344, #text_2
	set bank_from_343, #$12
	JSR	bank_switch_8000
	RTS
; End of function exec_b2_c1_128300

; =============== S U B	R O U T	I N E =======================================

exec_b2_c3_128313:
	set bank_command_346, #3
	set bank_to_344, #2
	set bank_from_343, #$12
	JSR	bank_switch_8000
	RTS
; End of function exec_b2_c3_128313

; =============== S U B	R O U T	I N E =======================================

sub_128326:
	a_to_stack inv_itemPrev_idx_31D
	a_to_stack ppu_unk_byte_309
	a_to_stack tilemap_size_307
	set byte_36E, #0
	set inv_sprite_idx_31C, inv_itemPrev_idx_31D
	set inv_itemPrev_idx_31D, #0
	set byte_31E, sprite_secondByte_31B
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
	set inv_sprite_idx_31C, inv_itemPrev_idx_31D
	set inv_itemPrev_idx_31D, #0
	set byte_31E, sprite_secondByte_31B

exec_b4_c3_128375:
	set bank_command_346, #3
	set bank_to_344, #items_spr_4
	set bank_from_343, #$12
	JSR	bank_switch_8000

loc_128387:
	from_stack_to_a tilemap_size_307
	from_stack_to_a ppu_unk_byte_309
	from_stack_to_a inv_itemPrev_idx_31D
	RTS
; End of function sub_128358

; =============== S U B	R O U T	I N E =======================================

exec_b1_c1_128394:
	set bank_command_346, #1
	set bank_to_344, #sprites_1
	set bank_from_343, #$12
	JSR	bank_switch_8000
	RTS
; End of function exec_b1_c1_128394

; =============== S U B	R O U T	I N E =======================================

exec_b4_c2_1283A7:
	set bank_command_346, #2
	set bank_to_344, #items_spr_4
	set bank_from_343, #$12
	JSR	bank_switch_8000
	RTS
; End of function exec_b4_c2_1283A7

; =============== S U B	R O U T	I N E =======================================

sub_1283BA:
	set image_id_4A4, entry_idx_300
	set image_offset_4A5, ppu_unk_byte_302
	set ppu_prev_unk_4A6, ppu_unk_byte_303
	set ppu_prev_scroll_x_unk_4A7, ppu_scroll_x_304
	set ppu_prev_scroll_y_unk_4A8, ppu_scroll_y_305
	set prev_sprite_type_4A9, sprite_type_306
	RTS
; End of function sub_1283BA

; =============== S U B	R O U T	I N E =======================================

exec_b2_c2_1283DF:
	set bank_command_346, #2
	set bank_to_344, #text_2
	set bank_from_343, #$12
	JSR	bank_switch_8000
	RTS
; End of function exec_b2_c2_1283DF

; =============== S U B	R O U T	I N E =======================================

exec_b2_c4_1283F2:
	set bank_command_346, #4
	set bank_to_344, #text_2
	set bank_from_343, #$12
	JSR	bank_switch_8000
	RTS
; End of function exec_b2_c4_1283F2

; =============== S U B	R O U T	I N E =======================================

exec_b2_c5_128405:
	set bank_command_346, #5
	set bank_to_344, #text_2
	set bank_from_343, #$12
	JSR	bank_switch_8000
	RTS
; End of function exec_b2_c5_128405

; =============== S U B	R O U T	I N E =======================================

exec_b0_c3_128418:
	set bank_command_346, #3
	set bank_to_344, #code_0
	set bank_from_343, #$12
	JSR	bank_switch_8000
	RTS
; End of function exec_b0_c3_128418

; =============== S U B	R O U T	I N E =======================================

exec_b0_c4_12842B:
	set bank_command_346, #4
	set bank_to_344, #code_0
	set bank_from_343, #$12
	JSR	bank_switch_8000
	RTS
; End of function exec_b0_c4_12842B

; =============== S U B	R O U T	I N E =======================================

exec_b0_c5_12843E:
	a_to_stack bank_from_343
	set bank_command_346, #5
	set bank_to_344, #code_0
	set bank_from_343, #$12
	JSR	bank_switch_8000
	from_stack_to_a bank_from_343
	RTS
; End of function exec_b0_c5_12843E

; =============== S U B	R O U T	I N E =======================================

exec_b0_c6_128459:
	a_to_stack bank_from_343
	set bank_command_346, #6
	set bank_to_344, #code_0
	set bank_from_343, #$12
	JSR	bank_switch_8000
	from_stack_to_a bank_from_343
	RTS
; End of function exec_b0_c6_128459

; =============== S U B	R O U T	I N E =======================================

exec_b0_c7_128474:
	a_to_stack bank_from_343
	set bank_command_346, #7
	set bank_to_344, #code_0
	set bank_from_343, #$12
	JSR	bank_switch_8000
	from_stack_to_a bank_from_343
	RTS
; End of function exec_b0_c7_128474

; =============== S U B	R O U T	I N E =======================================

exec_b0_c8_12848F:
	a_to_stack bank_from_343
	set bank_command_346, #8
	set bank_to_344, #code_0
	set bank_from_343, #$12
	JSR	bank_switch_8000
	from_stack_to_a bank_from_343
	RTS
; End of function exec_b0_c8_12848F

; =============== S U B	R O U T	I N E =======================================

exec_b0_c9_1284AA:
	a_to_stack bank_from_343
	set bank_command_346, #9
	set bank_to_344, #code_0
	set bank_from_343, #$12
	JSR	bank_switch_8000
	from_stack_to_a bank_from_343
	RTS
; End of function exec_b0_c9_1284AA

; =============== S U B	R O U T	I N E =======================================

exec_b0_cA_1284C5:
	a_to_stack bank_from_343
	set bank_command_346, #$A
	set bank_to_344, #code_0
	set bank_from_343, #$12
	JSR	bank_switch_8000
	from_stack_to_a bank_from_343
	RTS
; End of function exec_b0_cA_1284C5

; =============== S U B	R O U T	I N E =======================================

exec_b0_cB_1284E0:
	a_to_stack bank_from_343
	set bank_command_346, #$B
	set bank_to_344, #code_0
	set bank_from_343, #$12
	JSR	bank_switch_8000
	from_stack_to_a bank_from_343
	RTS
; End of function exec_b0_cB_1284E0

; =============== S U B	R O U T	I N E =======================================

exec_b0_cC_1284FB:
	a_to_stack bank_from_343
	set bank_command_346, #$C
	set bank_to_344, #code_0
	set bank_from_343, #$12
	JSR	bank_switch_8000
	from_stack_to_a bank_from_343
	RTS
; End of function exec_b0_cC_1284FB

; =============== S U B	R O U T	I N E =======================================

exec_b0_cD_128516:
	a_to_stack bank_from_343
	set bank_command_346, #$D
	set bank_to_344, #code_0
	set bank_from_343, #$12
	JSR	bank_switch_8000
	from_stack_to_a bank_from_343
	RTS
; End of function exec_b0_cD_128516

; =============== S U B	R O U T	I N E =======================================

sub_128531:
	if_a_greater_cmp_addr tilemapTypeUnk_30B, #$47, loc_12853B
	BEQ	loc_12853B
	RTS
; ---------------------------------------------------------------------------

loc_12853B:
	LDX	#$F
	STX	_APU_STATUS
	PHA
	TAY
	if_a_greater_cmp #$40, loc_128549
	sub_a_sec #$40 

loc_128549:
	mult_a_by_4
	TAX
	LDA	byte_12858A,Y
	LDA	byte_1285D2,Y
	TAY
	PLA
	if_a_lower_cmp #$40, loc_128571
	set {_APU_PULSE1_ENV,Y}, {apu_pulse_timer1_12861A,X}
	set {_APU_PULSE1_SWEEP,Y}, {apu_pulse_timer1_12861A+1,X}
	set {_APU_PULSE1_TIME,Y}, {apu_pulse_timer1_12861A+2,X}
	set {_APU_PULSE1_LEN,Y}, {apu_pulse_timer1_12861A+3,X}
	RTS
; ---------------------------------------------------------------------------

loc_128571:
	set {_APU_PULSE1_ENV,Y}, {stru_12871A,X}
	set {_APU_PULSE1_SWEEP,Y}, {stru_12871A+1,X}
	set {_APU_PULSE1_TIME,Y}, {stru_12871A+2,X}
	set {_APU_PULSE1_LEN,Y}, {stru_12871A+3,X}
	RTS
; End of function sub_128531

; ---------------------------------------------------------------------------

	.include "music\\bank_12_apu.asm"

; =============== S U B	R O U T	I N E =======================================

sub_12873A:
	if_a_not_equal_cmp_addr byte_46F, #$17, loc_12875A
	if_a_not_equal_cmp_addr byte_470, #0, loc_12875A
	if_a_not_equal_cmp_addr byte_54E, #3, loc_12875A
	set byte_54E, #0
	JSR	exec_b0_cC_1284FB
	JMP	locret_128954
; ---------------------------------------------------------------------------

loc_12875A:
	if_a_equal_cmp_addr byte_46F, #$69, loc_128768
	if_a_equal_cmp #$98, loc_128768
	JMP	loc_128777
; ---------------------------------------------------------------------------

loc_128768:
	if_a_not_equal_cmp_addr entry_idx_300, #$63, loc_128774
	set byte_5D5, #$FF

loc_128774:
	JMP	locret_128954
; ---------------------------------------------------------------------------

loc_128777:
	if_a_not_equal_cmp_addr byte_46F, #$1B, loc_12878D
	if_a_not_equal_cmp_addr entry_idx_300, #$18, loc_12878A
	set byte_5D4, #$FF

loc_12878A:
	JMP	locret_128954
; ---------------------------------------------------------------------------

loc_12878D:
	if_a_not_equal_cmp_addr byte_46F, #$19, loc_1287A3
	if_a_not_equal_cmp_addr entry_idx_300, #$18, loc_1287A0
	set byte_5D3, #$FF

loc_1287A0:
	JMP	locret_128954
; ---------------------------------------------------------------------------

loc_1287A3:
	if_a_not_equal_cmp_addr byte_46F, #$7B, loc_1287B9
	if_a_not_equal_cmp_addr entry_idx_300, #$74, loc_1287B6
	set byte_690, #$FF

loc_1287B6:
	JMP	locret_128954
; ---------------------------------------------------------------------------

loc_1287B9:
	if_a_not_equal_cmp_addr byte_46F, #$71, loc_128817
	if_a_not_equal_cmp_addr entry_idx_300, #$6F, loc_128814
	if_a_not_equal_cmp_addr byte_6A2, #0, loc_128814
	set byte_313, #1
	JSR	exec_b0_c9_1284AA
	set byte_690, #$FF
	set cur_obj_idx_unk_43A, #0
	JSR	sub_12BF29
	set cur_obj_idx_unk_43A, #1
	JSR	sub_12BF29
	set text_idx_35C, #$80 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	set tilemapTypeUnk_30B, #2
	set byte_313, #2
	JSR	exec_b0_cA_1284C5
	set byte_551, #$FF
	set byte_553, #$FF

loc_128814:
	JMP	locret_128954
; ---------------------------------------------------------------------------

loc_128817:
	if_a_equal_cmp_addr byte_46F, #$7C, loc_128821
	JMP	loc_1288EE
; ---------------------------------------------------------------------------

loc_128821:
	if_a_equal_cmp_addr entry_idx_300, #$82, loc_12882B
	JMP	loc_1288EB
; ---------------------------------------------------------------------------

loc_12882B:
	if_a_not_equal_cmp_addr byte_597, #$FF, loc_128835
	JMP	loc_1288EB
; ---------------------------------------------------------------------------

loc_128835:
	set byte_597, #$FF
	set tilemapTypeUnk_30B, #8
	set byte_313, #2
	JSR	exec_b0_cA_1284C5
	set byte_313, #0
	JSR	exec_b0_c9_1284AA
	set text_idx_35C, #$40 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #$11
	JSR	exec_b0_c0_12A973
	set tilemapData_4C, #1
	set roomUnk1_4D, #2
	set roomUnk2_4E, #2
	set tilemap_line_idx_4F, #1
	JSR	exec_b0_cB_1284E0
	set tilemapData_4C, #1
	set roomUnk1_4D, #2
	set roomUnk2_4E, #8
	set tilemap_line_idx_4F, #3
	JSR	exec_b0_cB_1284E0
	set cur_obj_idx_unk_43A, #2
	JSR	exec_b0_c3_128418
	set text_idx_35C, #$51 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #$E
	JSR	exec_b0_c0_12A973
	set tilemapTypeUnk_30B, #5
	set byte_313, #1
	JSR	exec_b0_cA_1284C5
	set byte_6C3, #0
	STA	byte_6C4

set_tyrant_level_1288B6:
	set image_id_4A4, #$83 
	set image_offset_4A5, #0
	STA	ppu_prev_unk_4A6
	STA	ppu_prev_scroll_x_unk_4A7
	STA	ppu_prev_scroll_y_unk_4A8
	STA	prev_sprite_type_4A9
	set byte_4AD, #$40 
	set byte_4AE, #$50 
	JSR	exec_b0_c2_12A9A9
	set text_idx_35C, #$3F 
	set char_type_id_35D, #2
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973

loc_1288EB:
	JMP	locret_128954
; ---------------------------------------------------------------------------

loc_1288EE:
	if_a_not_equal_cmp_addr byte_46F, #$78, locret_128954
	if_a_not_equal_cmp_addr entry_idx_300, #$79, loc_128951
	if_a_equal_cmp_addr byte_6C6, #0, loc_128951
	set tilemapTypeUnk_30B, #2
	set byte_313, #1
	JSR	exec_b0_cA_1284C5
	set tilemapTypeUnk_30B, #1
	set byte_313, #2
	JSR	exec_b0_cA_1284C5
	set tilemapTypeUnk_30B, #3
	set byte_313, #1
	JSR	exec_b0_cA_1284C5
	set byte_313, #2
	JSR	exec_b0_c9_1284AA
	set text_idx_35C, #$78 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #3
	JSR	exec_b0_c0_12A973
	set byte_552, #$FF
	STA	byte_6C5
	set byte_6C6, #0

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
	mult_a_by_2
	TAX
	set byte_475, {byte_129255,X}
	set byte_43F, #0
	STA	byte_472

loc_128986:
	set byte_43E, #0
	JSR	sub_12EEAE
	JSR	ppu_reset_ctrl_mask_FE93
	set _PPU_ADDR, #$28 
	set _PPU_ADDR, #0
	LDA	#0
	LDX	#0

loc_12899F:
	LDY	#0

ppu_clear_ram_1289A1:
	STA	_PPU_DATA
	INY
	BNE	ppu_clear_ram_1289A1
	INX
	if_x_not_equal_cmp #4, loc_12899F
	set byte_341, #1
	set entry_idx_300, #0
	set ppu_unk_byte_302, #0
	set ppu_unk_byte_303, #0
	set ppu_scroll_x_304, #0
	set ppu_scroll_y_305, #0
	set sprite_type_306, #1
	JSR	sub_12D261
	JSR	exec_b0_c6_128459
	set sprPalIdx_319, #0
	set byte_31E, #4
	JSR	exec_b0_c7_128474
	set objectIdx_318, #4
	JSR	exec_b0_c8_12848F
	and_byte ppu_ctrl_31F, #$FC 
	JSR	ppu_update_ctrl_mask_FE86
	JSR	exec_b0_cD_128516
	JSR	sub_12EDF5
	set inv_itemPrev_idx_31D, #0
	set tilemap_size_307, #$B
	set ppu_unk_byte_309, #4
	set byte_36E, #0
	JSR	exec_b4_c2_1283A7
	JSR	sub_128B0F
	set count_unk_465, #0
; End of function sub_128955

; =============== S U B	R O U T	I N E =======================================

sub_128A1A:
	STA	count_unk_466
	STA	count_unk_466

loc_128A20:
	JSR	sub_128FC1
	if_a_equal_cmp_addr is_game_finished_561, #0, game_not_finished_128A43
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
	if_a_not_equal_cmp_addr input_pressed_34A, #$20, loc_128A72
	JSR	sub_12ED3B
	xor_byte byte_472, #1
	set byte_440, #0
	JMP	loc_128A20
; ---------------------------------------------------------------------------

loc_128A72:
	if_a_not_equal_cmp #$10, loc_128A87
	JSR	sub_12ED44
	a_to_stack inv_sprite_idx_31C
	JSR	sub_12D4C6
	from_stack_to_a inv_sprite_idx_31C
	JMP	loc_128986
; ---------------------------------------------------------------------------

loc_128A87:
	if_a_not_equal_cmp #$80, loc_128A9C
	JSR	sub_1290C3
	if_a_equal_cmp_addr sprite_length_30F, #$FF, loc_128AA5
	if_a_equal_cmp #$FE, loc_128A9F
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
	if_a_equal_cmp_addr image_id_4A4, #$17, loc_128B01
	if_a_equal_cmp #$45, loc_128B01
	JSR	sub_12C7DE
	JSR	exec_b0_c3_128418
	if_a_not_equal_cmp_addr image_id_4A4, #$96, loc_128ADA
	set byte_6C9, #$FF

loc_128ADA:
	if_a_not_equal_cmp_addr image_id_4A4, #$9A, loc_128AE6
	set is_game_finished_561, #$88 

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
	set map_show_43B, #$FF
	JSR	exec_b0_c2_12A9A9
	set map_show_43B, #0
	RTS
; End of function sub_128A1A

; =============== S U B	R O U T	I N E =======================================

sub_128B0F:
	set byte_366, #$80 
	set byte_367, #0
	set byte_36A, ppu_scroll_x_304
	set byte_36B, #0
	set sprite_secondByte_31B, #0
	STA	byte_31A
	set objectIdx_318, #4
	set objMapIdx_316, #$21 
	LDX	objMapIdx_316
	set byte_317, {byte_128F59,X}
	JSR	exec_b1_c1_128394
	RTS
; End of function sub_128B0F

; =============== S U B	R O U T	I N E =======================================

sub_128B43:
	if_a_not_equal byte_472, loc_128B4B
	JMP	loc_128BFB
; ---------------------------------------------------------------------------

loc_128B4B:
	set byte_31A, #8
	set tilemapWidth_308, #8
	JSR	sub_12D26B
	sub_addr_sec inv_sprite_idx_31C, #$2A 
	mult_a_by_2
	TAY
	sub_addr_sec {byte_129006,Y}, byte_43F
	mult_a_by_4
	STA	tilemapTypeUnk_30B
	sub_addr_sec #$80 , tilemapTypeUnk_30B
	STA	byte_36A
	STA	byte_473
	sub_addr #0, #0
	STA	byte_36B
	set byte_366, #$80 
	set byte_367, #0
	set sprite_secondByte_31B, #0
	set byte_31A, #$10
	set objectIdx_318, #4
	set objMapIdx_316, #$26 
	LDX	objMapIdx_316
	set byte_317, {byte_128F59,X}
	JSR	exec_b1_c1_128394
	sub_addr_sec inv_sprite_idx_31C, #$2A 
	mult_a_by_2
	TAY
	sub_addr_sec {byte_129006,Y}, byte_43F
	mult_a_by_4
	STA	tilemapTypeUnk_30B
	LDA	#$80 
	add_to_a tilemapTypeUnk_30B
	STA	byte_36A
	STA	byte_474
	LDA	#0
	ADC	#0
	STA	byte_36B
	set byte_366, #$80 
	set byte_367, #0
	set sprite_secondByte_31B, #0
	set byte_31A, #$18
	set objectIdx_318, #4
	set objMapIdx_316, #$27 
	LDX	objMapIdx_316
	set byte_317, {byte_128F59,X}
	JSR	exec_b1_c1_128394
	RTS
; ---------------------------------------------------------------------------

loc_128BFB:
	set byte_36A, #$80 
	set byte_36B, #0
	set byte_366, #$80 
	set byte_367, #0
	set sprite_secondByte_31B, #0
	set byte_31A, #8
	set objectIdx_318, #4
	set objMapIdx_316, #$28 
	LDX	objMapIdx_316
	set byte_317, {byte_128F59,X}
	JSR	exec_b1_c1_128394
	LDA	byte_43F
	add_to_a #1
	mult_a_by_4
	STA	tilemapTypeUnk_30B
	sub_addr_sec #$80 , tilemapTypeUnk_30B
	STA	byte_36A
	STA	byte_473
	sub_addr #0, #0
	STA	byte_36B
	set byte_366, #$80 
	set byte_367, #0
	set sprite_secondByte_31B, #0
	set byte_31A, #$10
	set objectIdx_318, #4
	set objMapIdx_316, #$26 
	LDX	objMapIdx_316
	set byte_317, {byte_128F59,X}
	JSR	exec_b1_c1_128394
	LDA	byte_43F
	add_to_a #1
	mult_a_by_4
	STA	tilemapTypeUnk_30B
	LDA	#$80 
	add_to_a tilemapTypeUnk_30B
	STA	byte_36A
	STA	byte_474
	LDA	#0
	ADC	#0
	STA	byte_36B
	set byte_366, #$80 
	set byte_367, #0
	set sprite_secondByte_31B, #0
	set byte_31A, #$18
	set objectIdx_318, #4
	set objMapIdx_316, #$27 
	LDX	objMapIdx_316
	set byte_317, {byte_128F59,X}
	JSR	exec_b1_c1_128394
	RTS
; End of function sub_128B43

; =============== S U B	R O U T	I N E =======================================

sub_128CC0:
	if_a_not_equal_cmp_addr byte_543, #0, loc_128CD5
	set byte_31A, #$38 
	set tilemapWidth_308, #$40 
	JSR	sub_12D26B
	RTS
; ---------------------------------------------------------------------------

loc_128CD5:
	set byte_366, #$A0 
	set byte_367, #0
	set byte_36A, ppu_scroll_x_304
	set byte_36B, #0
	add_byte_to_word byte_36A, #$C0 

	set sprite_secondByte_31B, #0
	set byte_31A, #$38 
	set objectIdx_318, #4
	LDA	#$1A
	add_to_a byte_543
	STA	objMapIdx_316
	LDX	objMapIdx_316
	set byte_317, {byte_128F59,X}
	JSR	exec_b1_c1_128394
	RTS
; End of function sub_128CC0

; =============== S U B	R O U T	I N E =======================================

sub_128D20:
	if_a_not_equal_cmp_addr byte_543, #0, loc_128D35
	set byte_31A, #$78 
	set tilemapWidth_308, #8
	JSR	sub_12D26B
	RTS
; ---------------------------------------------------------------------------

loc_128D35:
	LDX	byte_544
	set tilemapTypeUnk_30B, {unk_53B,X}
	JSR	sub_128F1B
	if_a_not_equal_cmp_addr byte_543, #1, loc_128D8F
	set objMapIdx_316, #$33 
	set byte_366, #$C0 
	set byte_367, #0
	set byte_36A, ppu_scroll_x_304
	set byte_36B, #0
	add_byte_to_word byte_36A, #$C8 

	set sprite_secondByte_31B, #0
	set byte_31A, #$78 
	set objectIdx_318, #4
	LDX	objMapIdx_316
	set byte_317, {byte_128F59,X}

loc_128D8B:
	JSR	exec_b1_c1_128394
	RTS
; ---------------------------------------------------------------------------

loc_128D8F:
	LDA	byte_355
	add_to_a #$29 
	STA	objMapIdx_316
	set byte_366, #$C0 
	set byte_367, #0
	set byte_36A, ppu_scroll_x_304
	set byte_36B, #0
	add_byte_to_word byte_36A, #$C8 

	set sprite_secondByte_31B, #0
	set byte_31A, #$78 
	set objectIdx_318, #4
	LDX	objMapIdx_316
	set byte_317, {byte_128F59,X}
	JSR	exec_b1_c1_128394
	LDA	byte_354
	add_to_a #$29 
	STA	objMapIdx_316
	set byte_366, #$C0 
	set byte_367, #0
	set byte_36A, ppu_scroll_x_304
	set byte_36B, #0
	add_byte_to_word byte_36A, #$D0 

	set sprite_secondByte_31B, #0
	set byte_31A, #$7C 
	set objectIdx_318, #4
	LDX	objMapIdx_316
	set byte_317, {byte_128F59,X}
	JSR	exec_b1_c1_128394
	RTS
; End of function sub_128D20

; =============== S U B	R O U T	I N E =======================================

sub_128E24:
	set byte_366, #$A0 
	set byte_367, #0
	set byte_36A, ppu_scroll_x_304
	set byte_36B, #0
	add_byte_to_word byte_36A, #$20 

	set sprite_secondByte_31B, #0
	set byte_31A, #$88 
	set objMapIdx_316, #0
	if_a_greater_cmp_addr byte_549, #$55, loc_128E7D
	if_a_greater_cmp #$AA, loc_128E6C
	set byte_54B, #0
	JMP	loc_128E8B
; ---------------------------------------------------------------------------

loc_128E6C:
	add_byte_to_byte_clc objMapIdx_316, #7
	set byte_54B, #1
	JMP	loc_128E8B
; ---------------------------------------------------------------------------

loc_128E7D:
	add_byte_to_byte_clc objMapIdx_316, #$E
	set byte_54B, #2

loc_128E8B:
	if_a_greater_cmp_addr count_unk_465, #$A, loc_128EA6
	set count_unk_465, #0
	if_a_greater_cmp_addr byte_54C, #6, loc_128EA3
	set byte_54C, #$FF

loc_128EA3:
	INC	byte_54C

loc_128EA6:
	add_byte_to_byte_clc objMapIdx_316, byte_54C
	set objectIdx_318, #4
	LDX	objMapIdx_316
	set byte_317, {byte_128F59,X}
	JSR	exec_b1_c1_128394
	RTS
; End of function sub_128E24

; =============== S U B	R O U T	I N E =======================================

sub_128EC2:
	set byte_366, #$B8 
	set byte_367, #0
	set byte_36A, ppu_scroll_x_304
	set byte_36B, #0
	add_byte_to_word byte_36A, #$20 

	set sprite_secondByte_31B, #0
	set byte_31A, #$B8 
	set objectIdx_318, #4
	LDA	#$15
	add_to_a byte_54B
	STA	objMapIdx_316
	if_a_equal byte_54A, loc_128F0E
	add_byte_to_byte_clc objMapIdx_316, #3

loc_128F0E:
	LDX	objMapIdx_316
	set byte_317, {byte_128F59,X}
	JSR	exec_b1_c1_128394
	RTS
; End of function sub_128EC2

; =============== S U B	R O U T	I N E =======================================

sub_128F1B:
	set byte_354, #0
	STA	byte_355
	STA	byte_356

loc_128F26:
	if_a_greater_cmp_addr tilemapTypeUnk_30B, #$64, loc_128F3C
	sub_byte_sec tilemapTypeUnk_30B, #$64 
	INC	byte_356
	JMP	loc_128F26
; ---------------------------------------------------------------------------

loc_128F3C:
	if_a_greater_cmp_addr tilemapTypeUnk_30B, #$A, loc_128F52
	sub_byte_sec tilemapTypeUnk_30B, #$A
	INC	byte_355
	JMP	loc_128F3C
; ---------------------------------------------------------------------------

loc_128F52:
	set byte_354, tilemapTypeUnk_30B
	RTS
; End of function sub_128F1B

; ---------------------------------------------------------------------------
byte_128F59:.BYTE	0,  0,	0,  0,	0,  0,	0,  1,	1,  1,	1,  1,	1,  1,	2,  2
	
	
	.BYTE	2,  2,	2,  2,	2,  0,	1,  2,	0,  1,	2,  3,	3,  3,	3,  3
	.BYTE	3,  1,	2,  2,	3,  3,	0,  0,	2,  2,	2,  2,	2,  2,	2,  2
	.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
	.BYTE	3,  3,	3,  3,	3,  3,	3,  3,	3,  3,	3,  3,	3,  3,	3,  3
	.BYTE	3,  3,	3,  3,	3,  3,	3,  3,	3,  3,	3,  3,	3,  3,	3,  3
	.BYTE	3,  3,	3,  3,	3,  3,	3,  3

; =============== S U B	R O U T	I N E =======================================

sub_128FC1:
	if_a_greater_cmp_addr count_unk_467, #$32, locret_129004
	set count_unk_467, #0
	LDA	#0
	add_to_a byte_43F
	STA	inv_itemPrev_idx_31D
	set tilemap_size_307, #$B
	set ppu_unk_byte_309, #4
	set byte_36E, #0
	JSR	exec_b4_c2_1283A7
	INC	byte_43F
	sub_addr_sec inv_sprite_idx_31C, #$2A 
	mult_a_by_2
	TAY
	if_a_not_equal_cmp_addr {byte_129006,Y}, byte_43F, locret_129004
	set byte_43F, {byte_129005,Y}
	JSR	sub_129155

locret_129004:
	RTS
; End of function sub_128FC1

; ---------------------------------------------------------------------------
byte_129005:.BYTE	3	
byte_129006:.BYTE	6,  1,	4,  1,	3,  1,	4,  1,	4,  1,	4,  1,	4,  1,	4,  2
	
	
	.BYTE	5,  1,	6

; =============== S U B	R O U T	I N E =======================================

sub_129019:
	if_a_not_equal byte_440, loc_12902C
	set byte_31A, #$C8 
	set tilemapWidth_308, #$38 
	JSR	sub_12D26B
	RTS
; ---------------------------------------------------------------------------

loc_12902C:
	set byte_366, #$40 
	set byte_367, #0
	sub_addr_sec byte_441, #4
	STA	byte_36A
	sub_addr #0, #0
	STA	byte_36B
	set sprite_secondByte_31B, #0
	set byte_31A, #$C8 
	set objectIdx_318, #4
	if_a_equal byte_472, loc_12905F
	LDA	#0
	JMP	loc_129071
; ---------------------------------------------------------------------------

loc_12905F:
	if_a_not_equal_cmp_addr byte_543, #0, loc_129069
	JMP	loc_12908C
; ---------------------------------------------------------------------------

loc_129069:
	sub_addr_sec byte_543, #1
	mult_a_by_4

loc_129071:
	add_to_a #$34 
	add_to_a byte_443
	STA	objMapIdx_316
	set byte_478, #4
	LDX	objMapIdx_316
	set byte_317, {byte_128F59,X}
	JSR	exec_b1_c1_128394

loc_12908C:
	if_a_greater_cmp_addr count_unk_466, #5, locret_1290A8
	set count_unk_466, #0
	INC	byte_443
	if_a_greater_cmp_addr byte_443, byte_478, locret_1290A8
	set byte_440, #0

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
	set sprite_length_30F, #0
	if_a_not_equal byte_472, loc_1290EA
	if_a_equal_cmp_addr byte_543, #1, loc_1290EA
	if_a_not_equal_cmp_addr byte_543, #0, loc_1290DC
	RTS
; ---------------------------------------------------------------------------

loc_1290DC:
	LDX	byte_544
	if_a_not_equal_cmp_addr {unk_53B,X}, #0, loc_1290E7
	RTS
; ---------------------------------------------------------------------------

loc_1290E7:
	DEC	unk_53B,X

loc_1290EA:
	set byte_443, #0
	set byte_440, #$FF
	LDA	ppu_scroll_x_304
	add_to_a byte_203
	STA	byte_441
	set byte_476, #0
	if_a_greater_cmp_addr byte_441, byte_473, loc_129117
	if_a_equal_cmp byte_474, loc_129117
	BCS	loc_129117
	set byte_476, #$FF

loc_129117:
	if_a_not_equal byte_476, loc_129120
	JSR	sub_12ED29
	RTS
; ---------------------------------------------------------------------------

loc_129120:
	JSR	sub_12ED20
	if_a_equal byte_472, loc_12912E
	set sprite_length_30F, #$FE 
	RTS
; ---------------------------------------------------------------------------

loc_12912E:
	JSR	sub_129196
	if_a_greater_cmp_addr byte_475, byte_477, loc_129143
	sub_a_sec byte_477
	STA	byte_475
	JMP	loc_129148
; ---------------------------------------------------------------------------

loc_129143:
	set byte_475, #0

loc_129148:
	if_a_not_equal_cmp_addr byte_475, #0, locret_129154
	set sprite_length_30F, #$FF

locret_129154:
	RTS
; End of function sub_1290C3

; =============== S U B	R O U T	I N E =======================================

sub_129155:
	set scroll_offset_y_47A, #$10
	set is_game_finished_561, #0
	JSR	sub_129186
	if_a_greater_cmp_addr byte_549, byte_477, loc_129174
	sub_a_sec byte_477
	STA	byte_549
	JMP	loc_129179
; ---------------------------------------------------------------------------

loc_129174:
	set byte_549, #0

loc_129179:
	if_a_not_equal_cmp_addr byte_549, #0, locret_129185
	set is_game_finished_561, #$FF

locret_129185:
	RTS
; End of function sub_129155

; =============== S U B	R O U T	I N E =======================================

sub_129186:
	sub_addr_sec inv_sprite_idx_31C, #$2A 
	mult_a_by_2
	TAX
	INX

loc_12918F:
	set byte_477, {byte_129255,X}
	RTS
; End of function sub_129186

; =============== S U B	R O U T	I N E =======================================

sub_129196:
	set byte_477, #0
	if_a_not_equal_cmp_addr byte_476, #$FF, locret_1291F4
	if_a_equal_cmp_addr byte_441, #$80, loc_1291C3
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
	set tilemapTypeUnk_30B, #0

loc_1291C8:
	sub_addr_sec #$14, tilemapTypeUnk_30B
	STA	byte_477
	if_a_not_equal_cmp_addr byte_301, #$9A, loc_1291DE
	set byte_477, byte_543

loc_1291DE:
	LDA	byte_477
	LDY	byte_543
	DEY

loc_1291E5:
	if_y_equal_cmp #0, loc_1291F1
	add_to_a byte_477
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
	if_a_not_equal_cmp_addr {array_unk_3A7,X}, #1, loc_129213
	sub_byte_sec {array_unk_3D9,X}, #8
	sub_byte {array_unk_3CF,X}, #0
	JMP	locret_129254
; ---------------------------------------------------------------------------

loc_129213:
	if_a_not_equal_cmp #0, loc_12922B
	add_to {array_unk_3D9,X}, {array_unk_3CF,X}, #8, #0
	JMP	locret_129254
; ---------------------------------------------------------------------------

loc_12922B:
	if_a_not_equal_cmp #3, loc_129243
	sub_byte_sec {array_unk_3C5,X}, #8
	sub_byte {array_unk_3BB,X}, #0
	JMP	locret_129254
; ---------------------------------------------------------------------------

loc_129243:
	add_to {array_unk_3C5,X}, {array_unk_3BB,X}, #8, #0

locret_129254:
	RTS
; End of function sub_1291F5

; ---------------------------------------------------------------------------
byte_129255:.BYTE $78,$1E	
	
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
	if_x_not_equal_cmp #$AC , loc_12A64A

	set_ptr off_129269

	set data_2, entry_idx_300
	set data_3, #0
	mult_word_by_2 data_2

	add_word_to_word ptr_0, data_2

	LDY	#0
	set_iny data_2, {(ptr_0),Y}
	set data_3, {(ptr_0),Y}
	LDY	#0
	set objArraySize_373, {(data_2),Y}
	if_a_not_equal_cmp #0, loc_12A68B
	RTS
; ---------------------------------------------------------------------------

loc_12A68B:
	add_word_to_word_imm data_2, $1

	set inv_spr_dscr1_30C, #0

loc_12A69D:
	a_to_stack data_2
	a_to_stack data_3
	LDA	inv_spr_dscr1_30C
	mult_a_by_2
	add_to_a data_2
	STA	data_2
	add_byte_to_byte data_3, #0

	LDY	#0
	set_iny ptr_0, {(data_2),Y}
	set ptr_1, {(data_2),Y}
	LDX	inv_spr_dscr1_30C
	LDY	#0
	set_iny {array_unk_3C5,X}, {(ptr_0),Y}
	set_iny {array_unk_3BB,X}, {(ptr_0),Y}
	set_iny {array_unk_3D9,X}, {(ptr_0),Y}
	set_iny {array_unk_3CF,X}, {(ptr_0),Y}
	set_iny {objIdxArray_375,X}, {(ptr_0),Y}
	set_iny {array_unk_39D,X}, {(ptr_0),Y}
	if_a_not_equal_cmp_addr entry_idx_300, #$65, loc_12A70C
	if_a_not_equal_cmp_addr {objIdxArray_375,X}, #3, loc_12A70C
	set {array_unk_3C5,X}, byte_567
	set {array_unk_3BB,X}, byte_568
	set {array_unk_3D9,X}, byte_569
	set {array_unk_3CF,X}, byte_56A

loc_12A70C:
	if_a_not_equal_cmp_addr entry_idx_300, #$3C, loc_12A732
	if_a_not_equal_cmp_addr {objIdxArray_375,X}, #3, loc_12A732
	set {array_unk_3C5,X}, byte_56B
	set {array_unk_3BB,X}, byte_56C
	set {array_unk_3D9,X}, byte_56D
	set {array_unk_3CF,X}, byte_56E

loc_12A732:
	if_a_not_equal_cmp_addr entry_idx_300, #$5C, loc_12A758
	if_a_not_equal_cmp_addr {objIdxArray_375,X}, #3, loc_12A758
	set {array_unk_3C5,X}, byte_56F
	set {array_unk_3BB,X}, byte_570
	set {array_unk_3D9,X}, byte_571
	set {array_unk_3CF,X}, byte_572

loc_12A758:
	if_a_not_equal_cmp_addr entry_idx_300, #$93, loc_12A79E
	if_a_not_equal_cmp_addr {objIdxArray_375,X}, #3, loc_12A79E
	if_a_equal_cmp_addr byte_56F, #$40, loc_12A786
	BCS	loc_12A786
	if_a_equal_cmp_addr byte_571, #$50, loc_12A781
	if_a_equal_cmp #$60, loc_12A781
	if_a_equal_cmp #$70, loc_12A781
	JMP	loc_12A786
; ---------------------------------------------------------------------------

loc_12A781:
	set byte_56F, #$40 

loc_12A786:
	set {array_unk_3C5,X}, byte_56F
	set {array_unk_3BB,X}, byte_570
	set {array_unk_3D9,X}, byte_571
	set {array_unk_3CF,X}, byte_572

loc_12A79E:
	if_a_not_equal_cmp_addr entry_idx_300, #$5D, loc_12A7F7
	if_a_not_equal_cmp_addr {objIdxArray_375,X}, #3, loc_12A7F7
	if_a_not_equal_cmp_addr byte_573, #$90, loc_12A7CB
	if_a_not_equal_cmp_addr byte_574, #1, loc_12A7CB
	if_a_not_equal_cmp_addr byte_575, #$B0, loc_12A7CB
	if_a_not_equal_cmp_addr byte_576, #0, loc_12A7CB
	JMP	loc_12A7DF
; ---------------------------------------------------------------------------

loc_12A7CB:
	set byte_573, #0
	set byte_574, #1
	set byte_575, #$60 
	set byte_576, #0

loc_12A7DF:
	set {array_unk_3C5,X}, byte_573
	set {array_unk_3BB,X}, byte_574
	set {array_unk_3D9,X}, byte_575
	set {array_unk_3CF,X}, byte_576

loc_12A7F7:
	if_a_not_equal_cmp_addr {objIdxArray_375,X}, #6, loc_12A809
	set {obj_array_unk_415,X}, {array_unk_39D,X}
	set {array_unk_39D,X}, #0

loc_12A809:
	if_a_not_equal_cmp_addr {objIdxArray_375,X}, #7, loc_12A81B
	set {obj_array_unk_415,X}, {array_unk_39D,X}
	set {array_unk_39D,X}, #0

loc_12A81B:
	TYA
	add_to_a ptr_0
	STA	data_2
	LDA	ptr_1
	ADC	#0
	STA	data_3
	JSR	sub_12A893
	if_a_not_equal_cmp_addr byte_36F, #0, loc_12A839
	LDX	inv_spr_dscr1_30C
	set {objCreatedArray_393,X}, #$FF

loc_12A839:
	from_stack_to_a data_3
	from_stack_to_a data_2
	INC	inv_spr_dscr1_30C
	if_a_equal_cmp_addr inv_spr_dscr1_30C, objArraySize_373, loc_12A84D
	JMP	loc_12A69D
; ---------------------------------------------------------------------------

loc_12A84D:
	if_a_not_equal_cmp_addr entry_idx_300, #$6A, locret_12A892
	if_a_not_equal_cmp_addr byte_577, #$FF, loc_12A88D
	LDY	#0
	LDX	#0

loc_12A85F:
	if_a_equal_cmp_addr {objIdxArray_375,X}, #3, loc_12A86D
	INX
	if_x_greater_cmp objArraySize_373, loc_12A85F
	RTS
; ---------------------------------------------------------------------------

loc_12A86D:
	set {array_unk_3C5,X}, {byte_578,Y}
	set {array_unk_3BB,X}, {byte_57B,Y}
	set {array_unk_3D9,X}, {byte_57E,Y}
	set_iny {array_unk_3CF,X}, {byte_581,Y}
	INX
	if_x_greater_cmp objArraySize_373, loc_12A85F
	RTS
; ---------------------------------------------------------------------------

loc_12A88D:
	set byte_577, #0

locret_12A892:
	RTS
; End of function com_29_start_new_game_12A646

; =============== S U B	R O U T	I N E =======================================

sub_12A893:
	set byte_36F, #0
	STA	byte_370
	STA	byte_371
	y_to_stack
	a_to_stack ptr_0
	a_to_stack ptr_1
	a_to_stack tilemapTypeUnk_30B
	a_to_stack inv_spr_dscr1_30C
	LDY	#0
	set tilemapTypeUnk_30B, {(data_2),Y}
	if_a_not_equal_cmp #0, loc_12A8C1
	set byte_36F, #$FF
	JMP	loc_12A933
; ---------------------------------------------------------------------------

loc_12A8C1:
	add_word_to_word_imm data_2, $1

	set inv_spr_dscr1_30C, #0

loc_12A8D3:
	LDA	inv_spr_dscr1_30C
	mult_a_by_2
	TAY
	set_iny ptr_0, {(data_2),Y}
	set ptr_1, {(data_2),Y}
	LDY	#0

loc_12A8E3:
	set_iny tilemapFrameCount_30D, {(ptr_0),Y}
	set_iny byte_30E, {(ptr_0),Y}
	if_a_not_equal_cmp_addr tilemapFrameCount_30D, #$FF, loc_12A8FD
	if_a_equal_cmp_addr tilemapFrameCount_30D, #$FF, loc_12A91F

loc_12A8FD:
	add_word_to_word byte_370, tilemapFrameCount_30D

	JSR	sub_12A944
	or_byte byte_36F, tilemapFrameCount_30D
	JMP	loc_12A8E3
; ---------------------------------------------------------------------------

loc_12A91F:
	and_byte byte_36F, tilemapFrameCount_30D
	INC	inv_spr_dscr1_30C
	if_a_greater_cmp_addr inv_spr_dscr1_30C, tilemapTypeUnk_30B, loc_12A8D3

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

	set_ptr byte_598

	add_word_to_word ptr_0, tilemapFrameCount_30D

	LDY	#0
	set tilemapFrameCount_30D, {(ptr_0),Y}
	from_stack_to_y
	from_stack_to_a ptr_1
	from_stack_to_a ptr_0
	RTS
; End of function sub_12A944

; =============== S U B	R O U T	I N E =======================================

exec_b0_c0_12A973:
	a_to_stack bank_from_343
	set bank_command_346, #0
	set bank_to_344, #code_0
	set bank_from_343, #$12
	JSR	bank_switch_8000
	from_stack_to_a bank_from_343
	RTS
; End of function exec_b0_c0_12A973

; =============== S U B	R O U T	I N E =======================================

exec_b0_c1_12A98E:
	a_to_stack bank_from_343
	set bank_command_346, #1
	set bank_to_344, #code_0
	set bank_from_343, #$12
	JSR	bank_switch_8000
	from_stack_to_a bank_from_343
	RTS
; End of function exec_b0_c1_12A98E

; =============== S U B	R O U T	I N E =======================================

exec_b0_c2_12A9A9:
	a_to_stack bank_from_343
	set bank_command_346, #2
	set bank_to_344, #code_0
	set bank_from_343, #$12
	JSR	bank_switch_8000
	from_stack_to_a bank_from_343
	RTS
; End of function exec_b0_c2_12A9A9

; =============== S U B	R O U T	I N E =======================================

com_17_player_update_12A9C4:
	if_a_not_equal_cmp_addr entry_idx_300, #$46, loc_12AA0E
	if_a_not_equal_cmp_addr byte_560, #$FF, locret_12AA0D
	if_a_not_equal_cmp_addr byte_355, #0, locret_12AA0D
	if_a_not_equal_cmp_addr byte_354, #0, locret_12AA0D
	if_a_not_equal_cmp_addr byte_356, #0, locret_12AA0D
	set byte_354, #$A
	set byte_355, #0
	STA	byte_356
	load_a_masked byte_54B, #$F
	ORA	#$F0 
	STA	byte_54B
	INC	byte_54B
	if_a_greater_cmp_addr byte_54B, #$F2, locret_12AA0D

set_game_finished_12AA08:
	set is_game_finished_561, #$FF

locret_12AA0D:
	RTS
; ---------------------------------------------------------------------------

loc_12AA0E:
	if_a_not_equal_cmp_addr entry_idx_300, #$41, loc_12AA1B
	set byte_560, #0
	RTS
; ---------------------------------------------------------------------------

loc_12AA1B:
	if_a_equal_cmp_addr entry_idx_300, #$2F, locret_12AA6C
	if_a_equal_cmp_addr entry_idx_300, #$5C, locret_12AA6C
	if_a_equal_cmp #$93, locret_12AA6C
	if_a_not_equal_cmp_addr byte_56F, #$B0, loc_12AA3E
	if_a_not_equal_cmp_addr byte_571, #$60, loc_12AA3E
	JMP	loc_12AA52
; ---------------------------------------------------------------------------

loc_12AA3E:
	set byte_56F, #$20 
	set byte_570, #0
	set byte_571, #$A0 
	set byte_572, #0

loc_12AA52:
	set byte_555, #0
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
	if_a_not_equal_cmp_addr entry_idx_300, #$83, check_room_7D_12AA81
	if_a_equal_cmp_addr byte_595, #0, locret_12AA80
	set entry_idx_300, #$96 

locret_12AA80:
	RTS
; ---------------------------------------------------------------------------

check_room_7D_12AA81:
	if_a_not_equal_cmp_addr entry_idx_300, #$7D, check_room_95_12AA95
	if_a_equal_cmp_addr byte_594, #0, locret_12AA94
	set entry_idx_300, #$95 

locret_12AA94:
	RTS
; ---------------------------------------------------------------------------

check_room_95_12AA95:
	if_a_not_equal_cmp_addr entry_idx_300, #$95, check_room_76_12AAA9
	if_a_not_equal_cmp_addr byte_594, #0, locret_12AAA8
	set entry_idx_300, #$7D 

locret_12AAA8:
	RTS
; ---------------------------------------------------------------------------

check_room_76_12AAA9:
	if_a_not_equal_cmp_addr entry_idx_300, #$76, check_room_94_12AABD
	if_a_equal_cmp_addr byte_593, #0, locret_12AABC
	set entry_idx_300, #$94 

locret_12AABC:
	RTS
; ---------------------------------------------------------------------------

check_room_94_12AABD:
	if_a_not_equal_cmp_addr entry_idx_300, #$94, check_room_53_12AAD1
	if_a_not_equal_cmp_addr byte_593, #0, locret_12AAD0
	set entry_idx_300, #$76 

locret_12AAD0:
	RTS
; ---------------------------------------------------------------------------

check_room_53_12AAD1:
	if_a_not_equal_cmp_addr entry_idx_300, #$53, check_room_90_12AAE5
	if_a_not_equal_cmp_addr byte_58C, #$FF, locret_12AAE4
	set entry_idx_300, #$90 

locret_12AAE4:
	RTS
; ---------------------------------------------------------------------------

check_room_90_12AAE5:
	if_a_not_equal_cmp_addr entry_idx_300, #$90, check_room_3D_12AAF9
	if_a_equal_cmp_addr byte_58C, #$FF, locret_12AAF8
	set entry_idx_300, #$53 

locret_12AAF8:
	RTS
; ---------------------------------------------------------------------------

check_room_3D_12AAF9:
	if_a_not_equal_cmp_addr entry_idx_300, #$3D, check_room_44_12AB0D
	if_a_not_equal_cmp_addr byte_58A, #$FF, locret_12AB0C
	set entry_idx_300, #$8B 

locret_12AB0C:
	RTS
; ---------------------------------------------------------------------------

check_room_44_12AB0D:
	if_a_not_equal_cmp_addr entry_idx_300, #$44, check_room_9C_12AB21
	if_a_equal_cmp_addr byte_58B, #0, locret_12AB20
	set entry_idx_300, #$9C 

locret_12AB20:
	RTS
; ---------------------------------------------------------------------------

check_room_9C_12AB21:
	if_a_not_equal_cmp_addr entry_idx_300, #$9C, check_room_38_12AB35
	if_a_not_equal_cmp_addr byte_58B, #0, locret_12AB34
	set entry_idx_300, #$44 

locret_12AB34:
	RTS
; ---------------------------------------------------------------------------

check_room_38_12AB35:
	if_a_not_equal_cmp_addr entry_idx_300, #$38, check_room_8A_12AB49
	if_a_equal_cmp_addr byte_589, #0, locret_12AB48
	set entry_idx_300, #$8A 

locret_12AB48:
	RTS
; ---------------------------------------------------------------------------

check_room_8A_12AB49:
	if_a_not_equal_cmp_addr entry_idx_300, #$8A, check_room_2F_12AB5D
	if_a_equal_cmp_addr byte_589, #$FF, locret_12AB5C
	set entry_idx_300, #$38 

locret_12AB5C:
	RTS
; ---------------------------------------------------------------------------

check_room_2F_12AB5D:
	if_a_not_equal_cmp_addr entry_idx_300, #$2F, check_room_1A_12AB71
	if_a_equal_cmp_addr byte_55B, #0, check_room_1A_12AB71
	set entry_idx_300, #$89 
	RTS
; ---------------------------------------------------------------------------

check_room_1A_12AB71:
	if_a_not_equal_cmp_addr entry_idx_300, #$1A, check_room_17_12AB85
	if_a_equal_cmp_addr byte_55F, #0, check_room_17_12AB85
	set entry_idx_300, #$86 
	RTS
; ---------------------------------------------------------------------------

check_room_17_12AB85:
	if_a_not_equal_cmp_addr entry_idx_300, #$17, check_room_4F_12AB99
	if_a_equal_cmp_addr byte_5A9, #0, check_room_4F_12AB99
	set entry_idx_300, #$85 
	RTS
; ---------------------------------------------------------------------------

check_room_4F_12AB99:
	if_a_not_equal_cmp_addr entry_idx_300, #$4F, check_room_50_12ABAD
	if_a_equal_cmp_addr byte_565, #0, check_room_50_12ABAD
	set entry_idx_300, #$8D 
	RTS
; ---------------------------------------------------------------------------

check_room_50_12ABAD:
	if_a_not_equal_cmp_addr entry_idx_300, #$50, check_room_8D_12ABC1
	if_a_not_equal_cmp_addr byte_565, #0, check_room_8D_12ABC1
	set entry_idx_300, #$8E 
	RTS
; ---------------------------------------------------------------------------

check_room_8D_12ABC1:
	if_a_not_equal_cmp_addr entry_idx_300, #$8D, check_room_8E_12ABD5
	if_a_not_equal_cmp_addr byte_565, #0, check_room_8E_12ABD5
	set entry_idx_300, #$4F 
	RTS
; ---------------------------------------------------------------------------

check_room_8E_12ABD5:
	if_a_not_equal_cmp_addr entry_idx_300, #$8E, check_room_60_12ABE9
	if_a_equal_cmp_addr byte_565, #0, check_room_60_12ABE9
	set entry_idx_300, #$50 
	RTS
; ---------------------------------------------------------------------------

check_room_60_12ABE9:
	if_a_not_equal_cmp_addr entry_idx_300, #$60, check_room_6B_12ABFD
	if_a_equal_cmp_addr byte_566, #0, check_room_6B_12ABFD
	set entry_idx_300, #$97 
	RTS
; ---------------------------------------------------------------------------

check_room_6B_12ABFD:
	if_a_not_equal_cmp_addr entry_idx_300, #$6B, check_room_67_12AC11
	if_a_equal_cmp_addr byte_585, #0, check_room_67_12AC11
	set entry_idx_300, #$99 
	RTS
; ---------------------------------------------------------------------------

check_room_67_12AC11:
	if_a_not_equal_cmp_addr entry_idx_300, #$67, check_room_69_12AC25
	if_a_equal_cmp_addr byte_586, #0, check_room_69_12AC25
	set entry_idx_300, #$9B 
	RTS
; ---------------------------------------------------------------------------

check_room_69_12AC25:
	if_a_not_equal_cmp_addr entry_idx_300, #$69, check_room_1C_12AC39
	if_a_equal_cmp_addr byte_587, #0, check_room_1C_12AC39
	set entry_idx_300, #$98 
	RTS
; ---------------------------------------------------------------------------

check_room_1C_12AC39:
	if_a_not_equal_cmp_addr entry_idx_300, #$1C, check_room_57_12AC4D
	if_a_equal_cmp_addr byte_588, #0, check_room_57_12AC4D
	set entry_idx_300, #$87 
	RTS
; ---------------------------------------------------------------------------

check_room_57_12AC4D:
	if_a_not_equal_cmp_addr entry_idx_300, #$57, check_room_91_12AC61
	if_a_not_equal_cmp_addr byte_646, #0, check_room_91_12AC61
	set entry_idx_300, #$91 
	RTS
; ---------------------------------------------------------------------------

check_room_91_12AC61:
	if_a_not_equal_cmp_addr entry_idx_300, #$91, check_room_5B_12AC75
	if_a_equal_cmp_addr byte_646, #0, check_room_5B_12AC75
	set entry_idx_300, #$57 
	RTS
; ---------------------------------------------------------------------------

check_room_5B_12AC75:
	if_a_not_equal_cmp_addr entry_idx_300, #$5B, check_room_5C_12AC89
	if_a_equal_cmp_addr byte_58F, #0, check_room_5C_12AC89
	set entry_idx_300, #$92 
	RTS
; ---------------------------------------------------------------------------

check_room_5C_12AC89:
	if_a_not_equal_cmp_addr entry_idx_300, #$5C, check_room_92_12AC9D
	if_a_equal_cmp_addr byte_590, #0, check_room_92_12AC9D
	set entry_idx_300, #$93 
	RTS
; ---------------------------------------------------------------------------

check_room_92_12AC9D:
	if_a_not_equal_cmp_addr entry_idx_300, #$92, check_room_93_12ACB1
	if_a_not_equal_cmp_addr byte_58F, #0, check_room_93_12ACB1
	set entry_idx_300, #$5B 
	RTS
; ---------------------------------------------------------------------------

check_room_93_12ACB1:
	if_a_not_equal_cmp_addr entry_idx_300, #$93, check_room_52_12ACC5
	if_a_not_equal_cmp_addr byte_590, #0, check_room_52_12ACC5
	set entry_idx_300, #$5C 
	RTS
; ---------------------------------------------------------------------------

check_room_52_12ACC5:
	if_a_not_equal_cmp_addr entry_idx_300, #$52, locret_12ACDA
	load_a_masked byte_591, byte_592
	BEQ	locret_12ACDA
	set entry_idx_300, #$8F 
	RTS
; ---------------------------------------------------------------------------

locret_12ACDA:
	RTS
; End of function entry_idx_handler_unk_12AA6D

; =============== S U B	R O U T	I N E =======================================

sub_12ACDB:
	LDA	byte_46E

is_save_game_12ACDE:
	if_a_not_equal_cmp #$1A, loc_12ACE6
	JSR	com_E_load_game_12CD30
	RTS
; ---------------------------------------------------------------------------

loc_12ACE6:
	if_a_not_equal_cmp_addr byte_46E, #$2F, loc_12AD06
	set byte_6A6, #$FF
	STA	byte_6A7
	set cur_obj_idx_unk_43A, #1
	JSR	sub_12BF29
	set cur_obj_idx_unk_43A, #2
	JSR	sub_12BF29
	RTS
; ---------------------------------------------------------------------------

loc_12AD06:
	if_a_not_equal_cmp_addr byte_46E, #$30, loc_12AD65
	if_a_not_equal_cmp_addr entry_idx_300, #$77, loc_12AD27
	set byte_68D, #$FF
	LDX	byte_4D0
	set {unk_4C2,X}, #$4D 
	INC	byte_4D0
	JMP	loc_12AD58
; ---------------------------------------------------------------------------

loc_12AD27:
	if_a_not_equal_cmp_addr entry_idx_300, #$7B, loc_12AD41
	set byte_68E, #$FF
	LDX	byte_4D0
	set {unk_4C2,X}, #$4E 
	INC	byte_4D0
	JMP	loc_12AD58
; ---------------------------------------------------------------------------

loc_12AD41:
	if_a_not_equal_cmp_addr entry_idx_300, #$80, locret_12AD64
	set byte_68F, #$FF
	LDX	byte_4D0
	set {unk_4C2,X}, #$4F 
	INC	byte_4D0

loc_12AD58:
	load_a_masked byte_68D, byte_68E
	AND	byte_68F
	STA	byte_6A4

locret_12AD64:
	RTS
; ---------------------------------------------------------------------------

loc_12AD65:
	if_a_not_equal_cmp_addr byte_46E, #$27, loc_12ADA0
	set byte_591, #$FF
	load_a_masked byte_591, byte_592
	if_a_equal_cmp #0, locret_12AD9F
	JSR	entry_idx_handler_unk_12AA6D
	set image_id_4A4, entry_idx_300
	set image_offset_4A5, ppu_unk_byte_302
	set ppu_prev_unk_4A6, ppu_unk_byte_303
	set ppu_prev_scroll_x_unk_4A7, ppu_scroll_x_304
	set ppu_prev_scroll_y_unk_4A8, ppu_scroll_y_305
	JSR	exec_b0_c2_12A9A9

locret_12AD9F:
	RTS
; ---------------------------------------------------------------------------

loc_12ADA0:
	if_a_not_equal_cmp_addr byte_46E, #$28, loc_12ADDB
	set byte_592, #$FF
	load_a_masked byte_591, byte_592
	if_a_equal_cmp #0, locret_12ADDA
	JSR	entry_idx_handler_unk_12AA6D
	set image_id_4A4, entry_idx_300
	set image_offset_4A5, ppu_unk_byte_302
	set ppu_prev_unk_4A6, ppu_unk_byte_303
	set ppu_prev_scroll_x_unk_4A7, ppu_scroll_x_304
	set ppu_prev_scroll_y_unk_4A8, ppu_scroll_y_305
	JSR	exec_b0_c2_12A9A9

locret_12ADDA:
	RTS
; ---------------------------------------------------------------------------

loc_12ADDB:
	if_a_not_equal_cmp_addr byte_46E, #$39, loc_12ADE8
	set byte_587, #$FF
	RTS
; ---------------------------------------------------------------------------

loc_12ADE8:
	if_a_not_equal_cmp_addr byte_46E, #0, loc_12ADF5
	set byte_64C, #$FF
	RTS
; ---------------------------------------------------------------------------

loc_12ADF5:
	if_a_not_equal_cmp_addr byte_46E, #$15, loc_12AE02
	set byte_59B, #$FF
	RTS
; ---------------------------------------------------------------------------

loc_12AE02:
	if_a_not_equal_cmp_addr byte_46E, #$16, loc_12AE0F
	set byte_59C, #$FF
	RTS
; ---------------------------------------------------------------------------

loc_12AE0F:
	if_a_not_equal_cmp_addr byte_46E, #$2A, loc_12AE6C
	if_a_equal_cmp_addr entry_idx_300, #$53, loc_12AE3F
	if_a_equal_cmp #$90, loc_12AE3F
	if_a_equal_cmp #$5C, loc_12AE34
	if_a_equal_cmp #$93, loc_12AE34
	xor_byte byte_58F, #$FF
	JMP	loc_12AE47
; ---------------------------------------------------------------------------

loc_12AE34:
	xor_byte byte_590, #$FF
	JMP	loc_12AE47
; ---------------------------------------------------------------------------

loc_12AE3F:
	xor_byte byte_58C, #$FF

loc_12AE47:
	JSR	entry_idx_handler_unk_12AA6D
	set image_id_4A4, entry_idx_300
	set image_offset_4A5, ppu_unk_byte_302
	set ppu_prev_unk_4A6, ppu_unk_byte_303
	set ppu_prev_scroll_x_unk_4A7, ppu_scroll_x_304
	set ppu_prev_scroll_y_unk_4A8, ppu_scroll_y_305
	JSR	exec_b0_c2_12A9A9
	RTS
; ---------------------------------------------------------------------------

loc_12AE6C:
	if_a_equal_cmp_addr byte_46E, #$2E, loc_12AE76
	JMP	loc_12AF01
; ---------------------------------------------------------------------------

loc_12AE76:
	if_a_equal_cmp_addr entry_idx_300, #$70, loc_12AE86
	set byte_636, #$FF
	STA	byte_633
	RTS
; ---------------------------------------------------------------------------

loc_12AE86:
	set byte_6CA, #$FF
	set byte_313, #1
	JSR	exec_b0_c9_1284AA
	set text_idx_35C, #$81 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #2
	JSR	exec_b0_c0_12A973
	set tilemapData_4C, #1
	set roomUnk1_4D, #1
	set roomUnk2_4E, #3
	set tilemap_line_idx_4F, #3
	JSR	exec_b0_cB_1284E0
	set tilemapData_4C, #1
	set roomUnk1_4D, #1
	set roomUnk2_4E, #3
	set tilemap_line_idx_4F, #1
	JSR	exec_b0_cB_1284E0
	set text_idx_35C, #$84 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #6
	JSR	exec_b0_c0_12A973

set_helipad_level_12AEDD:
	set image_id_4A4, #$9A 
	set image_offset_4A5, #0
	STA	ppu_prev_unk_4A6
	STA	ppu_prev_scroll_x_unk_4A7
	STA	ppu_prev_scroll_y_unk_4A8
	STA	prev_sprite_type_4A9
	set byte_4AD, #$40 
	set byte_4AE, #$50 
	JSR	exec_b0_c2_12A9A9
	RTS
; ---------------------------------------------------------------------------

loc_12AF01:
	if_a_not_equal_cmp_addr byte_46E, #2, loc_12AF16
	set byte_5EF, #$FF
	set cur_obj_idx_unk_43A, #0
	JSR	sub_12BF29
	RTS
; ---------------------------------------------------------------------------

loc_12AF16:
	if_a_not_equal_cmp_addr byte_46E, #$3B, loc_12AF2B
	set byte_5F9, #$FF
	set cur_obj_idx_unk_43A, #0
	JSR	sub_12BF29
	RTS
; ---------------------------------------------------------------------------

loc_12AF2B:
	if_a_not_equal_cmp_addr byte_46E, #$2C, loc_12AF69
	set byte_5E7, #0
	set cur_obj_idx_unk_43A, #8
	JSR	exec_b0_c3_128418
	set cur_obj_idx_unk_43A, #9
	JSR	exec_b0_c3_128418
	set image_id_4A4, entry_idx_300
	set image_offset_4A5, ppu_unk_byte_302
	set ppu_prev_unk_4A6, ppu_unk_byte_303
	set ppu_prev_scroll_x_unk_4A7, ppu_scroll_x_304
	set ppu_prev_scroll_y_unk_4A8, ppu_scroll_y_305
	JSR	exec_b0_c2_12A9A9
	RTS
; ---------------------------------------------------------------------------

loc_12AF69:
	if_a_not_equal_cmp_addr byte_46E, #$24, loc_12AF9A
	set byte_586, #$FF
	JSR	entry_idx_handler_unk_12AA6D
	set image_id_4A4, entry_idx_300
	set image_offset_4A5, ppu_unk_byte_302
	set ppu_prev_unk_4A6, ppu_unk_byte_303
	set ppu_prev_scroll_x_unk_4A7, ppu_scroll_x_304
	set ppu_prev_scroll_y_unk_4A8, ppu_scroll_y_305
	JSR	exec_b0_c2_12A9A9
	RTS
; ---------------------------------------------------------------------------

loc_12AF9A:
	if_a_not_equal_cmp_addr byte_46E, #$17, loc_12AFA7
	set byte_5CB, #$FF
	RTS
; ---------------------------------------------------------------------------

loc_12AFA7:
	if_a_not_equal_cmp_addr byte_46E, #$18, loc_12AFB4
	set byte_59D, #$FF
	RTS
; ---------------------------------------------------------------------------

loc_12AFB4:
	if_a_not_equal_cmp_addr byte_46E, #$13, loc_12AFC1
	set byte_599, #$FF
	RTS
; ---------------------------------------------------------------------------

loc_12AFC1:
	if_a_not_equal_cmp_addr byte_46E, #$14, loc_12AFCE
	set byte_59A, #$FF
	RTS
; ---------------------------------------------------------------------------

loc_12AFCE:
	if_a_not_equal_cmp_addr byte_46E, #$22, loc_12AFE3
	set byte_5D9, #$FF
	set cur_obj_idx_unk_43A, #0
	JSR	sub_12BF29
	RTS
; ---------------------------------------------------------------------------

loc_12AFE3:
	if_a_not_equal_cmp_addr byte_46E, #$23, loc_12AFF8
	set byte_5B3, #$FF
	set cur_obj_idx_unk_43A, #1
	JSR	sub_12BF29
	RTS
; ---------------------------------------------------------------------------

loc_12AFF8:
	if_a_not_equal_cmp_addr byte_46E, #$2D, loc_12B03B
	set text_idx_35C, #$BC 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	set byte_55F, #$FF
	JSR	entry_idx_handler_unk_12AA6D
	set image_id_4A4, entry_idx_300
	set image_offset_4A5, ppu_unk_byte_302
	set ppu_prev_unk_4A6, ppu_unk_byte_303
	set ppu_prev_scroll_x_unk_4A7, ppu_scroll_x_304
	set ppu_prev_scroll_y_unk_4A8, ppu_scroll_y_305
	JSR	exec_b0_c2_12A9A9
	RTS
; ---------------------------------------------------------------------------

loc_12B03B:
	if_a_not_equal_cmp #$1C, loc_12B074
	if_a_equal_cmp_addr entry_idx_300, #$1E, loc_12B054
	set byte_5A8, #$FF
	set cur_obj_idx_unk_43A, #0
	JSR	sub_12BF29
	RTS
; ---------------------------------------------------------------------------

loc_12B054:
	set byte_5BD, #$FF
	set cur_obj_idx_unk_43A, #7
	JSR	sub_12BF29
	set text_idx_35C, #6
	set char_type_id_35D, #2
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; ---------------------------------------------------------------------------

loc_12B074:
	if_a_not_equal_cmp #$1D, loc_12B0E2
	if_a_equal_cmp_addr entry_idx_300, #$1E, loc_12B0C2
	set byte_5A9, #$FF
	set cur_obj_idx_unk_43A, #2
	if_a_equal_cmp_addr entry_idx_300, #$17, loc_12B095
	set cur_obj_idx_unk_43A, #1

loc_12B095:
	JSR	sub_12BF29
	set byte_5BE, #$FF
	JSR	entry_idx_handler_unk_12AA6D
	set image_id_4A4, entry_idx_300
	set image_offset_4A5, ppu_unk_byte_302
	set ppu_prev_unk_4A6, ppu_unk_byte_303
	set ppu_prev_scroll_x_unk_4A7, ppu_scroll_x_304
	set ppu_prev_scroll_y_unk_4A8, ppu_scroll_y_305
	JSR	exec_b0_c2_12A9A9
	RTS
; ---------------------------------------------------------------------------

loc_12B0C2:
	set byte_5BC, #$FF
	set cur_obj_idx_unk_43A, #6
	JSR	sub_12BF29
	set text_idx_35C, #6
	set char_type_id_35D, #2
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; ---------------------------------------------------------------------------

loc_12B0E2:
	if_a_not_equal_cmp #$1B, loc_12B106
	set text_idx_35C, #6
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #4
	JSR	exec_b0_c0_12A973
	set byte_545, #1
	set byte_562, #$FF
	STA	byte_6C7
	RTS
; ---------------------------------------------------------------------------

loc_12B106:
	if_a_not_equal_cmp #$1E, loc_12B11F
	set byte_59F, #$FF
	load_a_masked byte_59F, byte_5A0
	AND	byte_5A1
	AND	byte_5A2
	STA	byte_6C8
	RTS
; ---------------------------------------------------------------------------

loc_12B11F:
	if_a_not_equal_cmp #$1F, loc_12B138
	set byte_5A0, #$FF
	load_a_masked byte_59F, byte_5A0
	AND	byte_5A1
	AND	byte_5A2
	STA	byte_6C8
	RTS
; ---------------------------------------------------------------------------

loc_12B138:
	if_a_not_equal_cmp #$20, loc_12B151
	set byte_5A1, #$FF
	load_a_masked byte_59F, byte_5A0
	AND	byte_5A1
	AND	byte_5A2
	STA	byte_6C8
	RTS
; ---------------------------------------------------------------------------

loc_12B151:
	if_a_not_equal_cmp #$21, loc_12B16A
	set byte_5A2, #$FF
	load_a_masked byte_59F, byte_5A0
	AND	byte_5A1
	AND	byte_5A2
	STA	byte_6C8
	RTS
; ---------------------------------------------------------------------------

loc_12B16A:
	if_a_not_equal_cmp #$29, locret_12B1AF
	if_a_not_equal_cmp_addr entry_idx_300, #$4F, loc_12B17D
	set byte_565, #$FF
	JMP	loc_12B18A
; ---------------------------------------------------------------------------

loc_12B17D:
	if_a_not_equal_cmp #$8D, locret_12B189
	set byte_565, #0
	JMP	loc_12B18A
; ---------------------------------------------------------------------------

locret_12B189:
	RTS
; ---------------------------------------------------------------------------

loc_12B18A:
	JSR	entry_idx_handler_unk_12AA6D
	set image_id_4A4, entry_idx_300
	set image_offset_4A5, ppu_unk_byte_302
	set ppu_prev_unk_4A6, ppu_unk_byte_303
	set ppu_prev_scroll_x_unk_4A7, ppu_scroll_x_304
	set ppu_prev_scroll_y_unk_4A8, ppu_scroll_y_305
	JSR	exec_b0_c2_12A9A9
	RTS
; ---------------------------------------------------------------------------

locret_12B1AF:
	RTS
; End of function sub_12ACDB

; =============== S U B	R O U T	I N E =======================================

sub_12B1B0:
	if_a_equal_cmp_addr byte_471, #0, loc_12B1B8
	RTS
; ---------------------------------------------------------------------------

loc_12B1B8:
	set text_idx_35C, #$AA 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; End of function sub_12B1B0

; =============== S U B	R O U T	I N E =======================================

sub_12B1CB:
	LDY	#0
	LDX	#0

loc_12B1CF:
	if_a_equal {byte_555,X}, loc_12B1D5
	INY

loc_12B1D5:
	INX
	if_x_greater_cmp #6, loc_12B1CF
	INY
	RTS
; End of function sub_12B1CB

; ---------------------------------------------------------------------------
byte_12B1DC:.BYTE	5,  1,	4,  2,	3,  6,	0 

; =============== S U B	R O U T	I N E =======================================

sub_12B1E3:
	if_a_equal_cmp_addr byte_471, #0, loc_12B1EB
	RTS
; ---------------------------------------------------------------------------

loc_12B1EB:
	set text_idx_35C, #$AB 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	if_a_not_equal byte_55B, locret_12B224
	set text_idx_35C, #$B3 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c1_12A98E
	if_a_equal_cmp_addr byte_372, #1, locret_12B224
	JSR	sub_12B1CB
	STY	byte_555

locret_12B224:
	RTS
; End of function sub_12B1E3

; =============== S U B	R O U T	I N E =======================================

sub_12B225:
	if_a_equal_cmp_addr byte_471, #0, loc_12B22D
	RTS
; ---------------------------------------------------------------------------

loc_12B22D:
	set text_idx_35C, #$AC 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	if_a_not_equal byte_55B, locret_12B266
	set text_idx_35C, #$B3 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c1_12A98E
	if_a_equal_cmp_addr byte_372, #1, locret_12B266
	JSR	sub_12B1CB
	STY	byte_556

locret_12B266:
	RTS
; End of function sub_12B225

; =============== S U B	R O U T	I N E =======================================

sub_12B267:
	if_a_equal_cmp_addr byte_471, #0, loc_12B26F
	RTS
; ---------------------------------------------------------------------------

loc_12B26F:
	set text_idx_35C, #$AD 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	if_a_not_equal byte_55B, locret_12B2A8
	set text_idx_35C, #$B3 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c1_12A98E
	if_a_equal_cmp_addr byte_372, #1, locret_12B2A8
	JSR	sub_12B1CB
	STY	byte_557

locret_12B2A8:
	RTS
; End of function sub_12B267

; =============== S U B	R O U T	I N E =======================================

sub_12B2A9:
	if_a_equal_cmp_addr byte_471, #0, loc_12B2B1
	RTS
; ---------------------------------------------------------------------------

loc_12B2B1:
	set text_idx_35C, #$AE 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	if_a_not_equal byte_55B, locret_12B2EA
	set text_idx_35C, #$B3 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c1_12A98E
	if_a_equal_cmp_addr byte_372, #1, locret_12B2EA
	JSR	sub_12B1CB
	STY	byte_558

locret_12B2EA:
	RTS
; End of function sub_12B2A9

; =============== S U B	R O U T	I N E =======================================

sub_12B2EB:
	if_a_equal_cmp_addr byte_471, #0, loc_12B2F3
	RTS
; ---------------------------------------------------------------------------

loc_12B2F3:
	set text_idx_35C, #$AF 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	if_a_not_equal byte_55B, locret_12B32C
	set text_idx_35C, #$B3 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c1_12A98E
	if_a_equal_cmp_addr byte_372, #1, locret_12B32C
	JSR	sub_12B1CB
	STY	byte_559

locret_12B32C:
	RTS
; End of function sub_12B2EB

; =============== S U B	R O U T	I N E =======================================

sub_12B32D:
	if_a_equal_cmp_addr byte_471, #0, loc_12B335
	RTS
; ---------------------------------------------------------------------------

loc_12B335:
	set text_idx_35C, #$B0 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	if_a_not_equal byte_55B, locret_12B36E
	set text_idx_35C, #$B3 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c1_12A98E
	if_a_equal_cmp_addr byte_372, #1, locret_12B36E
	JSR	sub_12B1CB
	STY	byte_55A

locret_12B36E:
	RTS
; End of function sub_12B32D

; =============== S U B	R O U T	I N E =======================================

sub_12B36F:
	if_a_equal_cmp_addr byte_471, #0, loc_12B377
	RTS
; ---------------------------------------------------------------------------

loc_12B377:
	if_a_equal byte_55B, loc_12B37F
	JMP	locret_12B403
; ---------------------------------------------------------------------------

loc_12B37F:
	set text_idx_35C, #$B1 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	set text_idx_35C, #$B3 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c1_12A98E
	if_a_equal_cmp_addr byte_372, #1, locret_12B403
	LDX	#0

loc_12B3AF:
	if_a_not_equal_cmp_addr {byte_12B1DC,X}, {byte_555,X}, loc_12B3E8
	INX
	if_x_greater_cmp #6, loc_12B3AF
	set byte_55B, #$F
	JSR	entry_idx_handler_unk_12AA6D
	set image_id_4A4, entry_idx_300
	set image_offset_4A5, ppu_unk_byte_302
	set ppu_prev_unk_4A6, ppu_unk_byte_303
	set ppu_prev_scroll_x_unk_4A7, ppu_scroll_x_304
	set ppu_prev_scroll_y_unk_4A8, ppu_scroll_y_305
	JSR	exec_b0_c2_12A9A9
	JMP	locret_12B403
; ---------------------------------------------------------------------------

loc_12B3E8:
	set byte_627, #$FF
	STA	byte_628
	set cur_obj_idx_unk_43A, #0
	JSR	sub_12BF29
	set cur_obj_idx_unk_43A, #1
	JSR	sub_12BF29
	JMP	locret_12B403
; ---------------------------------------------------------------------------

locret_12B403:
	RTS
; End of function sub_12B36F

; =============== S U B	R O U T	I N E =======================================

sub_12B404:
	if_a_not_equal_cmp_addr byte_471, #0, loc_12B41E
	set text_idx_35C, #$A7 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; ---------------------------------------------------------------------------

loc_12B41E:
	if_a_not_equal_cmp_addr byte_59F, #$FF, loc_12B43B
	if_a_not_equal_cmp_addr byte_5A0, #$FF, loc_12B43B
	if_a_not_equal_cmp_addr byte_5A1, #$FF, loc_12B43B
	if_a_not_equal_cmp_addr byte_5A2, #$FF, loc_12B43B
	RTS
; ---------------------------------------------------------------------------

loc_12B43B:
	set byte_46D, #$1E
	RTS
; End of function sub_12B404

; =============== S U B	R O U T	I N E =======================================

sub_12B441:
	if_a_not_equal_cmp_addr entry_idx_300, #$24, loc_12B45E
	LDX	byte_434
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #$1A, loc_12B458
	set byte_5E2, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B458:
	set byte_6B0, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B45E:
	if_a_not_equal_cmp_addr entry_idx_300, #$25, loc_12B47F
	LDX	byte_434
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #$1A, loc_12B475
	set byte_5E3, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B475:
	if_a_not_equal_cmp #6, locret_12B47E
	set byte_5E6, #0

locret_12B47E:
	RTS
; ---------------------------------------------------------------------------

loc_12B47F:
	if_a_not_equal_cmp_addr entry_idx_300, #$1E, loc_12B4D9
	LDX	byte_434
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #$A, loc_12B4A3
	if_a_not_equal_cmp_addr byte_434, #4, loc_12B49D
	set byte_5B9, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B49D:
	set byte_5BA, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B4A3:
	if_a_not_equal_cmp #$B, loc_12B4C8
	if_a_not_equal_cmp_addr byte_434, #1, loc_12B4B4
	set byte_5B6, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B4B4:
	if_a_not_equal_cmp #2, loc_12B4BE
	set byte_5B7, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B4BE:
	if_a_not_equal_cmp #3, locret_12B4C7
	set byte_5B8, #0

locret_12B4C7:
	RTS
; ---------------------------------------------------------------------------

loc_12B4C8:
	if_a_not_equal_cmp #$13, loc_12B4D2
	set byte_5B5, #0
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
	if_a_not_equal_cmp_addr entry_idx_300, #$6E, loc_12B52B
	LDX	byte_434
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #6, loc_12B503
	if_a_not_equal_cmp_addr byte_434, #1, loc_12B4FA
	set byte_5CD, #0
	RTS
; ---------------------------------------------------------------------------
	JMP	loc_12BD54
; ---------------------------------------------------------------------------

loc_12B4FA:
	set byte_5CE, #0
	RTS
; ---------------------------------------------------------------------------
	JMP	loc_12BD54
; ---------------------------------------------------------------------------

loc_12B503:
	if_a_not_equal_cmp #7, loc_12B51D
	if_a_not_equal_cmp_addr byte_434, #2, loc_12B517
	set byte_5CF, #0
	RTS
; ---------------------------------------------------------------------------
	JMP	loc_12BD54
; ---------------------------------------------------------------------------

loc_12B517:
	set byte_5D0, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B51D:
	if_a_not_equal_cmp #$17, locret_12B527
	set byte_5CC, #0
	RTS
; ---------------------------------------------------------------------------

locret_12B527:
	RTS
; ---------------------------------------------------------------------------
	JMP	loc_12BD54
; ---------------------------------------------------------------------------

loc_12B52B:
	if_a_not_equal_cmp_addr entry_idx_300, #$1C, loc_12B58E
	LDX	byte_434
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #6, loc_12B545
	set byte_5D7, #0
	RTS
; ---------------------------------------------------------------------------
	JMP	loc_12BD54
; ---------------------------------------------------------------------------

loc_12B545:
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #7, loc_12B552
	set byte_5D6, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B552:
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #$47, locret_12B58A
	set byte_6A8, #0
	set byte_588, #$FF
	STA	byte_5D8
	JSR	entry_idx_handler_unk_12AA6D
	set image_id_4A4, entry_idx_300
	set image_offset_4A5, ppu_unk_byte_302
	set ppu_prev_unk_4A6, ppu_unk_byte_303
	set ppu_prev_scroll_x_unk_4A7, ppu_scroll_x_304
	set ppu_prev_scroll_y_unk_4A8, ppu_scroll_y_305
	JSR	exec_b0_c2_12A9A9

locret_12B58A:
	RTS
; ---------------------------------------------------------------------------
	JMP	loc_12BD54
; ---------------------------------------------------------------------------

loc_12B58E:
	if_a_not_equal_cmp_addr entry_idx_300, #$87, loc_12B5A8
	LDX	byte_434
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #6, loc_12B545
	set byte_5D7, #0
	RTS
; ---------------------------------------------------------------------------
	JMP	loc_12BD54
; ---------------------------------------------------------------------------

loc_12B5A8:
	if_a_not_equal_cmp_addr entry_idx_300, #$20, loc_12B5CC
	LDX	byte_434
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #6, loc_12B5BF
	set byte_5DD, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B5BF:
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #$3B, locret_12B5CB
	set byte_5DC, #0

locret_12B5CB:
	RTS
; ---------------------------------------------------------------------------

loc_12B5CC:
	if_a_not_equal_cmp_addr entry_idx_300, #$21, loc_12B5F0
	LDX	byte_434
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #$1A, loc_12B5E3
	set byte_5DE, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B5E3:
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #$1B, locret_12B5EF
	set byte_5C3, #0

locret_12B5EF:
	RTS
; ---------------------------------------------------------------------------

loc_12B5F0:
	if_a_not_equal_cmp_addr entry_idx_300, #$16, loc_12B606
	LDX	byte_434
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #$1A, loc_12B606
	set byte_5EA, #0

loc_12B606:
	if_a_not_equal_cmp_addr entry_idx_300, #$26, loc_12B61C
	LDX	byte_434
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #$B, loc_12B61C
	set byte_5EB, #0

loc_12B61C:
	if_a_not_equal_cmp_addr entry_idx_300, #$27, loc_12B636
	if_a_not_equal_cmp_addr byte_434, #0, loc_12B630
	set byte_5EC, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B630:
	set byte_5ED, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B636:
	if_a_not_equal_cmp_addr entry_idx_300, #$28, loc_12B64C
	LDX	byte_434
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #6, loc_12B64C
	set byte_5EE, #0

loc_12B64C:
	if_a_not_equal_cmp_addr entry_idx_300, #$2A, loc_12B662
	LDX	byte_434
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #$14, loc_12B662
	set byte_5EF, #0

loc_12B662:
	if_a_not_equal_cmp_addr entry_idx_300, #$2C, loc_12B678
	LDX	byte_434
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #$B, loc_12B678
	set byte_5F3, #0

loc_12B678:
	if_a_not_equal_cmp_addr entry_idx_300, #$2E, loc_12B69C
	LDX	byte_434
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #8, loc_12B68F
	set byte_5F4, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B68F:
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #$25, locret_12B69B
	set byte_5F5, #0

locret_12B69B:
	RTS
; ---------------------------------------------------------------------------

loc_12B69C:
	if_a_not_equal_cmp_addr entry_idx_300, #$2D, loc_12B6C0
	if_a_not_equal_cmp_addr byte_434, #1, loc_12B6B0
	set byte_5F7, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B6B0:
	if_a_not_equal_cmp #2, loc_12B6BA
	set byte_5F8, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B6BA:
	set byte_5B4, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B6C0:
	if_a_not_equal_cmp_addr entry_idx_300, #$32, loc_12B6E8
	if_a_not_equal_cmp_addr byte_434, #0, loc_12B6D4
	set byte_5FB, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B6D4:
	if_a_not_equal_cmp #1, loc_12B6DE
	set byte_5FA, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B6DE:
	if_a_not_equal_cmp #3, locret_12B6E7
	set byte_6B2, #0

locret_12B6E7:
	RTS
; ---------------------------------------------------------------------------

loc_12B6E8:
	if_a_not_equal_cmp_addr entry_idx_300, #$34, loc_12B6FF
	LDX	byte_434
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #7, loc_12B6FF
	set byte_601, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B6FF:
	if_a_not_equal_cmp_addr entry_idx_300, #$38, loc_12B72D
	LDX	byte_434
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #7, loc_12B716
	set byte_604, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B716:
	if_a_not_equal_cmp #$52, loc_12B720
	set byte_6AE, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B720:
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #8, locret_12B72C
	set byte_605, #0

locret_12B72C:
	RTS
; ---------------------------------------------------------------------------

loc_12B72D:
	if_a_not_equal_cmp_addr entry_idx_300, #$3A, loc_12B747
	if_a_not_equal_cmp_addr byte_434, #0, loc_12B741
	set byte_608, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B741:
	set byte_609, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B747:
	if_a_not_equal_cmp_addr entry_idx_300, #$3B, loc_12B783
	if_a_not_equal_cmp_addr byte_434, #0, loc_12B75B
	set byte_60D, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B75B:
	if_a_not_equal_cmp #1, loc_12B765
	set byte_60E, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B765:
	if_a_not_equal_cmp #2, loc_12B76F
	set byte_611, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B76F:
	if_a_not_equal_cmp #3, loc_12B779
	set byte_610, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B779:
	if_a_not_equal_cmp #4, locret_12B782
	set byte_60F, #0

locret_12B782:
	RTS
; ---------------------------------------------------------------------------

loc_12B783:
	if_a_not_equal_cmp_addr entry_idx_300, #$3C, loc_12B7A4
	LDX	byte_434
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #8, loc_12B79A
	set byte_613, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B79A:
	if_a_not_equal_cmp #$4A, locret_12B7A3
	set byte_6AB, #0

locret_12B7A3:
	RTS
; ---------------------------------------------------------------------------

loc_12B7A4:
	if_a_not_equal_cmp_addr entry_idx_300, #$3E, loc_12B7BB
	LDX	byte_434
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #6, locret_12B7BA
	set byte_615, #0

locret_12B7BA:
	RTS
; ---------------------------------------------------------------------------

loc_12B7BB:
	if_a_not_equal_cmp_addr entry_idx_300, #$42, loc_12B7D9
	if_a_not_equal_cmp_addr byte_434, #1, loc_12B7CF
	set byte_61C, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B7CF:
	if_a_not_equal_cmp #2, locret_12B7D8
	set byte_61B, #0

locret_12B7D8:
	RTS
; ---------------------------------------------------------------------------

loc_12B7D9:
	if_a_not_equal_cmp_addr entry_idx_300, #$9C, loc_12B7F0
	LDX	byte_434
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #9, locret_12B7EF
	set byte_61D, #0

locret_12B7EF:
	RTS
; ---------------------------------------------------------------------------

loc_12B7F0:
	if_a_not_equal_cmp_addr entry_idx_300, #$45, loc_12B811
	LDX	byte_434
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #7, loc_12B807
	set byte_61E, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B807:
	if_a_not_equal_cmp #$1F, locret_12B810
	set byte_5C4, #0

locret_12B810:
	RTS
; ---------------------------------------------------------------------------

loc_12B811:
	if_a_not_equal_cmp_addr entry_idx_300, #$47, loc_12B832
	LDX	byte_434
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #7, loc_12B828
	set byte_61F, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B828:
	if_a_not_equal_cmp #$53, locret_12B831
	set byte_6AF, #0

locret_12B831:
	RTS
; ---------------------------------------------------------------------------

loc_12B832:
	if_a_not_equal_cmp_addr entry_idx_300, #$4A, loc_12B853
	LDX	byte_434
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #$2B, loc_12B849
	set byte_622, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B849:
	if_a_not_equal_cmp #$C, locret_12B852
	set byte_623, #0

locret_12B852:
	RTS
; ---------------------------------------------------------------------------

loc_12B853:
	if_a_not_equal_cmp_addr entry_idx_300, #$4B, loc_12B87E
	LDX	byte_434
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #9, loc_12B86A
	set byte_624, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B86A:
	if_a_not_equal_cmp #6, loc_12B874
	set byte_625, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B874:
	if_a_not_equal_cmp #$48, locret_12B87D
	set byte_6A9, #0

locret_12B87D:
	RTS
; ---------------------------------------------------------------------------

loc_12B87E:
	if_a_not_equal_cmp_addr entry_idx_300, #$4C, loc_12B89F
	LDX	byte_434
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #$B, loc_12B895
	set byte_626, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B895:
	if_a_not_equal_cmp #$3E, locret_12B89E
	set byte_6B1, #0

locret_12B89E:
	RTS
; ---------------------------------------------------------------------------

loc_12B89F:
	if_a_not_equal_cmp_addr entry_idx_300, #$4E, loc_12B8DB
	if_a_not_equal_cmp_addr byte_434, #0, loc_12B8B3
	set byte_62A, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B8B3:
	if_a_not_equal_cmp #1, loc_12B8BD
	set byte_62B, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B8BD:
	if_a_not_equal_cmp #2, loc_12B8C7
	set byte_62C, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B8C7:
	if_a_not_equal_cmp #3, loc_12B8D1
	set byte_62D, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B8D1:
	if_a_not_equal_cmp #4, locret_12B8DA
	set byte_6B3, #0

locret_12B8DA:
	RTS
; ---------------------------------------------------------------------------

loc_12B8DB:
	if_a_not_equal_cmp_addr entry_idx_300, #$51, loc_12B90D
	if_a_not_equal_cmp_addr byte_434, #0, loc_12B8EF
	set byte_637, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B8EF:
	if_a_not_equal_cmp #1, loc_12B8F9
	set byte_638, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B8F9:
	if_a_not_equal_cmp #2, loc_12B903
	set byte_639, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B903:
	if_a_not_equal_cmp #3, locret_12B90C
	set byte_63A, #0

locret_12B90C:
	RTS
; ---------------------------------------------------------------------------

loc_12B90D:
	if_a_not_equal_cmp_addr entry_idx_300, #$53, loc_12B924
	LDX	byte_434
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #$1A, locret_12B923
	set byte_63D, #0

locret_12B923:
	RTS
; ---------------------------------------------------------------------------

loc_12B924:
	if_a_not_equal_cmp_addr entry_idx_300, #$90, loc_12B93B
	LDX	byte_434
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #$1A, locret_12B93A
	set byte_63D, #0

locret_12B93A:
	RTS
; ---------------------------------------------------------------------------

loc_12B93B:
	if_a_not_equal_cmp_addr entry_idx_300, #$55, loc_12B95C
	LDX	byte_434
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #$12, loc_12B952
	set byte_641, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B952:
	if_a_not_equal_cmp #9, locret_12B95B
	set byte_642, #0

locret_12B95B:
	RTS
; ---------------------------------------------------------------------------

loc_12B95C:
	if_a_not_equal_cmp_addr entry_idx_300, #$56, loc_12B97D
	LDX	byte_434
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #$2A, loc_12B973
	set byte_643, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B973:
	if_a_not_equal_cmp #9, locret_12B97C
	set byte_644, #0

locret_12B97C:
	RTS
; ---------------------------------------------------------------------------

loc_12B97D:
	if_a_not_equal_cmp_addr entry_idx_300, #$57, loc_12B994
	LDX	byte_434
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #9, locret_12B993
	set byte_645, #0

locret_12B993:
	RTS
; ---------------------------------------------------------------------------

loc_12B994:
	if_a_not_equal_cmp_addr entry_idx_300, #$91, loc_12B9AB
	LDX	byte_434
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #9, locret_12B9AA
	set byte_645, #0

locret_12B9AA:
	RTS
; ---------------------------------------------------------------------------

loc_12B9AB:
	if_a_not_equal_cmp_addr entry_idx_300, #$58, loc_12B9C2
	LDX	byte_434
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #0, locret_12B9C1
	set byte_64B, #0

locret_12B9C1:
	RTS
; ---------------------------------------------------------------------------

loc_12B9C2:
	if_a_not_equal_cmp_addr entry_idx_300, #$5A, loc_12B9ED
	LDX	byte_434
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #$C, loc_12B9D9
	set byte_64D, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B9D9:
	if_a_not_equal_cmp #$1A, loc_12B9E3
	set byte_64F, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B9E3:
	if_a_not_equal_cmp #$12, locret_12B9EC
	set byte_64E, #0

locret_12B9EC:
	RTS
; ---------------------------------------------------------------------------

loc_12B9ED:
	if_a_not_equal_cmp_addr entry_idx_300, #$5B, loc_12BA0E
	LDX	byte_434
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #$30, loc_12BA04
	set byte_650, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BA04:
	if_a_not_equal_cmp #$40, locret_12BA0D
	set byte_6B4, #0

locret_12BA0D:
	RTS
; ---------------------------------------------------------------------------

loc_12BA0E:
	if_a_not_equal_cmp_addr entry_idx_300, #$92, loc_12BA25
	LDX	byte_434
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #$30, locret_12BA24
	set byte_650, #0

locret_12BA24:
	RTS
; ---------------------------------------------------------------------------

loc_12BA25:
	if_a_not_equal_cmp_addr entry_idx_300, #$5D, loc_12BA57
	if_a_not_equal_cmp_addr byte_434, #0, loc_12BA39
	set byte_655, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BA39:
	if_a_not_equal_cmp #1, loc_12BA43
	set byte_656, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BA43:
	if_a_not_equal_cmp #2, loc_12BA4D
	set byte_657, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BA4D:
	if_a_not_equal_cmp #3, locret_12BA56
	set byte_658, #0

locret_12BA56:
	RTS
; ---------------------------------------------------------------------------

loc_12BA57:
	if_a_not_equal_cmp_addr entry_idx_300, #$5E, loc_12BA78
	LDX	byte_434
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #9, loc_12BA6E
	set byte_65A, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BA6E:
	if_a_not_equal_cmp #$12, locret_12BA77
	set byte_65B, #0

locret_12BA77:
	RTS
; ---------------------------------------------------------------------------

loc_12BA78:
	if_a_not_equal_cmp_addr entry_idx_300, #$5F, loc_12BA99
	LDX	byte_434
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #$24, loc_12BA8F
	set byte_5C5, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BA8F:
	if_a_not_equal_cmp #7, locret_12BA98
	set byte_65C, #0

locret_12BA98:
	RTS
; ---------------------------------------------------------------------------

loc_12BA99:
	if_a_not_equal_cmp_addr entry_idx_300, #$60, loc_12BABA
	LDX	byte_434
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #9, loc_12BAB0
	set byte_65D, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BAB0:
	if_a_not_equal_cmp #$18, locret_12BAB9
	set byte_5C8, #0

locret_12BAB9:
	RTS
; ---------------------------------------------------------------------------

loc_12BABA:
	if_a_not_equal_cmp_addr entry_idx_300, #$97, loc_12BADB
	LDX	byte_434
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #9, loc_12BAD1
	set byte_65D, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BAD1:
	if_a_not_equal_cmp #$18, locret_12BADA
	set byte_5C8, #0

locret_12BADA:
	RTS
; ---------------------------------------------------------------------------

loc_12BADB:
	if_a_not_equal_cmp_addr entry_idx_300, #$61, loc_12BB06
	LDX	byte_434
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #6, loc_12BAF2
	set byte_65F, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BAF2:
	if_a_not_equal_cmp #$55, loc_12BAFC
	set byte_6BC, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BAFC:
	if_a_not_equal_cmp #$1A, locret_12BB05
	set byte_660, #0

locret_12BB05:
	RTS
; ---------------------------------------------------------------------------

loc_12BB06:
	if_a_not_equal_cmp_addr entry_idx_300, #$62, loc_12BB24
	if_a_not_equal_cmp_addr byte_434, #0, loc_12BB1A
	set byte_663, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BB1A:
	if_a_not_equal_cmp #1, locret_12BB23
	set byte_664, #0

locret_12BB23:
	RTS
; ---------------------------------------------------------------------------

loc_12BB24:
	if_a_not_equal_cmp_addr entry_idx_300, #$65, loc_12BB4F
	LDX	byte_434
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #8, loc_12BB3B
	set byte_66D, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BB3B:
	if_a_not_equal_cmp #$41, loc_12BB45
	set byte_6B5, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BB45:
	if_a_not_equal_cmp #$49, locret_12BB4E
	set byte_6AA, #0

locret_12BB4E:
	RTS
; ---------------------------------------------------------------------------

loc_12BB4F:
	if_a_not_equal_cmp_addr entry_idx_300, #$67, loc_12BB70
	LDX	byte_434
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #7, loc_12BB66
	set byte_66F, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BB66:
	if_a_not_equal_cmp #$4C, locret_12BB6F
	set byte_6AC, #0

locret_12BB6F:
	RTS
; ---------------------------------------------------------------------------

loc_12BB70:
	if_a_not_equal_cmp_addr entry_idx_300, #$9B, loc_12BB87
	LDX	byte_434
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #7, locret_12BB86
	set byte_66F, #0

locret_12BB86:
	RTS
; ---------------------------------------------------------------------------

loc_12BB87:
	if_a_not_equal_cmp_addr entry_idx_300, #$68, loc_12BB9E
	LDX	byte_434
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #9, locret_12BB9D
	set byte_671, #0

locret_12BB9D:
	RTS
; ---------------------------------------------------------------------------

loc_12BB9E:
	if_a_not_equal_cmp_addr entry_idx_300, #$6A, loc_12BBC6
	if_a_not_equal_cmp_addr byte_434, #3, loc_12BBB2
	set byte_672, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BBB2:
	if_a_not_equal_cmp #4, loc_12BBBC
	set byte_673, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BBBC:
	if_a_not_equal_cmp #5, locret_12BBC5
	set byte_6B6, #0

locret_12BBC5:
	RTS
; ---------------------------------------------------------------------------

loc_12BBC6:
	if_a_equal_cmp_addr entry_idx_300, #$52, loc_12BBD4
	if_a_equal_cmp #$8F, loc_12BBD4
	JMP	loc_12BC09
; ---------------------------------------------------------------------------

loc_12BBD4:
	if_a_not_equal_cmp_addr byte_434, #0, loc_12BBE1
	set byte_675, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BBE1:
	if_a_not_equal_cmp #1, loc_12BBEB
	set byte_676, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BBEB:
	if_a_not_equal_cmp #2, loc_12BBF5
	set byte_677, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BBF5:
	if_a_not_equal_cmp #3, loc_12BBFF
	set byte_678, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BBFF:
	if_a_not_equal_cmp #4, locret_12BC08
	set byte_679, #0

locret_12BC08:
	RTS
; ---------------------------------------------------------------------------

loc_12BC09:
	if_a_not_equal_cmp_addr entry_idx_300, #$72, loc_12BC3B
	if_a_not_equal_cmp_addr byte_434, #2, loc_12BC1D
	set byte_67E, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BC1D:
	if_a_not_equal_cmp #3, loc_12BC27
	set byte_67F, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BC27:
	if_a_not_equal_cmp #4, loc_12BC31
	set byte_680, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BC31:
	if_a_not_equal_cmp #5, locret_12BC3A
	set byte_681, #0

locret_12BC3A:
	RTS
; ---------------------------------------------------------------------------

loc_12BC3B:
	if_a_not_equal_cmp_addr entry_idx_300, #$70, loc_12BC52
	LDX	byte_434
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #$2E, locret_12BC51
	set byte_682, #0

locret_12BC51:
	RTS
; ---------------------------------------------------------------------------

loc_12BC52:
	if_a_not_equal_cmp_addr entry_idx_300, #$6F, loc_12BC69
	LDX	byte_434
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #$43, locret_12BC68
	set byte_6B7, #0

locret_12BC68:
	RTS
; ---------------------------------------------------------------------------

loc_12BC69:
	if_a_not_equal_cmp_addr entry_idx_300, #$71, loc_12BC80
	LDX	byte_434
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #$44, locret_12BC7F
	set byte_6B8, #0

locret_12BC7F:
	RTS
; ---------------------------------------------------------------------------

loc_12BC80:
	if_a_not_equal_cmp_addr entry_idx_300, #$75, loc_12BC97
	LDX	byte_434
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #$45, locret_12BC96
	set byte_6B9, #0

locret_12BC96:
	RTS
; ---------------------------------------------------------------------------

loc_12BC97:
	if_a_not_equal_cmp_addr entry_idx_300, #$82, loc_12BCAE
	LDX	byte_434
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #$46, locret_12BCAD
	set byte_6BA, #0

locret_12BCAD:
	RTS
; ---------------------------------------------------------------------------

loc_12BCAE:
	if_a_equal_cmp_addr entry_idx_300, #$76, loc_12BCBC
	if_a_equal_cmp #$94, loc_12BCBC
	JMP	loc_12BCDC
; ---------------------------------------------------------------------------

loc_12BCBC:
	if_a_not_equal_cmp_addr byte_434, #1, loc_12BCC9
	set byte_685, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BCC9:
	if_a_not_equal_cmp #2, loc_12BCD2
	set byte_686, #0

loc_12BCD2:
	if_a_not_equal_cmp #3, locret_12BCDB
	set byte_687, #0

locret_12BCDB:
	RTS
; ---------------------------------------------------------------------------

loc_12BCDC:
	if_a_not_equal_cmp_addr entry_idx_300, #$77, loc_12BD04
	if_a_not_equal_cmp_addr byte_434, #0, loc_12BCF0
	set byte_68B, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BCF0:
	if_a_not_equal_cmp #1, loc_12BCFA
	set byte_68C, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BCFA:
	if_a_not_equal_cmp #5, locret_12BD03
	set byte_69F, #0

locret_12BD03:
	RTS
; ---------------------------------------------------------------------------

loc_12BD04:
	if_a_not_equal_cmp_addr entry_idx_300, #$7E, loc_12BD36
	if_a_not_equal_cmp_addr byte_434, #0, loc_12BD18
	set byte_691, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BD18:
	if_a_not_equal_cmp #1, loc_12BD22
	set byte_692, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BD22:
	if_a_not_equal_cmp #2, loc_12BD2C
	set byte_693, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BD2C:
	if_a_not_equal_cmp #3, locret_12BD35
	set byte_694, #0

locret_12BD35:
	RTS
; ---------------------------------------------------------------------------

loc_12BD36:
	if_a_not_equal_cmp_addr entry_idx_300, #$9A, loc_12BD54
	if_a_not_equal_cmp_addr byte_434, #0, loc_12BD4A
	set byte_6A5, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BD4A:
	if_a_not_equal_cmp #1, locret_12BD53
	set byte_6A6, #0

locret_12BD53:
	RTS
; ---------------------------------------------------------------------------

loc_12BD54:
	LDX	byte_434
	if_a_not_equal_cmp_addr {obj_array_unk_415,X}, #$20, loc_12BD64
	set byte_5AD, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BD64:
	if_a_not_equal_cmp #$1C, loc_12BD8D
	if_a_equal_cmp_addr entry_idx_300, #$1E, loc_12BD75
	set byte_5A8, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BD75:
	set byte_5BD, #0
	set text_idx_35C, #5
	set char_type_id_35D, #2
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; ---------------------------------------------------------------------------

loc_12BD8D:
	if_a_not_equal_cmp #$19, loc_12BD9C
	set byte_683, #0
	set byte_59E, #$FF
	RTS
; ---------------------------------------------------------------------------

loc_12BD9C:
	if_a_not_equal_cmp #$39, loc_12BDA6
	set byte_6BB, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BDA6:
	if_a_not_equal_cmp #$50, loc_12BDB0
	set byte_6AD, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BDB0:
	if_a_not_equal_cmp #$21, loc_12BDBA
	set byte_5B3, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BDBA:
	if_a_not_equal_cmp #$16, loc_12BDC4
	set byte_5C9, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BDC4:
	if_a_not_equal_cmp #$2D, loc_12BDCE
	set byte_5BB, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BDCE:
	if_a_not_equal_cmp #$30, loc_12BDD8
	set byte_614, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BDD8:
	if_a_not_equal_cmp #$1D, loc_12BE01
	if_a_equal_cmp_addr entry_idx_300, #$1E, loc_12BDE9
	set byte_5A9, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BDE9:
	set byte_5BC, #0
	set text_idx_35C, #5
	set char_type_id_35D, #2
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; ---------------------------------------------------------------------------

loc_12BE01:
	if_a_not_equal_cmp #$14, loc_12BE0B
	set byte_5BE, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BE0B:
	if_a_not_equal_cmp #$23, loc_12BE15
	set byte_5AA, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BE15:
	if_a_not_equal_cmp #$15, loc_12BE5D
	set byte_5D1, #0
	set byte_596, #$FF
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
	if_a_not_equal_cmp #3, loc_12BE67
	set byte_5D9, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BE67:
	if_a_not_equal_cmp #2, loc_12BE7E
	if_a_equal_cmp_addr byte_5F9, #$FF, loc_12BE78
	set byte_5EF, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BE78:
	set byte_5F9, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BE7E:
	if_a_not_equal_cmp #$22, loc_12BE88
	set byte_606, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BE88:
	if_a_not_equal_cmp #4, loc_12BEAA
	set byte_616, #0
	set byte_617, #$FF
	STA	byte_618
	set cur_obj_idx_unk_43A, #1
	JSR	sub_12BF29
	set cur_obj_idx_unk_43A, #2
	JSR	sub_12BF29
	RTS
; ---------------------------------------------------------------------------

loc_12BEAA:
	if_a_not_equal_cmp #$26, locret_12BEB4
	set byte_654, #0
	RTS
; ---------------------------------------------------------------------------

locret_12BEB4:
	RTS
; End of function sub_12B441

; =============== S U B	R O U T	I N E =======================================

sub_12BEB5:
	if_a_equal byte_5B0, locret_12BEF9
	set text_idx_35C, #0
	set char_type_id_35D, #2
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c1_12A98E
	if_a_equal_cmp_addr byte_372, #1, locret_12BEF9
	LDX	#0

loc_12BED8:
	if_a_not_equal_cmp_addr {objIdxArray_375,X}, #3, loc_12BEE2
	JMP	loc_12BEE9
; ---------------------------------------------------------------------------

loc_12BEE2:
	INX
	if_x_greater_cmp objArraySize_373, loc_12BED8
	RTS
; ---------------------------------------------------------------------------

loc_12BEE9:
	STX	cur_obj_idx_unk_43A
	JSR	exec_b0_c3_128418
	set byte_5B0, #0
	set byte_5AA, #$FF

locret_12BEF9:
	RTS
; End of function sub_12BEB5

; =============== S U B	R O U T	I N E =======================================

sub_12BEFA:
	if_a_not_equal_cmp_addr byte_471, #0, loc_12BF14
	set text_idx_35C, #$39 
	set char_type_id_35D, #2
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; ---------------------------------------------------------------------------

loc_12BF14:
	if_a_equal_cmp_addr byte_55C, #0, loc_12BF23
	if_a_equal_cmp_addr byte_55D, #0, loc_12BF23
	RTS
; ---------------------------------------------------------------------------

loc_12BF23:
	set byte_46D, #$22 
	RTS
; End of function sub_12BEFA

; =============== S U B	R O U T	I N E =======================================

sub_12BF29:
	LDX	cur_obj_idx_unk_43A
	set {objCreatedArray_393,X}, #0
	RTS
; End of function sub_12BF29

; =============== S U B	R O U T	I N E =======================================

sub_12BF32:
	if_a_not_equal_cmp_addr byte_471, #0, loc_12BF4C
	set text_idx_35C, #$37 
	set char_type_id_35D, #2
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; ---------------------------------------------------------------------------

loc_12BF4C:
	set byte_46D, #$2C 
	RTS
; End of function sub_12BF32

; =============== S U B	R O U T	I N E =======================================

sub_12BF52:
	if_a_equal_cmp_addr byte_471, #0, loc_12BF66
	if_a_equal_cmp_addr byte_55F, #$FF, locret_12BF65
	set byte_46D, #$2D 

locret_12BF65:
	RTS
; ---------------------------------------------------------------------------

loc_12BF66:
	set text_idx_35C, #$BE 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; End of function sub_12BF52

; =============== S U B	R O U T	I N E =======================================

sub_12BF79:
	if_a_not_equal byte_5BC, locret_12BF88
	if_a_not_equal byte_5BD, locret_12BF88
	set byte_46D, #$1C

locret_12BF88:
	RTS
; End of function sub_12BF79

; =============== S U B	R O U T	I N E =======================================

sub_12BF89:
	if_a_not_equal byte_5A8, locret_12BF98
	if_a_not_equal byte_5A9, locret_12BF98
	set byte_46D, #$1C

locret_12BF98:
	RTS
; End of function sub_12BF89

; =============== S U B	R O U T	I N E =======================================

sub_12BF99:
	if_a_equal_cmp_addr byte_5C1, #0, loc_12BFC1
	if_a_equal_cmp_addr byte_5C2, #0, loc_12BFC1
	if_a_not_equal_cmp_addr byte_59F, #0, locret_12BFC0
	set tilemapTypeUnk_30B, #$1E
	JSR	sub_12D58C
	if_a_equal sprite_length_30F, locret_12BFC0
	set byte_59F, #1

locret_12BFC0:
	RTS
; ---------------------------------------------------------------------------

loc_12BFC1:
	set byte_560, #$FF
	JSR	exec_b0_c4_12842B
	set text_idx_35C, #1
	set char_type_id_35D, #2
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c4_12842B
	RTS
; End of function sub_12BF99

; =============== S U B	R O U T	I N E =======================================

sub_12BFDF:
	if_a_equal_cmp_addr byte_471, #0, loc_12BFEC
	set byte_46D, #$1B
	RTS
; ---------------------------------------------------------------------------

loc_12BFEC:
	if_a_not_equal_cmp_addr byte_562, #0, loc_12C00B
	set text_idx_35C, #$FF
	set char_type_id_35D, #0
	set tilemapTypeUnk_30B, #7
	JSR	exec_b0_c0_12A973
	set byte_562, #$F
	RTS
; ---------------------------------------------------------------------------

loc_12C00B:
	if_a_not_equal_cmp #$F, locret_12C021
	set text_idx_35C, #5
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973

locret_12C021:
	RTS
; End of function sub_12BFDF

; =============== S U B	R O U T	I N E =======================================

sub_12C022:
	if_a_not_equal_cmp_addr byte_313, #2, locret_12C095
	if_a_not_equal byte_563, locret_12C095
	if_a_equal_cmp_addr byte_5C4, #$FF, locret_12C095
	set byte_563, #$FF
	set text_idx_35C, #2
	set char_type_id_35D, #2
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	sub_12D21B
	set text_idx_35C, #3
	set char_type_id_35D, #2
	JSR	exec_b2_c3_128313

set_mansion_saveroom_12C05C:
	set image_id_4A4, #$21 
	set image_offset_4A5, #0
	set ppu_prev_unk_4A6, #0
	set ppu_prev_scroll_x_unk_4A7, #0
	STA	ppu_prev_scroll_y_unk_4A8
	STA	prev_sprite_type_4A9
	set byte_4AD, #$60 
	set byte_4AE, #$70 
	JSR	exec_b0_c2_12A9A9
	set text_idx_35C, #$B
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973

locret_12C095:
	RTS
; End of function sub_12C022

; =============== S U B	R O U T	I N E =======================================

sub_12C096:
	if_a_not_equal byte_564, locret_12C0AD
	set tilemapTypeUnk_30B, #$29 
	JSR	sub_12D58C
	if_a_equal sprite_length_30F, locret_12C0AD
	set byte_564, #$FF

locret_12C0AD:
	RTS
; End of function sub_12C096

; =============== S U B	R O U T	I N E =======================================

sub_12C0AE:
	if_a_equal_cmp_addr byte_471, #0, loc_12C0BB
	set byte_46D, #$29 
	RTS
; ---------------------------------------------------------------------------

loc_12C0BB:
	set text_idx_35C, #$CB 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; End of function sub_12C0AE

; =============== S U B	R O U T	I N E =======================================

sub_12C0CE:
	if_a_not_equal_cmp_addr byte_566, #0, locret_12C118
	set text_idx_35C, #$D6 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c1_12A98E
	if_a_not_equal byte_372, locret_12C118
	set byte_566, #$FF
	JSR	entry_idx_handler_unk_12AA6D
	set image_id_4A4, entry_idx_300
	set image_offset_4A5, ppu_unk_byte_302
	set ppu_prev_unk_4A6, ppu_unk_byte_303
	set ppu_prev_scroll_x_unk_4A7, ppu_scroll_x_304
	set ppu_prev_scroll_y_unk_4A8, ppu_scroll_y_305
	JSR	exec_b0_c2_12A9A9

locret_12C118:
	RTS
; End of function sub_12C0CE

; =============== S U B	R O U T	I N E =======================================

sub_12C119:
	LDX	#0

loc_12C11B:
	if_a_not_equal {objCreatedArray_393,X}, locret_12C13B
	if_a_equal_cmp_addr {objIdxArray_375,X}, #3, loc_12C12E
	INX
	if_x_greater_cmp objArraySize_373, loc_12C11B
	RTS
; ---------------------------------------------------------------------------

loc_12C12E:
	x_to_stack
	JSR	sub_12C13C
	from_stack_to_x
	INX
	if_x_greater_cmp objArraySize_373, loc_12C11B

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
	set {byte_578,Y}, {array_unk_3C5,X}
	set {byte_57B,Y}, {array_unk_3BB,X}
	set {byte_57E,Y}, {array_unk_3D9,X}
	set {byte_581,Y}, {array_unk_3CF,X}
	INC	byte_577
	if_a_not_equal_cmp_addr byte_577, #3, locret_12C1B7
	if_a_not_equal_cmp_addr byte_578, byte_579, locret_12C1B7
	if_a_not_equal_cmp byte_57A, locret_12C1B7
	if_a_not_equal_cmp_addr byte_57B, byte_57C, locret_12C1B7
	if_a_not_equal_cmp byte_57D, locret_12C1B7
	set byte_577, #$FF

locret_12C1B7:
	RTS
; End of function sub_12C13C

; =============== S U B	R O U T	I N E =======================================

sub_12C1B8:
	sub_addr_sec #3, byte_577
	mult_a_by_16
	TAY
; End of function sub_12C1B8

; =============== S U B	R O U T	I N E =======================================

sub_12C1C3:
	DEY
	DEY
	add_to {array_unk_3D9,X}, {array_unk_3CF,X}, #2, #0
	y_to_stack
	x_to_stack
	JSR	exec_b0_c5_12843E
	JSR	wait_for_frame_rendered_FCA0
	JSR	wait_for_frame_rendered_FCA0
	JSR	wait_for_frame_rendered_FCA0
	JSR	wait_for_frame_rendered_FCA0
	from_stack_to_x
	from_stack_to_y
	if_y_not_equal_cmp #0, sub_12C1C3
	RTS
; End of function sub_12C1C3

; =============== S U B	R O U T	I N E =======================================

sub_12C1F2:
	if_a_equal_cmp_addr byte_471, #0, loc_12C1FA
	RTS
; ---------------------------------------------------------------------------

loc_12C1FA:
	if_a_equal_cmp_addr byte_585, #$FF, locret_12C220
	set text_idx_35C, #$E2 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c1_12A98E
	if_a_not_equal byte_372, locret_12C220
	set byte_585, #$FF

locret_12C220:
	RTS
; End of function sub_12C1F2

; =============== S U B	R O U T	I N E =======================================

sub_12C221:
	if_a_equal_cmp_addr byte_471, #0, loc_12C229
	RTS
; ---------------------------------------------------------------------------

loc_12C229:
	set text_idx_35C, #$E3 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c1_12A98E
	if_a_not_equal byte_372, locret_12C25D
	set text_idx_35C, #$E4 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	xor_byte byte_5CA, #$FF

locret_12C25D:
	RTS
; End of function sub_12C221

; =============== S U B	R O U T	I N E =======================================

sub_12C25E:
	if_a_equal_cmp_addr byte_471, #0, loc_12C26B
	set byte_46D, #$24 
	RTS
; ---------------------------------------------------------------------------

loc_12C26B:
	set text_idx_35C, #$42 
	set char_type_id_35D, #2
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; End of function sub_12C25E

; =============== S U B	R O U T	I N E =======================================

sub_12C27E:
	if_a_equal_cmp_addr byte_471, #0, loc_12C286
	RTS
; ---------------------------------------------------------------------------

loc_12C286:
	set inv_sprite_idx_31C, #$33 
	JSR	sub_128955
	if_a_equal_cmp_addr is_game_finished_561, #$FF, return_12C2BE
	set byte_587, #$FF
	JSR	entry_idx_handler_unk_12AA6D
	set image_id_4A4, entry_idx_300
	set image_offset_4A5, ppu_unk_byte_302
	set ppu_prev_unk_4A6, ppu_unk_byte_303
	set ppu_prev_scroll_x_unk_4A7, ppu_scroll_x_304
	set ppu_prev_scroll_y_unk_4A8, ppu_scroll_y_305
	JSR	exec_b0_c2_12A9A9

return_12C2BE:
	RTS
; End of function sub_12C27E

; =============== S U B	R O U T	I N E =======================================

sub_12C2BF:
	if_a_equal_cmp_addr byte_471, #0, locret_12C2D5
	LDA	byte_5EF
	ORA	byte_5F9
	if_a_not_equal_cmp #0, locret_12C2D5
	set byte_46D, #2

locret_12C2D5:
	RTS
; End of function sub_12C2BF

; =============== S U B	R O U T	I N E =======================================

sub_12C2D6:
	if_a_not_equal_cmp_addr byte_471, #0, locret_12C323
	set text_idx_35C, #$E3 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c1_12A98E
	if_a_not_equal byte_372, locret_12C323
	xor_byte byte_589, #$FF
	JSR	entry_idx_handler_unk_12AA6D
	set image_id_4A4, entry_idx_300
	set image_offset_4A5, ppu_unk_byte_302
	set ppu_prev_unk_4A6, ppu_unk_byte_303
	set ppu_prev_scroll_x_unk_4A7, ppu_scroll_x_304
	set ppu_prev_scroll_y_unk_4A8, ppu_scroll_y_305
	JSR	exec_b0_c2_12A9A9

locret_12C323:
	RTS
; End of function sub_12C2D6

; =============== S U B	R O U T	I N E =======================================

sub_12C324:
	if_a_not_equal_cmp_addr byte_471, #0, locret_12C371
	set text_idx_35C, #$E3 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c1_12A98E
	if_a_not_equal byte_372, locret_12C371
	xor_byte byte_58B, #$FF
	JSR	entry_idx_handler_unk_12AA6D
	set image_id_4A4, entry_idx_300
	set image_offset_4A5, ppu_unk_byte_302
	set ppu_prev_unk_4A6, ppu_unk_byte_303
	set ppu_prev_scroll_x_unk_4A7, ppu_scroll_x_304
	set ppu_prev_scroll_y_unk_4A8, ppu_scroll_y_305
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
	if_a_equal_cmp_addr byte_471, #0, loc_12C380
	set byte_46D, #$2A 
	RTS
; ---------------------------------------------------------------------------

loc_12C380:
	set text_idx_35C, #$B
	set char_type_id_35D, #2
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; End of function sub_12C373

; =============== S U B	R O U T	I N E =======================================

sub_12C393:
	if_a_not_equal_cmp_addr byte_471, #0, loc_12C3AD
	set text_idx_35C, #$BA 
	set char_type_id_35D, #0
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; ---------------------------------------------------------------------------

loc_12C3AD:
	set byte_47F, #3
	set byte_46D, #$1A
	RTS
; End of function sub_12C393

; =============== S U B	R O U T	I N E =======================================

sub_12C3B8:
	set byte_58D, #$FF
	RTS
; End of function sub_12C3B8

; =============== S U B	R O U T	I N E =======================================

sub_12C3BE:
	if_a_equal byte_58D, locret_12C3C8
	set byte_58E, #$FF

locret_12C3C8:
	RTS
; End of function sub_12C3BE

; =============== S U B	R O U T	I N E =======================================

sub_12C3C9:
	if_a_not_equal_cmp_addr byte_471, #0, loc_12C3E3
	set text_idx_35C, #$BA 
	set char_type_id_35D, #0
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; ---------------------------------------------------------------------------

loc_12C3E3:
	set byte_47F, #1
	set byte_46D, #$1A
	RTS
; End of function sub_12C3C9

; =============== S U B	R O U T	I N E =======================================

sub_12C3EE:
	if_a_not_equal_cmp_addr byte_471, #0, loc_12C408
	set text_idx_35C, #$BA 
	set char_type_id_35D, #0
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; ---------------------------------------------------------------------------

loc_12C408:
	set byte_47F, #2
	set byte_46D, #$1A
	RTS
; End of function sub_12C3EE

; =============== S U B	R O U T	I N E =======================================

sub_12C413:
	if_a_not_equal_cmp_addr byte_471, #0, loc_12C42D
	set text_idx_35C, #$BA 
	set char_type_id_35D, #0
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; ---------------------------------------------------------------------------

loc_12C42D:
	set byte_47F, #4
	set byte_46D, #$1A
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
	if_a_equal_cmp_addr byte_471, #0, loc_12C44C
	set byte_46D, #$2A 
	RTS
; ---------------------------------------------------------------------------

loc_12C44C:
	set text_idx_35C, #$B
	set char_type_id_35D, #2
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; End of function sub_12C43F

; =============== S U B	R O U T	I N E =======================================

sub_12C45F:
	if_a_equal_cmp_addr byte_651, #0, locret_12C46B
	set byte_58D, #$FF

locret_12C46B:
	RTS
; End of function sub_12C45F

; =============== S U B	R O U T	I N E =======================================

sub_12C46C:
	if_a_not_equal_cmp_addr byte_313, #1, locret_12C4AD
	LDX	#4
	if_a_not_equal_cmp_addr {array_unk_3C5,X}, #$90, locret_12C4AD
	if_a_not_equal_cmp_addr {array_unk_3BB,X}, #1, locret_12C4AD
	if_a_not_equal_cmp_addr {array_unk_3D9,X}, #$A0, locret_12C4AD
	if_a_not_equal_cmp_addr {array_unk_3CF,X}, #0, locret_12C4AD
	LDX	#4
	LDY	#$10
	JSR	sub_12C1C3
	set cur_obj_idx_unk_43A, #5
	JSR	exec_b0_c3_128418
	set cur_obj_idx_unk_43A, #6
	JSR	exec_b0_c3_128418
	set byte_659, #0

locret_12C4AD:
	RTS
; End of function sub_12C46C

; =============== S U B	R O U T	I N E =======================================

sub_12C4AE:
	if_a_not_equal_cmp_addr byte_471, #0, loc_12C4C8
	set text_idx_35C, #$BA 
	set char_type_id_35D, #0
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; ---------------------------------------------------------------------------

loc_12C4C8:
	set byte_47F, #5
	set byte_46D, #$1A
	RTS
; End of function sub_12C4AE

; =============== S U B	R O U T	I N E =======================================

sub_12C4D3:
	if_a_not_equal_cmp_addr byte_313, #1, locret_12C4F2
	set cur_obj_idx_unk_43A, #1
	JSR	sub_12BF29
	set cur_obj_idx_unk_43A, #2
	JSR	sub_12BF29
	set cur_obj_idx_unk_43A, #3
	JSR	sub_12BF29

locret_12C4F2:
	RTS
; End of function sub_12C4D3

; =============== S U B	R O U T	I N E =======================================

sub_12C4F3:
	if_a_equal_cmp_addr byte_587, #$FF, locret_12C519
	if_a_equal_cmp_addr byte_471, #0, loc_12C507
	set byte_46D, #$39 
	RTS
; ---------------------------------------------------------------------------

loc_12C507:
	set text_idx_35C, #$D
	set char_type_id_35D, #2
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973

locret_12C519:
	RTS
; End of function sub_12C4F3

; =============== S U B	R O U T	I N E =======================================

sub_12C51A:
	if_a_equal_cmp_addr byte_591, #$FF, locret_12C540
	if_a_equal_cmp_addr byte_471, #0, loc_12C52E
	set byte_46D, #$27 
	RTS
; ---------------------------------------------------------------------------

loc_12C52E:
	set text_idx_35C, #$E
	set char_type_id_35D, #2
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973

locret_12C540:
	RTS
; End of function sub_12C51A

; =============== S U B	R O U T	I N E =======================================

sub_12C541:
	if_a_equal_cmp_addr byte_592, #$FF, locret_12C567
	if_a_equal_cmp_addr byte_471, #0, loc_12C555
	set byte_46D, #$28 
	RTS
; ---------------------------------------------------------------------------

loc_12C555:
	set text_idx_35C, #$F
	set char_type_id_35D, #2
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973

locret_12C567:
	RTS
; End of function sub_12C541

; =============== S U B	R O U T	I N E =======================================

sub_12C568:
	if_a_equal_cmp_addr byte_471, #0, loc_12C575
	set byte_46D, #$2E 
	RTS
; ---------------------------------------------------------------------------

loc_12C575:
	set text_idx_35C, #$12
	set char_type_id_35D, #2
	set tilemapTypeUnk_30B, #1
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
	set image_id_4A4, #$9D 
	if_a_equal_cmp_addr byte_593, #0, loc_12C5B1
	set image_id_4A4, #$9E 

loc_12C5B1:
	set image_offset_4A5, #0
	STA	ppu_prev_unk_4A6
	STA	ppu_prev_scroll_x_unk_4A7
	STA	ppu_prev_scroll_y_unk_4A8
	set prev_sprite_type_4A9, #$FF
	JSR	exec_b0_c2_12A9A9
	JSR	wait_for_b_pressed_FCC5
	from_stack_to_a prev_sprite_type_4A9
	from_stack_to_a ppu_prev_scroll_y_unk_4A8
	from_stack_to_a ppu_prev_scroll_x_unk_4A7
	from_stack_to_a ppu_prev_unk_4A6
	from_stack_to_a image_offset_4A5
	from_stack_to_a image_id_4A4
	set map_show_43B, #$FF
	JSR	exec_b0_c2_12A9A9
	set map_show_43B, #0
	RTS
; End of function show_tree_screen_12C588

; =============== S U B	R O U T	I N E =======================================

sub_12C5F0:
	set text_idx_35C, #$E3 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c1_12A98E
	if_a_not_equal byte_372, locret_12C636
	xor_byte byte_593, #$FF
	JSR	entry_idx_handler_unk_12AA6D
	set image_id_4A4, entry_idx_300
	set image_offset_4A5, ppu_unk_byte_302
	set ppu_prev_unk_4A6, ppu_unk_byte_303
	set ppu_prev_scroll_x_unk_4A7, ppu_scroll_x_304
	set ppu_prev_scroll_y_unk_4A8, ppu_scroll_y_305
	JSR	exec_b0_c2_12A9A9

locret_12C636:
	RTS
; End of function sub_12C5F0

; =============== S U B	R O U T	I N E =======================================

sub_12C637:
	if_a_not_equal_cmp_addr entry_idx_300, #$77, loc_12C645
	if_a_equal_cmp_addr byte_68D, #$FF, loc_12C681

loc_12C645:
	if_a_not_equal_cmp_addr entry_idx_300, #$7B, loc_12C653
	if_a_equal_cmp_addr byte_68E, #$FF, loc_12C681

loc_12C653:
	if_a_not_equal_cmp_addr entry_idx_300, #$80, loc_12C661
	if_a_equal_cmp_addr byte_68F, #$FF, loc_12C681

loc_12C661:
	if_a_equal_cmp_addr byte_471, #0, loc_12C66E
	set byte_46D, #$30 
	RTS
; ---------------------------------------------------------------------------

loc_12C66E:
	set text_idx_35C, #$20 
	set char_type_id_35D, #2
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; ---------------------------------------------------------------------------

loc_12C681:
	set text_idx_35C, #$21 
	set char_type_id_35D, #2
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; End of function sub_12C637

; =============== S U B	R O U T	I N E =======================================

sub_12C694:
	set text_idx_35C, #$24 
	set char_type_id_35D, #2
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c1_12A98E
	if_a_equal_cmp_addr byte_372, #1, locret_12C6B8
	set byte_420, #2
	JSR	sub_12F07D

locret_12C6B8:
	RTS
; End of function sub_12C694

; =============== S U B	R O U T	I N E =======================================

sub_12C6B9:
	if_a_not_equal_cmp_addr byte_471, #0, loc_12C6D3
	set text_idx_35C, #$BA 
	set char_type_id_35D, #0
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; ---------------------------------------------------------------------------

loc_12C6D3:
	set byte_47F, #6
	set byte_46D, #$1A
	RTS
; End of function sub_12C6B9

; =============== S U B	R O U T	I N E =======================================

sub_12C6DE:
	set text_idx_35C, #$2A 
	set char_type_id_35D, #2
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c1_12A98E
	if_a_equal_cmp_addr byte_372, #1, locret_12C6FF
	set byte_67B, #$FF

locret_12C6FF:
	RTS
; End of function sub_12C6DE

; =============== S U B	R O U T	I N E =======================================

sub_12C700:
	if_a_equal_cmp_addr byte_67A, #$FF, loc_12C72A
	set text_idx_35C, #$27 
	set char_type_id_35D, #2
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c1_12A98E
	if_a_equal_cmp_addr byte_372, #1, locret_12C754
	if_a_not_equal_cmp_addr byte_67B, #$FF, loc_12C742

loc_12C72A:
	set text_idx_35C, #$28 
	set char_type_id_35D, #2
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	set byte_67A, #$FF
	RTS
; ---------------------------------------------------------------------------

loc_12C742:
	set text_idx_35C, #$29 
	set char_type_id_35D, #2
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973

locret_12C754:
	RTS
; End of function sub_12C700

; =============== S U B	R O U T	I N E =======================================

sub_12C755:
	set text_idx_35C, #$26 
	set char_type_id_35D, #2
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c1_12A98E
	if_a_equal_cmp_addr byte_372, #1, locret_12C791
	if_a_equal_cmp_addr byte_67A, #0, loc_12C77E
	set byte_6A0, #$FF
	RTS
; ---------------------------------------------------------------------------

loc_12C77E:
	set text_idx_35C, #$33 
	set char_type_id_35D, #2
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; ---------------------------------------------------------------------------

locret_12C791:
	RTS
; End of function sub_12C755

; =============== S U B	R O U T	I N E =======================================

sub_12C792:
	if_a_equal_cmp_addr byte_595, #$FF, locret_12C7CA
	set byte_595, #$FF
	STA	byte_6A1
	set byte_6A3, #0
	JSR	entry_idx_handler_unk_12AA6D
	set image_id_4A4, entry_idx_300
	set image_offset_4A5, ppu_unk_byte_302
	set ppu_prev_unk_4A6, ppu_unk_byte_303
	set ppu_prev_scroll_x_unk_4A7, ppu_scroll_x_304
	set ppu_prev_scroll_y_unk_4A8, ppu_scroll_y_305
	JSR	exec_b0_c2_12A9A9

locret_12C7CA:
	RTS
; End of function sub_12C792

; =============== S U B	R O U T	I N E =======================================

sub_12C7CB:
	set text_idx_35C, #$35 
	set char_type_id_35D, #2
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; End of function sub_12C7CB

; =============== S U B	R O U T	I N E =======================================

sub_12C7DE:
	if_a_not_equal_cmp_addr image_id_4A4, #$18, loc_12C7EB
	set byte_54E, #2
	RTS
; ---------------------------------------------------------------------------

loc_12C7EB:
	if_a_not_equal_cmp_addr image_id_4A4, #$1B, loc_12C805
	if_a_not_equal_cmp_addr cur_obj_idx_unk_43A, #0, loc_12C7FF
	set byte_5E8, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C7FF:
	set byte_5E9, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C805:
	if_a_not_equal_cmp_addr image_id_4A4, #$87, loc_12C812
	set byte_5D8, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C812:
	if_a_not_equal_cmp_addr image_id_4A4, #$1F, loc_12C82C
	if_a_not_equal_cmp_addr cur_obj_idx_unk_43A, #0, loc_12C826
	set byte_5DA, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C826:
	set byte_5DB, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C82C:
	if_a_not_equal_cmp_addr image_id_4A4, #$22, loc_12C839
	set byte_5E0, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C839:
	if_a_not_equal_cmp_addr image_id_4A4, #$23, loc_12C846
	set byte_5E1, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C846:
	if_a_not_equal_cmp_addr image_id_4A4, #$25, loc_12C860
	if_a_not_equal_cmp_addr cur_obj_idx_unk_43A, #1, loc_12C85A
	set byte_5E4, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C85A:
	set byte_5E5, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C860:
	if_a_not_equal_cmp_addr image_id_4A4, #$2B, loc_12C87A
	if_a_not_equal_cmp_addr cur_obj_idx_unk_43A, #0, loc_12C874
	set byte_5F0, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C874:
	set byte_5F1, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C87A:
	if_a_not_equal_cmp_addr image_id_4A4, #$2C, loc_12C887
	set byte_5F2, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C887:
	if_a_not_equal_cmp_addr image_id_4A4, #$30, loc_12C894
	set byte_5F6, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C894:
	if_a_not_equal_cmp_addr image_id_4A4, #$36, loc_12C8AE
	if_a_not_equal_cmp_addr cur_obj_idx_unk_43A, #1, loc_12C8A8
	set byte_5B2, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C8A8:
	set byte_5B1, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C8AE:
	if_a_not_equal_cmp_addr image_id_4A4, #$37, loc_12C8C8
	if_a_not_equal_cmp_addr cur_obj_idx_unk_43A, #0, loc_12C8C2
	set byte_602, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C8C2:
	set byte_603, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C8C8:
	if_a_not_equal_cmp_addr image_id_4A4, #$3C, loc_12C8D5
	set byte_612, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C8D5:
	if_a_not_equal_cmp_addr image_id_4A4, #$3A, loc_12C8F9
	if_a_not_equal_cmp_addr cur_obj_idx_unk_43A, #2, loc_12C8E9
	set byte_60A, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C8E9:
	if_a_not_equal_cmp #3, loc_12C8F3
	set byte_60B, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C8F3:
	set byte_60C, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C8F9:
	if_a_not_equal_cmp_addr image_id_4A4, #$41, loc_12C913
	if_a_not_equal_cmp_addr cur_obj_idx_unk_43A, #0, loc_12C90D
	set byte_619, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C90D:
	set byte_61A, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C913:
	if_a_not_equal_cmp_addr image_id_4A4, #$48, loc_12C92D
	if_a_not_equal_cmp_addr cur_obj_idx_unk_43A, #0, loc_12C927
	set byte_620, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C927:
	set byte_621, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C92D:
	if_a_not_equal_cmp_addr image_id_4A4, #$32, loc_12C93A
	set byte_5FC, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C93A:
	if_a_not_equal_cmp_addr image_id_4A4, #$33, loc_12C954
	if_a_not_equal_cmp_addr cur_obj_idx_unk_43A, #0, loc_12C94E
	set byte_5FD, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C94E:
	set byte_5FE, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C954:
	if_a_not_equal_cmp_addr image_id_4A4, #$34, loc_12C96E
	if_a_not_equal_cmp_addr cur_obj_idx_unk_43A, #0, loc_12C968
	set byte_5FF, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C968:
	set byte_600, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C96E:
	if_a_not_equal_cmp_addr image_id_4A4, #$4E, loc_12C992
	if_a_not_equal_cmp_addr cur_obj_idx_unk_43A, #6, loc_12C982
	set byte_630, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C982:
	if_a_not_equal_cmp #7, loc_12C98C
	set byte_631, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C98C:
	set byte_632, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C992:
	if_a_not_equal_cmp_addr image_id_4A4, #$50, loc_12C9AC
	if_a_not_equal_cmp_addr cur_obj_idx_unk_43A, #0, loc_12C9A6
	set byte_634, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C9A6:
	set byte_634, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C9AC:
	if_a_not_equal_cmp_addr image_id_4A4, #$51, loc_12C9C6
	if_a_not_equal_cmp_addr cur_obj_idx_unk_43A, #4, loc_12C9C0
	set byte_63B, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C9C0:
	set byte_63C, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C9C6:
	if_a_not_equal_cmp_addr image_id_4A4, #$54, loc_12C9D3
	set byte_63E, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C9D3:
	if_a_not_equal_cmp_addr image_id_4A4, #$55, loc_12C9ED
	if_a_not_equal_cmp_addr cur_obj_idx_unk_43A, #0, loc_12C9E7
	set byte_63F, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C9E7:
	set byte_640, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C9ED:
	if_a_not_equal_cmp_addr image_id_4A4, #$91, loc_12C9FA
	set byte_647, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C9FA:
	if_a_not_equal_cmp_addr image_id_4A4, #$58, loc_12CA1E
	if_a_not_equal_cmp_addr cur_obj_idx_unk_43A, #0, loc_12CA0E
	set byte_648, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CA0E:
	if_a_not_equal_cmp #1, loc_12CA18
	set byte_649, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CA18:
	set byte_64A, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CA1E:
	if_a_not_equal_cmp_addr image_id_4A4, #$60, loc_12CA2B
	set byte_65E, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CA2B:
	if_a_not_equal_cmp_addr image_id_4A4, #$61, loc_12CA45
	if_a_not_equal_cmp_addr cur_obj_idx_unk_43A, #2, loc_12CA3F
	set byte_661, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CA3F:
	set byte_662, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CA45:
	if_a_not_equal_cmp_addr image_id_4A4, #$5F, loc_12CA5F
	if_a_not_equal_cmp_addr cur_obj_idx_unk_43A, #2, loc_12CA59
	set byte_668, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CA59:
	set byte_669, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CA5F:
	if_a_not_equal_cmp_addr image_id_4A4, #$65, loc_12CA79
	if_a_not_equal_cmp_addr cur_obj_idx_unk_43A, #1, loc_12CA73
	set byte_66B, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CA73:
	set byte_66C, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CA79:
	if_a_not_equal_cmp_addr image_id_4A4, #$66, loc_12CA86
	set byte_66E, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CA86:
	if_a_not_equal_cmp_addr image_id_4A4, #$68, loc_12CA93
	set byte_670, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CA93:
	if_a_not_equal_cmp_addr image_id_4A4, #$72, loc_12CAAD
	if_a_not_equal_cmp_addr cur_obj_idx_unk_43A, #0, loc_12CAA7
	set byte_67C, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CAA7:
	set byte_67D, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CAAD:
	if_a_not_equal_cmp_addr image_id_4A4, #$77, loc_12CAD1
	if_a_not_equal_cmp_addr cur_obj_idx_unk_43A, #0, loc_12CAC1
	set byte_688, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CAC1:
	if_a_not_equal_cmp #1, loc_12CACB
	set byte_689, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CACB:
	set byte_68A, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CAD1:
	if_a_not_equal_cmp_addr image_id_4A4, #$7F, loc_12CAF5
	if_a_not_equal_cmp_addr cur_obj_idx_unk_43A, #0, loc_12CAE5
	set byte_695, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CAE5:
	if_a_not_equal_cmp #1, loc_12CAEF
	set byte_696, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CAEF:
	set byte_697, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CAF5:
	if_a_not_equal_cmp_addr image_id_4A4, #$74, loc_12CB23
	if_a_not_equal_cmp_addr cur_obj_idx_unk_43A, #0, loc_12CB09
	set byte_698, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CB09:
	if_a_not_equal_cmp #1, loc_12CB13
	set byte_699, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CB13:
	if_a_not_equal_cmp #2, loc_12CB1D
	set byte_69A, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CB1D:
	set byte_69B, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CB23:
	if_a_not_equal_cmp_addr image_id_4A4, #$7C, loc_12CB3D
	if_a_not_equal_cmp_addr cur_obj_idx_unk_43A, #0, loc_12CB37
	set byte_69C, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CB37:
	set byte_69D, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CB3D:
	if_a_not_equal_cmp_addr image_id_4A4, #$9A, loc_12CB4A
	set byte_6A7, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CB4A:
	if_a_not_equal_cmp_addr image_id_4A4, #$96, locret_12CB57
	set byte_6A1, #0
	RTS
; ---------------------------------------------------------------------------

locret_12CB57:
	RTS
; End of function sub_12C7DE

; =============== S U B	R O U T	I N E =======================================

show_intro_screen_12CB58:
	JSR	wait_any_input_65k_cycles_FCAB
	set image_id_4A4, #$10
	set image_offset_4A5, #0
	STA	ppu_prev_unk_4A6
	STA	ppu_prev_scroll_x_unk_4A7
	STA	ppu_prev_scroll_y_unk_4A8
	set prev_sprite_type_4A9, #2
	set objectIdx_318, #$1A
	JSR	exec_b0_c2_12A9A9
	set byte_42C, #$88 
	set byte_42E, #$26 
	set byte_430, #0
	STA	byte_431
	STA	byte_433
	STA	byte_434
	STA	byte_42B

loc_12CB96:
	JSR	sub_12CC34
	JSR	wait_for_frame_rendered_FCA0
	JSR	wait_for_frame_rendered_FCA0
	JSR	wait_for_frame_rendered_FCA0
	JSR	wait_for_frame_rendered_FCA0
	if_a_equal_cmp_addr byte_42E, #$26, loc_12CBB2
	DEC	byte_42E
	JMP	loc_12CB96
; ---------------------------------------------------------------------------

loc_12CBB2:
	if_a_equal_cmp_addr byte_434, #4, loc_12CBD9
	BCS	loc_12CBD9
	LDA	#2
	add_to_a byte_434
	STA	objMapIdx_316
	JSR	sub_12CCAB
	if_a_greater_cmp_addr count_unk_468, #$14, loc_12CBD6
	set count_unk_468, #0
	INC	byte_434

loc_12CBD6:
	JMP	loc_12CB96
; ---------------------------------------------------------------------------

loc_12CBD9:
	if_a_greater_cmp_addr count_unk_469, #$A, loc_12CBF7
	set count_unk_469, #0
	xor_byte byte_434, #1
	if_a_equal_cmp_addr byte_42B, #$14, show_ending_screen_12CC06
	INC	byte_42B

loc_12CBF7:
	LDA	#2
	add_to_a byte_434
	STA	objMapIdx_316
	JSR	sub_12CCAB
	JMP	loc_12CB96
; ---------------------------------------------------------------------------

show_ending_screen_12CC06:
	set image_id_4A4, #$A0 
	set image_offset_4A5, #0
	STA	ppu_prev_unk_4A6
	STA	ppu_prev_scroll_x_unk_4A7
	STA	ppu_prev_scroll_y_unk_4A8
	set prev_sprite_type_4A9, #2
	set objectIdx_318, #$1A
	JSR	exec_b0_c2_12A9A9
	set text_idx_35C, #$46 
	set char_type_id_35D, #2
	JSR	exec_b2_c2_1283DF
	RTS
; End of function show_intro_screen_12CB58

; =============== S U B	R O U T	I N E =======================================

sub_12CC34:
	if_a_greater_cmp_addr count_unk_465, #$A, loc_12CC48
	set count_unk_465, #0
	xor_byte byte_430, #1

loc_12CC48:
	if_a_greater_cmp_addr count_unk_466, #$F, loc_12CC5C
	set count_unk_466, #0
	xor_byte byte_431, #1

loc_12CC5C:
	if_a_greater_cmp_addr count_unk_467, #$A, loc_12CC70
	set count_unk_467, #0
	xor_byte byte_433, #1

loc_12CC70:
	LDA	byte_42C
	add_to_a byte_430
	STA	byte_36A
	LDA	byte_42E
	add_to_a byte_431
	STA	byte_366
	set byte_367, #0
	STA	byte_36B
	set sprite_secondByte_31B, #0
	STA	byte_31A
	set objectIdx_318, #$1A
	LDA	#0
	add_to_a byte_433
	STA	objMapIdx_316
	set byte_317, #0
	JSR	exec_b1_c1_128394
	RTS
; End of function sub_12CC34

; =============== S U B	R O U T	I N E =======================================

sub_12CCAB:
	set byte_36A, #$70 
	set byte_36B, #0
	set byte_366, #$50 
	set byte_367, #0
	set sprite_secondByte_31B, #0
	set byte_31A, #$8C 
	set objectIdx_318, #$1A
	set byte_317, #1
	if_a_greater_cmp_addr objMapIdx_316, #6, loc_12CCDF
	set byte_317, #2

loc_12CCDF:
	JSR	exec_b1_c1_128394
	RTS
; End of function sub_12CCAB

; =============== S U B	R O U T	I N E =======================================

comm_46_12CCE3:
	if_a_equal_cmp_addr byte_6C5, #0, return_12CD1C
	set text_idx_35C, #$7B 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #4
	JSR	exec_b0_c0_12A973
	set tilemapData_4C, #1
	set roomUnk1_4D, #0
	set roomUnk2_4E, #8
	set tilemap_line_idx_4F, #1
	JSR	exec_b0_cB_1284E0
	set cur_obj_idx_unk_43A, #0
	JSR	exec_b0_c3_128418
	set byte_6C5, #0

return_12CD1C:
	RTS
; End of function comm_46_12CCE3

; =============== S U B	R O U T	I N E =======================================

comm_48_take_item_12CD1D:
	set text_idx_35C, #$45 
	set char_type_id_35D, #2
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; End of function comm_48_take_item_12CD1D

; =============== S U B	R O U T	I N E =======================================

com_E_load_game_12CD30:
	set byte_100, image_id_4A4
	set byte_101, image_offset_4A5
	set byte_102, ppu_prev_unk_4A6
	set byte_103, ppu_prev_scroll_x_unk_4A7
	set byte_104, ppu_prev_scroll_y_unk_4A8
	set byte_105, prev_sprite_type_4A9
	a_to_stack image_id_4A4
	a_to_stack image_offset_4A5
	a_to_stack ppu_prev_unk_4A6
	a_to_stack ppu_prev_scroll_x_unk_4A7
	a_to_stack ppu_prev_scroll_y_unk_4A8
	a_to_stack prev_sprite_type_4A9
	set objectIdx_318, #5
	set byte_360, #0
	set byte_361, #3
	set image_id_4A4, #$B
	set image_offset_4A5, #0
	STA	ppu_prev_unk_4A6
	STA	ppu_prev_scroll_x_unk_4A7
	STA	ppu_prev_scroll_y_unk_4A8
	set prev_sprite_type_4A9, #2
	JSR	exec_b0_c2_12A9A9
	LDY	#0
	set ppu_unk_byte_309, #$B
	set sprite_secondByte_31B, #$7A 

loc_12CDA2:
	if_y_equal_cmp #4, loc_12CE00
	if_a_equal_cmp_addr {byte_4A0,Y}, #$FF, loc_12CDEA
	add_to_a #$7E 
	STA	text_idx_35C
	set char_type_id_35D, #0
	set tilemap_size_307, #8
	set byte_35E, #8
	set byte_35F, #1
	set byte_362, #0
	set byte_363, #0
	set byte_364, #7
	set byte_310, #0
	y_to_stack
	a_to_stack ppu_unk_byte_309
	JSR	exec_b2_c4_1283F2
	from_stack_to_a ppu_unk_byte_309
	from_stack_to_y

loc_12CDEA:
	add_byte_to_byte_clc ppu_unk_byte_309, #4
	add_byte_to_byte_clc sprite_secondByte_31B, #$18

	INY
	JMP	loc_12CDA2
; ---------------------------------------------------------------------------

loc_12CE00:
	set byte_372, #0

loc_12CE05:
	JSR	sub_12D0C2
	JSR	wait_for_frame_rendered_FCA0
	if_a_not_equal_cmp_addr input_pressed_34A, #8, loc_12CE25
	if_a_not_equal byte_372, loc_12CE1C
	set byte_372, #4

loc_12CE1C:
	DEC	byte_372
	JSR	sub_12ED32
	JMP	loc_12CE05
; ---------------------------------------------------------------------------

loc_12CE25:
	if_a_not_equal_cmp #4, loc_12CE3E
	if_a_not_equal_cmp_addr byte_372, #3, loc_12CE35
	set byte_372, #$FF

loc_12CE35:
	INC	byte_372
	JSR	sub_12ED32
	JMP	loc_12CE05
; ---------------------------------------------------------------------------

loc_12CE3E:
	if_a_not_equal_cmp #$80, loc_12CE62
	JSR	sub_12ED20
	if_a_not_equal_cmp_addr jill_pos_y_47E, #$FF, loc_12CE57
	JSR	sub_12D120
	if_a_not_equal sprite_length_30F, loc_12CE69
	JMP	loc_12CE05
; ---------------------------------------------------------------------------

loc_12CE57:
	JSR	sub_12CEAC
	if_a_not_equal sprite_length_30F, loc_12CE69
	JMP	loc_12CE05
; ---------------------------------------------------------------------------

loc_12CE62:
	if_a_equal_cmp #$40, loc_12CE69
	JMP	loc_12CE05
; ---------------------------------------------------------------------------

loc_12CE69:
	JSR	sub_12ED29
	if_a_equal_cmp_addr jill_pos_y_47E, #$FF, loc_12CE99
	from_stack_to_a prev_sprite_type_4A9
	from_stack_to_a ppu_prev_scroll_y_unk_4A8
	from_stack_to_a ppu_prev_scroll_x_unk_4A7
	from_stack_to_a ppu_prev_unk_4A6
	from_stack_to_a image_offset_4A5
	from_stack_to_a image_id_4A4
	set map_show_43B, #$FF
	JSR	exec_b0_c2_12A9A9
	set map_show_43B, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CE99:
	if_a_not_equal_cmp_addr sprite_length_30F, #$FF, loc_12CEA5
	set jill_pos_y_47E, #0

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
	if_a_not_equal_cmp_addr {byte_4A0,Y}, #$FF, loc_12CEBA
	JSR	sub_12CFBA
	RTS
; ---------------------------------------------------------------------------

loc_12CEBA:
	set ppu_unk_byte_309, #$1B
	set tilemap_size_307, #6
	set sprite_secondByte_31B, #$DA 
	set text_idx_35C, #$85 
	set char_type_id_35D, #0
	set byte_35E, #$C
	set byte_35F, #1
	set byte_362, #0
	set byte_363, #0
	set byte_364, #7
	set byte_310, #0
	JSR	exec_b2_c4_1283F2
	set ppu_unk_byte_309, #$1B
	set tilemap_size_307, #$15
	set sprite_secondByte_31B, #$F2 
	set text_idx_35C, #$86 
	set char_type_id_35D, #0
	set byte_35E, #3
	set byte_35F, #1
	set byte_364, #6
	set byte_310, #0
	JSR	exec_b2_c4_1283F2
	a_to_stack byte_372
	set byte_372, #1

loc_12CF2D:
	JSR	sub_12D070
	JSR	wait_for_vblank_FC95
	if_a_not_equal_cmp_addr input_pressed_34A, #2, loc_12CF48
	xor_byte byte_372, #1
	JSR	sub_12ED32
	JMP	loc_12CF2D
; ---------------------------------------------------------------------------

loc_12CF48:
	if_a_not_equal_cmp #1, loc_12CF5A
	xor_byte byte_372, #1
	JSR	sub_12ED32
	JMP	loc_12CF2D
; ---------------------------------------------------------------------------

loc_12CF5A:
	if_a_equal_cmp #$80, loc_12CF61
	JMP	loc_12CF2D
; ---------------------------------------------------------------------------

loc_12CF61:
	JSR	sub_12ED20
	set byte_204, #$F0 
	if_a_not_equal byte_372, loc_12CF76
	from_stack_to_a byte_372
	JSR	sub_12CFBA
	RTS
; ---------------------------------------------------------------------------

loc_12CF76:
	set ppu_unk_byte_309, #$1B
	set tilemap_size_307, #6
	set sprite_secondByte_31B, #$DA 
	set text_idx_35C, #$74 
	set char_type_id_35D, #0
	set byte_35E, #$C
	set byte_35F, #1
	set byte_362, #0
	set byte_363, #0
	set byte_364, #7
	set byte_310, #0
	JSR	exec_b2_c4_1283F2
	from_stack_to_a byte_372
	set sprite_length_30F, #0
	RTS
; End of function sub_12CEAC

; =============== S U B	R O U T	I N E =======================================

sub_12CFBA:
	set byte_204, #$F0 
	LDY	byte_372
	set {byte_4A0,Y}, byte_47F
	a_to_stack byte_372
	set ppu_unk_byte_309, #$B
	set sprite_secondByte_31B, #$7A 
	LDA	#$7E 
	add_to_a byte_47F
	STA	text_idx_35C
	LDA	#0
	ADC	#0
	STA	char_type_id_35D

loc_12CFE6:
	if_a_equal byte_372, loc_12D003
	add_byte_to_byte_clc ppu_unk_byte_309, #4
	add_byte_to_byte_clc sprite_secondByte_31B, #$18

	DEC	byte_372
	JMP	loc_12CFE6
; ---------------------------------------------------------------------------

loc_12D003:
	set tilemap_size_307, #8
	set byte_35E, #8
	set byte_35F, #1
	set byte_362, #0
	set byte_363, #0
	set byte_364, #7
	set byte_310, #0
	JSR	exec_b2_c4_1283F2
	set ppu_unk_byte_309, #$1B
	set tilemap_size_307, #6
	set sprite_secondByte_31B, #$DA 
	set text_idx_35C, #$87 
	set char_type_id_35D, #0
	set byte_35E, #$C
	set byte_35F, #1
	set byte_362, #0
	set byte_363, #0
	set byte_364, #7
	set byte_310, #0
	JSR	exec_b2_c4_1283F2
	from_stack_to_a byte_372
	JSR	sub_12D167
	set sprite_length_30F, #$FF
	RTS
; End of function sub_12CFBA

; =============== S U B	R O U T	I N E =======================================

sub_12D070:
	if_a_greater_cmp_addr count_unk_466, #$A, loc_12D084
	set count_unk_466, #0
	xor_byte byte_547, #1

loc_12D084:
	set objMapIdx_316, #$25 
	LDA	byte_372
	mult_a_by_2
	TAY
	LDA	byte_12D11C,Y
	add_to_a byte_547
	STA	byte_36A
	INY
	LDA	byte_12D11C,Y
	add_to_a #2
	STA	byte_366
	set byte_36B, #0
	STA	byte_367
	set objectIdx_318, #5
	set byte_31A, #4
	set sprite_secondByte_31B, #0
	set byte_317, #0
	JSR	exec_b1_c1_128394
	RTS
; End of function sub_12D070

; =============== S U B	R O U T	I N E =======================================

sub_12D0C2:
	if_a_greater_cmp_addr count_unk_465, #$A, loc_12D0D6
	set count_unk_465, #0
	xor_byte byte_547, #1

loc_12D0D6:
	set objMapIdx_316, #$25 
	LDA	byte_372
	mult_a_by_2
	TAY
	LDA	byte_12D114,Y
	add_to_a byte_547
	STA	byte_36A
	INY
	LDA	byte_12D114,Y
	add_to_a #2
	STA	byte_366
	set byte_36B, #0
	STA	byte_367
	set objectIdx_318, #5
	set byte_31A, #0
	set sprite_secondByte_31B, #0
	set byte_317, #0
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
	if_a_equal_cmp_addr {byte_4A0,Y}, #$FF, loc_12D133
	JSR	sub_12D1E9
	set sprite_length_30F, #$FF
	RTS
; ---------------------------------------------------------------------------

loc_12D133:
	set sprite_length_30F, #0
	RTS
; End of function sub_12D120

; =============== S U B	R O U T	I N E =======================================

sub_12D139:
	set_ptr _SAVE_RAM

	add_byte_to_word ptr_0, #$14

	LDY	byte_372

loc_12D151:
	if_y_equal_cmp #0, locret_12D166

	add_byte_to_byte_clc ptr_0, #$58 
	add_byte_to_byte ptr_1, #2

	DEY
	JMP	loc_12D151
; ---------------------------------------------------------------------------

locret_12D166:
	RTS
; End of function sub_12D139

; =============== S U B	R O U T	I N E =======================================

sub_12D167:
	set_ptr _SAVE_RAM

	LDY	#0

loc_12D171:
	TYA
	STA	(ptr_0),Y
	INY
	if_y_greater_cmp #$10, loc_12D171
	LDX	#0

loc_12D17B:
	set_inx {(ptr_0),Y}, {byte_4A0,X}
	INY
	if_x_greater_cmp #4, loc_12D17B

	add_byte_to_word ptr_0, #$14

	set image_id_4A4, byte_100
	set image_offset_4A5, byte_101
	set ppu_prev_unk_4A6, byte_102
	set ppu_prev_scroll_x_unk_4A7, byte_103
	set ppu_prev_scroll_y_unk_4A8, byte_104
	set prev_sprite_type_4A9, byte_105
	JSR	sub_12D139
	LDY	#0

loc_12D1BC:
	set_iny {(ptr_0),Y}, {image_id_4A4,Y}
	if_y_not_equal_cmp #0, loc_12D1BC
	add_byte_to_byte_clc ptr_1, #4

loc_12D1CD:
	set_iny {(ptr_0),Y}, {byte_5A4,Y}
	if_y_not_equal_cmp #0, loc_12D1CD
	add_byte_to_byte_clc ptr_1, #4

loc_12D1DE:
	set_iny {(ptr_0),Y}, {byte_6A4,Y}
	if_y_not_equal_cmp #$44 , loc_12D1DE
	RTS
; End of function sub_12D167

; =============== S U B	R O U T	I N E =======================================

sub_12D1E9:
	JSR	sub_12D139
	LDY	#0

loc_12D1EE:
	set_iny {image_id_4A4,Y}, {(ptr_0),Y}
	if_y_not_equal_cmp #0, loc_12D1EE
	add_byte_to_byte_clc ptr_1, #4

loc_12D1FF:
	set_iny {byte_5A4,Y}, {(ptr_0),Y}
	if_y_not_equal_cmp #0, loc_12D1FF
	add_byte_to_byte_clc ptr_1, #4

loc_12D210:
	set_iny {byte_6A4,Y}, {(ptr_0),Y}
	if_y_not_equal_cmp #$44 , loc_12D210
	RTS
; End of function sub_12D1E9

; =============== S U B	R O U T	I N E =======================================

sub_12D21B:
	JSR	sub_12EEAE
	JSR	ppu_reset_ctrl_mask_FE93
	JSR	sub_12D261
	set _PPU_ADDR, #$10
	set _PPU_ADDR, #0
	LDX	#$20 

loc_12D230:
	LDY	#0

loc_12D232:
	set_iny _PPU_DATA, #0
	BNE	loc_12D232
	DEX
	BNE	loc_12D230
	LDX	#0

loc_12D23F:
	set_inx {palette_bg_321,X}, {byte_12D251,X}
	if_x_not_equal_cmp #$10, loc_12D23F
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
	set tilemapWidth_308, #0
	set byte_31A, #0
; End of function sub_12D261

; =============== S U B	R O U T	I N E =======================================

sub_12D26B:
	add_byte_to_byte_clc tilemapWidth_308, byte_31A
	LDY	byte_31A

loc_12D278:
	set_iny {byte_200,Y}, #$F0 
	INY
	INY
	INY
	if_y_not_equal_cmp tilemapWidth_308, loc_12D278
	RTS
; End of function sub_12D26B

; =============== S U B	R O U T	I N E =======================================

sub_12D287:
	set sprite_length_30F, #0
	set byte_42C, #0
	STA	byte_42E
	set objectIdx_318, #5
	set byte_360, #0
	set byte_361, #1

set_inventory_screen_12D2A3:
	set image_id_4A4, #8
	set image_offset_4A5, #0
	STA	ppu_prev_unk_4A6
	STA	ppu_prev_scroll_x_unk_4A7
	STA	ppu_prev_scroll_y_unk_4A8
	set prev_sprite_type_4A9, #2
	JSR	exec_b0_c2_12A9A9
	JSR	sub_12DC52
	JSR	sub_12DE49
	JSR	sub_12DEB5
	set byte_372, #0
	set sprite_secondByte_31B, #$3C 
	if_a_equal byte_532, loc_12D315

loc_12D2D6:
	LDY	byte_372
	LDA	byte_533,Y
	TAX
	set inv_itemPrev_idx_31D, {byte_12E869,X}
	LDA	byte_372
	mult_a_by_2
	TAY
	div_a_by_8_addr {byte_12E851,Y}
	STA	tilemap_size_307
	INY
	div_a_by_8_addr {byte_12E851,Y}
	STA	ppu_unk_byte_309
	JSR	sub_128358
	JSR	sub_128326
	add_byte_to_byte_clc sprite_secondByte_31B, #$11
	INC	byte_372
	if_a_not_equal_cmp_addr byte_372, byte_532, loc_12D2D6

loc_12D315:
	JSR	sub_12E3DF
	RTS
; End of function sub_12D287

; =============== S U B	R O U T	I N E =======================================

sub_12D319:
	JSR	sub_12DD0A
	set byte_31A, #$80 
	set tilemapWidth_308, #$C
	JSR	sub_12D26B
; End of function sub_12D319

; =============== S U B	R O U T	I N E =======================================

sub_12D329:
	LDA	byte_42E
	mult_a_by_2
	add_to_a byte_42C
	if_a_greater_cmp byte_532, loc_12D33A
	JSR	sub_12D49F
	RTS
; ---------------------------------------------------------------------------

loc_12D33A:
	STA	tilemapTypeUnk_30B
	LDA	tilemapTypeUnk_30B
	mult_a_by_2
	TAX
	set_inx tilemap_size_307, {byte_12E851,X}
	LDA	byte_12E851,X
	add_to_a #$10
	STA	ppu_unk_byte_309
	LDY	tilemapTypeUnk_30B
	if_a_equal_cmp_addr {byte_533,Y}, #1, loc_12D383
	if_a_equal_cmp #2, loc_12D383
	if_a_equal_cmp #3, loc_12D383
	if_a_equal_cmp #4, loc_12D383
	if_a_equal_cmp #5, loc_12D383
	if_a_equal_cmp #6, loc_12D383
	if_a_equal_cmp #7, loc_12D383
	if_a_equal_cmp #8, loc_12D383
	if_a_equal_cmp #9, loc_12D383
	if_a_equal_cmp #$1A, loc_12D383
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
	set text_idx_35C, {byte_533,Y}
	set char_type_id_35D, #0
	set byte_364, #7
	JSR	exec_b2_c1_128300
	RTS
; End of function sub_12D329

; =============== S U B	R O U T	I N E =======================================

sub_12D3AB:
	STA	ptr_0
	set data_2, #0
	STA	data_3

loc_12D3B3:
	if_a_greater_cmp_addr ptr_0, #$64, loc_12D3C5
	sub_byte_sec ptr_0, #$64 
	INC	data_3
	JMP	loc_12D3B3
; ---------------------------------------------------------------------------

loc_12D3C5:
	if_a_greater_cmp_addr ptr_0, #$A, loc_12D3D7
	sub_byte_sec ptr_0, #$A
	INC	data_2
	JMP	loc_12D3C5
; ---------------------------------------------------------------------------

loc_12D3D7:
	if_a_equal data_3, loc_12D423
	add_byte_to_byte_clc tilemap_size_307, #4
	LDA	data_3
	add_to_a #$32 
	STA	objMapIdx_316
	set byte_317, #0
	set byte_31A, #$80 
	set sprite_secondByte_31B, #0
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
	add_to_a #8
	STA	tilemap_size_307

loc_12D423:
	if_a_not_equal data_3, loc_12D434
	if_a_equal data_2, loc_12D473
	add_byte_to_byte_clc tilemap_size_307, #8

loc_12D434:
	LDA	data_2
	add_to_a #$32 
	STA	objMapIdx_316
	set byte_317, #0
	set byte_31A, #$84 
	set sprite_secondByte_31B, #0
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
	add_to_a #8
	STA	tilemap_size_307

loc_12D473:
	if_a_not_equal data_3, loc_12D484
	if_a_not_equal data_2, loc_12D484
	add_byte_to_byte_clc tilemap_size_307, #$C

loc_12D484:
	LDA	ptr_0
	add_to_a #$32 
	STA	objMapIdx_316
	set byte_317, #0
	set byte_31A, #$88 
	set sprite_secondByte_31B, #0
	JSR	sub_12E829
	RTS
; End of function sub_12D3AB

; =============== S U B	R O U T	I N E =======================================

sub_12D49F:
	set byte_310, #0
	set byte_35E, #$A
	set ppu_unk_byte_309, #$1B
	set tilemap_size_307, #4
; End of function sub_12D49F

; =============== S U B	R O U T	I N E =======================================

sub_12D4B3:
	set byte_35F, #1
	set byte_362, #0
	set byte_363, #0
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
	if_a_not_equal_cmp_addr input_pressed_34A, #8, loc_12D512
	if_a_not_equal_cmp_addr byte_42E, #0, loc_12D506
	set byte_42E, #6

loc_12D506:
	DEC	byte_42E
	JSR	sub_12ED32
	JSR	sub_12D319
	JMP	loc_12D4E7
; ---------------------------------------------------------------------------

loc_12D512:
	if_a_not_equal_cmp #4, loc_12D52E
	if_a_not_equal_cmp_addr byte_42E, #5, loc_12D522
	set byte_42E, #$FF

loc_12D522:
	INC	byte_42E
	JSR	sub_12ED32
	JSR	sub_12D319
	JMP	loc_12D4E7
; ---------------------------------------------------------------------------

loc_12D52E:
	if_a_not_equal_cmp #2, loc_12D543
	xor_byte byte_42C, #1
	JSR	sub_12ED32
	JSR	sub_12D319
	JMP	loc_12D4E7
; ---------------------------------------------------------------------------

loc_12D543:
	if_a_not_equal_cmp #1, loc_12D558
	xor_byte byte_42C, #1
	JSR	sub_12ED32
	JSR	sub_12D319
	JMP	loc_12D4E7
; ---------------------------------------------------------------------------

loc_12D558:
	if_a_not_equal_cmp #$80, loc_12D569
	JSR	sub_12DB1E
	if_a_equal_cmp_addr sprite_length_30F, #$FF, loc_12D570
	JMP	loc_12D4E7
; ---------------------------------------------------------------------------

loc_12D569:
	if_a_equal_cmp #$10, loc_12D570
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
	set text_idx_35C, tilemapTypeUnk_30B
	set char_type_id_35D, #0
	if_a_not_equal_cmp_addr tilemapTypeUnk_30B, #$3B, loc_12D5D2
	set text_idx_35C, #7
	set char_type_id_35D, #2

loc_12D5D2:
	LDY	tilemapTypeUnk_30B
	set inv_itemPrev_idx_31D, {byte_12E869,Y}
	set tilemap_size_307, #$A
	set ppu_unk_byte_309, #8
	set sprite_secondByte_31B, #$C4 
	JSR	sub_128358
	JSR	sub_128326
	set byte_364, #7
	JSR	exec_b2_c1_128300
	JSR	sub_12DAD0
	from_stack_to_a tilemapTypeUnk_30B
	if_a_greater_cmp_addr byte_532, #8, loc_12D623
	set text_idx_35C, #$7D 
	set char_type_id_35D, #0
	set byte_364, #7
	JSR	exec_b2_c1_128300
	JSR	sub_12DAD0
	set sprite_length_30F, #0
	JMP	loc_12D652
; ---------------------------------------------------------------------------

loc_12D623:
	set text_idx_35C, #$7A 
	set char_type_id_35D, #0
	set byte_364, #7
	a_to_stack tilemapTypeUnk_30B
	JSR	exec_b2_c1_128300
	JSR	sub_12D680
	from_stack_to_a tilemapTypeUnk_30B
	set sprite_length_30F, #0
	if_a_not_equal byte_372, loc_12D652
	JSR	sub_12D82B
	set sprite_length_30F, #$FF

loc_12D652:
	from_stack_to_a prev_sprite_type_4A9
	from_stack_to_a ppu_prev_scroll_y_unk_4A8
	from_stack_to_a ppu_prev_scroll_x_unk_4A7
	from_stack_to_a ppu_prev_unk_4A6
	from_stack_to_a image_offset_4A5
	from_stack_to_a image_id_4A4
	set map_show_43B, #$FF
	a_to_stack sprite_length_30F
	JSR	exec_b0_c2_12A9A9
	from_stack_to_a sprite_length_30F
	set map_show_43B, #0
	RTS
; End of function sub_12D58C

; =============== S U B	R O U T	I N E =======================================

sub_12D680:
	set byte_372, #0

loc_12D685:
	if_a_greater_cmp_addr byte_546, #$A, loc_12D699
	set byte_546, #0
	xor_byte byte_547, #1

loc_12D699:
	set byte_31A, #$70 
	set sprite_secondByte_31B, #0
	set byte_317, #0
	set objMapIdx_316, #$30 
	LDA	byte_372
	mult_a_by_32
	add_to_a #$84 
	add_to_a byte_547
	add_to_a byte_547
	STA	tilemap_size_307
	set ppu_unk_byte_309, #$DC 
	JSR	sub_12E829
	JSR	wait_for_vblank_FC95
	if_a_not_equal_cmp_addr input_pressed_34A, #2, loc_12D6E3
	xor_byte byte_372, #1
	JSR	sub_12ED32
	JMP	loc_12D685
; ---------------------------------------------------------------------------

loc_12D6E3:
	if_a_not_equal_cmp #1, loc_12D6F5
	xor_byte byte_372, #1
	JSR	sub_12ED32
	JMP	loc_12D685
; ---------------------------------------------------------------------------

loc_12D6F5:
	if_a_equal_cmp #$80, loc_12D6FC
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
	set byte_372, #0
	JSR	sub_12DF32
	JSR	sub_12DCCC
	JSR	sub_12DCE9

loc_12D72F:
	JSR	sub_12DD0A
	JSR	wait_for_vblank_FC95
	if_a_not_equal_cmp_addr input_pressed_34A, #8, loc_12D76F
	if_a_not_equal_cmp_addr byte_42E, #0, loc_12D757
	if_a_not_equal_cmp_addr byte_42C, #1, loc_12D752
	set byte_42E, #6
	JMP	loc_12D757
; ---------------------------------------------------------------------------

loc_12D752:
	set byte_42E, #4

loc_12D757:
	if_a_not_equal_cmp_addr byte_42E, #5, loc_12D763
	set byte_42E, #4

loc_12D763:
	DEC	byte_42E
	JSR	sub_12ED32
	JSR	sub_12D319
	JMP	loc_12D72F
; ---------------------------------------------------------------------------

loc_12D76F:
	if_a_not_equal_cmp #4, loc_12D7A6
	if_a_not_equal_cmp_addr byte_42E, #3, loc_12D78E
	if_a_not_equal_cmp_addr byte_42C, #1, loc_12D789
	set byte_42E, #4
	JMP	loc_12D78E
; ---------------------------------------------------------------------------

loc_12D789:
	set byte_42E, #$FF

loc_12D78E:
	if_a_not_equal_cmp_addr byte_42E, #5, loc_12D79A
	set byte_42E, #$FF

loc_12D79A:
	INC	byte_42E
	JSR	sub_12ED32
	JSR	sub_12D319
	JMP	loc_12D72F
; ---------------------------------------------------------------------------

loc_12D7A6:
	if_a_not_equal_cmp #2, loc_12D7C5
	if_a_not_equal_cmp_addr byte_42E, #5, loc_12D7B4
	JMP	loc_12D72F
; ---------------------------------------------------------------------------

loc_12D7B4:
	xor_byte byte_42C, #1
	JSR	sub_12ED32
	JSR	sub_12D319
	JMP	loc_12D72F
; ---------------------------------------------------------------------------

loc_12D7C5:
	if_a_not_equal_cmp #1, loc_12D7E4
	if_a_not_equal_cmp_addr byte_42E, #5, loc_12D7D3
	JMP	loc_12D72F
; ---------------------------------------------------------------------------

loc_12D7D3:
	xor_byte byte_42C, #1
	JSR	sub_12ED32
	JSR	sub_12D319
	JMP	loc_12D72F
; ---------------------------------------------------------------------------

loc_12D7E4:
	if_a_not_equal_cmp #$80, loc_12D7FB
	if_a_equal_cmp_addr byte_42E, #5, loc_12D802
	JSR	sub_12ED20
	JSR	sub_12DC76
	JSR	sub_12D319
	JMP	loc_12D72F
; ---------------------------------------------------------------------------

loc_12D7FB:
	if_a_equal_cmp #$10, loc_12D802
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
	set map_show_43B, #$FF
	JSR	exec_b0_c2_12A9A9
	set map_show_43B, #0
	RTS
; End of function sub_12D700

; =============== S U B	R O U T	I N E =======================================

sub_12D82B:
	LDY	byte_532
	set {byte_533,Y}, tilemapTypeUnk_30B
	if_a_not_equal_cmp_addr tilemapTypeUnk_30B, #1, loc_12D840
	set {unk_53B,Y}, #$F

loc_12D840:
	if_a_not_equal_cmp_addr tilemapTypeUnk_30B, #2, loc_12D84C
	set {unk_53B,Y}, #6

loc_12D84C:
	if_a_not_equal_cmp_addr tilemapTypeUnk_30B, #3, loc_12D858
	set {unk_53B,Y}, #6

loc_12D858:
	if_a_not_equal_cmp_addr tilemapTypeUnk_30B, #4, loc_12D864
	set {unk_53B,Y}, #6

loc_12D864:
	if_a_not_equal_cmp_addr tilemapTypeUnk_30B, #5, loc_12D870
	set {unk_53B,Y}, #6

loc_12D870:
	if_a_not_equal_cmp_addr tilemapTypeUnk_30B, #6, loc_12D87C
	set {unk_53B,Y}, #$F

loc_12D87C:
	if_a_not_equal_cmp #7, loc_12D885
	set {unk_53B,Y}, #6

loc_12D885:
	if_a_not_equal_cmp #8, loc_12D88E
	set {unk_53B,Y}, #6

loc_12D88E:
	if_a_not_equal_cmp #9, loc_12D897
	set {unk_53B,Y}, #6

loc_12D897:
	if_a_not_equal_cmp #$1A, loc_12D8A0
	set {unk_53B,Y}, #3

loc_12D8A0:
	if_a_not_equal byte_4B4, loc_12D8AF
	add_byte_to_byte_clc {unk_53B,Y}, {unk_53B,Y}

loc_12D8AF:
	INC	byte_532
	RTS
; End of function sub_12D82B

; =============== S U B	R O U T	I N E =======================================

sub_12D8B3:
	if_a_greater_cmp_addr tilemapTypeUnk_30B, byte_532, loc_12D8BC
	RTS
; ---------------------------------------------------------------------------

loc_12D8BC:
	LDY	tilemapTypeUnk_30B
	LDX	tilemapTypeUnk_30B
	INX

loc_12D8C3:
	if_x_equal_cmp byte_532, loc_12D8D9
	set {byte_533,Y}, {byte_533,X}
	set_inx {unk_53B,Y}, {unk_53B,X}
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
	LDA	byte_42E
	mult_a_by_2
	add_to_a byte_42C
	if_a_greater_cmp byte_532, loc_12D900
	LDX	byte_372
	set {unk_4D2,X}, #$3A 
	JMP	loc_12D910
; ---------------------------------------------------------------------------

loc_12D900:
	TAY
	LDX	byte_372
	set {unk_4D2,X}, {byte_533,Y}
	set {unk_502,X}, {unk_53B,Y}

loc_12D910:
	JSR	sub_12DF2B
	from_stack_to_a inv_spr_dscr1_30C
	from_stack_to_a tilemapTypeUnk_30B
	LDA	byte_42E
	mult_a_by_2
	add_to_a byte_42C
	TAY
	if_y_greater_cmp byte_532, loc_12D946
	if_a_not_equal_cmp_addr tilemapTypeUnk_30B, #$3A, loc_12D931
	RTS
; ---------------------------------------------------------------------------

loc_12D931:
	LDY	byte_532
	set {byte_533,Y}, tilemapTypeUnk_30B
	set {unk_53B,Y}, inv_spr_dscr1_30C
	INC	byte_532
	JMP	loc_12D9A3
; ---------------------------------------------------------------------------

loc_12D946:
	if_a_equal_cmp_addr {byte_533,Y}, #6, loc_12D966
	BCS	loc_12D966
	a_to_stack tilemapTypeUnk_30B
	a_to_stack inv_spr_dscr1_30C
	y_to_stack
	JSR	sub_12DFFC
	from_stack_to_y
	from_stack_to_a inv_spr_dscr1_30C
	from_stack_to_a tilemapTypeUnk_30B

loc_12D966:
	set {unk_53B,Y}, inv_spr_dscr1_30C
	set {byte_533,Y}, tilemapTypeUnk_30B
	if_a_not_equal_cmp #$3A, loc_12D9A3
	y_to_stack
	TAX

loc_12D979:
	TYA
	TAX
	INX
	if_x_equal_cmp byte_532, loc_12D991
	set {byte_533,Y}, {byte_533,X}
	set_iny {unk_53B,Y}, {unk_53B,X}
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
	set sprite_secondByte_31B, #$A
	JSR	sub_12D9F7
	from_stack_to_y
	from_stack_to_a tilemapTypeUnk_30B
	LDX	tilemapTypeUnk_30B
	set inv_itemPrev_idx_31D, {byte_12E869,X}
	TYA
	TAX
	set sprite_secondByte_31B, #$3C 

loc_12D9C9:
	if_x_equal_cmp #0, loc_12D9DA
	add_byte_to_byte_clc sprite_secondByte_31B, #$11
	DEX
	JMP	loc_12D9C9
; ---------------------------------------------------------------------------

loc_12D9DA:
	TYA
	mult_a_by_2
	TAY
	div_a_by_8_addr {byte_12E851,Y}
	STA	tilemap_size_307
	INY
	div_a_by_8_addr {byte_12E851,Y}
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
	mult_a_by_2
	TAX
	div_a_by_8_addr {byte_12E851,X}
	STA	tilemap_size_307
	INX
	div_a_by_8_addr {byte_12E851,X}
	STA	ppu_unk_byte_309
	set inv_itemPrev_idx_31D, #$29 
	set sprite_secondByte_31B, #$A
	y_to_stack
	JSR	sub_128326
	from_stack_to_y
	STY	tilemapTypeUnk_30B
	from_stack_to_x
	INX
	if_x_greater_cmp tilemapTypeUnk_30B, loc_12D9FB
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
	if_a_not_equal_cmp tilemapTypeUnk_30B, loc_12DA43
	JMP	loc_12DACB
; ---------------------------------------------------------------------------

loc_12DA43:
	set sprite_secondByte_31B, #$3C 

loc_12DA48:
	if_a_equal_cmp_addr tilemapTypeUnk_30B, #0, loc_12DA5E
	add_byte_to_byte_clc sprite_secondByte_31B, #$11
	DEC	tilemapTypeUnk_30B
	JMP	loc_12DA48
; ---------------------------------------------------------------------------

loc_12DA5E:
	x_to_stack
	LDA	byte_533,X
	TAX
	set inv_itemPrev_idx_31D, {byte_12E869,X}
	from_stack_to_x
	PHA
	mult_a_by_2
	TAX
	div_a_by_8_addr {byte_12E851,X}
	STA	tilemap_size_307
	INX
	div_a_by_8_addr {byte_12E851,X}
	STA	ppu_unk_byte_309
	y_to_stack
	JSR	sub_128358
	JSR	sub_128326
	from_stack_to_y
	STA	tilemapTypeUnk_30B
	from_stack_to_x
	x_to_stack
	LDA	byte_533,X
	add_to_a #1
	if_a_not_equal_cmp byte_543, loc_12DABA
	STX	byte_544
	set tilemap_size_307, #$10
	set ppu_unk_byte_309, #$14
	a_to_stack tilemapTypeUnk_30B
	y_to_stack
	JSR	sub_128326
	from_stack_to_y
	from_stack_to_a tilemapTypeUnk_30B

loc_12DABA:
	add_byte_to_byte_clc sprite_secondByte_31B, #$11
	from_stack_to_x
	INX
	if_x_greater_cmp tilemapTypeUnk_30B, loc_12DA5E

loc_12DACB:
	from_stack_to_y
	from_stack_to_x
	RTS
; End of function sub_12DA33

; =============== S U B	R O U T	I N E =======================================

sub_12DAD0:
	if_a_greater_cmp_addr byte_546, #$A, loc_12DAE4
	set byte_546, #0
	xor_byte byte_547, #1

loc_12DAE4:
	set byte_31A, #$70 
	set sprite_secondByte_31B, #0
	set byte_317, #0
	set objMapIdx_316, #$2F 
	set tilemap_size_307, #$C4 
	LDA	#$E0 
	add_to_a byte_547
	add_to_a byte_547
	STA	ppu_unk_byte_309
	JSR	sub_12E829
	JSR	wait_for_vblank_FC95
	if_a_not_equal_cmp_addr input_pressed_34A, #0, loc_12DB1A
	JMP	sub_12DAD0
; ---------------------------------------------------------------------------

loc_12DB1A:
	JSR	sub_12ED32
	RTS
; End of function sub_12DAD0

; =============== S U B	R O U T	I N E =======================================

sub_12DB1E:
	if_a_not_equal_cmp_addr byte_42E, #4, loc_12DB3A
	if_a_not_equal_cmp_addr byte_42C, #0, loc_12DB33
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
	if_a_not_equal_cmp_addr byte_42E, #5, loc_12DB75
	if_a_not_equal_cmp_addr byte_42C, #0, loc_12DB6C
	if_a_equal byte_545, locret_12DB6B
	JSR	sub_12ED20
	set text_idx_35C, #$44 
	set char_type_id_35D, #2
	set byte_364, #7
	JSR	exec_b2_c1_128300
	JSR	sub_12E3D4
	JSR	sub_12ED29
	JSR	sub_12D49F

locret_12DB6B:
	RTS
; ---------------------------------------------------------------------------

loc_12DB6C:
	JSR	sub_12ED29
	set sprite_length_30F, #$FF
	RTS
; ---------------------------------------------------------------------------

loc_12DB75:
	LDA	byte_42E
	mult_a_by_2
	add_to_a byte_42C
	if_a_greater_cmp byte_532, loc_12DB83
	RTS
; ---------------------------------------------------------------------------

loc_12DB83:
	JSR	sub_12ED20
	set byte_372, #0
	JSR	sub_12DC31

loc_12DB8E:
	JSR	wait_for_vblank_FC95
	if_a_not_equal_cmp_addr input_pressed_34A, #8, loc_12DBB0
	if_a_not_equal_cmp_addr byte_372, #0, loc_12DBA4
	set byte_372, #3

loc_12DBA4:
	DEC	byte_372
	JSR	sub_12ED32
	JSR	sub_12DC31
	JMP	loc_12DB8E
; ---------------------------------------------------------------------------

loc_12DBB0:
	if_a_not_equal_cmp #4, loc_12DBCC
	if_a_not_equal_cmp_addr byte_372, #2, loc_12DBC0
	set byte_372, #$FF

loc_12DBC0:
	INC	byte_372
	JSR	sub_12ED32
	JSR	sub_12DC31
	JMP	loc_12DB8E
; ---------------------------------------------------------------------------

loc_12DBCC:
	if_a_not_equal_cmp #$80, loc_12DC0F
	JSR	sub_12ED20
	LDA	byte_42E
	mult_a_by_2
	add_to_a byte_42C
	STA	byte_47B
	if_a_not_equal_cmp_addr byte_372, #0, loc_12DBEB
	JSR	sub_12DFA5
	JMP	loc_12DC0C
; ---------------------------------------------------------------------------

loc_12DBEB:
	if_a_not_equal_cmp #1, loc_12DBF5
	JSR	sub_12E384
	JMP	loc_12DC0C
; ---------------------------------------------------------------------------

loc_12DBF5:
	if_a_not_equal_cmp #2, loc_12DC0C
	a_to_stack byte_42C
	a_to_stack byte_42E
	JSR	sub_12E428
	from_stack_to_a byte_42E
	from_stack_to_a byte_42C

loc_12DC0C:
	JMP	loc_12DC16
; ---------------------------------------------------------------------------

loc_12DC0F:
	if_a_equal_cmp #$40, loc_12DC16
	JMP	loc_12DB8E
; ---------------------------------------------------------------------------

loc_12DC16:
	JSR	sub_12ED29
	set tilemapWidth_308, #$60 
	set byte_31A, #$A0 
	JSR	sub_12D26B
	if_a_equal_cmp_addr sprite_length_30F, #$FF, locret_12DC30
	JSR	sub_12D319

locret_12DC30:
	RTS
; End of function sub_12DB1E

; =============== S U B	R O U T	I N E =======================================

sub_12DC31:
	LDA	byte_372
	add_to_a #$20 
	STA	objMapIdx_316
	set tilemap_size_307, #$80 
	set ppu_unk_byte_309, #$50 
	set byte_31A, #$A0 
	set sprite_secondByte_31B, #0
	JSR	sub_12E829
	RTS
; End of function sub_12DC31

; =============== S U B	R O U T	I N E =======================================

sub_12DC52:
	LDA	byte_545
	add_to_a #$1B
	STA	objMapIdx_316
	set byte_31A, #$40 
	set sprite_secondByte_31B, #0
	STA	byte_317
	set tilemap_size_307, #$B0 
	set ppu_unk_byte_309, #$1F
	JSR	sub_12E829
	RTS
; End of function sub_12DC52

; =============== S U B	R O U T	I N E =======================================

sub_12DC76:
	JSR	sub_12DF6C

loc_12DC79:
	JSR	wait_for_vblank_FC95
	if_a_not_equal_cmp_addr input_reg1_347, #8, loc_12DC97
	if_a_equal byte_372, loc_12DC79
	DEC	byte_372
	JSR	sub_12ED32
	JSR	sub_12DF2B
	JSR	sub_12DCE9
	JMP	loc_12DC79
; ---------------------------------------------------------------------------

loc_12DC97:
	if_a_not_equal_cmp #4, loc_12DCB1
	if_a_equal_cmp_addr byte_372, #$2F, loc_12DC79
	INC	byte_372
	JSR	sub_12ED32
	JSR	sub_12DF2B
	JSR	sub_12DCE9
	JMP	loc_12DC79
; ---------------------------------------------------------------------------

loc_12DCB1:
	if_a_not_equal_cmp_addr input_pressed_34A, #$80, loc_12DCC1
	JSR	sub_12ED20
	JSR	sub_12D8DD
	JMP	loc_12DCC8
; ---------------------------------------------------------------------------

loc_12DCC1:
	if_a_equal_cmp #$40, loc_12DCC8
	JMP	loc_12DC79
; ---------------------------------------------------------------------------

loc_12DCC8:
	JSR	sub_12ED29
	RTS
; End of function sub_12DC76

; =============== S U B	R O U T	I N E =======================================

sub_12DCCC:
	set objMapIdx_316, #$23 
	set tilemap_size_307, #$90 
	set ppu_unk_byte_309, #$30 
	set byte_31A, #$A8 
	set sprite_secondByte_31B, #0
	JSR	sub_12E829
	RTS
; End of function sub_12DCCC

; =============== S U B	R O U T	I N E =======================================

sub_12DCE9:
	set objMapIdx_316, #$24 
	set tilemap_size_307, #$90 
	LDA	#$38 
	add_to_a byte_372
	STA	ppu_unk_byte_309
	set byte_31A, #$A0 
	set sprite_secondByte_31B, #0
	JSR	sub_12E829
	RTS
; End of function sub_12DCE9

; =============== S U B	R O U T	I N E =======================================

sub_12DD0A:
	if_a_greater_cmp_addr byte_546, #$A, loc_12DD1E
	set byte_546, #0
	xor_byte byte_547, #1

loc_12DD1E:
	LDA	byte_42E
	mult_a_by_4
	add_to_a byte_42C
	add_to_a byte_42C
	TAY
	set_iny tilemap_size_307, {byte_12E851,Y}
	set ppu_unk_byte_309, {byte_12E851,Y}
	set byte_31A, #$60 
	set sprite_secondByte_31B, #0
	set byte_317, #0
	set objMapIdx_316, #$2A 
	a_to_stack tilemap_size_307
	a_to_stack ppu_unk_byte_309
	add_byte_to_byte_clc ppu_unk_byte_309, byte_547
	add_byte_to_byte_clc tilemap_size_307, byte_547

	JSR	sub_12E829
	from_stack_to_a ppu_unk_byte_309
	from_stack_to_a tilemap_size_307
	add_byte_to_byte_clc byte_31A, #4

	set objMapIdx_316, #$2B 
	a_to_stack tilemap_size_307
	a_to_stack ppu_unk_byte_309
	add_byte_to_byte_clc ppu_unk_byte_309, byte_547

	LDA	tilemap_size_307
	add_to_a #$18
	sub_a_sec byte_547
	STA	tilemap_size_307
	JSR	sub_12E829
	from_stack_to_a ppu_unk_byte_309
	from_stack_to_a tilemap_size_307
	add_byte_to_byte_clc byte_31A, #4
	set objMapIdx_316, #$2C 
	a_to_stack tilemap_size_307
	a_to_stack ppu_unk_byte_309
	LDA	ppu_unk_byte_309
	add_to_a #$18
	sub_a_sec byte_547
	STA	ppu_unk_byte_309
	add_byte_to_byte_clc tilemap_size_307, byte_547
	if_a_greater_cmp_addr byte_42E, #4, loc_12DDE9
	sub_byte_sec ppu_unk_byte_309, #$10

loc_12DDE9:
	JSR	sub_12E829
	from_stack_to_a ppu_unk_byte_309
	from_stack_to_a tilemap_size_307
	add_byte_to_byte_clc byte_31A, #4
	set objMapIdx_316, #$2D 
	a_to_stack tilemap_size_307
	a_to_stack ppu_unk_byte_309
	LDA	tilemap_size_307
	add_to_a #$18
	sub_a_sec byte_547
	STA	tilemap_size_307
	LDA	ppu_unk_byte_309
	add_to_a #$18
	sub_a_sec byte_547
	STA	ppu_unk_byte_309
	if_a_greater_cmp_addr byte_42E, #4, loc_12DE34
	sub_byte_sec ppu_unk_byte_309, #$10

loc_12DE34:
	JSR	sub_12E829
	from_stack_to_a ppu_unk_byte_309
	from_stack_to_a tilemap_size_307
	add_byte_to_byte_clc byte_31A, #4
	RTS
; End of function sub_12DD0A

; =============== S U B	R O U T	I N E =======================================

sub_12DE49:
	if_a_greater_cmp_addr count_unk_465, #5, locret_12DEB4
	set count_unk_465, #0
	INC	byte_54D
	if_a_greater_cmp_addr byte_54D, #7, loc_12DE64
	set byte_54D, #0

loc_12DE64:
	set objMapIdx_316, byte_54D
	if_a_greater_cmp_addr byte_549, #$55, loc_12DE8E
	if_a_greater_cmp #$AA, loc_12DE7D
	set byte_54B, #0
	JMP	loc_12DE9C
; ---------------------------------------------------------------------------

loc_12DE7D:
	add_byte_to_byte_clc objMapIdx_316, #7
	set byte_54B, #1
	JMP	loc_12DE9C
; ---------------------------------------------------------------------------

loc_12DE8E:
	add_byte_to_byte_clc objMapIdx_316, #$E
	set byte_54B, #2

loc_12DE9C:
	set byte_31A, #0
	STA	sprite_secondByte_31B
	STA	byte_317
	set tilemap_size_307, #$40 
	set ppu_unk_byte_309, #$A0 
	JSR	sub_12E829

locret_12DEB4:
	RTS
; End of function sub_12DE49

; =============== S U B	R O U T	I N E =======================================

sub_12DEB5:
	set objMapIdx_316, byte_54B
	if_a_equal byte_54A, loc_12DEC9
	add_byte_to_byte_clc objMapIdx_316, #3

loc_12DEC9:
	add_byte_to_byte_clc objMapIdx_316, #$15
	set byte_31A, #$30 
	set sprite_secondByte_31B, #0
	STA	byte_317
	set tilemap_size_307, #$40 
	set ppu_unk_byte_309, #$B8 
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
	set tilemap_size_307, #$A
	set ppu_unk_byte_309, #8
	set inv_itemPrev_idx_31D, #$29 
	set sprite_secondByte_31B, #$A
	JSR	sub_128326
	LDX	byte_372
	LDA	unk_4D2,X
	TAY
	set inv_itemPrev_idx_31D, {byte_12E869,Y}
	set tilemap_size_307, #$A
	set ppu_unk_byte_309, #8
	set sprite_secondByte_31B, #$C4 
	JSR	sub_128358
	JSR	sub_128326
	RTS
; End of function sub_12DF32

; =============== S U B	R O U T	I N E =======================================

sub_12DF6C:
	LDX	byte_372
	set text_idx_35C, {unk_4D2,X}
	set char_type_id_35D, #0
	if_a_not_equal_cmp_addr inv_itemPrev_idx_31D, #$29, loc_12DF8B
	set text_idx_35C, #$75 
	set char_type_id_35D, #0

loc_12DF8B:
	if_a_not_equal_cmp_addr inv_itemPrev_idx_31D, #$15, loc_12DF9C
	set text_idx_35C, #7
	set char_type_id_35D, #2

loc_12DF9C:
	set byte_364, #7
	JSR	exec_b2_c1_128300
	RTS
; End of function sub_12DF6C

; =============== S U B	R O U T	I N E =======================================

sub_12DFA5:
; FUNCTION CHUNK AT E019 SIZE 0000013D BYTES
; FUNCTION CHUNK AT E166 SIZE 0000021E BYTES

	LDA	byte_42E
	mult_a_by_2
	add_to_a byte_42C
	TAY
	set tilemapTypeUnk_30B, {byte_533,Y}
	if_a_greater_cmp_addr tilemapTypeUnk_30B, #6, loc_12DFC6
	if_a_greater_cmp #$A, loc_12E019
	if_a_greater_cmp #$13, loc_12E035
	JMP	loc_12E166
; ---------------------------------------------------------------------------

loc_12DFC6:
	if_a_not_equal_cmp_addr tilemapTypeUnk_30B, #2, loc_12DFD7
	if_a_not_equal_cmp_addr byte_46D, #2, loc_12DFD7
	JMP	loc_12E166
; ---------------------------------------------------------------------------

loc_12DFD7:
	if_a_not_equal_cmp_addr tilemapTypeUnk_30B, #0, loc_12DFE8
	if_a_not_equal_cmp_addr byte_46D, #0, loc_12DFE8
	JMP	loc_12E166
; ---------------------------------------------------------------------------

loc_12DFE8:
	LDA	tilemapTypeUnk_30B
	add_to_a #1
	if_a_equal_cmp byte_543, sub_12DFFC
	STA	byte_543
	STY	byte_544
	JMP	sub_12E3DF
; End of function sub_12DFA5

; =============== S U B	R O U T	I N E =======================================

sub_12DFFC:
	set byte_543, #0
	set tilemap_size_307, #$10
	set ppu_unk_byte_309, #$14
	set inv_itemPrev_idx_31D, #$29 
	set sprite_secondByte_31B, #$A
	JSR	sub_128326
	RTS
; End of function sub_12DFFC

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_12DFA5

loc_12E019:
	set text_idx_35C, #$77 
	set char_type_id_35D, #0
	set byte_364, #7
	JSR	exec_b2_c1_128300
	JSR	sub_12E3D4
	JSR	sub_12ED29
	JSR	sub_12D49F
	RTS
; ---------------------------------------------------------------------------

loc_12E035:
	if_a_not_equal_cmp_addr tilemapTypeUnk_30B, #$12, loc_12E05D
	if_a_not_equal_cmp_addr byte_54A, #0, loc_12E04D
	if_a_greater_cmp_addr byte_549, #$C8, loc_12E04D
	JMP	loc_12E05D
; ---------------------------------------------------------------------------

loc_12E04D:
	set byte_549, #$FF
	set byte_54A, #0
	STA	byte_4B5
	JMP	loc_12E13A
; ---------------------------------------------------------------------------

loc_12E05D:
	if_a_not_equal_cmp_addr tilemapTypeUnk_30B, #$C, loc_12E076
	if_a_equal_cmp_addr byte_54A, #0, loc_12E076
	set byte_54A, #0
	STA	byte_4B5
	JMP	loc_12E13A
; ---------------------------------------------------------------------------

loc_12E076:
	if_a_not_equal_cmp_addr tilemapTypeUnk_30B, #$E, loc_12E09E
	if_a_not_equal_cmp_addr byte_54A, #0, loc_12E08E
	if_a_greater_cmp_addr byte_549, #$C8, loc_12E08E
	JMP	loc_12E09E
; ---------------------------------------------------------------------------

loc_12E08E:
	set byte_54A, #0
	STA	byte_4B5
	LDA	#$AA 
	JSR	sub_12E156
	JMP	loc_12E13A
; ---------------------------------------------------------------------------

loc_12E09E:
	if_a_not_equal_cmp_addr tilemapTypeUnk_30B, #$11, loc_12E0C6
	if_a_not_equal_cmp_addr byte_54A, #0, loc_12E0B6
	if_a_greater_cmp_addr byte_549, #$C8, loc_12E0B6
	JMP	loc_12E0C6
; ---------------------------------------------------------------------------

loc_12E0B6:
	set byte_54A, #0
	STA	byte_4B5
	LDA	#$55 
	JSR	sub_12E156
	JMP	loc_12E13A
; ---------------------------------------------------------------------------

loc_12E0C6:
	if_a_not_equal_cmp_addr tilemapTypeUnk_30B, #$B, loc_12E0DC
	if_a_lower_cmp_addr byte_549, #$C8, loc_12E0DC
	LDA	#$55 
	JSR	sub_12E156
	JMP	loc_12E13A
; ---------------------------------------------------------------------------

loc_12E0DC:
	if_a_not_equal_cmp_addr tilemapTypeUnk_30B, #$D, loc_12E0F2
	if_a_lower_cmp_addr byte_549, #$C8, loc_12E0F2
	LDA	#$AA 
	JSR	sub_12E156
	JMP	loc_12E13A
; ---------------------------------------------------------------------------

loc_12E0F2:
	if_a_not_equal_cmp_addr tilemapTypeUnk_30B, #$F, loc_12E108
	if_a_lower_cmp_addr byte_549, #$C8, loc_12E108
	LDA	#$AA 
	JSR	sub_12E156
	JMP	loc_12E13A
; ---------------------------------------------------------------------------

loc_12E108:
	if_a_not_equal_cmp_addr tilemapTypeUnk_30B, #$10, loc_12E11E
	if_a_lower_cmp_addr byte_549, #$C8, loc_12E11E
	LDA	#$FF
	JSR	sub_12E156
	JMP	loc_12E13A
; ---------------------------------------------------------------------------

loc_12E11E:
	set text_idx_35C, #$78 
	set char_type_id_35D, #0
	set byte_364, #7
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
	set tilemapTypeUnk_30B, byte_47B
	JSR	sub_12D8B3
	LDX	byte_47B
	LDY	byte_532
	JSR	sub_12DA33
	RTS
; END OF FUNCTION CHUNK	FOR sub_12DFA5

; =============== S U B	R O U T	I N E =======================================

sub_12E156:
	add_to_a byte_549
	BCC	loc_12E162
	set byte_549, #$FF
	RTS
; ---------------------------------------------------------------------------

loc_12E162:
	STA	byte_549
	RTS
; End of function sub_12E156

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_12DFA5

loc_12E166:
	if_a_not_equal_cmp_addr tilemapTypeUnk_30B, #$2F, loc_12E170
	JMP	loc_12E315
; ---------------------------------------------------------------------------

loc_12E170:
	if_a_not_equal_cmp_addr tilemapTypeUnk_30B, #$12, loc_12E17A
	JMP	loc_12E035
; ---------------------------------------------------------------------------

loc_12E17A:
	if_a_not_equal_cmp_addr byte_46D, #$1E, loc_12E1A0
	if_a_equal_cmp_addr tilemapTypeUnk_30B, #$1E, loc_12E202
	if_a_equal_cmp_addr tilemapTypeUnk_30B, #$1F, loc_12E202
	if_a_equal_cmp_addr tilemapTypeUnk_30B, #$20, loc_12E202
	if_a_equal_cmp_addr tilemapTypeUnk_30B, #$21, loc_12E202
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E1A0:
	if_a_not_equal_cmp #$22, loc_12E1B5
	if_a_equal_cmp_addr tilemapTypeUnk_30B, #$22, loc_12E202
	if_a_equal_cmp_addr tilemapTypeUnk_30B, #$23, loc_12E202
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E1B5:
	if_a_not_equal_cmp #$2D, loc_12E1C3
	if_a_equal_cmp_addr tilemapTypeUnk_30B, #$2D, loc_12E202
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E1C3:
	if_a_not_equal_cmp #$1C, loc_12E1D8
	if_a_equal_cmp_addr tilemapTypeUnk_30B, #$1C, loc_12E202
	if_a_equal_cmp_addr tilemapTypeUnk_30B, #$1D, loc_12E202
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E1D8:
	if_a_not_equal_cmp #$1B, loc_12E1E6
	if_a_equal_cmp_addr tilemapTypeUnk_30B, #$1B, loc_12E202
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E1E6:
	if_a_not_equal_cmp #$29, loc_12E1F4
	if_a_equal_cmp_addr tilemapTypeUnk_30B, #$29, loc_12E202
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E1F4:
	if_a_not_equal_cmp #$13, loc_12E205
	if_a_equal_cmp_addr tilemapTypeUnk_30B, #$13, loc_12E202
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E202:
	JMP	loc_12E315
; ---------------------------------------------------------------------------

loc_12E205:
	if_a_not_equal_cmp #$18, loc_12E213
	if_a_equal_cmp_addr tilemapTypeUnk_30B, #$18, loc_12E28A
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E213:
	if_a_not_equal_cmp #$17, loc_12E221
	if_a_equal_cmp_addr tilemapTypeUnk_30B, #$17, loc_12E28A
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E221:
	if_a_not_equal_cmp #$16, loc_12E22F
	if_a_equal_cmp_addr tilemapTypeUnk_30B, #$16, loc_12E28A
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E22F:
	if_a_not_equal_cmp #$24, loc_12E23D
	if_a_equal_cmp_addr tilemapTypeUnk_30B, #$24, loc_12E28A
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E23D:
	if_a_not_equal_cmp #$2C, loc_12E24B
	if_a_equal_cmp_addr tilemapTypeUnk_30B, #$2C, loc_12E28A
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E24B:
	if_a_not_equal_cmp #2, loc_12E260
	if_a_equal_cmp_addr tilemapTypeUnk_30B, #2, loc_12E28A
	if_a_equal_cmp_addr tilemapTypeUnk_30B, #$3B, loc_12E28A
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E260:
	if_a_not_equal_cmp #$2E, loc_12E26E
	if_a_equal_cmp_addr tilemapTypeUnk_30B, #$2E, loc_12E28A
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E26E:
	if_a_not_equal_cmp #$2A, loc_12E27C
	if_a_equal_cmp_addr tilemapTypeUnk_30B, #$2A, loc_12E28A
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E27C:
	if_a_not_equal_cmp #0, loc_12E28D
	if_a_equal_cmp_addr tilemapTypeUnk_30B, #0, loc_12E28A
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E28A:
	JMP	loc_12E315
; ---------------------------------------------------------------------------

loc_12E28D:
	if_a_not_equal_cmp #$39, loc_12E29B
	if_a_equal_cmp_addr tilemapTypeUnk_30B, #$39, loc_12E315
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E29B:
	if_a_not_equal_cmp #$27, loc_12E2A9
	if_a_equal_cmp_addr tilemapTypeUnk_30B, #$27, loc_12E315
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E2A9:
	if_a_not_equal_cmp #$28, loc_12E2B7
	if_a_equal_cmp_addr tilemapTypeUnk_30B, #$28, loc_12E315
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E2B7:
	if_a_not_equal_cmp #$30, loc_12E2C5
	if_a_equal_cmp_addr tilemapTypeUnk_30B, #$30, loc_12E315
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E2C5:
	if_a_not_equal_cmp #$14, loc_12E2D3
	if_a_equal_cmp_addr tilemapTypeUnk_30B, #$14, loc_12E315
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E2D3:
	if_a_not_equal_cmp #$15, loc_12E2E1
	if_a_equal_cmp_addr tilemapTypeUnk_30B, #$15, loc_12E315
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E2E1:
	if_a_not_equal_cmp #$1A, loc_12E312
	if_a_not_equal_cmp_addr byte_598, #0, loc_12E308
	set text_idx_35C, #$B7 
	set char_type_id_35D, #0
	set byte_364, #7
	JSR	exec_b2_c1_128300
	JSR	sub_12E3D4
	JSR	sub_12ED29
	JSR	sub_12D49F
	RTS
; ---------------------------------------------------------------------------

loc_12E308:
	if_a_equal_cmp_addr tilemapTypeUnk_30B, #$1A, loc_12E315
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E312:
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E315:
	set byte_46E, tilemapTypeUnk_30B
	if_a_equal_cmp #0, loc_12E362
	if_a_equal_cmp #$13, loc_12E362
	if_a_equal_cmp #$14, loc_12E362
	if_a_equal_cmp #$15, loc_12E362
	if_a_equal_cmp #$16, loc_12E362
	if_a_equal_cmp #$17, loc_12E362
	if_a_equal_cmp #$18, loc_12E362
	if_a_equal_cmp #$19, loc_12E362
	if_a_equal_cmp #$29, loc_12E362
	if_a_equal_cmp #$2A, loc_12E362
	if_a_equal_cmp #$2B, loc_12E362
	if_a_not_equal_cmp #$1A, loc_12E35C
	sub_byte_sec {unk_53B,Y}, #1
	if_a_equal {unk_53B,Y}, loc_12E35C
	JMP	loc_12E362
; ---------------------------------------------------------------------------

loc_12E35C:
	STY	tilemapTypeUnk_30B
	JSR	sub_12D8B3

loc_12E362:
	set sprite_length_30F, #$FF
	RTS
; ---------------------------------------------------------------------------

loc_12E368:
	set text_idx_35C, #$76 
	set char_type_id_35D, #0
	set byte_364, #7
	JSR	exec_b2_c1_128300
	JSR	sub_12E3D4
	JSR	sub_12ED29
	JSR	sub_12D49F
	RTS
; END OF FUNCTION CHUNK	FOR sub_12DFA5

; =============== S U B	R O U T	I N E =======================================

sub_12E384:
	LDA	byte_42E
	mult_a_by_2
	add_to_a byte_42C
	TAY
	LDA	byte_533,Y
	add_to_a #$3A 
	STA	text_idx_35C
	set char_type_id_35D, #0
	set byte_364, #7
	JSR	exec_b2_c1_128300
	JSR	sub_12E3D4
	JSR	sub_12ED29
	LDA	byte_42E
	mult_a_by_2
	add_to_a byte_42C
	TAY
	if_a_not_equal_cmp_addr {byte_533,Y}, #$25, loc_12E3C1
	set {byte_533,Y}, #$27 
	JMP	loc_12E3CA
; ---------------------------------------------------------------------------

loc_12E3C1:
	if_a_not_equal_cmp #$26, locret_12E3D3
	set {byte_533,Y}, #$28 

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
	if_a_not_equal_cmp_addr input_pressed_34A, #$40, sub_12E3D4
	RTS
; End of function sub_12E3D4

; =============== S U B	R O U T	I N E =======================================

sub_12E3DF:
	if_a_equal_cmp_addr byte_543, #0, locret_12E427
	set tilemap_size_307, #$10
	set ppu_unk_byte_309, #$14
	sub_addr_sec byte_543, #1
	STA	tilemapTypeUnk_30B
	LDY	tilemapTypeUnk_30B
	set inv_itemPrev_idx_31D, {byte_12E869,Y}
	LDY	#0

loc_12E404:
	LDA	byte_533,Y
	INY
	if_a_not_equal_cmp tilemapTypeUnk_30B, loc_12E404
	DEY
	set sprite_secondByte_31B, #$3C 

loc_12E413:
	if_y_equal_cmp #0, loc_12E424
	add_byte_to_byte_clc sprite_secondByte_31B, #$11
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
	if_a_not_equal_cmp_addr input_pressed_34A, #8, loc_12E450
	if_a_not_equal_cmp_addr byte_42E, #0, loc_12E441
	set byte_42E, #4

loc_12E441:
	DEC	byte_42E
	JSR	sub_12ED32
	JSR	sub_12E4CD
	JSR	sub_12D329
	JMP	sub_12E428
; ---------------------------------------------------------------------------

loc_12E450:
	if_a_not_equal_cmp #4, loc_12E46F
	if_a_greater_cmp_addr byte_42E, #3, loc_12E460
	set byte_42E, #$FF

loc_12E460:
	INC	byte_42E
	JSR	sub_12ED32
	JSR	sub_12E4CD
	JSR	sub_12D329
	JMP	sub_12E428
; ---------------------------------------------------------------------------

loc_12E46F:
	if_a_not_equal_cmp #2, loc_12E487
	xor_byte byte_42C, #1
	JSR	sub_12ED32
	JSR	sub_12E4CD
	JSR	sub_12D329
	JMP	sub_12E428
; ---------------------------------------------------------------------------

loc_12E487:
	if_a_not_equal_cmp #1, loc_12E49F
	xor_byte byte_42C, #1
	JSR	sub_12ED32
	JSR	sub_12E4CD
	JSR	sub_12D329
	JMP	sub_12E428
; ---------------------------------------------------------------------------

loc_12E49F:
	if_a_not_equal_cmp #$80, loc_12E4B0
	JSR	sub_12E8A5
	if_a_equal_cmp_addr sprite_length_30F, #$FF, loc_12E4B7
	JMP	sub_12E428
; ---------------------------------------------------------------------------

loc_12E4B0:
	if_a_equal_cmp #$40, loc_12E4B7
	JMP	sub_12E428
; ---------------------------------------------------------------------------

loc_12E4B7:
	JSR	sub_12ED29
	set tilemapWidth_308, #$10
	set byte_31A, #$70 
	JSR	sub_12D26B
	set sprite_length_30F, #0
	RTS
; End of function sub_12E428

; =============== S U B	R O U T	I N E =======================================

sub_12E4CD:
	set byte_31A, #$80 
	set tilemapWidth_308, #$C
	JSR	sub_12D26B
	if_a_greater_cmp_addr byte_546, #$A, loc_12E4EE
	set byte_546, #0
	xor_byte byte_547, #1

loc_12E4EE:
	LDA	byte_42E
	mult_a_by_4
	add_to_a byte_42C
	add_to_a byte_42C
	TAY
	set_iny tilemap_size_307, {byte_12E851,Y}
	set ppu_unk_byte_309, {byte_12E851,Y}
	set byte_31A, #$70 
	set sprite_secondByte_31B, #0
	set byte_317, #0
	set objMapIdx_316, #$2F 
	a_to_stack tilemap_size_307
	a_to_stack ppu_unk_byte_309
	add_byte_to_byte_clc tilemap_size_307, #$C
	add_byte_to_byte_clc ppu_unk_byte_309, byte_547

	JSR	sub_12E829
	from_stack_to_a ppu_unk_byte_309
	from_stack_to_a tilemap_size_307
	add_byte_to_byte_clc byte_31A, #4

	set objMapIdx_316, #$2E 
	a_to_stack tilemap_size_307
	a_to_stack ppu_unk_byte_309
	add_byte_to_byte_clc tilemap_size_307, #$C

	LDA	ppu_unk_byte_309
	add_to_a #$18
	sub_a_sec byte_547
	STA	ppu_unk_byte_309
	JSR	sub_12E829
	from_stack_to_a ppu_unk_byte_309
	from_stack_to_a tilemap_size_307
	add_byte_to_byte_clc byte_31A, #4

	set objMapIdx_316, #$30 
	a_to_stack tilemap_size_307
	a_to_stack ppu_unk_byte_309
	add_byte_to_byte_clc ppu_unk_byte_309, #$C
	add_byte_to_byte_clc tilemap_size_307, byte_547

	JSR	sub_12E829
	from_stack_to_a ppu_unk_byte_309
	from_stack_to_a tilemap_size_307
	add_byte_to_byte_clc byte_31A, #4

	set objMapIdx_316, #$31 
	a_to_stack tilemap_size_307
	a_to_stack ppu_unk_byte_309
	LDA	tilemap_size_307
	add_to_a #$18
	sub_a_sec byte_547
	STA	tilemap_size_307
	add_byte_to_byte_clc ppu_unk_byte_309, #$C
	JSR	sub_12E829
	from_stack_to_a ppu_unk_byte_309
	from_stack_to_a tilemap_size_307
	RTS
; End of function sub_12E4CD

; =============== S U B	R O U T	I N E =======================================

sub_12E5E6:
	a_to_stack byte_372
	set byte_372, #0
	if_a_not_equal_cmp_addr byte_4C1, #0, loc_12E603
	set text_idx_35C, #$75 
	set char_type_id_35D, #0
	JMP	loc_12E616
; ---------------------------------------------------------------------------

loc_12E603:
	LDX	byte_372
	LDA	unk_4B6,X
	add_to_a #$14
	STA	text_idx_35C
	LDA	#2
	ADC	#0
	STA	char_type_id_35D

loc_12E616:
	JSR	sub_12E798
	JSR	sub_12E7D3
	JSR	sub_12E7F0
	if_a_not_equal byte_4C1, loc_12E62A
	JSR	wait_for_b_pressed_FCC5
	JMP	loc_12E67A
; ---------------------------------------------------------------------------

loc_12E62A:
	if_a_not_equal_cmp_addr input_pressed_34A, #4, loc_12E645
	LDA	byte_372
	add_to_a #1
	if_a_equal_cmp byte_4C1, loc_12E62A
	INC	byte_372
	JSR	sub_12ED32
	JMP	loc_12E603
; ---------------------------------------------------------------------------

loc_12E645:
	if_a_not_equal_cmp #8, loc_12E659
	if_a_equal_cmp_addr byte_372, #0, loc_12E62A
	DEC	byte_372
	JSR	sub_12ED32
	JMP	loc_12E603
; ---------------------------------------------------------------------------

loc_12E659:
	if_a_equal_cmp #$80, loc_12E664
	if_a_equal_cmp #$40, loc_12E67A
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
	set byte_310, #$A
	set byte_35E, #8
	set ppu_unk_byte_309, #9
	set tilemap_size_307, #4
	JSR	sub_12D4B3
	JSR	sub_12E80D
	JSR	sub_12E81B
	from_stack_to_a byte_372
	RTS
; End of function sub_12E5E6

; =============== S U B	R O U T	I N E =======================================

sub_12E69F:
	a_to_stack byte_372
	set byte_372, #0
	if_a_not_equal_cmp_addr byte_4D0, #0, loc_12E6BC
	set text_idx_35C, #$75 
	set char_type_id_35D, #0
	JMP	loc_12E6E0
; ---------------------------------------------------------------------------

loc_12E6BC:
	LDX	byte_372
	LDA	unk_4C2,X
	add_to_a #$99 
	STA	text_idx_35C
	LDA	#0
	ADC	#0
	STA	char_type_id_35D
	if_a_not_equal_cmp_addr {unk_4C2,X}, #$E, loc_12E6E0
	set text_idx_35C, #$3A 
	set char_type_id_35D, #2

loc_12E6E0:
	JSR	sub_12E798
	JSR	sub_12E7D3
	JSR	sub_12E7F0
	if_a_not_equal byte_4D0, loc_12E6F7
	JSR	wait_for_b_pressed_FCC5
	JSR	sub_12ED29
	JMP	loc_12E776
; ---------------------------------------------------------------------------

loc_12E6F7:
	if_a_not_equal_cmp_addr input_pressed_34A, #4, loc_12E712
	LDA	byte_372
	add_to_a #1
	if_a_equal_cmp byte_4D0, loc_12E6F7
	INC	byte_372
	JSR	sub_12ED32
	JMP	loc_12E6BC
; ---------------------------------------------------------------------------

loc_12E712:
	if_a_not_equal_cmp #8, loc_12E726
	if_a_equal_cmp_addr byte_372, #0, loc_12E6F7
	DEC	byte_372
	JSR	sub_12ED32
	JMP	loc_12E6BC
; ---------------------------------------------------------------------------

loc_12E726:
	if_a_equal_cmp #$80, loc_12E731
	if_a_equal_cmp #$40, loc_12E776
	JMP	loc_12E6F7
; ---------------------------------------------------------------------------

loc_12E731:
	JSR	sub_12ED20
	JSR	sub_12D21B
	LDX	byte_372
	LDA	unk_4C2,X
	add_to_a #$A7 
	STA	text_idx_35C
	LDA	#0
	ADC	#0
	STA	char_type_id_35D
	if_a_not_equal_cmp_addr {unk_4C2,X}, #$E, loc_12E75B
	set text_idx_35C, #$3B 
	set char_type_id_35D, #2

loc_12E75B:
	set byte_310, #0
	JSR	exec_b2_c3_128313

loc_12E763:
	JSR	wait_for_frame_rendered_FCA0
	if_a_not_equal_cmp_addr input_pressed_34A, #$40, loc_12E763
	JSR	sub_12ED29
	JSR	sub_12D287
	JSR	sub_12D319

loc_12E776:
	set byte_310, #$A
	set byte_35E, #8
	set ppu_unk_byte_309, #9
	set tilemap_size_307, #4
	JSR	sub_12D4B3
	JSR	sub_12E80D
	JSR	sub_12E81B
	from_stack_to_a byte_372
	RTS
; End of function sub_12E69F

; =============== S U B	R O U T	I N E =======================================

sub_12E798:
	set tilemap_size_307, #4
	set ppu_unk_byte_309, #9
	set byte_35E, #8
	set byte_35F, #1
	set byte_362, #0
	set byte_363, #0
	set byte_364, #7
	set sprite_secondByte_31B, #$C4 
	set byte_310, #$A
	set byte_360, #1
	set byte_361, #0
	JSR	exec_b2_c4_1283F2
	RTS
; End of function sub_12E798

; =============== S U B	R O U T	I N E =======================================

sub_12E7D3:
	set objMapIdx_316, #$2E 
	LDA	#$54 

loc_12E7DA:
	STA	tilemap_size_307
	set ppu_unk_byte_309, #$38 
	set byte_31A, #$A0 
	set sprite_secondByte_31B, #0
	JSR	sub_12E829
	RTS
; End of function sub_12E7D3

; =============== S U B	R O U T	I N E =======================================

sub_12E7F0:
	set objMapIdx_316, #$2F 
	set tilemap_size_307, #$54 
	set ppu_unk_byte_309, #$60 
	set byte_31A, #$A4 
	set sprite_secondByte_31B, #0
	JSR	sub_12E829
	RTS
; End of function sub_12E7F0

; =============== S U B	R O U T	I N E =======================================

sub_12E80D:
	set byte_31A, #$A0 
	set tilemapWidth_308, #4
	JSR	sub_12D26B
	RTS
; End of function sub_12E80D

; =============== S U B	R O U T	I N E =======================================

sub_12E81B:
	set byte_31A, #$A4 
	set tilemapWidth_308, #4
	JSR	sub_12D26B
	RTS
; End of function sub_12E81B

; =============== S U B	R O U T	I N E =======================================

sub_12E829:
	set byte_36A, tilemap_size_307
	set byte_36B, #0
	set byte_366, ppu_unk_byte_309
	set byte_367, #0
	set objectIdx_318, #5
	LDX	objMapIdx_316
	set byte_317, {byte_12DEED,X}
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
	LDA	byte_42E
	mult_a_by_2
	add_to_a byte_42C
	if_a_greater_cmp byte_532, loc_12E8B5
	JMP	loc_12ED0E
; ---------------------------------------------------------------------------

loc_12E8B5:
	STA	byte_47C

loc_12E8B8:
	LDX	byte_47B
	LDY	byte_47C
	if_a_not_equal_cmp_addr {byte_533,X}, #1, loc_12E926

loc_12E8C5:
	if_a_not_equal_cmp_addr {byte_533,Y}, #6, loc_12E923
	LDA	unk_53B,X
	add_to_a {unk_53B,Y}
	if_a_greater_cmp #$F, loc_12E8FB
	BEQ	loc_12E8FB
	if_a_equal_cmp_addr {unk_53B,X}, #$F, loc_12E923
	sub_addr_sec #$F, {unk_53B,X}
	STA	tilemapTypeUnk_30B
	sub_byte_sec {unk_53B,Y}, tilemapTypeUnk_30B
	set {unk_53B,X}, #$F
	JMP	loc_12ED17
; ---------------------------------------------------------------------------

loc_12E8FB:
	add_byte_to_byte_clc {unk_53B,X}, {unk_53B,Y}
	LDX	byte_47C
	LDY	byte_532
	JSR	sub_12D9F7
	set tilemapTypeUnk_30B, byte_47C
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
	if_a_not_equal_cmp #2, loc_12E98B

loc_12E92A:
	if_a_not_equal_cmp_addr {byte_533,Y}, #7, loc_12E988
	LDA	unk_53B,X
	add_to_a {unk_53B,Y}
	if_a_greater_cmp #6, loc_12E960
	BEQ	loc_12E960
	if_a_equal_cmp_addr {unk_53B,X}, #6, loc_12E988
	sub_addr_sec #6, {unk_53B,X}
	STA	tilemapTypeUnk_30B
	sub_byte_sec {unk_53B,Y}, tilemapTypeUnk_30B
	set {unk_53B,X}, #6
	JMP	loc_12ED17
; ---------------------------------------------------------------------------

loc_12E960:
	add_byte_to_byte_clc {unk_53B,X}, {unk_53B,Y}
	LDX	byte_47C
	LDY	byte_532
	JSR	sub_12D9F7
	set tilemapTypeUnk_30B, byte_47C
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
	if_a_not_equal_cmp #3, loc_12E9F0

loc_12E98F:
	if_a_not_equal_cmp_addr {byte_533,Y}, #8, loc_12E9ED
	LDA	unk_53B,X
	add_to_a {unk_53B,Y}
	if_a_greater_cmp #6, loc_12E9C5
	BEQ	loc_12E9C5
	if_a_equal_cmp_addr {unk_53B,X}, #6, loc_12E9ED
	sub_addr_sec #6, {unk_53B,X}
	STA	tilemapTypeUnk_30B
	sub_byte_sec {unk_53B,Y}, tilemapTypeUnk_30B
	set {unk_53B,X}, #6
	JMP	loc_12ED17
; ---------------------------------------------------------------------------

loc_12E9C5:
	add_byte_to_byte_clc {unk_53B,X}, {unk_53B,Y}
	LDX	byte_47C
	LDY	byte_532
	JSR	sub_12D9F7
	set tilemapTypeUnk_30B, byte_47C
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
	if_a_not_equal_cmp #4, loc_12EA55

loc_12E9F4:
	if_a_not_equal_cmp_addr {byte_533,Y}, #9, loc_12EA52
	LDA	unk_53B,X
	add_to_a {unk_53B,Y}
	if_a_greater_cmp #6, loc_12EA2A
	BEQ	loc_12EA2A
	if_a_equal_cmp_addr {unk_53B,X}, #6, loc_12EA52
	sub_addr_sec #6, {unk_53B,X}
	STA	tilemapTypeUnk_30B
	sub_byte_sec {unk_53B,Y}, tilemapTypeUnk_30B
	set {unk_53B,X}, #6
	JMP	loc_12ED17
; ---------------------------------------------------------------------------

loc_12EA2A:
	add_byte_to_byte_clc {unk_53B,X}, {unk_53B,Y}
	LDX	byte_47C
	LDY	byte_532
	JSR	sub_12D9F7
	set tilemapTypeUnk_30B, byte_47C
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
	if_a_not_equal_cmp #6, loc_12EA7A
	if_a_not_equal_cmp_addr {byte_533,Y}, #1, loc_12EA77
	a_to_stack byte_47C
	set byte_47C, byte_47B
	from_stack_to_a byte_47B
	LDX	byte_47B
	LDY	byte_47C
	JMP	loc_12E8C5
; ---------------------------------------------------------------------------

loc_12EA77:
	JMP	loc_12ED0E
; ---------------------------------------------------------------------------

loc_12EA7A:
	if_a_not_equal_cmp #7, loc_12EA9F
	if_a_not_equal_cmp_addr {byte_533,Y}, #2, loc_12EA9C
	a_to_stack byte_47C
	set byte_47C, byte_47B
	from_stack_to_a byte_47B
	LDX	byte_47B
	LDY	byte_47C
	JMP	loc_12E92A
; ---------------------------------------------------------------------------

loc_12EA9C:
	JMP	loc_12ED0E
; ---------------------------------------------------------------------------

loc_12EA9F:
	if_a_not_equal_cmp #8, loc_12EAC4
	if_a_not_equal_cmp_addr {byte_533,Y}, #3, loc_12EAC1
	a_to_stack byte_47C
	set byte_47C, byte_47B
	from_stack_to_a byte_47B
	LDX	byte_47B
	LDY	byte_47C
	JMP	loc_12E98F
; ---------------------------------------------------------------------------

loc_12EAC1:
	JMP	loc_12ED0E
; ---------------------------------------------------------------------------

loc_12EAC4:
	if_a_not_equal_cmp #9, loc_12EAE9
	if_a_not_equal_cmp_addr {byte_533,Y}, #4, loc_12EAE6
	a_to_stack byte_47C
	set byte_47C, byte_47B
	from_stack_to_a byte_47B
	LDX	byte_47B
	LDY	byte_47C
	JMP	loc_12E9F4
; ---------------------------------------------------------------------------

loc_12EAE6:
	JMP	loc_12ED0E
; ---------------------------------------------------------------------------

loc_12EAE9:
	if_a_not_equal_cmp #$A, loc_12EB3C
	if_a_not_equal_cmp_addr {byte_533,Y}, #$B, loc_12EAFC
	set {byte_533,X}, #$D
	JMP	loc_12EB05
; ---------------------------------------------------------------------------

loc_12EAFC:
	if_a_not_equal_cmp #$11, loc_12EB39
	set {byte_533,X}, #$E

loc_12EB05:
	LDX	byte_47B
	if_a_greater_cmp_addr byte_47B, byte_47C, loc_12EB13
	LDX	byte_47C

loc_12EB13:
	LDY	byte_532
	JSR	sub_12D9F7
	set tilemapTypeUnk_30B, byte_47C
	JSR	sub_12D8B3
	LDX	byte_47B
	if_a_greater_cmp_addr byte_47B, byte_47C, loc_12EB30
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
	if_a_not_equal_cmp #$B, loc_12EBAF
	if_a_not_equal_cmp_addr {byte_533,Y}, #$A, loc_12EB4F
	set {byte_533,X}, #$D
	JMP	loc_12EB78
; ---------------------------------------------------------------------------

loc_12EB4F:
	if_a_not_equal_cmp #$B, loc_12EB63
	if_a_equal_cmp_addr byte_47B, byte_47C, loc_12EB63
	set {byte_533,X}, #$F
	JMP	loc_12EB78
; ---------------------------------------------------------------------------

loc_12EB63:
	if_a_not_equal_cmp #$C, loc_12EB6F
	set {byte_533,X}, #$11
	JMP	loc_12EB78
; ---------------------------------------------------------------------------

loc_12EB6F:
	if_a_not_equal_cmp #$F, loc_12EBAC
	set {byte_533,X}, #$10

loc_12EB78:
	LDX	byte_47B
	if_a_greater_cmp_addr byte_47B, byte_47C, loc_12EB86
	LDX	byte_47C

loc_12EB86:
	LDY	byte_532
	JSR	sub_12D9F7
	set tilemapTypeUnk_30B, byte_47C
	JSR	sub_12D8B3
	LDX	byte_47B
	if_a_greater_cmp_addr byte_47B, byte_47C, loc_12EBA3
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
	if_a_equal_cmp #$C, loc_12EBB6
	JMP	loc_12EC39
; ---------------------------------------------------------------------------

loc_12EBB6:
	if_a_not_equal_cmp_addr {byte_533,Y}, #$B, loc_12EBF6
	set {byte_533,X}, #$11
	LDX	byte_47B
	if_a_greater_cmp_addr byte_47B, byte_47C, loc_12EBD0
	LDX	byte_47C

loc_12EBD0:
	LDY	byte_532
	JSR	sub_12D9F7
	set tilemapTypeUnk_30B, byte_47C
	JSR	sub_12D8B3
	LDX	byte_47B
	if_a_greater_cmp_addr byte_47B, byte_47C, loc_12EBED
	LDX	byte_47C

loc_12EBED:
	LDY	byte_532
	JSR	sub_12DA33
	JMP	loc_12ED17
; ---------------------------------------------------------------------------

loc_12EBF6:
	if_a_not_equal_cmp_addr {byte_533,Y}, #$D, loc_12EC36
	set {byte_533,X}, #$E
	LDX	byte_47B
	if_a_greater_cmp_addr byte_47B, byte_47C, loc_12EC10
	LDX	byte_47C

loc_12EC10:
	LDY	byte_532
	JSR	sub_12D9F7
	set tilemapTypeUnk_30B, byte_47C
	JSR	sub_12D8B3
	LDX	byte_47B
	if_a_greater_cmp_addr byte_47B, byte_47C, loc_12EC2D
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
	if_a_not_equal_cmp #$D, loc_12EC80
	if_a_not_equal_cmp_addr {byte_533,Y}, #$C, loc_12EC7D
	set {byte_533,X}, #$E
	LDX	byte_47B
	if_a_greater_cmp_addr byte_47B, byte_47C, loc_12EC57
	LDX	byte_47C

loc_12EC57:
	LDY	byte_532
	JSR	sub_12D9F7
	set tilemapTypeUnk_30B, byte_47C
	JSR	sub_12D8B3
	LDX	byte_47B
	if_a_greater_cmp_addr byte_47B, byte_47C, loc_12EC74
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
	if_a_not_equal_cmp #$F, loc_12ECC7
	if_a_not_equal_cmp_addr {byte_533,Y}, #$B, loc_12ECC4
	set {byte_533,X}, #$10
	LDX	byte_47B
	if_a_greater_cmp_addr byte_47B, byte_47C, loc_12EC9E
	LDX	byte_47C

loc_12EC9E:
	LDY	byte_532
	JSR	sub_12D9F7
	set tilemapTypeUnk_30B, byte_47C
	JSR	sub_12D8B3
	LDX	byte_47B
	if_a_greater_cmp_addr byte_47B, byte_47C, loc_12ECBB
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
	if_a_not_equal_cmp #$11, loc_12ED0E
	if_a_not_equal_cmp_addr {byte_533,Y}, #$A, loc_12ED0B
	set {byte_533,X}, #$E
	LDX	byte_47B
	if_a_greater_cmp_addr byte_47B, byte_47C, loc_12ECE5
	LDX	byte_47C

loc_12ECE5:
	LDY	byte_532
	JSR	sub_12D9F7
	set tilemapTypeUnk_30B, byte_47C
	JSR	sub_12D8B3
	LDX	byte_47B
	if_a_greater_cmp_addr byte_47B, byte_47C, loc_12ED02
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
	set sprite_length_30F, #0
	RTS
; ---------------------------------------------------------------------------

loc_12ED17:
	JSR	sub_12ED20
	set sprite_length_30F, #$FF
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
	set objectIdx_318, #5

set_inventory_screen_12ED5D:
	set image_id_4A4, #8
	set image_offset_4A5, #0
	STA	ppu_prev_unk_4A6
	STA	ppu_prev_scroll_x_unk_4A7
	STA	ppu_prev_scroll_y_unk_4A8
	set prev_sprite_type_4A9, #2
	JSR	exec_b0_c2_12A9A9
	set tilemapTypeUnk_30B, #0
	set tilemap_size_307, #$80 
	STA	ppu_unk_byte_309
	a_to_stack tilemapTypeUnk_30B
	JSR	sub_12D3AB
	from_stack_to_a tilemapTypeUnk_30B

loc_12ED90:
	JSR	wait_for_frame_rendered_FCA0
	if_a_not_equal_cmp_addr input_pressed_34A, #8, loc_12EDC0
	if_a_equal_cmp_addr tilemapTypeUnk_30B, #0, loc_12ED90
	DEC	tilemapTypeUnk_30B
	set tilemap_size_307, #$80 
	STA	ppu_unk_byte_309
	JSR	sub_12D261
	a_to_stack tilemapTypeUnk_30B
	JSR	sub_12D3AB
	from_stack_to_a tilemapTypeUnk_30B
	JSR	sub_128531
	JMP	loc_12ED90
; ---------------------------------------------------------------------------

loc_12EDC0:
	if_a_not_equal_cmp #4, loc_12EDE7
	if_a_equal_cmp_addr tilemapTypeUnk_30B, #$47, loc_12ED90
	INC	tilemapTypeUnk_30B
	set tilemap_size_307, #$80 
	STA	ppu_unk_byte_309
	a_to_stack tilemapTypeUnk_30B
	JSR	sub_12D3AB
	from_stack_to_a tilemapTypeUnk_30B
	JSR	sub_128531
	JMP	loc_12ED90
; ---------------------------------------------------------------------------

loc_12EDE7:
	if_a_not_equal_cmp #$80, loc_12EDF1
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
	set inv_spr_dscr1_30C, #4

loc_12EE04:
	set has_ppu_data_to_upload_6F, #0
	LDX	#0
	set_inx {ppu_data_70,X}, #1
	set_inx {ppu_data_70,X}, #$20 
	set_inx {ppu_data_70,X}, #$3F 
	set_inx {ppu_data_70,X}, #0
	if_a_not_equal_cmp_addr byte_341, #0, loc_12EE2A
	set inv_spr_dscr1_30C, #1

loc_12EE2A:
	LDY	#0

loc_12EE2C:
	if_a_equal_cmp_addr inv_spr_dscr1_30C, #4, loc_12EE3F
	if_a_equal_cmp #3, loc_12EE47
	if_a_equal_cmp #2, loc_12EE58
	if_a_equal_cmp #1, loc_12EE69

loc_12EE3F:
	load_a_masked {palette_bg_321,Y }, #$CF 
	JMP	loc_12EE7D
; ---------------------------------------------------------------------------

loc_12EE47:
	load_a_masked {palette_bg_321,Y }, #$30 
	if_a_greater_cmp #$30, loc_12EE7A
	load_a_masked {palette_bg_321,Y }, #$DF 
	JMP	loc_12EE7D
; ---------------------------------------------------------------------------

loc_12EE58:
	load_a_masked {palette_bg_321,Y }, #$30 
	if_a_greater_cmp #$20, loc_12EE7A
	load_a_masked {palette_bg_321,Y }, #$EF 
	JMP	loc_12EE7D
; ---------------------------------------------------------------------------

loc_12EE69:
	load_a_masked {palette_bg_321,Y }, #$30 
	if_a_greater_cmp #$10, loc_12EE7A
	load_a_masked {palette_bg_321,Y }, #$FF
	JMP	loc_12EE7D
; ---------------------------------------------------------------------------

loc_12EE7A:
	LDA	palette_bg_321,Y 

loc_12EE7D:
	STA	ppu_data_70,X
	INX
	INY
	if_y_greater_cmp #$20 , loc_12EE2C
	set has_ppu_data_to_upload_6F, #1
	DEC	inv_spr_dscr1_30C
	if_a_equal_cmp_addr inv_spr_dscr1_30C, #0, loc_12EE9C
	LDA	byte_341
	JSR	wait_for_frame_rendered_FCA0
	JMP	loc_12EE04
; ---------------------------------------------------------------------------

loc_12EE9C:
	if_a_equal_cmp_addr byte_341, #0, loc_12EEA7
	JSR	wait_for_frame_rendered_FCA0
	RTS
; ---------------------------------------------------------------------------

loc_12EEA7:
	add_to_a #1
	JSR	wait_for_frame_rendered_FCA0
	RTS
; End of function sub_12EDF5

; =============== S U B	R O U T	I N E =======================================

sub_12EEAE:
	set inv_spr_dscr1_30C, #4

write_ppu_entry_12EEB3:
	set has_ppu_data_to_upload_6F, #0
	LDX	#0
	set_inx {ppu_data_70,X}, #1
	set_inx {ppu_data_70,X}, #$20 
	set_inx {ppu_data_70,X}, #$3F 
	set_inx {ppu_data_70,X}, #0
	if_a_not_equal_cmp_addr byte_341, #0, loc_12EED9
	set inv_spr_dscr1_30C, #0

loc_12EED9:
	LDY	#0

loc_12EEDB:
	if_a_equal_cmp_addr inv_spr_dscr1_30C, #4, loc_12EEF2
	if_a_equal_cmp #3, loc_12EEFA
	if_a_equal_cmp #2, loc_12EF0B
	if_a_equal_cmp #1, loc_12EF1C
	if_a_equal_cmp #0, loc_12EF2D

loc_12EEF2:
	load_a_masked {palette_bg_321,Y }, #$FF
	JMP	loc_12EF35
; ---------------------------------------------------------------------------

loc_12EEFA:
	load_a_masked {palette_bg_321,Y }, #$30 
	if_a_greater_cmp #$30, loc_12EF32
	load_a_masked {palette_bg_321,Y }, #$EF 
	JMP	loc_12EF35
; ---------------------------------------------------------------------------

loc_12EF0B:
	load_a_masked {palette_bg_321,Y }, #$30 
	if_a_greater_cmp #$20, loc_12EF32
	load_a_masked {palette_bg_321,Y }, #$DF 
	JMP	loc_12EF35
; ---------------------------------------------------------------------------

loc_12EF1C:
	load_a_masked {palette_bg_321,Y }, #$30 
	if_a_greater_cmp #$10, loc_12EF32
	load_a_masked {palette_bg_321,Y }, #$CF 
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
	if_y_greater_cmp #$20 , loc_12EEDB
	set has_ppu_data_to_upload_6F, #1
	DEC	inv_spr_dscr1_30C
	if_a_equal_cmp_addr inv_spr_dscr1_30C, #$FF, loc_12EF54
	LDA	byte_341
	JSR	wait_for_frame_rendered_FCA0
	JMP	write_ppu_entry_12EEB3
; ---------------------------------------------------------------------------

loc_12EF54:
	if_a_equal_cmp_addr byte_341, #0, loc_12EF5F
	JSR	wait_for_frame_rendered_FCA0
	RTS
; ---------------------------------------------------------------------------

loc_12EF5F:
	add_to_a #1
	JSR	wait_for_frame_rendered_FCA0
	RTS
; End of function sub_12EEAE

; =============== S U B	R O U T	I N E =======================================

sub_12EF66:
	LDY	byte_301
	LDA	byte_12EFD7,Y
	TAY
	if_y_not_equal_cmp #$F, sub_12EF77
	set sprite_length_30F, #$FF
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
	set image_id_4A4, {map_sequence_12F072,Y}
	set image_offset_4A5, #0
	STA	ppu_prev_unk_4A6
	STA	ppu_prev_scroll_x_unk_4A7
	STA	ppu_prev_scroll_y_unk_4A8
	set prev_sprite_type_4A9, #2
	JSR	exec_b0_c2_12A9A9
	JSR	wait_for_any_input_FCCD
	from_stack_to_a prev_sprite_type_4A9
	from_stack_to_a ppu_prev_scroll_y_unk_4A8
	from_stack_to_a ppu_prev_scroll_x_unk_4A7
	from_stack_to_a ppu_prev_unk_4A6
	from_stack_to_a image_offset_4A5
	from_stack_to_a image_id_4A4
	set sprite_length_30F, #0
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
	set byte_41F, #0
	STA	byte_421
	STA	byte_547
	JSR	sub_1283BA
	a_to_stack image_id_4A4
	a_to_stack image_offset_4A5
	a_to_stack ppu_prev_unk_4A6
	a_to_stack ppu_prev_scroll_x_unk_4A7
	a_to_stack ppu_prev_scroll_y_unk_4A8
	a_to_stack prev_sprite_type_4A9
	set objectIdx_318, #5
	set byte_360, #0
	set byte_361, #3

show_computer_12F0B2:
	set image_id_4A4, #$84 
	set image_offset_4A5, #0
	STA	ppu_prev_unk_4A6
	set ppu_prev_scroll_x_unk_4A7, #0
	STA	ppu_prev_scroll_y_unk_4A8
	set prev_sprite_type_4A9, #2
	JSR	exec_b0_c2_12A9A9
	set text_idx_35C, #$2B 
	set char_type_id_35D, #2
	JSR	sub_12F5B9
	set byte_372, #0

loc_12F0E1:
	JSR	sub_12F564
	JSR	sub_12F168
	JSR	wait_for_frame_rendered_FCA0
	if_a_not_equal_cmp_addr input_pressed_34A, #8, loc_12F0FA
	JSR	sub_12ED32
	JSR	sub_12F4C0
	JMP	loc_12F0E1
; ---------------------------------------------------------------------------

loc_12F0FA:
	if_a_not_equal_cmp #4, loc_12F107
	JSR	sub_12ED32
	JSR	sub_12F4E4
	JMP	loc_12F0E1
; ---------------------------------------------------------------------------

loc_12F107:
	if_a_not_equal_cmp #2, loc_12F114
	JSR	sub_12ED32
	JSR	sub_12F514
	JMP	loc_12F0E1
; ---------------------------------------------------------------------------

loc_12F114:
	if_a_not_equal_cmp #1, loc_12F121
	JSR	sub_12ED32
	JSR	sub_12F527
	JMP	loc_12F0E1
; ---------------------------------------------------------------------------

loc_12F121:
	if_a_not_equal_cmp #$80, loc_12F138
	JSR	sub_12ED20
	JSR	sub_12F2C9
	JSR	sub_12F583
	if_a_equal_cmp_addr byte_41F, #$FF, loc_12F13F
	JMP	loc_12F0E1
; ---------------------------------------------------------------------------

loc_12F138:
	if_a_equal_cmp #$40, loc_12F13F
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
	set map_show_43B, #$FF
	JSR	exec_b0_c2_12A9A9
	set map_show_43B, #0
	RTS
; End of function sub_12F07D

; =============== S U B	R O U T	I N E =======================================

sub_12F168:
	set objMapIdx_316, #$2A 
	LDA	byte_372
	mult_a_by_2
	TAY
	set_iny byte_36A, {byte_12F28B,Y}
	set byte_366, {byte_12F28B,Y}
	set byte_36B, #0
	STA	byte_367
	set objectIdx_318, #5
	set byte_31A, #0
	set sprite_secondByte_31B, #0
	set byte_317, #0
	JSR	exec_b1_c1_128394
	set objMapIdx_316, #$2B 
	LDA	byte_372
	mult_a_by_2
	TAY
	LDA	byte_12F28B,Y
	add_to_a #8
	STA	byte_36A
	if_a_equal_cmp_addr byte_372, #$14, loc_12F1C7
	if_a_equal_cmp #$1C, loc_12F1C7
	if_a_equal_cmp #$1D, loc_12F1C7
	if_a_equal_cmp #$1E, loc_12F1C7
	JMP	loc_12F1D0
; ---------------------------------------------------------------------------

loc_12F1C7:
	add_byte_to_byte_clc byte_36A, #$10

loc_12F1D0:
	INY
	set byte_366, {byte_12F28B,Y}
	set byte_36B, #0
	STA	byte_367
	set objectIdx_318, #5
	set byte_31A, #4
	set sprite_secondByte_31B, #0
	set byte_317, #0
	JSR	exec_b1_c1_128394
	set objMapIdx_316, #$2C 
	LDA	byte_372
	mult_a_by_2
	TAY
	set_iny byte_36A, {byte_12F28B,Y}
	LDA	byte_12F28B,Y
	add_to_a #8
	STA	byte_366
	set byte_36B, #0
	STA	byte_367
	set objectIdx_318, #5
	set byte_31A, #8
	set sprite_secondByte_31B, #0
	set byte_317, #0
	JSR	exec_b1_c1_128394
	set objMapIdx_316, #$2D 
	LDA	byte_372
	mult_a_by_2
	TAY
	LDA	byte_12F28B,Y
	add_to_a #8
	STA	byte_36A
	if_a_equal_cmp_addr byte_372, #$14, loc_12F258
	if_a_equal_cmp #$1C, loc_12F258
	if_a_equal_cmp #$1D, loc_12F258
	if_a_equal_cmp #$1E, loc_12F258
	JMP	loc_12F261
; ---------------------------------------------------------------------------

loc_12F258:
	add_byte_to_byte_clc byte_36A, #$10

loc_12F261:
	INY
	LDA	byte_12F28B,Y
	add_to_a #8
	STA	byte_366
	set byte_36B, #0
	STA	byte_367
	set objectIdx_318, #5
	set byte_31A, #$C
	set sprite_secondByte_31B, #0
	set byte_317, #0
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
	if_a_greater_cmp_addr byte_421, #$A, loc_12F2D8
	if_a_equal_cmp_addr byte_372, #$A, loc_12F2D8
	RTS
; ---------------------------------------------------------------------------

loc_12F2D8:
	if_a_not_equal_cmp_addr byte_372, #$A, loc_12F2ED
	if_a_equal_cmp_addr byte_421, #0, locret_12F2EC
	DEC	byte_421
	JMP	loc_12F2ED
; ---------------------------------------------------------------------------

locret_12F2EC:
	RTS
; ---------------------------------------------------------------------------

loc_12F2ED:
	LDA	#$4E 
	add_to_a byte_421
	STA	data_2
	LDA	#$21 
	ADC	#0
	STA	data_3
	LDX	byte_372
	set tilemapTypeUnk_30B, {byte_12F45C,X}
	if_a_equal_cmp_addr tilemapTypeUnk_30B, #$FF, loc_12F30E
	JMP	loc_12F411
; ---------------------------------------------------------------------------

loc_12F30E:
	set_ptr off_12F53A

	LDA	byte_420
	mult_a_by_2
	add_to_a ptr_0
	STA	ptr_0
	add_byte_to_byte ptr_1, #0

	LDY	#0
	set_iny data_2, {(ptr_0),Y}
	set data_3, {(ptr_0),Y}
	LDY	#0
	set tilemapTypeUnk_30B, {(data_2),Y}
	if_a_equal_cmp byte_421, loc_12F33F
	JMP	locret_12F410
; ---------------------------------------------------------------------------

loc_12F33F:
	INY
	LDX	#0

loc_12F342:
	if_a_equal_cmp_addr {(data_2),Y}, {unk_422,X}, loc_12F34C
	JMP	locret_12F410
; ---------------------------------------------------------------------------

loc_12F34C:
	INX
	INY
	if_x_greater_cmp byte_421, loc_12F342
	if_a_not_equal_cmp_addr byte_420, #2, loc_12F377
	set byte_420, #3
	set text_idx_35C, #$2C 
	set char_type_id_35D, #2
	JSR	sub_12F5B9
	set byte_421, #0
	JSR	sub_12F583
	JMP	locret_12F410
; ---------------------------------------------------------------------------

loc_12F377:
	if_a_not_equal_cmp_addr byte_420, #3, loc_12F3F4

loc_12F37E:
	JSR	sub_12F5FC
	a_to_stack byte_372
	set byte_372, #$1C

loc_12F38A:
	JSR	wait_for_frame_rendered_FCA0
	JSR	sub_12F168
	if_a_not_equal_cmp_addr input_pressed_34A, #8, loc_12F3A4
	if_a_equal_cmp_addr byte_372, #$1C, loc_12F38A
	DEC	byte_372
	JMP	loc_12F38A
; ---------------------------------------------------------------------------

loc_12F3A4:
	if_a_not_equal_cmp #4, loc_12F3B5
	if_a_equal_cmp_addr byte_372, #$1E, loc_12F38A
	INC	byte_372
	JMP	loc_12F38A
; ---------------------------------------------------------------------------

loc_12F3B5:
	if_a_equal_cmp #$80, loc_12F3BC
	JMP	loc_12F38A
; ---------------------------------------------------------------------------

loc_12F3BC:
	set tilemapTypeUnk_30B, byte_372
	from_stack_to_a byte_372
	a_to_stack tilemapTypeUnk_30B
	JSR	sub_12F168
	from_stack_to_a tilemapTypeUnk_30B
	if_a_equal_cmp #$1E, loc_12F3F4
	if_a_equal_cmp #$1D, loc_12F3E9
	JSR	sub_12F6D8
	set byte_420, #4
	set byte_421, #0
	JMP	locret_12F410
; ---------------------------------------------------------------------------

loc_12F3E9:
	JSR	sub_12F698
	set byte_684, #$FF
	JMP	loc_12F37E
; ---------------------------------------------------------------------------

loc_12F3F4:
	if_a_not_equal_cmp_addr byte_420, #4, loc_12F40B
	JSR	sub_12F698
	set byte_69E, #$FF
	set byte_420, #3
	JMP	loc_12F37E
; ---------------------------------------------------------------------------

loc_12F40B:
	set byte_41F, #$FF

locret_12F410:
	RTS
; ---------------------------------------------------------------------------

loc_12F411:
	LDA	#$3C 
	add_to_a tilemapTypeUnk_30B
	STA	ptr_0
	LDA	#$F4 
	ADC	#0
	STA	ptr_1
	LDX	byte_421
	set {unk_422,X}, byte_372
	set tilemapTypeUnk_30B, #1
	JSR	sub_12F478
	if_a_not_equal_cmp_addr byte_372, #$A, loc_12F438
	RTS
; ---------------------------------------------------------------------------

loc_12F438:
	INC	byte_421
	RTS
; End of function sub_12F2C9

; ---------------------------------------------------------------------------
	.BYTE $89,$8A, $E,$8B,$8C,$8D,$8E,$8F,$90,$91,$92,$17,$93,$94,$13,$16
	.BYTE $95,$15,$14,$96,	7,$97,$98,$99,$9A,$9B,$9C,  5,	5,  5,	5,  5
byte_12F45C:.BYTE $10,$16,	4,$11,$13,$18,$14,  8, $E, $F,$1B,  0,$12,  3,	5,  6
	
	.BYTE	7,  9, $A, $B,$FF,$19,$17,  2,$15,  1, $D, $C

; =============== S U B	R O U T	I N E =======================================

sub_12F478:
	set has_ppu_data_to_upload_6F, #0
	LDX	#0
	set_inx {ppu_data_70,X}, #1
	set_inx {ppu_data_70,X}, tilemapTypeUnk_30B
	set_inx {ppu_data_70,X}, data_3
	set_inx {ppu_data_70,X}, data_2
	LDY	#0

loc_12F495:
	set_inx {ppu_data_70,X}, {(ptr_0),Y}
	INY
	if_y_greater_cmp tilemapTypeUnk_30B, loc_12F495
	add_byte_to_word data_2, tilemapTypeUnk_30B

	
	add_byte_to_word ptr_0, tilemapTypeUnk_30B

	JSR	wait_for_ppu_data_upload_FC8C
	RTS
; End of function sub_12F478

; =============== S U B	R O U T	I N E =======================================

sub_12F4C0:
	if_a_greater_cmp_addr byte_372, #$A, locret_12F4E3
	BEQ	locret_12F4E3
	if_a_greater_cmp #$14, loc_12F4D9
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
	if_a_lower_cmp_addr byte_372, #$15, locret_12F513
	BEQ	locret_12F513
	if_a_lower_cmp #$B, loc_12F503
	BEQ	loc_12F503
	if_a_lower_cmp #$A, locret_12F513
	BEQ	locret_12F513
	add_byte_to_byte_clc byte_372, #$B
	RTS
; ---------------------------------------------------------------------------

loc_12F503:
	if_a_lower_cmp #$12, locret_12F513
	BEQ	locret_12F513
	add_byte_to_byte_clc byte_372, #$A
	RTS
; ---------------------------------------------------------------------------

locret_12F513:
	RTS
; End of function sub_12F4E4

; =============== S U B	R O U T	I N E =======================================

sub_12F514:
	if_a_equal_cmp_addr byte_372, #0, locret_12F526
	if_a_equal_cmp #$B, locret_12F526
	if_a_equal_cmp #$15, locret_12F526
	DEC	byte_372

locret_12F526:
	RTS
; End of function sub_12F514

; =============== S U B	R O U T	I N E =======================================

sub_12F527:
	if_a_equal_cmp_addr byte_372, #$A, locret_12F539
	if_a_equal_cmp #$14, locret_12F539
	if_a_equal_cmp #$1B, locret_12F539
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
	if_a_greater_cmp_addr count_unk_465, #$F, locret_12F5B8
	set count_unk_465, #0
	xor_byte byte_547, #1
	if_a_equal byte_547, sub_12F583
; End of function sub_12F564

; =============== S U B	R O U T	I N E =======================================

sub_12F57D:
	set byte_280, #$F0 
	RTS
; End of function sub_12F57D

; =============== S U B	R O U T	I N E =======================================

sub_12F583:
	set objMapIdx_316, #$3C 
	LDA	byte_421
	mult_a_by_8
	add_to_a #$70 
	STA	byte_36A
	set byte_366, #$50 
	set byte_36B, #0
	STA	byte_367
	set objectIdx_318, #5
	set byte_31A, #$80 
	set sprite_secondByte_31B, #0
	set byte_317, #2
	JSR	exec_b1_c1_128394

locret_12F5B8:
	RTS
; End of function sub_12F583

; =============== S U B	R O U T	I N E =======================================

sub_12F5B9:
	set ppu_unk_byte_309, #9
	set tilemap_size_307, #9
	set byte_35E, #8
	set byte_35F, #1
	set sprite_secondByte_31B, #$AF 
; End of function sub_12F5B9

; =============== S U B	R O U T	I N E =======================================

sub_12F5D2:
	set byte_362, #0
	set byte_363, #0
; End of function sub_12F5D2

; =============== S U B	R O U T	I N E =======================================

sub_12F5DC:
	set byte_364, #7
	set byte_360, #1
	set byte_361, #0
	a_to_stack byte_310
	set byte_310, #5
	JSR	exec_b2_c4_1283F2
	from_stack_to_a byte_310
	RTS
; End of function sub_12F5DC

; =============== S U B	R O U T	I N E =======================================

sub_12F5FC:
	JSR	sub_12F57D
	set text_idx_35C, #$2D 
	set char_type_id_35D, #2
	set ppu_unk_byte_309, #3
	set tilemap_size_307, #5
	set byte_35E, #$B
	set byte_35F, #4
	set sprite_secondByte_31B, #$AF 
	JSR	sub_12F5D2
	set text_idx_35C, #$2E 
	set char_type_id_35D, #2
	set ppu_unk_byte_309, #5
	set tilemap_size_307, #$E
	set byte_35E, #2
	set byte_35F, #1
	set sprite_secondByte_31B, #$D7 
	JSR	sub_12F5D2
	set text_idx_35C, #$2F 
	set char_type_id_35D, #2
	set ppu_unk_byte_309, #7
	set tilemap_size_307, #$E
	set byte_35E, #2
	set byte_35F, #1
	set sprite_secondByte_31B, #$DF 
	JSR	sub_12F5D2
	set text_idx_35C, #$30 
	set char_type_id_35D, #2
	set ppu_unk_byte_309, #9
	set tilemap_size_307, #$E
	set byte_35E, #2
	set byte_35F, #1
	set sprite_secondByte_31B, #$E7 
	JSR	sub_12F5D2
	RTS
; End of function sub_12F5FC

; =============== S U B	R O U T	I N E =======================================

sub_12F698:
	JSR	sub_12F732
	set text_idx_35C, #$32 
	set char_type_id_35D, #2
	set ppu_unk_byte_309, #5
	set tilemap_size_307, #5
	set byte_35E, #$B
	set byte_35F, #2
	set sprite_secondByte_31B, #$B3 
	set byte_362, #0
	set byte_363, #1
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
	set text_idx_35C, #$31 
	set char_type_id_35D, #2
	set ppu_unk_byte_309, #3
	set tilemap_size_307, #5
	set byte_35E, #$B
	set byte_35F, #2
	set sprite_secondByte_31B, #$B3 
	set byte_362, #0
	set byte_363, #1
	JSR	sub_12F5DC
	set text_idx_35C, #$2C 
	set char_type_id_35D, #2
	set ppu_unk_byte_309, #9
	set tilemap_size_307, #9
	set byte_35E, #3
	set byte_35F, #1
	set sprite_secondByte_31B, #$F3 
	JSR	sub_12F5D2
	RTS
; End of function sub_12F6D8

; =============== S U B	R O U T	I N E =======================================

sub_12F732:
	JSR	sub_12F57D
	set text_idx_35C, #$74 
	set char_type_id_35D, #0
	set ppu_unk_byte_309, #3
	set tilemap_size_307, #5
	set byte_35E, #$B
	set byte_35F, #4
	set sprite_secondByte_31B, #$AF 
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