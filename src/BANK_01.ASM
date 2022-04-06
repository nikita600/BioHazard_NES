; Segment type:	Pure code
		;.segment BANK_01 (Sprites)
		* =  $8000

; =============== S U B	R O U T	I N E =======================================

; SPRITE_BANK

bank_switch_18000:			
		.include "common/bank_switch_func.asm"

switch_case_8035:				
					; bank_switch_18000+1Dj ...
		LDA	bank_to_344
		STA	bank_prev_345
		LDA	#$88 
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

loc_18053:				
		JSR	load_tiles_state_1F25D
		JMP	loc_1806B
; ---------------------------------------------------------------------------

loc_18059:				
		JSR	load_obj_tilemap_1F264
		JMP	loc_1806B
; ---------------------------------------------------------------------------

loc_1805F:				
		JSR	load_sprite_to_vram_1F36D
		JSR	load_sprite_tilemap_1F3B8
		JMP	loc_1806B
; ---------------------------------------------------------------------------

loc_18068:				
		JMP	loc_1806B
; ---------------------------------------------------------------------------

loc_1806B:				
					; bank_switch_18000+5Cj ...
		LDA	#$FF
		STA	bank_command_346
		LDA	bank_from_343
		STA	bank_to_344
		JMP	bank_switch_18000 ; SPRITE_BANK
; End of function bank_switch_18000

; ---------------------------------------------------------------------------
SpritePalettes_18079:.WORD byte_180AF	
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
					
byte_180BF:	.BYTE $28,$3E, $A,$1A,$28,$3E, $A,$16,	0,  0,	0,  0,	0,  0,	0,  0
					
byte_180CF:	.BYTE $27,$3E,$3C,$1B,$27,$3E,$16,$1B,$27,$3E,$27,$38,$27,$3E,$16,$38
					
byte_180DF:	.BYTE $29,$3F,$17,$38,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					
byte_180EF:	.BYTE  $F,$30,$29,  9, $F,$30,$28,  8, $F,$30,$26,  6, $F,$3E,	5,$3D
					
byte_180FF:	.BYTE $3F,$30,$3A,$1A,$3F,$30,$38,  8,$3F,$30,$26,$16,$3F,$30,$2D,$10
					
byte_1810F:	.BYTE $3A,$3E,$17,$38,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					
byte_1811F:	.BYTE $35,$30,$17, $F,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					
byte_1812F:	.BYTE $35,$30,$17, $F,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					
byte_1813F:	.BYTE $35,$30,$17, $F,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					
byte_1814F:	.BYTE $2A,$30,$1C,$3E,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					
byte_1815F:	.BYTE $36,$3E,$16,$2D,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					
byte_1816F:	.BYTE $2D,$3E,$17,$38,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					
byte_1817F:	.BYTE $28,$3E,	6,$16,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					
byte_1818F:	.BYTE $3D,$3E,$16,$2D,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					
byte_1819F:	.BYTE $2D,$3E,$17,  7,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					
byte_181AF:	.BYTE $17,$3E,	7,$27,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					
byte_181BF:	.BYTE $30,$3E,$27,  7,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					
byte_181CF:	.BYTE $30,$3E,$16,$30,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					
byte_181DF:	.BYTE $3E,$30,$2D,$3D,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					
byte_181EF:	.BYTE $30,  7,$27,$3E,$30,$16,$30,$3E,	0,  0,	0,  0,	0,  0,	0,  0
					
byte_181FF:	.BYTE	0,$30,$27,$3E,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					
byte_1820F:	.BYTE $3E, $A,$1A,$30,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					
byte_1821F:	.BYTE $37,$3E,$27,$30,$37,$3E,$38,$3D,	0,  0,	0,  0,	0,  0,	0,  0
					
byte_1822F:	.BYTE $2A,  1,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					
byte_1823F:	.BYTE $30,$3F,$27,$17,$3F,$3F,$3F,$3F,$3F,$3F,$3F,$3F,$3F,$3F,$3F,$3F
					
byte_1824F:	.BYTE  $F, $F,$1C,$2C, $F,$38,$27,$16, $F,$10,$3D,$2D, $F,  0,	0,  0
					
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
JillMaps_18295:	.WORD stru_182C1	
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
stru_182C1:	sprite_entry <	2,   3,	  1> 
		.BYTE 0,1,6,7,$E,$F
stru_182CA:	sprite_entry <	2,   3,	  1> 
		.BYTE 2,3,8,9,$10,$11
stru_182D3:	sprite_entry <	2,   3,	  1> 
		.BYTE 2,3,$A
		.BYTE $B,$12,$13
stru_182DC:	sprite_entry <	2,   3,	  1> 
		.BYTE	2,  4, $C, $D,$14,$15
stru_182E5:	sprite_entry <	2,   3,	  1> 
		.BYTE	2,  3, $A, $B,$12,$13
stru_182EE:	sprite_entry <	2,   3,	  1> 
		.BYTE $16,$17,$1C,$1D,$26,$27
stru_182F7:	sprite_entry <	2,   3,	  1> 
		.BYTE $18,$19,$1E,$1F,$28,$29
stru_18300:	sprite_entry <	2,   3,	  1> 
		.BYTE $16,$17,$20,$21,$2A,$2B
stru_18309:	sprite_entry <	2,   3,	  1> 
		.BYTE $1A,$1B,$22,$23,$2C,$2D
stru_18312:	sprite_entry <	2,   3,	  1> 
		.BYTE $16,$17,$24,$25,$2E,$2F
stru_1831B:	sprite_entry <	2,   3,	  1> 
		.BYTE $30,$31,$36,$37,$40,$41
stru_18324:	sprite_entry <	2,   3,	  1> 
		.BYTE $32,$33,$38,$39,$42,$43
stru_1832D:	sprite_entry <	2,   3,	  1> 
		.BYTE $30,$31,$3A,$3B,$44,$45
stru_18336:	sprite_entry <	2,   3,	  1> 
		.BYTE $34,$35,$3C,$3D,$46,$47
stru_1833F:	sprite_entry <	2,   3,	  1> 
		.BYTE $30,$31,$3E,$3F,$48,$49
stru_18348:	sprite_entry <	2,   3,	  1> 
		.BYTE $16,$17,$4E,$4F,$54,$55
stru_18351:	sprite_entry <	2,   3,	  1> 
		.BYTE $4A,$4B,$50,$51,$56,$57
stru_1835A:	sprite_entry <	2,   3,	  1> 
		.BYTE $4C,$4D,$52,$53,$58,$41
stru_18363:	sprite_entry <	1,   1,	  1> 
		.BYTE $59
stru_18367:	sprite_entry <	1,   1,	  1> 
		.BYTE $5A
stru_1836B:	sprite_entry <	1,   1,	  1> 
		.BYTE $5B
stru_1836F:	sprite_entry <	1,   1,	  1> 
		.BYTE $5C
Enemy1Map_18373:.WORD stru_1838D	
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
stru_1838D:	sprite_entry <	2,   3,	  4> 
		.BYTE $13,$14,$19,$1A,$1F,$20
stru_18396:	sprite_entry <	2,   3,	  4> 
		.BYTE $15,$16,$1B,$1C, $F,$10
stru_1839F:	sprite_entry <	2,   3,	  4> 
		.BYTE $17,$18,$1D,$1E,$21,$22
stru_183A8:	sprite_entry <	2,   3,	  4> 
		.BYTE $15,$16,$1B,$1C, $F,$10
stru_183B1:	sprite_entry <	2,   3,	  4> 
		.BYTE	1,  2,	7,  8, $D, $E
stru_183BA:	sprite_entry <	2,   3,	  4> 
		.BYTE	3,  4,	9, $A, $F,$10
stru_183C3:	sprite_entry <	2,   3,	  4> 
		.BYTE	5,  6, $B, $C,$11,$12
stru_183CC:	sprite_entry <	2,   3,	  4> 
		.BYTE	3,  4,	9, $A, $F,$10
stru_183D5:	sprite_entry <	2,   3,	  4> 
		.BYTE $23,$24,$27,$28,$2C,$2D
stru_183DE:	sprite_entry <	2,   3,	  4> 
		.BYTE $25,$26,$29,$2A,$2E,$2F
stru_183E7:	sprite_entry <	2,   3,	  4> 
		.BYTE $23,$24,$2B,$28,$30,$31
stru_183F0:	sprite_entry <	2,   3,	  4> 
		.BYTE $25,$26,$29,$2A,$2E,$2F
stru_183F9:	sprite_entry <	2,   3,	  1> 
		.BYTE $32,$33,$34,$35,$36,$37
Enemy2Map_18402:.WORD stru_18424	
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
stru_18424:	sprite_entry <	2,   3,	  4> 
		.BYTE $13,$14,$17,$18,$1A,$1B
stru_1842D:	sprite_entry <	2,   3,	  4> 
		.BYTE $15,$16,$17,$19,$1C,$1D
stru_18436:	sprite_entry <	2,   3,	  4> 
		.BYTE $13,$14,$17,$19,$1E,$1F
stru_1843F:	sprite_entry <	2,   3,	  4> 
		.BYTE $15,$16,$17,$19,$1C,$1D
stru_18448:	sprite_entry <	2,   3,	  4> 
		.BYTE	0,  1,	6,  7, $B, $C
stru_18451:	sprite_entry <	2,   3,	  4> 
		.BYTE	2,  3,	8,  9, $D, $E
stru_1845A:	sprite_entry <	2,   3,	  4> 
		.BYTE	0,  4,	6, $A, $F,$10
stru_18463:	sprite_entry <	2,   3,	  4> 
		.BYTE	2,  3,	8,  9,$11,$12
stru_1846C:	sprite_entry <	2,   3,	  4> 
		.BYTE $20,$21,$24,$25,$28,$29
stru_18475:	sprite_entry <	2,   3,	  4> 
		.BYTE $22,$23,$26,$27,$2A,$2B
stru_1847E:	sprite_entry <	2,   3,	  4> 
		.BYTE $20,$21,$24,$25,$2C,$2D
stru_18487:	sprite_entry <	2,   3,	  4> 
		.BYTE $22,$23,$26,$27,$2A,$2B
stru_18490:	sprite_entry <	2,   3,	  3> 
		.BYTE	5,  5,$2E,$2F,$33,$34
stru_18499:	sprite_entry <	2,   3,	  3> 
		.BYTE	5,  5,$2E,$30,$35,$36
stru_184A2:	sprite_entry <	2,   3,	  3> 
		.BYTE	5,  5,$31,$32,$37,$38
stru_184AB:	sprite_entry <	2,   3,	  2> 
		.BYTE	5,  5,$39,$3A,$3D,$3E
stru_184B4:	sprite_entry <	2,   3,	  2> 
		.BYTE	5,  5,$3B,$3C,$3F,$40
EnvObjectMap_184BD:.WORD stru_184C3	
		.WORD stru_184CA
		.WORD stru_184D5
stru_184C3:	sprite_entry <	2,   2,	  1> 
		.BYTE	0,  1,	7,  8
stru_184CA:	sprite_entry <	2,   4,	  1> 
		.BYTE	2,  3,	9, $A,	9, $A, $F,$10
stru_184D5:	sprite_entry <	2,   4,	  1> 
		.BYTE	4,  5, $B, $C, $D, $E,$11,$12
off_184E0:	.WORD byte_18578	
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
					
byte_18587:	.BYTE	4,  3,	7,  0,	1,  0,	0,  8,	9,  0,	0,$14,	0,  0,	0
					
byte_18596:	.BYTE	4,  3,	7,  0,	2,  0,	0, $A, $B, $C,	0,$15,	0,$16,	0
					
byte_185A5:	.BYTE	4,  3,	7,  0,	3,  0,	4, $A, $D, $E, $F,$15,	0,$17,	0
					
byte_185B4:	.BYTE	4,  3,	7,  0,	3,  0,	5,  0, $D,$10,$11,  0,	0,$18,	0
					
byte_185C3:	.BYTE	4,  3,	7,  0,	0,  0,	6,  0,	0,$10,$12,  0,	0,$18,	0
					
byte_185D2:	.BYTE	4,  3,	7,  0,	0,  0,	6,  0,	0,  0,$12,  0,	0,  0,	0
					
byte_185E1:	.BYTE	4,  3,	7,  0,	0,  0,	0,$1C,	0,  0,	0,  0,	0,  0,	0
					
byte_185F0:	.BYTE	4,  3,	7,  0,$19,  0,	0,$1D,$1E,  0,	0,  0,$25,  0,	0
					
byte_185FF:	.BYTE	4,  3,	7,  0,$1A,  0,	0,$1F,$20,$21,	0,  0,$26,$27,	0
					
byte_1860E:	.BYTE	4,  3,	7,  0,$1B,  0,	0,$1F,$22,$23,$1C,  0,$28,$29,	0
					
byte_1861D:	.BYTE	4,  3,	7,  0,$1B,  0,	0,  0,$22,$24,$1D,  0,$28,$2A,	0
					
byte_1862C:	.BYTE	4,  3,	7,  0,	0,  0,	0,  0,	0,$24,$1F,  0,	0,$2A,	0
					
byte_1863B:	.BYTE	4,  3,	7,  0,	0,  0,	0,  0,	0,  0,$1F,  0,	0,  0,	0
					
byte_1864A:	.BYTE	4,  3,	7,  0,	0,  0,	0,$1C,	0,  0,	0,  0,	0,  0,	0
					
byte_18659:	.BYTE	4,  3,	7,  0,$2B,  0,	0,$1D,$2E,  0,	0,  0,	0,  0,	0
					
byte_18668:	.BYTE	4,  3,	7,  0,$2C,  0,	0,$1F,$2F,$30,	0,  0,	0,$34,	0
					
byte_18677:	.BYTE	4,  3,	7,  0,$2D,  0,	0,$1F,$31,$32,$1C,  0,	0,$35,	0
					
byte_18686:	.BYTE	4,  3,	7,  0,$2D,  0,	0,  0,$31,$33,$1D,  0,	0,$36,	0
					
byte_18695:	.BYTE	4,  3,	7,  0,	0,  0,	0,  0,	0,$33,$1F,  0,	0,$36,	0
					
byte_186A4:	.BYTE	4,  3,	7,  0,	0,  0,	0,  0,	0,  0,$1F,  0,	0,  0,	0
					
byte_186B3:	.BYTE	4,  1,	0,$37,$38,$39,	0 
byte_186BA:	.BYTE	4,  1,	0,$3A,$3B,$3C,$3D 
byte_186C1:	.BYTE	4,  1,	0,$3E,$3F,$40,$41 
byte_186C8:	.BYTE	4,  1,	0,$42,$43,$44,$45 
byte_186CF:	.BYTE	4,  1,	0,$42,$43,$44,$45 
byte_186D6:	.BYTE	4,  1,	0,$42,$43,$44,$45 
byte_186DD:	.BYTE	4,  4,	0,$49,$4A,  0,	0,$57,$58,$59,	0,  0,$6D,$6E,$6F,  0
					
		.BYTE	0,$81,$82
byte_186F0:	.BYTE	4,  4,	0,  0,	0,  0,	0,$5A,$5B,$5C,$5D,$70,$71,$72,$73,  0
					
		.BYTE	0,$83,$84
byte_18703:	.BYTE	4,  4,	0,  0,	0,$48,	0,$53,$54,$55,$56,$69,$6A,$6B,$6C,$7E
					
		.BYTE	0,$7F,$80
byte_18716:	.BYTE	4,  4,	0,$46,$47,  0,	0,$4F,$50,$51,$52,  0,$66,$67,$68,  0
					
		.BYTE	0,$7C,$7D
byte_18729:	.BYTE	4,  4,	0,  0,	0,  0,	0,$5E,$5F,$60,$61,$74,$75,$76,$77,  0
					
		.BYTE	0,$85,$86
byte_1873C:	.BYTE	4,  4,	0,$4B,$4C,$4D,$4E,$62,$63,$64,$65,$78,$79,$7A,$7B,  0
					
		.BYTE $87,$7E,	0
byte_1874F:	.BYTE	1,  2,	0,$88,$98 
byte_18754:	.BYTE	1,  2,	0,$89,$99 
					; BANK_01:8526o ...
byte_18759:	.BYTE	1,  2,	0,$8A,$9A 
byte_1875E:	.BYTE	1,  2,	0,$8B,$9B 
byte_18763:	.BYTE	1,  1,	0,$95	
byte_18767:	.BYTE	1,  1,	0,$8C	
byte_1876B:	.BYTE	1,  1,	0,$8D	
byte_1876F:	.BYTE	1,  1,	0,$8E	
byte_18773:	.BYTE	1,  1,	0,$8F	
byte_18777:	.BYTE	1,  1,	0,$90	
byte_1877B:	.BYTE	1,  1,	0,$91	
byte_1877F:	.BYTE	1,  1,	0,$92	
byte_18783:	.BYTE	1,  1,	0,$93	
byte_18787:	.BYTE	1,  1,	0,$94	
byte_1878B:	.BYTE	2,  1,	0,$96,$97 
byte_18790:	.BYTE	2,  2,	4,$9C,$9D,$AC,$AD 
byte_18797:	.BYTE	2,  2,	4,$9E,$9F,$AE,$AF 
byte_1879E:	.BYTE	2,  2,	4,$A0,$A1,$B0,$B1 
byte_187A5:	.BYTE	2,  2,	4,$A2,$A3,$B2,$B3 
byte_187AC:	.BYTE	2,  2,	4,$A4,$A5,$B4,$B5 
byte_187B3:	.BYTE	2,  2,	4,$A6,$A7,$B6,$B7 
byte_187BA:	.BYTE	2,  2,	4,$A8,$A9,$B8,$B9 
byte_187C1:	.BYTE	2,  2,	4,$AA,$AB,$BA,$BB 
byte_187C8:	.BYTE	2,  2,	4,$BC,$BD,$CC,$CD 
byte_187CF:	.BYTE	2,  2,	4,$BE,$BF,$CE,$CF 
byte_187D6:	.BYTE	2,  2,	4,$C0,$C1,$D0,$D1 
byte_187DD:	.BYTE	2,  2,	4,$C2,$C3,$D2,$D3 
byte_187E4:	.BYTE	2,  2,	4,$C4,$C5,$D4,$D5 
byte_187EB:	.BYTE	2,  2,	4,$C6,$C7,$D6,$D7 
byte_187F2:	.BYTE	2,  2,	4,$C8,$C9,$D8,$D9 
byte_187F9:	.BYTE	2,  2,	4,$CA,$CB,$DA,$DB 
byte_18800:	.BYTE	2,  2,	4,$DC,$DD,$E9,$EA 
byte_18807:	.BYTE	2,  2,	4,$DE,$DF,$EB,$EC 
byte_1880E:	.BYTE	2,  2,	4,$E0,$E1,$ED,$EE 
byte_18815:	.BYTE	2,  2,	0,$E2,$E3,$EF,$F0 
byte_1881C:	.BYTE	2,  2,	4,$E4,$E5,$F1,$F2 
byte_18823:	.BYTE	2,  2,	4,$DC,$E6,$E9,$EA 
byte_1882A:	.BYTE	2,  2,	4,$E7,$E8,$F3,$F4 
byte_18831:	.BYTE	2,  2,	4,$DE,$DF,$EB,$EC 
off_18838:	.WORD byte_188B4	
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
					
byte_188C3:	.BYTE	4,  3,	0,  0,	1,  0,	0,  8,	9,  0,	0,$14,	0,  0,	0
					
byte_188D2:	.BYTE	4,  3,	0,  0,	2,  0,	0, $A, $B, $C,	0,$15,	0,$16,	0
					
byte_188E1:	.BYTE	4,  3,	0,  0,	3,  0,	4, $A, $D, $E, $F,$15,	0,$17,	0
					
byte_188F0:	.BYTE	4,  3,	0,  0,	3,  0,	5,  0, $D,$10,$11,  0,	0,$18,	0
					
byte_188FF:	.BYTE	4,  3,	0,  0,	0,  0,	6,  0,	0,$10,$12,  0,	0,$18,	0
					
byte_1890E:	.BYTE	4,  3,	0,  0,	0,  0,	6,  0,	0,  0,$12,  0,	0,  0,	0
					
byte_1891D:	.BYTE	4,  3,	0,  0,	0,  0,	0,$1C,	0,  0,	0,  0,	0,  0,	0
					
byte_1892C:	.BYTE	4,  3,	0,  0,$19,  0,	0,$1D,$1E,  0,	0,  0,$25,  0,	0
					
byte_1893B:	.BYTE	4,  3,	0,  0,$1A,  0,	0,$1F,$20,$21,	0,  0,$26,$27,	0
					
byte_1894A:	.BYTE	4,  3,	0,  0,$1B,  0,	0,$1F,$22,$23,$1C,  0,$28,$29,	0
					
byte_18959:	.BYTE	4,  3,	0,  0,$1B,  0,	0,  0,$22,$24,$1D,  0,$28,$2A,	0
					
byte_18968:	.BYTE	4,  3,	0,  0,	0,  0,	0,  0,	0,$24,$1F,  0,	0,$2A,	0
					
byte_18977:	.BYTE	4,  3,	0,  0,	0,  0,	0,  0,	0,  0,$1F,  0,	0,  0,	0
					
byte_18986:	.BYTE	4,  3,	0,  0,	0,  0,	0,$1C,	0,  0,	0,  0,	0,  0,	0
					
byte_18995:	.BYTE	4,  3,	0,  0,$2B,  0,	0,$1D,$2E,  0,	0,  0,	0,  0,	0
					
byte_189A4:	.BYTE	4,  3,	0,  0,$2C,  0,	0,$1F,$2F,$30,	0,  0,	0,$34,	0
					
byte_189B3:	.BYTE	4,  3,	0,  0,$2D,  0,	0,$1F,$31,$32,$1C,  0,	0,$35,	0
					
byte_189C2:	.BYTE	4,  3,	0,  0,$2D,  0,	0,  0,$31,$33,$1D,  0,	0,$36,	0
					
byte_189D1:	.BYTE	4,  3,	0,  0,	0,  0,	0,  0,	0,$33,$1F,  0,	0,$36,	0
					
byte_189E0:	.BYTE	4,  3,	0,  0,	0,  0,	0,  0,	0,  0,$1F,  0,	0,  0,	0
					
byte_189EF:	.BYTE	4,  1,	0,$37,$38,$39,	0 
byte_189F6:	.BYTE	4,  1,	0,$3A,$3B,$3C,$3D 
byte_189FD:	.BYTE	4,  1,	0,$3E,$3F,$40,$41 
byte_18A04:	.BYTE	4,  1,	0,$42,$43,$44,$45 
byte_18A0B:	.BYTE	4,  1,	0,$42,$43,$44,$45 
byte_18A12:	.BYTE	4,  1,	0,$42,$43,$44,$45 
byte_18A19:	.BYTE	4,  2,	0,$8D,$1F,$1F,$8E,$96,$97,$97,$98 
byte_18A24:	.BYTE	4,  2,	0,$A4,$A5,$A6,$A7,$B5,$B6,$B7,$B8 
byte_18A2F:	.BYTE	4,  4,	0,$5A,$5B,$5C,$5D,$72,	0,  0,$73,$84,	0,  0,$85,$96
					
		.BYTE $97,$98,$99
byte_18A42:	.BYTE	4,  4,	0,$A6,$A7,$5B,$A8,$84,	0,  0,$B5,$BF,	0,  0,$73,$C9
					
		.BYTE $98,$CA,$CB
byte_18A55:	.BYTE	4,  4,	0,$DC,$DD,$DE,$DF,$EF,	0,  0,$F0,$F1,	0,  0,$F2,$F3
					
		.BYTE $F4,$F5,$F6
byte_18A68:	.BYTE	4,  6,	0,$4A,$4B,$4C,$4D,$58,$59,$5A,$5B,$64,$65,$66,$67,$6E
					
		.BYTE $6F,$70,$71,$64,$76,$77,$78,$6E,$7F,$80,$81
byte_18A83:	.BYTE	4,  6,	0,$46,$47,$48,$49,$54,$55,$56,$57,$60,$61,$62,$63,$6A
					
		.BYTE $6B,$6C,$6D,$64,$76,$77,$78,$6E,$7F,$80,$81
byte_18A9E:	.BYTE	4,  6,	0,$46,$47,$48,$49,$54,$55,$56,$57,$64,$65,$66,$67,$6E
					
		.BYTE $6F,$70,$71,$60,$79,$7A,$7B,$6A,$82,$83,$84
byte_18AB9:	.BYTE	2,  9,	0,$4E,$4F,$5C,$5D,$5C,$5D,$5C,$5D,$5C,$5D,$5C,$5D,$5C
					
		.BYTE $5D,$5C,$5D,$A8,$A9
byte_18ACE:	.BYTE	2,  1,	0,$B9,$BA 
byte_18AD3:	.BYTE	1,  1,	0,$BD	
byte_18AD7:	.BYTE	4,  2,	0,$86,$87,$88,$89,$90,$91,$92,$93 
byte_18AE2:	.BYTE	4,  2,	0,$86,$8A,$8B,$8C,$90,$91,$94,$95 
byte_18AED:	.BYTE	4,  2,	0,$9C,$9D,$9E,$9F,$AE,$AF,$B0,$B1 
byte_18AF8:	.BYTE	4,  2,	0,$A0,$A1,$A2,$A3,$B2,$B3,$B4,$95 
byte_18B03:	.BYTE	1,  1,	0,$C4	
byte_18B07:	.BYTE	1,  1,	0,$C5	
byte_18B0B:	.BYTE	1,  1,	0,$CA	
byte_18B0F:	.BYTE	1,  1,	0,$CB	
byte_18B13:	.BYTE	1,  1,	0,$C6	
byte_18B17:	.BYTE	1,  1,	0,$C7	
byte_18B1B:	.BYTE	1,  1,	0,$C8	
byte_18B1F:	.BYTE	1,  1,	0,$C9	
byte_18B23:	.BYTE	1,  1,	0,$CC	
byte_18B27:	.BYTE	1,  1,	0,$CD	
byte_18B2B:	.BYTE	1,  1,	0,$CE	
byte_18B2F:	.BYTE	1,  1,	0,$CF	
byte_18B33:	.BYTE	1,  1,	0,$D0	
byte_18B37:	.BYTE	1,  1,	0,$D1	
byte_18B3B:	.BYTE	1,  1,	0,$D2	
byte_18B3F:	.BYTE	1,  1,	0,$D3	
byte_18B43:	.BYTE	1,  1,	0,$D4	
byte_18B47:	.BYTE	1,  1,	0,$D5	
byte_18B4B:	.BYTE	1,  1,	0,$1F	
byte_18B4F:	.BYTE	4,  2,	0,$5C,$5C,$5C,$5C,$5C,$5C,$5C,$5C 
off_18B5A:	.WORD byte_18B68	
		.WORD byte_18B6F
		.WORD byte_18B76
		.WORD byte_18B7D
		.WORD byte_18B84
		.WORD byte_18B8B
		.WORD byte_18B92
byte_18B68:	.BYTE	2,  2,	6,  0,	1, $C, $D 
byte_18B6F:	.BYTE	2,  2,	6,  2,	3, $E, $F 
byte_18B76:	.BYTE	2,  2,	6,  4,	5,$10,$11 
byte_18B7D:	.BYTE	2,  2,	6,  6,	7,$12,$13 
byte_18B84:	.BYTE	2,  2,	6,  8,	9,$14,$15 
byte_18B8B:	.BYTE	2,  2,	6,  0,	1, $C, $D 
byte_18B92:	.BYTE	2,  2,	1, $A, $B,$16,$17 
off_18B99:	.WORD byte_18BBD	
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
byte_18BBD:	.BYTE	2,  3,	1,  0,	1,  9, $A,$11,$12 
byte_18BC6:	.BYTE	2,  3,	1,  2,	3, $B, $C,$13,$14 
byte_18BCF:	.BYTE	2,  3,	1,  4,	5, $D, $E,$15,$16 
byte_18BD8:	.BYTE	2,  3,	1,  6,	7, $F,$10,$13,$17 
byte_18BE1:	.BYTE	2,  3,	1,  4,	5, $D, $E,$15,$16 
byte_18BEA:	.BYTE	2,  3,	1,$18,$19,$22,$23,$2C,$2D 
byte_18BF3:	.BYTE	2,  3,	1,$1A,$1B,$24,$25,$2E,$2F 
byte_18BFC:	.BYTE	2,  3,	1,$1C,$1D,$26,$27,$30,$31 
byte_18C05:	.BYTE	2,  3,	1,$1E,$1F,$28,$29,$32,$33 
byte_18C0E:	.BYTE	2,  3,	1,$20,$21,$2A,$2B,$34,$35 
byte_18C17:	.BYTE	2,  3,	1,$36,$37,$40,$41,$2C,$2D 
byte_18C20:	.BYTE	2,  3,	1,$38,$39,$42,$43,$4A,$4B 
byte_18C29:	.BYTE	2,  3,	1,$3A,$3B,$44,$45,$4C,$4D 
byte_18C32:	.BYTE	2,  3,	1,$3C,$3D,$46,$47,$4E,$4F 
byte_18C3B:	.BYTE	2,  3,	1,$3E,$3F,$48,$49,$50,$51 
byte_18C44:	.BYTE	2,  3,	1,  8,	8,  8,	8,  8,	8 
byte_18C4D:	.BYTE	2,  3,	1,  8,	8,  8,	8,  8,	8 
byte_18C56:	.BYTE	2,  3,	1,  8,	8,  8,	8,  8,	8 
off_18C5F:	.WORD byte_18C8F	
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
byte_18C8F:	.BYTE	2,  3,	1,  0,	1, $B, $C,$23,$24 
byte_18C98:	.BYTE	2,  3,	1,  2,	3, $D, $E,$25,$26 
byte_18CA1:	.BYTE	2,  3,	1,  4,	5, $F,$10,$27,$28 
byte_18CAA:	.BYTE	2,  3,	1,  6,	5,$11,$12,$29,$2A 
byte_18CB3:	.BYTE	2,  3,	1,  6,	5,$13,$14,$2B,$2C 
byte_18CBC:	.BYTE	2,  3,	1,  6,	5,$15,$16,$2D,$2E 
byte_18CC5:	.BYTE	2,  3,	1,  6,	5,$13,$14,$2B,$2C 
byte_18CCE:	.BYTE	2,  3,	1,  7,	8,$17,$18,$2F,$30 
byte_18CD7:	.BYTE	2,  3,	1,  7,	8,$19,$1A,$31,$32 
byte_18CE0:	.BYTE	2,  3,	1,  7,	8,$1B,$1C,$33,$34 
byte_18CE9:	.BYTE	2,  3,	1,  7,	8,$19,$1A,$31,$32 
byte_18CF2:	.BYTE	2,  3,	1,  2,	9,$1D,$1E,$2F,$30 
byte_18CFB:	.BYTE	2,  3,	1,  2,	9,$1F,$20,$31,$32 
byte_18D04:	.BYTE	2,  3,	1,  2,	9,$21,$22,$33,$34 
byte_18D0D:	.BYTE	2,  3,	1,  2,	9,$1F,$20,$31,$32 
byte_18D16:	.BYTE	2,  3,	1,$35,$36,$3E,$3F,$4E,$4F 
byte_18D1F:	.BYTE	2,  3,	1,  6,	5,$40,$41,$4E,$4F 
byte_18D28:	.BYTE	2,  3,	1,$37,$38,$42,$43,$25,$50 
byte_18D31:	.BYTE	2,  3,	1,$39,$3A,$44,$45,$51,$24 
byte_18D3A:	.BYTE	2,  3,	1,$37,$3B,$46,$47,$25,$50 
byte_18D43:	.BYTE	2,  3,	1,$3C,	1,$48,$49,$51,$24 
byte_18D4C:	.BYTE	2,  3,	1,  6,	5,$4A,$4B,$4E,$4F 
byte_18D55:	.BYTE	2,  3,	1,$37,$3D,$4C,$4D,$25,$50 
byte_18D5E:	.BYTE	2,  2,	1,$52,$53,$54,$55 
off_18D65:	.WORD byte_18D95	
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
byte_18D95:	.BYTE	2,  3,	1,  0,	1, $B, $C,$23,$24 
byte_18D9E:	.BYTE	2,  3,	1,  2,	3, $D, $E,$25,$26 
byte_18DA7:	.BYTE	2,  3,	1,  4,	5, $F,$10,$27,$28 
byte_18DB0:	.BYTE	2,  3,	1,  6,	5,$11,$12,$29,$2A 
byte_18DB9:	.BYTE	2,  3,	1,  6,	5,$13,$14,$2B,$2C 
byte_18DC2:	.BYTE	2,  3,	1,  6,	5,$15,$16,$2D,$2E 
byte_18DCB:	.BYTE	2,  3,	1,  6,	5,$13,$14,$2B,$2C 
byte_18DD4:	.BYTE	2,  3,	1,  7,	8,$17,$18,$2F,$30 
byte_18DDD:	.BYTE	2,  3,	1,  7,	8,$19,$1A,$31,$32 
byte_18DE6:	.BYTE	2,  3,	1,  7,	8,$1B,$1C,$33,$34 
byte_18DEF:	.BYTE	2,  3,	1,  7,	8,$19,$1A,$31,$32 
byte_18DF8:	.BYTE	2,  3,	1,  2,	9,$1D,$1E,$2F,$30 
byte_18E01:	.BYTE	2,  3,	1,  2,	9,$1F,$20,$31,$32 
byte_18E0A:	.BYTE	2,  3,	1,  2,	9,$21,$22,$33,$34 
byte_18E13:	.BYTE	2,  3,	1,  2,	9,$1F,$20,$31,$32 
byte_18E1C:	.BYTE	2,  3,	1,$35,$36,$3E,$3F,$4E,$4F 
byte_18E25:	.BYTE	2,  3,	1,  6,	5,$40,$41,$4E,$4F 
byte_18E2E:	.BYTE	2,  3,	1,$37,$38,$42,$43,$25,$50 
byte_18E37:	.BYTE	2,  3,	1,$39,$3A,$44,$45,$51,$24 
byte_18E40:	.BYTE	2,  3,	1,$37,$3B,$46,$47,$25,$50 
byte_18E49:	.BYTE	2,  3,	1,$3C,	1,$48,$49,$51,$24 
byte_18E52:	.BYTE	2,  3,	1,  6,	5,$4A,$4B,$4E,$4F 
byte_18E5B:	.BYTE	2,  3,	1,$37,$3D,$4C,$4D,$25,$50 
byte_18E64:	.BYTE	2,  2,	1,$52,$53,$54,$55 
off_18E6B:	.WORD byte_18E71	
		.WORD byte_18E78
		.WORD byte_18E7F
byte_18E71:	.BYTE	2,  2,	2,  0,	1,  7,	8 
byte_18E78:	.BYTE	2,  2,	2,  3,	4, $A, $B 
byte_18E7F:	.BYTE	2,  2,	2,  5,	6, $C, $D 
off_18E86:	.WORD byte_18EC2	
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
byte_18E9E:	.BYTE	2,  3,	4,  0,	1,  9, $A, $F,$10 
byte_18EA7:	.BYTE	2,  3,	4,  2,	3, $B, $C,$11,$12 
byte_18EB0:	.BYTE	2,  3,	4,  4,	5,  9, $D,$13,$14 
byte_18EB9:	.BYTE	2,  3,	4,  6,	7, $B, $E,$15,$16 
byte_18EC2:	.BYTE	2,  3,	4,$17,$18,$1F,$20,$23,$24 
byte_18ECB:	.BYTE	2,  3,	4,$19,$1A,$21,$22,$25,$26 
byte_18ED4:	.BYTE	2,  3,	4,$1B,$1C,$21,$22,$27,$28 
byte_18EDD:	.BYTE	2,  3,	4,$1D,$1E,$21,$22,$25,$26 
byte_18EE6:	.BYTE	2,  3,	4,$29,$2A,$31,$32,$35,$36 
byte_18EEF:	.BYTE	2,  3,	4,$2B,$2C,$33,$34,$37,$38 
byte_18EF8:	.BYTE	2,  3,	4,$2D,$2E,$31,$32,$39,$3A 
byte_18F01:	.BYTE	2,  3,	4,$2F,$30,$33,$34,$37,$38 
off_18F0A:	.WORD byte_18F16	
		.WORD byte_18F1D
		.WORD byte_18F24
		.WORD byte_18F2B
		.WORD byte_18F32
		.WORD byte_18F39
byte_18F16:	.BYTE	2,  2,	2,  0,	1,  9, $A 
byte_18F1D:	.BYTE	2,  2,	2,  2,	3, $B, $C 
byte_18F24:	.BYTE	2,  2,	2,  0,	1,  9, $A 
byte_18F2B:	.BYTE	2,  2,	2,  2,	3, $B, $C 
byte_18F32:	.BYTE	2,  2,	2,  4,	5, $D, $E 
byte_18F39:	.BYTE	2,  2,	2,  6,	7, $F,$10 
off_18F40:	.WORD byte_18F4C	
		.WORD byte_18F58
		.WORD byte_18F64
		.WORD byte_18F70
		.WORD byte_18F7C
		.WORD byte_18F88
byte_18F4C:	.BYTE	3,  3,	2,  0,	1,  2, $D, $E,	2,$1B,$1C,  2
					
byte_18F58:	.BYTE	3,  3,	2,  3,	4,  2, $F,$10,	2,$1D,$1E,  2
					
byte_18F64:	.BYTE	3,  3,	2,  5,	6,  2,$11,$12,	2,$1F,$20,  2
					
byte_18F70:	.BYTE	3,  3,	2,  7,	8,  2,$13,$14,	2,$21,$22,  2
					
byte_18F7C:	.BYTE	3,  3,	2,  9, $A, $B,$15,$16,$17,  2,	2,  2
					
byte_18F88:	.BYTE	3,  3,	2, $C, $A, $B,$18,$19,$1A,  2,	2,  2
					
off_18F94:	.WORD byte_18FA4	
		.WORD byte_18FAB
		.WORD byte_18FB2
		.WORD byte_18FB9
		.WORD byte_18FC0
		.WORD byte_18FC7
		.WORD byte_18FCE
		.WORD byte_18FD5
byte_18FA4:	.BYTE	2,  2,	2,  0,	1,  9, $A 
byte_18FAB:	.BYTE	2,  2,	2,  2,	3, $B, $C 
byte_18FB2:	.BYTE	2,  2,	2,  4,	5, $D, $E 
byte_18FB9:	.BYTE	2,  2,	2,  6,	7, $F,$10 
byte_18FC0:	.BYTE	2,  2,	2,$11,$12,$19,$1A 
byte_18FC7:	.BYTE	2,  2,	2,$13,$14,$1B,$1C 
byte_18FCE:	.BYTE	2,  2,	2,$15,$16,$1D,$1E 
byte_18FD5:	.BYTE	2,  2,	2,$17,$18,$1F,$20 
off_18FDC:	.WORD byte_18FF4	
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
byte_18FF4:	.BYTE	2,  2,	4,  0,	1,  5,	1 
byte_18FFB:	.BYTE	2,  2,	4,  2,	1,  6,	1 
byte_19002:	.BYTE	2,  2,	4,  3,	1,  7,	1 
byte_19009:	.BYTE	2,  2,	4,  4, $C,  8,	1 
byte_19010:	.BYTE	2,  2,	4,  0,	1,  5,	1 
byte_19017:	.BYTE	2,  2,	4,  2,	1,  6,	1 
byte_1901E:	.BYTE	2,  2,	4,  3,	1,  7,	1 
byte_19025:	.BYTE	2,  2,	4,  4,	1,  8,	1 
byte_1902C:	.BYTE	2,  2,	4,  9, $A,  1,	1 
byte_19033:	.BYTE	2,  2,	4, $B, $C,  1,	1 
byte_1903A:	.BYTE	2,  2,	4, $D, $E,  1,	1 
byte_19041:	.BYTE	2,  2,	4, $F,$10,  1,	1 
off_19048:	.WORD byte_19054	
		.WORD byte_1905B
		.WORD byte_19062
		.WORD byte_19069
		.WORD byte_19070
		.WORD byte_19077
byte_19054:	.BYTE	2,  2,	2, $D, $E,$13,$14 
byte_1905B:	.BYTE	2,  2,	2, $F,$10,$15,$16 
byte_19062:	.BYTE	2,  2,	2,  0,	1,  7,	8 
byte_19069:	.BYTE	2,  2,	2,  2,	3,  9, $A 
byte_19070:	.BYTE	2,  2,	2,  4,	5, $B, $C 
byte_19077:	.BYTE	2,  2,	2,  4,	5, $B, $C 
off_1907E:	.WORD byte_190E2	
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
					
		.BYTE $1E,$1F,$20
byte_190A9:	.BYTE	4,  4,	4,  0,	4,  5,	0, $C, $D, $E, $F,$17,$18,$19,$1A,  0
					
		.BYTE $21,$22,$23
byte_190BC:	.BYTE	4,  4,	4,  0,	1,  2,	3,  8,	9, $A, $B,$13,$14,$15,$16,  0
					
		.BYTE $1E,$1F,$20
byte_190CF:	.BYTE	4,  4,	4,  0,	1,  6,	7,  8,$10,$11,$12,$13,$1B,$1C,$1D,  0
					
		.BYTE $24,$25,$26
byte_190E2:	.BYTE	4,  4,	4,$27,$28,$29,	0,$2F,$30,$31,$32,$3B,$3C,$3D,$3E,$47
					
		.BYTE $48,$49,	0
byte_190F5:	.BYTE	4,  4,	4,$2A,$2B,$2C,	0,$33,$34,$35,$36,$3F,$40,$41,$42,$4A
					
		.BYTE $4B,$4C,	0
byte_19108:	.BYTE	4,  4,	4,$27,$28,$29,	0,$2F,$30,$31,$32,$3B,$3C,$3D,$3E,$47
					
		.BYTE $48,$49,	0
byte_1911B:	.BYTE	4,  4,	4,  0,$2D,$2E,	0,$37,$38,$39,$3A,$43,$44,$45,$46,$4D
					
		.BYTE $4E,$4F,	0
byte_1912E:	.BYTE	4,  4,	4,  0,$50,$51,	0,  0,$52,$53,	0,  0,$54,$55,	0,  0
					
		.BYTE $5A,$5B,	0
byte_19141:	.BYTE	4,  4,	4,  0,$50,$51,	0,  0,$52,$53,	0,  0,$56,$57,	0,  0
					
		.BYTE $5C,$5D,	0
byte_19154:	.BYTE	4,  4,	4,  0,$50,$51,	0,  0,$52,$53,	0,  0,$58,$57,	0,  0
					
		.BYTE $5E,$5F,	0
byte_19167:	.BYTE	4,  4,	4,  0,$50,$51,	0,  0,$52,$53,	0,  0,$58,$59,	0,  0
					
		.BYTE $60,$61,	0
off_1917A:	.WORD byte_1917C	
byte_1917C:	.BYTE	1,  1,	1,  0	
off_19180:	.WORD byte_1918A	
		.WORD byte_1919D
		.WORD byte_191B0
		.WORD byte_191C3
		.WORD byte_191D6
byte_1918A:	.BYTE	4,  4,	5,  0,	1,  2,	3, $F,$10,$10,$11,$1C,$1D,$10,$1E,$2E
					
		.BYTE $2F,$30,$31
byte_1919D:	.BYTE	4,  4,	5,  4,	5,  2,	6,$12,$10,$10,$13,$1F,$20,$21,$22,$2E
					
		.BYTE $2F,$32,$31
byte_191B0:	.BYTE	4,  4,	5,  4,	5,  7,	8,$14,$10,$10,$15,$23,$24,$25,$26,$2E
					
		.BYTE $2F,$32,$31
byte_191C3:	.BYTE	4,  4,	5,  4,	9, $A, $B,$16,$10,$17,$18,$27,$28,$29,$2A,$2E
					
		.BYTE $2F,$32,$31
byte_191D6:	.BYTE	4,  4,	5,  4, $C, $D,	3,$19,$1A,$1B,$11,$2B,$29,$2C,$2D,$2E
					
		.BYTE $2F,$32,$31
off_191E9:	.WORD byte_191EB	
byte_191EB:	.BYTE	2,  1,	1,  0,	1 
off_191F0:	.WORD byte_19206	
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
byte_19206:	.BYTE	1,  1,	1,  9	
byte_1920A:	.BYTE	1,  1,	1,  0	
byte_1920E:	.BYTE	1,  1,	1,  1	
byte_19212:	.BYTE	1,  1,	1,  2	
byte_19216:	.BYTE	1,  1,	1,  3	
byte_1921A:	.BYTE	1,  1,	1,  4	
byte_1921E:	.BYTE	1,  1,	1,  5	
byte_19222:	.BYTE	1,  1,	1,  6	
byte_19226:	.BYTE	1,  1,	1,  7	
byte_1922A:	.BYTE	1,  1,	1,  8	
byte_1922E:	.BYTE	1,  1,	1, $A	
off_19232:	.WORD byte_19236	
		.WORD byte_19241
byte_19236:	.BYTE	4,  2,	2,  0,	1,  2,	3,  4,	3,  5,	6
					
byte_19241:	.BYTE	4,  2,	2,  2,	3,  0,	1,  5,	6,  4,	3 
off_1924C:	.WORD byte_19250	
		.WORD byte_19257
byte_19250:	.BYTE	2,  2,	1,  0,	1,  5,	6 
byte_19257:	.BYTE	2,  2,	1,  2,	3,  5,	6 
off_1925E:	.WORD byte_1926A	
		.WORD byte_19271
		.WORD byte_19278
		.WORD byte_1927F
		.WORD byte_19286
		.WORD byte_1928D
byte_1926A:	.BYTE	2,  2,	2,  0,	1, $A, $B 
byte_19271:	.BYTE	2,  2,	2,  0,	1, $C, $D 
byte_19278:	.BYTE	2,  2,	2,  2,	3, $E, $F 
byte_1927F:	.BYTE	2,  2,	2,  4,	5, $E, $F 
byte_19286:	.BYTE	2,  2,	2,  6,	7,$10,$11 
byte_1928D:	.BYTE	2,  2,	2,  8,	7,$12,$11 
off_19294:	.WORD byte_1929A	
		.WORD byte_192AD
		.WORD byte_192C0
byte_1929A:	.BYTE	4,  4,	2,  0,	1,  2,	3,  8,	9, $A, $B,$14,$15,$16,$17,$1E
					
		.BYTE $1F,$20,$21
byte_192AD:	.BYTE	4,  4,	2,  0,	1,  2,	3, $C, $D, $E, $F,$18,$19,$1A,$1B,$22
					
		.BYTE $23,$24,$25
byte_192C0:	.BYTE	4,  4,	1,  4,	5,  6,	3,$10,$11,$12,$13,  7,$1C,$1D,	7,  7
					
		.BYTE	7,  7,	7
off_192D3:	.WORD byte_192E3	
		.WORD byte_19309
		.WORD byte_1932F
		.WORD byte_19342
		.WORD byte_19355
		.WORD byte_19368
		.WORD byte_1937B
		.WORD byte_1938E
byte_192E3:	.BYTE	7,  5,	2,  0,	0,  0,	1,  2,	3,  0,	0,  4,	5,  6,	7,  8
					
		.BYTE	9, $F,$10,$11,$12,$13,$14,$15,$1B,$1C,$1D,$1E,$1F,$20,$21,  0
		.BYTE	0,  0,$23,$24,$25,$26
byte_19309:	.BYTE	7,  5,	2,  0,	0,  0,	1,  2,	3,  0,	0,  4, $A, $B, $C, $D
					
		.BYTE  $E, $F,$16,$17,$18,$13,$19,$1A,$1B,$22,$1D,$1E,$1F,$20,$21,  0
		.BYTE	0,  0,$23,$24,$25,$26
byte_1932F:	.BYTE	4,  4,	2,  0,	0,$27,$28,  0,$30,$31,$32,$3C,$3D,$3E,$3F,  0
					
		.BYTE $49,$4A,	0
byte_19342:	.BYTE	4,  4,	2,  0,$29,$2A,$2B,$33,$34,$35,$36,$40,$41,$42,$43,$4B
					
		.BYTE $4C,$4D,	0
byte_19355:	.BYTE	4,  4,	2,  0,	0,$2C,$2D,  0,$37,$38,$39,$44,$45,$46,	0,$4E
					
		.BYTE $4F,  0,	0
byte_19368:	.BYTE	4,  4,	2,  0,$2E,$2F,	0,  0,$3A,$3B,	0,  0,$47,$48,	0,  0
					
		.BYTE	0,  0,	0
byte_1937B:	.BYTE	4,  4,	2,  0,$50,$51,$52,  0,$55,$3B,	0,  0,$58,  0,	0,  0
					
		.BYTE	0,  0,	0
byte_1938E:	.BYTE	4,  4,	2,  0,$53,$54,	0,  0,$56,$57,	0,  0,$59,  0,	0,  0
					
		.BYTE	0,  0,	0

Sprites:
		.WORD Jill_193D7
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

Jill_193D7:	
		.include "\SPRITES\BANK_0\SPR_0.ASM"
Enemy1_199A9:	
		.include "\SPRITES\BANK_0\SPR_1.ASM"
Enemy2_19D2B:	
		.include "\SPRITES\BANK_0\SPR_2.ASM"
EnvObject_1A13D:
		.include "\SPRITES\BANK_0\SPR_3.ASM"
BattleUI_1A26F:	
		.include "\SPRITES\BANK_0\SPR_4.ASM"
InventoryUI_1B1C1:
		.include "\SPRITES\BANK_0\SPR_5.ASM"
EnvItems_1BF23:	
		.include "\SPRITES\BANK_0\SPR_6.ASM"
Barry1_1C0A5:	
		.include "\SPRITES\BANK_0\SPR_7.ASM"
Barry2_1C5C7:	
		.include "\SPRITES\BANK_0\SPR_8.ASM"
Barry3_1CAE9:	
		.include "\SPRITES\BANK_0\SPR_9.ASM"
Enrico_1D00B:	
		.include "\SPRITES\BANK_0\SPR_0A.ASM"
Enemy3_1D0ED:	
		.include "\SPRITES\BANK_0\SPR_0B.ASM"
Particles_1D49F:
		.include "\SPRITES\BANK_0\SPR_0C.ASM"
Dog_1D5B1:	
		.include "\SPRITES\BANK_0\SPR_0D.ASM"
Crow_1D7E3:	
		.include "\SPRITES\BANK_0\SPR_0E.ASM"
Snake_1DA05:	
		.include "\SPRITES\BANK_0\SPR_0F.ASM"
Spider_1DB17:	
		.include "\SPRITES\BANK_0\SPR_10.ASM"
Tyrant_1DCA9:	
		.include "\SPRITES\BANK_0\SPR_11.ASM"
BallSmall_1E2CB:
		.include "\SPRITES\BANK_0\SPR_12.ASM"
BallBig_1E2ED:	
		.include "\SPRITES\BANK_0\SPR_13.ASM"
Shotgun_1E61F:	
		.include "\SPRITES\BANK_0\SPR_14.ASM"
Numbers_1E661:	
		.include "\SPRITES\BANK_0\SPR_15.ASM"
LinesUnk_1E723:	
		.include "\SPRITES\BANK_0\SPR_16.ASM"
Candle_1E8B5:	
		.include "\SPRITES\BANK_0\SPR_17.ASM"
Piranha_1E927:	
		.include "\SPRITES\BANK_0\SPR_18.ASM"
GardenBoss_1EA59:
		.include "\SPRITES\BANK_0\SPR_19.ASM"
Helicopter_1ECBB:
		.include "\SPRITES\BANK_0\SPR_1A.ASM"

; =============== S U B	R O U T	I N E =======================================


load_tiles_state_1F25D:			
		JSR	load_palettes_to_ram_1F268
		JSR	upload_tiles_to_ppu_1F32A
		RTS
; End of function load_tiles_state_1F25D


; =============== S U B	R O U T	I N E =======================================


load_obj_tilemap_1F264:			
		JSR	sub_1F3B1
		RTS
; End of function load_obj_tilemap_1F264


; =============== S U B	R O U T	I N E =======================================


load_palettes_to_ram_1F268:		
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

loc_1F2C3:				
		LDA	#0
		STA	objectIdx_318
		STA	sprPalIdx_319
		JSR	get_sprite_palette_ptr_1F2F3
		JSR	copy_sprite_palette_to_ram_1F316
		LDX	#0

loop_1F2D3:				
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

return_1F2F2:				
		RTS
; End of function load_palettes_to_ram_1F268


; =============== S U B	R O U T	I N E =======================================


get_sprite_palette_ptr_1F2F3:		
					; load_palettes_to_ram_1F268+17p ...
		LDA	#$79 
		STA	ptr_0
		LDA	#$80 
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


copy_sprite_palette_to_ram_1F316:	
					; load_palettes_to_ram_1F268+27p ...
		LDY	#0
		LDA	sprPalIdx_319
		ASL	A
		ASL	A
		TAX

loc_1F31E:				
		LDA	(data_2),Y
		STA	sprite_palette_331,X ; "����������������"
		INX
		INY
		CPY	#4
		BCC	loc_1F31E
		RTS
; End of function copy_sprite_palette_to_ram_1F316


; =============== S U B	R O U T	I N E =======================================


upload_tiles_to_ppu_1F32A:		
		LDA	sprite_type_306
		CMP	#0
		BEQ	loc_1F33D
		LDA	#0
		STA	sprite_secondByte_31B
		JSR	load_sprite_to_vram_1F36D
		JSR	upload_to_ppu_1F6D1
		RTS
; ---------------------------------------------------------------------------

loc_1F33D:				
		LDA	#0
		STA	objectIdx_318
		STA	sprite_secondByte_31B
		JSR	load_sprite_to_vram_1F36D
		JSR	upload_to_ppu_1F6D1
		LDX	#0

loc_1F34D:				
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

locret_1F36C:				
		RTS
; End of function upload_tiles_to_ppu_1F32A


; =============== S U B	R O U T	I N E =======================================


load_sprite_to_vram_1F36D:		
					; upload_tiles_to_ppu_1F32A+Cp	...
		LDA	#$A1 
		STA	ptr_0
		INY
		LDA	#$93 
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


sub_1F3B1:				
		JSR	load_sprite_tilemap_1F3B8
		JSR	sub_1F416
		RTS
; End of function sub_1F3B1


; =============== S U B	R O U T	I N E =======================================


load_sprite_tilemap_1F3B8:		
					; sub_1F3B1p
		LDA	#$5F 
		STA	data_2
		INY
		LDA	#$82 
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


sub_1F416:				
		LDA	#0
		CLC
		ADC	byte_31A
		STA	ptr_0
		LDA	#2
		ADC	#0
		STA	ptr_1
		LDA	byte_317
		AND	#$40 
		CMP	#$40 
		BNE	loc_1F430
		JMP	loc_1F4CA
; ---------------------------------------------------------------------------

loc_1F430:				
		LDA	byte_317
		AND	#$80 
		CMP	#$80 
		BNE	loc_1F43C
		JMP	loc_1F559
; ---------------------------------------------------------------------------

loc_1F43C:				
		LDX	#0
		LDY	#0

loc_1F440:				
		LDA	byte_36A
		PHA
		LDA	byte_36B
		PHA
		LDA	#0
		STA	tilemapTypeUnk_30B

loc_1F44D:				
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

loc_1F4C4:				
		LDA	#0
		STA	byte_317
		RTS
; ---------------------------------------------------------------------------

loc_1F4CA:				
		LDX	#0
		LDY	#0

loc_1F4CE:				
		LDA	byte_36A
		PHA
		LDA	byte_36B
		PHA
		LDA	tilemapWidth_308
		STA	tilemapTypeUnk_30B

loc_1F4DC:				
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

loc_1F553:				
		LDA	#0
		STA	byte_317
		RTS
; ---------------------------------------------------------------------------

loc_1F559:				
		LDY	tilemapHeight_30A
		DEY

loc_1F55D:				
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

loc_1F572:				
		LDX	#0
		LDY	#0

loc_1F576:				
		LDA	byte_36A
		PHA
		LDA	byte_36B
		PHA
		LDA	#0
		STA	tilemapTypeUnk_30B

loc_1F583:				
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

loc_1F5F9:				
		LDA	#0
		STA	byte_317
		RTS
; End of function sub_1F416


; =============== S U B	R O U T	I N E =======================================


sub_1F5FF:				
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
		ADC	#$F0 
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

loc_1F66B:				
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

loc_1F68D:				
					; sub_1F5FF+37j ...
		LDA	#$F0 
		STA	ppu_unk_byte_309
		RTS
; ---------------------------------------------------------------------------

loc_1F693:				
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


sub_1F6AB:				
		TYA
		PHA
		LDY	byte_369
		LDA	#0
		STA	byte_369

loc_1F6B5:				
		CPY	#0
		BEQ	loc_1F6CE
		LDA	byte_368
		CLC
		ADC	#$F0 
		STA	byte_368
		LDA	byte_369
		ADC	#0
		STA	byte_369
		DEY
		JMP	loc_1F6B5
; ---------------------------------------------------------------------------

loc_1F6CE:				
		PLA
		TAY
		RTS
; End of function sub_1F6AB


; =============== S U B	R O U T	I N E =======================================


upload_to_ppu_1F6D1:			
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

loc_1F6E7:				
		LDA	ptr_1
		STA	_PPU_ADDR
		LDA	ptr_0
		STA	_PPU_ADDR
		LDY	#0

loc_1F6F3:				
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

loc_1F722:				
		LDA	has_ppu_data_to_upload_6F
		BNE	loc_1F722
		RTS
; End of function sub_1F71E


; =============== S U B	R O U T	I N E =======================================


wait_vblank_1F727:			
		LDA	_PPU_STATUS
		BMI	wait_vblank_1F727

loc_1F72C:				
		LDA	_PPU_STATUS
		BPL	loc_1F72C
		RTS
; End of function wait_vblank_1F727


; =============== S U B	R O U T	I N E =======================================


wait_for_count350_zero_1F732:
		LDA	#1
		STA	frame_render_count_350

loc_1F737:				
		LDA	frame_render_count_350
		BNE	loc_1F737
		RTS
; End of function wait_for_count350_zero_1F732


; =============== S U B	R O U T	I N E =======================================


sub_1F73D:
		LDY	#0

loc_1F73F:				
		LDX	#0

loc_1F741:				
		LDA	input_reg1_347
		CMP	#0
		BNE	locret_1F74E
		INX
		BNE	loc_1F741
		INY
		BNE	loc_1F73F

locret_1F74E:				
		RTS
; End of function sub_1F73D


; =============== S U B	R O U T	I N E =======================================


unused_1F74F:				
		LDA	input_pressed_34A
		CMP	#a_80
		BNE	unused_1F74F
		RTS
; End of function unused_1F74F


; =============== S U B	R O U T	I N E =======================================


unused_1F757:				
		LDA	input_pressed_34A
		CMP	#$40 
		BNE	unused_1F757
		RTS
; End of function unused_1F757


; =============== S U B	R O U T	I N E =======================================


unused_1F75F:				
		LDA	input_pressed_34A
		CMP	#0
		BEQ	unused_1F75F
		RTS
; End of function unused_1F75F


; =============== S U B	R O U T	I N E =======================================


sub_1F767:				
		PHA
		JSR	sub_1F772
		PLA
		SEC
		SBC	#1
		BNE	sub_1F767
		RTS
; End of function sub_1F767


; =============== S U B	R O U T	I N E =======================================


sub_1F772:				
		PHA
		TXA
		PHA
		TYA
		PHA
		LDX	#0

loc_1F779:				
		LDY	#0

loc_1F77B:				
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


nmi_sub_1F787:				
		LDA	#$F0 
		STA	byte_218
		STA	byte_21C
		STA	byte_220
		STA	byte_224
		STA	byte_2E8
		STA	byte_2EC
		RTS
; End of function nmi_sub_1F787


; =============== S U B	R O U T	I N E =======================================


sub_1F79C:				
		LDA	byte_43E
		BEQ	loc_1F7C3
		LDA	byte_203
		BNE	loc_1F7AE
		LDA	#0
		STA	byte_43E
		JMP	locret_1F7E4
; ---------------------------------------------------------------------------

loc_1F7AE:				
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

loc_1F7C3:				
		LDA	byte_203
		CMP	#$F8 
		BNE	loc_1F7D2
		LDA	#1
		STA	byte_43E
		JMP	locret_1F7E4
; ---------------------------------------------------------------------------

loc_1F7D2:				
		LDA	byte_203
		CLC
		ADC	#8
		STA	byte_203
		LDA	byte_207
		CLC
		ADC	#8
		STA	byte_207

locret_1F7E4:				
					; sub_1F79C+24j ...
		RTS
; End of function sub_1F79C


; =============== S U B	R O U T	I N E =======================================


NMI_1F7E5:				
		PHP
		PHA
		TXA
		PHA
		TYA
		PHA
		LDA	bank_switch_flag_6C
		CMP	#$88 
		BEQ	loc_1F7F4
		JMP	loc_1F825
; ---------------------------------------------------------------------------

loc_1F7F4:				
		LDA	#$EE 
		STA	bank_switch_flag_6C
		LDA	sprite_type_306
		BNE	loc_1F800
		JSR	nmi_sub_1F787

loc_1F800:				
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

loc_1F81B:				
		JSR	sub_1F92E
		JSR	apu_music_update_1F9C0
		LDA	#$88 
		STA	bank_switch_flag_6C

loc_1F825:				
		LDA	byte_432
		BEQ	loc_1F82D
		DEC	byte_432

loc_1F82D:				
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

stack_revert_1F856:			
		PLA
		TAY
		PLA
		TAX
		PLA
		PLP

exit_1F85C:				
		RTI
; End of function NMI_1F7E5


; =============== S U B	R O U T	I N E =======================================


ppu_upload_data_1F85D:			
		LDA	has_ppu_data_to_upload_6F
		BNE	start_upload_1F862
		RTS
; ---------------------------------------------------------------------------

start_upload_1F862:			
		LDA	ppu_data_70
		BEQ	return_1F8AD
		STA	ppu_fld0_x_6D
		LDX	#1

next_entry_1F86A:			
		LDA	ppu_data_70,X
		AND	#$80 
		BEQ	loc_1F87E
		LDA	ppu_ctrl_31F
		ORA	#4
		STA	ppu_ctrl_31F
		STA	_PPU_CTRL
		JMP	loc_1F889
; ---------------------------------------------------------------------------

loc_1F87E:				
		LDA	ppu_ctrl_31F
		AND	#$FB 
		STA	ppu_ctrl_31F
		STA	_PPU_CTRL

loc_1F889:				
		LDA	ppu_data_70,X
		AND	#$7F 
		STA	ppu_fld1_y_6E
		INX
		LDA	ppu_data_70,X
		STA	_PPU_ADDR
		INX
		LDA	ppu_data_70,X
		STA	_PPU_ADDR

write_to_ppu_1F89B:			
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

return_1F8AD:				
					; ppu_upload_data_1F85D+4Aj
		LDA	#0
		STA	has_ppu_data_to_upload_6F
		RTS
; End of function ppu_upload_data_1F85D


; =============== S U B	R O U T	I N E =======================================


ppu_update_state_1F8B2:			
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


input_update_1F8CB:			
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


pad_input_update_1F8E3:			
		LDX	#1
		STX	_PAD0_REG
		DEX
		STX	_PAD0_REG
		LDA	#0
		LDY	#8

loc_1F8F0:				
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


input_sub_1F903:			
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


sub_1F92E:				
		INC	byte_353
		LDA	byte_353
		CMP	#$19
		BCS	loc_1F939
		RTS
; ---------------------------------------------------------------------------

loc_1F939:				
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

loc_1F954:				
		DEC	byte_356
		LDA	#$A
		STA	byte_355

loc_1F95C:				
		DEC	byte_355
		LDA	#$A
		STA	byte_354

loc_1F964:				
		DEC	byte_354
		RTS
; End of function sub_1F92E


; =============== S U B	R O U T	I N E =======================================


sub_1F968:				
		INC	scroll_offset_x_479
		LDA	scroll_offset_x_479
		CMP	#$A
		BCC	locret_1F9BF
		LDA	scroll_offset_y_47A
		EOR	#$80 
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		AND	#$FE 
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		AND	#$7F 
		CMP	#0
		BEQ	locret_1F9BF
		LDA	scroll_offset_y_47A
		PHA
		LDA	scroll_offset_y_47A
		AND	#$80 
		CMP	#0
		BEQ	loc_1F9A0
		LDA	#0
		STA	ppu_scroll_y_305
		JMP	loc_1F9B2
; ---------------------------------------------------------------------------

loc_1F9A0:				
		LDA	scroll_offset_y_47A
		AND	#$7F 
		STA	scroll_offset_y_47A
		LDA	ppu_scroll_y_305
		CLC
		ADC	scroll_offset_y_47A
		STA	ppu_scroll_y_305

loc_1F9B2:				
		PLA
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		SEC
		SBC	#2
		STA	scroll_offset_y_47A

locret_1F9BF:				
					; sub_1F968+21j
		RTS
; End of function sub_1F968


; =============== S U B	R O U T	I N E =======================================


apu_music_update_1F9C0:			
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