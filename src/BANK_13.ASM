; Segment type:Pure code
	;.segment BANK_13 (Code + Sprites)
	;* =  $8000

	.include "includes/ram.inc"
	.include "includes/macros.inc"

; =============== S U B	R O U T	I N E =======================================


bank_switch_8000:
	.include "common/bank_switch_func.asm"

switch_case_8035:
	LDA	bank_command_346
	if_equal #$88, loc_13809B
	LDA	bank_to_344

loc_13803F:
	STA	bank_prev_345
	set bank_switch_flag_6C, #$88 
	LDA	bank_command_346
	if_equal #0, loc_138066
	if_equal #1, loc_13806C
	if_equal #2, loc_138072
	if_equal #3, loc_138078
	if_equal #4, loc_13807E
	CMP	#5

loc_13805F:
	BEQ	loc_138084
	if_equal #6, loc_13808A
	RTS
; ---------------------------------------------------------------------------

loc_138066:
	JSR	load_spr_palette_13DF18
	JMP	loc_13808D
; ---------------------------------------------------------------------------

loc_13806C:
	JSR	copy_boss_spr_to_ppu_13DF67
	JMP	loc_13808D
; ---------------------------------------------------------------------------

loc_138072:
	JSR	load_sprite_map_13E038
	JMP	loc_13808D
; ---------------------------------------------------------------------------

loc_138078:
	JSR	load_sprite_func_13DFA8
	JMP	loc_13808D
; ---------------------------------------------------------------------------

loc_13807E:
	JSR	music_func_13C028
	JMP	loc_13808D
; ---------------------------------------------------------------------------

loc_138084:
	JSR	music_func_13D484
	JMP	loc_13808D
; ---------------------------------------------------------------------------

loc_13808A:
	JMP	loc_13808D
; ---------------------------------------------------------------------------

loc_13808D:

	set bank_command_346, #$FF
	set bank_to_344, bank_from_343
	JMP	bank_switch_8000
; ---------------------------------------------------------------------------

loc_13809B:
	JSR	music_update_state_13DC1E
	set bank_to_344, bank_prev_345
	set bank_command_346, #$FF
	JMP	bank_switch_8000
; End of function bank_switch_8000

; ---------------------------------------------------------------------------
Palette_1380AC:
	.include "sprites/bank_13_palettes.asm"
	
SpriteMaps_138454:
	.include "sprites/bank_13_tilemaps.asm"

BossImages_129826:
	.include "sprites/bank_13_sprites.asm"

; =============== S U B	R O U T	I N E =======================================


music_func_13C028:
	LDA	tilemapTypeUnk_30B
	if_greater #$47, loc_13C032
	BEQ	loc_13C032
	RTS
; ---------------------------------------------------------------------------

loc_13C032:
	LDX	#$F
	STX	_APU_STATUS
	PHA
	TAY
	if_greater #$40, loc_13C040
	SEC
	SBC	#$40 

loc_13C040:
	mult_a_by_4
	TAX
	LDA	byte_13C081,Y
	LDA	byte_13C0C9,Y
	TAY
	PLA
	if_lower #$40, loc_13C068
	set {_APU_PULSE1_ENV,Y}, {pulse_entries_13C111,X}
	set {_APU_PULSE1_SWEEP,Y}, {pulse_entries_13C111+1,X}
	set {_APU_PULSE1_TIME,Y}, {pulse_entries_13C111+2,X}
	set {_APU_PULSE1_LEN,Y}, {pulse_entries_13C111+3,X}
	RTS
; ---------------------------------------------------------------------------

loc_13C068:
	set {_APU_PULSE1_ENV,Y}, {stru_13C211,X}
	set {_APU_PULSE1_SWEEP,Y}, {stru_13C211+1,X}
	set {_APU_PULSE1_TIME,Y}, {stru_13C211+2,X}
	set {_APU_PULSE1_LEN,Y}, {stru_13C211+3,X}
	RTS
; End of function music_func_13C028

; ---------------------------------------------------------------------------
	.include "music\\bank_13_apu.asm"
; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR music_func_13D484

loc_13D425:
	LDX	#0
	LDA	#0

loc_13D429:
	STA	apu_unk_741,X
	INX
	CPX	#$27 
	BCC	loc_13D429
	LDA	apu_unk_76C
	mult_a_by_2
	TAX
	set apu_unk_76A, {apu_off_13DEB0,X}
	set apu_unk_76B, {apu_off_13DEB0+1,X}
	set apu_unk_FE, {apu_off_13DEA2,X}
	set apu_unk_FF, {apu_off_13DEA2+1,X}
	LDY	#0
	STY	apu_unk_76D
	set_iny apu_unk_737, {(apu_unk_FE),Y}
	LDX	#0

loc_13D459:
	LDA	apu_dat_13D421,X
	AND	apu_unk_737
	BEQ	loc_13D46D
	set_iny {apu_unk_739,X}, {(apu_unk_FE),Y}
	set_iny {apu_unk_73D,X}, {(apu_unk_FE),Y}

loc_13D46D:
	INX
	CPX	#4
	BCC	loc_13D459
	LDX	#0
	JSR	apu_func_13D575
	INX
	JSR	apu_func_13D575
	INX
	JSR	apu_func_13D575
	INX
	JSR	apu_func_13D575
	RTS
; END OF FUNCTION CHUNK	FOR music_func_13D484

; =============== S U B	R O U T	I N E =======================================


music_func_13D484:

; FUNCTION CHUNK AT D425 SIZE 0000005F BYTES

	LDA	apu_unk_76D
	BNE	loc_13D425
	LDX	#0
	set apu_unk_737, #0
	STA	apu_unk_704

loc_13D493:
	STA	apu_unk_710,X
	INX
	CPX	#$27 
	BCC	loc_13D493
	LDA	apu_unk_76C
	mult_a_by_2
	TAX
	set apu_ptr_768, {apu_off_13DEB0,X}
	set apu_ptr_769, {apu_off_13DEB0+1,X}
	set apu_unk_FE, {apu_off_13DEA2,X}
	set apu_unk_FF, {apu_off_13DEA2+1,X}
	LDY	#0
	set_iny apu_unk_706, {(apu_unk_FE),Y}
	LDX	#0

loc_13D4C0:
	LDA	apu_dat_13D421,X
	AND	apu_unk_706
	BEQ	loc_13D4D4
	set_iny {apu_unk_708,X}, {(apu_unk_FE),Y}
	set_iny {apu_unk_70C,X}, {(apu_unk_FE),Y}

loc_13D4D4:
	INX
	CPX	#4
	BCC	loc_13D4C0
	set apu_unk_700, #$FF
	STA	apu_unk_701
	STA	apu_unk_702
	STA	apu_unk_703
	LDX	#0
	JSR	music_func_13D804
	INX
	JSR	music_func_13D804
	INX
	JSR	music_func_13D804
	INX
	JSR	music_func_13D804
	RTS
; End of function music_func_13D484


; =============== S U B	R O U T	I N E =======================================


apu_update_13D4F9:
	LDA	apu_unk_737
	BEQ	locret_13D533
	JSR	apu_update_pulse1_13DA5B
	JSR	apu_func_13D534
	LDA	apu_unk_738
	CLC
	ADC	apu_unk_741
	TAX
	INC	apu_unk_742
	LDA	apu_unk_742
	if_greater {apu_dat_13DC5C,X}, locret_13D533
	set apu_unk_742, #0
	INC	apu_unk_741
	LDA	apu_unk_741
	AND	#3
	STA	apu_unk_741
	DEC	apu_unk_758
	DEC	apu_unk_759
	DEC	apu_unk_75A
	DEC	apu_unk_75B

locret_13D533:

	RTS
; End of function apu_update_13D4F9


; =============== S U B	R O U T	I N E =======================================


apu_func_13D534:
	LDX	apu_unk_742
	CPX	#4
	BCS	locret_13D55B
	LDA	apu_unk_738
	CLC
	ADC	apu_unk_741
	TAY
	LDA	apu_dat_13DC5C,Y
	if_greater #2, loc_13D565
	BEQ	loc_13D55C
	if_not_equal #3, apu_func_13D575
	JSR	apu_func_13D575
	CPX	#2
	BNE	locret_13D55B
	INX
	JSR	apu_func_13D575

locret_13D55B:

	RTS
; ---------------------------------------------------------------------------

loc_13D55C:
	JSR	apu_func_13D575
	INX
	INX
	JSR	apu_func_13D575
	RTS
; ---------------------------------------------------------------------------

loc_13D565:
	JSR	apu_func_13D575
	INX
	JSR	apu_func_13D575
	INX
	JSR	apu_func_13D575
	INX
	JSR	apu_func_13D575
	RTS
; End of function apu_func_13D534


; =============== S U B	R O U T	I N E =======================================


apu_func_13D575:

	LDA	apu_unk_758,X
	BNE	locret_13D55B
	LDA	apu_dat_13D421,X
	AND	apu_unk_737
	BEQ	locret_13D55B
	LDA	apu_dat_13D421,X
	AND	apu_unk_743
	BEQ	loc_13D58D
	JMP	loc_13D662
; ---------------------------------------------------------------------------

loc_13D58D:
	set apu_unk_FE, {apu_unk_739,X}
	set apu_unk_FF, {apu_unk_73D,X}
	LDY	apu_unk_75C,X

loc_13D59A:

	LDA	(apu_unk_FE),Y
	if_greater #$FC, loc_13D5F5
	BEQ	loc_13D60D
	if_greater #$FE, loc_13D5AB
	BNE	loc_13D5AE
	JMP	loc_13D657
; ---------------------------------------------------------------------------

loc_13D5AB:
	JMP	loc_13D62A
; ---------------------------------------------------------------------------

loc_13D5AE:
	CPX	#2
	BCC	loc_13D5C2
	BNE	loc_13D5BA
	INY
	set tri_count_746, {(apu_unk_FE),Y}

loc_13D5BA:

	INY
	TYA
	STA	apu_unk_75C,X
	JMP	loc_13D59A
; ---------------------------------------------------------------------------

loc_13D5C2:
	INY
	set {apu_pulse1_env_744,X}, {(apu_unk_FE),Y}
	AND	#$10
	BEQ	loc_13D5D4
	LDA	apu_pulse1_env_744,X
	ORA	#$F
	STA	apu_pulse1_env_744,X

loc_13D5D4:
	INY
	set_iny {apu_unk_748,X}, {(apu_unk_FE),Y}
	set_iny {apu_unk_74A,X}, {(apu_unk_FE),Y}
	set_iny {apu_unk_74C,X}, {(apu_unk_FE),Y}
	set_iny {apu_unk_74E,X}, {(apu_unk_FE),Y}
	set {apu_unk_750,X}, {(apu_unk_FE),Y}
	JMP	loc_13D5BA
; ---------------------------------------------------------------------------

loc_13D5F5:
	STA	apu_unk_760,X
	INY
	TYA
	STA	apu_unk_75C,X
	LDA	apu_dat_13D421,X
	ORA	apu_unk_743
	STA	apu_unk_743
	set {apu_unk_764,X}, #0
	BEQ	loc_13D662

loc_13D60D:
	INY
	LDA	(apu_unk_FE),Y
	BEQ	loc_13D621
	LDA	apu_dat_13D421,X
	EOR	#$FF
	AND	apu_unk_737
	STA	apu_unk_737
	STA	_APU_STATUS
	RTS
; ---------------------------------------------------------------------------

loc_13D621:
	set {apu_unk_75C,X}, #0
	TAY
	JMP	loc_13D59A
; ---------------------------------------------------------------------------

loc_13D62A:
	INY
	CPX	#2
	BCC	loc_13D63E
	BEQ	loc_13D636
	set apu_unk_747, {(apu_unk_FE),Y}

loc_13D636:

	INY
	TYA
	STA	apu_unk_75C,X
	JMP	loc_13D59A
; ---------------------------------------------------------------------------

loc_13D63E:
	set apu_unk_705, {(apu_unk_FE),Y}
	set {apu_unk_752,X}, #4
	LDA	apu_pulse1_env_744,X
	AND	#$F0 
	ORA	apu_unk_705
	ORA	#$10
	STA	apu_pulse1_env_744,X
	BNE	loc_13D636

loc_13D657:
	INY
	LDA	(apu_unk_FE),Y
	AND	#$FC 
	STA	apu_unk_738
	JMP	loc_13D636
; ---------------------------------------------------------------------------

loc_13D662:

	CPX	#2
	BCS	loc_13D67C
	LDA	apu_pulse1_env_744,X
	AND	#$10
	BEQ	loc_13D674
	set {apu_unk_752,X}, #4
	BNE	loc_13D67C

loc_13D674:
	set {apu_unk_752,X}, #0
	JSR	music_func_13DB65

loc_13D67C:

	set apu_unk_FE, apu_unk_76A
	set apu_unk_FF, apu_unk_76B
	LDA	apu_unk_760,X
	mult_a_by_2
	TAY
	BCC	loc_13D68F
	INC	apu_unk_FF

loc_13D68F:
	LDA	(apu_unk_FE),Y
	PHA
	INY
	set apu_unk_FF, {(apu_unk_FE),Y}
	from_stack apu_unk_FE
	LDY	apu_unk_764,X
	LDA	(apu_unk_FE),Y
	EOR	#$E
	STA	apu_unk_758,X
	INY
	LDA	(apu_unk_FE),Y
	EOR	#$AA 
	STA	apu_unk_705
	INY
	TYA
	STA	apu_unk_764,X
	LDA	(apu_unk_FE),Y
	BNE	loc_13D6C0
	LDA	apu_dat_13D421,X
	EOR	#$FF
	AND	apu_unk_743
	STA	apu_unk_743

loc_13D6C0:
	LDA	apu_dat_13D421,X
	AND	apu_unk_704
	BNE	locret_13D6F0
	LDA	apu_dat_13D421,X
	ORA	_APU_STATUS
	STA	_APU_STATUS
	CPX	#1
	BCC	loc_13D707
	BEQ	loc_13D747
	CPX	#3
	BCS	loc_13D6DE
	JMP	loc_13D788
; ---------------------------------------------------------------------------

loc_13D6DE:
	LDY	apu_unk_705
	BNE	loc_13D6F1
	set _APU_NOISE_ENV, #$10
	LDA	_APU_STATUS
	AND	#$F7 
	STA	_APU_STATUS

locret_13D6F0:
	RTS
; ---------------------------------------------------------------------------

loc_13D6F1:
	set _APU_NOISE_ENV, {noise_env_13C231,Y}
	TYA
	mult_a_by_2
	TAY
	set _APU_NOISE_LOOP, {noise_loop_13C286,Y}
	set _APU_NOISE_LEN, {noise_len_13C287,Y}
	RTS
; ---------------------------------------------------------------------------

loc_13D707:
	LDA	apu_unk_705
	if_lower #$D, loc_13D729
	mult_a_by_4
	TAY
	set _APU_PULSE1_ENV, {pulse_env_13DDEC,Y}
	set ptr_1, {pulse_sweep_13DDED,Y}
	set _APU_PULSE1_TIME, {pulse_time_13DDEE,Y}
	set _APU_PULSE1_LEN, {pulse_len_13DDEF,Y}
	RTS
; ---------------------------------------------------------------------------

loc_13D729:
	SBC	#$D
	TAY
	set _APU_PULSE1_ENV, apu_pulse1_env_744
	set _APU_PULSE1_SWEEP, apu_unk_748
	set _APU_PULSE1_TIME, {pulse1_time_13DD5C,Y}
	LDA	pulse1_len_13DDA4,Y
	ORA	#8
	STA	_APU_PULSE1_LEN
	RTS
; ---------------------------------------------------------------------------

loc_13D747:
	LDA	apu_unk_705
	if_lower #$D, loc_13D76A
	mult_a_by_4
	TAY
	set _APU_PULSE2_ENV, {pulse2_env_13DE20,Y}
	set _APU_PULSE2_SWEEP, {pulse2_sweep_13DE21,Y}
	set _APU_PULSE2_TIME, {pulse2_time_13DE22,Y}
	set _APU_PULSE2_LEN, {pulse2_len_13DE23,Y}
	RTS
; ---------------------------------------------------------------------------

loc_13D76A:
	SBC	#$D
	TAY
	set _APU_PULSE2_ENV, apu_unk_745
	set _APU_PULSE2_SWEEP, apu_unk_749
	set _APU_PULSE2_TIME, {pulse1_time_13DD5C,Y}
	LDA	pulse1_len_13DDA4,Y
	ORA	#8
	STA	_APU_PULSE2_LEN
	RTS
; ---------------------------------------------------------------------------

loc_13D788:
	LDA	apu_unk_705
	if_lower #$D, loc_13D7AB
	mult_a_by_4
	TAY
	set _APU_TRI_COUNT, {tri_count_13DE54,Y}
	set _APU_TRI_UNUSED, {tri_unused_13DE55,Y}
	set _APU_TRI_TIME, {tri_time_13DE56,Y}
	set _APU_TRI_LEN, {tri_len_13DE57,Y}
	RTS
; ---------------------------------------------------------------------------

loc_13D7AB:
	SBC	#$D
	TAY
	set _APU_TRI_COUNT, tri_count_746
	set _APU_TRI_TIME, {pulse1_time_13DD5C,Y}
	LDA	pulse1_len_13DDA4,Y
	ORA	#8
	STA	_APU_TRI_LEN
	RTS
; End of function apu_func_13D575


; =============== S U B	R O U T	I N E =======================================


music_func_13D7C3:
	LDX	apu_unk_711
	CPX	#4
	BCS	locret_13D7EA
	LDA	apu_unk_707
	CLC
	ADC	apu_unk_710
	TAY
	LDA	apu_dat_13DC5C,Y
	if_greater #2, loc_13D7F4
	BEQ	loc_13D7EB
	if_not_equal #3, music_func_13D804
	JSR	music_func_13D804
	CPX	#2
	BNE	locret_13D7EA
	INX
	JSR	music_func_13D804

locret_13D7EA:

	RTS
; ---------------------------------------------------------------------------

loc_13D7EB:
	JSR	music_func_13D804
	INX
	INX
	JSR	music_func_13D804
	RTS
; ---------------------------------------------------------------------------

loc_13D7F4:
	JSR	music_func_13D804
	INX
	JSR	music_func_13D804
	INX
	JSR	music_func_13D804
	INX
	JSR	music_func_13D804
	RTS
; End of function music_func_13D7C3


; =============== S U B	R O U T	I N E =======================================


music_func_13D804:

	LDA	apu_unk_727,X
	BNE	locret_13D7EA
	LDA	apu_dat_13D421,X
	AND	apu_unk_706
	BEQ	locret_13D7EA
	LDA	apu_dat_13D421,X
	AND	apu_unk_712
	BEQ	loc_13D81C
	JMP	loc_13D8F1
; ---------------------------------------------------------------------------

loc_13D81C:
	set apu_unk_FE, {apu_unk_708,X}
	set apu_unk_FF, {apu_unk_70C,X}
	LDY	apu_unk_72B,X

loc_13D829:

	LDA	(apu_unk_FE),Y
	if_greater #$FC, loc_13D884
	BEQ	loc_13D89C
	if_greater #$FE, loc_13D83A
	BNE	loc_13D83D
	JMP	loc_13D8E6
; ---------------------------------------------------------------------------

loc_13D83A:
	JMP	loc_13D8B9
; ---------------------------------------------------------------------------

loc_13D83D:
	CPX	#2
	BCC	loc_13D851
	BNE	loc_13D849
	INY
	set apu_unk_715, {(apu_unk_FE),Y}

loc_13D849:

	INY
	TYA
	STA	apu_unk_72B,X
	JMP	loc_13D829
; ---------------------------------------------------------------------------

loc_13D851:
	INY
	set {pulse1_env_713,X}, {(apu_unk_FE),Y}
	AND	#$10
	BEQ	loc_13D863
	LDA	pulse1_env_713,X
	ORA	#$F
	STA	pulse1_env_713,X

loc_13D863:
	INY
	set_iny {pulse1_sweep_717,X}, {(apu_unk_FE),Y}
	set_iny {apu_unk_719,X}, {(apu_unk_FE),Y}
	set_iny {apu_unk_71B,X}, {(apu_unk_FE),Y}
	set_iny {apu_unk_71D,X}, {(apu_unk_FE),Y}
	set {apu_unk_71F,X}, {(apu_unk_FE),Y}
	JMP	loc_13D849
; ---------------------------------------------------------------------------

loc_13D884:
	STA	apu_unk_72F,X
	INY
	TYA
	STA	apu_unk_72B,X
	LDA	apu_dat_13D421,X
	ORA	apu_unk_712
	STA	apu_unk_712
	set {apu_unk_733,X}, #0
	BEQ	loc_13D8F1

loc_13D89C:
	INY
	LDA	(apu_unk_FE),Y
	BEQ	loc_13D8B0
	LDA	apu_dat_13D421,X
	EOR	#$FF
	AND	apu_unk_706
	STA	apu_unk_706
	STA	_APU_STATUS
	RTS
; ---------------------------------------------------------------------------

loc_13D8B0:
	set {apu_unk_72B,X}, #0
	TAY
	JMP	loc_13D829
; ---------------------------------------------------------------------------

loc_13D8B9:
	INY
	CPX	#2
	BCC	loc_13D8CD
	BEQ	loc_13D8C5
	set apu_unk_716, {(apu_unk_FE),Y}

loc_13D8C5:

	INY
	TYA
	STA	apu_unk_72B,X
	JMP	loc_13D829
; ---------------------------------------------------------------------------

loc_13D8CD:
	set apu_unk_705, {(apu_unk_FE),Y}
	set {apu_unk_721,X}, #4
	LDA	pulse1_env_713,X
	AND	#$F0 
	ORA	apu_unk_705
	ORA	#$10
	STA	pulse1_env_713,X
	BNE	loc_13D8C5

loc_13D8E6:
	INY
	LDA	(apu_unk_FE),Y
	AND	#$FC 
	STA	apu_unk_707
	JMP	loc_13D8C5
; ---------------------------------------------------------------------------

loc_13D8F1:

	CPX	#2
	BCS	loc_13D90B
	LDA	pulse1_env_713,X
	AND	#$10
	BEQ	loc_13D903
	set {apu_unk_721,X}, #4
	BNE	loc_13D90B

loc_13D903:
	set {apu_unk_721,X}, #0
	JSR	music_func_13DB8A

loc_13D90B:

	set apu_unk_FE, apu_ptr_768
	set apu_unk_FF, apu_ptr_769
	LDA	apu_unk_72F,X
	mult_a_by_2
	TAY
	BCC	loc_13D91E
	INC	apu_unk_FF

loc_13D91E:
	LDA	(apu_unk_FE),Y
	PHA
	INY
	set apu_unk_FF, {(apu_unk_FE),Y}
	from_stack apu_unk_FE
	LDY	apu_unk_733,X
	LDA	(apu_unk_FE),Y
	EOR	#$E
	STA	apu_unk_727,X
	INY
	LDA	(apu_unk_FE),Y
	EOR	#$AA 
	STA	apu_unk_705
	INY
	TYA
	STA	apu_unk_733,X
	LDA	(apu_unk_FE),Y
	BNE	loc_13D94F
	LDA	apu_dat_13D421,X
	EOR	#$FF
	AND	apu_unk_712
	STA	apu_unk_712

loc_13D94F:
	LDA	apu_dat_13D421,X
	AND	apu_unk_704
	BNE	locret_13D987
	LDA	apu_dat_13D421,X
	AND	apu_unk_737
	BNE	locret_13D987
	LDA	apu_dat_13D421,X
	ORA	_APU_STATUS
	STA	_APU_STATUS
	CPX	#1
	BCC	apu_update_pulse1_13D99E
	BEQ	apu_update_pulse2_13D9DF
	CPX	#3
	BCS	loc_13D975
	JMP	apu_update_triangle_13DA20
; ---------------------------------------------------------------------------

loc_13D975:
	LDY	apu_unk_705
	BNE	apu_update_noise_13D988
	set _APU_NOISE_ENV, #$10
	LDA	_APU_STATUS
	AND	#$F7 
	STA	_APU_STATUS

locret_13D987:

	RTS
; ---------------------------------------------------------------------------

apu_update_noise_13D988:
	set _APU_NOISE_ENV, {noise_env_13C231,Y}
	TYA
	mult_a_by_2
	TAY
	set _APU_NOISE_LOOP, {noise_loop_13C286,Y}
	set _APU_NOISE_LEN, {noise_len_13C287,Y}
	RTS
; ---------------------------------------------------------------------------

apu_update_pulse1_13D99E:
	LDA	apu_unk_705
	if_lower #$D, apu_update_pulse1_13D9C1
	mult_a_by_4
	TAY
	set _APU_PULSE1_ENV, {pulse_env_13DDEC,Y}
	set _APU_PULSE1_SWEEP, {pulse_sweep_13DDED,Y}
	set _APU_PULSE1_TIME, {pulse_time_13DDEE,Y}
	set _APU_PULSE1_LEN, {pulse_len_13DDEF,Y}
	RTS
; ---------------------------------------------------------------------------

apu_update_pulse1_13D9C1:
	SBC	#$D
	TAY
	set _APU_PULSE1_ENV, pulse1_env_713
	set _APU_PULSE1_SWEEP, pulse1_sweep_717
	set _APU_PULSE1_TIME, {pulse1_time_13DD5C,Y}
	LDA	pulse1_len_13DDA4,Y
	ORA	#8
	STA	_APU_PULSE1_LEN
	RTS
; ---------------------------------------------------------------------------

apu_update_pulse2_13D9DF:
	LDA	apu_unk_705
	if_lower #$D, apu_update_pulse2_13DA02
	mult_a_by_4
	TAY
	set _APU_PULSE2_ENV, {pulse2_env_13DE20,Y}
	set _APU_PULSE2_SWEEP, {pulse2_sweep_13DE21,Y}
	set _APU_PULSE2_TIME, {pulse2_time_13DE22,Y}
	set _APU_PULSE2_LEN, {pulse2_len_13DE23,Y}
	RTS
; ---------------------------------------------------------------------------

apu_update_pulse2_13DA02:
	SBC	#$D
	TAY
	set _APU_PULSE2_ENV, apu_pulse2_env_714
	set _APU_PULSE2_SWEEP, apu_pulse2_sweep_718
	set _APU_PULSE2_TIME, {pulse1_time_13DD5C,Y}
	LDA	pulse1_len_13DDA4,Y
	ORA	#8
	STA	_APU_PULSE2_LEN
	RTS
; ---------------------------------------------------------------------------

apu_update_triangle_13DA20:
	LDA	apu_unk_705
	if_lower #$D, loc_13DA43
	mult_a_by_4
	TAY
	set _APU_TRI_COUNT, {tri_count_13DE54,Y}
	set _APU_TRI_UNUSED, {tri_unused_13DE55,Y}
	set _APU_TRI_TIME, {tri_time_13DE56,Y}
	set _APU_TRI_LEN, {tri_len_13DE57,Y}
	RTS
; ---------------------------------------------------------------------------

loc_13DA43:
	SBC	#$D
	TAY
	set _APU_TRI_COUNT, apu_unk_715
	set _APU_TRI_TIME, {pulse1_time_13DD5C,Y}
	LDA	pulse1_len_13DDA4,Y
	ORA	#8
	STA	_APU_TRI_LEN
	RTS
; End of function music_func_13D804


; =============== S U B	R O U T	I N E =======================================


apu_update_pulse1_13DA5B:
	LDX	#0
	JSR	apu_update_pulse1_13DA62
	LDX	#1
; End of function apu_update_pulse1_13DA5B


; =============== S U B	R O U T	I N E =======================================


apu_update_pulse1_13DA62:
	LDA	apu_dat_13D421,X
	AND	apu_unk_737
	BEQ	locret_13DADB
	LDA	apu_unk_758,X
	BEQ	locret_13DADB
	LDA	apu_pulse1_env_744,X
	AND	#$10
	BNE	locret_13DADB
	LDA	apu_unk_752,X
	BEQ	loc_13DA99
	if_lower #4, locret_13DADB
	LDA	apu_pulse1_env_744,X
	AND	#$F
	SEC
	SBC	apu_unk_754,X
	STA	apu_unk_705
	BCS	loc_13DAB3
	set apu_unk_705, #0
	set {apu_unk_752,X}, #4
	BNE	loc_13DAB3

loc_13DA99:
	LDA	apu_pulse1_env_744,X
	AND	#$F
	CLC
	ADC	apu_unk_754,X
	STA	apu_unk_705
	if_greater #$F, loc_13DAB3
	set apu_unk_705, #$F
	set {apu_unk_756,X}, #1

loc_13DAB3:

	LDA	apu_pulse1_env_744,X
	AND	#$F0 
	ORA	apu_unk_705
	STA	apu_pulse1_env_744,X
	DEC	apu_unk_756,X
	BNE	locret_13DADB
	INC	apu_unk_752,X
	JSR	music_func_13DB65
	LDA	apu_dat_13D421,X
	AND	apu_unk_704
	BNE	locret_13DADB
	TXA
	mult_a_by_4
	TAY
	set {_APU_PULSE1_ENV,Y}, {apu_pulse1_env_744,X}

locret_13DADB:

	RTS
; End of function apu_update_pulse1_13DA62


; =============== S U B	R O U T	I N E =======================================


music_func_13DADC:
	LDX	#0
	JSR	music_func_13DAE3
	LDX	#1
; End of function music_func_13DADC


; =============== S U B	R O U T	I N E =======================================


music_func_13DAE3:
	LDA	apu_dat_13D421,X
	AND	apu_unk_706
	BEQ	locret_13DB64
	LDA	apu_unk_727,X
	BEQ	locret_13DB64
	LDA	pulse1_env_713,X
	AND	#$10
	BNE	locret_13DB64
	LDA	apu_unk_721,X
	BEQ	loc_13DB1A
	if_lower #4, locret_13DB64
	LDA	pulse1_env_713,X
	AND	#$F
	SEC
	SBC	apu_unk_723,X
	STA	apu_unk_705
	BCS	loc_13DB34
	set apu_unk_705, #0
	set {apu_unk_721,X}, #4
	BNE	loc_13DB34

loc_13DB1A:
	LDA	pulse1_env_713,X
	AND	#$F
	CLC
	ADC	apu_unk_723,X
	STA	apu_unk_705
	if_greater #$F, loc_13DB34
	set apu_unk_705, #$F
	set {apu_unk_725,X}, #1

loc_13DB34:

	LDA	pulse1_env_713,X
	AND	#$F0 
	ORA	apu_unk_705
	STA	pulse1_env_713,X
	DEC	apu_unk_725,X
	BNE	locret_13DB64
	INC	apu_unk_721,X
	JSR	music_func_13DB8A
	LDA	apu_dat_13D421,X
	AND	apu_unk_704
	BNE	locret_13DB64
	LDA	apu_dat_13D421,X
	AND	apu_unk_737
	BNE	locret_13DB64
	TXA
	mult_a_by_4
	TAY
	set {_APU_PULSE1_ENV,Y}, {pulse1_env_713,X}

locret_13DB64:

	RTS
; End of function music_func_13DAE3


; =============== S U B	R O U T	I N E =======================================


music_func_13DB65:

	LDA	apu_unk_752,X
	if_lower #4, locret_13DB89
	mult_a_by_2
	TAY
	LDA	apu_unk_74A,Y
	AND	#$F
	BNE	loc_13DB7A
	INC	apu_unk_752,X
	BNE	music_func_13DB65

loc_13DB7A:
	STA	apu_unk_756,X
	LDA	apu_unk_74A,Y
	AND	#$F0 
	LSR	A
	LSR	A
	LSR	A
	LSR	A
	STA	apu_unk_754,X

locret_13DB89:
	RTS
; End of function music_func_13DB65


; =============== S U B	R O U T	I N E =======================================


music_func_13DB8A:

	LDA	apu_unk_721,X
	if_lower #4, locret_13DBAE
	mult_a_by_2
	TAY
	LDA	apu_unk_719,Y
	AND	#$F
	BNE	loc_13DB9F
	INC	apu_unk_721,X
	BNE	music_func_13DB8A

loc_13DB9F:
	STA	apu_unk_725,X
	LDA	apu_unk_719,Y
	AND	#$F0 
	LSR	A
	LSR	A
	LSR	A
	LSR	A
	STA	apu_unk_723,X

locret_13DBAE:
	RTS
; End of function music_func_13DB8A


; =============== S U B	R O U T	I N E =======================================


apu_func_13DBAF:
	LDX	#0

loc_13DBB1:
	LDA	apu_unk_700,X
	BMI	loc_13DBFD
	mult_a_by_4
	TAY
	set {apu_unk_700,X}, #$FF
	LDA	apu_dat_13D421,X
	ORA	_APU_STATUS
	STA	_APU_STATUS
	LDA	apu_dat_13D421,X
	ORA	apu_unk_704
	STA	apu_unk_704
	TXA
	PHA
	mult_a_by_2
	TAX
	set apu_unk_FE, {apu_data_13DEBE,X}
	set apu_unk_FF, {apu_data_13DEBE+1,X}
	TXA
	mult_a_by_2
	TAX
	set_iny {_APU_PULSE1_ENV,X}, {(apu_unk_FE),Y}
	set_iny {_APU_PULSE1_SWEEP,X}, {(apu_unk_FE),Y}
	set_iny {_APU_PULSE1_TIME,X}, {(apu_unk_FE),Y}
	set {_APU_PULSE1_LEN,X}, {(apu_unk_FE),Y}
	from_stack_to_x
	JMP	loc_13DC18
; ---------------------------------------------------------------------------

loc_13DBFD:
	LDA	apu_dat_13D421,X
	AND	apu_unk_704
	BEQ	loc_13DC18
	LDA	apu_dat_13D421,X
	AND	_APU_STATUS
	BNE	loc_13DC18
	LDA	apu_dat_13D421,X
	EOR	#$FF
	AND	apu_unk_704
	STA	apu_unk_704

loc_13DC18:

	INX
	CPX	#4
	BCC	loc_13DBB1
	RTS
; End of function apu_func_13DBAF


; =============== S U B	R O U T	I N E =======================================


music_update_state_13DC1E:
	JSR	apu_update_13D4F9
	LDA	apu_unk_706
	BEQ	locret_13DC5B
	JSR	music_func_13DADC
	JSR	music_func_13D7C3
	LDA	apu_unk_707
	CLC
	ADC	apu_unk_710
	TAX
	INC	apu_unk_711
	LDA	apu_unk_711
	if_greater {apu_dat_13DC5C,X}, locret_13DC5B
	set apu_unk_711, #0
	INC	apu_unk_710
	LDA	apu_unk_710
	AND	#3
	STA	apu_unk_710
	DEC	apu_unk_727
	DEC	apu_unk_728
	DEC	apu_unk_729
	DEC	apu_unk_72A

locret_13DC5B:

	RTS
; End of function music_update_state_13DC1E

; ---------------------------------------------------------------------------
apu_dat_13DC5C:.BYTE $78,$78,$78,$78,$70,$71,$70,$71,$38,$38,$39,$38,$25,$26,$25,$26
	

	.BYTE $16,$17,$16,$17,$12,$13,$12,$13,$10,$10,$10,$10, $E, $E, $E, $E
	.BYTE  $C, $D, $C, $D, $B, $B, $C, $B, $A, $A, $A, $B,	9,  9, $A,  9
	.BYTE	8,  9,	8,  9,	8,  8,	8,  8,	7,  8,	7,  8,	7,  7,	7,  7
	.BYTE	6,  7,	6,  7,	6,  6,	7,  6,	6,  6,	6,  6,	5,  6,	5,  6
	.BYTE	5,  5,	6,  5,	5,  5,	5,  5,	4,  5,	5,  5,	4,  5,	4,  5
	.BYTE	4,  5,	4,  5,	4,  4,	5,  4,	4,  4,	4,  4,	4,  4,	4,  4
	.BYTE	3,  4,	4,  4,	3,  4,	4,  4,	3,  4,	3,  4,	3,  4,	3,  4
	.BYTE	3,  3,	4,  3,	3,  3,	3,  4,	3,  3,	3,  3,	3,  3,	3,  3
	.BYTE	3,  3,	3,  3,	2,  3,	3,  3,	2,  3,	3,  3,	2,  3,	3,  3
	.BYTE	2,  3,	2,  3,	2,  3,	2,  3,	2,  3,	2,  3,	2,  3,	2,  3
	.BYTE	2,  2,	2,  3,	2,  2,	2,  3,	2,  2,	2,  3,	2,  2,	2,  2
	.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  1
	.BYTE	2,  2,	2,  1,	2,  2,	2,  1,	2,  1,	2,  1,	2,  1,	2,  1
	.BYTE	2,  1,	2,  1,	2,  1,	2,  1,	1,  1,	1,  2,	1,  1,	1,  2
	.BYTE	1,  1,	1,  2,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
pulse1_time_13DD5C:.BYTE $B0,$50,$F4,$A0,$50,  0,$B8,$78,$38,$F8,$C0,$88,$58,$28,$FA,$D0
	

	.BYTE $A8,$80,$5C,$3C,$1C,$FC,$E0,$C4,$AC,$94,$7D,$68,$54,$40,$2E,$1E
	.BYTE  $E,$FE,$F0,$E2,$D6,$CA,$BE,$B4,$AA,$A0,$97,$8F,$87,$7F,$78,$71
	.BYTE $6B,$65,$5F,$5A,$55,$50,$4B,$47,$43,$3F,$3C,$38,$35,$32,$2F,$2D
	.BYTE $2A,$28,$25,$23,$21,$1F,$1E,$1C
pulse1_len_13DDA4:.BYTE	  6,  6,  5,  5,  5,  5,  4,  4,  4,  3,  3,  3,  3,  3,  2,  2
	

	.BYTE	2,  2,	2,  2,	2,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
	.BYTE	1,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
	.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
	.BYTE	0,  0,	0,  0,	0,  0,	0,  0
pulse_env_13DDEC:.BYTE	 0	

pulse_sweep_13DDED:.BYTE   0	

pulse_time_13DDEE:.BYTE	  0	

pulse_len_13DDEF:.BYTE	 0,$8F,$85,$77,$43,$8F,$84,$17,$FB,$8F,$87,$2D,	 9,$8F,$8B,$20
	

	.BYTE $70,$8F,$84,$11,$48,$8F,$82,$11,$48,$8F,$82, $E,$48,$8F,$8A, $E
	.BYTE $29,$8F,$8B,$89,$4D,$8F,$8B,$A7,$61,$8F,$8D,$6E,$A9,$8F,$8D,$6E
	.BYTE $A9
pulse2_env_13DE20:.BYTE	  0	

pulse2_sweep_13DE21:.BYTE   0	

pulse2_time_13DE22:.BYTE   0	

pulse2_len_13DE23:.BYTE	  0,$8F,$87,$AD,$4C,$8F,$87,$61,$38,$8F,$8B,$31,$4A,$8F,$8B,$31
	

	.BYTE $48,$8F,$8B,$86,$70,$8F,$8A, $E,$2A,$8F,$82, $E,$48,$8F,$8B,$89
	.BYTE $AD,$8F,$8C,$6E,$AE,$8F,$8C,$9A,$A9,$8F,$8E,$A9,$A8,$8F,$8E,$A9
	.BYTE $A8
tri_count_13DE54:.BYTE	 0	

tri_unused_13DE55:.BYTE	  0	

tri_time_13DE56:.BYTE	0	

tri_len_13DE57:.BYTE	0,$42,	0,$41,$29,$7F,	0,$FB,$18,$7F,	0,$68,$28,$7F,	0,$7E
	

	.BYTE $48,$7F,	0,$FB,$48,$42,	0,$41,$48,$7F,	0,$12,$28,$7F,	0,$27
	.BYTE $28,$42,	0,$41,$4A,$7F,	0, $A,$28,$7F,	0, $F,$28,$7F,	0,  7
	.BYTE $28,$A9,	0,$8D,$6C,  7,$A9,  0,$8D,$6D,	7,$20,$84,$D4,$A9,  0
	.BYTE $8D,$6C,	7,$A9,	1,$8D,$6D,  7,$20,$84,$D4
apu_off_13DEA2:.WORD byte_13C548	

	.WORD byte_13C7D9
	.WORD byte_13CAC8
	.WORD byte_13CCAB
	.WORD byte_13CE5D
	.WORD byte_13D08E
	.WORD byte_13D399
apu_off_13DEB0:.WORD off_13C330	

	.WORD off_13C599
	.WORD off_13C848
	.WORD off_13CB07
	.WORD byte_13CCED
	.WORD off_13CE9D
	.WORD off_13D0E6
apu_data_13DEBE:.WORD byte_13DEC6	

	.WORD byte_13DF0A
	.WORD byte_13DF0F
	.WORD byte_13DF14
byte_13DEC6:.BYTE $1F,$89,$EF,  8,$1F,$81,$EF,  8,$1F,$96,$EF,  8,$1F,$89,$EF,  8
	
	.BYTE $1F,$8B,$EF,  8,$1F,$FA,$EF,  8,$FF,$FF,$FF,$FF,$AF,$C0,$EF,  8
	.BYTE $2F,$BF,$EF,  8,$2F,$CF,$EF,  8,$2F,$DF,$EF,  8,$1F,$EF,$EF,  8
	.BYTE $3F,$BF,$EF,  8,$AF,$F4,$EF,  8,$AF,$F5,$EF,  8,$AF,$F6,$EF,  8
	.BYTE $AF,$F7,$EF,  8
byte_13DF0A:.BYTE	0,$1F,$89,$EF,	8 
byte_13DF0F:.BYTE	0,$1F,$89,$EF,	8 
byte_13DF14:.BYTE $4B,$8C,$CD,$30	

; =============== S U B	R O U T	I N E =======================================


load_spr_palette_13DF18:
	
	set_ptr Palette_1380AC

	set data_2, #0
	LDA	inv_sprite_idx_31C
	mult_a_by_2
	ROL	data_2
	CLC
	ADC	ptr_0
	STA	ptr_0
	add_to_byte ptr_1, data_2

	LDY	#0
	set_iny data_2, {(ptr_0),Y}
	set data_3, {(ptr_0),Y}

	set_ptr _PPU_PALETTE

	LDA	sprPalIdx_319
	mult_a_by_4
	TAX
	CLC
	ADC	ptr_0
	STA	ptr_0
	add_to_byte ptr_1, #0

	LDY	#0

loc_13DF5B:
	set_inx {palette_bg_321,X}, {(data_2),Y}
	INY
	CPY	#4
	BCC	loc_13DF5B
	RTS
; End of function load_spr_palette_13DF18


; =============== S U B	R O U T	I N E =======================================


copy_boss_spr_to_ppu_13DF67:
	JSR	load_boss_sprite_13DFDC

loc_13DF6A:
	set _PPU_ADDR, ptr_1
	set _PPU_ADDR, ptr_0
	LDY	#0

loc_13DF76:
	set_iny _PPU_DATA, {(data_2),Y}
	CPY	#$10
	BCC	loc_13DF76

	add_to_data $10

	add_to_byte_clc ptr_0, #$10
	add_to_byte ptr_1, #0


	DEC	inv_spr_dscr1_30C
	LDA	inv_spr_dscr1_30C
	if_equal #0, locret_13DFA7
	JMP	loc_13DF6A
; ---------------------------------------------------------------------------

locret_13DFA7:
	RTS
; End of function copy_boss_spr_to_ppu_13DF67


; =============== S U B	R O U T	I N E =======================================


load_sprite_func_13DFA8:
	JSR	load_boss_sprite_13DFDC

loc_13DFAB:
	LDA	inv_spr_dscr1_30C
	if_greater #4, loc_13DFC2
	BEQ	loc_13DFC2
	SEC
	SBC	#4
	STA	inv_spr_dscr1_30C
	set tilemapTypeUnk_30B, #$40 
	JMP	loc_13DFD1
; ---------------------------------------------------------------------------

loc_13DFC2:

	LDA	inv_spr_dscr1_30C
	mult_a_by_16
	STA	tilemapTypeUnk_30B
	set inv_spr_dscr1_30C, #0

loc_13DFD1:
	JSR	sprites_func_13E178
	LDA	inv_spr_dscr1_30C
	if_not_equal #0, loc_13DFAB
	RTS
; End of function load_sprite_func_13DFA8


; =============== S U B	R O U T	I N E =======================================


load_boss_sprite_13DFDC:
	
	set_ptr BossImages_129826

	set data_2, #0
	LDA	inv_sprite_idx_31C
	mult_a_by_2
	ROL	data_2
	CLC
	ADC	ptr_0
	STA	ptr_0
	add_to_byte ptr_1, data_2

	LDY	#0
	set_iny data_2, {(ptr_0),Y}
	set data_3, {(ptr_0),Y}
	LDY	#0
	set inv_spr_dscr1_30C, {(data_2),Y}

	add_to_data $2

	set ptr_0, byte_31E
	set ptr_1, #0
	ASL	ptr_0
	ROL	ptr_1
	ASL	ptr_0
	ROL	ptr_1
	ASL	ptr_0
	ROL	ptr_1
	ASL	ptr_0
	ROL	ptr_1
	LDA	ptr_1
	ORA	#$10
	STA	ptr_1
	RTS
; End of function load_boss_sprite_13DFDC


; =============== S U B	R O U T	I N E =======================================


load_sprite_map_13E038:

	set_ptr SpriteMaps_138454

	set data_2, #0
	LDA	inv_sprite_idx_31C
	mult_a_by_2
	ROL	data_2
	CLC
	ADC	ptr_0
	STA	ptr_0
	add_to_byte ptr_1, data_2

	LDY	#0
	set_iny data_2, {(ptr_0),Y}
	set data_3, {(ptr_0),Y}
	set ptr_0, #0
	LDA	inv_itemPrev_idx_31D
	mult_a_by_2
	ROL	ptr_0
	CLC
	ADC	data_2
	STA	data_2
	add_to_byte data_3, ptr_0

	LDY	#0
	set_iny ptr_0, {(data_2),Y}
	set ptr_1, {(data_2),Y}
	LDY	#0
	set_iny tilemapWidth_308, {(ptr_0),Y}
	set tilemapHeight_30A, {(ptr_0),Y}

	add_to_byte_clc ptr_0, #2
	add_to_byte ptr_1, #0


	set data_2, #0
	set data_3, #$20 
	LDA	byte_36E
	mult_a_by_4
	CLC
	ADC	data_3
	STA	data_3
	LDY	ppu_unk_byte_309

loc_13E0AF:
	CPY	#0
	BEQ	loc_13E0C4

	add_to_data $20

	DEY
	JMP	loc_13E0AF
; ---------------------------------------------------------------------------

loc_13E0C4:
	add_to_byte_clc data_2, tilemap_size_307
	add_to_byte data_3, #0

	set inv_spr_dscr1_30C, #0
	STA	ppu_unk_byte_309
	LDA	#$32 

loc_13E0DC:
	if_greater tilemapWidth_308, loc_13E0EB
	SEC
	SBC	tilemapWidth_308
	INC	inv_spr_dscr1_30C
	JMP	loc_13E0DC
; ---------------------------------------------------------------------------

loc_13E0EB:
	LDA	tilemapHeight_30A

loc_13E0EE:
	if_greater inv_spr_dscr1_30C, loc_13E100
	SEC
	SBC	inv_spr_dscr1_30C
	STA	tilemapHeight_30A
	INC	ppu_unk_byte_309
	JMP	loc_13E0EE
; ---------------------------------------------------------------------------

loc_13E100:

	LDA	ppu_unk_byte_309
	BEQ	loc_13E110
	JSR	sprites_func_13E11C
	DEC	ppu_unk_byte_309
	LDA	ppu_unk_byte_309
	BNE	loc_13E100

loc_13E110:
	LDA	tilemapHeight_30A
	BEQ	locret_13E11B
	STA	inv_spr_dscr1_30C
	JSR	sprites_func_13E11C

locret_13E11B:
	RTS
; End of function load_sprite_map_13E038


; =============== S U B	R O U T	I N E =======================================


sprites_func_13E11C:

	set tilemapTypeUnk_30B, #0
	set has_ppu_data_to_upload_6F, #0
	LDX	#0
	set_inx {ppu_data_70,X}, inv_spr_dscr1_30C

loc_13E12D:
	set_inx {ppu_data_70,X}, tilemapWidth_308
	set_inx {ppu_data_70,X}, data_3
	set_inx {ppu_data_70,X}, data_2
	LDY	#0

loc_13E13F:
	LDA	(ptr_0),Y
	CLC
	ADC	byte_31E
	STA	ppu_data_70,X
	INX
	INY
	CPY	tilemapWidth_308
	BCC	loc_13E13F

	add_to_data $20

	add_to_byte_clc ptr_0, tilemapWidth_308
	add_to_byte ptr_1, #0


	INC	tilemapTypeUnk_30B
	LDA	tilemapTypeUnk_30B
	if_greater inv_spr_dscr1_30C, loc_13E12D
	JSR	wait_for_ppu_data_upload_FC8C
	RTS
; End of function sprites_func_13E11C


; =============== S U B	R O U T	I N E =======================================


sprites_func_13E178:
	set has_ppu_data_to_upload_6F, #0
	LDX	#0
	set_inx {ppu_data_70,X}, #1
	set_inx {ppu_data_70,X}, tilemapTypeUnk_30B
	set_inx {ppu_data_70,X}, ptr_1
	set_inx {ppu_data_70,X}, ptr_0
	LDY	#0

loc_13E195:
	set_inx {ppu_data_70,X}, {(data_2),Y}
	INY
	CPY	tilemapTypeUnk_30B
	BCC	loc_13E195
	add_to_byte_clc data_2, tilemapTypeUnk_30B
	add_to_byte data_3, #0


	add_to_byte_clc ptr_0, tilemapTypeUnk_30B
	add_to_byte ptr_1, #0

	
	JSR	wait_for_ppu_data_upload_FC8C
	RTS
; End of function sprites_func_13E178


Common_Code_13:
	.include "common/common_funcs.asm"

; ---------------------------------------------------------------------------
	.include "garbage/bank_13_garbage.asm"

Vectors_13:
	.WORD NMI_FD53
	.WORD Palette_1380AC
	.WORD return_FDCA
; end of 'BANK_13'