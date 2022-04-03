; Segment type:	Pure code
		;.segment BANK_01
		* =  $8000

; =============== S U B	R O U T	I N E =======================================

; SPRITE_BANK

bank_switch_18000:			; CODE XREF: bank_switch_18000+76j
					; apu_music_update_1F9C0+16p
		LDA	#$EE ; '�'
		STA	bank_switch_flag_6C
		LDA	bank_to_344
		CMP	#$10
		BCS	loc_18020
		ASL	A
		ASL	A
		ASL	A
		TAY
		LDA	mirroring_type_342
		BNE	loc_1801A
		STA	$8083,Y
		JMP	loc_18035
; ---------------------------------------------------------------------------

loc_1801A:				; CODE XREF: bank_switch_18000+12j
		STA	$8081,Y
		JMP	loc_18035
; ---------------------------------------------------------------------------

loc_18020:				; CODE XREF: bank_switch_18000+9j
		SEC
		SBC	#$10
		ASL	A
		ASL	A
		ASL	A
		TAY
		LDA	mirroring_type_342
		BNE	loc_18032
		STA	$8183,Y
		JMP	loc_18035
; ---------------------------------------------------------------------------

loc_18032:				; CODE XREF: bank_switch_18000+2Aj
		STA	$8181,Y

loc_18035:				; CODE XREF: bank_switch_18000+17j
					; bank_switch_18000+1Dj ...
		LDA	bank_to_344
		STA	bank_prev_345
		LDA	#$88 ; '�'
		STA	bank_switch_flag_6C
		LDA	bank_command_346
		CMP	#0
		BEQ	loc_18053
		CMP	#1
		BEQ	loc_18059
		CMP	#2
		BEQ	loc_1805F
		CMP	#3
		BEQ	loc_18068
		RTS
; ---------------------------------------------------------------------------

loc_18053:				; CODE XREF: bank_switch_18000+44j
		JSR	load_tiles_state_1F25D
		JMP	loc_1806B
; ---------------------------------------------------------------------------

loc_18059:				; CODE XREF: bank_switch_18000+48j
		JSR	load_obj_tilemap_1F264
		JMP	loc_1806B
; ---------------------------------------------------------------------------

loc_1805F:				; CODE XREF: bank_switch_18000+4Cj
		JSR	load_sprite_to_vram_1F36D
		JSR	load_sprite_tilemap_1F3B8
		JMP	loc_1806B
; ---------------------------------------------------------------------------

loc_18068:				; CODE XREF: bank_switch_18000+50j
		JMP	loc_1806B
; ---------------------------------------------------------------------------

loc_1806B:				; CODE XREF: bank_switch_18000+56j
					; bank_switch_18000+5Cj ...
		LDA	#$FF
		STA	bank_command_346
		LDA	bank_from_343
		STA	bank_to_344
		JMP	bank_switch_18000 ; SPRITE_BANK
; End of function bank_switch_18000

; ---------------------------------------------------------------------------
SpritePalettes_18079:.WORD byte_180AF	; DATA XREF: BANK_01:FFFCo
		.WORD byte_180BF
		.WORD byte_180CF
		.WORD byte_180DF
		.WORD byte_180EF
		.WORD byte_180FF
		.WORD byte_1810F
		.WORD byte_1811F
		.WORD byte_1812F
		.WORD byte_1813F
		.WORD byte_1814F
		.WORD byte_1815F
		.WORD byte_1816F
		.WORD byte_1817F
		.WORD byte_1818F
		.WORD byte_1819F
		.WORD byte_181AF
		.WORD byte_181BF
		.WORD byte_181CF
		.WORD byte_181DF
		.WORD byte_181EF
		.WORD byte_181FF
		.WORD byte_1820F
		.WORD byte_1821F
		.WORD byte_1822F
		.WORD byte_1823F
		.WORD byte_1824F
byte_180AF:	.BYTE $35,$30,$11, $F,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_01:SpritePalettes_18079o
byte_180BF:	.BYTE $28,$3E, $A,$1A,$28,$3E, $A,$16,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_01:807Bo
byte_180CF:	.BYTE $27,$3E,$3C,$1B,$27,$3E,$16,$1B,$27,$3E,$27,$38,$27,$3E,$16,$38
					; DATA XREF: BANK_01:807Do
byte_180DF:	.BYTE $29,$3F,$17,$38,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_01:807Fo
byte_180EF:	.BYTE  $F,$30,$29,  9, $F,$30,$28,  8, $F,$30,$26,  6, $F,$3E,	5,$3D
					; DATA XREF: BANK_01:8081o
byte_180FF:	.BYTE $3F,$30,$3A,$1A,$3F,$30,$38,  8,$3F,$30,$26,$16,$3F,$30,$2D,$10
					; DATA XREF: BANK_01:8083o
byte_1810F:	.BYTE $3A,$3E,$17,$38,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_01:8085o
byte_1811F:	.BYTE $35,$30,$17, $F,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_01:8087o
byte_1812F:	.BYTE $35,$30,$17, $F,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_01:8089o
byte_1813F:	.BYTE $35,$30,$17, $F,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_01:808Bo
byte_1814F:	.BYTE $2A,$30,$1C,$3E,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_01:808Do
byte_1815F:	.BYTE $36,$3E,$16,$2D,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_01:808Fo
byte_1816F:	.BYTE $2D,$3E,$17,$38,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_01:8091o
byte_1817F:	.BYTE $28,$3E,	6,$16,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_01:8093o
byte_1818F:	.BYTE $3D,$3E,$16,$2D,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_01:8095o
byte_1819F:	.BYTE $2D,$3E,$17,  7,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_01:8097o
byte_181AF:	.BYTE $17,$3E,	7,$27,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_01:8099o
byte_181BF:	.BYTE $30,$3E,$27,  7,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_01:809Bo
byte_181CF:	.BYTE $30,$3E,$16,$30,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_01:809Do
byte_181DF:	.BYTE $3E,$30,$2D,$3D,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_01:809Fo
byte_181EF:	.BYTE $30,  7,$27,$3E,$30,$16,$30,$3E,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_01:80A1o
byte_181FF:	.BYTE	0,$30,$27,$3E,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_01:80A3o
byte_1820F:	.BYTE $3E, $A,$1A,$30,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_01:80A5o
byte_1821F:	.BYTE $37,$3E,$27,$30,$37,$3E,$38,$3D,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_01:80A7o
byte_1822F:	.BYTE $2A,  1,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_01:80A9o
byte_1823F:	.BYTE $30,$3F,$27,$17,$3F,$3F,$3F,$3F,$3F,$3F,$3F,$3F,$3F,$3F,$3F,$3F
					; DATA XREF: BANK_01:80ABo
byte_1824F:	.BYTE  $F, $F,$1C,$2C, $F,$38,$27,$16, $F,$10,$3D,$2D, $F,  0,	0,  0
					; DATA XREF: BANK_01:80ADo
SpriteTileMaps:	.WORD JillMaps_18295
		.WORD Enemy1Map_18373
		.WORD Enemy2Map_18402
		.WORD EnvObjectMap_184BD
		.WORD off_184E0
		.WORD off_18838
		.WORD off_18B5A
		.WORD off_18B99
		.WORD off_18C5F
		.WORD off_18D65
		.WORD off_18E6B
		.WORD off_18E86
		.WORD off_18F0A
		.WORD off_18F40
		.WORD off_18F94
		.WORD off_18FDC
		.WORD off_19048
		.WORD off_1907E
		.WORD off_1917A
		.WORD off_19180
		.WORD off_191E9
		.WORD off_191F0
		.WORD off_19232
		.WORD off_1924C
		.WORD off_1925E
		.WORD off_19294
		.WORD off_192D3
JillMaps_18295:	.WORD stru_182C1	; DATA XREF: BANK_01:SpriteTileMapso
		.WORD stru_182CA
		.WORD stru_182D3
		.WORD stru_182DC
		.WORD stru_182E5
		.WORD stru_182EE
		.WORD stru_182F7
		.WORD stru_18300
		.WORD stru_18309
		.WORD stru_18312
		.WORD stru_1831B
		.WORD stru_18324
		.WORD stru_1832D
		.WORD stru_18336
		.WORD stru_1833F
		.WORD stru_18348
		.WORD stru_18351
		.WORD stru_1835A
		.WORD stru_18363
		.WORD stru_18367
		.WORD stru_1836B
		.WORD stru_1836F
stru_182C1:	sprite_entry <	2,   3,	  1> ; DATA XREF: BANK_01:JillMaps_18295o
		.BYTE 0,1,6,7,$E,$F
stru_182CA:	sprite_entry <	2,   3,	  1> ; DATA XREF: BANK_01:8297o
		.BYTE 2,3,8,9,$10,$11
stru_182D3:	sprite_entry <	2,   3,	  1> ; DATA XREF: BANK_01:8299o
		.BYTE 2,3,$A
		.BYTE $B,$12,$13
stru_182DC:	sprite_entry <	2,   3,	  1> ; DATA XREF: BANK_01:829Bo
		.BYTE	2,  4, $C, $D,$14,$15
stru_182E5:	sprite_entry <	2,   3,	  1> ; DATA XREF: BANK_01:829Do
		.BYTE	2,  3, $A, $B,$12,$13
stru_182EE:	sprite_entry <	2,   3,	  1> ; DATA XREF: BANK_01:829Fo
		.BYTE $16,$17,$1C,$1D,$26,$27
stru_182F7:	sprite_entry <	2,   3,	  1> ; DATA XREF: BANK_01:82A1o
		.BYTE $18,$19,$1E,$1F,$28,$29
stru_18300:	sprite_entry <	2,   3,	  1> ; DATA XREF: BANK_01:82A3o
		.BYTE $16,$17,$20,$21,$2A,$2B
stru_18309:	sprite_entry <	2,   3,	  1> ; DATA XREF: BANK_01:82A5o
		.BYTE $1A,$1B,$22,$23,$2C,$2D
stru_18312:	sprite_entry <	2,   3,	  1> ; DATA XREF: BANK_01:82A7o
		.BYTE $16,$17,$24,$25,$2E,$2F
stru_1831B:	sprite_entry <	2,   3,	  1> ; DATA XREF: BANK_01:82A9o
		.BYTE $30,$31,$36,$37,$40,$41
stru_18324:	sprite_entry <	2,   3,	  1> ; DATA XREF: BANK_01:82ABo
		.BYTE $32,$33,$38,$39,$42,$43
stru_1832D:	sprite_entry <	2,   3,	  1> ; DATA XREF: BANK_01:82ADo
		.BYTE $30,$31,$3A,$3B,$44,$45
stru_18336:	sprite_entry <	2,   3,	  1> ; DATA XREF: BANK_01:82AFo
		.BYTE $34,$35,$3C,$3D,$46,$47
stru_1833F:	sprite_entry <	2,   3,	  1> ; DATA XREF: BANK_01:82B1o
		.BYTE $30,$31,$3E,$3F,$48,$49
stru_18348:	sprite_entry <	2,   3,	  1> ; DATA XREF: BANK_01:82B3o
		.BYTE $16,$17,$4E,$4F,$54,$55
stru_18351:	sprite_entry <	2,   3,	  1> ; DATA XREF: BANK_01:82B5o
		.BYTE $4A,$4B,$50,$51,$56,$57
stru_1835A:	sprite_entry <	2,   3,	  1> ; DATA XREF: BANK_01:82B7o
		.BYTE $4C,$4D,$52,$53,$58,$41
stru_18363:	sprite_entry <	1,   1,	  1> ; DATA XREF: BANK_01:82B9o
		.BYTE $59
stru_18367:	sprite_entry <	1,   1,	  1> ; DATA XREF: BANK_01:82BBo
		.BYTE $5A
stru_1836B:	sprite_entry <	1,   1,	  1> ; DATA XREF: BANK_01:82BDo
		.BYTE $5B
stru_1836F:	sprite_entry <	1,   1,	  1> ; DATA XREF: BANK_01:82BFo
		.BYTE $5C
Enemy1Map_18373:.WORD stru_1838D	; DATA XREF: BANK_01:8261o
		.WORD stru_18396
		.WORD stru_1839F
		.WORD stru_183A8
		.WORD stru_183B1
		.WORD stru_183BA
		.WORD stru_183C3
		.WORD stru_183CC
		.WORD stru_183D5
		.WORD stru_183DE
		.WORD stru_183E7
		.WORD stru_183F0
		.WORD stru_183F9
stru_1838D:	sprite_entry <	2,   3,	  4> ; DATA XREF: BANK_01:Enemy1Map_18373o
		.BYTE $13,$14,$19,$1A,$1F,$20
stru_18396:	sprite_entry <	2,   3,	  4> ; DATA XREF: BANK_01:8375o
		.BYTE $15,$16,$1B,$1C, $F,$10
stru_1839F:	sprite_entry <	2,   3,	  4> ; DATA XREF: BANK_01:8377o
		.BYTE $17,$18,$1D,$1E,$21,$22
stru_183A8:	sprite_entry <	2,   3,	  4> ; DATA XREF: BANK_01:8379o
		.BYTE $15,$16,$1B,$1C, $F,$10
stru_183B1:	sprite_entry <	2,   3,	  4> ; DATA XREF: BANK_01:837Bo
		.BYTE	1,  2,	7,  8, $D, $E
stru_183BA:	sprite_entry <	2,   3,	  4> ; DATA XREF: BANK_01:837Do
		.BYTE	3,  4,	9, $A, $F,$10
stru_183C3:	sprite_entry <	2,   3,	  4> ; DATA XREF: BANK_01:837Fo
		.BYTE	5,  6, $B, $C,$11,$12
stru_183CC:	sprite_entry <	2,   3,	  4> ; DATA XREF: BANK_01:8381o
		.BYTE	3,  4,	9, $A, $F,$10
stru_183D5:	sprite_entry <	2,   3,	  4> ; DATA XREF: BANK_01:8383o
		.BYTE $23,$24,$27,$28,$2C,$2D
stru_183DE:	sprite_entry <	2,   3,	  4> ; DATA XREF: BANK_01:8385o
		.BYTE $25,$26,$29,$2A,$2E,$2F
stru_183E7:	sprite_entry <	2,   3,	  4> ; DATA XREF: BANK_01:8387o
		.BYTE $23,$24,$2B,$28,$30,$31
stru_183F0:	sprite_entry <	2,   3,	  4> ; DATA XREF: BANK_01:8389o
		.BYTE $25,$26,$29,$2A,$2E,$2F
stru_183F9:	sprite_entry <	2,   3,	  1> ; DATA XREF: BANK_01:838Bo
		.BYTE $32,$33,$34,$35,$36,$37
Enemy2Map_18402:.WORD stru_18424	; DATA XREF: BANK_01:8263o
		.WORD stru_1842D
		.WORD stru_18436
		.WORD stru_1843F
		.WORD stru_18448
		.WORD stru_18451
		.WORD stru_1845A
		.WORD stru_18463
		.WORD stru_1846C
		.WORD stru_18475
		.WORD stru_1847E
		.WORD stru_18487
		.WORD stru_18490
		.WORD stru_18499
		.WORD stru_184A2
		.WORD stru_184AB
		.WORD stru_184B4
stru_18424:	sprite_entry <	2,   3,	  4> ; DATA XREF: BANK_01:Enemy2Map_18402o
		.BYTE $13,$14,$17,$18,$1A,$1B
stru_1842D:	sprite_entry <	2,   3,	  4> ; DATA XREF: BANK_01:8404o
		.BYTE $15,$16,$17,$19,$1C,$1D
stru_18436:	sprite_entry <	2,   3,	  4> ; DATA XREF: BANK_01:8406o
		.BYTE $13,$14,$17,$19,$1E,$1F
stru_1843F:	sprite_entry <	2,   3,	  4> ; DATA XREF: BANK_01:8408o
		.BYTE $15,$16,$17,$19,$1C,$1D
stru_18448:	sprite_entry <	2,   3,	  4> ; DATA XREF: BANK_01:840Ao
		.BYTE	0,  1,	6,  7, $B, $C
stru_18451:	sprite_entry <	2,   3,	  4> ; DATA XREF: BANK_01:840Co
		.BYTE	2,  3,	8,  9, $D, $E
stru_1845A:	sprite_entry <	2,   3,	  4> ; DATA XREF: BANK_01:840Eo
		.BYTE	0,  4,	6, $A, $F,$10
stru_18463:	sprite_entry <	2,   3,	  4> ; DATA XREF: BANK_01:8410o
		.BYTE	2,  3,	8,  9,$11,$12
stru_1846C:	sprite_entry <	2,   3,	  4> ; DATA XREF: BANK_01:8412o
		.BYTE $20,$21,$24,$25,$28,$29
stru_18475:	sprite_entry <	2,   3,	  4> ; DATA XREF: BANK_01:8414o
		.BYTE $22,$23,$26,$27,$2A,$2B
stru_1847E:	sprite_entry <	2,   3,	  4> ; DATA XREF: BANK_01:8416o
		.BYTE $20,$21,$24,$25,$2C,$2D
stru_18487:	sprite_entry <	2,   3,	  4> ; DATA XREF: BANK_01:8418o
		.BYTE $22,$23,$26,$27,$2A,$2B
stru_18490:	sprite_entry <	2,   3,	  3> ; DATA XREF: BANK_01:841Ao
		.BYTE	5,  5,$2E,$2F,$33,$34
stru_18499:	sprite_entry <	2,   3,	  3> ; DATA XREF: BANK_01:841Co
		.BYTE	5,  5,$2E,$30,$35,$36
stru_184A2:	sprite_entry <	2,   3,	  3> ; DATA XREF: BANK_01:841Eo
		.BYTE	5,  5,$31,$32,$37,$38
stru_184AB:	sprite_entry <	2,   3,	  2> ; DATA XREF: BANK_01:8420o
		.BYTE	5,  5,$39,$3A,$3D,$3E
stru_184B4:	sprite_entry <	2,   3,	  2> ; DATA XREF: BANK_01:8422o
		.BYTE	5,  5,$3B,$3C,$3F,$40
EnvObjectMap_184BD:.WORD stru_184C3	; DATA XREF: BANK_01:8265o
		.WORD stru_184CA
		.WORD stru_184D5
stru_184C3:	sprite_entry <	2,   2,	  1> ; DATA XREF: BANK_01:EnvObjectMap_184BDo
		.BYTE	0,  1,	7,  8
stru_184CA:	sprite_entry <	2,   4,	  1> ; DATA XREF: BANK_01:84BFo
		.BYTE	2,  3,	9, $A,	9, $A, $F,$10
stru_184D5:	sprite_entry <	2,   4,	  1> ; DATA XREF: BANK_01:84C1o
		.BYTE	4,  5, $B, $C, $D, $E,$11,$12
off_184E0:	.WORD byte_18578	; DATA XREF: BANK_01:8267o
		.WORD byte_18587
		.WORD byte_18596
		.WORD byte_185A5
		.WORD byte_185B4
		.WORD byte_185C3
		.WORD byte_185D2
		.WORD byte_185E1
		.WORD byte_185F0
		.WORD byte_185FF
		.WORD byte_1860E
		.WORD byte_1861D
		.WORD byte_1862C
		.WORD byte_1863B
		.WORD byte_1864A
		.WORD byte_18659
		.WORD byte_18668
		.WORD byte_18677
		.WORD byte_18686
		.WORD byte_18695
		.WORD byte_186A4
		.WORD byte_186B3
		.WORD byte_186BA
		.WORD byte_186C1
		.WORD byte_186C8
		.WORD byte_186CF
		.WORD byte_186D6
		.WORD byte_186DD
		.WORD byte_186F0
		.WORD byte_18703
		.WORD byte_18716
		.WORD byte_18729
		.WORD byte_1873C
		.WORD byte_1874F
		.WORD byte_18754
		.WORD byte_18754
		.WORD byte_18754
		.WORD byte_18754
		.WORD byte_18754
		.WORD byte_18759
		.WORD byte_1875E
		.WORD byte_18763
		.WORD byte_18767
		.WORD byte_1876B
		.WORD byte_1876F
		.WORD byte_18773
		.WORD byte_18777
		.WORD byte_1877B
		.WORD byte_1877F
		.WORD byte_18783
		.WORD byte_18787
		.WORD byte_1878B
		.WORD byte_18790
		.WORD byte_18797
		.WORD byte_1879E
		.WORD byte_187A5
		.WORD byte_187AC
		.WORD byte_187B3
		.WORD byte_187BA
		.WORD byte_187C1
		.WORD byte_187C8
		.WORD byte_187CF
		.WORD byte_187D6
		.WORD byte_187DD
		.WORD byte_187E4
		.WORD byte_187EB
		.WORD byte_187F2
		.WORD byte_187F9
		.WORD byte_18800
		.WORD byte_18807
		.WORD byte_1880E
		.WORD byte_18815
		.WORD byte_1881C
		.WORD byte_18823
		.WORD byte_1882A
		.WORD byte_18831
byte_18578:	.BYTE	4,  3,	7,  0,	0,  0,	0,  7,	0,  0,	0,$13,	0,  0,	0
					; DATA XREF: BANK_01:off_184E0o
byte_18587:	.BYTE	4,  3,	7,  0,	1,  0,	0,  8,	9,  0,	0,$14,	0,  0,	0
					; DATA XREF: BANK_01:84E2o
byte_18596:	.BYTE	4,  3,	7,  0,	2,  0,	0, $A, $B, $C,	0,$15,	0,$16,	0
					; DATA XREF: BANK_01:84E4o
byte_185A5:	.BYTE	4,  3,	7,  0,	3,  0,	4, $A, $D, $E, $F,$15,	0,$17,	0
					; DATA XREF: BANK_01:84E6o
byte_185B4:	.BYTE	4,  3,	7,  0,	3,  0,	5,  0, $D,$10,$11,  0,	0,$18,	0
					; DATA XREF: BANK_01:84E8o
byte_185C3:	.BYTE	4,  3,	7,  0,	0,  0,	6,  0,	0,$10,$12,  0,	0,$18,	0
					; DATA XREF: BANK_01:84EAo
byte_185D2:	.BYTE	4,  3,	7,  0,	0,  0,	6,  0,	0,  0,$12,  0,	0,  0,	0
					; DATA XREF: BANK_01:84ECo
byte_185E1:	.BYTE	4,  3,	7,  0,	0,  0,	0,$1C,	0,  0,	0,  0,	0,  0,	0
					; DATA XREF: BANK_01:84EEo
byte_185F0:	.BYTE	4,  3,	7,  0,$19,  0,	0,$1D,$1E,  0,	0,  0,$25,  0,	0
					; DATA XREF: BANK_01:84F0o
byte_185FF:	.BYTE	4,  3,	7,  0,$1A,  0,	0,$1F,$20,$21,	0,  0,$26,$27,	0
					; DATA XREF: BANK_01:84F2o
byte_1860E:	.BYTE	4,  3,	7,  0,$1B,  0,	0,$1F,$22,$23,$1C,  0,$28,$29,	0
					; DATA XREF: BANK_01:84F4o
byte_1861D:	.BYTE	4,  3,	7,  0,$1B,  0,	0,  0,$22,$24,$1D,  0,$28,$2A,	0
					; DATA XREF: BANK_01:84F6o
byte_1862C:	.BYTE	4,  3,	7,  0,	0,  0,	0,  0,	0,$24,$1F,  0,	0,$2A,	0
					; DATA XREF: BANK_01:84F8o
byte_1863B:	.BYTE	4,  3,	7,  0,	0,  0,	0,  0,	0,  0,$1F,  0,	0,  0,	0
					; DATA XREF: BANK_01:84FAo
byte_1864A:	.BYTE	4,  3,	7,  0,	0,  0,	0,$1C,	0,  0,	0,  0,	0,  0,	0
					; DATA XREF: BANK_01:84FCo
byte_18659:	.BYTE	4,  3,	7,  0,$2B,  0,	0,$1D,$2E,  0,	0,  0,	0,  0,	0
					; DATA XREF: BANK_01:84FEo
byte_18668:	.BYTE	4,  3,	7,  0,$2C,  0,	0,$1F,$2F,$30,	0,  0,	0,$34,	0
					; DATA XREF: BANK_01:8500o
byte_18677:	.BYTE	4,  3,	7,  0,$2D,  0,	0,$1F,$31,$32,$1C,  0,	0,$35,	0
					; DATA XREF: BANK_01:8502o
byte_18686:	.BYTE	4,  3,	7,  0,$2D,  0,	0,  0,$31,$33,$1D,  0,	0,$36,	0
					; DATA XREF: BANK_01:8504o
byte_18695:	.BYTE	4,  3,	7,  0,	0,  0,	0,  0,	0,$33,$1F,  0,	0,$36,	0
					; DATA XREF: BANK_01:8506o
byte_186A4:	.BYTE	4,  3,	7,  0,	0,  0,	0,  0,	0,  0,$1F,  0,	0,  0,	0
					; DATA XREF: BANK_01:8508o
byte_186B3:	.BYTE	4,  1,	0,$37,$38,$39,	0 ; DATA XREF: BANK_01:850Ao
byte_186BA:	.BYTE	4,  1,	0,$3A,$3B,$3C,$3D ; DATA XREF: BANK_01:850Co
byte_186C1:	.BYTE	4,  1,	0,$3E,$3F,$40,$41 ; DATA XREF: BANK_01:850Eo
byte_186C8:	.BYTE	4,  1,	0,$42,$43,$44,$45 ; DATA XREF: BANK_01:8510o
byte_186CF:	.BYTE	4,  1,	0,$42,$43,$44,$45 ; DATA XREF: BANK_01:8512o
byte_186D6:	.BYTE	4,  1,	0,$42,$43,$44,$45 ; DATA XREF: BANK_01:8514o
byte_186DD:	.BYTE	4,  4,	0,$49,$4A,  0,	0,$57,$58,$59,	0,  0,$6D,$6E,$6F,  0
					; DATA XREF: BANK_01:8516o
		.BYTE	0,$81,$82
byte_186F0:	.BYTE	4,  4,	0,  0,	0,  0,	0,$5A,$5B,$5C,$5D,$70,$71,$72,$73,  0
					; DATA XREF: BANK_01:8518o
		.BYTE	0,$83,$84
byte_18703:	.BYTE	4,  4,	0,  0,	0,$48,	0,$53,$54,$55,$56,$69,$6A,$6B,$6C,$7E
					; DATA XREF: BANK_01:851Ao
		.BYTE	0,$7F,$80
byte_18716:	.BYTE	4,  4,	0,$46,$47,  0,	0,$4F,$50,$51,$52,  0,$66,$67,$68,  0
					; DATA XREF: BANK_01:851Co
		.BYTE	0,$7C,$7D
byte_18729:	.BYTE	4,  4,	0,  0,	0,  0,	0,$5E,$5F,$60,$61,$74,$75,$76,$77,  0
					; DATA XREF: BANK_01:851Eo
		.BYTE	0,$85,$86
byte_1873C:	.BYTE	4,  4,	0,$4B,$4C,$4D,$4E,$62,$63,$64,$65,$78,$79,$7A,$7B,  0
					; DATA XREF: BANK_01:8520o
		.BYTE $87,$7E,	0
byte_1874F:	.BYTE	1,  2,	0,$88,$98 ; DATA XREF: BANK_01:8522o
byte_18754:	.BYTE	1,  2,	0,$89,$99 ; DATA XREF: BANK_01:8524o
					; BANK_01:8526o ...
byte_18759:	.BYTE	1,  2,	0,$8A,$9A ; DATA XREF: BANK_01:852Eo
byte_1875E:	.BYTE	1,  2,	0,$8B,$9B ; DATA XREF: BANK_01:8530o
byte_18763:	.BYTE	1,  1,	0,$95	; DATA XREF: BANK_01:8532o
byte_18767:	.BYTE	1,  1,	0,$8C	; DATA XREF: BANK_01:8534o
byte_1876B:	.BYTE	1,  1,	0,$8D	; DATA XREF: BANK_01:8536o
byte_1876F:	.BYTE	1,  1,	0,$8E	; DATA XREF: BANK_01:8538o
byte_18773:	.BYTE	1,  1,	0,$8F	; DATA XREF: BANK_01:853Ao
byte_18777:	.BYTE	1,  1,	0,$90	; DATA XREF: BANK_01:853Co
byte_1877B:	.BYTE	1,  1,	0,$91	; DATA XREF: BANK_01:853Eo
byte_1877F:	.BYTE	1,  1,	0,$92	; DATA XREF: BANK_01:8540o
byte_18783:	.BYTE	1,  1,	0,$93	; DATA XREF: BANK_01:8542o
byte_18787:	.BYTE	1,  1,	0,$94	; DATA XREF: BANK_01:8544o
byte_1878B:	.BYTE	2,  1,	0,$96,$97 ; DATA XREF: BANK_01:8546o
byte_18790:	.BYTE	2,  2,	4,$9C,$9D,$AC,$AD ; DATA XREF: BANK_01:8548o
byte_18797:	.BYTE	2,  2,	4,$9E,$9F,$AE,$AF ; DATA XREF: BANK_01:854Ao
byte_1879E:	.BYTE	2,  2,	4,$A0,$A1,$B0,$B1 ; DATA XREF: BANK_01:854Co
byte_187A5:	.BYTE	2,  2,	4,$A2,$A3,$B2,$B3 ; DATA XREF: BANK_01:854Eo
byte_187AC:	.BYTE	2,  2,	4,$A4,$A5,$B4,$B5 ; DATA XREF: BANK_01:8550o
byte_187B3:	.BYTE	2,  2,	4,$A6,$A7,$B6,$B7 ; DATA XREF: BANK_01:8552o
byte_187BA:	.BYTE	2,  2,	4,$A8,$A9,$B8,$B9 ; DATA XREF: BANK_01:8554o
byte_187C1:	.BYTE	2,  2,	4,$AA,$AB,$BA,$BB ; DATA XREF: BANK_01:8556o
byte_187C8:	.BYTE	2,  2,	4,$BC,$BD,$CC,$CD ; DATA XREF: BANK_01:8558o
byte_187CF:	.BYTE	2,  2,	4,$BE,$BF,$CE,$CF ; DATA XREF: BANK_01:855Ao
byte_187D6:	.BYTE	2,  2,	4,$C0,$C1,$D0,$D1 ; DATA XREF: BANK_01:855Co
byte_187DD:	.BYTE	2,  2,	4,$C2,$C3,$D2,$D3 ; DATA XREF: BANK_01:855Eo
byte_187E4:	.BYTE	2,  2,	4,$C4,$C5,$D4,$D5 ; DATA XREF: BANK_01:8560o
byte_187EB:	.BYTE	2,  2,	4,$C6,$C7,$D6,$D7 ; DATA XREF: BANK_01:8562o
byte_187F2:	.BYTE	2,  2,	4,$C8,$C9,$D8,$D9 ; DATA XREF: BANK_01:8564o
byte_187F9:	.BYTE	2,  2,	4,$CA,$CB,$DA,$DB ; DATA XREF: BANK_01:8566o
byte_18800:	.BYTE	2,  2,	4,$DC,$DD,$E9,$EA ; DATA XREF: BANK_01:8568o
byte_18807:	.BYTE	2,  2,	4,$DE,$DF,$EB,$EC ; DATA XREF: BANK_01:856Ao
byte_1880E:	.BYTE	2,  2,	4,$E0,$E1,$ED,$EE ; DATA XREF: BANK_01:856Co
byte_18815:	.BYTE	2,  2,	0,$E2,$E3,$EF,$F0 ; DATA XREF: BANK_01:856Eo
byte_1881C:	.BYTE	2,  2,	4,$E4,$E5,$F1,$F2 ; DATA XREF: BANK_01:8570o
byte_18823:	.BYTE	2,  2,	4,$DC,$E6,$E9,$EA ; DATA XREF: BANK_01:8572o
byte_1882A:	.BYTE	2,  2,	4,$E7,$E8,$F3,$F4 ; DATA XREF: BANK_01:8574o
byte_18831:	.BYTE	2,  2,	4,$DE,$DF,$EB,$EC ; DATA XREF: BANK_01:8576o
off_18838:	.WORD byte_188B4	; DATA XREF: BANK_01:8269o
		.WORD byte_188C3
		.WORD byte_188D2
		.WORD byte_188E1
		.WORD byte_188F0
		.WORD byte_188FF
		.WORD byte_1890E
		.WORD byte_1891D
		.WORD byte_1892C
		.WORD byte_1893B
		.WORD byte_1894A
		.WORD byte_18959
		.WORD byte_18968
		.WORD byte_18977
		.WORD byte_18986
		.WORD byte_18995
		.WORD byte_189A4
		.WORD byte_189B3
		.WORD byte_189C2
		.WORD byte_189D1
		.WORD byte_189E0
		.WORD byte_189EF
		.WORD byte_189F6
		.WORD byte_189FD
		.WORD byte_18A04
		.WORD byte_18A0B
		.WORD byte_18A12
		.WORD byte_18A19
		.WORD byte_18A24
		.WORD byte_18A2F
		.WORD byte_18A42
		.WORD byte_18A55
		.WORD byte_18A68
		.WORD byte_18A83
		.WORD byte_18A9E
		.WORD byte_18AB9
		.WORD byte_18ACE
		.WORD byte_18AD3
		.WORD byte_18AD7
		.WORD byte_18AE2
		.WORD byte_18AED
		.WORD byte_18AF8
		.WORD byte_18B03
		.WORD byte_18B07
		.WORD byte_18B0B
		.WORD byte_18B0F
		.WORD byte_18B13
		.WORD byte_18B17
		.WORD byte_18B1B
		.WORD byte_18B1F
		.WORD byte_18B23
		.WORD byte_18B27
		.WORD byte_18B2B
		.WORD byte_18B2F
		.WORD byte_18B33
		.WORD byte_18B37
		.WORD byte_18B3B
		.WORD byte_18B3F
		.WORD byte_18B43
		.WORD byte_18B47
		.WORD byte_18B4B
		.WORD byte_18B4F
byte_188B4:	.BYTE	4,  3,	0,  0,	0,  0,	0,  7,	0,  0,	0,$13,	0,  0,	0
					; DATA XREF: BANK_01:off_18838o
byte_188C3:	.BYTE	4,  3,	0,  0,	1,  0,	0,  8,	9,  0,	0,$14,	0,  0,	0
					; DATA XREF: BANK_01:883Ao
byte_188D2:	.BYTE	4,  3,	0,  0,	2,  0,	0, $A, $B, $C,	0,$15,	0,$16,	0
					; DATA XREF: BANK_01:883Co
byte_188E1:	.BYTE	4,  3,	0,  0,	3,  0,	4, $A, $D, $E, $F,$15,	0,$17,	0
					; DATA XREF: BANK_01:883Eo
byte_188F0:	.BYTE	4,  3,	0,  0,	3,  0,	5,  0, $D,$10,$11,  0,	0,$18,	0
					; DATA XREF: BANK_01:8840o
byte_188FF:	.BYTE	4,  3,	0,  0,	0,  0,	6,  0,	0,$10,$12,  0,	0,$18,	0
					; DATA XREF: BANK_01:8842o
byte_1890E:	.BYTE	4,  3,	0,  0,	0,  0,	6,  0,	0,  0,$12,  0,	0,  0,	0
					; DATA XREF: BANK_01:8844o
byte_1891D:	.BYTE	4,  3,	0,  0,	0,  0,	0,$1C,	0,  0,	0,  0,	0,  0,	0
					; DATA XREF: BANK_01:8846o
byte_1892C:	.BYTE	4,  3,	0,  0,$19,  0,	0,$1D,$1E,  0,	0,  0,$25,  0,	0
					; DATA XREF: BANK_01:8848o
byte_1893B:	.BYTE	4,  3,	0,  0,$1A,  0,	0,$1F,$20,$21,	0,  0,$26,$27,	0
					; DATA XREF: BANK_01:884Ao
byte_1894A:	.BYTE	4,  3,	0,  0,$1B,  0,	0,$1F,$22,$23,$1C,  0,$28,$29,	0
					; DATA XREF: BANK_01:884Co
byte_18959:	.BYTE	4,  3,	0,  0,$1B,  0,	0,  0,$22,$24,$1D,  0,$28,$2A,	0
					; DATA XREF: BANK_01:884Eo
byte_18968:	.BYTE	4,  3,	0,  0,	0,  0,	0,  0,	0,$24,$1F,  0,	0,$2A,	0
					; DATA XREF: BANK_01:8850o
byte_18977:	.BYTE	4,  3,	0,  0,	0,  0,	0,  0,	0,  0,$1F,  0,	0,  0,	0
					; DATA XREF: BANK_01:8852o
byte_18986:	.BYTE	4,  3,	0,  0,	0,  0,	0,$1C,	0,  0,	0,  0,	0,  0,	0
					; DATA XREF: BANK_01:8854o
byte_18995:	.BYTE	4,  3,	0,  0,$2B,  0,	0,$1D,$2E,  0,	0,  0,	0,  0,	0
					; DATA XREF: BANK_01:8856o
byte_189A4:	.BYTE	4,  3,	0,  0,$2C,  0,	0,$1F,$2F,$30,	0,  0,	0,$34,	0
					; DATA XREF: BANK_01:8858o
byte_189B3:	.BYTE	4,  3,	0,  0,$2D,  0,	0,$1F,$31,$32,$1C,  0,	0,$35,	0
					; DATA XREF: BANK_01:885Ao
byte_189C2:	.BYTE	4,  3,	0,  0,$2D,  0,	0,  0,$31,$33,$1D,  0,	0,$36,	0
					; DATA XREF: BANK_01:885Co
byte_189D1:	.BYTE	4,  3,	0,  0,	0,  0,	0,  0,	0,$33,$1F,  0,	0,$36,	0
					; DATA XREF: BANK_01:885Eo
byte_189E0:	.BYTE	4,  3,	0,  0,	0,  0,	0,  0,	0,  0,$1F,  0,	0,  0,	0
					; DATA XREF: BANK_01:8860o
byte_189EF:	.BYTE	4,  1,	0,$37,$38,$39,	0 ; DATA XREF: BANK_01:8862o
byte_189F6:	.BYTE	4,  1,	0,$3A,$3B,$3C,$3D ; DATA XREF: BANK_01:8864o
byte_189FD:	.BYTE	4,  1,	0,$3E,$3F,$40,$41 ; DATA XREF: BANK_01:8866o
byte_18A04:	.BYTE	4,  1,	0,$42,$43,$44,$45 ; DATA XREF: BANK_01:8868o
byte_18A0B:	.BYTE	4,  1,	0,$42,$43,$44,$45 ; DATA XREF: BANK_01:886Ao
byte_18A12:	.BYTE	4,  1,	0,$42,$43,$44,$45 ; DATA XREF: BANK_01:886Co
byte_18A19:	.BYTE	4,  2,	0,$8D,$1F,$1F,$8E,$96,$97,$97,$98 ; DATA XREF: BANK_01:886Eo
byte_18A24:	.BYTE	4,  2,	0,$A4,$A5,$A6,$A7,$B5,$B6,$B7,$B8 ; DATA XREF: BANK_01:8870o
byte_18A2F:	.BYTE	4,  4,	0,$5A,$5B,$5C,$5D,$72,	0,  0,$73,$84,	0,  0,$85,$96
					; DATA XREF: BANK_01:8872o
		.BYTE $97,$98,$99
byte_18A42:	.BYTE	4,  4,	0,$A6,$A7,$5B,$A8,$84,	0,  0,$B5,$BF,	0,  0,$73,$C9
					; DATA XREF: BANK_01:8874o
		.BYTE $98,$CA,$CB
byte_18A55:	.BYTE	4,  4,	0,$DC,$DD,$DE,$DF,$EF,	0,  0,$F0,$F1,	0,  0,$F2,$F3
					; DATA XREF: BANK_01:8876o
		.BYTE $F4,$F5,$F6
byte_18A68:	.BYTE	4,  6,	0,$4A,$4B,$4C,$4D,$58,$59,$5A,$5B,$64,$65,$66,$67,$6E
					; DATA XREF: BANK_01:8878o
		.BYTE $6F,$70,$71,$64,$76,$77,$78,$6E,$7F,$80,$81
byte_18A83:	.BYTE	4,  6,	0,$46,$47,$48,$49,$54,$55,$56,$57,$60,$61,$62,$63,$6A
					; DATA XREF: BANK_01:887Ao
		.BYTE $6B,$6C,$6D,$64,$76,$77,$78,$6E,$7F,$80,$81
byte_18A9E:	.BYTE	4,  6,	0,$46,$47,$48,$49,$54,$55,$56,$57,$64,$65,$66,$67,$6E
					; DATA XREF: BANK_01:887Co
		.BYTE $6F,$70,$71,$60,$79,$7A,$7B,$6A,$82,$83,$84
byte_18AB9:	.BYTE	2,  9,	0,$4E,$4F,$5C,$5D,$5C,$5D,$5C,$5D,$5C,$5D,$5C,$5D,$5C
					; DATA XREF: BANK_01:887Eo
		.BYTE $5D,$5C,$5D,$A8,$A9
byte_18ACE:	.BYTE	2,  1,	0,$B9,$BA ; DATA XREF: BANK_01:8880o
byte_18AD3:	.BYTE	1,  1,	0,$BD	; DATA XREF: BANK_01:8882o
byte_18AD7:	.BYTE	4,  2,	0,$86,$87,$88,$89,$90,$91,$92,$93 ; DATA XREF: BANK_01:8884o
byte_18AE2:	.BYTE	4,  2,	0,$86,$8A,$8B,$8C,$90,$91,$94,$95 ; DATA XREF: BANK_01:8886o
byte_18AED:	.BYTE	4,  2,	0,$9C,$9D,$9E,$9F,$AE,$AF,$B0,$B1 ; DATA XREF: BANK_01:8888o
byte_18AF8:	.BYTE	4,  2,	0,$A0,$A1,$A2,$A3,$B2,$B3,$B4,$95 ; DATA XREF: BANK_01:888Ao
byte_18B03:	.BYTE	1,  1,	0,$C4	; DATA XREF: BANK_01:888Co
byte_18B07:	.BYTE	1,  1,	0,$C5	; DATA XREF: BANK_01:888Eo
byte_18B0B:	.BYTE	1,  1,	0,$CA	; DATA XREF: BANK_01:8890o
byte_18B0F:	.BYTE	1,  1,	0,$CB	; DATA XREF: BANK_01:8892o
byte_18B13:	.BYTE	1,  1,	0,$C6	; DATA XREF: BANK_01:8894o
byte_18B17:	.BYTE	1,  1,	0,$C7	; DATA XREF: BANK_01:8896o
byte_18B1B:	.BYTE	1,  1,	0,$C8	; DATA XREF: BANK_01:8898o
byte_18B1F:	.BYTE	1,  1,	0,$C9	; DATA XREF: BANK_01:889Ao
byte_18B23:	.BYTE	1,  1,	0,$CC	; DATA XREF: BANK_01:889Co
byte_18B27:	.BYTE	1,  1,	0,$CD	; DATA XREF: BANK_01:889Eo
byte_18B2B:	.BYTE	1,  1,	0,$CE	; DATA XREF: BANK_01:88A0o
byte_18B2F:	.BYTE	1,  1,	0,$CF	; DATA XREF: BANK_01:88A2o
byte_18B33:	.BYTE	1,  1,	0,$D0	; DATA XREF: BANK_01:88A4o
byte_18B37:	.BYTE	1,  1,	0,$D1	; DATA XREF: BANK_01:88A6o
byte_18B3B:	.BYTE	1,  1,	0,$D2	; DATA XREF: BANK_01:88A8o
byte_18B3F:	.BYTE	1,  1,	0,$D3	; DATA XREF: BANK_01:88AAo
byte_18B43:	.BYTE	1,  1,	0,$D4	; DATA XREF: BANK_01:88ACo
byte_18B47:	.BYTE	1,  1,	0,$D5	; DATA XREF: BANK_01:88AEo
byte_18B4B:	.BYTE	1,  1,	0,$1F	; DATA XREF: BANK_01:88B0o
byte_18B4F:	.BYTE	4,  2,	0,$5C,$5C,$5C,$5C,$5C,$5C,$5C,$5C ; DATA XREF: BANK_01:88B2o
off_18B5A:	.WORD byte_18B68	; DATA XREF: BANK_01:826Bo
		.WORD byte_18B6F
		.WORD byte_18B76
		.WORD byte_18B7D
		.WORD byte_18B84
		.WORD byte_18B8B
		.WORD byte_18B92
byte_18B68:	.BYTE	2,  2,	6,  0,	1, $C, $D ; DATA XREF: BANK_01:off_18B5Ao
byte_18B6F:	.BYTE	2,  2,	6,  2,	3, $E, $F ; DATA XREF: BANK_01:8B5Co
byte_18B76:	.BYTE	2,  2,	6,  4,	5,$10,$11 ; DATA XREF: BANK_01:8B5Eo
byte_18B7D:	.BYTE	2,  2,	6,  6,	7,$12,$13 ; DATA XREF: BANK_01:8B60o
byte_18B84:	.BYTE	2,  2,	6,  8,	9,$14,$15 ; DATA XREF: BANK_01:8B62o
byte_18B8B:	.BYTE	2,  2,	6,  0,	1, $C, $D ; DATA XREF: BANK_01:8B64o
byte_18B92:	.BYTE	2,  2,	1, $A, $B,$16,$17 ; DATA XREF: BANK_01:8B66o
off_18B99:	.WORD byte_18BBD	; DATA XREF: BANK_01:826Do
		.WORD byte_18BC6
		.WORD byte_18BCF
		.WORD byte_18BD8
		.WORD byte_18BE1
		.WORD byte_18BEA
		.WORD byte_18BF3
		.WORD byte_18BFC
		.WORD byte_18C05
		.WORD byte_18C0E
		.WORD byte_18C17
		.WORD byte_18C20
		.WORD byte_18C29
		.WORD byte_18C32
		.WORD byte_18C3B
		.WORD byte_18C44
		.WORD byte_18C4D
		.WORD byte_18C56
byte_18BBD:	.BYTE	2,  3,	1,  0,	1,  9, $A,$11,$12 ; DATA XREF: BANK_01:off_18B99o
byte_18BC6:	.BYTE	2,  3,	1,  2,	3, $B, $C,$13,$14 ; DATA XREF: BANK_01:8B9Bo
byte_18BCF:	.BYTE	2,  3,	1,  4,	5, $D, $E,$15,$16 ; DATA XREF: BANK_01:8B9Do
byte_18BD8:	.BYTE	2,  3,	1,  6,	7, $F,$10,$13,$17 ; DATA XREF: BANK_01:8B9Fo
byte_18BE1:	.BYTE	2,  3,	1,  4,	5, $D, $E,$15,$16 ; DATA XREF: BANK_01:8BA1o
byte_18BEA:	.BYTE	2,  3,	1,$18,$19,$22,$23,$2C,$2D ; DATA XREF: BANK_01:8BA3o
byte_18BF3:	.BYTE	2,  3,	1,$1A,$1B,$24,$25,$2E,$2F ; DATA XREF: BANK_01:8BA5o
byte_18BFC:	.BYTE	2,  3,	1,$1C,$1D,$26,$27,$30,$31 ; DATA XREF: BANK_01:8BA7o
byte_18C05:	.BYTE	2,  3,	1,$1E,$1F,$28,$29,$32,$33 ; DATA XREF: BANK_01:8BA9o
byte_18C0E:	.BYTE	2,  3,	1,$20,$21,$2A,$2B,$34,$35 ; DATA XREF: BANK_01:8BABo
byte_18C17:	.BYTE	2,  3,	1,$36,$37,$40,$41,$2C,$2D ; DATA XREF: BANK_01:8BADo
byte_18C20:	.BYTE	2,  3,	1,$38,$39,$42,$43,$4A,$4B ; DATA XREF: BANK_01:8BAFo
byte_18C29:	.BYTE	2,  3,	1,$3A,$3B,$44,$45,$4C,$4D ; DATA XREF: BANK_01:8BB1o
byte_18C32:	.BYTE	2,  3,	1,$3C,$3D,$46,$47,$4E,$4F ; DATA XREF: BANK_01:8BB3o
byte_18C3B:	.BYTE	2,  3,	1,$3E,$3F,$48,$49,$50,$51 ; DATA XREF: BANK_01:8BB5o
byte_18C44:	.BYTE	2,  3,	1,  8,	8,  8,	8,  8,	8 ; DATA XREF: BANK_01:8BB7o
byte_18C4D:	.BYTE	2,  3,	1,  8,	8,  8,	8,  8,	8 ; DATA XREF: BANK_01:8BB9o
byte_18C56:	.BYTE	2,  3,	1,  8,	8,  8,	8,  8,	8 ; DATA XREF: BANK_01:8BBBo
off_18C5F:	.WORD byte_18C8F	; DATA XREF: BANK_01:826Fo
		.WORD byte_18C98
		.WORD byte_18CA1
		.WORD byte_18CAA
		.WORD byte_18CB3
		.WORD byte_18CBC
		.WORD byte_18CC5
		.WORD byte_18CCE
		.WORD byte_18CD7
		.WORD byte_18CE0
		.WORD byte_18CE9
		.WORD byte_18CF2
		.WORD byte_18CFB
		.WORD byte_18D04
		.WORD byte_18D0D
		.WORD byte_18D16
		.WORD byte_18D1F
		.WORD byte_18D28
		.WORD byte_18D31
		.WORD byte_18D3A
		.WORD byte_18D43
		.WORD byte_18D4C
		.WORD byte_18D55
		.WORD byte_18D5E
byte_18C8F:	.BYTE	2,  3,	1,  0,	1, $B, $C,$23,$24 ; DATA XREF: BANK_01:off_18C5Fo
byte_18C98:	.BYTE	2,  3,	1,  2,	3, $D, $E,$25,$26 ; DATA XREF: BANK_01:8C61o
byte_18CA1:	.BYTE	2,  3,	1,  4,	5, $F,$10,$27,$28 ; DATA XREF: BANK_01:8C63o
byte_18CAA:	.BYTE	2,  3,	1,  6,	5,$11,$12,$29,$2A ; DATA XREF: BANK_01:8C65o
byte_18CB3:	.BYTE	2,  3,	1,  6,	5,$13,$14,$2B,$2C ; DATA XREF: BANK_01:8C67o
byte_18CBC:	.BYTE	2,  3,	1,  6,	5,$15,$16,$2D,$2E ; DATA XREF: BANK_01:8C69o
byte_18CC5:	.BYTE	2,  3,	1,  6,	5,$13,$14,$2B,$2C ; DATA XREF: BANK_01:8C6Bo
byte_18CCE:	.BYTE	2,  3,	1,  7,	8,$17,$18,$2F,$30 ; DATA XREF: BANK_01:8C6Do
byte_18CD7:	.BYTE	2,  3,	1,  7,	8,$19,$1A,$31,$32 ; DATA XREF: BANK_01:8C6Fo
byte_18CE0:	.BYTE	2,  3,	1,  7,	8,$1B,$1C,$33,$34 ; DATA XREF: BANK_01:8C71o
byte_18CE9:	.BYTE	2,  3,	1,  7,	8,$19,$1A,$31,$32 ; DATA XREF: BANK_01:8C73o
byte_18CF2:	.BYTE	2,  3,	1,  2,	9,$1D,$1E,$2F,$30 ; DATA XREF: BANK_01:8C75o
byte_18CFB:	.BYTE	2,  3,	1,  2,	9,$1F,$20,$31,$32 ; DATA XREF: BANK_01:8C77o
byte_18D04:	.BYTE	2,  3,	1,  2,	9,$21,$22,$33,$34 ; DATA XREF: BANK_01:8C79o
byte_18D0D:	.BYTE	2,  3,	1,  2,	9,$1F,$20,$31,$32 ; DATA XREF: BANK_01:8C7Bo
byte_18D16:	.BYTE	2,  3,	1,$35,$36,$3E,$3F,$4E,$4F ; DATA XREF: BANK_01:8C7Do
byte_18D1F:	.BYTE	2,  3,	1,  6,	5,$40,$41,$4E,$4F ; DATA XREF: BANK_01:8C7Fo
byte_18D28:	.BYTE	2,  3,	1,$37,$38,$42,$43,$25,$50 ; DATA XREF: BANK_01:8C81o
byte_18D31:	.BYTE	2,  3,	1,$39,$3A,$44,$45,$51,$24 ; DATA XREF: BANK_01:8C83o
byte_18D3A:	.BYTE	2,  3,	1,$37,$3B,$46,$47,$25,$50 ; DATA XREF: BANK_01:8C85o
byte_18D43:	.BYTE	2,  3,	1,$3C,	1,$48,$49,$51,$24 ; DATA XREF: BANK_01:8C87o
byte_18D4C:	.BYTE	2,  3,	1,  6,	5,$4A,$4B,$4E,$4F ; DATA XREF: BANK_01:8C89o
byte_18D55:	.BYTE	2,  3,	1,$37,$3D,$4C,$4D,$25,$50 ; DATA XREF: BANK_01:8C8Bo
byte_18D5E:	.BYTE	2,  2,	1,$52,$53,$54,$55 ; DATA XREF: BANK_01:8C8Do
off_18D65:	.WORD byte_18D95	; DATA XREF: BANK_01:8271o
		.WORD byte_18D9E
		.WORD byte_18DA7
		.WORD byte_18DB0
		.WORD byte_18DB9
		.WORD byte_18DC2
		.WORD byte_18DCB
		.WORD byte_18DD4
		.WORD byte_18DDD
		.WORD byte_18DE6
		.WORD byte_18DEF
		.WORD byte_18DF8
		.WORD byte_18E01
		.WORD byte_18E0A
		.WORD byte_18E13
		.WORD byte_18E1C
		.WORD byte_18E25
		.WORD byte_18E2E
		.WORD byte_18E37
		.WORD byte_18E40
		.WORD byte_18E49
		.WORD byte_18E52
		.WORD byte_18E5B
		.WORD byte_18E64
byte_18D95:	.BYTE	2,  3,	1,  0,	1, $B, $C,$23,$24 ; DATA XREF: BANK_01:off_18D65o
byte_18D9E:	.BYTE	2,  3,	1,  2,	3, $D, $E,$25,$26 ; DATA XREF: BANK_01:8D67o
byte_18DA7:	.BYTE	2,  3,	1,  4,	5, $F,$10,$27,$28 ; DATA XREF: BANK_01:8D69o
byte_18DB0:	.BYTE	2,  3,	1,  6,	5,$11,$12,$29,$2A ; DATA XREF: BANK_01:8D6Bo
byte_18DB9:	.BYTE	2,  3,	1,  6,	5,$13,$14,$2B,$2C ; DATA XREF: BANK_01:8D6Do
byte_18DC2:	.BYTE	2,  3,	1,  6,	5,$15,$16,$2D,$2E ; DATA XREF: BANK_01:8D6Fo
byte_18DCB:	.BYTE	2,  3,	1,  6,	5,$13,$14,$2B,$2C ; DATA XREF: BANK_01:8D71o
byte_18DD4:	.BYTE	2,  3,	1,  7,	8,$17,$18,$2F,$30 ; DATA XREF: BANK_01:8D73o
byte_18DDD:	.BYTE	2,  3,	1,  7,	8,$19,$1A,$31,$32 ; DATA XREF: BANK_01:8D75o
byte_18DE6:	.BYTE	2,  3,	1,  7,	8,$1B,$1C,$33,$34 ; DATA XREF: BANK_01:8D77o
byte_18DEF:	.BYTE	2,  3,	1,  7,	8,$19,$1A,$31,$32 ; DATA XREF: BANK_01:8D79o
byte_18DF8:	.BYTE	2,  3,	1,  2,	9,$1D,$1E,$2F,$30 ; DATA XREF: BANK_01:8D7Bo
byte_18E01:	.BYTE	2,  3,	1,  2,	9,$1F,$20,$31,$32 ; DATA XREF: BANK_01:8D7Do
byte_18E0A:	.BYTE	2,  3,	1,  2,	9,$21,$22,$33,$34 ; DATA XREF: BANK_01:8D7Fo
byte_18E13:	.BYTE	2,  3,	1,  2,	9,$1F,$20,$31,$32 ; DATA XREF: BANK_01:8D81o
byte_18E1C:	.BYTE	2,  3,	1,$35,$36,$3E,$3F,$4E,$4F ; DATA XREF: BANK_01:8D83o
byte_18E25:	.BYTE	2,  3,	1,  6,	5,$40,$41,$4E,$4F ; DATA XREF: BANK_01:8D85o
byte_18E2E:	.BYTE	2,  3,	1,$37,$38,$42,$43,$25,$50 ; DATA XREF: BANK_01:8D87o
byte_18E37:	.BYTE	2,  3,	1,$39,$3A,$44,$45,$51,$24 ; DATA XREF: BANK_01:8D89o
byte_18E40:	.BYTE	2,  3,	1,$37,$3B,$46,$47,$25,$50 ; DATA XREF: BANK_01:8D8Bo
byte_18E49:	.BYTE	2,  3,	1,$3C,	1,$48,$49,$51,$24 ; DATA XREF: BANK_01:8D8Do
byte_18E52:	.BYTE	2,  3,	1,  6,	5,$4A,$4B,$4E,$4F ; DATA XREF: BANK_01:8D8Fo
byte_18E5B:	.BYTE	2,  3,	1,$37,$3D,$4C,$4D,$25,$50 ; DATA XREF: BANK_01:8D91o
byte_18E64:	.BYTE	2,  2,	1,$52,$53,$54,$55 ; DATA XREF: BANK_01:8D93o
off_18E6B:	.WORD byte_18E71	; DATA XREF: BANK_01:8273o
		.WORD byte_18E78
		.WORD byte_18E7F
byte_18E71:	.BYTE	2,  2,	2,  0,	1,  7,	8 ; DATA XREF: BANK_01:off_18E6Bo
byte_18E78:	.BYTE	2,  2,	2,  3,	4, $A, $B ; DATA XREF: BANK_01:8E6Do
byte_18E7F:	.BYTE	2,  2,	2,  5,	6, $C, $D ; DATA XREF: BANK_01:8E6Fo
off_18E86:	.WORD byte_18EC2	; DATA XREF: BANK_01:8275o
		.WORD byte_18ECB
		.WORD byte_18ED4
		.WORD byte_18EDD
		.WORD byte_18E9E
		.WORD byte_18EA7
		.WORD byte_18EB0
		.WORD byte_18EB9
		.WORD byte_18EE6
		.WORD byte_18EEF
		.WORD byte_18EF8
		.WORD byte_18F01
byte_18E9E:	.BYTE	2,  3,	4,  0,	1,  9, $A, $F,$10 ; DATA XREF: BANK_01:8E8Eo
byte_18EA7:	.BYTE	2,  3,	4,  2,	3, $B, $C,$11,$12 ; DATA XREF: BANK_01:8E90o
byte_18EB0:	.BYTE	2,  3,	4,  4,	5,  9, $D,$13,$14 ; DATA XREF: BANK_01:8E92o
byte_18EB9:	.BYTE	2,  3,	4,  6,	7, $B, $E,$15,$16 ; DATA XREF: BANK_01:8E94o
byte_18EC2:	.BYTE	2,  3,	4,$17,$18,$1F,$20,$23,$24 ; DATA XREF: BANK_01:off_18E86o
byte_18ECB:	.BYTE	2,  3,	4,$19,$1A,$21,$22,$25,$26 ; DATA XREF: BANK_01:8E88o
byte_18ED4:	.BYTE	2,  3,	4,$1B,$1C,$21,$22,$27,$28 ; DATA XREF: BANK_01:8E8Ao
byte_18EDD:	.BYTE	2,  3,	4,$1D,$1E,$21,$22,$25,$26 ; DATA XREF: BANK_01:8E8Co
byte_18EE6:	.BYTE	2,  3,	4,$29,$2A,$31,$32,$35,$36 ; DATA XREF: BANK_01:8E96o
byte_18EEF:	.BYTE	2,  3,	4,$2B,$2C,$33,$34,$37,$38 ; DATA XREF: BANK_01:8E98o
byte_18EF8:	.BYTE	2,  3,	4,$2D,$2E,$31,$32,$39,$3A ; DATA XREF: BANK_01:8E9Ao
byte_18F01:	.BYTE	2,  3,	4,$2F,$30,$33,$34,$37,$38 ; DATA XREF: BANK_01:8E9Co
off_18F0A:	.WORD byte_18F16	; DATA XREF: BANK_01:8277o
		.WORD byte_18F1D
		.WORD byte_18F24
		.WORD byte_18F2B
		.WORD byte_18F32
		.WORD byte_18F39
byte_18F16:	.BYTE	2,  2,	2,  0,	1,  9, $A ; DATA XREF: BANK_01:off_18F0Ao
byte_18F1D:	.BYTE	2,  2,	2,  2,	3, $B, $C ; DATA XREF: BANK_01:8F0Co
byte_18F24:	.BYTE	2,  2,	2,  0,	1,  9, $A ; DATA XREF: BANK_01:8F0Eo
byte_18F2B:	.BYTE	2,  2,	2,  2,	3, $B, $C ; DATA XREF: BANK_01:8F10o
byte_18F32:	.BYTE	2,  2,	2,  4,	5, $D, $E ; DATA XREF: BANK_01:8F12o
byte_18F39:	.BYTE	2,  2,	2,  6,	7, $F,$10 ; DATA XREF: BANK_01:8F14o
off_18F40:	.WORD byte_18F4C	; DATA XREF: BANK_01:8279o
		.WORD byte_18F58
		.WORD byte_18F64
		.WORD byte_18F70
		.WORD byte_18F7C
		.WORD byte_18F88
byte_18F4C:	.BYTE	3,  3,	2,  0,	1,  2, $D, $E,	2,$1B,$1C,  2
					; DATA XREF: BANK_01:off_18F40o
byte_18F58:	.BYTE	3,  3,	2,  3,	4,  2, $F,$10,	2,$1D,$1E,  2
					; DATA XREF: BANK_01:8F42o
byte_18F64:	.BYTE	3,  3,	2,  5,	6,  2,$11,$12,	2,$1F,$20,  2
					; DATA XREF: BANK_01:8F44o
byte_18F70:	.BYTE	3,  3,	2,  7,	8,  2,$13,$14,	2,$21,$22,  2
					; DATA XREF: BANK_01:8F46o
byte_18F7C:	.BYTE	3,  3,	2,  9, $A, $B,$15,$16,$17,  2,	2,  2
					; DATA XREF: BANK_01:8F48o
byte_18F88:	.BYTE	3,  3,	2, $C, $A, $B,$18,$19,$1A,  2,	2,  2
					; DATA XREF: BANK_01:8F4Ao
off_18F94:	.WORD byte_18FA4	; DATA XREF: BANK_01:827Bo
		.WORD byte_18FAB
		.WORD byte_18FB2
		.WORD byte_18FB9
		.WORD byte_18FC0
		.WORD byte_18FC7
		.WORD byte_18FCE
		.WORD byte_18FD5
byte_18FA4:	.BYTE	2,  2,	2,  0,	1,  9, $A ; DATA XREF: BANK_01:off_18F94o
byte_18FAB:	.BYTE	2,  2,	2,  2,	3, $B, $C ; DATA XREF: BANK_01:8F96o
byte_18FB2:	.BYTE	2,  2,	2,  4,	5, $D, $E ; DATA XREF: BANK_01:8F98o
byte_18FB9:	.BYTE	2,  2,	2,  6,	7, $F,$10 ; DATA XREF: BANK_01:8F9Ao
byte_18FC0:	.BYTE	2,  2,	2,$11,$12,$19,$1A ; DATA XREF: BANK_01:8F9Co
byte_18FC7:	.BYTE	2,  2,	2,$13,$14,$1B,$1C ; DATA XREF: BANK_01:8F9Eo
byte_18FCE:	.BYTE	2,  2,	2,$15,$16,$1D,$1E ; DATA XREF: BANK_01:8FA0o
byte_18FD5:	.BYTE	2,  2,	2,$17,$18,$1F,$20 ; DATA XREF: BANK_01:8FA2o
off_18FDC:	.WORD byte_18FF4	; DATA XREF: BANK_01:827Do
		.WORD byte_18FFB
		.WORD byte_19002
		.WORD byte_19009
		.WORD byte_19010
		.WORD byte_19017
		.WORD byte_1901E
		.WORD byte_19025
		.WORD byte_1902C
		.WORD byte_19033
		.WORD byte_1903A
		.WORD byte_19041
byte_18FF4:	.BYTE	2,  2,	4,  0,	1,  5,	1 ; DATA XREF: BANK_01:off_18FDCo
byte_18FFB:	.BYTE	2,  2,	4,  2,	1,  6,	1 ; DATA XREF: BANK_01:8FDEo
byte_19002:	.BYTE	2,  2,	4,  3,	1,  7,	1 ; DATA XREF: BANK_01:8FE0o
byte_19009:	.BYTE	2,  2,	4,  4, $C,  8,	1 ; DATA XREF: BANK_01:8FE2o
byte_19010:	.BYTE	2,  2,	4,  0,	1,  5,	1 ; DATA XREF: BANK_01:8FE4o
byte_19017:	.BYTE	2,  2,	4,  2,	1,  6,	1 ; DATA XREF: BANK_01:8FE6o
byte_1901E:	.BYTE	2,  2,	4,  3,	1,  7,	1 ; DATA XREF: BANK_01:8FE8o
byte_19025:	.BYTE	2,  2,	4,  4,	1,  8,	1 ; DATA XREF: BANK_01:8FEAo
byte_1902C:	.BYTE	2,  2,	4,  9, $A,  1,	1 ; DATA XREF: BANK_01:8FECo
byte_19033:	.BYTE	2,  2,	4, $B, $C,  1,	1 ; DATA XREF: BANK_01:8FEEo
byte_1903A:	.BYTE	2,  2,	4, $D, $E,  1,	1 ; DATA XREF: BANK_01:8FF0o
byte_19041:	.BYTE	2,  2,	4, $F,$10,  1,	1 ; DATA XREF: BANK_01:8FF2o
off_19048:	.WORD byte_19054	; DATA XREF: BANK_01:827Fo
		.WORD byte_1905B
		.WORD byte_19062
		.WORD byte_19069
		.WORD byte_19070
		.WORD byte_19077
byte_19054:	.BYTE	2,  2,	2, $D, $E,$13,$14 ; DATA XREF: BANK_01:off_19048o
byte_1905B:	.BYTE	2,  2,	2, $F,$10,$15,$16 ; DATA XREF: BANK_01:904Ao
byte_19062:	.BYTE	2,  2,	2,  0,	1,  7,	8 ; DATA XREF: BANK_01:904Co
byte_19069:	.BYTE	2,  2,	2,  2,	3,  9, $A ; DATA XREF: BANK_01:904Eo
byte_19070:	.BYTE	2,  2,	2,  4,	5, $B, $C ; DATA XREF: BANK_01:9050o
byte_19077:	.BYTE	2,  2,	2,  4,	5, $B, $C ; DATA XREF: BANK_01:9052o
off_1907E:	.WORD byte_190E2	; DATA XREF: BANK_01:8281o
		.WORD byte_190F5
		.WORD byte_19108
		.WORD byte_1911B
		.WORD byte_19096
		.WORD byte_190A9
		.WORD byte_190BC
		.WORD byte_190CF
		.WORD byte_1912E
		.WORD byte_19141
		.WORD byte_19154
		.WORD byte_19167
byte_19096:	.BYTE	4,  4,	4,  0,	1,  2,	3,  8,	9, $A, $B,$13,$14,$15,$16,  0
					; DATA XREF: BANK_01:9086o
		.BYTE $1E,$1F,$20
byte_190A9:	.BYTE	4,  4,	4,  0,	4,  5,	0, $C, $D, $E, $F,$17,$18,$19,$1A,  0
					; DATA XREF: BANK_01:9088o
		.BYTE $21,$22,$23
byte_190BC:	.BYTE	4,  4,	4,  0,	1,  2,	3,  8,	9, $A, $B,$13,$14,$15,$16,  0
					; DATA XREF: BANK_01:908Ao
		.BYTE $1E,$1F,$20
byte_190CF:	.BYTE	4,  4,	4,  0,	1,  6,	7,  8,$10,$11,$12,$13,$1B,$1C,$1D,  0
					; DATA XREF: BANK_01:908Co
		.BYTE $24,$25,$26
byte_190E2:	.BYTE	4,  4,	4,$27,$28,$29,	0,$2F,$30,$31,$32,$3B,$3C,$3D,$3E,$47
					; DATA XREF: BANK_01:off_1907Eo
		.BYTE $48,$49,	0
byte_190F5:	.BYTE	4,  4,	4,$2A,$2B,$2C,	0,$33,$34,$35,$36,$3F,$40,$41,$42,$4A
					; DATA XREF: BANK_01:9080o
		.BYTE $4B,$4C,	0
byte_19108:	.BYTE	4,  4,	4,$27,$28,$29,	0,$2F,$30,$31,$32,$3B,$3C,$3D,$3E,$47
					; DATA XREF: BANK_01:9082o
		.BYTE $48,$49,	0
byte_1911B:	.BYTE	4,  4,	4,  0,$2D,$2E,	0,$37,$38,$39,$3A,$43,$44,$45,$46,$4D
					; DATA XREF: BANK_01:9084o
		.BYTE $4E,$4F,	0
byte_1912E:	.BYTE	4,  4,	4,  0,$50,$51,	0,  0,$52,$53,	0,  0,$54,$55,	0,  0
					; DATA XREF: BANK_01:908Eo
		.BYTE $5A,$5B,	0
byte_19141:	.BYTE	4,  4,	4,  0,$50,$51,	0,  0,$52,$53,	0,  0,$56,$57,	0,  0
					; DATA XREF: BANK_01:9090o
		.BYTE $5C,$5D,	0
byte_19154:	.BYTE	4,  4,	4,  0,$50,$51,	0,  0,$52,$53,	0,  0,$58,$57,	0,  0
					; DATA XREF: BANK_01:9092o
		.BYTE $5E,$5F,	0
byte_19167:	.BYTE	4,  4,	4,  0,$50,$51,	0,  0,$52,$53,	0,  0,$58,$59,	0,  0
					; DATA XREF: BANK_01:9094o
		.BYTE $60,$61,	0
off_1917A:	.WORD byte_1917C	; DATA XREF: BANK_01:8283o
byte_1917C:	.BYTE	1,  1,	1,  0	; DATA XREF: BANK_01:off_1917Ao
off_19180:	.WORD byte_1918A	; DATA XREF: BANK_01:8285o
		.WORD byte_1919D
		.WORD byte_191B0
		.WORD byte_191C3
		.WORD byte_191D6
byte_1918A:	.BYTE	4,  4,	5,  0,	1,  2,	3, $F,$10,$10,$11,$1C,$1D,$10,$1E,$2E
					; DATA XREF: BANK_01:off_19180o
		.BYTE $2F,$30,$31
byte_1919D:	.BYTE	4,  4,	5,  4,	5,  2,	6,$12,$10,$10,$13,$1F,$20,$21,$22,$2E
					; DATA XREF: BANK_01:9182o
		.BYTE $2F,$32,$31
byte_191B0:	.BYTE	4,  4,	5,  4,	5,  7,	8,$14,$10,$10,$15,$23,$24,$25,$26,$2E
					; DATA XREF: BANK_01:9184o
		.BYTE $2F,$32,$31
byte_191C3:	.BYTE	4,  4,	5,  4,	9, $A, $B,$16,$10,$17,$18,$27,$28,$29,$2A,$2E
					; DATA XREF: BANK_01:9186o
		.BYTE $2F,$32,$31
byte_191D6:	.BYTE	4,  4,	5,  4, $C, $D,	3,$19,$1A,$1B,$11,$2B,$29,$2C,$2D,$2E
					; DATA XREF: BANK_01:9188o
		.BYTE $2F,$32,$31
off_191E9:	.WORD byte_191EB	; DATA XREF: BANK_01:8287o
byte_191EB:	.BYTE	2,  1,	1,  0,	1 ; DATA XREF: BANK_01:off_191E9o
off_191F0:	.WORD byte_19206	; DATA XREF: BANK_01:8289o
		.WORD byte_1920A
		.WORD byte_1920E
		.WORD byte_19212
		.WORD byte_19216
		.WORD byte_1921A
		.WORD byte_1921E
		.WORD byte_19222
		.WORD byte_19226
		.WORD byte_1922A
		.WORD byte_1922E
byte_19206:	.BYTE	1,  1,	1,  9	; DATA XREF: BANK_01:off_191F0o
byte_1920A:	.BYTE	1,  1,	1,  0	; DATA XREF: BANK_01:91F2o
byte_1920E:	.BYTE	1,  1,	1,  1	; DATA XREF: BANK_01:91F4o
byte_19212:	.BYTE	1,  1,	1,  2	; DATA XREF: BANK_01:91F6o
byte_19216:	.BYTE	1,  1,	1,  3	; DATA XREF: BANK_01:91F8o
byte_1921A:	.BYTE	1,  1,	1,  4	; DATA XREF: BANK_01:91FAo
byte_1921E:	.BYTE	1,  1,	1,  5	; DATA XREF: BANK_01:91FCo
byte_19222:	.BYTE	1,  1,	1,  6	; DATA XREF: BANK_01:91FEo
byte_19226:	.BYTE	1,  1,	1,  7	; DATA XREF: BANK_01:9200o
byte_1922A:	.BYTE	1,  1,	1,  8	; DATA XREF: BANK_01:9202o
byte_1922E:	.BYTE	1,  1,	1, $A	; DATA XREF: BANK_01:9204o
off_19232:	.WORD byte_19236	; DATA XREF: BANK_01:828Bo
		.WORD byte_19241
byte_19236:	.BYTE	4,  2,	2,  0,	1,  2,	3,  4,	3,  5,	6
					; DATA XREF: BANK_01:off_19232o
byte_19241:	.BYTE	4,  2,	2,  2,	3,  0,	1,  5,	6,  4,	3 ; DATA XREF: BANK_01:9234o
off_1924C:	.WORD byte_19250	; DATA XREF: BANK_01:828Do
		.WORD byte_19257
byte_19250:	.BYTE	2,  2,	1,  0,	1,  5,	6 ; DATA XREF: BANK_01:off_1924Co
byte_19257:	.BYTE	2,  2,	1,  2,	3,  5,	6 ; DATA XREF: BANK_01:924Eo
off_1925E:	.WORD byte_1926A	; DATA XREF: BANK_01:828Fo
		.WORD byte_19271
		.WORD byte_19278
		.WORD byte_1927F
		.WORD byte_19286
		.WORD byte_1928D
byte_1926A:	.BYTE	2,  2,	2,  0,	1, $A, $B ; DATA XREF: BANK_01:off_1925Eo
byte_19271:	.BYTE	2,  2,	2,  0,	1, $C, $D ; DATA XREF: BANK_01:9260o
byte_19278:	.BYTE	2,  2,	2,  2,	3, $E, $F ; DATA XREF: BANK_01:9262o
byte_1927F:	.BYTE	2,  2,	2,  4,	5, $E, $F ; DATA XREF: BANK_01:9264o
byte_19286:	.BYTE	2,  2,	2,  6,	7,$10,$11 ; DATA XREF: BANK_01:9266o
byte_1928D:	.BYTE	2,  2,	2,  8,	7,$12,$11 ; DATA XREF: BANK_01:9268o
off_19294:	.WORD byte_1929A	; DATA XREF: BANK_01:8291o
		.WORD byte_192AD
		.WORD byte_192C0
byte_1929A:	.BYTE	4,  4,	2,  0,	1,  2,	3,  8,	9, $A, $B,$14,$15,$16,$17,$1E
					; DATA XREF: BANK_01:off_19294o
		.BYTE $1F,$20,$21
byte_192AD:	.BYTE	4,  4,	2,  0,	1,  2,	3, $C, $D, $E, $F,$18,$19,$1A,$1B,$22
					; DATA XREF: BANK_01:9296o
		.BYTE $23,$24,$25
byte_192C0:	.BYTE	4,  4,	1,  4,	5,  6,	3,$10,$11,$12,$13,  7,$1C,$1D,	7,  7
					; DATA XREF: BANK_01:9298o
		.BYTE	7,  7,	7
off_192D3:	.WORD byte_192E3	; DATA XREF: BANK_01:8293o
		.WORD byte_19309
		.WORD byte_1932F
		.WORD byte_19342
		.WORD byte_19355
		.WORD byte_19368
		.WORD byte_1937B
		.WORD byte_1938E
byte_192E3:	.BYTE	7,  5,	2,  0,	0,  0,	1,  2,	3,  0,	0,  4,	5,  6,	7,  8
					; DATA XREF: BANK_01:off_192D3o
		.BYTE	9, $F,$10,$11,$12,$13,$14,$15,$1B,$1C,$1D,$1E,$1F,$20,$21,  0
		.BYTE	0,  0,$23,$24,$25,$26
byte_19309:	.BYTE	7,  5,	2,  0,	0,  0,	1,  2,	3,  0,	0,  4, $A, $B, $C, $D
					; DATA XREF: BANK_01:92D5o
		.BYTE  $E, $F,$16,$17,$18,$13,$19,$1A,$1B,$22,$1D,$1E,$1F,$20,$21,  0
		.BYTE	0,  0,$23,$24,$25,$26
byte_1932F:	.BYTE	4,  4,	2,  0,	0,$27,$28,  0,$30,$31,$32,$3C,$3D,$3E,$3F,  0
					; DATA XREF: BANK_01:92D7o
		.BYTE $49,$4A,	0
byte_19342:	.BYTE	4,  4,	2,  0,$29,$2A,$2B,$33,$34,$35,$36,$40,$41,$42,$43,$4B
					; DATA XREF: BANK_01:92D9o
		.BYTE $4C,$4D,	0
byte_19355:	.BYTE	4,  4,	2,  0,	0,$2C,$2D,  0,$37,$38,$39,$44,$45,$46,	0,$4E
					; DATA XREF: BANK_01:92DBo
		.BYTE $4F,  0,	0
byte_19368:	.BYTE	4,  4,	2,  0,$2E,$2F,	0,  0,$3A,$3B,	0,  0,$47,$48,	0,  0
					; DATA XREF: BANK_01:92DDo
		.BYTE	0,  0,	0
byte_1937B:	.BYTE	4,  4,	2,  0,$50,$51,$52,  0,$55,$3B,	0,  0,$58,  0,	0,  0
					; DATA XREF: BANK_01:92DFo
		.BYTE	0,  0,	0
byte_1938E:	.BYTE	4,  4,	2,  0,$53,$54,	0,  0,$56,$57,	0,  0,$59,  0,	0,  0
					; DATA XREF: BANK_01:92E1o
		.BYTE	0,  0,	0
Sprites:	.WORD Jill_193D7
		.WORD Enemy1_199A9
		.WORD Enemy2_19D2B
		.WORD EnvObject_1A13D
		.WORD BattleUI_1A26F
		.WORD InventoryUI_1B1C1
		.WORD EnvItems_1BF23
		.WORD Barry1_1C0A5
		.WORD Barry2_1C5C7
		.WORD Barry3_1CAE9
		.WORD Enrico_1D00B
		.WORD Enemy3_1D0ED
		.WORD Particles_1D49F
		.WORD Dog_1D5B1
		.WORD Crow_1D7E3
		.WORD Snake_1DA05
		.WORD Spider_1DB17
		.WORD Tyrant_1DCA9
		.WORD BallSmall_1E2CB
		.WORD BallBig_1E2ED
		.WORD Shotgun_1E61F
		.WORD Numbers_1E661
		.WORD LinesUnk_1E723
		.WORD Candle_1E8B5
		.WORD Piranha_1E927
		.WORD GardenBoss_1EA59
		.WORD Helicopter_1ECBB
Jill_193D7:	.BYTE $5D,  5,	3, $C,$10, $F, $F, $F,	7, $F,	3, $F,$1F, $F, $F, $F
					; DATA XREF: BANK_01:Spriteso
		.BYTE	7, $C,$80,$40,$C0,$C0,$C0,$C0,$80,$C0,$80,$C0,$40,$C0,$40,$40
		.BYTE $80,$C0,	0,  0,	3,  4,	3,  7,	7,  3,	0,  0,	3,  7,	3,  7
		.BYTE	7,  2,	0,$E0,$10,$30,$F0,$F0,$F0,$E0,	0,$E0,$F0,$D0,$F0,$D0
		.BYTE $90,$E0,	0,$E0,$10,$30,$F0,$F0,$F0,$F0,	0,$E0,$F0,$D0,$F0,$D0
		.BYTE $90,$F0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0, $D,  7,	4,  6,	7,  5,	5,  3, $B,  7,	7,  7,	6,  7
		.BYTE	7,  3,$E0,$20,$A0,$A0,$C0,$E0,$E0,$E0,$E0,$E0,$E0,$E0,$40,$20
		.BYTE $A0,$E0,	6, $B,$1E,$1E, $F, $F,	7,  4,	5, $F,$13,$17, $B, $F
		.BYTE	7,  7,$F0,$20,$98,$7E,$BE,$6C,$10,$48,$F0,$E0,$F8,$C6,$F2,$EC
		.BYTE $F0,$F8,	6,  7, $B, $E, $F,  7,	3,  2,	5,  7, $F, $B, $B,  7
		.BYTE	3,  3,$F0,$20,$20,$E0,$F0,$F0,$B0,$20,$F0,$E0,$E0,$A0,$90,$D0
		.BYTE $F0,$E0, $F,  9,$1A,$1E, $F, $F,	7,  5, $F, $F,$17,$13,	9, $F
		.BYTE	7,  7,$F8,$B0,$28,$3E,$FE,$2C,$10,  8,$F8,$F0,$F8,$E6,$F2,$EC
		.BYTE $F0,$F8,	2,  3,	4,  4,	4,  3,	3,  3,	3,  3,	7,  7,	7,  3
		.BYTE	3,  3,$40,$C0,$80,$80,$C0,$E0,$80,$C0,$C0,$C0,$80,$80,$C0,$E0
		.BYTE $80,$C0,	6, $D,$70,$71,$6E,$40,	0,  0,	7, $F,$7F,$7F,$6E,$40
		.BYTE	0,  0,$C4,$A4,$92,$12, $C, $E, $F,  0,$FC,$BC,$9E,$1E, $C, $E
		.BYTE  $F,  0,	1,  1,	2,  2,	3,  7,	7,  3,	1,  1,	3,  3,	3,  7
		.BYTE	7,  3,$30,$F0,$50,$60,$C0,$E0,$70,$80,$F0,$F0,$F0,$E0,$C0,$E0
		.BYTE $70,$80, $C,$70,$71,$6E,$40,  0,	0,  0, $F,$7F,$7F,$6E,$40,  0
		.BYTE	0,  0,$9C,$E4,$22,$12, $C, $E, $F,  0,$FC,$FC,$3E,$1E, $C, $E
		.BYTE  $F,  0,	1,  6,	8,  7,	7,$1F,$3F,$17,	1,  7, $F,  7,	6,$1E
		.BYTE $27,$1B,$C0,$20,$60,$E0,$E0,$F8,$FC,$E8,$C0,$E0,$A0,$E0,$60,$78
		.BYTE $E4,$D8,	1,  6,	8,  7,	7, $F,$1F,$1B,	1,  7, $F,  7,	6, $E
		.BYTE $13,$1D,$C0,$20,$60,$E0,$F8,$F8,$F0,$E8,$C0,$E0,$A0,$E0,$78,$68
		.BYTE $D0,$F8,	1,  6,	8,  7,$1F,$1F, $F,$17,	1,  7, $F,  7,$1E,$16
		.BYTE  $B,$1F,$C0,$20,$60,$E0,$E0,$F0,$F8,$D8,$C0,$E0,$A0,$E0,$60,$70
		.BYTE $C8,$C8,$2E,$24,$3C,$7F,$7C,$7C,$39,  9,$3F,$3F,$2F,$5F,$5F,$5F
		.BYTE $3F, $F,$74,$24,$3C,$FE,$3E,$3E,$9C,$90,$FC,$FC,$F4,$FA,$FA,$FA
		.BYTE $FC,$F0,$17,$14,$1C,$1F,$1F,$1F,$1B,  9,$1F,$1F,$17,$13,$19,$1C
		.BYTE $1F, $F,$38,$3C,$7C,$BC,$3C,$B0,$90,$90,$E8,$E4,$F4,$F4,$FC,$F0
		.BYTE $F0,$F0,$2E,$24,$3C,$3F,$3C,$1E,$1F,  9,$3F,$3F,$2F,$2F,$27,$13
		.BYTE $1F, $F,$74,$24,$3C,$FC,$3C,$3C,$98,$90,$FC,$FC,$F4,$F4,$F4,$FC
		.BYTE $F8,$F0,$1C,$3C,$3E,$3D,$3C, $D,	9,  9,$17,$27,$2F,$2F,$3F, $F
		.BYTE  $F, $F,$F8,$28,$28,$F8,$F8,$F8,$D8,$90,$F8,$F8,$F8,$C8,$98,$38
		.BYTE $F8,$F0,$2E,$24,$3C,$3F,$3C,$3C,$19,  9,$3F,$3F,$2F,$2F,$2F,$3F
		.BYTE $1F, $F,$74,$24,$3C,$FC,$3C,$3C,$F8,$F8,$FC,$FC,$F4,$F4,$F4,$E4
		.BYTE $C8,$F8,	9, $F,	9,$12,$12, $E,$1E,$1C, $F, $F, $F,$1E,$1E, $E
		.BYTE $1E,$1C,$90,$90,$90,$48,$48,$70,$78,$38,$F0,$F0,$F0,$78,$78,$70
		.BYTE $78,$38,	9, $F,	9,  6,	0,  0,	0,  0, $F, $F, $F,  6,	0,  0
		.BYTE	0,  0,$90,$90,$90,$88,$88,$70,$70,$70,$F0,$F0,$F0,$F8,$F8,$70
		.BYTE $70,$70,	9, $F,	9,  9,	9,  6,	6,  0, $F, $F, $F, $F, $F,  6
		.BYTE	6,  0,$90,$90,$90,$90,$90,$60,$60,$60,$F0,$F0,$F0,$F0,$F0,$60
		.BYTE $60,$60,	9, $F,	9,$11,$11, $E, $E, $E, $F, $F, $F,$1F,$1F, $E
		.BYTE  $E, $E,$90,$90,$90,$60,	0,  0,	0,  0,$F0,$F0,$F0,$60,	0,  0
		.BYTE	0,  0,	9, $F,	9,  9,	9,  6,	6,  6, $F, $F, $F, $F, $F,  6
		.BYTE	6,  6,$90,$90,$90,$90,$90,$60,$60,  0,$F0,$F0,$F0,$F0,$F0,$60
		.BYTE $60,  0,	7,  8,	8,  7,	7,$1F,$3F,$17,	7, $F, $F,  7,	7,$1F
		.BYTE $27,$1B,	0,$C0,$20,$E0,$E0,$F8,$FC,$E8,	0,$C0,$E0,$E0,$E0,$F8
		.BYTE $E4,$D8,	7,  8,	8,  7,	7, $F,$1F,$1B,	7, $F, $F,  7,	7, $F
		.BYTE $13,$1D,	0,$C0,$20,$E0,$F8,$F8,$F0,$E8,	0,$C0,$E0,$E0,$F8,$E8
		.BYTE $D0,$F8,	7,  8,	8,  7,$1F,$1F, $F,$17,	7, $F, $F,  7,$1F,$17
		.BYTE  $B,$1F,	0,$C0,$20,$E0,$E0,$F0,$F8,$D8,	0,$C0,$E0,$E0,$E0,$F0
		.BYTE $C8,$B8,$2E,$24,$3C,$7F,$7C,$7C,$39,  9,$3F,$3F,$27,$4F,$4F,$5F
		.BYTE $3F, $F,$74,$24,$3C,$FE,$3E,$3E,$9C,$90,$FC,$FC,$E4,$F2,$F2,$FA
		.BYTE $FC,$F0,$17,$14,$3C,$3F,$3C,$3C,$19,  9,$1F,$1F,$27,$2F,$2F,$3F
		.BYTE $1F, $F,$38,$38,$70,$B0,$30,$10,$90,$F0,$E8,$E8,$F0,$F0,$F0,$F0
		.BYTE $F0,$F0,$2E,$24,$3C,$3F,$7C,$7C,$39,  9,$3F,$3F,$2F,$2F,$4F,$5F
		.BYTE $3F, $F,$74,$24,$3C,$FC,$38,$30,$90,$90,$FC,$FC,$F4,$F4,$F8,$F0
		.BYTE $F0,$F0,$1C,$1C, $E, $D, $C, $D,	9,  9,$17,$17, $F, $F, $F, $F
		.BYTE  $F, $F,$F8,$28,$28,$FC,$3C,$BC,$BC,$98,$F8,$F8,$F8,$E4,$F4,$F4
		.BYTE $FC,$F8,$2E,$24,$3C,$3F,$1C, $C,	9,  9,$3F,$3F,$2F,$2F,$1F, $F
		.BYTE  $F, $F,$74,$24,$3C,$FC,$3C,$3E,$BE,$9C,$FC,$FC,$F4,$F4,$F4,$F2
		.BYTE $FA,$FC,	9,  9,	9,$12,$12, $E,$1E,$1C, $F, $F, $F,$1E,$1E, $E
		.BYTE $1E,$1C,$90,$F0,$90,$48,$48,$70,$78,$38,$F0,$F0,$F0,$78,$78,$70
		.BYTE $78,$38,	9,  6,	6,  6,	0,  0,	0,  0, $F,  6,	6,  6,	0,  0
		.BYTE	0,  0,$90,$90,$90,$90,$F0,$F0,$60,$60,$F0,$F0,$F0,$F0,$F0,$F0
		.BYTE $60,$60,	9,  9,	9,  9,	9,  6,	6,  0, $F, $F, $F, $F, $F,  6
		.BYTE	6,  0,$90,$F0,$90,$90,$90,$60,$60,$60,$F0,$F0,$F0,$F0,$F0,$60
		.BYTE $60,$60,	9,  9,	9,  9,	9, $F,	6,  6, $F, $F, $F, $F, $F, $F
		.BYTE	6,  6,$90,$F0,$60,$60,	0,  0,	0,  0,$F0,$F0,$60,$60,	0,  0
		.BYTE	0,  0,	9,  9,	9,  9,	9,  6,	6,  6, $F, $F, $F, $F, $F,  6
		.BYTE	6,  6,$F0,$90,$90,$90,$90,$60,$60,  0,$F0,$F0,$F0,$F0,$F0,$60
		.BYTE $60,  0,	7,$18,$21,$1F,$1F,$1F, $F,$1F,	7,$1F,$3E,$1F,$1E,$1E
		.BYTE  $F,$19,	0,$80,$80,$80,$8F,$9F,$7C,$FC,	0,$80,$80,$80,$8F,$9F
		.BYTE $7C,$84,	7,  8,	8,$1F,$1F,$3F,$3F,$17,	7, $F, $F,$17,$17,$3F
		.BYTE $27,$1B,	0,$C0,$20,$F0,$F8,$FC,$FC,$E8,	0,$C0,$E0,$F0,$E8,$FC
		.BYTE $E4,$D8,$16,$14,$1E, $F, $F, $F, $B,$11,$1F,$1F,$13, $B,	9, $D
		.BYTE  $F,$1F,$68,$28,$78,$F0,$FC,$EC,$FC,$98,$F8,$F8,$C8,$D0,$9C,$BC
		.BYTE $FC,$F8,$1C,$13,	8,  8,$1F,$1C,$1C,$11,$1F,$1F, $F, $F,$1F,$1F
		.BYTE $1F,$1F,$F8,$C0,$80,$80,$80,$40,$40,$20,$38,$C0,$80,$80,$80,$C0
		.BYTE $C0,$E0, $E,  4,	4, $F, $C, $C,$11,$11, $F,  7,	7, $F, $F, $F
		.BYTE $1F,$1F,$70,$20,$20,$F0,$30,$30,$90,$90,$F0,$E0,$E0,$F0,$F0,$F0
		.BYTE $F0,$F0,$11,$2E,$24,$24,$78,$70,$60,  0,$1F,$3E,$3C,$3C,$78,$70
		.BYTE $60,  0,$90,$88,$48,$48,$48,$70,$78,$38,$F0,$F8,$78,$78,$78,$70
		.BYTE $78,$38,$13,$32,$2C,$44,$48,$30,$38,$3C,$1F,$3E,$3C,$7C,$78,$30
		.BYTE $38,$3C,$20,$90,$90,$90,$60,$70,$78,  0,$E0,$F0,$F0,$F0,$60,$70
		.BYTE $78,  0,$12,$12,$12,$1C,$1C, $C,	0,  0,$1E,$1E,$1E,$1C,$1C, $C
		.BYTE	0,  0,$80,$C0,$E0,$F0,$E0,$C0,$80,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$FE,$7C,$38,$10,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$10,$38,$7C,$FE,$7C,$38,$10,  0,$10,$28,$54,$BA,$54,$28
		.BYTE $10,  0,$D6,$C6,$10,$BA,$10,$C6,$D6,  0,$C6,$82,$10,$38,$10,$82
		.BYTE $C6,  0
Enemy1_199A9:	.BYTE $38,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_01:93A3o
		.BYTE	0,  0,	0,  0,	3,  7,$1F,$3C,$78,$6C,	0,  0,	0,  3,	7,$1F
		.BYTE $3F,$37,	0,  0,$C0,$E0,$F8,$3C,$1E,$66,	0,  0,	0,$C0,$E0,$F8
		.BYTE $FC,$DC,	0,  0,	0,  3,	7,$1C,$38,$60,	0,  0,	0,  0,	3,  7
		.BYTE $1F,$3F,	0,  0,	0,$C0,$E0,$38,$1C,  6,	0,  0,	0,  0,$C0,$E0
		.BYTE $F8,$FC,	0,  0,	3,  7,$1F,$3C,$78,$66,	0,  0,	0,  3,	7,$1F
		.BYTE $3F,$3B,	0,  0,$C0,$E0,$F8,$3C,$1E,$36,	0,  0,	0,$C0,$E0,$F8
		.BYTE $FC,$EC,$CC,$C6,$80,$BC,$9E,$BF,$9F,$9E,$73,$79,$7F,$4F,$63,$70
		.BYTE $78,$79,$63,$C1,	1,$3D,$7E,$FE,$FC,$FC,$9E,$3E,$FE,$F2,$C0,  0
		.BYTE $30,$78,$46,$C6,$83,$BC,$9E,$9F,$BF,$AE,$3B,$79,$7C,$4F,$63,$60
		.BYTE $40,$41,$32,$33,$61,$3D,$79,$F9,$FD,$75,$EC,$CE,$9E,$F2,$C6,  6
		.BYTE	2,$82,$C6,$83,$80,$BC,$7E,$7F,$3F,$3F,$79,$7C,$7F,$4F,	3,  0
		.BYTE  $C,$1E,$33,$63,	1,$3D,$79,$FD,$F9,$79,$CE,$9E,$FE,$F2,$C6, $E
		.BYTE $1E,$9E,$7D,$3F,$1F,$1F,$1D,$1C, $C,  8,$3A,  2,	2,  0,	2,  0
		.BYTE	0,  0,$CC,$CC,$84,$84,$C8,$70,	0,  0,$78,$78,$78,$78,$30,  0
		.BYTE	0,  0,$AC,$E6,$EE,$F9,$19,$13,$32,$3E,$43,$43,$43, $E, $E, $C
		.BYTE $1C,  0,$35,$67,$77,$9B,$98,$CC,$4C,$7C,$C2,$C2,$C2,$70,$70,$30
		.BYTE $38,  0,$33,$33,$21,$21,$13, $E,	0,  0,$1E,$1E,$1E,$1E, $C,  0
		.BYTE	0,  0,$BE,$FC,$F8,$F8,$B8,$38,$30,$10,$5C,$40,$40,  0,$40,  0
		.BYTE	0,  0,	0,  0,	3,  5,$1A,$25,$68,$40,	0,  0,	0,  3,	7,$1F
		.BYTE $3F,$3F,	0,  0,$C0,$60,$B8,$54,$2A,  2,	0,  0,	0,$C0,$E0,$F8
		.BYTE $FC,$FC,	0,  0,	0,  3,	5,$1A,$25,$68,	0,  0,	0,  0,	3,  7
		.BYTE $1F,$3F,	0,  0,	0,$C0,$60,$B8,$54,$2A,	0,  0,	0,  0,$C0,$E0
		.BYTE $F8,$FC,	0,  0,	3,  6,$1D,$2A,$54,$40,	0,  0,	0,  3,	7,$1F
		.BYTE $3F,$3F,	0,  0,$C0,$A0,$58,$A4,$16,  2,	0,  0,	0,$C0,$E0,$F8
		.BYTE $FC,$FC,$C0,$80,$84,$B2,$98,$9D,$9F,$DE,$7F,$7F,$7F,$5F,$6F,$6E
		.BYTE $60,$71,	3,  1,$21,$4D,$1E,$BE,$FE,$7E,$FE,$FE,$FE,$FA,$F0,$70
		.BYTE	0,$80,$40,$C0,$84,$B2,$98,$9D,$BF,$AE,$3F,$7F,$7F,$5F,$6F,$6E
		.BYTE $40,$41,	2,  3,$21,$4D,$19,$B9,$FD,$75,$FC,$FE,$FE,$FA,$F6,$76
		.BYTE	2,$82,$C0,$80,$84,$B2,$78,$7D,$7F,$7E,$7F,$7F,$7F,$5F, $F, $E
		.BYTE	0,  1,	3,  1,$21,$4D,$19,$B9,$F9,$7B,$FE,$FE,$FE,$FA,$F6,$76
		.BYTE	6,$8E,$BC,$FE,$1E,  3,	0,  0,	0,  0,$73,$13,	3,  0,	0,  0
		.BYTE	0,  0,$7E,$CC,$84,$84,$CC,$CC,$FC,$78,$80,$30,$78,$78,$78,$78
		.BYTE $78,  0,$7E,$33,$21,$21,$33,$33,$3F,$1E,	1, $C,$1E,$1E,$1E,$1E
		.BYTE $1E,  0,$3D,$7F,$78,$C0,	0,  0,	0,  0,$CE,$C8,$C0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	3, $E,$14,$2B,$36,$26,	0,  0,	0,  3, $F,$1C
		.BYTE $1B,$1B,	0,  0,$C0,$A0,$10,$10,$F0,$F0,	0,  0,	0,$C0,$E0,$E0
		.BYTE $20,  0,	0,  0,	1,  3,	6, $F,$1E,$36,	0,  0,	0,  1,	3,  4
		.BYTE  $B,$1B,	0,  0,$C0,$60,$90,$10,$90,$F0,	0,  0,	0,$C0,$E0,$E0
		.BYTE $60,$20,$4C,$5C,$6C,$56,$46,$23,$2F,$37,$37,$37,$37,$3B,$3B,$1D
		.BYTE $1D, $E,$90,$90,$A0,$A0,$40,$40,$40,$A0,$60,$60,$40,$40,$80,$80
		.BYTE $80,$C0,$2C,$5C,$6C,$56,$46,$27,$27,$37,$17,$37,$37,$3B,$3B,$1D
		.BYTE $1D,$1D,$F0,$90,$A0,$A0,$40,$40,$40,$40,	0,$60,$40,$40,$80,$80
		.BYTE $80,$80,$4C,$5C,$6C,$56,$46,$23,$2B,$27,$37,$37,$37,$3B,$3B,$1D
		.BYTE $1D,$1C,$2B,$65,$CE,$99,$91,$D8,$FC,$38,$16,$1B,$39,$70,$60,$60
		.BYTE $38,  0,$A0,$D4,$DE,$6E,	6,$8E,$7C,$30,$C0,$60,$64,$9C,$FC,$7C
		.BYTE $30,  0,$2F,$37,$2F,$27,$23,$21,$3F,$3F,$1D,$1D,$1D,$1C,$1C,$1F
		.BYTE $1F,  0,$40,$C0,$C0,$80,$80,$80,$80,$80,$80,  0,	0,  0,	0,  0
		.BYTE	0,  0,$4B,$47,$8F,$B9,$91,$88,$FC,$FC,$3C,$3D,$78,$60,$60,$70
		.BYTE $78,  0,$A0,$D0,$D0,$78, $C,$98,$B0,$60,$C0,$60,$60,$90,$F8,$70
		.BYTE $60,  0,	0,  0,	0, $F,$1A,$35,$6B,$5C,	0,  0,	0,  0, $F,$1E
		.BYTE $3C,$37,	0,  0,	0,  0,$F0,$98,$44,$74,	0,  0,	0,  0,	0,$60
		.BYTE $B8,$98,$6C,$50,$49,$3F,$74,$F2,$FB,$F3,$33,$3F,$36,$10,$4B,$DD
		.BYTE $EC,$EC,$FA,$ED,$FB,$F5,$7B,$EF, $F,$16, $C,$12,	6, $E,$CE,$36
		.BYTE $F8,$F8,$F1,$F1,$F1,$FF,$7F,$1F,	0,  0,$EE,$EE,$EE,$E1,$7F,$1F
		.BYTE	0,  0,$8F,$D7,$CB,$D3,$FE,$3C,	0,  0,$78,$3E,$BE,$BE,$BC,  0
		.BYTE	0,  0
Enemy2_19D2B:	.BYTE $41,  5,	0,  1,	3,  3, $F,$15,$17,$16,	0,  0,	1,  0,	3, $B
					; DATA XREF: BANK_01:93A5o
		.BYTE	8, $B,$C0,$E0,$E0,$F0,$F0,$F0,$F0,$F0,	0,$80,$C0,$A0,$80,$80
		.BYTE $C0,  0,	0,  0,	1,  3,	3, $F,$15,$17,	0,  0,	0,  1,	0,  3
		.BYTE  $B,  8,	0,$C0,$E0,$E0,$F0,$F0,$F0,$F0,	0,  0,$80,$C0,$A0,$80
		.BYTE $80,$C0,$C0,$E0,$E0,$F0,$F0,$F0,$F0,$E8,	0,$80,$C0,$A0,$80,$80
		.BYTE $C0,$10,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$27,$2F,$2F,$3B,$3B,$39,$39,$3C,$18,$10,$13,$15,$15,$16
		.BYTE $16,$13,$E8,$F8,$E8,$C8,$F8,$B8,$38,$78,$10,  0,$90,$B0,$90,$50
		.BYTE $D0,$90,$16,$27,$2F,$3F,$3B,$39,$39,$38, $B,$18,$10,$13,$15,$16
		.BYTE $16,$17,$F8,$E8,$F8,$E8,$C8,$B8,$38,$78,	0,$10,	0,$90,$B0,$50
		.BYTE $D0,$90,$F8,$E8,$C8,$F8,$F8,$B8,$38,$78,	0,$10,$B0,$90,$90,$50
		.BYTE $D0,$90,$1D, $F,	7,  7,	7, $F, $F,  6, $A,  0,	0,  0,	2,  7
		.BYTE	6,  0,$78,$F8,$F8,$F8,$BC,$BC,$3C,$18,$90,  0,	0,$20,	8,$18
		.BYTE $18,  0,$3D,$3F,$1F,  7,	7, $F, $F,  6,	2,$10,	0,  0,	2,  7
		.BYTE	6,  0,$78,$F8,$F8,$F8,$F8,$F8,$78,$38,$90,$10,	0,$40,$10,$30
		.BYTE $30,  0,$3D,$3F,$1F, $F, $F,$1F,$1E, $C,	2,$10,	0,  0,	4, $E
		.BYTE  $C,  0,$78,$F8,$F8,$F8,$78,$78,$78,$38,$90,  0,	0,$40,$10,$30
		.BYTE $30,  0,$3D,$3F,$1F,  7, $F,$1F,$1E, $C,	2,$10,	0,  0,	6, $E
		.BYTE  $C,  0,$78,$F8,$F8,$F8,$3C,$3C,$3C,$18,$90,$10,	0,$20,	8,$18
		.BYTE $18,  0,	6, $F, $F, $F, $F,  7,	9,$10,	0,  0,	0,  0,	3,  0
		.BYTE	7, $F,	0,  0,	0,  0,$C0,$E0,$30,$18,	0,  0,	0,  0,	0,$C0
		.BYTE $E0,$E0,	0,  6, $F, $F, $F, $F,	7,  9,	0,  0,	0,  0,	0,  3
		.BYTE	0,  7,	0,  0,	0,  0,	0,$E0,$F0,$18,	0,  0,	0,  0,	0,  0
		.BYTE $E0,$E0,$14,$16,$13,$16,$1E,$1D,$1F,$1F, $F, $B, $D, $D, $D, $A
		.BYTE	9,  8,$68,$28,$38,$F8,$70,$70,$F0,$F0,$D0,$D0,$D0,$90,$A0,$A0
		.BYTE $A0,  0,$68,$28,$38,$F8,$70,$70,$F0,$F0,$D0,$D0,$D0,$90,$A0,$A0
		.BYTE $A0,$20,$1F,$1F, $F, $E, $E, $F, $F,  7,	8,  0,	0,  0,	4,  6
		.BYTE	6,  0,$F0,$E0,$E0,$E0,$F0,$70,$70,$60,	0,  0,	0,$40,$20,$20
		.BYTE $20,  0,$1F,$1F, $F, $E, $F,  7,	7,  0,	8,  4,	0,  4,	6,  2
		.BYTE	0,  0,$E0,$E0,$E0,$E0,$F0,$70,$70,$60,	0,  0,	0,$40,$20,$20
		.BYTE $20,  0,$1F,$1F, $F, $F, $F,  7,	3,  1,	8,  0,	0,  5,	5,  1
		.BYTE	1,  0,$F0,$E0,$C0,$80,$80,$C0,$C0,$80,	0,  0,	0,  0,	0,$80
		.BYTE $80,  0,	0,  0,	1,  1,	1,  6, $F, $B,	0,  0,	0,  0,	0,  1
		.BYTE	0,  5,	0,$E0,$F0,$B8,$D8,$B0,$F0,$F0,	0,  0,	0,$E0,$A0,$C0
		.BYTE $A0,  0,	0,  0,	0,  0,	0,  3,	7,  7,	0,  0,	0,  0,	0,  0
		.BYTE	0,  1,	0,$70,$F8,$DC,$EC,$58,$F8,$F8,	0,  0,	0,$70,$50,$E0
		.BYTE $50,  0,$15,$14,$24,$26,$2D,$1D,$1D,$1F, $A, $B,$1B,$1D,$1A, $A
		.BYTE  $A, $C,$F0,$F8,$38,$38,$68,$98,$38,$BC,$60,$20,$C0,$C0,$90,$60
		.BYTE $D0,$48, $D, $C,$14,$12,$1D, $D, $D, $F,	2,  3, $B, $D, $A,  2
		.BYTE	2,  4,$F8,$FC,$3C,$3C,$6C,$9C,$3C,$BC,$70,$30,$C0,$C0,$90,$60
		.BYTE $D8,$48,$1F, $F, $F,  3,	3,  7,	7,  0, $C,  4,	0,  0,	1,  2
		.BYTE	3,  0,$FC,$FC,$FC,$F0,$F0,$F8,$F8,$78,	8,  8,	0,  0,$A0,$60
		.BYTE $B0,  0, $F, $F, $F,  3,	7, $F, $F, $F,	4,  4,	0,  0,	3,  4
		.BYTE	7,  0,$FC,$FC,$FC,$F8,$F8,$FC,$FC,$BC,	8,  8,	0,  0,$10,$30
		.BYTE $18,  0,$1F, $F, $F,  3,	3,  7,	7,  7, $C,  4,	0,  0,	1,  2
		.BYTE	3,  0,$FC,$FC,$FC,$F0,$F0,$F8,$F8,$F8,	8,  8,	0,  0,$A0,$60
		.BYTE $B0,  0,	0,  0,	0,  0,	1,  1,	1,  3,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,$F0,$F8,$F8,$E8,$F8,	0,  0,	0,  0,$20,$70
		.BYTE $30,$E0,	0,  0,	0,$F0,$F8,$F8,$E8,$FF,	0,  0,	0,  0,$20,$70
		.BYTE $30,$E0,	0,  0,	0,  0,	0,  0,	0,  3,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,$78,$FC,$FC,$F4,$FF,	0,  0,	0,  0,$10,$38
		.BYTE $18,$60, $F,$1F,$3B,$7B,$7B,$37,	1,  0,	3,  1,	5,$25,$25,  1
		.BYTE	0,  0,$B8,$FC,$9E,$BE,$CE,$CE,$8F,  7,$40,  8,$6C,$44,	4,$84
		.BYTE	6,  0, $F,$1F,$3B,$78,$79,$36,	0,  0,	3,  1,	4,$27,$26,  0
		.BYTE	0,  0,$FF,$FF,$FF,$3E,$CE, $E, $F,  7,	6,$F8,	0,$C4,	4,  4
		.BYTE	6,  0,	7, $F,$1F,$3C,$3C,$3B,	0,  0,	3,  1,	0,$13,$13,  0
		.BYTE	0,  0,$FF,$FF,$FF,$1C,$FC,$1C,$1E, $E,	6,$F8,	0,$E8,	8,  8
		.BYTE  $C,  0,	0,  0,	0,$1B,$3F,$7F,$FC,$F8,	0,  0,	0,  0,$10,$20
		.BYTE $47, $F,	0,  0,	0,  0,$80,$E0,$F0,$F0,	0,  0,	0,  0,	0,  0
		.BYTE $80,  0,	0,  0,	0,$1B,$3F,$7F,$FC,$F8,	0,  0,	7,  4,$10,$20
		.BYTE $47, $F,	0,  0,	0,  0,$80,$E0,$F0,$F0,	0,  0,$C0,$F0,$78,$18
		.BYTE $8C, $E,$49,$DB,$BF,$72,$1D, $F,	3,  0,$36,$66,$72,$1D, $E,  3
		.BYTE	0,  0,$F8,$F8,$FC,$BE,$FA,$FE, $E,  4,$E0,$30,$F0,$60,$44, $C
		.BYTE	4,  0,$49,$DB,$BF,$72,$1D, $F,	3,  0,$36,$66,$72,$9D,$EE,$73
		.BYTE $3C,$1F,$F8,$F8,$FC,$BE,$FA,$FE, $E,  4,$E6,$36,$F2,$60,$44, $C
		.BYTE $F4,$C0
EnvObject_1A13D:.BYTE $13,  6,$7F,$FF,$C0,$DF,$DF,$DF,$FF,$FF,$80,$7F,$7F,$7F,$7F,$7F
					; DATA XREF: BANK_01:93A7o
		.BYTE $60,$7F,$FE,$FF,	7,$FF,$FF,$FF,$FF,$FF,	1,$FE,$FE,$FA,$FA,$FA
		.BYTE	2,$FE,$7F,$80,$BF,$BF,$BF,$BF,$BF,$BF,$80,$7F,$7F,$7F,$7F,$7F
		.BYTE $7F,$7F,$FE,  1,$FD,$FD,$FD,$FD,$FD,$FD,	1,$FE,$FE,$FE,$FE,$FE
		.BYTE $FE,$FE,	0,  0,	0,  3, $C,$13,$24,$38,	0,  0,	0,  0,	3, $C
		.BYTE $1B,  7,	0,  0,	0,$E0,$30,$90,$E8,$74,	0,  0,	0,  0,$E0,$60
		.BYTE $10,$E8,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$80,$98,$96,$85,$87,$9C,$90,$7F,$7F,$67,$79,$7E,$79,$67
		.BYTE $7F,$80,	1,$19,$69,$A1,$E1,$39,	9,$FE,$FE,$E6,$9E,$7E,$9E,$E6
		.BYTE $FE,  1,$80,$BF,$BD,$A7,$BF,$BD,$BF,$BF,$7F,$40,$42,$5A,$5A,$42
		.BYTE $40,$7F,	1,$FD,$25,$FD,$FD,$FD,$FD,$FD,$FE,  2,$DA,$1A,$DA,  2
		.BYTE	2,$FE,$39,$3F,$7F,$3E,$9F,$9F,$DE,$CC,	7,  0,	1,$41,$60,$60
		.BYTE $21,$33,$34,$74,$B4,$E2,$54,$8A,$5A,$F2,$E8,$A8,$68,$5C,$A8,$74
		.BYTE $F4,$EC,$C7,$E0,$FF,$E0,$EF,$EF,$EF,$EF,$38,$5F,$60,$7F,$70,$70
		.BYTE $73,$30,$E2,  6,$FE,  6,$F6,$F6,$F6,$F6,$1C,$F8,	0,$F8,	8,  8
		.BYTE $E8,  8,$80,$BF,$AA,$AF,$BF,$BF,$80,$FF,$7F,$40,$55,$55,$51,$40
		.BYTE $7F,  0,	1,$FD,$F5,$9D,$FD,$FD,	1,$FF,$FE,  2, $A,$6A,$62,  2
		.BYTE $FE,  0,$E0,$FF,$E0,$E0,$E0,$7F,$3A,$1F,$5F,$60,$7F,$3F,$5F,$20
		.BYTE $1F,  0,	6,$FE,	6,  6,	6,$FE, $C,$F8,$F8,  0,$F8,$F8,$F8,  0
		.BYTE $F0,  0
BattleUI_1A26F:	.BYTE $F5,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_01:93A9o
		.BYTE	0,  0,	8,  8,	8,$1C,$14,$14,$36,$22,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	8,  8,	8,$1C,$14,$14
		.BYTE $36,$22,	8,  8,	8,$1C,$14,$14,$36,$22,	8,  8,	8,$1C,$14,$14
		.BYTE $36,$22,	0,  0,	0,  0,	0,  0,$80,$80,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE $80,$80,	0,  0,	0,  0,	0,  0,$80,$80,	0,  0,	0,  0,	0,  0
		.BYTE $80,$80,	0,  0,	0,  0,	0,  0,	0,$FD,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,$FD,$22,$63,$41,$41,$C1,$80,$80,$80,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,$FD,	0,  0,	0,  0,	0,  0
		.BYTE	0,$FD,	0,  0,	0,  0,	0,  0,	0,  0,$22,$63,$41,$41,$C1,$80
		.BYTE $80,$80,	0,  1,	1,  1,$83,$82,$82,$C6,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$22,$63,$41,$41,$C1,$80,$80,$80,$22,$63,$41,$41,$C1,$80
		.BYTE $80,$80,	0,  0,	0,  0,	0,  0,	0,  0,	0,  1,	1,  1,$83,$82
		.BYTE $82,$C6,$80,$C0,$40,$40,$60,$20,$20,$3F,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  1,	1,  1,$83,$82,$82,$C6,	0,  1,	1,  1,$83,$82
		.BYTE $82,$C6,	0,  0,	0,  0,	0,  0,	0,  0,$80,$C0,$40,$40,$60,$20
		.BYTE $20,$3F,$80,$C0,$40,$40,$60,$20,$20,$3F,$80,$C0,$40,$40,$60,$20
		.BYTE $20,$3F,	5,  5,	7,  2,	2,  2,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	5,  5,	7,  2,	2,  2
		.BYTE	0,  0,	5,  5,	7,  2,	2,  2,	0,  0,	5,  5,	7,  2,	2,  2
		.BYTE	0,  0,$44,$44,$6C,$28,$28,$38,$10,$10,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$44,$44,$6C,$28,$28,$38
		.BYTE $10,$10,$44,$44,$6C,$28,$28,$38,$10,$10,$44,$44,$6C,$28,$28,$38
		.BYTE $10,$10,	0,  0,	0,  4,	4,  4, $E, $A,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  4,	4,  4
		.BYTE  $E, $A,	0,  0,	0,  4,	4,  4, $E, $A,	0,  0,	0,  4,	4,  4
		.BYTE  $E, $A,	0,  0,	0,  0,	0,  0,	0,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,$FF, $A,$1B,$11,$11,$31,$20,$20,$E0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,$FF,	0,  0,	0,  0,	0,  0,	0,  0, $A,$1B,$11,$11,$31,$20
		.BYTE $20,$E0,	0,  4,	4,  4,$8E,$8A,$8A,$DB,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0, $A,$1B,$11,$11,$31,$20,$20,$E0, $A,$1B,$11,$11,$31,$20
		.BYTE $20,$E0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  4,	4,  4,$8E,$8A
		.BYTE $8A,$DB,	0,  4,	4,  4,$8E,$8A,$8A,$DB,	0,  4,	4,  4,$8E,$8A
		.BYTE $8A,$DB,$40,$40,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$40,$40,	0,  0,	0,  0
		.BYTE	0,  0,$50,$50,$70,$20,$20,$20,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$40,$40,	0,  0,	0,  0,	0,  0,$40,$40,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$50,$50,$70,$20,$20,$20
		.BYTE	0,  0,$50,$50,$70,$20,$20,$20,	0,  0,$50,$50,$70,$20,$20,$20
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	2,  2,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	2,  2,	0,  0,	0,  0,	0,  0,	2,  2,	0,  0,	0,  0,	0,  0
		.BYTE	2,  2,	2,  7,	5,  5, $D,  8,	8,$F8,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	2,  7,	5,  5, $D,  8
		.BYTE	8,$F8,	0,  0,	0,  0,$A0,$A0,$A0,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	2,  7,	5,  5, $D,  8,	8,$F8,	2,  7,	5,  5, $D,  8
		.BYTE	8,$F8,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$A0,$A0
		.BYTE $A0,$FF,	0,  0,	0,  0,$A0,$A0,$A0,$FF,	0,  0,	0,  0,$A0,$A0
		.BYTE $A0,$FF,$40,$40,$40,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$40,$40,$40,  0,	0,  0
		.BYTE	0,  0,$40,$40,$40,  0,	0,  0,	0,  0,$40,$40,$40,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  7,	4,  7,	4,  4
		.BYTE	4,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,$A0, $C,$6A,$2A,$2A
		.BYTE $2A,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$E0,$A0,$E0,$80
		.BYTE $E0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  3,	4,  4,	4,  4
		.BYTE	3,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$BA, $A,$3A,$AA
		.BYTE $39,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,$11,$90,$BB,$91,$91
		.BYTE $99,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$76,$55,$55,$55
		.BYTE $75,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  7,	4,  4,	4,  4
		.BYTE	7,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$BB,$8A,$BA,$AA
		.BYTE $3A,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$3B,$AA,$AB,$BA
		.BYTE $8B,$38,	0,  0,	0,  0,	0,  0,	0,  0,	0,  3,$AB,$B3,$A3,$20
		.BYTE $A3,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  7,	4,  4,	7,  4
		.BYTE	4,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  1,$B8,$AB,$29,$29
		.BYTE $39,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$37,$45,$75,$15
		.BYTE $67,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  6,$66,$56,$56,$50
		.BYTE $56,  0,	0,  0,	0,  0,	0,  0,$1F,$12,	0,  0,	0,  0,	0,  0
		.BYTE	0, $D,	0,  0,	0,  0,	0,  0,$80,$C0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  2,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,$14,$1B,$1D, $A, $D,	0,  0,$10,$1C, $F,  7
		.BYTE	7,  3,	0,  0,	0,  0,	0,$80,$C0,$60,	0,  0,	0,  0,	0,$80
		.BYTE $C0,$E0,	0,  0,	0,  0,	0,$1F,$19,$17,	0,  0,	0,  0,	0,  0
		.BYTE	7, $C,	0,  0,	0,  0,	0,$FF,$EF,$FF,	0,  0,	0,  0,	0,  0
		.BYTE $50,$80,	0,  0,	0,  0,	0,$F9,$FF,$FF,	0,  0,	0,  0,	0,  6
		.BYTE	4,  4,	0,  0,	0,  0,	0,$F8,$C4,$FC,	0,  0,	0,  0,	0,  0
		.BYTE $38,$38,$3F,$3F,$21,$3F,$3B,$30,$3F,  0, $C, $F,$1E,  0,	4, $F
		.BYTE	0,  0,$FF,$BE,$5F,$FE,$B7,$FF,$FF, $E,	0,$51,$A0,  1,$48,$1D
		.BYTE  $C,  1,$FF,$AB,$E2,$1F,$FF,$FB,$F6,$16,	0,$FC,$1D,$FD,$1D,$FD
		.BYTE $1D,$E9,$80,$80,$F8,$70,$E0,$C0,$C0,$40,	0,  0,	0,$C0,$80,  0
		.BYTE	0,$80,	0,  0,	0,  0,	1, $E,$1D,$1A,	0,  0,	0,  0,	2,  1
		.BYTE	3,  5,	0,  0,	0,  1, $F,$7F,$FC,$F1,	0,  0,	0,$1E,$71,$8F
		.BYTE $3F,$FE,	6, $C,$32,$FF,$F3,$1D,$76,$EA,	1,$13,$CF,$3F,$FF,$E2
		.BYTE $9D,$7D,$80,$40,	0,$80,$40,$80,$D0,$60,	0,$80,$C0,$C0,$E0,$F0
		.BYTE $78,$9C,	4,  6,	3,  1,	0,  0,	0,  0,	3,  1,	0,  0,	0,  0
		.BYTE	0,  0,$B0,$58,$2C,$96,$CB,$65,$3A, $C,$F0,$F8,$FC,$7F,$3F,$1F
		.BYTE	7,  3,	0,  0,	0,  0,	0,$80,$80,$48,	0,  0,	0,  0,$80,$C0
		.BYTE $EC,$BC,	0,$20,$6F,$80,$9F,$C3,	0,$7F,$10,$10,$10,$7F,$7F,$3F
		.BYTE $7F,  3,	0,  0,$FF, $E,$FF,  3,$AC,$55,	0,  0,	0,$FF,$FF,$FC
		.BYTE $7B,$FE,	0,  0,$FF,$1D,$EE,$F7,	0,$55,	0,  0,	0,$F7,$FB,$7D
		.BYTE $FF,$AA,	0,  0,$C0,$E0,$F0,$78,$1C,$44,	0,  0,$30,$50,$A0,$C0
		.BYTE $E0,$B8,	0,  0,	0,  0,	4,$3F,$40,$7F,	0,  4,	4,  4,	0,  0
		.BYTE $3F,$3F,	0,  0,	0,  0,	0,$FF,$1F,$E0,	0,  0,	0,  0,	0,  0
		.BYTE $FF,$FF,	0,  0,	0,  0,	0,$FF,$81,$3F,	0,  0,	0,  0,	1,  0
		.BYTE $FE,$FE,	0,  0,	0,  0,$40,$FC,$F4,$FC,	0,  0,$80,$80,$80,  0
		.BYTE	8,$E8,$1F,$16,$19,$16,$1F,$1E,$1F,$1E,	9,  9, $E, $D, $A,  5
		.BYTE	8,  1,$6F,$EF,$4F,$8F,$5F,$AF,$7F,$EF,$90,$10,$B0,$70,$A0,$50
		.BYTE $80,$10,$FF,$FF,$FF,$FF,$FF,$53,$F7,$FF,	0,  0,	4,  0,	0,$BC
		.BYTE $18,  0,$FC,$C4,$C8,$F0,$F0,$C8,$FC,$FC,$38,$38,$30,  0,	0,$30
		.BYTE $38,$38, $F,  6,	3,  3,	1,  0,	0,  0,	4,  2,	1,  1,	0,  0
		.BYTE	0,  0,$FC,$39,$1F,$34,$E6,$FE,	1,  1,	3,$56,	8,$13,$FD,  1
		.BYTE	0,  0,$A0,$10,$48,$A8,$54,$A4,$52,$2A,$40,$E0,$B0,$50,$A8,$58
		.BYTE $AC,$D4,$1F, $D, $F, $B,	9,  6,	9,  8,	2,  2,	4,  5,	6, $B
		.BYTE	6,  7,$47, $A,$35,$F4,$64,$BD,$2C,$C7,$F9,$F7,$CB,$3B,$FB,$E2
		.BYTE $D3,$20,$D5,$AD,$19,  5,$AB,$5D,$E1,  1,$FE,$F2,$E6,$FA,$54,$A0
		.BYTE $10,  0,$20,$20,$28,$C4,$C8,$B4,$68,$B0,$DC,$DE,$DE,$BF,$3F,$5F
		.BYTE $9F,$5F,	7,  3,	1,  0,	1,  0,	0,  0,	0,  0,	0,  1,	3,  3
		.BYTE	1,  0,$F4,$EA,$FE,$FD,$5A,$FD,$5E, $F,$3E,$1C,$18,$32,$A5,$C2
		.BYTE $81,  0,	0,  0,	0,  0,$80,$40,$A0,$50,	0,  0,	0,  0,$80,$C0
		.BYTE $E0,$F0,	7,  7,	0,  0,	0,  0,	0,  0,$78,  8,	0,  0,	0,  0
		.BYTE	0,  0,$E2,$F0,$1F,$18, $C,  7,	3,  0,$FD, $F,	3,  0,$14, $B
		.BYTE	0,  0,$AB,$7F,$F7,$7A,$37,$5A,$ED, $A,$54,$80,$C8,$45, $A,$27
		.BYTE $16,$15,$F8,$F0,$C0,$C0,$C0,$E0,$60,$A0,	0,  0,	0,  0,	0,  0
		.BYTE $80,$40,$7F,$3F,	2,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$CA,$FF,$20,$35,$3F,  0,	0,  0,$3F,$15,$1F, $A,	0,  0
		.BYTE	0,  0,$AB,$BF,$BE,$9E,$F6,$1E,$16,$1B,$FE,$54,$6B,$65, $F,  7
		.BYTE  $B,  7,$1C,$74,$FC,$9C,$9C,$8C,$84,$80,$E8,$88,	0,  0,	0,  0
		.BYTE	0,  0,$15,$1A,$1F,  0,	0,  0,	0,  0, $A,  5,	0,  0,	0,  0
		.BYTE	0,  0,$4F,$BF,$FF, $E, $C, $D,	9,$1A,$B0,$40,	0,  1,	3,  6
		.BYTE	6, $C,$FF,$FF,$FF,$9F,$9F,$17,	7,  7,	0,  0,	0,  4, $C,  4
		.BYTE	4,  4,$C4,$FC,$F8,  0,	0,  0,	0,  0,$38,  0,	0,  0,	0,  0
		.BYTE	0,  0,	1,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$52,$A9,$95,$AA,$95,$AB,$FF,  0,$AC,$56,$6A,$55,$6A,$54
		.BYTE	0,  0,	7,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	1,  1,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$E8,$F2,$F4,$78,	0,  0,	0,  0,$1F, $C,	8,  0,	0,  0
		.BYTE	0,  0,	7,  1,	0,  0,	0,  0,	0,  0,	0,  2,	1,  0,	0,  0
		.BYTE	0,  0,$F0,$F0,$C0,  0,	0,  0,	0,  0,$F0,$F0,$E0,$C0,	0,  0
		.BYTE	0,  0, $D,  6,	5,  6,	7,  3,	1,  0,$12,  9, $A,  9,	8,  4
		.BYTE	2,  0,$70,$B0,$D0,$B8,$58,$B8,$F0,  0,$80,$C0,$A0,$40,$A0,$40
		.BYTE	0,  0,$1C,$1C, $C, $F,	0,  0,	0,  0,	3,  3,	3,  0,	0,  0
		.BYTE	0,  0,$C0,$C0,$C0,$80,	0,  0,	0,  0,$80,$80,$80,  0,	0,  0
		.BYTE	0,  0,$3A,$14, $C,  0,	0,  0,	0,  0, $C,  8,	0,  0,	0,  0
		.BYTE	0,  0,	0,$7E,$7E,$66,$66,$66,$66,$66,$FF,$FF,$C3,$DB,$DB,$DB
		.BYTE $DB,$DB,	0,  0,	0,  0,	0,  0,	0,  0,	0,$3C,$30,$30,$3C,$30
		.BYTE $30,$38,	0,  0,	0,  0,	0,  0,	0,  0,	0,$3C, $C, $C,$3C, $C
		.BYTE  $C,$1C,	0,  0,$7E,$42,$5A,$5A,$5A,$5A,	0,  0,$7E,$7E,$7E,$7E
		.BYTE $7E,$7E,$18,$38,$58,$18,$18,$18,$18,$7E,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$3C,$66,$66, $C,$18,$30,$62,$7E,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$3C,$66,	6,$1C,	6,$66,$66,$3C,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0, $C,$1C,$2C,$4C,$7E, $C, $C,$1E,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$7E,$60,$60,$7C,$66,  6,$66,$3C,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$3C,$66,$60,$7C,$66,$66,$66,$3C,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$7E,$46, $C, $C,$18,$18,$30,$30,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$3C,$66,$66,$3C,$66,$66,$66,$3C,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$3C,$66,$66,$66,$3E,  6,$66,$3C,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$18,$24,$66,$66,$66,$66,$24,$18,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$18,$24,$62,$61,$61,$62,$24,$18,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$18,$24,$46,$86,$86,$46,$24,$18,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$66,$66,$66,$66,$66,$7E,$7E,  0,$DB,$DB,$DB,$DB,$DB,$C3
		.BYTE $FF,$FF,	0,  0,	0,  0,	0,  0,	0,  0,$38,$30,$30,$3C,$30,$30
		.BYTE $3C,  0,	0,  0,	0,  0,	0,  0,	0,  0,$1C, $C, $C,$3C, $C, $C
		.BYTE $3C,  0,$5A,$5A,$5A,$5A,$42,$7E,	0,  0,$7E,$7E,$7E,$7E,$7E,$7E
		.BYTE	0,  0,	0,  0,	0,  0,	0,  1,	1,  3,	0,  0,	0,  0,	0,  1
		.BYTE	1,  3,	0,  0, $C,$30,$40,$80,$80,$80,	0,  0, $C,$30,$60,$80
		.BYTE	0,$80,	2,$1C,	4,$10,$1C,$10,$3C,$18,	2,$1C,	4,$10,$1C,$18
		.BYTE $3C,$1C,	0,  0,$20,  0,	0,  0,	0,  0,	0,  0,$20,  0,	0,  0
		.BYTE	0,  0,	0,  3,	4,  0,	0,  0,	0,  0,	0,  3,	4,  0,	0,  0
		.BYTE	0,  0,	0,$D0,$88,$88,$1C,$4C,	8,$10,	0,$D0,$F8,$D8,$64,$74
		.BYTE $7C,$28,	0,  1,$29,  0, $C,  5,	1,  8,	0,  1,$29,  0, $C,  5
		.BYTE	1,  8,	0,$E0,$B8,  0,$78,$48,$E8,$B8,	0,$A0,$B8,$58,$A8,$28
		.BYTE $58,$68,	0,  0,	0,  0,	3,  5, $B,  7,	0,  0,	0,  0,	3,  6
		.BYTE  $C,  0,	0,  0,	0,  0,	0,$80,$E0,$E0,	0,  0,	0,  0,	0,$E0
		.BYTE $20,  0,	0,  0,	2,  3,$19,  7,$1F,$17,	0,  0,	2, $B,$12,  4
		.BYTE $10,  8,	0,  0,$60,$C8,$5C,$E8,$F4,$F9,	0,  0,$20,$C8,$B4,$10
		.BYTE  $C,  9,	0,  0,	8,  0,$2C, $B,$2C,$12,	0,  0,	8,  2, $C,  8
		.BYTE $2C,$10,$80,$44,$24,$40,$4A,$6A,$40,$A7,$80,$44,$34,$C0, $A,$9A
		.BYTE	0,$16,	0,  0,	0,  1,$A0,  2,	0,  0,	0,$20,	0,  0,$80,$10
		.BYTE	0,  0,$80,$C6,	8,  0,	0,  0,	0,$21,$80,$46,	8,  0,	0,  0
		.BYTE	0,  2, $F, $F, $E, $C,$1C,$1E,$3E,$14, $C, $A, $D, $A,$12,$11
		.BYTE $32,$2C,	0,$10,	0,  0,	0,  0,	0,  0,	0,$10,	0,  0,	0,  0
		.BYTE	0,  0,$24,$2C,$1A,  2, $D, $B,	4,  0,$3A,$30,$16, $F, $F, $B
		.BYTE	4,  0,	0,  0,$80,$40,$80,$40,$58,  0,	0,  0,$80,$40,$80,$40
		.BYTE $58,  0,	0,  0,	1,  2,	0,  3,	1,  0,	0,  0,	1,  2,	1,  2
		.BYTE	1,  0,$B8,$A0,$50,$40,$60,$80,	0,  0,$C8,$D0,$90,$80,$60,$80
		.BYTE	0,  0,	0,  0,	0,  0,	0,  6,$10,$10,	0,  0,	0,  0,	1,  3
		.BYTE $10,  0,$58,$30,$20,$40,	0,  0,	0,  0,	8,$30,$60,$C0,	0,  0
		.BYTE	0,  0,	7,  9, $C, $D,	1,  0,	0,  0,	4, $E,	5, $A,	1,  0
		.BYTE	0,  0,$60,$40,	0,$C8,$80,  0,	0,  0,$A0,$C0,$60,$C8,	0,  0
		.BYTE	0,  0,$7F,$77,$1F,$3A,	3,  0,	4,  1,$40,$58,$30,$3D,	3, $E
		.BYTE	4,  1,$F6,$FC,$88,$6A,$E8,$D0,	0,  0,$1E,  0,$7C,$92,$38,$F0
		.BYTE	0,  0,	1,$14,$15,  0,	2,  0,	0,  0,	2,$10,$15,  4,	2,  0
		.BYTE	0,  0,$82,$68,$8A,$71,$80,  0,	0,  0,$32,$18,$8E,$71,$80,  0
		.BYTE	0,  0,	0,$10,	0,  0,$20,$30,	1,  1,	0,$30,	0,  0,$30,$10
		.BYTE	1,  1,	0,  0,	2,  1,	0,  4,$80,$80,	0,  0,	2,  3,	0,$24
		.BYTE $80,$80,	0,  0,	0,  0,	3,  3,	7,  7,	0,  0,	0,  0,	3,  3
		.BYTE	7,  7,	0,  0,	0,  0,$C0,$C0,$FC,$FC,	0,  0,	0,  0,$F0,$F0
		.BYTE $3C,$3C,	0,  0,	3,  2, $C,  0,	2,  0,	0,  0,	3,  3, $C,  0
		.BYTE	3,  4,	0,  0,$B0,$30,	0,$1F,	0,$26,	0,  0,$30,$B0,	0,$1F
		.BYTE $A0,  6,	0,  0,	2, $E,	2,  0,$32,$32,	0,  0,	2, $E,	2,  0
		.BYTE $32,$32,	0,  0,$EC,$C0,$44,  0,$1C,  8,	0,  0,$EC,$C0,$C4,  0
		.BYTE $1C,  8,	0,  0,	7,  1,	0,  0,	6, $C,	0,  0,	7,  1,	0,  0
		.BYTE	6, $C,	0,$80,$20,$20,	0,  2,	0,  8,	0,$80,$20,$20,	0,  2
		.BYTE	0,  8,	0,  0,	0,  0, $B,  2,	8,  6,	0,  0,	0,  0, $B,  3
		.BYTE  $D,  7,	0,  0,	2,$30,$7C,  0,$D8,$90,	0,  0,$82,$F6,$F0,$AC
		.BYTE $68,$70,	2,  0,$11, $D,$4F,$3F,$77,$5F,	2,  3,$18,$38,$50,  0
		.BYTE $48,$60,$C0,  0,$54,$F0,$D2,$7C,$F8,$54,$C0,$40,$34, $E,$2A,$8C
		.BYTE	4,$8E,	0,$18,$10,$23,$53,  3,	1,  1,	0,$18,$18,$13,$63,  3
		.BYTE	1,  1,$70,$66,$D0,$78,$80,  0,	4,  0,$30,$3E,$E8,$E0,$B8,  0
		.BYTE	4,  0,	0,$20,$18,  0,	0,  0,	0,$10,	8,$20,$10,  8,	0,  0
		.BYTE $10,  0,	0,$80,	1,  8,	6,$44,$80,  0,	0,$C0,	9,  8,	4,  0
		.BYTE	4,  0, $B, $B,	4,  0, $F, $D, $F, $F, $C, $C,	7,  3, $F, $F
		.BYTE  $F, $F,$F4,$F4,$78,$F8,$38,$18,$C0,$C0, $C,  8,$B8,$38,$78,$B8
		.BYTE $C0,$C0, $E, $D, $D,  0,	0,  0,$1B,$1B, $E, $D, $D,  0,	0,  0
		.BYTE $1B,$1B,	0,$B4,$10,  0,	3, $B,$18,  4,	0,$B4,$10,  0,	3, $B
		.BYTE $18,  4,	0,$10,	2,  0,	0,$32,$1A,  4,	0,$10,	2,  0,	0,$32
		.BYTE $1A,  4,$42,  8,	0,  0,$C0,$D0,$98,$50,$42,  8,	0,  0,$C0,$D0
		.BYTE $D8,$50,	0,  6,	0,$1C,$38,  8,	0,  0,	0,  6,	0,$1C,$38,  8
		.BYTE	0,  0,	8,$82,	0,  4,	0,$B2,$78,  0,	8,$82,	0,  4,	0,$F2
		.BYTE $78,  0,	7,$23,$13,  7,	4,  0,	0,  0,	4,$22,$14, $E,	4,  0
		.BYTE	0,  0,$34,$B9,$F2,$E8,$14,$80,	0,  0,$FC,$FD,$B2,$F8,$14,$80
		.BYTE	0,  0,$7B,$37, $F,$3C,	7,$10,	5,  0,$64,$28,$10,$31, $C,$17
		.BYTE	5,  0,$FC,$F6,$58,$74,$C8,$20,$80,  0,	4, $E,$AC,$1C,$3C,$E0
		.BYTE $80,  0,	0,$12, $C,$3E,	0,  0,	0,  0,	0,$1A,$12,$3E,	0,  0
		.BYTE	0,  0, $E,$4E,	0,  0,	0,  0,	0,  0,	9,$4D,$16,  0,	0,  0
		.BYTE	0,  0,	0,$60,	0,$58,	0,$11,	0,  0,	0,$40,$10,$44,	0,$11
		.BYTE	0,  0,	0,  0,	2,  0,$CC,  8,	2,  0,	0,$10,	2,  0,$60,  8
		.BYTE	2,  0,	0,  0,	0,  0,$24,$1A,$13,$1F,	0,  0,	0,  0,$27,$1D
		.BYTE $1C,$10,	0,  0,	0,$E0,$E0,$98,$F4,$F2,$80,  0,$80,$60,$70,$78
		.BYTE  $C, $E,	0,  0,	7,  4,$4B, $B,$1A,$19,	0,  1,	7, $F,$5F,$1F
		.BYTE $1F,$3E,$10,$50,$64,$1C,$F6,$E2,$3A,$9E,$10,$D0,$FC,$FC,$FE,$FE
		.BYTE $FE,$7E,	1,  7,$10,  8,$10,$1B,$24,$24,	3, $F,$14,  8,$1B,$1F
		.BYTE $24,$24,$F0,$F4,$7A,  4,$F3,$F3,$2D,  5,$F0,$F4,$7A,  4,$F3,$F3
		.BYTE $2D,  5,	4,  0,$20,$28,$2A,$36,$44,$40,	4,  0,$20,$28,$2A,$36
		.BYTE $44,$40,	4,$60,	5,$23,$22,  8,	0,  1,	4,$60,	5,$23,$22,  8
		.BYTE	0,  1,	0,  0,	4, $C,	7,  5, $B,  7,	0,  0,	4,  8,	4,  6
		.BYTE  $C,  8,	0,  0,	0,$88,$AC,$98,$E0,$F8,	0,  0,	0,$88,$74,$68
		.BYTE $10,  8,	0,  0,	0,$E0,$E0,$98,$F4,$F2,	0,  0,$80,$60,$70,$78
		.BYTE  $C, $E,	0,  0, $E,  1,$1F,$2F,$1F,$7F,	0,  0, $F, $E,$10,$30
		.BYTE $20,$40,	0,  0,$F0,$E0,$D8,$EC,$FE,$F9,	0,  0,$30,$10,$24,$10
		.BYTE	2,  7,$2F,$2F, $F,$1C,	7,  0,	0,  0,$30,$30,$10,$13,	7,  0
		.BYTE	0,  0,$F8,$F4,$B0,$50,	4,  0,	0,  0,	4, $C,$48,$F8,	4,  0
		.BYTE	0,  0,$14,$16,$4B,  9,$25,$15,	0,  2,$17,$17,$4B,  9,$27,$17
		.BYTE	4,  2,$1E,$3C,$FC,$FA,$FC,$1C,	0,$80,$FE,$FC,$FC,$FA,$FC,$1C
		.BYTE	0,$80,$28,  8,	0,  0,	0,  8,	0,  0,$28,  8,	2,  1,	0,  8
		.BYTE	0,  0,$10,  0,	4,$1C,$C0,  0,	0,  0,$10,  0,	4,$1C,$C0,  0
		.BYTE	0,  0,	8,  0,	0,  0,	0,  0,	0,  0,	8,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  2,	0,  0,$C0,  0,	0,  0,	0,  2,	0,  0,$C0,  0
		.BYTE	0,  0, $B,  9, $B, $D,	1,  0,	0,  0, $C, $E,	4, $A,	1,  0
		.BYTE	0,  0,$D8,$D0,$90,$B8,$C8,$80,	0,  0,$28,$30,$E0,$F8,$48,$80
		.BYTE	0,  0,$7F,$7F,$1F,$22,$16,  5,	7,  1,$40,$40,$20,$3D,$19, $A
		.BYTE	7,  1,$FE,$FE,$E9,$EE,$EC,$DC,$50,$80,	1,  1,$17,$16,$3C,$F4
		.BYTE $D0,$80
InventoryUI_1B1C1:.BYTE	$D6,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0
					; DATA XREF: BANK_01:93ABo
		.BYTE	0,  0,	8,  8,	8,$1C,$14,$14,$36,$22,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	8,  8,	8,$1C,$14,$14
		.BYTE $36,$22,	8,  8,	8,$1C,$14,$14,$36,$22,	8,  8,	8,$1C,$14,$14
		.BYTE $36,$22,	0,  0,	0,  0,	0,  0,$80,$80,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE $80,$80,	0,  0,	0,  0,	0,  0,$80,$80,	0,  0,	0,  0,	0,  0
		.BYTE $80,$80,	0,  0,	0,  0,	0,  0,	0,$FD,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,$FD,$22,$63,$41,$41,$C1,$80,$80,$80,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,$FD,	0,  0,	0,  0,	0,  0
		.BYTE	0,$FD,	0,  0,	0,  0,	0,  0,	0,  0,$22,$63,$41,$41,$C1,$80
		.BYTE $80,$80,	0,  1,	1,  1,$83,$82,$82,$C6,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$22,$63,$41,$41,$C1,$80,$80,$80,$22,$63,$41,$41,$C1,$80
		.BYTE $80,$80,	0,  0,	0,  0,	0,  0,	0,  0,	0,  1,	1,  1,$83,$82
		.BYTE $82,$C6,$80,$C0,$40,$40,$60,$20,$20,$3F,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  1,	1,  1,$83,$82,$82,$C6,	0,  1,	1,  1,$83,$82
		.BYTE $82,$C6,	0,  0,	0,  0,	0,  0,	0,  0,$80,$C0,$40,$40,$60,$20
		.BYTE $20,$3F,$80,$C0,$40,$40,$60,$20,$20,$3F,$80,$C0,$40,$40,$60,$20
		.BYTE $20,$3F,	5,  5,	7,  2,	2,  2,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	5,  5,	7,  2,	2,  2
		.BYTE	0,  0,	5,  5,	7,  2,	2,  2,	0,  0,	5,  5,	7,  2,	2,  2
		.BYTE	0,  0,$44,$44,$6C,$28,$28,$38,$10,$10,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$44,$44,$6C,$28,$28,$38
		.BYTE $10,$10,$44,$44,$6C,$28,$28,$38,$10,$10,$44,$44,$6C,$28,$28,$38
		.BYTE $10,$10,	0,  0,	0,  4,	4,  4, $E, $A,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  4,	4,  4
		.BYTE  $E, $A,	0,  0,	0,  4,	4,  4, $E, $A,	0,  0,	0,  4,	4,  4
		.BYTE  $E, $A,	0,  0,	0,  0,	0,  0,	0,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,$FF, $A,$1B,$11,$11,$31,$20,$20,$E0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,$FF,	0,  0,	0,  0,	0,  0,	0,  0, $A,$1B,$11,$11,$31,$20
		.BYTE $20,$E0,	0,  4,	4,  4,$8E,$8A,$8A,$DB,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0, $A,$1B,$11,$11,$31,$20,$20,$E0, $A,$1B,$11,$11,$31,$20
		.BYTE $20,$E0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  4,	4,  4,$8E,$8A
		.BYTE $8A,$DB,	0,  4,	4,  4,$8E,$8A,$8A,$DB,	0,  4,	4,  4,$8E,$8A
		.BYTE $8A,$DB,$40,$40,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$40,$40,	0,  0,	0,  0
		.BYTE	0,  0,$50,$50,$70,$20,$20,$20,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$40,$40,	0,  0,	0,  0,	0,  0,$40,$40,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$50,$50,$70,$20,$20,$20
		.BYTE	0,  0,$50,$50,$70,$20,$20,$20,	0,  0,$50,$50,$70,$20,$20,$20
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	2,  2,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	2,  2,	0,  0,	0,  0,	0,  0,	2,  2,	0,  0,	0,  0,	0,  0
		.BYTE	2,  2,	2,  7,	5,  5, $D,  8,	8,$F8,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	2,  7,	5,  5, $D,  8
		.BYTE	8,$F8,	0,  0,	0,  0,$A0,$A0,$A0,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	2,  7,	5,  5, $D,  8,	8,$F8,	2,  7,	5,  5, $D,  8
		.BYTE	8,$F8,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$A0,$A0
		.BYTE $A0,$FF,	0,  0,	0,  0,$A0,$A0,$A0,$FF,	0,  0,	0,  0,$A0,$A0
		.BYTE $A0,$FF,$40,$40,$40,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$40,$40,$40,  0,	0,  0
		.BYTE	0,  0,$40,$40,$40,  0,	0,  0,	0,  0,$40,$40,$40,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  7,	4,  7,	4,  4
		.BYTE	4,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,$A0, $C,$6A,$2A,$2A
		.BYTE $2A,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$E0,$A0,$E0,$80
		.BYTE $E0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  3,	4,  4,	4,  4
		.BYTE	3,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$BA, $A,$3A,$AA
		.BYTE $39,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,$11,$90,$BB,$91,$91
		.BYTE $99,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$76,$55,$55,$55
		.BYTE $75,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  7,	4,  4,	4,  4
		.BYTE	7,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$BB,$8A,$BA,$AA
		.BYTE $3A,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$3B,$AA,$AB,$BA
		.BYTE $8B,$38,	0,  0,	0,  0,	0,  0,	0,  0,	0,  3,$AB,$B3,$A3,$20
		.BYTE $A3,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  7,	4,  4,	7,  4
		.BYTE	4,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  1,$B8,$AB,$29,$29
		.BYTE $39,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$37,$45,$75,$15
		.BYTE $67,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  6,$66,$56,$56,$50
		.BYTE $56,  0,	0,$7F,$7F,$77,$77,$77,$77,$77,$7F,$80,$80,$88,$88,$88
		.BYTE $88,$88,	0,$FF,$FF,$BC,$BB,$B7,$B7,$B9,$FF,  0,	0,$43,$44,$48
		.BYTE $48,$46,	0,$FF,$FF,$38,$DB,$FB,$FB,$F8,$FF,  0,	0,$C7,$24,  4
		.BYTE	4,  7,	0,$FE,$FE,$1E,$FE,$FE,$FE,$1E,$FE,  1,	1,$E1,	1,  1
		.BYTE	1,$E1,$7F,$80,$80,$88,$88,$88,$88,$88,	0,$7F,$7F,$77,$77,$77
		.BYTE $77,$77,$FF,  0,	0,$43,$44,$48,$48,$46,	0,$FF,$FF,$BC,$BB,$B7
		.BYTE $B7,$B9,$FF,  0,	0,$C7,$24,  4,	4,  7,	0,$FF,$FF,$38,$DB,$FB
		.BYTE $FB,$F8,$FE,  1,	1,$E1,	1,  1,	1,$E1,	0,$FE,$FE,$1E,$FE,$FE
		.BYTE $FE,$1E,	0,$7F,$79,$70,$60,$40,$7F,  0,$FF,$80,$86,$8F,$9F,$BF
		.BYTE $80,$FF,	0,$E0,$E0,$E0,$60,$20,$E0,  0,$F0,$10,$10,$10,$90,$D0
		.BYTE $10,$F0,$FF,$F0,$DF,$C0,$80,$80,$80,$80,$FF,$F0,$DF,$C0,$80,$80
		.BYTE $80,$80,$FF,  0,$FF,  0,	0,  0,	0,  0,$FF,  0,$FF,  0,	0,  0
		.BYTE	0,  0,$FF,  0,$F8,  0,	0,  0,	0,  0,$FF,  0,$F8,  0,	0,  0
		.BYTE	0,  0,$FF, $F,	3,  7,	5,  5,	5,  5,$FF, $F,	3,  7,	5,  5
		.BYTE	5,  5,$77,$77,$77,$7B,$7C,$7F,$7F,  0,$88,$88,$88,$84,$83,$80
		.BYTE $80,$7F,$BE,$BF,$BF,$77,$F8,$FF,$FF,  0,$41,$40,$40,$88,	7,  0
		.BYTE	0,$FF,$3B,$DB,$DB,$BB,$78,$FF,$FF,  0,$C4,$24,$24,$44,$87,  0
		.BYTE	0,$FF,$FE,$FE,$FE,$FE,$1E,$FE,$FE,  0,	1,  1,	1,  1,$E1,  1
		.BYTE	1,$FE,$88,$88,$88,$84,$83,$80,$80,$7F,$77,$77,$77,$7B,$7C,$7F
		.BYTE $7F,  0,$41,$40,$40,$88,	7,  0,	0,$FF,$BE,$BF,$BF,$77,$F8,$FF
		.BYTE $FF,  0,$C4,$24,$24,$44,$87,  0,	0,$FF,$3B,$DB,$DB,$BB,$78,$FF
		.BYTE $FF,  0,	1,  1,	1,  1,$E1,  1,	1,$FE,$FE,$FE,$FE,$FE,$1E,$FE
		.BYTE $FE,  0,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$80,$80,$80,$A0,$A0,$A0,$A0,$A0,$80,$80,$80,$A0,$A0,$A0
		.BYTE $A0,$A0,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE	5,  5,$7F,$80,$80,$8C,$92,$A2,$A0,$A0,	0,$7F,$7F,$73,$6D,$5D
		.BYTE $5F,$5F,$FF,  0,	0,$8B,$8A,$8A,$8A,$FB,	0,$FF,$FF,$74,$75,$75
		.BYTE $75,  4,$FF,  0,	0,$C6,	9,$11,$10,$D0,	0,$FF,$FF,$39,$F6,$EE
		.BYTE $EF,$2F,$FE,  1,	1,$45,$49,$49,$51,$61,	0,$FE,$FE,$BA,$B6,$B6
		.BYTE $AE,$9E,	0,$7F,$7F,$73,$6D,$5D,$5F,$5F,$7F,$80,$80,$8C,$92,$A2
		.BYTE $A0,$A0,	0,$FF,$FF,$74,$75,$75,$75,  4,$FF,  0,	0,$8B,$8A,$8A
		.BYTE $8A,$FB,	0,$FF,$FF,$39,$F6,$EE,$EF,$2F,$FF,  0,	0,$C6,	9,$11
		.BYTE $10,$D0,	0,$FE,$FE,$BA,$B6,$B6,$AE,$9E,$FE,  1,	1,$45,$49,$49
		.BYTE $51,$61,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0
		.BYTE $A0,$A0,	5,  5,	5,  5,	5,  1,	1,  1,	5,  5,	5,  5,	5,  1
		.BYTE	1,  1,$A0,$A0,$A2,$92,$8C,$80,$80,$7F,$5F,$5F,$5D,$6D,$73,$7F
		.BYTE $7F,  0,$8A,$8A,$8A,$8A,$8B,  0,	0,$FF,$75,$75,$75,$75,$74,$FF
		.BYTE $FF,  0,$10,$10,$11,  9,$C6,  0,	0,$FF,$EF,$EF,$EE,$F6,$39,$FF
		.BYTE $FF,  0,$61,$51,$49,$49,$45,  1,	1,$FE,$9E,$AE,$B6,$B6,$BA,$FE
		.BYTE $FE,  0,$5F,$5F,$5D,$6D,$73,$7F,$7F,  0,$A0,$A0,$A2,$92,$8C,$80
		.BYTE $80,$7F,$75,$75,$75,$75,$74,$FF,$FF,  0,$8A,$8A,$8A,$8A,$8B,  0
		.BYTE	0,$FF,$EF,$EF,$EE,$F6,$39,$FF,$FF,  0,$10,$10,$11,  9,$C6,  0
		.BYTE	0,$FF,$9E,$AE,$B6,$B6,$BA,$FE,$FE,  0,$61,$51,$49,$49,$45,  1
		.BYTE	1,$FE,$A0,$A0,$A0,$A0,$E0,$C0,$F0,$FF,$A0,$A0,$A0,$A0,$E0,$C0
		.BYTE $F0,$FF,	0,  0,	0,  0,	0,$1F,	0,$FF,	0,  0,	0,  0,	0,$1F
		.BYTE	0,$FF,	0,  0,	0,  0,	0,$FF,	0,$FF,	0,  0,	0,  0,	0,$FF
		.BYTE	0,$FF,	1,  1,	1,  1,	3,$FB, $F,$FF,	1,  1,	1,  1,	3,$FB
		.BYTE  $F,$FF,	0,$FF,$FF,$9B,$69,$6A,$6B,$6B,$FF,  0,	0,$64,$96,$95
		.BYTE $94,$94,	0,$FF,$FF,$A3,$2D,$AE,$AE,$A1,$FF,  0,	0,$5C,$D2,$51
		.BYTE $51,$5E,	0,$FE,$FE,$BA,$9A,$9A,$AA,$AA,$FE,  1,	1,$45,$65,$65
		.BYTE $55,$55,$FF,  0,	0,$64,$96,$95,$94,$94,	0,$FF,$FF,$9B,$69,$6A
		.BYTE $6B,$6B,$FF,  0,	0,$5C,$D2,$51,$51,$5E,	0,$FF,$FF,$A3,$2D,$AE
		.BYTE $AE,$A1,$FE,  1,	1,$45,$65,$65,$55,$55,	0,$FE,$FE,$BA,$9A,$9A
		.BYTE $AA,$AA,$FF,$F0,$C0,$E0,$A0,$A0,$A0,$A0,$FF,$F0,$C0,$E0,$A0,$A0
		.BYTE $A0,$A0,$FF,  0,$1F,  0,	0,  0,	0,  0,$FF,  0,$1F,  0,	0,  0
		.BYTE	0,  0,$FF, $F,$FB,  3,	1,  1,	1,  1,$FF, $F,$FB,  3,	1,  1
		.BYTE	1,  1,$6B,$6B,$6B,$6B,$9B,$FF,$FF,  0,$94,$94,$94,$94,$64,  0
		.BYTE	0,$FF,$AD,$AE,$AE,$AE,$A1,$FF,$FF,  0,$52,$51,$51,$51,$5E,  0
		.BYTE	0,$FF,$B2,$B2,$BA,$BA,$BA,$FE,$FE,  0,$4D,$4D,$45,$45,$45,  1
		.BYTE	1,$FE,$94,$94,$94,$94,$64,  0,	0,$FF,$6B,$6B,$6B,$6B,$9B,$FF
		.BYTE $FF,  0,$52,$51,$51,$51,$5E,  0,	0,$FF,$AD,$AE,$AE,$AE,$A1,$FF
		.BYTE $FF,  0,$4D,$4D,$45,$45,$45,  1,	1,$FE,$B2,$B2,$BA,$BA,$BA,$FE
		.BYTE $FE,  0,	1,  1,	1,  5,	5,  5,	5,  5,	1,  1,	1,  5,	5,  5
		.BYTE	5,  5,	0,$3F,$7F,$7F,$7F,$7F,$7F,$7F,	0,$3F,$7E,$7E,$7E,$7E
		.BYTE $7E,$7E,	0,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,$FF,$73,$23,	3,  2
		.BYTE $52,$52,	0,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,$FF,$B8,$19,$19,$49
		.BYTE $49,$48,	0,$FC,$FE,$FE,$FE,$FE,$FE,$FE,	0,$FC,$7E,$3E,$3E,$3E
		.BYTE $3E,$3E,	0,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,$FF,$12,$72,$72,$72
		.BYTE $72,$12,	0,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,$FF,$70,$73,$73,$73
		.BYTE $73,$70,	0,$FC,$FE,$FE,$FE,$FE,$FE,$FE,	0,$FC,$FE,$FE,$FE,$FE
		.BYTE $FE,$FE,	0,  0,	0,  0,	0,  0,	0, $F,	0,  0,	0,  0,	0,  0
		.BYTE	0, $F,	0,  0,	0,  0,	0,  0,	0,$F0,	0,  0,	0,  0,	0,  0
		.BYTE	0,$F0,$A0,$A0,$A0,$A0,$A0,$80,$80,$80,$A0,$A0,$A0,$A0,$A0,$80
		.BYTE $80,$80,$7F,$7F,$7F,$7F,$7F,$7F,$3F,  0,$7E,$7E,$7E,$7E,$7E,$7E
		.BYTE $3F,  0,$FF,$FF,$FF,$FF,$FF,$FF,$FF,  0,$72,$72,$72,$72,$72,$72
		.BYTE $FF,  0,$FF,$FF,$FF,$FF,$FF,$FF,$FF,  0,$48,  9,$49,$49,$49,$49
		.BYTE $FF,  0,$FE,$FE,$FE,$FE,$FE,$FE,$FC,  0,$7E,$FE,$FE,$FE,$FE,$FE
		.BYTE $FC,  0,$FF,$FF,$FF,$FF,$FF,$FF,$FF,  0,$73,$73,$73,$73,$10,$10
		.BYTE $FF,  0,$FE,$FE,$FE,$FE,$FE,$FE,$FC,  0,$FE,$FE,$FE,$FE,$FE,$FE
		.BYTE $FC,  0, $F,  0,	0,  0,	0,  0,	0,  0, $F,  0,	0,  0,	0,  0
		.BYTE	0,  0,$FF,  0,	0,  0,	0,  0,	0,  0,$FF,  0,	0,  0,	0,  0
		.BYTE	0,  0,$F0,  0,	0,  0,	0,  0,	0,  0,$F0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$80,$80,$80,$80,$C0,$DF,$F0,$FF,$80,$80,$80,$80,$C0,$DF
		.BYTE $F0,$FF,	0,  0,	0,  0,	0,$F8,	0,$FF,	0,  0,	0,  0,	0,$F8
		.BYTE	0,$FF,	5,  5,	5,  5,	7,  3, $F,$FF,	5,  5,	5,  5,	7,  3
		.BYTE  $F,$FF,	0,$3F,$7F,$7F,$7F,$7F,$7F,$7F,	0,$3F,$61,$64,$64,$64
		.BYTE $64,$61,	0,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,$FF,$EE,$C6,$D6,$92
		.BYTE $92,$92,	0,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,$FF,$19,$49,$49,$49
		.BYTE $49,$49,	0,$FC,$FE,$FE,$FE,$FE,$FE,$FE,	0,$FC,$8E,$26,$26,$26
		.BYTE $26,$26,	0,$3F,$7F,$7F,$7F,$7F,$7F,$7F,	0,$3F,$7C,$7C,$7C,$7C
		.BYTE $7C,$7C,	0,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,$FF,$24,$E4,$E4,$E4
		.BYTE $E4,$31,	0,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,$FF,$90,$9C,$9C,$9C
		.BYTE $9C,$9C,	0,$FC,$FE,$FE,$FE,$FE,$FE,$FE,	0,$FC,$3E,$FE,$FE,$FE
		.BYTE $FE,$FE,	0,$3F,$61,$64,$64,$64,$64,$61,	0,  0,$1E,$1B,$1B,$1B
		.BYTE $1B,$1E,	0,$FF,$EE,$C6,$D6,$92,$92,$92,	0,  0,$11,$39,$29,$6D
		.BYTE $6D,$6D,	0,$FF,$19,$49,$49,$49,$49,$49,	0,  0,$E6,$B6,$B6,$B6
		.BYTE $B6,$B6,	0,$FC,$8E,$26,$26,$26,$26,$26,	0,  0,$70,$D8,$D8,$D8
		.BYTE $D8,$D8,	0,$7F,$40,$60,$70,$79,$7F,  0,$FF,$80,$BF,$9F,$8F,$86
		.BYTE $80,$FF,	0,$E0,$20,$60,$E0,$E0,$E0,  0,$F0,$10,$D0,$90,$10,$10
		.BYTE $10,$F0,$FF,$F0,$FF,$E0,$A0,$A0,$A0,$A0,$FF,$F0,$FF,$E0,$A0,$A0
		.BYTE $A0,$A0,$FF,  0,$C0,  0,	0,  0,	0,  0,$FF,  0,$C0,  0,	0,  0
		.BYTE	0,  0,$FF,  0, $F,  0,	0,  0,	0,  0,$FF,  0, $F,  0,	0,  0
		.BYTE	0,  0,$FF, $F,$FF,  7,	5,  5,	5,  5,$FF, $F,$FF,  7,	5,  5
		.BYTE	5,  5,$7F,$7F,$7F,$7F,$7F,$7F,$3F,  0,$64,$64,$64,$64,$64,$64
		.BYTE $3F,  0,$FF,$FF,$FF,$FF,$FF,$FF,$FF,  0,$82,$92,$92,$92,$92,$92
		.BYTE $FF,  0,$FF,$FF,$FF,$FF,$FF,$FF,$FF,  0,$49,$49,$49,$49,	9,$19
		.BYTE $FF,  0,$FE,$FE,$FE,$FE,$FE,$FE,$FC,  0,$26,$26,$26,$26,	6,$8E
		.BYTE $FC,  0,$7F,$7F,$7F,$7F,$7F,$7F,$3F,  0,$7C,$7C,$7C,$7C,$7C,$7C
		.BYTE $3F,  0,$FF,$FF,$FF,$FF,$FF,$FF,$FF,  0,$E4,$E4,$E4,$E4,$24,$24
		.BYTE $FF,  0,$FF,$FF,$FF,$FF,$FF,$FF,$FF,  0,$9C,$9C,$9C,$9C,$9C,$9C
		.BYTE $FF,  0,$64,$64,$64,$64,$64,$64,$3F,  0,$1B,$1B,$1B,$1B,$1B,$1B
		.BYTE	0,  0,$82,$92,$92,$92,$92,$92,$FF,  0,$7D,$6D,$6D,$6D,$6D,$6D
		.BYTE	0,  0,$49,$49,$49,$49,	9,$19,$FF,  0,$B6,$B6,$B6,$B6,$F6,$E6
		.BYTE	0,  0,$26,$26,$26,$26,	6,$8E,$FC,  0,$D8,$D8,$D8,$D8,$F8,$70
		.BYTE	0,  0,	0,$7F,$7F,$7F,$7F,$7F,$7F,  0,$FF,$80,$80,$80,$80,$80
		.BYTE $80,$FF,	0,$E0,$E0,$E0,$E0,$E0,$E0,  0,$F0,$10,$10,$10,$10,$10
		.BYTE $10,$F0,$A0,$A0,$A0,$80,$80,$80,$80,$80,$A0,$A0,$A0,$80,$80,$80
		.BYTE $80,$80,	5,  5,	5,  1,	1,  1,	1,  1,	5,  5,	5,  1,	1,  1
		.BYTE	1,  1,	0,$20,$30,$38,$3C,$38,$30,$20,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$80,$80,$80,$80,$A0,$A0,$A0,$A0,$80,$80,$80,$80,$A0,$A0
		.BYTE $A0,$A0,	1,  1,	1,  1,	1,  5,	5,  5,	1,  1,	1,  1,	1,  5
		.BYTE	5,  5,$A0,$A0,$A0,$A0,$E0,$FF,$F0,$FF,$A0,$A0,$A0,$A0,$E0,$FF
		.BYTE $F0,$FF,	0,  0,	0,  0,	0,$C0,	0,$FF,	0,  0,	0,  0,	0,$C0
		.BYTE	0,$FF,	0,  0,	0,  0,	0, $F,	0,$FF,	0,  0,	0,  0,	0, $F
		.BYTE	0,$FF,	5,  5,	5,  5,	7,$FF, $F,$FF,	5,  5,	5,  5,	7,$FF
		.BYTE  $F,$FF,$FF,$A0,$DE,$A0,$A0,$A0,$A0,$80,$FF,$A0,$DE,$A0,$A0,$A0
		.BYTE $A0,$80,$FF,  5,$7B,  5,	5,  5,	5,  1,$FF,  5,$7B,  5,	5,  5
		.BYTE	5,  1,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,$18
		.BYTE $3C,$7E,	0,  0,	0,  0,	0,  0,	0,  0,$7E,$3C,$18,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,$80,$C0,$E0,$E0,$C0
		.BYTE $80,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  1,	3,  7,	7,  3
		.BYTE	1,  0,$80,$A0,$A0,$A0,$A0,$DE,$A0,$FF,$80,$A0,$A0,$A0,$A0,$DE
		.BYTE $A0,$FF,	1,  5,	5,  5,	5,$7B,	5,$FF,	1,  5,	5,  5,	5,$7B
		.BYTE	5,$FF,$18,$24,$66,$66,$66,$66,$24,$18,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$18,$38,$58,$18,$18,$18,$18,$7E,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$3C,$66,$66, $C,$18,$30,$62,$7E,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$3C,$66,	6,$1C,	6,$66,$66,$3C,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0, $C,$1C,$2C,$4C,$7E, $C, $C,$1E,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$7E,$60,$60,$7C,$66,  6,$66,$3C,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$3C,$66,$60,$7C,$66,$66,$66,$3C,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$7E,$46, $C, $C,$18,$18,$30,$30,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$3C,$66,$66,$3C,$66,$66,$66,$3C,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$3C,$66,$66,$66,$3E,  6,$66,$3C,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0
EnvItems_1BF23:	.BYTE $18, $C,	0,  0,	0,  0,	0,  0,	0,  1,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_01:93ADo
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,$80,$C0,	0,  0,	0,  0,	0,  0
		.BYTE	0,$80,	0,  0,	0,  0,	0,  1,	1,  3,	0,  0,	0,  0,	0,  0
		.BYTE	0,  1,	0,  0,	0,  0,$80,$C0,$C0,$E0,	0,  0,	0,  0,	0,$80
		.BYTE $80,$C0,	0,  0,	0,  0,	0,  2,	7,  3,	0,  0,	0,  0,	0,  0
		.BYTE	2,  1,	0,  0,	0,  0,	0,$40,$E0,$C0,	0,  0,	0
		.BYTE	0,  0,	0,$40,$80,  0,	0,  0,	0,  0,	3,  7,	3,  0,	0,  0
		.BYTE	0,  0,	0,  3,	1,  0,	0,  0,	0,$40,$E0,$E0,$E0,  0,	0,  0
		.BYTE	0,  0,$40,$C0,$C0,  0,	0,  0,	0,  1,	3,  3,	3,  0,	0,  0
		.BYTE	0,  0,	1,  1,	1,  0,	0,  0,	0,  0,$E0,$F0,$E0,  0,	0,  0
		.BYTE	0,  0,	0,$E0,$C0,  0,	0,  0,	0, $F, $F, $F, $F,  0,	0,  0
		.BYTE $1F,$15,$16,$1E,$1F,  0,	0,  0,	0,$40,$60,  0,$E0,  0,	0,  0
		.BYTE $C0,$E0,$F0,$F0,$F0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,$80,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  1,	1,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,$C0,$C0,$80,	0,  0,	0,  0,	0,$80,$80,  0
		.BYTE	0,  0,	0,  0,	0,  3,	7,  2,	0,  0,	0,  0,	0,  1,	2,  0
		.BYTE	0,  0,	0,  0,	0,$C0,$E0,$40,	0,  0,	0,  0,	0,$80,$40,  0
		.BYTE	0,  0,	0,  0,	0,  3,	3,  1,	0,  0,	0,  0,	0,  1,	1,  0
		.BYTE	0,  0,	0,  0,	0,$F0,$E0,  0,	0,  0,	0,  0,	0,$E0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  7,	3,  0,	0,  0,	0,  0,	0,  3,	0,  0
		.BYTE	0,  0,	0,  0,	0,$E0,$E0,$40,	0,  0,	0,  0,	0,$C0,$40,  0
		.BYTE	0,  0,	0,  0,	0, $F, $F, $F, $F,  0,	0,  0,	0,$12,$1D,$19
		.BYTE $1B,$1F,	0,  0,	0,$E0,$E0,$E0,$E0,  0,	0,  0,	0,$F0,$90,$B0
		.BYTE $30,$F0,	0,  0,	0
Barry1_1C0A5:	.BYTE $52,  8,	3,  4,	7,  5,	4,  7,	7,  4,	3,  7,	7,  6,	7,  7
					; DATA XREF: BANK_01:93AFo
		.BYTE	7,  7,$C0,$40,$C0,$C0,$C0,$80,$C0,$A0,$C0,$C0,$C0,$40,$40,$80
		.BYTE $C0,$E0,	0,  0,	1,  1,	1,  1,	3,  7,	0,  0,	1,  1,	1,  1
		.BYTE	3,  7,	0,$F0,$10,$F0,$70,$30,$E0,$10,	0,$F0,$F0,$F0,$90,$D0
		.BYTE $E0,$F0,	0,  0,	1,  1,	1,  1,	1,  3,	0,  0,	1,  1,	1,  1
		.BYTE	1,  3,	0,$F0,$10,$F0,$70,$30,$E0,$E0,	0,$F0,$F0,$F0,$90,$D0
		.BYTE $E0,$E0,	0,  0,	1,  1,	1,  1,	3,  4,	0,  0,	1,  1,	1,  1
		.BYTE	3,  7,	0,$F0,$10,$F0,$70,$30,$E0,$50,	0,$F0,$F0,$F0,$90,$D0
		.BYTE $E0,$F0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	4,  4,	3,  7,	5,  5,	7,  4,	7,  7,	2,  6,	7,  7
		.BYTE	7,  7,$A0,$A0,$A0,$C0,$E0,$E0,$C0,$40,$E0,$E0,$E0,$40,$20,$A0
		.BYTE $C0,$C0, $B,$1E,$1E, $F, $F,  7,	4,  6, $F,$13,$17, $B, $F,  7
		.BYTE	7,  7,$10,$F8,$7E,$BE,$6C,$10,$48,$DC,$F0,$98,$C6,$F2,$EC,$F0
		.BYTE $F8,$FC,	5, $F, $E, $E, $F,  7,	2,  2,	7, $B, $B, $B, $B,  7
		.BYTE	3,  3,$10,$10,$90,$F0,$F0,$F8,$38,$20,$F0,$F0,$F0,$90,$90,$C8
		.BYTE $F8,$E0, $C,$1F,$1E,$1F, $D,  5,	7,  6, $B,$11,$13,$13, $F,  7
		.BYTE	7,  7,$50,$98,$1E,$BE,$EC,$90,	8,$C4,$F0,$F8,$F6,$F2,$EC,$F0
		.BYTE $F8,$FC,	7,  8,	8,  8,	8,  7,	7,  7,	7, $F, $F, $F, $F,  7
		.BYTE	7,  7,$C0,$80,$80,$80,$C0,$E0,	0,$80,$C0,$80,$80,$80,$C0,$E0
		.BYTE	0,$80, $D,$70,$71,$6E,$40,  0,	0,  0, $F,$7F,$7F,$6E,$40,  0
		.BYTE	0,  0,$A4,$92,$12, $C, $E, $F,	0,  0,$BC,$9E,$1E, $C, $E, $F
		.BYTE	0,  0,	1,  1,	2,  2,	2,  7,	7,  3,	1,  1,	3,  3,	3,  7
		.BYTE	7,  3,$30,$F0,$50,$60,$40,$E0,$70,$80,$F0,$F0,$F0,$E0,$C0,$E0
		.BYTE $70,$80,$BC,$92,$12, $C, $E, $F,	0,  0,$BC,$9E,$1E, $C, $E, $F
		.BYTE	0,  0,	3,  4,	7,  5,$3E,$4B,$4F,$4E,	3,  7,	7,  6,$3D,$7E
		.BYTE $7F,$7B,$80,$40,$C0,$40,$F8,$A4,$E4,$E4,$80,$C0,$C0,$C0,$78,$FC
		.BYTE $FC,$BC,	3,  4,	7,  5, $E,$1B,$25,$27,	3,  7,	7,  6, $D,$1E
		.BYTE $3F,$3D,$80,$40,$C0,$70,$E8,$A8,$E8,$F8,$80,$C0,$C0,$F0,$78,$F8
		.BYTE $B8,$E8,	3,  4,	7,  5, $E,$1B,$2B,$2E,	3,  7,	7,  6, $D,$1E
		.BYTE $3F,$3B,$80,$40,$C0,$40,$E0,$B0,$A8,$E8,$80,$C0,$C0,$C0,$60,$F0
		.BYTE $F8,$B8,	1,  2,	3, $E,$17,$15,$17,$1F,	1,  3,	3, $F,$1E,$1F
		.BYTE $1D,$17,$C0,$20,$E0,$A0,$70,$D8,$A4,$E4,$C0,$E0,$E0,$60,$B0,$78
		.BYTE $FC,$BC,	1,  2,	3,  2,	7, $D,$15,$17,	1,  3,	3,  3,	6, $F
		.BYTE $1F,$1D,$C0,$20,$E0,$A0,$70,$D8,$D4,$74,$C0,$E0,$E0,$60,$B0,$78
		.BYTE $FC,$DC,$9E,$F7,$F8,$FF,$78,$78,$31,$11,$FF,$9F,$9F,$9F,$7F,$7F
		.BYTE $3F,$1F,$F2,$DE,$3E,$FE,$3C,$3C,$18,$10,$FE,$F2,$F2,$E2,$FC,$FC
		.BYTE $F8,$F0,$27,$3F,$3C,$3F,$1F,$1F,$17,$11,$3F,$27,$27,$23,$11,$19
		.BYTE $1F,$1F,$78,$BC,$7C,$BC,$3C,$30,$18,$F8,$E8,$E4,$F4,$F4,$FC,$F0
		.BYTE $F8,$F8,$2E,$3F,$3C,$3F,$1E,$1E,$1F,$11,$3F,$27,$27,$27,$13,$13
		.BYTE $1F,$1F,$F8,$FC,$3C,$FC,$3C,$38,$10,$10,$E8,$E4,$E4,$F4,$F4,$F8
		.BYTE $F0,$F0,$1E,$3D,$3E,$3D,$3C, $C,	8,  8,$17,$27,$2F,$2F,$3F, $F
		.BYTE  $F, $F,$E4,$FC,$3C,$FC,$F8,$F8,$E8,$88,$FC,$E4,$E4,$C4,$88,$98
		.BYTE $F8,$F8,$1F,$3F,$3C,$3F,$3C,$1C,	8,  8,$17,$27,$27,$2F,$2F,$1F
		.BYTE  $F, $F,$74,$FC,$3C,$FC,$78,$78,$F8,$88,$FC,$E4,$E4,$E4,$C8,$C8
		.BYTE $F8,$F8,$11,$1F,$21,$22,$22,$1C,$1C,$3C,$1F,$1F,$3F,$3E,$3E,$1C
		.BYTE $1C,$3C,$F8,$18,$10,$88,$88,$70,$70,$78,$F8,$F8,$F0,$F8,$F8,$70
		.BYTE $70,$78,$11,$1F,$11, $E,	0,  0,	0,  0,$1F,$1F,$1F, $E,	0,  0
		.BYTE	0,  0,$10,$10,$10,$88,$88,$70,$70,$70,$F0,$F0,$F0,$F8,$F8,$70
		.BYTE $70,$70,$11,$1F,$11,$11,$11, $E, $E,  0,$1F,$1F,$1F,$1F,$1F, $E
		.BYTE  $E,  0,$F8,$18,$10,$10,$10,$E0,$E0,$E0,$F8,$F8,$F0,$F0,$F0,$E0
		.BYTE $E0,$E0,	8, $F,	8,$11,$11, $E, $E, $E, $F, $F, $F,$1F,$1F, $E
		.BYTE  $E, $E,$FC,$8C,$88,$70,	0,  0,	0,  0,$FC,$FC,$F8,$70,	0,  0
		.BYTE	0,  0,	8, $F,	8,  8,	8,  7,	7,  7, $F, $F, $F, $F, $F,  7
		.BYTE	7,  7,$FC,$8C,$88,$88,$88,$70,$70,  0,$FC,$FC,$F8,$F8,$F8,$70
		.BYTE $70,  0,	3,  4,	4,  4,$3C,$4B,$48,$4F,	3,  7,	7,  7,$3F,$7F
		.BYTE $7F,$7F,$80,$40,$40,$40,$78,$A4,$24,$E4,$80,$C0,$C0,$C0,$F8,$FC
		.BYTE $FC,$FC,	3,  4,	4,  4, $C,$1B,$24,$27,	3,  7,	7,  7, $F,$1F
		.BYTE $3F,$3F,$80,$40,$40,$70,$68,$A8,$78,$B8,$80,$C0,$C0,$F0,$F8,$F8
		.BYTE $E8,$E8,	3,  4,	4,  4, $C,$1B,$28,$2F,	3,  7,	7,  7, $F,$1F
		.BYTE $3F,$3F,$80,$40,$40,$40,$60,$B0,$28,$A8,$80,$C0,$C0,$C0,$E0,$F0
		.BYTE $F8,$F8,	1,  2,	2, $E,$16,$15,$1E,$1D,	1,  3,	3, $F,$1F,$1F
		.BYTE $17,$17,$C0,$20,$20,$20,$30,$D8,$24,$E4,$C0,$E0,$E0,$E0,$F0,$F8
		.BYTE $FC,$FC,	1,  2,	2,  2,	6, $D,$14,$17,	1,  3,	3,  3,	7, $F
		.BYTE $1F,$1F,$C0,$20,$20,$20,$30,$D8,$14,$D4,$C0,$E0,$E0,$E0,$F0,$F8
		.BYTE $FC,$FC,$9C,$F7,$FC,$FF,$70,$70,$33,$11,$FF,$9F,$9F,$9F,$7F,$7F
		.BYTE $3F,$1F,$72,$DE,$7E,$FE,$1C,$1C,$98,$10,$FE,$F2,$F2,$E2,$FC,$FC
		.BYTE $F8,$F0,$4A,$7B,$7E,$7B,$30,$10,$3B,$37,$7F,$4F,$4F,$4F,$3F,$1F
		.BYTE $3F,$3F,$70,$A0,$70,$B0,$30,$10,$90,$10,$F0,$E0,$F0,$F0,$F0,$F0
		.BYTE $F0,$F0,$2C,$7F,$7C,$7F,$30,$10,$13,$31,$3F,$4F,$4F,$4F,$3F,$1F
		.BYTE $1F,$3F,$78,$BC,$7C,$FC,$3C,$38,$90,$10,$E8,$E4,$E4,$F4,$F4,$F8
		.BYTE $F0,$F0, $E,  5, $E, $D, $C,  8,$1D,$1B, $F,  7, $F, $F, $F, $F
		.BYTE $1F,$1F,$52,$DE,$7E,$DE, $C,  8,$C8,$88,$FE,$F2,$F2,$F2,$FC,$F8
		.BYTE $F8,$F8,$1E,$3F,$3E,$3F,$3C,$1C,	9,  8,$17,$27,$27,$2F,$2F,$1F
		.BYTE  $F, $F,$34,$DE,$3E,$FE, $C,  8,$C8,$88,$FC,$F2,$F2,$F2,$FC,$F8
		.BYTE $F8,$F8,$11,$1F, $F, $E,	0,  0,	0,  0,$1F,$1F, $F, $E,	0,  0
		.BYTE	0,  0,$10,$F0,$10,$88,$88,$70,$70,$70,$F0,$F0,$F0,$F8,$F8,$70
		.BYTE $70,$70,$3F,$11,$11,$11,$11, $E, $E,  0,$3F,$1F,$1F,$1F,$1F, $E
		.BYTE  $E,  0,$10,$F0,$10,$10,$10,$E0,$E0,$E0,$F0,$F0,$F0,$F0,$F0,$E0
		.BYTE $E0,$E0,	8,  8,	8,$11,$11, $E, $E, $E, $F, $F, $F,$1F,$1F, $E
		.BYTE  $E, $E,$88,$F8,$F0,$70,	0,  0,	0,  0,$F8,$F8,$F0,$70,	0,  0
		.BYTE	0,  0,$1F,$18,	8,  8,	8,  7,	7,  7,$1F,$1F, $F, $F, $F,  7
		.BYTE	7,  7,$88,$F8,$88,$88,$88,$70,$70,  0,$F8,$F8,$F8,$F8,$F8,$70
		.BYTE $70,  0
Barry2_1C5C7:	.BYTE $52,  8,	3,  4,	7,  5,	4,  7,	7,  4,	3,  7,	7,  6,	7,  7
					; DATA XREF: BANK_01:93B1o
		.BYTE	7,  7,$C0,$40,$C0,$C0,$C0,$80,$C0,$A0,$C0,$C0,$C0,$40,$40,$80
		.BYTE $C0,$E0,	0,  0,	1,  1,	1,  1,	3,  7,	0,  0,	1,  1,	1,  1
		.BYTE	3,  7,	0,$F0,$10,$F0,$70,$30,$E0,$10,	0,$F0,$F0,$F0,$90,$D0
		.BYTE $E0,$F0,	0,  0,	1,  1,	1,  1,	1,  3,	0,  0,	1,  1,	1,  1
		.BYTE	1,  3,	0,$F0,$10,$F0,$70,$30,$E0,$E0,	0,$F0,$F0,$F0,$90,$D0
		.BYTE $E0,$E0,	0,  0,	1,  1,	1,  1,	3,  4,	0,  0,	1,  1,	1,  1
		.BYTE	3,  7,	0,$F0,$10,$F0,$70,$30,$E0,$50,	0,$F0,$F0,$F0,$90,$D0
		.BYTE $E0,$F0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	4,  4,	3,  7,	5,  5,	7,  4,	7,  7,	2,  6,	7,  7
		.BYTE	7,  7,$A0,$A0,$A0,$C0,$E0,$E0,$C0,$40,$E0,$E0,$E0,$40,$20,$A0
		.BYTE $C0,$C0, $B,$1E,$1E, $F, $F,  7,	4,  6, $F,$13,$17, $B, $F,  7
		.BYTE	7,  7,$10,$F8,$7E,$BE,$6C,$10,$48,$DC,$F0,$98,$C6,$F2,$EC,$F0
		.BYTE $F8,$FC,	5, $F, $E, $E, $F,  7,	2,  2,	7, $B, $B, $B, $B,  7
		.BYTE	3,  3,$10,$10,$90,$F0,$F0,$F8,$38,$20,$F0,$F0,$F0,$90,$90,$C8
		.BYTE $F8,$E0, $C,$1F,$1E,$1F, $D,  5,	7,  6, $B,$11,$13,$13, $F,  7
		.BYTE	7,  7,$50,$98,$1E,$BE,$EC,$90,	8,$C4,$F0,$F8,$F6,$F2,$EC,$F0
		.BYTE $F8,$FC,	7,  8,	8,  8,	8,  7,	7,  7,	7, $F, $F, $F, $F,  7
		.BYTE	7,  7,$C0,$80,$80,$80,$C0,$E0,	0,$80,$C0,$80,$80,$80,$C0,$E0
		.BYTE	0,$80, $D,$70,$71,$6E,$40,  0,	0,  0, $F,$7F,$7F,$6E,$40,  0
		.BYTE	0,  0,$A4,$92,$12, $C, $E, $F,	0,  0,$BC,$9E,$1E, $C, $E, $F
		.BYTE	0,  0,	1,  1,	2,  2,	2,  7,	7,  3,	1,  1,	3,  3,	3,  7
		.BYTE	7,  3,$30,$F0,$50,$60,$40,$E0,$70,$80,$F0,$F0,$F0,$E0,$C0,$E0
		.BYTE $70,$80,$BC,$92,$12, $C, $E, $F,	0,  0,$BC,$9E,$1E, $C, $E, $F
		.BYTE	0,  0,	3,  4,	7,  5,$3E,$4B,$4F,$4E,	3,  7,	7,  6,$3D,$7E
		.BYTE $7F,$7B,$80,$40,$C0,$40,$F8,$A4,$E4,$E4,$80,$C0,$C0,$C0,$78,$FC
		.BYTE $FC,$BC,	3,  4,	7,  5, $E,$1B,$25,$27,	3,  7,	7,  6, $D,$1E
		.BYTE $3F,$3D,$80,$40,$C0,$70,$E8,$A8,$E8,$F8,$80,$C0,$C0,$F0,$78,$F8
		.BYTE $B8,$E8,	3,  4,	7,  5, $E,$1B,$2B,$2E,	3,  7,	7,  6, $D,$1E
		.BYTE $3F,$3B,$80,$40,$C0,$40,$E0,$B0,$A8,$E8,$80,$C0,$C0,$C0,$60,$F0
		.BYTE $F8,$B8,	1,  2,	3, $E,$17,$15,$17,$1F,	1,  3,	3, $F,$1E,$1F
		.BYTE $1D,$17,$C0,$20,$E0,$A0,$70,$D8,$A4,$E4,$C0,$E0,$E0,$60,$B0,$78
		.BYTE $FC,$BC,	1,  2,	3,  2,	7, $D,$15,$17,	1,  3,	3,  3,	6, $F
		.BYTE $1F,$1D,$C0,$20,$E0,$A0,$70,$D8,$D4,$74,$C0,$E0,$E0,$60,$B0,$78
		.BYTE $FC,$DC,$9E,$F7,$F8,$FF,$78,$78,$31,$11,$FF,$9F,$9F,$9F,$7F,$7F
		.BYTE $3F,$1F,$F2,$DE,$3E,$FE,$3C,$3C,$18,$10,$FE,$F2,$F2,$E2,$FC,$FC
		.BYTE $F8,$F0,$27,$3F,$3C,$3F,$1F,$1F,$17,$11,$3F,$27,$27,$23,$11,$19
		.BYTE $1F,$1F,$78,$BC,$7C,$BC,$3C,$30,$18,$F8,$E8,$E4,$F4,$F4,$FC,$F0
		.BYTE $F8,$F8,$2E,$3F,$3C,$3F,$1E,$1E,$1F,$11,$3F,$27,$27,$27,$13,$13
		.BYTE $1F,$1F,$F8,$FC,$3C,$FC,$3C,$38,$10,$10,$E8,$E4,$E4,$F4,$F4,$F8
		.BYTE $F0,$F0,$1E,$3D,$3E,$3D,$3C, $C,	8,  8,$17,$27,$2F,$2F,$3F, $F
		.BYTE  $F, $F,$E4,$FC,$3C,$FC,$F8,$F8,$E8,$88,$FC,$E4,$E4,$C4,$88,$98
		.BYTE $F8,$F8,$1F,$3F,$3C,$3F,$3C,$1C,	8,  8,$17,$27,$27,$2F,$2F,$1F
		.BYTE  $F, $F,$74,$FC,$3C,$FC,$78,$78,$F8,$88,$FC,$E4,$E4,$E4,$C8,$C8
		.BYTE $F8,$F8,$11,$1F,$21,$22,$22,$1C,$1C,$3C,$1F,$1F,$3F,$3E,$3E,$1C
		.BYTE $1C,$3C,$F8,$18,$10,$88,$88,$70,$70,$78,$F8,$F8,$F0,$F8,$F8,$70
		.BYTE $70,$78,$11,$1F,$11, $E,	0,  0,	0,  0,$1F,$1F,$1F, $E,	0,  0
		.BYTE	0,  0,$10,$10,$10,$88,$88,$70,$70,$70,$F0,$F0,$F0,$F8,$F8,$70
		.BYTE $70,$70,$11,$1F,$11,$11,$11, $E, $E,  0,$1F,$1F,$1F,$1F,$1F, $E
		.BYTE  $E,  0,$F8,$18,$10,$10,$10,$E0,$E0,$E0,$F8,$F8,$F0,$F0,$F0,$E0
		.BYTE $E0,$E0,	8, $F,	8,$11,$11, $E, $E, $E, $F, $F, $F,$1F,$1F, $E
		.BYTE  $E, $E,$FC,$8C,$88,$70,	0,  0,	0,  0,$FC,$FC,$F8,$70,	0,  0
		.BYTE	0,  0,	8, $F,	8,  8,	8,  7,	7,  7, $F, $F, $F, $F, $F,  7
		.BYTE	7,  7,$FC,$8C,$88,$88,$88,$70,$70,  0,$FC,$FC,$F8,$F8,$F8,$70
		.BYTE $70,  0,	3,  4,	4,  4,$3C,$4B,$48,$4F,	3,  7,	7,  7,$3F,$7F
		.BYTE $7F,$7F,$80,$40,$40,$40,$78,$A4,$24,$E4,$80,$C0,$C0,$C0,$F8,$FC
		.BYTE $FC,$FC,	3,  4,	4,  4, $C,$1B,$24,$27,	3,  7,	7,  7, $F,$1F
		.BYTE $3F,$3F,$80,$40,$40,$70,$68,$A8,$78,$B8,$80,$C0,$C0,$F0,$F8,$F8
		.BYTE $E8,$E8,	3,  4,	4,  4, $C,$1B,$28,$2F,	3,  7,	7,  7, $F,$1F
		.BYTE $3F,$3F,$80,$40,$40,$40,$60,$B0,$28,$A8,$80,$C0,$C0,$C0,$E0,$F0
		.BYTE $F8,$F8,	1,  2,	2, $E,$16,$15,$1E,$1D,	1,  3,	3, $F,$1F,$1F
		.BYTE $17,$17,$C0,$20,$20,$20,$30,$D8,$24,$E4,$C0,$E0,$E0,$E0,$F0,$F8
		.BYTE $FC,$FC,	1,  2,	2,  2,	6, $D,$14,$17,	1,  3,	3,  3,	7, $F
		.BYTE $1F,$1F,$C0,$20,$20,$20,$30,$D8,$14,$D4,$C0,$E0,$E0,$E0,$F0,$F8
		.BYTE $FC,$FC,$9C,$F7,$FC,$FF,$70,$70,$33,$11,$FF,$9F,$9F,$9F,$7F,$7F
		.BYTE $3F,$1F,$72,$DE,$7E,$FE,$1C,$1C,$98,$10,$FE,$F2,$F2,$E2,$FC,$FC
		.BYTE $F8,$F0,$4A,$7B,$7E,$7B,$30,$10,$3B,$37,$7F,$4F,$4F,$4F,$3F,$1F
		.BYTE $3F,$3F,$70,$A0,$70,$B0,$30,$10,$90,$10,$F0,$E0,$F0,$F0,$F0,$F0
		.BYTE $F0,$F0,$2C,$7F,$7C,$7F,$30,$10,$13,$31,$3F,$4F,$4F,$4F,$3F,$1F
		.BYTE $1F,$3F,$78,$BC,$7C,$FC,$3C,$38,$90,$10,$E8,$E4,$E4,$F4,$F4,$F8
		.BYTE $F0,$F0, $E,  5, $E, $D, $C,  8,$1D,$1B, $F,  7, $F, $F, $F, $F
		.BYTE $1F,$1F,$52,$DE,$7E,$DE, $C,  8,$C8,$88,$FE,$F2,$F2,$F2,$FC,$F8
		.BYTE $F8,$F8,$1E,$3F,$3E,$3F,$3C,$1C,	9,  8,$17,$27,$27,$2F,$2F,$1F
		.BYTE  $F, $F,$34,$DE,$3E,$FE, $C,  8,$C8,$88,$FC,$F2,$F2,$F2,$FC,$F8
		.BYTE $F8,$F8,$11,$1F, $F, $E,	0,  0,	0,  0,$1F,$1F, $F, $E,	0,  0
		.BYTE	0,  0,$10,$F0,$10,$88,$88,$70,$70,$70,$F0,$F0,$F0,$F8,$F8,$70
		.BYTE $70,$70,$3F,$11,$11,$11,$11, $E, $E,  0,$3F,$1F,$1F,$1F,$1F, $E
		.BYTE  $E,  0,$10,$F0,$10,$10,$10,$E0,$E0,$E0,$F0,$F0,$F0,$F0,$F0,$E0
		.BYTE $E0,$E0,	8,  8,	8,$11,$11, $E, $E, $E, $F, $F, $F,$1F,$1F, $E
		.BYTE  $E, $E,$88,$F8,$F0,$70,	0,  0,	0,  0,$F8,$F8,$F0,$70,	0,  0
		.BYTE	0,  0,$1F,$18,	8,  8,	8,  7,	7,  7,$1F,$1F, $F, $F, $F,  7
		.BYTE	7,  7,$88,$F8,$88,$88,$88,$70,$70,  0,$F8,$F8,$F8,$F8,$F8,$70
		.BYTE $70,  0
Barry3_1CAE9:	.BYTE $52,  8,	3,  4,	7,  5,	4,  7,	7,  4,	3,  7,	7,  6,	7,  7
					; DATA XREF: BANK_01:93B3o
		.BYTE	7,  7,$C0,$40,$C0,$C0,$C0,$80,$C0,$A0,$C0,$C0,$C0,$40,$40,$80
		.BYTE $C0,$E0,	0,  0,	1,  1,	1,  1,	3,  7,	0,  0,	1,  1,	1,  1
		.BYTE	3,  7,	0,$F0,$10,$F0,$70,$30,$E0,$10,	0,$F0,$F0,$F0,$90,$D0
		.BYTE $E0,$F0,	0,  0,	1,  1,	1,  1,	1,  3,	0,  0,	1,  1,	1,  1
		.BYTE	1,  3,	0,$F0,$10,$F0,$70,$30,$E0,$E0,	0,$F0,$F0,$F0,$90,$D0
		.BYTE $E0,$E0,	0,  0,	1,  1,	1,  1,	3,  4,	0,  0,	1,  1,	1,  1
		.BYTE	3,  7,	0,$F0,$10,$F0,$70,$30,$E0,$50,	0,$F0,$F0,$F0,$90,$D0
		.BYTE $E0,$F0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	4,  4,	3,  7,	5,  5,	7,  4,	7,  7,	2,  6,	7,  7
		.BYTE	7,  7,$A0,$A0,$A0,$C0,$E0,$E0,$C0,$40,$E0,$E0,$E0,$40,$20,$A0
		.BYTE $C0,$C0, $B,$1E,$1E, $F, $F,  7,	4,  6, $F,$13,$17, $B, $F,  7
		.BYTE	7,  7,$10,$F8,$7E,$BE,$6C,$10,$48,$DC,$F0,$98,$C6,$F2,$EC,$F0
		.BYTE $F8,$FC,	5, $F, $E, $E, $F,  7,	2,  2,	7, $B, $B, $B, $B,  7
		.BYTE	3,  3,$10,$10,$90,$F0,$F0,$F8,$38,$20,$F0,$F0,$F0,$90,$90,$C8
		.BYTE $F8,$E0, $C,$1F,$1E,$1F, $D,  5,	7,  6, $B,$11,$13,$13, $F,  7
		.BYTE	7,  7,$50,$98,$1E,$BE,$EC,$90,	8,$C4,$F0,$F8,$F6,$F2,$EC,$F0
		.BYTE $F8,$FC,	7,  8,	8,  8,	8,  7,	7,  7,	7, $F, $F, $F, $F,  7
		.BYTE	7,  7,$C0,$80,$80,$80,$C0,$E0,	0,$80,$C0,$80,$80,$80,$C0,$E0
		.BYTE	0,$80, $D,$70,$71,$6E,$40,  0,	0,  0, $F,$7F,$7F,$6E,$40,  0
		.BYTE	0,  0,$A4,$92,$12, $C, $E, $F,	0,  0,$BC,$9E,$1E, $C, $E, $F
		.BYTE	0,  0,	1,  1,	2,  2,	2,  7,	7,  3,	1,  1,	3,  3,	3,  7
		.BYTE	7,  3,$30,$F0,$50,$60,$40,$E0,$70,$80,$F0,$F0,$F0,$E0,$C0,$E0
		.BYTE $70,$80,$BC,$92,$12, $C, $E, $F,	0,  0,$BC,$9E,$1E, $C, $E, $F
		.BYTE	0,  0,	3,  4,	7,  5,$3E,$4B,$4F,$4E,	3,  7,	7,  6,$3D,$7E
		.BYTE $7F,$7B,$80,$40,$C0,$40,$F8,$A4,$E4,$E4,$80,$C0,$C0,$C0,$78,$FC
		.BYTE $FC,$BC,	3,  4,	7,  5, $E,$1B,$25,$27,	3,  7,	7,  6, $D,$1E
		.BYTE $3F,$3D,$80,$40,$C0,$70,$E8,$A8,$E8,$F8,$80,$C0,$C0,$F0,$78,$F8
		.BYTE $B8,$E8,	3,  4,	7,  5, $E,$1B,$2B,$2E,	3,  7,	7,  6, $D,$1E
		.BYTE $3F,$3B,$80,$40,$C0,$40,$E0,$B0,$A8,$E8,$80,$C0,$C0,$C0,$60,$F0
		.BYTE $F8,$B8,	1,  2,	3, $E,$17,$15,$17,$1F,	1,  3,	3, $F,$1E,$1F
		.BYTE $1D,$17,$C0,$20,$E0,$A0,$70,$D8,$A4,$E4,$C0,$E0,$E0,$60,$B0,$78
		.BYTE $FC,$BC,	1,  2,	3,  2,	7, $D,$15,$17,	1,  3,	3,  3,	6, $F
		.BYTE $1F,$1D,$C0,$20,$E0,$A0,$70,$D8,$D4,$74,$C0,$E0,$E0,$60,$B0,$78
		.BYTE $FC,$DC,$9E,$F7,$F8,$FF,$78,$78,$31,$11,$FF,$9F,$9F,$9F,$7F,$7F
		.BYTE $3F,$1F,$F2,$DE,$3E,$FE,$3C,$3C,$18,$10,$FE,$F2,$F2,$E2,$FC,$FC
		.BYTE $F8,$F0,$27,$3F,$3C,$3F,$1F,$1F,$17,$11,$3F,$27,$27,$23,$11,$19
		.BYTE $1F,$1F,$78,$BC,$7C,$BC,$3C,$30,$18,$F8,$E8,$E4,$F4,$F4,$FC,$F0
		.BYTE $F8,$F8,$2E,$3F,$3C,$3F,$1E,$1E,$1F,$11,$3F,$27,$27,$27,$13,$13
		.BYTE $1F,$1F,$F8,$FC,$3C,$FC,$3C,$38,$10,$10,$E8,$E4,$E4,$F4,$F4,$F8
		.BYTE $F0,$F0,$1E,$3D,$3E,$3D,$3C, $C,	8,  8,$17,$27,$2F,$2F,$3F, $F
		.BYTE  $F, $F,$E4,$FC,$3C,$FC,$F8,$F8,$E8,$88,$FC,$E4,$E4,$C4,$88,$98
		.BYTE $F8,$F8,$1F,$3F,$3C,$3F,$3C,$1C,	8,  8,$17,$27,$27,$2F,$2F,$1F
		.BYTE  $F, $F,$74,$FC,$3C,$FC,$78,$78,$F8,$88,$FC,$E4,$E4,$E4,$C8,$C8
		.BYTE $F8,$F8,$11,$1F,$21,$22,$22,$1C,$1C,$3C,$1F,$1F,$3F,$3E,$3E,$1C
		.BYTE $1C,$3C,$F8,$18,$10,$88,$88,$70,$70,$78,$F8,$F8,$F0,$F8,$F8,$70
		.BYTE $70,$78,$11,$1F,$11, $E,	0,  0,	0,  0,$1F,$1F,$1F, $E,	0,  0
		.BYTE	0,  0,$10,$10,$10,$88,$88,$70,$70,$70,$F0,$F0,$F0,$F8,$F8,$70
		.BYTE $70,$70,$11,$1F,$11,$11,$11, $E, $E,  0,$1F,$1F,$1F,$1F,$1F, $E
		.BYTE  $E,  0,$F8,$18,$10,$10,$10,$E0,$E0,$E0,$F8,$F8,$F0,$F0,$F0,$E0
		.BYTE $E0,$E0,	8, $F,	8,$11,$11, $E, $E, $E, $F, $F, $F,$1F,$1F, $E
		.BYTE  $E, $E,$FC,$8C,$88,$70,	0,  0,	0,  0,$FC,$FC,$F8,$70,	0,  0
		.BYTE	0,  0,	8, $F,	8,  8,	8,  7,	7,  7, $F, $F, $F, $F, $F,  7
		.BYTE	7,  7,$FC,$8C,$88,$88,$88,$70,$70,  0,$FC,$FC,$F8,$F8,$F8,$70
		.BYTE $70,  0,	3,  4,	4,  4,$3C,$4B,$48,$4F,	3,  7,	7,  7,$3F,$7F
		.BYTE $7F,$7F,$80,$40,$40,$40,$78,$A4,$24,$E4,$80,$C0,$C0,$C0,$F8,$FC
		.BYTE $FC,$FC,	3,  4,	4,  4, $C,$1B,$24,$27,	3,  7,	7,  7, $F,$1F
		.BYTE $3F,$3F,$80,$40,$40,$70,$68,$A8,$78,$B8,$80,$C0,$C0,$F0,$F8,$F8
		.BYTE $E8,$E8,	3,  4,	4,  4, $C,$1B,$28,$2F,	3,  7,	7,  7, $F,$1F
		.BYTE $3F,$3F,$80,$40,$40,$40,$60,$B0,$28,$A8,$80,$C0,$C0,$C0,$E0,$F0
		.BYTE $F8,$F8,	1,  2,	2, $E,$16,$15,$1E,$1D,	1,  3,	3, $F,$1F,$1F
		.BYTE $17,$17,$C0,$20,$20,$20,$30,$D8,$24,$E4,$C0,$E0,$E0,$E0,$F0,$F8
		.BYTE $FC,$FC,	1,  2,	2,  2,	6, $D,$14,$17,	1,  3,	3,  3,	7, $F
		.BYTE $1F,$1F,$C0,$20,$20,$20,$30,$D8,$14,$D4,$C0,$E0,$E0,$E0,$F0,$F8
		.BYTE $FC,$FC,$9C,$F7,$FC,$FF,$70,$70,$33,$11,$FF,$9F,$9F,$9F,$7F,$7F
		.BYTE $3F,$1F,$72,$DE,$7E,$FE,$1C,$1C,$98,$10,$FE,$F2,$F2,$E2,$FC,$FC
		.BYTE $F8,$F0,$4A,$7B,$7E,$7B,$30,$10,$3B,$37,$7F,$4F,$4F,$4F,$3F,$1F
		.BYTE $3F,$3F,$70,$A0,$70,$B0,$30,$10,$90,$10,$F0,$E0,$F0,$F0,$F0,$F0
		.BYTE $F0,$F0,$2C,$7F,$7C,$7F,$30,$10,$13,$31,$3F,$4F,$4F,$4F,$3F,$1F
		.BYTE $1F,$3F,$78,$BC,$7C,$FC,$3C,$38,$90,$10,$E8,$E4,$E4,$F4,$F4,$F8
		.BYTE $F0,$F0, $E,  5, $E, $D, $C,  8,$1D,$1B, $F,  7, $F, $F, $F, $F
		.BYTE $1F,$1F,$52,$DE,$7E,$DE, $C,  8,$C8,$88,$FE,$F2,$F2,$F2,$FC,$F8
		.BYTE $F8,$F8,$1E,$3F,$3E,$3F,$3C,$1C,	9,  8,$17,$27,$27,$2F,$2F,$1F
		.BYTE  $F, $F,$34,$DE,$3E,$FE, $C,  8,$C8,$88,$FC,$F2,$F2,$F2,$FC,$F8
		.BYTE $F8,$F8,$11,$1F, $F, $E,	0,  0,	0,  0,$1F,$1F, $F, $E,	0,  0
		.BYTE	0,  0,$10,$F0,$10,$88,$88,$70,$70,$70,$F0,$F0,$F0,$F8,$F8,$70
		.BYTE $70,$70,$3F,$11,$11,$11,$11, $E, $E,  0,$3F,$1F,$1F,$1F,$1F, $E
		.BYTE  $E,  0,$10,$F0,$10,$10,$10,$E0,$E0,$E0,$F0,$F0,$F0,$F0,$F0,$E0
		.BYTE $E0,$E0,	8,  8,	8,$11,$11, $E, $E, $E, $F, $F, $F,$1F,$1F, $E
		.BYTE  $E, $E,$88,$F8,$F0,$70,	0,  0,	0,  0,$F8,$F8,$F0,$70,	0,  0
		.BYTE	0,  0,$1F,$18,	8,  8,	8,  7,	7,  7,$1F,$1F, $F, $F, $F,  7
		.BYTE	7,  7,$88,$F8,$88,$88,$88,$70,$70,  0,$F8,$F8,$F8,$F8,$F8,$70
		.BYTE $70,  0
Enrico_1D00B:	.BYTE  $E,  2,	0,$1E,$22,$3E,$3C,$3C,$47,$27,	0,$1E,$3E,$22,$24,$3C
					; DATA XREF: BANK_01:93B5o
		.BYTE $7F,$3E,	0,  0,	0,  0,	0,$78,$F8,$F0,	0,  0,	0,  0,	0,$78
		.BYTE $88,$70,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0, $F,	8, $E,$1F,$1E,$2F,$27,	0, $F, $F,  9,$11,$1E
		.BYTE $3F,$3E,	0,$80,$80,$80,	0,  0,$F8,$F8,	0,$80,$80,$80,	0,  0
		.BYTE $F8,  8,	0,  0,	0,  0,	0,  1,	3,  6,	0,  0,	0,  0,	0,  1
		.BYTE	3,  7,	0,  0,	0,  0,	0,$F0,$E8,$E8,	0,  0,	0,  0,	0,$F0
		.BYTE $F8,$98,$3F,$3E,$3E,$3A,$3B,$3C,$7C,$7D,$3F,$2E,$2E,$2E,$2F,$2F
		.BYTE $4F,$7F,$80,$38,$44,$82,$13,$39,$78,$FF,$80,$38,$7C,$FE,$FF,$FF
		.BYTE $FF,$FF,	0,  0,	0,$60,$E0,$E0,$E0,$C0,	0,  0,	0,$60,$E0,$E0
		.BYTE $E0,$C0,$3F,$3E,$3C,$3E,$3B,$3C,$7C,$7D,$3F,$3E,$2C,$2E,$2F,$2F
		.BYTE $4F,$7F,$F0,$38,$44,$82,$13,$39,$78,$FF,$F0,$38,$7C,$FE,$FF,$FF
		.BYTE $FF,$FF,	4, $F,$1F,$1F,$1F,$3C,$7C,$7D,	7, $D,$1D,$1B,$17,$37
		.BYTE $4F,$7F,$C0,$F8,$C4,$82,$13,$39,$78,$FF,$B0,$F8,$FC,$FE,$FF,$FF
		.BYTE $FF,$FF
Enemy3_1D0ED:	.BYTE $3B,  8,	8,  1,$2B,  3, $E,$3F,$1F,$1F,	0,  0,	1,  0,	3,  1
					; DATA XREF: BANK_01:93B7o
		.BYTE	0,  2,$C0,$E8,$E0,$F4,$F0,$F4,$F4,$F0,	0,$80,$C0,$A0,$80,$80
		.BYTE $C0,  0,	0,  0,$11,  7,$2B, $E,$1F,$5F,	0,  0,	0,  1,	0,  3
		.BYTE	1,  0,	0,$D0,$E0,$E8,$F0,$F8,$F4,$F0,	0,  0,$80,$C0,$A0,$80
		.BYTE $80,$C0,	0, $B,	3,$23,	6,$5F,$1F,$1F,	0,  0,	1,  0,	3,  1
		.BYTE	0,  2,$C0,$E0,$E0,$F0,$F0,$F4,$F2,$FA,	0,$80,$C0,$A0,$80,$80
		.BYTE $C0,  0,	0,  4,	1,$53,	7, $E,$3F,$1F,	0,  0,	0,  1,	0,  3
		.BYTE	1,  0,	0,$C0,$E0,$E2,$F0,$F4,$F0,$F4,	0,  0,$80,$C0,$A0,$80
		.BYTE $80,$C0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$3F,$3F,$3F,$3F,$3F,$3F,$3F,$3F,	0,  0,	3,$11,$11,$10
		.BYTE $10,$10,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8,	0,  0,$80,$80,$90,$10
		.BYTE $10,$10,$1F,$3F,$3F,$3F,$3F,$3F,$3F,$3F,	2,  0,	0,$13,$11,$10
		.BYTE $10,$10,$FC,$F8,$F8,$F8,$F8,$F8,$F8,$F8,	0,  0,	0,$80,$80,$10
		.BYTE $10,$10,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8,	0,  0,$80,$90,$90,$10
		.BYTE $10,$10,$F8,$F8,$FA,$F8,$F8,$F8,$F8,$F8,	0,  0,	0,$80,$80,$10
		.BYTE $10,$10,$1F, $F,	7,  7,	7, $F, $F,  6,	8,  0,	0,  0,	2,  7
		.BYTE	6,  0,$F8,$F8,$F8,$F8,$BC,$BC,$3C,$18,$10,  0,	0,$20,	8,$18
		.BYTE $18,  0,$3F,$3F,$1F,  7,	7, $F, $F,  6,	0,$10,	0,  0,	2,  7
		.BYTE	6,  0,$F8,$F8,$F8,$F8,$F8,$F8,$78,$38,$10,$10,	0,$40,$10,$30
		.BYTE $30,  0,$3F,$3F,$1F, $F, $F,$1F,$1E, $C,	0,$10,	0,  0,	4, $E
		.BYTE  $C,  0,$F8,$F8,$F8,$F8,$78,$78,$78,$38,$10,  0,	0,$40,$10,$30
		.BYTE $30,  0,$3F,$3F,$1F,  7, $F,$1F,$1E, $C,	0,$10,	0,  0,	6, $E
		.BYTE  $C,  0,$F8,$F8,$F8,$F8,$3C,$3C,$3C,$18,$10,$10,	0,$20,	8,$18
		.BYTE $18,  0,	6, $F, $F,$1F,$4F,$17, $F,$3F,	0,  0,	0,  0,	3,  0
		.BYTE	1,  0,	0,  8,$40,$10,$C0,$E8,$F8,$F8,	0,  0,	0,  0,	0,$C0
		.BYTE $20,  0,	0,  6, $F,$2F,$1F,$2F,	7, $F,	0,  0,	0,  0,	0,  3
		.BYTE	0,  1,	0,  0,$50,$20,	8,$E0,$F0,$F8,	0,  0,	0,  0,	0,  0
		.BYTE $E0,  0,	6, $F, $F, $F,$2F,  7,$2F,$1F,	0,  0,	0,  0,	3,  0
		.BYTE	1,  0,	0,  0,$24,  0,$D0,$E0,$F0,$F8,	0,  0,	0,  0,	0,$C0
		.BYTE $20,  0,	0,  6, $F, $F,$2F,$1F,$47, $F,	0,  0,	0,  0,	0,  3
		.BYTE	0,  1,	0,  0,$20,$50,	0,$E8,$F0,$F8,	0,  0,	0,  0,	0,  0
		.BYTE $E0,  0,$9F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,	4,  2,	1,  4, $C,  8
		.BYTE	9,  8,$F8,$F8,$F8,$F8,$F0,$F0,$F0,$F0,$40,  0,$10,$90,$20,$20
		.BYTE $A0,  0,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,	4,  2,	1,  4, $C,  8
		.BYTE	9,  8,$F8,$F8,$F8,$F8,$F0,$F0,$F0,$F0,$40,  0,$10,$90,$20,$20
		.BYTE $A0,$20,$1F,$1F, $F, $E, $E, $F, $F,  7,	8,  0,	0,  0,	4,  6
		.BYTE	6,  0,$F0,$E0,$E0,$E0,$F0,$70,$70,$60,	0,  0,	0,$40,$20,$20
		.BYTE $20,  0,$1F,$1F, $F, $E, $F,  7,	7,  0,	8,  4,	0,  4,	6,  2
		.BYTE	0,  0,$E0,$E0,$E0,$E0,$F0,$70,$70,$60,	0,  0,	0,$40,$20,$20
		.BYTE $20,  0,$1F,$1F, $F, $F, $F,  7,	3,  1,	8,  0,	0,  5,	5,  1
		.BYTE	1,  0,$F0,$E0,$C0,$80,$80,$C0,$C0,$80,	0,  0,	0,  0,	0,$80
		.BYTE $80,  0,	0,  0,$41,  9,$41,$17, $F,$4F,	0,  0,	0,  0,	0,  0
		.BYTE	0,  1,	0,$E0,$F0,$F8,$D8,$F0,$F4,$F0,	0,  0,	0,$A0,$A0,$80
		.BYTE $A0,  0,	0,  2,	4,  9,	0, $B,	7,  7,	0,  0,	0,  0,	0,  0
		.BYTE	0,  1,	0,$70,$F8,$FC,$EC,$FA,$FC,$F8,	0,  0,	0,$50,$50,$40
		.BYTE $50,  0,	0,  4,	1,$15,	1,  7, $F, $F,	0,  0,	0,  0,	0,  0
		.BYTE	0,  1,	0,$E0,$F0,$F8,$D8,$F0,$F0,$F0,	0,  0,	0,$A0,$A0,$80
		.BYTE $A0,  0,	0,  2,	0, $A,	0,$27,	7,  7,	0,  0,	0,  0,	0,  0
		.BYTE	0,  1,	0,$70,$F8,$FC,$EC,$F8,$F8,$F8,	0,  0,	0,$50,$50,$40
		.BYTE $50,  0,$1F,$1F,$3F,$3F,$3F,$1F,$1F,$1F,	0,  0,	0,  4,	8,  8
		.BYTE	8, $C,$F0,$F8,$F8,$F8,$F8,$F8,$F8,$FC,$60,$20,	0,  0,	0,  0
		.BYTE $10,  8, $F, $F,$1F,$1F,$1F, $F, $F, $F,	0,  0,	0,  0,	8,  0
		.BYTE	0,  4,$F8,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$70,$30,	0,  0,	0,  0
		.BYTE $18,  8,$1F, $F, $F,  3,	3,  7,	7,  0, $C,  4,	0,  0,	1,  2
		.BYTE	3,  0,$FC,$FC,$FC,$F0,$F0,$F8,$F8,$78,	8,  8,	0,  0,$A0,$60
		.BYTE $B0,  0, $F, $F, $F,  3,	7, $F, $F, $F,	4,  4,	0,  0,	3,  4
		.BYTE	7,  0,$FC,$FC,$FC,$F8,$F8,$FC,$FC,$BC,	8,  8,	0,  0,$10,$30
		.BYTE $18,  0,$1F, $F, $F,  3,	3,  7,	7,  7, $C,  4,	0,  0,	1,  2
		.BYTE	3,  0,$FC,$FC,$FC,$F0,$F0,$F8,$F8,$F8,	8,  8,	0,  0,$A0,$60
		.BYTE $B0,  0
Particles_1D49F:.BYTE $11,  8,	0,  0,$28,$28,$10, $A,	0,  4,	0,  0,$38,$38,	0, $E
					; DATA XREF: BANK_01:93B9o
		.BYTE	4,  0,	0, $A,	4,  0,	0,  0,$55,$72,	0, $E,	0,  0,	0,  2
		.BYTE $77,$50,	0,  0,$28,  0,$10, $A, $A,  4,	0,  0,$38,$10,	0, $E
		.BYTE  $E,  0, $E, $A,	4,  0,	0,  5,$55,$22, $E, $E,	0,  0,	0,  7
		.BYTE $77,  0,	0,  0,	0,  0,$18,  4,$18,  0,	0,  0,	0,  0,$18,$18
		.BYTE $18,  0,$20,$10,$20,  0,	0,$18,	4,$18,$20,$60,$20,  0,	0,$18
		.BYTE $18,$18,	0,  0,	0,  0,	8,  4,	8,  0,	0,  0,	0,  0,	8,$18
		.BYTE	8,  0,$60,$10,$60,  0,	0,  8,	4,  8,$60,$60,$60,  0,	0,  8
		.BYTE $18,  8,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,$50,$20,	0,  0,	0,  0,	0,$20,$70,  0
		.BYTE	0,  0,$20,  0,	0, $A, $A,  4,	0,  0,	0,  0,	0, $E, $E,  0
		.BYTE	0,  0,	0,  0,	0,$50,$50,$20,	0,  0,	0,  0,	0,$70,$70,  0
		.BYTE	0,  0,$20,  0,	0, $A,	0,  4,	0,  0,	0,  0,	0, $E,	4,  0
		.BYTE	0,  0,	0,  3,	0,  3,$20,$11,$20,  1,	0,  3,	3,  3,$20,$61
		.BYTE $21,  1,	0,  0,$80,  2,	1,  2,$40,  0,	0,  0,	0,  2,	6,  2
		.BYTE $80,  0,	0,  1,	0,  1,$60,$11,$60,  1,	0,  1,	3,  1,$60,$61
		.BYTE $61,  1,	0,  0,$80,  6,	1,$86,$40,$80,	0,  0,	0,  6,	6,$86
		.BYTE $80,$80
Dog_1D5B1:	.BYTE $23,  2,	0,  0,	1,  0, $B, $F, $B,  3,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_01:93BBo
		.BYTE	4,  4,	0,  0,	0,$80,$D0,$E0,$C0,$80,	0,  0,	0,  0,	0,$10
		.BYTE $30,$60,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  3,	7,  7,	9, $B,	0,  0,	0,  0,	0,  0
		.BYTE	6,  0,	0,$40,$80,$C0,$E0,$C0,$80,$80,	0,  0,	0,  0,	0,$20
		.BYTE $70,$50,	0,  0,	0,  0,	1,  3, $F, $F,	0,  0,	1,  3,	0,  4
		.BYTE	0,  0,	0,  0,$40,$80,$C0,$E0,$F0,$B0,	0,  0,$80,  0,	0,  0
		.BYTE	0,$40,	0,  0,	0,  0,	4,  5, $B, $F,	0,  0,	4,  4,	3,  0
		.BYTE	4,  0,	0,  0,$20,$20,$E0,  0,$F0,$F0,	0,  0,	0,$80,	0,$A0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  7,$3F, $F,	0,  0,	0,  0,	0,  0
		.BYTE	3,  0,	0,  0,	0,  0,	0,  3,$3F,$E7,	0,  0,	0,  0,	0,  0
		.BYTE $C0,$18,	0,  0,	0,  0,	0,$20,$FC,$F7,	0,  0,	0,  0,	0,$C0
		.BYTE	0,  8,	0,  0,	0,  0,	0,$38,$FF,$FF,	0,  0,	0,  0,	0,$C0
		.BYTE $10, $C,	3,  3, $B, $B, $D,  1,	1, $D,	0,  0,	0,  0,	2,  6
		.BYTE	6,  2,$80,$80,$50,$D0,$F0,$E0,$A0,$80,$40,$40,$80,  0,	0,  0
		.BYTE $40,$70,	3, $B,	3,  5,	1,  1, $D, $F,	8,  0,	0,  2,	6,  6
		.BYTE	2,  0,$90,$50,$C0,$E0,$E0,$A0,$80,$B0,$40,$80,	0,  0,	0,$40
		.BYTE $70,$40, $D,  1,	1, $D, $B, $B,	3,  3,	2,  6,	6,  2,	0,  0
		.BYTE	0,  0,$80,$A0,$E0,$F0,$D0,$50,$80,$80,$70,$40,	0,  0,	0,$80
		.BYTE $40,$40, $F, $D,	1,  1,	5,  3, $B,  3,	0,  2,	6,  6,	2,  0
		.BYTE	0,  8,$B0,$80,$A0,$E0,$E0,$C0,$50,$90,$40,$70,$40,  0,	0,  0
		.BYTE $80,$40,$1F,$1B,$16, $C,$50,$E0,	0,  0,	0, $C,$18,$20,$40,  0
		.BYTE	0,  0,$5B,$FF,$7F,  0,	0,  0,	0,  0,$A4,  1,	0,  0,	0,  0
		.BYTE	0,  0,$79,$98,$C0,$B0,$4C,$22,	0,  0,	6,  4,$C0,$30, $C,  0
		.BYTE	0,  0,$1F,$1F, $E,  3,	3,  0,	0,  0,	0,$10,$1C, $E,	1,  0
		.BYTE	0,  0,$5B,$FE,$7E, $C,$D8,$F0,$18,  0,$A4,  0,	8,  8,$18,$90
		.BYTE $10,  0,$78,  6,	0,  0,	0,  0,	0,  0,	8,  0,	0,  0,	0,  0
		.BYTE	0,  0, $F, $F,	3,  1,	0,  0,	0,  0,	0,  0,	4,  0,	3,  1
		.BYTE	0,  0,$B0,$F0,$E0,$C0,$80,$40,	0,  0,$40,  0,	0,  0,	0,$80
		.BYTE	0,  0, $F, $B,	5,  4,	0,  0,	0,  0,	0,  4,	0,  3,	4,  4
		.BYTE	0,  0,$F0,$F0,	0,$E0,$20,$20,	0,  0,	0,  0,$A0,  0,$80,  0
		.BYTE	0,  0,	3, $B, $F, $B,	0,  1,	0,  0,	4,  4,	0,  0,	0,  0
		.BYTE	0,  0,$80,$C0,$E0,$D0,$80,  0,	0,  0,$60,$30,$10,  0,	0,  0
		.BYTE	0,  0, $B,  9,	7,  7,	3,  0,	0,  0,	0,  6,	0,  0,	0,  0
		.BYTE	0,  0,$80,$80,$C0,$E0,$C0,$80,$40,  0,$50,$70,$20,  0,	0,  0
		.BYTE	0,  0
Crow_1D7E3:	.BYTE $22,  8,	3,  7,	7,  3,	1,  2,	0,  0,	0,  0,	0,  0,	2,  0
					; DATA XREF: BANK_01:93BDo
		.BYTE	0,  0,	0,$80,$80,  0,	0,  0,	0,$10,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  1,	1,  3,	7,  5,	0,  0,	0,  0,	0,  0
		.BYTE	0,  2,	0,  0,	0,  0,$88,$8C,$CC,$1F,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	2,  3,$1F,  7,	3,  2,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,$40,$80,	8,$18,$18,$7E,	0,  0,$80,  0,	0,  0
		.BYTE	0,  0,	0,  0, $F,  3,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,$A0,$E0,	0,  0,$18,$7E,	0,  0,$40,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  8,$18,$7E,$3C,$10,	8,  0,	0,  0,	0,  0,	0,  8
		.BYTE	0,  0,$1C,$3E,$1C,$10,$18,  0,	0,  0,	0,  0,	0,  8,	0,  0
		.BYTE	0,  0,	1,  8,$18,$1C,$1C,$10,	8,  0,	0,  0,	0,  0,	0,  8
		.BYTE	0,  0, $E,  4,	4,  0,	0,  0,	0,  0,	0,  8,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  1,	7,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$78,$1C,$C8,$C8,$E0,$80,	0,  0,	4,  0,	0,  0,	0,$40
		.BYTE	0,  0,	0,  0,	2,  7, $F, $F,	6,  2,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$78,$18,	0,  0,$C0,  0,	0,  0,	4,  0,	0,  0,	0,$80
		.BYTE	0,  0,	0,  8,$10,$3C,$7E,$18,	8,  0,	0,  0,	8,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,$18,$10,$1C,$3E,$1C,	0,  0,	0,  0,	8,  0
		.BYTE	0,  0,	0,  8,$10,$1C,$1C,$18,	8,  1,	0,  0,	8,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  4,	4, $E,	0,  0,	0,  0,	0,  0
		.BYTE	8,  0,	0,  0,	5,  7,	0,  0,$18,$7E,	0,  0,	2,  0,	0,  0
		.BYTE	0,  0,	0,  0,$F0,$C0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	2,  1,$10,$18,$18,$7E,	0,  0,	1,  0,	0,  0
		.BYTE	0,  0,$40,$C0,$F8,$E0,$C0,$40,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	2,  1,	3,  7,	7,  3,	0,  0,	0,  2,	0,  0
		.BYTE	0,  0,$10,  0,	0,  0,	0,$80,$80,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	5,  7,	3,  1,	1,  0,	0,  0,	2,  0,	0,  0,	0,  0
		.BYTE	0,  0,$1F,$CC,$8C,$88,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$1E,$18,	0,  0,	3,  0,	0,  0,$20,  0,	0,  0,	0,  1
		.BYTE	0,  0,	0,  0,$40,$E0,$F0,$F0,$60,$40,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$1E,$38,$13,$13,	7,  1,	0,  0,$20,  0,	0,  0,	0,  2
		.BYTE	0,  0,	0,  0,	0,$80,$E0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	8,  0
Snake_1DA05:	.BYTE $11,  1,$30,$28,$18,$18, $C,  4,	4,  3,$30,$10,	8, $C,	6,  6
					; DATA XREF: BANK_01:93BFo
		.BYTE	3,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$18,$18,$18,  8,	8, $C, $C,$18,	0,  8,	8, $C, $C,  8
		.BYTE	0,$10,$10,$18,$18,$30,$30,$30,$30,$10,	8,  0,$18,  0,	0,$10
		.BYTE	0,$18, $C,$1C,$10,$38,$70,$60,$C0,$C0,	4, $C,	8,  8,$10,$20
		.BYTE $60,$40,	3,  3,	7,  6, $A,$18,$10,$38,	2,  0,	0,  0,	4,  4
		.BYTE $18,$10,$18,$18,$18,$20,$20,$30,$38,$10,$10,$10,	0,$30,$30,  0
		.BYTE $28,  8,$10,$10,$18, $C, $C, $C,$1C,$18,$18,  8,	8, $C,	4,  0
		.BYTE	0,  0,$80,$80,$C0,$60,$70,$30,$10,$1C,$C0,$C0,$20,$20,$60,$28
		.BYTE $18, $C,	0,  3, $B,$36,$F8,$E0,	0,  0,	0,  1,	6,  8,$20,$C0
		.BYTE	0,  0,	0,$60,$7C,$1C,	7,  0,	0,  0,	0,$F0,$DC,  7,	0,  0
		.BYTE	0,  0,	0,  0,	0,  1,$7C,$7F,	0,  0,	0,  0,	0,  0,	7,$1E
		.BYTE	0,  0,	0,  0,	0,$79,$FF,  1,	0,  0,	0,  0,	0,$8E,	5,  0
		.BYTE	0,  0,	0,  0,$7B,$5F,	1,  0,	0,  0,	0,  0,$35,$2B,	0,  0
		.BYTE	0,  0,	0,  0,	1,$A7,$FF,  0,	0,  0,	0,  0,	0,$79,	4,  0
		.BYTE	0,  0,	0,  0,$C0,$F8,$36, $F,	3,  0,	0,  0,$60,$30,	8,  2
		.BYTE	0,  0,	0,  0,	0,  5,$15,$FC,$50,  0,	0,  0,	0,  3, $E,  8
		.BYTE $A0,  0
Spider_1DB17:	.BYTE $19,  6, $F,$1F,$30,$2F,$30,$27,$28,$53,	0, $F,$1F,$1F,$1F,$1F
					; DATA XREF: BANK_01:93C1o
		.BYTE $1F, $F,$E0,$F0,$18,$E8,$18,$C8,$28,$94,	0,$E0,$F0,$F0,$F0,$F0
		.BYTE $F0,$E0, $F,$1F,$30,$2F,$30,$27,$A8,$53,	0, $F,$1F,$1F,$1F,$1F
		.BYTE $1F, $F,$E0,$F0,$18,$E8,$18,$C8,$2A,$94,	0,$E0,$F0,$F0,$F0,$F0
		.BYTE $F0,$E0,	0,  1,	0,$3F,$55,$AA,$AA,$AA,	0,  0,	0,  0,$3F,$7F
		.BYTE $7F,$7F,	0,$50,$AC,$D0,$E0,$50,$78,$A4,	0,  0,	0,  0,	0,$80
		.BYTE $C0,$D8,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$BC,$5F,$74,$D6,$B3,$10,	0,  0,	7,  0,	3,  3,	0,  0
		.BYTE	0,  0,$7A,$EC,$5A,$D6,$90,$10,$10,  0,$C0,  0,$80,$80,	0,  0
		.BYTE	0,  0,$BC,$4F,$F4,$26,$23,$40,	0,  0,	7,  0,	3,  3,	0,  0
		.BYTE	0,  0,$7A,$EC,$54,$C8,$88,  4,	0,  0,$C0,  0,$80,$80,	0,  0
		.BYTE	0,  0,$AA,$AA,$AA,$55,$3F,  1,	2,  0,$7F,$7F,$7F,$3F,	0,  0
		.BYTE	0,  0,$A4,$78,$50,$EC,$B0,$68,$90,  0,$D8,$C0,$80,  0,	0,  0
		.BYTE	0,  0,	0,  0,$10,$B3,$D6,$74,$5F,$BC,	0,  0,	0,  0,	3,  3
		.BYTE	0,  7,	0,$10,$10,$90,$D6,$5A,$EC,$7A,	0,  0,	0,  0,$80,$80
		.BYTE	0,$C0,	0,  0,$40,$23,$26,$F4,$4F,$BC,	0,  0,	0,  0,	3,  3
		.BYTE	0,  7,	0,  0,	4,$88,$C8,$54,$EC,$7A,	0,  0,	0,  0,$80,$80
		.BYTE	0,$C0,	0, $A,$35, $B,	7, $A,$1E,$25,	0,  0,	0,  0,	0,  1
		.BYTE	3,$1B,	0,$80,	0,$FC,$AA,$55,$55,$55,	0,  0,	0,  0,$FC,$FE
		.BYTE $FE,$FE,$53,$28,$27,$30,$2F,$30,$1F, $F, $F,$1F,$1F,$1F,$1F,$1F
		.BYTE  $F,  0,$94,$28,$C8,$18,$E8,$18,$F0,$E0,$E0,$F0,$F0,$F0,$F0,$F0
		.BYTE $E0,  0,$53,$A8,$27,$30,$2F,$30,$1F, $F, $F,$1F,$1F,$1F,$1F,$1F
		.BYTE  $F,  0,$94,$2A,$C8,$18,$E8,$18,$F0,$E0,$E0,$F0,$F0,$F0,$F0,$F0
		.BYTE $E0,  0,$25,$1E, $A,$37, $D,$16,	9,  0,$1B,  3,	1,  0,	0,  0
		.BYTE	0,  0,$55,$55,$55,$AA,$FC,$80,$40,  0,$FE,$FE,$FE,$FC,	0,  0
		.BYTE	0,  0
Tyrant_1DCA9:	.BYTE $62,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_01:93C3o
		.BYTE	0,  0,	3,  7,	7,$1D,$37,$7A,$5F,$BF,	3,  4,	2,  7,$2E,$65
		.BYTE $75,$EC,$C0,$E0,$E0,$B8,$EE,$5F,$F5,$E5,$C0,$E0,$40,$E0,$12,$A6
		.BYTE $AF,$3A,	0,  0,	0,  0,	0,  0,	0,$80,	0,  0,	0,  0,	0,  0
		.BYTE	0,$80,	0,  3,	7,  5,$1F,$3A,$1F,$3F,	0,  0,	2,  7,	6,  5
		.BYTE $35,$6C,	0,$C0,$E0,$A0,$FC,$5A,$F6,$E5,	0,$C0,$40,$E0,	0,$A4
		.BYTE $AE,$3A,$C0,$E0,$E0,$B8,$EE,$5F,$F5,$E7,$C0,$E0,$40,$E0,$12,$A7
		.BYTE $AF,$38,	0,  0,	0,  0,	0,$80,$C0,$40,	0,  0,	0,  0,	0,$80
		.BYTE $C0,$C0,	0,  1,	1,  2,	2,  1,	4,  4,	0,  1,	1,  3,	3,  3
		.BYTE	7,  7,$B9,$6D,$4F,$C7,$C7,$87,$CF,$CB,$C7,$C7,$82,$80,$86,  1
		.BYTE $C0,$4C,$CF,$DA,$F9,$F0,$F0,$F0,$F8,$F8,$70,$71,$20,$80,$30,$40
		.BYTE	0,$38,$40,$20,$90,$D0,$E8,$FC,$B4,$14,$C0,$E0,$F0,$F0,$F8,$5C
		.BYTE $1C, $C,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	1,  1
		.BYTE	1,  1,$39,$7D,$7F,$77,$E7,$E7,$C7,$C3,$67,$E7,$E2,$C0,$C6,$81
		.BYTE $80,$C4,$CF,$DE,$FB,$F1,$F1,$F1,$F0,$F0,$70,$71,$20,$80,$30,$40
		.BYTE	0,  0,	0,  0,	0,$40,$40,$40,$A0,$A0,$80,$80,$80,$C0,$C0,$C0
		.BYTE $60,$60,$B9,$6D,$4F,$C7,$C7,$87,$C7,$CF,$C7,$C7,$82,$80,$86,  1
		.BYTE $C0,$40,$CD,$D8,$F8,$F0,$F0,$F0,$F0,$F8,$70,$70,$20,$80,$30,$40
		.BYTE	0,$30,$E0,$B0,$58,$F8,$B8,$28,$28,$28,$60,$70,$38,$18,$28,  8
		.BYTE	8,  8,	5, $F, $A, $A,	2,  0,	0,  0,	6,  0,	0,  0,	0,  0
		.BYTE	0,  0,$4F,  7,	7,  7,	7, $F,	7,  7, $A, $A, $A, $A, $E, $E
		.BYTE  $E, $E,$78,$74,$74,$74,$74,$78,$74,$70,$2C,$2C,$3C,$1C,$1C,$1C
		.BYTE $1C,$1C,$14,$14,$14,$14,$14,$14,$14,$14, $C, $C, $C, $C,	8,  0
		.BYTE	0,  0,	0,  0,	3,  2,	2,  0,	0,  0,	1,  1,	0,  0,	0,  0
		.BYTE	0,  0,$E7,$EB,$CB,$8B,$89,$8B, $F, $B,$EE,$8E, $E, $E, $E, $E
		.BYTE  $E, $E,$78,$71,$72,$72,$70,$78,$70,$70,$18,$18,$18,$18,$18,$18
		.BYTE $18,$18,$A0,$A0,$A0,$A0,$60,$60,$60,$60,$60,$60,$60,$60,$20,$20
		.BYTE $20,$20,$4F,$1F,	7,  7,	7,  7,	7,  7,	0,  8,$18,$18,	8,  8
		.BYTE	8,  9,$78,$70,$70,$74,$64,$6C,$64,$64,$28,$28,$28,$28,$3C,$38
		.BYTE $38,$38,$28,$28,$28,  8,	8,  8,	8,  8,	8,  0,	0,  0,	0,  0
		.BYTE	0,  0,$17,$17, $F,$1F,	7,$1F,$1E,  0,$1E,$1E,$1C,  4, $A,  8
		.BYTE	0,  0,$70,$74,$74,$7C,$70,$7C,$3C,  0,$1C,$1C,$1C,$18,	8,$10
		.BYTE	0,  0,$14,$10,$10,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	9,  9, $D,$17,$1B,$37,$3E,$3E, $E, $E, $E,$1E,$1E,$3E
		.BYTE $38,$20,$70,$F0,$F8,$F8,$70,  0,	0,  0,$18,  8,	0,$10,	0,  0
		.BYTE	0,  0,$60,$60,$20,$20,$20,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	7,  7,$17,$1B, $E,  0,	0,  0,	9,  8,	8,  4,	0,  0
		.BYTE	0,  0,$64,$64,$E4,$DC,$E4,$FA,$F6,$7C,$38,$38,$38,$38,$3C,$3C
		.BYTE $18,  0,	8,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  1,	0,  0,	0,  0,	0,  0
		.BYTE	0,  1,	0,  3,	7,$1F,$3F,$7F,$FF,$FF,	3,  7,	3,$1D,	8,$60
		.BYTE $FC,$FC,	0,$C0,$E0,$F8,$FC,$FE,$FE,$FF,$C0,$E0,$C0,$B8,$14, $E
		.BYTE $3E,$37,	0,  0,	0,  0,	0,  0,	1,  3,	0,  0,	0,  0,	0,  0
		.BYTE	1,  3,	0,  3,	7,$1F,$7F,$FF,$FF,$FF,	3,  7,	3,$1D,$48,$E4
		.BYTE $FC,$1C,	0,$C0,$E0,$F8,$FC,$FE,$FE,$FF,$C0,$E0,$C0,$B8,$14,  6
		.BYTE $2E,$37,	0,  0,	3,  7,$3F,$7F,$7F,$FF,	0,  3,	7,  3,$1D,$34
		.BYTE $78,$6C,	0,  0,$C0,$E0,$F8,$FC,$FC,$FE,	0,$C0,$E0,$C0,$B8,$20
		.BYTE  $C,$3E,	3,  7, $F, $F,$1F,$1F,$2D,$28,	3,  7, $F, $E,$1D,$1A
		.BYTE $38,$30,$FF,$DF,$9F, $F, $F, $F,$1F,$1F,$8E,$8E,	4,  0, $C, $E
		.BYTE  $C,$1C,$FF,$F7,$F3,$E3,$E3,$E1,$F3,$F3,$73,$63,$41,  1,$61,$20
		.BYTE $23,$32,	0,$80,$80,$C0,$C0,$C0,$E0,$E0,	0,$80,$80,$C0,$C0,$C0
		.BYTE $E0,$E0,	7, $F,$1E,$1F,$1D,$14,$14,$14,	6, $E,$1C,$18,$14,$10
		.BYTE $10,$10,$BF,$1F,$1F, $F, $F, $F, $F,$1F, $E,  6,	6,  2,	0,  0
		.BYTE	0, $C,$FF,$F7,$F3,$E3,$E3,$E1,$E3,$F3,$63,$43,$41,$41,	1,  0
		.BYTE	3,  2,	0,$80,$80,$C0,$C0,$C0,$60,$60,	0,$80,$80,$C0,$C0,$C0
		.BYTE $E0,$E0,	1,  1,	1,  3,	3,  3,	7,  7,	1,  1,	1,  3,	3,  3
		.BYTE	7,  7,$FF,$FF,$DF,$8F,$8F,$8F, $F, $F,$CE,$8E,$84,$80, $C,  0
		.BYTE	6,  4,$FE,$FF,$FF,$EF,$E7,$E7,$E3,$E3,$7A,$67,$47,  7,$63,  3
		.BYTE $C1,$63,	0,  0,	0,  0,$80,$80,$80,$80,	0,  0,	0,  0,$80,$80
		.BYTE $80,$80,$28,$28,$28,$28,$28,$28,$28,$28,$30,$30,$30,$30,$10,  0
		.BYTE	0,  0,$1E,$3E,$3E,$3E,$3E,$3E,$3E,$3E,$3C,$3C,$3C,$38,$38,$18
		.BYTE $18,$18,$F2,$E0,$E0,$F0,$F0,$F0,$F0,$F0,$70,$70,$70,$70,$60,$60
		.BYTE $60,$60,$E0,$F0,$50,$50,$40,  0,	0,  0,$E0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$14,$14,$14,$10,$10,$10,$10,$10,$10,  0,	0,  0,	0,  0
		.BYTE	0,  0,$1E,$1E,$1E,$3E,$3E,$3E,$3E,$3E,$14,$14,$14,$14,$3C,$1C
		.BYTE $1C,$1C,$F2,$F8,$E0,$E0,$E0,$E0,$E0,$E0,	0,$10,$18,$18,$10,$10
		.BYTE $10,$90,$A0,$F0,$50,$50,$40,  0,	0,  0,$60,  0,	0,  0,	0,  0
		.BYTE	0,  0,	7,  7,	7,  7,	6,  6,	6,  6,	7,  6,	6,  6,	6,  4
		.BYTE	4,  4,$1E,$8E,$5E,$5E,$1E,$1E,$1E,$1E,$1C,$1C,$1C,$1C,$18,$18
		.BYTE $1C,$1C,$E7,$F7,$F3,$F1,$F1,$F1,$F0,$F0,$77,$71,$70,$70,$70,$70
		.BYTE $70,$70,$80,  0,$C0,$40,$40,  0,	0,  0,$80,$80,	0,  0,	0,  0
		.BYTE	0,  0,$28,  8,	8,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$3E,$3E,$3E,$3E, $E,$3E,$3C,  0,$18,  8,	8,  0,$10,  8
		.BYTE	0,  0,$F8,$F8,$F0,$F8,$E0,$F8,$78,  0,$68,$60,$48,$60,$70,$10
		.BYTE	0,  0,$10,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$3E,$3E,$3F,$3B,$27,$5F,$6F,$3E,$1C,$1C,$1C,$1C,$3C,$3C
		.BYTE $18,  0,$E0,$E0,$E8,$D8,$70,  0,	0,  0,$90,$10,$10,$20,	0,  0
		.BYTE	0,  0,	6,  6,	4,  4,	4,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$1E,$1F,$1F,$1F, $E,  0,	0,  0,$18,$10,	0,  8,	0,  0
		.BYTE	0,  0,$F0,$F0,$F0,$F8,$F8,$FC,$7C,$7C,$70,$70,$70,$78,$78,$7C
		.BYTE $1C,  4,	3,  7,	7,  7,	7, $F,$1B,$3C,	0,  3,	3,  0,	1,  0
		.BYTE  $C,$1F,$C0,$E0,$E0,$60,$E0,$E0,$D0,$E8,	0,  0,$80,$80,$80,  0
		.BYTE $20,$F0,$3B,$3F,$4D,$4C,$6A,$6F,$EF,$DF,$1F,$19,$3B,$3B,$35,$30
		.BYTE $34,$72,$F8,$78,$F8,$F8,$E8,$E8,$F8,$F4,$B0,$F0,$D0,$50,$90,$10
		.BYTE	0,  8,$DF,$DF,$D9,$BF,$5D,$5D,$2D, $D,$64,$62,$66,$65,$26,$26
		.BYTE	6,  6,$FC,$FE,$FE,$FE,$EA,$EA,$EA,$EA,$28,$44,	0,$C0,	0,$40
		.BYTE $C0,$80,$DF,$DF,$D9,$BF,$5E,$5E,$2E, $F,$64,$62,$66,$64,$23,$23
		.BYTE	3,  3,$FC,$FE,$FE,$FE,$EA,$EA,$EA,$EA,$28,$44,	0,$C0,	0,$40
		.BYTE $40,  0,$DF,$DF,$D9,$BF,$5E,$5E,$2E, $E,$64,$62,$66,$64,$23,$23
		.BYTE	3,  3,$FC,$FE,$FE,$FE,$EA,$EA,$EA,$DA,$28,$44,	0,$C0,	0,$40
		.BYTE $40,$20,$1D,$1F,$36,$34,$3E,$2D,$2F,$3F, $E, $C,$18,$18,$18,$16
		.BYTE $12,  0,$DA,$DA,$DA,$F2,$D2,$DA,$E8,$F8,$A0,$A0,$60,$60,$60,$60
		.BYTE $30,  0,	7, $F,$1F,$3F,$3F,$1F, $F,  3,	3,  5,	1,  9,$19,  5
		.BYTE	1,  0,$4A,$4A,$EA,$D2,$D2,$E2,$C0,$80,$80,$80,$80,$E0,$E0,$C0
		.BYTE $80,  0,	7,  7,	7,  7,	7,  7,	7,  3,	2,  1,	1,  1,	1,  5
		.BYTE	1,  0,$6A,$6A,$4A,$42,$E2,$D2,$D0,$F0,$80,$80,$80,$80,$80,$E0
		.BYTE $E0,  0,	6,  6,	6, $E,$1E,$1F, $F,  7,	3,  3,	3,  7,	7, $F
		.BYTE	3,  0,$DA,$DA,$DA,$F2,$EA,$5A,$D0,$F0,$20,$20,$20,$20,$10,$A0
		.BYTE $20,  0
BallSmall_1E2CB:.BYTE	2,  1,$3C,$42,$8D,$8D,$81,$81,$42,$3C,	0,$3C,$7E,$7E,$7E,$7E
					; DATA XREF: BANK_01:93C5o
		.BYTE $3C,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0
BallBig_1E2ED:	.BYTE $33, $E,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	1,  3
					; DATA XREF: BANK_01:93C7o
		.BYTE	7, $F,	0,  7,$1F,$1F,$3F,$7F,$FF,$FF,	0,  7,$3F,$FF,$FF,$FF
		.BYTE $FF,$FF,	0,$F0,$FE,$FF,$FF,$FF,$FF,$FF,	0,$F0,$FE,$FF,$FF,$FF
		.BYTE $FF,$FF,	0,  0,	0,$80,$C0,$E0,$F0,$F8,	0,  0,	0,$80,$C0,$E0
		.BYTE $F0,$F8,	0,  0,	0,  0,	1,  3,	7, $F,	0,  0,	0,  0,	1,  3
		.BYTE	7, $F,	0,  7,$3F,$FF,$FF,$FF,$FF,$FF,	0,  7,$3F,$FF,$FF,$FF
		.BYTE $FF,$FF,	0,  0,	0,$80,$C0,$E0,$F0,$F0,	0,  0,	0,$80,$C0,$E0
		.BYTE $F0,$F8,	0,$F0,$FC,$FC,$FE,$FE,$FF,$FF,	0,$F0,$FE,$FF,$FF,$FF
		.BYTE $FF,$FF,	0,  0,	0,  0,	0,  0,	0,$80,	0,  0,	0,$80,$C0,$E0
		.BYTE $F0,$F8,	0,  6,$3F,$FF,$FF,$FF,$FF,$FF,	0,  7,$3F,$FF,$FF,$FF
		.BYTE $FF,$FF,	0,  0,	0,$80,$80,$C0,$C0,$E0,	0,$F0,$FE,$FF,$FF,$FF
		.BYTE $FF,$FF,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,$80,$C0,$E0
		.BYTE $F0,$F8,	0,  0,	0,$C0,$C0,$C0,$C0,$C0,	0,  7,$3F,$FF,$FF,$FF
		.BYTE $FF,$FF,	0,  8,$1E,$3F,$3F,$3F,$7F,$FF,	0,$F8,$FE,$FF,$FF,$FF
		.BYTE $FF,$FF,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	1,  1,	1,  3,	3,  3,	1,  1,$1F,$1F,$3F,$3F,$3F,$7F
		.BYTE $7F,$7F,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
		.BYTE $FF,$FF,$FC,$FC,$FE,$FE,$FE,$FF,$FF,$FF,$FC,$FC,$FE,$FE,$FE,$FF
		.BYTE $FF,$FF,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$3F,$3F,$3F,$7F
		.BYTE $7F,$7F,$F8,$F8,$F8,$F8,$F0,$F0,$F0,$F0,$FC,$FC,$FE,$FE,$FE,$FF
		.BYTE $FF,$FF,$1F,$1F,$3F,$3F,$3F,$7F,$7F,$7F,$1F,$1F,$3F,$3F,$3F,$7F
		.BYTE $7F,$7F,$80,$80,$80,$80,	0,  0,	0,  0,$FC,$FC,$FE,$FE,$FE,$FF
		.BYTE $FF,$FF,$1F,$1F,$3F,$3F,$3F,$3F,$3F,$3F,$1F,$1F,$3F,$3F,$3F,$7F
		.BYTE $7F,$7F,$E0,$C0,$C0,$C0,$C0,$80,$80,  0,$FF,$FF,$FF,$FF,$FF,$FF
		.BYTE $FF,$FF,	0,  0,	2,  6,	6,  7, $F, $F,$FC,$FC,$FE,$FE,$FE,$FF
		.BYTE $FF,$FF,$1F,$1E,$38,$20,	0,  0,	0,  0,$1F,$1F,$3F,$3F,$3F,$7F
		.BYTE $7F,$7F,$80,  0,	0,  0,	0,  0,	0,  0,$FF,$FF,$FF,$FF,$FF,$FF
		.BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$7F,$FF,$FF,$FF,$FF,$FF,$FF
		.BYTE $FF,$FF,	1,  0,	0,  0,	0,  0,	0,  0,$7F,$7F,$7F,$7F,$3F,$3F
		.BYTE $3F,$1F,$FF,$FF,$FF,$7F,$3F,$1F, $F,  3,$FF,$FF,$FF,$FF,$FF,$FF
		.BYTE $FF,$FF,$FF,$FE,$FE,$FC,$FC,$F8,$F0,$C0,$FF,$FF,$FF,$FF,$FE,$FE
		.BYTE $FE,$FC, $F,  7,	3,  1,	0,  0,	0,  0,$7F,$7F,$7F,$7F,$3F,$3F
		.BYTE $3F,$1F,$FF,$FF,$FF,$FF,$FF,$3F, $F,  0,$FF,$FF,$FF,$FF,$FF,$FF
		.BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FC,$E0,  0,$FF,$FF,$FF,$FF,$FF,$FF
		.BYTE $FF,$FF,$E0,$E0,$E0,$C0,	0,  0,	0,  0,$FF,$FF,$FF,$FF,$FE,$FE
		.BYTE $FE,$FC,$3F,$3F,$1F,$1F, $F,  7,	1,  0,$7F,$7F,$7F,$7F,$3F,$3F
		.BYTE $3F,$1F,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$3C,$FF,$FF,$FF,$FF,$FF,$FF
		.BYTE $FF,$FF,$FF,$FE,$FC,$FC,$F0,$E0,$C0,  0,$FF,$FF,$FF,$FF,$FF,$FF
		.BYTE $FF,$FF,	0,  0,	0,  0,	0,  0,	0,  0,$FF,$FF,$FF,$FF,$FE,$FE
		.BYTE $FE,$FC,$3F,$1F,$1F,  3,	0,  0,	0,  0,$7F,$7F,$7F,$7F,$3F,$3F
		.BYTE $3F,$1F,$FE,$FE,$F8,$C0,	0,  0,	0,  0,$FF,$FF,$FF,$FF,$FF,$FF
		.BYTE $FF,$FF,	0,  0,	0,  0,	0,  0,	0,  0,$FF,$FF,$FF,$FF,$FF,$FF
		.BYTE $FF,$FF, $F, $F, $F,  7,	2,  0,	0,  0,$FF,$FF,$FF,$FF,$FE,$FE
		.BYTE $FE,$FC,	0,  0,	0,  0,	0,  0,	0,  0,$7F,$7F,$7F,$7F,$3F,$3F
		.BYTE $3F,$1F,$7F,$3F,$1F, $F,	7,  1,	0,  0,$FF,$FF,$FF,$FF,$FF,$FF
		.BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FE,$FE,$3C,  0,$FF,$FF,$FF,$FF,$FE,$FE
		.BYTE $FE,$FC,	0,  0,	0,  0,	0,  0,	0,  0,$1F, $F,	3,  3,	1,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$FF,$FF,$FF,$FF,$FF,$FF
		.BYTE $3F,  7,$3F,  0,	0,  0,	0,  0,	0,  0,$FF,$FF,$FF,$FF,$FF,$FF
		.BYTE $FE,$F0,	0,  0,	0,  0,	0,  0,	0,  0,$FC,$F8,$F0,$E0,$C0,$80
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$FF,$FF,$FF,$FF,$FF,$FF
		.BYTE $FE,$F0
Shotgun_1E61F:	.BYTE	4,  2,	0,  0,	0,  7,$3F,$78,$70,  0,	0,  0,	0,  7,$38,$7E
					; DATA XREF: BANK_01:93C9o
		.BYTE $78,  0,	0,  0,	0,$FC,$FC,$10,	0,  0,	0,  0,	0,$FE,	2,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	2,  0
		.BYTE	0,  0
Numbers_1E661:	.BYTE  $C, $B,$18,$38,$58,$18,$18,$18,$18,$7E,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_01:93CBo
		.BYTE	0,  0,$3C,$66,$66, $C,$18,$30,$62,$7E,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$3C,$66,	6,$1C,	6,$66,$66,$3C,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0, $C,$1C,$2C,$4C,$7E, $C, $C,$1E,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$7E,$60,$60,$7C,$66,  6,$66,$3C,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$3C,$66,$60,$7C,$66,$66,$66,$3C,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$7E,$46, $C, $C,$18,$18,$30,$30,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$3C,$66,$66,$3C,$66,$66,$66,$3C,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$3C,$66,$66,$66,$3E,  6,$66,$3C,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$18,$24,$66,$66,$66,$66,$24,$18,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,$18,$18,  0,	0,$18,$18,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0
LinesUnk_1E723:	.BYTE $19,  3,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_01:93CDo
		.BYTE	3,  4,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,$F0
		.BYTE  $C,  3,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE $70,$88,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$88,$70,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	4,  3,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	3, $C,$F0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	1,  1,	2,  2,	4,  4
		.BYTE	4,  4,	0,  0,	0,  0,	0,  0,	0,  0,$80,$80,$40,$40,$20,$20
		.BYTE $20,$20,	0,  0,	0,  0,	0,  0,	0,  0,	2,  2,	1,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,$80,$40,$40
		.BYTE $40,$80,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  1,	2,  2
		.BYTE	2,  1,	0,  0,	0,  0,	0,  0,	0,  0,$40,$40,$80,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	2,  4,	8,  8,$10,$20
		.BYTE $20,$20,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	1,  2,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	3,  4,	8,$10
		.BYTE $E0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  7,	8,$10,$20,$C0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$40,$80,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	4,  4,	4,  8,$10,$10
		.BYTE $20,$40,	0,  0,	0,  0,	0,  0,	0,  0,$40,$20,$10,$10,	8,  4
		.BYTE	4,  4,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$C0,$20,$10,  8
		.BYTE	7,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE $80,$40,	0,  0,	0,  0,	0,  0,	0,  0,	2,  1,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,$E0,$10,  8,	4,  3
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$20,$20,$20,$10,	8,  8
		.BYTE	4,  2
Candle_1E8B5:	.BYTE	7,  4,	0,  0,	1,  1,$31,$31,$31,$31,	0,$11,$31,$31,$31,$31
					; DATA XREF: BANK_01:93CFo
		.BYTE $31,$31,	0,  0,$80,$80,$8C,$8C,$8C,$8C,$80,$84,$8C,$8C,$8C,$8C
		.BYTE $8C,$8C,	0,  0,	1,  1,$31,$31,$31,$31,	0,  0,	1,  1,$31,$31
		.BYTE $31,$31,	0,  0,$80,$80,$8C,$8C,$8C,$8C,	0,  0,$80,$80,$8C,$8C
		.BYTE $8C,$8C,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$31,$3F,$1F,  1,	1,  1,	3,  7,	1,  0,	0,  0,	0,  0
		.BYTE	0,  0,$8C,$FC,$F8,$80,$80,$80,$C0,$E0,$80,  0,	0,  0,	0,  0
		.BYTE	0,  0
Piranha_1E927:	.BYTE $13,  9,	1,  3,	3,  3,	7, $B,	3,  3,	0,  0,	0,  0,	0,  0
					; DATA XREF: BANK_01:93D1o
		.BYTE	0,  0,$C0,$40,$E0,$E0,$F0,$E8,$E0,$E0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	1,  2,	3,  1,	0,  1,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,$C0,$80,$F0,$A0,$40,$C0,$E0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  2,	1,  2,	1,  3,	1,  3,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$80,$40,$20,$C0,$60,$80,$C0,$E0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,$88,$57,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,$10,  8,$FE,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,$53,$37,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	1,  3,	1,  3,	2,  1,	2,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$C0,$C0,$E0,$A0,$E0,$80,$80,$10,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	3,  1,	2,  3,	2,  1,	2,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$E0,$E0,$80,$60,$C0,$E0,$60,$80,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	3,  3,	3, $B,	7,  3,	3,  1,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$E0,$E0,$E0,$E8,$F0,$E0,$40,$C0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$35,$4B,$90,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$FD,$FF,$FC,  8,$10,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$4F,$37,$4B,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0
GardenBoss_1EA59:.BYTE $26,  7,	 0,  0,	 0,  1,	 3,  7,	 7, $F,	 0,  0,	 1,  3,	 6, $C
					; DATA XREF: BANK_01:93D3o
		.BYTE  $C,$19,	0,$7F,$FF,$FF,$FF,$FE,$F2,$F9,$7F,$FF,$80,  0,$7F,$FF
		.BYTE $FF,$FF,	0,$E0,$F8,$FC,$FE,$7F,$67,$27,$E0,$F8,$1C,  6,$E3,$F9
		.BYTE $FC,$FC,	0,  0,	0,  0,	0,  0,$80,$80,	0,  0,	0,  0,	0,$80
		.BYTE $C0,$C0,	0,  0,	0,  1,	3,  7,	7, $F,	0,  0,	1,  3,	6, $C
		.BYTE  $C,$18,	0,$7F,$FF,$FF,$FF,$FF,$FF,$FF,$7F,$FF,$80,  0,	0,  0
		.BYTE	0,  5,	0,$E0,$F8,$FC,$FE,$FF,$FF,$FF,$E0,$F8,$1C,  6,	3,  1
		.BYTE $A8,$54,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0, $F, $F,	7,  3,	3,  2, $F,$17,$19,$19, $C,  6,	6,  1
		.BYTE	2, $C,$FD,$FC,$FE,$FF,$7E,$FD,$1B,$7B,$FF,$FF,$FF,$7B,$F7,$16
		.BYTE $F5,$95,$33,$13,$13,  1,$84,$CE,$CF,$EF,$FE,$FE,$FE,$FF,$7B,$B7
		.BYTE $B3,$D4,$C0,$C0,$C0,$C0,$40,$20,$10,$88,$60,$60,$60,$60,$80,$C0
		.BYTE $E0,$F0, $F, $F,	7,  3,	3,  3,	6, $F,$19,$19, $C,  6,	6,  1
		.BYTE	3,  4,$FD,$FC,$FE,$FF,$FE,$7D,$D3,$F3,$FF,$FF,$FF,$7F,$FB,$96
		.BYTE $2D,$4D,$33,$13,$13,  1,$98,$CC,$CE,$CE,$FE,$FE,$FE,$FF,$6F,$B7
		.BYTE $B3,$B3,$C0,$C0,$C0,$C0,$C0,$80,$40,$40,$60,$60,$60,$60,$60,$40
		.BYTE $80,$80, $F, $F,	7,  7,	3,  1,	0,  0,$18,$18, $C, $C,	6,  3
		.BYTE	1,  1,$FF,$FF,$FF,$FF,$FE,$FF,$FE,$FF, $A,$15,$2A,$15,$2B,$15
		.BYTE $8B,$85,$FF,$FF,$EB,$55,$AB,$57,$AF,$5E,$AA,$54,$BE,$FE,$FE,$FC
		.BYTE $F9,$E3,$C0,$C0,$C0,$C0,$C0,$80,	0,  0,$60,$60,$60,$60,$60,$C0
		.BYTE $80,  0,$1F,$3B,$72,$E6,	9,  7,	5, $A, $A,$16,$21,  1,	6,  0
		.BYTE	2,  5,$7D,$6D,$F7,$F7,$FF,$FF,$9D,$3D,$BA,$9A, $D, $C,$45,$E6
		.BYTE $EE,$96,$EF,$DF,$DF,$DF,$EF,$FF,$FF,$FF,$D5,$AE,$2E,$A4,$52,$A2
		.BYTE $51,$25,$C8,$E4,$F4,$B4,$DA,$DA,$E6,$82,$70,$B8,$18,$48,$24,$A4
		.BYTE $58, $C, $F, $F, $E,  6,	5,  7,	5, $A,	4,  4,	5,  1,	2,  0
		.BYTE	2,  5,$7D,$7D,$FF,$F5,$F5,$AD,$5D,$7D,$AA,$8A,	4, $A,$4A,$D6
		.BYTE $AE,$86,$DF,$DF,$DF,$FF,$FF,$EF,$CF,$DF,$AD,$AE,$AE,$54,$52,$32
		.BYTE $F2,$62,$20,$A0,$D0,$E8,$F4,$FA,$FF,$80,$C0,$C0,$60,$30,$58,$4C
		.BYTE $B0,$E0,$7F,$3F, $F,  0,	0,  0,	0,  0,$C0,$70,$3F, $F,	0,  0
		.BYTE	0,  0,$FC,$F8,$E0,  0,	0,  0,	0,  0,	6,$1C,$F8,$E0,	0,  0
		.BYTE	0,  0,$14,$14, $D,  5,	1,  0,	0,  0, $A, $A,	0,  0,	0,  0
		.BYTE	0,  0,$7F,$EE,$CE,$87,	7,  3,	1,  0,$25,$55,$A4,  2,	2,  1
		.BYTE	0,  0,$F7,$F3,$7B,$79,$30,$80,$80,  0,$AD,$A6,$D6,$D3,$69,$30
		.BYTE	0,  0,$80,$40,$40,$A0,$D0,$30,	0,  0,	0,$80,$80,$40,$A0,$40
		.BYTE	0,  0,$34,$CB,$34,  3,	0,  0,	0,  0,	9,$30,	3,  0,	0,  0
		.BYTE	0,  0,$BF,$5E,$94,$14,$28,$50,$60,  0,$55,$B5,$28,  8,$10,$20
		.BYTE	0,  0,$DE,$FE,$7E,$7D,$3F,$17,	2,  0,$6D,$AD,$AD,$D2,$52,$22
		.BYTE	0,  0,$80,$80,$80,  0,	0,  0,	0,  0,$40,  0,	0,  0,	0,  0
		.BYTE	0,  0
Helicopter_1ECBB:.BYTE $5A,  0,	 0,  0,	 0,  0,	 0,  0,	 0,  0,	 0,  0,	 0,  0,	 0,  0
					; DATA XREF: BANK_01:93D5o
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,$7F,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,$80,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	1,  3,	7, $F,	0,  0,	0,  0,	0,  1
		.BYTE	3,  7,	3,$1F,$67,$83,$60,$FE,$FF,$FF,	0,  3,$1F,$7F,$FF,$FF
		.BYTE $FF,$FF,$FF,$FF,$FF,$FF,$7F,$1F,$C8,$FF,$7F,$FF,$FF,$FF,$FF,$F8
		.BYTE $F7,$F8,$FF,$FF,$FF,$FF,$FF,$FC,$20,$FF,$FF,$FF,$FF,$FF,$FF,$3F
		.BYTE $DF,  0,$FC,$FF,$FE,$F0,$83, $F,$FF,$FF,$80,$FC,$FF,$FF,$FF,$FF
		.BYTE $FF,$FF,	0,  0,$80,$40,$E0,$E0,$F0,$F0,	0,  0,	0,$80,$C0,$C0
		.BYTE $E0,$E0,	3,$1F,$7F,$FF,$FF,$FF,$FF,$FF,	0,  3,$1F,$7F,$FF,$FF
		.BYTE $FF,$FF,$F8,$FC,$FE,$FE,$FE,$FF,$F8,$C7,$7F,$FF,$FF,$FF,$FF,$F8
		.BYTE $F7,$F8,	3, $F,$3F,$7F,$7F,$FF,$3F,$FF,$FF,$FF,$FF,$FF,$FF,$3F
		.BYTE $DF,  0,$FC,$FF,$FF,$FF,$FF,$FF,$FF,  7,$80,$FC,$FF,$FF,$FF,$FF
		.BYTE $FF,$FF,	0,  0,$80,$C0,$E0,$E0,$F0,$F0,	0,  0,	0,$80,$C0,$C0
		.BYTE $E0,$E0,	0,  0,	0,  0,	0,  0,	0,  1,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0, $F, $F, $F, $F,	7,$43,$E1,$70,	7,  7,	7,  7,	3,  1
		.BYTE $40,$E0,$FF,$FF,$FF,$FF,$FE,$F9,$C1,$3F,$FF,$FF,$FF,$FF,$FF,$FE
		.BYTE $3E,  0,$FB,$E7,$DF,$7F,$FF,$FF,$FE,$F8,$FC,$F9,$E7,$9E,$79,$E6
		.BYTE $99,$67,$C7,$D8,$E3,$F7,$F7,$B7,$33,$39,$38,$A7,$9C,$7B,$9B,$5B
		.BYTE $DD,$DE,$FF, $F,$FF,$FF,$FF,$FF,$FE,$FF, $F,$F3,	1,$FE,$FF,$80
		.BYTE $7D,$FE,$F0,$F0,$E0,$C0,$80,$E0,$F0,$78,$E0,$E0,$C0,$80,	0,  0
		.BYTE $60,$B0, $F,  8,	8, $F,	7,$43,$E1,$F0,	7,  7,	7,  7,	3,  1
		.BYTE $40,$E0,$E0,  1,$1F,$FF,$FF,$FF,$FF,$3F,$FF,$FF,$FF,$FF,$FF,$FE
		.BYTE $3E,  0,$1F,$FF,$FF,$FF,$FF,$FF,$FE,$F8,$FC,$F9,$E7,$9E,$79,$E6
		.BYTE $99,$67,$F0, $C,$FF,$FF,$FF,$FF,$FE,$FF, $F,$F3,	1,$FE,$FF,$80
		.BYTE $7D,$FE,$70,$10,$E0,$C0,$80,$E0,$F0,$78,$E0,$E0,$C0,$80,	0,  0
		.BYTE $60,$B0,	1,  1,	1,  1,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$70,$30,$F3,$FC,$FF,$60,$1F,  0,$E0,$C0,$A0,$A3,$58,$1F
		.BYTE	0,  0,	7,$1F,$FF,  3,$1D,$E2,	1,  0,	1,  7,$1F,$FF,$E3,  1
		.BYTE	0,  0,$E0,$FF,$C0,$C0,$C0,$E0,$63,$BF,$DF,$80,$BF,$BF,$BF,$DF
		.BYTE $DC,$63,$79,$FD,$7D,$7C,$3C,$F8,$E0,$41,$9E,$5E,$9E,$AF,$CF,$3F
		.BYTE $DF,$BE,$FF,$FF,$FF,$FE,$7F,  0,	9,  6,$FE,$FE,$FE,$7D,$80,$FF
		.BYTE $F6,$F8,$78,$78,$78,$F0,$F0,$60,$80,$10,$B0,$B0,$B0,$60,	0,$80
		.BYTE	0,  0,$D0,$90,$F3,$FC,$FF,$60,$1F,  0,$E0,$E0,$A0,$A3,$58,$1F
		.BYTE	0,  0,$40,$38,$1F,$27,$F8,  0,	0,  0,$3F,  7,	0,  0,	0,  0
		.BYTE	0,  0,$82,$8F,$FC,$81,	0,  0,	0,  0,$7D,$70,	0,  0,	0,  0
		.BYTE	0,  0,$1A,$E3,$1E,$E0,	0,  0,	0,  0,$E0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$20,$C0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  9,	0,  0,	0,  0,	0,  0
		.BYTE	1, $A,	0,  0,	0,  0,	8,$20,$F8,$F0,	0,  0,	0,  0,$38,$58
		.BYTE $48,$30,	0,  0,	0,  0,	0,  0,$1B,$5F,	0,  0,	0,  0,	0,  0
		.BYTE $1C,$60,	0,  0,	0,  0,$10,$32,$64,$EC,	0,  0,	0,  0,$10,$32
		.BYTE $E4,$1C,	0,  0,	0,  0,	0,  0,$80,  0,	0,  0,	0,  0,	0,  0
		.BYTE $80,  0,	0,  0,	2,  4,$1C,$21,$1C,  8,	0,  0,	3,  7,$1F,$3F
		.BYTE $22,$36,	0,  0,$80,$40,$40,$80,$80,  0,	0,  0,$80,$C0,$C0,$80
		.BYTE $80,  0,	0,  0,	0,  0,	0, $F,$12,$16,	0,  0,	0,  0,	0, $F
		.BYTE $1F,$1F,$7C,$7A,$4E,$86,$C4,$7C,$78,$D0, $C,$1E,$7E,$FE,$FC,$FC
		.BYTE $F8,$D0,	0,  0,	0,  0,$20,$29,$23,$7E,	0,  0,	0,$20,$21,$2B
		.BYTE $73,$73,	0,  0,$16, $E,$DF,$DB,$3F,$7E,	1, $B,	7, $D,$58,$1D
		.BYTE $FF,$FE,$C0,  0,$40,$80,$80,  0,$40,$20,$20,$C0,$C0,$80,$80,  0
		.BYTE $10,$60,	1,  7, $F,$1F, $F,$3F,$3F,$7F,	1,  4,	8,$10,$10,$20
		.BYTE $20,$60,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,$FD,$FF,$FF,$FF,$FF,$FF,$FF,$7F,	3,  0,	0,  0,	0,  0
		.BYTE	0,$80,$80,$D0,$C0,$E0,$C0,$F0,$F0,$F8,$80,$D0,$40,$20,$20,$10
		.BYTE $10,$18,	0, $C,$12,  3,$1C,  8,	6,  0,	0, $C,$1F,$1F,$1F, $D
		.BYTE	7,  3,$E1,  2, $E,  8,$20,$40,$C0,$80,$7F,$EE,$EE,$C8,$E0,$C0
		.BYTE $C0,$80,	0,  0,	0,  0,	2,$10,	0,  0,	0,  0,	0,  0,	2,$10
		.BYTE	0,  0,$1F, $F, $F,  6,	6,  4,	4,  0,$1F, $F, $F,  6,	6,  4
		.BYTE	4,  0,$80,  0,	0,  0,	0,  0,	0,  0,$80,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  4,	2,  3,	5,  1,	0,  8,	0,  4,	6,  3
		.BYTE	7,  1,$2D,$2E,$2C,$35,$3F,$2F,$F7,$F8,$71,$20,$20,$7E,$60,$F2
		.BYTE $F8,$FF,$1E,$EC,$7D,$F6,$EC,$CA,$12,  4,$EE,$DD,$9F,$1E,$BE,$7E
		.BYTE $FE,$FC,$40,$80,	0,  0,	0,  0,	0,  0,$E0,$C0,	0,  0,	0,  0
		.BYTE	0,  0,$7F,$7F,$7F,$7F,$1F,$1F,$1F,  3,$40,$40,$40,$40,$20,  0
		.BYTE $10,  4,$FF,$FF,$FF,$FB,$FF,$9F,$FF,$FD,	0,  0,	0,  4,	0,$60
		.BYTE	0,  2,$FF,$FF,$FF,$FD,$DF,$9F,$FF,$FF,	0,  0,	0,  2,$20,$60
		.BYTE	0,  0,$F8,$F8,$F8,$F8,$E0,$E0,$E0,  0,	8,  8,	8,  8,$10,  0
		.BYTE $20,$80,	0,  0,	0,  0, $A,  2,	4,  1,	0,  0,	0,  0, $A,  3
		.BYTE	7, $E,	5,  5,	8,$10,$C9,$38,$F0,$C5,	7,  7, $F,$1F,$F7,$C7
		.BYTE  $E,$3D,$80,$86,$D4,$48,	0,$40,$80,$40,$80,$86,$D4,$C8,$80,$40
		.BYTE $80,$40,	0,  8,$18,$38,$50,$10,	0,  0,	0,  8,$18,$38,$70,$F0
		.BYTE $F0,$F0,	0,  0,	0,  0,	0,  0,$40,  0,	0,  0,	0,  0,	0,  0
		.BYTE $40,  0,$3C,  0,	0,  0,	0,  0,	0,  0,$7F,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$E0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	1,  0,	0,  0,	0,  0
		.BYTE	0,  0,$38,$1F,	0,$20,	0,  0,	0,  0,$C7,$1F,	0,  0,	0,  0
		.BYTE	0,  0,$F0,$E0,	0,  0,	0,  0,	0,  0, $E,$E0,	0,  0,	0,  0
		.BYTE	0,  0,	4,  0,	0,  0,	0,  0,	0,  0,	7,  0,	0,  0,	0,  0
		.BYTE	0,  0,$12,  0,	0,  0,	0,  0,	0,  0,$F2,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,$15,$2A,  0,$2A,$2F,$32,$36,	0,$10,$20,$15,$21,$3F
		.BYTE $3F,$3F,$AA,$51, $A,$85,$C6,$7C,$78,$D0,	8,$14,$AA,$F5,$FE,$FC
		.BYTE $F8,$D0,	0,  0,$80,  0,	0,  0,	0,  0,	0,  0,$80,  0,	0,  0
		.BYTE	0,  0,	0,  8,$25, $A,$14, $F,	2,$24,	0,  0,$20,  0,	1,$1F
		.BYTE  $F,$3F,$41,$AA,$52,$94,$84,$2A,$54,$D8,	0,  0,	6,$54,$BC,$FE
		.BYTE $FE,$F8,$7E,$47,$4D,$35,$11,$15,$15,$11,$7F,$7F,$7F,$3F,$1F,$1F
		.BYTE $1F,$1F,$38,  2,	9,$14,$13,$15,$15,$19,$3F,$3F,$1F,$1F,$1F,$1F
		.BYTE $1F,$1F,$A0,$C0,$80,$80,	0,  0,	0,  0,$E0,$C0,$80,$80,	0,  0
		.BYTE	0,  0,$13,$1E,$1C,$38,$50,$10,	0,  0,$1F,$1E,$1C,$38,$70,$F0
		.BYTE $F0,$F0,$13,$16,$1C,$38,$50,$10,	0,  0,$1F,$1E,$1C,$38,$70,$F0
		.BYTE $F0,$F0

; =============== S U B	R O U T	I N E =======================================


load_tiles_state_1F25D:			; CODE XREF: bank_switch_18000:loc_18053p
		JSR	load_palettes_to_ram_1F268
		JSR	upload_tiles_to_ppu_1F32A
		RTS
; End of function load_tiles_state_1F25D


; =============== S U B	R O U T	I N E =======================================


load_obj_tilemap_1F264:			; CODE XREF: bank_switch_18000:loc_18059p
		JSR	sub_1F3B1
		RTS
; End of function load_obj_tilemap_1F264


; =============== S U B	R O U T	I N E =======================================


load_palettes_to_ram_1F268:		; CODE XREF: load_tiles_state_1F25Dp
		LDA	sprite_type_306
		CMP	#0
		BEQ	loc_1F2C3

palette0_F26F:
		LDA	#0
		STA	sprPalIdx_319
		JSR	get_sprite_palette_ptr_1F2F3
		JSR	copy_sprite_palette_to_ram_1F316

palette1_F27A:
		LDA	#1
		STA	sprPalIdx_319
		JSR	get_sprite_palette_ptr_1F2F3
		LDA	data_2
		CLC
		ADC	#4
		STA	data_2
		LDA	data_3
		ADC	#0
		STA	data_3
		JSR	copy_sprite_palette_to_ram_1F316

palette2_F292:
		LDA	#2
		STA	sprPalIdx_319
		JSR	get_sprite_palette_ptr_1F2F3
		LDA	data_2
		CLC
		ADC	#8
		STA	data_2
		LDA	data_3
		ADC	#0
		STA	data_3
		JSR	copy_sprite_palette_to_ram_1F316

palette3_F2AA:
		LDA	#3
		STA	sprPalIdx_319
		JSR	get_sprite_palette_ptr_1F2F3
		LDA	data_2
		CLC
		ADC	#$C
		STA	data_2
		LDA	data_3
		ADC	#0
		STA	data_3
		JSR	copy_sprite_palette_to_ram_1F316
		RTS
; ---------------------------------------------------------------------------

loc_1F2C3:				; CODE XREF: load_palettes_to_ram_1F268+5j
		LDA	#0
		STA	objectIdx_318
		STA	sprPalIdx_319
		JSR	get_sprite_palette_ptr_1F2F3
		JSR	copy_sprite_palette_to_ram_1F316
		LDX	#0

loop_1F2D3:				; CODE XREF: load_palettes_to_ram_1F268+87j
		CPX	objArraySize_373
		BEQ	return_1F2F2
		LDA	objIdxArray_375,X
		STA	objectIdx_318
		LDA	objPalIdxArray_3F7,X
		STA	sprPalIdx_319
		TXA
		PHA
		JSR	get_sprite_palette_ptr_1F2F3
		JSR	copy_sprite_palette_to_ram_1F316
		PLA
		TAX
		INX
		JMP	loop_1F2D3
; ---------------------------------------------------------------------------

return_1F2F2:				; CODE XREF: load_palettes_to_ram_1F268+6Ej
		RTS
; End of function load_palettes_to_ram_1F268


; =============== S U B	R O U T	I N E =======================================


get_sprite_palette_ptr_1F2F3:		; CODE XREF: load_palettes_to_ram_1F268+Cp
					; load_palettes_to_ram_1F268+17p ...
		LDA	#$79 ; 'y'
		STA	ptr_0
		LDA	#$80 ; '�'
		STA	ptr_1

get_offset_F2FB:
		LDA	objectIdx_318
		ASL	A
		CLC
		ADC	ptr_0
		STA	ptr_0
		LDA	ptr_1
		ADC	#0
		STA	ptr_1

get_ptr_F30A:
		LDY	#0
		LDA	(ptr_0),Y
		STA	data_2
		INY
		LDA	(ptr_0),Y
		STA	data_3
		RTS
; End of function get_sprite_palette_ptr_1F2F3


; =============== S U B	R O U T	I N E =======================================


copy_sprite_palette_to_ram_1F316:	; CODE XREF: load_palettes_to_ram_1F268+Fp
					; load_palettes_to_ram_1F268+27p ...
		LDY	#0
		LDA	sprPalIdx_319
		ASL	A
		ASL	A
		TAX

loc_1F31E:				; CODE XREF: copy_sprite_palette_to_ram_1F316+11j
		LDA	(data_2),Y
		STA	sprite_palette_331,X ; "����������������"
		INX
		INY
		CPY	#4
		BCC	loc_1F31E
		RTS
; End of function copy_sprite_palette_to_ram_1F316


; =============== S U B	R O U T	I N E =======================================


upload_tiles_to_ppu_1F32A:		; CODE XREF: load_tiles_state_1F25D+3p
		LDA	sprite_type_306
		CMP	#0
		BEQ	loc_1F33D
		LDA	#0
		STA	sprite_secondByte_31B
		JSR	load_sprite_to_vram_1F36D
		JSR	upload_to_ppu_1F6D1
		RTS
; ---------------------------------------------------------------------------

loc_1F33D:				; CODE XREF: upload_tiles_to_ppu_1F32A+5j
		LDA	#0
		STA	objectIdx_318
		STA	sprite_secondByte_31B
		JSR	load_sprite_to_vram_1F36D
		JSR	upload_to_ppu_1F6D1
		LDX	#0

loc_1F34D:				; CODE XREF: upload_tiles_to_ppu_1F32A+3Fj
		CPX	objArraySize_373
		BEQ	locret_1F36C
		LDA	objIdxArray_375,X
		STA	objectIdx_318
		LDA	unk_401,X
		STA	sprite_secondByte_31B
		TXA
		PHA
		JSR	load_sprite_to_vram_1F36D
		JSR	upload_to_ppu_1F6D1
		PLA
		TAX
		INX
		JMP	loc_1F34D
; ---------------------------------------------------------------------------

locret_1F36C:				; CODE XREF: upload_tiles_to_ppu_1F32A+26j
		RTS
; End of function upload_tiles_to_ppu_1F32A


; =============== S U B	R O U T	I N E =======================================


load_sprite_to_vram_1F36D:		; CODE XREF: bank_switch_18000:loc_1805Fp
					; upload_tiles_to_ppu_1F32A+Cp	...
		LDA	#$A1 ; '�'
		STA	ptr_0
		INY
		LDA	#$93 ; '�'
		STA	ptr_1

get_offset_F376:			; spriteIdx
		LDA	objectIdx_318
		ASL	A
		CLC
		ADC	ptr_0
		STA	ptr_0
		LDA	ptr_1
		ADC	#0
		STA	ptr_1

get_ptr_F385:
		LDY	#0
		LDA	(ptr_0),Y
		STA	data_2
		INY
		LDA	(ptr_0),Y
		STA	data_3

get_sprite_length_F390:
		LDY	#0
		LDA	(data_2),Y
		STA	sprite_length_30F

get_sprite_descr2_F397:
		LDA	sprite_secondByte_31B
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
		RTS
; End of function load_sprite_to_vram_1F36D


; =============== S U B	R O U T	I N E =======================================


sub_1F3B1:				; CODE XREF: load_obj_tilemap_1F264p
		JSR	load_sprite_tilemap_1F3B8
		JSR	sub_1F416
		RTS
; End of function sub_1F3B1


; =============== S U B	R O U T	I N E =======================================


load_sprite_tilemap_1F3B8:		; CODE XREF: bank_switch_18000+62p
					; sub_1F3B1p
		LDA	#$5F ; '_'
		STA	data_2
		INY
		LDA	#$82 ; '�'
		STA	data_3

get_container_offset_F3C1:
		LDA	objectIdx_318
		ASL	A
		CLC
		ADC	data_2
		STA	data_2
		LDA	data_3
		ADC	#0
		STA	data_3

get_container_ptr_F3D0:
		LDY	#0
		LDA	(data_2),Y
		STA	ptr_0
		INY
		LDA	(data_2),Y
		STA	ptr_1

get_tilemap_offset_F3DB:
		LDA	objMapIdx_316
		ASL	A
		CLC
		ADC	ptr_0
		STA	ptr_0
		LDA	ptr_1
		ADC	#0
		STA	ptr_1

get_tilemap_ptr_F3EA:
		LDY	#0
		LDA	(ptr_0),Y
		STA	data_2
		INY
		LDA	(ptr_0),Y
		STA	data_3

get_width_F3F5:
		LDY	#0
		LDA	(data_2),Y
		STA	tilemapWidth_308
		INY

get_height_F3FD:
		LDA	(data_2),Y
		STA	tilemapHeight_30A
		INY

get_frame_count_F403:
		LDA	(data_2),Y
		STA	tilemapFrameCount_30D

add_offset_F408:
		LDA	data_2
		CLC
		ADC	#3
		STA	data_2
		LDA	data_3
		ADC	#0
		STA	data_3
		RTS
; End of function load_sprite_tilemap_1F3B8


; =============== S U B	R O U T	I N E =======================================


sub_1F416:				; CODE XREF: sub_1F3B1+3p
		LDA	#0
		CLC
		ADC	byte_31A
		STA	ptr_0
		LDA	#2
		ADC	#0
		STA	ptr_1
		LDA	byte_317
		AND	#$40 ; '@'
		CMP	#$40 ; '@'
		BNE	loc_1F430
		JMP	loc_1F4CA
; ---------------------------------------------------------------------------

loc_1F430:				; CODE XREF: sub_1F416+15j
		LDA	byte_317
		AND	#$80 ; '�'
		CMP	#$80 ; '�'
		BNE	loc_1F43C
		JMP	loc_1F559
; ---------------------------------------------------------------------------

loc_1F43C:				; CODE XREF: sub_1F416+21j
		LDX	#0
		LDY	#0

loc_1F440:				; CODE XREF: sub_1F416+ABj
		LDA	byte_36A
		PHA
		LDA	byte_36B
		PHA
		LDA	#0
		STA	tilemapTypeUnk_30B

loc_1F44D:				; CODE XREF: sub_1F416+7Cj
		JSR	sub_1F5FF
		LDA	ppu_unk_byte_309
		STA	(ptr_0),Y
		INY
		TYA
		PHA
		LDY	tilemapTypeUnk_30B
		LDA	(data_2),Y
		CLC
		ADC	sprite_secondByte_31B
		STA	inv_spr_dscr1_30C
		PLA
		TAY
		LDA	inv_spr_dscr1_30C
		STA	(ptr_0),Y
		INY
		LDA	byte_317
		STA	(ptr_0),Y
		INY
		LDA	tilemap_size_307
		STA	(ptr_0),Y
		INY
		LDA	byte_36A
		CLC
		ADC	#8
		STA	byte_36A
		LDA	byte_36B
		ADC	#0
		STA	byte_36B
		INC	tilemapTypeUnk_30B
		LDA	tilemapTypeUnk_30B
		CMP	tilemapWidth_308
		BCC	loc_1F44D
		PLA
		STA	byte_36B
		PLA
		STA	byte_36A
		LDA	data_2
		CLC
		ADC	tilemapWidth_308
		STA	data_2
		LDA	data_3
		ADC	#0
		STA	data_3
		LDA	byte_366
		CLC
		ADC	#8
		STA	byte_366
		LDA	byte_367
		ADC	#0
		STA	byte_367
		INX
		CPX	tilemapHeight_30A
		BEQ	loc_1F4C4
		JMP	loc_1F440
; ---------------------------------------------------------------------------

loc_1F4C4:				; CODE XREF: sub_1F416+A9j
		LDA	#0
		STA	byte_317
		RTS
; ---------------------------------------------------------------------------

loc_1F4CA:				; CODE XREF: sub_1F416+17j
		LDX	#0
		LDY	#0

loc_1F4CE:				; CODE XREF: sub_1F416+13Aj
		LDA	byte_36A
		PHA
		LDA	byte_36B
		PHA
		LDA	tilemapWidth_308
		STA	tilemapTypeUnk_30B

loc_1F4DC:				; CODE XREF: sub_1F416+10Bj
		JSR	sub_1F5FF
		LDA	ppu_unk_byte_309
		STA	(ptr_0),Y
		INY
		TYA
		PHA
		LDY	tilemapTypeUnk_30B
		DEY
		LDA	(data_2),Y
		CLC
		ADC	sprite_secondByte_31B
		STA	inv_spr_dscr1_30C
		PLA
		TAY
		LDA	inv_spr_dscr1_30C
		STA	(ptr_0),Y
		INY
		LDA	byte_317
		STA	(ptr_0),Y
		INY
		LDA	tilemap_size_307
		STA	(ptr_0),Y
		INY
		LDA	byte_36A
		CLC
		ADC	#8
		STA	byte_36A
		LDA	byte_36B
		ADC	#0
		STA	byte_36B
		DEC	tilemapTypeUnk_30B
		LDA	tilemapTypeUnk_30B
		CMP	#0
		BNE	loc_1F4DC
		PLA
		STA	byte_36B
		PLA
		STA	byte_36A
		LDA	data_2
		CLC
		ADC	tilemapWidth_308
		STA	data_2
		LDA	data_3
		ADC	#0
		STA	data_3
		LDA	byte_366
		CLC
		ADC	#8
		STA	byte_366
		LDA	byte_367
		ADC	#0
		STA	byte_367
		INX
		CPX	tilemapHeight_30A
		BEQ	loc_1F553
		JMP	loc_1F4CE
; ---------------------------------------------------------------------------

loc_1F553:				; CODE XREF: sub_1F416+138j
		LDA	#0
		STA	byte_317
		RTS
; ---------------------------------------------------------------------------

loc_1F559:				; CODE XREF: sub_1F416+23j
		LDY	tilemapHeight_30A
		DEY

loc_1F55D:				; CODE XREF: sub_1F416+159j
		CPY	#0
		BEQ	loc_1F572
		LDA	data_2
		CLC
		ADC	tilemapWidth_308
		STA	data_2
		LDA	data_3
		CLC
		STA	data_3
		DEY
		JMP	loc_1F55D
; ---------------------------------------------------------------------------

loc_1F572:				; CODE XREF: sub_1F416+149j
		LDX	#0
		LDY	#0

loc_1F576:				; CODE XREF: sub_1F416+1E0j
		LDA	byte_36A
		PHA
		LDA	byte_36B
		PHA
		LDA	#0
		STA	tilemapTypeUnk_30B

loc_1F583:				; CODE XREF: sub_1F416+1B1j
		JSR	sub_1F5FF
		LDA	ppu_unk_byte_309
		STA	(ptr_0),Y
		INY
		TYA
		PHA
		LDY	tilemapTypeUnk_30B
		LDA	(data_2),Y
		CLC
		ADC	sprite_secondByte_31B
		STA	inv_spr_dscr1_30C
		PLA
		TAY
		LDA	inv_spr_dscr1_30C
		STA	(ptr_0),Y
		INY
		LDA	byte_317
		STA	(ptr_0),Y
		INY
		LDA	tilemap_size_307
		STA	(ptr_0),Y
		INY
		LDA	byte_36A
		CLC
		ADC	#8
		STA	byte_36A
		LDA	byte_36B
		ADC	#0
		STA	byte_36B
		DEC	tilemapTypeUnk_30B
		LDA	tilemapTypeUnk_30B
		CMP	#0
		BNE	loc_1F583
		PLA
		STA	byte_36B
		PLA
		STA	byte_36A
		LDA	data_2
		SEC
		SBC	tilemapWidth_308
		STA	data_2
		LDA	data_3
		SBC	#0
		STA	data_3
		LDA	byte_366
		CLC
		ADC	#8
		STA	byte_366
		LDA	byte_367
		ADC	#0
		STA	byte_367
		INX
		CPX	tilemapHeight_30A
		BEQ	loc_1F5F9
		JMP	loc_1F576
; ---------------------------------------------------------------------------

loc_1F5F9:				; CODE XREF: sub_1F416+1DEj
		LDA	#0
		STA	byte_317
		RTS
; End of function sub_1F416


; =============== S U B	R O U T	I N E =======================================


sub_1F5FF:				; CODE XREF: sub_1F416:loc_1F44Dp
					; sub_1F416:loc_1F4DCp	...
		LDA	ppu_scroll_x_304
		STA	byte_36C
		LDA	ppu_unk_byte_302
		STA	byte_36D
		LDA	ppu_scroll_y_305
		STA	byte_368
		LDA	ppu_unk_byte_303
		STA	byte_369
		JSR	sub_1F6AB
		LDA	byte_36A
		SEC
		SBC	byte_36C
		LDA	byte_36B
		SBC	byte_36D
		BCC	loc_1F68D
		LDA	byte_366
		SEC
		SBC	byte_368
		LDA	byte_367
		SBC	byte_369
		BCC	loc_1F68D
		INC	byte_36D
		LDA	byte_368
		CLC
		ADC	#$F0 ; '�'
		STA	byte_368
		LDA	byte_369
		ADC	#0
		STA	byte_369
		LDA	byte_36C
		SEC
		SBC	byte_36A
		LDA	byte_36D
		SBC	byte_36B
		BCC	loc_1F68D
		LDA	byte_36C
		CMP	byte_36A
		BNE	loc_1F66B
		LDA	byte_36D
		CMP	byte_36B
		BEQ	loc_1F68D

loc_1F66B:				; CODE XREF: sub_1F5FF+62j
		LDA	byte_368
		SEC
		SBC	byte_366
		LDA	byte_369
		SBC	byte_367
		BCC	loc_1F68D
		LDA	byte_368
		CMP	byte_366
		BNE	loc_1F693
		LDA	byte_369
		CMP	byte_367
		BEQ	loc_1F68D
		JMP	loc_1F693
; ---------------------------------------------------------------------------

loc_1F68D:				; CODE XREF: sub_1F5FF+28j
					; sub_1F5FF+37j ...
		LDA	#$F0 ; '�'
		STA	ppu_unk_byte_309
		RTS
; ---------------------------------------------------------------------------

loc_1F693:				; CODE XREF: sub_1F5FF+81j
					; sub_1F5FF+8Bj
		LDA	byte_36A
		SEC
		SBC	byte_36C
		STA	tilemap_size_307
		LDA	byte_366
		SEC
		SBC	byte_368
		SEC
		SBC	#$10
		STA	ppu_unk_byte_309
		RTS
; End of function sub_1F5FF


; =============== S U B	R O U T	I N E =======================================


sub_1F6AB:				; CODE XREF: sub_1F5FF+18p
		TYA
		PHA
		LDY	byte_369
		LDA	#0
		STA	byte_369

loc_1F6B5:				; CODE XREF: sub_1F6AB+20j
		CPY	#0
		BEQ	loc_1F6CE
		LDA	byte_368
		CLC
		ADC	#$F0 ; '�'
		STA	byte_368
		LDA	byte_369
		ADC	#0
		STA	byte_369
		DEY
		JMP	loc_1F6B5
; ---------------------------------------------------------------------------

loc_1F6CE:				; CODE XREF: sub_1F6AB+Cj
		PLA
		TAY
		RTS
; End of function sub_1F6AB


; =============== S U B	R O U T	I N E =======================================


upload_to_ppu_1F6D1:			; CODE XREF: upload_tiles_to_ppu_1F32A+Fp
					; upload_tiles_to_ppu_1F32A+1Ep ...
		LDY	#0
		LDA	(data_2),Y
		STA	tilemapWidth_308
		LDA	data_2
		CLC
		ADC	#2
		STA	data_2
		LDA	data_3
		ADC	#0
		STA	data_3
		LDX	#0

loc_1F6E7:				; CODE XREF: upload_to_ppu_1F6D1+4Aj
		LDA	ptr_1
		STA	_PPU_ADDR
		LDA	ptr_0
		STA	_PPU_ADDR
		LDY	#0

loc_1F6F3:				; CODE XREF: upload_to_ppu_1F6D1+2Aj
		LDA	(data_2),Y
		STA	_PPU_DATA
		INY
		CPY	#$10
		BCC	loc_1F6F3
		LDA	ptr_0
		CLC
		ADC	#$10
		STA	ptr_0
		LDA	ptr_1
		ADC	#0
		STA	ptr_1
		LDA	data_2
		CLC
		ADC	#$10
		STA	data_2
		LDA	data_3
		ADC	#0
		STA	data_3
		INX
		CPX	tilemapWidth_308
		BCC	loc_1F6E7
		RTS
; End of function upload_to_ppu_1F6D1


; =============== S U B	R O U T	I N E =======================================


sub_1F71E:
		LDA	#1
		STA	has_ppu_data_to_upload_6F

loc_1F722:				; CODE XREF: sub_1F71E+6j
		LDA	has_ppu_data_to_upload_6F
		BNE	loc_1F722
		RTS
; End of function sub_1F71E


; =============== S U B	R O U T	I N E =======================================


wait_vblank_1F727:			; CODE XREF: wait_vblank_1F727+3j
		LDA	_PPU_STATUS
		BMI	wait_vblank_1F727

loc_1F72C:				; CODE XREF: wait_vblank_1F727+8j
		LDA	_PPU_STATUS
		BPL	loc_1F72C
		RTS
; End of function wait_vblank_1F727


; =============== S U B	R O U T	I N E =======================================


wait_for_count350_zero_1F732:
		LDA	#1
		STA	frame_render_count_350

loc_1F737:				; CODE XREF: wait_for_count350_zero_1F732+8j
		LDA	frame_render_count_350
		BNE	loc_1F737
		RTS
; End of function wait_for_count350_zero_1F732


; =============== S U B	R O U T	I N E =======================================


sub_1F73D:
		LDY	#0

loc_1F73F:				; CODE XREF: sub_1F73D+Fj
		LDX	#0

loc_1F741:				; CODE XREF: sub_1F73D+Cj
		LDA	input_reg1_347
		CMP	#0
		BNE	locret_1F74E
		INX
		BNE	loc_1F741
		INY
		BNE	loc_1F73F

locret_1F74E:				; CODE XREF: sub_1F73D+9j
		RTS
; End of function sub_1F73D


; =============== S U B	R O U T	I N E =======================================


unused_1F74F:				; CODE XREF: unused_1F74F+5j
		LDA	input_pressed_34A
		CMP	#a_80
		BNE	unused_1F74F
		RTS
; End of function unused_1F74F


; =============== S U B	R O U T	I N E =======================================


unused_1F757:				; CODE XREF: unused_1F757+5j
		LDA	input_pressed_34A
		CMP	#$40 ; '@'
		BNE	unused_1F757
		RTS
; End of function unused_1F757


; =============== S U B	R O U T	I N E =======================================


unused_1F75F:				; CODE XREF: unused_1F75F+5j
		LDA	input_pressed_34A
		CMP	#0
		BEQ	unused_1F75F
		RTS
; End of function unused_1F75F


; =============== S U B	R O U T	I N E =======================================


sub_1F767:				; CODE XREF: sub_1F767+8j
		PHA
		JSR	sub_1F772
		PLA
		SEC
		SBC	#1
		BNE	sub_1F767
		RTS
; End of function sub_1F767


; =============== S U B	R O U T	I N E =======================================


sub_1F772:				; CODE XREF: sub_1F767+1p
		PHA
		TXA
		PHA
		TYA
		PHA
		LDX	#0

loc_1F779:				; CODE XREF: sub_1F772+Dj
		LDY	#0

loc_1F77B:				; CODE XREF: sub_1F772+Aj
		DEY
		BNE	loc_1F77B
		DEX
		BNE	loc_1F779
		PLA
		TAY
		PLA
		TAX
		PLA
		RTS
; End of function sub_1F772


; =============== S U B	R O U T	I N E =======================================


nmi_sub_1F787:				; CODE XREF: NMI_1F7E5+18p
		LDA	#$F0 ; '�'
		STA	byte_218
		STA	byte_21C
		STA	byte_220
		STA	byte_224
		STA	byte_2E8
		STA	byte_2EC
		RTS
; End of function nmi_sub_1F787


; =============== S U B	R O U T	I N E =======================================


sub_1F79C:				; CODE XREF: NMI_1F7E5+30p
		LDA	byte_43E
		BEQ	loc_1F7C3
		LDA	byte_203
		BNE	loc_1F7AE
		LDA	#0
		STA	byte_43E
		JMP	locret_1F7E4
; ---------------------------------------------------------------------------

loc_1F7AE:				; CODE XREF: sub_1F79C+8j
		LDA	byte_203
		SEC
		SBC	#8
		STA	byte_203
		LDA	byte_207
		SEC
		SBC	#8
		STA	byte_207
		JMP	locret_1F7E4
; ---------------------------------------------------------------------------

loc_1F7C3:				; CODE XREF: sub_1F79C+3j
		LDA	byte_203
		CMP	#$F8 ; '�'
		BNE	loc_1F7D2
		LDA	#1
		STA	byte_43E
		JMP	locret_1F7E4
; ---------------------------------------------------------------------------

loc_1F7D2:				; CODE XREF: sub_1F79C+2Cj
		LDA	byte_203
		CLC
		ADC	#8
		STA	byte_203
		LDA	byte_207
		CLC
		ADC	#8
		STA	byte_207

locret_1F7E4:				; CODE XREF: sub_1F79C+Fj
					; sub_1F79C+24j ...
		RTS
; End of function sub_1F79C


; =============== S U B	R O U T	I N E =======================================


NMI_1F7E5:				; DATA XREF: BANK_01:FFFAo
		PHP
		PHA
		TXA
		PHA
		TYA
		PHA
		LDA	bank_switch_flag_6C
		CMP	#$88 ; '�'
		BEQ	loc_1F7F4
		JMP	loc_1F825
; ---------------------------------------------------------------------------

loc_1F7F4:				; CODE XREF: NMI_1F7E5+Aj
		LDA	#$EE ; '�'
		STA	bank_switch_flag_6C
		LDA	sprite_type_306
		BNE	loc_1F800
		JSR	nmi_sub_1F787

loc_1F800:				; CODE XREF: NMI_1F7E5+16j
		LDA	#2
		STA	_PPU_OAM_DMA
		JSR	ppu_upload_data_1F85D
		JSR	ppu_update_state_1F8B2
		JSR	input_update_1F8CB
		LDA	sprite_type_306
		CMP	#1
		BNE	loc_1F81B
		JSR	sub_1F79C
		JSR	sub_1F968

loc_1F81B:				; CODE XREF: NMI_1F7E5+2Ej
		JSR	sub_1F92E
		JSR	apu_music_update_1F9C0
		LDA	#$88 ; '�'
		STA	bank_switch_flag_6C

loc_1F825:				; CODE XREF: NMI_1F7E5+Cj
		LDA	byte_432
		BEQ	loc_1F82D
		DEC	byte_432

loc_1F82D:				; CODE XREF: NMI_1F7E5+43j
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
		BEQ	stack_revert_1F856
		DEC	frame_render_count_350

stack_revert_1F856:			; CODE XREF: NMI_1F7E5+6Cj
		PLA
		TAY
		PLA
		TAX
		PLA
		PLP

exit_1F85C:				; DATA XREF: BANK_01:FFFEo
		RTI
; End of function NMI_1F7E5


; =============== S U B	R O U T	I N E =======================================


ppu_upload_data_1F85D:			; CODE XREF: NMI_1F7E5+20p
		LDA	has_ppu_data_to_upload_6F
		BNE	start_upload_1F862
		RTS
; ---------------------------------------------------------------------------

start_upload_1F862:			; CODE XREF: ppu_upload_data_1F85D+2j
		LDA	ppu_data_70
		BEQ	return_1F8AD
		STA	ppu_fld0_x_6D
		LDX	#1

next_entry_1F86A:			; CODE XREF: ppu_upload_data_1F85D+4Dj
		LDA	ppu_data_70,X
		AND	#$80 ; '�'
		BEQ	loc_1F87E
		LDA	ppu_ctrl_31F
		ORA	#4
		STA	ppu_ctrl_31F
		STA	_PPU_CTRL
		JMP	loc_1F889
; ---------------------------------------------------------------------------

loc_1F87E:				; CODE XREF: ppu_upload_data_1F85D+11j
		LDA	ppu_ctrl_31F
		AND	#$FB ; '�'
		STA	ppu_ctrl_31F
		STA	_PPU_CTRL

loc_1F889:				; CODE XREF: ppu_upload_data_1F85D+1Ej
		LDA	ppu_data_70,X
		AND	#$7F ; ''
		STA	ppu_fld1_y_6E
		INX
		LDA	ppu_data_70,X
		STA	_PPU_ADDR
		INX
		LDA	ppu_data_70,X
		STA	_PPU_ADDR

write_to_ppu_1F89B:			; CODE XREF: ppu_upload_data_1F85D+46j
		INX
		LDA	ppu_data_70,X
		STA	_PPU_DATA
		DEC	ppu_fld1_y_6E
		BNE	write_to_ppu_1F89B
		DEC	ppu_fld0_x_6D
		BEQ	return_1F8AD
		INX
		JMP	next_entry_1F86A
; ---------------------------------------------------------------------------

return_1F8AD:				; CODE XREF: ppu_upload_data_1F85D+7j
					; ppu_upload_data_1F85D+4Aj
		LDA	#0
		STA	has_ppu_data_to_upload_6F
		RTS
; End of function ppu_upload_data_1F85D


; =============== S U B	R O U T	I N E =======================================


ppu_update_state_1F8B2:			; CODE XREF: NMI_1F7E5+23p
		LDA	ppu_ctrl_31F
		STA	_PPU_CTRL
		LDA	ppu_mask_320
		STA	_PPU_MASK
		LDA	ppu_scroll_x_304
		STA	_PPU_SCROLL
		LDA	ppu_scroll_y_305
		STA	_PPU_SCROLL
		RTS
; End of function ppu_update_state_1F8B2


; =============== S U B	R O U T	I N E =======================================


input_update_1F8CB:			; CODE XREF: NMI_1F7E5+26p
		TYA
		PHA
		TYA
		PHA
		JSR	pad_input_update_1F8E3
		JSR	input_sub_1F903
		LDA	input_pressed_34A
		ORA	input_unk_34B
		STA	input_unk_349
		PLA
		TAX
		PLA
		TAY
		RTS
; End of function input_update_1F8CB


; =============== S U B	R O U T	I N E =======================================


pad_input_update_1F8E3:			; CODE XREF: input_update_1F8CB+4p
		LDX	#1
		STX	_PAD0_REG
		DEX
		STX	_PAD0_REG
		LDA	#0
		LDY	#8

loc_1F8F0:				; CODE XREF: pad_input_update_1F8E3+1Aj
		PHA
		LDA	_PAD0_REG,X
		STA	input_reg0_34E
		LSR	input_reg0_34E
		PLA
		ROL	A
		DEY
		BNE	loc_1F8F0
		STA	input_reg1_347,X
		RTS
; End of function pad_input_update_1F8E3


; =============== S U B	R O U T	I N E =======================================


input_sub_1F903:			; CODE XREF: input_update_1F8CB+7p
		LDX	#0
		LDA	input_reg1_347,X
		EOR	input_unk_34C,X
		AND	input_reg1_347,X
		STA	input_pressed_34A,X
		LDA	input_reg1_347,X
		STA	input_unk_34C,X
		RTS
; End of function input_sub_1F903


; =============== S U B	R O U T	I N E =======================================


ppu_update_ctrl_mask_1F918:
		LDA	ppu_ctrl_31F
		STA	_PPU_CTRL
		LDA	ppu_mask_320
		STA	_PPU_MASK
		RTS
; End of function ppu_update_ctrl_mask_1F918


; =============== S U B	R O U T	I N E =======================================


unused_1F925:
		LDA	#0
		STA	_PPU_CTRL
		STA	_PPU_MASK
		RTS
; End of function unused_1F925


; =============== S U B	R O U T	I N E =======================================


sub_1F92E:				; CODE XREF: NMI_1F7E5:loc_1F81Bp
		INC	byte_353
		LDA	byte_353
		CMP	#$19
		BCS	loc_1F939
		RTS
; ---------------------------------------------------------------------------

loc_1F939:				; CODE XREF: sub_1F92E+8j
		LDA	#0
		STA	byte_353
		LDA	byte_354
		CMP	#0
		BNE	loc_1F964
		LDA	byte_355
		CMP	#0
		BNE	loc_1F95C
		LDA	byte_356
		CMP	#0
		BNE	loc_1F954
		RTS
; ---------------------------------------------------------------------------

loc_1F954:				; CODE XREF: sub_1F92E+23j
		DEC	byte_356
		LDA	#$A
		STA	byte_355

loc_1F95C:				; CODE XREF: sub_1F92E+1Cj
		DEC	byte_355
		LDA	#$A
		STA	byte_354

loc_1F964:				; CODE XREF: sub_1F92E+15j
		DEC	byte_354
		RTS
; End of function sub_1F92E


; =============== S U B	R O U T	I N E =======================================


sub_1F968:				; CODE XREF: NMI_1F7E5+33p
		INC	scroll_offset_x_479
		LDA	scroll_offset_x_479
		CMP	#$A
		BCC	locret_1F9BF
		LDA	scroll_offset_y_47A
		EOR	#$80 ; '�'
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		AND	#$FE ; '�'
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		AND	#$7F ; ''
		CMP	#0
		BEQ	locret_1F9BF
		LDA	scroll_offset_y_47A
		PHA
		LDA	scroll_offset_y_47A
		AND	#$80 ; '�'
		CMP	#0
		BEQ	loc_1F9A0
		LDA	#0
		STA	ppu_scroll_y_305
		JMP	loc_1F9B2
; ---------------------------------------------------------------------------

loc_1F9A0:				; CODE XREF: sub_1F968+2Ej
		LDA	scroll_offset_y_47A
		AND	#$7F ; ''
		STA	scroll_offset_y_47A
		LDA	ppu_scroll_y_305
		CLC
		ADC	scroll_offset_y_47A
		STA	ppu_scroll_y_305

loc_1F9B2:				; CODE XREF: sub_1F968+35j
		PLA
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		SEC
		SBC	#2
		STA	scroll_offset_y_47A

locret_1F9BF:				; CODE XREF: sub_1F968+8j
					; sub_1F968+21j
		RTS
; End of function sub_1F968


; =============== S U B	R O U T	I N E =======================================


apu_music_update_1F9C0:			; CODE XREF: NMI_1F7E5+39p
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
		JSR	bank_switch_18000 ; SPRITE_BANK
		PLA
		STA	bank_from_343
		PLA
		STA	bank_to_344
		PLA
		STA	bank_command_346
		RTS
; End of function apu_music_update_1F9C0

; ---------------------------------------------------------------------------
		.BYTE $8B,$46,$1E, $B,$46,$1C,$75,  3,$E9,$CB,	0,$8B,$46, $E,$85,$C0
		.BYTE $78,  3,$E9,$C1,	0,$C4,$76,$10,$26,$8A,	4,$30,$E4,$85,$C0,$75
		.BYTE	3,$E9,$B2,  0,$C7,$46, $C,  0,	0,$C4,$76,$10,$26,$8A,	4,$30
		.BYTE $E4,$85,$C0,$89,$46,  0,$74,$1D,$8A,$5E,$14,$30,$FF,$3B,$C3,$74
		.BYTE $14,$8B,$46, $C,$FF,$46, $C,$8B,$F8,$FF,$46,$10,$26,$8A,	4,$88
		.BYTE $85,$81,$5C,$EB,$D4,$8A,$46,$14,$30,$E4,$C4,$76,$10,$26,$8A,$1C
		.BYTE $30,$FF,$3B,$D8,$75,  3,$FF,$46,$10,$A0,$C6,  0,$30,$E4,$8B,$76
		.BYTE  $C,$8A,$9C,$80,$5C,$30,$FF,$3B,$D8,$89,$46,  4,$74,$16,$C4,$7E
		.BYTE $1C,$26,$8A,$1D,$30,$FF,$3B,$D8,$74, $A,$A0,$C6,	0,$88,$84,$81
		.BYTE $5C,$FF,$46, $C,$8B,$76, $C,$C6,$84,$81,$5C,  0,$FF,$76,$1E,$FF
		.BYTE $76,$1C,$1E,$B8,$81,$5C,$50,$9A,$41,  3,$FA, $B,$8B,$E5,$B8,  4
		.BYTE	0,$50,$1E,$B8,$81,$5C,$50,$9A,	3,  0,$97,$1F,$8B,$E5,$89,$46
		.BYTE  $E,$E9,$47,$FF,$FF,$76,$1E,$FF,$76,$1C,$1E,$B8,$81,$5C,$50,$9A
		.BYTE $7B,  3,$FA, $B,$8B,$E5,$8B,$46, $E,$83,$C4,$16,$5D,$CB,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	3,  0,$4C,$43,$20,$33
		.BYTE $2E,$30,$30,  0,	7, $A,$ED,$30,$B0,  7,	0,  8,$C0,$EC,	0,  0
		.BYTE $EA, $B,	0,  0,$21,$22,	0,  0,$6D,$31,	0,  0,$3E,$5F,$30,  0
		.BYTE	0,  0,$57,$53,$70,$62,	1,  0,$C0,$EC,	0,  0,$D8,  7,$ED,$30
		.BYTE $B0,  7,$ED,$30,	4,  0,	9,  0,$ED,  7,$ED,$30,	0,  0,$D8, $B
		.BYTE $E2,  0,	6,  1,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	1,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0
aInvalidStackSizeInsu_6:.BYTE 'Invalid stack size',$D,$A
		.BYTE '$Insufficient memory',$D,$A
		.BYTE '$',$A
		.BYTE '2500 A.D. Linker  Copyright (C) 1985  -  Version 4.01f',$A
		.BYTE $A,0
		.BYTE $18
aFListingDestinationN_6:.BYTE 'F',$5C,'Listing Destination  (N, T, D, E, L, P, <CR> = N) : ',0
aErrorOnlyListingDest_7:.BYTE 'Error Only Listing Destination  (T, D, P, <CR> = T) : ',0
aListOnOffListingDes_16:.BYTE 'LIST ON/OFF Listing Destination  (T, D, P, <CR> = T) : ',0
aEnterRunTimeSelecti_16:.BYTE $A
		.BYTE $A
		.BYTE 'Enter Run Time Selection : ',0
		.BYTE $A,0
aAssemblyTerminatedB_14:.BYTE 'Assembly Terminated By Operator',$A
		.BYTE $A,0
aCanTCreateDiskListi_16:.BYTE 'Can',$27,'t Create Disk Listing File',$A,0
aActiveCommands_17:.BYTE $A
		.BYTE '                         ***** Active Commands *****',$A
		.BYTE $A,0
aCtrlSStopOutput_16:.BYTE '                           Ctrl S = Stop Output',$A,0
aCtrlQStartOutput_17:.BYTE '                           Ctrl Q = Start Output',$A,0
aEscCStopAssembly_17:.BYTE '                           Esc  C = Stop Assembly',$A,0
aEscTTerminalOutput_17:.BYTE '                           Esc  T = Terminal Output',$A,0
aEscPPrinterOutput_17:.BYTE '                           Esc  P = Printer Output',$A,0
aEscDDiskOutput_17:.BYTE '                           Esc  D = Disk Output',$A,0
aEscMMultipleOutput_17:.BYTE '                           Esc  M = Multiple Output',$A,0
aEscNNoOutput_18:.BYTE '                           Esc  N = No Output',$A
		.BYTE $A,0
aRenameFileError_17:.BYTE 'Rename File Error',$A,0
aPage4u_17:	.BYTE 'Page %4u',0
aLib_17:	.BYTE 'LIB',0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE	0
aC_17:		.BYTE '%c',0
		.BYTE  $A
aMaximumNumberOfDiff_18:.BYTE 'Maximum Number of Different Sections (%d) Exceeded.  Link Term'
		.BYTE 'inated.',$A
		.BYTE $A,0
aS_17:		.BYTE '%s',0
		.BYTE	0
aDiskListingFilename_17:.BYTE 'Disk Listing  Filename : ',0
aSymbolTableFilename_17:.BYTE 'Symbol Table  Filename : ',0
aFormat_17:	.BYTE 'Format   : ',0
aLinkerOutputFilenam_17:.BYTE 'Linker Output Filename : ',0
aMicrotek_17:	.BYTE 'Microtek',0
aZax_17:	.BYTE 'Zax',0
aAbbreviated2500A_d__17:.BYTE 'Abbreviated 2500 A.D.',0
a2500A_d__18:	.BYTE '2500 A.D.',0
aNoneSpecified_17:.BYTE	'<None Specified>',0
aLinkErrors_18:	.BYTE $A
		.BYTE '         Link Errors :  ',0
aOutputFormat_18:.BYTE '         Output Format :  ',0
aExecutable_17:	.BYTE 'Executable',0
aIntelHex_17:	.BYTE 'Intel Hex',0
aExtendedIntelHex_17:.BYTE 'Extended Intel Hex',0
aTektronixHex_17:.BYTE 'Tektronix Hex',0
aMotorolaS1_17:	.BYTE 'Motorola S1',0
		.BYTE	0
aMotorolaS_17:	.BYTE 'Motorola S'
		.WORD NMI_1F7E5
		.WORD SpritePalettes_18079
		.WORD exit_1F85C
; end of 'BANK_01'

; ===========================================================================