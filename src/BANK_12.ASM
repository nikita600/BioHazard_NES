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
	LDA	bank_command_346
	CMP	#$FF
	BEQ	locret_12805A
	ASL	A
	TAX
	set_inx ptr_0, {CommandPtrs_12805B,X}
	set ptr_1, {CommandPtrs_12805B,X}
	to_stack bank_from_343
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
	to_stack apu_unk_76C
	set apu_unk_76C, #5

exec_b13_c5_12829C:
	set bank_command_346, #5
	set bank_to_344, #banks_13
	set bank_from_343, #$12
	JSR	bank_switch_8000

loc_1282AE:
	JSR	sub_128955
	from_stack apu_unk_76C

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
	; command_0_1280FB+9j ...
	from_stack bank_from_343
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
	
	to_stack inv_itemPrev_idx_31D
	to_stack ppu_unk_byte_309
	to_stack tilemap_size_307
	set byte_36E, #0
	set inv_sprite_idx_31C, inv_itemPrev_idx_31D
	set inv_itemPrev_idx_31D, #0
	set byte_31E, sprite_secondByte_31B
	JSR	exec_b4_c2_1283A7
	from_stack tilemap_size_307
	from_stack ppu_unk_byte_309
	from_stack inv_itemPrev_idx_31D
	RTS
; End of function sub_128326


; =============== S U B	R O U T	I N E =======================================


sub_128358:
	
	to_stack inv_itemPrev_idx_31D
	to_stack ppu_unk_byte_309
	to_stack tilemap_size_307
	set inv_sprite_idx_31C, inv_itemPrev_idx_31D
	set inv_itemPrev_idx_31D, #0
	set byte_31E, sprite_secondByte_31B

exec_b4_c3_128375:
	set bank_command_346, #3
	set bank_to_344, #items_spr_4
	set bank_from_343, #$12
	JSR	bank_switch_8000

loc_128387:
	from_stack tilemap_size_307
	from_stack ppu_unk_byte_309
	from_stack inv_itemPrev_idx_31D
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
	to_stack bank_from_343
	set bank_command_346, #5
	set bank_to_344, #code_0
	set bank_from_343, #$12
	JSR	bank_switch_8000
	from_stack bank_from_343
	RTS
; End of function exec_b0_c5_12843E


; =============== S U B	R O U T	I N E =======================================


exec_b0_c6_128459:
	to_stack bank_from_343
	set bank_command_346, #6
	set bank_to_344, #code_0
	set bank_from_343, #$12
	JSR	bank_switch_8000
	from_stack bank_from_343
	RTS
; End of function exec_b0_c6_128459


; =============== S U B	R O U T	I N E =======================================


exec_b0_c7_128474:
	to_stack bank_from_343
	set bank_command_346, #7
	set bank_to_344, #code_0
	set bank_from_343, #$12
	JSR	bank_switch_8000
	from_stack bank_from_343
	RTS
; End of function exec_b0_c7_128474


; =============== S U B	R O U T	I N E =======================================


exec_b0_c8_12848F:
	to_stack bank_from_343
	set bank_command_346, #8
	set bank_to_344, #code_0
	set bank_from_343, #$12
	JSR	bank_switch_8000
	from_stack bank_from_343
	RTS
; End of function exec_b0_c8_12848F


; =============== S U B	R O U T	I N E =======================================


exec_b0_c9_1284AA:
	
	to_stack bank_from_343
	set bank_command_346, #9
	set bank_to_344, #code_0
	set bank_from_343, #$12
	JSR	bank_switch_8000
	from_stack bank_from_343
	RTS
; End of function exec_b0_c9_1284AA


; =============== S U B	R O U T	I N E =======================================


exec_b0_cA_1284C5:
	
	to_stack bank_from_343
	set bank_command_346, #$A
	set bank_to_344, #code_0
	set bank_from_343, #$12
	JSR	bank_switch_8000
	from_stack bank_from_343
	RTS
; End of function exec_b0_cA_1284C5


; =============== S U B	R O U T	I N E =======================================


exec_b0_cB_1284E0:
	
	to_stack bank_from_343
	set bank_command_346, #$B
	set bank_to_344, #code_0
	set bank_from_343, #$12
	JSR	bank_switch_8000
	from_stack bank_from_343
	RTS
; End of function exec_b0_cB_1284E0


; =============== S U B	R O U T	I N E =======================================


exec_b0_cC_1284FB:
	to_stack bank_from_343
	set bank_command_346, #$C
	set bank_to_344, #code_0
	set bank_from_343, #$12
	JSR	bank_switch_8000
	from_stack bank_from_343
	RTS
; End of function exec_b0_cC_1284FB


; =============== S U B	R O U T	I N E =======================================


exec_b0_cD_128516:
	to_stack bank_from_343
	set bank_command_346, #$D
	set bank_to_344, #code_0
	set bank_from_343, #$12
	JSR	bank_switch_8000
	from_stack bank_from_343
	RTS
; End of function exec_b0_cD_128516


; =============== S U B	R O U T	I N E =======================================


sub_128531:
	
	LDA	tilemapTypeUnk_30B
	CMP	#$47 
	BCC	loc_12853B
	BEQ	loc_12853B
	RTS
; ---------------------------------------------------------------------------

loc_12853B:
	
	LDX	#$F
	STX	_APU_STATUS
	PHA
	TAY
	CMP	#$40 
	BCC	loc_128549
	SEC
	SBC	#$40 

loc_128549:
	ASL	A
	ASL	A
	TAX
	LDA	byte_12858A,Y
	LDA	byte_1285D2,Y
	TAY
	PLA
	CMP	#$40 
	BCS	loc_128571
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
	LDA	byte_46F
	CMP	#$17
	BNE	loc_12875A
	LDA	byte_470
	CMP	#0
	BNE	loc_12875A
	LDA	byte_54E
	CMP	#3
	BNE	loc_12875A
	set byte_54E, #0
	JSR	exec_b0_cC_1284FB
	JMP	locret_128954
; ---------------------------------------------------------------------------

loc_12875A:
	
	LDA	byte_46F
	CMP	#$69 
	BEQ	loc_128768
	CMP	#$98 
	BEQ	loc_128768
	JMP	loc_128777
; ---------------------------------------------------------------------------

loc_128768:
	
	LDA	entry_idx_300
	CMP	#$63 
	BNE	loc_128774
	set byte_5D5, #$FF

loc_128774:
	JMP	locret_128954
; ---------------------------------------------------------------------------

loc_128777:
	LDA	byte_46F
	CMP	#$1B
	BNE	loc_12878D
	LDA	entry_idx_300
	CMP	#$18
	BNE	loc_12878A
	set byte_5D4, #$FF

loc_12878A:
	JMP	locret_128954
; ---------------------------------------------------------------------------

loc_12878D:
	LDA	byte_46F
	CMP	#$19
	BNE	loc_1287A3
	LDA	entry_idx_300
	CMP	#$18
	BNE	loc_1287A0
	set byte_5D3, #$FF

loc_1287A0:
	JMP	locret_128954
; ---------------------------------------------------------------------------

loc_1287A3:
	LDA	byte_46F
	CMP	#$7B 
	BNE	loc_1287B9
	LDA	entry_idx_300
	CMP	#$74 
	BNE	loc_1287B6
	set byte_690, #$FF

loc_1287B6:
	JMP	locret_128954
; ---------------------------------------------------------------------------

loc_1287B9:
	LDA	byte_46F
	CMP	#$71 
	BNE	loc_128817
	LDA	entry_idx_300
	CMP	#$6F 
	BNE	loc_128814
	LDA	byte_6A2
	CMP	#0
	BNE	loc_128814
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
	LDA	byte_46F
	CMP	#$7C 
	BEQ	loc_128821
	JMP	loc_1288EE
; ---------------------------------------------------------------------------

loc_128821:
	LDA	entry_idx_300
	CMP	#$82 
	BEQ	loc_12882B
	JMP	loc_1288EB
; ---------------------------------------------------------------------------

loc_12882B:
	LDA	byte_597
	CMP	#$FF
	BNE	loc_128835
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
	LDA	byte_46F
	CMP	#$78 
	BNE	locret_128954
	LDA	entry_idx_300
	CMP	#$79 
	BNE	loc_128951
	LDA	byte_6C6
	CMP	#0
	BEQ	loc_128951
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
	to_stack image_id_4A4
	to_stack image_offset_4A5
	to_stack ppu_prev_unk_4A6
	to_stack ppu_prev_scroll_x_unk_4A7
	to_stack ppu_prev_scroll_y_unk_4A8
	to_stack prev_sprite_type_4A9
	LDA	inv_sprite_idx_31C
	SEC
	SBC	#$2A 
	ASL	A
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
	CPX	#4
	BNE	loc_12899F
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
	LDA	ppu_ctrl_31F
	AND	#$FC 
	STA	ppu_ctrl_31F
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
	LDA	is_game_finished_561
	CMP	#0
	BEQ	game_not_finished_128A43
	from_stack prev_sprite_type_4A9
	from_stack ppu_prev_scroll_y_unk_4A8
	from_stack ppu_prev_scroll_x_unk_4A7
	from_stack ppu_prev_unk_4A6
	from_stack image_offset_4A5
	from_stack image_id_4A4
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
	LDA	input_pressed_34A
	CMP	#$20 
	BNE	loc_128A72
	JSR	sub_12ED3B
	LDA	byte_472
	EOR	#1
	STA	byte_472
	set byte_440, #0
	JMP	loc_128A20
; ---------------------------------------------------------------------------

loc_128A72:
	CMP	#$10
	BNE	loc_128A87
	JSR	sub_12ED44
	to_stack inv_sprite_idx_31C
	JSR	sub_12D4C6
	from_stack inv_sprite_idx_31C
	JMP	loc_128986
; ---------------------------------------------------------------------------

loc_128A87:
	CMP	#$80 
	BNE	loc_128A9C
	JSR	sub_1290C3
	LDA	sprite_length_30F
	CMP	#$FF
	BEQ	loc_128AA5
	CMP	#$FE 
	BEQ	loc_128A9F
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
	from_stack prev_sprite_type_4A9
	from_stack ppu_prev_scroll_y_unk_4A8
	from_stack ppu_prev_scroll_x_unk_4A7
	from_stack ppu_prev_unk_4A6
	from_stack image_offset_4A5
	from_stack image_id_4A4
	LDA	image_id_4A4
	CMP	#$17
	BEQ	loc_128B01
	CMP	#$45 
	BEQ	loc_128B01
	JSR	sub_12C7DE
	JSR	exec_b0_c3_128418
	LDA	image_id_4A4
	CMP	#$96 
	BNE	loc_128ADA
	set byte_6C9, #$FF

loc_128ADA:
	LDA	image_id_4A4
	CMP	#$9A 
	BNE	loc_128AE6
	set is_game_finished_561, #$88 

loc_128AE6:
	JMP	loc_128B01
; ---------------------------------------------------------------------------

loc_128AE9:
	from_stack prev_sprite_type_4A9
	from_stack ppu_prev_scroll_y_unk_4A8
	from_stack ppu_prev_scroll_x_unk_4A7
	from_stack ppu_prev_unk_4A6
	from_stack image_offset_4A5
	from_stack image_id_4A4

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
	LDA	byte_472
	BNE	loc_128B4B
	JMP	loc_128BFB
; ---------------------------------------------------------------------------

loc_128B4B:
	set byte_31A, #8
	set tilemapWidth_308, #8
	JSR	sub_12D26B
	LDA	inv_sprite_idx_31C
	SEC
	SBC	#$2A 
	ASL	A
	TAY
	LDA	byte_129006,Y
	SEC
	SBC	byte_43F
	ASL	A
	ASL	A
	STA	tilemapTypeUnk_30B
	LDA	#$80 
	SEC
	SBC	tilemapTypeUnk_30B
	STA	byte_36A
	STA	byte_473
	LDA	#0
	SBC	#0
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
	LDA	inv_sprite_idx_31C
	SEC
	SBC	#$2A 
	ASL	A
	TAY
	LDA	byte_129006,Y
	SEC
	SBC	byte_43F
	ASL	A
	ASL	A
	STA	tilemapTypeUnk_30B
	LDA	#$80 
	CLC
	ADC	tilemapTypeUnk_30B
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
	CLC
	ADC	#1
	ASL	A
	ASL	A
	STA	tilemapTypeUnk_30B
	LDA	#$80 
	SEC
	SBC	tilemapTypeUnk_30B
	STA	byte_36A
	STA	byte_473
	LDA	#0
	SBC	#0
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
	CLC
	ADC	#1
	ASL	A
	ASL	A
	STA	tilemapTypeUnk_30B
	LDA	#$80 
	CLC
	ADC	tilemapTypeUnk_30B
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
	LDA	byte_543
	CMP	#0
	BNE	loc_128CD5
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
	add_to_byte_clc byte_36A, #$C0 

	add_to_byte byte_36B, #0

	set sprite_secondByte_31B, #0
	set byte_31A, #$38 
	set objectIdx_318, #4
	LDA	#$1A
	CLC
	ADC	byte_543
	STA	objMapIdx_316
	LDX	objMapIdx_316
	set byte_317, {byte_128F59,X}
	JSR	exec_b1_c1_128394
	RTS
; End of function sub_128CC0


; =============== S U B	R O U T	I N E =======================================


sub_128D20:
	LDA	byte_543
	CMP	#0
	BNE	loc_128D35
	set byte_31A, #$78 
	set tilemapWidth_308, #8
	JSR	sub_12D26B
	RTS
; ---------------------------------------------------------------------------

loc_128D35:
	LDX	byte_544
	set tilemapTypeUnk_30B, {unk_53B,X}
	JSR	sub_128F1B
	LDA	byte_543
	CMP	#1
	BNE	loc_128D8F
	set objMapIdx_316, #$33 
	set byte_366, #$C0 
	set byte_367, #0
	set byte_36A, ppu_scroll_x_304
	set byte_36B, #0
	add_to_byte_clc byte_36A, #$C8 

	add_to_byte byte_36B, #0

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
	CLC
	ADC	#$29 
	STA	objMapIdx_316
	set byte_366, #$C0 
	set byte_367, #0
	set byte_36A, ppu_scroll_x_304
	set byte_36B, #0
	add_to_byte_clc byte_36A, #$C8 

	add_to_byte byte_36B, #0

	set sprite_secondByte_31B, #0
	set byte_31A, #$78 
	set objectIdx_318, #4
	LDX	objMapIdx_316
	set byte_317, {byte_128F59,X}
	JSR	exec_b1_c1_128394
	LDA	byte_354
	CLC
	ADC	#$29 
	STA	objMapIdx_316
	set byte_366, #$C0 
	set byte_367, #0
	set byte_36A, ppu_scroll_x_304
	set byte_36B, #0
	add_to_byte_clc byte_36A, #$D0 

	add_to_byte byte_36B, #0

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
	add_to_byte_clc byte_36A, #$20 

	add_to_byte byte_36B, #0

	set sprite_secondByte_31B, #0
	set byte_31A, #$88 
	set objMapIdx_316, #0
	LDA	byte_549
	CMP	#$55 
	BCC	loc_128E7D
	CMP	#$AA 
	BCC	loc_128E6C
	set byte_54B, #0
	JMP	loc_128E8B
; ---------------------------------------------------------------------------

loc_128E6C:
	add_to_byte_clc objMapIdx_316, #7

	set byte_54B, #1
	JMP	loc_128E8B
; ---------------------------------------------------------------------------

loc_128E7D:
	add_to_byte_clc objMapIdx_316, #$E

	set byte_54B, #2

loc_128E8B:
	
	LDA	count_unk_465
	CMP	#$A
	BCC	loc_128EA6
	set count_unk_465, #0
	LDA	byte_54C
	CMP	#6
	BCC	loc_128EA3
	set byte_54C, #$FF

loc_128EA3:
	INC	byte_54C

loc_128EA6:
	add_to_byte_clc objMapIdx_316, byte_54C

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
	add_to_byte_clc byte_36A, #$20 

	add_to_byte byte_36B, #0

	set sprite_secondByte_31B, #0
	set byte_31A, #$B8 
	set objectIdx_318, #4
	LDA	#$15
	CLC
	ADC	byte_54B
	STA	objMapIdx_316
	LDA	byte_54A
	BEQ	loc_128F0E
	add_to_byte_clc objMapIdx_316, #3


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
	LDA	tilemapTypeUnk_30B
	CMP	#$64 
	BCC	loc_128F3C
	LDA	tilemapTypeUnk_30B
	SEC
	SBC	#$64 
	STA	tilemapTypeUnk_30B
	INC	byte_356
	JMP	loc_128F26
; ---------------------------------------------------------------------------

loc_128F3C:
	
	LDA	tilemapTypeUnk_30B
	CMP	#$A
	BCC	loc_128F52
	LDA	tilemapTypeUnk_30B
	SEC
	SBC	#$A
	STA	tilemapTypeUnk_30B
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
	LDA	count_unk_467
	CMP	#$32 
	BCC	locret_129004
	set count_unk_467, #0
	LDA	#0
	CLC
	ADC	byte_43F
	STA	inv_itemPrev_idx_31D
	set tilemap_size_307, #$B
	set ppu_unk_byte_309, #4
	set byte_36E, #0
	JSR	exec_b4_c2_1283A7
	INC	byte_43F
	LDA	inv_sprite_idx_31C
	SEC
	SBC	#$2A 
	ASL	A
	TAY
	LDA	byte_129006,Y
	CMP	byte_43F
	BNE	locret_129004
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
	LDA	byte_440
	BNE	loc_12902C
	set byte_31A, #$C8 
	set tilemapWidth_308, #$38 
	JSR	sub_12D26B
	RTS
; ---------------------------------------------------------------------------

loc_12902C:
	set byte_366, #$40 
	set byte_367, #0
	LDA	byte_441
	SEC
	SBC	#4
	STA	byte_36A
	LDA	#0
	SBC	#0
	STA	byte_36B
	set sprite_secondByte_31B, #0
	set byte_31A, #$C8 
	set objectIdx_318, #4
	LDA	byte_472
	BEQ	loc_12905F
	LDA	#0
	JMP	loc_129071
; ---------------------------------------------------------------------------

loc_12905F:
	LDA	byte_543
	CMP	#0
	BNE	loc_129069
	JMP	loc_12908C
; ---------------------------------------------------------------------------

loc_129069:
	LDA	byte_543
	SEC
	SBC	#1
	ASL	A
	ASL	A

loc_129071:
	CLC
	ADC	#$34 
	CLC
	ADC	byte_443
	STA	objMapIdx_316
	set byte_478, #4
	LDX	objMapIdx_316
	set byte_317, {byte_128F59,X}
	JSR	exec_b1_c1_128394

loc_12908C:
	LDA	count_unk_466
	CMP	#5
	BCC	locret_1290A8
	set count_unk_466, #0
	INC	byte_443
	LDA	byte_443
	CMP	byte_478
	BCC	locret_1290A8
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
	.BYTE $2C ; ,
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
	LDA	byte_472
	BNE	loc_1290EA
	LDA	byte_543
	CMP	#1
	BEQ	loc_1290EA
	LDA	byte_543
	CMP	#0
	BNE	loc_1290DC
	RTS
; ---------------------------------------------------------------------------

loc_1290DC:
	LDX	byte_544
	LDA	unk_53B,X
	CMP	#0
	BNE	loc_1290E7
	RTS
; ---------------------------------------------------------------------------

loc_1290E7:
	DEC	unk_53B,X

loc_1290EA:
	
	set byte_443, #0
	set byte_440, #$FF
	LDA	ppu_scroll_x_304
	CLC
	ADC	byte_203
	STA	byte_441
	set byte_476, #0
	LDA	byte_441
	CMP	byte_473
	BCC	loc_129117
	CMP	byte_474
	BEQ	loc_129117
	BCS	loc_129117
	set byte_476, #$FF

loc_129117:
	
	LDA	byte_476
	BNE	loc_129120
	JSR	sub_12ED29
	RTS
; ---------------------------------------------------------------------------

loc_129120:
	JSR	sub_12ED20
	LDA	byte_472
	BEQ	loc_12912E
	set sprite_length_30F, #$FE 
	RTS
; ---------------------------------------------------------------------------

loc_12912E:
	JSR	sub_129196
	LDA	byte_475
	CMP	byte_477
	BCC	loc_129143
	SEC
	SBC	byte_477
	STA	byte_475
	JMP	loc_129148
; ---------------------------------------------------------------------------

loc_129143:
	set byte_475, #0

loc_129148:
	LDA	byte_475
	CMP	#0
	BNE	locret_129154
	set sprite_length_30F, #$FF

locret_129154:
	RTS
; End of function sub_1290C3


; =============== S U B	R O U T	I N E =======================================


sub_129155:
	set scroll_offset_y_47A, #$10
	set is_game_finished_561, #0
	JSR	sub_129186
	LDA	byte_549
	CMP	byte_477
	BCC	loc_129174
	SEC
	SBC	byte_477
	STA	byte_549
	JMP	loc_129179
; ---------------------------------------------------------------------------

loc_129174:
	set byte_549, #0

loc_129179:
	LDA	byte_549
	CMP	#0
	BNE	locret_129185
	set is_game_finished_561, #$FF

locret_129185:
	RTS
; End of function sub_129155


; =============== S U B	R O U T	I N E =======================================


sub_129186:
	LDA	inv_sprite_idx_31C
	SEC
	SBC	#$2A 
	ASL	A
	TAX
	INX

loc_12918F:
	set byte_477, {byte_129255,X}
	RTS
; End of function sub_129186


; =============== S U B	R O U T	I N E =======================================


sub_129196:
	set byte_477, #0
	LDA	byte_476
	CMP	#$FF
	BNE	locret_1291F4
	LDA	byte_441
	CMP	#$80 
	BEQ	loc_1291C3
	BCC	loc_1291B7
	LDA	byte_441
	SEC
	SBC	#$80 
	STA	tilemapTypeUnk_30B
	JMP	loc_1291C8
; ---------------------------------------------------------------------------

loc_1291B7:
	LDA	#$80 
	SEC
	SBC	byte_441
	STA	tilemapTypeUnk_30B
	JMP	loc_1291C8
; ---------------------------------------------------------------------------

loc_1291C3:
	set tilemapTypeUnk_30B, #0

loc_1291C8:
	
	LDA	#$14
	SEC
	SBC	tilemapTypeUnk_30B
	STA	byte_477
	LDA	byte_301
	CMP	#$9A 
	BNE	loc_1291DE
	set byte_477, byte_543

loc_1291DE:
	LDA	byte_477
	LDY	byte_543
	DEY

loc_1291E5:
	CPY	#0
	BEQ	loc_1291F1
	CLC
	ADC	byte_477
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
	LDA	array_unk_3A7,X
	CMP	#1
	BNE	loc_129213
	LDA	array_unk_3D9,X
	SEC
	SBC	#8
	STA	array_unk_3D9,X
	LDA	array_unk_3CF,X
	SBC	#0
	STA	array_unk_3CF,X
	JMP	locret_129254
; ---------------------------------------------------------------------------

loc_129213:
	CMP	#0
	BNE	loc_12922B
	LDA	array_unk_3D9,X
	CLC
	ADC	#8
	STA	array_unk_3D9,X
	LDA	array_unk_3CF,X
	ADC	#0
	STA	array_unk_3CF,X
	JMP	locret_129254
; ---------------------------------------------------------------------------

loc_12922B:
	CMP	#3
	BNE	loc_129243
	LDA	array_unk_3C5,X
	SEC
	SBC	#8
	STA	array_unk_3C5,X
	LDA	array_unk_3BB,X
	SBC	#0
	STA	array_unk_3BB,X
	JMP	locret_129254
; ---------------------------------------------------------------------------

loc_129243:
	LDA	array_unk_3C5,X
	CLC
	ADC	#8
	STA	array_unk_3C5,X
	LDA	array_unk_3BB,X
	ADC	#0
	STA	array_unk_3BB,X

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
	CPX	#$AC 
	BNE	loc_12A64A

	set_ptr off_129269

	set data_2, entry_idx_300
	set data_3, #0
	ASL	data_2
	ROL	data_3

	add_to_byte_clc ptr_0, data_2

	add_to_byte ptr_1, data_3


	LDY	#0
	set_iny data_2, {(ptr_0),Y}
	set data_3, {(ptr_0),Y}
	LDY	#0
	set objArraySize_373, {(data_2),Y}
	CMP	#0
	BNE	loc_12A68B
	RTS
; ---------------------------------------------------------------------------

loc_12A68B:

	add_to_data $1

	set inv_spr_dscr1_30C, #0

loc_12A69D:
	to_stack data_2
	to_stack data_3
	LDA	inv_spr_dscr1_30C
	ASL	A
	CLC
	ADC	data_2
	STA	data_2
	add_to_byte data_3, #0

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
	LDA	entry_idx_300
	CMP	#$65 
	BNE	loc_12A70C
	LDA	objIdxArray_375,X
	CMP	#3
	BNE	loc_12A70C
	set {array_unk_3C5,X}, byte_567
	set {array_unk_3BB,X}, byte_568
	set {array_unk_3D9,X}, byte_569
	set {array_unk_3CF,X}, byte_56A

loc_12A70C:
	; com_29_start_new_game_12A646+ACj
	LDA	entry_idx_300
	CMP	#$3C 
	BNE	loc_12A732
	LDA	objIdxArray_375,X
	CMP	#3
	BNE	loc_12A732
	set {array_unk_3C5,X}, byte_56B
	set {array_unk_3BB,X}, byte_56C
	set {array_unk_3D9,X}, byte_56D
	set {array_unk_3CF,X}, byte_56E

loc_12A732:
	; com_29_start_new_game_12A646+D2j
	LDA	entry_idx_300
	CMP	#$5C 
	BNE	loc_12A758
	LDA	objIdxArray_375,X
	CMP	#3
	BNE	loc_12A758
	set {array_unk_3C5,X}, byte_56F
	set {array_unk_3BB,X}, byte_570
	set {array_unk_3D9,X}, byte_571
	set {array_unk_3CF,X}, byte_572

loc_12A758:
	; com_29_start_new_game_12A646+F8j
	LDA	entry_idx_300
	CMP	#$93 
	BNE	loc_12A79E
	LDA	objIdxArray_375,X
	CMP	#3
	BNE	loc_12A79E
	LDA	byte_56F
	CMP	#$40 
	BEQ	loc_12A786
	BCS	loc_12A786
	LDA	byte_571
	CMP	#$50 
	BEQ	loc_12A781
	CMP	#$60 
	BEQ	loc_12A781
	CMP	#$70 
	BEQ	loc_12A781
	JMP	loc_12A786
; ---------------------------------------------------------------------------

loc_12A781:
	; com_29_start_new_game_12A646+132j ...
	set byte_56F, #$40 

loc_12A786:
	; com_29_start_new_game_12A646+127j ...
	set {array_unk_3C5,X}, byte_56F
	set {array_unk_3BB,X}, byte_570
	set {array_unk_3D9,X}, byte_571
	set {array_unk_3CF,X}, byte_572

loc_12A79E:
	; com_29_start_new_game_12A646+11Ej
	LDA	entry_idx_300
	CMP	#$5D 
	BNE	loc_12A7F7
	LDA	objIdxArray_375,X
	CMP	#3
	BNE	loc_12A7F7
	LDA	byte_573
	CMP	#$90 
	BNE	loc_12A7CB
	LDA	byte_574
	CMP	#1
	BNE	loc_12A7CB
	LDA	byte_575
	CMP	#$B0 
	BNE	loc_12A7CB
	LDA	byte_576
	CMP	#0
	BNE	loc_12A7CB
	JMP	loc_12A7DF
; ---------------------------------------------------------------------------

loc_12A7CB:
	; com_29_start_new_game_12A646+172j ...
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
	; com_29_start_new_game_12A646+164j
	LDA	objIdxArray_375,X
	CMP	#6
	BNE	loc_12A809
	set {obj_array_unk_415,X}, {array_unk_39D,X}
	set {array_unk_39D,X}, #0

loc_12A809:
	LDA	objIdxArray_375,X
	CMP	#7
	BNE	loc_12A81B
	set {obj_array_unk_415,X}, {array_unk_39D,X}
	set {array_unk_39D,X}, #0

loc_12A81B:
	TYA
	CLC
	ADC	ptr_0
	STA	data_2
	LDA	ptr_1
	ADC	#0
	STA	data_3
	JSR	sub_12A893
	LDA	byte_36F
	CMP	#0
	BNE	loc_12A839
	LDX	inv_spr_dscr1_30C
	set {objCreatedArray_393,X}, #$FF

loc_12A839:
	from_stack data_3
	from_stack data_2
	INC	inv_spr_dscr1_30C
	LDA	inv_spr_dscr1_30C
	CMP	objArraySize_373
	BEQ	loc_12A84D
	JMP	loc_12A69D
; ---------------------------------------------------------------------------

loc_12A84D:
	LDA	entry_idx_300
	CMP	#$6A 
	BNE	locret_12A892
	LDA	byte_577
	CMP	#$FF
	BNE	loc_12A88D
	LDY	#0
	LDX	#0

loc_12A85F:
	; com_29_start_new_game_12A646+244j
	LDA	objIdxArray_375,X
	CMP	#3
	BEQ	loc_12A86D
	INX
	CPX	objArraySize_373
	BCC	loc_12A85F
	RTS
; ---------------------------------------------------------------------------

loc_12A86D:
	set {array_unk_3C5,X}, {byte_578,Y}
	set {array_unk_3BB,X}, {byte_57B,Y}
	set {array_unk_3D9,X}, {byte_57E,Y}
	set_iny {array_unk_3CF,X}, {byte_581,Y}
	INX
	CPX	objArraySize_373
	BCC	loc_12A85F
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
	TYA
	PHA
	to_stack ptr_0
	to_stack ptr_1
	to_stack tilemapTypeUnk_30B
	to_stack inv_spr_dscr1_30C
	LDY	#0
	set tilemapTypeUnk_30B, {(data_2),Y}
	CMP	#0
	BNE	loc_12A8C1
	set byte_36F, #$FF
	JMP	loc_12A933
; ---------------------------------------------------------------------------

loc_12A8C1:

	add_to_data $1

	set inv_spr_dscr1_30C, #0

loc_12A8D3:
	LDA	inv_spr_dscr1_30C
	ASL	A
	TAY
	set_iny ptr_0, {(data_2),Y}
	set ptr_1, {(data_2),Y}
	LDY	#0

loc_12A8E3:
	set_iny tilemapFrameCount_30D, {(ptr_0),Y}
	set_iny byte_30E, {(ptr_0),Y}
	LDA	tilemapFrameCount_30D
	CMP	#$FF
	BNE	loc_12A8FD
	LDA	tilemapFrameCount_30D
	CMP	#$FF
	BEQ	loc_12A91F

loc_12A8FD:
	add_to_byte_clc byte_370, tilemapFrameCount_30D

	add_to_byte byte_371, byte_30E

	JSR	sub_12A944
	LDA	byte_36F
	ORA	tilemapFrameCount_30D
	STA	byte_36F
	JMP	loc_12A8E3
; ---------------------------------------------------------------------------

loc_12A91F:
	LDA	byte_36F
	AND	tilemapFrameCount_30D
	STA	byte_36F
	INC	inv_spr_dscr1_30C
	LDA	inv_spr_dscr1_30C
	CMP	tilemapTypeUnk_30B
	BCC	loc_12A8D3

loc_12A933:
	from_stack inv_spr_dscr1_30C
	from_stack tilemapTypeUnk_30B
	from_stack ptr_1
	from_stack ptr_0
	from_stack_to_y
	RTS
; End of function sub_12A893


; =============== S U B	R O U T	I N E =======================================


sub_12A944:
	to_stack ptr_0
	to_stack ptr_1
	TYA
	PHA

	set_ptr byte_598

	add_to_byte_clc ptr_0, tilemapFrameCount_30D

	add_to_byte ptr_1, byte_30E


	LDY	#0
	set tilemapFrameCount_30D, {(ptr_0),Y}
	from_stack_to_y
	from_stack ptr_1
	from_stack ptr_0
	RTS
; End of function sub_12A944


; =============== S U B	R O U T	I N E =======================================


exec_b0_c0_12A973:
	
	to_stack bank_from_343
	set bank_command_346, #0
	set bank_to_344, #code_0
	set bank_from_343, #$12
	JSR	bank_switch_8000
	from_stack bank_from_343
	RTS
; End of function exec_b0_c0_12A973


; =============== S U B	R O U T	I N E =======================================


exec_b0_c1_12A98E:
	
	to_stack bank_from_343
	set bank_command_346, #1
	set bank_to_344, #code_0
	set bank_from_343, #$12
	JSR	bank_switch_8000
	from_stack bank_from_343
	RTS
; End of function exec_b0_c1_12A98E


; =============== S U B	R O U T	I N E =======================================


exec_b0_c2_12A9A9:
	
	to_stack bank_from_343
	set bank_command_346, #2
	set bank_to_344, #code_0
	set bank_from_343, #$12
	JSR	bank_switch_8000
	from_stack bank_from_343
	RTS
; End of function exec_b0_c2_12A9A9


; =============== S U B	R O U T	I N E =======================================


com_17_player_update_12A9C4:
	LDA	entry_idx_300
	CMP	#$46 
	BNE	loc_12AA0E
	LDA	byte_560
	CMP	#$FF
	BNE	locret_12AA0D
	LDA	byte_355
	CMP	#0
	BNE	locret_12AA0D
	LDA	byte_354
	CMP	#0
	BNE	locret_12AA0D
	LDA	byte_356
	CMP	#0
	BNE	locret_12AA0D
	set byte_354, #$A
	set byte_355, #0
	STA	byte_356
	LDA	byte_54B
	AND	#$F
	ORA	#$F0 
	STA	byte_54B
	INC	byte_54B
	LDA	byte_54B
	CMP	#$F2 
	BCC	locret_12AA0D

set_game_finished_12AA08:
	set is_game_finished_561, #$FF

locret_12AA0D:
	; com_17_player_update_12A9C4+13j ...
	RTS
; ---------------------------------------------------------------------------

loc_12AA0E:
	LDA	entry_idx_300
	CMP	#$41 
	BNE	loc_12AA1B
	set byte_560, #0
	RTS
; ---------------------------------------------------------------------------

loc_12AA1B:
	LDA	entry_idx_300
	CMP	#$2F 
	BEQ	locret_12AA6C
	LDA	entry_idx_300
	CMP	#$5C 
	BEQ	locret_12AA6C
	CMP	#$93 
	BEQ	locret_12AA6C
	LDA	byte_56F
	CMP	#$B0 
	BNE	loc_12AA3E
	LDA	byte_571
	CMP	#$60 
	BNE	loc_12AA3E
	JMP	loc_12AA52
; ---------------------------------------------------------------------------

loc_12AA3E:
	; com_17_player_update_12A9C4+75j
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
	; com_17_player_update_12A9C4+63j ...
	RTS
; End of function com_17_player_update_12A9C4


; =============== S U B	R O U T	I N E =======================================


entry_idx_handler_unk_12AA6D:
	
	LDA	entry_idx_300
	CMP	#$83 
	BNE	check_room_7D_12AA81
	LDA	byte_595
	CMP	#0
	BEQ	locret_12AA80
	set entry_idx_300, #$96 

locret_12AA80:
	RTS
; ---------------------------------------------------------------------------

check_room_7D_12AA81:
	LDA	entry_idx_300
	CMP	#$7D 
	BNE	check_room_95_12AA95
	LDA	byte_594
	CMP	#0
	BEQ	locret_12AA94
	set entry_idx_300, #$95 

locret_12AA94:
	RTS
; ---------------------------------------------------------------------------

check_room_95_12AA95:
	LDA	entry_idx_300
	CMP	#$95 
	BNE	check_room_76_12AAA9
	LDA	byte_594
	CMP	#0
	BNE	locret_12AAA8
	set entry_idx_300, #$7D 

locret_12AAA8:
	RTS
; ---------------------------------------------------------------------------

check_room_76_12AAA9:
	LDA	entry_idx_300
	CMP	#$76 
	BNE	check_room_94_12AABD
	LDA	byte_593
	CMP	#0
	BEQ	locret_12AABC
	set entry_idx_300, #$94 

locret_12AABC:
	RTS
; ---------------------------------------------------------------------------

check_room_94_12AABD:
	LDA	entry_idx_300
	CMP	#$94 
	BNE	check_room_53_12AAD1
	LDA	byte_593
	CMP	#0
	BNE	locret_12AAD0
	set entry_idx_300, #$76 

locret_12AAD0:
	RTS
; ---------------------------------------------------------------------------

check_room_53_12AAD1:
	LDA	entry_idx_300
	CMP	#$53 
	BNE	check_room_90_12AAE5
	LDA	byte_58C
	CMP	#$FF
	BNE	locret_12AAE4
	set entry_idx_300, #$90 

locret_12AAE4:
	RTS
; ---------------------------------------------------------------------------

check_room_90_12AAE5:
	LDA	entry_idx_300
	CMP	#$90 
	BNE	check_room_3D_12AAF9
	LDA	byte_58C
	CMP	#$FF
	BEQ	locret_12AAF8
	set entry_idx_300, #$53 

locret_12AAF8:
	RTS
; ---------------------------------------------------------------------------

check_room_3D_12AAF9:
	LDA	entry_idx_300
	CMP	#$3D 
	BNE	check_room_44_12AB0D
	LDA	byte_58A
	CMP	#$FF
	BNE	locret_12AB0C
	set entry_idx_300, #$8B 

locret_12AB0C:
	RTS
; ---------------------------------------------------------------------------

check_room_44_12AB0D:
	LDA	entry_idx_300
	CMP	#$44 
	BNE	check_room_9C_12AB21
	LDA	byte_58B
	CMP	#0
	BEQ	locret_12AB20
	set entry_idx_300, #$9C 

locret_12AB20:
	RTS
; ---------------------------------------------------------------------------

check_room_9C_12AB21:
	LDA	entry_idx_300
	CMP	#$9C 
	BNE	check_room_38_12AB35
	LDA	byte_58B
	CMP	#0
	BNE	locret_12AB34
	set entry_idx_300, #$44 

locret_12AB34:
	RTS
; ---------------------------------------------------------------------------

check_room_38_12AB35:
	LDA	entry_idx_300
	CMP	#$38 
	BNE	check_room_8A_12AB49
	LDA	byte_589
	CMP	#0
	BEQ	locret_12AB48
	set entry_idx_300, #$8A 

locret_12AB48:
	RTS
; ---------------------------------------------------------------------------

check_room_8A_12AB49:
	LDA	entry_idx_300
	CMP	#$8A 
	BNE	check_room_2F_12AB5D
	LDA	byte_589
	CMP	#$FF
	BEQ	locret_12AB5C
	set entry_idx_300, #$38 

locret_12AB5C:
	RTS
; ---------------------------------------------------------------------------

check_room_2F_12AB5D:
	LDA	entry_idx_300
	CMP	#$2F 
	BNE	check_room_1A_12AB71
	LDA	byte_55B
	CMP	#0
	BEQ	check_room_1A_12AB71
	set entry_idx_300, #$89 
	RTS
; ---------------------------------------------------------------------------

check_room_1A_12AB71:
	; entry_idx_handler_unk_12AA6D+FCj
	LDA	entry_idx_300
	CMP	#$1A
	BNE	check_room_17_12AB85
	LDA	byte_55F
	CMP	#0
	BEQ	check_room_17_12AB85
	set entry_idx_300, #$86 
	RTS
; ---------------------------------------------------------------------------

check_room_17_12AB85:
	; entry_idx_handler_unk_12AA6D+110j
	LDA	entry_idx_300
	CMP	#$17
	BNE	check_room_4F_12AB99
	LDA	byte_5A9
	CMP	#0
	BEQ	check_room_4F_12AB99
	set entry_idx_300, #$85 
	RTS
; ---------------------------------------------------------------------------

check_room_4F_12AB99:
	; entry_idx_handler_unk_12AA6D+124j
	LDA	entry_idx_300
	CMP	#$4F 
	BNE	check_room_50_12ABAD
	LDA	byte_565
	CMP	#0
	BEQ	check_room_50_12ABAD
	set entry_idx_300, #$8D 
	RTS
; ---------------------------------------------------------------------------

check_room_50_12ABAD:
	; entry_idx_handler_unk_12AA6D+138j
	LDA	entry_idx_300
	CMP	#$50 
	BNE	check_room_8D_12ABC1
	LDA	byte_565
	CMP	#0
	BNE	check_room_8D_12ABC1
	set entry_idx_300, #$8E 
	RTS
; ---------------------------------------------------------------------------

check_room_8D_12ABC1:
	; entry_idx_handler_unk_12AA6D+14Cj
	LDA	entry_idx_300
	CMP	#$8D 
	BNE	check_room_8E_12ABD5
	LDA	byte_565
	CMP	#0
	BNE	check_room_8E_12ABD5
	set entry_idx_300, #$4F 
	RTS
; ---------------------------------------------------------------------------

check_room_8E_12ABD5:
	; entry_idx_handler_unk_12AA6D+160j
	LDA	entry_idx_300
	CMP	#$8E 
	BNE	check_room_60_12ABE9
	LDA	byte_565
	CMP	#0
	BEQ	check_room_60_12ABE9
	set entry_idx_300, #$50 
	RTS
; ---------------------------------------------------------------------------

check_room_60_12ABE9:
	; entry_idx_handler_unk_12AA6D+174j
	LDA	entry_idx_300
	CMP	#$60 
	BNE	check_room_6B_12ABFD
	LDA	byte_566
	CMP	#0
	BEQ	check_room_6B_12ABFD
	set entry_idx_300, #$97 
	RTS
; ---------------------------------------------------------------------------

check_room_6B_12ABFD:
	; entry_idx_handler_unk_12AA6D+188j
	LDA	entry_idx_300
	CMP	#$6B 
	BNE	check_room_67_12AC11
	LDA	byte_585
	CMP	#0
	BEQ	check_room_67_12AC11
	set entry_idx_300, #$99 
	RTS
; ---------------------------------------------------------------------------

check_room_67_12AC11:
	; entry_idx_handler_unk_12AA6D+19Cj
	LDA	entry_idx_300
	CMP	#$67 
	BNE	check_room_69_12AC25
	LDA	byte_586
	CMP	#0
	BEQ	check_room_69_12AC25
	set entry_idx_300, #$9B 
	RTS
; ---------------------------------------------------------------------------

check_room_69_12AC25:
	; entry_idx_handler_unk_12AA6D+1B0j
	LDA	entry_idx_300
	CMP	#$69 
	BNE	check_room_1C_12AC39
	LDA	byte_587
	CMP	#0
	BEQ	check_room_1C_12AC39
	set entry_idx_300, #$98 
	RTS
; ---------------------------------------------------------------------------

check_room_1C_12AC39:
	; entry_idx_handler_unk_12AA6D+1C4j
	LDA	entry_idx_300
	CMP	#$1C
	BNE	check_room_57_12AC4D
	LDA	byte_588
	CMP	#0
	BEQ	check_room_57_12AC4D
	set entry_idx_300, #$87 
	RTS
; ---------------------------------------------------------------------------

check_room_57_12AC4D:
	; entry_idx_handler_unk_12AA6D+1D8j
	LDA	entry_idx_300
	CMP	#$57 
	BNE	check_room_91_12AC61
	LDA	byte_646
	CMP	#0
	BNE	check_room_91_12AC61
	set entry_idx_300, #$91 
	RTS
; ---------------------------------------------------------------------------

check_room_91_12AC61:
	; entry_idx_handler_unk_12AA6D+1ECj
	LDA	entry_idx_300
	CMP	#$91 
	BNE	check_room_5B_12AC75
	LDA	byte_646
	CMP	#0
	BEQ	check_room_5B_12AC75
	set entry_idx_300, #$57 
	RTS
; ---------------------------------------------------------------------------

check_room_5B_12AC75:
	; entry_idx_handler_unk_12AA6D+200j
	LDA	entry_idx_300
	CMP	#$5B 
	BNE	check_room_5C_12AC89
	LDA	byte_58F
	CMP	#0
	BEQ	check_room_5C_12AC89
	set entry_idx_300, #$92 
	RTS
; ---------------------------------------------------------------------------

check_room_5C_12AC89:
	; entry_idx_handler_unk_12AA6D+214j
	LDA	entry_idx_300
	CMP	#$5C 
	BNE	check_room_92_12AC9D
	LDA	byte_590
	CMP	#0
	BEQ	check_room_92_12AC9D
	set entry_idx_300, #$93 
	RTS
; ---------------------------------------------------------------------------

check_room_92_12AC9D:
	; entry_idx_handler_unk_12AA6D+228j
	LDA	entry_idx_300
	CMP	#$92 
	BNE	check_room_93_12ACB1
	LDA	byte_58F
	CMP	#0
	BNE	check_room_93_12ACB1
	set entry_idx_300, #$5B 
	RTS
; ---------------------------------------------------------------------------

check_room_93_12ACB1:
	; entry_idx_handler_unk_12AA6D+23Cj
	LDA	entry_idx_300
	CMP	#$93 
	BNE	check_room_52_12ACC5
	LDA	byte_590
	CMP	#0
	BNE	check_room_52_12ACC5
	set entry_idx_300, #$5C 
	RTS
; ---------------------------------------------------------------------------

check_room_52_12ACC5:
	; entry_idx_handler_unk_12AA6D+250j
	LDA	entry_idx_300
	CMP	#$52 
	BNE	locret_12ACDA
	LDA	byte_591
	AND	byte_592
	BEQ	locret_12ACDA
	set entry_idx_300, #$8F 
	RTS
; ---------------------------------------------------------------------------

locret_12ACDA:
	; entry_idx_handler_unk_12AA6D+265j
	RTS
; End of function entry_idx_handler_unk_12AA6D


; =============== S U B	R O U T	I N E =======================================


sub_12ACDB:
	LDA	byte_46E

is_save_game_12ACDE:
	CMP	#$1A
	BNE	loc_12ACE6
	JSR	com_E_load_game_12CD30
	RTS
; ---------------------------------------------------------------------------

loc_12ACE6:
	LDA	byte_46E
	CMP	#$2F 
	BNE	loc_12AD06
	set byte_6A6, #$FF
	STA	byte_6A7
	set cur_obj_idx_unk_43A, #1
	JSR	sub_12BF29
	set cur_obj_idx_unk_43A, #2
	JSR	sub_12BF29
	RTS
; ---------------------------------------------------------------------------

loc_12AD06:
	LDA	byte_46E
	CMP	#$30 
	BNE	loc_12AD65
	LDA	entry_idx_300
	CMP	#$77 
	BNE	loc_12AD27
	set byte_68D, #$FF
	LDX	byte_4D0
	set {unk_4C2,X}, #$4D 
	INC	byte_4D0
	JMP	loc_12AD58
; ---------------------------------------------------------------------------

loc_12AD27:
	LDA	entry_idx_300
	CMP	#$7B 
	BNE	loc_12AD41
	set byte_68E, #$FF
	LDX	byte_4D0
	set {unk_4C2,X}, #$4E 
	INC	byte_4D0
	JMP	loc_12AD58
; ---------------------------------------------------------------------------

loc_12AD41:
	LDA	entry_idx_300
	CMP	#$80 
	BNE	locret_12AD64
	set byte_68F, #$FF
	LDX	byte_4D0
	set {unk_4C2,X}, #$4F 
	INC	byte_4D0

loc_12AD58:
	
	LDA	byte_68D
	AND	byte_68E
	AND	byte_68F
	STA	byte_6A4

locret_12AD64:
	RTS
; ---------------------------------------------------------------------------

loc_12AD65:
	LDA	byte_46E
	CMP	#$27 
	BNE	loc_12ADA0
	set byte_591, #$FF
	LDA	byte_591
	AND	byte_592
	CMP	#0
	BEQ	locret_12AD9F
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
	LDA	byte_46E
	CMP	#$28 
	BNE	loc_12ADDB
	set byte_592, #$FF
	LDA	byte_591
	AND	byte_592
	CMP	#0
	BEQ	locret_12ADDA
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
	LDA	byte_46E
	CMP	#$39 
	BNE	loc_12ADE8
	set byte_587, #$FF
	RTS
; ---------------------------------------------------------------------------

loc_12ADE8:
	LDA	byte_46E
	CMP	#0
	BNE	loc_12ADF5
	set byte_64C, #$FF
	RTS
; ---------------------------------------------------------------------------

loc_12ADF5:
	LDA	byte_46E
	CMP	#$15
	BNE	loc_12AE02
	set byte_59B, #$FF
	RTS
; ---------------------------------------------------------------------------

loc_12AE02:
	LDA	byte_46E
	CMP	#$16
	BNE	loc_12AE0F
	set byte_59C, #$FF
	RTS
; ---------------------------------------------------------------------------

loc_12AE0F:
	LDA	byte_46E
	CMP	#$2A 
	BNE	loc_12AE6C
	LDA	entry_idx_300
	CMP	#$53 
	BEQ	loc_12AE3F
	CMP	#$90 
	BEQ	loc_12AE3F
	CMP	#$5C 
	BEQ	loc_12AE34
	CMP	#$93 
	BEQ	loc_12AE34
	LDA	byte_58F
	EOR	#$FF
	STA	byte_58F
	JMP	loc_12AE47
; ---------------------------------------------------------------------------

loc_12AE34:
	
	LDA	byte_590
	EOR	#$FF
	STA	byte_590
	JMP	loc_12AE47
; ---------------------------------------------------------------------------

loc_12AE3F:
	
	LDA	byte_58C
	EOR	#$FF
	STA	byte_58C

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
	LDA	byte_46E
	CMP	#$2E 
	BEQ	loc_12AE76
	JMP	loc_12AF01
; ---------------------------------------------------------------------------

loc_12AE76:
	LDA	entry_idx_300
	CMP	#$70 
	BEQ	loc_12AE86
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
	LDA	byte_46E
	CMP	#2
	BNE	loc_12AF16
	set byte_5EF, #$FF
	set cur_obj_idx_unk_43A, #0
	JSR	sub_12BF29
	RTS
; ---------------------------------------------------------------------------

loc_12AF16:
	LDA	byte_46E
	CMP	#$3B 
	BNE	loc_12AF2B
	set byte_5F9, #$FF
	set cur_obj_idx_unk_43A, #0
	JSR	sub_12BF29
	RTS
; ---------------------------------------------------------------------------

loc_12AF2B:
	LDA	byte_46E
	CMP	#$2C 
	BNE	loc_12AF69
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
	LDA	byte_46E
	CMP	#$24 
	BNE	loc_12AF9A
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
	LDA	byte_46E
	CMP	#$17
	BNE	loc_12AFA7
	set byte_5CB, #$FF
	RTS
; ---------------------------------------------------------------------------

loc_12AFA7:
	LDA	byte_46E
	CMP	#$18
	BNE	loc_12AFB4
	set byte_59D, #$FF
	RTS
; ---------------------------------------------------------------------------

loc_12AFB4:
	LDA	byte_46E
	CMP	#$13
	BNE	loc_12AFC1
	set byte_599, #$FF
	RTS
; ---------------------------------------------------------------------------

loc_12AFC1:
	LDA	byte_46E
	CMP	#$14
	BNE	loc_12AFCE
	set byte_59A, #$FF
	RTS
; ---------------------------------------------------------------------------

loc_12AFCE:
	LDA	byte_46E
	CMP	#$22 
	BNE	loc_12AFE3
	set byte_5D9, #$FF
	set cur_obj_idx_unk_43A, #0
	JSR	sub_12BF29
	RTS
; ---------------------------------------------------------------------------

loc_12AFE3:
	LDA	byte_46E
	CMP	#$23 
	BNE	loc_12AFF8
	set byte_5B3, #$FF
	set cur_obj_idx_unk_43A, #1
	JSR	sub_12BF29
	RTS
; ---------------------------------------------------------------------------

loc_12AFF8:
	LDA	byte_46E
	CMP	#$2D 
	BNE	loc_12B03B
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
	CMP	#$1C
	BNE	loc_12B074
	LDA	entry_idx_300
	CMP	#$1E
	BEQ	loc_12B054
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
	CMP	#$1D
	BNE	loc_12B0E2
	LDA	entry_idx_300
	CMP	#$1E
	BEQ	loc_12B0C2
	set byte_5A9, #$FF
	set cur_obj_idx_unk_43A, #2
	LDA	entry_idx_300
	CMP	#$17
	BEQ	loc_12B095
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
	CMP	#$1B
	BNE	loc_12B106
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
	CMP	#$1E
	BNE	loc_12B11F
	set byte_59F, #$FF
	LDA	byte_59F
	AND	byte_5A0
	AND	byte_5A1
	AND	byte_5A2
	STA	byte_6C8
	RTS
; ---------------------------------------------------------------------------

loc_12B11F:
	CMP	#$1F
	BNE	loc_12B138
	set byte_5A0, #$FF
	LDA	byte_59F
	AND	byte_5A0
	AND	byte_5A1
	AND	byte_5A2
	STA	byte_6C8
	RTS
; ---------------------------------------------------------------------------

loc_12B138:
	CMP	#$20 
	BNE	loc_12B151
	set byte_5A1, #$FF
	LDA	byte_59F
	AND	byte_5A0
	AND	byte_5A1
	AND	byte_5A2
	STA	byte_6C8
	RTS
; ---------------------------------------------------------------------------

loc_12B151:
	CMP	#$21 
	BNE	loc_12B16A
	set byte_5A2, #$FF
	LDA	byte_59F
	AND	byte_5A0
	AND	byte_5A1
	AND	byte_5A2
	STA	byte_6C8
	RTS
; ---------------------------------------------------------------------------

loc_12B16A:
	CMP	#$29 
	BNE	locret_12B1AF
	LDA	entry_idx_300
	CMP	#$4F 
	BNE	loc_12B17D
	set byte_565, #$FF
	JMP	loc_12B18A
; ---------------------------------------------------------------------------

loc_12B17D:
	CMP	#$8D 
	BNE	locret_12B189
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
	LDA	byte_471
	CMP	#0
	BEQ	loc_12B1B8
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
	LDA	byte_555,X
	BEQ	loc_12B1D5
	INY

loc_12B1D5:
	INX
	CPX	#6
	BCC	loc_12B1CF
	INY
	RTS
; End of function sub_12B1CB

; ---------------------------------------------------------------------------
byte_12B1DC:.BYTE	5,  1,	4,  2,	3,  6,	0 

; =============== S U B	R O U T	I N E =======================================


sub_12B1E3:
	LDA	byte_471
	CMP	#0
	BEQ	loc_12B1EB
	RTS
; ---------------------------------------------------------------------------

loc_12B1EB:
	set text_idx_35C, #$AB 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	LDA	byte_55B
	BNE	locret_12B224
	set text_idx_35C, #$B3 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c1_12A98E
	LDA	byte_372
	CMP	#1
	BEQ	locret_12B224
	JSR	sub_12B1CB
	STY	byte_555

locret_12B224:
	
	RTS
; End of function sub_12B1E3


; =============== S U B	R O U T	I N E =======================================


sub_12B225:
	LDA	byte_471
	CMP	#0
	BEQ	loc_12B22D
	RTS
; ---------------------------------------------------------------------------

loc_12B22D:
	set text_idx_35C, #$AC 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	LDA	byte_55B
	BNE	locret_12B266
	set text_idx_35C, #$B3 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c1_12A98E
	LDA	byte_372
	CMP	#1
	BEQ	locret_12B266
	JSR	sub_12B1CB
	STY	byte_556

locret_12B266:
	
	RTS
; End of function sub_12B225


; =============== S U B	R O U T	I N E =======================================


sub_12B267:
	LDA	byte_471
	CMP	#0
	BEQ	loc_12B26F
	RTS
; ---------------------------------------------------------------------------

loc_12B26F:
	set text_idx_35C, #$AD 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	LDA	byte_55B
	BNE	locret_12B2A8
	set text_idx_35C, #$B3 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c1_12A98E
	LDA	byte_372
	CMP	#1
	BEQ	locret_12B2A8
	JSR	sub_12B1CB
	STY	byte_557

locret_12B2A8:
	
	RTS
; End of function sub_12B267


; =============== S U B	R O U T	I N E =======================================


sub_12B2A9:
	LDA	byte_471
	CMP	#0
	BEQ	loc_12B2B1
	RTS
; ---------------------------------------------------------------------------

loc_12B2B1:
	set text_idx_35C, #$AE 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	LDA	byte_55B
	BNE	locret_12B2EA
	set text_idx_35C, #$B3 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c1_12A98E
	LDA	byte_372
	CMP	#1
	BEQ	locret_12B2EA
	JSR	sub_12B1CB
	STY	byte_558

locret_12B2EA:
	
	RTS
; End of function sub_12B2A9


; =============== S U B	R O U T	I N E =======================================


sub_12B2EB:
	LDA	byte_471
	CMP	#0
	BEQ	loc_12B2F3
	RTS
; ---------------------------------------------------------------------------

loc_12B2F3:
	set text_idx_35C, #$AF 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	LDA	byte_55B
	BNE	locret_12B32C
	set text_idx_35C, #$B3 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c1_12A98E
	LDA	byte_372
	CMP	#1
	BEQ	locret_12B32C
	JSR	sub_12B1CB
	STY	byte_559

locret_12B32C:
	
	RTS
; End of function sub_12B2EB


; =============== S U B	R O U T	I N E =======================================


sub_12B32D:
	LDA	byte_471
	CMP	#0
	BEQ	loc_12B335
	RTS
; ---------------------------------------------------------------------------

loc_12B335:
	set text_idx_35C, #$B0 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	LDA	byte_55B
	BNE	locret_12B36E
	set text_idx_35C, #$B3 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c1_12A98E
	LDA	byte_372
	CMP	#1
	BEQ	locret_12B36E
	JSR	sub_12B1CB
	STY	byte_55A

locret_12B36E:
	
	RTS
; End of function sub_12B32D


; =============== S U B	R O U T	I N E =======================================


sub_12B36F:
	LDA	byte_471
	CMP	#0
	BEQ	loc_12B377
	RTS
; ---------------------------------------------------------------------------

loc_12B377:
	LDA	byte_55B
	BEQ	loc_12B37F
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
	LDA	byte_372
	CMP	#1
	BEQ	locret_12B403
	LDX	#0

loc_12B3AF:
	LDA	byte_12B1DC,X
	CMP	byte_555,X
	BNE	loc_12B3E8
	INX
	CPX	#6
	BCC	loc_12B3AF
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
	LDA	byte_471
	CMP	#0
	BNE	loc_12B41E
	set text_idx_35C, #$A7 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; ---------------------------------------------------------------------------

loc_12B41E:
	LDA	byte_59F
	CMP	#$FF
	BNE	loc_12B43B
	LDA	byte_5A0
	CMP	#$FF
	BNE	loc_12B43B
	LDA	byte_5A1
	CMP	#$FF
	BNE	loc_12B43B
	LDA	byte_5A2
	CMP	#$FF
	BNE	loc_12B43B
	RTS
; ---------------------------------------------------------------------------

loc_12B43B:
	
	set byte_46D, #$1E
	RTS
; End of function sub_12B404


; =============== S U B	R O U T	I N E =======================================


sub_12B441:
	LDA	entry_idx_300
	CMP	#$24 
	BNE	loc_12B45E
	LDX	byte_434
	LDA	obj_array_unk_415,X
	CMP	#$1A
	BNE	loc_12B458
	set byte_5E2, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B458:
	set byte_6B0, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B45E:
	LDA	entry_idx_300
	CMP	#$25 
	BNE	loc_12B47F
	LDX	byte_434
	LDA	obj_array_unk_415,X
	CMP	#$1A
	BNE	loc_12B475
	set byte_5E3, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B475:
	CMP	#6
	BNE	locret_12B47E
	set byte_5E6, #0

locret_12B47E:
	RTS
; ---------------------------------------------------------------------------

loc_12B47F:
	LDA	entry_idx_300
	CMP	#$1E
	BNE	loc_12B4D9
	LDX	byte_434
	LDA	obj_array_unk_415,X
	CMP	#$A
	BNE	loc_12B4A3
	LDA	byte_434
	CMP	#4
	BNE	loc_12B49D
	set byte_5B9, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B49D:
	set byte_5BA, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B4A3:
	CMP	#$B
	BNE	loc_12B4C8
	LDA	byte_434
	CMP	#1
	BNE	loc_12B4B4
	set byte_5B6, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B4B4:
	CMP	#2
	BNE	loc_12B4BE
	set byte_5B7, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B4BE:
	CMP	#3
	BNE	locret_12B4C7
	set byte_5B8, #0

locret_12B4C7:
	RTS
; ---------------------------------------------------------------------------

loc_12B4C8:
	CMP	#$13
	BNE	loc_12B4D2
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
	LDA	entry_idx_300
	CMP	#$6E 
	BNE	loc_12B52B
	LDX	byte_434
	LDA	obj_array_unk_415,X
	CMP	#6
	BNE	loc_12B503
	LDA	byte_434
	CMP	#1
	BNE	loc_12B4FA
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
	CMP	#7
	BNE	loc_12B51D
	LDA	byte_434
	CMP	#2
	BNE	loc_12B517
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
	CMP	#$17
	BNE	locret_12B527
	set byte_5CC, #0
	RTS
; ---------------------------------------------------------------------------

locret_12B527:
	RTS
; ---------------------------------------------------------------------------
	JMP	loc_12BD54
; ---------------------------------------------------------------------------

loc_12B52B:
	LDA	entry_idx_300
	CMP	#$1C
	BNE	loc_12B58E
	LDX	byte_434
	LDA	obj_array_unk_415,X
	CMP	#6
	BNE	loc_12B545
	set byte_5D7, #0
	RTS
; ---------------------------------------------------------------------------
	JMP	loc_12BD54
; ---------------------------------------------------------------------------

loc_12B545:
	
	LDA	obj_array_unk_415,X
	CMP	#7
	BNE	loc_12B552
	set byte_5D6, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B552:
	LDA	obj_array_unk_415,X
	CMP	#$47 
	BNE	locret_12B58A
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
	LDA	entry_idx_300
	CMP	#$87 
	BNE	loc_12B5A8
	LDX	byte_434
	LDA	obj_array_unk_415,X
	CMP	#6
	BNE	loc_12B545
	set byte_5D7, #0
	RTS
; ---------------------------------------------------------------------------
	JMP	loc_12BD54
; ---------------------------------------------------------------------------

loc_12B5A8:
	LDA	entry_idx_300
	CMP	#$20 
	BNE	loc_12B5CC
	LDX	byte_434
	LDA	obj_array_unk_415,X
	CMP	#6
	BNE	loc_12B5BF
	set byte_5DD, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B5BF:
	LDA	obj_array_unk_415,X
	CMP	#$3B 
	BNE	locret_12B5CB
	set byte_5DC, #0

locret_12B5CB:
	RTS
; ---------------------------------------------------------------------------

loc_12B5CC:
	LDA	entry_idx_300
	CMP	#$21 
	BNE	loc_12B5F0
	LDX	byte_434
	LDA	obj_array_unk_415,X
	CMP	#$1A
	BNE	loc_12B5E3
	set byte_5DE, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B5E3:
	LDA	obj_array_unk_415,X
	CMP	#$1B
	BNE	locret_12B5EF
	set byte_5C3, #0

locret_12B5EF:
	RTS
; ---------------------------------------------------------------------------

loc_12B5F0:
	LDA	entry_idx_300
	CMP	#$16
	BNE	loc_12B606
	LDX	byte_434
	LDA	obj_array_unk_415,X
	CMP	#$1A
	BNE	loc_12B606
	set byte_5EA, #0

loc_12B606:
	
	LDA	entry_idx_300
	CMP	#$26 
	BNE	loc_12B61C
	LDX	byte_434
	LDA	obj_array_unk_415,X
	CMP	#$B
	BNE	loc_12B61C
	set byte_5EB, #0

loc_12B61C:
	
	LDA	entry_idx_300
	CMP	#$27 
	BNE	loc_12B636
	LDA	byte_434
	CMP	#0
	BNE	loc_12B630
	set byte_5EC, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B630:
	set byte_5ED, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B636:
	LDA	entry_idx_300
	CMP	#$28 
	BNE	loc_12B64C
	LDX	byte_434
	LDA	obj_array_unk_415,X
	CMP	#6
	BNE	loc_12B64C
	set byte_5EE, #0

loc_12B64C:
	
	LDA	entry_idx_300
	CMP	#$2A 
	BNE	loc_12B662
	LDX	byte_434
	LDA	obj_array_unk_415,X
	CMP	#$14
	BNE	loc_12B662
	set byte_5EF, #0

loc_12B662:
	
	LDA	entry_idx_300
	CMP	#$2C 
	BNE	loc_12B678
	LDX	byte_434
	LDA	obj_array_unk_415,X
	CMP	#$B
	BNE	loc_12B678
	set byte_5F3, #0

loc_12B678:
	
	LDA	entry_idx_300
	CMP	#$2E 
	BNE	loc_12B69C
	LDX	byte_434
	LDA	obj_array_unk_415,X
	CMP	#8
	BNE	loc_12B68F
	set byte_5F4, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B68F:
	LDA	obj_array_unk_415,X
	CMP	#$25 
	BNE	locret_12B69B
	set byte_5F5, #0

locret_12B69B:
	RTS
; ---------------------------------------------------------------------------

loc_12B69C:
	LDA	entry_idx_300
	CMP	#$2D 
	BNE	loc_12B6C0
	LDA	byte_434
	CMP	#1
	BNE	loc_12B6B0
	set byte_5F7, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B6B0:
	CMP	#2
	BNE	loc_12B6BA
	set byte_5F8, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B6BA:
	set byte_5B4, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B6C0:
	LDA	entry_idx_300
	CMP	#$32 
	BNE	loc_12B6E8
	LDA	byte_434
	CMP	#0
	BNE	loc_12B6D4
	set byte_5FB, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B6D4:
	CMP	#1
	BNE	loc_12B6DE
	set byte_5FA, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B6DE:
	CMP	#3
	BNE	locret_12B6E7
	set byte_6B2, #0

locret_12B6E7:
	RTS
; ---------------------------------------------------------------------------

loc_12B6E8:
	LDA	entry_idx_300
	CMP	#$34 
	BNE	loc_12B6FF
	LDX	byte_434
	LDA	obj_array_unk_415,X
	CMP	#7
	BNE	loc_12B6FF
	set byte_601, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B6FF:
	
	LDA	entry_idx_300
	CMP	#$38 
	BNE	loc_12B72D
	LDX	byte_434
	LDA	obj_array_unk_415,X
	CMP	#7
	BNE	loc_12B716
	set byte_604, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B716:
	CMP	#$52 
	BNE	loc_12B720
	set byte_6AE, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B720:
	LDA	obj_array_unk_415,X
	CMP	#8
	BNE	locret_12B72C
	set byte_605, #0

locret_12B72C:
	RTS
; ---------------------------------------------------------------------------

loc_12B72D:
	LDA	entry_idx_300
	CMP	#$3A 
	BNE	loc_12B747
	LDA	byte_434
	CMP	#0
	BNE	loc_12B741
	set byte_608, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B741:
	set byte_609, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B747:
	LDA	entry_idx_300
	CMP	#$3B 
	BNE	loc_12B783
	LDA	byte_434
	CMP	#0
	BNE	loc_12B75B
	set byte_60D, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B75B:
	CMP	#1
	BNE	loc_12B765
	set byte_60E, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B765:
	CMP	#2
	BNE	loc_12B76F
	set byte_611, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B76F:
	CMP	#3
	BNE	loc_12B779
	set byte_610, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B779:
	CMP	#4
	BNE	locret_12B782
	set byte_60F, #0

locret_12B782:
	RTS
; ---------------------------------------------------------------------------

loc_12B783:
	LDA	entry_idx_300
	CMP	#$3C 
	BNE	loc_12B7A4
	LDX	byte_434
	LDA	obj_array_unk_415,X
	CMP	#8
	BNE	loc_12B79A
	set byte_613, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B79A:
	CMP	#$4A 
	BNE	locret_12B7A3
	set byte_6AB, #0

locret_12B7A3:
	RTS
; ---------------------------------------------------------------------------

loc_12B7A4:
	LDA	entry_idx_300
	CMP	#$3E 
	BNE	loc_12B7BB
	LDX	byte_434
	LDA	obj_array_unk_415,X
	CMP	#6
	BNE	locret_12B7BA
	set byte_615, #0

locret_12B7BA:
	RTS
; ---------------------------------------------------------------------------

loc_12B7BB:
	LDA	entry_idx_300
	CMP	#$42 
	BNE	loc_12B7D9
	LDA	byte_434
	CMP	#1
	BNE	loc_12B7CF
	set byte_61C, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B7CF:
	CMP	#2
	BNE	locret_12B7D8
	set byte_61B, #0

locret_12B7D8:
	RTS
; ---------------------------------------------------------------------------

loc_12B7D9:
	LDA	entry_idx_300
	CMP	#$9C 
	BNE	loc_12B7F0
	LDX	byte_434
	LDA	obj_array_unk_415,X
	CMP	#9
	BNE	locret_12B7EF
	set byte_61D, #0

locret_12B7EF:
	RTS
; ---------------------------------------------------------------------------

loc_12B7F0:
	LDA	entry_idx_300
	CMP	#$45 
	BNE	loc_12B811
	LDX	byte_434
	LDA	obj_array_unk_415,X
	CMP	#7
	BNE	loc_12B807
	set byte_61E, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B807:
	CMP	#$1F
	BNE	locret_12B810
	set byte_5C4, #0

locret_12B810:
	RTS
; ---------------------------------------------------------------------------

loc_12B811:
	LDA	entry_idx_300
	CMP	#$47 
	BNE	loc_12B832
	LDX	byte_434
	LDA	obj_array_unk_415,X
	CMP	#7
	BNE	loc_12B828
	set byte_61F, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B828:
	CMP	#$53 
	BNE	locret_12B831
	set byte_6AF, #0

locret_12B831:
	RTS
; ---------------------------------------------------------------------------

loc_12B832:
	LDA	entry_idx_300
	CMP	#$4A 
	BNE	loc_12B853
	LDX	byte_434
	LDA	obj_array_unk_415,X
	CMP	#$2B 
	BNE	loc_12B849
	set byte_622, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B849:
	CMP	#$C
	BNE	locret_12B852
	set byte_623, #0

locret_12B852:
	RTS
; ---------------------------------------------------------------------------

loc_12B853:
	LDA	entry_idx_300
	CMP	#$4B 
	BNE	loc_12B87E
	LDX	byte_434
	LDA	obj_array_unk_415,X
	CMP	#9
	BNE	loc_12B86A
	set byte_624, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B86A:
	CMP	#6
	BNE	loc_12B874
	set byte_625, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B874:
	CMP	#$48 
	BNE	locret_12B87D
	set byte_6A9, #0

locret_12B87D:
	RTS
; ---------------------------------------------------------------------------

loc_12B87E:
	LDA	entry_idx_300
	CMP	#$4C 
	BNE	loc_12B89F
	LDX	byte_434
	LDA	obj_array_unk_415,X
	CMP	#$B
	BNE	loc_12B895
	set byte_626, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B895:
	CMP	#$3E 
	BNE	locret_12B89E
	set byte_6B1, #0

locret_12B89E:
	RTS
; ---------------------------------------------------------------------------

loc_12B89F:
	LDA	entry_idx_300
	CMP	#$4E 
	BNE	loc_12B8DB
	LDA	byte_434
	CMP	#0
	BNE	loc_12B8B3
	set byte_62A, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B8B3:
	CMP	#1
	BNE	loc_12B8BD
	set byte_62B, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B8BD:
	CMP	#2
	BNE	loc_12B8C7
	set byte_62C, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B8C7:
	CMP	#3
	BNE	loc_12B8D1
	set byte_62D, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B8D1:
	CMP	#4
	BNE	locret_12B8DA
	set byte_6B3, #0

locret_12B8DA:
	RTS
; ---------------------------------------------------------------------------

loc_12B8DB:
	LDA	entry_idx_300
	CMP	#$51 
	BNE	loc_12B90D
	LDA	byte_434
	CMP	#0
	BNE	loc_12B8EF
	set byte_637, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B8EF:
	CMP	#1
	BNE	loc_12B8F9
	set byte_638, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B8F9:
	CMP	#2
	BNE	loc_12B903
	set byte_639, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B903:
	CMP	#3
	BNE	locret_12B90C
	set byte_63A, #0

locret_12B90C:
	RTS
; ---------------------------------------------------------------------------

loc_12B90D:
	LDA	entry_idx_300
	CMP	#$53 
	BNE	loc_12B924
	LDX	byte_434
	LDA	obj_array_unk_415,X
	CMP	#$1A
	BNE	locret_12B923
	set byte_63D, #0

locret_12B923:
	RTS
; ---------------------------------------------------------------------------

loc_12B924:
	LDA	entry_idx_300
	CMP	#$90 
	BNE	loc_12B93B
	LDX	byte_434
	LDA	obj_array_unk_415,X
	CMP	#$1A
	BNE	locret_12B93A
	set byte_63D, #0

locret_12B93A:
	RTS
; ---------------------------------------------------------------------------

loc_12B93B:
	LDA	entry_idx_300
	CMP	#$55 
	BNE	loc_12B95C
	LDX	byte_434
	LDA	obj_array_unk_415,X
	CMP	#$12
	BNE	loc_12B952
	set byte_641, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B952:
	CMP	#9
	BNE	locret_12B95B
	set byte_642, #0

locret_12B95B:
	RTS
; ---------------------------------------------------------------------------

loc_12B95C:
	LDA	entry_idx_300
	CMP	#$56 
	BNE	loc_12B97D
	LDX	byte_434
	LDA	obj_array_unk_415,X
	CMP	#$2A 
	BNE	loc_12B973
	set byte_643, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B973:
	CMP	#9
	BNE	locret_12B97C
	set byte_644, #0

locret_12B97C:
	RTS
; ---------------------------------------------------------------------------

loc_12B97D:
	LDA	entry_idx_300
	CMP	#$57 
	BNE	loc_12B994
	LDX	byte_434
	LDA	obj_array_unk_415,X
	CMP	#9
	BNE	locret_12B993
	set byte_645, #0

locret_12B993:
	RTS
; ---------------------------------------------------------------------------

loc_12B994:
	LDA	entry_idx_300
	CMP	#$91 
	BNE	loc_12B9AB
	LDX	byte_434
	LDA	obj_array_unk_415,X
	CMP	#9
	BNE	locret_12B9AA
	set byte_645, #0

locret_12B9AA:
	RTS
; ---------------------------------------------------------------------------

loc_12B9AB:
	LDA	entry_idx_300
	CMP	#$58 
	BNE	loc_12B9C2
	LDX	byte_434
	LDA	obj_array_unk_415,X
	CMP	#0
	BNE	locret_12B9C1
	set byte_64B, #0

locret_12B9C1:
	RTS
; ---------------------------------------------------------------------------

loc_12B9C2:
	LDA	entry_idx_300
	CMP	#$5A 
	BNE	loc_12B9ED
	LDX	byte_434
	LDA	obj_array_unk_415,X
	CMP	#$C
	BNE	loc_12B9D9
	set byte_64D, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B9D9:
	CMP	#$1A
	BNE	loc_12B9E3
	set byte_64F, #0
	RTS
; ---------------------------------------------------------------------------

loc_12B9E3:
	CMP	#$12
	BNE	locret_12B9EC
	set byte_64E, #0

locret_12B9EC:
	RTS
; ---------------------------------------------------------------------------

loc_12B9ED:
	LDA	entry_idx_300
	CMP	#$5B 
	BNE	loc_12BA0E
	LDX	byte_434
	LDA	obj_array_unk_415,X
	CMP	#$30 
	BNE	loc_12BA04
	set byte_650, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BA04:
	CMP	#$40 
	BNE	locret_12BA0D
	set byte_6B4, #0

locret_12BA0D:
	RTS
; ---------------------------------------------------------------------------

loc_12BA0E:
	LDA	entry_idx_300
	CMP	#$92 
	BNE	loc_12BA25
	LDX	byte_434
	LDA	obj_array_unk_415,X
	CMP	#$30 
	BNE	locret_12BA24
	set byte_650, #0

locret_12BA24:
	RTS
; ---------------------------------------------------------------------------

loc_12BA25:
	LDA	entry_idx_300
	CMP	#$5D 
	BNE	loc_12BA57
	LDA	byte_434
	CMP	#0
	BNE	loc_12BA39
	set byte_655, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BA39:
	CMP	#1
	BNE	loc_12BA43
	set byte_656, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BA43:
	CMP	#2
	BNE	loc_12BA4D
	set byte_657, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BA4D:
	CMP	#3
	BNE	locret_12BA56
	set byte_658, #0

locret_12BA56:
	RTS
; ---------------------------------------------------------------------------

loc_12BA57:
	LDA	entry_idx_300
	CMP	#$5E 
	BNE	loc_12BA78
	LDX	byte_434
	LDA	obj_array_unk_415,X
	CMP	#9
	BNE	loc_12BA6E
	set byte_65A, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BA6E:
	CMP	#$12
	BNE	locret_12BA77
	set byte_65B, #0

locret_12BA77:
	RTS
; ---------------------------------------------------------------------------

loc_12BA78:
	LDA	entry_idx_300
	CMP	#$5F 
	BNE	loc_12BA99
	LDX	byte_434
	LDA	obj_array_unk_415,X
	CMP	#$24 
	BNE	loc_12BA8F
	set byte_5C5, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BA8F:
	CMP	#7
	BNE	locret_12BA98
	set byte_65C, #0

locret_12BA98:
	RTS
; ---------------------------------------------------------------------------

loc_12BA99:
	LDA	entry_idx_300
	CMP	#$60 
	BNE	loc_12BABA
	LDX	byte_434
	LDA	obj_array_unk_415,X
	CMP	#9
	BNE	loc_12BAB0
	set byte_65D, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BAB0:
	CMP	#$18
	BNE	locret_12BAB9
	set byte_5C8, #0

locret_12BAB9:
	RTS
; ---------------------------------------------------------------------------

loc_12BABA:
	LDA	entry_idx_300
	CMP	#$97 
	BNE	loc_12BADB
	LDX	byte_434
	LDA	obj_array_unk_415,X
	CMP	#9
	BNE	loc_12BAD1
	set byte_65D, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BAD1:
	CMP	#$18
	BNE	locret_12BADA
	set byte_5C8, #0

locret_12BADA:
	RTS
; ---------------------------------------------------------------------------

loc_12BADB:
	LDA	entry_idx_300
	CMP	#$61 
	BNE	loc_12BB06
	LDX	byte_434
	LDA	obj_array_unk_415,X
	CMP	#6
	BNE	loc_12BAF2
	set byte_65F, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BAF2:
	CMP	#$55 
	BNE	loc_12BAFC
	set byte_6BC, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BAFC:
	CMP	#$1A
	BNE	locret_12BB05
	set byte_660, #0

locret_12BB05:
	RTS
; ---------------------------------------------------------------------------

loc_12BB06:
	LDA	entry_idx_300
	CMP	#$62 
	BNE	loc_12BB24
	LDA	byte_434
	CMP	#0
	BNE	loc_12BB1A
	set byte_663, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BB1A:
	CMP	#1
	BNE	locret_12BB23
	set byte_664, #0

locret_12BB23:
	RTS
; ---------------------------------------------------------------------------

loc_12BB24:
	LDA	entry_idx_300
	CMP	#$65 
	BNE	loc_12BB4F
	LDX	byte_434
	LDA	obj_array_unk_415,X
	CMP	#8
	BNE	loc_12BB3B
	set byte_66D, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BB3B:
	CMP	#$41 
	BNE	loc_12BB45
	set byte_6B5, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BB45:
	CMP	#$49 
	BNE	locret_12BB4E
	set byte_6AA, #0

locret_12BB4E:
	RTS
; ---------------------------------------------------------------------------

loc_12BB4F:
	LDA	entry_idx_300
	CMP	#$67 
	BNE	loc_12BB70
	LDX	byte_434
	LDA	obj_array_unk_415,X
	CMP	#7
	BNE	loc_12BB66
	set byte_66F, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BB66:
	CMP	#$4C 
	BNE	locret_12BB6F
	set byte_6AC, #0

locret_12BB6F:
	RTS
; ---------------------------------------------------------------------------

loc_12BB70:
	LDA	entry_idx_300
	CMP	#$9B 
	BNE	loc_12BB87
	LDX	byte_434
	LDA	obj_array_unk_415,X
	CMP	#7
	BNE	locret_12BB86
	set byte_66F, #0

locret_12BB86:
	RTS
; ---------------------------------------------------------------------------

loc_12BB87:
	LDA	entry_idx_300
	CMP	#$68 
	BNE	loc_12BB9E
	LDX	byte_434
	LDA	obj_array_unk_415,X
	CMP	#9
	BNE	locret_12BB9D
	set byte_671, #0

locret_12BB9D:
	RTS
; ---------------------------------------------------------------------------

loc_12BB9E:
	LDA	entry_idx_300
	CMP	#$6A 
	BNE	loc_12BBC6
	LDA	byte_434
	CMP	#3
	BNE	loc_12BBB2
	set byte_672, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BBB2:
	CMP	#4
	BNE	loc_12BBBC
	set byte_673, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BBBC:
	CMP	#5
	BNE	locret_12BBC5
	set byte_6B6, #0

locret_12BBC5:
	RTS
; ---------------------------------------------------------------------------

loc_12BBC6:
	LDA	entry_idx_300
	CMP	#$52 
	BEQ	loc_12BBD4
	CMP	#$8F 
	BEQ	loc_12BBD4
	JMP	loc_12BC09
; ---------------------------------------------------------------------------

loc_12BBD4:
	
	LDA	byte_434
	CMP	#0
	BNE	loc_12BBE1
	set byte_675, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BBE1:
	CMP	#1
	BNE	loc_12BBEB
	set byte_676, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BBEB:
	CMP	#2
	BNE	loc_12BBF5
	set byte_677, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BBF5:
	CMP	#3
	BNE	loc_12BBFF
	set byte_678, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BBFF:
	CMP	#4
	BNE	locret_12BC08
	set byte_679, #0

locret_12BC08:
	RTS
; ---------------------------------------------------------------------------

loc_12BC09:
	LDA	entry_idx_300
	CMP	#$72 
	BNE	loc_12BC3B
	LDA	byte_434
	CMP	#2
	BNE	loc_12BC1D
	set byte_67E, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BC1D:
	CMP	#3
	BNE	loc_12BC27
	set byte_67F, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BC27:
	CMP	#4
	BNE	loc_12BC31
	set byte_680, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BC31:
	CMP	#5
	BNE	locret_12BC3A
	set byte_681, #0

locret_12BC3A:
	RTS
; ---------------------------------------------------------------------------

loc_12BC3B:
	LDA	entry_idx_300
	CMP	#$70 
	BNE	loc_12BC52
	LDX	byte_434
	LDA	obj_array_unk_415,X
	CMP	#$2E 
	BNE	locret_12BC51
	set byte_682, #0

locret_12BC51:
	RTS
; ---------------------------------------------------------------------------

loc_12BC52:
	LDA	entry_idx_300
	CMP	#$6F 
	BNE	loc_12BC69
	LDX	byte_434
	LDA	obj_array_unk_415,X
	CMP	#$43 
	BNE	locret_12BC68
	set byte_6B7, #0

locret_12BC68:
	RTS
; ---------------------------------------------------------------------------

loc_12BC69:
	LDA	entry_idx_300
	CMP	#$71 
	BNE	loc_12BC80
	LDX	byte_434
	LDA	obj_array_unk_415,X
	CMP	#$44 
	BNE	locret_12BC7F
	set byte_6B8, #0

locret_12BC7F:
	RTS
; ---------------------------------------------------------------------------

loc_12BC80:
	LDA	entry_idx_300
	CMP	#$75 
	BNE	loc_12BC97
	LDX	byte_434
	LDA	obj_array_unk_415,X
	CMP	#$45 
	BNE	locret_12BC96
	set byte_6B9, #0

locret_12BC96:
	RTS
; ---------------------------------------------------------------------------

loc_12BC97:
	LDA	entry_idx_300
	CMP	#$82 
	BNE	loc_12BCAE
	LDX	byte_434
	LDA	obj_array_unk_415,X
	CMP	#$46 
	BNE	locret_12BCAD
	set byte_6BA, #0

locret_12BCAD:
	RTS
; ---------------------------------------------------------------------------

loc_12BCAE:
	LDA	entry_idx_300
	CMP	#$76 
	BEQ	loc_12BCBC
	CMP	#$94 
	BEQ	loc_12BCBC
	JMP	loc_12BCDC
; ---------------------------------------------------------------------------

loc_12BCBC:
	
	LDA	byte_434
	CMP	#1
	BNE	loc_12BCC9
	set byte_685, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BCC9:
	CMP	#2
	BNE	loc_12BCD2
	set byte_686, #0

loc_12BCD2:
	CMP	#3
	BNE	locret_12BCDB
	set byte_687, #0

locret_12BCDB:
	RTS
; ---------------------------------------------------------------------------

loc_12BCDC:
	LDA	entry_idx_300
	CMP	#$77 
	BNE	loc_12BD04
	LDA	byte_434
	CMP	#0
	BNE	loc_12BCF0
	set byte_68B, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BCF0:
	CMP	#1
	BNE	loc_12BCFA
	set byte_68C, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BCFA:
	CMP	#5
	BNE	locret_12BD03
	set byte_69F, #0

locret_12BD03:
	RTS
; ---------------------------------------------------------------------------

loc_12BD04:
	LDA	entry_idx_300
	CMP	#$7E 
	BNE	loc_12BD36
	LDA	byte_434
	CMP	#0
	BNE	loc_12BD18
	set byte_691, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BD18:
	CMP	#1
	BNE	loc_12BD22
	set byte_692, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BD22:
	CMP	#2
	BNE	loc_12BD2C
	set byte_693, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BD2C:
	CMP	#3
	BNE	locret_12BD35
	set byte_694, #0

locret_12BD35:
	RTS
; ---------------------------------------------------------------------------

loc_12BD36:
	LDA	entry_idx_300
	CMP	#$9A 
	BNE	loc_12BD54
	LDA	byte_434
	CMP	#0
	BNE	loc_12BD4A
	set byte_6A5, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BD4A:
	CMP	#1
	BNE	locret_12BD53
	set byte_6A6, #0

locret_12BD53:
	RTS
; ---------------------------------------------------------------------------

loc_12BD54:
	
	LDX	byte_434
	LDA	obj_array_unk_415,X
	CMP	#$20 
	BNE	loc_12BD64
	set byte_5AD, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BD64:
	CMP	#$1C
	BNE	loc_12BD8D
	LDA	entry_idx_300
	CMP	#$1E
	BEQ	loc_12BD75
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
	CMP	#$19
	BNE	loc_12BD9C
	set byte_683, #0
	set byte_59E, #$FF
	RTS
; ---------------------------------------------------------------------------

loc_12BD9C:
	CMP	#$39 
	BNE	loc_12BDA6
	set byte_6BB, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BDA6:
	CMP	#$50 
	BNE	loc_12BDB0
	set byte_6AD, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BDB0:
	CMP	#$21 
	BNE	loc_12BDBA
	set byte_5B3, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BDBA:
	CMP	#$16
	BNE	loc_12BDC4
	set byte_5C9, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BDC4:
	CMP	#$2D 
	BNE	loc_12BDCE
	set byte_5BB, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BDCE:
	CMP	#$30 
	BNE	loc_12BDD8
	set byte_614, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BDD8:
	CMP	#$1D
	BNE	loc_12BE01
	LDA	entry_idx_300
	CMP	#$1E
	BEQ	loc_12BDE9
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
	CMP	#$14
	BNE	loc_12BE0B
	set byte_5BE, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BE0B:
	CMP	#$23 
	BNE	loc_12BE15
	set byte_5AA, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BE15:
	CMP	#$15
	BNE	loc_12BE5D
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
	CMP	#3
	BNE	loc_12BE67
	set byte_5D9, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BE67:
	CMP	#2
	BNE	loc_12BE7E
	LDA	byte_5F9
	CMP	#$FF
	BEQ	loc_12BE78
	set byte_5EF, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BE78:
	set byte_5F9, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BE7E:
	CMP	#$22 
	BNE	loc_12BE88
	set byte_606, #0
	RTS
; ---------------------------------------------------------------------------

loc_12BE88:
	CMP	#4
	BNE	loc_12BEAA
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
	CMP	#$26 
	BNE	locret_12BEB4
	set byte_654, #0
	RTS
; ---------------------------------------------------------------------------

locret_12BEB4:
	RTS
; End of function sub_12B441


; =============== S U B	R O U T	I N E =======================================


sub_12BEB5:
	LDA	byte_5B0
	BEQ	locret_12BEF9
	set text_idx_35C, #0
	set char_type_id_35D, #2
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c1_12A98E
	LDA	byte_372
	CMP	#1
	BEQ	locret_12BEF9
	LDX	#0

loc_12BED8:
	LDA	objIdxArray_375,X
	CMP	#3
	BNE	loc_12BEE2
	JMP	loc_12BEE9
; ---------------------------------------------------------------------------

loc_12BEE2:
	INX
	CPX	objArraySize_373
	BCC	loc_12BED8
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
	LDA	byte_471
	CMP	#0
	BNE	loc_12BF14
	set text_idx_35C, #$39 
	set char_type_id_35D, #2
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	RTS
; ---------------------------------------------------------------------------

loc_12BF14:
	LDA	byte_55C
	CMP	#0
	BEQ	loc_12BF23
	LDA	byte_55D
	CMP	#0
	BEQ	loc_12BF23
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
	LDA	byte_471
	CMP	#0
	BNE	loc_12BF4C
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
	LDA	byte_471
	CMP	#0
	BEQ	loc_12BF66
	LDA	byte_55F
	CMP	#$FF
	BEQ	locret_12BF65
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
	LDA	byte_5BC
	BNE	locret_12BF88
	LDA	byte_5BD
	BNE	locret_12BF88
	set byte_46D, #$1C

locret_12BF88:
	
	RTS
; End of function sub_12BF79


; =============== S U B	R O U T	I N E =======================================


sub_12BF89:
	LDA	byte_5A8
	BNE	locret_12BF98
	LDA	byte_5A9
	BNE	locret_12BF98
	set byte_46D, #$1C

locret_12BF98:
	
	RTS
; End of function sub_12BF89


; =============== S U B	R O U T	I N E =======================================


sub_12BF99:
	LDA	byte_5C1
	CMP	#0
	BEQ	loc_12BFC1
	LDA	byte_5C2
	CMP	#0
	BEQ	loc_12BFC1
	LDA	byte_59F
	CMP	#0
	BNE	locret_12BFC0
	set tilemapTypeUnk_30B, #$1E
	JSR	sub_12D58C
	LDA	sprite_length_30F
	BEQ	locret_12BFC0
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
	LDA	byte_471
	CMP	#0
	BEQ	loc_12BFEC
	set byte_46D, #$1B
	RTS
; ---------------------------------------------------------------------------

loc_12BFEC:
	LDA	byte_562
	CMP	#0
	BNE	loc_12C00B
	set text_idx_35C, #$FF
	set char_type_id_35D, #0
	set tilemapTypeUnk_30B, #7
	JSR	exec_b0_c0_12A973
	set byte_562, #$F
	RTS
; ---------------------------------------------------------------------------

loc_12C00B:
	CMP	#$F
	BNE	locret_12C021
	set text_idx_35C, #5
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973

locret_12C021:
	RTS
; End of function sub_12BFDF


; =============== S U B	R O U T	I N E =======================================


sub_12C022:
	LDA	byte_313
	CMP	#2
	BNE	locret_12C095
	LDA	byte_563
	BNE	locret_12C095
	LDA	byte_5C4
	CMP	#$FF
	BEQ	locret_12C095
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
	LDA	byte_564
	BNE	locret_12C0AD
	set tilemapTypeUnk_30B, #$29 
	JSR	sub_12D58C
	LDA	sprite_length_30F
	BEQ	locret_12C0AD
	set byte_564, #$FF

locret_12C0AD:
	
	RTS
; End of function sub_12C096


; =============== S U B	R O U T	I N E =======================================


sub_12C0AE:
	LDA	byte_471
	CMP	#0
	BEQ	loc_12C0BB
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
	LDA	byte_566
	CMP	#0
	BNE	locret_12C118
	set text_idx_35C, #$D6 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c1_12A98E
	LDA	byte_372
	BNE	locret_12C118
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
	
	LDA	objCreatedArray_393,X
	BNE	locret_12C13B
	LDA	objIdxArray_375,X
	CMP	#3
	BEQ	loc_12C12E
	INX
	CPX	objArraySize_373
	BCC	loc_12C11B
	RTS
; ---------------------------------------------------------------------------

loc_12C12E:
	TXA
	PHA
	JSR	sub_12C13C
	from_stack_to_x
	INX
	CPX	objArraySize_373
	BCC	loc_12C11B

locret_12C13B:
	RTS
; End of function sub_12C119


; =============== S U B	R O U T	I N E =======================================


sub_12C13C:
	LDA	array_unk_3C5,X
	SEC
	SBC	#$B0 
	LDA	array_unk_3BB,X
	SBC	#1
	BCC	locret_12C1B7
	LDA	array_unk_3D9,X
	SEC
	SBC	#0
	LDA	array_unk_3CF,X
	SBC	#1
	BCC	locret_12C1B7
	LDA	#$EF 
	SEC
	SBC	array_unk_3C5,X
	LDA	#1
	SBC	array_unk_3BB,X
	BCC	locret_12C1B7
	LDA	#$F
	SEC
	SBC	array_unk_3D9,X
	LDA	#1
	SBC	array_unk_3CF,X
	BCC	locret_12C1B7
	JSR	sub_12C1B8
	LDY	byte_577
	set {byte_578,Y}, {array_unk_3C5,X}
	set {byte_57B,Y}, {array_unk_3BB,X}
	set {byte_57E,Y}, {array_unk_3D9,X}
	set {byte_581,Y}, {array_unk_3CF,X}
	INC	byte_577
	LDA	byte_577
	CMP	#3
	BNE	locret_12C1B7
	LDA	byte_578
	CMP	byte_579
	BNE	locret_12C1B7
	CMP	byte_57A
	BNE	locret_12C1B7
	LDA	byte_57B
	CMP	byte_57C
	BNE	locret_12C1B7
	CMP	byte_57D
	BNE	locret_12C1B7
	set byte_577, #$FF

locret_12C1B7:
	
	RTS
; End of function sub_12C13C


; =============== S U B	R O U T	I N E =======================================


sub_12C1B8:
	LDA	#3
	SEC
	SBC	byte_577
	ASL	A
	ASL	A
	ASL	A
	ASL	A
	TAY
; End of function sub_12C1B8


; =============== S U B	R O U T	I N E =======================================


sub_12C1C3:
	
	DEY
	DEY
	LDA	array_unk_3D9,X
	CLC
	ADC	#2
	STA	array_unk_3D9,X
	LDA	array_unk_3CF,X
	ADC	#0
	STA	array_unk_3CF,X
	TYA
	PHA
	TXA
	PHA
	JSR	exec_b0_c5_12843E
	JSR	wait_for_frame_rendered_FCA0
	JSR	wait_for_frame_rendered_FCA0
	JSR	wait_for_frame_rendered_FCA0
	JSR	wait_for_frame_rendered_FCA0
	from_stack_to_x
	from_stack_to_y
	CPY	#0
	BNE	sub_12C1C3
	RTS
; End of function sub_12C1C3


; =============== S U B	R O U T	I N E =======================================


sub_12C1F2:
	LDA	byte_471
	CMP	#0
	BEQ	loc_12C1FA
	RTS
; ---------------------------------------------------------------------------

loc_12C1FA:
	LDA	byte_585
	CMP	#$FF
	BEQ	locret_12C220
	set text_idx_35C, #$E2 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c1_12A98E
	LDA	byte_372
	BNE	locret_12C220
	set byte_585, #$FF

locret_12C220:
	
	RTS
; End of function sub_12C1F2


; =============== S U B	R O U T	I N E =======================================


sub_12C221:
	LDA	byte_471
	CMP	#0
	BEQ	loc_12C229
	RTS
; ---------------------------------------------------------------------------

loc_12C229:
	set text_idx_35C, #$E3 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c1_12A98E
	LDA	byte_372
	BNE	locret_12C25D
	set text_idx_35C, #$E4 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	LDA	byte_5CA
	EOR	#$FF
	STA	byte_5CA

locret_12C25D:
	RTS
; End of function sub_12C221


; =============== S U B	R O U T	I N E =======================================


sub_12C25E:
	LDA	byte_471
	CMP	#0
	BEQ	loc_12C26B
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
	LDA	byte_471
	CMP	#0
	BEQ	loc_12C286
	RTS
; ---------------------------------------------------------------------------

loc_12C286:
	set inv_sprite_idx_31C, #$33 
	JSR	sub_128955
	LDA	is_game_finished_561
	CMP	#$FF
	BEQ	return_12C2BE
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
	LDA	byte_471
	CMP	#0
	BEQ	locret_12C2D5
	LDA	byte_5EF
	ORA	byte_5F9
	CMP	#0
	BNE	locret_12C2D5
	set byte_46D, #2

locret_12C2D5:
	
	RTS
; End of function sub_12C2BF


; =============== S U B	R O U T	I N E =======================================


sub_12C2D6:
	LDA	byte_471
	CMP	#0
	BNE	locret_12C323
	set text_idx_35C, #$E3 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c1_12A98E
	LDA	byte_372
	BNE	locret_12C323
	LDA	byte_589
	EOR	#$FF
	STA	byte_589
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
	LDA	byte_471
	CMP	#0
	BNE	locret_12C371
	set text_idx_35C, #$E3 
	set char_type_id_35D, #1
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c1_12A98E
	LDA	byte_372
	BNE	locret_12C371
	LDA	byte_58B
	EOR	#$FF
	STA	byte_58B
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
	LDA	byte_471
	CMP	#0
	BEQ	loc_12C380
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
	LDA	byte_471
	CMP	#0
	BNE	loc_12C3AD
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
	LDA	byte_58D
	BEQ	locret_12C3C8
	set byte_58E, #$FF

locret_12C3C8:
	RTS
; End of function sub_12C3BE


; =============== S U B	R O U T	I N E =======================================


sub_12C3C9:
	LDA	byte_471
	CMP	#0
	BNE	loc_12C3E3
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
	LDA	byte_471
	CMP	#0
	BNE	loc_12C408
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
	LDA	byte_471
	CMP	#0
	BNE	loc_12C42D
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
	LDA	byte_471
	CMP	#0
	BEQ	loc_12C44C
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
	LDA	byte_651
	CMP	#0
	BEQ	locret_12C46B
	set byte_58D, #$FF

locret_12C46B:
	RTS
; End of function sub_12C45F


; =============== S U B	R O U T	I N E =======================================


sub_12C46C:
	LDA	byte_313
	CMP	#1
	BNE	locret_12C4AD
	LDX	#4
	LDA	array_unk_3C5,X
	CMP	#$90 
	BNE	locret_12C4AD
	LDA	array_unk_3BB,X
	CMP	#1
	BNE	locret_12C4AD
	LDA	array_unk_3D9,X
	CMP	#$A0 
	BNE	locret_12C4AD
	LDA	array_unk_3CF,X
	CMP	#0
	BNE	locret_12C4AD
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
	LDA	byte_471
	CMP	#0
	BNE	loc_12C4C8
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
	LDA	byte_313
	CMP	#1
	BNE	locret_12C4F2
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
	LDA	byte_587
	CMP	#$FF
	BEQ	locret_12C519
	LDA	byte_471
	CMP	#0
	BEQ	loc_12C507
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
	LDA	byte_591
	CMP	#$FF
	BEQ	locret_12C540
	LDA	byte_471
	CMP	#0
	BEQ	loc_12C52E
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
	LDA	byte_592
	CMP	#$FF
	BEQ	locret_12C567
	LDA	byte_471
	CMP	#0
	BEQ	loc_12C555
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
	LDA	byte_471
	CMP	#0
	BEQ	loc_12C575
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
	to_stack entry_idx_300
	to_stack ppu_unk_byte_302
	to_stack ppu_unk_byte_303
	to_stack ppu_scroll_x_304
	to_stack ppu_scroll_y_305
	to_stack sprite_type_306

set_tree_screen_12C5A0:
	set image_id_4A4, #$9D 
	LDA	byte_593
	CMP	#0
	BEQ	loc_12C5B1
	set image_id_4A4, #$9E 

loc_12C5B1:
	set image_offset_4A5, #0
	STA	ppu_prev_unk_4A6
	STA	ppu_prev_scroll_x_unk_4A7
	STA	ppu_prev_scroll_y_unk_4A8
	set prev_sprite_type_4A9, #$FF
	JSR	exec_b0_c2_12A9A9
	JSR	wait_for_b_pressed_FCC5
	from_stack prev_sprite_type_4A9
	from_stack ppu_prev_scroll_y_unk_4A8
	from_stack ppu_prev_scroll_x_unk_4A7
	from_stack ppu_prev_unk_4A6
	from_stack image_offset_4A5
	from_stack image_id_4A4
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
	LDA	byte_372
	BNE	locret_12C636
	LDA	byte_593
	EOR	#$FF
	STA	byte_593
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
	LDA	entry_idx_300
	CMP	#$77 
	BNE	loc_12C645
	LDA	byte_68D
	CMP	#$FF
	BEQ	loc_12C681

loc_12C645:
	LDA	entry_idx_300
	CMP	#$7B 
	BNE	loc_12C653
	LDA	byte_68E
	CMP	#$FF
	BEQ	loc_12C681

loc_12C653:
	LDA	entry_idx_300
	CMP	#$80 
	BNE	loc_12C661
	LDA	byte_68F
	CMP	#$FF
	BEQ	loc_12C681

loc_12C661:
	LDA	byte_471
	CMP	#0
	BEQ	loc_12C66E
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
	LDA	byte_372
	CMP	#1
	BEQ	locret_12C6B8
	set byte_420, #2
	JSR	sub_12F07D

locret_12C6B8:
	RTS
; End of function sub_12C694


; =============== S U B	R O U T	I N E =======================================


sub_12C6B9:
	LDA	byte_471
	CMP	#0
	BNE	loc_12C6D3
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
	LDA	byte_372
	CMP	#1
	BEQ	locret_12C6FF
	set byte_67B, #$FF

locret_12C6FF:
	RTS
; End of function sub_12C6DE


; =============== S U B	R O U T	I N E =======================================


sub_12C700:
	LDA	byte_67A
	CMP	#$FF
	BEQ	loc_12C72A
	set text_idx_35C, #$27 
	set char_type_id_35D, #2
	set tilemapTypeUnk_30B, #1
	JSR	exec_b0_c0_12A973
	JSR	exec_b0_c1_12A98E
	LDA	byte_372
	CMP	#1
	BEQ	locret_12C754
	LDA	byte_67B
	CMP	#$FF
	BNE	loc_12C742

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
	LDA	byte_372
	CMP	#1
	BEQ	locret_12C791
	LDA	byte_67A
	CMP	#0
	BEQ	loc_12C77E
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
	LDA	byte_595
	CMP	#$FF
	BEQ	locret_12C7CA
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
	
	LDA	image_id_4A4
	CMP	#$18
	BNE	loc_12C7EB
	set byte_54E, #2
	RTS
; ---------------------------------------------------------------------------

loc_12C7EB:
	LDA	image_id_4A4
	CMP	#$1B
	BNE	loc_12C805
	LDA	cur_obj_idx_unk_43A
	CMP	#0
	BNE	loc_12C7FF
	set byte_5E8, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C7FF:
	set byte_5E9, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C805:
	LDA	image_id_4A4
	CMP	#$87 
	BNE	loc_12C812
	set byte_5D8, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C812:
	LDA	image_id_4A4
	CMP	#$1F
	BNE	loc_12C82C
	LDA	cur_obj_idx_unk_43A
	CMP	#0
	BNE	loc_12C826
	set byte_5DA, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C826:
	set byte_5DB, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C82C:
	LDA	image_id_4A4
	CMP	#$22 
	BNE	loc_12C839
	set byte_5E0, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C839:
	LDA	image_id_4A4
	CMP	#$23 
	BNE	loc_12C846
	set byte_5E1, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C846:
	LDA	image_id_4A4
	CMP	#$25 
	BNE	loc_12C860
	LDA	cur_obj_idx_unk_43A
	CMP	#1
	BNE	loc_12C85A
	set byte_5E4, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C85A:
	set byte_5E5, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C860:
	LDA	image_id_4A4
	CMP	#$2B 
	BNE	loc_12C87A
	LDA	cur_obj_idx_unk_43A
	CMP	#0
	BNE	loc_12C874
	set byte_5F0, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C874:
	set byte_5F1, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C87A:
	LDA	image_id_4A4
	CMP	#$2C 
	BNE	loc_12C887
	set byte_5F2, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C887:
	LDA	image_id_4A4
	CMP	#$30 
	BNE	loc_12C894
	set byte_5F6, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C894:
	LDA	image_id_4A4
	CMP	#$36 
	BNE	loc_12C8AE
	LDA	cur_obj_idx_unk_43A
	CMP	#1
	BNE	loc_12C8A8
	set byte_5B2, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C8A8:
	set byte_5B1, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C8AE:
	LDA	image_id_4A4
	CMP	#$37 
	BNE	loc_12C8C8
	LDA	cur_obj_idx_unk_43A
	CMP	#0
	BNE	loc_12C8C2
	set byte_602, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C8C2:
	set byte_603, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C8C8:
	LDA	image_id_4A4
	CMP	#$3C 
	BNE	loc_12C8D5
	set byte_612, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C8D5:
	LDA	image_id_4A4
	CMP	#$3A 
	BNE	loc_12C8F9
	LDA	cur_obj_idx_unk_43A
	CMP	#2
	BNE	loc_12C8E9
	set byte_60A, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C8E9:
	CMP	#3
	BNE	loc_12C8F3
	set byte_60B, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C8F3:
	set byte_60C, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C8F9:
	LDA	image_id_4A4
	CMP	#$41 
	BNE	loc_12C913
	LDA	cur_obj_idx_unk_43A
	CMP	#0
	BNE	loc_12C90D
	set byte_619, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C90D:
	set byte_61A, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C913:
	LDA	image_id_4A4
	CMP	#$48 
	BNE	loc_12C92D
	LDA	cur_obj_idx_unk_43A
	CMP	#0
	BNE	loc_12C927
	set byte_620, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C927:
	set byte_621, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C92D:
	LDA	image_id_4A4
	CMP	#$32 
	BNE	loc_12C93A
	set byte_5FC, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C93A:
	LDA	image_id_4A4
	CMP	#$33 
	BNE	loc_12C954
	LDA	cur_obj_idx_unk_43A
	CMP	#0
	BNE	loc_12C94E
	set byte_5FD, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C94E:
	set byte_5FE, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C954:
	LDA	image_id_4A4
	CMP	#$34 
	BNE	loc_12C96E
	LDA	cur_obj_idx_unk_43A
	CMP	#0
	BNE	loc_12C968
	set byte_5FF, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C968:
	set byte_600, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C96E:
	LDA	image_id_4A4
	CMP	#$4E 
	BNE	loc_12C992
	LDA	cur_obj_idx_unk_43A
	CMP	#6
	BNE	loc_12C982
	set byte_630, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C982:
	CMP	#7
	BNE	loc_12C98C
	set byte_631, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C98C:
	set byte_632, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C992:
	LDA	image_id_4A4
	CMP	#$50 
	BNE	loc_12C9AC
	LDA	cur_obj_idx_unk_43A
	CMP	#0
	BNE	loc_12C9A6
	set byte_634, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C9A6:
	set byte_634, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C9AC:
	LDA	image_id_4A4
	CMP	#$51 
	BNE	loc_12C9C6
	LDA	cur_obj_idx_unk_43A
	CMP	#4
	BNE	loc_12C9C0
	set byte_63B, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C9C0:
	set byte_63C, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C9C6:
	LDA	image_id_4A4
	CMP	#$54 
	BNE	loc_12C9D3
	set byte_63E, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C9D3:
	LDA	image_id_4A4
	CMP	#$55 
	BNE	loc_12C9ED
	LDA	cur_obj_idx_unk_43A
	CMP	#0
	BNE	loc_12C9E7
	set byte_63F, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C9E7:
	set byte_640, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C9ED:
	LDA	image_id_4A4
	CMP	#$91 
	BNE	loc_12C9FA
	set byte_647, #0
	RTS
; ---------------------------------------------------------------------------

loc_12C9FA:
	LDA	image_id_4A4
	CMP	#$58 
	BNE	loc_12CA1E
	LDA	cur_obj_idx_unk_43A
	CMP	#0
	BNE	loc_12CA0E
	set byte_648, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CA0E:
	CMP	#1
	BNE	loc_12CA18
	set byte_649, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CA18:
	set byte_64A, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CA1E:
	LDA	image_id_4A4
	CMP	#$60 
	BNE	loc_12CA2B
	set byte_65E, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CA2B:
	LDA	image_id_4A4
	CMP	#$61 
	BNE	loc_12CA45
	LDA	cur_obj_idx_unk_43A
	CMP	#2
	BNE	loc_12CA3F
	set byte_661, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CA3F:
	set byte_662, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CA45:
	LDA	image_id_4A4
	CMP	#$5F 
	BNE	loc_12CA5F
	LDA	cur_obj_idx_unk_43A
	CMP	#2
	BNE	loc_12CA59
	set byte_668, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CA59:
	set byte_669, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CA5F:
	LDA	image_id_4A4
	CMP	#$65 
	BNE	loc_12CA79
	LDA	cur_obj_idx_unk_43A
	CMP	#1
	BNE	loc_12CA73
	set byte_66B, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CA73:
	set byte_66C, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CA79:
	LDA	image_id_4A4
	CMP	#$66 
	BNE	loc_12CA86
	set byte_66E, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CA86:
	LDA	image_id_4A4
	CMP	#$68 
	BNE	loc_12CA93
	set byte_670, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CA93:
	LDA	image_id_4A4
	CMP	#$72 
	BNE	loc_12CAAD
	LDA	cur_obj_idx_unk_43A
	CMP	#0
	BNE	loc_12CAA7
	set byte_67C, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CAA7:
	set byte_67D, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CAAD:
	LDA	image_id_4A4
	CMP	#$77 
	BNE	loc_12CAD1
	LDA	cur_obj_idx_unk_43A
	CMP	#0
	BNE	loc_12CAC1
	set byte_688, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CAC1:
	CMP	#1
	BNE	loc_12CACB
	set byte_689, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CACB:
	set byte_68A, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CAD1:
	LDA	image_id_4A4
	CMP	#$7F 
	BNE	loc_12CAF5
	LDA	cur_obj_idx_unk_43A
	CMP	#0
	BNE	loc_12CAE5
	set byte_695, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CAE5:
	CMP	#1
	BNE	loc_12CAEF
	set byte_696, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CAEF:
	set byte_697, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CAF5:
	LDA	image_id_4A4
	CMP	#$74 
	BNE	loc_12CB23
	LDA	cur_obj_idx_unk_43A
	CMP	#0
	BNE	loc_12CB09
	set byte_698, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CB09:
	CMP	#1
	BNE	loc_12CB13
	set byte_699, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CB13:
	CMP	#2
	BNE	loc_12CB1D
	set byte_69A, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CB1D:
	set byte_69B, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CB23:
	LDA	image_id_4A4
	CMP	#$7C 
	BNE	loc_12CB3D
	LDA	cur_obj_idx_unk_43A
	CMP	#0
	BNE	loc_12CB37
	set byte_69C, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CB37:
	set byte_69D, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CB3D:
	LDA	image_id_4A4
	CMP	#$9A 
	BNE	loc_12CB4A
	set byte_6A7, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CB4A:
	LDA	image_id_4A4
	CMP	#$96 
	BNE	locret_12CB57
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
	; show_intro_screen_12CB58:loc_12CBD6j	...
	JSR	sub_12CC34
	JSR	wait_for_frame_rendered_FCA0
	JSR	wait_for_frame_rendered_FCA0
	JSR	wait_for_frame_rendered_FCA0
	JSR	wait_for_frame_rendered_FCA0
	LDA	byte_42E
	CMP	#$26 
	BEQ	loc_12CBB2
	DEC	byte_42E
	JMP	loc_12CB96
; ---------------------------------------------------------------------------

loc_12CBB2:
	LDA	byte_434
	CMP	#4
	BEQ	loc_12CBD9
	BCS	loc_12CBD9
	LDA	#2
	CLC
	ADC	byte_434
	STA	objMapIdx_316
	JSR	sub_12CCAB
	LDA	count_unk_468
	CMP	#$14
	BCC	loc_12CBD6
	set count_unk_468, #0
	INC	byte_434

loc_12CBD6:
	JMP	loc_12CB96
; ---------------------------------------------------------------------------

loc_12CBD9:
	; show_intro_screen_12CB58+61j
	LDA	count_unk_469
	CMP	#$A
	BCC	loc_12CBF7
	set count_unk_469, #0
	LDA	byte_434
	EOR	#1
	STA	byte_434
	LDA	byte_42B
	CMP	#$14
	BEQ	show_ending_screen_12CC06
	INC	byte_42B

loc_12CBF7:
	LDA	#2
	CLC
	ADC	byte_434
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
	LDA	count_unk_465
	CMP	#$A
	BCC	loc_12CC48
	set count_unk_465, #0
	LDA	byte_430
	EOR	#1
	STA	byte_430

loc_12CC48:
	LDA	count_unk_466
	CMP	#$F
	BCC	loc_12CC5C
	set count_unk_466, #0
	LDA	byte_431
	EOR	#1
	STA	byte_431

loc_12CC5C:
	LDA	count_unk_467
	CMP	#$A
	BCC	loc_12CC70
	set count_unk_467, #0
	LDA	byte_433
	EOR	#1
	STA	byte_433

loc_12CC70:
	LDA	byte_42C
	CLC
	ADC	byte_430
	STA	byte_36A
	LDA	byte_42E
	CLC
	ADC	byte_431
	STA	byte_366
	set byte_367, #0
	STA	byte_36B
	set sprite_secondByte_31B, #0
	STA	byte_31A
	set objectIdx_318, #$1A
	LDA	#0
	CLC
	ADC	byte_433
	STA	objMapIdx_316
	set byte_317, #0
	JSR	exec_b1_c1_128394
	RTS
; End of function sub_12CC34


; =============== S U B	R O U T	I N E =======================================


sub_12CCAB:
	; show_intro_screen_12CB58+A8p
	set byte_36A, #$70 
	set byte_36B, #0
	set byte_366, #$50 
	set byte_367, #0
	set sprite_secondByte_31B, #0
	set byte_31A, #$8C 
	set objectIdx_318, #$1A
	set byte_317, #1
	LDA	objMapIdx_316
	CMP	#6
	BCC	loc_12CCDF
	set byte_317, #2

loc_12CCDF:
	JSR	exec_b1_c1_128394
	RTS
; End of function sub_12CCAB


; =============== S U B	R O U T	I N E =======================================


comm_46_12CCE3:
	LDA	byte_6C5
	CMP	#0
	BEQ	return_12CD1C
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
	to_stack image_id_4A4
	to_stack image_offset_4A5
	to_stack ppu_prev_unk_4A6
	to_stack ppu_prev_scroll_x_unk_4A7
	to_stack ppu_prev_scroll_y_unk_4A8
	to_stack prev_sprite_type_4A9
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
	CPY	#4
	BEQ	loc_12CE00
	LDA	byte_4A0,Y
	CMP	#$FF
	BEQ	loc_12CDEA
	CLC
	ADC	#$7E 
	STA	text_idx_35C
	set char_type_id_35D, #0
	set tilemap_size_307, #8
	set byte_35E, #8
	set byte_35F, #1
	set byte_362, #0
	set byte_363, #0
	set byte_364, #7
	set byte_310, #0
	TYA
	PHA
	to_stack ppu_unk_byte_309
	JSR	exec_b2_c4_1283F2
	from_stack ppu_unk_byte_309
	from_stack_to_y

loc_12CDEA:
	add_to_byte_clc ppu_unk_byte_309, #4

	add_to_byte_clc sprite_secondByte_31B, #$18

	INY
	JMP	loc_12CDA2
; ---------------------------------------------------------------------------

loc_12CE00:
	set byte_372, #0

loc_12CE05:
	; com_E_load_game_12CD30+10Bj ...
	JSR	sub_12D0C2
	JSR	wait_for_frame_rendered_FCA0
	LDA	input_pressed_34A
	CMP	#8
	BNE	loc_12CE25
	LDA	byte_372
	BNE	loc_12CE1C
	set byte_372, #4

loc_12CE1C:
	DEC	byte_372
	JSR	sub_12ED32
	JMP	loc_12CE05
; ---------------------------------------------------------------------------

loc_12CE25:
	CMP	#4
	BNE	loc_12CE3E
	LDA	byte_372
	CMP	#3
	BNE	loc_12CE35
	set byte_372, #$FF

loc_12CE35:
	INC	byte_372
	JSR	sub_12ED32
	JMP	loc_12CE05
; ---------------------------------------------------------------------------

loc_12CE3E:
	CMP	#$80 
	BNE	loc_12CE62
	JSR	sub_12ED20
	LDA	jill_pos_y_47E
	CMP	#$FF
	BNE	loc_12CE57
	JSR	sub_12D120
	LDA	sprite_length_30F
	BNE	loc_12CE69
	JMP	loc_12CE05
; ---------------------------------------------------------------------------

loc_12CE57:
	JSR	sub_12CEAC
	LDA	sprite_length_30F
	BNE	loc_12CE69
	JMP	loc_12CE05
; ---------------------------------------------------------------------------

loc_12CE62:
	CMP	#$40 
	BEQ	loc_12CE69
	JMP	loc_12CE05
; ---------------------------------------------------------------------------

loc_12CE69:
	; com_E_load_game_12CD30+12Dj ...
	JSR	sub_12ED29
	LDA	jill_pos_y_47E
	CMP	#$FF
	BEQ	loc_12CE99
	from_stack prev_sprite_type_4A9
	from_stack ppu_prev_scroll_y_unk_4A8
	from_stack ppu_prev_scroll_x_unk_4A7
	from_stack ppu_prev_unk_4A6
	from_stack image_offset_4A5
	from_stack image_id_4A4
	set map_show_43B, #$FF
	JSR	exec_b0_c2_12A9A9
	set map_show_43B, #0
	RTS
; ---------------------------------------------------------------------------

loc_12CE99:
	LDA	sprite_length_30F
	CMP	#$FF
	BNE	loc_12CEA5
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
	LDA	byte_4A0,Y
	CMP	#$FF
	BNE	loc_12CEBA
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
	to_stack byte_372
	set byte_372, #1

loc_12CF2D:
	
	JSR	sub_12D070
	JSR	wait_for_vblank_FC95
	LDA	input_pressed_34A
	CMP	#2
	BNE	loc_12CF48
	LDA	byte_372
	EOR	#1
	STA	byte_372
	JSR	sub_12ED32
	JMP	loc_12CF2D
; ---------------------------------------------------------------------------

loc_12CF48:
	CMP	#1
	BNE	loc_12CF5A
	LDA	byte_372
	EOR	#1
	STA	byte_372
	JSR	sub_12ED32
	JMP	loc_12CF2D
; ---------------------------------------------------------------------------

loc_12CF5A:
	CMP	#$80 
	BEQ	loc_12CF61
	JMP	loc_12CF2D
; ---------------------------------------------------------------------------

loc_12CF61:
	JSR	sub_12ED20
	set byte_204, #$F0 
	LDA	byte_372
	BNE	loc_12CF76
	from_stack byte_372
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
	from_stack byte_372
	set sprite_length_30F, #0
	RTS
; End of function sub_12CEAC


; =============== S U B	R O U T	I N E =======================================


sub_12CFBA:
	
	set byte_204, #$F0 
	LDY	byte_372
	set {byte_4A0,Y}, byte_47F
	to_stack byte_372
	set ppu_unk_byte_309, #$B
	set sprite_secondByte_31B, #$7A 
	LDA	#$7E 
	CLC
	ADC	byte_47F
	STA	text_idx_35C
	LDA	#0
	ADC	#0
	STA	char_type_id_35D

loc_12CFE6:
	LDA	byte_372
	BEQ	loc_12D003
	add_to_byte_clc ppu_unk_byte_309, #4

	add_to_byte_clc sprite_secondByte_31B, #$18

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
	from_stack byte_372
	JSR	sub_12D167
	set sprite_length_30F, #$FF
	RTS
; End of function sub_12CFBA


; =============== S U B	R O U T	I N E =======================================


sub_12D070:
	LDA	count_unk_466
	CMP	#$A
	BCC	loc_12D084
	set count_unk_466, #0
	LDA	byte_547
	EOR	#1
	STA	byte_547

loc_12D084:
	set objMapIdx_316, #$25 
	LDA	byte_372
	ASL	A
	TAY
	LDA	byte_12D11C,Y
	CLC
	ADC	byte_547
	STA	byte_36A
	INY
	LDA	byte_12D11C,Y
	CLC
	ADC	#2
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
	LDA	count_unk_465
	CMP	#$A
	BCC	loc_12D0D6
	set count_unk_465, #0
	LDA	byte_547
	EOR	#1
	STA	byte_547

loc_12D0D6:
	set objMapIdx_316, #$25 
	LDA	byte_372
	ASL	A
	TAY
	LDA	byte_12D114,Y
	CLC
	ADC	byte_547
	STA	byte_36A
	INY
	LDA	byte_12D114,Y
	CLC
	ADC	#2
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
	LDA	byte_4A0,Y
	CMP	#$FF
	BEQ	loc_12D133
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

	add_to_byte_clc ptr_0, #$14

	add_to_byte ptr_1, #0


	LDY	byte_372

loc_12D151:
	CPY	#0
	BEQ	locret_12D166

	add_to_byte_clc ptr_0, #$58 

	add_to_byte ptr_1, #2


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
	CPY	#$10
	BCC	loc_12D171
	LDX	#0

loc_12D17B:
	set_inx {(ptr_0),Y}, {byte_4A0,X}
	INY
	CPX	#4
	BCC	loc_12D17B

	add_to_byte_clc ptr_0, #$14

	add_to_byte ptr_1, #0


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
	CPY	#0
	BNE	loc_12D1BC
	add_to_byte_clc ptr_1, #4


loc_12D1CD:
	set_iny {(ptr_0),Y}, {byte_5A4,Y}
	CPY	#0
	BNE	loc_12D1CD
	add_to_byte_clc ptr_1, #4


loc_12D1DE:
	set_iny {(ptr_0),Y}, {byte_6A4,Y}
	CPY	#$44 
	BNE	loc_12D1DE
	RTS
; End of function sub_12D167


; =============== S U B	R O U T	I N E =======================================


sub_12D1E9:
	JSR	sub_12D139
	LDY	#0

loc_12D1EE:
	set_iny {image_id_4A4,Y}, {(ptr_0),Y}
	CPY	#0
	BNE	loc_12D1EE
	add_to_byte_clc ptr_1, #4


loc_12D1FF:
	set_iny {byte_5A4,Y}, {(ptr_0),Y}
	CPY	#0
	BNE	loc_12D1FF
	add_to_byte_clc ptr_1, #4


loc_12D210:
	set_iny {byte_6A4,Y}, {(ptr_0),Y}
	CPY	#$44 
	BNE	loc_12D210
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
	CPX	#$10
	BNE	loc_12D23F
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
	
	add_to_byte_clc tilemapWidth_308, byte_31A

	LDY	byte_31A

loc_12D278:
	set_iny {byte_200,Y}, #$F0 
	INY
	INY
	INY
	CPY	tilemapWidth_308
	BNE	loc_12D278
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
	LDA	byte_532
	BEQ	loc_12D315

loc_12D2D6:
	LDY	byte_372
	LDA	byte_533,Y
	TAX
	set inv_itemPrev_idx_31D, {byte_12E869,X}
	LDA	byte_372
	ASL	A
	TAY
	LDA	byte_12E851,Y
	LSR	A
	LSR	A
	LSR	A
	STA	tilemap_size_307
	INY
	LDA	byte_12E851,Y
	LSR	A
	LSR	A
	LSR	A
	STA	ppu_unk_byte_309
	JSR	sub_128358
	JSR	sub_128326
	add_to_byte_clc sprite_secondByte_31B, #$11

	INC	byte_372
	LDA	byte_372
	CMP	byte_532
	BNE	loc_12D2D6

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
	ASL	A
	CLC
	ADC	byte_42C
	CMP	byte_532
	BCC	loc_12D33A
	JSR	sub_12D49F
	RTS
; ---------------------------------------------------------------------------

loc_12D33A:
	STA	tilemapTypeUnk_30B
	LDA	tilemapTypeUnk_30B
	ASL	A
	TAX
	set_inx tilemap_size_307, {byte_12E851,X}
	LDA	byte_12E851,X
	CLC
	ADC	#$10
	STA	ppu_unk_byte_309
	LDY	tilemapTypeUnk_30B
	LDA	byte_533,Y
	CMP	#1
	BEQ	loc_12D383
	CMP	#2
	BEQ	loc_12D383
	CMP	#3
	BEQ	loc_12D383
	CMP	#4
	BEQ	loc_12D383
	CMP	#5
	BEQ	loc_12D383
	CMP	#6
	BEQ	loc_12D383
	CMP	#7
	BEQ	loc_12D383
	CMP	#8
	BEQ	loc_12D383
	CMP	#9
	BEQ	loc_12D383
	CMP	#$1A
	BEQ	loc_12D383
	JMP	loc_12D394
; ---------------------------------------------------------------------------

loc_12D383:
	
	to_stack tilemapTypeUnk_30B
	LDY	tilemapTypeUnk_30B
	LDA	unk_53B,Y
	JSR	sub_12D3AB
	from_stack tilemapTypeUnk_30B

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
	LDA	ptr_0
	CMP	#$64 
	BCC	loc_12D3C5
	LDA	ptr_0
	SEC
	SBC	#$64 
	STA	ptr_0
	INC	data_3
	JMP	loc_12D3B3
; ---------------------------------------------------------------------------

loc_12D3C5:
	
	LDA	ptr_0
	CMP	#$A
	BCC	loc_12D3D7
	LDA	ptr_0
	SEC
	SBC	#$A
	STA	ptr_0
	INC	data_2
	JMP	loc_12D3C5
; ---------------------------------------------------------------------------

loc_12D3D7:
	LDA	data_3
	BEQ	loc_12D423
	add_to_byte_clc tilemap_size_307, #4

	LDA	data_3
	CLC
	ADC	#$32 
	STA	objMapIdx_316
	set byte_317, #0
	set byte_31A, #$80 
	set sprite_secondByte_31B, #0
	to_stack tilemap_size_307
	to_stack ppu_unk_byte_309
	to_stack data_2
	to_stack data_3
	to_stack ptr_0
	JSR	sub_12E829
	from_stack ptr_0
	from_stack data_3
	from_stack data_2
	from_stack ppu_unk_byte_309
	PLA
	CLC
	ADC	#8
	STA	tilemap_size_307

loc_12D423:
	LDA	data_3
	BNE	loc_12D434
	LDA	data_2
	BEQ	loc_12D473
	add_to_byte_clc tilemap_size_307, #8


loc_12D434:
	LDA	data_2
	CLC
	ADC	#$32 
	STA	objMapIdx_316
	set byte_317, #0
	set byte_31A, #$84 
	set sprite_secondByte_31B, #0
	to_stack tilemap_size_307
	to_stack ppu_unk_byte_309
	to_stack data_2
	to_stack data_3
	to_stack ptr_0
	JSR	sub_12E829
	from_stack ptr_0
	from_stack data_3
	from_stack data_2
	from_stack ppu_unk_byte_309
	PLA
	CLC
	ADC	#8
	STA	tilemap_size_307

loc_12D473:
	LDA	data_3
	BNE	loc_12D484
	LDA	data_2
	BNE	loc_12D484
	add_to_byte_clc tilemap_size_307, #$C


loc_12D484:
	
	LDA	ptr_0
	CLC
	ADC	#$32 
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
	to_stack image_id_4A4
	to_stack image_offset_4A5
	to_stack ppu_prev_unk_4A6
	to_stack ppu_prev_scroll_x_unk_4A7
	to_stack ppu_prev_scroll_y_unk_4A8
	to_stack prev_sprite_type_4A9
	JSR	sub_12D287
	JSR	sub_12D319

loc_12D4E7:
	
	JSR	sub_12DE49
	JSR	sub_12DEB5
	JSR	sub_12DD0A
	JSR	wait_for_vblank_FC95
	LDA	input_pressed_34A
	CMP	#8
	BNE	loc_12D512
	LDA	byte_42E
	CMP	#0
	BNE	loc_12D506
	set byte_42E, #6

loc_12D506:
	DEC	byte_42E
	JSR	sub_12ED32
	JSR	sub_12D319
	JMP	loc_12D4E7
; ---------------------------------------------------------------------------

loc_12D512:
	CMP	#4
	BNE	loc_12D52E
	LDA	byte_42E
	CMP	#5
	BNE	loc_12D522
	set byte_42E, #$FF

loc_12D522:
	INC	byte_42E
	JSR	sub_12ED32
	JSR	sub_12D319
	JMP	loc_12D4E7
; ---------------------------------------------------------------------------

loc_12D52E:
	CMP	#2
	BNE	loc_12D543
	LDA	byte_42C
	EOR	#1
	STA	byte_42C
	JSR	sub_12ED32
	JSR	sub_12D319
	JMP	loc_12D4E7
; ---------------------------------------------------------------------------

loc_12D543:
	CMP	#1
	BNE	loc_12D558
	LDA	byte_42C
	EOR	#1
	STA	byte_42C
	JSR	sub_12ED32
	JSR	sub_12D319
	JMP	loc_12D4E7
; ---------------------------------------------------------------------------

loc_12D558:
	CMP	#$80 
	BNE	loc_12D569
	JSR	sub_12DB1E
	LDA	sprite_length_30F
	CMP	#$FF
	BEQ	loc_12D570
	JMP	loc_12D4E7
; ---------------------------------------------------------------------------

loc_12D569:
	CMP	#$10
	BEQ	loc_12D570
	JMP	loc_12D4E7
; ---------------------------------------------------------------------------

loc_12D570:
	
	JSR	sub_12ED29
	from_stack prev_sprite_type_4A9
	from_stack ppu_prev_scroll_y_unk_4A8
	from_stack ppu_prev_scroll_x_unk_4A7
	from_stack ppu_prev_unk_4A6
	from_stack image_offset_4A5
	from_stack image_id_4A4
	RTS
; End of function sub_12D4C6


; =============== S U B	R O U T	I N E =======================================


sub_12D58C:
	
	JSR	sub_1283BA
	to_stack image_id_4A4
	to_stack image_offset_4A5
	to_stack ppu_prev_unk_4A6
	to_stack ppu_prev_scroll_x_unk_4A7
	to_stack ppu_prev_scroll_y_unk_4A8
	to_stack prev_sprite_type_4A9
	to_stack tilemapTypeUnk_30B
	JSR	sub_12D287
	from_stack tilemapTypeUnk_30B
	to_stack tilemapTypeUnk_30B
	set text_idx_35C, tilemapTypeUnk_30B
	set char_type_id_35D, #0
	LDA	tilemapTypeUnk_30B
	CMP	#$3B 
	BNE	loc_12D5D2
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
	from_stack tilemapTypeUnk_30B
	LDA	byte_532
	CMP	#8
	BCC	loc_12D623
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
	to_stack tilemapTypeUnk_30B
	JSR	exec_b2_c1_128300
	JSR	sub_12D680
	from_stack tilemapTypeUnk_30B
	set sprite_length_30F, #0
	LDA	byte_372
	BNE	loc_12D652
	JSR	sub_12D82B
	set sprite_length_30F, #$FF

loc_12D652:
	
	from_stack prev_sprite_type_4A9
	from_stack ppu_prev_scroll_y_unk_4A8
	from_stack ppu_prev_scroll_x_unk_4A7
	from_stack ppu_prev_unk_4A6
	from_stack image_offset_4A5
	from_stack image_id_4A4
	set map_show_43B, #$FF
	to_stack sprite_length_30F
	JSR	exec_b0_c2_12A9A9
	from_stack sprite_length_30F
	set map_show_43B, #0
	RTS
; End of function sub_12D58C


; =============== S U B	R O U T	I N E =======================================


sub_12D680:
	set byte_372, #0

loc_12D685:
	
	LDA	byte_546
	CMP	#$A
	BCC	loc_12D699
	set byte_546, #0
	LDA	byte_547
	EOR	#1
	STA	byte_547

loc_12D699:
	set byte_31A, #$70 
	set sprite_secondByte_31B, #0
	set byte_317, #0
	set objMapIdx_316, #$30 
	LDA	byte_372
	ASL	A
	ASL	A
	ASL	A
	ASL	A
	ASL	A
	CLC
	ADC	#$84 
	CLC
	ADC	byte_547
	CLC
	ADC	byte_547
	STA	tilemap_size_307
	set ppu_unk_byte_309, #$DC 
	JSR	sub_12E829
	JSR	wait_for_vblank_FC95
	LDA	input_pressed_34A
	CMP	#2
	BNE	loc_12D6E3
	LDA	byte_372
	EOR	#1
	STA	byte_372
	JSR	sub_12ED32
	JMP	loc_12D685
; ---------------------------------------------------------------------------

loc_12D6E3:
	CMP	#1
	BNE	loc_12D6F5
	LDA	byte_372
	EOR	#1
	STA	byte_372
	JSR	sub_12ED32
	JMP	loc_12D685
; ---------------------------------------------------------------------------

loc_12D6F5:
	CMP	#$80 
	BEQ	loc_12D6FC
	JMP	loc_12D685
; ---------------------------------------------------------------------------

loc_12D6FC:
	JSR	sub_12ED20
	RTS
; End of function sub_12D680


; =============== S U B	R O U T	I N E =======================================


sub_12D700:
	JSR	sub_1283BA
	to_stack image_id_4A4
	to_stack image_offset_4A5
	to_stack ppu_prev_unk_4A6
	to_stack ppu_prev_scroll_x_unk_4A7
	to_stack ppu_prev_scroll_y_unk_4A8
	to_stack prev_sprite_type_4A9
	JSR	sub_12D287
	JSR	sub_12D319
	set byte_372, #0
	JSR	sub_12DF32
	JSR	sub_12DCCC
	JSR	sub_12DCE9

loc_12D72F:
	
	JSR	sub_12DD0A
	JSR	wait_for_vblank_FC95
	LDA	input_pressed_34A
	CMP	#8
	BNE	loc_12D76F
	LDA	byte_42E
	CMP	#0
	BNE	loc_12D757
	LDA	byte_42C
	CMP	#1
	BNE	loc_12D752
	set byte_42E, #6
	JMP	loc_12D757
; ---------------------------------------------------------------------------

loc_12D752:
	set byte_42E, #4

loc_12D757:
	
	LDA	byte_42E
	CMP	#5
	BNE	loc_12D763
	set byte_42E, #4

loc_12D763:
	DEC	byte_42E
	JSR	sub_12ED32
	JSR	sub_12D319
	JMP	loc_12D72F
; ---------------------------------------------------------------------------

loc_12D76F:
	CMP	#4
	BNE	loc_12D7A6
	LDA	byte_42E
	CMP	#3
	BNE	loc_12D78E
	LDA	byte_42C
	CMP	#1
	BNE	loc_12D789
	set byte_42E, #4
	JMP	loc_12D78E
; ---------------------------------------------------------------------------

loc_12D789:
	set byte_42E, #$FF

loc_12D78E:
	
	LDA	byte_42E
	CMP	#5
	BNE	loc_12D79A
	set byte_42E, #$FF

loc_12D79A:
	INC	byte_42E
	JSR	sub_12ED32
	JSR	sub_12D319
	JMP	loc_12D72F
; ---------------------------------------------------------------------------

loc_12D7A6:
	CMP	#2
	BNE	loc_12D7C5
	LDA	byte_42E
	CMP	#5
	BNE	loc_12D7B4
	JMP	loc_12D72F
; ---------------------------------------------------------------------------

loc_12D7B4:
	LDA	byte_42C
	EOR	#1
	STA	byte_42C
	JSR	sub_12ED32
	JSR	sub_12D319
	JMP	loc_12D72F
; ---------------------------------------------------------------------------

loc_12D7C5:
	CMP	#1
	BNE	loc_12D7E4
	LDA	byte_42E
	CMP	#5
	BNE	loc_12D7D3
	JMP	loc_12D72F
; ---------------------------------------------------------------------------

loc_12D7D3:
	LDA	byte_42C
	EOR	#1
	STA	byte_42C
	JSR	sub_12ED32
	JSR	sub_12D319
	JMP	loc_12D72F
; ---------------------------------------------------------------------------

loc_12D7E4:
	CMP	#$80 
	BNE	loc_12D7FB
	LDA	byte_42E
	CMP	#5
	BEQ	loc_12D802
	JSR	sub_12ED20
	JSR	sub_12DC76
	JSR	sub_12D319
	JMP	loc_12D72F
; ---------------------------------------------------------------------------

loc_12D7FB:
	CMP	#$10
	BEQ	loc_12D802
	JMP	loc_12D72F
; ---------------------------------------------------------------------------

loc_12D802:
	
	JSR	sub_12ED29
	from_stack prev_sprite_type_4A9
	from_stack ppu_prev_scroll_y_unk_4A8
	from_stack ppu_prev_scroll_x_unk_4A7
	from_stack ppu_prev_unk_4A6
	from_stack image_offset_4A5
	from_stack image_id_4A4
	set map_show_43B, #$FF
	JSR	exec_b0_c2_12A9A9
	set map_show_43B, #0
	RTS
; End of function sub_12D700


; =============== S U B	R O U T	I N E =======================================


sub_12D82B:
	LDY	byte_532
	set {byte_533,Y}, tilemapTypeUnk_30B
	LDA	tilemapTypeUnk_30B
	CMP	#1
	BNE	loc_12D840
	set {unk_53B,Y}, #$F

loc_12D840:
	LDA	tilemapTypeUnk_30B
	CMP	#2
	BNE	loc_12D84C
	set {unk_53B,Y}, #6

loc_12D84C:
	LDA	tilemapTypeUnk_30B
	CMP	#3
	BNE	loc_12D858
	set {unk_53B,Y}, #6

loc_12D858:
	LDA	tilemapTypeUnk_30B
	CMP	#4
	BNE	loc_12D864
	set {unk_53B,Y}, #6

loc_12D864:
	LDA	tilemapTypeUnk_30B
	CMP	#5
	BNE	loc_12D870
	set {unk_53B,Y}, #6

loc_12D870:
	LDA	tilemapTypeUnk_30B
	CMP	#6
	BNE	loc_12D87C
	set {unk_53B,Y}, #$F

loc_12D87C:
	CMP	#7
	BNE	loc_12D885
	set {unk_53B,Y}, #6

loc_12D885:
	CMP	#8
	BNE	loc_12D88E
	set {unk_53B,Y}, #6

loc_12D88E:
	CMP	#9
	BNE	loc_12D897
	set {unk_53B,Y}, #6

loc_12D897:
	CMP	#$1A
	BNE	loc_12D8A0
	set {unk_53B,Y}, #3

loc_12D8A0:
	LDA	byte_4B4
	BNE	loc_12D8AF
	LDA	unk_53B,Y
	CLC
	ADC	unk_53B,Y
	STA	unk_53B,Y

loc_12D8AF:
	INC	byte_532
	RTS
; End of function sub_12D82B


; =============== S U B	R O U T	I N E =======================================


sub_12D8B3:
	
	LDA	tilemapTypeUnk_30B
	CMP	byte_532
	BCC	loc_12D8BC
	RTS
; ---------------------------------------------------------------------------

loc_12D8BC:
	LDY	tilemapTypeUnk_30B
	LDX	tilemapTypeUnk_30B
	INX

loc_12D8C3:
	CPX	byte_532
	BEQ	loc_12D8D9
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
	ASL	A
	CLC
	ADC	byte_42C
	CMP	byte_532
	BCC	loc_12D900
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
	from_stack inv_spr_dscr1_30C
	from_stack tilemapTypeUnk_30B
	LDA	byte_42E
	ASL	A
	CLC
	ADC	byte_42C
	TAY
	CPY	byte_532
	BCC	loc_12D946
	LDA	tilemapTypeUnk_30B
	CMP	#$3A 
	BNE	loc_12D931
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
	LDA	byte_533,Y
	CMP	#6
	BEQ	loc_12D966
	BCS	loc_12D966
	to_stack tilemapTypeUnk_30B
	to_stack inv_spr_dscr1_30C
	TYA
	PHA
	JSR	sub_12DFFC
	from_stack_to_y
	from_stack inv_spr_dscr1_30C
	from_stack tilemapTypeUnk_30B

loc_12D966:
	
	set {unk_53B,Y}, inv_spr_dscr1_30C
	set {byte_533,Y}, tilemapTypeUnk_30B
	CMP	#$3A 
	BNE	loc_12D9A3
	TYA
	PHA
	TAX

loc_12D979:
	TYA
	TAX
	INX
	CPX	byte_532
	BEQ	loc_12D991
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
	
	to_stack tilemapTypeUnk_30B
	TYA
	PHA
	TAX
	INY
	set sprite_secondByte_31B, #$A
	JSR	sub_12D9F7
	from_stack_to_y
	from_stack tilemapTypeUnk_30B
	LDX	tilemapTypeUnk_30B
	set inv_itemPrev_idx_31D, {byte_12E869,X}
	TYA
	TAX
	set sprite_secondByte_31B, #$3C 

loc_12D9C9:
	CPX	#0
	BEQ	loc_12D9DA
	add_to_byte_clc sprite_secondByte_31B, #$11

	DEX
	JMP	loc_12D9C9
; ---------------------------------------------------------------------------

loc_12D9DA:
	TYA
	ASL	A
	TAY
	LDA	byte_12E851,Y
	LSR	A
	LSR	A
	LSR	A
	STA	tilemap_size_307
	INY
	LDA	byte_12E851,Y
	LSR	A
	LSR	A
	LSR	A
	STA	ppu_unk_byte_309
	JSR	sub_128358
	JSR	sub_128326
	RTS
; End of function sub_12D8DD


; =============== S U B	R O U T	I N E =======================================


sub_12D9F7:
	
	TXA
	PHA
	TYA
	PHA

loc_12D9FB:
	TXA
	PHA
	ASL	A
	TAX
	LDA	byte_12E851,X
	LSR	A
	LSR	A
	LSR	A
	STA	tilemap_size_307
	INX
	LDA	byte_12E851,X
	LSR	A
	LSR	A
	LSR	A
	STA	ppu_unk_byte_309
	set inv_itemPrev_idx_31D, #$29 
	set sprite_secondByte_31B, #$A
	TYA
	PHA
	JSR	sub_128326
	from_stack_to_y
	STY	tilemapTypeUnk_30B
	from_stack_to_x
	INX
	CPX	tilemapTypeUnk_30B
	BCC	loc_12D9FB
	from_stack_to_y
	from_stack_to_x
	RTS
; End of function sub_12D9F7


; =============== S U B	R O U T	I N E =======================================


sub_12DA33:
	
	TXA
	PHA
	TYA
	PHA
	STX	tilemapTypeUnk_30B
	TYA
	CMP	tilemapTypeUnk_30B
	BNE	loc_12DA43
	JMP	loc_12DACB
; ---------------------------------------------------------------------------

loc_12DA43:
	set sprite_secondByte_31B, #$3C 

loc_12DA48:
	LDA	tilemapTypeUnk_30B
	CMP	#0
	BEQ	loc_12DA5E
	add_to_byte_clc sprite_secondByte_31B, #$11

	DEC	tilemapTypeUnk_30B
	JMP	loc_12DA48
; ---------------------------------------------------------------------------

loc_12DA5E:
	
	TXA
	PHA
	LDA	byte_533,X
	TAX
	set inv_itemPrev_idx_31D, {byte_12E869,X}
	from_stack_to_x
	PHA
	ASL	A
	TAX
	LDA	byte_12E851,X
	LSR	A
	LSR	A
	LSR	A
	STA	tilemap_size_307
	INX
	LDA	byte_12E851,X
	LSR	A
	LSR	A
	LSR	A
	STA	ppu_unk_byte_309
	TYA
	PHA
	JSR	sub_128358
	JSR	sub_128326
	from_stack_to_y
	STA	tilemapTypeUnk_30B
	from_stack_to_x
	TXA
	PHA
	LDA	byte_533,X
	CLC
	ADC	#1
	CMP	byte_543
	BNE	loc_12DABA
	STX	byte_544
	set tilemap_size_307, #$10
	set ppu_unk_byte_309, #$14
	to_stack tilemapTypeUnk_30B
	TYA
	PHA
	JSR	sub_128326
	from_stack_to_y
	from_stack tilemapTypeUnk_30B

loc_12DABA:
	add_to_byte_clc sprite_secondByte_31B, #$11

	from_stack_to_x
	INX
	CPX	tilemapTypeUnk_30B
	BCC	loc_12DA5E

loc_12DACB:
	from_stack_to_y
	from_stack_to_x
	RTS
; End of function sub_12DA33


; =============== S U B	R O U T	I N E =======================================


sub_12DAD0:
	
	LDA	byte_546
	CMP	#$A
	BCC	loc_12DAE4
	set byte_546, #0
	LDA	byte_547
	EOR	#1
	STA	byte_547

loc_12DAE4:
	set byte_31A, #$70 
	set sprite_secondByte_31B, #0
	set byte_317, #0
	set objMapIdx_316, #$2F 
	set tilemap_size_307, #$C4 
	LDA	#$E0 
	CLC
	ADC	byte_547
	CLC
	ADC	byte_547
	STA	ppu_unk_byte_309
	JSR	sub_12E829
	JSR	wait_for_vblank_FC95
	LDA	input_pressed_34A
	CMP	#0
	BNE	loc_12DB1A
	JMP	sub_12DAD0
; ---------------------------------------------------------------------------

loc_12DB1A:
	JSR	sub_12ED32
	RTS
; End of function sub_12DAD0


; =============== S U B	R O U T	I N E =======================================


sub_12DB1E:
	LDA	byte_42E
	CMP	#4
	BNE	loc_12DB3A
	LDA	byte_42C
	CMP	#0
	BNE	loc_12DB33
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
	LDA	byte_42E
	CMP	#5
	BNE	loc_12DB75
	LDA	byte_42C
	CMP	#0
	BNE	loc_12DB6C
	LDA	byte_545
	BEQ	locret_12DB6B
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
	ASL	A
	CLC
	ADC	byte_42C
	CMP	byte_532
	BCC	loc_12DB83
	RTS
; ---------------------------------------------------------------------------

loc_12DB83:
	JSR	sub_12ED20
	set byte_372, #0
	JSR	sub_12DC31

loc_12DB8E:
	
	JSR	wait_for_vblank_FC95
	LDA	input_pressed_34A
	CMP	#8
	BNE	loc_12DBB0
	LDA	byte_372
	CMP	#0
	BNE	loc_12DBA4
	set byte_372, #3

loc_12DBA4:
	DEC	byte_372
	JSR	sub_12ED32
	JSR	sub_12DC31
	JMP	loc_12DB8E
; ---------------------------------------------------------------------------

loc_12DBB0:
	CMP	#4
	BNE	loc_12DBCC
	LDA	byte_372
	CMP	#2
	BNE	loc_12DBC0
	set byte_372, #$FF

loc_12DBC0:
	INC	byte_372
	JSR	sub_12ED32
	JSR	sub_12DC31
	JMP	loc_12DB8E
; ---------------------------------------------------------------------------

loc_12DBCC:
	CMP	#$80 
	BNE	loc_12DC0F
	JSR	sub_12ED20
	LDA	byte_42E
	ASL	A
	CLC
	ADC	byte_42C
	STA	byte_47B
	LDA	byte_372
	CMP	#0
	BNE	loc_12DBEB
	JSR	sub_12DFA5
	JMP	loc_12DC0C
; ---------------------------------------------------------------------------

loc_12DBEB:
	CMP	#1
	BNE	loc_12DBF5
	JSR	sub_12E384
	JMP	loc_12DC0C
; ---------------------------------------------------------------------------

loc_12DBF5:
	CMP	#2
	BNE	loc_12DC0C
	to_stack byte_42C
	to_stack byte_42E
	JSR	sub_12E428
	from_stack byte_42E
	from_stack byte_42C

loc_12DC0C:
	
	JMP	loc_12DC16
; ---------------------------------------------------------------------------

loc_12DC0F:
	CMP	#$40 
	BEQ	loc_12DC16
	JMP	loc_12DB8E
; ---------------------------------------------------------------------------

loc_12DC16:
	
	JSR	sub_12ED29
	set tilemapWidth_308, #$60 
	set byte_31A, #$A0 
	JSR	sub_12D26B
	LDA	sprite_length_30F
	CMP	#$FF
	BEQ	locret_12DC30
	JSR	sub_12D319

locret_12DC30:
	RTS
; End of function sub_12DB1E


; =============== S U B	R O U T	I N E =======================================


sub_12DC31:
	
	LDA	byte_372
	CLC
	ADC	#$20 
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
	CLC
	ADC	#$1B
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
	LDA	input_reg1_347
	CMP	#8
	BNE	loc_12DC97
	LDA	byte_372
	BEQ	loc_12DC79
	DEC	byte_372
	JSR	sub_12ED32
	JSR	sub_12DF2B
	JSR	sub_12DCE9
	JMP	loc_12DC79
; ---------------------------------------------------------------------------

loc_12DC97:
	CMP	#4
	BNE	loc_12DCB1
	LDA	byte_372
	CMP	#$2F 
	BEQ	loc_12DC79
	INC	byte_372
	JSR	sub_12ED32
	JSR	sub_12DF2B
	JSR	sub_12DCE9
	JMP	loc_12DC79
; ---------------------------------------------------------------------------

loc_12DCB1:
	LDA	input_pressed_34A
	CMP	#$80 
	BNE	loc_12DCC1
	JSR	sub_12ED20
	JSR	sub_12D8DD
	JMP	loc_12DCC8
; ---------------------------------------------------------------------------

loc_12DCC1:
	CMP	#$40 
	BEQ	loc_12DCC8
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
	CLC
	ADC	byte_372
	STA	ppu_unk_byte_309
	set byte_31A, #$A0 
	set sprite_secondByte_31B, #0
	JSR	sub_12E829
	RTS
; End of function sub_12DCE9


; =============== S U B	R O U T	I N E =======================================


sub_12DD0A:
	
	LDA	byte_546
	CMP	#$A
	BCC	loc_12DD1E
	set byte_546, #0
	LDA	byte_547
	EOR	#1
	STA	byte_547

loc_12DD1E:
	LDA	byte_42E
	ASL	A
	ASL	A
	CLC
	ADC	byte_42C
	CLC
	ADC	byte_42C
	TAY
	set_iny tilemap_size_307, {byte_12E851,Y}
	set ppu_unk_byte_309, {byte_12E851,Y}
	set byte_31A, #$60 
	set sprite_secondByte_31B, #0
	set byte_317, #0
	set objMapIdx_316, #$2A 
	to_stack tilemap_size_307
	to_stack ppu_unk_byte_309
	add_to_byte_clc ppu_unk_byte_309, byte_547

	add_to_byte_clc tilemap_size_307, byte_547

	JSR	sub_12E829
	from_stack ppu_unk_byte_309
	from_stack tilemap_size_307
	add_to_byte_clc byte_31A, #4

	set objMapIdx_316, #$2B 
	to_stack tilemap_size_307
	to_stack ppu_unk_byte_309
	add_to_byte_clc ppu_unk_byte_309, byte_547

	LDA	tilemap_size_307
	CLC
	ADC	#$18
	SEC
	SBC	byte_547
	STA	tilemap_size_307
	JSR	sub_12E829
	from_stack ppu_unk_byte_309
	from_stack tilemap_size_307
	add_to_byte_clc byte_31A, #4

	set objMapIdx_316, #$2C 
	to_stack tilemap_size_307
	to_stack ppu_unk_byte_309
	LDA	ppu_unk_byte_309
	CLC
	ADC	#$18
	SEC
	SBC	byte_547
	STA	ppu_unk_byte_309
	add_to_byte_clc tilemap_size_307, byte_547

	LDA	byte_42E
	CMP	#4
	BCC	loc_12DDE9
	LDA	ppu_unk_byte_309
	SEC
	SBC	#$10
	STA	ppu_unk_byte_309

loc_12DDE9:
	JSR	sub_12E829
	from_stack ppu_unk_byte_309
	from_stack tilemap_size_307
	add_to_byte_clc byte_31A, #4

	set objMapIdx_316, #$2D 
	to_stack tilemap_size_307
	to_stack ppu_unk_byte_309
	LDA	tilemap_size_307
	CLC
	ADC	#$18
	SEC
	SBC	byte_547
	STA	tilemap_size_307
	LDA	ppu_unk_byte_309
	CLC
	ADC	#$18
	SEC
	SBC	byte_547
	STA	ppu_unk_byte_309
	LDA	byte_42E
	CMP	#4
	BCC	loc_12DE34
	LDA	ppu_unk_byte_309
	SEC
	SBC	#$10
	STA	ppu_unk_byte_309

loc_12DE34:
	JSR	sub_12E829
	from_stack ppu_unk_byte_309
	from_stack tilemap_size_307
	add_to_byte_clc byte_31A, #4

	RTS
; End of function sub_12DD0A


; =============== S U B	R O U T	I N E =======================================


sub_12DE49:
	
	LDA	count_unk_465
	CMP	#5
	BCC	locret_12DEB4
	set count_unk_465, #0
	INC	byte_54D
	LDA	byte_54D
	CMP	#7
	BCC	loc_12DE64
	set byte_54D, #0

loc_12DE64:
	set objMapIdx_316, byte_54D
	LDA	byte_549
	CMP	#$55 
	BCC	loc_12DE8E
	CMP	#$AA 
	BCC	loc_12DE7D
	set byte_54B, #0
	JMP	loc_12DE9C
; ---------------------------------------------------------------------------

loc_12DE7D:
	add_to_byte_clc objMapIdx_316, #7

	set byte_54B, #1
	JMP	loc_12DE9C
; ---------------------------------------------------------------------------

loc_12DE8E:
	add_to_byte_clc objMapIdx_316, #$E

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
	LDA	byte_54A
	BEQ	loc_12DEC9
	add_to_byte_clc objMapIdx_316, #3


loc_12DEC9:
	add_to_byte_clc objMapIdx_316, #$15

	set byte_31A, #$30 
	set sprite_secondByte_31B, #0
	STA	byte_317
	set tilemap_size_307, #$40 
	set ppu_unk_byte_309, #$B8 
	JSR	sub_12E829
	RTS
; End of function sub_12DEB5

; ---------------------------------------------------------------------------
byte_12DEED:.BYTE	0,  0,	0,  0,	0,  0,	0,  1,	1,  1,	1,  1,	1,  1,	2,  2
	
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
	LDA	inv_itemPrev_idx_31D
	CMP	#$29 
	BNE	loc_12DF8B
	set text_idx_35C, #$75 
	set char_type_id_35D, #0

loc_12DF8B:
	LDA	inv_itemPrev_idx_31D
	CMP	#$15
	BNE	loc_12DF9C
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
	ASL	A
	CLC
	ADC	byte_42C
	TAY
	set tilemapTypeUnk_30B, {byte_533,Y}
	LDA	tilemapTypeUnk_30B
	CMP	#6
	BCC	loc_12DFC6
	CMP	#$A
	BCC	loc_12E019
	CMP	#$13
	BCC	loc_12E035
	JMP	loc_12E166
; ---------------------------------------------------------------------------

loc_12DFC6:
	LDA	tilemapTypeUnk_30B
	CMP	#2
	BNE	loc_12DFD7
	LDA	byte_46D
	CMP	#2
	BNE	loc_12DFD7
	JMP	loc_12E166
; ---------------------------------------------------------------------------

loc_12DFD7:
	
	LDA	tilemapTypeUnk_30B
	CMP	#0
	BNE	loc_12DFE8
	LDA	byte_46D
	CMP	#0
	BNE	loc_12DFE8
	JMP	loc_12E166
; ---------------------------------------------------------------------------

loc_12DFE8:
	
	LDA	tilemapTypeUnk_30B
	CLC
	ADC	#1
	CMP	byte_543
	BEQ	sub_12DFFC
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
	
	LDA	tilemapTypeUnk_30B
	CMP	#$12
	BNE	loc_12E05D
	LDA	byte_54A
	CMP	#0
	BNE	loc_12E04D
	LDA	byte_549
	CMP	#$C8 
	BCC	loc_12E04D
	JMP	loc_12E05D
; ---------------------------------------------------------------------------

loc_12E04D:
	
	set byte_549, #$FF
	set byte_54A, #0
	STA	byte_4B5
	JMP	loc_12E13A
; ---------------------------------------------------------------------------

loc_12E05D:
	
	LDA	tilemapTypeUnk_30B
	CMP	#$C
	BNE	loc_12E076
	LDA	byte_54A
	CMP	#0
	BEQ	loc_12E076
	set byte_54A, #0
	STA	byte_4B5
	JMP	loc_12E13A
; ---------------------------------------------------------------------------

loc_12E076:
	
	LDA	tilemapTypeUnk_30B
	CMP	#$E
	BNE	loc_12E09E
	LDA	byte_54A
	CMP	#0
	BNE	loc_12E08E
	LDA	byte_549
	CMP	#$C8 
	BCC	loc_12E08E
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
	
	LDA	tilemapTypeUnk_30B
	CMP	#$11
	BNE	loc_12E0C6
	LDA	byte_54A
	CMP	#0
	BNE	loc_12E0B6
	LDA	byte_549
	CMP	#$C8 
	BCC	loc_12E0B6
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
	
	LDA	tilemapTypeUnk_30B
	CMP	#$B
	BNE	loc_12E0DC
	LDA	byte_549
	CMP	#$C8 
	BCS	loc_12E0DC
	LDA	#$55 
	JSR	sub_12E156
	JMP	loc_12E13A
; ---------------------------------------------------------------------------

loc_12E0DC:
	
	LDA	tilemapTypeUnk_30B
	CMP	#$D
	BNE	loc_12E0F2
	LDA	byte_549
	CMP	#$C8 
	BCS	loc_12E0F2
	LDA	#$AA 
	JSR	sub_12E156
	JMP	loc_12E13A
; ---------------------------------------------------------------------------

loc_12E0F2:
	
	LDA	tilemapTypeUnk_30B
	CMP	#$F
	BNE	loc_12E108
	LDA	byte_549
	CMP	#$C8 
	BCS	loc_12E108
	LDA	#$AA 
	JSR	sub_12E156
	JMP	loc_12E13A
; ---------------------------------------------------------------------------

loc_12E108:
	
	LDA	tilemapTypeUnk_30B
	CMP	#$10
	BNE	loc_12E11E
	LDA	byte_549
	CMP	#$C8 
	BCS	loc_12E11E
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
	
	CLC
	ADC	byte_549
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
	
	LDA	tilemapTypeUnk_30B
	CMP	#$2F 
	BNE	loc_12E170
	JMP	loc_12E315
; ---------------------------------------------------------------------------

loc_12E170:
	LDA	tilemapTypeUnk_30B
	CMP	#$12
	BNE	loc_12E17A
	JMP	loc_12E035
; ---------------------------------------------------------------------------

loc_12E17A:
	LDA	byte_46D
	CMP	#$1E
	BNE	loc_12E1A0
	LDA	tilemapTypeUnk_30B
	CMP	#$1E
	BEQ	loc_12E202
	LDA	tilemapTypeUnk_30B
	CMP	#$1F
	BEQ	loc_12E202
	LDA	tilemapTypeUnk_30B
	CMP	#$20 
	BEQ	loc_12E202
	LDA	tilemapTypeUnk_30B
	CMP	#$21 
	BEQ	loc_12E202
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E1A0:
	CMP	#$22 
	BNE	loc_12E1B5
	LDA	tilemapTypeUnk_30B
	CMP	#$22 
	BEQ	loc_12E202
	LDA	tilemapTypeUnk_30B
	CMP	#$23 
	BEQ	loc_12E202
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E1B5:
	CMP	#$2D 
	BNE	loc_12E1C3
	LDA	tilemapTypeUnk_30B
	CMP	#$2D 
	BEQ	loc_12E202
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E1C3:
	CMP	#$1C
	BNE	loc_12E1D8
	LDA	tilemapTypeUnk_30B
	CMP	#$1C
	BEQ	loc_12E202
	LDA	tilemapTypeUnk_30B
	CMP	#$1D
	BEQ	loc_12E202
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E1D8:
	CMP	#$1B
	BNE	loc_12E1E6
	LDA	tilemapTypeUnk_30B
	CMP	#$1B
	BEQ	loc_12E202
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E1E6:
	CMP	#$29 
	BNE	loc_12E1F4
	LDA	tilemapTypeUnk_30B
	CMP	#$29 
	BEQ	loc_12E202
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E1F4:
	CMP	#$13
	BNE	loc_12E205
	LDA	tilemapTypeUnk_30B
	CMP	#$13
	BEQ	loc_12E202
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E202:
	
	JMP	loc_12E315
; ---------------------------------------------------------------------------

loc_12E205:
	CMP	#$18
	BNE	loc_12E213
	LDA	tilemapTypeUnk_30B
	CMP	#$18
	BEQ	loc_12E28A
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E213:
	CMP	#$17
	BNE	loc_12E221
	LDA	tilemapTypeUnk_30B
	CMP	#$17
	BEQ	loc_12E28A
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E221:
	CMP	#$16
	BNE	loc_12E22F
	LDA	tilemapTypeUnk_30B
	CMP	#$16
	BEQ	loc_12E28A
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E22F:
	CMP	#$24 
	BNE	loc_12E23D
	LDA	tilemapTypeUnk_30B
	CMP	#$24 
	BEQ	loc_12E28A
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E23D:
	CMP	#$2C 
	BNE	loc_12E24B
	LDA	tilemapTypeUnk_30B
	CMP	#$2C 
	BEQ	loc_12E28A
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E24B:
	CMP	#2
	BNE	loc_12E260
	LDA	tilemapTypeUnk_30B
	CMP	#2
	BEQ	loc_12E28A
	LDA	tilemapTypeUnk_30B
	CMP	#$3B 
	BEQ	loc_12E28A
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E260:
	CMP	#$2E 
	BNE	loc_12E26E
	LDA	tilemapTypeUnk_30B
	CMP	#$2E 
	BEQ	loc_12E28A
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E26E:
	CMP	#$2A 
	BNE	loc_12E27C
	LDA	tilemapTypeUnk_30B
	CMP	#$2A 
	BEQ	loc_12E28A
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E27C:
	CMP	#0
	BNE	loc_12E28D
	LDA	tilemapTypeUnk_30B
	CMP	#0
	BEQ	loc_12E28A
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E28A:
	
	JMP	loc_12E315
; ---------------------------------------------------------------------------

loc_12E28D:
	CMP	#$39 
	BNE	loc_12E29B
	LDA	tilemapTypeUnk_30B
	CMP	#$39 
	BEQ	loc_12E315
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E29B:
	CMP	#$27 
	BNE	loc_12E2A9
	LDA	tilemapTypeUnk_30B
	CMP	#$27 
	BEQ	loc_12E315
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E2A9:
	CMP	#$28 
	BNE	loc_12E2B7
	LDA	tilemapTypeUnk_30B
	CMP	#$28 
	BEQ	loc_12E315
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E2B7:
	CMP	#$30 
	BNE	loc_12E2C5
	LDA	tilemapTypeUnk_30B
	CMP	#$30 
	BEQ	loc_12E315
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E2C5:
	CMP	#$14
	BNE	loc_12E2D3
	LDA	tilemapTypeUnk_30B
	CMP	#$14
	BEQ	loc_12E315
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E2D3:
	CMP	#$15
	BNE	loc_12E2E1
	LDA	tilemapTypeUnk_30B
	CMP	#$15
	BEQ	loc_12E315
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E2E1:
	CMP	#$1A
	BNE	loc_12E312
	LDA	byte_598
	CMP	#0
	BNE	loc_12E308
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
	LDA	tilemapTypeUnk_30B
	CMP	#$1A
	BEQ	loc_12E315
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E312:
	JMP	loc_12E368
; ---------------------------------------------------------------------------

loc_12E315:
	
	set byte_46E, tilemapTypeUnk_30B
	CMP	#0
	BEQ	loc_12E362
	CMP	#$13
	BEQ	loc_12E362
	CMP	#$14
	BEQ	loc_12E362
	CMP	#$15
	BEQ	loc_12E362
	CMP	#$16
	BEQ	loc_12E362
	CMP	#$17
	BEQ	loc_12E362
	CMP	#$18
	BEQ	loc_12E362
	CMP	#$19
	BEQ	loc_12E362
	CMP	#$29 
	BEQ	loc_12E362
	CMP	#$2A 
	BEQ	loc_12E362
	CMP	#$2B 
	BEQ	loc_12E362
	CMP	#$1A
	BNE	loc_12E35C
	LDA	unk_53B,Y
	SEC
	SBC	#1
	STA	unk_53B,Y
	LDA	unk_53B,Y
	BEQ	loc_12E35C
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
	ASL	A
	CLC
	ADC	byte_42C
	TAY
	LDA	byte_533,Y
	CLC
	ADC	#$3A 
	STA	text_idx_35C
	set char_type_id_35D, #0
	set byte_364, #7
	JSR	exec_b2_c1_128300
	JSR	sub_12E3D4
	JSR	sub_12ED29
	LDA	byte_42E
	ASL	A
	CLC
	ADC	byte_42C
	TAY
	LDA	byte_533,Y
	CMP	#$25 
	BNE	loc_12E3C1
	set {byte_533,Y}, #$27 
	JMP	loc_12E3CA
; ---------------------------------------------------------------------------

loc_12E3C1:
	CMP	#$26 
	BNE	locret_12E3D3
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
	LDA	input_pressed_34A
	CMP	#$40 
	BNE	sub_12E3D4
	RTS
; End of function sub_12E3D4


; =============== S U B	R O U T	I N E =======================================


sub_12E3DF:
	
	LDA	byte_543
	CMP	#0
	BEQ	locret_12E427
	set tilemap_size_307, #$10
	set ppu_unk_byte_309, #$14
	LDA	byte_543
	SEC
	SBC	#1
	STA	tilemapTypeUnk_30B
	LDY	tilemapTypeUnk_30B
	set inv_itemPrev_idx_31D, {byte_12E869,Y}
	LDY	#0

loc_12E404:
	LDA	byte_533,Y
	INY
	CMP	tilemapTypeUnk_30B
	BNE	loc_12E404
	DEY
	set sprite_secondByte_31B, #$3C 

loc_12E413:
	CPY	#0
	BEQ	loc_12E424
	add_to_byte_clc sprite_secondByte_31B, #$11

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
	LDA	input_pressed_34A
	CMP	#8
	BNE	loc_12E450
	LDA	byte_42E
	CMP	#0
	BNE	loc_12E441
	set byte_42E, #4

loc_12E441:
	DEC	byte_42E
	JSR	sub_12ED32
	JSR	sub_12E4CD
	JSR	sub_12D329
	JMP	sub_12E428
; ---------------------------------------------------------------------------

loc_12E450:
	CMP	#4
	BNE	loc_12E46F
	LDA	byte_42E
	CMP	#3
	BCC	loc_12E460
	set byte_42E, #$FF

loc_12E460:
	INC	byte_42E
	JSR	sub_12ED32
	JSR	sub_12E4CD
	JSR	sub_12D329
	JMP	sub_12E428
; ---------------------------------------------------------------------------

loc_12E46F:
	CMP	#2
	BNE	loc_12E487
	LDA	byte_42C
	EOR	#1
	STA	byte_42C
	JSR	sub_12ED32
	JSR	sub_12E4CD
	JSR	sub_12D329
	JMP	sub_12E428
; ---------------------------------------------------------------------------

loc_12E487:
	CMP	#1
	BNE	loc_12E49F
	LDA	byte_42C
	EOR	#1
	STA	byte_42C
	JSR	sub_12ED32
	JSR	sub_12E4CD
	JSR	sub_12D329
	JMP	sub_12E428
; ---------------------------------------------------------------------------

loc_12E49F:
	CMP	#$80 
	BNE	loc_12E4B0
	JSR	sub_12E8A5
	LDA	sprite_length_30F
	CMP	#$FF
	BEQ	loc_12E4B7
	JMP	sub_12E428
; ---------------------------------------------------------------------------

loc_12E4B0:
	CMP	#$40 
	BEQ	loc_12E4B7
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
	LDA	byte_546
	CMP	#$A
	BCC	loc_12E4EE
	set byte_546, #0
	LDA	byte_547
	EOR	#1
	STA	byte_547

loc_12E4EE:
	LDA	byte_42E
	ASL	A
	ASL	A
	CLC
	ADC	byte_42C
	CLC
	ADC	byte_42C
	TAY
	set_iny tilemap_size_307, {byte_12E851,Y}
	set ppu_unk_byte_309, {byte_12E851,Y}
	set byte_31A, #$70 
	set sprite_secondByte_31B, #0
	set byte_317, #0
	set objMapIdx_316, #$2F 
	to_stack tilemap_size_307
	to_stack ppu_unk_byte_309
	add_to_byte_clc tilemap_size_307, #$C

	add_to_byte_clc ppu_unk_byte_309, byte_547

	JSR	sub_12E829
	from_stack ppu_unk_byte_309
	from_stack tilemap_size_307
	add_to_byte_clc byte_31A, #4

	set objMapIdx_316, #$2E 
	to_stack tilemap_size_307
	to_stack ppu_unk_byte_309
	add_to_byte_clc tilemap_size_307, #$C

	LDA	ppu_unk_byte_309
	CLC
	ADC	#$18
	SEC
	SBC	byte_547
	STA	ppu_unk_byte_309
	JSR	sub_12E829
	from_stack ppu_unk_byte_309
	from_stack tilemap_size_307
	add_to_byte_clc byte_31A, #4

	set objMapIdx_316, #$30 
	to_stack tilemap_size_307
	to_stack ppu_unk_byte_309
	add_to_byte_clc ppu_unk_byte_309, #$C

	add_to_byte_clc tilemap_size_307, byte_547

	JSR	sub_12E829
	from_stack ppu_unk_byte_309
	from_stack tilemap_size_307
	add_to_byte_clc byte_31A, #4

	set objMapIdx_316, #$31 
	to_stack tilemap_size_307
	to_stack ppu_unk_byte_309
	LDA	tilemap_size_307
	CLC
	ADC	#$18
	SEC
	SBC	byte_547
	STA	tilemap_size_307
	add_to_byte_clc ppu_unk_byte_309, #$C

	JSR	sub_12E829
	from_stack ppu_unk_byte_309
	from_stack tilemap_size_307
	RTS
; End of function sub_12E4CD


; =============== S U B	R O U T	I N E =======================================


sub_12E5E6:
	to_stack byte_372
	set byte_372, #0
	LDA	byte_4C1
	CMP	#0
	BNE	loc_12E603
	set text_idx_35C, #$75 
	set char_type_id_35D, #0
	JMP	loc_12E616
; ---------------------------------------------------------------------------

loc_12E603:
	
	LDX	byte_372
	LDA	unk_4B6,X
	CLC
	ADC	#$14
	STA	text_idx_35C
	LDA	#2
	ADC	#0
	STA	char_type_id_35D

loc_12E616:
	JSR	sub_12E798
	JSR	sub_12E7D3
	JSR	sub_12E7F0
	LDA	byte_4C1
	BNE	loc_12E62A
	JSR	wait_for_b_pressed_FCC5
	JMP	loc_12E67A
; ---------------------------------------------------------------------------

loc_12E62A:
	
	LDA	input_pressed_34A
	CMP	#4
	BNE	loc_12E645
	LDA	byte_372
	CLC
	ADC	#1
	CMP	byte_4C1
	BEQ	loc_12E62A
	INC	byte_372
	JSR	sub_12ED32
	JMP	loc_12E603
; ---------------------------------------------------------------------------

loc_12E645:
	CMP	#8
	BNE	loc_12E659
	LDA	byte_372
	CMP	#0
	BEQ	loc_12E62A
	DEC	byte_372
	JSR	sub_12ED32
	JMP	loc_12E603
; ---------------------------------------------------------------------------

loc_12E659:
	CMP	#$80 
	BEQ	loc_12E664
	CMP	#$40 
	BEQ	loc_12E67A
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
	from_stack byte_372
	RTS
; End of function sub_12E5E6


; =============== S U B	R O U T	I N E =======================================


sub_12E69F:
	to_stack byte_372
	set byte_372, #0
	LDA	byte_4D0
	CMP	#0
	BNE	loc_12E6BC
	set text_idx_35C, #$75 
	set char_type_id_35D, #0
	JMP	loc_12E6E0
; ---------------------------------------------------------------------------

loc_12E6BC:
	
	LDX	byte_372
	LDA	unk_4C2,X
	CLC
	ADC	#$99 
	STA	text_idx_35C
	LDA	#0
	ADC	#0
	STA	char_type_id_35D
	LDA	unk_4C2,X
	CMP	#$E
	BNE	loc_12E6E0
	set text_idx_35C, #$3A 
	set char_type_id_35D, #2

loc_12E6E0:
	
	JSR	sub_12E798
	JSR	sub_12E7D3
	JSR	sub_12E7F0
	LDA	byte_4D0
	BNE	loc_12E6F7
	JSR	wait_for_b_pressed_FCC5
	JSR	sub_12ED29
	JMP	loc_12E776
; ---------------------------------------------------------------------------

loc_12E6F7:
	
	LDA	input_pressed_34A
	CMP	#4
	BNE	loc_12E712
	LDA	byte_372
	CLC
	ADC	#1
	CMP	byte_4D0
	BEQ	loc_12E6F7
	INC	byte_372
	JSR	sub_12ED32
	JMP	loc_12E6BC
; ---------------------------------------------------------------------------

loc_12E712:
	CMP	#8
	BNE	loc_12E726
	LDA	byte_372
	CMP	#0
	BEQ	loc_12E6F7
	DEC	byte_372
	JSR	sub_12ED32
	JMP	loc_12E6BC
; ---------------------------------------------------------------------------

loc_12E726:
	CMP	#$80 
	BEQ	loc_12E731
	CMP	#$40 
	BEQ	loc_12E776
	JMP	loc_12E6F7
; ---------------------------------------------------------------------------

loc_12E731:
	JSR	sub_12ED20
	JSR	sub_12D21B
	LDX	byte_372
	LDA	unk_4C2,X
	CLC
	ADC	#$A7 
	STA	text_idx_35C
	LDA	#0
	ADC	#0
	STA	char_type_id_35D
	LDA	unk_4C2,X
	CMP	#$E
	BNE	loc_12E75B
	set text_idx_35C, #$3B 
	set char_type_id_35D, #2

loc_12E75B:
	set byte_310, #0
	JSR	exec_b2_c3_128313

loc_12E763:
	JSR	wait_for_frame_rendered_FCA0
	LDA	input_pressed_34A
	CMP	#$40 
	BNE	loc_12E763
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
	from_stack byte_372
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
	ASL	A
	CLC
	ADC	byte_42C
	CMP	byte_532
	BCC	loc_12E8B5
	JMP	loc_12ED0E
; ---------------------------------------------------------------------------

loc_12E8B5:
	STA	byte_47C

loc_12E8B8:
	LDX	byte_47B
	LDY	byte_47C
	LDA	byte_533,X
	CMP	#1
	BNE	loc_12E926

loc_12E8C5:
	LDA	byte_533,Y
	CMP	#6
	BNE	loc_12E923
	LDA	unk_53B,X
	CLC
	ADC	unk_53B,Y
	CMP	#$F
	BCC	loc_12E8FB
	BEQ	loc_12E8FB
	LDA	unk_53B,X
	CMP	#$F
	BEQ	loc_12E923
	LDA	#$F
	SEC
	SBC	unk_53B,X
	STA	tilemapTypeUnk_30B
	LDA	unk_53B,Y
	SEC
	SBC	tilemapTypeUnk_30B
	STA	unk_53B,Y
	set {unk_53B,X}, #$F
	JMP	loc_12ED17
; ---------------------------------------------------------------------------

loc_12E8FB:
	
	LDA	unk_53B,X
	CLC
	ADC	unk_53B,Y
	STA	unk_53B,X
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
	CMP	#2
	BNE	loc_12E98B

loc_12E92A:
	LDA	byte_533,Y
	CMP	#7
	BNE	loc_12E988
	LDA	unk_53B,X
	CLC
	ADC	unk_53B,Y
	CMP	#6
	BCC	loc_12E960
	BEQ	loc_12E960
	LDA	unk_53B,X
	CMP	#6
	BEQ	loc_12E988
	LDA	#6
	SEC
	SBC	unk_53B,X
	STA	tilemapTypeUnk_30B
	LDA	unk_53B,Y
	SEC
	SBC	tilemapTypeUnk_30B
	STA	unk_53B,Y
	set {unk_53B,X}, #6
	JMP	loc_12ED17
; ---------------------------------------------------------------------------

loc_12E960:
	
	LDA	unk_53B,X
	CLC
	ADC	unk_53B,Y
	STA	unk_53B,X
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
	CMP	#3
	BNE	loc_12E9F0

loc_12E98F:
	LDA	byte_533,Y
	CMP	#8
	BNE	loc_12E9ED
	LDA	unk_53B,X
	CLC
	ADC	unk_53B,Y
	CMP	#6
	BCC	loc_12E9C5
	BEQ	loc_12E9C5
	LDA	unk_53B,X
	CMP	#6
	BEQ	loc_12E9ED
	LDA	#6
	SEC
	SBC	unk_53B,X
	STA	tilemapTypeUnk_30B
	LDA	unk_53B,Y
	SEC
	SBC	tilemapTypeUnk_30B
	STA	unk_53B,Y
	set {unk_53B,X}, #6
	JMP	loc_12ED17
; ---------------------------------------------------------------------------

loc_12E9C5:
	
	LDA	unk_53B,X
	CLC
	ADC	unk_53B,Y
	STA	unk_53B,X
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
	CMP	#4
	BNE	loc_12EA55

loc_12E9F4:
	LDA	byte_533,Y
	CMP	#9
	BNE	loc_12EA52
	LDA	unk_53B,X
	CLC
	ADC	unk_53B,Y
	CMP	#6
	BCC	loc_12EA2A
	BEQ	loc_12EA2A
	LDA	unk_53B,X
	CMP	#6
	BEQ	loc_12EA52
	LDA	#6
	SEC
	SBC	unk_53B,X
	STA	tilemapTypeUnk_30B
	LDA	unk_53B,Y
	SEC
	SBC	tilemapTypeUnk_30B
	STA	unk_53B,Y
	set {unk_53B,X}, #6
	JMP	loc_12ED17
; ---------------------------------------------------------------------------

loc_12EA2A:
	
	LDA	unk_53B,X
	CLC
	ADC	unk_53B,Y
	STA	unk_53B,X
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
	CMP	#6
	BNE	loc_12EA7A
	LDA	byte_533,Y
	CMP	#1
	BNE	loc_12EA77
	to_stack byte_47C
	set byte_47C, byte_47B
	from_stack byte_47B
	LDX	byte_47B
	LDY	byte_47C
	JMP	loc_12E8C5
; ---------------------------------------------------------------------------

loc_12EA77:
	JMP	loc_12ED0E
; ---------------------------------------------------------------------------

loc_12EA7A:
	CMP	#7
	BNE	loc_12EA9F
	LDA	byte_533,Y
	CMP	#2
	BNE	loc_12EA9C
	to_stack byte_47C
	set byte_47C, byte_47B
	from_stack byte_47B
	LDX	byte_47B
	LDY	byte_47C
	JMP	loc_12E92A
; ---------------------------------------------------------------------------

loc_12EA9C:
	JMP	loc_12ED0E
; ---------------------------------------------------------------------------

loc_12EA9F:
	CMP	#8
	BNE	loc_12EAC4
	LDA	byte_533,Y
	CMP	#3
	BNE	loc_12EAC1
	to_stack byte_47C
	set byte_47C, byte_47B
	from_stack byte_47B
	LDX	byte_47B
	LDY	byte_47C
	JMP	loc_12E98F
; ---------------------------------------------------------------------------

loc_12EAC1:
	JMP	loc_12ED0E
; ---------------------------------------------------------------------------

loc_12EAC4:
	CMP	#9
	BNE	loc_12EAE9
	LDA	byte_533,Y
	CMP	#4
	BNE	loc_12EAE6
	to_stack byte_47C
	set byte_47C, byte_47B
	from_stack byte_47B
	LDX	byte_47B
	LDY	byte_47C
	JMP	loc_12E9F4
; ---------------------------------------------------------------------------

loc_12EAE6:
	JMP	loc_12ED0E
; ---------------------------------------------------------------------------

loc_12EAE9:
	CMP	#$A
	BNE	loc_12EB3C
	LDA	byte_533,Y
	CMP	#$B
	BNE	loc_12EAFC
	set {byte_533,X}, #$D
	JMP	loc_12EB05
; ---------------------------------------------------------------------------

loc_12EAFC:
	CMP	#$11
	BNE	loc_12EB39
	set {byte_533,X}, #$E

loc_12EB05:
	LDX	byte_47B
	LDA	byte_47B
	CMP	byte_47C
	BCC	loc_12EB13
	LDX	byte_47C

loc_12EB13:
	LDY	byte_532
	JSR	sub_12D9F7
	set tilemapTypeUnk_30B, byte_47C
	JSR	sub_12D8B3
	LDX	byte_47B
	LDA	byte_47B
	CMP	byte_47C
	BCC	loc_12EB30
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
	CMP	#$B
	BNE	loc_12EBAF
	LDA	byte_533,Y
	CMP	#$A
	BNE	loc_12EB4F
	set {byte_533,X}, #$D
	JMP	loc_12EB78
; ---------------------------------------------------------------------------

loc_12EB4F:
	CMP	#$B
	BNE	loc_12EB63
	LDA	byte_47B
	CMP	byte_47C
	BEQ	loc_12EB63
	set {byte_533,X}, #$F
	JMP	loc_12EB78
; ---------------------------------------------------------------------------

loc_12EB63:
	
	CMP	#$C
	BNE	loc_12EB6F
	set {byte_533,X}, #$11
	JMP	loc_12EB78
; ---------------------------------------------------------------------------

loc_12EB6F:
	CMP	#$F
	BNE	loc_12EBAC
	set {byte_533,X}, #$10

loc_12EB78:
	
	LDX	byte_47B
	LDA	byte_47B
	CMP	byte_47C
	BCC	loc_12EB86
	LDX	byte_47C

loc_12EB86:
	LDY	byte_532
	JSR	sub_12D9F7
	set tilemapTypeUnk_30B, byte_47C
	JSR	sub_12D8B3
	LDX	byte_47B
	LDA	byte_47B
	CMP	byte_47C
	BCC	loc_12EBA3
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
	CMP	#$C
	BEQ	loc_12EBB6
	JMP	loc_12EC39
; ---------------------------------------------------------------------------

loc_12EBB6:
	LDA	byte_533,Y
	CMP	#$B
	BNE	loc_12EBF6
	set {byte_533,X}, #$11
	LDX	byte_47B
	LDA	byte_47B
	CMP	byte_47C
	BCC	loc_12EBD0
	LDX	byte_47C

loc_12EBD0:
	LDY	byte_532
	JSR	sub_12D9F7
	set tilemapTypeUnk_30B, byte_47C
	JSR	sub_12D8B3
	LDX	byte_47B
	LDA	byte_47B
	CMP	byte_47C
	BCC	loc_12EBED
	LDX	byte_47C

loc_12EBED:
	LDY	byte_532
	JSR	sub_12DA33
	JMP	loc_12ED17
; ---------------------------------------------------------------------------

loc_12EBF6:
	LDA	byte_533,Y
	CMP	#$D
	BNE	loc_12EC36
	set {byte_533,X}, #$E
	LDX	byte_47B
	LDA	byte_47B
	CMP	byte_47C
	BCC	loc_12EC10
	LDX	byte_47C

loc_12EC10:
	LDY	byte_532
	JSR	sub_12D9F7
	set tilemapTypeUnk_30B, byte_47C
	JSR	sub_12D8B3
	LDX	byte_47B
	LDA	byte_47B
	CMP	byte_47C
	BCC	loc_12EC2D
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
	CMP	#$D
	BNE	loc_12EC80
	LDA	byte_533,Y
	CMP	#$C
	BNE	loc_12EC7D
	set {byte_533,X}, #$E
	LDX	byte_47B
	LDA	byte_47B
	CMP	byte_47C
	BCC	loc_12EC57
	LDX	byte_47C

loc_12EC57:
	LDY	byte_532
	JSR	sub_12D9F7
	set tilemapTypeUnk_30B, byte_47C
	JSR	sub_12D8B3
	LDX	byte_47B
	LDA	byte_47B
	CMP	byte_47C
	BCC	loc_12EC74
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
	CMP	#$F
	BNE	loc_12ECC7
	LDA	byte_533,Y
	CMP	#$B
	BNE	loc_12ECC4
	set {byte_533,X}, #$10
	LDX	byte_47B
	LDA	byte_47B
	CMP	byte_47C
	BCC	loc_12EC9E
	LDX	byte_47C

loc_12EC9E:
	LDY	byte_532
	JSR	sub_12D9F7
	set tilemapTypeUnk_30B, byte_47C
	JSR	sub_12D8B3
	LDX	byte_47B
	LDA	byte_47B
	CMP	byte_47C
	BCC	loc_12ECBB
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
	CMP	#$11
	BNE	loc_12ED0E
	LDA	byte_533,Y
	CMP	#$A
	BNE	loc_12ED0B
	set {byte_533,X}, #$E
	LDX	byte_47B
	LDA	byte_47B
	CMP	byte_47C
	BCC	loc_12ECE5
	LDX	byte_47C

loc_12ECE5:
	LDY	byte_532
	JSR	sub_12D9F7
	set tilemapTypeUnk_30B, byte_47C
	JSR	sub_12D8B3
	LDX	byte_47B
	LDA	byte_47B
	CMP	byte_47C
	BCC	loc_12ED02
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
	; com_E_load_game_12CD30+112p ...
	to_stack tilemapTypeUnk_30B
	LDA	#6
	JMP	loc_12ED4D
; End of function sub_12ED20


; =============== S U B	R O U T	I N E =======================================


sub_12ED29:
	; com_E_load_game_12CD30:loc_12CE69p ...
	to_stack tilemapTypeUnk_30B
	LDA	#$B
	JMP	loc_12ED4D
; End of function sub_12ED29


; =============== S U B	R O U T	I N E =======================================


sub_12ED32:
	; com_E_load_game_12CD30+108p ...
	to_stack tilemapTypeUnk_30B
	LDA	#$2B 
	JMP	loc_12ED4D
; End of function sub_12ED32


; =============== S U B	R O U T	I N E =======================================


sub_12ED3B:
	
	to_stack tilemapTypeUnk_30B
	LDA	#$2D 
	JMP	loc_12ED4D
; End of function sub_12ED3B


; =============== S U B	R O U T	I N E =======================================


sub_12ED44:
	to_stack tilemapTypeUnk_30B
	LDA	#$18
	JMP	loc_12ED4D
; ---------------------------------------------------------------------------

loc_12ED4D:
	
	STA	tilemapTypeUnk_30B
	JSR	sub_128531
	from_stack tilemapTypeUnk_30B
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
	to_stack tilemapTypeUnk_30B
	JSR	sub_12D3AB
	from_stack tilemapTypeUnk_30B

loc_12ED90:
	
	JSR	wait_for_frame_rendered_FCA0
	LDA	input_pressed_34A
	CMP	#8
	BNE	loc_12EDC0
	LDA	tilemapTypeUnk_30B
	CMP	#0
	BEQ	loc_12ED90
	DEC	tilemapTypeUnk_30B
	set tilemap_size_307, #$80 
	STA	ppu_unk_byte_309
	JSR	sub_12D261
	to_stack tilemapTypeUnk_30B
	JSR	sub_12D3AB
	from_stack tilemapTypeUnk_30B
	JSR	sub_128531
	JMP	loc_12ED90
; ---------------------------------------------------------------------------

loc_12EDC0:
	CMP	#4
	BNE	loc_12EDE7
	LDA	tilemapTypeUnk_30B
	CMP	#$47 
	BEQ	loc_12ED90
	INC	tilemapTypeUnk_30B
	set tilemap_size_307, #$80 
	STA	ppu_unk_byte_309
	to_stack tilemapTypeUnk_30B
	JSR	sub_12D3AB
	from_stack tilemapTypeUnk_30B
	JSR	sub_128531
	JMP	loc_12ED90
; ---------------------------------------------------------------------------

loc_12EDE7:
	CMP	#$80 
	BNE	loc_12EDF1
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
	LDA	byte_341
	CMP	#0
	BNE	loc_12EE2A
	set inv_spr_dscr1_30C, #1

loc_12EE2A:
	LDY	#0

loc_12EE2C:
	LDA	inv_spr_dscr1_30C
	CMP	#4
	BEQ	loc_12EE3F
	CMP	#3
	BEQ	loc_12EE47
	CMP	#2
	BEQ	loc_12EE58
	CMP	#1
	BEQ	loc_12EE69

loc_12EE3F:
	LDA	palette_bg_321,Y 
	AND	#$CF 
	JMP	loc_12EE7D
; ---------------------------------------------------------------------------

loc_12EE47:
	LDA	palette_bg_321,Y 
	AND	#$30 
	CMP	#$30 
	BCC	loc_12EE7A
	LDA	palette_bg_321,Y 
	AND	#$DF 
	JMP	loc_12EE7D
; ---------------------------------------------------------------------------

loc_12EE58:
	LDA	palette_bg_321,Y 
	AND	#$30 
	CMP	#$20 
	BCC	loc_12EE7A
	LDA	palette_bg_321,Y 
	AND	#$EF 
	JMP	loc_12EE7D
; ---------------------------------------------------------------------------

loc_12EE69:
	LDA	palette_bg_321,Y 
	AND	#$30 
	CMP	#$10
	BCC	loc_12EE7A
	LDA	palette_bg_321,Y 
	AND	#$FF
	JMP	loc_12EE7D
; ---------------------------------------------------------------------------

loc_12EE7A:
	
	LDA	palette_bg_321,Y 

loc_12EE7D:
	
	STA	ppu_data_70,X
	INX
	INY
	CPY	#$20 
	BCC	loc_12EE2C
	set has_ppu_data_to_upload_6F, #1
	DEC	inv_spr_dscr1_30C
	LDA	inv_spr_dscr1_30C
	CMP	#0
	BEQ	loc_12EE9C
	LDA	byte_341
	JSR	wait_for_frame_rendered_FCA0
	JMP	loc_12EE04
; ---------------------------------------------------------------------------

loc_12EE9C:
	LDA	byte_341
	CMP	#0
	BEQ	loc_12EEA7
	JSR	wait_for_frame_rendered_FCA0
	RTS
; ---------------------------------------------------------------------------

loc_12EEA7:
	CLC
	ADC	#1
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
	LDA	byte_341
	CMP	#0
	BNE	loc_12EED9
	set inv_spr_dscr1_30C, #0

loc_12EED9:
	LDY	#0

loc_12EEDB:
	LDA	inv_spr_dscr1_30C
	CMP	#4
	BEQ	loc_12EEF2
	CMP	#3
	BEQ	loc_12EEFA
	CMP	#2
	BEQ	loc_12EF0B
	CMP	#1
	BEQ	loc_12EF1C
	CMP	#0
	BEQ	loc_12EF2D

loc_12EEF2:
	LDA	palette_bg_321,Y 
	AND	#$FF
	JMP	loc_12EF35
; ---------------------------------------------------------------------------

loc_12EEFA:
	LDA	palette_bg_321,Y 
	AND	#$30 
	CMP	#$30 
	BCC	loc_12EF32
	LDA	palette_bg_321,Y 
	AND	#$EF 
	JMP	loc_12EF35
; ---------------------------------------------------------------------------

loc_12EF0B:
	LDA	palette_bg_321,Y 
	AND	#$30 
	CMP	#$20 
	BCC	loc_12EF32
	LDA	palette_bg_321,Y 
	AND	#$DF 
	JMP	loc_12EF35
; ---------------------------------------------------------------------------

loc_12EF1C:
	LDA	palette_bg_321,Y 
	AND	#$30 
	CMP	#$10
	BCC	loc_12EF32
	LDA	palette_bg_321,Y 
	AND	#$CF 
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
	CPY	#$20 
	BCC	loc_12EEDB
	set has_ppu_data_to_upload_6F, #1
	DEC	inv_spr_dscr1_30C
	LDA	inv_spr_dscr1_30C
	CMP	#$FF
	BEQ	loc_12EF54
	LDA	byte_341
	JSR	wait_for_frame_rendered_FCA0
	JMP	write_ppu_entry_12EEB3
; ---------------------------------------------------------------------------

loc_12EF54:
	LDA	byte_341
	CMP	#0
	BEQ	loc_12EF5F
	JSR	wait_for_frame_rendered_FCA0
	RTS
; ---------------------------------------------------------------------------

loc_12EF5F:
	CLC
	ADC	#1
	JSR	wait_for_frame_rendered_FCA0
	RTS
; End of function sub_12EEAE


; =============== S U B	R O U T	I N E =======================================


sub_12EF66:
	LDY	byte_301
	LDA	byte_12EFD7,Y
	TAY
	CPY	#$F
	BNE	sub_12EF77
	set sprite_length_30F, #$FF
	RTS
; End of function sub_12EF66


; =============== S U B	R O U T	I N E =======================================


sub_12EF77:
	
	TYA
	PHA
	JSR	sub_1283BA
	from_stack_to_y
	to_stack image_id_4A4
	to_stack image_offset_4A5
	to_stack ppu_prev_unk_4A6
	to_stack ppu_prev_scroll_x_unk_4A7
	to_stack ppu_prev_scroll_y_unk_4A8
	to_stack prev_sprite_type_4A9
	set image_id_4A4, {map_sequence_12F072,Y}
	set image_offset_4A5, #0
	STA	ppu_prev_unk_4A6
	STA	ppu_prev_scroll_x_unk_4A7
	STA	ppu_prev_scroll_y_unk_4A8
	set prev_sprite_type_4A9, #2
	JSR	exec_b0_c2_12A9A9
	JSR	wait_for_any_input_FCCD
	from_stack prev_sprite_type_4A9
	from_stack ppu_prev_scroll_y_unk_4A8
	from_stack ppu_prev_scroll_x_unk_4A7
	from_stack ppu_prev_unk_4A6
	from_stack image_offset_4A5
	from_stack image_id_4A4
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
	to_stack image_id_4A4
	to_stack image_offset_4A5
	to_stack ppu_prev_unk_4A6
	to_stack ppu_prev_scroll_x_unk_4A7
	to_stack ppu_prev_scroll_y_unk_4A8
	to_stack prev_sprite_type_4A9
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
	LDA	input_pressed_34A
	CMP	#8
	BNE	loc_12F0FA
	JSR	sub_12ED32
	JSR	sub_12F4C0
	JMP	loc_12F0E1
; ---------------------------------------------------------------------------

loc_12F0FA:
	CMP	#4
	BNE	loc_12F107
	JSR	sub_12ED32
	JSR	sub_12F4E4
	JMP	loc_12F0E1
; ---------------------------------------------------------------------------

loc_12F107:
	CMP	#2
	BNE	loc_12F114
	JSR	sub_12ED32
	JSR	sub_12F514
	JMP	loc_12F0E1
; ---------------------------------------------------------------------------

loc_12F114:
	CMP	#1
	BNE	loc_12F121
	JSR	sub_12ED32
	JSR	sub_12F527
	JMP	loc_12F0E1
; ---------------------------------------------------------------------------

loc_12F121:
	CMP	#$80 
	BNE	loc_12F138
	JSR	sub_12ED20
	JSR	sub_12F2C9
	JSR	sub_12F583
	LDA	byte_41F
	CMP	#$FF
	BEQ	loc_12F13F
	JMP	loc_12F0E1
; ---------------------------------------------------------------------------

loc_12F138:
	CMP	#$40 
	BEQ	loc_12F13F
	JMP	loc_12F0E1
; ---------------------------------------------------------------------------

loc_12F13F:
	
	JSR	sub_12ED29
	from_stack prev_sprite_type_4A9
	from_stack ppu_prev_scroll_y_unk_4A8
	from_stack ppu_prev_scroll_x_unk_4A7
	from_stack ppu_prev_unk_4A6
	from_stack image_offset_4A5
	from_stack image_id_4A4
	set map_show_43B, #$FF
	JSR	exec_b0_c2_12A9A9
	set map_show_43B, #0
	RTS
; End of function sub_12F07D


; =============== S U B	R O U T	I N E =======================================


sub_12F168:
	
	set objMapIdx_316, #$2A 
	LDA	byte_372
	ASL	A
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
	ASL	A
	TAY
	LDA	byte_12F28B,Y
	CLC
	ADC	#8
	STA	byte_36A
	LDA	byte_372
	CMP	#$14
	BEQ	loc_12F1C7
	CMP	#$1C
	BEQ	loc_12F1C7
	CMP	#$1D
	BEQ	loc_12F1C7
	CMP	#$1E
	BEQ	loc_12F1C7
	JMP	loc_12F1D0
; ---------------------------------------------------------------------------

loc_12F1C7:
	
	add_to_byte_clc byte_36A, #$10


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
	ASL	A
	TAY
	set_iny byte_36A, {byte_12F28B,Y}
	LDA	byte_12F28B,Y
	CLC
	ADC	#8
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
	ASL	A
	TAY
	LDA	byte_12F28B,Y
	CLC
	ADC	#8
	STA	byte_36A
	LDA	byte_372
	CMP	#$14
	BEQ	loc_12F258
	CMP	#$1C
	BEQ	loc_12F258
	CMP	#$1D
	BEQ	loc_12F258
	CMP	#$1E
	BEQ	loc_12F258
	JMP	loc_12F261
; ---------------------------------------------------------------------------

loc_12F258:
	
	add_to_byte_clc byte_36A, #$10


loc_12F261:
	INY
	LDA	byte_12F28B,Y
	CLC
	ADC	#8
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
	LDA	byte_421
	CMP	#$A
	BCC	loc_12F2D8
	LDA	byte_372
	CMP	#$A
	BEQ	loc_12F2D8
	RTS
; ---------------------------------------------------------------------------

loc_12F2D8:
	
	LDA	byte_372
	CMP	#$A
	BNE	loc_12F2ED
	LDA	byte_421
	CMP	#0
	BEQ	locret_12F2EC
	DEC	byte_421
	JMP	loc_12F2ED
; ---------------------------------------------------------------------------

locret_12F2EC:
	RTS
; ---------------------------------------------------------------------------

loc_12F2ED:
	
	LDA	#$4E 
	CLC
	ADC	byte_421
	STA	data_2
	LDA	#$21 
	ADC	#0
	STA	data_3
	LDX	byte_372
	set tilemapTypeUnk_30B, {byte_12F45C,X}
	LDA	tilemapTypeUnk_30B
	CMP	#$FF
	BEQ	loc_12F30E
	JMP	loc_12F411
; ---------------------------------------------------------------------------

loc_12F30E:
	
	set_ptr off_12F53A

	LDA	byte_420
	ASL	A
	CLC
	ADC	ptr_0
	STA	ptr_0
	add_to_byte ptr_1, #0

	LDY	#0
	set_iny data_2, {(ptr_0),Y}
	set data_3, {(ptr_0),Y}
	LDY	#0
	set tilemapTypeUnk_30B, {(data_2),Y}
	CMP	byte_421
	BEQ	loc_12F33F
	JMP	locret_12F410
; ---------------------------------------------------------------------------

loc_12F33F:
	INY
	LDX	#0

loc_12F342:
	LDA	(data_2),Y
	CMP	unk_422,X
	BEQ	loc_12F34C
	JMP	locret_12F410
; ---------------------------------------------------------------------------

loc_12F34C:
	INX
	INY
	CPX	byte_421
	BCC	loc_12F342
	LDA	byte_420
	CMP	#2
	BNE	loc_12F377
	set byte_420, #3
	set text_idx_35C, #$2C 
	set char_type_id_35D, #2
	JSR	sub_12F5B9
	set byte_421, #0
	JSR	sub_12F583
	JMP	locret_12F410
; ---------------------------------------------------------------------------

loc_12F377:
	LDA	byte_420
	CMP	#3
	BNE	loc_12F3F4

loc_12F37E:
	
	JSR	sub_12F5FC
	to_stack byte_372
	set byte_372, #$1C

loc_12F38A:
	
	JSR	wait_for_frame_rendered_FCA0
	JSR	sub_12F168
	LDA	input_pressed_34A
	CMP	#8
	BNE	loc_12F3A4
	LDA	byte_372
	CMP	#$1C
	BEQ	loc_12F38A
	DEC	byte_372
	JMP	loc_12F38A
; ---------------------------------------------------------------------------

loc_12F3A4:
	CMP	#4
	BNE	loc_12F3B5
	LDA	byte_372
	CMP	#$1E
	BEQ	loc_12F38A
	INC	byte_372
	JMP	loc_12F38A
; ---------------------------------------------------------------------------

loc_12F3B5:
	CMP	#$80 
	BEQ	loc_12F3BC
	JMP	loc_12F38A
; ---------------------------------------------------------------------------

loc_12F3BC:
	set tilemapTypeUnk_30B, byte_372
	from_stack byte_372
	to_stack tilemapTypeUnk_30B
	JSR	sub_12F168
	from_stack tilemapTypeUnk_30B
	CMP	#$1E
	BEQ	loc_12F3F4
	CMP	#$1D
	BEQ	loc_12F3E9
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
	
	LDA	byte_420
	CMP	#4
	BNE	loc_12F40B
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
	CLC
	ADC	tilemapTypeUnk_30B
	STA	ptr_0
	LDA	#$F4 
	ADC	#0
	STA	ptr_1
	LDX	byte_421
	set {unk_422,X}, byte_372
	set tilemapTypeUnk_30B, #1
	JSR	sub_12F478
	LDA	byte_372
	CMP	#$A
	BNE	loc_12F438
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
	CPY	tilemapTypeUnk_30B
	BCC	loc_12F495
	add_to_byte_clc data_2, tilemapTypeUnk_30B

	add_to_byte data_3, #0

	
	add_to_byte_clc ptr_0, tilemapTypeUnk_30B

	add_to_byte ptr_1, #0


	JSR	wait_for_ppu_data_upload_FC8C
	RTS
; End of function sub_12F478


; =============== S U B	R O U T	I N E =======================================


sub_12F4C0:
	LDA	byte_372
	CMP	#$A
	BCC	locret_12F4E3
	BEQ	locret_12F4E3
	CMP	#$14
	BCC	loc_12F4D9
	BEQ	loc_12F4D9
	LDA	byte_372
	SEC
	SBC	#$A
	STA	byte_372
	RTS
; ---------------------------------------------------------------------------

loc_12F4D9:
	
	LDA	byte_372
	SEC
	SBC	#$B
	STA	byte_372
	RTS
; ---------------------------------------------------------------------------

locret_12F4E3:
	
	RTS
; End of function sub_12F4C0


; =============== S U B	R O U T	I N E =======================================


sub_12F4E4:
	LDA	byte_372
	CMP	#$15
	BCS	locret_12F513
	BEQ	locret_12F513
	CMP	#$B
	BCS	loc_12F503
	BEQ	loc_12F503
	CMP	#$A
	BCS	locret_12F513
	BEQ	locret_12F513
	add_to_byte_clc byte_372, #$B

	RTS
; ---------------------------------------------------------------------------

loc_12F503:
	
	CMP	#$12
	BCS	locret_12F513
	BEQ	locret_12F513
	add_to_byte_clc byte_372, #$A

	RTS
; ---------------------------------------------------------------------------

locret_12F513:
	
	RTS
; End of function sub_12F4E4


; =============== S U B	R O U T	I N E =======================================


sub_12F514:
	LDA	byte_372
	CMP	#0
	BEQ	locret_12F526
	CMP	#$B
	BEQ	locret_12F526
	CMP	#$15
	BEQ	locret_12F526
	DEC	byte_372

locret_12F526:
	
	RTS
; End of function sub_12F514


; =============== S U B	R O U T	I N E =======================================


sub_12F527:
	LDA	byte_372
	CMP	#$A
	BEQ	locret_12F539
	CMP	#$14
	BEQ	locret_12F539
	CMP	#$1B
	BEQ	locret_12F539
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
	LDA	count_unk_465
	CMP	#$F
	BCC	locret_12F5B8
	set count_unk_465, #0
	LDA	byte_547
	EOR	#1
	STA	byte_547
	LDA	byte_547
	BEQ	sub_12F583
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
	ASL	A
	ASL	A
	ASL	A
	CLC
	ADC	#$70 
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
	to_stack byte_310
	set byte_310, #5
	JSR	exec_b2_c4_1283F2
	from_stack byte_310
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