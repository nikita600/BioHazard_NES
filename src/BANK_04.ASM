; Segment type:	Pure code
		;.segment BANK_04
		* =  $8000

; =============== S U B	R O U T	I N E =======================================


bank_switch_48000:			; CODE XREF: bank_switch_48000+73p
					; bank_switch_48000+9Aj ...
		LDA	#$EE ; '�'
		STA	bank_switch_flag_6C
		LDA	bank_to_344
		CMP	#$10
		BCS	loc_48020
		ASL	A
		ASL	A
		ASL	A
		TAY
		LDA	mirroring_type_342
		BNE	loc_4801A
		STA	$8083,Y
		JMP	loc_48035
; ---------------------------------------------------------------------------

loc_4801A:				; CODE XREF: bank_switch_48000+12j
		STA	$8081,Y
		JMP	loc_48035
; ---------------------------------------------------------------------------

loc_48020:				; CODE XREF: bank_switch_48000+9j
		SEC
		SBC	#$10
		ASL	A
		ASL	A
		ASL	A
		TAY
		LDA	mirroring_type_342
		BNE	loc_48032
		STA	$8183,Y
		JMP	loc_48035
; ---------------------------------------------------------------------------

loc_48032:				; CODE XREF: bank_switch_48000+2Aj
		STA	$8181,Y

loc_48035:				; CODE XREF: bank_switch_48000+17j
					; bank_switch_48000+1Dj ...
		LDA	bank_to_344
		STA	bank_prev_345
		LDA	#$88 ; '�'
		STA	bank_switch_flag_6C
		LDA	bank_command_346
		CMP	#0
		BEQ	loc_48053
		CMP	#1
		BEQ	loc_48059
		CMP	#2
		BEQ	loc_48083
		CMP	#3
		BEQ	loc_48089
		RTS
; ---------------------------------------------------------------------------

loc_48053:				; CODE XREF: bank_switch_48000+44j
		JSR	load_palette_4F323
		JMP	loc_4808F
; ---------------------------------------------------------------------------

loc_48059:				; CODE XREF: bank_switch_48000+48j
		LDA	inv_sprite_idx_31C
		CMP	#$2F ; '/'
		BCC	loc_4807D
		LDA	bank_from_343
		PHA

exec_b13_c1_48064:
		LDA	#1
		STA	bank_command_346
		LDA	#banks_13
		STA	bank_to_344
		LDA	#4
		STA	bank_from_343
		JSR	bank_switch_48000

loc_48076:
		PLA
		STA	bank_from_343
		JMP	loc_4808F
; ---------------------------------------------------------------------------

loc_4807D:				; CODE XREF: bank_switch_48000+5Ej
		JSR	load_inventory_sprite_4F372
		JMP	loc_4808F
; ---------------------------------------------------------------------------

loc_48083:				; CODE XREF: bank_switch_48000+4Cj
		JSR	load_inventory_sprite_tilemap_4F443
		JMP	loc_4808F
; ---------------------------------------------------------------------------

loc_48089:				; CODE XREF: bank_switch_48000+50j
		JSR	sub_4F3B3
		JMP	loc_4808F
; ---------------------------------------------------------------------------

loc_4808F:				; CODE XREF: bank_switch_48000+56j
					; bank_switch_48000+7Aj ...
		LDA	#$FF
		STA	bank_command_346
		LDA	bank_from_343
		STA	bank_to_344
		JMP	bank_switch_48000
; End of function bank_switch_48000

; ---------------------------------------------------------------------------
Palette_4809D:	.WORD byte_48105	; DATA XREF: BANK_04:FFFCo
		.WORD byte_48115
		.WORD byte_48125
		.WORD byte_48135
		.WORD byte_48145
		.WORD byte_48155
		.WORD byte_48165
		.WORD byte_48175
		.WORD byte_48185
		.WORD byte_48195
		.WORD byte_481A5
		.WORD byte_481B5
		.WORD byte_481C5
		.WORD byte_481D5
		.WORD byte_481E5
		.WORD byte_481F5
		.WORD byte_48205
		.WORD byte_48215
		.WORD byte_48225
		.WORD byte_48235
		.WORD byte_48245
		.WORD byte_48255
		.WORD byte_48265
		.WORD byte_48275
		.WORD byte_48285
		.WORD byte_48295
		.WORD byte_482A5
		.WORD byte_482B5
		.WORD byte_482C5
		.WORD byte_482D5
		.WORD byte_482E5
		.WORD byte_482F5
		.WORD byte_48305
		.WORD byte_48315
		.WORD byte_48325
		.WORD byte_48335
		.WORD byte_48345
		.WORD byte_48355
		.WORD byte_48365
		.WORD byte_48375
		.WORD byte_48385
		.WORD byte_48395
		.WORD byte_483A5
		.WORD byte_483B5
		.WORD byte_483C5
		.WORD byte_483D5
		.WORD byte_483E5
		.WORD byte_483F5
		.WORD byte_48405
		.WORD byte_48415
		.WORD byte_48425
		.WORD byte_48435
byte_48105:	.BYTE $3E,  1,	6,$3D,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:Palette_4809Do
byte_48115:	.BYTE $3E,  1,	6,$3D,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:809Fo
byte_48125:	.BYTE $3E,  1,	6,$3D,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:80A1o
byte_48135:	.BYTE $3E,  1,	6,$3D,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:80A3o
byte_48145:	.BYTE $3E,  1,	6,$3D,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:80A5o
byte_48155:	.BYTE $3E,  1,	6,$3D,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:80A7o
byte_48165:	.BYTE $3E,  1,	6,$3D,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:80A9o
byte_48175:	.BYTE $3E,  1,	6,$3D,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:80ABo
byte_48185:	.BYTE $3E,  1,	6,$3D,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:80ADo
byte_48195:	.BYTE $3E,  1,	6,$3D,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:80AFo
byte_481A5:	.BYTE $3E,  1,	6,$3D,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:80B1o
byte_481B5:	.BYTE $3E,  1,	6,$3D,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:80B3o
byte_481C5:	.BYTE $3E,  1,	6,$3D,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:80B5o
byte_481D5:	.BYTE $3E,  1,	6,$3D,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:80B7o
byte_481E5:	.BYTE $3E,  1,	6,$3D,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:80B9o
byte_481F5:	.BYTE $3E,  1,	6,$3D,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:80BBo
byte_48205:	.BYTE $3E,  1,	0,  0,$3E,  1,	5,$3D,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:80BDo
byte_48215:	.BYTE $3E,  1,	0,  0,$3E,  1,	5,$3D,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:80BFo
byte_48225:	.BYTE $3E,  1,	0,  0,$3E,  1,	5,$3D,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:80C1o
byte_48235:	.BYTE $3E,  1,	0,  0,$3E,  1,	5,$3D,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:80C3o
byte_48245:	.BYTE $3E,  1,	0,  0,$3E,  1,	5,$3D,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:80C5o
byte_48255:	.BYTE $3E,  1,	0,  0,$3E,  1,	5,$3D,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:80C7o
byte_48265:	.BYTE $3E,  1,	0,  0,$3E,  1,	5,$3D,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:80C9o
byte_48275:	.BYTE $3E,  1,	0,  0,$3E,  1,	5,$3D,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:80CBo
byte_48285:	.BYTE $3E,  1,	0,  0,$3E,  1,	5,$3D,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:80CDo
byte_48295:	.BYTE $3E,  1,	0,  0,$3E,  1,	5,$3D,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:80CFo
byte_482A5:	.BYTE $3E,  1,	0,  0,$3E,  1,	5,$3D,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:80D1o
byte_482B5:	.BYTE $3E,  1,	0,  0,$3E,  1,	5,$3D,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:80D3o
byte_482C5:	.BYTE $3E,  1,	0,  0,$3E,  1,	5,$3D,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:80D5o
byte_482D5:	.BYTE $3E,  1,	0,  0,$3E,  1,	5,$3D,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:80D7o
byte_482E5:	.BYTE $3E,  1,	0,  0,$3E,  1,	5,$3D,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:80D9o
byte_482F5:	.BYTE $3E,  1,	0,  0,$3E,  1,	5,$3D,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:80DBo
byte_48305:	.BYTE $3E,  1,$16,$3D,$3E,  1,$15,$3D,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:80DDo
byte_48315:	.BYTE $3E,  1,$16,$3D,$3E,  1,$15,$3D,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:80DFo
byte_48325:	.BYTE $3E,  1,$16,$3D,$3E,  1,$15,$3D,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:80E1o
byte_48335:	.BYTE $3E,  1,$16,$3D,$3E,  1,$15,$3D,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:80E3o
byte_48345:	.BYTE $3E,  1,$16,$3D,$3E,  1,$15,$3D,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:80E5o
byte_48355:	.BYTE $3E,  1,$16,$3D,$3E,  1,$15,$3D,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:80E7o
byte_48365:	.BYTE $3E,  1,$16,$3D,$3E,  1,$15,$3D,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:80E9o
byte_48375:	.BYTE $3E,  1,$16,$3D,$3E,  1,$15,$3D,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:80EBo
byte_48385:	.BYTE $3E,  1,$16,$3D,$3E,  1,$15,$3D,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:80EDo
byte_48395:	.BYTE $3E,  1,$16,$3D,$3E,  1,$15,$3D,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:80EFo
byte_483A5:	.BYTE $3E, $A,$1C,  6,$3E,$1C,$2C,$30, $E, $E, $E, $E, $E, $E, $E, $E
					; DATA XREF: BANK_04:80F1o
byte_483B5:	.BYTE $3E,$30, $C,  6,$3E,$1C,$2C,$30,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:80F3o
byte_483C5:	.BYTE $3E,  7,$27,  6,$3E,$1C,$2C,$30,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:80F5o
byte_483D5:	.BYTE $3E,$30,$27,  7,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:80F7o
byte_483E5:	.BYTE $3E, $C,$1C,$16,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:80F9o
byte_483F5:	.BYTE $3E,$30, $A,  6,$3E,$1C,$2C,$30,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:80FBo
byte_48405:	.BYTE $3E,$30,$2D,$16,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:80FDo
byte_48415:	.BYTE $3E,$17,$2D,  6,$3E,$1C,$2C,$30,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:80FFo
byte_48425:	.BYTE $3E, $C,	8,$16,$3E,$3E,$3E,$3E,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:8101o
byte_48435:	.BYTE $3E, $A,	7,$16,$3E,$1C,$2C,$30,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:8103o
TilemapsUnk:	.WORD off_484AD
		.WORD off_484C1
		.WORD off_484D5
		.WORD off_484E9
		.WORD off_484FD
		.WORD off_48511
		.WORD off_48525
		.WORD off_48539
		.WORD off_4854D
		.WORD off_48561
		.WORD off_48575
		.WORD off_48589
		.WORD off_4859D
		.WORD off_485B1
		.WORD off_485C5
		.WORD off_485D9
		.WORD off_485ED
		.WORD off_48601
		.WORD off_48615
		.WORD off_48629
		.WORD off_4863D
		.WORD off_48651
		.WORD off_48665
		.WORD off_48679
		.WORD off_4868D
		.WORD off_486A1
		.WORD off_486B5
		.WORD off_486C9
		.WORD off_486DD
		.WORD off_486F1
		.WORD off_48705
		.WORD off_48719
		.WORD off_4872D
		.WORD off_48741
		.WORD off_48755
		.WORD off_48769
		.WORD off_4877D
		.WORD off_48791
		.WORD off_487A5
		.WORD off_487B9
		.WORD off_487CD
		.WORD off_487E1
		.WORD off_487F5
		.WORD off_48A29
		.WORD byte_48BA1
		.WORD off_48CBB
		.WORD off_48E33
		.WORD off_48FAB
		.WORD off_49123
		.WORD off_4929B
		.WORD off_493AF
		.WORD off_495E3
off_484AD:	.WORD byte_484AF	; DATA XREF: BANK_04:TilemapsUnko
byte_484AF:	.BYTE	4,  4,	0,  1,	2,  3,	5,  6,	7,  8,	9, $A, $B, $C, $D, $E
					; DATA XREF: BANK_04:off_484ADo
		.BYTE  $F,$10
off_484C1:	.WORD byte_484C3	; DATA XREF: BANK_04:8447o
byte_484C3:	.BYTE	4,  4,	0,  1,	2,  2,	3,  4,	5,  6,	7,  8,	9, $A,	2,  2
					; DATA XREF: BANK_04:off_484C1o
		.BYTE  $B, $C
off_484D5:	.WORD byte_484D7	; DATA XREF: BANK_04:8449o
byte_484D7:	.BYTE	4,  4,	0,  1,	2,  3,	5,  6,	7,  8,	9, $A, $B, $C, $D, $E
					; DATA XREF: BANK_04:off_484D5o
		.BYTE  $F,$10
off_484E9:	.WORD byte_484EB	; DATA XREF: BANK_04:844Bo
byte_484EB:	.BYTE	4,  4,	0,  1,	2,  2,	3,  4,	2,  2,	2,  5,	6,  7,	2,  2
					; DATA XREF: BANK_04:off_484E9o
		.BYTE	5,  8
off_484FD:	.WORD byte_484FF	; DATA XREF: BANK_04:844Do
byte_484FF:	.BYTE	4,  4,	0,  0,	0,  0,	1,  2,	3,  4,	5,  6,	7,  8,	0,  9
					; DATA XREF: BANK_04:off_484FDo
		.BYTE  $A,  0
off_48511:	.WORD byte_48513	; DATA XREF: BANK_04:844Fo
byte_48513:	.BYTE	4,  4,	0,  1,	0,  0,	2,  3,	4,  0,	5,  6,	7,  0,	0,  8
					; DATA XREF: BANK_04:off_48511o
		.BYTE	9,  0
off_48525:	.WORD byte_48527	; DATA XREF: BANK_04:8451o
byte_48527:	.BYTE	4,  4,	0,  0,	0,  0,	1,  2,	3,  0,	0,  4,	5,  6,	0,  7
					; DATA XREF: BANK_04:off_48525o
		.BYTE	8,  9
off_48539:	.WORD byte_4853B	; DATA XREF: BANK_04:8453o
byte_4853B:	.BYTE	4,  4,	0,  1,	2,  2,	3,  4,	5,  2,	2,  6,	7,  8,	2,  2
					; DATA XREF: BANK_04:off_48539o
		.BYTE	9, $A
off_4854D:	.WORD byte_4854F	; DATA XREF: BANK_04:8455o
byte_4854F:	.BYTE	4,  4,	0,  1,	2,  0,	3,  4,	5,  6,	0,  7,	8,  0,	0,  0
					; DATA XREF: BANK_04:off_4854Do
		.BYTE	0,  0
off_48561:	.WORD byte_48563	; DATA XREF: BANK_04:8457o
byte_48563:	.BYTE	4,  4,	0,  1,	2,  3,	5,  6,	7,  8,	9, $A, $B, $C, $D, $E
					; DATA XREF: BANK_04:off_48561o
		.BYTE  $F,$10
off_48575:	.WORD byte_48577	; DATA XREF: BANK_04:8459o
byte_48577:	.BYTE	4,  4,	0,  1,	2,  3,	4,  5,	6,  7,	8,  9, $A, $B, $C, $D
					; DATA XREF: BANK_04:off_48575o
		.BYTE  $E, $F
off_48589:	.WORD byte_4858B	; DATA XREF: BANK_04:845Bo
byte_4858B:	.BYTE	4,  4,	0,  1,	2,  3,	4,  5,	6,  7,	8,  9, $A, $B, $C, $D
					; DATA XREF: BANK_04:off_48589o
		.BYTE  $D,  3
off_4859D:	.WORD byte_4859F	; DATA XREF: BANK_04:845Do
byte_4859F:	.BYTE	4,  4,	0,  0,	0,  0,	1,  2,	3,  4,	5,  6,	7,  8,	0,  9
					; DATA XREF: BANK_04:off_4859Do
		.BYTE  $A,  0
off_485B1:	.WORD byte_485B3	; DATA XREF: BANK_04:845Fo
byte_485B3:	.BYTE	4,  4,	0,  1,	2,  0,	3,  4,	5,  6,	7,  8,	9, $A, $B, $C
					; DATA XREF: BANK_04:off_485B1o
		.BYTE  $D, $E
off_485C5:	.WORD byte_485C7	; DATA XREF: BANK_04:8461o
byte_485C7:	.BYTE	4,  4,	0,  1,	2,  3,	5,  6,	7,  8,	9, $A, $B, $C, $D, $E
					; DATA XREF: BANK_04:off_485C5o
		.BYTE  $F,  4
off_485D9:	.WORD byte_485DB	; DATA XREF: BANK_04:8463o
byte_485DB:	.BYTE	4,  4,	0,  1,	0,  0,	2,  3,	4,  0,	5,  6,	7,  0,	0,  0
					; DATA XREF: BANK_04:off_485D9o
		.BYTE	8,  0
off_485ED:	.WORD byte_485EF	; DATA XREF: BANK_04:8465o
byte_485EF:	.BYTE	4,  4,	0,  1,	2,  3,	4,  5,	6,  7,	8,  9, $A, $B, $C, $D
					; DATA XREF: BANK_04:off_485EDo
		.BYTE  $E,  0
off_48601:	.WORD byte_48603	; DATA XREF: BANK_04:8467o
byte_48603:	.BYTE	4,  4,	0,  1,	2,  2,	3,  4,	5,  2,	2,  6,	7,  8,	2,  9
					; DATA XREF: BANK_04:off_48601o
		.BYTE  $A, $B
off_48615:	.WORD byte_48617	; DATA XREF: BANK_04:8469o
byte_48617:	.BYTE	4,  4,	0,  1,	2,  3,	5,  6,	7,  8,	9, $A, $B, $C,	4, $D
					; DATA XREF: BANK_04:off_48615o
		.BYTE  $E,  4
off_48629:	.WORD byte_4862B	; DATA XREF: BANK_04:846Bo
byte_4862B:	.BYTE	4,  4,	0,  1,	2,  3,	4,  5,	6,  7,	8,  9, $A, $B, $C, $D
					; DATA XREF: BANK_04:off_48629o
		.BYTE  $E,  0
off_4863D:	.WORD byte_4863F	; DATA XREF: BANK_04:846Do
byte_4863F:	.BYTE	4,  4,	0,  1,	2,  3,	5,  6,	7,  8,	9, $A, $B, $C, $D, $E
					; DATA XREF: BANK_04:off_4863Do
		.BYTE  $F,$10
off_48651:	.WORD byte_48653	; DATA XREF: BANK_04:846Fo
byte_48653:	.BYTE	4,  4,	0,  0,	0,  0,	0,  1,	2,  3,	4,  5,	6,  7,	8,  0
					; DATA XREF: BANK_04:off_48651o
		.BYTE	9, $A
off_48665:	.WORD byte_48667	; DATA XREF: BANK_04:8471o
byte_48667:	.BYTE	4,  4,	0,  0,	0,  0,	1,  2,	3,  4,	5,  6,	7,  8,	0,  9
					; DATA XREF: BANK_04:off_48665o
		.BYTE  $A,  0
off_48679:	.WORD byte_4867B	; DATA XREF: BANK_04:8473o
byte_4867B:	.BYTE	4,  4,	0,  1,	2,  2,	3,  4,	5,  2,	2,  6,	7,  8,	2,  2
					; DATA XREF: BANK_04:off_48679o
		.BYTE	6,  9
off_4868D:	.WORD byte_4868F	; DATA XREF: BANK_04:8475o
byte_4868F:	.BYTE	4,  4,	0,  1,	2,  2,	3,  4,	2,  2,	2,  5,	6,  7,	2,  2
					; DATA XREF: BANK_04:off_4868Do
		.BYTE	5,  8
off_486A1:	.WORD byte_486A3	; DATA XREF: BANK_04:8477o
byte_486A3:	.BYTE	4,  4,	0,  0,	1,  0,	2,  3,	4,  5,	6,  7,	8,  9, $A,  0
					; DATA XREF: BANK_04:off_486A1o
		.BYTE  $B, $C
off_486B5:	.WORD byte_486B7	; DATA XREF: BANK_04:8479o
byte_486B7:	.BYTE	4,  4,	0,  1,	2,  3,	5,  6,	7,  8,	9, $A, $B, $C, $D, $E
					; DATA XREF: BANK_04:off_486B5o
		.BYTE	4,  4
off_486C9:	.WORD byte_486CB	; DATA XREF: BANK_04:847Bo
byte_486CB:	.BYTE	4,  4,	0,  0,	0,  0,	0,  1,	0,  2,	3,  4,	5,  6,	7,  8
					; DATA XREF: BANK_04:off_486C9o
		.BYTE	9, $A
off_486DD:	.WORD byte_486DF	; DATA XREF: BANK_04:847Do
byte_486DF:	.BYTE	4,  4,	0,  1,	2,  3,	5,  6,	7,  8,	9, $A, $B, $C, $D, $E
					; DATA XREF: BANK_04:off_486DDo
		.BYTE  $F,$10
off_486F1:	.WORD byte_486F3	; DATA XREF: BANK_04:847Fo
byte_486F3:	.BYTE	4,  4,	0,  1,	2,  2,	3,  4,	5,  2,	2,  6,	7,  8,	2,  2
					; DATA XREF: BANK_04:off_486F1o
		.BYTE	9, $A
off_48705:	.WORD byte_48707	; DATA XREF: BANK_04:8481o
byte_48707:	.BYTE	4,  4,	0,  0,	0,  0,	1,  2,	3,  4,	5,  6,	7,  8,	0,  0
					; DATA XREF: BANK_04:off_48705o
		.BYTE	9, $A
off_48719:	.WORD byte_4871B	; DATA XREF: BANK_04:8483o
byte_4871B:	.BYTE	4,  4,	0,  0,	0,  0,	1,  2,	3,  4,	5,  6,	7,  8,	0,  0
					; DATA XREF: BANK_04:off_48719o
		.BYTE	9, $A
off_4872D:	.WORD byte_4872F	; DATA XREF: BANK_04:8485o
byte_4872F:	.BYTE	4,  4,	0,  1,	2,  3,	0,  4,	5,  6,	0,  7,	8,  9, $A, $B
					; DATA XREF: BANK_04:off_4872Do
		.BYTE  $C, $D
off_48741:	.WORD byte_48743	; DATA XREF: BANK_04:8487o
byte_48743:	.BYTE	4,  4,	0,  1,	2,  3,	5,  6,	7,  8,	9, $A, $B, $C, $D, $E
					; DATA XREF: BANK_04:off_48741o
		.BYTE  $F,$10
off_48755:	.WORD byte_48757	; DATA XREF: BANK_04:8489o
byte_48757:	.BYTE	4,  4,	0,  1,	2,  3,	5,  6,	7,  8,	9, $A, $B, $C, $D, $E
					; DATA XREF: BANK_04:off_48755o
		.BYTE  $F,$10
off_48769:	.WORD byte_4876B	; DATA XREF: BANK_04:848Bo
byte_4876B:	.BYTE	4,  4,	0,  1,	2,  2,	3,  4,	5,  6,	2,  7,	8,  9,	2,  2
					; DATA XREF: BANK_04:off_48769o
		.BYTE  $A, $B
off_4877D:	.WORD byte_4877F	; DATA XREF: BANK_04:848Do
byte_4877F:	.BYTE	4,  4,	0,  1,	2,  2,	3,  4,	5,  6,	2,  7,	8,  9,	2,  2
					; DATA XREF: BANK_04:off_4877Do
		.BYTE  $A, $B
off_48791:	.WORD byte_48793	; DATA XREF: BANK_04:848Fo
byte_48793:	.BYTE	4,  4,	0,  1,	2,  3,	5,  6,	7,  8,	9, $A, $B, $C, $D, $E
					; DATA XREF: BANK_04:off_48791o
		.BYTE  $F,$10
off_487A5:	.WORD byte_487A7	; DATA XREF: BANK_04:8491o
byte_487A7:	.BYTE	4,  4,	0,  1,	2,  3,	5,  6,	7,  8,	9, $A, $B, $C,	4, $D
					; DATA XREF: BANK_04:off_487A5o
		.BYTE  $E,  4
off_487B9:	.WORD byte_487BB	; DATA XREF: BANK_04:8493o
byte_487BB:	.BYTE	4,  4,	0,  1,	0,  0,	2,  3,	4,  0,	5,  6,	7,  0,	0,  8
					; DATA XREF: BANK_04:off_487B9o
		.BYTE	9,  0
off_487CD:	.WORD byte_487CF	; DATA XREF: BANK_04:8495o
byte_487CF:	.BYTE	4,  4,	0,  1,	2,  0,	3,  4,	5,  6,	7,  8,	9, $A, $B, $C
					; DATA XREF: BANK_04:off_487CDo
		.BYTE  $D, $E
off_487E1:	.WORD byte_487E3	; DATA XREF: BANK_04:8497o
byte_487E3:	.BYTE	4,  4,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:off_487E1o
		.BYTE	0,  0
off_487F5:	.WORD byte_48801	; DATA XREF: BANK_04:8499o
		.WORD byte_4885D
		.WORD byte_488B9
		.WORD byte_48915
		.WORD byte_48971
		.WORD byte_489CD
byte_48801:	.BYTE  $A,  9,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:off_487F5o
		.BYTE	3,  0,	0,  0,	0,  0,	0,  0,	0,  0,	8,  9,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,$11,$12,$13,  0,	0,  0,	0,  0,	0,  0,$1C,$1D
		.BYTE $1E,  0,	0,  0,	0,  0,	0,  0,$27,$28,$29,  0,	0,  0,	0,  0
		.BYTE	0,  0,$33,$34,$35,  0,	0,  0,	0,  0,	0,  0,$40,$41,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_4885D:	.BYTE  $A,  9,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:87F7o
		.BYTE	4,  5,	0,  0,	0,  0,	0,  0,	0,  0, $A, $B, $C,  0,	0,  0
		.BYTE	0,  0,	0,  0,$14,$15,$16,  0,	0,  0,	0,  0,	0,  0,$1F,$20
		.BYTE $21,  0,	0,  0,	0,  0,	0,$2A,$2B,$2C,$2D,$2E,	0,  0,	0,  0
		.BYTE	0,$36,$37,$38,$39,$3A,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_488B9:	.BYTE  $A,  9,	0,  0,	0,  0,	0,  1,	2,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:87F9o
		.BYTE	0,  6,	7,  0,	0,  0,	0,  0,	0, $D, $E, $F,$10,  0,	0,  0
		.BYTE	0,  0,	0,$17,$18,$19,$1A,$1B,	0,  0,	0,  0,	0,$22,$23,$24
		.BYTE $25,$26,	0,  0,	0,  0,	0,$2F,$30,$31,$32,  0,	0,  0,	0,  0
		.BYTE	0,$3B,$3C,$3D,$3E,$3F,	0,  0,	0,  0,	0,$42,$43,$44,$45,$46
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_48915:	.BYTE  $A,  9,	0,  0,	0,  0,$47,$48,$49,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:87FBo
		.BYTE $4D,$4E,$4F,  0,	0,  0,	0,  0,	0,$57,$58,$59,$5A,  0,	0,  0
		.BYTE	0,$63,$64,$65,$66,$67,	0,  0,	0,  0,	0,$75,$76,$77,$78,$79
		.BYTE $7A,  0,	0,  0,$8B,$8C,$8D,$8E,$8F,$90,$91,$92,$93,  0,$A5,$A6
		.BYTE $A7,$A8,$A9,$AA,$AB,$AC,$AD,$AE,$C1,$C2,$C3,$C4,$C5,$C6,$C7,$C8
		.BYTE $C9,$CA,$DC,$DD,$DE,$DF,$E0,$E1,$E2,$E3,$E4,  0
byte_48971:	.BYTE  $A,  9,	0,  0,	0,  0,	0,$4A,$4B,$4C,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:87FDo
		.BYTE $50,$51,$52,$53,	0,  0,	0,  0,	0,$5B,$5C,$5D,$5E,$5F,	0,  0
		.BYTE	0,  0,$68,$69,$6A,$6B,$6C,$6D,$6E,  0,	0,  0,$7B,$7C,$7D,$7E
		.BYTE $7F,$80,$81,$82,	0,  0,$94,$95,$96,$97,$98,$99,$9A,$9B,	0,$AF
		.BYTE $B0,$B1,$B2,$B3,$B4,$B5,$B6,  0,	0,$CB,$CC,$CD,$CE,$CF,$D0,$D1
		.BYTE $D2,  0,$E5,$E6,$E7,  0,$E8,$E9,	0,  0,	0,  0
byte_489CD:	.BYTE  $A,  9,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:87FFo
		.BYTE	0,$54,$55,$56,	0,  0,	0,  0,	0,  0,	0,$60,$61,$62,	0,  0
		.BYTE	0,  0,	0,  0,$6F,$70,$71,$72,$73,$74,	0,  0,$83,$84,$85,$86
		.BYTE $87,$88,$89,$8A,	0,$9C,$9D,$9E,$9F,$A0,$A1,$A2,$A3,$A4,$B7,$B8
		.BYTE $B9,$BA,$BB,$BC,$BD,$BE,$BF,$C0,$D3,$D4,$D5,$D6,$D7,$D8,$D9,$DA
		.BYTE	0,$DB,$EA,$EB,$EC,$ED,$EE,$EF,$F0,$F1,$F2,  0
off_48A29:	.WORD byte_48A31	; DATA XREF: BANK_04:849Bo
		.WORD byte_48A8D
		.WORD byte_48AE9
		.WORD byte_48B45
byte_48A31:	.BYTE  $A,  9,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:off_48A29o
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,$14,$15,$16,$17,	0,  0,	0,  0,	0,$24,$25,$26
		.BYTE $27,$28,	0,  0,	0,  0,	0,$3C,$3D,$3E,$3F,$40,	0,  0,	0,  0
		.BYTE	0,  0,$52,$53,$54,$55,	0,  0,	0,  0,	0,  0,$65,$66,$67,$68
		.BYTE	0,  0,	0,  0,	0,  0, $B,$7C,$7D,  0,	0,  0
byte_48A8D:	.BYTE  $A,  9,	0,  0,	0,  0,	1,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:8A2Bo
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0, $B, $C,  0, $B, $D,	0,  0
		.BYTE	0,  0,$18,$19,$1A,$1B,$1C,$1D,	0,  0,	0,  0,$29,$2A,$2B,$2C
		.BYTE $2D,$2E,	0,  0,	0,  0,$41,$42,$43,$44,$45,$46,$47,  0,	0,  0
		.BYTE $56,$57,$58,$59,$5A,$5B,	0,  0,	0,  0,$69,$6A,$6B,$6C,$6D,$6E
		.BYTE	0,  0,	0,  0,$7E,$7F,$80,$81,$82,$83,$84,  0
byte_48AE9:	.BYTE  $A,  9,	0,  0,	0,  0,	2,  3,	4,  5,	0,  0,	0,  0,	6,  7
					; DATA XREF: BANK_04:8A2Do
		.BYTE	8,  0,	9, $A,	0,  0,	0,  0, $E, $F,$10,$11,$12,$13,	0,  0
		.BYTE	0,  0,$1E,$1F,$20,$21,$22,$23,	0,  0,	0,  0,$2F,$30,$31,$32
		.BYTE $33,$34,	0,  0,	0,  0,	0,$48,$49,$4A,$4B,  0,	0,  0,	0,  0
		.BYTE	0,  1,$5C,$5D,$5E,  0,	0,  0,	0,  0,$6F,$70,$71,$72,$73,$74
		.BYTE	0,  0,	0,  0,$85,$86,$87,$88,$89,$8A,	0,  0
byte_48B45:	.BYTE  $A,  9,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:8A2Fo
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$35,$36,$37,$38
		.BYTE $39,$3A,$3B,  0,	0,  0, $B,$4C,$4D,$4E,$4F,$50,$51,  0,	0,  0
		.BYTE $5F,$60,$61,$62,$63,$64,	0,  0,	0,$75,$76,$77,$78,$79,$7A,$7B
		.BYTE	0,  0,	0,$8B,$8C,$8D,$8E,$8F,$90,$91,	0,  0
byte_48BA1:	.BYTE $A7,$8B,	3,$8C,$5F,$8C, $A,  9,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:849Do
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,$2D,$2E,$2F,	0,  0,	0,  0,	0,  0,	0,$3D,$3E,$3F
		.BYTE	0,  0,	0,  0,	0,  0,	0,$4D,$4E,$4F,	0,  0,	0,  0,	0,  0
		.BYTE	0,$5E,$5F,  0,	0,  0,	0,  0,	0,  0,	0,$6C,$6D,  0,	0,  0
		.BYTE	0,  0, $A,  9,	0,  0,	1,  2,	3,  0,	4,  5,	0,  0,	0,  0
		.BYTE	6,  7,	8,  9, $A, $B, $C,  0,	0,  0,$12,$13,$14,$15,$16,$17
		.BYTE $18,$19,	0,  0,	0,$20,$21,$22,$23,$24,$25,$26,	0,  0,$30,$31
		.BYTE $32,$33,$34,$35,$36,  0,	0,  0,$40,$41,$42,$43,$44,  0,$45,  0
		.BYTE	0,  0,$50,$51,$52,$53,$54,$55,$56,  0,	0,  0,	0,  0,$60,$61
		.BYTE $62,$63,$64,  0,	0,  0,	0,  0,	0,$6E,$6F,$70,	0,  0, $A,  9
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0, $D, $E, $F
		.BYTE $10,$11,	0,  0,	0,  0,	0,$1A,$1B,$1C,$1D,$1E,$1F,  0,	0,  0
		.BYTE	0,$27,$28,$29,$2A,$2B,$2C,  0,	0,  0,	0,$37,$38,$39,$3A,$3B
		.BYTE $3C,  0,	0,  0,	0,$46,$47,$48,$49,$4A,$4B,$4C,	0,  0,$57,$58
		.BYTE $59,$5A,$5B,$5C,$5D,  0,	0,  0,$65,$66,$67,$68,$69,$6A,$6B,  0
		.BYTE	0,  0,	0,$71,$72,$73,$74,$75,	0,  0
off_48CBB:	.WORD byte_48CC3	; DATA XREF: BANK_04:849Fo
		.WORD byte_48D1F
		.WORD byte_48D7B
		.WORD byte_48DD7
byte_48CC3:	.BYTE  $A,  9,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:off_48CBBo
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0, $B, $C,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$12,$13,$14,  0,	0,  0,	0,  0,	0,  0,$1B,$1C,$1D,  0
		.BYTE	0,  0,	0,  0,	0,  0,$27,$28,$29,  0,	0,  0,	0,  0,	0,$34
		.BYTE $35,$36,$37,$38,	0,  0,	0,  0,	0,$43,$44,$45,$46,$47,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,$52,$53,	0,  0,	0,  0
byte_48D1F:	.BYTE  $A,  9,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:8CBDo
		.BYTE	0,  0,$5B,$5C,$5D,  0,	0,  0,	0,  0,	0,$63,$64,$65,$66,  0
		.BYTE	0,  0,	0,  0,$6E,$6F,$70,$71,$72,$73,	0,  0,$7C,$7D,$7E,$7F
		.BYTE $80,$81,$82,$83,	0,$8C,$8D,$8E,$8F,$90,$91,$92,$93,$94,$9E,$9F
		.BYTE $A0,$A1,$A2,$A3,$A4,$A5,$A6,$A7,$B0,$B1,$B2,$B3,$B4,$B5,$B6,$B7
		.BYTE	0,$B8,$C0,$C1,$C2,$C3,$C4,$C5,$C6,$C7,$C8,  0
byte_48D7B:	.BYTE  $A,  9,	0,  0,	0,  0,	0,$54,$55,$56,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:8CBFo
		.BYTE $57,$58,$59,$5A,	0,  0,	0,  0,	0,$5E,$5F,$60,$61,$62,	0,  0
		.BYTE	0,  0,$67,$68,$69,$6A,$6B,$6C,$6D,  0,	0,  0,$74,$75,$76,$77
		.BYTE $78,$79,$7A,$7B,	0,  0,$84,$85,$86,$87,$88,$89,$8A,$8B,	0,$95
		.BYTE $96,$97,$98,$99,$9A,$9B,$9C,$9D,	0,$A8,$A9,$AA,$AB,$AC,$AD,$AE
		.BYTE $AF,  0,$B9,$BA,$BB,  0,$BC,$BD,	0,$BE,$BF,  0
byte_48DD7:	.BYTE  $A,  9,	0,  0,	0,  0,	1,  2,	3,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:8CC1o
		.BYTE	4,  5,	6,  0,	0,  0,	0,  0,	0,  7,	8,  9, $A,  0,	0,  0
		.BYTE	0, $D, $E, $F,$10,$11,	0,  0,	0,  0,	0,$15,$16,$17,$18,$19
		.BYTE $1A,  0,	0,  0,$1E,$1F,$20,$21,$22,$23,$24,$25,$26,  0,$2A,$2B
		.BYTE $2C,$2D,$2E,$2F,$30,$31,$32,$33,$39,$3A,$3B,$3C,$3D,$3E,$3F,$40
		.BYTE $41,$42,$48,$49,$4A,$4B,$4C,$4D,$4E,$4F,$50,$51
off_48E33:	.WORD byte_48E3B	; DATA XREF: BANK_04:84A1o
		.WORD byte_48E97
		.WORD byte_48EF3
		.WORD byte_48F4F
byte_48E3B:	.BYTE  $A,  9,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:off_48E33o
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,$38,$39,$3A,$3B,	0,  0,	0,$3C,	0,  0
		.BYTE $51,$52,$53,$54,$55,  0,	0,  0,	0,$61,$62,$63,$64,$65,$66,  0
		.BYTE	0,  0,	0,$6C,$6D,$6E,	0,  0,	0,  0,	0,  0
byte_48E97:	.BYTE  $A,  9,	0,  0,	1,  2,	3,  0,	0,  0,	0,  0,	0,  6,	7,  0
					; DATA XREF: BANK_04:8E35o
		.BYTE	0,  0,	8,  9, $A,  0, $E, $F,	0,  0,	0,  0,	0,$10,$11,  0
		.BYTE $17,$18,$19,$1A,$1B,$1C,$1D,  0,$1E,$1F,$27,$28,$29,$2A,$2B,$2C
		.BYTE $2D,$2E,	0,$2F,$3D,$3E,$3F,$40,$41,$42,$43,$44,$45,$46,$56,$57
		.BYTE	0,  0,	0,  0,	0,  0,$58,$59,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_48EF3:	.BYTE  $A,  9,	0,  0,	4,  5,	0,  0,	0,  0,	0,  0,	0,  0, $B, $C
					; DATA XREF: BANK_04:8E37o
		.BYTE  $D,  0,	0,  0,	0,  0,	0,$12,$13,$14,$15,$16,	0,  0,	0,  0
		.BYTE	0,$20,$21,$22,$23,$24,$25,$26,	0,  0,	0,$30,$31,$32,$33,$34
		.BYTE $35,$36,$37,  0,	0,$48,$49,$4A,$4B,$4C,$4D,$4E,$4F,$50,	0,$5A
		.BYTE $5B,$5C,$5D,$5E,$5F,  0,$60,  0,	0,$67,$68,$69,$6A,$6B,	0,  0
		.BYTE	0,  0,	0,$6F,$70,$71,$72,$73,	0,  0,	0,  0
byte_48F4F:	.BYTE  $A,  9,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$74,$75
					; DATA XREF: BANK_04:8E39o
		.BYTE $76,  0,$77,$78,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	4,$79,	0,  0,	0,  0,$7A,$7B,	0,  0
		.BYTE $7C,$7D,$7E,  0,	0,  0,$7F,  0,	0,$80,$81,$82,$83,  0,	0,$84
		.BYTE $85,$86,$87,$88,$89,$8A,$8B,  0,	0,$8C,$8D,$8E,$8F,$90,$91,$92
		.BYTE	0,  0,	0,$93,$94,$95,$96,$97,$98,$99,	0,  0
off_48FAB:	.WORD byte_48FB3	; DATA XREF: BANK_04:84A3o
		.WORD byte_4900F
		.WORD byte_4906B
		.WORD byte_490C7
byte_48FB3:	.BYTE  $A,  9,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:off_48FABo
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0, $C, $D,  0,	0,  0,	0,  0,	0,  0,$17,$18
		.BYTE $19,  0,	0,  0,	0,  0,	0,  0,$28,$29,$2A,  0,	0,  0,	0,  0
		.BYTE	0,  0,$3A,$3B,$3C,$3D,	0,  0,	0,  0,	0,  0,$4D,$4E,$4F,$50
		.BYTE	0,  0,	0,  0,	0,  0,$34,$63,$64,  0,	0,  0
byte_4900F:	.BYTE  $A,  9,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:8FADo
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0, $E, $F,$10,  0,	0,  0,	0,  0,	0,$1A,$1B,$1C
		.BYTE $1D,$1E,	0,  0,	0,  0,	0,$2B,$2C,$2D,$2E,$2F,	0,  0,	0,  0
		.BYTE	0,$3E,$3F,$40,$41,$42,	0,  0,	0,  0,	0,$51,$52,$53,$54,$55
		.BYTE	0,  0,	0,  0,$65,$66,$67,$68,$69,$6A,$6B,  0
byte_4906B:	.BYTE  $A,  9,	0,  0,	0,  0,	0,  0,	0,  1,	0,  0,	0,  0,	2,  3
					; DATA XREF: BANK_04:8FAFo
		.BYTE	0,  0,	4,  5,	0,  0,	0,  0,	6,  7,	8,  9, $A, $B,	0,  0
		.BYTE	0,  0,$11,$12,$13,$14,$15,$16,	0,  0,	0,  0,$1F,$20,$21,$22
		.BYTE $23,$24,	0,  0,	0,  0,	0,$30,$31,$32,$33,  0,	0,  0,	0,  0
		.BYTE	0,$43,$44,$45,$46,  0,	0,  0,	0,  0,$56,$57,$58,$59,$5A,$5B
		.BYTE	0,  0,	0,  0,$6C,$6D,$6E,$6F,$70,$71,	0,  0
byte_490C7:	.BYTE  $A,  9,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:8FB1o
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$25,$26
		.BYTE $27,  0,	0,  0,	0,  0,$34,$35,$36,$37,$38,$39,	0,  0,	0,  0
		.BYTE $47,$48,$49,$4A,$4B,$4C,	0,  0,	0,$5C,$5D,$5E,$5F,$60,$61,$62
		.BYTE	0,  0,	0,$72,$73,$74,$75,$76,$77,$78,	0,  0
off_49123:	.WORD byte_4912B	; DATA XREF: BANK_04:84A5o
		.WORD byte_49187
		.WORD byte_491E3
		.WORD byte_4923F
byte_4912B:	.BYTE  $A,  9,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:off_49123o
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0, $A, $B
		.BYTE	0,  0,	0,  0,	0,  0,	0,$12,$13,$14,	0,  0,	0,  0,	0,  0
		.BYTE	0,$1C,$1D,$1E,	0,  0,	0,  0,	0,  0,	0,  0,$25,$26,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_49187:	.BYTE  $A,  9,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:9125o
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	1,  0,	0,  2,	3,  0
		.BYTE	0,  0,	0,  4,	5,  6,	7,  8,	9,  0,	0,  0, $C, $D, $E, $F
		.BYTE $10,$11,	0,  0,	0,  0,$15,$16,$17,$18,$19,$1A,$1B,  0,	0,  0
		.BYTE $1F,$20,$21,$22,$23,$24,$1B,  0,	0,  0,$27,$28,$29,$2A,$2B,$2C
		.BYTE $2D,  0,	0,  0,$2E,$2F,$30,$31,$32,  0,$33,  0
byte_491E3:	.BYTE  $A,  9,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:9127o
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$35,$36,$37,  2,	3,  0
		.BYTE $3D,$3E,$3F,$40,$41, $F,$42,  8,	9,  0,	0,$48,$49,$4A,$4B,$4C
		.BYTE $4D,$4E,	0,  0,	0,  0,$55,$56,$57,$58,$59,$5A,$5B,  0,	0,$64
		.BYTE $65,$66,$67,$68,$69,$24,$1B,  0,$73,$74,$75,$76,$77,$78,$79,$2C
		.BYTE $2D,  0,	0,  0,	0,$7E,$7F,$80,	0,  0,$33,  0
byte_4923F:	.BYTE  $A,  9,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,$34
					; DATA XREF: BANK_04:9129o
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,$38,$39,$3A,$3B,$3C,	0,  0
		.BYTE	0,  0,	0,$43,$44, $F,$45,$46,$47,  0,$4F,$50,$51,$52,$53, $F
		.BYTE $54,$4E,	0,  0,$5C,$5D,$5E,$5F,$60,$61,$62,$63,$1B,  0,$6A,$6B
		.BYTE $6C,$6D,$6E,$6F,$70,$71,$72,  0,	0,$7A,$7B, $F, $F,$7C,$7D,  0
		.BYTE	0,  0,	0,  0,$81,$82,$83,$84,	0,  0,	0,  0
off_4929B:	.WORD byte_492A3	; DATA XREF: BANK_04:84A7o
		.WORD byte_492E1
		.WORD byte_49329
		.WORD byte_49371
byte_492A3:	.BYTE  $A,  6,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
					; DATA XREF: BANK_04:off_4929Bo
		.BYTE	2,  2,	2,  2,	2,  2,	2,  0,	1,  2,	2,  2,	2,  3,	4,  2
		.BYTE	2,  6,	7,  8,	9, $A, $B, $C, $D,  2,	2,  2,	2,$14,$15,$16
		.BYTE $17,$18,	2,  2,	2,  2,	2,  2,$23,$24,$25,  2,	2,  2
byte_492E1:	.BYTE  $A,  6,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
					; DATA XREF: BANK_04:929Do
		.BYTE	2,  2,	2,  2,	2,  2,	5,  2,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE	2,  2,	2, $E, $F,$10,$11,$12,	2,  2,	2,  3,$19,$1A,$1B,$1C
		.BYTE $1D,$1E,$1F,$20,	2,  2,$26,$27,	2,$28,	2,  2,$29,$2A,	2,  2
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2
byte_49329:	.BYTE  $A,  6,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
					; DATA XREF: BANK_04:929Fo
		.BYTE	2,  2,	2,  2,	2,  2,	0,  1,	2,  2,	2,  2,	3,  4,	5,  2
		.BYTE	6,  7,	8,  9,$13, $B, $C, $D,	2,  2,	2,  2,$14,$15,$21,$22
		.BYTE $18,  2,	2,  2,	2,  2,	2,$2B,$2C,$2D,	2,  2,	2,  2,	2,  2
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2
byte_49371:	.BYTE  $A,  6,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
					; DATA XREF: BANK_04:92A1o
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2, $E, $F,$2E,$2F,$12,  2,	2,  2
		.BYTE	3,$19,$1A,$30,$31,$32,$1E,$1F,$20,  2,	2,$26,$27,  2,$34,  2
		.BYTE	2,$29,$2A,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
off_493AF:	.WORD byte_493BB	; DATA XREF: BANK_04:84A9o
		.WORD byte_49417
		.WORD byte_49473
		.WORD byte_494CF
		.WORD byte_4952B
		.WORD byte_49587
byte_493BB:	.BYTE  $A,  9,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:off_493AFo
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$23,$24
		.BYTE	0,  0,	0,  0,	0,  0,	0,$38,$39,$3A,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$4E,$4F,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_49417:	.BYTE  $A,  9,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:93B1o
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	5,  6,	7,  0,	8,  9, $A, $B
		.BYTE	0,  0,$11,$12,$13,$14,$15,$16,$17,$18,	0,$25,$26,$27,$28,$29
		.BYTE $2A,$2B,$2C,$2D,	0,$3B,$3C,$3D,$3E,$3F,$40,$41,$42,$43,	0,$50
		.BYTE $3A,$51,$52,$53,$54,$55,$56,$57,	0,  0,	0,  0,$61,$62,$63,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_49473:	.BYTE  $A,  9,	0,  0,	0,  0,	0,  0,	0,  1,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:93B3o
		.BYTE	0,  0,	0,  2,	3,  4,	0,  0,	0, $C, $D,  0,	0, $E, $F,$10
		.BYTE $19,$1A,$1B,$1C,$1D,$1E,$1F,$20,$21,$22,$2E,$2F,$30,$31,$32,$33
		.BYTE $34,$35,$36,$37,$44,$45,$75,$76,$77,$78,$4A,$4B,$4C,$4D,	0,$81
		.BYTE $82,$83,$84,$85,$86,$5E,$5F,$60,	0,$8E,$8F,$90,$91,$92,$67,$68
		.BYTE $69,$6A,	0,  0,	0,  0,	0,  0,$6B,$6C,$6D,$6E
byte_494CF:	.BYTE  $A,  9,	0,  0,	0,  0,	0,  0,	0,  1,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:93B5o
		.BYTE	0,  0,	0,  2,	3,  4,	0,  0,	0, $C, $D,  0,	0, $E, $F,$10
		.BYTE $19,$1A,$1B,$1C,$1D,$1E,$1F,$20,$21,$22,$2E,$2F,$30,$31,$32,$33
		.BYTE $34,$35,$36,$37,$44,$45,$46,$47,$48,$49,$4A,$4B,$4C,$4D,	0,$58
		.BYTE $59,$5A,$5B,$5C,$5D,$5E,$5F,$60,	0,$64,$65,  0,	0,$66,$67,$68
		.BYTE $69,$6A,	0,  0,	0,  0,	0,  0,$6B,$6C,$6D,$6E
byte_4952B:	.BYTE  $A,  9,	0,  0,	0,  0,	0,  0,	0,  1,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:93B7o
		.BYTE	0,  0,	0,  2,	3,  4,	0,  0,	0, $C, $D,  0,	0, $E, $F,$10
		.BYTE $19,$1A,$1B,$1C,$1D,$1E,$1F,$20,$21,$22,$2E,$2F,$30,$31,$32,$33
		.BYTE $34,$35,$36,$37,$44,$45,$46,$47,$48,$49,$4A,$4B,$4C,$4D,	0,$58
		.BYTE $59,$5A,$5B,$5C,$5D,$5E,$5F,$60,	0,$64,$65,  0,	0,$66,$67,$68
		.BYTE $69,$6A,	0,  0,	0,  0,	0,  0,$6B,$6C,$6D,$6E
byte_49587:	.BYTE  $A,  9,	0,  0,	0,  0,	0,  0,	0,  1,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:93B9o
		.BYTE	0,  0,	0,  2,	3,  4,	0,  0,	0, $C, $D,  0,	0, $E, $F,$10
		.BYTE $19,$1A,$1B,$1C,$1D,$1E,$1F,$20,$21,$22,$2E,$2F,$30,$31,$32,$33
		.BYTE $34,$35,$36,$37,$44,$45,$70,$71,$72,$73,$74,$4B,$4C,$4D,$79,$7A
		.BYTE $7B,$7C,$7D,$7E,$7F,$80,$5F,$60,$87,$88,$89,$8A,$8B,$8C,$8D,$68
		.BYTE $69,$6A,	0,  0,$93,  0,$94,  0,$6B,$6C,$6D,$6E
off_495E3:	.WORD byte_495EF	; DATA XREF: BANK_04:84ABo
		.WORD byte_4964B
		.WORD byte_496A7
		.WORD byte_49703
		.WORD byte_4975F
		.WORD byte_497BB
byte_495EF:	.BYTE  $A,  9,	0,  0,	1,  2,	3,  4,	5,  6,	7,  0,	0,  0,	8,  9
					; DATA XREF: BANK_04:off_495E3o
		.BYTE  $A, $B, $C, $D, $E, $F,	0,  0,$10,$11,$12,$13,$14,$15,$16,$17
		.BYTE	0,  0,	0,$18,$19,$1A,$1B,$1C,$1D,  0,	0,  0,$22,$23,$24,$25
		.BYTE $26,$27,	0,  0,	0,$2F,$30,$31,$32,$33,$34,$35,$36,  0,	0,$41
		.BYTE $42,$43,$44,$45,$46,$47,$48,  0,	0,$54,$55,$56,$57,  0,$58,$59
		.BYTE $5A,$5B,	0,$61,$62,$63,$64,$65,$66,$67,	0,$68
byte_4964B:	.BYTE  $A,  9,	0,  0,	1,  2,	3,  4,	5,  6,	7,  0,	0,  0,	8,  9
					; DATA XREF: BANK_04:95E5o
		.BYTE  $A, $B, $C, $D, $E, $F,	0,  0,$10,$11,$12,$13,$14,$15,$16,$17
		.BYTE	0,  0,	0,$18,$19,$1A,$1B,$1C,$1D,$1E,	0,  0,$22,$23,$24,$25
		.BYTE $26,$28,$29,$2A,	0,$2F,$30,$31,$32,$37,$38,$39,$3A,  0,	0,$41
		.BYTE $42,$49,$4A,$4B,$4C,$4D,	0,  0,	0,$54,$55,$56,$57,  0,$58,$59
		.BYTE	0,  0,	0,$61,$62,$63,$64,$65,$66,$67,	0,  0
byte_496A7:	.BYTE  $A,  9,	0,  0,	1,  2,	3,  4,	5,  6,	7,  0,	0,  0,	8,  9
					; DATA XREF: BANK_04:95E7o
		.BYTE  $A, $B, $C, $D, $E, $F,	0,  0,$10,$11,$12,$13,$14,$15,$16,$17
		.BYTE	0,  0,	0,$18,$19,$1A,$1B,$1F,$20,$21,	0,  0,$22,$23,$24,$25
		.BYTE $2B,$2C,$2D,$2E,	0,$2F,$30,$31,$3B,$3C,$3D,$3E,$3F,$40,	0,$41
		.BYTE $42,$4E,$4F,$50,$51,$52,$53,  0,	1,$5C,$5D,$5E,$5F,$60,$58,$59
		.BYTE	0,  0,	0,$69,$6A,$6B,$64,$65,$66,$67,	0,  0
byte_49703:	.BYTE  $A,  9,	0,  0,	1,$6C,	3,  4,$6D,$6E,$6F,  0,	0,  0,$70,$71
					; DATA XREF: BANK_04:95E9o
		.BYTE $72, $B, $C,$73,$74, $F,	0,  0,$10,$11,$75,$13,$76,$77,$78,$17
		.BYTE	0,  0,	0,$7A,$7B,$1A,$7C,$7D,$7E,  0,	0,  0,	0,$8C,$8D,$8E
		.BYTE $8F,$90,	0,  0,	0,  0,$A0,$A1,	0,$33,	0,$A2,	0,  0,	0,  0
		.BYTE	0,  0,	0,$45,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_4975F:	.BYTE  $A,  9,	0,  0,	1,$6C,	3,  4,$6D,$6E,$6F,  0,	0,  0,$70,$71
					; DATA XREF: BANK_04:95EBo
		.BYTE $72, $B, $C,$73,$74, $F,	0,  1,$79,$11,$75,$13,$76,$77,$78,$17
		.BYTE	0,$7F,$80,$81,$7B,$1A,$7C,$82,$83,  0,	0,  0,$91,$92,$8D,$93
		.BYTE $94,$95,$96,  0,	0,  0,$A3,$A1,$A4,$A5,$A6,$A7,$A8,  0,	0,  0
		.BYTE	0,  0,	0,$45,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_497BB:	.BYTE  $A,  9,	0,  0,	1,$6C,	3,  4,$6D,$6E,$6F,  0,	0,  0,$70,$71
					; DATA XREF: BANK_04:95EDo
		.BYTE $72, $B, $C,$73,$74, $F,	0,  1,$79,$11,$75,$13,$76,$77,$78,$17
		.BYTE	0,$84,$85,$86,$87,$88,$89,$8A,$8B,  0,	0,$97,$98,$99,$9A,$9B
		.BYTE $9C,$9D,$9E,$9F,	0,  0,$A9,$AA,$AB,$AC,$AD,$AE,$AF,  0,	0,  0
		.BYTE	0,  0,	0,$45,	0,$B0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
InvItemSprites:	.WORD MoonMedal_49875
		.WORD Lighter_49997
		.WORD EagleMedal_49A79
		.WORD Key1_49B9B
		.WORD Ammo_49C3D
		.WORD Key2_49CFF
		.WORD Paddle_49DB1
		.WORD Key3_49E63
		.WORD Shield_49F25
		.WORD CatMedal_49FC7
		.WORD ExpAmmo_4A0E9
		.WORD ShotgunAmmo_4A1FB
		.WORD Ammo_4A2ED
		.WORD Health_4A3AF
		.WORD Ammo_4A4B1
		.WORD Key_4A5C3
		.WORD Disk_4A665
		.WORD Bolt_4A767
		.WORD MissileLauncher_4A839
		.WORD InkRibbon_4A93B
		.WORD Accumulator_4AA3D
		.WORD Shotgun_4AB5F
		.WORD KeyCard_4AC21
		.WORD Key_4ACE3
		.WORD Key_4AD95
		.WORD Pistol_4AE37
		.WORD Herbs_4AF19
		.WORD Note_4B01B
		.WORD Medal_4B0DD
		.WORD Knife_4B1FF
		.WORD SMG_4B2C1
		.WORD Pistol_4B383
		.WORD Map_4B445
		.WORD Medal_4B537
		.WORD Medal_4B659
		.WORD Ammo_4B77B
		.WORD Revolver_4B84D
		.WORD Disk_4B91F
		.WORD Shield_4BA41
		.WORD Key_4BB43
		.WORD Health_4BBF5
		.WORD byte_4BCF7
		.WORD BattleZombie_4BD19
		.WORD BattleEnemy_4CC4B
		.WORD BattleDog_4D56D
		.WORD byte_4DCEF
		.WORD byte_4E981
MoonMedal_49875:.BYTE $11,$11,$FF,$FF,$FF,$FF,$FF,$FF,$FD,$F6,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:InvItemSpriteso
		.BYTE	3, $F,$FF,$FF,$FD,$F7,$DF,$6F,$D0,$A0,	0,  0,	3, $F,$3F,$FF
		.BYTE $FC,$F1,$FF,$FF,$9F,$C7,$F1,$FC,$3F, $F,	0,  0,$C0,$F0,$FC,$FF
		.BYTE $3F,$5F,$FF,$FF,$FF,$FF,$FF,$7F,$1F,$C7,	0,  0,	0,  0,	0,  0
		.BYTE $C0,$F0,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$DD,$FA,$FC,$F8,$F0,$E8,$F0,$E8,$3F,$7F,$7C,$7A,$79,$7A
		.BYTE $79,$7A,	0,  3,	0,  0,	0,  0,	0,  0,$CA,$37,$6A,$B5,$6A,$B7
		.BYTE $6F,$DF,	3,$E0,$F8,$3C,$1E, $E, $F,$17,$AF,$F6,$FF,$7F,$BF,$5F
		.BYTE $AF,$57,$F1,$FC,$3C,$1C,$1C,$1C,$1C,$1C,$FC,$FE,$7E,$BE,$DE,$BE
		.BYTE $DE,$BE,$D0,$E8,$D0,$E8,$D0,$E8,$F5,$9A,$79,$7B,$79,$7B,$7B,$7C
		.BYTE $7F,$3F,	0,  0,	0,  0, $C,  7,	1,$80,$FF,$FF,$FE,$F5,$EE,$D7
		.BYTE $2B,$CF,$3B,$1F,$1F,$3E,$3E,$FC,$F0,  3,$BB,$5F,$BF,$7F,$BF,$FF
		.BYTE $FF,$FF,$1C,$1C,$1C,$1C,$1C,$3C,$F8,$F1,$DE,$FE,$DE,$FE,$FE,$FE
		.BYTE $FE,$FC,$C7,$F1,$FC,$FF,$FF,$FF,$FF,$FF, $F,  3,	0,  0,	0,  0
		.BYTE	0,  0,$40,$BC,$77, $A,$C5,$F2,$FC,$FF,$F3,$FF,$FF,$3F, $F,  3
		.BYTE	0,  0, $F,$3F,$FC,$A0,$43, $F,$3F,$FF,$FF,$FF,$FF,$FC,$F0,$C0
		.BYTE	0,  0,$C3, $F,$3F,$FF,$FF,$FF,$FF,$FF,$F0,$C0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0
Lighter_49997:	.BYTE  $E, $D,$FF,$FF,$FF,$FF,$FF,$FF,$E0,$C8,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:9819o
		.BYTE	0, $F,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$3F,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$B0,$A8,$97,$AF,$DF,$AF,$DE,$AB,$31,$38,$3F,$7F,$7F,$7F
		.BYTE $7E,$7F,$CF,$31,	7,$C2,	0,$40,$80,  3,$C0,$30,	7,$C3,$A0,$50
		.BYTE $A4,$57,$F0,$F0,	4,  2,	5,$40,$20,$52,	0,  4,$87,$4F, $F,$46
		.BYTE $61,$FA,$7F,$3F,$1F, $F,	1,$40,$80,  8,	0,  0,	0,$40,$40,$50
		.BYTE $80,$6A,$95,$CF,$F0,$FC,$FF,$FF,$FF,$FF,$3F, $F,	2,  0,	0,  0
		.BYTE	0,  0,$81,$41,$81,  1,	0,$C1,$FF,$FF,$A5,$55,$A3,$55,$22,  0
		.BYTE	0,  0,$3F,$7F,$37,$7A,$F5,$7F,$FF,$7F,$FF,$FF,$FF,$FF,$FF,$FF
		.BYTE $FF,$FF,	0,$E0,$F0,$E0,$70,$E0,$D0,$A0,$16,$E6,$F6,$F4,$F2,$F4
		.BYTE $F0,$F4,$FF,$6A,$45,$C8,$FC,$FF,$FF,$FF,$FF,$FF,$7F, $F,	0,  0
		.BYTE	0,  0,$50,$80,	0,  1,	3,$FF,$FF,$FF,$F0,$F0,$E0,$C0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0
EagleMedal_49A79:.BYTE $11,$11,$FF,$FF,$FF,$FF,$FF,$FF,$FE,$FD,	 0,  0,	 0,  0,	 0,  0
					; DATA XREF: BANK_04:981Bo
		.BYTE	1,  3,$FF,$FF,$FF,$F8,$E7,$9F,$78,$E0,	0,  0,	0,  7,$1F,$7F
		.BYTE $FF,$FF,$FF,$FF,$FF,$1F,$E7,$F9,$1E,  7,	0,  0,	0,$E0,$F8,$FE
		.BYTE $1F,$F7,$FF,$FF,$FF,$FF,$FF,$FF,$3F,$9F,	0,  0,	0,  0,	0,  0
		.BYTE $80,$C0,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$FB,$F7,$F6,$EC,$EC,$EC,$D8,$D8,	7, $F, $F,$1F,$1F,$1E
		.BYTE $3F,$3E,$80,  0,	0,$63,$30,$38,$19,$37,$FE,$D5,$AA,$67,$B4,$BA
		.BYTE $59,$BF,	1,  0,	0,$83,$C6,$CE,$CC,$F6,$BD,$57,$AB,$B7,$CE,$DE
		.BYTE $CD,$FE,$CF,$E7,$67,$33,$33,$33,$19,$19,$E0,$F0,$F0,$78,$F8,$F8
		.BYTE $7C,$BC,$D8,$D8,$D8,$D8,$EC,$EC,$F6,$F7,$3F,$3F,$3F,$3F,$1F,$1F
		.BYTE  $F, $F,$1F, $D,	0,  3,	3,  4,	0,$1D,$5F,$AD,$50,$AB,$D3,$A4
		.BYTE $D3,$BF,$FC,$D8,$80,$E0,$60,$10,	0,$DC,$FD,$DA,$85,$EA,$65,$12
		.BYTE $ED,$FD,$19,$19,$19,$19,$33,$33,$67,$E7,$7C,$FC,$7C,$FC,$78,$F8
		.BYTE $F0,$F0,$FB,$FC,$FE,$FE,$FF,$FF,$FF,$FF,	7,  3,	1,  0,	0,  0
		.BYTE	0,  0,	3,$80,$50,$2A,	5,$C0,$F8,$FF,$23,$CC,$F3,$FF,$3F,  7
		.BYTE	0,  0,$E1,  3,$1F,$FC,$60,  3,$1F,$FF,$E3,$1F,$FF,$FF,$FC,$E0
		.BYTE	0,  0,$CF,$9F,$3F,$7F,$FF,$FF,$FF,$FF,$E0,$C0,$80,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0
Key1_49B9B:	.BYTE  $A,  9,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FE,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:981Do
		.BYTE	0,  0,$FF,$FF,$FF,$FF,$FF,$FF, $F,$F7,	0,  0,	0,  0,	0,  0
		.BYTE $10,$F8,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$FD,$FD,$FD,$FD,$FC,$FE,$FF,$FF,	1,  1,	1,  1,	0,  0
		.BYTE	0,  0,$EB,$B5,$C9,$5B,$BB,$47,$3D,$82,$FC,$BE,$CE,$DE,$FE,$7E
		.BYTE $3E,  7,$F9,$FC,$FE,$FF,$FF,$FF,$FF,$FF,	3,  1,	0,  0,	0,  0
		.BYTE	0,  0,$7F,$BF,$5F,$2F,$97,$CB,$E4,$F2,$80,$C0,$E0,$70,$38,$1C
		.BYTE  $E,  7,$FF,$FF,$FF,$FF,$EF,$4F,$D3,$67,	0,  0,	0,  0,$20,$D8
		.BYTE $FC,$FC,$BB,$D7,$67,$33,$93,$C3,$E7,$FF,$FC,$F8,$F8,$7C,$3C,$18
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0
Ammo_49C3D:	.BYTE  $C, $B,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:981Fo
		.BYTE	0,  0,$FF,$FF,$FF,$FF,$FF,$FE,$FC,$F8,	0,  0,	0,  0,	0,  0
		.BYTE	1,  3,$FF,$E3,$C0,$80,	0,  0,	0,  0,	0,  0,$1C,$3F,$78,$F8
		.BYTE $88,$8F,$FF,$FF,$FF,$3F, $F,  3,	0,  0,	0,  0,	0,  0,$C0,$F0
		.BYTE $FC,$E3,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$3F,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$F1,$E0,$E0,$E0,$E0,$E0,$F0,$FC,	7,  3, $C, $F,	5, $A
		.BYTE	1,  0,	0,$40,	0,  0,	0,  0,	0,  0,$8F,$FF,$FE,$3E,$CE,$B3
		.BYTE $5C,$AF,	0,  0,	0,  1,	1,  3,	7, $E,$E3,$E3,$3E,$3D,$3B,$F7
		.BYTE $EF,$1E,$1F,$5F,$DF,$DF,$DF,$BF,$7F,$FF,$80,$40,$C0,$C0,$C0,$80
		.BYTE	0,  0,	0,$C0,$F0,$FC,$FF,$FF,$FF,$FF,$15, $A,	1,  0,	0,  0
		.BYTE	0,  0, $D, $B,$17, $F,$1F,$FF,$FF,$FF,$DC,$D8,$50,$80,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0
Key2_49CFF:	.BYTE  $B, $A,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:9821o
		.BYTE	0,  0,$FF,$FF,$FF,$FF,$FF,$FF,$C7,  3,	0,  0,	0,  0,	0,  0
		.BYTE	0,$38,$FE,$FC,$F8,$F0,$F0,$E0,$E0,$E0,	0,  1,	0,  4,	2,  7
		.BYTE  $B,  7,	1,$20,$40,  0,	0,  0,	1,  3,$F8,$7C,$FA,$7C,$E8,$D4
		.BYTE $A9,$53,$FF,$FF,$FF,$FF,$FF,$7F,$BF,$DF,	0,  0,	0,  0,	0,  0
		.BYTE $80,$C0,$F0,$F8,$FE,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	2,  7, $B,$C7,$E3,$F1,$F9,$FC,$A6,$1F,$1F, $F,	7,  3
		.BYTE	1,  0,$EF,$77,$BB,$DD,$EE,$B5,$5B,$A9,$E0,$70,$B8,$DC,$EE,$B4
		.BYTE $58,$A8,$FE,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$55,$2B,$97,$CF,$FF,$FF,$FF,$FF,$54,$28,$10,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0
Paddle_49DB1:	.BYTE  $B, $A,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:9823o
		.BYTE	0,  0,$FC,$C0,$94,$80,$C0,$FC,$FF,$FF,	0,  1,$3F,$15,	0,  0
		.BYTE	0,  0,$FF,  1,	0,  0,	0,$F8,$F8,$F8,	0,  0,$3E,$2B,	5,  3
		.BYTE	1,  3,$FF,$FF,$FF,$7F,$7F,$7F,$7F,$7F,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8,	1,  1,	1,  1,	1,  1
		.BYTE	1,  0,$7F,$7F,$7F,$7F,$60,$15,$1F, $A,	0,  0,	0,  0,	0,$9F
		.BYTE $DF,$1F,$FF,$FF,$FF,$FF,	7,$53,$FB,$AB,	0,  0,	0,  0,	0,$F8
		.BYTE $F8,$F8,$FC,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,$E0,$FF,$FF,$FF,$FF,$FF,$FF,$1F,  0,	0,  0,	0,  0
		.BYTE	0,  0,	3,  7,$FF,$FF,$FF,$FF,$FF,$FF,$F8,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0
Key3_49E63:	.BYTE  $C, $B,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FE,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:9825o
		.BYTE	0,  0,$FF,$FF,$FF,$FF,$FF,$FF,	3,$C4,	0,  0,	0,  0,	0,  0
		.BYTE $10,$FC,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$FD,$FB,$F9,$F9,$F9,$F8,$FC,$FC,	1,  3,	3,  3,	3,  1
		.BYTE	0,  0,$A2,$42,$A0,$12,	2,$8E,$20,  2,$E6,$C2,$A2,$1A,$12,$8E
		.BYTE $6A,  7,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$7F,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$F1,$F8,$FE,$FF,$FF,$FF,$FF,$FF,	3,  1,	0,  0,	0,  0
		.BYTE	0,  0,$7F,$BF,$5F,$2F,$97,$CB,$E4,$F2,$80,$C0,$E0,$70,$38,$1C
		.BYTE  $E,  7,$FF,$FF,$FF,$FF,$EF,$4F,$D3,$67,	0,  0,	0,  0,$20,$D8
		.BYTE $FC,$FC,$F9,$FC,$FE,$FF,$FF,$FF,$FF,$FF,	3,  1,	0,  0,	0,  0
		.BYTE	0,  0,$BB,$D7,$67,$33,$93,$C3,$E7,$FF,$FC,$F8,$F8,$7C,$3C,$18
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0
Shield_49F25:	.BYTE  $A,  9,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:9827o
		.BYTE	0,  0,$FF,$FF,$FF,$FF,$FF,$FF,$F0,$E5,	0,  0,	0,  0,	0,  0
		.BYTE	0, $F,$FF,$FF,$FF,$FF,$FF,$FF, $F,  7,	0,  0,	0,  0,	0,  0
		.BYTE	0,$80,$FF,$FF,$FF,$FF,$FC,$FE,$FF,$FF,	0,  0,	0,  1,	1,  0
		.BYTE	0,  0,$C0,$C0,$81,  1,$5F,  1,	1,$81,$1D,$6B,$F5,$AB,$FF,$4B
		.BYTE $7D,$29,	3,  1,	0,  0,$C9,  0,	0,  1,$C8,$DC,$DA,$F5,$C9,$50
		.BYTE $7C,$38,$FF,$FF,$FF,$7F,$7F,$7F,$FF,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$C1,$E1,$F0,$F8,$FC,$FE,$FF,$FF,$15, $B,	4,  2,	0,  0
		.BYTE	0,  0,	3,  7, $F,$1F,$3F,$7F,$FF,$FF,$10,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0
CatMedal_49FC7:	.BYTE $11,$11,$FF,$FF,$FF,$FF,$FF,$FF,$FE,$FD,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:9829o
		.BYTE	1,  3,$FF,$FF,$FF,$F8,$E7,$9F,$78,$E0,	0,  0,	0,  7,$1F,$7F
		.BYTE $FF,$FF,$FF,$FF,$FF,$1F,$E7,$F9,$1E,  7,	0,  0,	0,$E0,$F8,$FE
		.BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$3F,$9F,	0,  0,	0,  0,	0,  0
		.BYTE $80,$C0,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$FB,$F7,$F6,$EC,$EC,$EC,$D8,$D8,	7, $F, $F,$1F,$1F,$1F
		.BYTE $3E,$3D,$80,  4,	8,$70,$80,$80,$80,$80,$FF,$FE,$F9,$F6,$BD,$AA
		.BYTE $B5,$AA,	1,  0,$3C,$38,$70,$7C,$7A,$F2,$57,$AB,$7D,$BA,$75,$FE
		.BYTE $7A,$F6,$CF,$E7,$67,$33,$33,$33,$19,$19,$E0,$F0,$F0,$F8,$78,$F8
		.BYTE $FC,$FC,$D8,$D8,$D8,$D8,$EC,$EC,$F6,$F7,$3E,$3F,$3E,$3F,$1F,$1F
		.BYTE  $F, $F,$FB,  7,	7,  6,	8,$10,$20,$10,$FF,  7,$AF,$56,$A9,$52
		.BYTE $AD,$97,$F2,$C0,$80,$60,$70,$10,$10,  8,$F6,$C9,$95,$6A,$75,$93
		.BYTE $55,$AB,$19,$19,$19,$19,$33,$33,$67,$E7,$FC,$FC,$FC,$FC,$F8,$F8
		.BYTE $F0,$F0,$FB,$FD,$FE,$FE,$FF,$FF,$FF,$FF,	7,  3,	1,  0,	0,  0
		.BYTE	0,  0,$80,$40,$A8,$35,	7,$C0,$F8,$FF,$AF,$CF,$F9,$FF,$3F,  7
		.BYTE	0,  0,	1,  3,$1F,$FC,$E0,  3,$1F,$FF,$D7,$FF,$FF,$FF,$FC,$E0
		.BYTE	0,  0,$CF,$9F,$3F,$7F,$FF,$FF,$FF,$FF,$E0,$C0,$80,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0
ExpAmmo_4A0E9:	.BYTE $11,$10,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$F0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:982Bo
		.BYTE	0,  0,$FF,$FF,$FF,$F8,$F8,$F9,$F9,$F9,	0,  0,	0,  0,	3,  2
		.BYTE	0,  0,$FF,$FF,$FF,  1,	1,$F9,$F9,$F9,	0,  0,	0,  0,$FC,  4
		.BYTE	0,  0,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$F0,$E1,$E5,$E0,$C4,$CA,$87,$8F,	3, $D, $D, $D,$1E,$1E
		.BYTE $3F,$3F,	0,  0,$80,$80,	0,$80,	0,  0,	0,  3,$BF,$8F,$10,$C8
		.BYTE $65, $A,	0,  0,	0,  0,	0,  0,	0,  0,	0,$C0,$FE,$FF,$1E,  0
		.BYTE $55,$AA,$3F,$1F,$1F, $F, $F,  7,	7,  3,	0,$C0,	0,$E0,	0,  0
		.BYTE $50,$A8,$1F,$2F,$5F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F
		.BYTE $7F,$7F,$80,$B0,$A0,$A2,$85,$82,$80,  0,$80,$B0,$B7,$B7,$B7,$A7
		.BYTE $A7,$83,	0,  0,	0,  0,$40,$A8,$55, $A,	0,  0,$FB,$FF,$FF,$FF
		.BYTE $FF,$FF,	1,  1,	1,  1,	1,  1,$51,$A9,	0,  0,$54,$A8,$F4,$F8
		.BYTE $FC,$FC,$7E,$7D,$BE,$95,$CA,$C0,$E0,$FF,$7F,$7F,$3F,$3F,$1E,  0
		.BYTE	0,  0,$80,  0,	0,  0,	0,  0,$1F,$FF,$85,$82,$25,$4A,$95,  0
		.BYTE	0,  0,	5,  0,	0,  0,	0,  0,$F0,$FF,$7F,$BF,$55,$AA,$55,  0
		.BYTE	0,  0,$41,  1,	3,  3,	7,  7, $F,$FF,$FC,$FC,$78,$A8,$50,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0
ShotgunAmmo_4A1FB:.BYTE	 $F, $E,$FF,$FF,$FF,$FF,$FF,$FF,$E0,$E0,  0,  0,  0,  0,  0,  0
					; DATA XREF: BANK_04:982Do
		.BYTE	0, $A,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,$AA,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,$A0,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$E0,$E0,$E0,$E0,$E5,$EA,$E4,$EF,	5, $B,	7, $F, $F, $F
		.BYTE  $E, $F,	0,  0,	0,  0,$31,$7C,$3E,$1F,$55,$FF,$EF,$C7,$B3,$7D
		.BYTE $3E,$1F,	0,  0,	0,  0,$54,$AA,$54,$7E,$54,$FA,$FC,$FE,$FE,$FE
		.BYTE $FE,$7E,$C3,$C3,	3,  3,	3,$9B,	3,$DB,	0,$10,$10,$50,$58,$D8
		.BYTE $D8,$D8,$EF,$EF,$EA,$E5,$E0,$E0,$E0,$E0, $F, $F, $F, $F, $F,  7
		.BYTE  $A,  5,$8F,$C7,$A3,$51,	0,  0,	0,  0,$8F,$C7,$E3,$F1,$F8,$FF
		.BYTE $AA,$55,$3E,$9E,$AA,$54,	0,  0,	0,  0,$3E,$9E,$BE,$7E,$FE,$FC
		.BYTE $AA,$54,$DB,  3,$1B,  3,	3,  3,$C3,$C3,$D8,$D8,$D8,$50,$50,$10
		.BYTE	0,  0,$E0,$E0,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0
Ammo_4A2ED:	.BYTE  $C, $B,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:982Fo
		.BYTE	0,  0,$FF,$FF,$FF,$FF,$FF,$FE,$FC,$F8,	0,  0,	0,  0,	0,  0
		.BYTE	1,  3,$FF,$E3,$C0,$80,	0,  0,	2, $B,	0,  0,$1C,$3F,$71,$E0
		.BYTE $C2,$8B,$FF,$FF,$FF,$3F, $F,  3,$80,  0,	0,  0,	0,  0,$C0,$70
		.BYTE $9C,  7,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$3F,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$F1,$E0,$E0,$E0,$E0,$E0,$F0,$FC,	7,  3, $C, $F,	5, $A
		.BYTE	1,  0,	0,$40,	0,  0,	0,  0,	0,  0,$80,$E0,$F8,$3E,$CF,$B3
		.BYTE $5C,$AF,$20,$80,	0,  1,	1,  3,	7, $E,$23,$83,	6, $D,$9B,$F7
		.BYTE $EF,$1E,$1F,$5F,$DF,$DF,$DF,$BF,$7F,$FF,$80,$40,$C0,$C0,$C0,$80
		.BYTE	0,  0,	0,$C0,$F0,$FC,$FF,$FF,$FF,$FF,$15, $A,	1,  0,	0,  0
		.BYTE	0,  0, $D, $B,$17, $F,$1F,$FF,$FF,$FF,$DC,$D8,$50,$80,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0
Health_4A3AF:	.BYTE $10, $F,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:9831o
		.BYTE	0,  0,$FF,$80,$AB,$80,$C0,$EF,$EF,$8F,	0,  0,$3F,$3F,$10, $F
		.BYTE  $F,$1F,$FF,  1,$F9,  1,	3,$87,$E7,$F1,	0,  0,$FC,$FC,	0,$F0
		.BYTE $F0,$F8,$FE,$FC,$FC,$FC,$FD,$FD,$FD,$FD,	0,  1,	1,  0,	1,  1
		.BYTE	1,  1,$3F,$7F,$FF,  0,$D5,$AA,$55,$A0,$7F,$FF,$FF,  0,$FF,$FF
		.BYTE $FF,$FF,$D8,$E6,$F3,  0,$42,$A1,$40,  0,$FE,$FF,$FF,  0,$FF,$FF
		.BYTE $FF,$FA,$7F,$3F,$3F,$3F,$BF,$3F,$BF,$3F,	0,$80,$80,  0,$80,$80
		.BYTE $80,$80,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FC,	1,  1,	1,  1,	1,  1
		.BYTE	1,  0,$40,$80,$40,$80,$40,$A8,$D4,  0,$F1,$FE,$FF,$FF,$FF,$FF
		.BYTE $FF,  0,	0,  0,	0,  0,	0,  0,	0,  0,$FF,$6B,$7F,$F5,$6B,$FF
		.BYTE $FF,  0,$BF,$3F,$BF,$3F,$3F,$3F,$3F,$3F,$80,$80,$80,$80,$80,$80
		.BYTE $80,  0,$FC,$FD,$FC,$FD,$FD,$FE,$FF,$FF,	1,  1,	1,  1,	1,  0
		.BYTE	0,  0,$AF,$5F,$FF,$FF,$FF,$FF,	0,$FF,$FF,$FF,$FF,$FF,$FF,$FF
		.BYTE	0,  0,$F3,$F7,$FE,$FC,$E8,$40,	0,$FF,$FF,$FF,$FE,$FD,$EA,$55
		.BYTE	0,  0,$3F,$3F,$3F,$3F,$3F,$7F,$FF,$FF,$80,  0,$80,  0,$80,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0
Ammo_4A4B1:	.BYTE $11,$10,$FF,$FF,$FF,$FF,$FF,$FF,$FC,$C1,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:9833o
		.BYTE	0,  3,$FF,$FF,$FF,$FF,$FC,$C1,$2B,$5F,	0,  0,	0,  0,	0,  3
		.BYTE $3F,$FF,$FF,$FF,$FC,$C1,$2B,$5F,$F5,$A0,	0,  0,	0,  3,$3F,$FF
		.BYTE $FF,$FF,$FF,$FF,$3F,$5F,$8F,$87,	3,  3,	0,  0,	0,$C0,$E0,$F0
		.BYTE $F8,$C0,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$CB,$CF,$C5,$C0,$C0,$C0,$C0,$C0,$1F, $F,$17,$1B,$1C,$15
		.BYTE	9,$10,$FD,$E8,$40,  0,	0,  0,	0,  1,$FF,$FF,$FC,$C3,$3D,$EA
		.BYTE $50,  7,$40,  0,	0,  1,	2,  7,$3F,$FF,$FC,$C3,$14,$A3,$4F,$3F
		.BYTE $FF,$FF,	3,  7,$87,$57,$A7,$D7,$F7,$A7,	0,$30,$F0,$F0,$F0,$F0
		.BYTE $F0,$A0,$C0,$C0,$C0,$C0,$C1,$C0,$C1,$C0,$18,$18,$15,  9,$11,  9
		.BYTE $11,  1,	7,$3F,$FF,$AA,$51,$A8,$54,$80,$3F,$FF,$FF,$FB,$F9,$FC
		.BYTE $FF,$FE,$FF,$EF,$D7,$EA,$54,$80,	0,  0,$FF,$EF,$D7,$EF,$FF,$FF
		.BYTE $FF,$AC,$2F,$EF,$2F,$8F,$1F,$1F,$1F,$3F,$20,$E0,$A0,$C0,$C0,$C0
		.BYTE $C0,  0,$E0,$F0,$F8,$FC,$FF,$FF,$FF,$FF,	1,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	3,$3F,$FF,$FF,$FF,$FF,$D5,$A8,	0,  0,	0,  0
		.BYTE	0,  0,	3,$3F,$FF,$FF,$FF,$FF,$FF,$FF,$40,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0
Key_4A5C3:	.BYTE  $A,  9,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:9835o
		.BYTE	0,  0,$FF,$FF,$FF,$FF,$FF,$FF,$C7,  3,	0,  0,	0,  0,	0,  0
		.BYTE	0,$10,$FE,$FC,$F8,$F0,$F0,$E0,$E0,$E0,	0,  0,	0,  4,	2,  5
		.BYTE  $B,  5,	1,  0,	0,  0,	0,  0,	0,  3,$A8,$54,$3A,$54,$E8,$54
		.BYTE $A0,$43,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$7F,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$F0,$F8,$FE,$FF,$FF,$FF,$FF,$FF,	2,  1,	0,  0,	0,  0
		.BYTE	0,  0,	2,  7,	3,$F3,$F9,$FD,$FE,$FF,$A6,$1F,	7,  3,	1,  1
		.BYTE	0,  0,$BF,$5F,$AF,$D7,$EB,$B5,$DD,$6D,$80,$40,$A0,$D0,$E8,$B4
		.BYTE $DC,$6C,$B5,$C3,$FF,$FF,$FF,$FF,$FF,$FF,$34,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0
Disk_4A665:	.BYTE $10, $F,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:9837o
		.BYTE	0,  0,$FF,$FF,$FF,$FF,$FF,$FC,$F3,$CE,	0,  0,	0,  0,	0,  0
		.BYTE	3, $F,$FF,$FF,$FF,$E0,$1F,$EF,$55,$AA,	0,  0,	0,  0,$1F,$FF
		.BYTE $FF,$FF,$FF,$FF,$FF,$FF,$3F,$DF,$EF,$EF,	0,  0,	0,  0,	0,$C0
		.BYTE $E0,$E0,$FF,$FF,$FE,$FD,$FB,$FB,$F7,$F7,	0,  0,	0,  1,	3,  3
		.BYTE	7,  7,$B5,$6A,$D7,$AF,$7C,$F0,$E0,$E0,$3F,$7F,$FF,$FF,$FC,$F0
		.BYTE $E4,$EA,$55,$FA,$F5,$FA,$F5,$7B,$75,$EB,$FF,$FF,$FF,$FE,$FF,$7F
		.BYTE $7F,$FF,$EF,$E7,$47,$C7,$87,$87,	7,  7,$E0,$E0,$D0,$D0,$B0,$B0
		.BYTE $70,$70,$EF,$EF,$DF,$DF,$DF,$DF,$CF,$D7, $F, $F,$1F,$1F,$1F,$1F
		.BYTE  $F,$17,$C0,$C1,$E7,$FF,$FF,$FF,$FE,$F5,$C0,$C1,$E7,$FF,$FF,$FF
		.BYTE $FE,$F5,$F6,$EE,$FC,$F8,$F0,$40,$80,  0,$FE,$FE,$FD,$FB,$F7,$4F
		.BYTE $97,$2E, $F, $F,$1F,$1F,$3F,$3F,$7F,$FF,$E0,$E0,$C0,$C0,$80,$80
		.BYTE	0,  0,$CA,$C5,$E0,$F0,$F8,$FE,$FF,$FF, $A,  5,	0,  2,	1,  0
		.BYTE	0,  0,$A8,$50,	0,  0,	0,  0,$FF,$FF,$A8,$52,	5,$2A,$55,  0
		.BYTE	0,  0,	1,  3,	7, $F,$3F,$FF,$FF,$FF,$5C,$B8,$50,$80,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0
Bolt_4A767:	.BYTE  $D, $C,$FF,$FF,$FF,$FF,$FF,$FC,$FB,$F6,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:9839o
		.BYTE	3,  7,$FF,$FF,$FF,$FF,$FF,$7F,$3F,$3F,	0,  0,	0,  0,	0,  0
		.BYTE $80,$80,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$ED,$DA,$D0,$C0,$E5,$FA,$FD,$FE, $F,$1F,$1F,$1F,	7,  3
		.BYTE	1,  0, $F,  7,	3,$11,	8,$84,$42,$A0,$C0,$B0,$C8,$F4,$FA,$FD
		.BYTE $FE,$FF,$FF,$FF,$FF,$FF,$FF,$7F,$3F,$1F,	0,  0,	0,  0,	0,  0
		.BYTE $80,$40,$50,$A8,$D4,$E2,$F1,$F8,$FC,$FA,$7F,$3F,$1F, $F,	7,  3
		.BYTE	1,  2,	9,  6,$12, $A,$5A,$B4,$6D,$19,$A0,$D6,$FA,$FA,$FA,$F6
		.BYTE $ED,$DD,$FF,$7F,$3F,$9F,$DF,$DF,$DF,$9F,	0,  0,	0,$80,$C0,$C0
		.BYTE $C0,$80,$F9,$F8,$FC,$FE,$FF,$FF,$FF,$FF,	3,  3,	0,  0,	0,  0
		.BYTE	0,  0,$21,$C6,$2B,$51,	0,$83,$CF,$FF,$39,$C6,$2B,$51,	0,  0
		.BYTE	0,  0,$5F,$9F,$1F,$BF,$7F,$FF,$FF,$FF,$40,$80,	0,$80,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0
MissileLauncher_4A839:.BYTE $10, $F,$FF,$FF,$FF,$FF,$FF,$E0,$E1,$E4,  0,  0,  0,  0,  0,  0
					; DATA XREF: BANK_04:983Bo
		.BYTE	7, $C,$FF,$FF,$FF,$FF,$FF,  0,$40,$80,	0,  0,	0,  0,	0,  0
		.BYTE $50,$80,$FF,$FF,$FF,$FF,$FF,  0,	4,  4,	0,  0,	0,  0,	0,  6
		.BYTE	4,  4,$FF,$FF,$FF,$FF,$FF,  7,	3,$3B,	0,  0,	0,  0,	0,  0
		.BYTE $38,$38,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$E9,$E0,$E8,$E4,$EA,$E4,$E8,$E0,	9,  9, $E, $D, $A,  5
		.BYTE	8,  1,	0,  0,	0,  0,	0,  0,	0,  0,$90,$10,$B0,$70,$A0,$50
		.BYTE $80,$10,	0,  0,	4,  0,	0,$10,$10,  0,	0,  0,	4,  0,	0,$BC
		.BYTE $18,  0,$3B,  3,	7, $F, $F,  7,$3B,$3B,$38,$38,$30,  0,	0,$30
		.BYTE $38,$38,$E0,$E0,$E0,$FF,$FF,$FF,$FF,$FF, $A,  5,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,$F0,$F0,$F4,$F0,$E9,$B0,$40,	0,  1,	3,  6
		.BYTE	6, $C,	0,  0,	0,$64,$6C,$EC,$FC,$FC,	0,  0,	0,  4, $C,  4
		.BYTE	4,  4,	3,  3,	7,$FF,$FF,$FF,$FF,$FF,$38,  0,	0,  0,	0,  0
		.BYTE	0,  0,$C9,$E3,$F3,$FF,$FF,$FF,$FF,$FF, $C,  8,	0,  0,	0,  0
		.BYTE	0,  0,$F8,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0
InkRibbon_4A93B:.BYTE $10, $F,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:983Do
		.BYTE	0,  0,$FF,$FF,$FF,$FF,$FE,$F9,$E7,$DC,	0,  0,	0,  0,	0,  1
		.BYTE	7,$1C,$FF,$FF,$FF,$80,$7F,$C1,$3E,$FF,	0,  0,	0,  0,$7F,$C1
		.BYTE $3E,$FF,$FF,$FF,$FF,$FF,$3F,$DF,$EF,$6F,	0,  0,	0,  0,	0,$C0
		.BYTE $E0,$60,$FF,$FF,$FE,$FD,$FB,$FB,$F6,$F6,	0,  0,	0,  1,	3,  3
		.BYTE	6,  6,$B3,$6F,$DE,$BD,$7A,$7D,$DE,$9F,$33,$6F,$DE,$BD,$7A,$7D
		.BYTE $DE,$9F,$FF,$FF,$FF,$5E,$1E, $D,$9D,$BB,$FF,$FF,$FF,$5E,$1E, $D
		.BYTE $9D,$BB,$67,$63,$63,$C3,$C3,$83,$87,  7,$60,$60,$60,$C0,$C0,$80
		.BYTE $80,  0,$ED,$ED,$DB,$DB,$DD,$DD,$CE,$D7, $D, $D,$1B,$1B,$1D,$1D
		.BYTE  $E,$17,$AF,$E7,$EB,$F9,$FF,$FC,$E2,$15,$AF,$E7,$EB,$F9,$FF,$FC
		.BYTE $E2,$15,$FB,$F6,$EC,$D8,$30,$E0,$C0,$80,$FB,$F6,$EC,$D8,$30,$E0
		.BYTE $C0,$80,	7, $F, $F,$1F,$1F,$3F,$7F,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$CA,$C5,$E2,$F0,$F8,$FE,$FF,$FF, $A,  5,	2,  0,	0,  0
		.BYTE	0,  0,$AF,$54,$A0,  0,	0,  0,$FF,$FF,$AF,$54,$A0,  0,	0,  0
		.BYTE	0,  0,	1,  3,	7, $F,$3F,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0
Accumulator_4AA3D:.BYTE	$11,$11,$FF,$FF,$FF,$FF,$FF,$FF,$FC,$C0,  0,  0,  0,  0,  0,  0
					; DATA XREF: BANK_04:983Fo
		.BYTE	0,  3,$FF,$FF,$FF,$FF,$F8,$C0,	3,$CF,	0,  0,	0,  0,	7,$3E
		.BYTE $3B,$FF,$FF,$FF,$FC,$C2,	2,$33,$F3,$F3,	0,  0,	0,$3E,$E7,$3F
		.BYTE $F3,$F3,$FF,$FF,$FF,$7F,$3F,$1F,$CF,  7,	0,  0,	0,  0,	0,$80
		.BYTE $C0,$C0,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$CF,$C7,$C3,$C0,$C0,$C0,$C0,$C0,$1F, $F,	7,  3,$10,$10
		.BYTE	8,$14,$CF,$CF,$F0,$20,	3,$1E,$7F,$79,$CF,$CF,$FC,$E0,	3,$1E
		.BYTE $7F,$79,$E4,  0,	1,$1F,$FD,$E7,$3F,$FF,$FC,$C0,	1,$1F,$FD,$E7
		.BYTE $3F,$FF,	3,$37,$F7,$F7,$77,$F7,$F7,$B7,	0,$30,$F0,$F0,$70,$F0
		.BYTE $F0,$B0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$18,$18,$14,  8,$10,  8
		.BYTE $10,  0,$7F,$7F,$7F,$7B,$7A,$3D,$3D,$3A,$7F,$7F,$7F,$7B,$7A,$7D
		.BYTE $3D,$7A,$F7,$ED,$5C,$5E,$C6,$DE,$EE,$47,$F7,$ED,$5C,$5E,$C6,$DE
		.BYTE $EE,$47,$B7,$AF,$6F,$EF,$EF,$2F,$8F,$AF,$B0,$A0,$60,$E0,$E0,$20
		.BYTE $A0,$E0,$E0,$F0,$F8,$FC,$FE,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$7F,$3B,$17,$28,$10,  1,$8F,$FF,$7F,$7B,$7F,$7F,$7E,$70
		.BYTE	0,  0,$7D,$EA,$54,  3,$1F,$FF,$FF,$FF,$7F,$FF,$FC,$C0,	0,  0
		.BYTE	0,  0,$4F,$8F,$3F,$FF,$FF,$FF,$FF,$FF,$E0,$C0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0
Shotgun_4AB5F:	.BYTE  $C, $B,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:9841o
		.BYTE	0,  0,$FF,$FF,$FF,$FC,$F1,$E8,$D8,$A0,	0,  0,	0,  2,	1, $F
		.BYTE $1F,$3E,$FF,$F0,	2,$20,$83,  0,	0,  0,	0,  0,$CF,$3F,$FF,$E2
		.BYTE $81,$35,$FF,$7F,$1F,$3F,$5F,$8F,$57,  3,	0,  0,$C0,$C0,$E0,$F0
		.BYTE $78,$9C,$FF,$FE,$F8,$F9,$F0,$F2,$F0,$F0,	0,  0,	0,  1,	6, $B
		.BYTE	6,  7,$41,  2,	1,$30,$60,$A0,	0,$18,$79,$F7,$CB,$3B,$FB,$E2
		.BYTE $D2,$20,$80,  0,	0,  0,	0,  2, $E,$FE,$F8,$F2,$F2,$F2,$50,$80
		.BYTE $10,  0,	3,  1,	1,$84,	0,$14,	8,$10,$DC,$DE,$DE,$BF,$3F,$5F
		.BYTE $9F,$5F,$F8,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$FE,$FE,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	8,  1,	3,$87,$FF,$FF,$FF,$FF,$1F, $C,	8,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0
KeyCard_4AC21:	.BYTE  $C, $B,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:9843o
		.BYTE	0,  0,$FF,$FF,$FF,$FF,$FF,$FE,$FC,$F8,	0,  0,	0,  0,	0,  0
		.BYTE	1,  3,$FF,$E3,$C0,$80, $C,$1F,$3F,$7B,	0,  0,$1C,$3F,$7F,$FF
		.BYTE $FF,$FB,$FF,$FF,$FF,$3F, $F,  3,$C0,$F0,	0,  0,	0,  0,$C0,$F0
		.BYTE $FC,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$3F,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$F0,$E0,$E0,$F0,$FC,$FF,$FF,$FF,	7,  3, $C,  3,	0,  0
		.BYTE	0,  0,$77,$1F,	7,  1,	0,  0,$C0,$F0,$F7,$FF,$FF,$3F,$CF,$33
		.BYTE  $C,  3,$EC,$DC,$F8,$F1,$62,  5, $B,$17,$EF,$DF,$FE,$FD,$FA,$F4
		.BYTE $E8,$10,$1F,$9F,$3F,$7F,$FF,$FF,$FF,$FF,$C0,$80,	0,  0,	0,  0
		.BYTE	0,  0,$FC,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0, $F,$1F,$FF,$FF,$FF,$FF,$FF,$FF,$C0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0
Key_4ACE3:	.BYTE  $B, $A,$FF,$FF,$FF,$FF,$FE,$FD,$FB,$FA,	0,  0,	0,  0,	1,  3
					; DATA XREF: BANK_04:9845o
		.BYTE	7,  7,$FF,$FF,$FF,$FF,$1F,$EF,$17,$EF,	0,  0,	0,  0,$C0,$E0
		.BYTE $F0,$F8,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$F6,$F6,$F1,$FB,$FD,$FE,$FF,$FF,	7,  7,	7,  7,	1,  0
		.BYTE	0,  0,$97,$AB,$79,$29,$99,$E2,$3C,$C2,$FC,$FE,$FF,$BF,$FF,$FF
		.BYTE $3F,  7,$FF,$FF,$FF,$7F,$FF,$FF,$FF,$7F,	0,  0,	0,$80,	0,  0
		.BYTE	0,$80,$F9,$FC,$FE,$FF,$FF,$FF,$FF,$FF,	3,  1,	0,  0,	0,  0
		.BYTE	0,  0,$3F,$9F,$6F,$37,$9B,$CD,$E6,$F3,$C0,$E0,$F0,$78,$3C,$1E
		.BYTE  $F,  7,$FF,$FF,$FF,$FF,$EF,$4F,$D3,$67,	0,  0,	0,  0,$20,$D8
		.BYTE $FC,$FC,$BB,$D7,$67,$33,$93,$C3,$E7,$FF,$FC,$F8,$F8,$7C,$3C,$18
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0
Key_4AD95:	.BYTE  $A,  9,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FE,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:9847o
		.BYTE	0,  0,$FF,$FF,$FF,$FF,$FF,$FF, $F,$F7,	0,  0,	0,  0,	0,  0
		.BYTE $10,$F8,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$FD,$FD,$FD,$FD,$FC,$FE,$FF,$FF,	1,  1,	1,  1,	0,  0
		.BYTE	0,  0,$8B,  5,	1,  3,$83,$47,$3D,$82,$9C, $E,	6,$86,$C6,$7E
		.BYTE $3E,  7,$F9,$FC,$FE,$FF,$FF,$FF,$FF,$FF,	3,  1,	0,  0,	0,  0
		.BYTE	0,  0,$7F,$BF,$5F,$2F,$97,$CB,$E4,$F2,$80,$C0,$E0,$70,$38,$1C
		.BYTE  $E,  7,$FF,$FF,$FF,$FF,$EF,$4F,$D3,$67,	0,  0,	0,  0,$20,$D8
		.BYTE $FC,$FC,$BB,$D7,$67,$33,$93,$C3,$E7,$FF,$FC,$F8,$F8,$7C,$3C,$18
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0
Pistol_4AE37:	.BYTE  $E, $D,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:9849o
		.BYTE	0,  0,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FD,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$FF,$FF,$FF,$FF,$FC,$F0,$E1,$E0,	0,  0,	0,  0,	2,  1
		.BYTE	3,  5,$FF,$FF,$FF,$E0,$81, $F,$3C,$F0,	0,  0,	0,$1E,$71,$8F
		.BYTE $3F,$FE,$F8,$E0,	2,$3F,$F3,  0,$14,$68,	1,$13,$CF,$3F,$FF,$E2
		.BYTE $9D,$7D,$7F,$3F,$3F,$BF,$5F,$8F,$57,  3,	0,$80,$C0,$C0,$E0,$F0
		.BYTE $78,$9C,$E2,$F0,$F4,$F1,$F0,$F2,$F0,$F0,	2,  2,	4,  5,	6, $B
		.BYTE	6,  7,$41,  2,	1,$30,$60,$A0,	0,$18,$F9,$F7,$CB,$3B,$FB,$E2
		.BYTE $D3,$20,$D4,$A0,	0,  0,	0,  2, $E,$FE,$FE,$F2,$E6,$FA,$54,$A0
		.BYTE $10,  0,	3,  1,	9,$84,	8,$14,	8,$10,$DC,$DE,$DE,$BF,$3F,$5F
		.BYTE $9F,$5F,$F8,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$FE,$FE,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	8,  1,	3,$87,$FF,$FF,$FF,$FF,$1F, $C,	8,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0
Herbs_4AF19:	.BYTE $10, $F,$FF,$FF,$FF,$FF,$F3,$E3,$C7,$87,	0,  0,	0,  0, $C,$18
					; DATA XREF: BANK_04:984Bo
		.BYTE $34,$70,$FF,$FF,$FF,$FF,$FF,$FF,$EF,$E3,	0,  0,	0,  0,	0,  0
		.BYTE $10,  8,$FF,$FF,$FD,$F8,$FC,$FC,$FE,$9C,	0,  0,	2,  3,	1,  1
		.BYTE	0,$62,$FF,$FF,$DF,$C7,$EB,$75,$61,$C0,	0,  0,$20,$18, $C,$96
		.BYTE $F2,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$F3,$FB,$F2,$F6,$E8,$F0,$E0,$E0,	8, $D, $D, $F,$1F, $E
		.BYTE $1E,$1B,$F7,$31,$10,$92,$30,$79,$FB,$36,	8,$86,$E7,$C7,$87,  3
		.BYTE	7,$8F,$AC,  5,$52,$A8,$E0,$86,$1F,$3F,$71,$FB,$FF,$FF,$F8,$F0
		.BYTE $E0,$C0,$80,$1D,$5F,$8F,$4F,$3F,$BF,$FF,$E2,$C0,$E0,$F0,$40,  0
		.BYTE	0,  0,$EC,$FC,$FC,$F0,$E0,$E4,$C9,$D2,$13,  3,	3,  3, $F,$1D
		.BYTE $1B,$3F,$6A,$F1,$F4,$E8,$73,$67,$6F,$4F,$1B,$9B,$97,$1C,$38,$30
		.BYTE $F0,$E0, $F,$E7,$71,  6,	3,$F0,$FC,$FF,$F0,$F8,$FE,$FF, $F,  3
		.BYTE	0,  0,$FF,$FF,$FF,$FF,$7F,$7F,$3F,$BF,	0,  0,	0,  0,$80,$80
		.BYTE $40,  0,$DF,$FE,$FF,$FE,$FE,$FE,$FE,$FF,$21,  1,	1,  1,	1,  1
		.BYTE	0,  0,$1F,$1F,$3F,$7F,$7F,$7F,$7F,$FF,$A0,$C0,$C0,$80,$80,  0
		.BYTE $80,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0
Note_4B01B:	.BYTE  $C, $B,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:984Do
		.BYTE	0,  0,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
		.BYTE $40,$78,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  6,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  1
		.BYTE	3, $F,$BF,$FD,$DA,$FD,$A8,$F0,$C0,$C0,$7E,$3F,$7F,$FD,$FA,$F4
		.BYTE $EA,$F0,$FF,$55,$AA,$15,$CF,$77,$2E,$1B,	0,$FF,$FF,$FF,$FF,$7F
		.BYTE $3F,$5F,$BF,$5F,$BD,$FF,$BF,$FF,$EB,$FF,$7E,$FE,$FE,$FE,$FE,$FE
		.BYTE $FC,$FC,$FF,$7F,$BF,$CF,$F3,$FC,$F0,$C0,$1F,$FF,$7F,$3F, $F,  3
		.BYTE	0,  0,$E0,$76,$E8,$50,$A8,$75,	6,  0,$FF,$FE,$FC,$FE,$FF,$FF
		.BYTE $7F,  7, $F,  5,	3,  7,$BF,$7F,$F8,  0,$8F,$17,$23,  7,$FF,$FF
		.BYTE $FF,$F8,$FF,$F7,$F7,$EF,$EF,$9F,$7F,$FF,$F8,$F8,$F0,$F0,$F0,$E0
		.BYTE $80,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0
Medal_4B0DD:	.BYTE $11,$11,$FF,$FF,$FF,$FF,$FF,$FF,$FD,$F6,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:984Fo
		.BYTE	3, $F,$FF,$FF,$FD,$F7,$DF,$6F,$D0,$A0,	0,  0,	3, $F,$3F,$FF
		.BYTE $FC,$F3,$FF,$FF,$9F,$C7,$F1,$FC,$3F, $F,	0,  0,$C0,$F0,$FC,$FF
		.BYTE $3F,$FF,$FF,$FF,$FF,$FF,$FF,$7F,$1F,$C7,	0,  0,	0,  0,	0,  0
		.BYTE $C0,$F0,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$DD,$FA,$FC,$F8,$F0,$E8,$F1,$E8,$3F,$7F,$7C,$7B,$7B,$7B
		.BYTE $7B,$7B,	9,  1,$41,$21,$18,$9D,$47,$37,$CF,$3B,$F5,$EB,$DC,$FD
		.BYTE $D7,$BF,$13,  0,	4,  8,$31,$72,$C0,$D8,$7F,$5A,$2F,$5B,$F5,$7A
		.BYTE $D5,$FA,$F1,$FC,$3C,$1C,$1C,$9C,$1C,$1C,$FC,$FE,$7E,$BE,$5E,$BE
		.BYTE $DE,$BE,$D0,$E8,$D1,$E8,$D1,$E8,$F5,$9A,$7B,$7B,$7B,$7B,$7B,$7C
		.BYTE $7F,$3F,$FF,$37,	6,$99,$39,$41,	1,$80,$FF,$3F,$5F,$BB,$FD,$FB
		.BYTE $3D,$CE,$FE,$D8,$C0,$73,$38,  4,	0,  3,$FE,$F8,$D5,$F3,$79,$2F
		.BYTE $5F,$FF,$1C,$1C,$9C,$1C,$9C,$3C,$F8,$F1,$DE,$FE,$DE,$FE,$FE,$FE
		.BYTE $FE,$FC,$C7,$F1,$FC,$FF,$FF,$FF,$FF,$FF, $F,  3,	0,  0,	0,  0
		.BYTE	0,  0,$40,$BC,$77, $A,$C5,$F2,$FC,$FF,$F3,$FF,$FF,$3F, $F,  3
		.BYTE	0,  0, $F,$3F,$FC,$A0,$43, $F,$3F,$FF,$FF,$FF,$FF,$FC,$F0,$C0
		.BYTE	0,  0,$C3, $F,$3F,$FF,$FF,$FF,$FF,$FF,$F0,$C0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0
Knife_4B1FF:	.BYTE  $C, $B,$FF,$FF,$EF,$F7,$EB,$E5,$F2,$F1,	0,  0,$10,$1C, $F,  7
					; DATA XREF: BANK_04:9851o
		.BYTE	7,  3,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$7F,	0,  0,	0,  0,	0,$80
		.BYTE $C0,$E0,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$F8,$F8,$FC,$FE,$FF,$FF,$FF,$FF,	3,  1,	0,  0,	0,  0
		.BYTE	0,  0,$BF,$5F,$2F,$16, $B,$85,$C2,$F0,$F0,$F8,$FC,$7F,$3F,$1F
		.BYTE	7,  3,$FF,$FF,$FF,$FF,$7F,$BF,$93, $B,	0,  0,	0,  0,$80,$C0
		.BYTE $EC,$BC,$F8,$FC,$FE,$FE,$FD,$FC,$FE,$FF,	0,  0,	0,  1,	3,  3
		.BYTE	1,  0,$35,  9,$19,$30,	0,$C0,$20,$F0,$3E,$1C,$18,$32,$A5,$C2
		.BYTE $81,  0,$FF,$FF,$FF,$FF,$FF,$7F,$BF,$5F,	0,  0,	0,  0,$80,$C0
		.BYTE $E0,$F0,$F8,$FC,$FE,$FF,$FF,$FF,$FF,$FF,	0,  2,	1,  0,	0,  0
		.BYTE	0,  0,$FF,$FF,$DF,$3F,$FF,$FF,$FF,$FF,$F0,$F0,$E0,$C0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0
SMG_4B2C1:	.BYTE  $C, $B,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:9853o
		.BYTE	0,  0,$FF,$FB,$FB,$FB,$FB,$C0,$80,$BF,	0,  4,	4,  4,	0,  0
		.BYTE $3F,$3F,$FF,$FF,$FF,$FF,$FF,  0,$1F,$E0,	0,  0,	0,  0,	0,  0
		.BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FE,  0,$80,$3E,	0,  0,	0,  0,	1,  0
		.BYTE $FE,$FE,$FF,$FF,$7F,$7F,$3F,  3,	3,$EB,	0,  0,$80,$80,$80,  0
		.BYTE	8,$E8,$80,$C0,$FD,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0, $A,$15,$C0,$C0,$C0,$FF,$FF,$FF,$3F,$15,$1F, $A,	0,  0
		.BYTE	0,  0,$AA,$14,$2A,  4,	6,$E6,$E2,$E3,$FE,$54,$6B,$65, $F,  7
		.BYTE  $B,  7, $B,  3,	3,$63,$63,$73,$7B,$7F,$E8,$88,	0,  0,	0,  0
		.BYTE	0,  0,$E0,$E0,$F0,$F0,$FF,$FF,$FF,$FF,	3,  3,	3,  0,	0,  0
		.BYTE	0,  0,$BF,$BF,$BF,$7F,$FF,$FF,$FF,$FF,$80,$80,$80,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0
Pistol_4B383:	.BYTE  $C, $B,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:9855o
		.BYTE	0,  0,$EF,$CF,$80,  0,$1F,  3,$80,$83,$10,$10,$10,$7F,$7F,$3F
		.BYTE $7F,  3,$FF,$FF,	0, $E,$FF,  0,$28,$54,	0,  0,	0,$FF,$FF,$FC
		.BYTE $7B,$FE,$FF,$FF,	0,$15,$EA,$75,	0,  0,	0,  0,	0,$F7,$FB,$7D
		.BYTE $FF,$AA,$FF,$FF, $F,$4F,$AF,$47,	3,  3,	0,  0,$30,$50,$A0,$C0
		.BYTE $E0,$B8,$80,$F0,$FF,$FF,$FF,$FF,$FF,$FF,$78,  8,	0,  0,	0,  0
		.BYTE	0,  0,$E0,  0,$E3,$E7,$E7,$F3,$FC,$FF,$FD, $F,	3,  0,$14, $B
		.BYTE	0,  0,	0,  0,$C0,$C0,$C2,$82,	4,$E0,$54,$80,$C8,$45, $A,$27
		.BYTE $16,$15,	7, $F,$3F,$3F,$3F,$1F,$1F,$1F,	0,  0,	0,  0,	0,  0
		.BYTE $80,$40,$E0,$F0,$F0,$F0,$F0,$F8,$FC,$FF,$12,  9, $A,  9,	8,  4
		.BYTE	2,  0, $F,$8F,$8F,  7,	7,  7, $F,$FF,$80,$C0,$A0,$40,$A0,$40
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0
Map_4B445:	.BYTE  $F, $E,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:9857o
		.BYTE	0,  0,$FF,$FF,$FF,$FF,$FE,$FE,$FD,$FD,	0,  0,	0,  0,	1,  1
		.BYTE	3,  1,$FF,$FF,$FF,$FF, $F,$A0,$55,$EA,	0,  0,	0,  0,$F0,$FF
		.BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$7F,	3,$AB,	0,  0,	0,  0,	0,$80
		.BYTE $FC,$FC,$FB,$FB,$F3,$F6,$E6,$EC,$EC,$DE,	7,  3, $B,  6,$16,$1C
		.BYTE  $C,$3E,$FF,$FF,$1F,  3,$80,$68,	4,  1,$FF,$FF,$1F,  3,$80,$68
		.BYTE	4,  1,$53,$A7,$47,$A7,$C7,$CF,$CF,$CF,$F8,$F0,$F0,$F0,$F0,$E0
		.BYTE $E0,$E0,$DF,$BE,$BE,$BD,$7F,$3E,$5F,$2F,$1F,$7E,$7E,$3D,$FF,$FF
		.BYTE $FF,$FF,$E3,$FF,$5F,$FF,$FF,$BF,$94,$CA,$E3,$FF,$5F,$FF,$FF,$FF
		.BYTE $BF,$DF,$CF,$8F,$9F,$9F,$9F,$3F,$3F,$3F,$E0,$E0,$C0,$C0,$C0,$C0
		.BYTE $80,$80,$FE,$FE,$FC,$FC,$FE,$FF,$FF,$FF,	0,  0,	0,  1,	0,  0
		.BYTE	0,  0,$55,$2A,	5,  0,	0,$F8,$FF,$FF,$FF,$FF,$FF,$5F,	3,  0
		.BYTE	0,  0,$54,$A8,$40,$80,	0,  0,$F8,$FF,$FF,$FF,$FF,$FF,$FE,  2
		.BYTE	0,  0,$3F,$7F,$7F,$FF,$FF,$FF,$FF,$FF,$80,$80,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0
Medal_4B537:	.BYTE $11,$11,$FF,$FF,$FF,$FF,$FF,$FF,$FD,$F6,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:9859o
		.BYTE	3, $F,$FF,$FF,$FD,$F7,$DF,$6F,$D0,$A0,	0,  0,	3, $F,$3F,$FF
		.BYTE $FC,$F3,$FF,$FF,$9F,$C7,$F1,$FC,$3F, $F,	0,  0,$C0,$F0,$FC,$FF
		.BYTE $3F,$FF,$FF,$FF,$FF,$FF,$FF,$7F,$1F,$C7,	0,  0,	0,  0,	0,  0
		.BYTE $C0,$F0,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$DD,$FA,$FC,$F8,$F1,$EB,$F3,$EB,$3F,$7F,$7C,$7B,$7B,$7B
		.BYTE $7B,$7B,	1,  0,$30,$E0,$80,$80,$80,$50,$C5,$3B,$F5,$FE,$FD,$FA
		.BYTE $BD,$57,$F3,$C8,$32,  0,$91,$51,$81,  2,$FF,$FE,$FF,$BF,$DF,$FF
		.BYTE $FF,$FF,$F1,$FC,$3C,$1C,$1C,$1C,$1C,$1C,$FC,$FE,$7E,$BE,$DE,$BE
		.BYTE $DE,$BE,$D3,$EB,$D3,$EB,$D3,$E8,$F5,$9A,$7B,$7B,$7B,$7B,$7B,$7C
		.BYTE $7F,$3F,$FC,$F8,$FC,$E8,$90,$F0,$19,$8F,$FF,$FF,$FD,$EE,$95,$FA
		.BYTE $3D,$CF,	2,$C4,$10,  0,$10,$60,$B4,$43,$FF,$FF,$7F,$AF,$55,$EA
		.BYTE $F5,$FF,$1C,$1C,$1C,$1C,$1C,$3C,$F8,$F1,$DE,$FE,$DE,$FE,$7E,$BE
		.BYTE $FE,$FC,$C7,$F1,$FC,$FF,$FF,$FF,$FF,$FF, $F,  3,	0,  0,	0,  0
		.BYTE	0,  0,$41,$BC,$77, $A,$C5,$F2,$FC,$FF,$F3,$FF,$FF,$3F, $F,  3
		.BYTE	0,  0,$8F,$3F,$FC,$A0,$43, $F,$3F,$FF,$FF,$FF,$FF,$FC,$F0,$C0
		.BYTE	0,  0,$C3, $F,$3F,$FF,$FF,$FF,$FF,$FF,$F0,$C0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0
Medal_4B659:	.BYTE $11,$11,$FF,$FF,$FF,$FF,$FF,$FF,$FD,$F6,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:985Bo
		.BYTE	3, $F,$FF,$FF,$FD,$F7,$DF,$6F,$D0,$A0,	0,  0,	3, $F,$3F,$FF
		.BYTE $FC,$F3,$FF,$FF,$9F,$C7,$F1,$FC,$3F, $F,	0,  0,$C0,$F0,$FC,$FF
		.BYTE $3F,$FF,$FF,$FF,$FF,$FF,$FF,$7F,$1F,$C7,	0,  0,	0,  0,	0,  0
		.BYTE $C0,$F0,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$DD,$FA,$FC,$F8,$F0,$E8,$F0,$E8,$3F,$7F,$7C,$7B,$7B,$7A
		.BYTE $7B,$7B,	0,  0,	0,  0,	1,$3E, $E,  7,$CF,$3E,$FD,$EA,$D5,$BE
		.BYTE $5E,$EF,	3,  0,$80,$80,$C0,$FE,$B8,$70,$5F,$BE,$DF,$AF,$D7,$FF
		.BYTE $BF,$7B,$F1,$FC,$3C,$1C,$1C,$1C,$1C,$1C,$FC,$FE,$7E,$BE,$DE,$BE
		.BYTE $DE,$BE,$D0,$E8,$D0,$E8,$D0,$E8,$F5,$9A,$79,$7A,$79,$7A,$79,$7C
		.BYTE $7F,$3F,	2,  3,	6,  8,$10,  0,	0,$80,$D6,$EF,$F7,$EA,$55,$AF
		.BYTE $15,$CA,$60,$E0,$30,  8,	4,  0,	0,  3,$75,$EB,$77,$AB,$57,$FF
		.BYTE $FF,$FF,$1C,$1C,$1C,$1C,$1C,$3C,$F8,$F1,$DE,$FE,$DE,$FE,$FE,$FE
		.BYTE $FE,$FC,$C7,$F1,$FC,$FF,$FF,$FF,$FF,$FF, $F,  3,	0,  0,	0,  0
		.BYTE	0,  0,$40,$BC,$77, $A,$C5,$F2,$FC,$FF,$F1,$FE,$FF,$3F, $F,  3
		.BYTE	0,  0, $F,$3F,$FC,$A0,$43, $F,$3F,$FF,$5F,$FF,$FF,$FC,$F0,$C0
		.BYTE	0,  0,$C3, $F,$3F,$FF,$FF,$FF,$FF,$FF,$F0,$C0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0
Ammo_4B77B:	.BYTE  $D, $C,$FF,$FF,$FF,$FE,$FE,$FC,$F8,$F0,	0,  0,	0,  0,	1,  1
					; DATA XREF: BANK_04:985Do
		.BYTE	2,  0,$FF,$FF,$FF,$3F,$5F,$3F,$3F,  7,	0,  0,	0,$C0,$E0,$60
		.BYTE $38,  6,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$F0,$F0,$F0,$F0,$F8,$FC,$FE,$FF,	0,  4,	2,  1,	0,  0
		.BYTE	0,  0,	1,  0,	0,  0,	0,  0,	0,  0,	1,  0,	0,  0,$80,$40
		.BYTE	0,$10,$FF,$FF,$7F,$3F, $F,  7,	3,  0,	0,$80,$40,$30,	8,  4
		.BYTE	3,  0,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,$80,$80,$C0,$E0,$F0,$F8,$FC,$FE,$FF,	0,  0,	2,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$80,  0
		.BYTE $20,$10,$7F,$3F,$3F,$1F, $F,  1,	9,$13,$40,$20,$20,$10, $E,  0
		.BYTE	8,$12,$80,$C0,$E0,$F0,$F8,$FC,$FF,$FF,	8,  4,	0,  1,	0,  0
		.BYTE	0,  0,	3,  7,	7, $F,$1F,$3F,$FF,$FF,	0,$10,$20,$40,$80,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0
Revolver_4B84D:	.BYTE  $D, $C,$FF,$FF,$FF,$FF,$FF,$FF,$E0,$E0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:985Fo
		.BYTE	0, $D,$FF,$FF,$FF,$FF,$FF,$FF,$7F,$3F,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$CC,$CF,$C0,$DF,$C0,$D0,$C0,$FF, $C, $F,$1E,$1F,	4,$1F
		.BYTE	0,  0,	0,$10,	0,$FC,	0,$1D, $C,$F0,	0,$51,$A0,$FD,$48,$1D
		.BYTE  $C,  1,	0,$A8,	0,$1D,$1D,$F9,$14,  0,	0,$FC,$1D,$FD,$1D,$FD
		.BYTE $1D,$E9,$7F,$7F,	7,$4F,$9F,$3F,$3F,$3F,	0,  0,	0,$C0,$80,  0
		.BYTE	0,$80,$F4,$FB,$FD,$FD,$FE,$FF,$FF,$FF,	4,  2,	1,  1,	0,  0
		.BYTE	0,  0,	0,$90,$E8,$D8,$E4,  0,$FE,$FE,	3,$56,	8,$13,$FD,  1
		.BYTE	0,  0,$1F, $F,	7,  7,	3,  3,	1,  1,$40,$E0,$B0,$50,$A8,$58
		.BYTE $AC,$D4,$FE,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	1,  0,	0,  0,	0,  0,	0,$FF,$AC,$56,$6A,$55,$6A,$54
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0
Disk_4B91F:	.BYTE $11,$11,$FF,$FF,$FF,$E0,$E8,$E9,$EA,$E9,	0,  0,	0,  0, $F, $F
					; DATA XREF: BANK_04:9861o
		.BYTE  $F, $F,$FF,$FF,$FF,  0, $F,$57,$A8,$47,	0,  0,	0,  0,$FF,$F7
		.BYTE $A8,$47,$FF,$FF,$FF,  0,$F8,$E0,	0,$C0,	0,  0,	0,  0,$FB,$E0
		.BYTE	0,$C1,$FF,$FF,$FF, $F, $F, $F, $F, $F,	0,  0,	0,  0,$E0,$20
		.BYTE $20,$20,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$EA,$ED,$E8,$EF,$EB,$E7,$E1,$E0, $E, $D, $C, $F, $F,  7
		.BYTE	9,  8,$BF,$7F,$FF,$D7,$AE,$D6,$FC,  0,$BF,$7F,$FF,$FF,$FE,$FE
		.BYTE $FC,  2,$80,$80,	2,  7, $B,$15,$2B,$55,$88,$9C,$3E,$7F,$7F,$FF
		.BYTE $FF,$7F, $F, $F, $F, $F, $F,$8F,$8F,$8F,$20,$A0,$20,$20,$20,$A0
		.BYTE $A0,$A0,$E1,$E1,$E1,$E0,$E0,$E0,$E0,$E0,	9,  9,	9,  8,	8,  8
		.BYTE	8,  8,$54,$A8,$D4,$EA,$D0,$60,	0,  0,$FD,$FA,$FC,$FE,$FD,$7E
		.BYTE $3D,$1A, $A,$15,	0,  0,	0,  0,	0,  0,$3F,$5F,$BF,$5F,$7E,$3E
		.BYTE $3C,$28,$8F, $F, $F, $F, $F, $F, $F, $F,$A0,$A0,$20,$20,$20,$20
		.BYTE $20,$20,$E0,$E0,$E0,$E0,$E0,$FF,$FF,$FF, $A,  8,	8, $F,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,$FF,$FF,$FF,	5,$80,	0,$FF,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,$FF,$FF,$FF,$40,  1,	0,$FF,	0,  0
		.BYTE	0,  0, $F, $F, $F, $F, $F,$FF,$FF,$FF,$60,$20,$20,$E0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0
Shield_4BA41:	.BYTE $10, $F,$FF,$FF,$FF,$FC,$FC,$FC,$FC,$FC,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:9863o
		.BYTE	0,  0,$FF,$FF,$FF,  0,	3,$26,$55,$AA,	0,  0,	0,  0, $F,$3F
		.BYTE $7F,$BF,$FF,$FF,$FF,  0,$C0,$64,$AA,$55,	0,  0,	0,  0,$F0,$FC
		.BYTE $FE,$FD,$FF,$FF,$FF,$3F,$3F,$3F,$3F,$3F,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$57,$AE,$5C,$AC,$5F,$A2,$40,$A2,$7F,$BF,$7F,$BE,$7F,$BF
		.BYTE $7F,$BB,$EA,$35,$1A,$95,$FA,  1,	0,$21,$FE,$BD,$DE,$DD,$FE,$B9
		.BYTE $FC,$B9,$3F,$3F,$3F,$3F,$3F,$3F,$3F,$3F,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$FC,$FC,$FC,$FC,$FC,$FC,$FE,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$40,$A4,$5E,$A8,$58,$AF,$57,$2B,$7B,$B7,$7F,$BD,$7A,$BF
		.BYTE $7F,$3F,$10,$11,$3A,  5,$8A,$F5,$EA,$D4,$DC,$D9,$BE,$AD,$CE,$FD
		.BYTE $FE,$FC,$3F,$3F,$3F,$3F,$3F,$3F,$7F,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$9D,$CF,$E7,$F3,$F9,$FC,$FE,$FF,$3F,$1F, $F,  7,	3,  1
		.BYTE	0,  0,$B9,$F3,$E7,$CF,$9F,$3F,$7F,$FF,$FC,$F8,$F0,$E0,$C0,$80
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0
Key_4BB43:	.BYTE  $B, $A,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:9865o
		.BYTE	0,  0,$FF,$FF,$FF,$FF,$FF,$FF,$C7,$13,	0,  0,	0,  0,	0,  0
		.BYTE	0,$10,$FE,$FC,$F8,$F0,$F0,$E4,$E0,$E4,	0,  0,	0,  0,	0,  5
		.BYTE	1,  5,$29,$14,$48,$64,	8,$40,$81,$43,$28,$14,$48,$64,	8,$E0
		.BYTE $E1,$C3,$FF,$FF,$FF,$FF,$FF,$7F,$BF,$DF,	0,  0,	0,  0,	0,  0
		.BYTE $80,$C0,$F0,$F8,$FE,$FF,$FF,$FF,$FF,$FF,	1,  0,	0,  0,	0,  0
		.BYTE	0,  0,	2,  7, $B,$C7,$E3,$F1,$F9,$FC,$86,$1F,$1F, $F,	7,  3
		.BYTE	1,  0,$EF,$77,$BB,$DD,$EE,$B5,$5B,$A9,$E0,$70,$B8,$DC,$EE,$B4
		.BYTE $58,$A8,$FE,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$55,$2B,$97,$CF,$FF,$FF,$FF,$FF,$54,$28,$10,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0
Health_4BBF5:	.BYTE $10, $F,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:9867o
		.BYTE	0,  0,$FF,$80,$AB,$80,$C0,$EF,$EF,$8F,	0,  0,$3F,$3F,$10, $F
		.BYTE  $F,$1F,$FF,  1,$F9,  1,	3,$87,$E7,$F1,	0,  0,$FC,$FC,	0,$F0
		.BYTE $F0,$F8,$FE,$FC,$FC,$FC,$FD,$FD,$FD,$FD,	0,  1,	1,  0,	1,  1
		.BYTE	1,  1,$3F,$7F,$FF,  0,$D5,$AA,$55,$A0,$7F,$FF,$FF,  0,$FF,$FF
		.BYTE $FF,$FF,$D8,$E6,$F3,  0,$42,$A1,$40,  0,$FE,$FF,$FF,  0,$FF,$FF
		.BYTE $FF,$FA,$7F,$3F,$3F,$3F,$BF,$3F,$BF,$3F,	0,$80,$80,  0,$80,$80
		.BYTE $80,$80,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FC,	1,  1,	1,  1,	1,  1
		.BYTE	1,  0,$40,$80,$40,$80,$40,$A8,$D4,  0,$F1,$FE,$FF,$FF,$FF,$FF
		.BYTE $FF,  0,	0,  0,	0,  0,	0,  0,	0,  0,$FF,$6B,$7F,$F5,$6B,$FF
		.BYTE $FF,  0,$BF,$3F,$BF,$3F,$3F,$3F,$3F,$3F,$80,$80,$80,$80,$80,$80
		.BYTE $80,  0,$FC,$FC,$FC,$FC,$FC,$FE,$FF,$FF,	0,  1,	0,  1,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,$FF,$AA,$55,$AA,$55,$AA,$55
		.BYTE	0,  0, $C,  4,$1C,$38,	0,$40,	0,$FF,$AE,$55,$BE,$7D,$AA,$55
		.BYTE	0,  0,$3F,$3F,$3F,$3F,$3F,$7F,$FF,$FF,$80,  0,$80,  0,$80,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0
byte_4BCF7:	.BYTE	2,  1,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:9869o
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0
BattleZombie_4BD19:.BYTE $F3,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0
					; DATA XREF: BANK_04:986Bo
		.BYTE	0,  0,	0,  0,	0,  1,$16,$3E,$10,$20,	0,  0,	0,  0,	0,  0
		.BYTE $28,$13,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,$80
		.BYTE $80,  0,	0,  0,	0,  0,	0,  0,	0,$1A,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  1,	4,  6,	0,  0,	0,  0,	0,  0
		.BYTE	0,  1,	0,  0,	0,  0,$80,$80,	0,$10,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$40,  8,$28,  0,$2C,$1C,$20,  0,	0,  0,$10,$31,	0,  0
		.BYTE	0,  0,	0,  0,	8,  8,	0,  0,	0,  0,	0,  0,	0,$40,	0,  0
		.BYTE	0,  0,$10,$33,$20,  0,	0,  0, $E,  0,	2,  8,$1A,$11,	1, $A
		.BYTE	0,  0,	0,  0,$C0,$40,	0,$20,	8,$90,	0,  0,	0,  0,	0,  0
		.BYTE	0,  4,	0,  0,	1,  1,	1,  0,	2,  2,	4,  0,	0,  2,	0,  0
		.BYTE	0,  0,$10,$40,	0,$C0,	0,$12,$E1,$40,	0,$20,	0,  0,	0,  0
		.BYTE	0,  1,	0,  0,	0,  0,	0,  0,	0,$30,	0,  0,	0,  0,	0,  0
		.BYTE	0,$80,	0,  0,	0,  0,	0,  0,	0,  1,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	3,$1A,	8,$84,	0,  0,	0,  0,	0,  1
		.BYTE $73,$73,$2E,$3C,	0,$80,	0,$10,$32,$20,	0,  0,	0,  0,	0,$80
		.BYTE	0,  0,	0,  0,	0,  0,$20,$10,	8,$C0,	0,  0,	0,  0,	0,  0
		.BYTE $10,$18,	1,  0,	4,  1,	4,$15,	1,  4,	0,  0,	0, $C,	8,  8
		.BYTE	0,  0,$20,  0,	0,$41,$64,$20,	0,$20, $D,$1C,$39,$1A,	3,$4F
		.BYTE $6F,$5F,	0,  0,	0,$40,	0,  0,	0,$80,	0,$80,$40,$80,$E0,$A0
		.BYTE $A0,$20,	0,  8,$10,  0,	3,  7,$38,  0,	2,  2,	7,$14,$30,$38
		.BYTE	7,$37,	4,$14,$64,  8,$33,$12,$80,$80,	1,  1,	1,  2,	0,  1
		.BYTE	3,  7,$38,$84,$14,$D2,$60,  0,	0,$40,$80,$58,	8,  8,$9E,$C6
		.BYTE $D8,$90,	2,  2,	0,  0,	4,  8,	0,  0,	0,  1,	3,  3,	3,  6
		.BYTE	6, $A,$A8,$40,	0,  0,$1E,  3,	2,  2,$47,$1F,$3F,  1,$60,$FC
		.BYTE $FD,$FD,$13,$30,$37,$10,$3C,$3C,$20,$10,	0,  0,	0,  0,	0,  1
		.BYTE	1,  1,$C2,  3,$82,  0,	0,  4,	0,$C0,$18,$18,$19,$3B,$FB,$73
		.BYTE $37,$17,	0,$80,	0,$20,$20,  0,	0,  0,	0,  0,$C0,$C0,$C0,$E0
		.BYTE $E0,$E0,	0,  1,	0,  0,	0,  0,	4,  0,	4,  4,	4,  4,	4,  4
		.BYTE	0,  0,$28,$20,$20,  0,	0,  0,	0,  0,$51,$57,$D3,$D2,$CC,$5A
		.BYTE $40,$80,	0,  0,$10,  0,	0,  0,	0,  0,$B0,$80,	0,$90,$30,$10
		.BYTE $10,$10,	0,$24,$28,  8,$3C,$34,	0,$3A,$17,$13,$11,$12,	0,  8
		.BYTE $38,$40,$40,  0,$88,$4E,	0,  0,	0,  0,$8F,$BE,$27,$90,$1E,$1A
		.BYTE	5,  6,	0,  0,	0,  0,	0,  0,	0,  0,$10,  4,	0,  0,	0,  0
		.BYTE	0,  0,	2,  2,	2,  6,	1,  3,	1,  6, $C, $C,	4,  0, $C, $C
		.BYTE  $E,  0,	0,  0,	1,$20,$24,  2,$1E,$10,$FF,$FF,$7E,$5E,$5A,$5C
		.BYTE	0,  1,$32,$24,$44,  8,$C8,$10,$44,  8,	1,  3,	3,  7,	7, $F
		.BYTE $33,$F6,$C0,$20,$19,$9A,$10,$10,$20,  0,$17,$C7,$66,$61,$E7,$E5
		.BYTE $C1,$84,	0,  0,	0,  0,	0,  0,	0,  0,$E0,$E0,$20,$E0,$E0,$80
		.BYTE $80,  0,	0,  2,	2,  2,	2,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,$40,$62, $D,$1D,$40,$20,$40,$C0,	0,  0
		.BYTE $80,$80,	0,  0,	0,  0,	0,  0,$80,$80,$10,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	1,  1,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	3,  0,	2,$63,$D3,$E0,$C0,$E0,$B8,$88,	0,  0,	0,  0
		.BYTE	1,  0,	0,$10,	0,  0,	2,  4,	6,  0,	1,  0,	0,  0,	0,  2
		.BYTE	1,$4F,	0,  0,	0,  1,$80,$50,	0,$10,	0,  0,	0,  0,	0,  0
		.BYTE $80,$80,	0,$20,$C0,$A0,$A0,$E0,$E0,$E0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0, $C,  9,	1,  1,	0,  0,	0,  0,	2,  6, $E, $E, $E, $E
		.BYTE  $E, $E,	0,  0,	1,$60,$50,$70,$20,  0,	7,  2,	2,  3,	3,  0
		.BYTE	0,  0,	0,$3C,$C0,  0,	1,  0,	0,  0,$FF,$43,$3D,$FE,$F8,$FC
		.BYTE $FC,$E4,$20,  0,	0,  0,$20,$20,	0,  0,$43,$8C,	0,  0,	0,$40
		.BYTE	0,  0,	0,  1,	0,  0,	1, $F,$3F,$57,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$3D,$36,$74,$E0,	9,$82,$88,$CF,$80,  0,	0,  0,	0,  1
		.BYTE	7,  0,$C0,  0,$40,  0,$F0,$10,$60,$F0,	0,  0,$20,$E0,	0,$E0
		.BYTE $80,  0,	3,  7,	7,  7, $F, $A,	6,  3,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$F0,$D1,$90,$82,$82,$C3,	3,  0,	1,  0,	1,  1,	1,  0
		.BYTE	0,  0,	6,$88,	9,  9, $E,  4,	0,  0,$49,$47,$C6,$C6,$C0,$C0
		.BYTE	0,  0,$51,  3,	2,$20,$FB,  0,	1,  0,$80,$F8,$F8,$D8,	0,  0
		.BYTE	0,  0,$E0,$F0,$F0,$F0,$D0,$60,$C0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  8,	0,  0,	6,  7,	7,  5, $A,  0,	8,  0,	0,  0
		.BYTE	0,  0,$60,$40,	0,  0,$40,  0,	1,$40,	0, $C,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,$80,$10,$20,$A0,$10,$20,$18
		.BYTE $94, $C,	0,  0,	0,  0,$40, $C,$45,  6,$80,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,$50,$20,$40,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$2F,$3B,$5F,$5E,$54,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$1C,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	7,  1,	3,  3,	3,  3,	3,  3,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$10,$20,$20,  0,	1,  6,	0,  2,$40,$40,	0,$48,$4E,$39
		.BYTE $2F, $D,	0,  0,	0,  1,	0,  1,	1,  3,	0,  8,$20,  8,$9F,$9E
		.BYTE $9E,$9C,$26,  2,$B6,$13,$17,$17,$77,$87,	0,  0,	0,$A0,$E0,$E0
		.BYTE $80,  0,$E0,$E0,$E0,$60,$40,$80,$C0,$C0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	1,  7,	2,  5,	0,  0,	0,  0,	0,  0
		.BYTE	5,  2,	0,  0,	0,  0,$C0,$64,$84,$50,	0,  0,	0,  0,	0,$80
		.BYTE $60,$A4,	0,  0,	0,  0,	0,  0,$80,$80,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  3, $E,  5, $A,$15,	0,  0,	0,  0,	1, $A
		.BYTE	5, $A,	0,  0,	0,$80,$C8,  9,$A1,  1,	0,  0,	0,  0,	0,$C0
		.BYTE $48,$E8,	0,  0,	0,  0,	0,  0,	0,$40,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0, $A,  1,	0,$20,	5,$46,$B8,$C4,	5,  0,	4,$10,$38,$38
		.BYTE	0,  0,$80,  0,	0,$80,$80,  0,	0,  1,$74,$86,$D9,$1E,	6,$82
		.BYTE	0,  0,$A0,$60,$60,  0,	0,  0,	0,  0,	0,  0,$80,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  1,	1,  1,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	2,  0,$41, $B,$8C,$70,$88,$B8,	1,  9,$20,$70,$71,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	2,  0, $C,$B3,$3C, $C,	4,  0
		.BYTE	0,$40,$C0,$C0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  1,	0,  2,	3,  3,	0,  0,	0,  0,	1,  1,	0,  0
		.BYTE	0,  0,	0,$A0,$A0,$A4,$50,$60,	0,  0,	0,$40,$58,$58,$AC,$98
		.BYTE $67,$37,	0,$80,$90,$14,$1C, $C,	0,  0,	0,  0,	0,$80,$80,$C0
		.BYTE $30,$C0,	0,  0,	0,  0,	0,  0,	0,$1E,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$DC,$5D,$57,$45,$40,$C0,$F0,$1E,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	8,  0,	0,  0,	0,  0,$20,$10,$10,  0,	0,  0
		.BYTE	0,  0,	0,  0,$60,$20,$20,$C0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	3,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  4,	0,  0,	0,  0,$1C,  0,	1,  1,	0,  0,	0,  0,	0,$20
		.BYTE $40,$C0,$BA,$AE,$8A,  0,	0,$80,$80,$E0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,$10,	0,  0,	1,  0,	0,  0,$20,$20,	0,  0,	0,  0
		.BYTE	0,  0,	0,$C0,$40,$40,$80,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	4,  8, $B, $C,	9, $B,	0,  2,	2,  7,	4,  0
		.BYTE	0,  0,	0,$50,$20,  1,	0,$80,$80,$A1,$87,$80,$10,  0,	0,  4
		.BYTE	2,  2,	0,  0,	0,  0,$10,  0,	3,$81,$C0,$20,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  3,	4,  9,	0,  0,	0,  0,	0,  0
		.BYTE	0,  2,	0,  0,	0,$1C,	0,$1C,$24,  4,	0,  0,	1,  1,$21,$C1
		.BYTE $19,$F9,	0,  0,	9,  4,$10,  0,$1E,  6,$60,$C0,$80,$80,$80,$80
		.BYTE $80,$80,	0,  0,	0,  0,$20,$20,$30,$30,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,$10,$18,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	1,  4, $A, $A,	0,  0,	0,  0,	0,  0,	1,  1
		.BYTE $1B,$3B,	0,$80,	0,  0,	0, $C,	0,$14,$3A,  5,$FD,$FD,$F9,$F1
		.BYTE $F9,$E3,	8,  5,	1,$10,	0,$1E,	6,  0,$80,$80,$80,$80,$80,$80
		.BYTE $80,$80,$3C,  0,	0,$20,$20,$30,$30,$22,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,$10,$10,$1A,$1A, $A,	0,  0,	0,  0,	0,  0
		.BYTE	0,$10,	0,$1C,$70,$56,$18,$5E,$5F,$46,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	8,  0,$24, $C,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	2,  5,$38,$30,$48,  0,	0,  0,	4,  8,	1,  7
		.BYTE	7,$3F,$22,$22,$40,  0,	0,  0,$80,  2,	0,$40,$80,$C0,$80,$80
		.BYTE	0,  0,$F0,$50,$80,  0,	4,  0,	0,  0,	0,  0,	0,$A0,$20,  0
		.BYTE	0,  0,	1,  6,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,$98,$C6,$49, $F,	0,  0,	0,  0,	0,  0
		.BYTE $80,$C0,	0,  0,	0,  0,	0,  0,$80,$40,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0, $C,$28,$40,$40,$C0,$81,$8B,$8A,	3,  7,$2F,$2F,$2F,$6E
		.BYTE $54,$50, $A,  4,$10,$28,$50,$A0,$40,$80,$F1,$F3,$E7,$C7,$8F,$1F
		.BYTE $3F,$7F,	0,  0,$1E, $F,	3,$89, $F, $E,$80,$80,$80,$80,$80,  0
		.BYTE	0,  0,$23,  7,$1F,  0,$7F,$FF, $E,$C8,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$18,$9D,$15,$85,	5,  3,	3,  3,	0,  0,	8,$18,$18,$38
		.BYTE $38,$78,	0,  0,$C0,$30,	8,$D4,$8A,  6,	0,  0,	0,$40,$90,$28
		.BYTE $74,$F8,	0,  8,	8, $A,	9,  0,	0,$70,$3B,$33,$33,$30,$30,$77
		.BYTE $77,  7,$30,$68,$90,$A0,$60,  0,$FC,  6,$C7,$87, $F,$1F,$1F,  2
		.BYTE	0,$F8,	0,$1E, $F,  3,	9, $F, $E,  7,$80,$80,	0,  0,	0,  0
		.BYTE	0,  0,	6,$1C,	0,$70,$F1,  3,$C8,$CE,	0,  0,	0,  0,	6,  4
		.BYTE	4,  0,	8,  0,$5F,$1F,$BF,$3C,$78,$F0,$10,  0, $F,$9F,$1F,  0
		.BYTE	0,  0,$80,$C0,$E0,$FE,$FF,$E3,$29,$5E,	0,  0,$E0,$FE,$FF,  3
		.BYTE	0,  0, $C, $C,	1,  0,	0,$80,$C1,$40,	0,  0,	0,  0,	0,$80
		.BYTE $C0,$40,	0,  0,$80,$C0,$40,$C0,$80,$C0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	6,$1F,$2F,$7E,$FF,$7C,	0,  0,	6,$1F,$2F,$7E
		.BYTE $FF,$7C,	0,  0,$60,$CC,$8E,  8,	0,  0,	0,  0,$60,$CC,$8E,  8
		.BYTE	0,  0,	1,  1,	0,$5E,$7E,$40,$40,  0,$FE,$7E,	1,  0,	0,$1E
		.BYTE $1F,$3F,$92,$92,	4,$86,$87,$90,$9C,$81,	0,  0,$80,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  8,$B0,  0,	0,  0,	0,  0,$80,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,$40,$40,	0,  0,	1,  1,	7,$1F
		.BYTE $3F,$27,$11,$14,$18,$10,$18,$10,$10,$10,$C6,$CB,$C7,$CF,$C7,$CF
		.BYTE $CF,$CF,$20,$50,$38,  8,	4,  4,	6,  6,$C0,$A0,$C0,$F0,$F8,$F8
		.BYTE $F8,$F8,	0,  0,	2,  2,	2,  0,	0,  1,	0,  0,	1,  1,	1,  1
		.BYTE	0,  0,	0,  1,$40,$40,	0,$60,$20,$10,$C6,$DE,$1F,$1F,$8F,$8F
		.BYTE $CF,$CF,	0,$FC, $E,  1,	0,  1,	0,$81,	3,  0,$F0,$FE,$FF,$FE
		.BYTE $FF,$7E,	7, $F,	0, $F,$97,$A8,$82,  4,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$C0,$E2, $C, $E, $A, $F,	1,  0,	0,  1,	0,$10,$14,$30
		.BYTE $3E,$7F,	7,  7,	6,  6,	4,  4,$8C,$88,$F0,$F0,$F1,$F1,$73,$73
		.BYTE $23,$27,	2,  3,	3,  2,	4,  5,	1,  1,$FC,$FC,$FC,$FC,$F8,$F0
		.BYTE $A8,$C0,	0,$1C,$3F,$7F,$6F,$77,$A7,$C3,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,$80,$80,$C0,$C0,$C0,$9E,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,$10,	0,  8,	8,$88,$80,  0,$17,$47,$E7,$E3,$F3,$53
		.BYTE $53,$46,	4,  0,	2,$82,$86,$84,$84,  8,$FA,$FE,$FC,$7C,$78,$78
		.BYTE $78,$F0, $F,  0, $F,$17,$28,  0,	4,  0,	0,  0,	0,  0,	0,  0
		.BYTE	1,  3,$DA, $C,	4,  5,	4,  1,$40,  0,	4,$10,$38,$38,$78,$9C
		.BYTE $98,$FC,$FF,$FF,$FF,$51,$DB,$3F,$AF,$2F,$3F,$7F,$7F,  0,	0,  0
		.BYTE	0, $F,$FE,$FF,$FF,$F9,$FC,$FB,$FB,$FF,$F8,$FF,$FF,  0,	0,  0
		.BYTE	0,$FC,$60,$20,$A0,$E1,$71,$30,$8F,$CF,$60,$20,$A0,$E0,$70,$30
		.BYTE	8,  8,$40,  0,	0,  0,	0,$80,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  1,	3,$5F,$1F, $F,	0,  0,	0,  1,	3,$5F
		.BYTE $1F, $F,$78,$7A,$F7,$EF,$C7,$DF,$FF,$E3,$78,$7A,$F7,$EF,$C7,$C7
		.BYTE $83,$E3,$10,$38,$3F,$3E,$38,$6C,$CE,$DC,$10,$38,$3F,$3E,$38,$6C
		.BYTE $CE,$9C,	0,$80,$80,$85,$84,$84,$84,$84,$3F,$3F,$BF,$3A,$3B,$3A
		.BYTE $3A,$3A,	0,$1E,$3E,$1E,	3,  0,	0,  7,$80,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,$60,$60,$F0,$9C,$18,	3,$87,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$48,$4C,$3C,  0,	2,  3,	2,  2,$23,$21,$C1,$F8,$7C,$7C
		.BYTE $7C,$7C,$38,$10,$6F,$30,$60,  0,	0,  0,$87,$8F,$10, $F,$1F,$7F
		.BYTE $FF,$FF,	2, $A,	2, $E,	2,  2,	4,  4,$FC,$F4,$FC,$F0,$F4,$FC
		.BYTE $F8,$78,	2,  0,	0,  2,	3,  1,	1,  1,	0,  3,	3,  1,	0,  0
		.BYTE	0,  0,$40,$30,$10,$20,$38,$B0,$88,$98, $F,$8F,$CF,$C3,$C3,$42
		.BYTE $42,$40,$82,$82,	6,  6,	7,  0, $C,  0,$7C,$7C,$78,$78,$78,$60
		.BYTE $23,$24,	0,$A0,$50,  0,	8,  0,	8,$C0,	0,  0,	1,  3,	7,$73
		.BYTE $F3,$3F,	0,  0,$40,  0,	0,  0,	7, $F,$7F,$9F,$9F,$FF,$FF,$F0
		.BYTE $C0,$A0,$C8,  8,	8,$1E, $C, $D,$C1,$C3,	6,$F7,$F6,$C0,$C0,  0
		.BYTE	0,  0,	1,$15,	7,$2F,$2F,$EF,$5F,$3F,$80,$40,$40,  0,	0,  0
		.BYTE	0,  0,$E0,$A2,$F5,$F8,$FD,$FE,$FF,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0, $E,$BE,$67,$8F, $F, $F,	7,$E2,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,$80,$80,$80,$80,$80,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	1,  1,	3,  7
		.BYTE	7, $F,$20,$60,$40,$E0,$40,  4,$47,  7,$C6,$86,$80,  0,	0,$80
		.BYTE $80,$80,	6,$3C,$8C,$B0,$20,  4,$17,$84,$F8,$C0,	0,  1,$1F,$23
		.BYTE $20,$3B,$A0,  0,	0,$10,	0,$7C,$80,  0,	7,$1F,$67,$E7,$FE,$80
		.BYTE $73,$FF,	0,  0,	0,  0,	0,  0,	0,  0,$FC,$F8,$F0,$C0,$20,  0
		.BYTE	6,  0,$2F, $F,	0,  0,	0,  2,	1,  2, $F, $F,	0,  0,	0,  0
		.BYTE	0,  0,$FF,$FF,$43,  0,	0,  4,$40,$40,$FF,$FF,	0,  0,	0,  0
		.BYTE	0,  0,$C7,$F6,$3C, $E,	6, $B, $B,  3,$84,$F4,$3C, $E,	6, $B
		.BYTE  $B,  3,	3,  3,	5,  0,	0,$2F,$27, $F,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$CF,$DF,$3F, $E,$7F,$FF,$FF,$FF, $F,$1E,$1F, $E,	0,  0
		.BYTE	1,  1,$67,$BE,$3F,$7F,$FF,$F7,$FF,$FF,$67, $E,$1E,$3C,$70,$F6
		.BYTE $EE,$C1,$C0,$EC,$FA,$FF,$FF,$7F,$FF,$FF,	0,  0,	0,  4,$18,$33
		.BYTE $63,$C0,$C5,$CF,$41,  1,$C1,$C4,$F7,$BB,$18,  0, $A,  0,	0,$80
		.BYTE	0,  0, $B,  0,	2,  3,	3,  1,$80,$70,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$C0,$DE,$7E,$C2,$A0,$F0,$24,  0,	0,  0,	0,  0,	0,  1
		.BYTE	2, $C,	4,$2C,$10,$30,$80,$80,	0,  0,$48,$40,$61,$C0,	0,  0
		.BYTE	0,  0,	0,$60,	0,  0,	0,  0,	0,  0,$F6, $A,$55,$4B,	5,  2
		.BYTE	1,  0,	4,$80,$60,$28,	0,  0,	0,  0,$F0,$78,$88,$80,$C0,$C0
		.BYTE $C0,$C0,	1,  0,	0,  0,	0,  0,	0,  0,	0,  1,	3,  3,	3,  3
		.BYTE	3,  3,$18,$18,$11,$23,$23,  3,	3,$20,$E0,$E0,$E0,$C0,$C0,$C0
		.BYTE $C0,$80,	2,  0,$80,$40,	0,$E0,$C0,  0,	4,  7,	7,  5,	0,  0
		.BYTE	0,  0,$B0,$4F,$20,$18,	6,  0,	0,  0,$4F,$B0,$DC,$E6,$F9,$FF
		.BYTE $FF,$FF,	7,$8F,	7,  5,	0,  0,	0,  0,$C0,  0,$C0,$60,$E0,$D0
		.BYTE $60,$C0,$D3,$DF,$CB,$20,$90,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$4F,$9F,$6F,$9F,$13,$6D,$11,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$FB,$F7,$F9,$F1,$57,$37,	7, $B,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$E0,$D0,$E5,$F3,$F3,$C9,$C0,$46,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,$C0,$E0,$C0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  8,$60,  0,$80, $C,	2,$4C, $F,$17, $F,$67, $B,  2
		.BYTE	4,  2,	3,  3,	1,$84,$86,$86, $F, $D,$80,  0,	0,  0,	0,  0
		.BYTE $80,$80,	2,$81,	1,  0,$80,  0,	0,  0,$3D,$2E,	6,  7,	7,  7
		.BYTE	0,  0,	0,  0,	0,$80,$80,$40,	0,  0,$FF,$FE,$FB,$7E,$7C,$BE
		.BYTE $FC,$7C,	0,  0,	0,  0,	0,  0,	0,  0,	0,$80,	0,  0,$80,  0
		.BYTE	0,$50,	5,  2,	4,  2,	1,  6,	3,  1,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$F8,$FC,$F8,$7C,$F8,$B8,$D0,$A0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	7,  6,	6, $C, $C,$18,$10,$20,	7,  6,	6, $C, $C,$18
		.BYTE $10,$20,$47,$64,$60,$40,$41,$47,$5F,$17,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$53,$17,$1F,$7F,$FF,$FF,$FE,$68,	3,$13,$17, $F, $E, $E
		.BYTE $1C,  8,$FF,$FF,$F7,$FF,$DF,$DF,$3F,$3F,$C3,$DF,$E7, $E,$1C,$1C
		.BYTE $18,$18,$DF,$BB,$FF,$FE,$FE,$F6,$F0,$E0,$90,$B8,$10,  0,	0,  0
		.BYTE	0,  0,$DB,$D3,$D5,$C5,$2D,  8,	0,  1,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$FD,$FF,$FF,$FF,$FF,$7F,$81,$73,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$C0,$FF,$FF,$FF,$FF,$FF,$A3,$FC,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,$30,$C0,$E8,$FC,$FC,$FE,$FC,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,$20,	0,  0,	0,  0,	0,  0,$60,$80,	0,$40,$80,  0
		.BYTE $80,  0,	0,  1,	2,  1,	2,  0,	0,  0,	3,  2,	1,  2,	1,  0
		.BYTE	0,  0,$A1,$21,$A1,$60,$60,  0,	2,  1,	0,$80,	0,  0,	0,  0
		.BYTE	0,  0,$80,$80,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$1F, $F, $F, $F,	6, $F
		.BYTE	7, $D,	0,  0,	0,  0,	0,  0,	0,  0,$90,$C0,$80,$8A,	4,$E0
		.BYTE	0,$80,	0,  0,	8,$40,	8,  8,$58,$68,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0, $A,	1,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	2,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0, $F,$8F,	7,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  1,	3,  3,	2,  6, $D, $D,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$D0,$D0,$63,$67,$1F,$FE,$FC,$F0,	8,  0,	0,  0,	0,  0
		.BYTE	0,  0,	4,  0,	0,$80,	8,  0,	4,  0,$80,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,$10,$40,$78,$67,$38,$78,$14,$38
		.BYTE $6F,$BE,	0,  0,	2,  0,$14,$2C,$24, $C,$20,  0,	0,  0,	0,  0
		.BYTE	0,  0,$15,  4, $C,$10,$18, $C, $C,  4,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	1,  3,	7, $F,	4, $F, $D,  7,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$FF,$F6,$F4,$E0,$80,  0,$80,$80,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$C0,  2,	2, $D,$1B,$1F,$2C,$49,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$28,  1,	0,$88, $C,  0,$94,$18,	4,  4,	0,  0,	0,  0
		.BYTE	0,  0,$37,  7,$41,$68,$5C,$42,	0,  0,	0,  0,	0,  0,$20,$38
		.BYTE	6,  0,$FF,$FF,$FF,$7F,$6F,$1B,	6,  1,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$7E,$37,$96,$C2,$F0,$7D,$BA,  4,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$80,  0,$81,  0,	0,  0,$80,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0
BattleEnemy_4CC4B:.BYTE	$92,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0
					; DATA XREF: BANK_04:986Do
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	1,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  3
		.BYTE	6, $C,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$80,$80
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,$40
		.BYTE $40,$60,	0,  0,	0,  0,	0,  0,$80,$40,	0,  0,	0,  0,	0,  0
		.BYTE $80,$C0,	0,  0,	1,  1, $C,$18,$10,  0,	0,  1,	3,  3, $F,$1F
		.BYTE $19,$18,	0,  0,$48,$70,$10,  0,	8,  8,$60,$40,$48,$F0,$50,$D0
		.BYTE $88,$28,	0,  0,	0,  0,	0,  0,	0,  0,$18,$10,$30,$20,$60,$60
		.BYTE $60,$70,	0,  1,	0,  0,	0,  0,	0,  0,$67,$21,$20,$20,$20,$60
		.BYTE $61,$E3,$20,$28,$3C,  6,	2,  0,	0,$10,$E8,$E8,$7E,$FE,$BE,$8E
		.BYTE $E0,$5C,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  1,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,$1C,$70,$60
		.BYTE $C0,$C0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$60,$60,$60,$40
		.BYTE $C0,$80,	0,  1, $C,  4,	6,  3,	1,  0, $B,  3, $F,  7,	7,  3
		.BYTE	3,  1,$D8,  8,$64,$37,$10,  1,	3,  0,$F8,$8C,$6F,$FF,$F9,$AB
		.BYTE $93,$A0,	0,  0,	0,$80,	0,$80,	0,  0,$30,$30,$F8,$98,$9E,$89
		.BYTE $70,$F8,	0,  0,	0,  0,	0,  0,	0,  0,	0,  1,	3,  5,$FF,$1C
		.BYTE $3D,$30,	0, $C,	8,  4,	2,  0,	0,  0,$DE,$8F,$8F,$8F,$86,$E0
		.BYTE $33,$6E,$30,$30,$20,  0,	0,  0,	0,  0,$FC,$FC,$78,$98,$B8,$B8
		.BYTE $10,$C0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	4,  4,	6,  3
		.BYTE $71,$F8,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE $83,$DB,	0,  0,	0,  0,	0,  0,	0,  0,	0,  2,	6, $C,$18,$30
		.BYTE $B1,$73,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE $F0,$FC,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE $1C, $F,	0,  0,	0,  0,	0,  0,	0,  0,	1,  1,	1,  0,	0,  0
		.BYTE	0,$C0,	0,  0,	0,  0,	0,  0,	0,  0,$C0,$C0,$C0,$C0,$E0,$60
		.BYTE $7C,$38,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  1
		.BYTE	2,  1,	0,  0,	0,  0,	0,  0,	0,  0,	3,  6, $E,$1C,$F8,$F0
		.BYTE $60,$E3,	0,  0,	0,  0,	0,  0,	0,  0,$80,  0,	0,  0,	0,  1
		.BYTE $3F,$FC,	0,  0,	0,  0,	0,  0,	0,  0,	1,  0,	0,  0,	1,  1
		.BYTE	1,  1,	0,  0,	0,  0,	0,  0,	0,  0,$8F,$67,$51,$C1,$D1,$B3
		.BYTE $B9,$F1,	0,  0,	0,  0,	0,  0,	0,  0,$B0,$60,$E0,$83,$4E,$C0
		.BYTE $CA,$DD,	0,  0,	0,  0,	0,  0,	0,  0,$34,$10,$3F,$20,$38,  1
		.BYTE $30,$C4,	0,  0,	0,  0,	0,  0,	0,  0,$FC,$F4,$FC,$3F,$CF,$E5
		.BYTE $DD,$E8,	0,  0,	0,  0,	0,  0,	0,  0,$38,$18,$58,$58,$7C,$7C
		.BYTE $FC,$FC,	0,  0,	0,  0,	0,  0,	0,  0,	0,  1,	1,  2,	2,  2
		.BYTE	1,  1,	0,  0,	0,  0,	0,  0,	0,  0,$FC,$1E,	7,  3,	7, $F
		.BYTE  $F, $E,	0,  0,	0,  0,	0,  0,	0,  0,$7B,$4F,$86,$66,$FF,$FF
		.BYTE $FF,$BF,	0,  0,	0,  0,	0,  0,	0,  0,$F7,$3F,$3F,$7C,$FC,$FE
		.BYTE $AE,$5E,	0,  0,	0,  0,	0,  0,	0,  0,$FE,$E6,	3,  1,	1,  2
		.BYTE	2,  4,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	1,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$70,$3E, $F, $D,$1D,$5D
		.BYTE $81,$41,	0,  0,	0,  0,	0,  0,	0,  0,$1C,$7C,$8E,$4F,	2,$12
		.BYTE	2,$E2,	0,  0,	0,  0,	0,  0,	0,  0,$3F,$3F,$3C,$3C,$70,$72
		.BYTE $70,$31,	3,  5,	0,  0,	0,  0,	0,  0,$1F,$9F,$7F,$BF,$3F,$3F
		.BYTE $3F,$FF,$80,  0,	0,  0,	0,  0,	0,  0,$E0,$C0,$88,$10,$28,$90
		.BYTE $C8,$D0,	0,  0,	0,  0,	0,  0,	0,  0,	1,  1,	1,  1,	1,  1
		.BYTE	1,  0,	0,  0,	0,  0,	0,  0,	0,  0,$FB,$FB,$F9,$F9,$7D,$7C
		.BYTE $FC,$EB,	0,  0,	0,  0,	0,  0,	0,  0,$DC,$D8,$DA,$D8,$7C,$1F
		.BYTE $FD,$F9,	0,  0,	0,  0,	0,  0,	3,  6,	5,  2, $A,$E2,	7,$FF
		.BYTE $FF,$FF,	0,  0,	0,  0,	0,  0,	0,  0,$A8,$BE,$FE,$FE,$7E,$7F
		.BYTE $CE,$EE,	0,  0,	0,  0,	0,  0,	0,  0,$FC,$FC,$FC,$FC,$78,$B8
		.BYTE $F0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  3,	4,$10,$20,  0
		.BYTE $40,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,$F0, $C,  7,	1,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	1, $A,$D5,  2
		.BYTE	5, $B,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$40,$A8,$54,$FA
		.BYTE $FD,$FE,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  1,	3,$86
		.BYTE $54,$A8,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$3C,$C3,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,$C0,$30,$18
		.BYTE	8, $C,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	1,  1,	1,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$8D,$CE,$27,$1E,	6,$86
		.BYTE $7E,  6,	0,  0,	0,  0,	0,  0,	0,  0,$7B,$BB,$7B,$FB,$F4,$FF
		.BYTE $7F,$55,	0,  0,	0,  0,	0,  0,	0,  0,$AE,$F7,$F6,$E7,$D6,$BE
		.BYTE $DE,$CE,	0,  0,	0,  0,	0,  0,	0,  0,$18,$E8,	8,  8,$F0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  1,	0,  0,	0,  0
		.BYTE	8, $C,	0,  0,	0,  0,	0,  0,	0,  4,$80,$40,$84, $D,	4,$34
		.BYTE $44,$46,	0,  0,	0,  0,	0,  0,	0,  0,$38,  2,$16,$21,$88,$63
		.BYTE	8,$11,	0,  0,	0,  0,	0,  0,	0,  0,$3F,$7F,$40,  2, $A,$B3
		.BYTE  $B,$D1,	0,  0,	0,  0,	0,  0,	0,  0,$FF,$FD,$FF,$7E,$7D,$7F
		.BYTE $6E,$7E,	0,  0,	0,  0,	0,  0,	0,  0,$E8,$E0,$F0,$F0,$78,$FD
		.BYTE $FD,$FF,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$C0,$80
		.BYTE $80,  0,	0,  0,	0,  0,	0,  0,	0,  0,$EF,$77,$7F,$3B,	3,  3
		.BYTE	3,  3,	0,  0,	0,  0,	0,  0,	0,  0,$FF,$ED,$FF,$FF,$FF,$FF
		.BYTE $9F,$FF, $C,$18,$10,  0,	0,$80,	0,$20,$FD,$FF,$DF,$DF,$DF,$DF
		.BYTE $DF,$FF,	0,  0,	0,  0,	0,  0,	0,  0,$F1,$FE,$FF,$FF,$FF,$FD
		.BYTE $EF,$DE,	0,  0,	0,  0,	0,  0,	0,  0,	4,$18,$10,$24,	0,$60
		.BYTE $C1,$81,	0,  0,	0,  0,	0,  0,	0,  0,$17,$3F,$7F,$7F,$FF,$FF
		.BYTE $FF,$FF,	0,  0,	0,  0,	0,  0,	0,  0,$FF,$FF,$FF,$FF,$FF,$FF
		.BYTE $FF,$FF,	0,  0,	0,  0,	0,  0,	0,  0,$C4,$FA,$B5,$BE,$BF,$FF
		.BYTE $FF,$FF,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,$80,$80,$C0
		.BYTE $C0,$E0,	0,  0,	0,  0,	0,  0,	0,  0,	4,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,$10,	6, $E, $C, $E, $C,$1A
		.BYTE $1C,$19,	0,  0,	0,  0,	0,  0,	0,  0,$6F,$7F,$FF,$F9,$F0,$F0
		.BYTE $F0,$E0,	0,  0,	0,  0,	0,  0,	1,  1,$CE,$CE,$E6,$EA,$E7,$F3
		.BYTE $F5,$73,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,$80,	0,  0,	0,  0,	0,  0,	0,  0,	6,  3,	0,  0,	0,  0
		.BYTE	0,  0,	4,  4,	8,  0,	8,$10,	8,  0,$44, $C,	8,  9,$48,$59
		.BYTE $19,$58,	0,  0,	0,$20,$20,$20,$20,  0,$B2,$71,$9C,$7F,$FF,$FF
		.BYTE $FF,$D0,	0,  0,	1,  3,	6, $C,$18,  0,$23,$8F,$17,$DF,$DF,$FF
		.BYTE $FF,$78,	0,$80,$80,  0,	0,  0,	0,  0,$BE,$BC,$E6,$F8,$FE,$FC
		.BYTE $EE,$3C,	0,  0,	0,  0,	0,  0,	0,  0,$BC,$78,$78,$78,$38,$3C
		.BYTE $7E,$7A,	0,  0,	0,  0,	0,  0,	0,  0,$F8,$FA,$BF,$48,$40,  0
		.BYTE $12,  7,	0,  0,	0,  0,	0,  0,	0,  0,$F8,$FD,$A1,$F0,$CD,$7E
		.BYTE $7E,$FE,	0,  0,	0,  0,	0,  0,	0,  0,$7E,$F0,$C0,  4,$18,  0
		.BYTE $40,$60,	0,  0,	0,  0,	0,  0,	0,  0,	3,  7, $D,$1F,$1D,$3F
		.BYTE $7F,$DE,	0,  0,	0,  0,	0,  0,	0,  0,$81,  0,$40,$80,$C0,$80
		.BYTE  $E, $F,	0,  0,	0,  0,	0,  0,	0,  0,$FF,$FF,$FF,$7F,$1F,  7
		.BYTE	0,$80,	0,  0,	0,  0,	0,  0,	0,  0,$FF,$FF,$FF,$FC,$F1,  3
		.BYTE $1D,$DF,	0,  0,	0,  0,	0,  0,	0,  0,$F7,$F7,$37,$6B,$F0,$F1
		.BYTE $EB,$D3,	0,  0,	0,  0,	0,  0,	0,  0,$E0,$F0,$F0,$38,$FC,$FC
		.BYTE $F8,$78,	0,$10,	4, $C,	8,  0,	0,  0,$1D,$1D, $D, $D, $D,  1
		.BYTE	1,  0,	0,  0,	0,  0,	0,  0,	0,  0,$E0,$E0,$C0,$C0,$C0,$C0
		.BYTE $E0,$E0,	0,  2,	2,  0,	0,  0,	0,  0,$71,$73,$7B,$39,$39,$38
		.BYTE $38,$78,$80,$80,$80,  0,	0,  0,	0,  0,$80,$80,$80,$80,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	8,  9,	7,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$79,$FC,$7C,$3C,$3C,$10
		.BYTE $4A,$E6,	0,  0,	0,  4,	0,  0,	0,  0,$FF,$FF,$7F,$3F,$1F,$20
		.BYTE	1,  4,$10,  0,	8,  0,	0,  0,	0,  0,$FF,$FF,$FE,$FE,$FC,$10
		.BYTE $80,$F1,	0,  0,	0,  0,	0,  0,	0,  0,$FE,$BD,$35,$B9,$B1,$30
		.BYTE $30,$91,	0,  0,	0,  0,	0,  0,	0,  0,$F8,$F8,$F0,$F0,$F0,$F0
		.BYTE $E8,$38,	2,  2,	4,  4,	4,  8,	8, $A,	0,  0,	0,  0,	0,  0
		.BYTE	0,  2,$42,$42,$42,$46,$44,$84,$88,$88,	0,  0,	0,  0,	0,  1
		.BYTE	1,  3,	0,  0,	0,  0,	0,  0,	0,  0,$6A,$7E,$EC,$F4,$FC,$FA
		.BYTE $FF,$FF,	0,  0,	0,  0,	0,  0,	0,  0, $F,$7F,$DF,$3F,$AF,$DF
		.BYTE $FF,$FD,	0,  8,$10,  0,	1,$21,$22,$42,$30,$D0,$E0,$F8,$F8,$D8
		.BYTE $DC,$8C,	4,$44,$84,$88,	8,  8,$10,$10,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	1,  2,	3,  3
		.BYTE  $E,$1F,	0,  0,	0,  0,	0,  5,	0,$1C,$80,$3C,$FF,$7B,$FC,$F9
		.BYTE $F8,$FC,	0,  0,	0,  2,$E0,$E4,$E8,$EC,	7,  1,$C0,$E0,$F0,$A0
		.BYTE $E8,$E4,	0,  0,	0,  0,	0, $E,$1F,$1F,$C0,$80, $F,$17,	0, $E
		.BYTE $1F,$1F,	0,  0,	0,  0,	0,  0,	0,  0,$5F,  0,	0,$FF,$9C,$7F
		.BYTE $3E,$1E,	0,  0,	0,  8,	0,$10,	1,$4E,$26,$6E, $D,$97,$1B,$E6
		.BYTE $F4,$3E,	0,  0,	0,  0,	0,$61,$63,$10,$F8,$F8,$D0,$E0,	0,$E1
		.BYTE $63,  0,	0,  0,	0,  0,	0,  0,	0,  0,$E0,$E0,$F0,$E0,$60,$61
		.BYTE $F1,$F0,	0,  0,	0,  0,	0,  0,	0,  0,$70,$60,$E0,$E0,$FE,$F1
		.BYTE $98,$70,	0,  0,	0,  0,	0,  0,	0,  0,	1,  1,	1,  3,	3,  7
		.BYTE	7, $A,	0,  0,	0,  0,	0,  0,	0,  0,$FA,$FC,$FA,$FC,$E8,$D0
		.BYTE $A0,$C0,	0,  0,	0,  0,	0,  0,	0,  0,$46,$40,$A6, $C,$10,  4
		.BYTE $4A,$DF,	0,  0,	0,  0,	0,  0,	0,  0,$7C,  7,$3F,$6F,$1F,$C7
		.BYTE $C7,$83,	0,  0,	0,  0,	0,  0,	0,  0,	1,$B9,$D8,$F8,$F8,$FC
		.BYTE $DC,$BC,	0,  0,	0,  0,	0,  0,	0,  0,$FC,$7C,$FE,$7E,$1F,$17
		.BYTE  $F,$17,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE $80,$80, $A,$13,$13,$37,$37,$7F,$FF,$FF,	2,  3,	3,$26,$26,$6E
		.BYTE $EE,$EF,$A8,$F0,$F3,$FF,$FF,$FF,$FF,$FF,$23,$63,$63,$EF,$EF,$EF
		.BYTE $FF,$FF,$38,$3C,$7C,$FE,$FE,$FF,$FF,$7F,$F9,$BD,$7C,$FE,$FE,$FF
		.BYTE $FF,$7F,	1, $F,$33,$3F,$3F,$3F,$3F,$8F,$F9,$CF,$F3,$3F,$3F,$3F
		.BYTE $3F,$8F,$CA,$FE,$FF,$FF,$FF,$FF,$FF,$FF,$88,$7A,$7B,$7B,$7B,$7B
		.BYTE $FB,$FF,$20,$20,$22,$C6,$DE,$FC,$FC,$F8,	0,  0,	2,$86,$9E,$BC
		.BYTE $BC,$B8,	3,  1,	1,  1,	1,  0,	3,  1,$1F,$3B,$15,$3B,$BB,$B3
		.BYTE $33,$31,$3C,$BD,$BF,$DF,$EF,$FF,$FF,$FF,$34,$BD,$AF,$EE,$FE,$EE
		.BYTE $EE,$EE,$EB,$F7,$EF,$FF,$FF,$FF,$FF,$FF,$63,$E7,$6F,$EF,$EF,$EF
		.BYTE $EF,$EF,$3F,$78,$FA,$FE,$FE,$FF,$FE,$FD,$3F,$78,$FA,$FE,$FE,$FF
		.BYTE $FF,$FF,$6C,$7F,$7F,$7F,$3F,$3F,$DF,$EF,$7F,$7F,$7F,$7F,$FF,$FF
		.BYTE $DF,$EF,$CE,$E3,$F7,$FF,$FF,$FF,$FF,$FF,$BC,$6F,$7B,$7B,$7B,$7F
		.BYTE $7B,$7B,$87,$AF,$FF,$DF,$FE,$FE,$FC,$FF,$87,$8F,$DF,$9F,$FE,$FE
		.BYTE $FC,$FF
BattleDog_4D56D:.BYTE $78,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:986Fo
		.BYTE	0,  0,	0,  0,	0,  0,	0,$80,$40,$80,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  2,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,$20,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  8,$14, $B,	0,  0,	0,  0,	8,$14
		.BYTE $20,$10,	0,  0,	0,  0,	0,  0,$F8,$F0,	0,  0,	0,  0,	0,  0
		.BYTE	0, $F,$40,$AA,$51,  0,	0,  0,	0,  0,	0,  0, $E,  7,	3,  1
		.BYTE	0,  1,	7,  7,$47,$AB,$16,$2E,$16,  1,	0,  0,$80,  0,$80,$C0
		.BYTE $E0,$F0,$C6,$88,$80, $E,	3,$27,$C7,$E7,	0,  0,	0,  6,	3,  5
		.BYTE	1,  5,$40,$A0,$17,$2B,	4,$88,$90,$20,	0,  0,	0,$10,	3,$87
		.BYTE $8C,$19,	7,$3F,$FF,$FA,$60,  0,	0,  2,$20,$40,	0,  5,$8F,$DF
		.BYTE $FF,$F9,$C0,$80,	0,  0,	0,$30,$7F,$AF,$38,$70,$E0,$E0,$C0,$80
		.BYTE	0,  0,$10,$38, $C, $C, $C,$20,$F0,$F8,	0,  0,	0,  0,	0,$18
		.BYTE  $C,  4,	0,  0,	0,  0,	0,  0,	1,  1,	0,  0,	0,  0,	0,  0
		.BYTE	1,  1,$24,$22,$21,$20,$40,$C3,$45,  8,$24,$22,$21,$22,$42,$C0
		.BYTE	0,$83,	0,  0,$80,$80,$80,$C0,	0,$80,	0,  0,$80,$80,$80,$40
		.BYTE $C0,  0,	0,  0,	0,  0,	0,  0,	0,  1,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0, $E,$32,$E2,$82,	0,  0,	0, $E,$30,$40
		.BYTE	0,$18,	0,  2,	0,  0,	0,  0,	0,  8,	3,  1,	3,  3,	7, $F
		.BYTE $1A,  0,$11,$2B,$47,  0,	0,  0,$1D, $E,$F0,$C8,$A8,$D1,$80,  1
		.BYTE	2,  1,$41,$C2,$40,  0,$60,$80,	0,  0,	1,  2,	0,$F8,$90,$71
		.BYTE $F3,$F7,$40,  8,$90,$28,$45,  2,	4, $A,$39,$F1,$63,$47,	2,  5
		.BYTE $8A,  4,	5,$20,$50,$BE,$7C,$98,$18,$38,$FA,$80,$A0,$40,$80,  0
		.BYTE	0,  0,	1,  3,	1,$80,	0,  0,	0,$BF,$80,  0,	0,  0,	0,  0
		.BYTE	0,  0,$F8,$BC,$1E, $E,	8,  0,$71,$FF,	4,$42,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,$80,  0,	0,$80,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	3,  0,	5, $C, $E,  8,	8,  9,	3,  0,	4,  8,	0,  0
		.BYTE	0,  0,$14,$2A,$56,$A8,$51,  2,$83,$87,	1,  0,	0,  0,	0,  0
		.BYTE	0,  0,$54,$AB,$55,$A9,$63,$C6,$DF,$97,	0,  0,	0,  0,	0,  1
		.BYTE	0,  0,	7,$4E,$78,$F9,$E3,$DF,$84,  0,	8,$11,	3,  4,$18,  0
		.BYTE	0,$80,	2,$72,$F2,$E0,$80,  0,	0,  0,$40,$80,	1,$11,$11,$11
		.BYTE $13,$17,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$80,$A0
		.BYTE $C0,$C0,$1D,$BE,$14,$28,$11,$20,	1,  0,	2,  1, $B,$17, $E,$5F
		.BYTE $3E,$2C,	0,  0,$50,$A8,$40,$80,	0,  0,$FE,$F0,$A0,  0,$80,  0
		.BYTE $80,  0,$14,$A0,$50,  0,	0,  0,$40,$20,$28,$50,	0,  0,	0,$10
		.BYTE $20,$40,$71,  3,	1,  2,	6,  9, $A,$18,	0,  0,	2,  5,$49,$8E
		.BYTE $55,$84,$FE,$F9,$C0,$80,	0,  0,	0,  0,	1,  2,	1,$40,$80,  0
		.BYTE	0,  0,$F1,$78,$79,$3C,$38,$38,$B8,$38,	0,$81,$C0,$D0,$D0,$54
		.BYTE $54,$64,$C0,$80,$40,$20,$40,  0,	0,  0,	0,$40,$80,  0,	0,  0
		.BYTE	0,  0,	8, $C,	4,  4,	4,  6,	6,  7,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	7, $E, $C,$1C, $C,  8,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$2E,$24,$4C,$69,$68,$78,$7A,$60,	1, $B,$13,$17,$16,  6
		.BYTE	4,$1E,$1E,$84,	3,  3,	7,  6,	0,$1A,	0,$84,	0,  0,	0,  0
		.BYTE	0,  0,$2A,$DA,$95,$19,$5F,$5E,$1F,$7F,$15,$25,$2A,$26,$20,$20
		.BYTE $60,$80,	0,  0,$C0,$80,$50,$A0,$D0,$A8,$80,$80,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,$30,$18,$25,  2,	0,  0,	0,  0,	0,  0
		.BYTE	0,  5,	0,  0,	0,  0,	3,  2,$FC,$10,	0,  0,	0,  0,	0,  0
		.BYTE	0,$80,	0,  0,	0,  0,$80,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  8,	0,  0,	1,  3,	3,  7
		.BYTE $1A,$70,	0,  0,	0,  0,	0,  0,	0,  0,$58,$F0,$E0,$C0,$80,  0
		.BYTE	0,  0,	0,  3,	5,  7,$1F,$1E,$15,$20,	0,  0,	0,  0,	0,  1
		.BYTE  $A,$50,$44,$8D,	9,$4A,$40,$53,$51,$71,	6, $A, $C,$85,$88,$98
		.BYTE $98,$A8,$90,$20,$70,$F0,$70,$B1,$32,$81, $C,$F8,$A8,$28,$B8,$50
		.BYTE $40,$30,	2,  5, $A,$15,$AA,$50,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$38,$10,$50,$40,$40,  0,$10,  0,$44,$68,$28,$30,$30,$20
		.BYTE $20,  0, $F, $F, $E, $F,$1F, $F, $A,$1F,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,$83,$FD,$FB,$FB,$77,$F3,$64,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$78,$F2,$F3,$F2,$B2,$F2,$F3,$B8,	4,  0,	0,  1,	0,  1
		.BYTE	8,  0,	0,$40,	1,  2,	0, $D,	5,$19,	1,$23,$C2,$85, $F,$10
		.BYTE $38,$E4,$DE,  1,	0,  0,	0,  1, $B,$4A,$21,$F4,$C2,$85,	2,  4
		.BYTE $24,$21,$1C,$60,	0,  4,$FA,$D4,$AA,$D4,$40,$9C,$F8,$F0,	0,  0
		.BYTE	0,  0,	3, $C,	8,  4,$14,$1B, $F, $D,	4,  2,	4,  0,	1,  0
		.BYTE $10,$10,$44,$82,	2,$3A,$46,$86,	6,  2,$80,  0,$70,$C0,$80,  0
		.BYTE	0,  0,	0,  0,$80,$80,	0,  0,$80,$80,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$20,  0,	0,  0,	0,  0
		.BYTE	0,  0,	3,$1F, $F,  3,	0,  5, $A,$51,	0,  0,	0,  0,	0,  0
		.BYTE	1,  0,$E0,$C0,$C0,$C0,$84,$48,$84,$40,	0,  0,	0,  0,	0,$80
		.BYTE	0,$80,$21,$20,	0,$80,	0,  0,	0,  0,$50,$50,$60,$20,	0,  0
		.BYTE	0,  0,$40,$40,$40,  0,$40,$40,$40,$C0,$20,  0,	0,  0,	0,  0
		.BYTE	0,  0,$20,$20,$20,  0,	0,$20,$20,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$34,$24,$24,  0,	0,  0,	0,$20,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$C4,$8E,$8C,$88,$88,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$FE,$BE,$BD,$17,$1B,$11,$A9,$29,	1,  1,	2,  0,	0,  0
		.BYTE	0,  0,$C4,$C4,$C8,$A8,$50,$E2,$E0,$C1,$38,$38,$34,$54,$A9,  9
		.BYTE	3,  6,$4A,$2C,$28,  0,$80,  0,	0,  0,$25,$42,$46,$C6,	4,$88
		.BYTE $88,$80,$68,$70,	0,  9,$16,$18,$60,$C0,$80,$80,$40,$29,$16,$18
		.BYTE $60,$C0,	0,  0,$40,$80,	0,  0,	0,  0,	0,  0,	0,$80,	0,  0
		.BYTE	0,  0,$1E,$15,	0, $A, $A, $E, $E, $E,	0,  8, $C,  4,	4,  0
		.BYTE	0,  0,	4,  4,$8F,$77,$17, $E, $E,$1C,	1,  1,	0,  0,	0,  0
		.BYTE	0,  0,$80,$80,$80,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  1,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$28,$41,$80,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$A4,$D2,$A5,$53,$39,$18, $C,  6,$40,$20,$40,$20,	1,  0
		.BYTE	0,  0,	0,$E1,$F1,$F8,$7D,$AE,$D5,$EA,	0,  0,	0,  0,$C0,$F8
		.BYTE $7E,$BE,$C0,$C0,$80,$80,$80,$80,$40,$80,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  1,	0,  0,$40,$40,$40,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	1,  2,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$21,$61,$6F,$6F,$7F,$63,$60,$40,	0,  0,	0,  0,	0,$1C
		.BYTE	3,  1,	4,$D8,$F8,$F4,$E0,$E4,$F8,$E0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$40,$80,$20,$41,$63,$8B,$31,$C6,	0,  0,	0,  0,	1,  3
		.BYTE  $B,$37,	1,  0,$44,$88,$99,$F1,$A7,$44, $E,$1D,$39,$71,$E0,$C3
		.BYTE $C2,$BD,$43,$84,$D9,$B3,$EC,$3B,$7C,$58,$83,$16,$19,$33,$EC,$BB
		.BYTE $FC,$59,	0,$60,$C0,  0,$C0,  0,	0,  8,	0,$60,$C0,  0,$C0,  0
		.BYTE $80,$48,	7,  7,	3,  3,	3,  3,	1,  1,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$1C,$18,$18,$A8,$B0,$B0,$90,$90,	0,  0,	0,$10,	0,  0
		.BYTE	0,$40,	3,  5,	3,  1,	0,  1,	2,  1,	0,  2,	0,  2,	1,  0
		.BYTE	0,  0,$FC,$7E,$37,$8B,$D7,$6B,$F5,$72,$56,$2A,$1D,$1E,$15,$86
		.BYTE $47,$A3,	1,  3,	0,  0,$81,$DE,$BF,$AB,$80,$40,$2A,$51, $B,$8B
		.BYTE $15,$FE,$40,$E0,$72,$A5,$42,$A7,$4A,$A5,	3,  0,$81,$C0,$E0,$E0
		.BYTE $E1,$FA,	0,  0,$80,  0,$80,  0,	0,  0,	0,$80,	0,$80,	0,$80
		.BYTE	0,  0,	1,  1,	0,  0,	0,  0,	0,  3,	2,  2,	3,  0,	0,  0
		.BYTE	0,  3,$40,$80,$80,$20,	0,  0,$88,$EC,	0,  0,	0,$81,$63,$3F
		.BYTE $97,$F2,$FF,$7F,$F0,$7C,	0,  3,	6,$3E,	0,$B3,$EF,$FF,$FF,$FC
		.BYTE $F9,$41,$1C,$F1,$C3,$17,$8F,  0,	0,  3,$DF,$FE,$FC,$E8,$70,$8F
		.BYTE	0,  3,$8A, $A,$8F, $F,$1F,$1F,$F1,$B1,$49,$49,$4F,$CB,$DF,$DF
		.BYTE $F8,$80,$A0,$FF,$FB,$DC,$F8,$D4,$C8,$F0,$A0,$FF,$F3,$8C,$78,$80
		.BYTE	0,  0,$F8,$C0,	0,  0,	0,  0,	0,  0,$F8,$C0,$A0,$50,$28,$10
		.BYTE	0,  0,	1,  1,	1,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$C0,$C0,$E0,$F0,	0,  0,	0,  0,	0,$20,$10,  0,	0,  0
		.BYTE	0,  0,$E8,$78,$3A,$55,$23,$10,	0,  0,$40,$20,$10,$28,$1D,  6
		.BYTE	7,  1,$77,$7F, $A,  1,$AA,$C5,$28,  4,$DD,$2A,$14,  0,$15,$A0
		.BYTE $D4,$F8,$DA,$B4,$A8,$50,$A0,$50,$80,  0,$74,$E8,$14,$20,$40,$80
		.BYTE	0,  0,$D8,  0, $D,$33,$DF,  0,	0,  0,$DE, $A, $D,$33,$DF,  0
		.BYTE	0,  0,$9E,$9C,$9F,$88,$E0,$C5,$E2,$3F,$A1,$A2,$A3,$94,$F8,$C0
		.BYTE $E0,$3E,	4, $F,$FF,  3, $E,$49,$AA,$50,$24,$2F,$FF,  0,	0,$34
		.BYTE	0,  0,$60,$FF,$C0,$40,$80,$40,$80,  0,$10,$FF,$C0,  0,	0,  0
		.BYTE	0,  0,$F0,$FE,$60,$10,$10,  0,	0,  0,	0,$FE,	0,  0,	0,  0
		.BYTE	0,  0,	2,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$E0,  0,	0,  0,	0,  0,	0,  0,$10,  0,	0,  0,	0,  0
		.BYTE	0,  0
byte_4DCEF:	.BYTE $C9,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:9871o
		.BYTE	0,  0,	0,  0,	0,  0,	0,  1,	7,  7,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,$E4,$E4,$F4,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,$80,$80,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0, $F,  1,	4,$30,$3D,$7E,$B0,$C0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$F4,$86,$D9,$9E,$86,$82,	8,  1,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$A0,$60,$E0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,$1E,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$F0,$59,$48,$70,$11,$C0,$F0,$1F,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,$88,$60,	0,$C0,$40,$C0,$20,$10,$10,  0,	0,  0
		.BYTE	0,  0,	0,  0,$60,$20,$20,$C0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  1,	4,  7,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,$80,$80,$20,$18,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  3,	4, $B,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	1,$1D,	3,$1F,$3F,$FF,	0,  0,	0,  0,$20,$C0
		.BYTE	0,  0,$60,$C0,$89,$84,$90,$80,$9E,$86,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	2,  0,	0,  0,$20,$20,$30,$30,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$80,  0,	0,  0,	0,  0,$10,$18,	0,  0,	0,  0,	0,  0
		.BYTE $10,$18,	4,  0,	1,  3,	1,  0,	2,  2,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$18,$78,	0,$F8,$60,$52,$E7,$4D,	0,  0,	0,  0,	0,  0
		.BYTE	7, $D,	0,  0,	0,  0,	0,  0,	0,$F0,	0,  0,	0,  0,	0,  0
		.BYTE	0,$C0, $F,$2F,$6F,$6F,$EF,$EF,$CF,$CA,	0,  0,	0,  0,	0,  0
		.BYTE $10,$10,$FF,$FB,$FB,$F4,$EA,$F4,$6A,$D5,	0,  0,	4, $A,$14, $A
		.BYTE $14,$28,$80,$80,$F6,$F7,$F6,$F6,$F6,$F6,	0,  0,	6,  7,	6,  6
		.BYTE	6,  6,$20,  6,$1F,  1,$7E,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$18,$1F,$DF,$DB,$EF,$6F,$B7,$B7,$18,$1F,$1F,$1B, $F, $F
		.BYTE	7,  7,	0,  0,$C0,$30,	8,$F4,$FA,$FE,	0,  0,$C0,$40,$90,$F8
		.BYTE $FE,$FE,	2, $E,$1F,$1F,$33,$3F,$3F,$37,	2, $E, $F,$1F,$30,$38
		.BYTE	7,$37, $F,$1F,$7E,$FA,$BE,$5F,$DB,$FB, $B,$1F,$7E,$FA,$BE,$4F
		.BYTE $5B,$7B,$F8,$FC,$FC,$DA,$7E,$46,$18,$D0,$C0,$78,$F8,$C8,$1E,$46
		.BYTE $18,$90,	0,  0,	2,  2,	2,  0,	0,  1,	0,  0,	1,  1,	1,  1
		.BYTE	0,  0,$C6,$DD,$5E,$5C, $F,$6F,$2F,$1F,	1,  2,	1,  0,$80,$80
		.BYTE $C0,$C0,$AB,$17,$8F,$7F,$FF,$FF,$FF,$FF,$50,$A0,	0,  0,	0,  0
		.BYTE	0,  0,$F6,$F6,$FB,$FB,$FB,$FB,$FC,$FD,	6,  6,	3,  3,	3,  3
		.BYTE	0,  0,$FF,$FF,$7F,$7F,$7F,$3C,$FB,$D7,	0,  0,	0,  0,	0,  0
		.BYTE	3,  7,$D7,$DB,$DB,$A3,$67,$4F, $F,$1F,	7,  3,	3,  3,$17,$2F
		.BYTE  $F,$5F,$FE,$FF,$FF,$FE,$FC,$F5,$A1,$C1,$FE,$FF,$FF,$FE,$FC,$F5
		.BYTE $A9,$C1,	0,$1C,$3F,$7F,$6F,$77,$B7,$DC,	0,$1C,$3F,$7F,$6F,$77
		.BYTE $B7,$DF,	0,  0,$80,$80,$E0,$F0,$FC,$3E,	0,  0,$80,$80,$E0,$F0
		.BYTE $FC,$FE,$17,$37,$39,$1A,$3C,$3C,$38,$7A,$17,$13,$11,$12,	0,  8
		.BYTE $38,$40,$DB,$B8,$BC,$FE,$3E,$1A,$35,$26,$9B,$B8,$34,$B0,$3E,$1A
		.BYTE $35,$26,$10,  4,	0,  0,	0,  0,	0,  0,$10,  4,	0,  0,	0,  0
		.BYTE	0,  0,	2,  0,	0,  2,	3,  1,	1,  1,	0,  3,	3,  1,	0,  0
		.BYTE	0,  0,$4F,$3F,$1F,$23,$3B,$B2,$8A,$98,	0,$80,$C0,$C0,$C0,$40
		.BYTE $40,$40,$FF,$FF,$7F,$7F,$7F,$61,$2F,$24,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$FC,$FE,$FD,$6B,$FF,$73,$FB,$FF,	1,  0,	0,  0,	0,  0
		.BYTE	0,  0,$6F,  7,$98,$DF,$D0,$C0,$C7,$FF,$8F,$67,	0,  0, $F,$10
		.BYTE	7,$FF,$CE,$E7,$E6,  6,	4, $D,$C1,$C3,$EE,$F7,$F6,$56,$44, $D
		.BYTE $C1,$C3,$81,$15,	7,$2F,$2F,$EF,$5F,$3F,$81,$45,$47,$2F,$2F,$EF
		.BYTE $5F,$3F,$E2,$A3,$F5,$F8,$FD,$FE,$FF,$FF,$E2,$A1,$F0,$F8,$FC,$FE
		.BYTE $FF,$FF,$5F,$27,$19,$8E,	7, $B,	1,$E1,$7F,$FF,$7F,$3F,$1F, $F
		.BYTE	7,$E3,$80,$E0,$F8,$7C,$9C,$A6,$A9,  1,$80,$E0,$F8,$FC,$FC,$BE
		.BYTE $AF,  3,	0,  0,	0,  0,	0,  0,	1,  1,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$BB,$88,	2,$63,$D3,$E0,$C1,$E0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	1,$10,	0,  0,	2,  6,	7,$4F,	0,  0,	0,  0,	2,  2
		.BYTE	2,  7,	0,  0,	0,  1,$80,$50,$80,$90,	0,  0,	0,  1,$80,$50
		.BYTE	0,$90,	0,$20,$C0,$A0,$A0,$E0,$E0,$E0,	0,$20,$C0,$A0,$A0,$E0
		.BYTE $E0,$E0,	1,  0,	0,  3,$1F,$7E,$70,$C0,	0,  1,	3,  3,$1F,$7F
		.BYTE $7F,$F3,$18,$1F,$3F,$FF,$FE,  1,	3,$20,$E0,$E7,$FF,$FF,$FF,$FE
		.BYTE $C0,$80, $F,$FF,$FE,$E0,	0,$E0,$C0,  0, $F,$FF,$FF,$FF,$E0,  0
		.BYTE	0,  0,$FF,$FF,	0,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,  0,	0,  0
		.BYTE	0,  0,$FF,$FF,	0,$E5,$E0,$C0,$60,$C0,$FF,$FF,$FF,  5,	0,$10
		.BYTE	0,  0,$D3,$1F, $B,$20,$90,  0,	0,  0,$D3,$DF,$CB,  0,	0,  0
		.BYTE	0,  0,$4F,$9F,$6F,$9F,$13,$6D,$11,  0, $F,$9F, $F,$1F,$13,  1
		.BYTE	1,  0,$FB,$F7,$F9,$F1,$57,$37,	7, $B,$FB,$F7,$F9,$F1,$57,$37
		.BYTE	7,  3,$E1,$D0,$E5,$F3,$F3,$C9,$C0,$46,$E1,$C0,$E1,$F3,$F3,$C1
		.BYTE $C0,$46,	0,$80,$C0,$E0,$C0,$40,$20,$20,	0,$80,$C0,$E0,$C0,$40
		.BYTE $20,$20,	3,  7,	7,  7, $F, $A,	6,  3,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$F1,$D1,$91,$83,$83,$C3,	3,  0,	0,  0,	0,  1,	1,  0
		.BYTE	0,  0,$4F,$CF,$DF,$FF,$CE,$C4,	0,  0,$47,$CF,$9E,$BC,	0,  0
		.BYTE	0,  0,$D1,$FB,$FA,$F8,$FB,  1,	3,  3,$D1,$83,$82,$E0,$FB,  1
		.BYTE	3,  3,$E0,$F0,$F0,$F0,$F0,$F0,$D0,$50,$E0,$F0,$F0,$F0,$F0,$F0
		.BYTE $D0,$50,$80,  1,	2,  1,	2,  0,	0,  0,$C3,$82,	1,  2,	1,  0
		.BYTE	0,  0,$A1,$21,$A1,$60,$60,  0,	2,  1,	0,$80,	0,  0,	0,  0
		.BYTE	0,  0,$80,$80,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$1F, $F, $F, $F,	6, $F,	7, $D,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$90,$C0,$80,$8A,	4,$E0,	0,$80,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	8,$40,	8,  8,$58,$68,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0, $A,	1,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	2,  0,	0,  0,	0,  0,	0,  0,	2,  0,	0,  0,	0,  0
		.BYTE	0,  0, $F,$8F,	7,  0,	0,  0,	0,  0, $F, $F,	7,  0,	0,  0
		.BYTE	0,  0,$20,$20,$30,$10,$18,  0,	0,  0,$20,$20,$30,$10,$18,  0
		.BYTE	0,  0,	6,  0,	0,  0,	0,  0,	0,  0,	6,  0,	0,  0,	0,  0
		.BYTE	0,  0,$50,$90,	0,  0,	0,  0,	0,  0,$50,$90,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  3, $F, $F, $F,$1F,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,$80,$C8,$C9,$E9,$E9,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,$40,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  1,	1,  1,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	3,  9,$61,$7B,$FD,$70,$80,$C0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0, $C,$B3,$3C, $C,	4,  0,$2A,$30,	0,  0,	0,  0,	0,  0
		.BYTE $28,$30,$C0,$C0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,$20,	8,$3C,$7C,$F8,$67,$37,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,$80,$94,$96,$9E,$CD,$30,$C0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,$80,$C0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	3,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  4,	0,  0,	0,  0,$1C,$20,$41,$C1,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$F8,$88,$80,$71,$19,$80,$8C,$E0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$FC,$BD, $F,  6,$2D,$B8,$70,  0,$1C,  5, $F,  6, $C,$18
		.BYTE $10,  0,	0,$C0,$40,$40,$80,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  2,	6, $F, $F, $C,	9,$1A,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$87,$D0,$30,  1,	0,$84,$F2,$1B,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$C0,$20,	0,  0,$10,  0,	3,$81,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$40,$40,	0,  0,$80,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	1,  7, $F, $F,$1F,$3F,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$3A,$87,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	8,  5,	1,$10,	0,$DE,$C6,$E0,$80,$80,$80,$80,$80,  0
		.BYTE	0,  0,$3C,  0,	0,$20,$20,$30,$30,$22,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,$10,$10,$1A,$1A, $A,	0,  0,	0,$10,$10,$1A
		.BYTE $1A,$1A,	0,$1C,$70,$5E,$1A,$4E,$4F,$47,	0,$1C,$70,$5E,$1A,$5E
		.BYTE $5F,$4F,	0,  0,	0,  0,	8,  0,$24, $C,	0,  0,	0,  0,	8,  0
		.BYTE $24, $C,	0,  0,	7, $F,$3F,$3F,$7F,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$29,$74,$D4,$D4,$96,$92,$93,$CA,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$8C,$C0,$62,  2,$16,  4,$84,$CC,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	1,  6,$30,$60,$40,$40,$40,$40,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,$98,$F6,$F9,$FF,	0,  0,	0,  0,$98,$F0
		.BYTE $F9,$FF,	0,  0,	0,  0,	0,  0,$80,$40,	0,  0,	0,  0,	0,  0
		.BYTE $80,$40,$3F,$3F,$3F,$3F,$3D,$7F,$7F,$7F,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$FF,$FF,$FF,$FE,$F5,$EA,$D4,$A8,	0,  0,	0,  1, $A,$15
		.BYTE $2A,$54,$60,$6C,$ED,$6D,$6D,$6D,$6D,$EC,$80,$8C, $C, $C, $C, $C
		.BYTE  $C,$8C,	6,$1C,	0,$F0,$F8,$FA,$F8,$E2,	0,  0,	0,  0,	2,  0
		.BYTE	0,  0,	8,  0,$5F,$1F,$BF,$3C,$78,$F0,$18,  0,$5F,$9F,$BF,$3F
		.BYTE $7E,$F0,$87,$C3,$E3,$FB,$2D,$61,$29,$5E,$8F,$C7,$E7,$FF,$FF,$E3
		.BYTE $2B,$5F, $C,$6F,$E4,  0,$80,$80,$C0,$C0, $C,$6F,$ED,$E8,$88,$88
		.BYTE $C9,$C9,	0,$FF,$80,$C0,$40,$C0,$80,$C0,	0,$FF,$B9,$C0,$40,$C0
		.BYTE $80,$C0,	0,  0,	6,$1F,$2F,$7E,$FF,$7C,	0,  0,	6,$1F,$2F,$7E
		.BYTE $FF,$7C,	0,  0,$60,$CC,$8E,  8,	0,  0,	0,  0,$60,$CC,$8E,  8
		.BYTE	0,  0,$FF,$7F,$7F,$5F,$7F,$5E,$5F,$3F,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$8E,$80,$84,$86,$87,$90,$9C,$81,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$34,$6C,$18,$18,$80,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$80,  0,	1,  1,	7,$1F,$7F,$7F,	0,  0,	1,  1,	7,$1F
		.BYTE $7F,$7F,$F7,$FF,$FE,$FF,$FF,$FF,$FF,$FF,$F7,$FF,$FE,$FF,$FF,$FF
		.BYTE $FF,$FF,$E0,$F0,$38,$18,$DC,$EC,$E6,$E6,$E0,$F0,$38,$18,$DC,$EC
		.BYTE $E6,$E6,$1F,$5E,$FF,$FF,$FF,$FF,$DF,$67,	0,  1,	0,  0,	0,  0
		.BYTE	0,  0,$53,$87,$1F,$3F,$FF,$FF,$FF,$FB,$A3,$46,$9C,$30,$60,$80
		.BYTE	0,  0,$EE,$E7,$F6,$F5,$F1,$FB,$C9,$D9,$8E,  7,	6,  5,	1,  3
		.BYTE	1,  1,$18,$7C,$FC,$BD,$7C,$9D,$D8,$FC,$18,$7C,$FC,$BC,$7C,$9C
		.BYTE $D8,$FC,$FF,$FF,$FF,$51,$DB,$3F,$AF,$2F,$FF,$FF,$FF,$51,$DB,$3F
		.BYTE $AF,$2F,$FE,$FE,$FF,$F9,$FD,$FB,$FB,$FF,$FF,$FF,$FF,$F9,$FD,$FB
		.BYTE $FB,$FF,$E0,$E0,$68,$68,$79,$78,$6E,$AC,$E9,$F9,$F9,$F9,$F9,$F9
		.BYTE $EF,$EF,$C0,$80,$80,$80,$80,$80,$80,$80,$C0,$80,$80,$80,$80,$80
		.BYTE $80,$80,	0,  0,	0,  1,	3,$5F,$1F, $F,	0,  0,	0,  1,	3,$5F
		.BYTE $1F, $F,$78,$7A,$F7,$EF,$C7,$DF,$FF,$E3,$78,$7A,$F7,$EF,$C7,$C7
		.BYTE $83,$E3,$10,$38,$3F,$3E,$38,$6C,$CE,$DC,$10,$38,$3F,$3E,$38,$6C
		.BYTE $CE,$DC,$3F,$BF,$BF,$BF,$BF,$BE,$BE,$BE,	0,  0,$80,  0,	0,  0
		.BYTE	0,  0,$80,$1E,$3E,$1E,	3,  0,	0,  7,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,$60,$60,$F0,$9C,$18,	3,$87,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$7F,$7F,$FD,$FF,$7F,$7F,$7E,$7E,$7F,$7F,$FD,$FF,$7F,$7F
		.BYTE $7E,$7E,$FF,$FF,$FF,$FF,$FE,$7C,$F3,$C1,$FF,$FF,$FF,$FF,$FE,$7C
		.BYTE $F3,$C1,$F6,$F6,$AE,$2E,	6,$9E,$BC,$3C,$F6,$F6,$AE,$2E,	6,$9E
		.BYTE $BC,$3C,	0,  0,	1,  1,	3,  7,	7, $F,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$E7,$E7,$FD,$E0,$40,$84,$C7,$87,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$FF,$FF,$CF,$F7,$7F,$27,$37,$BF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$FD,$7E,$F6,$F7,$FE,$FC,$F3,$FF,	1,  0,	0,  0,	0,  0
		.BYTE	0,  0,$FC,$F8,$30,$C0,$20,  0,	6,  0,$FC,$F8,$30,  0,	0,  0
		.BYTE	0,  0,$2F, $F,	0,  0,	0,  2,	1,  2,$2F, $F,	0,  0,	0,  2
		.BYTE	1,  2,$FF,$FF,$43,  0,	0,  4,$40,$40,$FF,$FF,$43,  0,	0,  4
		.BYTE $40,$40,$A4,$B6,$BC,$BE,$B6,$5B,$5B,$5B,$E7,$F7,$FD,$FF,$F6,$7B
		.BYTE $7B,$7B,$80,$80,$80,$80,$80,$80,	0,  0,$80,$80,$80,$80,$80,$80
		.BYTE	0,  0,	3,  3,	5,  0,	0,$2F,$27, $F,	0,  0,	0,  0,	0, $F
		.BYTE	7, $F,$CF,$DF,$3F, $E,$7F,$FF,$FF,$FF, $F,$1E,$1F, $E,$7F,$FF
		.BYTE $FF,$FF,$67,$BE,$3F,$7F,$FF,$F7,$FF,$FF,$67, $E,$1F,$3F,$FF,$F7
		.BYTE $EF,$C1,$C0,$EC,$FA,$FF,$FF,$7F,$FF,$FF,$C0,$EC,$FA,$FF,$FF,$7F
		.BYTE $FF,$FF,$DD,$CF,$4B,  1,$C1,$C4,$F7,$BB,	0,  0,	0,  0,$C0,$C4
		.BYTE $F7,$BB, $B,  0,	2,  3,	3,  1,$80,$70,	0,  0,	0,  0,	0,  0
		.BYTE $80,$70,$C0,$DE,$7E,$C2,$A0,$F1,$26, $C,	0,  0,	0,  0,	0,  1
		.BYTE	0,  0,$4C,$6C,$71,$F0,$80,$80,	0,  0,$4C,$6C,$70,$F0,$80,$80
		.BYTE	0,  0,$D0,$28,$55,$49,	5,  2,	1,  0,$D0,$20,$41,$41,	1,  0
		.BYTE	1,  0,$34,$38,$28,$28,$40,$40,$C0,$C0,$34,$38,$28,$28,$40,$40
		.BYTE $C0,$C0, $F,$1F,$6F,$67,$8B, $E,	6,$4E,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$83,  3,	1,$84,$86,$86,$8F,$8D,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$3F,$AF,	7,  7,$87,  7,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$FF,$FE,$FB,$FE,$FC,$FE,$FC,$7C,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,$80,	0,  0,$80,  0,	0,$50,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	5,  2,	4,  2,	1,  6,	3,  1,	5,  2,	4,  2,	1,  6
		.BYTE	3,  1,$F8,$FC,$F8,$7C,$F8,$B8,$D0,$A0,$F8,$FC,$F8,$7C,$F8,$B9
		.BYTE $D1,$A0,$5F,$5E,$1E,$1C,$9C,$58,$58,$58,$7F,$7E,$3E,$3C,$BC,$78
		.BYTE $78,$78,	0,$40,	0,$40,$41,$47,$5F,$17,$7F,$3C,$70,$20,$21,  7
		.BYTE $1F,$17,	3,$17,$1F,$7F,$FF,$FF,$F2,$40,$FF,$13,$17,$7F,$FE,$FE
		.BYTE $FC,$78,$FF,$FF,$F7,$FF,$DF,$DF,$3F,$3F,$C3,$DF,$E7, $F,$1F,$1F
		.BYTE $3F,$3F,$DF,$BB,$FF,$FE,$FE,$F6,$F0,$E0,$9F,$BB,$FF,$FE,$FE,$F6
		.BYTE $F0,$E0,$DB,$D3,$D5,$C5,$2D,  8,	0,  1,$DB,$D3,$D1,$C1,	1,  0
		.BYTE	0,  0,$FD,$FF,$FF,$FF,$FF,$7F,$81,$73,$FD,$FF,$FF,$FF,$FF,$7F
		.BYTE	1,  3,$C0,$FF,$FF,$FF,$FF,$FF,$A3,$FC,$C0,$FF,$FF,$FF,$FF,$FF
		.BYTE $A3,$FC,	0,$30,$C0,$E8,$FC,$FC,$FE,$FC,	0,  0,$C0,$E8,$FC,$FC
		.BYTE $FE,$FC,	0,$20,	0,  0,	0,  0,	0,  0,$60,$80,	0,$40,$80,  0
		.BYTE $80,  0,	0,  1,	3,  3,	2,  6, $D, $D,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$D8,$D0,$63,$67,$1F,$FE,$FC,$F0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$84,  0,	0,$80,	8,  0,	4,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$78,$67,$38,$78,$14,$38,$7F,$FE,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$20,  0,	2,  0,$14,$2C,$24, $C,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	1,  0,	1,  1,	1,  1,	1,  1
		.BYTE	1,  0,$98,$8C,$8C,$8C,$8C,$8C,$84,  4,$B8,$9C,$9C,$9C,$9C,$9C
		.BYTE $84,  4,$15,  4, $C,$10,$18, $C, $C,  4,$15,  7, $E,  4,	6,  2
		.BYTE	3,  3,	1,  3,	7, $F,	4, $E, $D,  7,$C1,$83,	7, $F,	4, $F
		.BYTE  $D,  7,$FF,$F2,$E0,$80,	0,  0,	0,  0,$FF,$F6,$FC,$E0,$C0,$80
		.BYTE $80,$C0,$C0,  2,	2, $D,$1B,$1F,$2C,$49,$C0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$28,  1,	0,$88, $C,  0,$94,$18,	4,  4,	0,  0,	0,  0
		.BYTE	0,  0,$37,  7,$41,$68,$5C,$42,	0,  0,	7,  7,	1,  0,$20,$38
		.BYTE	6,  0,$FF,$FF,$FF,$7F,$6F,$1B,	6,  1,$FF,$FF,$FF,$7F,$6F,$1B
		.BYTE	6,  0,$7E,$37,$96,$C2,$F0,$7D,$BA,  4,$7E,$37,$96,$C2,$F0,$7C
		.BYTE $38,  0,$80,  0,$81,  0,	0,  0,$80,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0
byte_4E981:	.BYTE $9A,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_04:9873o
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  5,$2A,$55
		.BYTE	0,$15,	0,  0,	0,  0,	0,  0,	0,  0,	0,  4,$2A,$55,$AA,$41
		.BYTE  $A,$11,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0, $A,$50,$AA,$55
		.BYTE $80,  1,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  1,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE $E0,  9,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$A8,  0,$A8,  1
		.BYTE $A8,  1,	0,  0,	0,  0,	0,  0,	0,  0,	0,  4,	0,  0,	0,  1
		.BYTE	0,$11,	0,  0,	0,  0,	0,  0,	0,  0,$8A,$44,$88,  1,$20,  1
		.BYTE $2A,$44,	0,  0,	0,  0,	0,  0,	0,  0,$A0,  5,	2,$40,$AA,$54
		.BYTE $2A,$55,	0,  0,	0,  0,	0,  0,	0,  0,$A0,$41,$A8,$50,$A8,  4
		.BYTE $AA,$40,	0,  0,	0,  0,	0,  0,	0,  0,	2,  4,	4,  4,	6,  2
		.BYTE	7,  8,	0,  0,	0,  0,	0,  0,	0,  0,	6,  3,$D3,  2,	7,$3E
		.BYTE $FD, $A,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,$C0
		.BYTE $70,$AC,	0,  0,	0,  0,	0,  0,	0,  0,$A0,  0,	0,  0,	0,  0
		.BYTE $A8,$45,	0,  0,	0,  0,	0,  0,	0,  0,$AA,  0, $A,  0,$A8,$54
		.BYTE $A8,$51,	0,  0,	0,  0,	0,  0,	0,  0,$2A,$55,$28,  0,	0,  1
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$A8,$44, $A,$14,$AA,$50
		.BYTE $A2,$50,	0,  0,	0,  0,	0,  0,	3,  3,	0,  0,	0,  0,	1,  2
		.BYTE	4,  4, $A, $D,$1A,$30,$60,$C0,$C0,$80,$10,$20,$41,$86,	8,$10
		.BYTE $21,$2F,$94,$FA, $F,  7,	1,  0,	0,  0,	1,  0,$F0,$38,$1E,  7
		.BYTE $C1,$FE,	0,$80,$D0,$E8,$F4,$1A,	3,  8,$56,$2B,	5,  2,	1,$E0
		.BYTE $FC,$27,	0,  0,	0,  0,$40,$A0,$50,$AA,	0,$80,$40,$C0,$20,$18
		.BYTE	6,  1,	0,  0,	0,  0,	0,  0,	0,  0, $A,$55, $A,$54,$A8,$54
		.BYTE	2,  5,	0,  0,	0,  0,	0,  0,	0,  0,$A0,  1,	0,  0,	8,  0
		.BYTE $80,$50,	0,  0,	0,  0,	0,  0,	0,  3,	0,  0,	1,  2,	1,  7
		.BYTE	0,  3,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$50,$A8,$D4,$E8
		.BYTE $70,$68,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$10,  8,$14,$2A
		.BYTE	4,  3,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	3,$1F,$3F,$7F
		.BYTE $FF,$FC,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$80,$E0,$F0,$FE
		.BYTE $5C,  0,	0,  0,	0,  0,	0,  0,	0,  0,$AA,$55,	0,$40,$80,$50
		.BYTE	2,$45,	0,  0,	0,  0,	0,  0,	0,  0,$A8,$55,	0,$15,$28,$11
		.BYTE $A0,$41,	3,  3,	7,  6,	4,  4, $C,  8,	8,  8,	8,  9, $B,$13
		.BYTE $13,$14,$86,  4,	8,  0,	0,  8,	0,$1A,$40,$C0,$E2,$C4,$80,  0
		.BYTE	0,  4,$80,$28,	7,  0,	0,  0,	0,  1,$7F,  0,	0,  0,	0,  0
		.BYTE	0,$42,	4,  0,	1,  0, $C,$80,$82,$60,$F1,$FE,$1C,  2,	1,  0
		.BYTE	0,  0,$75, $A,$6F,$AF,$5F,$2F,$5F,$2F,$80,$F0,$10,  0,	0,$80
		.BYTE $80,$40,	0,  0,	0,  0,$80,$80,$80,$82,$80,$80,$40,$20,$30,$10
		.BYTE  $A, $F,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE $40,$A8,	0,  0,	0,  0,	0,  0,	0,  0,$82,  1,$2A,  0,$A0,  0
		.BYTE	0,$15,	0,  0,	0,  0,	0,  0,	0,  0,$A0,$41,	8,$50,$88,  1
		.BYTE	0,$44,	7,  7, $E, $F, $F, $F, $F, $F,	7,  7, $F, $F, $F, $F
		.BYTE  $F, $F,	0,$80,$80,$80,$80,$80,$C0,$C0,$74,$A8,$B4,$B8,$B0,$B0
		.BYTE $D0,$D0,	0,  0,	0,  0,	0,  0,	0,  0,	7,  7,	7,  7,	7,  6
		.BYTE  $F, $E,	0,  1,	3, $F, $F,$1F,$1F,$3F,$F4,$F1,$F3,$EF,$4F,$9F
		.BYTE $1F,$3F,	0,$FF,$FF,$FB,$F1,$FB,$FF,$FF,	0,$FF,$FF,$FF,$FF,$FF
		.BYTE $FF,$FF,	0,  0,$80,$80,$C0,$C0,$C0,$C0,	0,  0,$80,$80,$C0,$C0
		.BYTE $C0,$C0,	0,  0,	0,  0,	0,  0,	0,  0,$AA,$15,$A0,$10,$AA,$15
		.BYTE $AA,$54,	0,  0,	0,  0,	0,  0,	0,  0,$1C,$18,$16,$10,$10,$14
		.BYTE $14,$14,$1A,$30,	0,$10,$10,  0,$10,$38,	4,  4,	7,  8,	8,  8
		.BYTE	8,$18,	0,  0,	0,  0,	0,  0,	0,  0,$42,$CE,$3E,  7,	3,  3
		.BYTE	3,  3,$A0,$A0,$80,$80,$80,$C0,$C0,$C0,	0,  1,	1,  1,	1,  2
		.BYTE $82,$82,	0,  0,	0,  0,$80,$80,	0,$80,$E0,$E0,$50,$48,$48,$44
		.BYTE $44,$42,$83,$83,$C1,$F0,$68,$B8,$5C,$8E, $F,  7,	3,  1,	0,  0
		.BYTE	0,  0,$80,$E0,$F0,$F8,$78,  8,	0,  0,$F4,$FA,$FD,$FE,$FD,$7E
		.BYTE $3D,$1A,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,$80,$40,$80
		.BYTE $40,$80,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	1, $A
		.BYTE $17,$AA,	0,  0,	0,  0,	0,  0,	0,  0,	0,  1,	7,$9B,$7F,$9D
		.BYTE $78,$E0,	0,  0,	0,  0,	0,  0,	0,  0,$D5,$A8,$FD,$EA,$D7,$FF
		.BYTE  $F,  3,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,$A8,$D0,$20
		.BYTE $80,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  1,	0,  0,	0,  0
		.BYTE	0,  1,	0,  0,	0,  0,	0,  0,	0,  0,$AA,$55, $A,$55,	0,  0
		.BYTE  $A,$55,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,$40
		.BYTE $A0,$50,	7,  7,	3,  1,	0,  0,	0,  0,	7,  7,	3,  1,	0,  0
		.BYTE	0,  0,$C0,$C0,$C0,$C0,	0,  0,	0,  0,$D8,$D0,$C0,$C0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0, $D, $A,	5, $A,$14,$8A
		.BYTE $54,$20,$3F,$7F,$7F,$7F,$FF,$3F,	0,  0,$3F,$7F,$7F,$7F,$FF,$3F
		.BYTE	0,  0,$FF,$FF,$FE,$FC,$E0,$80,	0,  0,$FF,$FF,$FE,$FC,$E0,$80
		.BYTE	0,  0,$80,  0,	0,  0,	0,  0,	0,  0,$80,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	8,  0,	0,  4,$82,$11
		.BYTE $82,  5,	0,  0,	0,  0,	0,  0,	0,  0, $A,$44,$2A,  5,	2,$51
		.BYTE	2,  1,	0,  0,	0,  0,	0,  0,	0,  0,$80,  0,$80,$40,$82,$50
		.BYTE $A8,$50,	8, $C, $C, $E, $E, $E, $F,  5,$1C,$18,$14,$12,$16,$12
		.BYTE $12,  8,$20,$40,	0,$C0,$80,  0,	0,  0,$30,$50,$20,$20,$60,$60
		.BYTE $60,$F0,	0,  0,	0,  0,	0,  0,	0,  0,	3,  3,	1,  0,	0,$70
		.BYTE	0,  0,$C0,$C1,$72,$62,$62,$C6,$68,$6C,$82,$44,$30,$A0,$AB,$86
		.BYTE $82,$E0,$80,  0,	0,  0,	0,  0,	0,  0,$42,$81,$83,$82,	2,  2
		.BYTE	2,  2,$4C,$84,$44,$23,$40,$20,	0,  0,	0,  0,	0,$80,$80,$80
		.BYTE $80,$40,	0,  0,	0,  0,	0,  0,	0,  0, $D, $A, $D, $A,	5,  6
		.BYTE	1,  0,$38,$7E,$7F,$7E,$FF,$FB,$A8, $C,	0,  0,	0,$80,	0,  0
		.BYTE	0,$C0,	0,  0,	0,$C0,	0,$80,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$17,$5E,$B8,$54,$B8,$75
		.BYTE $EA,$7F,	0,  0,	0,  0,	0,  0,	0,  0,$D0,$A8,$54,$28,$10,  0
		.BYTE $80,  0,	0,  0,	0,  0,	0,  0,	0,  0,	3,$2B,$15,  2,	1,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$80,$FE,$44,$AF,$40,$2B
		.BYTE $1E,  6,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,$E0,$C0,$80
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0, $A,  5, $A,  1
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0, $A,$55,$AA,$54,$A8,$40
		.BYTE	8,  5,	0,  0,	0,  0,	0,  0,	0,  0,$AA,$15,$8A,$45,$AA,$55
		.BYTE	0,$44,	0,  0,	0,  0,	0,  0,	0,  0,$88,$54,$A8,$50,$A0,  0
		.BYTE	0,  0,	6,  2,	2,  0,	0,  0,	0,  0,	8,  9,	5,  2,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$C8,$84,	4,$84,$81,$86
		.BYTE $86,$84,	0,  0,	0,  0,	0,  0,	0,  0,$60,$40,$C0,$80,	0,  0
		.BYTE	0,  0,$78,$70,$68,  0,	0,  0,	0,  0,$86,$84,$94,$78,$30,$30
		.BYTE $20,$20,	0,  0,	0,  0,	0,  0,	0,  0,	2,  2,	2,  2,	2,  2
		.BYTE $1C,$14,	0,  0,	0,  0,	0,  0,	0,  0,$20,$20,$20,$20,$20,$20
		.BYTE $40,  0, $C,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	1,$17
		.BYTE  $B,  0,	0,  0,	0,  0,	0,  0,	0,  0,$2A,$F5,$3F,$F5,$FA,$FF
		.BYTE	7,$3C,	0,  0,	1,  1,	0,  0,	0,  0,	0,  0,$E1,$41,$A0,$FE
		.BYTE $C5, $A,	0,  0,$83,$83,	0,  0,	0,  0,	0,  0,$83,$83,	0,  0
		.BYTE $40,$80,	0,  0,	0,  0,	0,  0,	0,  0, $F,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$FE,$1C,$E0,$40,	0,  0
		.BYTE	0,  0,	0,  0,	0,  4,	6, $E,$3E,$1F,	0,  0,	0,  4,	7, $F
		.BYTE $3E,$1F,	0,  0,	0,  0,	0,  0,$61,$E2,$9F,$12,$1A,$28,$30,$34
		.BYTE $6D,$FA,	8,  8,	8,  4,	4,  6,	2,  2,	8,  8,	8,  4,	4,  6
		.BYTE	2,  2,	0,  0,	0,  0,$80,$80,$A8,$F8,$20,  0,	0,  3,$94,$96
		.BYTE $AB,$F8,	0,  0,	0,  0,	0,  0,	0,  4,$25,$26,$FA,$58,$10,$70
		.BYTE $E0,$C4,	0,  0,	0,  0,	0,  0,	0,  0,$1F,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$FF,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$E5,  0,	0,  0,	0,  0
		.BYTE	0,  0,$1F,$3F,$3C,  0,	0,  0,	0,  0,$1F,$3F,$3C,  0,	0,  0
		.BYTE	0,  0,$E6,$FE,$10,  0,	0,  0,	0,  0,$E6,$FE,$10,  0,	0,  0
		.BYTE	0,  0,$1F, $F,	7,  0,	0,  0,	0,  0,$1F, $F,	7,  0,	0,  0
		.BYTE	0,  0,$FF,$F7,$7C,  0,	0,  0,	0,  0,$FF,$F7,$7C,  0,	0,  0
		.BYTE	0,  0,$FC,$C0,	0,  0,	0,  0,	0,  0,$FC,$C0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	7,  5,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,$1E,$32,$5F
		.BYTE $E0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$7F,  0,	0,$FF
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	6,  1,	1,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$C0,$20
		.BYTE $10,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,$50,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  1,	2,  4
		.BYTE	8,$10,	0,  0,	0,  0,	0,  0,	0,  0,	2,$1E,$70,$80,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  2,	2,  5, $A,  5, $A,  5
		.BYTE	2,  1,	0,  0,	0,  0,	0,  0,	0,$80,$A0,$50,$BE,$61,$E1,$40
		.BYTE $C0,$40,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,$80
		.BYTE $80,$80,	0,  0,	0,  0,	0,  0,	0,  0,$10,$20,$20,$40,$40,$40
		.BYTE $40,$A0,	0,  0,	0,  0,	0,  0,	1,  1,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	1,  6,	4,  6, $D,$1E,$1F,$7E,	2,  1,	2,  1,	2,  1
		.BYTE	0,  1,	0, $C,$1C,$1C,$18,  0,	0,$80,$C0,$8C,$9C,$9C,$98,$81
		.BYTE $C6,$58,	0,  0,	0,  0,	0,  0,	0,$80,$80,$80,$80,$80,$80,  0
		.BYTE	0,$80,	0,  0,	0,  0,	0,  0,	0,  0,	0,  1,	1,  1,	1,  1
		.BYTE	1,  1,	0,  0,	0,  0,	0,  0,	0,  0,$C0,$A0,$50,$A8,$50,$A0
		.BYTE $40,$A0,	0,  0,	0,  0,	0,  0,	0, $C,	0,  0,	0,  0,	0,  0
		.BYTE	0, $C,	0,  0,	0,  0,	4,$54,	0,$10,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$20,$91,	3,$8F,$1F,$BF,$3F,$FF,	0,  0,	0,  0,	3,  7
		.BYTE  $F, $F,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FA,	0,$1C,$18,$70,$F1,$C3
		.BYTE $83,  6,$81,  3,	6, $C,$18,$10,	7,$1F,$61,$83,$86,$8C,$18,$10
		.BYTE	7,$1F,$80,  0,	0,  0,	0,$38,$C0,  0,$80,  0,	0,  0,	0,$38
		.BYTE $C0,  0,	0,  0,	0,  0,$C0,$60,$30,$18,	1,  1,	1,  1,$C1,$61
		.BYTE $31,$19,	0,  0,	0,  0,	4,  0,	0,  1,$40,$80,	0,$80,$40,$A0
		.BYTE $50,$A8, $E,$4C, $F,$1C,$18,$1C,$1E,$7E, $C, $C, $C,$18,$18,$1C
		.BYTE $1C,$7E,	0,  3,$21,  3,$97,$7F,$7F,$7F,	0,  0,	1,  3,	7,$3F
		.BYTE $7F,$7F,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$1F,$BF,$FE,$FE,$FC,$F9
		.BYTE $F7,$FF,$FC,$F4,$E8,$F8,$F1,$F7,$FE,$FF,	4, $C,$18,$18,$71,$F7
		.BYTE $FE,$FF,$3C,  0,$10,$70,$C0,$80,$F8,$E0,$3C,  0,$10,$70,$C0,$80
		.BYTE $F8,$E0, $E,  3,	0,  0,	0, $F,	3,  0, $F,  3,	0,  0,	0, $F
		.BYTE	3,  0,	0,$C0,$F8,$36,	9,$FF,$FF,  7,$54,$EE,$F9,$F6,$49,$FF
		.BYTE $FF,$3F,$7E,$7F,$FF,$FF,$FF,$FF,$FF,$FF,$7E,$7F,$FF,$FF,$FF,$FF
		.BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
		.BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$F8,$FF,$FF,$FF,$FF,$FF,$FF,$FF
		.BYTE $F8,$FF,$FF,$F8,$E0,$C1, $F,$FF,$FE,$FE,$FF,$F8,$E0,$C1, $F,$FF
		.BYTE $FE,$FE,	0,  0,	0,$C0,$80,  0,	0,  0,	0,  0,	0,$C0,$80,  0
		.BYTE	0,  0

; =============== S U B	R O U T	I N E =======================================


load_palette_4F323:			; CODE XREF: bank_switch_48000:loc_48053p
		LDA	#$9D ; '�'
		STA	ptr_0
		LDA	#$80 ; '�'
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
		LDA	#$3F ; '?'
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

loc_4F366:				; CODE XREF: load_palette_4F323+4Cj
		LDA	(data_2),Y
		STA	palette_bg_321,X ; "����������������"
		INX
		INY
		CPY	#4
		BCC	loc_4F366
		RTS
; End of function load_palette_4F323


; =============== S U B	R O U T	I N E =======================================


load_inventory_sprite_4F372:		; CODE XREF: bank_switch_48000:loc_4807Dp
		JSR	get_inventory_sprite_ptr_4F3E7

loc_4F375:				; CODE XREF: load_inventory_sprite_4F372+3Dj
		LDA	ptr_1
		STA	_PPU_ADDR
		LDA	ptr_0
		STA	_PPU_ADDR
		LDY	#0

loc_4F381:				; CODE XREF: load_inventory_sprite_4F372+17j
		LDA	(data_2),Y
		STA	_PPU_DATA
		INY
		CPY	#$10
		BCC	loc_4F381
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
		BEQ	locret_4F3B2
		JMP	loc_4F375
; ---------------------------------------------------------------------------

locret_4F3B2:				; CODE XREF: load_inventory_sprite_4F372+3Bj
		RTS
; End of function load_inventory_sprite_4F372


; =============== S U B	R O U T	I N E =======================================


sub_4F3B3:				; CODE XREF: bank_switch_48000:loc_48089p
		JSR	get_inventory_sprite_ptr_4F3E7

loc_4F3B6:				; CODE XREF: sub_4F3B3+31j
		LDA	inv_spr_dscr1_30C
		CMP	#4
		BCC	loc_4F3CD
		BEQ	loc_4F3CD
		SEC
		SBC	#4
		STA	inv_spr_dscr1_30C
		LDA	#$40 ; '@'
		STA	tilemapTypeUnk_30B
		JMP	loc_4F3DC
; ---------------------------------------------------------------------------

loc_4F3CD:				; CODE XREF: sub_4F3B3+8j sub_4F3B3+Aj
		LDA	inv_spr_dscr1_30C
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		STA	tilemapTypeUnk_30B
		LDA	#0
		STA	inv_spr_dscr1_30C

loc_4F3DC:				; CODE XREF: sub_4F3B3+17j
		JSR	sub_4F583
		LDA	inv_spr_dscr1_30C
		CMP	#0
		BNE	loc_4F3B6
		RTS
; End of function sub_4F3B3


; =============== S U B	R O U T	I N E =======================================


get_inventory_sprite_ptr_4F3E7:		; CODE XREF: load_inventory_sprite_4F372p
					; sub_4F3B3p
		LDA	#$17
		STA	ptr_0
		LDA	#$98 ; '�'
		STA	ptr_1

get_offset_4F3EF:
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

get_sprite_ptr_4F404:
		LDY	#0
		LDA	(ptr_0),Y
		STA	data_2
		INY
		LDA	(ptr_0),Y
		STA	data_3

get_sprite_descr_4F40F:
		LDY	#0
		LDA	(data_2),Y
		STA	inv_spr_dscr1_30C

skip_2_byte_4f416:
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
; End of function get_inventory_sprite_ptr_4F3E7


; =============== S U B	R O U T	I N E =======================================


load_inventory_sprite_tilemap_4F443:	; CODE XREF: bank_switch_48000:loc_48083p
		LDA	#$45 ; 'E'
		STA	ptr_0
		LDA	#$84 ; '�'
		STA	ptr_1

get_offset_4F44B:
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

get_ptr_4F460:
		LDY	#0
		LDA	(ptr_0),Y
		STA	data_2
		INY
		LDA	(ptr_0),Y
		STA	data_3

get_tilemap_offset_4F46B:
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

get_tilemap_ptr_4F480:
		LDY	#0
		LDA	(data_2),Y
		STA	ptr_0
		INY
		LDA	(data_2),Y
		STA	ptr_1

get_tilemap_descr_4F48B:
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
		LDA	#$20 ; ' '
		STA	data_3
		LDA	byte_36E
		ASL	A
		ASL	A
		CLC
		ADC	data_3
		STA	data_3
		LDY	ppu_unk_byte_309

loc_4F4BA:				; CODE XREF: load_inventory_sprite_tilemap_4F443+89j
		CPY	#0
		BEQ	loc_4F4CF
		LDA	data_2
		CLC
		ADC	#$20 ; ' '
		STA	data_2
		LDA	data_3
		ADC	#0
		STA	data_3
		DEY
		JMP	loc_4F4BA
; ---------------------------------------------------------------------------

loc_4F4CF:				; CODE XREF: load_inventory_sprite_tilemap_4F443+79j
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
		LDA	#$32 ; '2'

loc_4F4E7:				; CODE XREF: load_inventory_sprite_tilemap_4F443+B0j
		CMP	tilemapWidth_308
		BCC	loc_4F4F6
		SEC
		SBC	tilemapWidth_308
		INC	inv_spr_dscr1_30C
		JMP	loc_4F4E7
; ---------------------------------------------------------------------------

loc_4F4F6:				; CODE XREF: load_inventory_sprite_tilemap_4F443+A7j
		LDA	tilemapHeight_30A

loc_4F4F9:				; CODE XREF: load_inventory_sprite_tilemap_4F443+C5j
		CMP	inv_spr_dscr1_30C
		BCC	loc_4F50B
		SEC
		SBC	inv_spr_dscr1_30C
		STA	tilemapHeight_30A
		INC	ppu_unk_byte_309
		JMP	loc_4F4F9
; ---------------------------------------------------------------------------

loc_4F50B:				; CODE XREF: load_inventory_sprite_tilemap_4F443+B9j
					; load_inventory_sprite_tilemap_4F443+D6j
		LDA	ppu_unk_byte_309
		BEQ	loc_4F51B
		JSR	sub_4F527
		DEC	ppu_unk_byte_309
		LDA	ppu_unk_byte_309
		BNE	loc_4F50B

loc_4F51B:				; CODE XREF: load_inventory_sprite_tilemap_4F443+CBj
		LDA	tilemapHeight_30A
		BEQ	locret_4F526
		STA	inv_spr_dscr1_30C
		JSR	sub_4F527

locret_4F526:				; CODE XREF: load_inventory_sprite_tilemap_4F443+DBj
		RTS
; End of function load_inventory_sprite_tilemap_4F443


; =============== S U B	R O U T	I N E =======================================


sub_4F527:				; CODE XREF: load_inventory_sprite_tilemap_4F443+CDp
					; load_inventory_sprite_tilemap_4F443+E0p
		LDA	#0
		STA	tilemapTypeUnk_30B
		LDA	#0
		STA	has_ppu_data_to_upload_6F
		LDX	#0
		LDA	inv_spr_dscr1_30C
		STA	ppu_data_70,X
		INX

loc_4F538:				; CODE XREF: sub_4F527+56j
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

loc_4F54A:				; CODE XREF: sub_4F527+30j
		LDA	(ptr_0),Y
		CLC
		ADC	byte_31E
		STA	ppu_data_70,X
		INX
		INY
		CPY	tilemapWidth_308
		BCC	loc_4F54A
		LDA	data_2
		CLC
		ADC	#$20 ; ' '
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
		BCC	loc_4F538
		JSR	sub_4F5CB
		RTS
; End of function sub_4F527


; =============== S U B	R O U T	I N E =======================================


sub_4F583:				; CODE XREF: sub_4F3B3:loc_4F3DCp
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

loc_4F5A0:				; CODE XREF: sub_4F583+26j
		LDA	(data_2),Y
		STA	ppu_data_70,X
		INX
		INY
		CPY	tilemapTypeUnk_30B
		BCC	loc_4F5A0
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
		JSR	sub_4F5CB
		RTS
; End of function sub_4F583


; =============== S U B	R O U T	I N E =======================================


sub_4F5CB:				; CODE XREF: sub_4F527+58p
					; sub_4F583+44p
		LDA	#1
		STA	has_ppu_data_to_upload_6F

loc_4F5CF:				; CODE XREF: sub_4F5CB+6j
		LDA	has_ppu_data_to_upload_6F
		BNE	loc_4F5CF
		RTS
; End of function sub_4F5CB


; =============== S U B	R O U T	I N E =======================================


unused_4F5D4:				; CODE XREF: unused_4F5D4+3j
		LDA	_PPU_STATUS
		BMI	unused_4F5D4

loc_4F5D9:				; CODE XREF: unused_4F5D4+8j
		LDA	_PPU_STATUS
		BPL	loc_4F5D9
		RTS
; End of function unused_4F5D4


; =============== S U B	R O U T	I N E =======================================


unused_4F5DF:
		LDA	#1
		STA	frame_render_count_350

loc_4F5E4:				; CODE XREF: unused_4F5DF+8j
		LDA	frame_render_count_350
		BNE	loc_4F5E4
		RTS
; End of function unused_4F5DF


; =============== S U B	R O U T	I N E =======================================


unused_4F5EA:
		LDY	#0

loc_4F5EC:				; CODE XREF: unused_4F5EA+Fj
		LDX	#0

loc_4F5EE:				; CODE XREF: unused_4F5EA+Cj
		LDA	input_reg1_347
		CMP	#0
		BNE	locret_4F5FB
		INX
		BNE	loc_4F5EE
		INY
		BNE	loc_4F5EC

locret_4F5FB:				; CODE XREF: unused_4F5EA+9j
		RTS
; End of function unused_4F5EA


; =============== S U B	R O U T	I N E =======================================


unused_4F5FC:				; CODE XREF: unused_4F5FC+5j
		LDA	input_pressed_34A
		CMP	#$80 ; '�'
		BNE	unused_4F5FC
		RTS
; End of function unused_4F5FC


; =============== S U B	R O U T	I N E =======================================


unused_4F604:				; CODE XREF: unused_4F604+5j
		LDA	input_pressed_34A
		CMP	#$40 ; '@'
		BNE	unused_4F604
		RTS
; End of function unused_4F604


; =============== S U B	R O U T	I N E =======================================


unused_4F60C:				; CODE XREF: unused_4F60C+5j
		LDA	input_pressed_34A
		CMP	#0
		BEQ	unused_4F60C
		RTS
; End of function unused_4F60C


; =============== S U B	R O U T	I N E =======================================


unused_4F614:				; CODE XREF: unused_4F614+8j
		PHA
		JSR	unused_4F61F
		PLA
		SEC
		SBC	#1
		BNE	unused_4F614
		RTS
; End of function unused_4F614


; =============== S U B	R O U T	I N E =======================================


unused_4F61F:				; CODE XREF: unused_4F614+1p
		PHA
		TXA
		PHA
		TYA
		PHA
		LDX	#0

loc_4F626:				; CODE XREF: unused_4F61F+Dj
		LDY	#0

loc_4F628:				; CODE XREF: unused_4F61F+Aj
		DEY
		BNE	loc_4F628
		DEX
		BNE	loc_4F626
		PLA
		TAY
		PLA
		TAX
		PLA
		RTS
; End of function unused_4F61F


; =============== S U B	R O U T	I N E =======================================


nmi_sub_4F634:				; CODE XREF: NMI_4F692+18p
		LDA	#$F0 ; '�'
		STA	byte_218
		STA	byte_21C
		STA	byte_220
		STA	byte_224
		STA	byte_2E8
		STA	byte_2EC
		RTS
; End of function nmi_sub_4F634


; =============== S U B	R O U T	I N E =======================================


nmi_sub_4F649:				; CODE XREF: NMI_4F692+30p
		LDA	byte_43E
		BEQ	loc_4F670
		LDA	byte_203
		BNE	loc_4F65B
		LDA	#0
		STA	byte_43E
		JMP	locret_4F691
; ---------------------------------------------------------------------------

loc_4F65B:				; CODE XREF: nmi_sub_4F649+8j
		LDA	byte_203
		SEC
		SBC	#8
		STA	byte_203
		LDA	byte_207
		SEC
		SBC	#8
		STA	byte_207
		JMP	locret_4F691
; ---------------------------------------------------------------------------

loc_4F670:				; CODE XREF: nmi_sub_4F649+3j
		LDA	byte_203
		CMP	#$F8 ; '�'
		BNE	loc_4F67F
		LDA	#1
		STA	byte_43E
		JMP	locret_4F691
; ---------------------------------------------------------------------------

loc_4F67F:				; CODE XREF: nmi_sub_4F649+2Cj
		LDA	byte_203
		CLC
		ADC	#8
		STA	byte_203
		LDA	byte_207
		CLC
		ADC	#8
		STA	byte_207

locret_4F691:				; CODE XREF: nmi_sub_4F649+Fj
					; nmi_sub_4F649+24j ...
		RTS
; End of function nmi_sub_4F649


; =============== S U B	R O U T	I N E =======================================


NMI_4F692:				; DATA XREF: BANK_04:FFFAo
		PHP
		PHA
		TXA
		PHA
		TYA
		PHA
		LDA	bank_switch_flag_6C
		CMP	#$88 ; '�'
		BEQ	loc_4F6A1
		JMP	loc_4F6D2
; ---------------------------------------------------------------------------

loc_4F6A1:				; CODE XREF: NMI_4F692+Aj
		LDA	#$EE ; '�'
		STA	bank_switch_flag_6C
		LDA	sprite_type_306
		BNE	loc_4F6AD
		JSR	nmi_sub_4F634

loc_4F6AD:				; CODE XREF: NMI_4F692+16j
		LDA	#2
		STA	_PPU_OAM_DMA
		JSR	nmi_sub_4F70A
		JSR	nmi_sub_4F75F
		JSR	input_sub_4F778
		LDA	sprite_type_306
		CMP	#1
		BNE	loc_4F6C8
		JSR	nmi_sub_4F649
		JSR	nmi_sub_4F815

loc_4F6C8:				; CODE XREF: NMI_4F692+2Ej
		JSR	nmi_sub_4F7DB
		JSR	apu_music_update_4F86D
		LDA	#$88 ; '�'
		STA	bank_switch_flag_6C

loc_4F6D2:				; CODE XREF: NMI_4F692+Cj
		LDA	byte_432
		BEQ	loc_4F6DA
		DEC	byte_432

loc_4F6DA:				; CODE XREF: NMI_4F692+43j
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
		BEQ	loc_4F703
		DEC	frame_render_count_350

loc_4F703:				; CODE XREF: NMI_4F692+6Cj
		PLA
		TAY
		PLA
		TAX
		PLA
		PLP

locret_4F709:				; DATA XREF: BANK_04:FFFEo
		RTI
; End of function NMI_4F692


; =============== S U B	R O U T	I N E =======================================


nmi_sub_4F70A:				; CODE XREF: NMI_4F692+20p
		LDA	has_ppu_data_to_upload_6F
		BNE	loc_4F70F
		RTS
; ---------------------------------------------------------------------------

loc_4F70F:				; CODE XREF: nmi_sub_4F70A+2j
		LDA	ppu_data_70
		BEQ	loc_4F75A
		STA	ppu_fld0_x_6D
		LDX	#1

loc_4F717:				; CODE XREF: nmi_sub_4F70A+4Dj
		LDA	ppu_data_70,X
		AND	#$80 ; '�'
		BEQ	loc_4F72B
		LDA	ppu_ctrl_31F
		ORA	#4
		STA	ppu_ctrl_31F
		STA	_PPU_CTRL
		JMP	loc_4F736
; ---------------------------------------------------------------------------

loc_4F72B:				; CODE XREF: nmi_sub_4F70A+11j
		LDA	ppu_ctrl_31F
		AND	#$FB ; '�'
		STA	ppu_ctrl_31F
		STA	_PPU_CTRL

loc_4F736:				; CODE XREF: nmi_sub_4F70A+1Ej
		LDA	ppu_data_70,X
		AND	#$7F ; ''
		STA	ppu_fld1_y_6E
		INX
		LDA	ppu_data_70,X
		STA	_PPU_ADDR
		INX
		LDA	ppu_data_70,X
		STA	_PPU_ADDR

loc_4F748:				; CODE XREF: nmi_sub_4F70A+46j
		INX
		LDA	ppu_data_70,X
		STA	_PPU_DATA
		DEC	ppu_fld1_y_6E
		BNE	loc_4F748
		DEC	ppu_fld0_x_6D
		BEQ	loc_4F75A
		INX
		JMP	loc_4F717
; ---------------------------------------------------------------------------

loc_4F75A:				; CODE XREF: nmi_sub_4F70A+7j
					; nmi_sub_4F70A+4Aj
		LDA	#0
		STA	has_ppu_data_to_upload_6F
		RTS
; End of function nmi_sub_4F70A


; =============== S U B	R O U T	I N E =======================================


nmi_sub_4F75F:				; CODE XREF: NMI_4F692+23p
		LDA	ppu_ctrl_31F
		STA	_PPU_CTRL
		LDA	ppu_mask_320
		STA	_PPU_MASK
		LDA	ppu_scroll_x_304
		STA	_PPU_SCROLL
		LDA	ppu_scroll_y_305
		STA	_PPU_SCROLL
		RTS
; End of function nmi_sub_4F75F


; =============== S U B	R O U T	I N E =======================================


input_sub_4F778:			; CODE XREF: NMI_4F692+26p
		TYA
		PHA
		TYA
		PHA
		JSR	pad_input_update_4F790
		JSR	input_sub_4F7B0
		LDA	input_pressed_34A
		ORA	input_unk_34B
		STA	input_unk_349
		PLA
		TAX
		PLA
		TAY
		RTS
; End of function input_sub_4F778


; =============== S U B	R O U T	I N E =======================================


pad_input_update_4F790:			; CODE XREF: input_sub_4F778+4p
		LDX	#1
		STX	_PAD0_REG
		DEX
		STX	_PAD0_REG
		LDA	#0
		LDY	#8

loc_4F79D:				; CODE XREF: pad_input_update_4F790+1Aj
		PHA
		LDA	_PAD0_REG,X
		STA	input_reg0_34E
		LSR	input_reg0_34E
		PLA
		ROL	A
		DEY
		BNE	loc_4F79D
		STA	input_reg1_347,X
		RTS
; End of function pad_input_update_4F790


; =============== S U B	R O U T	I N E =======================================


input_sub_4F7B0:			; CODE XREF: input_sub_4F778+7p
		LDX	#0
		LDA	input_reg1_347,X
		EOR	input_unk_34C,X
		AND	input_reg1_347,X
		STA	input_pressed_34A,X
		LDA	input_reg1_347,X
		STA	input_unk_34C,X
		RTS
; End of function input_sub_4F7B0


; =============== S U B	R O U T	I N E =======================================


unused_4F7C5:
		LDA	ppu_ctrl_31F
		STA	_PPU_CTRL
		LDA	ppu_mask_320
		STA	_PPU_MASK
		RTS
; End of function unused_4F7C5


; =============== S U B	R O U T	I N E =======================================


unused_4F7D2:
		LDA	#0
		STA	_PPU_CTRL
		STA	_PPU_MASK
		RTS
; End of function unused_4F7D2


; =============== S U B	R O U T	I N E =======================================


nmi_sub_4F7DB:				; CODE XREF: NMI_4F692:loc_4F6C8p
		INC	byte_353
		LDA	byte_353
		CMP	#$19
		BCS	loc_4F7E6
		RTS
; ---------------------------------------------------------------------------

loc_4F7E6:				; CODE XREF: nmi_sub_4F7DB+8j
		LDA	#0
		STA	byte_353
		LDA	byte_354
		CMP	#0
		BNE	loc_4F811
		LDA	byte_355
		CMP	#0
		BNE	loc_4F809
		LDA	byte_356
		CMP	#0
		BNE	loc_4F801
		RTS
; ---------------------------------------------------------------------------

loc_4F801:				; CODE XREF: nmi_sub_4F7DB+23j
		DEC	byte_356
		LDA	#$A
		STA	byte_355

loc_4F809:				; CODE XREF: nmi_sub_4F7DB+1Cj
		DEC	byte_355
		LDA	#$A
		STA	byte_354

loc_4F811:				; CODE XREF: nmi_sub_4F7DB+15j
		DEC	byte_354
		RTS
; End of function nmi_sub_4F7DB


; =============== S U B	R O U T	I N E =======================================


nmi_sub_4F815:				; CODE XREF: NMI_4F692+33p
		INC	scroll_offset_x_479
		LDA	scroll_offset_x_479
		CMP	#$A
		BCC	locret_4F86C
		LDA	scroll_offset_y_47A
		EOR	#$80 ; '�'
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		AND	#$FE ; '�'
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		AND	#$7F ; ''
		CMP	#0
		BEQ	locret_4F86C
		LDA	scroll_offset_y_47A
		PHA
		LDA	scroll_offset_y_47A
		AND	#$80 ; '�'
		CMP	#0
		BEQ	loc_4F84D
		LDA	#0
		STA	ppu_scroll_y_305
		JMP	loc_4F85F
; ---------------------------------------------------------------------------

loc_4F84D:				; CODE XREF: nmi_sub_4F815+2Ej
		LDA	scroll_offset_y_47A
		AND	#$7F ; ''
		STA	scroll_offset_y_47A
		LDA	ppu_scroll_y_305
		CLC
		ADC	scroll_offset_y_47A
		STA	ppu_scroll_y_305

loc_4F85F:				; CODE XREF: nmi_sub_4F815+35j
		PLA
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		SEC
		SBC	#2
		STA	scroll_offset_y_47A

locret_4F86C:				; CODE XREF: nmi_sub_4F815+8j
					; nmi_sub_4F815+21j
		RTS
; End of function nmi_sub_4F815


; =============== S U B	R O U T	I N E =======================================


apu_music_update_4F86D:			; CODE XREF: NMI_4F692+39p
		LDA	bank_command_346
		PHA
		LDA	bank_to_344
		PHA
		LDA	bank_from_343
		PHA
		LDA	#banks_13
		STA	bank_to_344
		LDA	#$88 ; '�'
		STA	bank_command_346
		JSR	bank_switch_48000
		PLA
		STA	bank_from_343
		PLA
		STA	bank_to_344
		PLA
		STA	bank_command_346
		RTS
; End of function apu_music_update_4F86D

; ---------------------------------------------------------------------------
		.BYTE $50,$FF,$36,$27,$C1,$FF,$36,$25,$C1,$9A,$29,  0,$91,$1F,$8B,$E5
		.BYTE $C4,$36,$25,$C1,$26,$8A,	4,$30,$E4,$85,$C0,$74,	6,$FF,	6,$25
		.BYTE $C1,$EB,$ED,$C4,$36,$25,$C1,$8B,$C6,$89,$46,  0,$40,$B3, $A,$26
		.BYTE $88,$1C,$8B,$F0,$A3,$25,$C1,$40,$26,$88,$1C,$8A,$1E,$9A,$15,$30
		.BYTE $FF,$85,$DB,$A3,$25,$C1,$75,  3,$E9,$AA,	0,$C7,	6,$4E,$CE,  0
		.BYTE	0,$8B,$36,$4E,$CE,$8A,$84,$7F,$5C,$30,$E4,$3D, $A,  0,$74,$19
		.BYTE $8B,$3E,$25,$C1,$FF,  6,$25,$C1,$8A,$84,$7F,$5C,$8E,  6,$27,$C1
		.BYTE $26,$88,	5,$FF,	6,$4E,$CE,$EB,$D8,$C4,$36,$25,$C1,$FF,	6,$25
		.BYTE $C1,$26,$C6,  4, $A,$C7,	6,$4E,$CE,  0,	0,$8B,$36,$4E,$CE,$8A
		.BYTE $84,$80,$5C,$30,$E4,$3D, $A,  0,$74,$19,$8B,$3E,$25,$C1,$FF,  6
		.BYTE $25,$C1,$8A,$84,$80,$5C,$8E,  6,$27,$C1,$26,$88,	5,$FF,	6,$4E
		.BYTE $CE,$EB,$D8,$C4,$36,$25,$C1,$8B,$C6,$89,$46,  0,$40,$B3, $A,$26
		.BYTE $88,$1C,$8B,$F0,$A3,$25,$C1,$40,$26,$88,$1C,$8B,$F0,$26,$C6,  4
		.BYTE	0,$FF,	6, $E,$D7,$FF,$36,$23,$C1,$FF,$36,$21,$C1,$A3,$25,$C1
		.BYTE $9A,$58,	2,$91, $C,$8B,$E5,$A1,$23,$C1,$8B,$1E,$21,$C1,$A3,$27
		.BYTE $C1,$89,$1E,$25,$C1,$83,$C4, $C,$5D,$CB,$55,$83,$EC,$16,$8B,$EC
		.BYTE $C6,$46,$14,$3A,$B8,  4,	0,$50,$FF,$76,$1E,$FF,$76,$1C,$9A,  3
		.BYTE	0,$97,$1F,$8B,$E5,$85,$C0,$89,$46, $E,$78,  3,$E9,$F8,	0,$A0
		.BYTE $BB,  3,$30,$E4,$85,$C0,$74,  3,$E9,$EC,	0,$1E,$B8,$B6,	3,$50
		.BYTE $9A, $D,	0,$4E,$1F,$8B,$E5,$89,$46,$12,$89,$5E,$10,$82,$3E,$BA
		.BYTE	3,  0,$74,  4,$C6,$46,$14,$3B,$8B,$46,$12, $B,$46,$10,$75,  3
		.BYTE $E9,$D6,	0,$8B,$46,$1E, $B,$46,$1C,$75,	3,$E9,$CB,  0,$8B,$46
		.BYTE  $E,$85,$C0,$78,	3,$E9,$C1,  0,$C4,$76,$10,$26,$8A,  4,$30,$E4
		.BYTE $85,$C0,$75,  3,$E9,$B2,	0,$C7,$46, $C,	0,  0,$C4,$76,$10,$26
		.BYTE $8A,  4,$30,$E4,$85,$C0,$89,$46,	0,$74,$1D,$8A,$5E,$14,$30,$FF
		.BYTE $3B,$C3,$74,$14,$8B,$46, $C,$FF,$46, $C,$8B,$F8,$FF,$46,$10,$26
		.BYTE $8A,  4,$88,$85,$81,$5C,$EB,$D4,$8A,$46,$14,$30,$E4,$C4,$76,$10
		.BYTE $26,$8A,$1C,$30,$FF,$3B,$D8,$75,	3,$FF,$46,$10,$A0,$C6,	0,$30
		.BYTE $E4,$8B,$76, $C,$8A,$9C,$80,$5C,$30,$FF,$3B,$D8,$89,$46,	4,$74
		.BYTE $16,$C4,$7E,$1C,$26,$8A,$1D,$30,$FF,$3B,$D8,$74, $A,$A0,$C6,  0
		.BYTE $88,$84,$81,$5C,$FF,$46, $C,$8B,$76, $C,$C6,$84,$81,$5C,	0,$FF
		.BYTE $76,$1E,$FF,$76,$1C,$1E,$B8,$81,$5C,$50,$9A,$41,	3,$FA, $B,$8B
		.BYTE $E5,$B8,	4,  0,$50,$1E,$B8,$81,$5C,$50,$9A,  3,	0,$97,$1F,$8B
		.BYTE $E5,$89,$46, $E,$E9,$47,$FF,$FF,$76,$1E,$FF,$76,$1C,$1E,$B8,$81
		.BYTE $5C,$50,$9A,$7B,	3,$FA, $B,$8B,$E5,$8B,$46, $E,$83,$C4,$16,$5D
		.BYTE $CB,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  3,	0,$4C
		.BYTE $43,$20,$33,$2E,$30,$30,	0,  7, $A,$ED,$30,$B0,	7,  0,	8,$C0
		.BYTE $EC,  0,	0,$EA, $B,  0,	0,$21,$22,  0,	0,$6D,$31,  0,	0,$3E
		.BYTE $5F,$30,	0,  0,	0,$57,$53,$70,$62,  1,	0,$C0,$EC,  0,	0,$D8
		.BYTE	7,$ED,$30,$B0,	7,$ED,$30,  4,	0,  9,	0,$ED,	7,$ED,$30,  0
		.BYTE	0,$D8, $B,$E2,	0,  6,	1,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  1,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
aInvalidStackSizeInsu_3:.BYTE 'Invalid stack size',$D,$A
		.BYTE '$Insufficient memory',$D,$A
		.BYTE '$',$A
		.BYTE '2500 A.D. Linker  Copyright (C) 1985  -  Version 4.01f',$A
		.BYTE $A,0
		.BYTE $18
aFListingDestinationN_3:.BYTE 'F',$5C,'Listing Destination  (N, T, D, E, L, P, <CR> = N) : ',0
aErrorOnlyListingDest_4:.BYTE 'Error Only Listing Destination  (T, D, P, <CR> = T) : ',0
aListOnOffListingDes_12:.BYTE 'LIST ON/OFF Listing Destination  (T, D, P, <CR> = T) : ',0
aEnterRunTimeSelecti_12:.BYTE $A
		.BYTE $A
		.BYTE 'Enter Run Time Selection : ',0
		.BYTE  $A
		.BYTE	0
aAssemblyTerminatedBy_4:.BYTE 'Assembly Terminated By Operator',$A
		.BYTE $A,0
aCanTCreateDiskListi_12:.BYTE 'Can',$27,'t Create Disk Listing File',$A,0
aActiveCommands_13:.BYTE $A
		.BYTE '                         ***** Active Commands *****',$A
		.BYTE $A,0
aCtrlSStopOutput_12:.BYTE '                           Ctrl S = Stop Output',$A,0
aCtrlQStartOutput_12:.BYTE '                           Ctrl Q = Start Output',$A,0
aEscCStopAssembly_12:.BYTE '                           Esc  C = Stop Assembly',$A,0
aEscTTerminalOutput_12:.BYTE '                           Esc  T = Terminal Output',$A,0
aEscPPrinterOutput_12:.BYTE '                           Esc  P = Printer Output',$A,0
aEscDDiskOutput_12:.BYTE '                           Esc  D = Disk Output',$A,0
aEscMMultipleOutput_12:.BYTE '                           Esc  M = Multiple Output',$A,0
aEscNNoOutput_13:.BYTE '                           Esc  N = No Output',$A
		.BYTE $A,0
aRenameFileError_12:.BYTE 'Rename File Error',$A,0
aPage4u_12:	.BYTE 'Page %4u',0
aLib_12:	.BYTE 'LIB',0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE	0
aC_12:		.BYTE '%c',0
		.BYTE  $A
aMaximumNumberOfDiff_11:.BYTE 'Maximum Number of Different Sections (%d) Exceeded.  Link Term'
		.BYTE 'inated.',$A
		.BYTE $A,0
aS_12:		.BYTE '%s',0
		.BYTE	0
aDiskListingFilename_12:.BYTE 'Disk Listing  Filename : ',0
aSymbolTableFilename_12:.BYTE 'Symbol Table  Filename : ',0
aFormat_12:	.BYTE 'Format   : ',0
aLinkerOutputFilenam_12:.BYTE 'Linker Output Filename : ',0
aMicrotek_12:	.BYTE 'Microtek',0
aZax_12:	.BYTE 'Zax',0
aAbbreviated2500A_d__12:.BYTE 'Abbreviated 2500 A.D.',0
a2500A_d__13:	.BYTE '2500 A.D.',0
aNoneSpecified_12:.BYTE	'<None Specified>',0
aLinkErrors_13:	.BYTE $A
		.BYTE '         Link Errors :  ',0
aOutputFormat_13:.BYTE '         Output Format :  ',0
aExecutable_12:	.BYTE 'Executable',0
aIntelHex_12:	.BYTE 'Intel Hex',0
aExtendedIntelHex_12:.BYTE 'Extended Intel Hex',0
aTektronixHex_12:.BYTE 'Tektronix Hex',0
aMotorolaS1_12:	.BYTE 'Motorola S1',0
		.BYTE	0
aMotorolaS_12:	.BYTE 'Motorola S'
		.WORD NMI_4F692
		.WORD Palette_4809D
		.WORD locret_4F709
; end of 'BANK_04'

; ===========================================================================