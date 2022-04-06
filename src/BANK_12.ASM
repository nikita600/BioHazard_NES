; Segment type:	Pure code
		;.segment BANK_12 (Code + Music)
		* =  $8000

; =============== S U B	R O U T	I N E =======================================


bank_switch_128000:
		.include "common/bank_switch_func.asm"

switch_case_8035:				
					; bank_switch_128000+1Dj ...
		LDA	bank_to_344
		STA	bank_prev_345
		LDA	#$88 
		STA	bank_switch_flag_6C
		LDA	bank_command_346
		CMP	#$FF
		BEQ	locret_12805A
		ASL	A
		TAX
		LDA	CommandPtrs_12805B,X
		STA	ptr_0
		INX
		LDA	CommandPtrs_12805B,X
		STA	ptr_1
		LDA	bank_from_343
		PHA
		JMP	(ptr_0)
; ---------------------------------------------------------------------------

locret_12805A:				
		RTS
; End of function bank_switch_128000

; ---------------------------------------------------------------------------
CommandPtrs_12805B:.WORD command_0_1280FB 
					; bank_switch_128000+4Er
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
		LDA	apu_unk_76C
		PHA
		LDA	#5
		STA	apu_unk_76C

exec_b13_c5_12829C:
		LDA	#5
		STA	bank_command_346
		LDA	#banks_13
		STA	bank_to_344
		LDA	#$12
		STA	bank_from_343
		JSR	bank_switch_128000

loc_1282AE:
		JSR	sub_128955
		PLA
		STA	apu_unk_76C

exec_b13_c5_1282B5:
		LDA	#5
		STA	bank_command_346
		LDA	#banks_13
		STA	bank_to_344
		LDA	#$12
		STA	bank_from_343
		JSR	bank_switch_128000
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
		PLA
		STA	bank_from_343
		LDA	#$FF
		STA	bank_command_346
		LDA	bank_from_343
		STA	bank_to_344
		JMP	bank_switch_128000
; End of function command_0_1280FB


; =============== S U B	R O U T	I N E =======================================


exec_b2_c1_128300:			
					; sub_12D58C+69p ...
		LDA	#1
		STA	bank_command_346
		LDA	#text_2
		STA	bank_to_344
		LDA	#$12
		STA	bank_from_343
		JSR	bank_switch_128000
		RTS
; End of function exec_b2_c1_128300


; =============== S U B	R O U T	I N E =======================================


exec_b2_c3_128313:			
					; sub_12E69F+C1p
		LDA	#3
		STA	bank_command_346
		LDA	#2
		STA	bank_to_344
		LDA	#$12
		STA	bank_from_343
		JSR	bank_switch_128000
		RTS
; End of function exec_b2_c3_128313


; =============== S U B	R O U T	I N E =======================================


sub_128326:				
					; sub_12D58C+61p ...
		LDA	inv_itemPrev_idx_31D
		PHA
		LDA	ppu_unk_byte_309
		PHA
		LDA	tilemap_size_307
		PHA
		LDA	#0
		STA	byte_36E
		LDA	inv_itemPrev_idx_31D
		STA	inv_sprite_idx_31C
		LDA	#0
		STA	inv_itemPrev_idx_31D
		LDA	sprite_secondByte_31B
		STA	byte_31E
		JSR	exec_b4_c2_1283A7
		PLA
		STA	tilemap_size_307
		PLA
		STA	ppu_unk_byte_309
		PLA
		STA	inv_itemPrev_idx_31D
		RTS
; End of function sub_128326


; =============== S U B	R O U T	I N E =======================================


sub_128358:				
					; sub_12D58C+5Ep ...
		LDA	inv_itemPrev_idx_31D
		PHA
		LDA	ppu_unk_byte_309
		PHA
		LDA	tilemap_size_307
		PHA
		LDA	inv_itemPrev_idx_31D
		STA	inv_sprite_idx_31C
		LDA	#0
		STA	inv_itemPrev_idx_31D
		LDA	sprite_secondByte_31B
		STA	byte_31E

exec_b4_c3_128375:
		LDA	#3
		STA	bank_command_346
		LDA	#items_spr_4
		STA	bank_to_344
		LDA	#$12
		STA	bank_from_343
		JSR	bank_switch_128000

loc_128387:
		PLA
		STA	tilemap_size_307
		PLA
		STA	ppu_unk_byte_309
		PLA
		STA	inv_itemPrev_idx_31D
		RTS
; End of function sub_128358


; =============== S U B	R O U T	I N E =======================================


exec_b1_c1_128394:			
					; sub_128B43+63p ...
		LDA	#1
		STA	bank_command_346
		LDA	#sprites_1
		STA	bank_to_344
		LDA	#$12
		STA	bank_from_343
		JSR	bank_switch_128000
		RTS
; End of function exec_b1_c1_128394


; =============== S U B	R O U T	I N E =======================================


exec_b4_c2_1283A7:			
					; sub_128955+BAp ...
		LDA	#2
		STA	bank_command_346
		LDA	#items_spr_4
		STA	bank_to_344
		LDA	#$12
		STA	bank_from_343
		JSR	bank_switch_128000
		RTS
; End of function exec_b4_c2_1283A7


; =============== S U B	R O U T	I N E =======================================


sub_1283BA:				
		LDA	entry_idx_300
		STA	image_id_4A4
		LDA	ppu_unk_byte_302
		STA	image_offset_4A5
		LDA	ppu_unk_byte_303
		STA	ppu_prev_unk_4A6
		LDA	ppu_scroll_x_304
		STA	ppu_prev_scroll_x_unk_4A7
		LDA	ppu_scroll_y_305
		STA	ppu_prev_scroll_y_unk_4A8
		LDA	sprite_type_306
		STA	prev_sprite_type_4A9
		RTS
; End of function sub_1283BA


; =============== S U B	R O U T	I N E =======================================


exec_b2_c2_1283DF:			
		LDA	#2
		STA	bank_command_346
		LDA	#text_2
		STA	bank_to_344
		LDA	#$12
		STA	bank_from_343
		JSR	bank_switch_128000
		RTS
; End of function exec_b2_c2_1283DF


; =============== S U B	R O U T	I N E =======================================


exec_b2_c4_1283F2:			
					; sub_12CEAC+45p ...
		LDA	#4
		STA	bank_command_346
		LDA	#text_2
		STA	bank_to_344
		LDA	#$12
		STA	bank_from_343
		JSR	bank_switch_128000
		RTS
; End of function exec_b2_c4_1283F2


; =============== S U B	R O U T	I N E =======================================


exec_b2_c5_128405:			
		LDA	#5
		STA	bank_command_346
		LDA	#text_2
		STA	bank_to_344
		LDA	#$12
		STA	bank_from_343
		JSR	bank_switch_128000
		RTS
; End of function exec_b2_c5_128405


; =============== S U B	R O U T	I N E =======================================


exec_b0_c3_128418:			
					; sub_128A1A+B1p ...
		LDA	#3
		STA	bank_command_346
		LDA	#code_0
		STA	bank_to_344
		LDA	#$12
		STA	bank_from_343
		JSR	bank_switch_128000
		RTS
; End of function exec_b0_c3_128418


; =============== S U B	R O U T	I N E =======================================


exec_b0_c4_12842B:			
					; sub_12BF99+42p
		LDA	#4
		STA	bank_command_346
		LDA	#code_0
		STA	bank_to_344
		LDA	#$12
		STA	bank_from_343
		JSR	bank_switch_128000
		RTS
; End of function exec_b0_c4_12842B


; =============== S U B	R O U T	I N E =======================================


exec_b0_c5_12843E:			
		LDA	bank_from_343
		PHA
		LDA	#5
		STA	bank_command_346
		LDA	#code_0
		STA	bank_to_344
		LDA	#$12
		STA	bank_from_343
		JSR	bank_switch_128000
		PLA
		STA	bank_from_343
		RTS
; End of function exec_b0_c5_12843E


; =============== S U B	R O U T	I N E =======================================


exec_b0_c6_128459:			
		LDA	bank_from_343
		PHA
		LDA	#6
		STA	bank_command_346
		LDA	#code_0
		STA	bank_to_344
		LDA	#$12
		STA	bank_from_343
		JSR	bank_switch_128000
		PLA
		STA	bank_from_343
		RTS
; End of function exec_b0_c6_128459


; =============== S U B	R O U T	I N E =======================================


exec_b0_c7_128474:			
		LDA	bank_from_343
		PHA
		LDA	#7
		STA	bank_command_346
		LDA	#code_0
		STA	bank_to_344
		LDA	#$12
		STA	bank_from_343
		JSR	bank_switch_128000
		PLA
		STA	bank_from_343
		RTS
; End of function exec_b0_c7_128474


; =============== S U B	R O U T	I N E =======================================


exec_b0_c8_12848F:			
		LDA	bank_from_343
		PHA
		LDA	#8
		STA	bank_command_346
		LDA	#code_0
		STA	bank_to_344
		LDA	#$12
		STA	bank_from_343
		JSR	bank_switch_128000
		PLA
		STA	bank_from_343
		RTS
; End of function exec_b0_c8_12848F


; =============== S U B	R O U T	I N E =======================================


exec_b0_c9_1284AA:			
					; sub_12873A+112p ...
		LDA	bank_from_343
		PHA
		LDA	#9
		STA	bank_command_346
		LDA	#code_0
		STA	bank_to_344
		LDA	#$12
		STA	bank_from_343
		JSR	bank_switch_128000
		PLA
		STA	bank_from_343
		RTS
; End of function exec_b0_c9_1284AA


; =============== S U B	R O U T	I N E =======================================


exec_b0_cA_1284C5:			
					; sub_12873A+10Ap ...
		LDA	bank_from_343
		PHA
		LDA	#$A
		STA	bank_command_346
		LDA	#code_0
		STA	bank_to_344
		LDA	#$12
		STA	bank_from_343
		JSR	bank_switch_128000
		PLA
		STA	bank_from_343
		RTS
; End of function exec_b0_cA_1284C5


; =============== S U B	R O U T	I N E =======================================


exec_b0_cB_1284E0:			
					; sub_12873A+14Ap ...
		LDA	bank_from_343
		PHA
		LDA	#$B
		STA	bank_command_346
		LDA	#code_0
		STA	bank_to_344
		LDA	#$12
		STA	bank_from_343
		JSR	bank_switch_128000
		PLA
		STA	bank_from_343
		RTS
; End of function exec_b0_cB_1284E0


; =============== S U B	R O U T	I N E =======================================


exec_b0_cC_1284FB:			
		LDA	bank_from_343
		PHA
		LDA	#$C
		STA	bank_command_346
		LDA	#code_0
		STA	bank_to_344
		LDA	#$12
		STA	bank_from_343
		JSR	bank_switch_128000
		PLA
		STA	bank_from_343
		RTS
; End of function exec_b0_cC_1284FB


; =============== S U B	R O U T	I N E =======================================


exec_b0_cD_128516:			
		LDA	bank_from_343
		PHA
		LDA	#$D
		STA	bank_command_346
		LDA	#code_0
		STA	bank_to_344
		LDA	#$12
		STA	bank_from_343
		JSR	bank_switch_128000
		PLA
		STA	bank_from_343
		RTS
; End of function exec_b0_cD_128516


; =============== S U B	R O U T	I N E =======================================


sub_128531:				
					; sub_12ED44+Cp ...
		LDA	tilemapTypeUnk_30B
		CMP	#$47 
		BCC	loc_12853B
		BEQ	loc_12853B
		RTS
; ---------------------------------------------------------------------------

loc_12853B:				
					; sub_128531+7j
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
		LDA	apu_pulse_timer1_12861A,X
		STA	_APU_PULSE1_ENV,Y
		LDA	apu_pulse_timer1_12861A.length,X
		STA	_APU_PULSE1_SWEEP,Y
		LDA	apu_pulse_timer1_12861A.envelope,X
		STA	_APU_PULSE1_TIME,Y
		LDA	apu_pulse_timer1_12861A.sweep,X
		STA	_APU_PULSE1_LEN,Y
		RTS
; ---------------------------------------------------------------------------

loc_128571:				
		LDA	stru_12871A,X
		STA	_APU_PULSE1_ENV,Y
		LDA	stru_12871A.length,X
		STA	_APU_PULSE1_SWEEP,Y
		LDA	stru_12871A.envelope,X
		STA	_APU_PULSE1_TIME,Y
		LDA	stru_12871A.sweep,X
		STA	_APU_PULSE1_LEN,Y
		RTS
; End of function sub_128531

; ---------------------------------------------------------------------------
byte_12858A:	.BYTE	2,  2,	2,  8,	8,  2,	2,  8,	8,  8,	8,  2,	2,  2,	2,  2
					
		.BYTE	2,  2,	8,  8,	8,  8,	2,  2,	2,  2,	2,  2,	2,  2,	8,  2
		.BYTE	8,  2,	2,  2,	2,  8,	2,  2,	2,  8,	8,  2,	2,  2,	8,  2
		.BYTE	2,  2,	2,  2,	8,  2,	2,  2,	2,  2,	2,  2,	8,  2,	2,  2
		.BYTE	2,  2,	8,  8,	2,  2,	1,  2
byte_1285D2:	.BYTE	4,  4,	4, $C, $C,  4,	4, $C, $C, $C, $C,  4,	4,  4,	4,  4
					
		.BYTE	4,  4, $C, $C, $C, $C,	4,  4,	4,  4,	4,  4,	4,  4, $C,  4
		.BYTE  $C,  4,	4,  4,	4, $C,	4,  4,	4, $C, $C,  4,	4,  4, $C,  4
		.BYTE	4,  4,	4,  4, $C,  4,	4,  4,	4,  4,	4,  4, $C,  4,	4,  4
		.BYTE	4,  4, $C, $C,	4,  4,	0,  4
apu_pulse_timer1_12861A:pulse_entry <$9F, $BA, $F4, $F1> 
					; sub_128531+2Dr ...
		pulse_entry <$81, $99, $8D, $A>
		pulse_entry <$88, $93, $2E, 0>
		pulse_entry <$1F, $7A, $3A, $96>
		pulse_entry <$4F, $94, $4C, $6C>
		pulse_entry <$DF, $B3, $5A, $20>
		pulse_entry <$49, $93, $1B, $30>
		pulse_entry <$8F, $94, $39, $6C>
		pulse_entry <$DF, $B3, $26, $17>
		pulse_entry <$DF, $78, $49, $94>
		pulse_entry <$4F, $94, $4C, $6C>
		pulse_entry <$9F, $A9, 3, $A1>
		pulse_entry <$5F, $CA, $9C, $98>
		pulse_entry <$DF, $FA, $14, $D1>
		pulse_entry <$9F, $AA, 4, $A2>
		pulse_entry <$9F, $FC, $14, $E9>
		pulse_entry <$DF, $9A, $FB, 9>
		pulse_entry <$9F, $F3, $4F, $A1>
		pulse_entry <$80, $E, $1E, $11>
		pulse_entry <$9F, $1A, $37, $1F>
		pulse_entry <$F, $B6, $F, $10>
		pulse_entry <$9D, $68, 7, $15>
		pulse_entry <$4F, $B4, $33, $F8>
		pulse_entry <$DF, $E1, $4E, $A9>
		pulse_entry <$4F, $F2, $1F, 8>
		pulse_entry <$8F, $F9, $FB, $F9>
		pulse_entry <$9F, $AA, 4, $A1>
		pulse_entry <$4F, $B2, $1A, $C0>
		pulse_entry <$4F, $BB, $33, $E9>
		pulse_entry <$CF, $B3, $5A, $90>
		pulse_entry <$DF, $E4, $42, $1A>
		pulse_entry <$56, $A9, $6A, $B0>
		pulse_entry <0,	0, 8, 0>
		pulse_entry <$81, $99, $8D, $A>
		pulse_entry <$8D, $CA, $EA, $D0>
		pulse_entry <$AB, $C5, $51, $D2>
		pulse_entry <$88, $84, $5F, $30>
		pulse_entry <$8F, $A1, 9, $F0>
		pulse_entry <$88, $93, $2E, 0>
		pulse_entry <$4B, $6F, $FB, $D0>
		pulse_entry <$FF, $AF, 2, $E3>
		pulse_entry <$DF, $E4, $42, $1A>
		pulse_entry <$80, $E, $1E, $11>
		pulse_entry <$4F, $B4, $33, $F8>
		pulse_entry <$DF, $E1, $4E, $A9>
		pulse_entry <$4B, $8C, $CD, $30>
		pulse_entry <$B, $C4, $8D, $30>
		pulse_entry <$4F, $C4, $3F, 8>
		pulse_entry <$4C, $9A, $5C, $B0>
		pulse_entry <$4F, $9A, $2E, 8>
		pulse_entry <$45, $A9, 8, 9>
		pulse_entry <$4A, $9A, $D2, $D0>
		pulse_entry <$D, 0, $8E, $D0>
		pulse_entry <$CC, $8C, $7E, $A9>
		pulse_entry <$8C, $D2, $3C, 8>
		pulse_entry <$49, $BA, $7E, $21>
		pulse_entry <$4C, 0, $6C, $F0>
		pulse_entry <$4C, 0, $4F, $F0>
		pulse_entry <$8D, $AA, $A6, $F1>
		pulse_entry <$1A, $89, $13, 4>
		pulse_entry <0,	0, 8, 0>
		pulse_entry <$81, $99, $8D, $A>
		pulse_entry <$8D, $CA, $EA, $D0>
		pulse_entry <$AB, $C5, $51, $D2>
stru_12871A:	pulse_entry <$88, $84, $5F, $30> 
					; sub_128531+46r ...
		pulse_entry <$88, $93, $2E, 0>
		pulse_entry <$8F, $A1, 9, $F0>
		pulse_entry <$B, $83, $E, $40>
		pulse_entry <$49, $F2, $C4, 8>
		pulse_entry <$9F, $BA, $CC, $20>
		pulse_entry <$8D, $AA, $A6, $F1>
		pulse_entry <$4F, $C3, $2D, 8>

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
		LDA	#0
		STA	byte_54E
		JSR	exec_b0_cC_1284FB
		JMP	locret_128954
; ---------------------------------------------------------------------------

loc_12875A:				
					; sub_12873A+Cj ...
		LDA	byte_46F
		CMP	#$69 
		BEQ	loc_128768
		CMP	#$98 
		BEQ	loc_128768
		JMP	loc_128777
; ---------------------------------------------------------------------------

loc_128768:				
					; sub_12873A+29j
		LDA	entry_idx_300
		CMP	#$63 
		BNE	loc_128774
		LDA	#$FF
		STA	byte_5D5

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
		LDA	#$FF
		STA	byte_5D4

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
		LDA	#$FF
		STA	byte_5D3

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
		LDA	#$FF
		STA	byte_690

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
		LDA	#1
		STA	byte_313
		JSR	exec_b0_c9_1284AA
		LDA	#$FF
		STA	byte_690
		LDA	#0
		STA	cur_obj_idx_unk_43A
		JSR	sub_12BF29
		LDA	#1
		STA	cur_obj_idx_unk_43A
		JSR	sub_12BF29
		LDA	#$80 
		STA	text_idx_35C
		LDA	#1
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		LDA	#2
		STA	tilemapTypeUnk_30B
		LDA	#2
		STA	byte_313
		JSR	exec_b0_cA_1284C5
		LDA	#$FF
		STA	byte_551
		LDA	#$FF
		STA	byte_553

loc_128814:				
					; sub_12873A+92j
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
		LDA	#$FF
		STA	byte_597
		LDA	#8
		STA	tilemapTypeUnk_30B
		LDA	#2
		STA	byte_313
		JSR	exec_b0_cA_1284C5
		LDA	#0
		STA	byte_313
		JSR	exec_b0_c9_1284AA
		LDA	#$40 
		STA	text_idx_35C
		LDA	#1
		STA	char_type_id_35D
		LDA	#$11
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		LDA	#1
		STA	tilemapData_4C
		LDA	#2
		STA	roomUnk1_4D
		LDA	#2
		STA	roomUnk2_4E
		LDA	#1
		STA	tilemap_line_idx_4F
		JSR	exec_b0_cB_1284E0
		LDA	#1
		STA	tilemapData_4C
		LDA	#2
		STA	roomUnk1_4D
		LDA	#8
		STA	roomUnk2_4E
		LDA	#3
		STA	tilemap_line_idx_4F
		JSR	exec_b0_cB_1284E0
		LDA	#2
		STA	cur_obj_idx_unk_43A
		JSR	exec_b0_c3_128418
		LDA	#$51 
		STA	text_idx_35C
		LDA	#1
		STA	char_type_id_35D
		LDA	#$E
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		LDA	#5
		STA	tilemapTypeUnk_30B
		LDA	#1
		STA	byte_313
		JSR	exec_b0_cA_1284C5
		LDA	#0
		STA	byte_6C3
		STA	byte_6C4

set_tyrant_level_1288B6:
		LDA	#$83 
		STA	image_id_4A4
		LDA	#0
		STA	image_offset_4A5
		STA	ppu_prev_unk_4A6
		STA	ppu_prev_scroll_x_unk_4A7
		STA	ppu_prev_scroll_y_unk_4A8
		STA	prev_sprite_type_4A9
		LDA	#$40 
		STA	byte_4AD
		LDA	#$50 
		STA	byte_4AE
		JSR	exec_b0_c2_12A9A9
		LDA	#$3F 
		STA	text_idx_35C
		LDA	#2
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973

loc_1288EB:				
					; sub_12873A+F8j
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
		LDA	#2
		STA	tilemapTypeUnk_30B
		LDA	#1
		STA	byte_313
		JSR	exec_b0_cA_1284C5
		LDA	#1
		STA	tilemapTypeUnk_30B
		LDA	#2
		STA	byte_313
		JSR	exec_b0_cA_1284C5
		LDA	#3
		STA	tilemapTypeUnk_30B
		LDA	#1
		STA	byte_313
		JSR	exec_b0_cA_1284C5
		LDA	#2
		STA	byte_313
		JSR	exec_b0_c9_1284AA
		LDA	#$78 
		STA	text_idx_35C
		LDA	#1
		STA	char_type_id_35D
		LDA	#3
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		LDA	#$FF
		STA	byte_552
		STA	byte_6C5
		LDA	#0
		STA	byte_6C6

loc_128951:				
					; sub_12873A+1C7j
		JMP	locret_128954
; ---------------------------------------------------------------------------

locret_128954:				
					; sub_12873A:loc_128774j ...
		RTS
; End of function sub_12873A


; =============== S U B	R O U T	I N E =======================================


sub_128955:				
					; sub_12C27E+Dp
		JSR	sub_1283BA
		LDA	image_id_4A4
		PHA
		LDA	image_offset_4A5
		PHA
		LDA	ppu_prev_unk_4A6
		PHA
		LDA	ppu_prev_scroll_x_unk_4A7
		PHA
		LDA	ppu_prev_scroll_y_unk_4A8
		PHA
		LDA	prev_sprite_type_4A9
		PHA
		LDA	inv_sprite_idx_31C
		SEC
		SBC	#$2A 
		ASL	A
		TAX
		LDA	byte_129255,X
		STA	byte_475
		LDA	#0
		STA	byte_43F
		STA	byte_472

loc_128986:				
		LDA	#0
		STA	byte_43E
		JSR	sub_12EEAE
		JSR	ppu_reset_ctrl_mask_12F963
		LDA	#$28 
		STA	_PPU_ADDR
		LDA	#0
		STA	_PPU_ADDR
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
		LDA	#1
		STA	byte_341
		LDA	#0
		STA	entry_idx_300
		LDA	#0
		STA	ppu_unk_byte_302
		LDA	#0
		STA	ppu_unk_byte_303
		LDA	#0
		STA	ppu_scroll_x_304
		LDA	#0
		STA	ppu_scroll_y_305
		LDA	#1
		STA	sprite_type_306
		JSR	sub_12D261
		JSR	exec_b0_c6_128459
		LDA	#0
		STA	sprPalIdx_319
		LDA	#4
		STA	byte_31E
		JSR	exec_b0_c7_128474
		LDA	#4
		STA	objectIdx_318
		JSR	exec_b0_c8_12848F
		LDA	ppu_ctrl_31F
		AND	#$FC 
		STA	ppu_ctrl_31F
		JSR	ppu_update_ctrl_mask_12F956
		JSR	exec_b0_cD_128516
		JSR	sub_12EDF5
		LDA	#0
		STA	inv_itemPrev_idx_31D
		LDA	#$B
		STA	tilemap_size_307
		LDA	#4
		STA	ppu_unk_byte_309
		LDA	#0
		STA	byte_36E
		JSR	exec_b4_c2_1283A7
		JSR	sub_128B0F
		LDA	#0
		STA	count_unk_465
; End of function sub_128955


; =============== S U B	R O U T	I N E =======================================


sub_128A1A:
		STA	count_unk_466
		STA	count_unk_466

loc_128A20:				
					; sub_128A1A+7Fj ...
		JSR	sub_128FC1
		LDA	is_game_finished_561
		CMP	#0
		BEQ	game_not_finished_128A43
		PLA
		STA	prev_sprite_type_4A9
		PLA
		STA	ppu_prev_scroll_y_unk_4A8
		PLA
		STA	ppu_prev_scroll_x_unk_4A7
		PLA
		STA	ppu_prev_unk_4A6
		PLA
		STA	image_offset_4A5
		PLA
		STA	image_id_4A4
		RTS
; ---------------------------------------------------------------------------

game_not_finished_128A43:		
		JSR	sub_128B43
		JSR	sub_128CC0
		JSR	sub_128D20
		JSR	sub_128E24
		JSR	sub_128EC2
		JSR	sub_129019
		JSR	wait_for_count350_zero_12F770
		LDA	input_pressed_34A
		CMP	#$20 
		BNE	loc_128A72
		JSR	sub_12ED3B
		LDA	byte_472
		EOR	#1
		STA	byte_472
		LDA	#0
		STA	byte_440
		JMP	loc_128A20
; ---------------------------------------------------------------------------

loc_128A72:				
		CMP	#$10
		BNE	loc_128A87
		JSR	sub_12ED44
		LDA	inv_sprite_idx_31C
		PHA
		JSR	sub_12D4C6
		PLA
		STA	inv_sprite_idx_31C
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
		PLA
		STA	prev_sprite_type_4A9
		PLA
		STA	ppu_prev_scroll_y_unk_4A8
		PLA
		STA	ppu_prev_scroll_x_unk_4A7
		PLA
		STA	ppu_prev_unk_4A6
		PLA
		STA	image_offset_4A5
		PLA
		STA	image_id_4A4
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
		LDA	#$FF
		STA	byte_6C9

loc_128ADA:				
		LDA	image_id_4A4
		CMP	#$9A 
		BNE	loc_128AE6
		LDA	#$88 
		STA	is_game_finished_561

loc_128AE6:				
		JMP	loc_128B01
; ---------------------------------------------------------------------------

loc_128AE9:				
		PLA
		STA	prev_sprite_type_4A9
		PLA
		STA	ppu_prev_scroll_y_unk_4A8
		PLA
		STA	ppu_prev_scroll_x_unk_4A7
		PLA
		STA	ppu_prev_unk_4A6
		PLA
		STA	image_offset_4A5
		PLA
		STA	image_id_4A4

loc_128B01:				
					; sub_128A1A+ACj ...
		LDA	#$FF
		STA	map_show_43B
		JSR	exec_b0_c2_12A9A9
		LDA	#0
		STA	map_show_43B
		RTS
; End of function sub_128A1A


; =============== S U B	R O U T	I N E =======================================


sub_128B0F:				
		LDA	#$80 
		STA	byte_366
		LDA	#0
		STA	byte_367
		LDA	ppu_scroll_x_304
		STA	byte_36A
		LDA	#0
		STA	byte_36B
		LDA	#0
		STA	sprite_secondByte_31B
		STA	byte_31A
		LDA	#4
		STA	objectIdx_318
		LDA	#$21 
		STA	objMapIdx_316
		LDX	objMapIdx_316
		LDA	byte_128F59,X
		STA	byte_317
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
		LDA	#8
		STA	byte_31A
		LDA	#8
		STA	tilemapWidth_308
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
		LDA	#$80 
		STA	byte_366
		LDA	#0
		STA	byte_367
		LDA	#0
		STA	sprite_secondByte_31B
		LDA	#$10
		STA	byte_31A
		LDA	#4
		STA	objectIdx_318
		LDA	#$26 
		STA	objMapIdx_316
		LDX	objMapIdx_316
		LDA	byte_128F59,X
		STA	byte_317
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
		LDA	#$80 
		STA	byte_366
		LDA	#0
		STA	byte_367
		LDA	#0
		STA	sprite_secondByte_31B
		LDA	#$18
		STA	byte_31A
		LDA	#4
		STA	objectIdx_318
		LDA	#$27 
		STA	objMapIdx_316
		LDX	objMapIdx_316
		LDA	byte_128F59,X
		STA	byte_317
		JSR	exec_b1_c1_128394
		RTS
; ---------------------------------------------------------------------------

loc_128BFB:				
		LDA	#$80 
		STA	byte_36A
		LDA	#0
		STA	byte_36B
		LDA	#$80 
		STA	byte_366
		LDA	#0
		STA	byte_367
		LDA	#0
		STA	sprite_secondByte_31B
		LDA	#8
		STA	byte_31A
		LDA	#4
		STA	objectIdx_318
		LDA	#$28 
		STA	objMapIdx_316
		LDX	objMapIdx_316
		LDA	byte_128F59,X
		STA	byte_317
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
		LDA	#$80 
		STA	byte_366
		LDA	#0
		STA	byte_367
		LDA	#0
		STA	sprite_secondByte_31B
		LDA	#$10
		STA	byte_31A
		LDA	#4
		STA	objectIdx_318
		LDA	#$26 
		STA	objMapIdx_316
		LDX	objMapIdx_316
		LDA	byte_128F59,X
		STA	byte_317
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
		LDA	#$80 
		STA	byte_366
		LDA	#0
		STA	byte_367
		LDA	#0
		STA	sprite_secondByte_31B
		LDA	#$18
		STA	byte_31A
		LDA	#4
		STA	objectIdx_318
		LDA	#$27 
		STA	objMapIdx_316
		LDX	objMapIdx_316
		LDA	byte_128F59,X
		STA	byte_317
		JSR	exec_b1_c1_128394
		RTS
; End of function sub_128B43


; =============== S U B	R O U T	I N E =======================================


sub_128CC0:				
		LDA	byte_543
		CMP	#0
		BNE	loc_128CD5
		LDA	#$38 
		STA	byte_31A
		LDA	#$40 
		STA	tilemapWidth_308
		JSR	sub_12D26B
		RTS
; ---------------------------------------------------------------------------

loc_128CD5:				
		LDA	#$A0 
		STA	byte_366
		LDA	#0
		STA	byte_367
		LDA	ppu_scroll_x_304
		STA	byte_36A
		LDA	#0
		STA	byte_36B
		LDA	byte_36A
		CLC
		ADC	#$C0 
		STA	byte_36A
		LDA	byte_36B
		ADC	#0
		STA	byte_36B
		LDA	#0
		STA	sprite_secondByte_31B
		LDA	#$38 
		STA	byte_31A
		LDA	#4
		STA	objectIdx_318
		LDA	#$1A
		CLC
		ADC	byte_543
		STA	objMapIdx_316
		LDX	objMapIdx_316
		LDA	byte_128F59,X
		STA	byte_317
		JSR	exec_b1_c1_128394
		RTS
; End of function sub_128CC0


; =============== S U B	R O U T	I N E =======================================


sub_128D20:				
		LDA	byte_543
		CMP	#0
		BNE	loc_128D35
		LDA	#$78 
		STA	byte_31A
		LDA	#8
		STA	tilemapWidth_308
		JSR	sub_12D26B
		RTS
; ---------------------------------------------------------------------------

loc_128D35:				
		LDX	byte_544
		LDA	unk_53B,X
		STA	tilemapTypeUnk_30B
		JSR	sub_128F1B
		LDA	byte_543
		CMP	#1
		BNE	loc_128D8F
		LDA	#$33 
		STA	objMapIdx_316
		LDA	#$C0 
		STA	byte_366
		LDA	#0
		STA	byte_367
		LDA	ppu_scroll_x_304
		STA	byte_36A
		LDA	#0
		STA	byte_36B
		LDA	byte_36A
		CLC
		ADC	#$C8 
		STA	byte_36A
		LDA	byte_36B
		ADC	#0
		STA	byte_36B
		LDA	#0
		STA	sprite_secondByte_31B
		LDA	#$78 
		STA	byte_31A
		LDA	#4
		STA	objectIdx_318
		LDX	objMapIdx_316
		LDA	byte_128F59,X
		STA	byte_317

loc_128D8B:
		JSR	exec_b1_c1_128394
		RTS
; ---------------------------------------------------------------------------

loc_128D8F:				
		LDA	byte_355
		CLC
		ADC	#$29 
		STA	objMapIdx_316
		LDA	#$C0 
		STA	byte_366
		LDA	#0
		STA	byte_367
		LDA	ppu_scroll_x_304
		STA	byte_36A
		LDA	#0
		STA	byte_36B
		LDA	byte_36A
		CLC
		ADC	#$C8 
		STA	byte_36A
		LDA	byte_36B
		ADC	#0
		STA	byte_36B
		LDA	#0
		STA	sprite_secondByte_31B
		LDA	#$78 
		STA	byte_31A
		LDA	#4
		STA	objectIdx_318
		LDX	objMapIdx_316
		LDA	byte_128F59,X
		STA	byte_317
		JSR	exec_b1_c1_128394
		LDA	byte_354
		CLC
		ADC	#$29 
		STA	objMapIdx_316
		LDA	#$C0 
		STA	byte_366
		LDA	#0
		STA	byte_367
		LDA	ppu_scroll_x_304
		STA	byte_36A
		LDA	#0
		STA	byte_36B
		LDA	byte_36A
		CLC
		ADC	#$D0 
		STA	byte_36A
		LDA	byte_36B
		ADC	#0
		STA	byte_36B
		LDA	#0
		STA	sprite_secondByte_31B
		LDA	#$7C 
		STA	byte_31A
		LDA	#4
		STA	objectIdx_318
		LDX	objMapIdx_316
		LDA	byte_128F59,X
		STA	byte_317
		JSR	exec_b1_c1_128394
		RTS
; End of function sub_128D20


; =============== S U B	R O U T	I N E =======================================


sub_128E24:				
		LDA	#$A0 
		STA	byte_366
		LDA	#0
		STA	byte_367
		LDA	ppu_scroll_x_304
		STA	byte_36A
		LDA	#0
		STA	byte_36B
		LDA	byte_36A
		CLC
		ADC	#$20 
		STA	byte_36A
		LDA	byte_36B
		ADC	#0
		STA	byte_36B
		LDA	#0
		STA	sprite_secondByte_31B
		LDA	#$88 
		STA	byte_31A
		LDA	#0
		STA	objMapIdx_316
		LDA	byte_549
		CMP	#$55 
		BCC	loc_128E7D
		CMP	#$AA 
		BCC	loc_128E6C
		LDA	#0
		STA	byte_54B
		JMP	loc_128E8B
; ---------------------------------------------------------------------------

loc_128E6C:				
		LDA	objMapIdx_316
		CLC
		ADC	#7
		STA	objMapIdx_316
		LDA	#1
		STA	byte_54B
		JMP	loc_128E8B
; ---------------------------------------------------------------------------

loc_128E7D:				
		LDA	objMapIdx_316
		CLC
		ADC	#$E
		STA	objMapIdx_316
		LDA	#2
		STA	byte_54B

loc_128E8B:				
					; sub_128E24+56j
		LDA	count_unk_465
		CMP	#$A
		BCC	loc_128EA6
		LDA	#0
		STA	count_unk_465
		LDA	byte_54C
		CMP	#6
		BCC	loc_128EA3
		LDA	#$FF
		STA	byte_54C

loc_128EA3:				
		INC	byte_54C

loc_128EA6:				
		LDA	objMapIdx_316
		CLC
		ADC	byte_54C
		STA	objMapIdx_316
		LDA	#4
		STA	objectIdx_318
		LDX	objMapIdx_316
		LDA	byte_128F59,X
		STA	byte_317
		JSR	exec_b1_c1_128394
		RTS
; End of function sub_128E24


; =============== S U B	R O U T	I N E =======================================


sub_128EC2:				
		LDA	#$B8 
		STA	byte_366
		LDA	#0
		STA	byte_367
		LDA	ppu_scroll_x_304
		STA	byte_36A
		LDA	#0
		STA	byte_36B
		LDA	byte_36A
		CLC
		ADC	#$20 
		STA	byte_36A
		LDA	byte_36B
		ADC	#0
		STA	byte_36B
		LDA	#0
		STA	sprite_secondByte_31B
		LDA	#$B8 
		STA	byte_31A
		LDA	#4
		STA	objectIdx_318
		LDA	#$15
		CLC
		ADC	byte_54B
		STA	objMapIdx_316
		LDA	byte_54A
		BEQ	loc_128F0E
		LDA	objMapIdx_316
		CLC
		ADC	#3
		STA	objMapIdx_316

loc_128F0E:				
		LDX	objMapIdx_316
		LDA	byte_128F59,X
		STA	byte_317
		JSR	exec_b1_c1_128394
		RTS
; End of function sub_128EC2


; =============== S U B	R O U T	I N E =======================================


sub_128F1B:				
		LDA	#0
		STA	byte_354
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
					; sub_128F1B+34j
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
		LDA	tilemapTypeUnk_30B
		STA	byte_354
		RTS
; End of function sub_128F1B

; ---------------------------------------------------------------------------
byte_128F59:	.BYTE	0,  0,	0,  0,	0,  0,	0,  1,	1,  1,	1,  1,	1,  1,	2,  2
					
					; sub_128B43+5Dr ...
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
		LDA	#0
		STA	count_unk_467
		LDA	#0
		CLC
		ADC	byte_43F
		STA	inv_itemPrev_idx_31D
		LDA	#$B
		STA	tilemap_size_307
		LDA	#4
		STA	ppu_unk_byte_309
		LDA	#0
		STA	byte_36E
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
		LDA	byte_129005,Y
		STA	byte_43F
		JSR	sub_129155

locret_129004:				
					; sub_128FC1+38j
		RTS
; End of function sub_128FC1

; ---------------------------------------------------------------------------
byte_129005:	.BYTE	3		
byte_129006:	.BYTE	6,  1,	4,  1,	3,  1,	4,  1,	4,  1,	4,  1,	4,  1,	4,  2
					
					; sub_128B43+6Er ...
		.BYTE	5,  1,	6

; =============== S U B	R O U T	I N E =======================================


sub_129019:				
		LDA	byte_440
		BNE	loc_12902C
		LDA	#$C8 
		STA	byte_31A
		LDA	#$38 
		STA	tilemapWidth_308
		JSR	sub_12D26B
		RTS
; ---------------------------------------------------------------------------

loc_12902C:				
		LDA	#$40 
		STA	byte_366
		LDA	#0
		STA	byte_367
		LDA	byte_441
		SEC
		SBC	#4
		STA	byte_36A
		LDA	#0
		SBC	#0
		STA	byte_36B
		LDA	#0
		STA	sprite_secondByte_31B
		LDA	#$C8 
		STA	byte_31A
		LDA	#4
		STA	objectIdx_318
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
		LDA	#4
		STA	byte_478
		LDX	objMapIdx_316
		LDA	byte_128F59,X
		STA	byte_317
		JSR	exec_b1_c1_128394

loc_12908C:				
		LDA	count_unk_466
		CMP	#5
		BCC	locret_1290A8
		LDA	#0
		STA	count_unk_466
		INC	byte_443
		LDA	byte_443
		CMP	byte_478
		BCC	locret_1290A8
		LDA	#0
		STA	byte_440

locret_1290A8:				
					; sub_129019+88j
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
		LDA	#0
		STA	sprite_length_30F
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
					; sub_1290C3+Fj
		LDA	#0
		STA	byte_443
		LDA	#$FF
		STA	byte_440
		LDA	ppu_scroll_x_304
		CLC
		ADC	byte_203
		STA	byte_441
		LDA	#0
		STA	byte_476
		LDA	byte_441
		CMP	byte_473
		BCC	loc_129117
		CMP	byte_474
		BEQ	loc_129117
		BCS	loc_129117
		LDA	#$FF
		STA	byte_476

loc_129117:				
					; sub_1290C3+4Bj ...
		LDA	byte_476
		BNE	loc_129120
		JSR	sub_12ED29
		RTS
; ---------------------------------------------------------------------------

loc_129120:				
		JSR	sub_12ED20
		LDA	byte_472
		BEQ	loc_12912E
		LDA	#$FE 
		STA	sprite_length_30F
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
		LDA	#0
		STA	byte_475

loc_129148:				
		LDA	byte_475
		CMP	#0
		BNE	locret_129154
		LDA	#$FF
		STA	sprite_length_30F

locret_129154:				
		RTS
; End of function sub_1290C3


; =============== S U B	R O U T	I N E =======================================


sub_129155:				
		LDA	#$10
		STA	scroll_offset_y_47A
		LDA	#0
		STA	is_game_finished_561
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
		LDA	#0
		STA	byte_549

loc_129179:				
		LDA	byte_549
		CMP	#0
		BNE	locret_129185
		LDA	#$FF
		STA	is_game_finished_561

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
		LDA	byte_129255,X
		STA	byte_477
		RTS
; End of function sub_129186


; =============== S U B	R O U T	I N E =======================================


sub_129196:				
		LDA	#0
		STA	byte_477
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
		LDA	#0
		STA	tilemapTypeUnk_30B

loc_1291C8:				
					; sub_129196+2Aj
		LDA	#$14
		SEC
		SBC	tilemapTypeUnk_30B
		STA	byte_477
		LDA	byte_301
		CMP	#$9A 
		BNE	loc_1291DE
		LDA	byte_543
		STA	byte_477

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
					; sub_1291F5+33j ...
		RTS
; End of function sub_1291F5

; ---------------------------------------------------------------------------
byte_129255:	.BYTE $78,$1E		
					; sub_129186:loc_12918Fr
		.BYTE $A0,$28
		.BYTE $A0,$1E
		.BYTE $FF,$3C
		.BYTE $C8,$28
		.BYTE $A0,$28
		.BYTE $78,$1E
		.BYTE $78,$1E
		.BYTE $A0,$28
		.BYTE $C8,$32
		.WORD byte_1293AB
		.WORD byte_1293AC
		.WORD byte_1293AD
		.WORD byte_1293AE
		.WORD byte_1293AF
		.WORD byte_1293B0
		.WORD byte_1293B1
		.WORD byte_1293B2
		.WORD byte_1293B3
		.WORD byte_1293B4
		.WORD byte_1293B5
		.WORD byte_1293B6
		.WORD byte_1293B7
		.WORD byte_1293B8
		.WORD byte_1293B9
		.WORD byte_1293BA
		.WORD byte_1293BB
		.WORD byte_1293BC
		.WORD byte_1293BD
		.WORD byte_1293BE
		.WORD byte_1293BF
		.WORD byte_1293C0
		.WORD byte_1293C1
		.WORD byte_1293CA
		.WORD byte_1293D3
		.WORD byte_1293D6
		.WORD byte_1293D7
		.WORD byte_1293DA
		.WORD byte_1293DF
		.WORD byte_1293E6
		.WORD byte_1293EB
		.WORD byte_129400
		.WORD byte_129405
		.WORD byte_12940A
		.WORD byte_12940F
		.WORD byte_129414
		.WORD byte_129417
		.WORD byte_12941C
		.WORD byte_129425
		.WORD byte_129428
		.WORD byte_12942D
		.WORD byte_129430
		.WORD byte_129431
		.WORD byte_129434
		.WORD byte_129439
		.WORD byte_12943E
		.WORD byte_129445
		.WORD byte_12944A
		.WORD byte_12944F
		.WORD byte_129452
		.WORD byte_129453
		.WORD byte_12945C
		.WORD byte_129461
		.WORD byte_129468
		.WORD byte_129469
		.WORD byte_129470
		.WORD byte_129475
		.WORD byte_12947E
		.WORD byte_12947F
		.WORD byte_12948A
		.WORD byte_129495
		.WORD byte_12949E
		.WORD byte_1294A1
		.WORD byte_1294A4
		.WORD byte_1294A5
		.WORD byte_1294AC
		.WORD byte_1294B1
		.WORD byte_1294B8
		.WORD byte_1294B9
		.WORD byte_1294BC
		.WORD byte_1294C1
		.WORD byte_1294CA
		.WORD byte_1294CF
		.WORD byte_1294D4
		.WORD byte_1294D5
		.WORD byte_1294DA
		.WORD byte_1294E1
		.WORD byte_1294E6
		.WORD byte_1294E9
		.WORD byte_1294FA
		.WORD byte_1294FB
		.WORD byte_129500
		.WORD byte_12950D
		.WORD byte_129518
		.WORD byte_12951B
		.WORD byte_12951E
		.WORD byte_129527
		.WORD byte_12952C
		.WORD byte_129531
		.WORD byte_12953A
		.WORD byte_129541
		.WORD byte_129548
		.WORD byte_129551
		.WORD byte_129556
		.WORD byte_129565
		.WORD byte_12956A
		.WORD byte_129573
		.WORD byte_129578
		.WORD byte_129583
		.WORD byte_129588
		.WORD byte_129591
		.WORD byte_129594
		.WORD byte_1295A1
		.WORD byte_1295A4
		.WORD byte_1295A9
		.WORD byte_1295AE
		.WORD byte_1295AF
		.WORD byte_1295BC
		.WORD byte_1295C5
		.WORD byte_1295C8
		.WORD byte_1295CD
		.WORD byte_1295D8
		.WORD byte_1295DF
		.WORD byte_1295E6
		.WORD byte_1295E9
		.WORD byte_1295F6
		.WORD byte_1295FB
		.WORD byte_129604
		.WORD byte_12960D
		.WORD byte_129616
		.WORD byte_129623
		.WORD byte_129626
		.WORD byte_129629
		.WORD byte_12962A
		.WORD byte_12962B
		.WORD byte_129632
		.WORD byte_129637
		.WORD byte_129640
		.WORD byte_129647
		.WORD byte_129648
		.WORD byte_129649
		.WORD byte_129650
		.WORD byte_129651
		.WORD byte_129652
		.WORD byte_12965B
		.WORD byte_12965C
		.WORD byte_129665
		.WORD byte_129666
		.WORD byte_129669
		.WORD byte_12966E
		.WORD byte_129673
		.WORD byte_129674
		.WORD byte_12967B
		.WORD byte_12967C
		.WORD byte_129687
		.WORD byte_12968A
		.WORD byte_12968F
		.WORD byte_129696
		.WORD byte_12969B
		.WORD byte_1296A4
		.WORD byte_1296A5
		.WORD byte_1296A8
		.WORD byte_1296AF
		.WORD byte_1296B2
		.WORD byte_1296B3
		.WORD byte_1296BC
		.WORD byte_1296BF
		.WORD byte_1296C4
		.WORD byte_1296C5
		.WORD byte_1296C6
		.WORD byte_1296C7
byte_1293AB:	.BYTE 0			
byte_1293AC:	.BYTE 0			
byte_1293AD:	.BYTE 0			
byte_1293AE:	.BYTE 0			
byte_1293AF:	.BYTE 0			
byte_1293B0:	.BYTE 0			
byte_1293B1:	.BYTE 0			
byte_1293B2:	.BYTE 0			
byte_1293B3:	.BYTE 0			
byte_1293B4:	.BYTE 0			
byte_1293B5:	.BYTE 0			
byte_1293B6:	.BYTE 0			
byte_1293B7:	.BYTE 0			
byte_1293B8:	.BYTE 0			
byte_1293B9:	.BYTE 0			
byte_1293BA:	.BYTE 0			
byte_1293BB:	.BYTE 0			
byte_1293BC:	.BYTE 0			
byte_1293BD:	.BYTE 0			
byte_1293BE:	.BYTE 0			
byte_1293BF:	.BYTE 0			
byte_1293C0:	.BYTE 0			
byte_1293C1:	.BYTE	4,$C8,$96,$D5,$96,$E2,$96,$EF,$96 
byte_1293CA:	.BYTE	4,$FC,$96,  9,$97,$16,$97,$23,$97 
byte_1293D3:	.BYTE	1,$30,$97	
byte_1293D6:	.BYTE	0		
byte_1293D7:	.BYTE	1,$3D,$97	
byte_1293DA:	.BYTE	2,$4A,$97,$57,$97 
byte_1293DF:	.BYTE	3,$64,$97,$71,$97,$7E,$97 
byte_1293E6:	.BYTE	2,$8B,$97,$98,$97 
byte_1293EB:	.BYTE  $A,$A5,$97,$B2,$97,$BF,$97,$CC,$97,$D9,$97,$E6,$97,$F3,$97,  0
					
		.BYTE $98, $D,$98,$1A,$98
byte_129400:	.BYTE	2,$27,$98,$34,$98 
byte_129405:	.BYTE	2,$41,$98,$4E,$98 
byte_12940A:	.BYTE	2,$5B,$98,$68,$98 
byte_12940F:	.BYTE	2,$75,$98,$82,$98 
byte_129414:	.BYTE	1,$8F,$98	
byte_129417:	.BYTE	2,$9C,$98,$A9,$98 
byte_12941C:	.BYTE	4,$B6,$98,$C3,$98,$D0,$98,$DD,$98 
byte_129425:	.BYTE	1,$EA,$98	
byte_129428:	.BYTE	2,$F7,$98,  4,$99 
byte_12942D:	.BYTE	1,$11,$99	
byte_129430:	.BYTE	0		
byte_129431:	.BYTE	1,$1E,$99	
byte_129434:	.BYTE	2,$2D,$99,$3A,$99 
byte_129439:	.BYTE	2,$47,$99,$54,$99 
byte_12943E:	.BYTE	3,$61,$99,$6E,$99,$7B,$99 
byte_129445:	.BYTE	2,$88,$99,$95,$99 
byte_12944A:	.BYTE	2,$A2,$99,$AF,$99 
byte_12944F:	.BYTE	1,$BC,$99	
byte_129452:	.BYTE	0		
byte_129453:	.BYTE	4,$C9,$99,$D6,$99,$E3,$99,$F0,$99 
byte_12945C:	.BYTE	2,$FD,$99, $A,$9A 
byte_129461:	.BYTE	3,$17,$9A,$24,$9A,$31,$9A 
byte_129468:	.BYTE	0		
byte_129469:	.BYTE	3,$3E,$9A,$4B,$9A,$58,$9A 
byte_129470:	.BYTE	2,$65,$9A,$72,$9A 
byte_129475:	.BYTE	4,$7F,$9A,$8C,$9A,$99,$9A,$A6,$9A 
byte_12947E:	.BYTE	0		
byte_12947F:	.BYTE	5,$AD,$9A,$BA,$9A,$C7,$9A,$D4,$9A,$E1,$9A 
byte_12948A:	.BYTE	5,$EE,$9A,$FB,$9A,  8,$9B,$15,$9B,$22,$9B 
byte_129495:	.BYTE	4,$2F,$9B,$3C,$9B,$49,$9B,$50,$9B 
byte_12949E:	.BYTE	1,$5D,$9B	
byte_1294A1:	.BYTE	1,$64,$9B	
byte_1294A4:	.BYTE	0		
byte_1294A5:	.BYTE	3,$71,$9B,$7E,$9B,$8B,$9B 
byte_1294AC:	.BYTE	2,$98,$9B,$A5,$9B 
byte_1294B1:	.BYTE	3,$B2,$9B,$B9,$9B,$C6,$9B 
byte_1294B8:	.BYTE	0		
byte_1294B9:	.BYTE	1,$D3,$9B	
byte_1294BC:	.BYTE	2,$DA,$9B,$E7,$9B 
byte_1294C1:	.BYTE	4,$F4,$9B,  3,$9C,$16,$9C,$29,$9C 
byte_1294CA:	.BYTE	2,$38,$9C,$45,$9C 
byte_1294CF:	.BYTE	2,$52,$9C,$5F,$9C 
byte_1294D4:	.BYTE	0		
byte_1294D5:	.BYTE	2,$6C,$9C,$79,$9C 
byte_1294DA:	.BYTE	3,$86,$9C,$93,$9C,$A0,$9C 
byte_1294E1:	.BYTE	2,$AD,$9C,$BA,$9C 
byte_1294E6:	.BYTE	1,$C7,$9C	
byte_1294E9:	.BYTE	8,$D4,$9C,$E1,$9C,$EE,$9C,$FB,$9C,  8,$9D,$15,$9D,$22,$9D,$2F
					
		.BYTE $9D
byte_1294FA:	.BYTE	0		
byte_1294FB:	.BYTE	2,$3C,$9D,$49,$9D 
byte_129500:	.BYTE	6,$56,$9D,$63,$9D,$70,$9D,$7D,$9D,$8A,$9D,$97,$9D
					
byte_12950D:	.BYTE	5,$A4,$9D,$B1,$9D,$BE,$9D,$CB,$9D,$D8,$9D 
byte_129518:	.BYTE	1,$E5,$9D	
byte_12951B:	.BYTE	1,$F2,$9D	
byte_12951E:	.BYTE	4,$FF,$9D, $C,$9E,$19,$9E,$26,$9E 
byte_129527:	.BYTE	2,$33,$9E,$40,$9E 
byte_12952C:	.BYTE	2,$4D,$9E,$5A,$9E 
byte_129531:	.BYTE	4,$67,$9E,$74,$9E,$81,$9E,$8E,$9E 
byte_12953A:	.BYTE	3,$9B,$9E,$A2,$9E,$A9,$9E 
byte_129541:	.BYTE	3,$B0,$9E,$BD,$9E,$CA,$9E 
byte_129548:	.BYTE	4,$D7,$9E,$E4,$9E,$F1,$9E,$FE,$9E 
byte_129551:	.BYTE	2, $B,$9F,$1E,$9F 
byte_129556:	.BYTE	7,$25,$9F,$32,$9F,$3F,$9F,$4C,$9F,$59,$9F,$60,$9F,$6D,$9F
					
byte_129565:	.BYTE	2,$7A,$9F,$87,$9F 
byte_12956A:	.BYTE	4,$94,$9F,$A1,$9F,$AE,$9F,$BB,$9F 
byte_129573:	.BYTE	2,$C8,$9F,$D5,$9F 
byte_129578:	.BYTE	5,$E2,$9F,$EF,$9F,$FC,$9F,  9,$A0,$16,$A0 
byte_129583:	.BYTE	2,$23,$A0,$30,$A0 
byte_129588:	.BYTE	4,$3D,$A0,$4A,$A0,$57,$A0,$64,$A0 
byte_129591:	.BYTE	1,$71,$A0	
byte_129594:	.BYTE	6,$7E,$A0,$85,$A0,$92,$A0,$9F,$A0,$AC,$A0,$B9,$A0
					
byte_1295A1:	.BYTE	1,$C6,$A0	
byte_1295A4:	.BYTE	2,$D3,$A0,$E0,$A0 
byte_1295A9:	.BYTE	2,$ED,$A0,$FA,$A0 
byte_1295AE:	.BYTE	0		
byte_1295AF:	.BYTE	6,  7,$A1, $E,$A1,$15,$A1,$1C,$A1,$29,$A1,$36,$A1
					
byte_1295BC:	.BYTE	4,$43,$A1,$4A,$A1,$51,$A1,$58,$A1 
byte_1295C5:	.BYTE	1,$5F,$A1	
byte_1295C8:	.BYTE	2,$6C,$A1,$73,$A1 
byte_1295CD:	.BYTE	5,$7A,$A1,$87,$A1,$94,$A1,$A1,$A1,$AE,$A1 
byte_1295D8:	.BYTE	3,$BB,$A1,$C8,$A1,$D5,$A1 
byte_1295DF:	.BYTE	3,$E2,$A1,$EF,$A1,$FC,$A1 
byte_1295E6:	.BYTE	1,  9,$A2	
byte_1295E9:	.BYTE	6,$16,$A2,$23,$A2,$30,$A2,$3D,$A2,$4A,$A2,$57,$A2
					
byte_1295F6:	.BYTE	2,$64,$A2,$71,$A2 
byte_1295FB:	.BYTE	4,$7E,$A2,$8B,$A2,$98,$A2,$A5,$A2 
byte_129604:	.BYTE	4,$B2,$A2,$BF,$A2,$CC,$A2,$D9,$A2 
byte_12960D:	.BYTE	4,$E6,$A2,$ED,$A2,$FA,$A2,  7,$A3 
byte_129616:	.BYTE	6,$14,$A3,$21,$A3,$2E,$A3,$3B,$A3,$48,$A3,$55,$A3
					
byte_129623:	.BYTE	1,$62,$A3	
byte_129626:	.BYTE	1,$6F,$A3	
byte_129629:	.BYTE	0		
byte_12962A:	.BYTE	0		
byte_12962B:	.BYTE	3,$7C,$A3,$89,$A3,$96,$A3 
byte_129632:	.BYTE	2,$9D,$A3,$A4,$A3 
byte_129637:	.BYTE	4,$AB,$A3,$B8,$A3,$C5,$A3,$D2,$A3 
byte_129640:	.BYTE	3,$DF,$A3,$EC,$A3,$F9,$A3 
byte_129647:	.BYTE	0		
byte_129648:	.BYTE	0		
byte_129649:	.BYTE	3,  6,$A4,$13,$A4,$20,$A4 
byte_129650:	.BYTE	0		
byte_129651:	.BYTE	0		
byte_129652:	.BYTE	4,$2D,$A4,$3A,$A4,$47,$A4,$54,$A4 
byte_12965B:	.BYTE	0		
byte_12965C:	.BYTE	4,$61,$A4,$6E,$A4,$7B,$A4,$88,$A4 
byte_129665:	.BYTE	0		
byte_129666:	.BYTE	1,$95,$A4	
byte_129669:	.BYTE	2,$A2,$A4,$AF,$A4 
byte_12966E:	.BYTE	2,$B6,$A4,$BD,$A4 
byte_129673:	.BYTE	0		
byte_129674:	.BYTE	3,$CA,$A4,$D1,$A4,$D8,$A4 
byte_12967B:	.BYTE	0		
byte_12967C:	.BYTE	5,$DF,$A4,$EC,$A4,$F9,$A4,  6,$A5,$13,$A5 
byte_129687:	.BYTE	1,$20,$A5	
byte_12968A:	.BYTE	2,$2D,$A5,$3A,$A5 
byte_12968F:	.BYTE	3,$47,$A5,$54,$A5,$61,$A5 
byte_129696:	.BYTE	2,$6E,$A5,$81,$A5 
byte_12969B:	.BYTE	4,$88,$A5,$8F,$A5,$9C,$A5,$A9,$A5 
byte_1296A4:	.BYTE	0		
byte_1296A5:	.BYTE	1,$B6,$A5	
byte_1296A8:	.BYTE	3,$C3,$A5,$D0,$A5,$DD,$A5 
byte_1296AF:	.BYTE	1,$EA,$A5	
byte_1296B2:	.BYTE	0		
byte_1296B3:	.BYTE	4,$F7,$A5,  4,$A6,$11,$A6,$1E,$A6 
byte_1296BC:	.BYTE	1,$25,$A6	
byte_1296BF:	.BYTE	2,$32,$A6,$39,$A6 
byte_1296C4:	.BYTE	0		
byte_1296C5:	.BYTE	0		
byte_1296C6:	.BYTE	0		
byte_1296C7:	.BYTE 0			
		.BYTE $D0,  0,$20,  1,	7,  0,	1,$D1,$96, $B,	0,$FF,$FF,$20,	1,$30
		.BYTE	1,  7,	1,  1,$DE,$96, $E,  0,$FF,$FF,$60,  0,$C0,  0,	7,  0
		.BYTE	1,$EB,$96, $C,	0,$FF,$FF,$B0,	0,$80,	0,  6,$1A,  1,$F8,$96
		.BYTE $52,  0,$FF,$FF,$70,  0,$30,  0,	6,$1C,	1,  5,$97,$10,	0,$FF
		.BYTE $FF,$30,	0,$80,	0,  7,	0,  1,$12,$97, $D,  0,$FF,$FF,$78,  0
		.BYTE $30,  0,	6,$1D,	1,$1F,$97,$11,	0,$FF,$FF,$D0,	0,$50,	0,  6
		.BYTE $23,  1,$2C,$97,$12,  0,$FF,$FF,$B0,  0,$90,  0,	2,  0,	1,$39
		.BYTE $97,$14,	0,$FF,$FF,$A0,	0,$50,	0,  6,$2D,  1,$46,$97,$23,  0
		.BYTE $FF,$FF,$D0,  0,$D0,  0,	2,  0,	1,$53,$97,$50,	0,$FF,$FF,$20
		.BYTE	1,$A0,	0,  2,	0,  1,$60,$97,$51,  0,$FF,$FF,$50,  0,$50,  0
		.BYTE	2,  0,	1,$6D,$97,$40,	0,$FF,$FF,$90,	0,$50,	0,  6,	6,  1
		.BYTE $7A,$97,$3F,  0,$FF,$FF,$50,  0,$70,  0,	6,$47,	1,$87,$97,$10
		.BYTE	1,$FF,$FF,$60,	0,$50,	0,  6,	3,  1,$94,$97,$41,  0,$FF,$FF
		.BYTE $80,  0,$50,  0,	6,$21,	1,$A1,$97,$1B,	0,$FF,$FF,$A0,	0,$B0
		.BYTE	0,  6,$13,  1,$AE,$97,$1D,  0,$FF,$FF,$C0,  0,$D0,  0,	6, $B
		.BYTE	1,$BB,$97,$1E,	0,$FF,$FF,$E0,	0,$D0,	0,  6, $B,  1,$C8,$97
		.BYTE $1F,  0,$FF,$FF,	0,  1,$D0,  0,	6, $B,	1,$D5,$97,$20,	0,$FF
		.BYTE $FF,$20,	1,$C0,	0,  6, $A,  1,$E2,$97,$21,  0,$FF,$FF,$40,  1
		.BYTE $C0,  0,	6, $A,	1,$EF,$97,$22,	0,$FF,$FF,$50,	0,$50,	0,  6
		.BYTE $1D,  1,$FC,$97,$24,  0,$FF,$FF,$50,  0,$58,  0,	6,$1C,	1,  9
		.BYTE $98,$25,	0,$FF,$FF,$A0,	0,$90,	0,$16,	0,  1,$16,$98,$4F,  0
		.BYTE $FF,$FF,	0,  1,$90,  0,$16,  0,	1,$23,$98,$4F,	0,$FF,$FF,$30
		.BYTE	0,$D0,	0,  2,	0,  1,$30,$98,$42,  0,$FF,$FF,$90,  0,$50,  1
		.BYTE	2,  0,	1,$3D,$98,$43,	0,$FF,$FF,$B0,	0,$50,	0,  6,	6,  1
		.BYTE $4A,$98,$45,  0,$FF,$FF,$A0,  0,$50,  0,	6,$3B,	1,$57,$98,$44
		.BYTE	0,$FF,$FF,$90,	0,$60,	0,  6,$1B,  1,$64,$98,$2B,  0,$FF,$FF
		.BYTE $50,  0,$80,  0,	6,$1A,	1,$71,$98,$46,	0,$FF,$FF,$40,	0,$60
		.BYTE	0,  6,	6,  1,$7E,$98,$47,  0,$FF,$FF,$E0,  0,$80,  0,	2,  0
		.BYTE	1,$8B,$98,$48,	0,$FF,$FF,$50,	0,$80,	0,  2,	0,  1,$98,$98
		.BYTE $49,  0,$FF,$FF,$30,  1,$40,  0,	6,$1A,	1,$A5,$98,$4A,	0,$FF
		.BYTE $FF,$A0,	0,$70,	0,  6,$3C,  1,$B2,$98,$18,  1,$FF,$FF,$50,  1
		.BYTE $30,  1,	6,$1A,	1,$BF,$98,$4B,	0,$FF,$FF,$A0,	1,$50,	1, $D
		.BYTE	0,  1,$CC,$98,$4C,  0,$FF,$FF,$A0,  1,$C0,  0, $D,  0,	1,$D9
		.BYTE $98,$4D,	0,$FF,$FF,$80,	1,$E0,	0,  6,	6,  1,$E6,$98,$4E,  0
		.BYTE $FF,$FF,$20,  2,$F0,  0,	6, $B,	1,$F3,$98,$53,	0,$FF,$FF,$30
		.BYTE	0,$50,	0,  6, $B,  1,	0,$99,$54,  0,$FF,$FF,$30,  0,$60,  0
		.BYTE	6, $B,	1, $D,$99,$55,	0,$FF,$FF,$C0,	0,$A0,	0,  6,	6,  1
		.BYTE $1A,$99,$56,  0,$FF,$FF,$78,  0,$90,  0,	6,  2,	1,$27,$99,$57
		.BYTE	0,$61,	0,$FF,$FF,$80,	1,$40,	1,  2,	0,  1,$36,$99,$58,  0
		.BYTE $FF,$FF,$E0,  0,$40,  1,	2,  0,	1,$43,$99,$59,	0,$FF,$FF,$70
		.BYTE	0,$20,	1,  2,	0,  1,$50,$99,$5A,  0,$FF,$FF,$D0,  0,$20,  1
		.BYTE	6, $B,	1,$5D,$99,$5B,	0,$FF,$FF,$A0,	0,$C0,	0,  6,$2C,  1
		.BYTE $6A,$99,$1C,  0,$FF,$FF,$40,  0,$A0,  0,	6,  6,	1,$77,$99,$5F
		.BYTE	0,$FF,$FF,$50,	0,$C0,	0,  6,	6,  1,$84,$99,$60,  0,$FF,$FF
		.BYTE $40,  0,$80,  0,	6,  8,	1,$91,$99,$5C,	0,$FF,$FF,$B0,	0,$50
		.BYTE	0,  6,$25,  1,$9E,$99,$5D,  0,$FF,$FF,$D0,  0,$D0,  0, $E,  0
		.BYTE	1,$AB,$99,$8F,	0,$FF,$FF,$A0,	1,$D0,	0, $E,	0,  1,$B8,$99
		.BYTE $90,  0,$FF,$FF,$40,  0,$20,  1, $D,  0,	1,$C5,$99,$5E,	0,$FF
		.BYTE $FF,$A0,	1,$40,	0,  6, $B,  1,$D2,$99,$63,  0,$FF,$FF,$C0,  1
		.BYTE $40,  0,	6, $B,	1,$DF,$99,$62,	0,$FF,$FF,$20,	1,$B0,	0,  2
		.BYTE	0,  1,$EC,$99,$64,  0,$FF,$FF,$90,  1,$B0,  0,	6,$3D,	1,$F9
		.BYTE $99,$1A,	1,$FF,$FF,$60,	1,$50,	0,  2,	0,  1,	6,$9A,$65,  0
		.BYTE $FF,$FF,$10,  2,$C0,  0,	2,  0,	1,$13,$9A,$66,	0,$FF,$FF,$30
		.BYTE	1,$60,	1,  2,	0,  1,$20,$9A,$67,  0,$FF,$FF,$40,  0,$C0,  0
		.BYTE	2,  0,	1,$2D,$9A,$68,	0,$FF,$FF,$60,	0,$60,	1,  6,	7,  1
		.BYTE $3A,$9A,$69,  0,$FF,$FF,$B0,  0,$50,  0,	3,  2,	1,$47,$9A,$18
		.BYTE	0,$FF,$FF,$F0,	0,$B0,	0,  2,	0,  1,$54,$9A,$1A,  0,$FF,$FF
		.BYTE $80,  0,$40,  0,	2,  0,	1,$61,$9A,$19,	0,$FF,$FF,$60,	0,$10
		.BYTE	1,  2,	0,  1,$6E,$9A,$6A,  0,$FF,$FF,$60,  0,$B0,  1,	2,  0
		.BYTE	1,$7B,$9A,$6B,	0,$FF,$FF,$B0,	0,$20,	0,  6,$52,  1,$88,$9A
		.BYTE $16,  1,$FF,$FF,$40,  0,$50,  0,	6,  7,	1,$95,$9A,$6C,	0,$FF
		.BYTE $FF,$40,	0,$80,	0,  6,	8,  1,$A2,$9A,$6D,  0,$FF,$FF,$80,  0
		.BYTE $30,  0,$12,  0,	0,$F0,	0,$40,	1,  6, $B,  1,$B6,$9A,$70,  0
		.BYTE $FF,$FF,	0,  1,$40,  1,	6, $B,	1,$C3,$9A,$71,	0,$FF,$FF,$50
		.BYTE	2,$B0,	1,  2,	0,  1,$D0,$9A,$72,  0,$FF,$FF,$60,  2,$10,  1
		.BYTE	2,  0,	1,$DD,$9A,$73,	0,$FF,$FF,$60,	2,$C0,	0,  2,	0,  1
		.BYTE $EA,$9A,$74,  0,$FF,$FF,$A0,  0,$70,  0,	6,  6,	1,$F7,$9A,$75
		.BYTE	0,$FF,$FF,$80,	0,$70,	0,  6,	6,  1,	4,$9B,$76,  0,$FF,$FF
		.BYTE $40,  0,$80,  0,	6,$2E,	1,$11,$9B,$79,	0,$FF,$FF,$60,	0,$B0
		.BYTE	0,  6,	9,  1,$1E,$9B,$78,  0,$FF,$FF,$80,  0,$B0,  0,	6,  9
		.BYTE	1,$2B,$9B,$77,	0,$FF,$FF,$60,	0,$80,	0,  6,	8,  1,$38,$9B
		.BYTE $7B,  0,$FF,$FF,$C0,  0,$80,  0,	2,  0,	1,$45,$9B,$7A,	0,$FF
		.BYTE $FF,$70,	0,$30,	0,  3,	1,  0,	0,  1,$40,  0,	6,$4A,	1,$59
		.BYTE $9B,$13,	1,$FF,$FF,$80,	0,$10,	1,  3,	2,  0,$70,  0,$70,  0
		.BYTE	6,  6,	1,$6D,$9B,$7D,	0,$FF,$FF,$90,	0,$50,	1,  6,	4,  1
		.BYTE $7A,$9B,$7E,  0,$FF,$FF,$80,  0,$70,  1, $E,  0,	1,$87,$9B,$7F
		.BYTE	0,$FF,$FF,$A0,	0,$70,	1, $E,	0,  1,$94,$9B,$80,  0,$FF,$FF
		.BYTE $10,  1,$70,  1,	2,  0,	1,$A1,$9B,$81,	0,$FF,$FF,$10,	1,$90
		.BYTE	0,  2,	0,  1,$AE,$9B,$82,  0,$FF,$FF,$50,  0,$C0,  0, $A,  0
		.BYTE	0,$60,	0,$90,	0,  6, $B,  1,$C2,$9B,$84,  0,$FF,$FF,$50,  0
		.BYTE $90,  0,	6, $B,	1,$CF,$9B,$83,	0,$FF,$FF,$C0,	0,$40,	0,$12
		.BYTE	0,  0,$30,  0,$30,  0,	6,$1F,	1,$E3,$9B,$2C,	0,$FF,$FF,$50
		.BYTE	0,$90,	0,  6,	7,  1,$F0,$9B,$86,  0,$FF,$FF,$50,  0,$80,  0
		.BYTE	3,  2,	1,$FD,$9B,$27,	0,$28,	0,$FF,$FF,$60,	0,$60,	0,  3
		.BYTE	2,  2, $E,$9C,$12,$9C,$29,  0,$FF,$FF,$2A,  0,$FF,$FF,$90,  0
		.BYTE $60,  0,	3,  2,	2,$21,$9C,$25,$9C,$29,	0,$FF,$FF,$2A,	0,$FF
		.BYTE $FF,$A0,	0,$80,	0,  3,	2,  1,$32,$9C,$27,  0,$28,  0,$FF,$FF
		.BYTE $70,  0,$40,  0,	6,  7,	1,$41,$9C,$87,	0,$FF,$FF,$40,	0,$70
		.BYTE	0,  6,$53,  1,$4E,$9C,$17,  1,$FF,$FF,$C0,  0,$80,  0,	2,  0
		.BYTE	1,$5B,$9C,$88,	0,$FF,$FF,$50,	1,$50,	0,  2,	0,  1,$68,$9C
		.BYTE $89,  0,$FF,$FF,$50,  0,$60,  0,	6,$2B,	1,$75,$9C,$8A,	0,$FF
		.BYTE $FF,$B0,	0,$C0,	0,  6, $C,  1,$82,$9C,$8B,  0,$FF,$FF,$A0,  0
		.BYTE $60,  0,	6,  9,	1,$8F,$9C,$8C,	0,$FF,$FF,$A0,	0,$90,	0,  6
		.BYTE	6,  1,$9C,$9C,$8D,  0,$FF,$FF,$80,  0,$90,  0,	6,$48,	1,$A9
		.BYTE $9C,$11,	1,$FF,$FF,$D0,	0,$D0,	0,  6, $B,  1,$B6,$9C,$8E,  0
		.BYTE $FF,$FF,$70,  0,$30,  0,	6,$3E,	1,$C3,$9C,$19,	1,$FF,$FF,$C0
		.BYTE	0,$A0,	0,  7,	0,  1,$D0,$9C,$26,  1,$FF,$FF,$D0,  1,$20,  2
		.BYTE	6, $C,	1,$DD,$9C,$92,	0,$FF,$FF,$D0,	1,  0,	2,  6, $C,  1
		.BYTE $EA,$9C,$93,  0,$FF,$FF,$D0,  1,$E0,  1,	6, $B,	1,$F7,$9C,$94
		.BYTE	0,$FF,$FF,$D0,	1,$C0,	1,  6, $B,  1,	4,$9D,$95,  0,$FF,$FF
		.BYTE $F0,  0,$70,  1,	6,$3F,	1,$11,$9D,$1B,	1,$FF,$FF,$70,	1,$40
		.BYTE	1, $D,	0,  1,$1E,$9D,$98,  0,$FF,$FF,$70,  1,$F0,  0, $D,  0
		.BYTE	1,$2B,$9D,$99,	0,$FF,$FF,$70,	1,$B0,	0, $D,	0,  1,$38,$9D
		.BYTE $9A,  0,$FF,$FF,$50,  1,$30,  1, $D,  0,	1,$45,$9D,$9C,	0,$FF
		.BYTE $FF,$50,	1,$90,	1, $D,	0,  1,$52,$9D,$9D,  0,$FF,$FF,$F0,  1
		.BYTE $90,  1,	6, $B,	1,$5F,$9D,$9F,	0,$FF,$FF,$B0,	1,$60,	1,  6
		.BYTE  $B,  1,$6C,$9D,$A0,  0,$FF,$FF,$70,  1,$90,  1,	6, $C,	1,$79
		.BYTE $9D,$A1,	0,$FF,$FF,$30,	1,$60,	1,  6, $C,  1,$86,$9D,$A2,  0
		.BYTE $FF,$FF,$F0,  0,$80,  1, $D,  0,	1,$93,$9D,$A3,	0,$FF,$FF,$70
		.BYTE	0,$30,	1, $D,	0,  1,$A0,$9D,$A4,  0,$FF,$FF,$40,  0,$30,  0
		.BYTE	6, $B,	1,$AD,$9D,$DD,	0,$FF,$FF,$50,	0,$30,	0,  6, $B,  1
		.BYTE $BA,$9D,$DE,  0,$FF,$FF,$50,  0,$40,  0,	6, $B,	1,$C7,$9D,$DF
		.BYTE	0,$FF,$FF,$D0,	0,$50,	0,  6, $C,  1,$D4,$9D,$E0,  0,$FF,$FF
		.BYTE $D0,  0,$60,  0,	6, $C,	1,$E1,$9D,$E1,	0,$FF,$FF,$A0,	0,$60
		.BYTE	0,  6,$1A,  1,$EE,$9D,$A5,  0,$FF,$FF,$40,  1,$90,  0,	1,  0
		.BYTE	1,$FB,$9D,$A6,	0,$FF,$FF,$80,	0,$80,	0,  1,	0,  1,	8,$9E
		.BYTE $A8,  0,$FF,$FF,$A0,  0,$40,  1,	1,  0,	1,$15,$9E,$A7,	0,$FF
		.BYTE $FF,$E0,	0,$40,	0,  6,$12,  1,$22,$9E,$A9,  0,$FF,$FF,$E0,  0
		.BYTE $60,  0,	6,  9,	1,$2F,$9E,$AA,	0,$FF,$FF,$60,	0,$80,	1,  6
		.BYTE $2A,  1,$3C,$9E,$AB,  0,$FF,$FF,$70,  1,$30,  1,	6,  6,	1,$49
		.BYTE $9E,$AC,	0,$FF,$FF,$20,	0,$A0,	0,  6,	9,  1,$56,$9E,$AD,  0
		.BYTE $FF,$FF,$60,  0,$80,  0,$13,  0,	1,$63,$9E,$AE,	0,$FF,$FF,$90
		.BYTE	0,$80,	0,$10,	0,  1,$70,$9E,$B0,  0,$FF,$FF,$E0,  0,$80,  0
		.BYTE $10,  0,	1,$7D,$9E,$B1,	0,$FF,$FF,$70,	1,$70,	0,$10,	0,  1
		.BYTE $8A,$9E,$B2,  0,$FF,$FF,$90,  1,$50,  0,	6,  0,	1,$97,$9E,$B3
		.BYTE	0,$FF,$FF,$20,	1,$80,	0, $F,	0,  0,$80,  1,$80,  0, $F,  0
		.BYTE	0,$E0,	1,$80,	0, $F,	0,  0,$50,  0,$80,  0,	6, $C,	1,$B9
		.BYTE $9E,$B5,	0,$FF,$FF,$70,	0,$90,	0,  6,$12,  1,$C6,$9E,$B6,  0
		.BYTE $FF,$FF,$A0,  0,$80,  0,	6,$1A,	1,$D3,$9E,$B7,	0,$FF,$FF,$60
		.BYTE	0,$B0,	0,  6,$30,  1,$E0,$9E,$B8,  0,$FF,$FF,$60,  0,$90,  0
		.BYTE $13,  0,	1,$ED,$9E,$B9,	0,$FF,$FF,$B0,	1,$90,	0,$13,	0,  1
		.BYTE $FA,$9E,$BA,  0,$FF,$FF,$20,  1,$30,  1,	6,$40,	1,  7,$9F,$1C
		.BYTE	1,$FF,$FF,$B0,	0,$30,	0,  6,$26,  2,$16,$9F,$1A,$9F,$BB,  0
		.BYTE $FF,$FF,$BC,  0,$FF,$FF,$20,  0,$A0,  0,	3,  2,	0,$70,	0,$80
		.BYTE	0,  6, $B,  1,$2E,$9F,$BD,  0,$FF,$FF,$70,  0,$70,  0,	6, $B
		.BYTE	1,$3B,$9F,$BE,	0,$FF,$FF,$90,	0,$60,	0,  6, $C,  1,$48,$9F
		.BYTE $BF,  0,$FF,$FF,$A0,  0,$60,  0,	6, $C,	1,$55,$9F,$C0,	0,$FF
		.BYTE $FF,  0,	1,$60,	0,  3,	2,  0,$80,  1,$C0,  0,$16,  0,	1,$69
		.BYTE $9F,$C1,	0,$FF,$FF,$90,	1,$C0,	0,$16,	0,  1,$76,$9F,$C1,  0
		.BYTE $FF,$FF,$30,  0,$50,  0,	6,  9,	1,$83,$9F,$C2,	0,$FF,$FF,$B0
		.BYTE	0,$C0,	0,  6,$12,  1,$90,$9F,$C3,  0,$FF,$FF,$30,  0,$60,  0
		.BYTE	6,$24,	1,$9D,$9F,$2D,	0,$FF,$FF,$C0,	0,$50,	0,  6,	7,  1
		.BYTE $AA,$9F,$C4,  0,$FF,$FF,$50,  0,$A0,  0,	2,  0,	1,$B7,$9F,$D0
		.BYTE	0,$FF,$FF,$80,	0,$80,	0,  2,	0,  1,$C4,$9F,$D1,  0,$FF,$FF
		.BYTE $50,  0,$50,  0,	6,  9,	1,$D1,$9F,$C5,	0,$FF,$FF,$50,	0,$90
		.BYTE	0,  2,	0,  1,$DE,$9F,$C6,  0,$FF,$FF,$60,  0,$70,  1,	6,  6
		.BYTE	1,$EB,$9F,$C7,	0,$FF,$FF,$D0,	0,$60,	1,  6,$1A,  1,$F8,$9F
		.BYTE $C8,  0,$FF,$FF,$70,  0,$90,  0,$10,  0,	1,  5,$A0,$C9,	0,$FF
		.BYTE $FF,$90,	0,$50,	1,$10,	0,  1,$12,$A0,$CA,  0,$FF,$FF,$30,  0
		.BYTE $80,  0,	6,$55,	1,$1F,$A0,$24,	1,$FF,$FF,$A0,	1,$50,	0,  6
		.BYTE  $B,  1,$2C,$A0,$CB,  0,$FF,$FF,$B0,  1,$50,  0,	6, $B,	1,$39
		.BYTE $A0,$CC,	0,$FF,$FF,$A0,	1,$B0,	0,  6,$16,  1,$46,$A0,$31,  0
		.BYTE $FF,$FF,$B0,  1,$B0,  0, $C,  0,	1,$53,$A0,$CD,	0,$FF,$FF,$90
		.BYTE	1,$C0,	0, $C,	0,  1,$60,$A0,$CE,  0,$FF,$FF,$B0,  1,$C0,  0
		.BYTE  $C,  0,	1,$6D,$A0,$CF,	0,$FF,$FF,$40,	0,$B0,	0,  6,$39,  1
		.BYTE $7A,$A0,$23,  1,$FF,$FF,$90,  1,$40,  0,	3,  1,	0,$80,	1,$A0
		.BYTE	0,  2,	0,  1,$8E,$A0,$D3,  0,$FF,$FF,$B0,  1,$70,  0,	2,  0
		.BYTE	1,$9B,$A0,$D4,	0,$FF,$FF,$B0,	1,$C0,	0,  6,	8,  1,$A8,$A0
		.BYTE $D5,  0,$FF,$FF,$C0,  1,$C0,  0,	6,$49,	1,$B5,$A0,$12,	1,$FF
		.BYTE $FF,$50,	1,$80,	0,  6,$41,  1,$C2,$A0,$1D,  1,$FF,$FF,$70,  0
		.BYTE $80,  0,	2,  0,	1,$CF,$A0,$D6,	0,$FF,$FF,$B0,	1,$C0,	0,  6
		.BYTE	7,  1,$DC,$A0,$D7,  0,$FF,$FF,$C0,  1,$30,  0,	6,$4C,	1,$E9
		.BYTE $A0,$14,	1,$FF,$FF,$50,	0,$50,	0,  6,	9,  1,$F6,$A0,$D9,  0
		.BYTE $FF,$FF,$70,  0,$80,  0,	2,  0,	1,  3,$A1,$D8,	0,$FF,$FF,$B0
		.BYTE	0,$90,	0,  3,	0,  0,$20,  1,$D0,  0,	3,  0,	0,$D0,	1,$E0
		.BYTE	0,  3,	0,  0,$E0,  1,$B0,  1,	6, $B,	1,$25,$A1,$DA,	0,$FF
		.BYTE $FF,$D0,	1,$B0,	1,  6, $B,  1,$32,$A1,$DB,  0,$FF,$FF,$60,  1
		.BYTE $80,  0,	6,$42,	1,$3F,$A1,$1E,	1,$FF,$FF,$D0,	0,$80,	0,$18
		.BYTE	0,  0,$40,  1,$80,  0,$18,  0,	0,$B0,	0,$60,	1,$18,	0,  0
		.BYTE $40,  1,$60,  1,$18,  0,	0,$70,	0,$30,	0,$19,	0,  1,$68,$A1
		.BYTE $DC,  0,$FF,$FF,$A0,  0,$40,  0,$12,  0,	0,$90,	0,$40,	0,$12
		.BYTE	0,  0,$50,  0,$50,  0,	6,$17,	1,$83,$A1,$34,	0,$FF,$FF,$60
		.BYTE	0,$70,	0,  6,	6,  1,$90,$A1,$35,  0,$FF,$FF,$80,  0,$90,  0
		.BYTE	6,  7,	1,$9D,$A1,$37,	0,$FF,$FF,$50,	0,$B0,	0,  6,	6,  1
		.BYTE $AA,$A1,$36,  0,$FF,$FF,$A0,  0,$B0,  0,	6,  7,	1,$B7,$A1,$38
		.BYTE	0,$FF,$FF,$A0,	0,$40,	0,  6,$43,  1,$C4,$A1,$1F,  1,$FF,$FF
		.BYTE $50,  0,$90,  0,	7,  2,	1,$D1,$A1,$28,	1,$FF,$FF,$50,	0,$80
		.BYTE	0,  7,	0,  1,$DE,$A1,$27,  1,$FF,$FF,$60,  1,$40,  1,	6,$2E
		.BYTE	1,$EB,$A1,$EA,	0,$FF,$FF,$A0,	2,$70,	2,  7,	0,  1,$F8,$A1
		.BYTE $29,  1,$FF,$FF,$A0,  2,$50,  2,	7,  2,	1,  5,$A2,$2A,	1,$FF
		.BYTE $FF,$50,	0,$40,	0,  6,$44,  1,$12,$A2,$20,  1,$FF,$FF,$C0,  0
		.BYTE $70,  1,	2,  0,	1,$1F,$A2,$E4,	0,$FF,$FF,$C0,	0,$20,	1,  2
		.BYTE	0,  1,$2C,$A2,$E5,  0,$FF,$FF,$E0,  0,	0,  1,	6, $B,	1,$39
		.BYTE $A2,$E6,	0,$FF,$FF,$E0,	0,$E0,	0,  6, $B,  1,$46,$A2,$E7,  0
		.BYTE $FF,$FF,$E0,  0,$C0,  0,	6, $B,	1,$53,$A2,$E8,	0,$FF,$FF,$20
		.BYTE	0,$70,	0,  6,$30,  1,$60,$A2,$E9,  0,$FF,$FF,$50,  0,$38,  0
		.BYTE	6,$19,	1,$6D,$A2,$EB,	0,$FF,$FF,$90,	0,$90,	0,  6,$50,  1
		.BYTE $7A,$A2,$15,  1,$FF,$FF,$80,  0,$E0,  0,	2,  0,	1,$87,$A2,  0
		.BYTE	1,$FF,$FF,$40,	1,$10,	1,  2,	0,  1,$94,$A2,	1,  1,$FF,$FF
		.BYTE	0,  1,$90,  1,	2,  0,	1,$A1,$A2,  2,	1,$FF,$FF,$40,	0,$90
		.BYTE	1,  2,	0,  1,$AE,$A2,	3,  1,$FF,$FF,$28,  0,$58,  0,$12,  0
		.BYTE	1,$BB,$A2,$F5,	0,$FF,$FF,$30,	0,$58,	0,$12,	0,  1,$C8,$A2
		.BYTE $F6,  0,$FF,$FF,$38,  0,$58,  0,$12,  0,	1,$D5,$A2,$F7,	0,$FF
		.BYTE $FF,$D0,	0,$50,	0,  6,$45,  1,$E2,$A2,$21,  1,$FF,$FF,$A0,  0
		.BYTE $40,  0,$12,  0,	0,$40,	0,$B0,	0,  6, $B,  1,$F6,$A2,$ED,  0
		.BYTE $FF,$FF,$50,  0,$B0,  0,	6, $B,	1,  3,$A3,$EE,	0,$FF,$FF,$D0
		.BYTE	0,$80,	0,  6,$51,  1,$10,$A3,$EF,  0,$FF,$FF,$90,  0,$A0,  0
		.BYTE	6,  6,	1,$1D,$A3,$F3,	0,$FF,$FF,$A0,	0,$A0,	0,  6,	6,  1
		.BYTE $2A,$A3,$F4,  0,$FF,$FF,$40,  0,$70,  0,	2,  0,	1,$37,$A3,$F0
		.BYTE	0,$FF,$FF,$80,	0,$60,	0,  2,	0,  1,$44,$A3,$F1,  0,$FF,$FF
		.BYTE $B0,  0,$90,  0,	2,  0,	1,$51,$A3,$F2,	0,$FF,$FF,$40,	0,$48
		.BYTE	0,  6,$4B,  1,$5E,$A3,	7,  1,$FF,$FF,$A0,  0,$80,  0,	7,  2
		.BYTE	1,$6B,$A3,$2D,	1,$FF,$FF,$70,	0,$A0,	0,  7,	2,  1,$78,$A3
		.BYTE $2E,  1,$FF,$FF,$A0,  0,	0,  1,	2,  0,	1,$85,$A3,  4,	1,$FF
		.BYTE $FF,$A0,	0,$90,	1,  2,	0,  1,$92,$A3,	5,  1,$FF,$FF,$B0,  0
		.BYTE $B0,  0,$12,  0,	0,$70,	0,$90,	0,  3,	0,  0,$90,  0,$90,  0
		.BYTE	3,  0,	0,$50,	0,$60,	0,  6,$1A,  1,$B4,$A3,$F9,  0,$FF,$FF
		.BYTE $60,  0,$60,  0,	6, $C,	1,$C1,$A3,$FA,	0,$FF,$FF,$B0,	0,$70
		.BYTE	0,  6,$12,  1,$CE,$A3,$FB,  0,$FF,$FF,$C0,  0,$70,  0,	6,  9
		.BYTE	1,$DB,$A3,$FC,	0,$FF,$FF,$70,	0,$B0,	0, $B,	0,  1,$E8,$A3
		.BYTE $FD,  0,$FF,$FF,$20,  1,$B0,  0, $B,  0,	1,$F5,$A3,$FE,	0,$FF
		.BYTE $FF,$A0,	1,$B0,	0, $B,	0,  1,	2,$A4,$FF,  0,$FF,$FF,$40,  0
		.BYTE $30,  0,	6,$46,	1, $F,$A4,$22,	1,$FF,$FF,$40,	0,$60,	0,  7
		.BYTE	0,  1,$1C,$A4,$2B,  1,$FF,$FF,$60,  0,$50,  0,	7,  1,	1,$29
		.BYTE $A4,$2C,	1,$FF,$FF,$70,	0,$30,	0,  6,$1C,  1,$36,$A4,$10,  0
		.BYTE $FF,$FF,$78,  0,$30,  0,	6,$1D,	1,$43,$A4,$11,	0,$FF,$FF,$D0
		.BYTE	0,$50,	0,  6,$23,  1,$50,$A4,$12,  0,$FF,$FF,$B0,  0,$40,  0
		.BYTE	6,$14,	1,$5D,$A4,$26,	0,$FF,$FF,$50,	0,$50,	0,  2,	0,  1
		.BYTE $6A,$A4,$40,  0,$FF,$FF,$90,  0,$50,  0,	6,  6,	1,$77,$A4,$3F
		.BYTE	0,$FF,$FF,$50,	0,$70,	0,  6,	7,  1,$84,$A4,$10,  1,$FF,$FF
		.BYTE $60,  0,$50,  0,	6,  7,	1,$91,$A4,$3E,	0,$FF,$FF,$C0,	0,$98
		.BYTE	0,  6,$20,  1,$9E,$A4,$15,  0,$FF,$FF,$60,  0,$20,  0,	6,$22
		.BYTE	1,$AB,$A4,$6E,	0,$FF,$FF,$80,	0,$30,	0,$12,	0,  0,$50,  0
		.BYTE $30,  0,	3,  2,	0,$B0,	0,$40,	0,  6,$30,  1,$C6,$A4,$7C,  0
		.BYTE $FF,$FF,$30,  1,$90,  0, $F,  0,	0,$D0,	0,$90,	0, $F,	0,  0
		.BYTE $80,  0,$90,  0, $F,  0,	0,$40,	0,$30,	0,  6, $B,  1,$E8,$A4
		.BYTE $DD,  0,$FF,$FF,$50,  0,$30,  0,	6, $B,	1,$F5,$A4,$DE,	0,$FF
		.BYTE $FF,$50,	0,$40,	0,  6, $B,  1,	2,$A5,$DF,  0,$FF,$FF,$D0,  0
		.BYTE $50,  0,	6, $C,	1, $F,$A5,$E0,	0,$FF,$FF,$D0,	0,$60,	0,  6
		.BYTE  $C,  1,$1C,$A5,$E1,  0,$FF,$FF,$A0,  0,$60,  0,	6,$1A,	1,$29
		.BYTE $A5,$A5,	0,$FF,$FF,$20,	0,$A0,	0,  6,	9,  1,$36,$A5,$AD,  0
		.BYTE $FF,$FF,$40,  2,$A0,  0,	1,  0,	1,$43,$A5,$AF,	0,$FF,$FF,$60
		.BYTE	0,$B0,	0,  6,$30,  1,$50,$A5,$B8,  0,$FF,$FF,$60,  0,$90,  0
		.BYTE $13,  0,	1,$5D,$A5,$B9,	0,$FF,$FF,$B0,	1,$90,	0,$13,	0,  1
		.BYTE $6A,$A5,$BA,  0,$FF,$FF,$B0,  0,$30,  0,	6,$26,	2,$79,$A5,$7D
		.BYTE $A5,$BB,	0,$FF,$FF,$BC,	0,$FF,$FF,$20,	0,$A0,	0,  3,	2,  0
		.BYTE $A0,  0,$40,  0,$12,  0,	0,$40,	0,$B0,	0,  6, $B,  1,$98,$A5
		.BYTE $ED,  0,$FF,$FF,$50,  0,$B0,  0,	6, $B,	1,$A5,$A5,$EE,	0,$FF
		.BYTE $FF,$D0,	0,$80,	0,  6,$51,  1,$B2,$A5,$EF,  0,$FF,$FF,$68,  0
		.BYTE $30,  0,$11,  0,	1,$BF,$A5,  9,	1,$FF,$FF,$40,	0,$A0,	0,  6
		.BYTE $18,  1,$CC,$A5,$30,  0,$FF,$FF,$50,  0,$50,  0,	6,  9,	1,$D9
		.BYTE $A5,$C5,	0,$FF,$FF,$50,	0,$90,	0,  2,	0,  1,$E6,$A5,$C6,  0
		.BYTE $FF,$FF,$40,  1,$E0,  0,	6,$15,	1,$F3,$A5,$39,	0,$FF,$FF,$60
		.BYTE	0,$50,	0,  6,$2F,  1,	0,$A6, $D,  1,$FF,$FF,$80,  0,$C0,  0
		.BYTE	6,  5,	1, $D,$A6, $E,	1,$FF,$FF,$D0,	0,$D0,	0,$11,	0,  1
		.BYTE $1A,$A6, $F,  1,$FF,$FF,$A0,  0,$10,  0,$15,  0,	0,$B0,	1,$C0
		.BYTE	0,  6,	7,  1,$2E,$A6,$D7,  0,$FF,$FF,$C0,  0,$40,  0,$12,  0
		.BYTE	0,$20,	0,$70,	0,  6,	9,  1,$42,$A6,$85,  0,$FF,$FF

; =============== S U B	R O U T	I N E =======================================


com_29_start_new_game_12A646:		
		LDX	#0
		LDA	#0

loc_12A64A:				
		STA	objArraySize_373,X
		INX
		CPX	#$AC 
		BNE	loc_12A64A
		LDA	#$69 
		STA	ptr_0
		LDA	#$92 
		STA	ptr_1
		LDA	entry_idx_300
		STA	data_2
		LDA	#0
		STA	data_3
		ASL	data_2
		ROL	data_3
		LDA	ptr_0
		CLC
		ADC	data_2
		STA	ptr_0
		LDA	ptr_1
		ADC	data_3
		STA	ptr_1
		LDY	#0
		LDA	(ptr_0),Y
		STA	data_2
		INY
		LDA	(ptr_0),Y
		STA	data_3
		LDY	#0
		LDA	(data_2),Y
		STA	objArraySize_373
		CMP	#0
		BNE	loc_12A68B
		RTS
; ---------------------------------------------------------------------------

loc_12A68B:				
		LDA	data_2
		CLC
		ADC	#1
		STA	data_2
		LDA	data_3
		ADC	#0
		STA	data_3
		LDA	#0
		STA	inv_spr_dscr1_30C

loc_12A69D:				
		LDA	data_2
		PHA
		LDA	data_3
		PHA
		LDA	inv_spr_dscr1_30C
		ASL	A
		CLC
		ADC	data_2
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
		LDX	inv_spr_dscr1_30C
		LDY	#0
		LDA	(ptr_0),Y
		STA	array_unk_3C5,X
		INY
		LDA	(ptr_0),Y
		STA	array_unk_3BB,X
		INY
		LDA	(ptr_0),Y
		STA	array_unk_3D9,X
		INY
		LDA	(ptr_0),Y
		STA	array_unk_3CF,X
		INY
		LDA	(ptr_0),Y
		STA	objIdxArray_375,X
		INY
		LDA	(ptr_0),Y
		STA	array_unk_39D,X
		INY
		LDA	entry_idx_300
		CMP	#$65 
		BNE	loc_12A70C
		LDA	objIdxArray_375,X
		CMP	#3
		BNE	loc_12A70C
		LDA	byte_567
		STA	array_unk_3C5,X
		LDA	byte_568
		STA	array_unk_3BB,X
		LDA	byte_569
		STA	array_unk_3D9,X
		LDA	byte_56A
		STA	array_unk_3CF,X

loc_12A70C:				
					; com_29_start_new_game_12A646+ACj
		LDA	entry_idx_300
		CMP	#$3C 
		BNE	loc_12A732
		LDA	objIdxArray_375,X
		CMP	#3
		BNE	loc_12A732
		LDA	byte_56B
		STA	array_unk_3C5,X
		LDA	byte_56C
		STA	array_unk_3BB,X
		LDA	byte_56D
		STA	array_unk_3D9,X
		LDA	byte_56E
		STA	array_unk_3CF,X

loc_12A732:				
					; com_29_start_new_game_12A646+D2j
		LDA	entry_idx_300
		CMP	#$5C 
		BNE	loc_12A758
		LDA	objIdxArray_375,X
		CMP	#3
		BNE	loc_12A758
		LDA	byte_56F
		STA	array_unk_3C5,X
		LDA	byte_570
		STA	array_unk_3BB,X
		LDA	byte_571
		STA	array_unk_3D9,X
		LDA	byte_572
		STA	array_unk_3CF,X

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
		LDA	#$40 
		STA	byte_56F

loc_12A786:				
					; com_29_start_new_game_12A646+127j ...
		LDA	byte_56F
		STA	array_unk_3C5,X
		LDA	byte_570
		STA	array_unk_3BB,X
		LDA	byte_571
		STA	array_unk_3D9,X
		LDA	byte_572
		STA	array_unk_3CF,X

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
		LDA	#0
		STA	byte_573
		LDA	#1
		STA	byte_574
		LDA	#$60 
		STA	byte_575
		LDA	#0
		STA	byte_576

loc_12A7DF:				
		LDA	byte_573
		STA	array_unk_3C5,X
		LDA	byte_574
		STA	array_unk_3BB,X
		LDA	byte_575
		STA	array_unk_3D9,X
		LDA	byte_576
		STA	array_unk_3CF,X

loc_12A7F7:				
					; com_29_start_new_game_12A646+164j
		LDA	objIdxArray_375,X
		CMP	#6
		BNE	loc_12A809
		LDA	array_unk_39D,X
		STA	obj_array_unk_415,X
		LDA	#0
		STA	array_unk_39D,X

loc_12A809:				
		LDA	objIdxArray_375,X
		CMP	#7
		BNE	loc_12A81B
		LDA	array_unk_39D,X
		STA	obj_array_unk_415,X
		LDA	#0
		STA	array_unk_39D,X

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
		LDA	#$FF
		STA	objCreatedArray_393,X

loc_12A839:				
		PLA
		STA	data_3
		PLA
		STA	data_2
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
		LDA	byte_578,Y
		STA	array_unk_3C5,X
		LDA	byte_57B,Y
		STA	array_unk_3BB,X
		LDA	byte_57E,Y
		STA	array_unk_3D9,X
		LDA	byte_581,Y
		STA	array_unk_3CF,X
		INY
		INX
		CPX	objArraySize_373
		BCC	loc_12A85F
		RTS
; ---------------------------------------------------------------------------

loc_12A88D:				
		LDA	#0
		STA	byte_577

locret_12A892:				
		RTS
; End of function com_29_start_new_game_12A646


; =============== S U B	R O U T	I N E =======================================


sub_12A893:				
		LDA	#0
		STA	byte_36F
		STA	byte_370
		STA	byte_371
		TYA
		PHA
		LDA	ptr_0
		PHA
		LDA	ptr_1
		PHA
		LDA	tilemapTypeUnk_30B
		PHA
		LDA	inv_spr_dscr1_30C
		PHA
		LDY	#0
		LDA	(data_2),Y
		STA	tilemapTypeUnk_30B
		CMP	#0
		BNE	loc_12A8C1
		LDA	#$FF
		STA	byte_36F
		JMP	loc_12A933
; ---------------------------------------------------------------------------

loc_12A8C1:				
		LDA	data_2
		CLC
		ADC	#1
		STA	data_2
		LDA	data_3
		ADC	#0
		STA	data_3
		LDA	#0
		STA	inv_spr_dscr1_30C

loc_12A8D3:				
		LDA	inv_spr_dscr1_30C
		ASL	A
		TAY
		LDA	(data_2),Y
		STA	ptr_0
		INY
		LDA	(data_2),Y
		STA	ptr_1
		LDY	#0

loc_12A8E3:				
		LDA	(ptr_0),Y
		STA	tilemapFrameCount_30D
		INY
		LDA	(ptr_0),Y
		STA	byte_30E
		INY
		LDA	tilemapFrameCount_30D
		CMP	#$FF
		BNE	loc_12A8FD
		LDA	tilemapFrameCount_30D
		CMP	#$FF
		BEQ	loc_12A91F

loc_12A8FD:				
		LDA	byte_370
		CLC
		ADC	tilemapFrameCount_30D
		STA	byte_370
		LDA	byte_371
		ADC	byte_30E
		STA	byte_371
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
		PLA
		STA	inv_spr_dscr1_30C
		PLA
		STA	tilemapTypeUnk_30B
		PLA
		STA	ptr_1
		PLA
		STA	ptr_0
		PLA
		TAY
		RTS
; End of function sub_12A893


; =============== S U B	R O U T	I N E =======================================


sub_12A944:				
		LDA	ptr_0
		PHA
		LDA	ptr_1
		PHA
		TYA
		PHA
		LDA	#$98 
		STA	ptr_0
		LDA	#5
		STA	ptr_1
		LDA	ptr_0
		CLC
		ADC	tilemapFrameCount_30D
		STA	ptr_0
		LDA	ptr_1
		ADC	byte_30E
		STA	ptr_1
		LDY	#0
		LDA	(ptr_0),Y
		STA	tilemapFrameCount_30D
		PLA
		TAY
		PLA
		STA	ptr_1
		PLA
		STA	ptr_0
		RTS
; End of function sub_12A944


; =============== S U B	R O U T	I N E =======================================


exec_b0_c0_12A973:			
					; sub_12873A+124p ...
		LDA	bank_from_343
		PHA
		LDA	#0
		STA	bank_command_346
		LDA	#code_0
		STA	bank_to_344
		LDA	#$12
		STA	bank_from_343
		JSR	bank_switch_128000
		PLA
		STA	bank_from_343
		RTS
; End of function exec_b0_c0_12A973


; =============== S U B	R O U T	I N E =======================================


exec_b0_c1_12A98E:			
					; sub_12B225+31p ...
		LDA	bank_from_343
		PHA
		LDA	#1
		STA	bank_command_346
		LDA	#code_0
		STA	bank_to_344
		LDA	#$12
		STA	bank_from_343
		JSR	bank_switch_128000
		PLA
		STA	bank_from_343
		RTS
; End of function exec_b0_c1_12A98E


; =============== S U B	R O U T	I N E =======================================


exec_b0_c2_12A9A9:			
					; sub_128A1A+ECp ...
		LDA	bank_from_343
		PHA
		LDA	#2
		STA	bank_command_346
		LDA	#code_0
		STA	bank_to_344
		LDA	#$12
		STA	bank_from_343
		JSR	bank_switch_128000
		PLA
		STA	bank_from_343
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
		LDA	#$A
		STA	byte_354
		LDA	#0
		STA	byte_355
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
		LDA	#$FF
		STA	is_game_finished_561

locret_12AA0D:				
					; com_17_player_update_12A9C4+13j ...
		RTS
; ---------------------------------------------------------------------------

loc_12AA0E:				
		LDA	entry_idx_300
		CMP	#$41 
		BNE	loc_12AA1B
		LDA	#0
		STA	byte_560
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
		LDA	#$20 
		STA	byte_56F
		LDA	#0
		STA	byte_570
		LDA	#$A0 
		STA	byte_571
		LDA	#0
		STA	byte_572

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
					; com_17_player_update_12A9C4+63j ...
		RTS
; End of function com_17_player_update_12A9C4


; =============== S U B	R O U T	I N E =======================================


entry_idx_handler_unk_12AA6D:		
					; sub_12ACDB+A0p ...
		LDA	entry_idx_300
		CMP	#$83 
		BNE	check_room_7D_12AA81
		LDA	byte_595
		CMP	#0
		BEQ	locret_12AA80
		LDA	#$96 
		STA	entry_idx_300

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
		LDA	#$95 
		STA	entry_idx_300

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
		LDA	#$7D 
		STA	entry_idx_300

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
		LDA	#$94 
		STA	entry_idx_300

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
		LDA	#$76 
		STA	entry_idx_300

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
		LDA	#$90 
		STA	entry_idx_300

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
		LDA	#$53 
		STA	entry_idx_300

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
		LDA	#$8B 
		STA	entry_idx_300

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
		LDA	#$9C 
		STA	entry_idx_300

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
		LDA	#$44 
		STA	entry_idx_300

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
		LDA	#$8A 
		STA	entry_idx_300

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
		LDA	#$38 
		STA	entry_idx_300

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
		LDA	#$89 
		STA	entry_idx_300
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
		LDA	#$86 
		STA	entry_idx_300
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
		LDA	#$85 
		STA	entry_idx_300
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
		LDA	#$8D 
		STA	entry_idx_300
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
		LDA	#$8E 
		STA	entry_idx_300
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
		LDA	#$4F 
		STA	entry_idx_300
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
		LDA	#$50 
		STA	entry_idx_300
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
		LDA	#$97 
		STA	entry_idx_300
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
		LDA	#$99 
		STA	entry_idx_300
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
		LDA	#$9B 
		STA	entry_idx_300
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
		LDA	#$98 
		STA	entry_idx_300
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
		LDA	#$87 
		STA	entry_idx_300
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
		LDA	#$91 
		STA	entry_idx_300
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
		LDA	#$57 
		STA	entry_idx_300
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
		LDA	#$92 
		STA	entry_idx_300
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
		LDA	#$93 
		STA	entry_idx_300
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
		LDA	#$5B 
		STA	entry_idx_300
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
		LDA	#$5C 
		STA	entry_idx_300
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
		LDA	#$8F 
		STA	entry_idx_300
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
		LDA	#$FF
		STA	byte_6A6
		STA	byte_6A7
		LDA	#1
		STA	cur_obj_idx_unk_43A
		JSR	sub_12BF29
		LDA	#2
		STA	cur_obj_idx_unk_43A
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
		LDA	#$FF
		STA	byte_68D
		LDX	byte_4D0
		LDA	#$4D 
		STA	unk_4C2,X
		INC	byte_4D0
		JMP	loc_12AD58
; ---------------------------------------------------------------------------

loc_12AD27:				
		LDA	entry_idx_300
		CMP	#$7B 
		BNE	loc_12AD41
		LDA	#$FF
		STA	byte_68E
		LDX	byte_4D0
		LDA	#$4E 
		STA	unk_4C2,X
		INC	byte_4D0
		JMP	loc_12AD58
; ---------------------------------------------------------------------------

loc_12AD41:				
		LDA	entry_idx_300
		CMP	#$80 
		BNE	locret_12AD64
		LDA	#$FF
		STA	byte_68F
		LDX	byte_4D0
		LDA	#$4F 
		STA	unk_4C2,X
		INC	byte_4D0

loc_12AD58:				
					; sub_12ACDB+63j
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
		LDA	#$FF
		STA	byte_591
		LDA	byte_591
		AND	byte_592
		CMP	#0
		BEQ	locret_12AD9F
		JSR	entry_idx_handler_unk_12AA6D
		LDA	entry_idx_300
		STA	image_id_4A4
		LDA	ppu_unk_byte_302
		STA	image_offset_4A5
		LDA	ppu_unk_byte_303
		STA	ppu_prev_unk_4A6
		LDA	ppu_scroll_x_304
		STA	ppu_prev_scroll_x_unk_4A7
		LDA	ppu_scroll_y_305
		STA	ppu_prev_scroll_y_unk_4A8
		JSR	exec_b0_c2_12A9A9

locret_12AD9F:				
		RTS
; ---------------------------------------------------------------------------

loc_12ADA0:				
		LDA	byte_46E
		CMP	#$28 
		BNE	loc_12ADDB
		LDA	#$FF
		STA	byte_592
		LDA	byte_591
		AND	byte_592
		CMP	#0
		BEQ	locret_12ADDA
		JSR	entry_idx_handler_unk_12AA6D
		LDA	entry_idx_300
		STA	image_id_4A4
		LDA	ppu_unk_byte_302
		STA	image_offset_4A5
		LDA	ppu_unk_byte_303
		STA	ppu_prev_unk_4A6
		LDA	ppu_scroll_x_304
		STA	ppu_prev_scroll_x_unk_4A7
		LDA	ppu_scroll_y_305
		STA	ppu_prev_scroll_y_unk_4A8
		JSR	exec_b0_c2_12A9A9

locret_12ADDA:				
		RTS
; ---------------------------------------------------------------------------

loc_12ADDB:				
		LDA	byte_46E
		CMP	#$39 
		BNE	loc_12ADE8
		LDA	#$FF
		STA	byte_587
		RTS
; ---------------------------------------------------------------------------

loc_12ADE8:				
		LDA	byte_46E
		CMP	#0
		BNE	loc_12ADF5
		LDA	#$FF
		STA	byte_64C
		RTS
; ---------------------------------------------------------------------------

loc_12ADF5:				
		LDA	byte_46E
		CMP	#$15
		BNE	loc_12AE02
		LDA	#$FF
		STA	byte_59B
		RTS
; ---------------------------------------------------------------------------

loc_12AE02:				
		LDA	byte_46E
		CMP	#$16
		BNE	loc_12AE0F
		LDA	#$FF
		STA	byte_59C
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
					; sub_12ACDB+14Cj
		LDA	byte_590
		EOR	#$FF
		STA	byte_590
		JMP	loc_12AE47
; ---------------------------------------------------------------------------

loc_12AE3F:				
					; sub_12ACDB+144j
		LDA	byte_58C
		EOR	#$FF
		STA	byte_58C

loc_12AE47:				
					; sub_12ACDB+161j
		JSR	entry_idx_handler_unk_12AA6D
		LDA	entry_idx_300
		STA	image_id_4A4
		LDA	ppu_unk_byte_302
		STA	image_offset_4A5
		LDA	ppu_unk_byte_303
		STA	ppu_prev_unk_4A6
		LDA	ppu_scroll_x_304
		STA	ppu_prev_scroll_x_unk_4A7
		LDA	ppu_scroll_y_305
		STA	ppu_prev_scroll_y_unk_4A8
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
		LDA	#$FF
		STA	byte_636
		STA	byte_633
		RTS
; ---------------------------------------------------------------------------

loc_12AE86:				
		LDA	#$FF
		STA	byte_6CA
		LDA	#1
		STA	byte_313
		JSR	exec_b0_c9_1284AA
		LDA	#$81 
		STA	text_idx_35C
		LDA	#1
		STA	char_type_id_35D
		LDA	#2
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		LDA	#1
		STA	tilemapData_4C
		LDA	#1
		STA	roomUnk1_4D
		LDA	#3
		STA	roomUnk2_4E
		LDA	#3
		STA	tilemap_line_idx_4F
		JSR	exec_b0_cB_1284E0
		LDA	#1
		STA	tilemapData_4C
		LDA	#1
		STA	roomUnk1_4D
		LDA	#3
		STA	roomUnk2_4E
		LDA	#1
		STA	tilemap_line_idx_4F
		JSR	exec_b0_cB_1284E0
		LDA	#$84 
		STA	text_idx_35C
		LDA	#1
		STA	char_type_id_35D
		LDA	#6
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973

set_helipad_level_12AEDD:
		LDA	#$9A 
		STA	image_id_4A4
		LDA	#0
		STA	image_offset_4A5
		STA	ppu_prev_unk_4A6
		STA	ppu_prev_scroll_x_unk_4A7
		STA	ppu_prev_scroll_y_unk_4A8
		STA	prev_sprite_type_4A9
		LDA	#$40 
		STA	byte_4AD
		LDA	#$50 
		STA	byte_4AE
		JSR	exec_b0_c2_12A9A9
		RTS
; ---------------------------------------------------------------------------

loc_12AF01:				
		LDA	byte_46E
		CMP	#2
		BNE	loc_12AF16
		LDA	#$FF
		STA	byte_5EF
		LDA	#0
		STA	cur_obj_idx_unk_43A
		JSR	sub_12BF29
		RTS
; ---------------------------------------------------------------------------

loc_12AF16:				
		LDA	byte_46E
		CMP	#$3B 
		BNE	loc_12AF2B
		LDA	#$FF
		STA	byte_5F9
		LDA	#0
		STA	cur_obj_idx_unk_43A
		JSR	sub_12BF29
		RTS
; ---------------------------------------------------------------------------

loc_12AF2B:				
		LDA	byte_46E
		CMP	#$2C 
		BNE	loc_12AF69
		LDA	#0
		STA	byte_5E7
		LDA	#8
		STA	cur_obj_idx_unk_43A
		JSR	exec_b0_c3_128418
		LDA	#9
		STA	cur_obj_idx_unk_43A
		JSR	exec_b0_c3_128418
		LDA	entry_idx_300
		STA	image_id_4A4
		LDA	ppu_unk_byte_302
		STA	image_offset_4A5
		LDA	ppu_unk_byte_303
		STA	ppu_prev_unk_4A6
		LDA	ppu_scroll_x_304
		STA	ppu_prev_scroll_x_unk_4A7
		LDA	ppu_scroll_y_305
		STA	ppu_prev_scroll_y_unk_4A8
		JSR	exec_b0_c2_12A9A9
		RTS
; ---------------------------------------------------------------------------

loc_12AF69:				
		LDA	byte_46E
		CMP	#$24 
		BNE	loc_12AF9A
		LDA	#$FF
		STA	byte_586
		JSR	entry_idx_handler_unk_12AA6D
		LDA	entry_idx_300
		STA	image_id_4A4
		LDA	ppu_unk_byte_302
		STA	image_offset_4A5
		LDA	ppu_unk_byte_303
		STA	ppu_prev_unk_4A6
		LDA	ppu_scroll_x_304
		STA	ppu_prev_scroll_x_unk_4A7
		LDA	ppu_scroll_y_305
		STA	ppu_prev_scroll_y_unk_4A8
		JSR	exec_b0_c2_12A9A9
		RTS
; ---------------------------------------------------------------------------

loc_12AF9A:				
		LDA	byte_46E
		CMP	#$17
		BNE	loc_12AFA7
		LDA	#$FF
		STA	byte_5CB
		RTS
; ---------------------------------------------------------------------------

loc_12AFA7:				
		LDA	byte_46E
		CMP	#$18
		BNE	loc_12AFB4
		LDA	#$FF
		STA	byte_59D
		RTS
; ---------------------------------------------------------------------------

loc_12AFB4:				
		LDA	byte_46E
		CMP	#$13
		BNE	loc_12AFC1
		LDA	#$FF
		STA	byte_599
		RTS
; ---------------------------------------------------------------------------

loc_12AFC1:				
		LDA	byte_46E
		CMP	#$14
		BNE	loc_12AFCE
		LDA	#$FF
		STA	byte_59A
		RTS
; ---------------------------------------------------------------------------

loc_12AFCE:				
		LDA	byte_46E
		CMP	#$22 
		BNE	loc_12AFE3
		LDA	#$FF
		STA	byte_5D9
		LDA	#0
		STA	cur_obj_idx_unk_43A
		JSR	sub_12BF29
		RTS
; ---------------------------------------------------------------------------

loc_12AFE3:				
		LDA	byte_46E
		CMP	#$23 
		BNE	loc_12AFF8
		LDA	#$FF
		STA	byte_5B3
		LDA	#1
		STA	cur_obj_idx_unk_43A
		JSR	sub_12BF29
		RTS
; ---------------------------------------------------------------------------

loc_12AFF8:				
		LDA	byte_46E
		CMP	#$2D 
		BNE	loc_12B03B
		LDA	#$BC 
		STA	text_idx_35C
		LDA	#1
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		LDA	#$FF
		STA	byte_55F
		JSR	entry_idx_handler_unk_12AA6D
		LDA	entry_idx_300
		STA	image_id_4A4
		LDA	ppu_unk_byte_302
		STA	image_offset_4A5
		LDA	ppu_unk_byte_303
		STA	ppu_prev_unk_4A6
		LDA	ppu_scroll_x_304
		STA	ppu_prev_scroll_x_unk_4A7
		LDA	ppu_scroll_y_305
		STA	ppu_prev_scroll_y_unk_4A8
		JSR	exec_b0_c2_12A9A9
		RTS
; ---------------------------------------------------------------------------

loc_12B03B:				
		CMP	#$1C
		BNE	loc_12B074
		LDA	entry_idx_300
		CMP	#$1E
		BEQ	loc_12B054
		LDA	#$FF
		STA	byte_5A8
		LDA	#0
		STA	cur_obj_idx_unk_43A
		JSR	sub_12BF29
		RTS
; ---------------------------------------------------------------------------

loc_12B054:				
		LDA	#$FF
		STA	byte_5BD
		LDA	#7
		STA	cur_obj_idx_unk_43A
		JSR	sub_12BF29
		LDA	#6
		STA	text_idx_35C
		LDA	#2
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		RTS
; ---------------------------------------------------------------------------

loc_12B074:				
		CMP	#$1D
		BNE	loc_12B0E2
		LDA	entry_idx_300
		CMP	#$1E
		BEQ	loc_12B0C2
		LDA	#$FF
		STA	byte_5A9
		LDA	#2
		STA	cur_obj_idx_unk_43A
		LDA	entry_idx_300
		CMP	#$17
		BEQ	loc_12B095
		LDA	#1
		STA	cur_obj_idx_unk_43A

loc_12B095:				
		JSR	sub_12BF29
		LDA	#$FF
		STA	byte_5BE
		JSR	entry_idx_handler_unk_12AA6D
		LDA	entry_idx_300
		STA	image_id_4A4
		LDA	ppu_unk_byte_302
		STA	image_offset_4A5
		LDA	ppu_unk_byte_303
		STA	ppu_prev_unk_4A6
		LDA	ppu_scroll_x_304
		STA	ppu_prev_scroll_x_unk_4A7
		LDA	ppu_scroll_y_305
		STA	ppu_prev_scroll_y_unk_4A8
		JSR	exec_b0_c2_12A9A9
		RTS
; ---------------------------------------------------------------------------

loc_12B0C2:				
		LDA	#$FF
		STA	byte_5BC
		LDA	#6
		STA	cur_obj_idx_unk_43A
		JSR	sub_12BF29
		LDA	#6
		STA	text_idx_35C
		LDA	#2
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		RTS
; ---------------------------------------------------------------------------

loc_12B0E2:				
		CMP	#$1B
		BNE	loc_12B106
		LDA	#6
		STA	text_idx_35C
		LDA	#1
		STA	char_type_id_35D
		LDA	#4
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		LDA	#1
		STA	byte_545
		LDA	#$FF
		STA	byte_562
		STA	byte_6C7
		RTS
; ---------------------------------------------------------------------------

loc_12B106:				
		CMP	#$1E
		BNE	loc_12B11F
		LDA	#$FF
		STA	byte_59F
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
		LDA	#$FF
		STA	byte_5A0
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
		LDA	#$FF
		STA	byte_5A1
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
		LDA	#$FF
		STA	byte_5A2
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
		LDA	#$FF
		STA	byte_565
		JMP	loc_12B18A
; ---------------------------------------------------------------------------

loc_12B17D:				
		CMP	#$8D 
		BNE	locret_12B189
		LDA	#0
		STA	byte_565
		JMP	loc_12B18A
; ---------------------------------------------------------------------------

locret_12B189:				
		RTS
; ---------------------------------------------------------------------------

loc_12B18A:				
					; sub_12ACDB+4ABj
		JSR	entry_idx_handler_unk_12AA6D
		LDA	entry_idx_300
		STA	image_id_4A4
		LDA	ppu_unk_byte_302
		STA	image_offset_4A5
		LDA	ppu_unk_byte_303
		STA	ppu_prev_unk_4A6
		LDA	ppu_scroll_x_304
		STA	ppu_prev_scroll_x_unk_4A7
		LDA	ppu_scroll_y_305
		STA	ppu_prev_scroll_y_unk_4A8
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
		LDA	#$AA 
		STA	text_idx_35C
		LDA	#1
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		RTS
; End of function sub_12B1B0


; =============== S U B	R O U T	I N E =======================================


sub_12B1CB:				
					; sub_12B225+3Bp ...
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
byte_12B1DC:	.BYTE	5,  1,	4,  2,	3,  6,	0 

; =============== S U B	R O U T	I N E =======================================


sub_12B1E3:				
		LDA	byte_471
		CMP	#0
		BEQ	loc_12B1EB
		RTS
; ---------------------------------------------------------------------------

loc_12B1EB:				
		LDA	#$AB 
		STA	text_idx_35C
		LDA	#1
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		LDA	byte_55B
		BNE	locret_12B224
		LDA	#$B3 
		STA	text_idx_35C
		LDA	#1
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		JSR	exec_b0_c1_12A98E
		LDA	byte_372
		CMP	#1
		BEQ	locret_12B224
		JSR	sub_12B1CB
		STY	byte_555

locret_12B224:				
					; sub_12B1E3+39j
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
		LDA	#$AC 
		STA	text_idx_35C
		LDA	#1
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		LDA	byte_55B
		BNE	locret_12B266
		LDA	#$B3 
		STA	text_idx_35C
		LDA	#1
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		JSR	exec_b0_c1_12A98E
		LDA	byte_372
		CMP	#1
		BEQ	locret_12B266
		JSR	sub_12B1CB
		STY	byte_556

locret_12B266:				
					; sub_12B225+39j
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
		LDA	#$AD 
		STA	text_idx_35C
		LDA	#1
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		LDA	byte_55B
		BNE	locret_12B2A8
		LDA	#$B3 
		STA	text_idx_35C
		LDA	#1
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		JSR	exec_b0_c1_12A98E
		LDA	byte_372
		CMP	#1
		BEQ	locret_12B2A8
		JSR	sub_12B1CB
		STY	byte_557

locret_12B2A8:				
					; sub_12B267+39j
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
		LDA	#$AE 
		STA	text_idx_35C
		LDA	#1
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		LDA	byte_55B
		BNE	locret_12B2EA
		LDA	#$B3 
		STA	text_idx_35C
		LDA	#1
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		JSR	exec_b0_c1_12A98E
		LDA	byte_372
		CMP	#1
		BEQ	locret_12B2EA
		JSR	sub_12B1CB
		STY	byte_558

locret_12B2EA:				
					; sub_12B2A9+39j
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
		LDA	#$AF 
		STA	text_idx_35C
		LDA	#1
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		LDA	byte_55B
		BNE	locret_12B32C
		LDA	#$B3 
		STA	text_idx_35C
		LDA	#1
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		JSR	exec_b0_c1_12A98E
		LDA	byte_372
		CMP	#1
		BEQ	locret_12B32C
		JSR	sub_12B1CB
		STY	byte_559

locret_12B32C:				
					; sub_12B2EB+39j
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
		LDA	#$B0 
		STA	text_idx_35C
		LDA	#1
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		LDA	byte_55B
		BNE	locret_12B36E
		LDA	#$B3 
		STA	text_idx_35C
		LDA	#1
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		JSR	exec_b0_c1_12A98E
		LDA	byte_372
		CMP	#1
		BEQ	locret_12B36E
		JSR	sub_12B1CB
		STY	byte_55A

locret_12B36E:				
					; sub_12B32D+39j
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
		LDA	#$B1 
		STA	text_idx_35C
		LDA	#1
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		LDA	#$B3 
		STA	text_idx_35C
		LDA	#1
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
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
		LDA	#$F
		STA	byte_55B
		JSR	entry_idx_handler_unk_12AA6D
		LDA	entry_idx_300
		STA	image_id_4A4
		LDA	ppu_unk_byte_302
		STA	image_offset_4A5
		LDA	ppu_unk_byte_303
		STA	ppu_prev_unk_4A6
		LDA	ppu_scroll_x_304
		STA	ppu_prev_scroll_x_unk_4A7
		LDA	ppu_scroll_y_305
		STA	ppu_prev_scroll_y_unk_4A8
		JSR	exec_b0_c2_12A9A9
		JMP	locret_12B403
; ---------------------------------------------------------------------------

loc_12B3E8:				
		LDA	#$FF
		STA	byte_627
		STA	byte_628
		LDA	#0
		STA	cur_obj_idx_unk_43A
		JSR	sub_12BF29
		LDA	#1
		STA	cur_obj_idx_unk_43A
		JSR	sub_12BF29
		JMP	locret_12B403
; ---------------------------------------------------------------------------

locret_12B403:				
					; sub_12B36F+3Cj ...
		RTS
; End of function sub_12B36F


; =============== S U B	R O U T	I N E =======================================


sub_12B404:				
		LDA	byte_471
		CMP	#0
		BNE	loc_12B41E
		LDA	#$A7 
		STA	text_idx_35C
		LDA	#1
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
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
					; sub_12B404+26j ...
		LDA	#$1E
		STA	byte_46D
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
		LDA	#0
		STA	byte_5E2
		RTS
; ---------------------------------------------------------------------------

loc_12B458:				
		LDA	#0
		STA	byte_6B0
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
		LDA	#0
		STA	byte_5E3
		RTS
; ---------------------------------------------------------------------------

loc_12B475:				
		CMP	#6
		BNE	locret_12B47E
		LDA	#0
		STA	byte_5E6

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
		LDA	#0
		STA	byte_5B9
		RTS
; ---------------------------------------------------------------------------

loc_12B49D:				
		LDA	#0
		STA	byte_5BA
		RTS
; ---------------------------------------------------------------------------

loc_12B4A3:				
		CMP	#$B
		BNE	loc_12B4C8
		LDA	byte_434
		CMP	#1
		BNE	loc_12B4B4
		LDA	#0
		STA	byte_5B6
		RTS
; ---------------------------------------------------------------------------

loc_12B4B4:				
		CMP	#2
		BNE	loc_12B4BE
		LDA	#0
		STA	byte_5B7
		RTS
; ---------------------------------------------------------------------------

loc_12B4BE:				
		CMP	#3
		BNE	locret_12B4C7
		LDA	#0
		STA	byte_5B8

locret_12B4C7:				
		RTS
; ---------------------------------------------------------------------------

loc_12B4C8:				
		CMP	#$13
		BNE	loc_12B4D2
		LDA	#0
		STA	byte_5B5
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
		LDA	#0
		STA	byte_5CD
		RTS
; ---------------------------------------------------------------------------
		JMP	loc_12BD54
; ---------------------------------------------------------------------------

loc_12B4FA:				
		LDA	#0
		STA	byte_5CE
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
		LDA	#0
		STA	byte_5CF
		RTS
; ---------------------------------------------------------------------------
		JMP	loc_12BD54
; ---------------------------------------------------------------------------

loc_12B517:				
		LDA	#0
		STA	byte_5D0
		RTS
; ---------------------------------------------------------------------------

loc_12B51D:				
		CMP	#$17
		BNE	locret_12B527
		LDA	#0
		STA	byte_5CC
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
		LDA	#0
		STA	byte_5D7
		RTS
; ---------------------------------------------------------------------------
		JMP	loc_12BD54
; ---------------------------------------------------------------------------

loc_12B545:				
					; sub_12B441+15Cj
		LDA	obj_array_unk_415,X
		CMP	#7
		BNE	loc_12B552
		LDA	#0
		STA	byte_5D6
		RTS
; ---------------------------------------------------------------------------

loc_12B552:				
		LDA	obj_array_unk_415,X
		CMP	#$47 
		BNE	locret_12B58A
		LDA	#0
		STA	byte_6A8
		LDA	#$FF
		STA	byte_588
		STA	byte_5D8
		JSR	entry_idx_handler_unk_12AA6D
		LDA	entry_idx_300
		STA	image_id_4A4
		LDA	ppu_unk_byte_302
		STA	image_offset_4A5
		LDA	ppu_unk_byte_303
		STA	ppu_prev_unk_4A6
		LDA	ppu_scroll_x_304
		STA	ppu_prev_scroll_x_unk_4A7
		LDA	ppu_scroll_y_305
		STA	ppu_prev_scroll_y_unk_4A8
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
		LDA	#0
		STA	byte_5D7
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
		LDA	#0
		STA	byte_5DD
		RTS
; ---------------------------------------------------------------------------

loc_12B5BF:				
		LDA	obj_array_unk_415,X
		CMP	#$3B 
		BNE	locret_12B5CB
		LDA	#0
		STA	byte_5DC

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
		LDA	#0
		STA	byte_5DE
		RTS
; ---------------------------------------------------------------------------

loc_12B5E3:				
		LDA	obj_array_unk_415,X
		CMP	#$1B
		BNE	locret_12B5EF
		LDA	#0
		STA	byte_5C3

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
		LDA	#0
		STA	byte_5EA

loc_12B606:				
					; sub_12B441+1BEj
		LDA	entry_idx_300
		CMP	#$26 
		BNE	loc_12B61C
		LDX	byte_434
		LDA	obj_array_unk_415,X
		CMP	#$B
		BNE	loc_12B61C
		LDA	#0
		STA	byte_5EB

loc_12B61C:				
					; sub_12B441+1D4j
		LDA	entry_idx_300
		CMP	#$27 
		BNE	loc_12B636
		LDA	byte_434
		CMP	#0
		BNE	loc_12B630
		LDA	#0
		STA	byte_5EC
		RTS
; ---------------------------------------------------------------------------

loc_12B630:				
		LDA	#0
		STA	byte_5ED
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
		LDA	#0
		STA	byte_5EE

loc_12B64C:				
					; sub_12B441+204j
		LDA	entry_idx_300
		CMP	#$2A 
		BNE	loc_12B662
		LDX	byte_434
		LDA	obj_array_unk_415,X
		CMP	#$14
		BNE	loc_12B662
		LDA	#0
		STA	byte_5EF

loc_12B662:				
					; sub_12B441+21Aj
		LDA	entry_idx_300
		CMP	#$2C 
		BNE	loc_12B678
		LDX	byte_434
		LDA	obj_array_unk_415,X
		CMP	#$B
		BNE	loc_12B678
		LDA	#0
		STA	byte_5F3

loc_12B678:				
					; sub_12B441+230j
		LDA	entry_idx_300
		CMP	#$2E 
		BNE	loc_12B69C
		LDX	byte_434
		LDA	obj_array_unk_415,X
		CMP	#8
		BNE	loc_12B68F
		LDA	#0
		STA	byte_5F4
		RTS
; ---------------------------------------------------------------------------

loc_12B68F:				
		LDA	obj_array_unk_415,X
		CMP	#$25 
		BNE	locret_12B69B
		LDA	#0
		STA	byte_5F5

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
		LDA	#0
		STA	byte_5F7
		RTS
; ---------------------------------------------------------------------------

loc_12B6B0:				
		CMP	#2
		BNE	loc_12B6BA
		LDA	#0
		STA	byte_5F8
		RTS
; ---------------------------------------------------------------------------

loc_12B6BA:				
		LDA	#0
		STA	byte_5B4
		RTS
; ---------------------------------------------------------------------------

loc_12B6C0:				
		LDA	entry_idx_300
		CMP	#$32 
		BNE	loc_12B6E8
		LDA	byte_434
		CMP	#0
		BNE	loc_12B6D4
		LDA	#0
		STA	byte_5FB
		RTS
; ---------------------------------------------------------------------------

loc_12B6D4:				
		CMP	#1
		BNE	loc_12B6DE
		LDA	#0
		STA	byte_5FA
		RTS
; ---------------------------------------------------------------------------

loc_12B6DE:				
		CMP	#3
		BNE	locret_12B6E7
		LDA	#0
		STA	byte_6B2

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
		LDA	#0
		STA	byte_601
		RTS
; ---------------------------------------------------------------------------

loc_12B6FF:				
					; sub_12B441+2B6j
		LDA	entry_idx_300
		CMP	#$38 
		BNE	loc_12B72D
		LDX	byte_434
		LDA	obj_array_unk_415,X
		CMP	#7
		BNE	loc_12B716
		LDA	#0
		STA	byte_604
		RTS
; ---------------------------------------------------------------------------

loc_12B716:				
		CMP	#$52 
		BNE	loc_12B720
		LDA	#0
		STA	byte_6AE
		RTS
; ---------------------------------------------------------------------------

loc_12B720:				
		LDA	obj_array_unk_415,X
		CMP	#8
		BNE	locret_12B72C
		LDA	#0
		STA	byte_605

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
		LDA	#0
		STA	byte_608
		RTS
; ---------------------------------------------------------------------------

loc_12B741:				
		LDA	#0
		STA	byte_609
		RTS
; ---------------------------------------------------------------------------

loc_12B747:				
		LDA	entry_idx_300
		CMP	#$3B 
		BNE	loc_12B783
		LDA	byte_434
		CMP	#0
		BNE	loc_12B75B
		LDA	#0
		STA	byte_60D
		RTS
; ---------------------------------------------------------------------------

loc_12B75B:				
		CMP	#1
		BNE	loc_12B765
		LDA	#0
		STA	byte_60E
		RTS
; ---------------------------------------------------------------------------

loc_12B765:				
		CMP	#2
		BNE	loc_12B76F
		LDA	#0
		STA	byte_611
		RTS
; ---------------------------------------------------------------------------

loc_12B76F:				
		CMP	#3
		BNE	loc_12B779
		LDA	#0
		STA	byte_610
		RTS
; ---------------------------------------------------------------------------

loc_12B779:				
		CMP	#4
		BNE	locret_12B782
		LDA	#0
		STA	byte_60F

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
		LDA	#0
		STA	byte_613
		RTS
; ---------------------------------------------------------------------------

loc_12B79A:				
		CMP	#$4A 
		BNE	locret_12B7A3
		LDA	#0
		STA	byte_6AB

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
		LDA	#0
		STA	byte_615

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
		LDA	#0
		STA	byte_61C
		RTS
; ---------------------------------------------------------------------------

loc_12B7CF:				
		CMP	#2
		BNE	locret_12B7D8
		LDA	#0
		STA	byte_61B

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
		LDA	#0
		STA	byte_61D

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
		LDA	#0
		STA	byte_61E
		RTS
; ---------------------------------------------------------------------------

loc_12B807:				
		CMP	#$1F
		BNE	locret_12B810
		LDA	#0
		STA	byte_5C4

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
		LDA	#0
		STA	byte_61F
		RTS
; ---------------------------------------------------------------------------

loc_12B828:				
		CMP	#$53 
		BNE	locret_12B831
		LDA	#0
		STA	byte_6AF

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
		LDA	#0
		STA	byte_622
		RTS
; ---------------------------------------------------------------------------

loc_12B849:				
		CMP	#$C
		BNE	locret_12B852
		LDA	#0
		STA	byte_623

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
		LDA	#0
		STA	byte_624
		RTS
; ---------------------------------------------------------------------------

loc_12B86A:				
		CMP	#6
		BNE	loc_12B874
		LDA	#0
		STA	byte_625
		RTS
; ---------------------------------------------------------------------------

loc_12B874:				
		CMP	#$48 
		BNE	locret_12B87D
		LDA	#0
		STA	byte_6A9

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
		LDA	#0
		STA	byte_626
		RTS
; ---------------------------------------------------------------------------

loc_12B895:				
		CMP	#$3E 
		BNE	locret_12B89E
		LDA	#0
		STA	byte_6B1

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
		LDA	#0
		STA	byte_62A
		RTS
; ---------------------------------------------------------------------------

loc_12B8B3:				
		CMP	#1
		BNE	loc_12B8BD
		LDA	#0
		STA	byte_62B
		RTS
; ---------------------------------------------------------------------------

loc_12B8BD:				
		CMP	#2
		BNE	loc_12B8C7
		LDA	#0
		STA	byte_62C
		RTS
; ---------------------------------------------------------------------------

loc_12B8C7:				
		CMP	#3
		BNE	loc_12B8D1
		LDA	#0
		STA	byte_62D
		RTS
; ---------------------------------------------------------------------------

loc_12B8D1:				
		CMP	#4
		BNE	locret_12B8DA
		LDA	#0
		STA	byte_6B3

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
		LDA	#0
		STA	byte_637
		RTS
; ---------------------------------------------------------------------------

loc_12B8EF:				
		CMP	#1
		BNE	loc_12B8F9
		LDA	#0
		STA	byte_638
		RTS
; ---------------------------------------------------------------------------

loc_12B8F9:				
		CMP	#2
		BNE	loc_12B903
		LDA	#0
		STA	byte_639
		RTS
; ---------------------------------------------------------------------------

loc_12B903:				
		CMP	#3
		BNE	locret_12B90C
		LDA	#0
		STA	byte_63A

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
		LDA	#0
		STA	byte_63D

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
		LDA	#0
		STA	byte_63D

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
		LDA	#0
		STA	byte_641
		RTS
; ---------------------------------------------------------------------------

loc_12B952:				
		CMP	#9
		BNE	locret_12B95B
		LDA	#0
		STA	byte_642

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
		LDA	#0
		STA	byte_643
		RTS
; ---------------------------------------------------------------------------

loc_12B973:				
		CMP	#9
		BNE	locret_12B97C
		LDA	#0
		STA	byte_644

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
		LDA	#0
		STA	byte_645

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
		LDA	#0
		STA	byte_645

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
		LDA	#0
		STA	byte_64B

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
		LDA	#0
		STA	byte_64D
		RTS
; ---------------------------------------------------------------------------

loc_12B9D9:				
		CMP	#$1A
		BNE	loc_12B9E3
		LDA	#0
		STA	byte_64F
		RTS
; ---------------------------------------------------------------------------

loc_12B9E3:				
		CMP	#$12
		BNE	locret_12B9EC
		LDA	#0
		STA	byte_64E

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
		LDA	#0
		STA	byte_650
		RTS
; ---------------------------------------------------------------------------

loc_12BA04:				
		CMP	#$40 
		BNE	locret_12BA0D
		LDA	#0
		STA	byte_6B4

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
		LDA	#0
		STA	byte_650

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
		LDA	#0
		STA	byte_655
		RTS
; ---------------------------------------------------------------------------

loc_12BA39:				
		CMP	#1
		BNE	loc_12BA43
		LDA	#0
		STA	byte_656
		RTS
; ---------------------------------------------------------------------------

loc_12BA43:				
		CMP	#2
		BNE	loc_12BA4D
		LDA	#0
		STA	byte_657
		RTS
; ---------------------------------------------------------------------------

loc_12BA4D:				
		CMP	#3
		BNE	locret_12BA56
		LDA	#0
		STA	byte_658

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
		LDA	#0
		STA	byte_65A
		RTS
; ---------------------------------------------------------------------------

loc_12BA6E:				
		CMP	#$12
		BNE	locret_12BA77
		LDA	#0
		STA	byte_65B

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
		LDA	#0
		STA	byte_5C5
		RTS
; ---------------------------------------------------------------------------

loc_12BA8F:				
		CMP	#7
		BNE	locret_12BA98
		LDA	#0
		STA	byte_65C

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
		LDA	#0
		STA	byte_65D
		RTS
; ---------------------------------------------------------------------------

loc_12BAB0:				
		CMP	#$18
		BNE	locret_12BAB9
		LDA	#0
		STA	byte_5C8

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
		LDA	#0
		STA	byte_65D
		RTS
; ---------------------------------------------------------------------------

loc_12BAD1:				
		CMP	#$18
		BNE	locret_12BADA
		LDA	#0
		STA	byte_5C8

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
		LDA	#0
		STA	byte_65F
		RTS
; ---------------------------------------------------------------------------

loc_12BAF2:				
		CMP	#$55 
		BNE	loc_12BAFC
		LDA	#0
		STA	byte_6BC
		RTS
; ---------------------------------------------------------------------------

loc_12BAFC:				
		CMP	#$1A
		BNE	locret_12BB05
		LDA	#0
		STA	byte_660

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
		LDA	#0
		STA	byte_663
		RTS
; ---------------------------------------------------------------------------

loc_12BB1A:				
		CMP	#1
		BNE	locret_12BB23
		LDA	#0
		STA	byte_664

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
		LDA	#0
		STA	byte_66D
		RTS
; ---------------------------------------------------------------------------

loc_12BB3B:				
		CMP	#$41 
		BNE	loc_12BB45
		LDA	#0
		STA	byte_6B5
		RTS
; ---------------------------------------------------------------------------

loc_12BB45:				
		CMP	#$49 
		BNE	locret_12BB4E
		LDA	#0
		STA	byte_6AA

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
		LDA	#0
		STA	byte_66F
		RTS
; ---------------------------------------------------------------------------

loc_12BB66:				
		CMP	#$4C 
		BNE	locret_12BB6F
		LDA	#0
		STA	byte_6AC

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
		LDA	#0
		STA	byte_66F

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
		LDA	#0
		STA	byte_671

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
		LDA	#0
		STA	byte_672
		RTS
; ---------------------------------------------------------------------------

loc_12BBB2:				
		CMP	#4
		BNE	loc_12BBBC
		LDA	#0
		STA	byte_673
		RTS
; ---------------------------------------------------------------------------

loc_12BBBC:				
		CMP	#5
		BNE	locret_12BBC5
		LDA	#0
		STA	byte_6B6

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
					; sub_12B441+78Ej
		LDA	byte_434
		CMP	#0
		BNE	loc_12BBE1
		LDA	#0
		STA	byte_675
		RTS
; ---------------------------------------------------------------------------

loc_12BBE1:				
		CMP	#1
		BNE	loc_12BBEB
		LDA	#0
		STA	byte_676
		RTS
; ---------------------------------------------------------------------------

loc_12BBEB:				
		CMP	#2
		BNE	loc_12BBF5
		LDA	#0
		STA	byte_677
		RTS
; ---------------------------------------------------------------------------

loc_12BBF5:				
		CMP	#3
		BNE	loc_12BBFF
		LDA	#0
		STA	byte_678
		RTS
; ---------------------------------------------------------------------------

loc_12BBFF:				
		CMP	#4
		BNE	locret_12BC08
		LDA	#0
		STA	byte_679

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
		LDA	#0
		STA	byte_67E
		RTS
; ---------------------------------------------------------------------------

loc_12BC1D:				
		CMP	#3
		BNE	loc_12BC27
		LDA	#0
		STA	byte_67F
		RTS
; ---------------------------------------------------------------------------

loc_12BC27:				
		CMP	#4
		BNE	loc_12BC31
		LDA	#0
		STA	byte_680
		RTS
; ---------------------------------------------------------------------------

loc_12BC31:				
		CMP	#5
		BNE	locret_12BC3A
		LDA	#0
		STA	byte_681

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
		LDA	#0
		STA	byte_682

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
		LDA	#0
		STA	byte_6B7

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
		LDA	#0
		STA	byte_6B8

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
		LDA	#0
		STA	byte_6B9

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
		LDA	#0
		STA	byte_6BA

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
					; sub_12B441+876j
		LDA	byte_434
		CMP	#1
		BNE	loc_12BCC9
		LDA	#0
		STA	byte_685
		RTS
; ---------------------------------------------------------------------------

loc_12BCC9:				
		CMP	#2
		BNE	loc_12BCD2
		LDA	#0
		STA	byte_686

loc_12BCD2:				
		CMP	#3
		BNE	locret_12BCDB
		LDA	#0
		STA	byte_687

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
		LDA	#0
		STA	byte_68B
		RTS
; ---------------------------------------------------------------------------

loc_12BCF0:				
		CMP	#1
		BNE	loc_12BCFA
		LDA	#0
		STA	byte_68C
		RTS
; ---------------------------------------------------------------------------

loc_12BCFA:				
		CMP	#5
		BNE	locret_12BD03
		LDA	#0
		STA	byte_69F

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
		LDA	#0
		STA	byte_691
		RTS
; ---------------------------------------------------------------------------

loc_12BD18:				
		CMP	#1
		BNE	loc_12BD22
		LDA	#0
		STA	byte_692
		RTS
; ---------------------------------------------------------------------------

loc_12BD22:				
		CMP	#2
		BNE	loc_12BD2C
		LDA	#0
		STA	byte_693
		RTS
; ---------------------------------------------------------------------------

loc_12BD2C:				
		CMP	#3
		BNE	locret_12BD35
		LDA	#0
		STA	byte_694

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
		LDA	#0
		STA	byte_6A5
		RTS
; ---------------------------------------------------------------------------

loc_12BD4A:				
		CMP	#1
		BNE	locret_12BD53
		LDA	#0
		STA	byte_6A6

locret_12BD53:				
		RTS
; ---------------------------------------------------------------------------

loc_12BD54:				
					; sub_12B441+95j ...
		LDX	byte_434
		LDA	obj_array_unk_415,X
		CMP	#$20 
		BNE	loc_12BD64
		LDA	#0
		STA	byte_5AD
		RTS
; ---------------------------------------------------------------------------

loc_12BD64:				
		CMP	#$1C
		BNE	loc_12BD8D
		LDA	entry_idx_300
		CMP	#$1E
		BEQ	loc_12BD75
		LDA	#0
		STA	byte_5A8
		RTS
; ---------------------------------------------------------------------------

loc_12BD75:				
		LDA	#0
		STA	byte_5BD
		LDA	#5
		STA	text_idx_35C
		LDA	#2
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		RTS
; ---------------------------------------------------------------------------

loc_12BD8D:				
		CMP	#$19
		BNE	loc_12BD9C
		LDA	#0
		STA	byte_683
		LDA	#$FF
		STA	byte_59E
		RTS
; ---------------------------------------------------------------------------

loc_12BD9C:				
		CMP	#$39 
		BNE	loc_12BDA6
		LDA	#0
		STA	byte_6BB
		RTS
; ---------------------------------------------------------------------------

loc_12BDA6:				
		CMP	#$50 
		BNE	loc_12BDB0
		LDA	#0
		STA	byte_6AD
		RTS
; ---------------------------------------------------------------------------

loc_12BDB0:				
		CMP	#$21 
		BNE	loc_12BDBA
		LDA	#0
		STA	byte_5B3
		RTS
; ---------------------------------------------------------------------------

loc_12BDBA:				
		CMP	#$16
		BNE	loc_12BDC4
		LDA	#0
		STA	byte_5C9
		RTS
; ---------------------------------------------------------------------------

loc_12BDC4:				
		CMP	#$2D 
		BNE	loc_12BDCE
		LDA	#0
		STA	byte_5BB
		RTS
; ---------------------------------------------------------------------------

loc_12BDCE:				
		CMP	#$30 
		BNE	loc_12BDD8
		LDA	#0
		STA	byte_614
		RTS
; ---------------------------------------------------------------------------

loc_12BDD8:				
		CMP	#$1D
		BNE	loc_12BE01
		LDA	entry_idx_300
		CMP	#$1E
		BEQ	loc_12BDE9
		LDA	#0
		STA	byte_5A9
		RTS
; ---------------------------------------------------------------------------

loc_12BDE9:				
		LDA	#0
		STA	byte_5BC
		LDA	#5
		STA	text_idx_35C
		LDA	#2
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		RTS
; ---------------------------------------------------------------------------

loc_12BE01:				
		CMP	#$14
		BNE	loc_12BE0B
		LDA	#0
		STA	byte_5BE
		RTS
; ---------------------------------------------------------------------------

loc_12BE0B:				
		CMP	#$23 
		BNE	loc_12BE15
		LDA	#0
		STA	byte_5AA
		RTS
; ---------------------------------------------------------------------------

loc_12BE15:				
		CMP	#$15
		BNE	loc_12BE5D
		LDA	#0
		STA	byte_5D1
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
		CMP	#3
		BNE	loc_12BE67
		LDA	#0
		STA	byte_5D9
		RTS
; ---------------------------------------------------------------------------

loc_12BE67:				
		CMP	#2
		BNE	loc_12BE7E
		LDA	byte_5F9
		CMP	#$FF
		BEQ	loc_12BE78
		LDA	#0
		STA	byte_5EF
		RTS
; ---------------------------------------------------------------------------

loc_12BE78:				
		LDA	#0
		STA	byte_5F9
		RTS
; ---------------------------------------------------------------------------

loc_12BE7E:				
		CMP	#$22 
		BNE	loc_12BE88
		LDA	#0
		STA	byte_606
		RTS
; ---------------------------------------------------------------------------

loc_12BE88:				
		CMP	#4
		BNE	loc_12BEAA
		LDA	#0
		STA	byte_616
		LDA	#$FF
		STA	byte_617
		STA	byte_618
		LDA	#1
		STA	cur_obj_idx_unk_43A
		JSR	sub_12BF29
		LDA	#2
		STA	cur_obj_idx_unk_43A
		JSR	sub_12BF29
		RTS
; ---------------------------------------------------------------------------

loc_12BEAA:				
		CMP	#$26 
		BNE	locret_12BEB4
		LDA	#0
		STA	byte_654
		RTS
; ---------------------------------------------------------------------------

locret_12BEB4:				
		RTS
; End of function sub_12B441


; =============== S U B	R O U T	I N E =======================================


sub_12BEB5:				
		LDA	byte_5B0
		BEQ	locret_12BEF9
		LDA	#0
		STA	text_idx_35C
		LDA	#2
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
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
		LDA	#0
		STA	byte_5B0
		LDA	#$FF
		STA	byte_5AA

locret_12BEF9:				
					; sub_12BEB5+1Fj
		RTS
; End of function sub_12BEB5


; =============== S U B	R O U T	I N E =======================================


sub_12BEFA:				
		LDA	byte_471
		CMP	#0
		BNE	loc_12BF14
		LDA	#$39 
		STA	text_idx_35C
		LDA	#2
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
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
					; sub_12BEFA+26j
		LDA	#$22 
		STA	byte_46D
		RTS
; End of function sub_12BEFA


; =============== S U B	R O U T	I N E =======================================


sub_12BF29:				
					; sub_12873A+AEp ...
		LDX	cur_obj_idx_unk_43A
		LDA	#0
		STA	objCreatedArray_393,X
		RTS
; End of function sub_12BF29


; =============== S U B	R O U T	I N E =======================================


sub_12BF32:				
		LDA	byte_471
		CMP	#0
		BNE	loc_12BF4C
		LDA	#$37 
		STA	text_idx_35C
		LDA	#2
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		RTS
; ---------------------------------------------------------------------------

loc_12BF4C:				
		LDA	#$2C 
		STA	byte_46D
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
		LDA	#$2D 
		STA	byte_46D

locret_12BF65:				
		RTS
; ---------------------------------------------------------------------------

loc_12BF66:				
		LDA	#$BE 
		STA	text_idx_35C
		LDA	#1
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		RTS
; End of function sub_12BF52


; =============== S U B	R O U T	I N E =======================================


sub_12BF79:				
		LDA	byte_5BC
		BNE	locret_12BF88
		LDA	byte_5BD
		BNE	locret_12BF88
		LDA	#$1C
		STA	byte_46D

locret_12BF88:				
					; sub_12BF79+8j
		RTS
; End of function sub_12BF79


; =============== S U B	R O U T	I N E =======================================


sub_12BF89:				
		LDA	byte_5A8
		BNE	locret_12BF98
		LDA	byte_5A9
		BNE	locret_12BF98
		LDA	#$1C
		STA	byte_46D

locret_12BF98:				
					; sub_12BF89+8j
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
		LDA	#$1E
		STA	tilemapTypeUnk_30B
		JSR	sub_12D58C
		LDA	sprite_length_30F
		BEQ	locret_12BFC0
		LDA	#1
		STA	byte_59F

locret_12BFC0:				
					; sub_12BF99+20j
		RTS
; ---------------------------------------------------------------------------

loc_12BFC1:				
					; sub_12BF99+Cj
		LDA	#$FF
		STA	byte_560
		JSR	exec_b0_c4_12842B
		LDA	#1
		STA	text_idx_35C
		LDA	#2
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		JSR	exec_b0_c4_12842B
		RTS
; End of function sub_12BF99


; =============== S U B	R O U T	I N E =======================================


sub_12BFDF:				
		LDA	byte_471
		CMP	#0
		BEQ	loc_12BFEC
		LDA	#$1B
		STA	byte_46D
		RTS
; ---------------------------------------------------------------------------

loc_12BFEC:				
		LDA	byte_562
		CMP	#0
		BNE	loc_12C00B
		LDA	#$FF
		STA	text_idx_35C
		LDA	#0
		STA	char_type_id_35D
		LDA	#7
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		LDA	#$F
		STA	byte_562
		RTS
; ---------------------------------------------------------------------------

loc_12C00B:				
		CMP	#$F
		BNE	locret_12C021
		LDA	#5
		STA	text_idx_35C
		LDA	#1
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
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
		LDA	#$FF
		STA	byte_563
		LDA	#2
		STA	text_idx_35C
		LDA	#2
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		JSR	sub_12D21B
		LDA	#3
		STA	text_idx_35C
		LDA	#2
		STA	char_type_id_35D
		JSR	exec_b2_c3_128313

set_mansion_saveroom_12C05C:
		LDA	#$21 
		STA	image_id_4A4
		LDA	#0
		STA	image_offset_4A5
		LDA	#0
		STA	ppu_prev_unk_4A6
		LDA	#0
		STA	ppu_prev_scroll_x_unk_4A7
		STA	ppu_prev_scroll_y_unk_4A8
		STA	prev_sprite_type_4A9
		LDA	#$60 
		STA	byte_4AD
		LDA	#$70 
		STA	byte_4AE
		JSR	exec_b0_c2_12A9A9
		LDA	#$B
		STA	text_idx_35C
		LDA	#1
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973

locret_12C095:				
					; sub_12C022+Aj ...
		RTS
; End of function sub_12C022


; =============== S U B	R O U T	I N E =======================================


sub_12C096:				
		LDA	byte_564
		BNE	locret_12C0AD
		LDA	#$29 
		STA	tilemapTypeUnk_30B
		JSR	sub_12D58C
		LDA	sprite_length_30F
		BEQ	locret_12C0AD
		LDA	#$FF
		STA	byte_564

locret_12C0AD:				
					; sub_12C096+10j
		RTS
; End of function sub_12C096


; =============== S U B	R O U T	I N E =======================================


sub_12C0AE:				
		LDA	byte_471
		CMP	#0
		BEQ	loc_12C0BB
		LDA	#$29 
		STA	byte_46D
		RTS
; ---------------------------------------------------------------------------

loc_12C0BB:				
		LDA	#$CB 
		STA	text_idx_35C
		LDA	#1
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		RTS
; End of function sub_12C0AE


; =============== S U B	R O U T	I N E =======================================


sub_12C0CE:				
		LDA	byte_566
		CMP	#0
		BNE	locret_12C118
		LDA	#$D6 
		STA	text_idx_35C
		LDA	#1
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		JSR	exec_b0_c1_12A98E
		LDA	byte_372
		BNE	locret_12C118
		LDA	#$FF
		STA	byte_566
		JSR	entry_idx_handler_unk_12AA6D
		LDA	entry_idx_300
		STA	image_id_4A4
		LDA	ppu_unk_byte_302
		STA	image_offset_4A5
		LDA	ppu_unk_byte_303
		STA	ppu_prev_unk_4A6
		LDA	ppu_scroll_x_304
		STA	ppu_prev_scroll_x_unk_4A7
		LDA	ppu_scroll_y_305
		STA	ppu_prev_scroll_y_unk_4A8
		JSR	exec_b0_c2_12A9A9

locret_12C118:				
					; sub_12C0CE+1Fj
		RTS
; End of function sub_12C0CE


; =============== S U B	R O U T	I N E =======================================


sub_12C119:				
		LDX	#0

loc_12C11B:				
					; sub_12C119+20j
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
		PLA
		TAX
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
		LDA	array_unk_3C5,X
		STA	byte_578,Y
		LDA	array_unk_3BB,X
		STA	byte_57B,Y
		LDA	array_unk_3D9,X
		STA	byte_57E,Y
		LDA	array_unk_3CF,X
		STA	byte_581,Y
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
		LDA	#$FF
		STA	byte_577

locret_12C1B7:				
					; sub_12C13C+18j ...
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
					; sub_12C46C+29p
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
		JSR	wait_for_count350_zero_12F770
		JSR	wait_for_count350_zero_12F770
		JSR	wait_for_count350_zero_12F770
		JSR	wait_for_count350_zero_12F770
		PLA
		TAX
		PLA
		TAY
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
		LDA	#$E2 
		STA	text_idx_35C
		LDA	#1
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		JSR	exec_b0_c1_12A98E
		LDA	byte_372
		BNE	locret_12C220
		LDA	#$FF
		STA	byte_585

locret_12C220:				
					; sub_12C1F2+27j
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
		LDA	#$E3 
		STA	text_idx_35C
		LDA	#1
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		JSR	exec_b0_c1_12A98E
		LDA	byte_372
		BNE	locret_12C25D
		LDA	#$E4 
		STA	text_idx_35C
		LDA	#1
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
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
		LDA	#$24 
		STA	byte_46D
		RTS
; ---------------------------------------------------------------------------

loc_12C26B:				
		LDA	#$42 
		STA	text_idx_35C
		LDA	#2
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
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
		LDA	#$33 
		STA	inv_sprite_idx_31C
		JSR	sub_128955
		LDA	is_game_finished_561
		CMP	#$FF
		BEQ	return_12C2BE
		LDA	#$FF
		STA	byte_587
		JSR	entry_idx_handler_unk_12AA6D
		LDA	entry_idx_300
		STA	image_id_4A4
		LDA	ppu_unk_byte_302
		STA	image_offset_4A5
		LDA	ppu_unk_byte_303
		STA	ppu_prev_unk_4A6
		LDA	ppu_scroll_x_304
		STA	ppu_prev_scroll_x_unk_4A7
		LDA	ppu_scroll_y_305
		STA	ppu_prev_scroll_y_unk_4A8
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
		LDA	#2
		STA	byte_46D

locret_12C2D5:				
					; sub_12C2BF+Fj
		RTS
; End of function sub_12C2BF


; =============== S U B	R O U T	I N E =======================================


sub_12C2D6:				
		LDA	byte_471
		CMP	#0
		BNE	locret_12C323
		LDA	#$E3 
		STA	text_idx_35C
		LDA	#1
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		JSR	exec_b0_c1_12A98E
		LDA	byte_372
		BNE	locret_12C323
		LDA	byte_589
		EOR	#$FF
		STA	byte_589
		JSR	entry_idx_handler_unk_12AA6D
		LDA	entry_idx_300
		STA	image_id_4A4
		LDA	ppu_unk_byte_302
		STA	image_offset_4A5
		LDA	ppu_unk_byte_303
		STA	ppu_prev_unk_4A6
		LDA	ppu_scroll_x_304
		STA	ppu_prev_scroll_x_unk_4A7
		LDA	ppu_scroll_y_305
		STA	ppu_prev_scroll_y_unk_4A8
		JSR	exec_b0_c2_12A9A9

locret_12C323:				
					; sub_12C2D6+1Fj
		RTS
; End of function sub_12C2D6


; =============== S U B	R O U T	I N E =======================================


sub_12C324:				
		LDA	byte_471
		CMP	#0
		BNE	locret_12C371
		LDA	#$E3 
		STA	text_idx_35C
		LDA	#1
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		JSR	exec_b0_c1_12A98E
		LDA	byte_372
		BNE	locret_12C371
		LDA	byte_58B
		EOR	#$FF
		STA	byte_58B
		JSR	entry_idx_handler_unk_12AA6D
		LDA	entry_idx_300
		STA	image_id_4A4
		LDA	ppu_unk_byte_302
		STA	image_offset_4A5
		LDA	ppu_unk_byte_303
		STA	ppu_prev_unk_4A6
		LDA	ppu_scroll_x_304
		STA	ppu_prev_scroll_x_unk_4A7
		LDA	ppu_scroll_y_305
		STA	ppu_prev_scroll_y_unk_4A8
		JSR	exec_b0_c2_12A9A9

locret_12C371:				
					; sub_12C324+1Fj
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
		LDA	#$2A 
		STA	byte_46D
		RTS
; ---------------------------------------------------------------------------

loc_12C380:				
		LDA	#$B
		STA	text_idx_35C
		LDA	#2
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		RTS
; End of function sub_12C373


; =============== S U B	R O U T	I N E =======================================


sub_12C393:				
		LDA	byte_471
		CMP	#0
		BNE	loc_12C3AD
		LDA	#$BA 
		STA	text_idx_35C
		LDA	#0
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		RTS
; ---------------------------------------------------------------------------

loc_12C3AD:				
		LDA	#3
		STA	byte_47F
		LDA	#$1A
		STA	byte_46D
		RTS
; End of function sub_12C393


; =============== S U B	R O U T	I N E =======================================


sub_12C3B8:				
		LDA	#$FF
		STA	byte_58D
		RTS
; End of function sub_12C3B8


; =============== S U B	R O U T	I N E =======================================


sub_12C3BE:				
		LDA	byte_58D
		BEQ	locret_12C3C8
		LDA	#$FF
		STA	byte_58E

locret_12C3C8:				
		RTS
; End of function sub_12C3BE


; =============== S U B	R O U T	I N E =======================================


sub_12C3C9:				
		LDA	byte_471
		CMP	#0
		BNE	loc_12C3E3
		LDA	#$BA 
		STA	text_idx_35C
		LDA	#0
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		RTS
; ---------------------------------------------------------------------------

loc_12C3E3:				
		LDA	#1
		STA	byte_47F
		LDA	#$1A
		STA	byte_46D
		RTS
; End of function sub_12C3C9


; =============== S U B	R O U T	I N E =======================================


sub_12C3EE:				
		LDA	byte_471
		CMP	#0
		BNE	loc_12C408
		LDA	#$BA 
		STA	text_idx_35C
		LDA	#0
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		RTS
; ---------------------------------------------------------------------------

loc_12C408:				
		LDA	#2
		STA	byte_47F
		LDA	#$1A
		STA	byte_46D
		RTS
; End of function sub_12C3EE


; =============== S U B	R O U T	I N E =======================================


sub_12C413:				
		LDA	byte_471
		CMP	#0
		BNE	loc_12C42D
		LDA	#$BA 
		STA	text_idx_35C
		LDA	#0
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		RTS
; ---------------------------------------------------------------------------

loc_12C42D:				
		LDA	#4
		STA	byte_47F
		LDA	#$1A
		STA	byte_46D
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
		LDA	#$2A 
		STA	byte_46D
		RTS
; ---------------------------------------------------------------------------

loc_12C44C:				
		LDA	#$B
		STA	text_idx_35C
		LDA	#2
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		RTS
; End of function sub_12C43F


; =============== S U B	R O U T	I N E =======================================


sub_12C45F:				
		LDA	byte_651
		CMP	#0
		BEQ	locret_12C46B
		LDA	#$FF
		STA	byte_58D

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
		LDA	#5
		STA	cur_obj_idx_unk_43A
		JSR	exec_b0_c3_128418
		LDA	#6
		STA	cur_obj_idx_unk_43A
		JSR	exec_b0_c3_128418
		LDA	#0
		STA	byte_659

locret_12C4AD:				
					; sub_12C46C+Ej ...
		RTS
; End of function sub_12C46C


; =============== S U B	R O U T	I N E =======================================


sub_12C4AE:				
		LDA	byte_471
		CMP	#0
		BNE	loc_12C4C8
		LDA	#$BA 
		STA	text_idx_35C
		LDA	#0
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		RTS
; ---------------------------------------------------------------------------

loc_12C4C8:				
		LDA	#5
		STA	byte_47F
		LDA	#$1A
		STA	byte_46D
		RTS
; End of function sub_12C4AE


; =============== S U B	R O U T	I N E =======================================


sub_12C4D3:				
		LDA	byte_313
		CMP	#1
		BNE	locret_12C4F2
		LDA	#1
		STA	cur_obj_idx_unk_43A
		JSR	sub_12BF29
		LDA	#2
		STA	cur_obj_idx_unk_43A
		JSR	sub_12BF29
		LDA	#3
		STA	cur_obj_idx_unk_43A
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
		LDA	#$39 
		STA	byte_46D
		RTS
; ---------------------------------------------------------------------------

loc_12C507:				
		LDA	#$D
		STA	text_idx_35C
		LDA	#2
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
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
		LDA	#$27 
		STA	byte_46D
		RTS
; ---------------------------------------------------------------------------

loc_12C52E:				
		LDA	#$E
		STA	text_idx_35C
		LDA	#2
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
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
		LDA	#$28 
		STA	byte_46D
		RTS
; ---------------------------------------------------------------------------

loc_12C555:				
		LDA	#$F
		STA	text_idx_35C
		LDA	#2
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973

locret_12C567:				
		RTS
; End of function sub_12C541


; =============== S U B	R O U T	I N E =======================================


sub_12C568:				
		LDA	byte_471
		CMP	#0
		BEQ	loc_12C575
		LDA	#$2E 
		STA	byte_46D
		RTS
; ---------------------------------------------------------------------------

loc_12C575:				
		LDA	#$12
		STA	text_idx_35C
		LDA	#2
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		RTS
; End of function sub_12C568


; =============== S U B	R O U T	I N E =======================================


show_tree_screen_12C588:		
		LDA	entry_idx_300
		PHA
		LDA	ppu_unk_byte_302
		PHA
		LDA	ppu_unk_byte_303
		PHA
		LDA	ppu_scroll_x_304
		PHA
		LDA	ppu_scroll_y_305
		PHA
		LDA	sprite_type_306
		PHA

set_tree_screen_12C5A0:
		LDA	#$9D 
		STA	image_id_4A4
		LDA	byte_593
		CMP	#0
		BEQ	loc_12C5B1
		LDA	#$9E 
		STA	image_id_4A4

loc_12C5B1:				
		LDA	#0
		STA	image_offset_4A5
		STA	ppu_prev_unk_4A6
		STA	ppu_prev_scroll_x_unk_4A7
		STA	ppu_prev_scroll_y_unk_4A8
		LDA	#$FF
		STA	prev_sprite_type_4A9
		JSR	exec_b0_c2_12A9A9
		JSR	wait_for_b_pressed_12F795
		PLA
		STA	prev_sprite_type_4A9
		PLA
		STA	ppu_prev_scroll_y_unk_4A8
		PLA
		STA	ppu_prev_scroll_x_unk_4A7
		PLA
		STA	ppu_prev_unk_4A6
		PLA
		STA	image_offset_4A5
		PLA
		STA	image_id_4A4
		LDA	#$FF
		STA	map_show_43B
		JSR	exec_b0_c2_12A9A9
		LDA	#0
		STA	map_show_43B
		RTS
; End of function show_tree_screen_12C588


; =============== S U B	R O U T	I N E =======================================


sub_12C5F0:				
		LDA	#$E3 
		STA	text_idx_35C
		LDA	#1
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		JSR	exec_b0_c1_12A98E
		LDA	byte_372
		BNE	locret_12C636
		LDA	byte_593
		EOR	#$FF
		STA	byte_593
		JSR	entry_idx_handler_unk_12AA6D
		LDA	entry_idx_300
		STA	image_id_4A4
		LDA	ppu_unk_byte_302
		STA	image_offset_4A5
		LDA	ppu_unk_byte_303
		STA	ppu_prev_unk_4A6
		LDA	ppu_scroll_x_304
		STA	ppu_prev_scroll_x_unk_4A7
		LDA	ppu_scroll_y_305
		STA	ppu_prev_scroll_y_unk_4A8
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
		LDA	#$30 
		STA	byte_46D
		RTS
; ---------------------------------------------------------------------------

loc_12C66E:				
		LDA	#$20 
		STA	text_idx_35C
		LDA	#2
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		RTS
; ---------------------------------------------------------------------------

loc_12C681:				
					; sub_12C637+1Aj ...
		LDA	#$21 
		STA	text_idx_35C
		LDA	#2
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		RTS
; End of function sub_12C637


; =============== S U B	R O U T	I N E =======================================


sub_12C694:				
		LDA	#$24 
		STA	text_idx_35C
		LDA	#2
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		JSR	exec_b0_c1_12A98E
		LDA	byte_372
		CMP	#1
		BEQ	locret_12C6B8
		LDA	#2
		STA	byte_420
		JSR	sub_12F07D

locret_12C6B8:				
		RTS
; End of function sub_12C694


; =============== S U B	R O U T	I N E =======================================


sub_12C6B9:				
		LDA	byte_471
		CMP	#0
		BNE	loc_12C6D3
		LDA	#$BA 
		STA	text_idx_35C
		LDA	#0
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		RTS
; ---------------------------------------------------------------------------

loc_12C6D3:				
		LDA	#6
		STA	byte_47F
		LDA	#$1A
		STA	byte_46D
		RTS
; End of function sub_12C6B9


; =============== S U B	R O U T	I N E =======================================


sub_12C6DE:				
		LDA	#$2A 
		STA	text_idx_35C
		LDA	#2
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		JSR	exec_b0_c1_12A98E
		LDA	byte_372
		CMP	#1
		BEQ	locret_12C6FF
		LDA	#$FF
		STA	byte_67B

locret_12C6FF:				
		RTS
; End of function sub_12C6DE


; =============== S U B	R O U T	I N E =======================================


sub_12C700:				
		LDA	byte_67A
		CMP	#$FF
		BEQ	loc_12C72A
		LDA	#$27 
		STA	text_idx_35C
		LDA	#2
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		JSR	exec_b0_c1_12A98E
		LDA	byte_372
		CMP	#1
		BEQ	locret_12C754
		LDA	byte_67B
		CMP	#$FF
		BNE	loc_12C742

loc_12C72A:				
		LDA	#$28 
		STA	text_idx_35C
		LDA	#2
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		LDA	#$FF
		STA	byte_67A
		RTS
; ---------------------------------------------------------------------------

loc_12C742:				
		LDA	#$29 
		STA	text_idx_35C
		LDA	#2
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973

locret_12C754:				
		RTS
; End of function sub_12C700


; =============== S U B	R O U T	I N E =======================================


sub_12C755:				
		LDA	#$26 
		STA	text_idx_35C
		LDA	#2
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		JSR	exec_b0_c1_12A98E
		LDA	byte_372
		CMP	#1
		BEQ	locret_12C791
		LDA	byte_67A
		CMP	#0
		BEQ	loc_12C77E
		LDA	#$FF
		STA	byte_6A0
		RTS
; ---------------------------------------------------------------------------

loc_12C77E:				
		LDA	#$33 
		STA	text_idx_35C
		LDA	#2
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
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
		LDA	#$FF
		STA	byte_595
		STA	byte_6A1
		LDA	#0
		STA	byte_6A3
		JSR	entry_idx_handler_unk_12AA6D
		LDA	entry_idx_300
		STA	image_id_4A4
		LDA	ppu_unk_byte_302
		STA	image_offset_4A5
		LDA	ppu_unk_byte_303
		STA	ppu_prev_unk_4A6
		LDA	ppu_scroll_x_304
		STA	ppu_prev_scroll_x_unk_4A7
		LDA	ppu_scroll_y_305
		STA	ppu_prev_scroll_y_unk_4A8
		JSR	exec_b0_c2_12A9A9

locret_12C7CA:				
		RTS
; End of function sub_12C792


; =============== S U B	R O U T	I N E =======================================


sub_12C7CB:				
		LDA	#$35 
		STA	text_idx_35C
		LDA	#2
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		RTS
; End of function sub_12C7CB


; =============== S U B	R O U T	I N E =======================================


sub_12C7DE:				
					; sub_128A1A+AEp
		LDA	image_id_4A4
		CMP	#$18
		BNE	loc_12C7EB
		LDA	#2
		STA	byte_54E
		RTS
; ---------------------------------------------------------------------------

loc_12C7EB:				
		LDA	image_id_4A4
		CMP	#$1B
		BNE	loc_12C805
		LDA	cur_obj_idx_unk_43A
		CMP	#0
		BNE	loc_12C7FF
		LDA	#0
		STA	byte_5E8
		RTS
; ---------------------------------------------------------------------------

loc_12C7FF:				
		LDA	#0
		STA	byte_5E9
		RTS
; ---------------------------------------------------------------------------

loc_12C805:				
		LDA	image_id_4A4
		CMP	#$87 
		BNE	loc_12C812
		LDA	#0
		STA	byte_5D8
		RTS
; ---------------------------------------------------------------------------

loc_12C812:				
		LDA	image_id_4A4
		CMP	#$1F
		BNE	loc_12C82C
		LDA	cur_obj_idx_unk_43A
		CMP	#0
		BNE	loc_12C826
		LDA	#0
		STA	byte_5DA
		RTS
; ---------------------------------------------------------------------------

loc_12C826:				
		LDA	#0
		STA	byte_5DB
		RTS
; ---------------------------------------------------------------------------

loc_12C82C:				
		LDA	image_id_4A4
		CMP	#$22 
		BNE	loc_12C839
		LDA	#0
		STA	byte_5E0
		RTS
; ---------------------------------------------------------------------------

loc_12C839:				
		LDA	image_id_4A4
		CMP	#$23 
		BNE	loc_12C846
		LDA	#0
		STA	byte_5E1
		RTS
; ---------------------------------------------------------------------------

loc_12C846:				
		LDA	image_id_4A4
		CMP	#$25 
		BNE	loc_12C860
		LDA	cur_obj_idx_unk_43A
		CMP	#1
		BNE	loc_12C85A
		LDA	#0
		STA	byte_5E4
		RTS
; ---------------------------------------------------------------------------

loc_12C85A:				
		LDA	#0
		STA	byte_5E5
		RTS
; ---------------------------------------------------------------------------

loc_12C860:				
		LDA	image_id_4A4
		CMP	#$2B 
		BNE	loc_12C87A
		LDA	cur_obj_idx_unk_43A
		CMP	#0
		BNE	loc_12C874
		LDA	#0
		STA	byte_5F0
		RTS
; ---------------------------------------------------------------------------

loc_12C874:				
		LDA	#0
		STA	byte_5F1
		RTS
; ---------------------------------------------------------------------------

loc_12C87A:				
		LDA	image_id_4A4
		CMP	#$2C 
		BNE	loc_12C887
		LDA	#0
		STA	byte_5F2
		RTS
; ---------------------------------------------------------------------------

loc_12C887:				
		LDA	image_id_4A4
		CMP	#$30 
		BNE	loc_12C894
		LDA	#0
		STA	byte_5F6
		RTS
; ---------------------------------------------------------------------------

loc_12C894:				
		LDA	image_id_4A4
		CMP	#$36 
		BNE	loc_12C8AE
		LDA	cur_obj_idx_unk_43A
		CMP	#1
		BNE	loc_12C8A8
		LDA	#0
		STA	byte_5B2
		RTS
; ---------------------------------------------------------------------------

loc_12C8A8:				
		LDA	#0
		STA	byte_5B1
		RTS
; ---------------------------------------------------------------------------

loc_12C8AE:				
		LDA	image_id_4A4
		CMP	#$37 
		BNE	loc_12C8C8
		LDA	cur_obj_idx_unk_43A
		CMP	#0
		BNE	loc_12C8C2
		LDA	#0
		STA	byte_602
		RTS
; ---------------------------------------------------------------------------

loc_12C8C2:				
		LDA	#0
		STA	byte_603
		RTS
; ---------------------------------------------------------------------------

loc_12C8C8:				
		LDA	image_id_4A4
		CMP	#$3C 
		BNE	loc_12C8D5
		LDA	#0
		STA	byte_612
		RTS
; ---------------------------------------------------------------------------

loc_12C8D5:				
		LDA	image_id_4A4
		CMP	#$3A 
		BNE	loc_12C8F9
		LDA	cur_obj_idx_unk_43A
		CMP	#2
		BNE	loc_12C8E9
		LDA	#0
		STA	byte_60A
		RTS
; ---------------------------------------------------------------------------

loc_12C8E9:				
		CMP	#3
		BNE	loc_12C8F3
		LDA	#0
		STA	byte_60B
		RTS
; ---------------------------------------------------------------------------

loc_12C8F3:				
		LDA	#0
		STA	byte_60C
		RTS
; ---------------------------------------------------------------------------

loc_12C8F9:				
		LDA	image_id_4A4
		CMP	#$41 
		BNE	loc_12C913
		LDA	cur_obj_idx_unk_43A
		CMP	#0
		BNE	loc_12C90D
		LDA	#0
		STA	byte_619
		RTS
; ---------------------------------------------------------------------------

loc_12C90D:				
		LDA	#0
		STA	byte_61A
		RTS
; ---------------------------------------------------------------------------

loc_12C913:				
		LDA	image_id_4A4
		CMP	#$48 
		BNE	loc_12C92D
		LDA	cur_obj_idx_unk_43A
		CMP	#0
		BNE	loc_12C927
		LDA	#0
		STA	byte_620
		RTS
; ---------------------------------------------------------------------------

loc_12C927:				
		LDA	#0
		STA	byte_621
		RTS
; ---------------------------------------------------------------------------

loc_12C92D:				
		LDA	image_id_4A4
		CMP	#$32 
		BNE	loc_12C93A
		LDA	#0
		STA	byte_5FC
		RTS
; ---------------------------------------------------------------------------

loc_12C93A:				
		LDA	image_id_4A4
		CMP	#$33 
		BNE	loc_12C954
		LDA	cur_obj_idx_unk_43A
		CMP	#0
		BNE	loc_12C94E
		LDA	#0
		STA	byte_5FD
		RTS
; ---------------------------------------------------------------------------

loc_12C94E:				
		LDA	#0
		STA	byte_5FE
		RTS
; ---------------------------------------------------------------------------

loc_12C954:				
		LDA	image_id_4A4
		CMP	#$34 
		BNE	loc_12C96E
		LDA	cur_obj_idx_unk_43A
		CMP	#0
		BNE	loc_12C968
		LDA	#0
		STA	byte_5FF
		RTS
; ---------------------------------------------------------------------------

loc_12C968:				
		LDA	#0
		STA	byte_600
		RTS
; ---------------------------------------------------------------------------

loc_12C96E:				
		LDA	image_id_4A4
		CMP	#$4E 
		BNE	loc_12C992
		LDA	cur_obj_idx_unk_43A
		CMP	#6
		BNE	loc_12C982
		LDA	#0
		STA	byte_630
		RTS
; ---------------------------------------------------------------------------

loc_12C982:				
		CMP	#7
		BNE	loc_12C98C
		LDA	#0
		STA	byte_631
		RTS
; ---------------------------------------------------------------------------

loc_12C98C:				
		LDA	#0
		STA	byte_632
		RTS
; ---------------------------------------------------------------------------

loc_12C992:				
		LDA	image_id_4A4
		CMP	#$50 
		BNE	loc_12C9AC
		LDA	cur_obj_idx_unk_43A
		CMP	#0
		BNE	loc_12C9A6
		LDA	#0
		STA	byte_634
		RTS
; ---------------------------------------------------------------------------

loc_12C9A6:				
		LDA	#0
		STA	byte_634
		RTS
; ---------------------------------------------------------------------------

loc_12C9AC:				
		LDA	image_id_4A4
		CMP	#$51 
		BNE	loc_12C9C6
		LDA	cur_obj_idx_unk_43A
		CMP	#4
		BNE	loc_12C9C0
		LDA	#0
		STA	byte_63B
		RTS
; ---------------------------------------------------------------------------

loc_12C9C0:				
		LDA	#0
		STA	byte_63C
		RTS
; ---------------------------------------------------------------------------

loc_12C9C6:				
		LDA	image_id_4A4
		CMP	#$54 
		BNE	loc_12C9D3
		LDA	#0
		STA	byte_63E
		RTS
; ---------------------------------------------------------------------------

loc_12C9D3:				
		LDA	image_id_4A4
		CMP	#$55 
		BNE	loc_12C9ED
		LDA	cur_obj_idx_unk_43A
		CMP	#0
		BNE	loc_12C9E7
		LDA	#0
		STA	byte_63F
		RTS
; ---------------------------------------------------------------------------

loc_12C9E7:				
		LDA	#0
		STA	byte_640
		RTS
; ---------------------------------------------------------------------------

loc_12C9ED:				
		LDA	image_id_4A4
		CMP	#$91 
		BNE	loc_12C9FA
		LDA	#0
		STA	byte_647
		RTS
; ---------------------------------------------------------------------------

loc_12C9FA:				
		LDA	image_id_4A4
		CMP	#$58 
		BNE	loc_12CA1E
		LDA	cur_obj_idx_unk_43A
		CMP	#0
		BNE	loc_12CA0E
		LDA	#0
		STA	byte_648
		RTS
; ---------------------------------------------------------------------------

loc_12CA0E:				
		CMP	#1
		BNE	loc_12CA18
		LDA	#0
		STA	byte_649
		RTS
; ---------------------------------------------------------------------------

loc_12CA18:				
		LDA	#0
		STA	byte_64A
		RTS
; ---------------------------------------------------------------------------

loc_12CA1E:				
		LDA	image_id_4A4
		CMP	#$60 
		BNE	loc_12CA2B
		LDA	#0
		STA	byte_65E
		RTS
; ---------------------------------------------------------------------------

loc_12CA2B:				
		LDA	image_id_4A4
		CMP	#$61 
		BNE	loc_12CA45
		LDA	cur_obj_idx_unk_43A
		CMP	#2
		BNE	loc_12CA3F
		LDA	#0
		STA	byte_661
		RTS
; ---------------------------------------------------------------------------

loc_12CA3F:				
		LDA	#0
		STA	byte_662
		RTS
; ---------------------------------------------------------------------------

loc_12CA45:				
		LDA	image_id_4A4
		CMP	#$5F 
		BNE	loc_12CA5F
		LDA	cur_obj_idx_unk_43A
		CMP	#2
		BNE	loc_12CA59
		LDA	#0
		STA	byte_668
		RTS
; ---------------------------------------------------------------------------

loc_12CA59:				
		LDA	#0
		STA	byte_669
		RTS
; ---------------------------------------------------------------------------

loc_12CA5F:				
		LDA	image_id_4A4
		CMP	#$65 
		BNE	loc_12CA79
		LDA	cur_obj_idx_unk_43A
		CMP	#1
		BNE	loc_12CA73
		LDA	#0
		STA	byte_66B
		RTS
; ---------------------------------------------------------------------------

loc_12CA73:				
		LDA	#0
		STA	byte_66C
		RTS
; ---------------------------------------------------------------------------

loc_12CA79:				
		LDA	image_id_4A4
		CMP	#$66 
		BNE	loc_12CA86
		LDA	#0
		STA	byte_66E
		RTS
; ---------------------------------------------------------------------------

loc_12CA86:				
		LDA	image_id_4A4
		CMP	#$68 
		BNE	loc_12CA93
		LDA	#0
		STA	byte_670
		RTS
; ---------------------------------------------------------------------------

loc_12CA93:				
		LDA	image_id_4A4
		CMP	#$72 
		BNE	loc_12CAAD
		LDA	cur_obj_idx_unk_43A
		CMP	#0
		BNE	loc_12CAA7
		LDA	#0
		STA	byte_67C
		RTS
; ---------------------------------------------------------------------------

loc_12CAA7:				
		LDA	#0
		STA	byte_67D
		RTS
; ---------------------------------------------------------------------------

loc_12CAAD:				
		LDA	image_id_4A4
		CMP	#$77 
		BNE	loc_12CAD1
		LDA	cur_obj_idx_unk_43A
		CMP	#0
		BNE	loc_12CAC1
		LDA	#0
		STA	byte_688
		RTS
; ---------------------------------------------------------------------------

loc_12CAC1:				
		CMP	#1
		BNE	loc_12CACB
		LDA	#0
		STA	byte_689
		RTS
; ---------------------------------------------------------------------------

loc_12CACB:				
		LDA	#0
		STA	byte_68A
		RTS
; ---------------------------------------------------------------------------

loc_12CAD1:				
		LDA	image_id_4A4
		CMP	#$7F 
		BNE	loc_12CAF5
		LDA	cur_obj_idx_unk_43A
		CMP	#0
		BNE	loc_12CAE5
		LDA	#0
		STA	byte_695
		RTS
; ---------------------------------------------------------------------------

loc_12CAE5:				
		CMP	#1
		BNE	loc_12CAEF
		LDA	#0
		STA	byte_696
		RTS
; ---------------------------------------------------------------------------

loc_12CAEF:				
		LDA	#0
		STA	byte_697
		RTS
; ---------------------------------------------------------------------------

loc_12CAF5:				
		LDA	image_id_4A4
		CMP	#$74 
		BNE	loc_12CB23
		LDA	cur_obj_idx_unk_43A
		CMP	#0
		BNE	loc_12CB09
		LDA	#0
		STA	byte_698
		RTS
; ---------------------------------------------------------------------------

loc_12CB09:				
		CMP	#1
		BNE	loc_12CB13
		LDA	#0
		STA	byte_699
		RTS
; ---------------------------------------------------------------------------

loc_12CB13:				
		CMP	#2
		BNE	loc_12CB1D
		LDA	#0
		STA	byte_69A
		RTS
; ---------------------------------------------------------------------------

loc_12CB1D:				
		LDA	#0
		STA	byte_69B
		RTS
; ---------------------------------------------------------------------------

loc_12CB23:				
		LDA	image_id_4A4
		CMP	#$7C 
		BNE	loc_12CB3D
		LDA	cur_obj_idx_unk_43A
		CMP	#0
		BNE	loc_12CB37
		LDA	#0
		STA	byte_69C
		RTS
; ---------------------------------------------------------------------------

loc_12CB37:				
		LDA	#0
		STA	byte_69D
		RTS
; ---------------------------------------------------------------------------

loc_12CB3D:				
		LDA	image_id_4A4
		CMP	#$9A 
		BNE	loc_12CB4A
		LDA	#0
		STA	byte_6A7
		RTS
; ---------------------------------------------------------------------------

loc_12CB4A:				
		LDA	image_id_4A4
		CMP	#$96 
		BNE	locret_12CB57
		LDA	#0
		STA	byte_6A1
		RTS
; ---------------------------------------------------------------------------

locret_12CB57:				
		RTS
; End of function sub_12C7DE


; =============== S U B	R O U T	I N E =======================================


show_intro_screen_12CB58:		
		JSR	sub_12F77B
		LDA	#$10
		STA	image_id_4A4
		LDA	#0
		STA	image_offset_4A5
		STA	ppu_prev_unk_4A6
		STA	ppu_prev_scroll_x_unk_4A7
		STA	ppu_prev_scroll_y_unk_4A8
		LDA	#2
		STA	prev_sprite_type_4A9
		LDA	#$1A
		STA	objectIdx_318
		JSR	exec_b0_c2_12A9A9
		LDA	#$88 
		STA	byte_42C
		LDA	#$26 
		STA	byte_42E
		LDA	#0
		STA	byte_430
		STA	byte_431
		STA	byte_433
		STA	byte_434
		STA	byte_42B

loc_12CB96:				
					; show_intro_screen_12CB58:loc_12CBD6j	...
		JSR	sub_12CC34
		JSR	wait_for_count350_zero_12F770
		JSR	wait_for_count350_zero_12F770
		JSR	wait_for_count350_zero_12F770
		JSR	wait_for_count350_zero_12F770
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
		LDA	#0
		STA	count_unk_468
		INC	byte_434

loc_12CBD6:				
		JMP	loc_12CB96
; ---------------------------------------------------------------------------

loc_12CBD9:				
					; show_intro_screen_12CB58+61j
		LDA	count_unk_469
		CMP	#$A
		BCC	loc_12CBF7
		LDA	#0
		STA	count_unk_469
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
		LDA	#$A0 
		STA	image_id_4A4
		LDA	#0
		STA	image_offset_4A5
		STA	ppu_prev_unk_4A6
		STA	ppu_prev_scroll_x_unk_4A7
		STA	ppu_prev_scroll_y_unk_4A8
		LDA	#2
		STA	prev_sprite_type_4A9
		LDA	#$1A
		STA	objectIdx_318
		JSR	exec_b0_c2_12A9A9
		LDA	#$46 
		STA	text_idx_35C
		LDA	#2
		STA	char_type_id_35D
		JSR	exec_b2_c2_1283DF
		RTS
; End of function show_intro_screen_12CB58


; =============== S U B	R O U T	I N E =======================================


sub_12CC34:				
		LDA	count_unk_465
		CMP	#$A
		BCC	loc_12CC48
		LDA	#0
		STA	count_unk_465
		LDA	byte_430
		EOR	#1
		STA	byte_430

loc_12CC48:				
		LDA	count_unk_466
		CMP	#$F
		BCC	loc_12CC5C
		LDA	#0
		STA	count_unk_466
		LDA	byte_431
		EOR	#1
		STA	byte_431

loc_12CC5C:				
		LDA	count_unk_467
		CMP	#$A
		BCC	loc_12CC70
		LDA	#0
		STA	count_unk_467
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
		LDA	#0
		STA	byte_367
		STA	byte_36B
		LDA	#0
		STA	sprite_secondByte_31B
		STA	byte_31A
		LDA	#$1A
		STA	objectIdx_318
		LDA	#0
		CLC
		ADC	byte_433
		STA	objMapIdx_316
		LDA	#0
		STA	byte_317
		JSR	exec_b1_c1_128394
		RTS
; End of function sub_12CC34


; =============== S U B	R O U T	I N E =======================================


sub_12CCAB:				
					; show_intro_screen_12CB58+A8p
		LDA	#$70 
		STA	byte_36A
		LDA	#0
		STA	byte_36B
		LDA	#$50 
		STA	byte_366
		LDA	#0
		STA	byte_367
		LDA	#0
		STA	sprite_secondByte_31B
		LDA	#$8C 
		STA	byte_31A
		LDA	#$1A
		STA	objectIdx_318
		LDA	#1
		STA	byte_317
		LDA	objMapIdx_316
		CMP	#6
		BCC	loc_12CCDF
		LDA	#2
		STA	byte_317

loc_12CCDF:				
		JSR	exec_b1_c1_128394
		RTS
; End of function sub_12CCAB


; =============== S U B	R O U T	I N E =======================================


comm_46_12CCE3:				
		LDA	byte_6C5
		CMP	#0
		BEQ	return_12CD1C
		LDA	#$7B 
		STA	text_idx_35C
		LDA	#1
		STA	char_type_id_35D
		LDA	#4
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		LDA	#1
		STA	tilemapData_4C
		LDA	#0
		STA	roomUnk1_4D
		LDA	#8
		STA	roomUnk2_4E
		LDA	#1
		STA	tilemap_line_idx_4F
		JSR	exec_b0_cB_1284E0
		LDA	#0
		STA	cur_obj_idx_unk_43A
		JSR	exec_b0_c3_128418
		LDA	#0
		STA	byte_6C5

return_12CD1C:				
		RTS
; End of function comm_46_12CCE3


; =============== S U B	R O U T	I N E =======================================


comm_48_take_item_12CD1D:		
		LDA	#$45 
		STA	text_idx_35C
		LDA	#2
		STA	char_type_id_35D
		LDA	#1
		STA	tilemapTypeUnk_30B
		JSR	exec_b0_c0_12A973
		RTS
; End of function comm_48_take_item_12CD1D


; =============== S U B	R O U T	I N E =======================================


com_E_load_game_12CD30:			
					; sub_12ACDB+7p
		LDA	image_id_4A4
		STA	byte_100
		LDA	image_offset_4A5
		STA	byte_101
		LDA	ppu_prev_unk_4A6
		STA	byte_102
		LDA	ppu_prev_scroll_x_unk_4A7
		STA	byte_103
		LDA	ppu_prev_scroll_y_unk_4A8
		STA	byte_104
		LDA	prev_sprite_type_4A9
		STA	byte_105
		LDA	image_id_4A4
		PHA
		LDA	image_offset_4A5
		PHA
		LDA	ppu_prev_unk_4A6
		PHA
		LDA	ppu_prev_scroll_x_unk_4A7
		PHA
		LDA	ppu_prev_scroll_y_unk_4A8
		PHA
		LDA	prev_sprite_type_4A9
		PHA
		LDA	#5
		STA	objectIdx_318
		LDA	#0
		STA	byte_360
		LDA	#3
		STA	byte_361
		LDA	#$B
		STA	image_id_4A4
		LDA	#0
		STA	image_offset_4A5
		STA	ppu_prev_unk_4A6
		STA	ppu_prev_scroll_x_unk_4A7
		STA	ppu_prev_scroll_y_unk_4A8
		LDA	#2
		STA	prev_sprite_type_4A9
		JSR	exec_b0_c2_12A9A9
		LDY	#0
		LDA	#$B
		STA	ppu_unk_byte_309
		LDA	#$7A 
		STA	sprite_secondByte_31B

loc_12CDA2:				
		CPY	#4
		BEQ	loc_12CE00
		LDA	byte_4A0,Y
		CMP	#$FF
		BEQ	loc_12CDEA
		CLC
		ADC	#$7E 
		STA	text_idx_35C
		LDA	#0
		STA	char_type_id_35D
		LDA	#8
		STA	tilemap_size_307
		LDA	#8
		STA	byte_35E
		LDA	#1
		STA	byte_35F
		LDA	#0
		STA	byte_362
		LDA	#0
		STA	byte_363
		LDA	#7
		STA	byte_364
		LDA	#0
		STA	byte_310
		TYA
		PHA
		LDA	ppu_unk_byte_309
		PHA
		JSR	exec_b2_c4_1283F2
		PLA
		STA	ppu_unk_byte_309
		PLA
		TAY

loc_12CDEA:				
		LDA	ppu_unk_byte_309
		CLC
		ADC	#4
		STA	ppu_unk_byte_309
		LDA	sprite_secondByte_31B
		CLC
		ADC	#$18
		STA	sprite_secondByte_31B
		INY
		JMP	loc_12CDA2
; ---------------------------------------------------------------------------

loc_12CE00:				
		LDA	#0
		STA	byte_372

loc_12CE05:				
					; com_E_load_game_12CD30+10Bj ...
		JSR	sub_12D0C2
		JSR	wait_for_count350_zero_12F770
		LDA	input_pressed_34A
		CMP	#8
		BNE	loc_12CE25
		LDA	byte_372
		BNE	loc_12CE1C
		LDA	#4
		STA	byte_372

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
		LDA	#$FF
		STA	byte_372

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
		PLA
		STA	prev_sprite_type_4A9
		PLA
		STA	ppu_prev_scroll_y_unk_4A8
		PLA
		STA	ppu_prev_scroll_x_unk_4A7
		PLA
		STA	ppu_prev_unk_4A6
		PLA
		STA	image_offset_4A5
		PLA
		STA	image_id_4A4
		LDA	#$FF
		STA	map_show_43B
		JSR	exec_b0_c2_12A9A9
		LDA	#0
		STA	map_show_43B
		RTS
; ---------------------------------------------------------------------------

loc_12CE99:				
		LDA	sprite_length_30F
		CMP	#$FF
		BNE	loc_12CEA5
		LDA	#0
		STA	jill_pos_y_47E

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
		LDA	#$1B
		STA	ppu_unk_byte_309
		LDA	#6
		STA	tilemap_size_307
		LDA	#$DA 
		STA	sprite_secondByte_31B
		LDA	#$85 
		STA	text_idx_35C
		LDA	#0
		STA	char_type_id_35D
		LDA	#$C
		STA	byte_35E
		LDA	#1
		STA	byte_35F
		LDA	#0
		STA	byte_362
		LDA	#0
		STA	byte_363
		LDA	#7
		STA	byte_364
		LDA	#0
		STA	byte_310
		JSR	exec_b2_c4_1283F2
		LDA	#$1B
		STA	ppu_unk_byte_309
		LDA	#$15
		STA	tilemap_size_307
		LDA	#$F2 
		STA	sprite_secondByte_31B
		LDA	#$86 
		STA	text_idx_35C
		LDA	#0
		STA	char_type_id_35D
		LDA	#3
		STA	byte_35E
		LDA	#1
		STA	byte_35F
		LDA	#6
		STA	byte_364
		LDA	#0
		STA	byte_310
		JSR	exec_b2_c4_1283F2
		LDA	byte_372
		PHA
		LDA	#1
		STA	byte_372

loc_12CF2D:				
					; sub_12CEAC+ABj ...
		JSR	sub_12D070
		JSR	sub_12F765
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
		LDA	#$F0 
		STA	byte_204
		LDA	byte_372
		BNE	loc_12CF76
		PLA
		STA	byte_372
		JSR	sub_12CFBA
		RTS
; ---------------------------------------------------------------------------

loc_12CF76:				
		LDA	#$1B
		STA	ppu_unk_byte_309
		LDA	#6
		STA	tilemap_size_307
		LDA	#$DA 
		STA	sprite_secondByte_31B
		LDA	#$74 
		STA	text_idx_35C
		LDA	#0
		STA	char_type_id_35D
		LDA	#$C
		STA	byte_35E
		LDA	#1
		STA	byte_35F
		LDA	#0
		STA	byte_362
		LDA	#0
		STA	byte_363
		LDA	#7
		STA	byte_364
		LDA	#0
		STA	byte_310
		JSR	exec_b2_c4_1283F2
		PLA
		STA	byte_372
		LDA	#0
		STA	sprite_length_30F
		RTS
; End of function sub_12CEAC


; =============== S U B	R O U T	I N E =======================================


sub_12CFBA:				
					; sub_12CEAC+C6p
		LDA	#$F0 
		STA	byte_204
		LDY	byte_372
		LDA	byte_47F
		STA	byte_4A0,Y
		LDA	byte_372
		PHA
		LDA	#$B
		STA	ppu_unk_byte_309
		LDA	#$7A 
		STA	sprite_secondByte_31B
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
		LDA	ppu_unk_byte_309
		CLC
		ADC	#4
		STA	ppu_unk_byte_309
		LDA	sprite_secondByte_31B
		CLC
		ADC	#$18
		STA	sprite_secondByte_31B
		DEC	byte_372
		JMP	loc_12CFE6
; ---------------------------------------------------------------------------

loc_12D003:				
		LDA	#8
		STA	tilemap_size_307
		LDA	#8
		STA	byte_35E
		LDA	#1
		STA	byte_35F
		LDA	#0
		STA	byte_362
		LDA	#0
		STA	byte_363
		LDA	#7
		STA	byte_364
		LDA	#0
		STA	byte_310
		JSR	exec_b2_c4_1283F2
		LDA	#$1B
		STA	ppu_unk_byte_309
		LDA	#6
		STA	tilemap_size_307
		LDA	#$DA 
		STA	sprite_secondByte_31B
		LDA	#$87 
		STA	text_idx_35C
		LDA	#0
		STA	char_type_id_35D
		LDA	#$C
		STA	byte_35E
		LDA	#1
		STA	byte_35F
		LDA	#0
		STA	byte_362
		LDA	#0
		STA	byte_363
		LDA	#7
		STA	byte_364
		LDA	#0
		STA	byte_310
		JSR	exec_b2_c4_1283F2
		PLA
		STA	byte_372
		JSR	sub_12D167
		LDA	#$FF
		STA	sprite_length_30F
		RTS
; End of function sub_12CFBA


; =============== S U B	R O U T	I N E =======================================


sub_12D070:				
		LDA	count_unk_466
		CMP	#$A
		BCC	loc_12D084
		LDA	#0
		STA	count_unk_466
		LDA	byte_547
		EOR	#1
		STA	byte_547

loc_12D084:				
		LDA	#$25 
		STA	objMapIdx_316
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
		LDA	#0
		STA	byte_36B
		STA	byte_367
		LDA	#5
		STA	objectIdx_318
		LDA	#4
		STA	byte_31A
		LDA	#0
		STA	sprite_secondByte_31B
		LDA	#0
		STA	byte_317
		JSR	exec_b1_c1_128394
		RTS
; End of function sub_12D070


; =============== S U B	R O U T	I N E =======================================


sub_12D0C2:				
		LDA	count_unk_465
		CMP	#$A
		BCC	loc_12D0D6
		LDA	#0
		STA	count_unk_465
		LDA	byte_547
		EOR	#1
		STA	byte_547

loc_12D0D6:				
		LDA	#$25 
		STA	objMapIdx_316
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
		LDA	#0
		STA	byte_36B
		STA	byte_367
		LDA	#5
		STA	objectIdx_318
		LDA	#0
		STA	byte_31A
		LDA	#0
		STA	sprite_secondByte_31B
		LDA	#0
		STA	byte_317
		JSR	exec_b1_c1_128394
		RTS
; End of function sub_12D0C2

; ---------------------------------------------------------------------------
byte_12D114:	.BYTE $20,$58		
					; sub_12D0C2+29r
		.BYTE $20,$78
		.BYTE $20,$98
		.BYTE $20,$B8
byte_12D11C:	.BYTE $9D,$DA		
					; sub_12D070+29r
		.BYTE $BD,$DA

; =============== S U B	R O U T	I N E =======================================


sub_12D120:				
		LDY	byte_372
		LDA	byte_4A0,Y
		CMP	#$FF
		BEQ	loc_12D133
		JSR	sub_12D1E9
		LDA	#$FF
		STA	sprite_length_30F
		RTS
; ---------------------------------------------------------------------------

loc_12D133:				
		LDA	#0
		STA	sprite_length_30F
		RTS
; End of function sub_12D120


; =============== S U B	R O U T	I N E =======================================


sub_12D139:				
					; sub_12D1E9p
		LDA	#0
		STA	ptr_0
		LDA	#$69 
		STA	ptr_1
		LDA	ptr_0
		CLC
		ADC	#$14
		STA	ptr_0
		LDA	ptr_1
		ADC	#0
		STA	ptr_1
		LDY	byte_372

loc_12D151:				
		CPY	#0
		BEQ	locret_12D166
		LDA	ptr_0
		CLC
		ADC	#$58 
		STA	ptr_0
		LDA	ptr_1
		ADC	#2
		STA	ptr_1
		DEY
		JMP	loc_12D151
; ---------------------------------------------------------------------------

locret_12D166:				
		RTS
; End of function sub_12D139


; =============== S U B	R O U T	I N E =======================================


sub_12D167:				
		LDA	#0
		STA	ptr_0
		LDA	#$69 
		STA	ptr_1
		LDY	#0

loc_12D171:				
		TYA
		STA	(ptr_0),Y
		INY
		CPY	#$10
		BCC	loc_12D171
		LDX	#0

loc_12D17B:				
		LDA	byte_4A0,X
		STA	(ptr_0),Y
		INX
		INY
		CPX	#4
		BCC	loc_12D17B
		LDA	ptr_0
		CLC
		ADC	#$14
		STA	ptr_0
		LDA	ptr_1
		ADC	#0
		STA	ptr_1
		LDA	byte_100
		STA	image_id_4A4
		LDA	byte_101
		STA	image_offset_4A5
		LDA	byte_102
		STA	ppu_prev_unk_4A6
		LDA	byte_103
		STA	ppu_prev_scroll_x_unk_4A7
		LDA	byte_104
		STA	ppu_prev_scroll_y_unk_4A8
		LDA	byte_105
		STA	prev_sprite_type_4A9
		JSR	sub_12D139
		LDY	#0

loc_12D1BC:				
		LDA	image_id_4A4,Y
		STA	(ptr_0),Y
		INY
		CPY	#0
		BNE	loc_12D1BC
		LDA	ptr_1
		CLC
		ADC	#4
		STA	ptr_1

loc_12D1CD:				
		LDA	byte_5A4,Y
		STA	(ptr_0),Y
		INY
		CPY	#0
		BNE	loc_12D1CD
		LDA	ptr_1
		CLC
		ADC	#4
		STA	ptr_1

loc_12D1DE:				
		LDA	byte_6A4,Y
		STA	(ptr_0),Y
		INY
		CPY	#$44 
		BNE	loc_12D1DE
		RTS
; End of function sub_12D167


; =============== S U B	R O U T	I N E =======================================


sub_12D1E9:				
		JSR	sub_12D139
		LDY	#0

loc_12D1EE:				
		LDA	(ptr_0),Y
		STA	image_id_4A4,Y
		INY
		CPY	#0
		BNE	loc_12D1EE
		LDA	ptr_1
		CLC
		ADC	#4
		STA	ptr_1

loc_12D1FF:				
		LDA	(ptr_0),Y
		STA	byte_5A4,Y
		INY
		CPY	#0
		BNE	loc_12D1FF
		LDA	ptr_1
		CLC
		ADC	#4
		STA	ptr_1

loc_12D210:				
		LDA	(ptr_0),Y
		STA	byte_6A4,Y
		INY
		CPY	#$44 
		BNE	loc_12D210
		RTS
; End of function sub_12D1E9


; =============== S U B	R O U T	I N E =======================================


sub_12D21B:				
					; sub_12C022+2Ap ...
		JSR	sub_12EEAE
		JSR	ppu_reset_ctrl_mask_12F963
		JSR	sub_12D261
		LDA	#$10
		STA	_PPU_ADDR
		LDA	#0
		STA	_PPU_ADDR
		LDX	#$20 

loc_12D230:				
		LDY	#0

loc_12D232:				
		LDA	#0
		STA	_PPU_DATA
		INY
		BNE	loc_12D232
		DEX
		BNE	loc_12D230
		LDX	#0

loc_12D23F:				
		LDA	byte_12D251,X
		STA	palette_bg_321,X ; "����������������"
		INX
		CPX	#$10
		BNE	loc_12D23F
		JSR	ppu_update_ctrl_mask_12F956
		JSR	sub_12EDF5
		RTS
; End of function sub_12D21B

; ---------------------------------------------------------------------------
byte_12D251:	.BYTE $3E,  7,$37,$30	
		.BYTE $3E,  7,$37,$30
		.BYTE $3E,  7,$37,$30
		.BYTE $3E,  7,$37,$30

; =============== S U B	R O U T	I N E =======================================


sub_12D261:				
					; sub_12D21B+6p ...
		LDA	#0
		STA	tilemapWidth_308
		LDA	#0
		STA	byte_31A
; End of function sub_12D261


; =============== S U B	R O U T	I N E =======================================


sub_12D26B:				
					; sub_128CC0+11p ...
		LDA	tilemapWidth_308
		CLC
		ADC	byte_31A
		STA	tilemapWidth_308
		LDY	byte_31A

loc_12D278:				
		LDA	#$F0 
		STA	byte_200,Y
		INY
		INY
		INY
		INY
		CPY	tilemapWidth_308
		BNE	loc_12D278
		RTS
; End of function sub_12D26B


; =============== S U B	R O U T	I N E =======================================


sub_12D287:				
					; sub_12D58C+1Fp ...
		LDA	#0
		STA	sprite_length_30F
		LDA	#0
		STA	byte_42C
		STA	byte_42E
		LDA	#5
		STA	objectIdx_318
		LDA	#0
		STA	byte_360
		LDA	#1
		STA	byte_361

set_inventory_screen_12D2A3:
		LDA	#8
		STA	image_id_4A4
		LDA	#0
		STA	image_offset_4A5
		STA	ppu_prev_unk_4A6
		STA	ppu_prev_scroll_x_unk_4A7
		STA	ppu_prev_scroll_y_unk_4A8
		LDA	#2
		STA	prev_sprite_type_4A9
		JSR	exec_b0_c2_12A9A9
		JSR	sub_12DC52
		JSR	sub_12DE49
		JSR	sub_12DEB5
		LDA	#0
		STA	byte_372
		LDA	#$3C 
		STA	sprite_secondByte_31B
		LDA	byte_532
		BEQ	loc_12D315

loc_12D2D6:				
		LDY	byte_372
		LDA	byte_533,Y
		TAX
		LDA	byte_12E869,X
		STA	inv_itemPrev_idx_31D
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
		LDA	sprite_secondByte_31B
		CLC
		ADC	#$11
		STA	sprite_secondByte_31B
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
					; sub_12D4C6+46p ...
		JSR	sub_12DD0A
		LDA	#$80 
		STA	byte_31A
		LDA	#$C
		STA	tilemapWidth_308
		JSR	sub_12D26B
; End of function sub_12D319


; =============== S U B	R O U T	I N E =======================================


sub_12D329:				
					; sub_12E428+41p ...
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
		LDA	byte_12E851,X
		STA	tilemap_size_307
		INX
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
					; sub_12D329+35j ...
		LDA	tilemapTypeUnk_30B
		PHA
		LDY	tilemapTypeUnk_30B
		LDA	unk_53B,Y
		JSR	sub_12D3AB
		PLA
		STA	tilemapTypeUnk_30B

loc_12D394:				
		LDY	tilemapTypeUnk_30B
		LDA	byte_533,Y
		STA	text_idx_35C
		LDA	#0
		STA	char_type_id_35D
		LDA	#7
		STA	byte_364
		JSR	exec_b2_c1_128300
		RTS
; End of function sub_12D329


; =============== S U B	R O U T	I N E =======================================


sub_12D3AB:				
					; sub_12ED58+31p ...
		STA	ptr_0
		LDA	#0
		STA	data_2
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
					; sub_12D3AB+29j
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
		LDA	tilemap_size_307
		CLC
		ADC	#4
		STA	tilemap_size_307
		LDA	data_3
		CLC
		ADC	#$32 
		STA	objMapIdx_316
		LDA	#0
		STA	byte_317
		LDA	#$80 
		STA	byte_31A
		LDA	#0
		STA	sprite_secondByte_31B
		LDA	tilemap_size_307
		PHA
		LDA	ppu_unk_byte_309
		PHA
		LDA	data_2
		PHA
		LDA	data_3
		PHA
		LDA	ptr_0
		PHA
		JSR	sub_12E829
		PLA
		STA	ptr_0
		PLA
		STA	data_3
		PLA
		STA	data_2
		PLA
		STA	ppu_unk_byte_309
		PLA
		CLC
		ADC	#8
		STA	tilemap_size_307

loc_12D423:				
		LDA	data_3
		BNE	loc_12D434
		LDA	data_2
		BEQ	loc_12D473
		LDA	tilemap_size_307
		CLC
		ADC	#8
		STA	tilemap_size_307

loc_12D434:				
		LDA	data_2
		CLC
		ADC	#$32 
		STA	objMapIdx_316
		LDA	#0
		STA	byte_317
		LDA	#$84 
		STA	byte_31A
		LDA	#0
		STA	sprite_secondByte_31B
		LDA	tilemap_size_307
		PHA
		LDA	ppu_unk_byte_309
		PHA
		LDA	data_2
		PHA
		LDA	data_3
		PHA
		LDA	ptr_0
		PHA
		JSR	sub_12E829
		PLA
		STA	ptr_0
		PLA
		STA	data_3
		PLA
		STA	data_2
		PLA
		STA	ppu_unk_byte_309
		PLA
		CLC
		ADC	#8
		STA	tilemap_size_307

loc_12D473:				
		LDA	data_3
		BNE	loc_12D484
		LDA	data_2
		BNE	loc_12D484
		LDA	tilemap_size_307
		CLC
		ADC	#$C
		STA	tilemap_size_307

loc_12D484:				
					; sub_12D3AB+CEj
		LDA	ptr_0
		CLC
		ADC	#$32 
		STA	objMapIdx_316
		LDA	#0
		STA	byte_317
		LDA	#$88 
		STA	byte_31A
		LDA	#0
		STA	sprite_secondByte_31B
		JSR	sub_12E829
		RTS
; End of function sub_12D3AB


; =============== S U B	R O U T	I N E =======================================


sub_12D49F:				
					; sub_12DB1E+4Ap ...
		LDA	#0
		STA	byte_310
		LDA	#$A
		STA	byte_35E
		LDA	#$1B
		STA	ppu_unk_byte_309
		LDA	#4
		STA	tilemap_size_307
; End of function sub_12D49F


; =============== S U B	R O U T	I N E =======================================


sub_12D4B3:				
					; sub_12E69F+EBp
		LDA	#1
		STA	byte_35F
		LDA	#0
		STA	byte_362
		LDA	#0
		STA	byte_363
		JSR	exec_b2_c5_128405
		RTS
; End of function sub_12D4B3


; =============== S U B	R O U T	I N E =======================================


sub_12D4C6:				
					; sub_128A1A+63p
		JSR	sub_1283BA
		LDA	image_id_4A4
		PHA
		LDA	image_offset_4A5
		PHA
		LDA	ppu_prev_unk_4A6
		PHA
		LDA	ppu_prev_scroll_x_unk_4A7
		PHA
		LDA	ppu_prev_scroll_y_unk_4A8
		PHA
		LDA	prev_sprite_type_4A9
		PHA
		JSR	sub_12D287
		JSR	sub_12D319

loc_12D4E7:				
					; sub_12D4C6+65j ...
		JSR	sub_12DE49
		JSR	sub_12DEB5
		JSR	sub_12DD0A
		JSR	sub_12F765
		LDA	input_pressed_34A
		CMP	#8
		BNE	loc_12D512
		LDA	byte_42E
		CMP	#0
		BNE	loc_12D506
		LDA	#6
		STA	byte_42E

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
		LDA	#$FF
		STA	byte_42E

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
					; sub_12D4C6+A5j
		JSR	sub_12ED29
		PLA
		STA	prev_sprite_type_4A9
		PLA
		STA	ppu_prev_scroll_y_unk_4A8
		PLA
		STA	ppu_prev_scroll_x_unk_4A7
		PLA
		STA	ppu_prev_unk_4A6
		PLA
		STA	image_offset_4A5
		PLA
		STA	image_id_4A4
		RTS
; End of function sub_12D4C6


; =============== S U B	R O U T	I N E =======================================


sub_12D58C:				
					; sub_12BF99+1Ap ...
		JSR	sub_1283BA
		LDA	image_id_4A4
		PHA
		LDA	image_offset_4A5
		PHA
		LDA	ppu_prev_unk_4A6
		PHA
		LDA	ppu_prev_scroll_x_unk_4A7
		PHA
		LDA	ppu_prev_scroll_y_unk_4A8
		PHA
		LDA	prev_sprite_type_4A9
		PHA
		LDA	tilemapTypeUnk_30B
		PHA
		JSR	sub_12D287
		PLA
		STA	tilemapTypeUnk_30B
		LDA	tilemapTypeUnk_30B
		PHA
		LDA	tilemapTypeUnk_30B
		STA	text_idx_35C
		LDA	#0
		STA	char_type_id_35D
		LDA	tilemapTypeUnk_30B
		CMP	#$3B 
		BNE	loc_12D5D2
		LDA	#7
		STA	text_idx_35C
		LDA	#2
		STA	char_type_id_35D

loc_12D5D2:				
		LDY	tilemapTypeUnk_30B
		LDA	byte_12E869,Y
		STA	inv_itemPrev_idx_31D
		LDA	#$A
		STA	tilemap_size_307
		LDA	#8
		STA	ppu_unk_byte_309
		LDA	#$C4 
		STA	sprite_secondByte_31B
		JSR	sub_128358
		JSR	sub_128326
		LDA	#7
		STA	byte_364
		JSR	exec_b2_c1_128300
		JSR	sub_12DAD0
		PLA
		STA	tilemapTypeUnk_30B
		LDA	byte_532
		CMP	#8
		BCC	loc_12D623
		LDA	#$7D 
		STA	text_idx_35C
		LDA	#0
		STA	char_type_id_35D
		LDA	#7
		STA	byte_364
		JSR	exec_b2_c1_128300
		JSR	sub_12DAD0
		LDA	#0
		STA	sprite_length_30F
		JMP	loc_12D652
; ---------------------------------------------------------------------------

loc_12D623:				
		LDA	#$7A 
		STA	text_idx_35C
		LDA	#0
		STA	char_type_id_35D
		LDA	#7
		STA	byte_364
		LDA	tilemapTypeUnk_30B
		PHA
		JSR	exec_b2_c1_128300
		JSR	sub_12D680
		PLA
		STA	tilemapTypeUnk_30B
		LDA	#0
		STA	sprite_length_30F
		LDA	byte_372
		BNE	loc_12D652
		JSR	sub_12D82B
		LDA	#$FF
		STA	sprite_length_30F

loc_12D652:				
					; sub_12D58C+BCj
		PLA
		STA	prev_sprite_type_4A9
		PLA
		STA	ppu_prev_scroll_y_unk_4A8
		PLA
		STA	ppu_prev_scroll_x_unk_4A7
		PLA
		STA	ppu_prev_unk_4A6
		PLA
		STA	image_offset_4A5
		PLA
		STA	image_id_4A4
		LDA	#$FF
		STA	map_show_43B
		LDA	sprite_length_30F
		PHA
		JSR	exec_b0_c2_12A9A9
		PLA
		STA	sprite_length_30F
		LDA	#0
		STA	map_show_43B
		RTS
; End of function sub_12D58C


; =============== S U B	R O U T	I N E =======================================


sub_12D680:				
		LDA	#0
		STA	byte_372

loc_12D685:				
					; sub_12D680+72j ...
		LDA	byte_546
		CMP	#$A
		BCC	loc_12D699
		LDA	#0
		STA	byte_546
		LDA	byte_547
		EOR	#1
		STA	byte_547

loc_12D699:				
		LDA	#$70 
		STA	byte_31A
		LDA	#0
		STA	sprite_secondByte_31B
		LDA	#0
		STA	byte_317
		LDA	#$30 
		STA	objMapIdx_316
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
		LDA	#$DC 
		STA	ppu_unk_byte_309
		JSR	sub_12E829
		JSR	sub_12F765
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
		LDA	image_id_4A4
		PHA
		LDA	image_offset_4A5
		PHA
		LDA	ppu_prev_unk_4A6
		PHA
		LDA	ppu_prev_scroll_x_unk_4A7
		PHA
		LDA	ppu_prev_scroll_y_unk_4A8
		PHA
		LDA	prev_sprite_type_4A9
		PHA
		JSR	sub_12D287
		JSR	sub_12D319
		LDA	#0
		STA	byte_372
		JSR	sub_12DF32
		JSR	sub_12DCCC
		JSR	sub_12DCE9

loc_12D72F:				
					; sub_12D700+A3j ...
		JSR	sub_12DD0A
		JSR	sub_12F765
		LDA	input_pressed_34A
		CMP	#8
		BNE	loc_12D76F
		LDA	byte_42E
		CMP	#0
		BNE	loc_12D757
		LDA	byte_42C
		CMP	#1
		BNE	loc_12D752
		LDA	#6
		STA	byte_42E
		JMP	loc_12D757
; ---------------------------------------------------------------------------

loc_12D752:				
		LDA	#4
		STA	byte_42E

loc_12D757:				
					; sub_12D700+4Fj
		LDA	byte_42E
		CMP	#5
		BNE	loc_12D763
		LDA	#4
		STA	byte_42E

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
		LDA	#4
		STA	byte_42E
		JMP	loc_12D78E
; ---------------------------------------------------------------------------

loc_12D789:				
		LDA	#$FF
		STA	byte_42E

loc_12D78E:				
					; sub_12D700+86j
		LDA	byte_42E
		CMP	#5
		BNE	loc_12D79A
		LDA	#$FF
		STA	byte_42E

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
					; sub_12D700+FDj
		JSR	sub_12ED29
		PLA
		STA	prev_sprite_type_4A9
		PLA
		STA	ppu_prev_scroll_y_unk_4A8
		PLA
		STA	ppu_prev_scroll_x_unk_4A7
		PLA
		STA	ppu_prev_unk_4A6
		PLA
		STA	image_offset_4A5
		PLA
		STA	image_id_4A4
		LDA	#$FF
		STA	map_show_43B
		JSR	exec_b0_c2_12A9A9
		LDA	#0
		STA	map_show_43B
		RTS
; End of function sub_12D700


; =============== S U B	R O U T	I N E =======================================


sub_12D82B:				
		LDY	byte_532
		LDA	tilemapTypeUnk_30B
		STA	byte_533,Y
		LDA	tilemapTypeUnk_30B
		CMP	#1
		BNE	loc_12D840
		LDA	#$F
		STA	unk_53B,Y

loc_12D840:				
		LDA	tilemapTypeUnk_30B
		CMP	#2
		BNE	loc_12D84C
		LDA	#6
		STA	unk_53B,Y

loc_12D84C:				
		LDA	tilemapTypeUnk_30B
		CMP	#3
		BNE	loc_12D858
		LDA	#6
		STA	unk_53B,Y

loc_12D858:				
		LDA	tilemapTypeUnk_30B
		CMP	#4
		BNE	loc_12D864
		LDA	#6
		STA	unk_53B,Y

loc_12D864:				
		LDA	tilemapTypeUnk_30B
		CMP	#5
		BNE	loc_12D870
		LDA	#6
		STA	unk_53B,Y

loc_12D870:				
		LDA	tilemapTypeUnk_30B
		CMP	#6
		BNE	loc_12D87C
		LDA	#$F
		STA	unk_53B,Y

loc_12D87C:				
		CMP	#7
		BNE	loc_12D885
		LDA	#6
		STA	unk_53B,Y

loc_12D885:				
		CMP	#8
		BNE	loc_12D88E
		LDA	#6
		STA	unk_53B,Y

loc_12D88E:				
		CMP	#9
		BNE	loc_12D897
		LDA	#6
		STA	unk_53B,Y

loc_12D897:				
		CMP	#$1A
		BNE	loc_12D8A0
		LDA	#3
		STA	unk_53B,Y

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
					; sub_12DFA5+3BAp ...
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
		LDA	byte_533,X
		STA	byte_533,Y
		LDA	unk_53B,X
		STA	unk_53B,Y
		INX
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
		LDA	#$3A 
		STA	unk_4D2,X
		JMP	loc_12D910
; ---------------------------------------------------------------------------

loc_12D900:				
		TAY
		LDX	byte_372
		LDA	byte_533,Y
		STA	unk_4D2,X
		LDA	unk_53B,Y
		STA	unk_502,X

loc_12D910:				
		JSR	sub_12DF2B
		PLA
		STA	inv_spr_dscr1_30C
		PLA
		STA	tilemapTypeUnk_30B
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
		LDA	tilemapTypeUnk_30B
		STA	byte_533,Y
		LDA	inv_spr_dscr1_30C
		STA	unk_53B,Y
		INC	byte_532
		JMP	loc_12D9A3
; ---------------------------------------------------------------------------

loc_12D946:				
		LDA	byte_533,Y
		CMP	#6
		BEQ	loc_12D966
		BCS	loc_12D966
		LDA	tilemapTypeUnk_30B
		PHA
		LDA	inv_spr_dscr1_30C
		PHA
		TYA
		PHA
		JSR	sub_12DFFC
		PLA
		TAY
		PLA
		STA	inv_spr_dscr1_30C
		PLA
		STA	tilemapTypeUnk_30B

loc_12D966:				
					; sub_12D8DD+70j
		LDA	inv_spr_dscr1_30C
		STA	unk_53B,Y
		LDA	tilemapTypeUnk_30B
		STA	byte_533,Y
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
		LDA	byte_533,X
		STA	byte_533,Y
		LDA	unk_53B,X
		STA	unk_53B,Y
		INY
		JMP	loc_12D979
; ---------------------------------------------------------------------------

loc_12D991:				
		PLA
		TAX
		LDY	byte_532
		JSR	sub_12D9F7
		DEC	byte_532
		LDY	byte_532
		JSR	sub_12DA33
		RTS
; ---------------------------------------------------------------------------

loc_12D9A3:				
					; sub_12D8DD+97j
		LDA	tilemapTypeUnk_30B
		PHA
		TYA
		PHA
		TAX
		INY
		LDA	#$A
		STA	sprite_secondByte_31B
		JSR	sub_12D9F7
		PLA
		TAY
		PLA
		STA	tilemapTypeUnk_30B
		LDX	tilemapTypeUnk_30B
		LDA	byte_12E869,X
		STA	inv_itemPrev_idx_31D
		TYA
		TAX
		LDA	#$3C 
		STA	sprite_secondByte_31B

loc_12D9C9:				
		CPX	#0
		BEQ	loc_12D9DA
		LDA	sprite_secondByte_31B
		CLC
		ADC	#$11
		STA	sprite_secondByte_31B
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
					; sub_12D8DD+D3p ...
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
		LDA	#$29 
		STA	inv_itemPrev_idx_31D
		LDA	#$A
		STA	sprite_secondByte_31B
		TYA
		PHA
		JSR	sub_128326
		PLA
		TAY
		STY	tilemapTypeUnk_30B
		PLA
		TAX
		INX
		CPX	tilemapTypeUnk_30B
		BCC	loc_12D9FB
		PLA
		TAY
		PLA
		TAX
		RTS
; End of function sub_12D9F7


; =============== S U B	R O U T	I N E =======================================


sub_12DA33:				
					; sub_12DFA5+1ADp ...
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
		LDA	#$3C 
		STA	sprite_secondByte_31B

loc_12DA48:				
		LDA	tilemapTypeUnk_30B
		CMP	#0
		BEQ	loc_12DA5E
		LDA	sprite_secondByte_31B
		CLC
		ADC	#$11
		STA	sprite_secondByte_31B
		DEC	tilemapTypeUnk_30B
		JMP	loc_12DA48
; ---------------------------------------------------------------------------

loc_12DA5E:				
					; sub_12DA33+96j
		TXA
		PHA
		LDA	byte_533,X
		TAX
		LDA	byte_12E869,X
		STA	inv_itemPrev_idx_31D
		PLA
		TAX
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
		PLA
		TAY
		STA	tilemapTypeUnk_30B
		PLA
		TAX
		TXA
		PHA
		LDA	byte_533,X
		CLC
		ADC	#1
		CMP	byte_543
		BNE	loc_12DABA
		STX	byte_544
		LDA	#$10
		STA	tilemap_size_307
		LDA	#$14
		STA	ppu_unk_byte_309
		LDA	tilemapTypeUnk_30B
		PHA
		TYA
		PHA
		JSR	sub_128326
		PLA
		TAY
		PLA
		STA	tilemapTypeUnk_30B

loc_12DABA:				
		LDA	sprite_secondByte_31B
		CLC
		ADC	#$11
		STA	sprite_secondByte_31B
		PLA
		TAX
		INX
		CPX	tilemapTypeUnk_30B
		BCC	loc_12DA5E

loc_12DACB:				
		PLA
		TAY
		PLA
		TAX
		RTS
; End of function sub_12DA33


; =============== S U B	R O U T	I N E =======================================


sub_12DAD0:				
					; sub_12D58C+8Cp ...
		LDA	byte_546
		CMP	#$A
		BCC	loc_12DAE4
		LDA	#0
		STA	byte_546
		LDA	byte_547
		EOR	#1
		STA	byte_547

loc_12DAE4:				
		LDA	#$70 
		STA	byte_31A
		LDA	#0
		STA	sprite_secondByte_31B
		LDA	#0
		STA	byte_317
		LDA	#$2F 
		STA	objMapIdx_316
		LDA	#$C4 
		STA	tilemap_size_307
		LDA	#$E0 
		CLC
		ADC	byte_547
		CLC
		ADC	byte_547
		STA	ppu_unk_byte_309
		JSR	sub_12E829
		JSR	sub_12F765
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
		LDA	#$44 
		STA	text_idx_35C
		LDA	#2
		STA	char_type_id_35D
		LDA	#7
		STA	byte_364
		JSR	exec_b2_c1_128300
		JSR	sub_12E3D4
		JSR	sub_12ED29
		JSR	sub_12D49F

locret_12DB6B:				
		RTS
; ---------------------------------------------------------------------------

loc_12DB6C:				
		JSR	sub_12ED29
		LDA	#$FF
		STA	sprite_length_30F
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
		LDA	#0
		STA	byte_372
		JSR	sub_12DC31

loc_12DB8E:				
					; sub_12DB1E+ABj ...
		JSR	sub_12F765
		LDA	input_pressed_34A
		CMP	#8
		BNE	loc_12DBB0
		LDA	byte_372
		CMP	#0
		BNE	loc_12DBA4
		LDA	#3
		STA	byte_372

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
		LDA	#$FF
		STA	byte_372

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
		LDA	byte_42C
		PHA
		LDA	byte_42E
		PHA
		JSR	sub_12E428
		PLA
		STA	byte_42E
		PLA
		STA	byte_42C

loc_12DC0C:				
					; sub_12DB1E+D4j ...
		JMP	loc_12DC16
; ---------------------------------------------------------------------------

loc_12DC0F:				
		CMP	#$40 
		BEQ	loc_12DC16
		JMP	loc_12DB8E
; ---------------------------------------------------------------------------

loc_12DC16:				
					; sub_12DB1E+F3j
		JSR	sub_12ED29
		LDA	#$60 
		STA	tilemapWidth_308
		LDA	#$A0 
		STA	byte_31A
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
					; sub_12DB1E+8Cp ...
		LDA	byte_372
		CLC
		ADC	#$20 
		STA	objMapIdx_316
		LDA	#$80 
		STA	tilemap_size_307
		LDA	#$50 
		STA	ppu_unk_byte_309
		LDA	#$A0 
		STA	byte_31A
		LDA	#0
		STA	sprite_secondByte_31B
		JSR	sub_12E829
		RTS
; End of function sub_12DC31


; =============== S U B	R O U T	I N E =======================================


sub_12DC52:				
		LDA	byte_545
		CLC
		ADC	#$1B
		STA	objMapIdx_316
		LDA	#$40 
		STA	byte_31A
		LDA	#0
		STA	sprite_secondByte_31B
		STA	byte_317
		LDA	#$B0 
		STA	tilemap_size_307
		LDA	#$1F
		STA	ppu_unk_byte_309
		JSR	sub_12E829
		RTS
; End of function sub_12DC52


; =============== S U B	R O U T	I N E =======================================


sub_12DC76:				
		JSR	sub_12DF6C

loc_12DC79:				
					; sub_12DC76+1Ej ...
		JSR	sub_12F765
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
					; sub_12DC76+4Dj
		JSR	sub_12ED29
		RTS
; End of function sub_12DC76


; =============== S U B	R O U T	I N E =======================================


sub_12DCCC:				
		LDA	#$23 
		STA	objMapIdx_316
		LDA	#$90 
		STA	tilemap_size_307
		LDA	#$30 
		STA	ppu_unk_byte_309
		LDA	#$A8 
		STA	byte_31A
		LDA	#0
		STA	sprite_secondByte_31B
		JSR	sub_12E829
		RTS
; End of function sub_12DCCC


; =============== S U B	R O U T	I N E =======================================


sub_12DCE9:				
					; sub_12DC76+1Bp ...
		LDA	#$24 
		STA	objMapIdx_316
		LDA	#$90 
		STA	tilemap_size_307
		LDA	#$38 
		CLC
		ADC	byte_372
		STA	ppu_unk_byte_309
		LDA	#$A0 
		STA	byte_31A
		LDA	#0
		STA	sprite_secondByte_31B
		JSR	sub_12E829
		RTS
; End of function sub_12DCE9


; =============== S U B	R O U T	I N E =======================================


sub_12DD0A:				
					; sub_12D4C6+27p ...
		LDA	byte_546
		CMP	#$A
		BCC	loc_12DD1E
		LDA	#0
		STA	byte_546
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
		LDA	byte_12E851,Y
		STA	tilemap_size_307
		INY
		LDA	byte_12E851,Y
		STA	ppu_unk_byte_309
		LDA	#$60 
		STA	byte_31A
		LDA	#0
		STA	sprite_secondByte_31B
		LDA	#0
		STA	byte_317
		LDA	#$2A 
		STA	objMapIdx_316
		LDA	tilemap_size_307
		PHA
		LDA	ppu_unk_byte_309
		PHA
		LDA	ppu_unk_byte_309
		CLC
		ADC	byte_547
		STA	ppu_unk_byte_309
		LDA	tilemap_size_307
		CLC
		ADC	byte_547
		STA	tilemap_size_307
		JSR	sub_12E829
		PLA
		STA	ppu_unk_byte_309
		PLA
		STA	tilemap_size_307
		LDA	byte_31A
		CLC
		ADC	#4
		STA	byte_31A
		LDA	#$2B 
		STA	objMapIdx_316
		LDA	tilemap_size_307
		PHA
		LDA	ppu_unk_byte_309
		PHA
		LDA	ppu_unk_byte_309
		CLC
		ADC	byte_547
		STA	ppu_unk_byte_309
		LDA	tilemap_size_307
		CLC
		ADC	#$18
		SEC
		SBC	byte_547
		STA	tilemap_size_307
		JSR	sub_12E829
		PLA
		STA	ppu_unk_byte_309
		PLA
		STA	tilemap_size_307
		LDA	byte_31A
		CLC
		ADC	#4
		STA	byte_31A
		LDA	#$2C 
		STA	objMapIdx_316
		LDA	tilemap_size_307
		PHA
		LDA	ppu_unk_byte_309
		PHA
		LDA	ppu_unk_byte_309
		CLC
		ADC	#$18
		SEC
		SBC	byte_547
		STA	ppu_unk_byte_309
		LDA	tilemap_size_307
		CLC
		ADC	byte_547
		STA	tilemap_size_307
		LDA	byte_42E
		CMP	#4
		BCC	loc_12DDE9
		LDA	ppu_unk_byte_309
		SEC
		SBC	#$10
		STA	ppu_unk_byte_309

loc_12DDE9:				
		JSR	sub_12E829
		PLA
		STA	ppu_unk_byte_309
		PLA
		STA	tilemap_size_307
		LDA	byte_31A
		CLC
		ADC	#4
		STA	byte_31A
		LDA	#$2D 
		STA	objMapIdx_316
		LDA	tilemap_size_307
		PHA
		LDA	ppu_unk_byte_309
		PHA
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
		PLA
		STA	ppu_unk_byte_309
		PLA
		STA	tilemap_size_307
		LDA	byte_31A
		CLC
		ADC	#4
		STA	byte_31A
		RTS
; End of function sub_12DD0A


; =============== S U B	R O U T	I N E =======================================


sub_12DE49:				
					; sub_12D4C6:loc_12D4E7p
		LDA	count_unk_465
		CMP	#5
		BCC	locret_12DEB4
		LDA	#0
		STA	count_unk_465
		INC	byte_54D
		LDA	byte_54D
		CMP	#7
		BCC	loc_12DE64
		LDA	#0
		STA	byte_54D

loc_12DE64:				
		LDA	byte_54D
		STA	objMapIdx_316
		LDA	byte_549
		CMP	#$55 
		BCC	loc_12DE8E
		CMP	#$AA 
		BCC	loc_12DE7D
		LDA	#0
		STA	byte_54B
		JMP	loc_12DE9C
; ---------------------------------------------------------------------------

loc_12DE7D:				
		LDA	objMapIdx_316
		CLC
		ADC	#7
		STA	objMapIdx_316
		LDA	#1
		STA	byte_54B
		JMP	loc_12DE9C
; ---------------------------------------------------------------------------

loc_12DE8E:				
		LDA	objMapIdx_316
		CLC
		ADC	#$E
		STA	objMapIdx_316
		LDA	#2
		STA	byte_54B

loc_12DE9C:				
					; sub_12DE49+42j
		LDA	#0
		STA	byte_31A
		STA	sprite_secondByte_31B
		STA	byte_317
		LDA	#$40 
		STA	tilemap_size_307
		LDA	#$A0 
		STA	ppu_unk_byte_309
		JSR	sub_12E829

locret_12DEB4:				
		RTS
; End of function sub_12DE49


; =============== S U B	R O U T	I N E =======================================


sub_12DEB5:				
					; sub_12D4C6+24p
		LDA	byte_54B
		STA	objMapIdx_316
		LDA	byte_54A
		BEQ	loc_12DEC9
		LDA	objMapIdx_316
		CLC
		ADC	#3
		STA	objMapIdx_316

loc_12DEC9:				
		LDA	objMapIdx_316
		CLC
		ADC	#$15
		STA	objMapIdx_316
		LDA	#$30 
		STA	byte_31A
		LDA	#0
		STA	sprite_secondByte_31B
		STA	byte_317
		LDA	#$40 
		STA	tilemap_size_307
		LDA	#$B8 
		STA	ppu_unk_byte_309
		JSR	sub_12E829
		RTS
; End of function sub_12DEB5

; ---------------------------------------------------------------------------
byte_12DEED:	.BYTE	0,  0,	0,  0,	0,  0,	0,  1,	1,  1,	1,  1,	1,  1,	2,  2
					
		.BYTE	2,  2,	2,  2,	2,  0,	1,  2,	0,  1,	2,  3,	3,  3,	3,  3
		.BYTE	3,  3,	3,  3,	3,  3,	3,  3,	3,  3,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	3,  3,	3,  3,	3,  3,	3,  3,	3,  3,	3,  3

; =============== S U B	R O U T	I N E =======================================


sub_12DF2B:				
					; sub_12DC76+18p ...
		JSR	sub_12DF32
		JSR	sub_12DF6C
		RTS
; End of function sub_12DF2B


; =============== S U B	R O U T	I N E =======================================


sub_12DF32:				
					; sub_12DF2Bp
		LDA	#$A
		STA	tilemap_size_307
		LDA	#8
		STA	ppu_unk_byte_309
		LDA	#$29 
		STA	inv_itemPrev_idx_31D
		LDA	#$A
		STA	sprite_secondByte_31B
		JSR	sub_128326
		LDX	byte_372
		LDA	unk_4D2,X
		TAY
		LDA	byte_12E869,Y
		STA	inv_itemPrev_idx_31D
		LDA	#$A
		STA	tilemap_size_307
		LDA	#8
		STA	ppu_unk_byte_309
		LDA	#$C4 
		STA	sprite_secondByte_31B
		JSR	sub_128358
		JSR	sub_128326
		RTS
; End of function sub_12DF32


; =============== S U B	R O U T	I N E =======================================


sub_12DF6C:				
		LDX	byte_372
		LDA	unk_4D2,X
		STA	text_idx_35C
		LDA	#0
		STA	char_type_id_35D
		LDA	inv_itemPrev_idx_31D
		CMP	#$29 
		BNE	loc_12DF8B
		LDA	#$75 
		STA	text_idx_35C
		LDA	#0
		STA	char_type_id_35D

loc_12DF8B:				
		LDA	inv_itemPrev_idx_31D
		CMP	#$15
		BNE	loc_12DF9C
		LDA	#7
		STA	text_idx_35C
		LDA	#2
		STA	char_type_id_35D

loc_12DF9C:				
		LDA	#7
		STA	byte_364
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
		LDA	byte_533,Y
		STA	tilemapTypeUnk_30B
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
					; sub_12DFA5+2Dj
		LDA	tilemapTypeUnk_30B
		CMP	#0
		BNE	loc_12DFE8
		LDA	byte_46D
		CMP	#0
		BNE	loc_12DFE8
		JMP	loc_12E166
; ---------------------------------------------------------------------------

loc_12DFE8:				
					; sub_12DFA5+3Ej
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
					; sub_12DFA5+4Cj
		LDA	#0
		STA	byte_543
		LDA	#$10
		STA	tilemap_size_307
		LDA	#$14
		STA	ppu_unk_byte_309
		LDA	#$29 
		STA	inv_itemPrev_idx_31D
		LDA	#$A
		STA	sprite_secondByte_31B
		JSR	sub_128326
		RTS
; End of function sub_12DFFC

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_12DFA5

loc_12E019:				
		LDA	#$77 
		STA	text_idx_35C
		LDA	#0
		STA	char_type_id_35D
		LDA	#7
		STA	byte_364
		JSR	exec_b2_c1_128300
		JSR	sub_12E3D4
		JSR	sub_12ED29
		JSR	sub_12D49F
		RTS
; ---------------------------------------------------------------------------

loc_12E035:				
					; sub_12DFA5+1D2j
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
					; sub_12DFA5+A3j
		LDA	#$FF
		STA	byte_549
		LDA	#0
		STA	byte_54A
		STA	byte_4B5
		JMP	loc_12E13A
; ---------------------------------------------------------------------------

loc_12E05D:				
					; sub_12DFA5+A5j
		LDA	tilemapTypeUnk_30B
		CMP	#$C
		BNE	loc_12E076
		LDA	byte_54A
		CMP	#0
		BEQ	loc_12E076
		LDA	#0
		STA	byte_54A
		STA	byte_4B5
		JMP	loc_12E13A
; ---------------------------------------------------------------------------

loc_12E076:				
					; sub_12DFA5+C4j
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
					; sub_12DFA5+E4j
		LDA	#0
		STA	byte_54A
		STA	byte_4B5
		LDA	#$AA 
		JSR	sub_12E156
		JMP	loc_12E13A
; ---------------------------------------------------------------------------

loc_12E09E:				
					; sub_12DFA5+E6j
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
					; sub_12DFA5+10Cj
		LDA	#0
		STA	byte_54A
		STA	byte_4B5
		LDA	#$55 
		JSR	sub_12E156
		JMP	loc_12E13A
; ---------------------------------------------------------------------------

loc_12E0C6:				
					; sub_12DFA5+10Ej
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
					; sub_12DFA5+12Dj
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
					; sub_12DFA5+143j
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
					; sub_12DFA5+159j
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
					; sub_12DFA5+16Fj
		LDA	#$78 
		STA	text_idx_35C
		LDA	#0
		STA	char_type_id_35D
		LDA	#7
		STA	byte_364
		JSR	exec_b2_c1_128300
		JSR	sub_12E3D4
		JSR	sub_12ED29
		JSR	sub_12D49F
		RTS
; ---------------------------------------------------------------------------

loc_12E13A:				
					; sub_12DFA5+CEj ...
		LDX	byte_47B
		LDY	byte_532
		JSR	sub_12D9F7
		LDA	byte_47B
		STA	tilemapTypeUnk_30B
		JSR	sub_12D8B3
		LDX	byte_47B
		LDY	byte_532
		JSR	sub_12DA33
		RTS
; END OF FUNCTION CHUNK	FOR sub_12DFA5

; =============== S U B	R O U T	I N E =======================================


sub_12E156:				
					; sub_12DFA5+11Bp ...
		CLC
		ADC	byte_549
		BCC	loc_12E162
		LDA	#$FF
		STA	byte_549
		RTS
; ---------------------------------------------------------------------------

loc_12E162:				
		STA	byte_549
		RTS
; End of function sub_12E156

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_12DFA5

loc_12E166:				
					; sub_12DFA5+2Fj ...
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
					; sub_12DFA5+1E8j ...
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
					; sub_12DFA5+277j ...
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
		LDA	#$B7 
		STA	text_idx_35C
		LDA	#0
		STA	char_type_id_35D
		LDA	#7
		STA	byte_364
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
					; sub_12DFA5:loc_12E202j ...
		LDA	tilemapTypeUnk_30B
		STA	byte_46E
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
					; sub_12DFA5+3B2j
		STY	tilemapTypeUnk_30B
		JSR	sub_12D8B3

loc_12E362:				
					; sub_12DFA5+37Cj ...
		LDA	#$FF
		STA	sprite_length_30F
		RTS
; ---------------------------------------------------------------------------

loc_12E368:				
					; sub_12DFA5+20Dj ...
		LDA	#$76 
		STA	text_idx_35C
		LDA	#0
		STA	char_type_id_35D
		LDA	#7
		STA	byte_364
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
		LDA	#0
		STA	char_type_id_35D
		LDA	#7
		STA	byte_364
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
		LDA	#$27 
		STA	byte_533,Y
		JMP	loc_12E3CA
; ---------------------------------------------------------------------------

loc_12E3C1:				
		CMP	#$26 
		BNE	locret_12E3D3
		LDA	#$28 
		STA	byte_533,Y

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
					; sub_12DFA5+86p ...
		JSR	sub_12F765
		LDA	input_pressed_34A
		CMP	#$40 
		BNE	sub_12E3D4
		RTS
; End of function sub_12E3D4


; =============== S U B	R O U T	I N E =======================================


sub_12E3DF:				
					; sub_12DFA5+54j
		LDA	byte_543
		CMP	#0
		BEQ	locret_12E427
		LDA	#$10
		STA	tilemap_size_307
		LDA	#$14
		STA	ppu_unk_byte_309
		LDA	byte_543
		SEC
		SBC	#1
		STA	tilemapTypeUnk_30B
		LDY	tilemapTypeUnk_30B
		LDA	byte_12E869,Y
		STA	inv_itemPrev_idx_31D
		LDY	#0

loc_12E404:				
		LDA	byte_533,Y
		INY
		CMP	tilemapTypeUnk_30B
		BNE	loc_12E404
		DEY
		LDA	#$3C 
		STA	sprite_secondByte_31B

loc_12E413:				
		CPY	#0
		BEQ	loc_12E424
		LDA	sprite_secondByte_31B
		CLC
		ADC	#$11
		STA	sprite_secondByte_31B
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
					; sub_12E428+25j ...
		JSR	sub_12E4CD
		JSR	sub_12F765
		LDA	input_pressed_34A
		CMP	#8
		BNE	loc_12E450
		LDA	byte_42E
		CMP	#0
		BNE	loc_12E441
		LDA	#4
		STA	byte_42E

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
		LDA	#$FF
		STA	byte_42E

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
					; sub_12E428+8Aj
		JSR	sub_12ED29
		LDA	#$10
		STA	tilemapWidth_308
		LDA	#$70 
		STA	byte_31A
		JSR	sub_12D26B
		LDA	#0
		STA	sprite_length_30F
		RTS
; End of function sub_12E428


; =============== S U B	R O U T	I N E =======================================


sub_12E4CD:				
					; sub_12E428+1Fp ...
		LDA	#$80 
		STA	byte_31A
		LDA	#$C
		STA	tilemapWidth_308
		JSR	sub_12D26B
		LDA	byte_546
		CMP	#$A
		BCC	loc_12E4EE
		LDA	#0
		STA	byte_546
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
		LDA	byte_12E851,Y
		STA	tilemap_size_307
		INY
		LDA	byte_12E851,Y
		STA	ppu_unk_byte_309
		LDA	#$70 
		STA	byte_31A
		LDA	#0
		STA	sprite_secondByte_31B
		LDA	#0
		STA	byte_317
		LDA	#$2F 
		STA	objMapIdx_316
		LDA	tilemap_size_307
		PHA
		LDA	ppu_unk_byte_309
		PHA
		LDA	tilemap_size_307
		CLC
		ADC	#$C
		STA	tilemap_size_307
		LDA	ppu_unk_byte_309
		CLC
		ADC	byte_547
		STA	ppu_unk_byte_309
		JSR	sub_12E829
		PLA
		STA	ppu_unk_byte_309
		PLA
		STA	tilemap_size_307
		LDA	byte_31A
		CLC
		ADC	#4
		STA	byte_31A
		LDA	#$2E 
		STA	objMapIdx_316
		LDA	tilemap_size_307
		PHA
		LDA	ppu_unk_byte_309
		PHA
		LDA	tilemap_size_307
		CLC
		ADC	#$C
		STA	tilemap_size_307
		LDA	ppu_unk_byte_309
		CLC
		ADC	#$18
		SEC
		SBC	byte_547
		STA	ppu_unk_byte_309
		JSR	sub_12E829
		PLA
		STA	ppu_unk_byte_309
		PLA
		STA	tilemap_size_307
		LDA	byte_31A
		CLC
		ADC	#4
		STA	byte_31A
		LDA	#$30 
		STA	objMapIdx_316
		LDA	tilemap_size_307
		PHA
		LDA	ppu_unk_byte_309
		PHA
		LDA	ppu_unk_byte_309
		CLC
		ADC	#$C
		STA	ppu_unk_byte_309
		LDA	tilemap_size_307
		CLC
		ADC	byte_547
		STA	tilemap_size_307
		JSR	sub_12E829
		PLA
		STA	ppu_unk_byte_309
		PLA
		STA	tilemap_size_307
		LDA	byte_31A
		CLC
		ADC	#4
		STA	byte_31A
		LDA	#$31 
		STA	objMapIdx_316
		LDA	tilemap_size_307
		PHA
		LDA	ppu_unk_byte_309
		PHA
		LDA	tilemap_size_307
		CLC
		ADC	#$18
		SEC
		SBC	byte_547
		STA	tilemap_size_307
		LDA	ppu_unk_byte_309
		CLC
		ADC	#$C
		STA	ppu_unk_byte_309
		JSR	sub_12E829
		PLA
		STA	ppu_unk_byte_309
		PLA
		STA	tilemap_size_307
		RTS
; End of function sub_12E4CD


; =============== S U B	R O U T	I N E =======================================


sub_12E5E6:				
		LDA	byte_372
		PHA
		LDA	#0
		STA	byte_372
		LDA	byte_4C1
		CMP	#0
		BNE	loc_12E603
		LDA	#$75 
		STA	text_idx_35C
		LDA	#0
		STA	char_type_id_35D
		JMP	loc_12E616
; ---------------------------------------------------------------------------

loc_12E603:				
					; sub_12E5E6+5Cj ...
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
		JSR	wait_for_b_pressed_12F795
		JMP	loc_12E67A
; ---------------------------------------------------------------------------

loc_12E62A:				
					; sub_12E5E6+54j ...
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
					; sub_12E5E6+79j
		JSR	sub_12ED29
		LDA	#$A
		STA	byte_310
		LDA	#8
		STA	byte_35E
		LDA	#9
		STA	ppu_unk_byte_309
		LDA	#4
		STA	tilemap_size_307
		JSR	sub_12D4B3
		JSR	sub_12E80D
		JSR	sub_12E81B
		PLA
		STA	byte_372
		RTS
; End of function sub_12E5E6


; =============== S U B	R O U T	I N E =======================================


sub_12E69F:				
		LDA	byte_372
		PHA
		LDA	#0
		STA	byte_372
		LDA	byte_4D0
		CMP	#0
		BNE	loc_12E6BC
		LDA	#$75 
		STA	text_idx_35C
		LDA	#0
		STA	char_type_id_35D
		JMP	loc_12E6E0
; ---------------------------------------------------------------------------

loc_12E6BC:				
					; sub_12E69F+70j ...
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
		LDA	#$3A 
		STA	text_idx_35C
		LDA	#2
		STA	char_type_id_35D

loc_12E6E0:				
					; sub_12E69F+35j
		JSR	sub_12E798
		JSR	sub_12E7D3
		JSR	sub_12E7F0
		LDA	byte_4D0
		BNE	loc_12E6F7
		JSR	wait_for_b_pressed_12F795
		JSR	sub_12ED29
		JMP	loc_12E776
; ---------------------------------------------------------------------------

loc_12E6F7:				
					; sub_12E69F+68j ...
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
		LDA	#$3B 
		STA	text_idx_35C
		LDA	#2
		STA	char_type_id_35D

loc_12E75B:				
		LDA	#0
		STA	byte_310
		JSR	exec_b2_c3_128313

loc_12E763:				
		JSR	wait_for_count350_zero_12F770
		LDA	input_pressed_34A
		CMP	#$40 
		BNE	loc_12E763
		JSR	sub_12ED29
		JSR	sub_12D287
		JSR	sub_12D319

loc_12E776:				
					; sub_12E69F+8Dj
		LDA	#$A
		STA	byte_310
		LDA	#8
		STA	byte_35E
		LDA	#9
		STA	ppu_unk_byte_309
		LDA	#4
		STA	tilemap_size_307
		JSR	sub_12D4B3
		JSR	sub_12E80D
		JSR	sub_12E81B
		PLA
		STA	byte_372
		RTS
; End of function sub_12E69F


; =============== S U B	R O U T	I N E =======================================


sub_12E798:				
					; sub_12E69F:loc_12E6E0p
		LDA	#4
		STA	tilemap_size_307
		LDA	#9
		STA	ppu_unk_byte_309
		LDA	#8
		STA	byte_35E
		LDA	#1
		STA	byte_35F
		LDA	#0
		STA	byte_362
		LDA	#0
		STA	byte_363
		LDA	#7
		STA	byte_364
		LDA	#$C4 
		STA	sprite_secondByte_31B
		LDA	#$A
		STA	byte_310
		LDA	#1
		STA	byte_360
		LDA	#0
		STA	byte_361
		JSR	exec_b2_c4_1283F2
		RTS
; End of function sub_12E798


; =============== S U B	R O U T	I N E =======================================


sub_12E7D3:				
					; sub_12E69F+44p
		LDA	#$2E 
		STA	objMapIdx_316
		LDA	#$54 

loc_12E7DA:
		STA	tilemap_size_307
		LDA	#$38 
		STA	ppu_unk_byte_309
		LDA	#$A0 
		STA	byte_31A
		LDA	#0
		STA	sprite_secondByte_31B
		JSR	sub_12E829
		RTS
; End of function sub_12E7D3


; =============== S U B	R O U T	I N E =======================================


sub_12E7F0:				
					; sub_12E69F+47p
		LDA	#$2F 
		STA	objMapIdx_316
		LDA	#$54 
		STA	tilemap_size_307
		LDA	#$60 
		STA	ppu_unk_byte_309
		LDA	#$A4 
		STA	byte_31A
		LDA	#0
		STA	sprite_secondByte_31B
		JSR	sub_12E829
		RTS
; End of function sub_12E7F0


; =============== S U B	R O U T	I N E =======================================


sub_12E80D:				
					; sub_12E69F+EEp
		LDA	#$A0 
		STA	byte_31A
		LDA	#4
		STA	tilemapWidth_308
		JSR	sub_12D26B
		RTS
; End of function sub_12E80D


; =============== S U B	R O U T	I N E =======================================


sub_12E81B:				
					; sub_12E69F+F1p
		LDA	#$A4 
		STA	byte_31A
		LDA	#4
		STA	tilemapWidth_308
		JSR	sub_12D26B
		RTS
; End of function sub_12E81B


; =============== S U B	R O U T	I N E =======================================


sub_12E829:				
					; sub_12D3AB+B1p ...
		LDA	tilemap_size_307
		STA	byte_36A
		LDA	#0
		STA	byte_36B
		LDA	ppu_unk_byte_309
		STA	byte_366
		LDA	#0
		STA	byte_367
		LDA	#5
		STA	objectIdx_318
		LDX	objMapIdx_316
		LDA	byte_12DEED,X
		STA	byte_317
		JSR	exec_b1_c1_128394
		RTS
; End of function sub_12E829

; ---------------------------------------------------------------------------
byte_12E851:	.BYTE $B0,$40,$D0,$40,$B0,$60,$D0,$60,$B0,$80,$D0,$80,$B0,$A0,$D0,$A0
					
					; sub_12D287+6Br ...
		.BYTE $B0,$10,$D0,$10,$B0,$20,$D0,$20
byte_12E869:	.BYTE $1D,$1F,$19,$24,$1E,$12,$23, $E, $B, $A,$1A,$1A,$1A,$1B,$1B,$1B
					
					; sub_12D58C+49r ...
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
		LDA	#$F
		STA	unk_53B,X
		JMP	loc_12ED17
; ---------------------------------------------------------------------------

loc_12E8FB:				
					; sub_12E8A5+32j
		LDA	unk_53B,X
		CLC
		ADC	unk_53B,Y
		STA	unk_53B,X
		LDX	byte_47C
		LDY	byte_532
		JSR	sub_12D9F7
		LDA	byte_47C
		STA	tilemapTypeUnk_30B
		JSR	sub_12D8B3
		LDX	byte_47C
		LDY	byte_532
		JSR	sub_12DA33
		JMP	loc_12ED17
; ---------------------------------------------------------------------------

loc_12E923:				
					; sub_12E8A5+39j
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
		LDA	#6
		STA	unk_53B,X
		JMP	loc_12ED17
; ---------------------------------------------------------------------------

loc_12E960:				
					; sub_12E8A5+97j
		LDA	unk_53B,X
		CLC
		ADC	unk_53B,Y
		STA	unk_53B,X
		LDX	byte_47C
		LDY	byte_532
		JSR	sub_12D9F7
		LDA	byte_47C
		STA	tilemapTypeUnk_30B
		JSR	sub_12D8B3
		LDX	byte_47C
		LDY	byte_532
		JSR	sub_12DA33
		JMP	loc_12ED17
; ---------------------------------------------------------------------------

loc_12E988:				
					; sub_12E8A5+9Ej
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
		LDA	#6
		STA	unk_53B,X
		JMP	loc_12ED17
; ---------------------------------------------------------------------------

loc_12E9C5:				
					; sub_12E8A5+FCj
		LDA	unk_53B,X
		CLC
		ADC	unk_53B,Y
		STA	unk_53B,X
		LDX	byte_47C
		LDY	byte_532
		JSR	sub_12D9F7
		LDA	byte_47C
		STA	tilemapTypeUnk_30B
		JSR	sub_12D8B3
		LDX	byte_47C
		LDY	byte_532
		JSR	sub_12DA33
		JMP	loc_12ED17
; ---------------------------------------------------------------------------

loc_12E9ED:				
					; sub_12E8A5+103j
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
		LDA	#6
		STA	unk_53B,X
		JMP	loc_12ED17
; ---------------------------------------------------------------------------

loc_12EA2A:				
					; sub_12E8A5+161j
		LDA	unk_53B,X
		CLC
		ADC	unk_53B,Y
		STA	unk_53B,X
		LDX	byte_47C
		LDY	byte_532
		JSR	sub_12D9F7
		LDA	byte_47C
		STA	tilemapTypeUnk_30B
		JSR	sub_12D8B3
		LDX	byte_47C
		LDY	byte_532
		JSR	sub_12DA33
		JMP	loc_12ED17
; ---------------------------------------------------------------------------

loc_12EA52:				
					; sub_12E8A5+168j
		JMP	loc_12ED0E
; ---------------------------------------------------------------------------

loc_12EA55:				
		CMP	#6
		BNE	loc_12EA7A
		LDA	byte_533,Y
		CMP	#1
		BNE	loc_12EA77
		LDA	byte_47C
		PHA
		LDA	byte_47B
		STA	byte_47C
		PLA
		STA	byte_47B
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
		LDA	byte_47C
		PHA
		LDA	byte_47B
		STA	byte_47C
		PLA
		STA	byte_47B
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
		LDA	byte_47C
		PHA
		LDA	byte_47B
		STA	byte_47C
		PLA
		STA	byte_47B
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
		LDA	byte_47C
		PHA
		LDA	byte_47B
		STA	byte_47C
		PLA
		STA	byte_47B
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
		LDA	#$D
		STA	byte_533,X
		JMP	loc_12EB05
; ---------------------------------------------------------------------------

loc_12EAFC:				
		CMP	#$11
		BNE	loc_12EB39
		LDA	#$E
		STA	byte_533,X

loc_12EB05:				
		LDX	byte_47B
		LDA	byte_47B
		CMP	byte_47C
		BCC	loc_12EB13
		LDX	byte_47C

loc_12EB13:				
		LDY	byte_532
		JSR	sub_12D9F7
		LDA	byte_47C
		STA	tilemapTypeUnk_30B
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
		LDA	#$D
		STA	byte_533,X
		JMP	loc_12EB78
; ---------------------------------------------------------------------------

loc_12EB4F:				
		CMP	#$B
		BNE	loc_12EB63
		LDA	byte_47B
		CMP	byte_47C
		BEQ	loc_12EB63
		LDA	#$F
		STA	byte_533,X
		JMP	loc_12EB78
; ---------------------------------------------------------------------------

loc_12EB63:				
					; sub_12E8A5+2B4j
		CMP	#$C
		BNE	loc_12EB6F
		LDA	#$11
		STA	byte_533,X
		JMP	loc_12EB78
; ---------------------------------------------------------------------------

loc_12EB6F:				
		CMP	#$F
		BNE	loc_12EBAC
		LDA	#$10
		STA	byte_533,X

loc_12EB78:				
					; sub_12E8A5+2BBj ...
		LDX	byte_47B
		LDA	byte_47B
		CMP	byte_47C
		BCC	loc_12EB86
		LDX	byte_47C

loc_12EB86:				
		LDY	byte_532
		JSR	sub_12D9F7
		LDA	byte_47C
		STA	tilemapTypeUnk_30B
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
		LDA	#$11
		STA	byte_533,X
		LDX	byte_47B
		LDA	byte_47B
		CMP	byte_47C
		BCC	loc_12EBD0
		LDX	byte_47C

loc_12EBD0:				
		LDY	byte_532
		JSR	sub_12D9F7
		LDA	byte_47C
		STA	tilemapTypeUnk_30B
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
		LDA	#$E
		STA	byte_533,X
		LDX	byte_47B
		LDA	byte_47B
		CMP	byte_47C
		BCC	loc_12EC10
		LDX	byte_47C

loc_12EC10:				
		LDY	byte_532
		JSR	sub_12D9F7
		LDA	byte_47C
		STA	tilemapTypeUnk_30B
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
		LDA	#$E
		STA	byte_533,X
		LDX	byte_47B
		LDA	byte_47B
		CMP	byte_47C
		BCC	loc_12EC57
		LDX	byte_47C

loc_12EC57:				
		LDY	byte_532
		JSR	sub_12D9F7
		LDA	byte_47C
		STA	tilemapTypeUnk_30B
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
		LDA	#$10
		STA	byte_533,X
		LDX	byte_47B
		LDA	byte_47B
		CMP	byte_47C
		BCC	loc_12EC9E
		LDX	byte_47C

loc_12EC9E:				
		LDY	byte_532
		JSR	sub_12D9F7
		LDA	byte_47C
		STA	tilemapTypeUnk_30B
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
		LDA	#$E
		STA	byte_533,X
		LDX	byte_47B
		LDA	byte_47B
		CMP	byte_47C
		BCC	loc_12ECE5
		LDX	byte_47C

loc_12ECE5:				
		LDY	byte_532
		JSR	sub_12D9F7
		LDA	byte_47C
		STA	tilemapTypeUnk_30B
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
					; sub_12E8A5:loc_12E923j ...
		JSR	sub_12ED29
		LDA	#0
		STA	sprite_length_30F
		RTS
; ---------------------------------------------------------------------------

loc_12ED17:				
					; sub_12E8A5+7Bj ...
		JSR	sub_12ED20
		LDA	#$FF
		STA	sprite_length_30F
		RTS
; End of function sub_12E8A5


; =============== S U B	R O U T	I N E =======================================


sub_12ED20:				
					; com_E_load_game_12CD30+112p ...
		LDA	tilemapTypeUnk_30B
		PHA
		LDA	#6
		JMP	loc_12ED4D
; End of function sub_12ED20


; =============== S U B	R O U T	I N E =======================================


sub_12ED29:				
					; com_E_load_game_12CD30:loc_12CE69p ...
		LDA	tilemapTypeUnk_30B
		PHA
		LDA	#$B
		JMP	loc_12ED4D
; End of function sub_12ED29


; =============== S U B	R O U T	I N E =======================================


sub_12ED32:				
					; com_E_load_game_12CD30+108p ...
		LDA	tilemapTypeUnk_30B
		PHA
		LDA	#$2B 
		JMP	loc_12ED4D
; End of function sub_12ED32


; =============== S U B	R O U T	I N E =======================================


sub_12ED3B:				
					; sub_12C438p
		LDA	tilemapTypeUnk_30B
		PHA
		LDA	#$2D 
		JMP	loc_12ED4D
; End of function sub_12ED3B


; =============== S U B	R O U T	I N E =======================================


sub_12ED44:				
		LDA	tilemapTypeUnk_30B
		PHA
		LDA	#$18
		JMP	loc_12ED4D
; ---------------------------------------------------------------------------

loc_12ED4D:				
					; sub_12ED29+6j ...
		STA	tilemapTypeUnk_30B
		JSR	sub_128531
		PLA
		STA	tilemapTypeUnk_30B
		RTS
; End of function sub_12ED44


; =============== S U B	R O U T	I N E =======================================


sub_12ED58:
		LDA	#5
		STA	objectIdx_318

set_inventory_screen_12ED5D:
		LDA	#8
		STA	image_id_4A4
		LDA	#0
		STA	image_offset_4A5
		STA	ppu_prev_unk_4A6
		STA	ppu_prev_scroll_x_unk_4A7
		STA	ppu_prev_scroll_y_unk_4A8
		LDA	#2
		STA	prev_sprite_type_4A9
		JSR	exec_b0_c2_12A9A9
		LDA	#0
		STA	tilemapTypeUnk_30B
		LDA	#$80 
		STA	tilemap_size_307
		STA	ppu_unk_byte_309
		LDA	tilemapTypeUnk_30B
		PHA
		JSR	sub_12D3AB
		PLA
		STA	tilemapTypeUnk_30B

loc_12ED90:				
					; sub_12ED58+65j ...
		JSR	wait_for_count350_zero_12F770
		LDA	input_pressed_34A
		CMP	#8
		BNE	loc_12EDC0
		LDA	tilemapTypeUnk_30B
		CMP	#0
		BEQ	loc_12ED90
		DEC	tilemapTypeUnk_30B
		LDA	#$80 
		STA	tilemap_size_307
		STA	ppu_unk_byte_309
		JSR	sub_12D261
		LDA	tilemapTypeUnk_30B
		PHA
		JSR	sub_12D3AB
		PLA
		STA	tilemapTypeUnk_30B
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
		LDA	#$80 
		STA	tilemap_size_307
		STA	ppu_unk_byte_309
		LDA	tilemapTypeUnk_30B
		PHA
		JSR	sub_12D3AB
		PLA
		STA	tilemapTypeUnk_30B
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
					; sub_12D21B+32p
		LDX	#0
		LDA	palette_bg_321,X ; "����������������"
		LDX	#$10
		STA	palette_bg_321,X ; "����������������"
		LDA	#4
		STA	inv_spr_dscr1_30C

loc_12EE04:				
		LDA	#0
		STA	has_ppu_data_to_upload_6F
		LDX	#0
		LDA	#1
		STA	ppu_data_70,X
		INX
		LDA	#$20 
		STA	ppu_data_70,X
		INX
		LDA	#$3F 
		STA	ppu_data_70,X
		INX
		LDA	#0
		STA	ppu_data_70,X
		INX
		LDA	byte_341
		CMP	#0
		BNE	loc_12EE2A
		LDA	#1
		STA	inv_spr_dscr1_30C

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
		LDA	palette_bg_321,Y ; "����������������"
		AND	#$CF 
		JMP	loc_12EE7D
; ---------------------------------------------------------------------------

loc_12EE47:				
		LDA	palette_bg_321,Y ; "����������������"
		AND	#$30 
		CMP	#$30 
		BCC	loc_12EE7A
		LDA	palette_bg_321,Y ; "����������������"
		AND	#$DF 
		JMP	loc_12EE7D
; ---------------------------------------------------------------------------

loc_12EE58:				
		LDA	palette_bg_321,Y ; "����������������"
		AND	#$30 
		CMP	#$20 
		BCC	loc_12EE7A
		LDA	palette_bg_321,Y ; "����������������"
		AND	#$EF 
		JMP	loc_12EE7D
; ---------------------------------------------------------------------------

loc_12EE69:				
		LDA	palette_bg_321,Y ; "����������������"
		AND	#$30 
		CMP	#$10
		BCC	loc_12EE7A
		LDA	palette_bg_321,Y ; "����������������"
		AND	#$FF
		JMP	loc_12EE7D
; ---------------------------------------------------------------------------

loc_12EE7A:				
					; sub_12EDF5+6Aj ...
		LDA	palette_bg_321,Y ; "����������������"

loc_12EE7D:				
					; sub_12EDF5+60j ...
		STA	ppu_data_70,X
		INX
		INY
		CPY	#$20 
		BCC	loc_12EE2C
		LDA	#1
		STA	has_ppu_data_to_upload_6F
		DEC	inv_spr_dscr1_30C
		LDA	inv_spr_dscr1_30C
		CMP	#0
		BEQ	loc_12EE9C
		LDA	byte_341
		JSR	wait_for_count350_zero_12F770
		JMP	loc_12EE04
; ---------------------------------------------------------------------------

loc_12EE9C:				
		LDA	byte_341
		CMP	#0
		BEQ	loc_12EEA7
		JSR	wait_for_count350_zero_12F770
		RTS
; ---------------------------------------------------------------------------

loc_12EEA7:				
		CLC
		ADC	#1
		JSR	wait_for_count350_zero_12F770
		RTS
; End of function sub_12EDF5


; =============== S U B	R O U T	I N E =======================================


sub_12EEAE:				
					; sub_12D21Bp
		LDA	#4
		STA	inv_spr_dscr1_30C

write_ppu_entry_12EEB3:			
		LDA	#0
		STA	has_ppu_data_to_upload_6F
		LDX	#0
		LDA	#1
		STA	ppu_data_70,X
		INX
		LDA	#$20 
		STA	ppu_data_70,X
		INX
		LDA	#$3F 
		STA	ppu_data_70,X
		INX
		LDA	#0
		STA	ppu_data_70,X
		INX
		LDA	byte_341
		CMP	#0
		BNE	loc_12EED9
		LDA	#0
		STA	inv_spr_dscr1_30C

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
		LDA	palette_bg_321,Y ; "����������������"
		AND	#$FF
		JMP	loc_12EF35
; ---------------------------------------------------------------------------

loc_12EEFA:				
		LDA	palette_bg_321,Y ; "����������������"
		AND	#$30 
		CMP	#$30 
		BCC	loc_12EF32
		LDA	palette_bg_321,Y ; "����������������"
		AND	#$EF 
		JMP	loc_12EF35
; ---------------------------------------------------------------------------

loc_12EF0B:				
		LDA	palette_bg_321,Y ; "����������������"
		AND	#$30 
		CMP	#$20 
		BCC	loc_12EF32
		LDA	palette_bg_321,Y ; "����������������"
		AND	#$DF 
		JMP	loc_12EF35
; ---------------------------------------------------------------------------

loc_12EF1C:				
		LDA	palette_bg_321,Y ; "����������������"
		AND	#$30 
		CMP	#$10
		BCC	loc_12EF32
		LDA	palette_bg_321,Y ; "����������������"
		AND	#$CF 
		JMP	loc_12EF35
; ---------------------------------------------------------------------------

loc_12EF2D:				
		LDA	#$1D
		JMP	loc_12EF35
; ---------------------------------------------------------------------------

loc_12EF32:				
					; sub_12EEAE+64j ...
		LDA	palette_bg_321,Y ; "����������������"

loc_12EF35:				
					; sub_12EEAE+5Aj ...
		STA	ppu_data_70,X
		INX
		INY
		CPY	#$20 
		BCC	loc_12EEDB
		LDA	#1
		STA	has_ppu_data_to_upload_6F
		DEC	inv_spr_dscr1_30C
		LDA	inv_spr_dscr1_30C
		CMP	#$FF
		BEQ	loc_12EF54
		LDA	byte_341
		JSR	wait_for_count350_zero_12F770
		JMP	write_ppu_entry_12EEB3
; ---------------------------------------------------------------------------

loc_12EF54:				
		LDA	byte_341
		CMP	#0
		BEQ	loc_12EF5F
		JSR	wait_for_count350_zero_12F770
		RTS
; ---------------------------------------------------------------------------

loc_12EF5F:				
		CLC
		ADC	#1
		JSR	wait_for_count350_zero_12F770
		RTS
; End of function sub_12EEAE


; =============== S U B	R O U T	I N E =======================================


sub_12EF66:				
		LDY	byte_301
		LDA	byte_12EFD7,Y
		TAY
		CPY	#$F
		BNE	sub_12EF77
		LDA	#$FF
		STA	sprite_length_30F
		RTS
; End of function sub_12EF66


; =============== S U B	R O U T	I N E =======================================


sub_12EF77:				
					; sub_12EF66+9j
		TYA
		PHA
		JSR	sub_1283BA
		PLA
		TAY
		LDA	image_id_4A4
		PHA
		LDA	image_offset_4A5
		PHA
		LDA	ppu_prev_unk_4A6
		PHA
		LDA	ppu_prev_scroll_x_unk_4A7
		PHA
		LDA	ppu_prev_scroll_y_unk_4A8
		PHA
		LDA	prev_sprite_type_4A9
		PHA
		LDA	map_sequence_12F072,Y
		STA	image_id_4A4
		LDA	#0
		STA	image_offset_4A5
		STA	ppu_prev_unk_4A6
		STA	ppu_prev_scroll_x_unk_4A7
		STA	ppu_prev_scroll_y_unk_4A8
		LDA	#2
		STA	prev_sprite_type_4A9
		JSR	exec_b0_c2_12A9A9
		JSR	wait_for_any_input_12F79D
		PLA
		STA	prev_sprite_type_4A9
		PLA
		STA	ppu_prev_scroll_y_unk_4A8
		PLA
		STA	ppu_prev_scroll_x_unk_4A7
		PLA
		STA	ppu_prev_unk_4A6
		PLA
		STA	image_offset_4A5
		PLA
		STA	image_id_4A4
		LDA	#0
		STA	sprite_length_30F
		RTS
; End of function sub_12EF77

; ---------------------------------------------------------------------------
		.BYTE $60,$60,$60,$60
byte_12EFD7:	.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
					
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
					; sub_12C694+21p
		LDA	#0
		STA	byte_41F
		STA	byte_421
		STA	byte_547
		JSR	sub_1283BA
		LDA	image_id_4A4
		PHA
		LDA	image_offset_4A5
		PHA
		LDA	ppu_prev_unk_4A6
		PHA
		LDA	ppu_prev_scroll_x_unk_4A7
		PHA
		LDA	ppu_prev_scroll_y_unk_4A8
		PHA
		LDA	prev_sprite_type_4A9
		PHA
		LDA	#5
		STA	objectIdx_318
		LDA	#0
		STA	byte_360
		LDA	#3
		STA	byte_361

show_computer_12F0B2:
		LDA	#$84 
		STA	image_id_4A4
		LDA	#0
		STA	image_offset_4A5
		STA	ppu_prev_unk_4A6
		LDA	#0
		STA	ppu_prev_scroll_x_unk_4A7
		STA	ppu_prev_scroll_y_unk_4A8
		LDA	#2
		STA	prev_sprite_type_4A9
		JSR	exec_b0_c2_12A9A9
		LDA	#$2B 
		STA	text_idx_35C
		LDA	#2
		STA	char_type_id_35D
		JSR	sub_12F5B9
		LDA	#0
		STA	byte_372

loc_12F0E1:				
					; sub_12F07D+87j ...
		JSR	sub_12F564
		JSR	sub_12F168
		JSR	wait_for_count350_zero_12F770
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
					; sub_12F07D+BDj
		JSR	sub_12ED29
		PLA
		STA	prev_sprite_type_4A9
		PLA
		STA	ppu_prev_scroll_y_unk_4A8
		PLA
		STA	ppu_prev_scroll_x_unk_4A7
		PLA
		STA	ppu_prev_unk_4A6
		PLA
		STA	image_offset_4A5
		PLA
		STA	image_id_4A4
		LDA	#$FF
		STA	map_show_43B
		JSR	exec_b0_c2_12A9A9
		LDA	#0
		STA	map_show_43B
		RTS
; End of function sub_12F07D


; =============== S U B	R O U T	I N E =======================================


sub_12F168:				
					; sub_12F2C9+C4p ...
		LDA	#$2A 
		STA	objMapIdx_316
		LDA	byte_372
		ASL	A
		TAY
		LDA	byte_12F28B,Y
		STA	byte_36A
		INY
		LDA	byte_12F28B,Y
		STA	byte_366
		LDA	#0
		STA	byte_36B
		STA	byte_367
		LDA	#5
		STA	objectIdx_318
		LDA	#0
		STA	byte_31A
		LDA	#0
		STA	sprite_secondByte_31B
		LDA	#0
		STA	byte_317
		JSR	exec_b1_c1_128394
		LDA	#$2B 
		STA	objMapIdx_316
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
					; sub_12F168+52j ...
		LDA	byte_36A
		CLC
		ADC	#$10
		STA	byte_36A

loc_12F1D0:				
		INY
		LDA	byte_12F28B,Y
		STA	byte_366
		LDA	#0
		STA	byte_36B
		STA	byte_367
		LDA	#5
		STA	objectIdx_318
		LDA	#4
		STA	byte_31A
		LDA	#0
		STA	sprite_secondByte_31B
		LDA	#0
		STA	byte_317
		JSR	exec_b1_c1_128394
		LDA	#$2C 
		STA	objMapIdx_316
		LDA	byte_372
		ASL	A
		TAY
		LDA	byte_12F28B,Y
		STA	byte_36A
		INY
		LDA	byte_12F28B,Y
		CLC
		ADC	#8
		STA	byte_366
		LDA	#0
		STA	byte_36B
		STA	byte_367
		LDA	#5
		STA	objectIdx_318
		LDA	#8
		STA	byte_31A
		LDA	#0
		STA	sprite_secondByte_31B
		LDA	#0
		STA	byte_317
		JSR	exec_b1_c1_128394
		LDA	#$2D 
		STA	objMapIdx_316
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
					; sub_12F168+E3j ...
		LDA	byte_36A
		CLC
		ADC	#$10
		STA	byte_36A

loc_12F261:				
		INY
		LDA	byte_12F28B,Y
		CLC
		ADC	#8
		STA	byte_366
		LDA	#0
		STA	byte_36B
		STA	byte_367
		LDA	#5
		STA	objectIdx_318
		LDA	#$C
		STA	byte_31A
		LDA	#0
		STA	sprite_secondByte_31B
		LDA	#0
		STA	byte_317
		JSR	exec_b1_c1_128394
		RTS
; End of function sub_12F168

; ---------------------------------------------------------------------------
byte_12F28B:	.BYTE $28,$88,$38,$88,$48,$88,$58,$88,$68,$88,$78,$88,$88,$88,$98,$88
					
					; sub_12F168+11r ...
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
					; sub_12F2C9+Cj
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
					; sub_12F2C9+20j
		LDA	#$4E 
		CLC
		ADC	byte_421
		STA	data_2
		LDA	#$21 
		ADC	#0
		STA	data_3
		LDX	byte_372
		LDA	byte_12F45C,X
		STA	tilemapTypeUnk_30B
		LDA	tilemapTypeUnk_30B
		CMP	#$FF
		BEQ	loc_12F30E
		JMP	loc_12F411
; ---------------------------------------------------------------------------

loc_12F30E:				
		LDA	#$3A 
		STA	ptr_0
		LDA	#$F5 
		STA	ptr_1
		LDA	byte_420
		ASL	A
		CLC
		ADC	ptr_0
		STA	ptr_0
		LDA	ptr_1
		ADC	#0
		STA	ptr_1
		LDY	#0
		LDA	(ptr_0),Y
		STA	data_2
		INY
		LDA	(ptr_0),Y
		STA	data_3
		LDY	#0
		LDA	(data_2),Y
		STA	tilemapTypeUnk_30B
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
		LDA	#3
		STA	byte_420
		LDA	#$2C 
		STA	text_idx_35C
		LDA	#2
		STA	char_type_id_35D
		JSR	sub_12F5B9
		LDA	#0
		STA	byte_421
		JSR	sub_12F583
		JMP	locret_12F410
; ---------------------------------------------------------------------------

loc_12F377:				
		LDA	byte_420
		CMP	#3
		BNE	loc_12F3F4

loc_12F37E:				
					; sub_12F2C9+13Fj
		JSR	sub_12F5FC
		LDA	byte_372
		PHA
		LDA	#$1C
		STA	byte_372

loc_12F38A:				
					; sub_12F2C9+D8j ...
		JSR	wait_for_count350_zero_12F770
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
		LDA	byte_372
		STA	tilemapTypeUnk_30B
		PLA
		STA	byte_372
		LDA	tilemapTypeUnk_30B
		PHA
		JSR	sub_12F168
		PLA
		STA	tilemapTypeUnk_30B
		CMP	#$1E
		BEQ	loc_12F3F4
		CMP	#$1D
		BEQ	loc_12F3E9
		JSR	sub_12F6D8
		LDA	#4
		STA	byte_420
		LDA	#0
		STA	byte_421
		JMP	locret_12F410
; ---------------------------------------------------------------------------

loc_12F3E9:				
		JSR	sub_12F698
		LDA	#$FF
		STA	byte_684
		JMP	loc_12F37E
; ---------------------------------------------------------------------------

loc_12F3F4:				
					; sub_12F2C9+10Aj
		LDA	byte_420
		CMP	#4
		BNE	loc_12F40B
		JSR	sub_12F698
		LDA	#$FF
		STA	byte_69E
		LDA	#3
		STA	byte_420
		JMP	loc_12F37E
; ---------------------------------------------------------------------------

loc_12F40B:				
		LDA	#$FF
		STA	byte_41F

locret_12F410:				
					; sub_12F2C9+80j ...
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
		LDA	byte_372
		STA	unk_422,X
		LDA	#1
		STA	tilemapTypeUnk_30B
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
byte_12F45C:	.BYTE $10,$16,	4,$11,$13,$18,$14,  8, $E, $F,$1B,  0,$12,  3,	5,  6
					
		.BYTE	7,  9, $A, $B,$FF,$19,$17,  2,$15,  1, $D, $C

; =============== S U B	R O U T	I N E =======================================


sub_12F478:				
		LDA	#0
		STA	has_ppu_data_to_upload_6F
		LDX	#0
		LDA	#1
		STA	ppu_data_70,X
		INX
		LDA	tilemapTypeUnk_30B
		STA	ppu_data_70,X
		INX
		LDA	data_3
		STA	ppu_data_70,X
		INX
		LDA	data_2
		STA	ppu_data_70,X
		INX
		LDY	#0

loc_12F495:				
		LDA	(ptr_0),Y
		STA	ppu_data_70,X
		INX
		INY
		CPY	tilemapTypeUnk_30B
		BCC	loc_12F495
		LDA	data_2
		CLC
		ADC	tilemapTypeUnk_30B
		STA	data_2
		LDA	data_3
		ADC	#0
		STA	data_3
		LDA	ptr_0
		CLC
		ADC	tilemapTypeUnk_30B
		STA	ptr_0
		LDA	ptr_1
		ADC	#0
		STA	ptr_1
		JSR	sub_12F75C
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
					; sub_12F4C0+Dj
		LDA	byte_372
		SEC
		SBC	#$B
		STA	byte_372
		RTS
; ---------------------------------------------------------------------------

locret_12F4E3:				
					; sub_12F4C0+7j
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
		LDA	byte_372
		CLC
		ADC	#$B
		STA	byte_372
		RTS
; ---------------------------------------------------------------------------

loc_12F503:				
					; sub_12F4E4+Dj
		CMP	#$12
		BCS	locret_12F513
		BEQ	locret_12F513
		LDA	byte_372
		CLC
		ADC	#$A
		STA	byte_372
		RTS
; ---------------------------------------------------------------------------

locret_12F513:				
					; sub_12F4E4+7j ...
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
					; sub_12F514+9j ...
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
					; sub_12F527+9j ...
		RTS
; End of function sub_12F527

; ---------------------------------------------------------------------------
		.WORD byte_12F544
		.WORD byte_12F54D
		.WORD byte_12F556
		.WORD byte_12F55B
		.WORD byte_12F55F
byte_12F544:	.BYTE	8,  9,$10, $B,	3,$1B, $B,$17,	5 
byte_12F54D:	.BYTE	8,$19,	7, $F,$10,  8,	6, $C,	2 
byte_12F556:	.BYTE	4,$11,	8,$10,$1A 
byte_12F55B:	.BYTE	3, $B, $D, $B	
byte_12F55F:	.BYTE	4,$1B,	8,$13,	2 

; =============== S U B	R O U T	I N E =======================================


sub_12F564:				
		LDA	count_unk_465
		CMP	#$F
		BCC	locret_12F5B8
		LDA	#0
		STA	count_unk_465
		LDA	byte_547
		EOR	#1
		STA	byte_547
		LDA	byte_547
		BEQ	sub_12F583
; End of function sub_12F564


; =============== S U B	R O U T	I N E =======================================


sub_12F57D:				
		LDA	#$F0 
		STA	byte_280
		RTS
; End of function sub_12F57D


; =============== S U B	R O U T	I N E =======================================


sub_12F583:				
					; sub_12F2C9+A8p ...
		LDA	#$3C 
		STA	objMapIdx_316
		LDA	byte_421
		ASL	A
		ASL	A
		ASL	A
		CLC
		ADC	#$70 
		STA	byte_36A
		LDA	#$50 
		STA	byte_366
		LDA	#0
		STA	byte_36B
		STA	byte_367
		LDA	#5
		STA	objectIdx_318
		LDA	#$80 
		STA	byte_31A
		LDA	#0
		STA	sprite_secondByte_31B
		LDA	#2
		STA	byte_317
		JSR	exec_b1_c1_128394

locret_12F5B8:				
		RTS
; End of function sub_12F583


; =============== S U B	R O U T	I N E =======================================


sub_12F5B9:				
					; sub_12F2C9+A0p
		LDA	#9
		STA	ppu_unk_byte_309
		LDA	#9
		STA	tilemap_size_307
		LDA	#8
		STA	byte_35E
		LDA	#1
		STA	byte_35F
		LDA	#$AF 
		STA	sprite_secondByte_31B
; End of function sub_12F5B9


; =============== S U B	R O U T	I N E =======================================


sub_12F5D2:				
					; sub_12F5FC+4Cp ...
		LDA	#0
		STA	byte_362
		LDA	#0
		STA	byte_363
; End of function sub_12F5D2


; =============== S U B	R O U T	I N E =======================================


sub_12F5DC:				
					; sub_12F6D8+30p
		LDA	#7
		STA	byte_364
		LDA	#1
		STA	byte_360
		LDA	#0
		STA	byte_361
		LDA	byte_310
		PHA
		LDA	#5
		STA	byte_310
		JSR	exec_b2_c4_1283F2
		PLA
		STA	byte_310
		RTS
; End of function sub_12F5DC


; =============== S U B	R O U T	I N E =======================================


sub_12F5FC:				
		JSR	sub_12F57D
		LDA	#$2D 
		STA	text_idx_35C
		LDA	#2
		STA	char_type_id_35D
		LDA	#3
		STA	ppu_unk_byte_309
		LDA	#5
		STA	tilemap_size_307
		LDA	#$B
		STA	byte_35E
		LDA	#4
		STA	byte_35F
		LDA	#$AF 
		STA	sprite_secondByte_31B
		JSR	sub_12F5D2
		LDA	#$2E 
		STA	text_idx_35C
		LDA	#2
		STA	char_type_id_35D
		LDA	#5
		STA	ppu_unk_byte_309
		LDA	#$E
		STA	tilemap_size_307
		LDA	#2
		STA	byte_35E
		LDA	#1
		STA	byte_35F
		LDA	#$D7 
		STA	sprite_secondByte_31B
		JSR	sub_12F5D2
		LDA	#$2F 
		STA	text_idx_35C
		LDA	#2
		STA	char_type_id_35D
		LDA	#7
		STA	ppu_unk_byte_309
		LDA	#$E
		STA	tilemap_size_307
		LDA	#2
		STA	byte_35E
		LDA	#1
		STA	byte_35F
		LDA	#$DF 
		STA	sprite_secondByte_31B
		JSR	sub_12F5D2
		LDA	#$30 
		STA	text_idx_35C
		LDA	#2
		STA	char_type_id_35D
		LDA	#9
		STA	ppu_unk_byte_309
		LDA	#$E
		STA	tilemap_size_307
		LDA	#2
		STA	byte_35E
		LDA	#1
		STA	byte_35F
		LDA	#$E7 
		STA	sprite_secondByte_31B
		JSR	sub_12F5D2
		RTS
; End of function sub_12F5FC


; =============== S U B	R O U T	I N E =======================================


sub_12F698:				
					; sub_12F2C9+132p
		JSR	sub_12F732
		LDA	#$32 
		STA	text_idx_35C
		LDA	#2
		STA	char_type_id_35D
		LDA	#5
		STA	ppu_unk_byte_309
		LDA	#5
		STA	tilemap_size_307
		LDA	#$B
		STA	byte_35E
		LDA	#2
		STA	byte_35F
		LDA	#$B3 
		STA	sprite_secondByte_31B
		LDA	#0
		STA	byte_362
		LDA	#1
		STA	byte_363
		JSR	sub_12F5DC
		JSR	sub_12F77B
		JSR	sub_12F77B
		JSR	sub_12F77B
		JSR	sub_12F77B
		RTS
; End of function sub_12F698


; =============== S U B	R O U T	I N E =======================================


sub_12F6D8:				
		JSR	sub_12F732
		LDA	#$31 
		STA	text_idx_35C
		LDA	#2
		STA	char_type_id_35D
		LDA	#3
		STA	ppu_unk_byte_309
		LDA	#5
		STA	tilemap_size_307
		LDA	#$B
		STA	byte_35E
		LDA	#2
		STA	byte_35F
		LDA	#$B3 
		STA	sprite_secondByte_31B
		LDA	#0
		STA	byte_362
		LDA	#1
		STA	byte_363
		JSR	sub_12F5DC
		LDA	#$2C 
		STA	text_idx_35C
		LDA	#2
		STA	char_type_id_35D
		LDA	#9
		STA	ppu_unk_byte_309
		LDA	#9
		STA	tilemap_size_307
		LDA	#3
		STA	byte_35E
		LDA	#1
		STA	byte_35F
		LDA	#$F3 
		STA	sprite_secondByte_31B
		JSR	sub_12F5D2
		RTS
; End of function sub_12F6D8


; =============== S U B	R O U T	I N E =======================================


sub_12F732:				
		JSR	sub_12F57D
		LDA	#$74 
		STA	text_idx_35C
		LDA	#0
		STA	char_type_id_35D
		LDA	#3
		STA	ppu_unk_byte_309
		LDA	#5
		STA	tilemap_size_307
		LDA	#$B
		STA	byte_35E
		LDA	#4
		STA	byte_35F
		LDA	#$AF 
		STA	sprite_secondByte_31B
		JSR	sub_12F5D2
		RTS
; End of function sub_12F732


; =============== S U B	R O U T	I N E =======================================


sub_12F75C:				
		LDA	#1
		STA	has_ppu_data_to_upload_6F

loc_12F760:				
		LDA	has_ppu_data_to_upload_6F
		BNE	loc_12F760
		RTS
; End of function sub_12F75C


; =============== S U B	R O U T	I N E =======================================


sub_12F765:				
					; sub_12D4C6+2Ap ...
		LDA	_PPU_STATUS
		BMI	sub_12F765

loc_12F76A:				
		LDA	_PPU_STATUS
		BPL	loc_12F76A
		RTS
; End of function sub_12F765


; =============== S U B	R O U T	I N E =======================================


wait_for_count350_zero_12F770:		
					; sub_12C1C3+1Ap ...
		LDA	#1
		STA	frame_render_count_350

loc_12F775:				
		LDA	frame_render_count_350
		BNE	loc_12F775
		RTS
; End of function wait_for_count350_zero_12F770


; =============== S U B	R O U T	I N E =======================================


sub_12F77B:				
					; sub_12F698+33p ...
		LDY	#0

loc_12F77D:				
		LDX	#0

loc_12F77F:				
		LDA	input_reg1_347
		CMP	#0
		BNE	locret_12F78C
		INX
		BNE	loc_12F77F
		INY
		BNE	loc_12F77D

locret_12F78C:				
		RTS
; End of function sub_12F77B


; =============== S U B	R O U T	I N E =======================================


wait_for_a_pressed_12F78D:		
		LDA	input_pressed_34A
		CMP	#a_80
		BNE	wait_for_a_pressed_12F78D
		RTS
; End of function wait_for_a_pressed_12F78D


; =============== S U B	R O U T	I N E =======================================


wait_for_b_pressed_12F795:		
					; sub_12E5E6+3Ep ...
		LDA	input_pressed_34A
		CMP	#b_40
		BNE	wait_for_b_pressed_12F795
		RTS
; End of function wait_for_b_pressed_12F795


; =============== S U B	R O U T	I N E =======================================


wait_for_any_input_12F79D:		
					; wait_for_any_input_12F79D+5j
		LDA	input_pressed_34A
		CMP	#0
		BEQ	wait_for_any_input_12F79D
		RTS
; End of function wait_for_any_input_12F79D


; =============== S U B	R O U T	I N E =======================================


unused_12F7A5:				
		PHA
		JSR	unused_12F7B0
		PLA
		SEC
		SBC	#1
		BNE	unused_12F7A5
		RTS
; End of function unused_12F7A5


; =============== S U B	R O U T	I N E =======================================


unused_12F7B0:				
		PHA
		TXA
		PHA
		TYA
		PHA
		LDX	#0

loc_12F7B7:				
		LDY	#0

loc_12F7B9:				
		DEY
		BNE	loc_12F7B9
		DEX
		BNE	loc_12F7B7
		PLA
		TAY
		PLA
		TAX
		PLA
		RTS
; End of function unused_12F7B0


; =============== S U B	R O U T	I N E =======================================


nmi_sub_12F7C5:				
		LDA	#$F0 
		STA	byte_218
		STA	byte_21C
		STA	byte_220
		STA	byte_224
		STA	byte_2E8
		STA	byte_2EC
		RTS
; End of function nmi_sub_12F7C5


; =============== S U B	R O U T	I N E =======================================


nmi_sub_12F7DA:				
		LDA	byte_43E
		BEQ	loc_12F801
		LDA	byte_203
		BNE	loc_12F7EC
		LDA	#0
		STA	byte_43E
		JMP	locret_12F822
; ---------------------------------------------------------------------------

loc_12F7EC:				
		LDA	byte_203
		SEC
		SBC	#8
		STA	byte_203
		LDA	byte_207
		SEC
		SBC	#8
		STA	byte_207
		JMP	locret_12F822
; ---------------------------------------------------------------------------

loc_12F801:				
		LDA	byte_203
		CMP	#$F8 
		BNE	loc_12F810
		LDA	#1
		STA	byte_43E
		JMP	locret_12F822
; ---------------------------------------------------------------------------

loc_12F810:				
		LDA	byte_203
		CLC
		ADC	#8
		STA	byte_203
		LDA	byte_207
		CLC
		ADC	#8
		STA	byte_207

locret_12F822:				
					; nmi_sub_12F7DA+24j ...
		RTS
; End of function nmi_sub_12F7DA


; =============== S U B	R O U T	I N E =======================================


NMI_12F823:				
		PHP
		PHA
		TXA
		PHA
		TYA
		PHA
		LDA	bank_switch_flag_6C
		CMP	#$88 
		BEQ	loc_12F832
		JMP	loc_12F863
; ---------------------------------------------------------------------------

loc_12F832:				
		LDA	#$EE 
		STA	bank_switch_flag_6C
		LDA	sprite_type_306
		BNE	loc_12F83E
		JSR	nmi_sub_12F7C5

loc_12F83E:				
		LDA	#2
		STA	_PPU_OAM_DMA
		JSR	nmi_sub_12F89B
		JSR	nmi_sub_12F8F0
		JSR	nmi_sub_12F909
		LDA	sprite_type_306
		CMP	#1
		BNE	loc_12F859
		JSR	nmi_sub_12F7DA
		JSR	nmi_sub_12F9A6

loc_12F859:				
		JSR	nmi_sub_12F96C
		JSR	apu_music_update_12F9FE
		LDA	#$88 
		STA	bank_switch_flag_6C

loc_12F863:				
		LDA	byte_432
		BEQ	loc_12F86B
		DEC	byte_432

loc_12F86B:				
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
		BEQ	loc_12F894
		DEC	frame_render_count_350

loc_12F894:				
		PLA
		TAY
		PLA
		TAX
		PLA
		PLP

locret_12F89A:				
		RTI
; End of function NMI_12F823


; =============== S U B	R O U T	I N E =======================================


nmi_sub_12F89B:				
		LDA	has_ppu_data_to_upload_6F
		BNE	loc_12F8A0
		RTS
; ---------------------------------------------------------------------------

loc_12F8A0:				
		LDA	ppu_data_70
		BEQ	loc_12F8EB
		STA	ppu_fld0_x_6D
		LDX	#1

loc_12F8A8:				
		LDA	ppu_data_70,X
		AND	#$80 
		BEQ	loc_12F8BC
		LDA	ppu_ctrl_31F
		ORA	#4
		STA	ppu_ctrl_31F
		STA	_PPU_CTRL
		JMP	loc_12F8C7
; ---------------------------------------------------------------------------

loc_12F8BC:				
		LDA	ppu_ctrl_31F
		AND	#$FB 
		STA	ppu_ctrl_31F
		STA	_PPU_CTRL

loc_12F8C7:				
		LDA	ppu_data_70,X
		AND	#$7F 
		STA	ppu_fld1_y_6E
		INX
		LDA	ppu_data_70,X
		STA	_PPU_ADDR
		INX
		LDA	ppu_data_70,X
		STA	_PPU_ADDR

loc_12F8D9:				
		INX
		LDA	ppu_data_70,X
		STA	_PPU_DATA
		DEC	ppu_fld1_y_6E
		BNE	loc_12F8D9
		DEC	ppu_fld0_x_6D
		BEQ	loc_12F8EB
		INX
		JMP	loc_12F8A8
; ---------------------------------------------------------------------------

loc_12F8EB:				
					; nmi_sub_12F89B+4Aj
		LDA	#0
		STA	has_ppu_data_to_upload_6F
		RTS
; End of function nmi_sub_12F89B


; =============== S U B	R O U T	I N E =======================================


nmi_sub_12F8F0:				
		LDA	ppu_ctrl_31F
		STA	_PPU_CTRL
		LDA	ppu_mask_320
		STA	_PPU_MASK
		LDA	ppu_scroll_x_304
		STA	_PPU_SCROLL
		LDA	ppu_scroll_y_305
		STA	_PPU_SCROLL
		RTS
; End of function nmi_sub_12F8F0


; =============== S U B	R O U T	I N E =======================================


nmi_sub_12F909:				
		TYA
		PHA
		TYA
		PHA
		JSR	pad_input_update_12F921
		JSR	input_func_12F941
		LDA	input_pressed_34A
		ORA	input_unk_34B
		STA	input_unk_349
		PLA
		TAX
		PLA
		TAY
		RTS
; End of function nmi_sub_12F909


; =============== S U B	R O U T	I N E =======================================


pad_input_update_12F921:		
		LDX	#1
		STX	_PAD0_REG
		DEX
		STX	_PAD0_REG
		LDA	#0
		LDY	#8

loc_12F92E:				
		PHA
		LDA	_PAD0_REG,X
		STA	input_reg0_34E
		LSR	input_reg0_34E
		PLA
		ROL	A
		DEY
		BNE	loc_12F92E
		STA	input_reg1_347,X
		RTS
; End of function pad_input_update_12F921


; =============== S U B	R O U T	I N E =======================================


input_func_12F941:			
		LDX	#0
		LDA	input_reg1_347,X
		EOR	input_unk_34C,X
		AND	input_reg1_347,X
		STA	input_pressed_34A,X
		LDA	input_reg1_347,X
		STA	input_unk_34C,X
		RTS
; End of function input_func_12F941


; =============== S U B	R O U T	I N E =======================================


ppu_update_ctrl_mask_12F956:		
					; sub_12D21B+2Fp
		LDA	ppu_ctrl_31F
		STA	_PPU_CTRL
		LDA	ppu_mask_320
		STA	_PPU_MASK
		RTS
; End of function ppu_update_ctrl_mask_12F956


; =============== S U B	R O U T	I N E =======================================


ppu_reset_ctrl_mask_12F963:		
					; sub_12D21B+3p
		LDA	#0
		STA	_PPU_CTRL
		STA	_PPU_MASK
		RTS
; End of function ppu_reset_ctrl_mask_12F963


; =============== S U B	R O U T	I N E =======================================


nmi_sub_12F96C:				
		INC	byte_353
		LDA	byte_353
		CMP	#$19
		BCS	loc_12F977
		RTS
; ---------------------------------------------------------------------------

loc_12F977:				
		LDA	#0
		STA	byte_353
		LDA	byte_354
		CMP	#0
		BNE	loc_12F9A2
		LDA	byte_355
		CMP	#0
		BNE	loc_12F99A
		LDA	byte_356
		CMP	#0
		BNE	loc_12F992
		RTS
; ---------------------------------------------------------------------------

loc_12F992:				
		DEC	byte_356
		LDA	#$A
		STA	byte_355

loc_12F99A:				
		DEC	byte_355
		LDA	#$A
		STA	byte_354

loc_12F9A2:				
		DEC	byte_354
		RTS
; End of function nmi_sub_12F96C


; =============== S U B	R O U T	I N E =======================================


nmi_sub_12F9A6:				
		INC	scroll_offset_x_479
		LDA	scroll_offset_x_479
		CMP	#$A
		BCC	locret_12F9FD
		LDA	scroll_offset_y_47A
		EOR	#$80 
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		AND	#$FE 
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		AND	#$7F 
		CMP	#0
		BEQ	locret_12F9FD
		LDA	scroll_offset_y_47A
		PHA
		LDA	scroll_offset_y_47A
		AND	#$80 
		CMP	#0
		BEQ	loc_12F9DE
		LDA	#0
		STA	ppu_scroll_y_305
		JMP	loc_12F9F0
; ---------------------------------------------------------------------------

loc_12F9DE:				
		LDA	scroll_offset_y_47A
		AND	#$7F 
		STA	scroll_offset_y_47A
		LDA	ppu_scroll_y_305
		CLC
		ADC	scroll_offset_y_47A
		STA	ppu_scroll_y_305

loc_12F9F0:				
		PLA
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		SEC
		SBC	#2
		STA	scroll_offset_y_47A

locret_12F9FD:				
					; nmi_sub_12F9A6+21j
		RTS
; End of function nmi_sub_12F9A6


; =============== S U B	R O U T	I N E =======================================


apu_music_update_12F9FE:		
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
		JSR	bank_switch_128000
		PLA
		STA	bank_from_343
		PLA
		STA	bank_to_344
		PLA
		STA	bank_command_346
		RTS
; End of function apu_music_update_12F9FE

; ---------------------------------------------------------------------------
		.BYTE $C3,$74,$14,$8B,$46, $C,$FF,$46, $C,$8B,$F8,$FF,$46,$10,$26,$8A
		.BYTE	4,$88,$85,$81,$5C,$EB,$D4,$8A,$46,$14,$30,$E4,$C4,$76,$10,$26
		.BYTE $8A,$1C,$30,$FF,$3B,$D8,$75,  3,$FF,$46,$10,$A0,$C6,  0,$30,$E4
		.BYTE $8B,$76, $C,$8A,$9C,$80,$5C,$30,$FF,$3B,$D8,$89,$46,  4,$74,$16
		.BYTE $C4,$7E,$1C,$26,$8A,$1D,$30,$FF,$3B,$D8,$74, $A,$A0,$C6,	0,$88
		.BYTE $84,$81,$5C,$FF,$46, $C,$8B,$76, $C,$C6,$84,$81,$5C,  0,$FF,$76
		.BYTE $1E,$FF,$76,$1C,$1E,$B8,$81,$5C,$50,$9A,$41,  3,$FA, $B,$8B,$E5
		.BYTE $B8,  4,	0,$50,$1E,$B8,$81,$5C,$50,$9A,	3,  0,$97,$1F,$8B,$E5
		.BYTE $89,$46, $E,$E9,$47,$FF,$FF,$76,$1E,$FF,$76,$1C,$1E,$B8,$81,$5C
		.BYTE $50,$9A,$7B,  3,$FA, $B,$8B,$E5,$8B,$46, $E,$83,$C4,$16,$5D,$CB
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	3,  0,$4C,$43
		.BYTE $20,$33,$2E,$30,$30,  0,	7, $A,$ED,$30,$B0,  7,	0,  8,$C0,$EC
		.BYTE	0,  0,$EA, $B,	0,  0,$21,$22,	0,  0,$6D,$31,	0,  0,$3E,$5F
		.BYTE $30,  0,	0,  0,$57,$53,$70,$62,	1,  0,$C0,$EC,	0,  0,$D8,  7
		.BYTE $ED,$30,$B0,  7,$ED,$30,	4,  0,	9,  0,$ED,  7,$ED,$30,	0,  0
		.BYTE $D8, $B,$E2,  0,	6,  1,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	1,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0
aInvalidStackSizeInsu_0:.BYTE 'Invalid stack size',$D,$A
		.BYTE '$Insufficient memory',$D,$A
		.BYTE '$',$A
		.BYTE '2500 A.D. Linker  Copyright (C) 1985  -  Version 4.01f',$A
		.BYTE $A,0
		.BYTE $18
aFListingDestinationN_0:.BYTE 'F',$5C,'Listing Destination  (N, T, D, E, L, P, <CR> = N) : ',0
aErrorOnlyListingDest_0:.BYTE 'Error Only Listing Destination  (T, D, P, <CR> = T) : ',0
aListOnOffListingDest_1:.BYTE 'LIST ON/OFF Listing Destination  (T, D, P, <CR> = T) : ',0
		.BYTE  $A
		.BYTE  $A
aEnterRunTimeSelectio_1:.BYTE 'Enter Run Time Selection : ',0
		.BYTE  $A
		.BYTE	0
aAssemblyTerminatedBy_1:.BYTE 'Assembly Terminated By Operator',$A
		.BYTE $A,0
aCanTCreateDiskListin_1:.BYTE 'Can',$27,'t Create Disk Listing File',$A,0
		.BYTE  $A
aActiveCommands_1:.BYTE	'                         ***** Active Commands *****',$A
		.BYTE $A,0
aCtrlSStopOutput_1:.BYTE '                           Ctrl S = Stop Output',$A,0
aCtrlQStartOutput_1:.BYTE '                           Ctrl Q = Start Output',$A,0
aEscCStopAssembly_1:.BYTE '                           Esc  C = Stop Assembly',$A,0
aEscTTerminalOutput_1:.BYTE '                           Esc  T = Terminal Output',$A,0
aEscPPrinterOutput_1:.BYTE '                           Esc  P = Printer Output',$A,0
aEscDDiskOutput_1:.BYTE	'                           Esc  D = Disk Output',$A,0
aEscMMultipleOutput_1:.BYTE '                           Esc  M = Multiple Output',$A,0
aEscNNoOutput_1:.BYTE '                           Esc  N = No Output',$A
		.BYTE $A,0
aRenameFileError_1:.BYTE 'Rename File Error',$A,0
aPage4u_1:	.BYTE 'Page %4u',0
aLib_1:		.BYTE 'LIB',0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE	0
aC_1:		.BYTE '%c',0
		.BYTE  $A
aMaximumNumberOfDiffe_1:.BYTE 'Maximum Number of Different Sections (%d) Exceeded.  Link Term'
		.BYTE 'inated.',$A
		.BYTE $A,0
aS_1:		.BYTE '%s',0
		.BYTE	0
aDiskListingFilename_1:.BYTE 'Disk Listing  Filename : ',0
aSymbolTableFilename_1:.BYTE 'Symbol Table  Filename : ',0
aFormat_1:	.BYTE 'Format   : ',0
aLinkerOutputFilename_1:.BYTE 'Linker Output Filename : ',0
aMicrotek_1:	.BYTE 'Microtek',0
aZax_1:		.BYTE 'Zax',0
aAbbreviated2500A_d__1:.BYTE 'Abbreviated 2500 A.D.',0
a2500A_d__2:	.BYTE '2500 A.D.',0
aNoneSpecified_1:.BYTE '<None Specified>',0
		.BYTE  $A
aLinkErrors_2:	.BYTE '         Link Errors :  ',0
aOutputFormat_2:.BYTE '         Output Format :  ',0
aExecutable_1:	.BYTE 'Executable',0
aIntelHex_1:	.BYTE 'Intel Hex',0
aExtendedIntelHex_1:.BYTE 'Extended Intel Hex',0
aTektronixHex_1:.BYTE 'Tektronix Hex',0
aMotorolaS1_1:	.BYTE 'Motorola S1',0
		.BYTE	0
aMotorolaS_1:	.BYTE 'Motorola S'
		.WORD NMI_12F823
		.WORD bank_switch_128000
		.WORD locret_12F89A
; end of 'BANK_12'

; ===========================================================================