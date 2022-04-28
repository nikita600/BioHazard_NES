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
	CMP	#$88 
	BEQ	loc_13809B
	LDA	bank_to_344

loc_13803F:
	STA	bank_prev_345
	LDA	#$88 
	STA	bank_switch_flag_6C
	LDA	bank_command_346
	CMP	#0
	BEQ	loc_138066
	CMP	#1
	BEQ	loc_13806C
	CMP	#2
	BEQ	loc_138072
	CMP	#3
	BEQ	loc_138078
	CMP	#4
	BEQ	loc_13807E
	CMP	#5

loc_13805F:
	BEQ	loc_138084
	CMP	#6
	BEQ	loc_13808A
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
	; bank_switch_8000+6Fj ...
	LDA	#$FF
	STA	bank_command_346
	LDA	bank_from_343
	STA	bank_to_344
	JMP	bank_switch_8000
; ---------------------------------------------------------------------------

loc_13809B:
	JSR	music_update_state_13DC1E
	LDA	bank_prev_345
	STA	bank_to_344
	LDA	#$FF
	STA	bank_command_346
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
	CMP	#$47 
	BCC	loc_13C032
	BEQ	loc_13C032
	RTS
; ---------------------------------------------------------------------------

loc_13C032:
	LDX	#$F
	STX	_APU_STATUS
	PHA
	TAY
	CMP	#$40 
	BCC	loc_13C040
	SEC
	SBC	#$40 

loc_13C040:
	ASL	A
	ASL	A
	TAX
	LDA	byte_13C081,Y
	LDA	byte_13C0C9,Y
	TAY
	PLA
	CMP	#$40 
	BCS	loc_13C068
	LDA	pulse_entries_13C111,X
	STA	_APU_PULSE1_ENV,Y
	LDA	pulse_entries_13C111+1,X
	STA	_APU_PULSE1_SWEEP,Y
	LDA	pulse_entries_13C111+2,X
	STA	_APU_PULSE1_TIME,Y
	LDA	pulse_entries_13C111+3,X
	STA	_APU_PULSE1_LEN,Y
	RTS
; ---------------------------------------------------------------------------

loc_13C068:
	LDA	stru_13C211,X
	STA	_APU_PULSE1_ENV,Y
	LDA	stru_13C211+1,X
	STA	_APU_PULSE1_SWEEP,Y
	LDA	stru_13C211+2,X
	STA	_APU_PULSE1_TIME,Y
	LDA	stru_13C211+3,X
	STA	_APU_PULSE1_LEN,Y
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
	ASL	A
	TAX
	LDA	apu_off_13DEB0,X
	STA	apu_unk_76A
	LDA	apu_off_13DEB0+1,X
	STA	apu_unk_76B
	LDA	apu_off_13DEA2,X
	STA	apu_unk_FE
	LDA	apu_off_13DEA2+1,X
	STA	apu_unk_FF
	LDY	#0
	STY	apu_unk_76D
	LDA	(apu_unk_FE),Y
	STA	apu_unk_737
	INY
	LDX	#0

loc_13D459:
	LDA	apu_dat_13D421,X
	AND	apu_unk_737
	BEQ	loc_13D46D
	LDA	(apu_unk_FE),Y
	STA	apu_unk_739,X
	INY
	LDA	(apu_unk_FE),Y
	STA	apu_unk_73D,X
	INY

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
	LDA	#0
	STA	apu_unk_737
	STA	apu_unk_704

loc_13D493:
	STA	apu_unk_710,X
	INX
	CPX	#$27 
	BCC	loc_13D493
	LDA	apu_unk_76C
	ASL	A
	TAX
	LDA	apu_off_13DEB0,X
	STA	apu_ptr_768
	LDA	apu_off_13DEB0+1,X
	STA	apu_ptr_769
	LDA	apu_off_13DEA2,X
	STA	apu_unk_FE
	LDA	apu_off_13DEA2+1,X
	STA	apu_unk_FF
	LDY	#0
	LDA	(apu_unk_FE),Y
	STA	apu_unk_706
	INY
	LDX	#0

loc_13D4C0:
	LDA	apu_dat_13D421,X
	AND	apu_unk_706
	BEQ	loc_13D4D4
	LDA	(apu_unk_FE),Y
	STA	apu_unk_708,X
	INY
	LDA	(apu_unk_FE),Y
	STA	apu_unk_70C,X
	INY

loc_13D4D4:
	INX
	CPX	#4
	BCC	loc_13D4C0
	LDA	#$FF
	STA	apu_unk_700
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
	CMP	apu_dat_13DC5C,X
	BCC	locret_13D533
	LDA	#0
	STA	apu_unk_742
	INC	apu_unk_741
	LDA	apu_unk_741
	AND	#3
	STA	apu_unk_741
	DEC	apu_unk_758
	DEC	apu_unk_759
	DEC	apu_unk_75A
	DEC	apu_unk_75B

locret_13D533:
	; apu_update_13D4F9+1Cj
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
	CMP	#2
	BCC	loc_13D565
	BEQ	loc_13D55C
	CMP	#3
	BNE	apu_func_13D575
	JSR	apu_func_13D575
	CPX	#2
	BNE	locret_13D55B
	INX
	JSR	apu_func_13D575

locret_13D55B:
	; apu_func_13D534+21j ...
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
	; music_func_13D484-Cp	...
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
	LDA	apu_unk_739,X
	STA	apu_unk_FE
	LDA	apu_unk_73D,X
	STA	apu_unk_FF
	LDY	apu_unk_75C,X

loc_13D59A:
	; apu_func_13D575+B2j ...
	LDA	(apu_unk_FE),Y
	CMP	#$FC 
	BCC	loc_13D5F5
	BEQ	loc_13D60D
	CMP	#$FE 
	BCC	loc_13D5AB
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
	LDA	(apu_unk_FE),Y
	STA	tri_count_746

loc_13D5BA:
	; apu_func_13D575+7Dj
	INY
	TYA
	STA	apu_unk_75C,X
	JMP	loc_13D59A
; ---------------------------------------------------------------------------

loc_13D5C2:
	INY
	LDA	(apu_unk_FE),Y
	STA	apu_pulse1_env_744,X
	AND	#$10
	BEQ	loc_13D5D4
	LDA	apu_pulse1_env_744,X
	ORA	#$F
	STA	apu_pulse1_env_744,X

loc_13D5D4:
	INY
	LDA	(apu_unk_FE),Y
	STA	apu_unk_748,X
	INY
	LDA	(apu_unk_FE),Y
	STA	apu_unk_74A,X
	INY
	LDA	(apu_unk_FE),Y
	STA	apu_unk_74C,X
	INY
	LDA	(apu_unk_FE),Y
	STA	apu_unk_74E,X
	INY
	LDA	(apu_unk_FE),Y
	STA	apu_unk_750,X
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
	LDA	#0
	STA	apu_unk_764,X
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
	LDA	#0
	STA	apu_unk_75C,X
	TAY
	JMP	loc_13D59A
; ---------------------------------------------------------------------------

loc_13D62A:
	INY
	CPX	#2
	BCC	loc_13D63E
	BEQ	loc_13D636
	LDA	(apu_unk_FE),Y
	STA	apu_unk_747

loc_13D636:
	; apu_func_13D575+E0j ...
	INY
	TYA
	STA	apu_unk_75C,X
	JMP	loc_13D59A
; ---------------------------------------------------------------------------

loc_13D63E:
	LDA	(apu_unk_FE),Y
	STA	apu_unk_705
	LDA	#4
	STA	apu_unk_752,X
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
	; apu_func_13D575+96j
	CPX	#2
	BCS	loc_13D67C
	LDA	apu_pulse1_env_744,X
	AND	#$10
	BEQ	loc_13D674
	LDA	#4
	STA	apu_unk_752,X
	BNE	loc_13D67C

loc_13D674:
	LDA	#0
	STA	apu_unk_752,X
	JSR	music_func_13DB65

loc_13D67C:
	; apu_func_13D575+FDj
	LDA	apu_unk_76A
	STA	apu_unk_FE
	LDA	apu_unk_76B
	STA	apu_unk_FF
	LDA	apu_unk_760,X
	ASL	A
	TAY
	BCC	loc_13D68F
	INC	apu_unk_FF

loc_13D68F:
	LDA	(apu_unk_FE),Y
	PHA
	INY
	LDA	(apu_unk_FE),Y
	STA	apu_unk_FF
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
	LDA	#$10
	STA	_APU_NOISE_ENV
	LDA	_APU_STATUS
	AND	#$F7 
	STA	_APU_STATUS

locret_13D6F0:
	RTS
; ---------------------------------------------------------------------------

loc_13D6F1:
	LDA	noise_env_13C231,Y
	STA	_APU_NOISE_ENV
	TYA
	ASL	A
	TAY
	LDA	noise_loop_13C286,Y
	STA	_APU_NOISE_LOOP
	LDA	noise_len_13C287,Y
	STA	_APU_NOISE_LEN
	RTS
; ---------------------------------------------------------------------------

loc_13D707:
	LDA	apu_unk_705
	CMP	#$D
	BCS	loc_13D729
	ASL	A
	ASL	A
	TAY
	LDA	pulse_env_13DDEC,Y
	STA	_APU_PULSE1_ENV
	LDA	pulse_sweep_13DDED,Y
	STA	ptr_1
	LDA	pulse_time_13DDEE,Y
	STA	_APU_PULSE1_TIME
	LDA	pulse_len_13DDEF,Y
	STA	_APU_PULSE1_LEN
	RTS
; ---------------------------------------------------------------------------

loc_13D729:
	SBC	#$D
	TAY
	LDA	apu_pulse1_env_744
	STA	_APU_PULSE1_ENV
	LDA	apu_unk_748
	STA	_APU_PULSE1_SWEEP
	LDA	pulse1_time_13DD5C,Y
	STA	_APU_PULSE1_TIME
	LDA	pulse1_len_13DDA4,Y
	ORA	#8
	STA	_APU_PULSE1_LEN
	RTS
; ---------------------------------------------------------------------------

loc_13D747:
	LDA	apu_unk_705
	CMP	#$D
	BCS	loc_13D76A
	ASL	A
	ASL	A
	TAY
	LDA	pulse2_env_13DE20,Y
	STA	_APU_PULSE2_ENV
	LDA	pulse2_sweep_13DE21,Y
	STA	_APU_PULSE2_SWEEP
	LDA	pulse2_time_13DE22,Y
	STA	_APU_PULSE2_TIME
	LDA	pulse2_len_13DE23,Y
	STA	_APU_PULSE2_LEN
	RTS
; ---------------------------------------------------------------------------

loc_13D76A:
	SBC	#$D
	TAY
	LDA	apu_unk_745
	STA	_APU_PULSE2_ENV
	LDA	apu_unk_749
	STA	_APU_PULSE2_SWEEP
	LDA	pulse1_time_13DD5C,Y
	STA	_APU_PULSE2_TIME
	LDA	pulse1_len_13DDA4,Y
	ORA	#8
	STA	_APU_PULSE2_LEN
	RTS
; ---------------------------------------------------------------------------

loc_13D788:
	LDA	apu_unk_705
	CMP	#$D
	BCS	loc_13D7AB
	ASL	A
	ASL	A
	TAY
	LDA	tri_count_13DE54,Y
	STA	_APU_TRI_COUNT
	LDA	tri_unused_13DE55,Y
	STA	_APU_TRI_UNUSED
	LDA	tri_time_13DE56,Y
	STA	_APU_TRI_TIME
	LDA	tri_len_13DE57,Y
	STA	_APU_TRI_LEN
	RTS
; ---------------------------------------------------------------------------

loc_13D7AB:
	SBC	#$D
	TAY
	LDA	tri_count_746
	STA	_APU_TRI_COUNT
	LDA	pulse1_time_13DD5C,Y
	STA	_APU_TRI_TIME
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
	CMP	#2
	BCC	loc_13D7F4
	BEQ	loc_13D7EB
	CMP	#3
	BNE	music_func_13D804
	JSR	music_func_13D804
	CPX	#2
	BNE	locret_13D7EA
	INX
	JSR	music_func_13D804

locret_13D7EA:
	; music_func_13D7C3+21j ...
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
	; music_func_13D484+69p ...
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
	LDA	apu_unk_708,X
	STA	apu_unk_FE
	LDA	apu_unk_70C,X
	STA	apu_unk_FF
	LDY	apu_unk_72B,X

loc_13D829:
	; music_func_13D804+B2j ...
	LDA	(apu_unk_FE),Y
	CMP	#$FC 
	BCC	loc_13D884
	BEQ	loc_13D89C
	CMP	#$FE 
	BCC	loc_13D83A
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
	LDA	(apu_unk_FE),Y
	STA	apu_unk_715

loc_13D849:
	; music_func_13D804+7Dj
	INY
	TYA
	STA	apu_unk_72B,X
	JMP	loc_13D829
; ---------------------------------------------------------------------------

loc_13D851:
	INY
	LDA	(apu_unk_FE),Y
	STA	pulse1_env_713,X
	AND	#$10
	BEQ	loc_13D863
	LDA	pulse1_env_713,X
	ORA	#$F
	STA	pulse1_env_713,X

loc_13D863:
	INY
	LDA	(apu_unk_FE),Y
	STA	pulse1_sweep_717,X
	INY
	LDA	(apu_unk_FE),Y
	STA	apu_unk_719,X
	INY
	LDA	(apu_unk_FE),Y
	STA	apu_unk_71B,X
	INY
	LDA	(apu_unk_FE),Y
	STA	apu_unk_71D,X
	INY
	LDA	(apu_unk_FE),Y
	STA	apu_unk_71F,X
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
	LDA	#0
	STA	apu_unk_733,X
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
	LDA	#0
	STA	apu_unk_72B,X
	TAY
	JMP	loc_13D829
; ---------------------------------------------------------------------------

loc_13D8B9:
	INY
	CPX	#2
	BCC	loc_13D8CD
	BEQ	loc_13D8C5
	LDA	(apu_unk_FE),Y
	STA	apu_unk_716

loc_13D8C5:
	; music_func_13D804+E0j ...
	INY
	TYA
	STA	apu_unk_72B,X
	JMP	loc_13D829
; ---------------------------------------------------------------------------

loc_13D8CD:
	LDA	(apu_unk_FE),Y
	STA	apu_unk_705
	LDA	#4
	STA	apu_unk_721,X
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
	; music_func_13D804+96j
	CPX	#2
	BCS	loc_13D90B
	LDA	pulse1_env_713,X
	AND	#$10
	BEQ	loc_13D903
	LDA	#4
	STA	apu_unk_721,X
	BNE	loc_13D90B

loc_13D903:
	LDA	#0
	STA	apu_unk_721,X
	JSR	music_func_13DB8A

loc_13D90B:
	; music_func_13D804+FDj
	LDA	apu_ptr_768
	STA	apu_unk_FE
	LDA	apu_ptr_769
	STA	apu_unk_FF
	LDA	apu_unk_72F,X
	ASL	A
	TAY
	BCC	loc_13D91E
	INC	apu_unk_FF

loc_13D91E:
	LDA	(apu_unk_FE),Y
	PHA
	INY
	LDA	(apu_unk_FE),Y
	STA	apu_unk_FF
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
	LDA	#$10
	STA	_APU_NOISE_ENV
	LDA	_APU_STATUS
	AND	#$F7 
	STA	_APU_STATUS

locret_13D987:
	; music_func_13D804+159j
	RTS
; ---------------------------------------------------------------------------

apu_update_noise_13D988:
	LDA	noise_env_13C231,Y
	STA	_APU_NOISE_ENV
	TYA
	ASL	A
	TAY
	LDA	noise_loop_13C286,Y
	STA	_APU_NOISE_LOOP
	LDA	noise_len_13C287,Y
	STA	_APU_NOISE_LEN
	RTS
; ---------------------------------------------------------------------------

apu_update_pulse1_13D99E:
	LDA	apu_unk_705
	CMP	#$D
	BCS	apu_update_pulse1_13D9C1
	ASL	A
	ASL	A
	TAY
	LDA	pulse_env_13DDEC,Y
	STA	_APU_PULSE1_ENV
	LDA	pulse_sweep_13DDED,Y
	STA	_APU_PULSE1_SWEEP
	LDA	pulse_time_13DDEE,Y
	STA	_APU_PULSE1_TIME
	LDA	pulse_len_13DDEF,Y
	STA	_APU_PULSE1_LEN
	RTS
; ---------------------------------------------------------------------------

apu_update_pulse1_13D9C1:
	SBC	#$D
	TAY
	LDA	pulse1_env_713
	STA	_APU_PULSE1_ENV
	LDA	pulse1_sweep_717
	STA	_APU_PULSE1_SWEEP
	LDA	pulse1_time_13DD5C,Y
	STA	_APU_PULSE1_TIME
	LDA	pulse1_len_13DDA4,Y
	ORA	#8
	STA	_APU_PULSE1_LEN
	RTS
; ---------------------------------------------------------------------------

apu_update_pulse2_13D9DF:
	LDA	apu_unk_705
	CMP	#$D
	BCS	apu_update_pulse2_13DA02
	ASL	A
	ASL	A
	TAY
	LDA	pulse2_env_13DE20,Y
	STA	_APU_PULSE2_ENV
	LDA	pulse2_sweep_13DE21,Y
	STA	_APU_PULSE2_SWEEP
	LDA	pulse2_time_13DE22,Y
	STA	_APU_PULSE2_TIME
	LDA	pulse2_len_13DE23,Y
	STA	_APU_PULSE2_LEN
	RTS
; ---------------------------------------------------------------------------

apu_update_pulse2_13DA02:
	SBC	#$D
	TAY
	LDA	apu_pulse2_env_714
	STA	_APU_PULSE2_ENV
	LDA	apu_pulse2_sweep_718
	STA	_APU_PULSE2_SWEEP
	LDA	pulse1_time_13DD5C,Y
	STA	_APU_PULSE2_TIME
	LDA	pulse1_len_13DDA4,Y
	ORA	#8
	STA	_APU_PULSE2_LEN
	RTS
; ---------------------------------------------------------------------------

apu_update_triangle_13DA20:
	LDA	apu_unk_705
	CMP	#$D
	BCS	loc_13DA43
	ASL	A
	ASL	A
	TAY
	LDA	tri_count_13DE54,Y
	STA	_APU_TRI_COUNT
	LDA	tri_unused_13DE55,Y
	STA	_APU_TRI_UNUSED
	LDA	tri_time_13DE56,Y
	STA	_APU_TRI_TIME
	LDA	tri_len_13DE57,Y
	STA	_APU_TRI_LEN
	RTS
; ---------------------------------------------------------------------------

loc_13DA43:
	SBC	#$D
	TAY
	LDA	apu_unk_715
	STA	_APU_TRI_COUNT
	LDA	pulse1_time_13DD5C,Y
	STA	_APU_TRI_TIME
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
	CMP	#4
	BCS	locret_13DADB
	LDA	apu_pulse1_env_744,X
	AND	#$F
	SEC
	SBC	apu_unk_754,X
	STA	apu_unk_705
	BCS	loc_13DAB3
	LDA	#0
	STA	apu_unk_705
	LDA	#4
	STA	apu_unk_752,X
	BNE	loc_13DAB3

loc_13DA99:
	LDA	apu_pulse1_env_744,X
	AND	#$F
	CLC
	ADC	apu_unk_754,X
	STA	apu_unk_705
	CMP	#$F
	BCC	loc_13DAB3
	LDA	#$F
	STA	apu_unk_705
	LDA	#1
	STA	apu_unk_756,X

loc_13DAB3:
	; apu_update_pulse1_13DA62+35j	...
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
	ASL	A
	ASL	A
	TAY
	LDA	apu_pulse1_env_744,X
	STA	_APU_PULSE1_ENV,Y

locret_13DADB:
	; apu_update_pulse1_13DA62+Bj ...
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
	CMP	#4
	BCS	locret_13DB64
	LDA	pulse1_env_713,X
	AND	#$F
	SEC
	SBC	apu_unk_723,X
	STA	apu_unk_705
	BCS	loc_13DB34
	LDA	#0
	STA	apu_unk_705
	LDA	#4
	STA	apu_unk_721,X
	BNE	loc_13DB34

loc_13DB1A:
	LDA	pulse1_env_713,X
	AND	#$F
	CLC
	ADC	apu_unk_723,X
	STA	apu_unk_705
	CMP	#$F
	BCC	loc_13DB34
	LDA	#$F
	STA	apu_unk_705
	LDA	#1
	STA	apu_unk_725,X

loc_13DB34:
	; music_func_13DAE3+35j ...
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
	ASL	A
	ASL	A
	TAY
	LDA	pulse1_env_713,X
	STA	_APU_PULSE1_ENV,Y

locret_13DB64:
	; music_func_13DAE3+Bj	...
	RTS
; End of function music_func_13DAE3


; =============== S U B	R O U T	I N E =======================================


music_func_13DB65:
	; apu_update_pulse1_13DA62+64p	...
	LDA	apu_unk_752,X
	CMP	#4
	BCS	locret_13DB89
	ASL	A
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
	; music_func_13DAE3+64p ...
	LDA	apu_unk_721,X
	CMP	#4
	BCS	locret_13DBAE
	ASL	A
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
	ASL	A
	ASL	A
	TAY
	LDA	#$FF
	STA	apu_unk_700,X
	LDA	apu_dat_13D421,X
	ORA	_APU_STATUS
	STA	_APU_STATUS
	LDA	apu_dat_13D421,X
	ORA	apu_unk_704
	STA	apu_unk_704
	TXA
	PHA
	ASL	A
	TAX
	LDA	apu_data_13DEBE,X
	STA	apu_unk_FE
	LDA	apu_data_13DEBE+1,X
	STA	apu_unk_FF
	TXA
	ASL	A
	TAX
	LDA	(apu_unk_FE),Y
	STA	_APU_PULSE1_ENV,X
	INY
	LDA	(apu_unk_FE),Y
	STA	_APU_PULSE1_SWEEP,X
	INY
	LDA	(apu_unk_FE),Y
	STA	_APU_PULSE1_TIME,X
	INY
	LDA	(apu_unk_FE),Y
	STA	_APU_PULSE1_LEN,X
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
	; apu_func_13DBAF+54j ...
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
	CMP	apu_dat_13DC5C,X
	BCC	locret_13DC5B
	LDA	#0
	STA	apu_unk_711
	INC	apu_unk_710
	LDA	apu_unk_710
	AND	#3
	STA	apu_unk_710
	DEC	apu_unk_727
	DEC	apu_unk_728
	DEC	apu_unk_729
	DEC	apu_unk_72A

locret_13DC5B:
	; music_update_state_13DC1E+1Fj
	RTS
; End of function music_update_state_13DC1E

; ---------------------------------------------------------------------------
apu_dat_13DC5C:.BYTE $78,$78,$78,$78,$70,$71,$70,$71,$38,$38,$39,$38,$25,$26,$25,$26
	
	; apu_func_13D534+Fr ...
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
	
	; apu_func_13D575+204r	...
	.BYTE $A8,$80,$5C,$3C,$1C,$FC,$E0,$C4,$AC,$94,$7D,$68,$54,$40,$2E,$1E
	.BYTE  $E,$FE,$F0,$E2,$D6,$CA,$BE,$B4,$AA,$A0,$97,$8F,$87,$7F,$78,$71
	.BYTE $6B,$65,$5F,$5A,$55,$50,$4B,$47,$43,$3F,$3C,$38,$35,$32,$2F,$2D
	.BYTE $2A,$28,$25,$23,$21,$1F,$1E,$1C
pulse1_len_13DDA4:.BYTE	  6,  6,  5,  5,  5,  5,  4,  4,  4,  3,  3,  3,  3,  3,  2,  2
	
	; apu_func_13D575+20Ar	...
	.BYTE	2,  2,	2,  2,	2,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
	.BYTE	1,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
	.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
	.BYTE	0,  0,	0,  0,	0,  0,	0,  0
pulse_env_13DDEC:.BYTE	 0	
	; music_func_13D804+1A4r
pulse_sweep_13DDED:.BYTE   0	
	; music_func_13D804+1AAr
pulse_time_13DDEE:.BYTE	  0	
	; music_func_13D804+1B0r
pulse_len_13DDEF:.BYTE	 0,$8F,$85,$77,$43,$8F,$84,$17,$FB,$8F,$87,$2D,	 9,$8F,$8B,$20
	
	; music_func_13D804+1B6r
	.BYTE $70,$8F,$84,$11,$48,$8F,$82,$11,$48,$8F,$82, $E,$48,$8F,$8A, $E
	.BYTE $29,$8F,$8B,$89,$4D,$8F,$8B,$A7,$61,$8F,$8D,$6E,$A9,$8F,$8D,$6E
	.BYTE $A9
pulse2_env_13DE20:.BYTE	  0	
	; music_func_13D804+1E5r
pulse2_sweep_13DE21:.BYTE   0	
	; music_func_13D804+1EBr
pulse2_time_13DE22:.BYTE   0	
	; music_func_13D804+1F1r
pulse2_len_13DE23:.BYTE	  0,$8F,$87,$AD,$4C,$8F,$87,$61,$38,$8F,$8B,$31,$4A,$8F,$8B,$31
	
	; music_func_13D804+1F7r
	.BYTE $48,$8F,$8B,$86,$70,$8F,$8A, $E,$2A,$8F,$82, $E,$48,$8F,$8B,$89
	.BYTE $AD,$8F,$8C,$6E,$AE,$8F,$8C,$9A,$A9,$8F,$8E,$A9,$A8,$8F,$8E,$A9
	.BYTE $A8
tri_count_13DE54:.BYTE	 0	
	; music_func_13D804+226r
tri_unused_13DE55:.BYTE	  0	
	; music_func_13D804+22Cr
tri_time_13DE56:.BYTE	0	
	; music_func_13D804+232r
tri_len_13DE57:.BYTE	0,$42,	0,$41,$29,$7F,	0,$FB,$18,$7F,	0,$68,$28,$7F,	0,$7E
	
	; music_func_13D804+238r
	.BYTE $48,$7F,	0,$FB,$48,$42,	0,$41,$48,$7F,	0,$12,$28,$7F,	0,$27
	.BYTE $28,$42,	0,$41,$4A,$7F,	0, $A,$28,$7F,	0, $F,$28,$7F,	0,  7
	.BYTE $28,$A9,	0,$8D,$6C,  7,$A9,  0,$8D,$6D,	7,$20,$84,$D4,$A9,  0
	.BYTE $8D,$6C,	7,$A9,	1,$8D,$6D,  7,$20,$84,$D4
apu_off_13DEA2:.WORD byte_13C548	
	; music_func_13D484+28r ...
	.WORD byte_13C7D9
	.WORD byte_13CAC8
	.WORD byte_13CCAB
	.WORD byte_13CE5D
	.WORD byte_13D08E
	.WORD byte_13D399
apu_off_13DEB0:.WORD off_13C330	
	; music_func_13D484+1Cr ...
	.WORD off_13C599
	.WORD off_13C848
	.WORD off_13CB07
	.WORD byte_13CCED
	.WORD off_13CE9D
	.WORD off_13D0E6
apu_data_13DEBE:.WORD byte_13DEC6	
	; apu_func_13DBAF+2Ar
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

	LDA	#0
	STA	data_2
	LDA	inv_sprite_idx_31C
	ASL	A
	ROL	data_2
	CLC
	ADC	ptr_0
	STA	ptr_0
	LDA	ptr_1
	ADC	data_2
	STA	ptr_1
	LDY	#0
	LDA	(ptr_0),Y
	STA	data_2
	INY
	LDA	(ptr_0),Y
	STA	data_3

	set_ptr _PPU_PALETTE

	LDA	sprPalIdx_319
	ASL	A
	ASL	A
	TAX
	CLC
	ADC	ptr_0
	STA	ptr_0
	LDA	ptr_1
	ADC	#0
	STA	ptr_1
	LDY	#0

loc_13DF5B:
	LDA	(data_2),Y
	STA	palette_bg_321,X 
	INX
	INY
	CPY	#4
	BCC	loc_13DF5B
	RTS
; End of function load_spr_palette_13DF18


; =============== S U B	R O U T	I N E =======================================


copy_boss_spr_to_ppu_13DF67:
	JSR	load_boss_sprite_13DFDC

loc_13DF6A:
	LDA	ptr_1
	STA	_PPU_ADDR
	LDA	ptr_0
	STA	_PPU_ADDR
	LDY	#0

loc_13DF76:
	LDA	(data_2),Y
	STA	_PPU_DATA
	INY
	CPY	#$10
	BCC	loc_13DF76

	add_to_data $10

	add_to_byte_clc ptr_0, #$10

	LDA	ptr_1
	ADC	#0
	STA	ptr_1

	DEC	inv_spr_dscr1_30C
	LDA	inv_spr_dscr1_30C
	CMP	#0
	BEQ	locret_13DFA7
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
	CMP	#4
	BCC	loc_13DFC2
	BEQ	loc_13DFC2
	SEC
	SBC	#4
	STA	inv_spr_dscr1_30C
	LDA	#$40 
	STA	tilemapTypeUnk_30B
	JMP	loc_13DFD1
; ---------------------------------------------------------------------------

loc_13DFC2:
	; load_sprite_func_13DFA8+Aj
	LDA	inv_spr_dscr1_30C
	ASL	A
	ASL	A
	ASL	A
	ASL	A
	STA	tilemapTypeUnk_30B
	LDA	#0
	STA	inv_spr_dscr1_30C

loc_13DFD1:
	JSR	sprites_func_13E178
	LDA	inv_spr_dscr1_30C
	CMP	#0
	BNE	loc_13DFAB
	RTS
; End of function load_sprite_func_13DFA8


; =============== S U B	R O U T	I N E =======================================


load_boss_sprite_13DFDC:
	
	set_ptr BossImages_129826

	LDA	#0
	STA	data_2
	LDA	inv_sprite_idx_31C
	ASL	A
	ROL	data_2
	CLC
	ADC	ptr_0
	STA	ptr_0
	LDA	ptr_1
	ADC	data_2
	STA	ptr_1
	LDY	#0
	LDA	(ptr_0),Y
	STA	data_2
	INY
	LDA	(ptr_0),Y
	STA	data_3
	LDY	#0
	LDA	(data_2),Y
	STA	inv_spr_dscr1_30C

	add_to_data $2

	LDA	byte_31E
	STA	ptr_0
	LDA	#0
	STA	ptr_1
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

	LDA	#0
	STA	data_2
	LDA	inv_sprite_idx_31C
	ASL	A
	ROL	data_2
	CLC
	ADC	ptr_0
	STA	ptr_0
	LDA	ptr_1
	ADC	data_2
	STA	ptr_1
	LDY	#0
	LDA	(ptr_0),Y
	STA	data_2
	INY
	LDA	(ptr_0),Y
	STA	data_3
	LDA	#0
	STA	ptr_0
	LDA	inv_itemPrev_idx_31D
	ASL	A
	ROL	ptr_0
	CLC
	ADC	data_2
	STA	data_2
	LDA	data_3
	ADC	ptr_0
	STA	data_3
	LDY	#0
	LDA	(data_2),Y
	STA	ptr_0
	INY
	LDA	(data_2),Y
	STA	ptr_1
	LDY	#0
	LDA	(ptr_0),Y
	STA	tilemapWidth_308
	INY
	LDA	(ptr_0),Y
	STA	tilemapHeight_30A

	add_to_byte_clc ptr_0, #2

	LDA	ptr_1
	ADC	#0
	STA	ptr_1

	LDA	#0
	STA	data_2
	LDA	#$20 
	STA	data_3
	LDA	byte_36E
	ASL	A
	ASL	A
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

	LDA	data_3
	ADC	#0
	STA	data_3
	LDA	#0
	STA	inv_spr_dscr1_30C
	STA	ppu_unk_byte_309
	LDA	#$32 

loc_13E0DC:
	CMP	tilemapWidth_308
	BCC	loc_13E0EB
	SEC
	SBC	tilemapWidth_308
	INC	inv_spr_dscr1_30C
	JMP	loc_13E0DC
; ---------------------------------------------------------------------------

loc_13E0EB:
	LDA	tilemapHeight_30A

loc_13E0EE:
	CMP	inv_spr_dscr1_30C
	BCC	loc_13E100
	SEC
	SBC	inv_spr_dscr1_30C
	STA	tilemapHeight_30A
	INC	ppu_unk_byte_309
	JMP	loc_13E0EE
; ---------------------------------------------------------------------------

loc_13E100:
	; load_sprite_map_13E038+D6j
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
	; load_sprite_map_13E038+E0p
	LDA	#0
	STA	tilemapTypeUnk_30B
	LDA	#0
	STA	has_ppu_data_to_upload_6F
	LDX	#0
	LDA	inv_spr_dscr1_30C
	STA	ppu_data_70,X
	INX

loc_13E12D:
	LDA	tilemapWidth_308
	STA	ppu_data_70,X
	INX
	LDA	data_3
	STA	ppu_data_70,X
	INX
	LDA	data_2
	STA	ppu_data_70,X
	INX
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

	LDA	ptr_1
	ADC	#0
	STA	ptr_1

	INC	tilemapTypeUnk_30B
	LDA	tilemapTypeUnk_30B
	CMP	inv_spr_dscr1_30C
	BCC	loc_13E12D
	JSR	wait_for_ppu_data_upload_FC8C
	RTS
; End of function sprites_func_13E11C


; =============== S U B	R O U T	I N E =======================================


sprites_func_13E178:
	LDA	#0
	STA	has_ppu_data_to_upload_6F
	LDX	#0
	LDA	#1
	STA	ppu_data_70,X
	INX
	LDA	tilemapTypeUnk_30B
	STA	ppu_data_70,X
	INX
	LDA	ptr_1
	STA	ppu_data_70,X
	INX
	LDA	ptr_0
	STA	ppu_data_70,X
	INX
	LDY	#0

loc_13E195:
	LDA	(data_2),Y
	STA	ppu_data_70,X
	INX
	INY
	CPY	tilemapTypeUnk_30B
	BCC	loc_13E195
	add_to_byte_clc data_2, tilemapTypeUnk_30B

	LDA	data_3
	ADC	#0
	STA	data_3

	add_to_byte_clc ptr_0, tilemapTypeUnk_30B

	LDA	ptr_1
	ADC	#0
	STA	ptr_1
	
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