; Segment type:Pure code
		;.segment BANK_13 (Code + Sprites)
		* =  $8000

; =============== S U B	R O U T	I N E =======================================


bank_switch_138000:
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
		; bank_switch_138000+6Fj ...
		LDA	#$FF
		STA	bank_command_346
		LDA	bank_from_343
		STA	bank_to_344
		JMP	bank_switch_138000
; ---------------------------------------------------------------------------

loc_13809B:
		JSR	music_update_state_13DC1E
		LDA	bank_prev_345
		STA	bank_to_344
		LDA	#$FF
		STA	bank_command_346
		JMP	bank_switch_138000
; End of function bank_switch_138000

; ---------------------------------------------------------------------------
Palette_1380AC:
		.include "sprites/bank_13_palettes.asm"
		
SpriteMaps_138454:
		.include "sprites/bank_13_tilemaps.asm"

BossImages:
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
		LDA	pulse_entries_13C111.length,X
		STA	_APU_PULSE1_SWEEP,Y
		LDA	pulse_entries_13C111.envelope,X
		STA	_APU_PULSE1_TIME,Y
		LDA	pulse_entries_13C111.sweep,X
		STA	_APU_PULSE1_LEN,Y
		RTS
; ---------------------------------------------------------------------------

loc_13C068:
		LDA	stru_13C211,X
		STA	_APU_PULSE1_ENV,Y
		LDA	stru_13C211.length,X
		STA	_APU_PULSE1_SWEEP,Y
		LDA	stru_13C211.envelope,X
		STA	_APU_PULSE1_TIME,Y
		LDA	stru_13C211.sweep,X
		STA	_APU_PULSE1_LEN,Y
		RTS
; End of function music_func_13C028

; ---------------------------------------------------------------------------
byte_13C081:.BYTE	2,  2,	2,  8,	8,  2,	2,  8,	8,  8,	8,  2,	2,  2,	2,  2
		
		.BYTE	2,  2,	8,  8,	8,  8,	2,  2,	2,  2,	2,  2,	2,  2,	8,  2
		.BYTE	8,  2,	2,  2,	2,  8,	2,  2,	2,  8,	8,  2,	2,  2,	8,  2
		.BYTE	2,  2,	2,  2,	8,  2,	2,  2,	2,  2,	2,  2,	8,  2,	2,  2
		.BYTE	2,  2,	8,  8,	2,  2,	1,  2
byte_13C0C9:.BYTE	4,  4,	4, $C, $C,  4,	4, $C, $C, $C, $C,  4,	4,  4,	4,  4
		
		.BYTE	4,  4, $C, $C, $C, $C,	4,  4,	4,  4,	4,  4,	4,  4, $C,  4
		.BYTE  $C,  4,	4,  4,	4, $C,	4,  4,	4, $C, $C,  4,	4,  4, $C,  4
		.BYTE	4,  4,	4,  4, $C,  4,	4,  4,	4,  4,	4,  4, $C,  4,	4,  4
		.BYTE	4,  4, $C, $C,	4,  4,	0,  4
pulse_entries_13C111:pulse_entry <$9F, $BA, $F4, $F1> ;	DATA XREF: music_func_13C028+27r
		; music_func_13C028+2Dr ...
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
stru_13C211:pulse_entry <$88, $84, $5F, $30> 
		; music_func_13C028+46r ...
		pulse_entry <$88, $93, $2E, 0>
		pulse_entry <$8F, $A1, 9, $F0>
		pulse_entry <$B, $83, $E, $40>
		pulse_entry <$49, $F2, $C4, 8>
		pulse_entry <$9F, $BA, $CC, $20>
		pulse_entry <$8D, $AA, $A6, $F1>
		pulse_entry <$4F, $C3, $2D, 8>
noise_env_13C231:pulse_entry <$1F, $1F,	$1F, $1F> 
		; music_func_13D804:apu_update_noise_13D988r
		pulse_entry <$1F, $1F, $1F, $1F>
		pulse_entry <$1F, $1F, $1F, $1F>
		pulse_entry <$1F, $1F, $1F, $1F>
		pulse_entry <$1F, $1F, $1F, $1F>
		pulse_entry <$1F, $1F, $1F, $1F>
		pulse_entry <$1F, $1F, $1F, $1F>
		pulse_entry <$1F, $1F, $1F, $1F>
		pulse_entry <$1F, $1F, $1F, $1F>
		pulse_entry <$1F, $1F, $1F, $1F>
		pulse_entry <$1F, $1F, $1F, $1F>
		pulse_entry <$1F, $1F, $1F, $1F>
		pulse_entry <$1F, $1F, $1F, $1F>
		pulse_entry <$1F, $1F, $1F, $1F>
		pulse_entry <$1F, $1F, $1F, $1F>
		pulse_entry <$1F, $1F, $1F, $1F>
		pulse_entry <$1F, $1F, $1F, $1F>
		pulse_entry <$1F, $1F, $1F, $1F>
		pulse_entry <$1F, $1F, $1F, $1F>
		pulse_entry <$1F, $1F, $1F, $1F>
		pulse_entry <$1F, $1F, $1F, $1F>
		.BYTE $1F
noise_loop_13C286:.BYTE	  0		
		; music_func_13D804+18Dr
noise_len_13C287:.BYTE	 0,$8E,	 0,$8E,$48,$8F,	 0,$8F,$48,$87,$18,$8A,$18,$8B,$38,$8C
		
		; music_func_13D804+193r
		.BYTE $18,$8C,$28,  9,$18, $B,$28,$8D,	0,$8D,$38,$84,$38,$84,$58,$86
		.BYTE $28,$85,$28,$85,$B8,$86,$E0,$88,	0,$88,$28,$88,$E0,$89,$E0,$89
		.BYTE $48,$8A,$48, $C,	0,$8F,$D0,$8F,	0,  0,	0,  2,	0,  4,	0,$81
		.BYTE $28,$82,$60,$83,$38,$80,$58,$81,$58,$83,$48,$8E,	0,$8E,$48,$8F
		.BYTE	0,$8F,$48,$87,$18,$8A,$18,$8B,$38,$8C,$18,$8C,$28,  9,$18, $B
		.BYTE $28,$8D,	0,$8D,$38,$84,$38,$84,$58,$86,$28,$85,$28,$85,$B8,$86
		.BYTE $E0,$88,	0,$88,$28,$88,$E0,$89,$E0,$89,$48,$8A,$48, $C,	0,$8F
		.BYTE $D0,$8F,	0,  0,	0,  2,	0,  4,	0,$81,$28,$82,$60,$83,$38,$80
		.BYTE $58,$81,$58,$83,$48,$8E,	0,$8E,$48,$8F,	0,$8F,$48,$87,$18,$8A
		.BYTE $18,$8B,$38,$8C,$18,$8C,$28,  9,$18
off_13C330:.WORD byte_13C37A	
		.WORD byte_13C37F
		.WORD byte_13C384
		.WORD byte_13C389
		.WORD byte_13C390
		.WORD byte_13C395
		.WORD byte_13C398
		.WORD byte_13C39D
		.WORD byte_13C3A2
		.WORD byte_13C3A7
		.WORD byte_13C3AE
		.WORD byte_13C3B3
		.WORD byte_13C3B6
		.WORD byte_13C3D7
		.WORD byte_13C3DC
		.WORD byte_13C3FD
		.WORD byte_13C402
		.WORD byte_13C409
		.WORD byte_13C40E
		.WORD byte_13C421
		.WORD byte_13C436
		.WORD byte_13C43F
		.WORD byte_13C448
		.WORD byte_13C44F
		.WORD byte_13C454
		.WORD byte_13C457
		.WORD byte_13C46C
		.WORD byte_13C485
		.WORD byte_13C496
		.WORD byte_13C4AB
		.WORD byte_13C4BC
		.WORD byte_13C4CD
		.WORD byte_13C4DE
		.WORD byte_13C4FB
		.WORD byte_13C50C
		.WORD byte_13C51D
		.WORD byte_13C532
byte_13C37A:.BYTE $1E,$B4,$1E,$8E,	0 
byte_13C37F:.BYTE $1E,$80,$1E,$83,	0 
byte_13C384:.BYTE $1E,$83,$1E,$82,	0 
byte_13C389:.BYTE $1E,$8D,	6,$8C,	6,$8F,	0 
byte_13C390:.BYTE $1E,$8E,$1E,$B4,	0 
byte_13C395:.BYTE $2E,$B7,	0	
byte_13C398:.BYTE $1E,$89,$1E,$83,	0 
byte_13C39D:.BYTE $1E,$85,$1E,$84,	0 
byte_13C3A2:.BYTE $1E,$84,$1E,$87,	0 
byte_13C3A7:.BYTE $1E,$86,	6,$81,	6,$80,	0 
byte_13C3AE:.BYTE $1E,$83,$1E,$89,	0 
byte_13C3B3:.BYTE $2E,$88,	0	
byte_13C3B6:.BYTE  $C,$96, $C,$97, $C,$96, $C,$97, $C,$96, $C,$97, $C,$96, $C,$97
		
		.BYTE  $C,$96, $C,$AA, $C,$96, $C,$AA, $C,$96, $C,$AA, $C,$96, $C,$AA
		.BYTE	0
byte_13C3D7:.BYTE $14,$93,	8,$AA,	0 
byte_13C3DC:.BYTE  $C,$E8, $C,$EB, $C,$E8, $C,$EB, $C,$E8, $C,$EB, $C,$E8, $C,$EB
		
		.BYTE  $C,$E8, $C,$AA, $C,$E8, $C,$AA, $C,$E8, $C,$AA, $C,$E8, $C,$AA
		.BYTE	0
byte_13C3FD:.BYTE $14,$91,	8,$AA,	0 
byte_13C402:.BYTE $1E,$EF,	6,$EE,	6,$E9,	0 
byte_13C409:.BYTE $1E,$EB,$1E,$EA,	0 
byte_13C40E:.BYTE  $C,$EC, $C,$ED, $C,$EC, $C,$ED, $C,$EC, $C,$ED, $C,$EC,	4,$ED
		
		.BYTE	6,$AA,	0
byte_13C421:.BYTE  $C,$EB, $C,$EA, $C,$EB, $C,$EA, $C,$EB, $C,$EA, $C,$EB, $C,$EA
		
		.BYTE	0,$EB, $C,$AA,	0
byte_13C436:.BYTE	6,$EB,	6,$E8,	6,$E9,	6,$E8,	0 
byte_13C43F:.BYTE	6,$EB,	6,$E8,	6,$EB,	6,$EA,	0 
byte_13C448:.BYTE	6,$94,$1E,$97,	6,$94,	0 
byte_13C44F:.BYTE $1E,$91,$1E,$EB,	0 
byte_13C454:.BYTE $2E,$EA,	0	
byte_13C457:.BYTE  $C,$80,	8,$AA, $C,$80,	8,$AA, $C,$B7, $C,$AA, $C,$B7, $C,$AA
		
		.BYTE  $C,$8A,	8,$AA,	0
byte_13C46C:.BYTE  $C,$80,	8,$AA, $C,$B7,	8,$AA, $C,$8A, $C,$AA, $C,$80, $C,$AA
		
		.BYTE  $C,$84, $C,$AA, $C,$84, $C,$AA,	0
byte_13C485:.BYTE  $C,$80,	8,$AA, $C,$84,	8,$AA, $C,$8A,	8,$AA, $C,$B7,	8,$AA
		
		.BYTE	0
byte_13C496:.BYTE  $C,$80,	8,$AA, $C,$B7,	8,$AA, $C,$8A, $C,$AA, $C,$84, $C,$AA
		
		.BYTE  $C,$84,	8,$AA,	0
byte_13C4AB:.BYTE  $C,$80,	8,$AA, $C,$84,	8,$AA, $C,$8A,	8,$AA, $C,$8A,	8,$AA
		
		.BYTE	0
byte_13C4BC:.BYTE  $C,$80,	8,$AA, $C,$84,	8,$AA, $C,$80,	8,$AA, $C,$84,	8,$AA
		
		.BYTE	0
byte_13C4CD:.BYTE  $C,$80,	8,$AA, $C,$B7,	8,$AA, $C,$80,	8,$AA, $C,$84,	8,$AA
		
		.BYTE	0
byte_13C4DE:.BYTE  $C,$84, $C,$AA, $C,$80, $C,$AA, $C,$80, $C,$AA, $C,$80, $C,$AA
		
		.BYTE  $C,$84, $C,$AA, $C,$80, $C,$AA, $C,$80,	8,$AA,	0
byte_13C4FB:.BYTE  $C,$84,	8,$AA, $C,$80,	8,$AA, $C,$84,	8,$AA, $C,$80,	8,$AA
		
		.BYTE	0
byte_13C50C:.BYTE  $C,$84,	8,$AA, $C,$80,	8,$AA, $C,$8A,	8,$AA, $C,$80,	8,$AA
		
		.BYTE	0
byte_13C51D:.BYTE  $C,$84,	8,$AA, $C,$80,	8,$AA, $C,$8A, $C,$AA, $C,$8A, $C,$AA
		
		.BYTE  $C,$80,	8,$AA,	0
byte_13C532:.BYTE  $C,$84,	8,$AA, $C,$80,	8,$AA, $C,$8A, $C,$AA, $C,$8A, $C,$AA
		
		.BYTE  $C,$84,	8,$AA,	0,  0
byte_13C548:.BYTE $B, $4F, $C5, $6A, $C5, $85, $C5,	$FD, $F, $FE, $78, $FF,	$B0, 0
		
		.BYTE	0,  0,	0,  0,	0,  1,	0,  2,	3,  4,	5,  6,	7,  6,	8,  9
		.BYTE  $A, $B,$FC,  0,$FD, $F,$FE,$78,$FF,$B0,	0,  0,	0,  0,	0, $C
		.BYTE  $D, $E, $F,$10, $E,$11,$12,$13,$14,$15,$16,$17,$18,$FC,	0,$FD
		.BYTE  $F,$FE,$78,$19,$1A,$1B,$1C,$1D,$1E,$1F,$20,$21,$22,$23,$24,$23
		.BYTE $22,$FC,	0
off_13C599:.WORD byte_13C5E3	
		.WORD byte_13C5F4
		.WORD byte_13C601
		.WORD byte_13C612
		.WORD byte_13C623
		.WORD byte_13C630
		.WORD byte_13C641
		.WORD byte_13C652
		.WORD byte_13C65F
		.WORD byte_13C670
		.WORD byte_13C67D
		.WORD byte_13C68E
		.WORD byte_13C699
		.WORD byte_13C6A6
		.WORD byte_13C6B1
		.WORD byte_13C6BC
		.WORD byte_13C6C5
		.WORD byte_13C6D6
		.WORD byte_13C6E3
		.WORD byte_13C6F4
		.WORD byte_13C705
		.WORD byte_13C712
		.WORD byte_13C723
		.WORD byte_13C734
		.WORD byte_13C73F
		.WORD byte_13C74A
		.WORD byte_13C75B
		.WORD byte_13C768
		.WORD byte_13C779
		.WORD byte_13C786
		.WORD byte_13C797
		.WORD byte_13C7A4
		.WORD byte_13C7AD
		.WORD byte_13C7B4
		.WORD byte_13C7BD
		.WORD byte_13C7CA
		.WORD byte_13C7CF
byte_13C5E3:.BYTE  $C,$83, $C,$80, $C,$86, $C,$84, $C,$86, $C,$AA, $C,$86, $C,$AA
		
		.BYTE	0
byte_13C5F4:.BYTE	8,$9B, $C,$AA, $C,$86, $C,$AA, $C,$86, $C,$AA,	0
		
byte_13C601:.BYTE  $C,$83, $C,$80, $C,$86, $C,$84, $C,$9A, $C,$9B, $C,$99, $C,$9F
		
		.BYTE	0
byte_13C612:.BYTE  $C,$99, $C,$9B, $C,$9A, $C,$84, $C,$86, $C,$80, $C,$83, $C,$8D
		
		.BYTE	0
byte_13C623:.BYTE	8,$9F, $C,$AA, $C,$99, $C,$AA, $C,$99, $C,$AA,	0
		
byte_13C630:.BYTE  $C,$99, $C,$9B, $C,$9A, $C,$84, $C,$86, $C,$84, $C,$86, $C,$80
		
		.BYTE	0
byte_13C641:.BYTE  $C,$83, $C,$80, $C,$86, $C,$84, $C,$86, $C,$80, $C,$83, $C,$8D
		
		.BYTE	0
byte_13C652:.BYTE  $C,$8F, $C,$8D, $C,$83, $C,$8D,	8,$8F, $C,$AA,	0
		
byte_13C65F:.BYTE  $C,$8D, $C,$AA, $C,$83, $C,$AA, $C,$80, $C,$AA, $C,$80, $C,$AA
		
		.BYTE	0
byte_13C670:.BYTE  $C,$80, $C,$86, $C,$80, $C,$83,	8,$8D, $C,$AA,	0
		
byte_13C67D:.BYTE  $C,$83, $C,$86, $C,$9B, $C,$AA, $C,$9B, $C,$AA, $C,$99, $C,$AA
		
		.BYTE	0
byte_13C68E:.BYTE  $C,$9B, $C,$AA, $C,$86, $C,$AA,	6,$83,	0 
byte_13C699:.BYTE	8,$9B, $C,$AA, $C,$86, $C,$AA, $C,$80, $C,$AA,	0
		
byte_13C6A6:.BYTE	6,$9B, $C,$86, $C,$AA, $C,$86, $C,$AA,	0 
byte_13C6B1:.BYTE  $C,$8F, $C,$8D, $C,$83, $C,$8D,	6,$8F,	0 
byte_13C6BC:.BYTE	8,$8F, $C,$AA,	8,$8A, $C,$AA,	0 
byte_13C6C5:.BYTE  $C,$B7, $C,$B4, $C,$8A, $C,$88, $C,$8A, $C,$AA, $C,$8A, $C,$AA
		
		.BYTE	0
byte_13C6D6:.BYTE	8,$8F, $C,$AA, $C,$8A, $C,$AA, $C,$8A, $C,$AA,	0
		
byte_13C6E3:.BYTE  $C,$B7, $C,$B4, $C,$8A, $C,$88, $C,$8E, $C,$8F, $C,$8D, $C,$83
		
		.BYTE	0
byte_13C6F4:.BYTE  $C,$8D, $C,$8F, $C,$8E, $C,$88, $C,$8A, $C,$B4, $C,$B7, $C,$B1
		
		.BYTE	0
byte_13C705:.BYTE	8,$83, $C,$AA, $C,$8D, $C,$AA, $C,$8D, $C,$AA,	0
		
byte_13C712:.BYTE  $C,$8D, $C,$8F, $C,$8E, $C,$88, $C,$8A, $C,$88, $C,$8A, $C,$B4
		
		.BYTE	0
byte_13C723:.BYTE  $C,$B7, $C,$B4, $C,$8A, $C,$88, $C,$8A, $C,$B4, $C,$B7, $C,$B1
		
		.BYTE	0
byte_13C734:.BYTE  $C,$B3, $C,$B1, $C,$B7, $C,$B1,	6,$B3,	0 
byte_13C73F:.BYTE  $C,$B4, $C,$AA, $A,$B4, $A,$AA, $A,$B4,	0 
byte_13C74A:.BYTE  $C,$B7, $C,$AA, $C,$B3, $C,$AA, $C,$B7, $C,$AA, $C,$B3, $C,$AA
		
		.BYTE	0
byte_13C75B:.BYTE  $C,$8A, $C,$AA, $C,$8A, $C,$AA,	8,$8A, $C,$AA,	0
		
byte_13C768:.BYTE  $C,$B1, $C,$AA, $C,$B1, $C,$AA, $C,$B1, $C,$AA, $C,$B1, $C,$AA
		
		.BYTE	0
byte_13C779:.BYTE  $C,$B1, $C,$B7, $C,$B1, $C,$B3,	8,$B2, $C,$AA,	0
		
byte_13C786:.BYTE  $C,$B3, $C,$B7, $C,$8A, $C,$AA, $C,$8A, $C,$AA, $C,$8A, $C,$AA
		
		.BYTE	0
byte_13C797:.BYTE  $A,$8A, $A,$AA, $C,$B7, $C,$AA, $C,$B1, $C,$AA,	0
		
byte_13C7A4:.BYTE  $A,$B3, $A,$AA, $A,$B1, $A,$AA,	0 
byte_13C7AD:.BYTE  $A,$B3, $A,$B1,	6,$B3,	0 
byte_13C7B4:.BYTE  $C,$83,	8,$AA, $C,$8A,	8,$AA,	0 
byte_13C7BD:.BYTE  $C,$83, $C,$AA, $C,$83, $C,$AA, $C,$8A,	8,$AA,	0
		
byte_13C7CA:.BYTE  $C,$B7,	0,$AA,	0 
byte_13C7CF:.BYTE  $C,$86,	8,$AA, $C,$8A,	8,$AA,	0,  0 ;	DATA XREF: BANK_13:C5E1o
byte_13C7D9:.BYTE  $B,$E0,$C7,  5,$C8,$2A,$C8,$FD, $F,$FE,$78,$FF,$B0,  0,	0,  0
		
		.BYTE	0,  0,	0,  1,	2,  3,	0,  1,	4,  5,	0,  1,	6,  7,	8,  9
		.BYTE  $A, $B,	8,  9, $A, $C,	0, $D,	6, $E,$FC,  0,$FD, $F,$FE,$78
		.BYTE $FF,$B0,	0,  0,	0,  0,	0, $F,$10,$11,$12,$13,$10,$11,$14,$15
		.BYTE $10,$11,$16,$17,$18,$19,$1A,$1B,$1C,$1D,$1E,$1F,$10,$11,$20,$FC
		.BYTE	0,$FD, $F,$FE,$78,$21,$22,$21,$22,$21,$22,$21,$22,$21,$22,$21
		.BYTE $21,$23,$23,$23,$23,$24,$24,$24,$24,$24,$24,$24,$24,$FC,	0
off_13C848:.WORD byte_13C876	
		.WORD byte_13C887
		.WORD byte_13C898
		.WORD byte_13C8AB
		.WORD byte_13C8BC
		.WORD byte_13C8CD
		.WORD byte_13C8DE
		.WORD byte_13C8ED
		.WORD byte_13C8F8
		.WORD byte_13C903
		.WORD byte_13C914
		.WORD byte_13C927
		.WORD byte_13C936
		.WORD byte_13C945
		.WORD byte_13C952
		.WORD byte_13C95F
		.WORD byte_13C980
		.WORD byte_13C9A1
		.WORD byte_13C9C4
		.WORD byte_13C9E5
		.WORD byte_13CA1A
		.WORD byte_13CA4F
		.WORD byte_13CA88
byte_13C876:.BYTE	6,$BC,	6,$B3,	6,$B0,	6,$B1,	6,$B7,	6,$B1,	6,$B3,	6,$B2
		
		.BYTE	0
byte_13C887:.BYTE	2,$BC, $A,$B7,	6,$BC,	6,$B7,	2,$BC, $A,$B1,	6,$BC,	6,$B1
		
		.BYTE	0
byte_13C898:.BYTE	6,$B2,	8,$B7, $C,$AA,	6,$B7,	6,$BF,	6,$BC,	6,$B7,	6,$B3
		
		.BYTE	6,$B2,	0
byte_13C8AB:.BYTE	6,$BC,	6,$B7,	6,$BC,	6,$B7,	6,$B2,	6,$B7,	6,$B1,	6,$B7
		
		.BYTE	0
byte_13C8BC:.BYTE	6,$BC,	6,$B7,	6,$B3,	6,$B7,	6,$B2,	6,$B7,	6,$B1,	6,$B7
		
		.BYTE	0
byte_13C8CD:.BYTE	6,$BC,	6,$B7,	6,$BC,	6,$B7,	6,$BC,	6,$B1,	6,$BC,	6,$B1
		
		.BYTE	0
byte_13C8DE:.BYTE	6,$BC,	6,$B3,	6,$B7,	6,$B3,	6,$BC,	6,$B7,$1E,$BC,	0
		
byte_13C8ED:.BYTE $16,$84,	6,$83, $A,$9B,$14,$84, $C,$AA,	0 
byte_13C8F8:.BYTE $16,$84,	6,$83, $A,$9B, $A,$99,$16,$84,	0 
byte_13C903:.BYTE	8,$9F, $C,$AA,$1E,$9F,	8,$99, $C,$AA, $A,$99, $A,$9B,$16,$84
		
		.BYTE	0
byte_13C914:.BYTE  $A,$87, $A,$84, $A,$87, $A,$84, $A,$87, $A,$84, $A,$87, $A,$80
		
		.BYTE $2E,$83,	0
byte_13C927:.BYTE $1E,$84,	6,$83,	6,$9B,	6,$9A,	6,$87,	6,$82,	6,$83,	0
		
byte_13C936:.BYTE $1E,$84,	6,$83,	6,$9B,	6,$9A,	6,$83,	6,$87,	6,$83,	0
		
byte_13C945:.BYTE	6,$9F,$1E,$99,	6,$9F,	6,$99,$1E,$9B,	6,$99,	0
		
byte_13C952:.BYTE	6,$9B,$1E,$9A,	6,$9B,	6,$84,	6,$87,$1E,$84,	0
		
byte_13C95F:.BYTE  $C,$83,	8,$AA, $C,$B7,	8,$AA, $C,$83,	8,$AA, $C,$83,	8,$AA
		
		.BYTE  $C,$83,	8,$AA, $C,$B7,	8,$AA, $C,$83,	8,$AA, $C,$9A,	8,$AA
		.BYTE	0
byte_13C980:.BYTE  $C,$83,	8,$AA, $C,$9A,	8,$AA, $C,$83,	8,$AA, $C,$8A,	8,$AA
		
		.BYTE  $C,$83,	8,$AA, $C,$9A,	8,$AA, $C,$83,	8,$AA, $C,$B7,	8,$AA
		.BYTE	0
byte_13C9A1:.BYTE  $C,$83,	8,$AA, $C,$83, $C,$B7, $A,$AA, $C,$8A,	8,$AA, $C,$9A
		
		.BYTE	8,$AA, $C,$83,	8,$AA, $C,$B7,	8,$AA, $C,$8A,	8,$AA, $C,$9A
		.BYTE	8,$AA,	0
byte_13C9C4:.BYTE  $C,$83,	8,$AA, $C,$B7,	8,$AA, $C,$83,	8,$AA, $C,$B7,	8,$AA
		
		.BYTE  $C,$83,	8,$AA, $C,$8A,	8,$AA, $C,$9A,	8,$AA, $C,$B7,	8,$AA
		.BYTE	0
byte_13C9E5:.BYTE  $C,$83, $C,$AA, $C,$8A, $C,$AA, $C,$B7,	8,$AA, $C,$8A, $C,$AA
		
		.BYTE  $C,$83, $C,$AA, $C,$9A,	8,$AA, $C,$B7, $C,$AA, $C,$83,	8,$AA
		.BYTE  $C,$B7, $C,$AA, $C,$83, $C,$AA, $C,$8A, $C,$AA, $C,$83, $C,$AA
		.BYTE  $C,$B7, $C,$AA,	0
byte_13CA1A:.BYTE  $C,$83, $C,$AA, $C,$8A, $C,$AA, $C,$9A,	8,$AA, $C,$B7, $C,$AA
		
		.BYTE  $C,$83, $C,$AA, $C,$8A,	8,$AA, $C,$8A, $C,$AA, $C,$83, $C,$AA
		.BYTE  $C,$B7, $C,$AA, $C,$9A, $C,$AA, $C,$83, $C,$AA, $C,$8A,	8,$AA
		.BYTE  $C,$B7, $C,$AA,	0
byte_13CA4F:.BYTE  $C,$83, $C,$AA, $C,$9A, $C,$AA, $C,$8A, $C,$AA, $C,$83, $C,$AA
		
		.BYTE  $C,$B7, $C,$AA, $C,$8A, $C,$AA, $C,$83, $C,$AA, $C,$9A,	8,$AA
		.BYTE  $C,$9A, $C,$AA, $C,$83, $C,$AA, $C,$B7,	8,$AA, $C,$8A, $C,$AA
		.BYTE  $C,$83, $C,$AA, $C,$9A, $C,$AA,	0
byte_13CA88:.BYTE  $C,$83, $C,$AA, $C,$9A, $C,$8A, $C,$B7, $C,$AA, $C,$83, $C,$AA
		
		.BYTE  $C,$8A, $C,$AA, $C,$B7, $C,$AA, $C,$83, $C,$AA, $C,$9A, $C,$AA
		.BYTE  $C,$B7, $C,$AA, $C,$83, $C,$AA, $C,$B7, $A,$AA, $C,$B7, $C,$8A
		.BYTE  $C,$AA, $C,$B7, $C,$AA, $C,$9A, $C,$AA, $C,$83, $C,$AA,	0,  0
byte_13CAC8:.BYTE  $B,$CF,$CA,$E4,$CA,$F9,$CA,$FD, $F,$FE,$A0,$FF,$B0,  0,	0,  0
		
		.BYTE	0,  0,	0,  0,	1,  2,	3,  4,	5,  6,$FC,  0,$FD, $F,$FE,$A0
		.BYTE $FF,$B0,	0,  0,	0,  0,	0,  7,	8,  9, $A, $B, $C, $D, $E,$FC
		.BYTE	0,$FD, $F,$FE,$A0, $F,$10,$11,$12,$13,$14,$15,$16,$FC,	0
off_13CB07:.WORD byte_13CB2D	
		.WORD byte_13CB3E
		.WORD byte_13CB4F
		.WORD byte_13CB56
		.WORD byte_13CB5F
		.WORD byte_13CB6A
		.WORD byte_13CB7B
		.WORD byte_13CB7E
		.WORD byte_13CB87
		.WORD byte_13CB90
		.WORD byte_13CB99
		.WORD byte_13CBA4
		.WORD byte_13CBC5
		.WORD byte_13CBE6
		.WORD byte_13CC07
		.WORD byte_13CC28
		.WORD byte_13CC49
		.WORD byte_13CC6A
		.WORD byte_13CC8B
byte_13CB2D:.BYTE  $A,$B4, $A,$B2, $A,$83, $A,$8E, $A,$80, $A,$8E, $A,$83, $A,$8E
		
		.BYTE	0
byte_13CB3E:.BYTE  $A,$B4, $A,$B2, $A,$83, $A,$8E, $A,$80, $A,$8E, $A,$8F, $A,$8E
		
		.BYTE	0
byte_13CB4F:.BYTE $1E,$80, $A,$9A,	2,$9F,	0 
byte_13CB56:.BYTE  $A,$9B,	6,$9A, $A,$80,$1E,$83,	0 
byte_13CB5F:.BYTE  $C,$8E, $C,$83,	6,$80, $A,$9A,$1E,$9F,	0 
byte_13CB6A:.BYTE  $A,$9E, $A,$9A, $A,$80, $A,$9A, $A,$83, $A,$80, $A,$8E, $A,$8F
		
		.BYTE	0
byte_13CB7B:.BYTE $2E,$8E,	0	
byte_13CB7E:.BYTE	6,$87,	6,$86,	6,$85,	6,$84,	0 
byte_13CB87:.BYTE	6,$9B,	6,$9A,	6,$9E,	6,$99,	0 
byte_13CB90:.BYTE	2,$9A, $A,$9B,	6,$9A,	6,$80,	0 
byte_13CB99:.BYTE  $C,$83, $C,$AA, $C,$83, $C,$AA,$16,$9F,	0 
byte_13CBA4:.BYTE  $C,$83, $C,$AA, $C,$B7, $C,$AA, $C,$B7, $C,$AA, $C,$B7, $C,$AA
		
		.BYTE  $C,$83, $C,$AA, $C,$B7, $C,$AA, $C,$B7, $C,$AA, $C,$B7, $C,$AA
		.BYTE	0
byte_13CBC5:.BYTE  $C,$83, $C,$AA, $C,$B7, $C,$AA, $C,$B7, $C,$AA, $C,$B7, $C,$AA
		
		.BYTE  $C,$8A, $C,$AA, $C,$8A, $C,$AA, $C,$B7, $C,$AA, $C,$B7, $C,$AA
		.BYTE	0
byte_13CBE6:.BYTE  $C,$83, $C,$AA, $C,$B7, $C,$AA, $C,$B7, $C,$AA, $C,$B7, $C,$AA
		
		.BYTE  $C,$8A, $C,$AA, $C,$B7, $C,$AA, $C,$B7, $C,$AA, $C,$B7, $C,$AA
		.BYTE	0
byte_13CC07:.BYTE  $C,$83, $C,$AA, $C,$B7, $C,$AA, $C,$8A, $C,$AA, $C,$B7, $C,$AA
		
		.BYTE  $C,$83, $C,$AA, $C,$83, $C,$AA, $C,$B7, $C,$AA, $C,$8A, $C,$AA
		.BYTE	0
byte_13CC28:.BYTE  $C,$8A, $C,$AA, $C,$B7, $C,$AA, $C,$8A, $C,$AA, $C,$B7, $C,$AA
		
		.BYTE  $C,$8A, $C,$AA, $C,$B7, $C,$AA, $C,$83, $C,$AA, $C,$B7, $C,$AA
		.BYTE	0
byte_13CC49:.BYTE  $C,$83, $C,$AA, $C,$B7, $C,$AA, $C,$8A, $C,$AA, $C,$B7, $C,$AA
		
		.BYTE  $C,$83, $C,$AA, $C,$B7, $C,$AA, $C,$B7, $C,$AA, $C,$B7, $C,$AA
		.BYTE	0
byte_13CC6A:.BYTE  $C,$83, $C,$AA, $C,$B7, $C,$AA, $C,$8A, $C,$AA, $C,$B7, $C,$AA
		
		.BYTE  $C,$83, $C,$AA, $C,$B7, $C,$AA, $C,$8A, $C,$AA, $C,$B7, $C,$AA
		.BYTE	0
byte_13CC8B:.BYTE  $C,$83, $C,$AA, $C,$B7, $C,$AA, $C,$8A, $C,$AA, $C,$B7, $C,$AA
		
		.BYTE  $C,$8A, $C,$AA, $C,$B7, $C,$AA, $C,$8A, $C,$B7, $A,$AA,	0,  0
byte_13CCAB:.BYTE  $B,$B2,$CC,$C8,$CC,$DE,$CC,$FD, $F,$FE,$64,$FF,$70,  0,	0,  0
		
		.BYTE	0,  0,	0,  1,	0,  1,	0,  1,	0,  1,	0,$FC,	0,$FD, $F,$FE
		.BYTE $64,$FF,$70,  0,	0,  0,	0,  0,	2,  3,	4,  5,	6,  7,	8,  9
		.BYTE  $A,$FC,	1,$FD, $F,$FE,$64, $B, $C, $D, $E, $B, $F,$10,$11,$12
		.BYTE $FC,  1
byte_13CCED:.BYTE	7,$CD,$18,$CD,$2B,$CD,$3C,$CD,$4D,$CD,$5A,$CD,$77,$CD,$94,$CD
		
		.BYTE $AD,$CD,$D6,$CD,$FF,$CD,$2A,$CE,$43,$CE,	2,$8F, $A,$8A,	8,$88
		.BYTE  $C,$8A,	2,$B4, $A,$8F,	8,$8D, $C,$8F,	0,  2,$8F, $A,$8A,  8
		.BYTE $88, $C,$8A,  8,$B4, $C,$AA,  6,$B4,  8,$B7, $C,$B1,  0,	2,$B3
		.BYTE  $A,$8A,	8,$88, $C,$8A,	2,$B4, $A,$8F,	8,$8D, $C,$8F,	0,  8
		.BYTE $B4, $C,$AA,  6,$B4,  8,$B7, $C,$B1,$1E,$B3, $A,$B1, $A,$B7,  0
		.BYTE	8,$B4, $C,$AA,	6,$B4,	8,$B7, $C,$B1,$16,$B3,	0, $A,$95, $C
		.BYTE $EB, $C,$97,  8,$95, $C,$EB,  8,$95, $C,$97, $A,$92, $C,$90, $C
		.BYTE $9C,  8,$92, $C,$90, $A,$92, $A,$9C,  0, $A,$99, $C,$9F, $C,$9B
		.BYTE	8,$99, $C,$9F,	8,$99, $C,$9B, $A,$86, $C,$84, $C,$80,	8,$86
		.BYTE  $C,$84, $A,$86, $A,$80,	0,  8,$9B, $C,$86,  8,$9B, $C,$9F,  8
		.BYTE $92, $C,$97,  8,$90, $C,$9C,  8,$9C, $C,$9B,  8,$9B, $C,$84,  0
		.BYTE  $C,$9C, $C,$9B, $C,$84, $C,$9B, $C,$9C, $C,$9B, $C,$84, $C,$9B
		.BYTE	8,$90, $C,$9C, $C,$92, $C,$9F, $C,$9B, $C,$9F, $C,$92, $C,$9F
		.BYTE  $C,$9B, $C,$9F, $A,$92, $A,$90,	0, $C,$90, $C,$9C, $C,$9B, $C
		.BYTE $9C, $C,$90, $C,$9C, $C,$9B, $C,$9C,  8,$90, $C,$9C, $C,$92, $C
		.BYTE $9F, $C,$9B, $C,$9F, $C,$92, $C,$9F, $C,$9B, $C,$9F, $A,$9C, $A
		.BYTE $92,  0, $C,$97, $C,$90, $C,$9C, $C,$9B, $C,$90, $C,$9C, $C,$9B
		.BYTE  $C,$84,	8,$9F, $C,$99, $C,$9B, $C,$86, $C,$9B, $C,$9F, $C,$9B
		.BYTE  $C,$9F, $C,$92, $C,$9B, $C,$9F, $C,$92, $A,$97,	0, $C,$83,  8
		.BYTE $AA, $C,$8A,  8,$AA, $C,$8A,  8,$AA, $C,$83,  8,$AA, $C,$8A,  8
		.BYTE $AA, $C,$8A,  8,$AA,  0, $C,$83,	8,$AA, $C,$B7,	8,$AA, $C,$B7
		.BYTE	8,$AA, $C,$83,	8,$AA, $C,$B7,	8,$AA, $C,$B7,	8,$AA,	0,  0
byte_13CE5D:.BYTE  $B,$64,$CE,$77,$CE,$91,$CE,$FD, $F,$FE,$78,$FF,$B0,  0,	0,  0
		
		.BYTE	0,  0,	0,  1,	2,  3,	3,  4,$FC,  0,$FD, $F,$FE,$78,$FF,$B0
		.BYTE	0,  0,	0,  0,	0,  5,	6,  7,$FF,$80,	0,$F2,$71,$11,$11,  8
		.BYTE	9, $A,$FC,  0,$FD, $F,$FE,$78, $B, $B, $B, $C, $C, $C,$FC,  0
off_13CE9D:.WORD byte_13CEBD	
		.WORD byte_13CEDA
		.WORD byte_13CEF9
		.WORD byte_13CF1A
		.WORD byte_13CF3B
		.WORD byte_13CF3E
		.WORD byte_13CF41
		.WORD byte_13CF64
		.WORD byte_13CF6F
		.WORD byte_13CF98
		.WORD byte_13CFAB
		.WORD byte_13CFD4
		.WORD byte_13CFF1
		.WORD byte_13D018
		.WORD byte_13D04B
		.WORD byte_13D06C
byte_13CEBD:.BYTE  $A,$84, $A,$83, $A,$AA, $A,$83, $A,$9A, $A,$83, $A,$AA, $A,$83
		
		.BYTE  $A,$9B, $A,$83, $A,$8D, $A,$83,	6,$8D,	6,$8C,	0
byte_13CEDA:.BYTE  $C,$84, $C,$AA, $C,$84,$1C,$AA, $C,$80, $C,$AA, $C,$80, $C,$AA
		
		.BYTE  $A,$9F, $A,$9A, $A,$87, $A,$9A, $A,$9F, $A,$9E,	6,$9F,	0
byte_13CEF9:.BYTE  $A,$84, $A,$9F, $A,$9E, $A,$9F, $A,$9C, $A,$9F, $A,$9E, $A,$9F
		
		.BYTE  $A,$99, $A,$9B, $A,$9A, $A,$9B, $A,$9A, $A,$84, $A,$87, $A,$84
		.BYTE	0
byte_13CF1A:.BYTE  $A,$9A, $A,$84, $A,$9B, $A,$84, $A,$99, $A,$84, $A,$9A, $A,$84
		
		.BYTE  $A,$87, $A,$84, $A,$9A, $A,$87, $A,$83, $C,$9F, $C,$AA,	6,$9F
		.BYTE	0
byte_13CF3B:.BYTE $30,$AA,	0	
byte_13CF3E:.BYTE  $C,$AA,	0	
byte_13CF41:.BYTE  $C,$90, $C,$90, $C,$90, $C,$90, $C,$96, $C,$96, $C,$96, $C,$96
		
		.BYTE  $C,$97, $C,$97, $C,$97, $C,$97, $C,$E8, $C,$E8, $C,$E8, $C,$E8
		.BYTE  $C,$EB,	0
byte_13CF64:.BYTE  $C,$EB,	2,$AA, $C,$EB, $C,$EB,	2,$AA,	0 
byte_13CF6F:.BYTE  $C,$97, $C,$97, $C,$97, $C,$97,	6,$AA, $C,$90, $C,$90, $C,$90
		
		.BYTE  $C,$90,	6,$AA, $C,$95, $C,$95, $C,$95, $C,$95,	6,$AA, $C,$96
		.BYTE  $C,$96, $C,$96, $C,$96,	6,$AA,	0
byte_13CF98:.BYTE $3E,$AA, $C,$EB, $C,$EB, $C,$EB, $C,$EB, $C,$EB, $C,$EB, $C,$EB
		
		.BYTE  $C,$EB,	0
byte_13CFAB:.BYTE  $C,$84, $C,$AA, $C,$84, $C,$AA, $A,$9B, $A,$AA, $A,$9A, $A,$AA
		
		.BYTE  $A,$87, $A,$AA, $C,$84, $C,$AA, $C,$84, $C,$AA, $A,$9B, $A,$AA
		.BYTE  $A,$9A, $A,$AA, $A,$83, $A,$AA,	0
byte_13CFD4:.BYTE  $C,$84, $C,$AA, $C,$84,	4,$AA,	6,$84,	6,$80, $C,$83,	8,$AA
		
		.BYTE  $C,$9F, $C,$AA,	6,$9F, $A,$99, $A,$9B, $A,$9A,	0
byte_13CFF1:.BYTE  $C,$84, $C,$AA, $A,$84, $A,$AA, $A,$83, $C,$80, $C,$AA, $A,$80
		
		.BYTE  $A,$AA, $A,$83, $C,$9A, $C,$AA, $A,$9A, $A,$AA, $A,$83, $A,$87
		.BYTE  $A,$AA, $A,$9A, $A,$AA,	0
byte_13D018:.BYTE  $C,$83, $C,$AA, $C,$83, $C,$AA, $C,$9F, $C,$AA, $C,$9F, $C,$AA
		
		.BYTE  $C,$9A, $C,$AA, $C,$9A, $C,$AA, $C,$87, $C,$AA, $C,$87, $C,$AA
		.BYTE  $A,$9F, $A,$AA, $C,$9F, $C,$AA, $C,$9A, $C,$AA, $C,$9F, $C,$AA
		.BYTE	2,$9F,	0
byte_13D04B:.BYTE  $C,$83,	8,$AA, $C,$B7,	8,$AA, $C,$83,	8,$AA, $C,$9A,	8,$AA
		
		.BYTE  $C,$83,	8,$AA, $C,$B7,	8,$AA, $C,$83,	8,$AA, $C,$9A,	8,$AA
		.BYTE	0
byte_13D06C:.BYTE  $C,$83,	8,$AA, $C,$B7,	8,$AA, $C,$83,	8,$AA, $C,$8A,	8,$AA
		
		.BYTE  $C,$83,	8,$AA, $C,$B7,	8,$AA, $C,$83,	8,$AA, $C,$8A,	8,$AA
		.BYTE	0,  0
byte_13D08E:.BYTE  $F,$97,$D0,$AF,$D0,$D0,$D0,$DC,$D0,$FD, $F,$FE,$A0,$FF,$B0,  0
		
		.BYTE	0,  0,	0,  0,	0,  1,$FF,$D0,	0,  0,	0,  0,	0,  2,	3,$FC
		.BYTE	0,$FD, $F,$FE,$A0,$FF,$D0,  0,	0,  0,	0,  0,	4,$FF,$C0,  0
		.BYTE $F1,$F1,$F1,$F1,	5,  6,$FF,$C0,	0,$F1,$F1,$F1,$F1,  7,	8,  9
		.BYTE $FC,  0,$FD, $F,$FE,$A0,$FF,$8F, $A, $B, $C, $D,$FC,  0,$FD, $F
		.BYTE $FE,$A0, $E, $E, $F, $F,$FC,  0
off_13D0E6:.WORD byte_13D132	
		.WORD byte_13D153
		.WORD byte_13D174
		.WORD byte_13D195
		.WORD byte_13D1B6
		.WORD byte_13D1D7
		.WORD byte_13D1F8
		.WORD byte_13D219
		.WORD byte_13D23A
		.WORD byte_13D25B
		.WORD byte_13D27C
		.WORD byte_13D29D
		.WORD byte_13D2BE
		.WORD byte_13D2DF
		.WORD byte_13D300
		.WORD byte_13D319
		.WORD byte_13D31E
		.WORD byte_13D321
		.WORD byte_13D326
		.WORD byte_13D32D
		.WORD byte_13D332
		.WORD byte_13D337
		.WORD byte_13D33C
		.WORD byte_13D341
		.WORD byte_13D346
		.WORD byte_13D349
		.WORD byte_13D34E
		.WORD byte_13D355
		.WORD byte_13D35A
		.WORD byte_13D35F
		.WORD byte_13D364
		.WORD byte_13D367
		.WORD byte_13D36A
		.WORD byte_13D371
		.WORD byte_13D378
		.WORD byte_13D381
		.WORD byte_13D388
		.WORD byte_13D38F
byte_13D132:.BYTE  $C,$9F, $C,$9F, $C,$9F, $C,$9F, $C,$9F, $C,$9F, $C,$9F, $C,$9F
		
		.BYTE  $C,$90, $C,$90, $C,$90, $C,$90, $C,$90, $C,$90, $C,$90, $C,$90
		.BYTE	0
byte_13D153:.BYTE  $C,$96, $C,$96, $C,$96, $C,$96, $C,$96, $C,$96, $C,$96, $C,$96
		
		.BYTE  $C,$96, $C,$96, $C,$96, $C,$96, $C,$96, $C,$96, $C,$96, $C,$96
		.BYTE	0
byte_13D174:.BYTE  $C,$97, $C,$97, $C,$97, $C,$97, $C,$97, $C,$97, $C,$97, $C,$97
		
		.BYTE  $C,$96, $C,$96, $C,$96, $C,$96, $C,$96, $C,$96, $C,$96, $C,$96
		.BYTE	0
byte_13D195:.BYTE  $C,$90, $C,$90, $C,$90, $C,$90, $C,$90, $C,$90, $C,$90, $C,$90
		
		.BYTE  $C,$96, $C,$96, $C,$96, $C,$96, $C,$97, $C,$97, $C,$97, $C,$97
		.BYTE	0
byte_13D1B6:.BYTE  $C,$95, $C,$95, $C,$95, $C,$95, $C,$95, $C,$95, $C,$95, $C,$95
		
		.BYTE  $C,$97, $C,$97, $C,$97, $C,$97, $C,$97, $C,$97, $C,$97, $C,$97
		.BYTE	0
byte_13D1D7:.BYTE  $C,$97, $C,$97, $C,$97, $C,$97, $C,$97, $C,$97, $C,$97, $C,$97
		
		.BYTE  $C,$95, $C,$95, $C,$95, $C,$95, $C,$EB, $C,$EB, $C,$EB, $C,$EB
		.BYTE	0
byte_13D1F8:.BYTE  $C,$96, $C,$96, $C,$96, $C,$96, $C,$96, $C,$96, $C,$96, $C,$96
		
		.BYTE  $C,$90, $C,$90, $C,$90, $C,$90, $C,$90, $C,$90, $C,$90, $C,$AA
		.BYTE	0
byte_13D219:.BYTE  $C,$90, $C,$90, $C,$90, $C,$90, $C,$90, $C,$90, $C,$90, $C,$90
		
		.BYTE  $C,$90, $C,$90, $C,$90, $C,$90, $C,$90, $C,$90, $C,$90, $C,$AA
		.BYTE	0
byte_13D23A:.BYTE  $C,$90, $C,$90, $C,$90, $C,$90, $C,$90, $C,$90, $C,$90, $C,$90
		
		.BYTE  $C,$95, $C,$95, $C,$95, $C,$95, $C,$95, $C,$95, $C,$95, $C,$95
		.BYTE	0
byte_13D25B:.BYTE  $C,$EB, $C,$EB, $C,$EB, $C,$EB, $C,$EB, $C,$EB, $C,$EB, $C,$EB
		
		.BYTE  $C,$EB, $C,$EB, $C,$EB, $C,$EB, $C,$EB, $C,$EB, $C,$EB, $C,$EB
		.BYTE	0
byte_13D27C:.BYTE  $C,$E8, $C,$E8, $C,$E8, $C,$E8, $C,$E8, $C,$E8, $C,$E8, $C,$E8
		
		.BYTE  $C,$EB, $C,$EB, $C,$EB, $C,$EB, $C,$EB, $C,$EB, $C,$EB, $C,$EB
		.BYTE	0
byte_13D29D:.BYTE  $C,$95, $C,$95, $C,$95, $C,$95, $C,$95, $C,$95, $C,$95, $C,$95
		
		.BYTE  $C,$EB, $C,$EB, $C,$EB, $C,$EB, $C,$E8, $C,$E8, $C,$E8, $C,$E8
		.BYTE	0
byte_13D2BE:.BYTE  $C,$EE, $C,$EE, $C,$EE, $C,$EE, $C,$EE, $C,$EE, $C,$EE, $C,$EE
		
		.BYTE  $C,$E8, $C,$E8, $C,$E8, $C,$E8, $C,$E8, $C,$E8, $C,$E8, $C,$E8
		.BYTE	0
byte_13D2DF:.BYTE  $C,$E8, $C,$E8, $C,$E8, $C,$E8, $C,$E8, $C,$E8, $C,$E8, $C,$E8
		
		.BYTE  $C,$EE, $C,$EE, $C,$EE, $C,$EE, $C,$EC, $C,$EC, $C,$EC, $C,$EC
		.BYTE	0
byte_13D300:.BYTE  $C,$EB, $C,$EB, $C,$EB, $C,$EB, $C,$EB, $C,$EB, $C,$EB, $C,$EB
		
		.BYTE  $C,$95, $C,$95, $C,$95, $A,$AA,	0
byte_13D319:.BYTE $1E,$83,$1E,$84,	0 
byte_13D31E:.BYTE $2E,$87,	0	
byte_13D321:.BYTE $1E,$84,$1E,$87,	0 
byte_13D326:.BYTE $1E,$84,	6,$87,	6,$83,	0 
byte_13D32D:.BYTE $1E,$9A,$1E,$84,	0 
byte_13D332:.BYTE $1E,$84,$1E,$9A,	0 
byte_13D337:.BYTE $1E,$87,$1E,$84,	0 
byte_13D33C:.BYTE $10,$84, $C,$AA,	0 
byte_13D341:.BYTE $1E,$84,$1E,$99,	0 
byte_13D346:.BYTE $2E,$98,	0	
byte_13D349:.BYTE $1E,$99,$1E,$98,	0 
byte_13D34E:.BYTE $1E,$99,	6,$9F,	6,$9C,	0 
byte_13D355:.BYTE $1E,$9F,$1E,$99,	0 
byte_13D35A:.BYTE $1E,$99,$1E,$9F,	0 
byte_13D35F:.BYTE $1E,$98,$1E,$99,	0 
byte_13D364:.BYTE $2E,$99,	0	
byte_13D367:.BYTE $2E,$AA,	0	
byte_13D36A:.BYTE $1E,$AA,	6,$EB,	6,$96,	0 
byte_13D371:.BYTE $1E,$AA,	6,$97,	6,$96,	0 
byte_13D378:.BYTE	6,$AA,	6,$EB,	6,$EA,	6,$EB,	0 
byte_13D381:.BYTE $1E,$AA,	6,$EC,	6,$EB,	0 
byte_13D388:.BYTE $1E,$AA,	6,$E8,	6,$EB,	0 
byte_13D38F:.BYTE	6,$AA,	6,$EC,	6,$EE,	6,$E8,	0,  0 ;	DATA XREF: BANK_13:D130o
byte_13D399:.BYTE	7,$A0,$D3,$CC,$D3,$F9,$D3,$FD, $F,$FE,$87,$FF,$C0,  0,$F1,$F1
		
		.BYTE $F1,$F1,	0,  1,	0,  1,	2,  3,	4,  1,	0,  1,	0,  1,	2,  5
		.BYTE	6,  7,	8,  9,	8,  9, $A, $B, $C,  9,	8,  9,	8,  9, $A, $D
		.BYTE  $E,$FC,	0,$FD, $F,$FE,$87,$FF,$B0,  0,	0,  0,	0,  0, $F,$10
		.BYTE  $F,$10,$11,$12,$13,$10, $F,$10, $F,$10,$11,$14,$15,$16,$17,$18
		.BYTE $17,$18,$19,$1A,$1B,$18,$17,$18,$17,$18,$19,$1C,$1D,$1E,$FC,  1
		.BYTE $FD, $F,$FE,$87,$FF,$8F,$1F,$20,$1F,$21,$1F,$1F,$1F,$22,$1F,$20
		.BYTE $1F,$21,$1F,$1F,$1F,$1F,$1F,$23,$1F,$24,$1F,$1F,$1F,$25,$1F,$1F
		.BYTE $1F,$1F,$1F,$1F,$1F,$1F,$FC,  1
apu_dat_13D421:.BYTE	1,  2,	4,  8	
		; music_func_13D484:loc_13D4C0r ...
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
		PLA
		STA	apu_unk_FE
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
		PLA
		STA	apu_unk_FE
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
		PLA
		TAX
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
		LDA	#$AC 
		STA	ptr_0
		LDA	#$80 
		STA	ptr_1
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
		LDA	#$3F 
		STA	ptr_1
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
		LDA	data_2
		CLC
		ADC	#$10
		STA	data_2
		LDA	data_3
		ADC	#0
		STA	data_3
		LDA	ptr_0
		CLC
		ADC	#$10
		STA	ptr_0
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
		; load_sprite_func_13DFA8p
		LDA	#$26 
		STA	ptr_0
		LDA	#$98 
		STA	ptr_1
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
		LDA	data_2
		CLC
		ADC	#2
		STA	data_2
		LDA	data_3
		ADC	#0
		STA	data_3
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
		LDA	#$54 
		STA	ptr_0
		LDA	#$84 
		STA	ptr_1
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
		LDA	ptr_0
		CLC
		ADC	#2
		STA	ptr_0
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
		LDA	data_2
		CLC
		ADC	#$20 
		STA	data_2
		LDA	data_3
		ADC	#0
		STA	data_3
		DEY
		JMP	loc_13E0AF
; ---------------------------------------------------------------------------

loc_13E0C4:
		LDA	data_2
		CLC
		ADC	tilemap_size_307
		STA	data_2
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
		LDA	data_2
		CLC
		ADC	#$20 
		STA	data_2
		LDA	data_3
		ADC	#0
		STA	data_3
		LDA	ptr_0
		CLC
		ADC	tilemapWidth_308
		STA	ptr_0
		LDA	ptr_1
		ADC	#0
		STA	ptr_1
		INC	tilemapTypeUnk_30B
		LDA	tilemapTypeUnk_30B
		CMP	inv_spr_dscr1_30C
		BCC	loc_13E12D
		JSR	wait_for_6F_flag_13E1C0
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
		JSR	wait_for_6F_flag_13E1C0
		RTS
; End of function sprites_func_13E178


Common_Code_00
		.include "common/common_funcs.asm"

; ---------------------------------------------------------------------------
		.include "garbage/bank_13_garbage.asm"

Vectors_13:
		.WORD NMI_E287
		.WORD Palette_1380AC
		.WORD return_13E2FE
; end of 'BANK_13'