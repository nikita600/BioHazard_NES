; Segment type:	Pure code
		;.segment BANK_02
		* =  $8000

; =============== S U B	R O U T	I N E =======================================


bank_switch_28000:			
					; sub_2D4D7+20p ...
		LDA	#$EE 
		STA	bank_switch_flag_6C
		LDA	bank_to_344
		CMP	#$10
		BCS	loc_28020
		ASL	A
		ASL	A
		ASL	A
		TAY
		LDA	mirroring_type_342
		BNE	loc_2801A
		STA	$8083,Y
		JMP	loc_28035
; ---------------------------------------------------------------------------

loc_2801A:				
		STA	$8081,Y
		JMP	loc_28035
; ---------------------------------------------------------------------------

loc_28020:				
		SEC
		SBC	#$10
		ASL	A
		ASL	A
		ASL	A
		TAY
		LDA	mirroring_type_342
		BNE	loc_28032
		STA	$8183,Y
		JMP	loc_28035
; ---------------------------------------------------------------------------

loc_28032:				
		STA	$8181,Y

loc_28035:				
					; bank_switch_28000+1Dj ...
		LDA	bank_to_344
		STA	bank_prev_345
		LDA	#$88 
		STA	bank_switch_flag_6C
		LDA	bank_command_346
		CMP	#0
		BEQ	loc_2805F
		CMP	#1
		BEQ	loc_28065
		CMP	#2
		BEQ	loc_2806B
		CMP	#3
		BEQ	loc_28071
		CMP	#4
		BEQ	loc_28077
		CMP	#5
		BEQ	loc_2807D
		CMP	#6
		BEQ	loc_28083
		RTS
; ---------------------------------------------------------------------------

loc_2805F:				
		JSR	sub_2D11F
		JMP	loc_28089
; ---------------------------------------------------------------------------

loc_28065:				
		JSR	sub_2D131
		JMP	loc_28089
; ---------------------------------------------------------------------------

loc_2806B:				
		JSR	sub_2D16B
		JMP	loc_28089
; ---------------------------------------------------------------------------

loc_28071:				
		JSR	sub_2D196
		JMP	loc_28089
; ---------------------------------------------------------------------------

loc_28077:				
		JSR	sub_2D1CB
		JMP	loc_28089
; ---------------------------------------------------------------------------

loc_2807D:				
		JSR	sub_2D397
		JMP	loc_28089
; ---------------------------------------------------------------------------

loc_28083:				
		JSR	sub_2E781
		JMP	loc_28089
; ---------------------------------------------------------------------------

loc_28089:				
					; bank_switch_28000+68j ...
		LDA	#$FF
		STA	bank_command_346
		LDA	bank_from_343
		STA	bank_to_344
		JMP	bank_switch_28000
; End of function bank_switch_28000

; ---------------------------------------------------------------------------
off_28097:	.WORD off_280A1		
		.WORD off_281A1
		.WORD off_282A1
		.WORD off_283A1
		.WORD off_284A1
off_280A1:	.WORD byte_28531	
		.WORD byte_28536
		.WORD byte_2853B
		.WORD byte_28542
		.WORD byte_28549
		.WORD byte_28550
		.WORD byte_28557
		.WORD byte_28560
		.WORD byte_28569
		.WORD byte_28572
		.WORD byte_28577
		.WORD byte_28582
		.WORD byte_2858D
		.WORD byte_28598
		.WORD byte_285A9
		.WORD byte_285BC
		.WORD byte_285CD
		.WORD byte_285E0
		.WORD byte_285F1
		.WORD byte_285FA
		.WORD byte_28607
		.WORD byte_28614
		.WORD byte_28621
		.WORD byte_28630
		.WORD byte_2863F
		.WORD byte_2864E
		.WORD byte_2865D
		.WORD byte_28662
		.WORD byte_28667
		.WORD byte_28670
		.WORD byte_28679
		.WORD byte_28680
		.WORD byte_28687
		.WORD byte_2868E
		.WORD byte_28695
		.WORD byte_2869C
		.WORD byte_286A3
		.WORD byte_286AC
		.WORD byte_286BB
		.WORD byte_286CA
		.WORD byte_286D3
		.WORD byte_286DC
		.WORD byte_286E7
		.WORD byte_286F2
		.WORD byte_286F9
		.WORD byte_28700
		.WORD byte_28705
		.WORD byte_2870A
		.WORD byte_28711
		.WORD byte_2871A
		.WORD byte_2871F
		.WORD byte_2872A
		.WORD byte_2873D
		.WORD byte_28752
		.WORD byte_28765
		.WORD byte_28774
		.WORD byte_28787
		.WORD byte_2879C
		.WORD byte_287B1
		.WORD byte_287C4
		.WORD byte_287D9
		.WORD byte_287E6
		.WORD byte_287F3
		.WORD byte_28806
		.WORD byte_28815
		.WORD byte_28826
		.WORD byte_28833
		.WORD byte_28848
		.WORD byte_28855
		.WORD byte_28864
		.WORD byte_28871
		.WORD byte_2887E
		.WORD byte_2888F
		.WORD byte_288A2
		.WORD byte_288B7
		.WORD byte_288CC
		.WORD byte_288DD
		.WORD byte_288F2
		.WORD byte_28901
		.WORD byte_2890E
		.WORD byte_2891B
		.WORD byte_2892C
		.WORD byte_2893D
		.WORD byte_2894A
		.WORD byte_28957
		.WORD byte_28968
		.WORD byte_28975
		.WORD byte_28984
		.WORD byte_28993
		.WORD byte_289A2
		.WORD byte_289B1
		.WORD byte_289C4
		.WORD byte_289CD
		.WORD byte_289DC
		.WORD byte_289EB
		.WORD byte_289FC
		.WORD byte_28A0D
		.WORD byte_28A1E
		.WORD byte_28A33
		.WORD byte_28A48
		.WORD byte_28A5B
		.WORD byte_28A6E
		.WORD byte_28A7B
		.WORD byte_28A82
		.WORD byte_28A91
		.WORD byte_28A9C
		.WORD byte_28AAF
		.WORD byte_28ABE
		.WORD byte_28AD1
		.WORD byte_28AD4
		.WORD byte_28ADF
		.WORD byte_28AEC
		.WORD byte_28AF7
		.WORD byte_28AFE
		.WORD byte_28B09
		.WORD byte_28B16
		.WORD byte_28B23
		.WORD byte_28B26
		.WORD byte_28B31
		.WORD byte_28B42
		.WORD byte_28B55
		.WORD byte_28B6A
		.WORD byte_28B7D
		.WORD byte_28B92
		.WORD byte_28BA7
		.WORD byte_28BBC
		.WORD byte_28BD1
		.WORD byte_28BDE
off_281A1:	.WORD byte_28BEB	
		.WORD byte_28BF8
		.WORD byte_28C05
		.WORD byte_28C12
		.WORD byte_28C1B
		.WORD byte_28C26
		.WORD byte_28C33
		.WORD byte_28C3A
		.WORD byte_28C4B
		.WORD byte_28C6C
		.WORD byte_28CA3
		.WORD byte_28CD4
		.WORD byte_28CE3
		.WORD byte_28CF8
		.WORD byte_28D15
		.WORD byte_28D30
		.WORD byte_28D63
		.WORD byte_28D72
		.WORD byte_28D9B
		.WORD byte_28DB8
		.WORD byte_28DD3
		.WORD byte_28DE8
		.WORD byte_28DF3
		.WORD byte_28E0A
		.WORD byte_28E33
		.WORD byte_28E42
		.WORD byte_28E4F
		.WORD byte_28E5E
		.WORD byte_28E6D
		.WORD byte_28E78
		.WORD byte_28E83
		.WORD byte_28E94
		.WORD byte_28EA1
		.WORD byte_28EAE
		.WORD byte_28EBB
		.WORD byte_28EC8
		.WORD byte_28ED5
		.WORD byte_28EE0
		.WORD byte_28EED
		.WORD byte_28EF8
		.WORD byte_2945B
		.WORD byte_29594
		.WORD byte_297FF
		.WORD byte_29BCE
		.WORD byte_29F2D
		.WORD byte_2A032
		.WORD byte_2A079
		.WORD byte_2A0D8
		.WORD byte_2A11F
		.WORD byte_2A476
		.WORD byte_2A6F9
		.WORD byte_2A850
		.WORD byte_2A9BD
		.WORD byte_2A9D6
		.WORD byte_2A9F5
		.WORD byte_2AA0A
		.WORD byte_2AA1F
		.WORD byte_2AA34
		.WORD byte_2AA47
		.WORD byte_2AA6E
		.WORD byte_2AA7F
		.WORD byte_2AAAA
		.WORD byte_2AACB
		.WORD byte_2AAE2
		.WORD byte_2AAF5
		.WORD byte_2AB06
		.WORD byte_2AB0F
		.WORD byte_2AB1E
		.WORD byte_2AB2D
		.WORD byte_2AB48
		.WORD byte_2AB57
		.WORD byte_2AB66
		.WORD byte_2AB75
		.WORD byte_2AB82
		.WORD byte_2AB97
		.WORD byte_2ABBE
		.WORD byte_2ABCD
		.WORD byte_2ABD6
		.WORD byte_2ABDF
		.WORD byte_2ABF8
		.WORD byte_2AC0F
		.WORD byte_2AC18
		.WORD byte_2AC1B
		.WORD byte_2AC38
		.WORD byte_2AC45
		.WORD byte_2AC5A
		.WORD byte_2AC65
		.WORD byte_2AC74
		.WORD byte_2AC87
		.WORD byte_2AC96
		.WORD byte_2ACB1
		.WORD byte_2ACC8
		.WORD byte_2ACCF
		.WORD byte_2ACE0
		.WORD byte_2ACF3
		.WORD byte_2AD06
		.WORD byte_2AD1D
		.WORD byte_2AD38
		.WORD byte_2AD57
		.WORD byte_2AD72
		.WORD byte_2AD9B
		.WORD byte_2ADC0
		.WORD byte_2ADD3
		.WORD byte_2ADE0
		.WORD byte_2ADEB
		.WORD byte_2AE00
		.WORD byte_2AE1D
		.WORD byte_2AE44
		.WORD byte_2AE49
		.WORD byte_2AE56
		.WORD byte_2AE71
		.WORD byte_2AE8C
		.WORD byte_2AE9B
		.WORD byte_2AEB4
		.WORD byte_2AED7
		.WORD byte_2AEE4
		.WORD byte_2AEE9
		.WORD byte_2AF02
		.WORD byte_2AF19
		.WORD byte_2AF42
		.WORD byte_2AF71
		.WORD byte_2AF8C
		.WORD byte_2AFA1
		.WORD byte_2AFAA
		.WORD byte_2AFD1
		.WORD byte_2AFDE
		.WORD byte_2AFE9
		.WORD byte_2AFFE
off_282A1:	.WORD byte_2B011	
		.WORD byte_2B032
		.WORD byte_2B04F
		.WORD byte_2B05E
		.WORD byte_2B07B
		.WORD byte_2B094
		.WORD byte_2B0A9
		.WORD byte_2B0CE
		.WORD byte_2B0F5
		.WORD byte_2B100
		.WORD byte_2B10D
		.WORD byte_2B122
		.WORD byte_2B12D
		.WORD byte_2B13C
		.WORD byte_2B141
		.WORD byte_2B14A
		.WORD byte_2B165
		.WORD byte_2B192
		.WORD byte_2B199
		.WORD byte_2B1AC
		.WORD byte_2B1D9
		.WORD byte_2B208
		.WORD byte_2B21F
		.WORD byte_2B23C
		.WORD byte_2B243
		.WORD byte_2B272
		.WORD byte_2B295
		.WORD byte_2B2AA
		.WORD byte_2B2C9
		.WORD byte_2B2D6
		.WORD byte_2B2F5
		.WORD byte_2B30E
		.WORD byte_2B32D
		.WORD byte_2B33E
		.WORD byte_2B363
		.WORD byte_2B378
		.WORD byte_2B385
		.WORD byte_2B3AA
		.WORD byte_2B3B5
		.WORD byte_2B3D8
		.WORD byte_2B3E9
		.WORD byte_2B3F6
		.WORD byte_2B40D
		.WORD byte_2B42E
		.WORD byte_2B443
		.WORD byte_2B45C
		.WORD byte_2B471
		.WORD byte_2B49E
		.WORD byte_2B4C3
		.WORD byte_2B4DC
		.WORD byte_2B4E7
		.WORD byte_2B4FA
		.WORD byte_2B4FD
		.WORD byte_2B524
		.WORD byte_2B531
		.WORD byte_2B538
		.WORD byte_2B54F
		.WORD byte_2B562
		.WORD byte_2B579
		.WORD byte_2B59C
		.WORD byte_2B5A5
		.WORD byte_2B5BC
		.WORD byte_2B5D3
		.WORD byte_2B5DE
		.WORD byte_2B5E9
		.WORD byte_2B5F0
		.WORD byte_2B603
		.WORD byte_2B612
		.WORD byte_2B62F
		.WORD byte_2B656
		.WORD byte_2B663
		.WORD byte_2B692
		.WORD byte_2B6AD
		.WORD byte_2B6CA
		.WORD byte_2B6F7
		.WORD byte_2B70E
		.WORD byte_2B73D
		.WORD byte_2B76E
		.WORD byte_2B79B
		.WORD byte_2B7B8
		.WORD byte_2B7D5
		.WORD byte_2B7E8
		.WORD byte_2B7F9
		.WORD byte_2B81E
		.WORD byte_2B849
		.WORD byte_2B85C
		.WORD byte_2B889
		.WORD byte_2B8C2
		.WORD byte_2B8D7
		.WORD byte_2B900
		.WORD byte_2B90D
		.WORD byte_2B924
		.WORD byte_2B951
		.WORD byte_2B972
		.WORD byte_2B98F
		.WORD byte_2B9A6
		.WORD byte_2B9AB
		.WORD byte_2B9BA
		.WORD byte_2B9CB
		.WORD byte_2B9FA
		.WORD byte_2BA23
		.WORD byte_2BA3A
		.WORD byte_2BA5F
		.WORD byte_2BA68
		.WORD byte_2BA85
		.WORD byte_2BAB2
		.WORD byte_2BB2F
		.WORD byte_2BB42
		.WORD byte_2BB5D
		.WORD byte_2BB70
		.WORD byte_2BB85
		.WORD byte_2BB9A
		.WORD byte_2BBB7
		.WORD byte_2BBBE
		.WORD byte_2BBDB
		.WORD byte_2BBE8
		.WORD byte_2BBF3
		.WORD byte_2BC04
		.WORD byte_2BC0F
		.WORD byte_2BC20
		.WORD byte_2BC41
		.WORD byte_2BC5A
		.WORD byte_2BC79
		.WORD byte_2BC9E
		.WORD byte_2BCAF
		.WORD byte_2BCCE
		.WORD byte_2BCE3
		.WORD byte_2BCEE
off_283A1:	.WORD byte_2BCF9	
		.WORD byte_2BD0A
		.WORD byte_2BD23
		.WORD byte_2BD42
		.WORD byte_2BD55
		.WORD byte_2BD7E
		.WORD byte_2BD9F
		.WORD byte_2BDB8
		.WORD byte_2BDC7
		.WORD byte_2BDDA
		.WORD byte_2BDFB
		.WORD byte_2BE02
		.WORD byte_2BE19
		.WORD byte_2BE2C
		.WORD byte_2BE3F
		.WORD byte_2BE52
		.WORD byte_2BE6F
		.WORD byte_2BE8C
		.WORD byte_2BEA9
		.WORD byte_2BEBC
		.WORD byte_2BECD
		.WORD byte_2BEE0
		.WORD byte_2BEEB
		.WORD byte_2BEFE
		.WORD byte_2BF15
		.WORD byte_2BF22
		.WORD byte_2BF43
		.WORD byte_2BF5E
		.WORD byte_2BF81
		.WORD byte_2BF92
		.WORD byte_2BFA5
		.WORD byte_2BFC0
		.WORD byte_2BFD1
		.WORD byte_2BFE0
		.WORD byte_2BFE9
		.WORD byte_2BFFC
		.WORD byte_2C00B
		.WORD byte_2C038
		.WORD byte_2C061
		.WORD byte_2C072
		.WORD byte_2C0B7
		.WORD byte_2C0D4
		.WORD byte_2C0FF
		.WORD byte_2C10E
		.WORD byte_2C125
		.WORD byte_2C138
		.WORD byte_2C14B
		.WORD byte_2C15A
		.WORD byte_2C16F
		.WORD byte_2C182
		.WORD byte_2C195
		.WORD byte_2C1A6
		.WORD byte_2C1BF
		.WORD byte_2C1EE
		.WORD byte_2C221
		.WORD byte_2C230
		.WORD byte_2C239
		.WORD byte_2C246
		.WORD byte_2C257
		.WORD byte_2C270
		.WORD byte_2C281
		.WORD byte_2C294
		.WORD byte_2C2B1
		.WORD byte_2C2BC
		.WORD byte_2C2CB
		.WORD byte_2C2E0
		.WORD byte_2C30F
		.WORD byte_2C320
		.WORD byte_2C33F
		.WORD byte_2C366
		.WORD byte_2C36B
		.WORD byte_2C37C
		.WORD byte_2C397
		.WORD byte_2C3AC
		.WORD byte_2C3C1
		.WORD byte_2C3D2
		.WORD byte_2C3E7
		.WORD byte_2C3F8
		.WORD byte_2C411
		.WORD byte_2C426
		.WORD byte_2C437
		.WORD byte_2C462
		.WORD byte_2C46F
		.WORD byte_2C490
		.WORD byte_2C4A5
		.WORD byte_2C4E8
		.WORD byte_2C503
		.WORD byte_2C524
		.WORD byte_2C533
		.WORD byte_2C570
		.WORD byte_2C57F
		.WORD byte_2C594
		.WORD byte_2C5B3
		.WORD byte_2C5CC
		.WORD byte_2C5DF
		.WORD byte_2C5FE
		.WORD byte_2C607
		.WORD byte_2C622
		.WORD byte_2C641
		.WORD byte_2C660
		.WORD byte_2C679
		.WORD byte_2C68C
		.WORD byte_2C6A1
		.WORD byte_2C6B8
		.WORD byte_2C6DF
		.WORD byte_2C700
		.WORD byte_2C71B
		.WORD byte_2C75C
		.WORD byte_2C78F
		.WORD byte_2C7A2
		.WORD byte_2C7C5
		.WORD byte_2C7E0
		.WORD byte_2C801
		.WORD byte_2C81C
		.WORD byte_2C837
		.WORD byte_2C85E
		.WORD byte_2C873
		.WORD byte_2C888
		.WORD byte_2C89B
		.WORD byte_2C8B6
		.WORD byte_2C8CD
		.WORD byte_2C8E2
		.WORD byte_2C915
		.WORD byte_2C92E
		.WORD byte_2C94D
		.WORD byte_2C960
		.WORD byte_2C975
		.WORD byte_2C99C
off_284A1:	.WORD byte_2C9BF	
		.WORD byte_2C9E2
		.WORD byte_2C9FD
		.WORD byte_2CA12
		.WORD byte_2CA39
		.WORD byte_2CA44
		.WORD byte_2CA55
		.WORD byte_2CA66
		.WORD byte_2CA6F
		.WORD byte_2CA80
		.WORD byte_2CA99
		.WORD byte_2CAB4
		.WORD byte_2CAC9
		.WORD byte_2CADC
		.WORD byte_2CAFB
		.WORD byte_2CB0E
		.WORD byte_2CB21
		.WORD byte_2CB34
		.WORD byte_2CB4F
		.WORD byte_2CB64
		.WORD byte_2CB77
		.WORD byte_2CB86
		.WORD byte_2CB95
		.WORD byte_2CBA4
		.WORD byte_2CBAF
		.WORD byte_2CBBE
		.WORD byte_2CBCD
		.WORD byte_2CBDC
		.WORD byte_2CBED
		.WORD byte_2CBFE
		.WORD byte_2CC0F
		.WORD byte_2CC20
		.WORD byte_2CC2F
		.WORD byte_2CC64
		.WORD byte_2CC75
		.WORD byte_2CC90
		.WORD byte_2CC9F
		.WORD byte_2CCC6
		.WORD byte_2CCD7
		.WORD byte_2CCF2
		.WORD byte_2CD23
		.WORD byte_2CD46
		.WORD byte_2CD5B
		.WORD byte_2CD94
		.WORD byte_2CD9B
		.WORD byte_2CDA2
		.WORD byte_2CDB7
		.WORD byte_2CDBC
		.WORD byte_2CDC1
		.WORD byte_2CDC6
		.WORD byte_2CDE7
		.WORD byte_2CE06
		.WORD byte_2CE1B
		.WORD byte_2CE2E
		.WORD byte_2CE43
		.WORD byte_2CE62
		.WORD byte_2CE85
		.WORD byte_2CE92
		.WORD byte_2CEBB
		.WORD byte_2CEC6
		.WORD byte_2CEDF
		.WORD byte_2CEF4
		.WORD byte_2CF01
		.WORD byte_2CF14
		.WORD byte_2CF31
		.WORD byte_2CF3E
		.WORD byte_2CF5B
		.WORD byte_2CF82
		.WORD byte_2CFA7
		.WORD byte_2CFBA
		.WORD byte_2CFCF
		.WORD byte_2D106
byte_28531:	.BYTE	1,  0,	1,  1,	0 
byte_28536:	.BYTE	1,  2,	1,  3,	0 
byte_2853B:	.BYTE	1,  4,	1,  5,	1,  3,	0 
byte_28542:	.BYTE	1,  6,	1,  7,	1,  3,	0 
byte_28549:	.BYTE	1,  8,	1,  5,	1,  9,	0 
byte_28550:	.BYTE	1, $A,	1, $B,	1, $C,	0 
byte_28557:	.BYTE	1,  2,	1,  3,	1,  5,	1, $D,	0 
byte_28560:	.BYTE	1,  4,	1,  5,	1,  3,	1,  5,	0 
byte_28569:	.BYTE	1,  6,	1,  7,	1,  3,	1,  5,	0 
byte_28572:	.BYTE	1,  8,	1,  5,	0 
byte_28577:	.BYTE	1, $E,	1, $F,	1,$10,	1,$11,	1,$12,	0 
byte_28582:	.BYTE	1, $E,	1, $F,	1,$10,	1,$13,	1,$12,	0 
byte_2858D:	.BYTE	1, $E,	1, $F,	1,$10,	1,$14,	1,$12,	0 
byte_28598:	.BYTE	1,$15,	1,$16,	1, $E,	1, $F,	1,$10,	1,$11,	1,$13,	1,$12
					
		.BYTE	0
byte_285A9:	.BYTE	1,$15,	1,$16,	1, $E,	1, $F,	1,$10,	1,$11,	1,$13,	1,$14
					
		.BYTE	1,$12,	0
byte_285BC:	.BYTE	1,$15,	1,$16,	1, $E,	1, $F,	1,$10,	1,$13,	1,$13,	1,$12
					
		.BYTE	0
byte_285CD:	.BYTE	1,$15,	1,$16,	1, $E,	1, $F,	1,$10,	1,$13,	1,$13,	1,$13
					
		.BYTE	1,$12,	0
byte_285E0:	.BYTE	1,$15,	1,$16,	1, $E,	1, $F,	1,$10,	1,$13,	1,$14,	1,$12
					
		.BYTE	0
byte_285F1:	.BYTE	1,$17,	1,$18,	1,$19,	1,$1A,	0 
byte_285FA:	.BYTE	1,$1B,	1,$1C,	1,$10,	1,$1D,	1,$1E,	1,$12,	0
					
byte_28607:	.BYTE	1,$1B,	1,$1C,	1,$10,	1,$1F,	1,$20,	1,$12,	0
					
byte_28614:	.BYTE	1,$1B,	1,$1C,	1,$10,	1,$21,	1,$22,	1,$12,	0
					
byte_28621:	.BYTE	1,$1B,	1,$1C,	1,$10,	1,$23,	1,$23,	1,$24,	1,$12,	0
					
byte_28630:	.BYTE	1,$1B,	1,$1C,	1,$10,	1,$23,	1,$23,	1,$25,	1,$12,	0
					
byte_2863F:	.BYTE	1,$1B,	1,$1C,	1,$10,	1,$26,	1,$27,	1,$28,	1,$12,	0
					
byte_2864E:	.BYTE	1,$1B,	1,$1C,	1,$10,	1,$29,	1,$2A,	1,$28,	1,$12,	0
					
byte_2865D:	.BYTE	1,$2B,	1,$2C,	0 
byte_28662:	.BYTE	1,$2D,	1,$2E,	0 
byte_28667:	.BYTE	1,$2F,	1,$27,	1,$30,	1,$31,	0 
byte_28670:	.BYTE	1,$32,	1,$33,	1,$30,	1,$31,	0 
byte_28679:	.BYTE	1,$34,	1,$35,	1,$36,	0 
byte_28680:	.BYTE	1,$37,	1,$35,	1,$36,	0 
byte_28687:	.BYTE	1,$38,	1,$35,	1,$36,	0 
byte_2868E:	.BYTE	1,$39,	1,$35,	1,$36,	0 
byte_28695:	.BYTE	1,$11,	1,$3A,	1,$3B,	0 
byte_2869C:	.BYTE	1,$14,	1,$3A,	1,$3B,	0 
byte_286A3:	.BYTE	1,$11,	1,$2B,	1,$35,	1,$3C,	0 
byte_286AC:	.BYTE	1,$3D,	1,$3E,	1,$35,	1,$3C,	1,$10,	1,$11,	1,$12,	0
					
byte_286BB:	.BYTE	1,$3D,	1,$3E,	1,$35,	1,$3C,	1,$10,	1,$14,	1,$12,	0
					
byte_286CA:	.BYTE	1,$3F,	1,$35,	1,$40,	1,$31,	0 
byte_286D3:	.BYTE	1,$41,	1,$35,	1,$40,	1,$31,	0 
byte_286DC:	.BYTE	1,$42,	1,$43,	1,$44,	1,$45,	1,  2,	0 
byte_286E7:	.BYTE	1,$46,	1,$43,	1,$44,	1,$45,	1,  2,	0 
byte_286F2:	.BYTE	1,$47,	1, $A,	1,$48,	0 
byte_286F9:	.BYTE	1,$49,	1, $F,	1,$4A,	0 
byte_28700:	.BYTE	1,$4B,	1,$4C,	0 
byte_28705:	.BYTE	1,$29,	1,$4D,	0 
byte_2870A:	.BYTE	1,$4E,	1,$4F,	1,  5,	0 
byte_28711:	.BYTE	1,$50,	1,$51,	1,$52,	1,$53,	0 
byte_2871A:	.BYTE	1,$54,	1,$55,	0 
byte_2871F:	.BYTE	1, $E,	1,$56,	1,$10,	1,$57,	1,$12,	0 
byte_2872A:	.BYTE	1, $E,	1,$56,	1,$10,	1,$58,	1,$50,	1,$59,	1,$24,	1,$5A
					
		.BYTE	1,$12,	0
byte_2873D:	.BYTE	1, $E,	1,$56,	1,$10,	1,$5B,	1,$5C,	1,$5D,	1,$23,	1,$23
					
		.BYTE	1,$25,	1,$12,	0
byte_28752:	.BYTE	1, $E,	1,$56,	1,$10,	1,$58,	1,$50,	1,$59,	1,$5E,	1,$5A
					
		.BYTE	1,$12,	0
byte_28765:	.BYTE	1, $E,	1,$56,	1,$10,	1,$32,	1,$5D,	1,$5F,	1,$12,	0
					
byte_28774:	.BYTE	1, $E,	1,$56,	1,$10,	1,$58,	1,$50,	1,$59,	1,$60,	1,$5A
					
		.BYTE	1,$12,	0
byte_28787:	.BYTE	1, $E,	1,$56,	1,$10,	1,$58,	1,$50,	1,$59,	1,$61,	1,$25
					
		.BYTE	1,$5A,	1,$12,	0
byte_2879C:	.BYTE	1, $E,	1,$56,	1,$10,	1,$62,	1,$5D,	1,$63,	1,$51,	1,$64
					
		.BYTE	1,$65,	1,$12,	0
byte_287B1:	.BYTE	1,$52,	1,$66,	1,$67,	1,$68,	1,$69,	1,$6A,	1,$6B,	1,$6C
					
		.BYTE	1,$6D,	0
byte_287C4:	.BYTE	1,$6E,	1,$6F,	1,$70,	1,$50,	1,$71,	1,$24,	1,$72,	1,$73
					
		.BYTE	1,  2,	1,  3,	0
byte_287D9:	.BYTE	1,$74,	1,$4F,	1,$75,	1,$76,	1,  5,	1,  3,	0
					
byte_287E6:	.BYTE	1,$77,	1,$78,	1,$79,	1,  3,	1,$7A,	1,  5,	0
					
byte_287F3:	.BYTE	1,$50,	1,$7B,	1,$25,	1,$7C,	1,  8,	1,  5,	1,$7D,	1,$7E
					
		.BYTE	1,$7F,	0
byte_28806:	.BYTE	2,  0,	2,  1,	1, $A,	1, $B,	1,$7D,	1,$7E,	1,$7F,	0
					
byte_28815:	.BYTE	1,$6E,	1,$6F,	1,$70,	1,  2,	1,  3,	2,  2,	1,$7A,	1,  5
					
		.BYTE	0
byte_28826:	.BYTE	1,$76,	1,  5,	1,  3,	2,  2,	1,$7A,	1,  5,	0
					
byte_28833:	.BYTE	2,  3,	1,$25,	2,  4,	1,$60,	2,  5,	1,$78,	1,$79,	1,  3
					
		.BYTE	2,  6,	2,  7,	0
byte_28848:	.BYTE	1,  8,	1,  5,	1,  3,	2,  2,	1,  5,	1, $E,	0
					
byte_28855:	.BYTE	1,$67,	1,$6A,	2,  8,	2,  9,	2, $A,	2, $B,	2,  7,	0
					
byte_28864:	.BYTE	2,  7,	2, $C,	2, $D,	2, $E,	2, $F,	2,$10,	0
					
byte_28871:	.BYTE	2, $D,	2, $E,	2,$11,	2,$12,	2,$13,	2,$14,	0
					
byte_2887E:	.BYTE	1,$11,	1,$13,	1, $E,	1, $F,	1,$15,	1,$16,	2,$15,	1,$6B
					
		.BYTE	0
byte_2888F:	.BYTE	1,$11,	1,$13,	1,$14,	1, $E,	1, $F,	1,$15,	1,$16,	2,$15
					
		.BYTE	1,$6B,	0
byte_288A2:	.BYTE	2,$16,	2,$17,	1,$13,	1,$2B,	1, $E,	1, $F,	1,$15,	1,$16
					
		.BYTE	2,$15,	1,$6B,	0
byte_288B7:	.BYTE	2,$18,	2,$17,	1,$13,	1,$2B,	1, $E,	1, $F,	1,$15,	1,$16
					
		.BYTE	2,$15,	1,$6B,	0
byte_288CC:	.BYTE	1,$13,	1,$14,	1, $E,	1, $F,	1,$15,	1,$16,	2,$15,	1,$6B
					
		.BYTE	0
byte_288DD:	.BYTE	1,$68,	2,$19,	2,  7,	1,$67,	2, $D,	2, $E,	1,$6C,	2,$1A
					
		.BYTE	2, $F,	2,$10,	0
byte_288F2:	.BYTE	1,$1D,	1,$1E,	1,$44,	2,$1B,	2,$1C,	1,$1B,	1,$1C,	0
					
byte_28901:	.BYTE	1,$1F,	1,$44,	2,$1B,	2,$1C,	1,$1B,	1,$1C,	0
					
byte_2890E:	.BYTE	1,$21,	1,$22,	2,$1B,	2,$1C,	1,$1B,	1,$1C,	0
					
byte_2891B:	.BYTE	2,$1D,	2,$1E,	1,$23,	1,$23,	1,$24,	2,  2,	1,$1B,	1,$1C
					
		.BYTE	0
byte_2892C:	.BYTE	2,$1D,	2,$1E,	1,$23,	1,$23,	1,$25,	2,  2,	1,$1B,	1,$1C
					
		.BYTE	0
byte_2893D:	.BYTE	1,$26,	1,$27,	1,$28,	2,  2,	1,$1B,	1,$1C,	0
					
byte_2894A:	.BYTE	1,$29,	1,$2A,	1,$28,	2,  2,	1,$1B,	1,$1C,	0
					
byte_28957:	.BYTE	1,$68,	2,$19,	2,  7,	2, $C,	2,$1F,	2,$20,	2,$21,	2,$22
					
		.BYTE	0
byte_28968:	.BYTE	2,  7,	2, $C,	2,$23,	2, $E,	2, $F,	2,$10,	0
					
byte_28975:	.BYTE	2,$24,	2,$25,	2,$26,	2,$27,	2,$28,	2,$29,	2,$2A,	0
					
byte_28984:	.BYTE	2,$24,	2,$25,	2,$26,	2,$27,	2,$28,	2,$29,	2,$2A,	0
					
byte_28993:	.BYTE	2,$2B,	2,$2C,	2,$2D,	2,$2E,	2,$2F,	2,$1B,	2,$1C,	0
					
byte_289A2:	.BYTE	2,$2B,	2,$2C,	2,$2D,	1,$37,	2,$30,	2,$1B,	2,$1C,	0
					
byte_289B1:	.BYTE	2,$24,	2,$25,	2,$2B,	2,$2C,	2,$2D,	1,$38,	1,$38,	2,$1B
					
		.BYTE	2,$1C,	0
byte_289C4:	.BYTE	1,$67,	2,$31,	2,$32,	1,$39,	0 
byte_289CD:	.BYTE	2,$33,	2,$2D,	1,$11,	1,$52,	2,  2,	1,$3A,	1,$3B,	0
					
byte_289DC:	.BYTE	2,$33,	2,$2D,	1,$14,	1,$52,	2,  2,	1,$3A,	1,$3B,	0
					
byte_289EB:	.BYTE	2,$34,	2,$26,	2,$35,	2,$36,	2,$37,	1,$54,	2,$38,	2,  2
					
		.BYTE	0
byte_289FC:	.BYTE	1,$3C,	2,$11,	1, $D,	2,$2D,	2,$27,	2,$39,	1,$40,	1,$31
					
		.BYTE	0
byte_28A0D:	.BYTE	1,$3C,	2,$11,	1, $D,	2,$2D,	2,$27,	2,$39,	1,$40,	1,$31
					
		.BYTE	0
byte_28A1E:	.BYTE	1,$3D,	1,$3E,	1,$35,	1,$3C,	2,$11,	2,$3A,	2,$3B,	2,  2
					
		.BYTE	1,$40,	1,$31,	0
byte_28A33:	.BYTE	1,$3D,	1,$3E,	1,$35,	1,$3C,	2,$11,	2,$3A,	2,$3B,	2,  2
					
		.BYTE	1,$40,	1,$31,	0
byte_28A48:	.BYTE	2,$3C,	1,$21,	2,$37,	2,$3D,	2,$3E,	1,$44,	2,  2,	1,$45
					
		.BYTE	1,  2,	0
byte_28A5B:	.BYTE	2,$3C,	1,$21,	2,$37,	1,$46,	2,$3F,	1,$44,	2,  2,	1,$45
					
		.BYTE	1,  2,	0
byte_28A6E:	.BYTE	1,$6F,	2,$25,	2,$40,	2,$26,	2,$28,	2,$41,	0
					
byte_28A7B:	.BYTE	1,$49,	1, $F,	1,$4A,	0 
byte_28A82:	.BYTE	2,$42,	2,$37,	1,$37,	1,$52,	2,$43,	2,$44,	2,$45,	0
					
byte_28A91:	.BYTE	2,$46,	2,$47,	2,$40,	2,$26,	1,$29,	0 
byte_28A9C:	.BYTE	2,  7,	1,$67,	2,$48,	1,$6E,	2,$49,	2,$4A,	2,$4B,	2,$4C
					
		.BYTE	2,$4D,	0
byte_28AAF:	.BYTE	2,$4E,	1,$27,	2,  2,	1,$50,	1,$51,	1,$52,	1,$53,	0
					
byte_28ABE:	.BYTE	2,$4F,	2,$50,	2,$51,	2,$52,	1,$56,	2,  2,	2,$53,	2,$54
					
		.BYTE	1,$55,	0
byte_28AD1:	.BYTE	1,$57,	0	
byte_28AD4:	.BYTE	1,$58,	1,$50,	1,$59,	1,$24,	1,$5A,	0 
byte_28ADF:	.BYTE	1,$5B,	1,$5C,	1,$5D,	1,$23,	1,$23,	1,$25,	0
					
byte_28AEC:	.BYTE	1,$58,	1,$50,	1,$59,	1,$5E,	1,$5A,	0 
byte_28AF7:	.BYTE	1,$32,	1,$5D,	1,$5F,	0 
byte_28AFE:	.BYTE	1,$58,	1,$50,	1,$59,	1,$60,	1,$5A,	0 
byte_28B09:	.BYTE	1,$58,	1,$50,	1,$59,	1,$61,	1,$25,	1,$5A,	0
					
byte_28B16:	.BYTE	1,$62,	1,$5D,	1,$63,	1,$51,	1,$64,	1,$65,	0
					
byte_28B23:	.BYTE	2,$55,	0	
byte_28B26:	.BYTE	2,$55,	2,$55,	1,$5D,	2,$56,	1,$5D,	0 
byte_28B31:	.BYTE	2,$57,	1,$6A,	2,  8,	2,$58,	2,$42,	2,$59,	2, $B,	2,  7
					
		.BYTE	0
byte_28B42:	.BYTE	2,$57,	1,$6A,	2,  8,	2,$5A,	1,$67,	2,  9,	2, $A,	2, $B
					
		.BYTE	2,  7,	0
byte_28B55:	.BYTE	2,$57,	2,$5B,	2,$58,	1,$6A,	2,$5C,	2, $B,	2,  7,	2,$5D
					
		.BYTE	2,$52,	1,$56,	0
byte_28B6A:	.BYTE	1,$45,	1,$67,	2,$5E,	2,$5F,	1,$16,	2,$60,	2,$61,	2,$62
					
		.BYTE	2,  7,	0
byte_28B7D:	.BYTE	2,$63,	1,$2C,	2,$24,	1,$67,	2,$64,	2,$65,	2,$55,	2,$37
					
		.BYTE	2,$55,	2,$66,	0
byte_28B92:	.BYTE	2,$67,	2,$63,	2,$5F,	1,$16,	2,$64,	2,$65,	2,$55,	2,$37
					
		.BYTE	2,$55,	2,$66,	0
byte_28BA7:	.BYTE	2,$67,	2,$63,	2,$68,	2,$69,	2,$64,	2,$65,	2,$55,	2,$37
					
		.BYTE	2,$55,	2,$66,	0
byte_28BBC:	.BYTE	2,$57,	1,$6A,	2,  8,	1,$2C,	2,$6A,	2,  0,	2,  2,	2,$52
					
		.BYTE	1,$56,	2,$4D,	0
byte_28BD1:	.BYTE	2,$6B,	2,$6C,	1,$61,	1,$72,	1,$5D,	1,$61,	0
					
byte_28BDE:	.BYTE	2,$6B,	2,$6C,	1,$61,	1,$72,	1,$5D,	1,$24,	0
					
byte_28BEB:	.BYTE	2,$6B,	2,$6C,	1,$61,	1,$72,	1,$5D,	1,$25,	0
					
byte_28BF8:	.BYTE	2,$6D,	2,$6E,	1,$59,	1,$24,	1,$5D,	1,$61,	0
					
byte_28C05:	.BYTE	2,$6D,	2,$6E,	1,$59,	1,$24,	1,$5D,	1,$24,	0
					
byte_28C12:	.BYTE	2,$1D,	2,$1E,	1,$61,	1,$72,	0 
byte_28C1B:	.BYTE	2,$6F,	2,$70,	1,$28,	1,$59,	1,$25,	0 
byte_28C26:	.BYTE	2,$71,	2,$72,	2,$21,	2,$73,	2,$64,	2,$65,	0
					
byte_28C33:	.BYTE	2,$37,	2,$55,	2,$66,	0 
byte_28C3A:	.BYTE	2,$3D,	2,$58,	2,$74,	2,$20,	2,$21,	2,$73,	2,$75,	2,$75
					
		.BYTE	0
byte_28C4B:	.BYTE	1,$61,	1,$71,	1,$71,	2,$76,	2,$77,	2,$78,	1,$37,	2,$55
					
		.BYTE	2,$55,	2,$49,	2,$79,	2,$7A,	2,$7B,	2,$7C,	2,$7D,	1,  7
		.BYTE	0
byte_28C6C:	.BYTE	2,$7E,	2,$34,	2,$7F,	2,  2,	3,  0,	3,  1,	3,  2,	2,$4E
					
		.BYTE	3,  3,	3,  4,	2,$3D,	3,  5,	3,  6,	2,$58,	2,$49,	2,$79
		.BYTE	2,$7A,	3,  7,	3,  8,	2,$7B,	2,$7C,	2,$7D,	1,  7,	2,  2
		.BYTE	2,$24,	1,$54,	3,  9,	0
byte_28CA3:	.BYTE	2,$7E,	2,$5E,	2,  2,	1,$6C,	1,$6D,	2,$37,	3, $A,	3, $B
					
		.BYTE	2,$58,	3, $C,	3,  6,	1,$6C,	1,$6D,	2,$37,	3, $D,	3, $E
		.BYTE	2,  2,	1,$6E,	3, $F,	3,$10,	2,$4E,	3,  3,	3,  4,	3,  9
		.BYTE	0
byte_28CD4:	.BYTE	1,$7D,	2,$5B,	3,$11,	2,$5E,	2,$4D,	2,$64,	2,$65,	0
					
byte_28CE3:	.BYTE	1,$6A,	2,  5,	2,$40,	2,$62,	2,$26,	1,$7D,	2,$5B,	3,$11
					
		.BYTE	2,$5E,	3,  9,	0
byte_28CF8:	.BYTE	2,$49,	2,$79,	2,$7A,	3,$12,	3,$13,	1,$7D,	3,$14,	2,$4D
					
		.BYTE	2,  0,	3,$15,	3,$16,	3,$17,	2,$1C,	3,  9,	0
byte_28D15:	.BYTE	3,$18,	2,  0,	3,$19,	3,$1A,	1,$6A,	3,$1B,	3,$1C,	2,  2
					
		.BYTE	3,$1D,	2,$52,	3,$17,	3,$1E,	3,  9,	0
byte_28D30:	.BYTE	1,$6E,	3, $F,	3,$10,	2,$4E,	3,  3,	3,  4,	3,$1F,	3,$20
					
		.BYTE	2, $C,	2,$5D,	3,$21,	3,$22,	2,  5,	3,$23,	3,$11,	2,$5E
		.BYTE	2,$27,	3,$24,	3,$25,	3,$26,	2,$56,	3,$27,	3,$28,	2,$4D
		.BYTE	3,  9,	0
byte_28D63:	.BYTE	3,$29,	3,$2A,	1,$6F,	2,  5,	3,$2B,	3,$2C,	3,  9,	0
					
byte_28D72:	.BYTE	3,$2D,	2,$37,	1,$6E,	3, $F,	3,$10,	2,$4E,	3,  3,	3,  4
					
		.BYTE	2,  2,	3,$2E,	3,$2F,	3,  5,	1,$48,	2,  5,	1,$6F,	2,$25
		.BYTE	2,$62,	2,$26,	3,$19,	3,  9,	0
byte_28D9B:	.BYTE	3,$30,	3,$1D,	2,  2,	2,$37,	3,$11,	2,$5E,	2,  2,	1,$77
					
		.BYTE	3,$31,	2,$36,	2,$58,	3,$2D,	2,$59,	3,  9,	0
byte_28DB8:	.BYTE	1,$6A,	3,$32,	2,$7E,	2,$5E,	3,$33,	3,$2B,	3,$25,	3,$1B
					
		.BYTE	3,$34,	2,$4D,	3,$35,	3,$36,	3,  9,	0
byte_28DD3:	.BYTE	3,$37,	2,  5,	3,$2B,	3,$32,	2, $C,	3,  9,	3,$38,	3,$39
					
		.BYTE	3,$3A,	3,  9,	0
byte_28DE8:	.BYTE	1,$6A,	2,  5,	3,$3B,	3,$3C,	3,  9,	0 
byte_28DF3:	.BYTE	3,$3D,	2,$59,	2,  5,	3,$2B,	3,$3E,	3,$3F,	3,$2D,	2,$6C
					
		.BYTE	1,$6F,	3,$24,	3,  9,	0
byte_28E0A:	.BYTE	3,$11,	2,$5E,	3,$40,	3,$41,	2,$4D,	3,$2D,	3,$42,	2,$6B
					
		.BYTE	3,$43,	2,  5,	3,$11,	2,$5E,	3,$44,	3,$45,	3,$2D,	1,$6F
		.BYTE	3,$46,	3,$47,	3,$48,	3,  9,	0
byte_28E33:	.BYTE	3,$23,	2,$37,	3,  9,	3,  9,	3,  9,	3,  9,	3,  9,	0
					
byte_28E42:	.BYTE	2,$55,	2,  1,	3,$49,	3,$4A,	1,$34,	2,$21,	0
					
byte_28E4F:	.BYTE	2,$55,	3,$4B,	3,$4C,	3,$4A,	2,  2,	3,$4D,	3,$4E,	0
					
byte_28E5E:	.BYTE	2,$55,	3,$4F,	2,$52,	1,$5E,	1,$24,	3,$50,	3,$51,	0
					
byte_28E6D:	.BYTE	2,$55,	2,$55,	3,$52,	3,$50,	3,$53,	0 
byte_28E78:	.BYTE	2,$55,	2,$55,	3,$54,	2,$55,	3,$55,	0 
byte_28E83:	.BYTE	1,$62,	1,$5D,	1,$63,	1,$51,	1,$64,	1,$65,	3,$50,	3,$51
					
		.BYTE	0
byte_28E94:	.BYTE	2,$55,	2,$55,	3,$56,	3,$57,	1,$23,	1,$61,	0
					
byte_28EA1:	.BYTE	2,$55,	2,$55,	3,$56,	3,$57,	1,$23,	1,$24,	0
					
byte_28EAE:	.BYTE	2,$55,	2,$55,	3,$56,	3,$57,	1,$23,	1,$25,	0
					
byte_28EBB:	.BYTE	2,$55,	2,$55,	3,$47,	3,$48,	3,$58,	3,$59,	0
					
byte_28EC8:	.BYTE	2,$55,	3,$4B,	3,$4C,	3,$4A,	2,  2,	3,$5A,	0
					
byte_28ED5:	.BYTE	2,$55,	2,$55,	3,$20,	2,$55,	3,$5B,	0 
byte_28EE0:	.BYTE	2,$55,	3,$4F,	2,$52,	2,$51,	1,$3C,	3,$5C,	0
					
byte_28EED:	.BYTE	2,$55,	2,$55,	3,$56,	2,$55,	3,$57,	0 
byte_28EF8:	.BYTE	1,$61,	1,$71,	1,$71,	2,$76,	2,$77,	2,  4,	1,$37,	1,$71
					
		.BYTE	1,$34,	2,$55,	2,$55,	2,$55,	2,$55,	2,$55,	2,$7E,	3,$5D
		.BYTE	3,$5E,	3,$5F,	2,$24,	2,$48,	3,$60,	3,$61,	3,$2A,	3,$11
		.BYTE	2,$5E,	2,$27,	3,$15,	3,$62,	1,$20,	3,  9,	3,$2A,	3,$63
		.BYTE	3,$3A,	3,$11,	2,$5E,	2,$27,	3,$2E,	2,$58,	3,$64,	2,  5
		.BYTE	2,$7E,	3,$65,	3,$11,	2,$5E,	2,$27,	3,$66,	2,$3B,	3,$67
		.BYTE	3,$68,	2,$4D,	2,  5,	2,$42,	3,$69,	3,$1E,	2,  2,	3,$6A
		.BYTE	3,$6B,	3,  9,	2,$55,	2,$55,	1,$61,	1,$71,	1,$71,	2,$76
		.BYTE	2,$77,	2,  4,	1,$37,	1,$61,	1,$23,	1,$34,	2,$55,	2,$55
		.BYTE	2,$55,	2,$55,	3,$5D,	3,$5E,	2,  5,	2,$26,	3,$6C,	3,$6D
		.BYTE	3,$6E,	3,$4B,	3,$4C,	3,$4A,	3,$6F,	2,$7E,	1,$4E,	3,$70
		.BYTE	2,$27,	3,$71,	3,$72,	2,  2,	3,$1D,	2,$52,	2,  5,	1,$67
		.BYTE	3,$2C,	2,$24,	3,$24,	2,$61,	2,$6B,	3,$73,	3,$73,	2,  5
		.BYTE	3,$11,	2,$5E,	3,$6F,	2,$7E,	3,$74,	1,$67,	3,$75,	3,$72
		.BYTE	3,$76,	2,  2,	3,$77,	2,  5,	2,$34,	2,$19,	2,$7E,	3,$78
		.BYTE	2,$4D,	1,$21,	3,$79,	3,$7A,	3,$74,	1,$67,	2,  5,	1,$67
		.BYTE	3,$7B,	2,$2C,	1,$45,	3,$7A,	3,$74,	3,$7C,	2,  2,	1,$42
		.BYTE	3,$7D,	3,$7E,	3,$7F,	2,$4D,	3,  9,	2,$55,	2,$55,	2,$55
		.BYTE $FF,$FF,$FF,$FF,$FF,$FF,	1,$61,	1,$71,	1,$71,	2,$76,	2,$77
		.BYTE	2,  4,	1,$37,	1,$61,	1,$61,	1,$34,	2,$55,	2,$55,	2,$55
		.BYTE	2,$55,	3,$5D,	3,$5E,	4,  0,	2,$24,	2,  4,	2,  3,	4,  1
		.BYTE	1,$78,	4,  2,	2,  5,	3,$2A,	3,$29,	2,$4E,	4,  3,	4,  4
		.BYTE	1,$45,	2,$7E,	4,  5,	4,  6,	2,  5,	3,$11,	4,  7,	2,$2D
		.BYTE	4,  8,	4,  9,	4, $A,	2,  5,	4,  5,	2,$7E,	4, $B,	4,  7
		.BYTE	2,$24,	2,  5,	4, $C,	4, $D,	4, $E,	4, $F,	1,$28,	2,$3B
		.BYTE	2,$4D,	4,$10,	4,$11,	2,  5,	2,$42,	2,$28,	3,$4B,	3,$4C
		.BYTE	3,$4A,	3,$5F,	2,$24,	3,$3F,	4,$12,	4,$13,	1,$6A,	4,$13
		.BYTE	4,$14,	3,  9,	2,$55,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	1,$61
		.BYTE	1,$71,	1,$71,	2,$76,	2,$77,	2,  4,	1,$37,	1,$61,	1,$24
		.BYTE	1,$34,	2,$55,	2,$55,	2,$55,	2,$55,	2,$7E,	4,$15,	4,$16
		.BYTE	3,$5E,	3,$15,	3,$25,	2,$27,	3,$2E,	4,  7,	2,$2D,	4,  8
		.BYTE	4,  9,	4, $A,	2,  5,	3,$23,	2,$7E,	1,$7D,	2,$5B,	4,$17
		.BYTE	4,$18,	2,  2,	3,$77,	4,$19,	4,$1A,	4,$1B,	4,$1C,	2,  5
		.BYTE	2,$15,	4,$1D,	4,$1E,	4,$1F,	4,$20,	2,  5,	3,$55,	2,$37
		.BYTE	2,$41,	3,$19,	2,  5,	2,$7E,	4,$21,	3,$66,	1,$6A,	3,$75
		.BYTE	4,$22,	3,  7,	3,$74,	3,$2D,	2,$28,	4,$23,	4,$24,	3,  9
		.BYTE	2,$55,	2,$55,	2,$55,	2,$55,	2,$55,	2,$55,	2,$55,$FF,$FF
		.BYTE $FF,$FF,$FF,$FF,$FF,$FF,	1,$61,	1,$71,	1,$71,	2,$76,	2,$77
		.BYTE	2,  4,	1,$37,	1,$61,	1,$25,	1,$34,	2,$55,	2,$55,	2,$55
		.BYTE	2,$55,	2,$7E,	4,$25,	2,$24,	4,$1E,	4,$1F,	4,$20,	2,  5
		.BYTE	2,$34,	2,$19,	3,$5D,	3,$5E,	3,$24,	2,$23,	4,  9,	1,$28
		.BYTE	2,$4D,	2,  5,	3,$11,	2,$5E,	2,$58,	2,$7E,	4,$25,	2,$24
		.BYTE	4,$26,	2,$4D,	4,$27,	1,$2C,	2,  5,	4,  4,	4,$28,	2,$23
		.BYTE	3,$14,	3,$51,	4,$29,	2,$7E,	1,$6A,	2,$5C,	4,$2A,	4,  7
		.BYTE	4,  8,	4,  9,	4, $A,	2,$4D,	2,  5,	3,$2C,	2, $C,	3,$5D
		.BYTE	3,$5F,	1,$68,	2,$19,	4,$13,	2,  2,	4,$2B,	4, $A,	2,  3
		.BYTE	2,$4D,	3,  9,	2,$55,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	1,$61
		.BYTE	1,$71,	1,$71,	2,$76,	2,$77,	2,  4,	1,$37,	1,$61,	1,$5E
		.BYTE	1,$34,	2,$55,	2,$55,	2,$55,	2,$55,	3,$5D,	3,$5E,	4,  0
		.BYTE	2,$24,	2,$7E,	2,  2,	4,$2C,	4,$2D,	2,$50,	4,$2E,	2,$4D
		.BYTE	2,  5,	2,$7E,	3,$55,	2,  2,	2,$37,	4,$1E,	4,$1F,	4,$2F
		.BYTE	4,$30,	2,  5,	3,$24,	3,$74,	3,$1D,	2,$52,	3,$75,	4,$31
		.BYTE	4,$32,	4,$33,	4,$34,	4, $B,	1,$6A,	2,$60,	2,  5,	2,$7E
		.BYTE	4,  3,	4,  4,	1,$7D,	2,$5B,	4,$23,	2,  2,	4,$35,	4,$36
		.BYTE	2,$60,	4,$37,	4,$38,	2,$4D,	2,  5,	2,$79,	3,$66,	2,$26
		.BYTE	4,$39,	4,$3A,	4,$23,	3,$40,	3,$3C,	2,$4D,	2,  5,	2,$42
		.BYTE	4, $F,	4,$3B,	4,$3C,	2,$6B,	2,$4D,	2,  5,	3,$74,	2,$24
		.BYTE	3,$6E,	3,$1B,	3,$34,	2,$4D,	1,$68,	1,$6A,	4,$3D,	2,$4D
		.BYTE	3,  9,	2,$55,	2,$55,	2,$55,	2,$55,	2,$55,	2,$55,$FF,$FF
		.BYTE $FF,$FF,	1,$61,	1,$71,	1,$71,	2,$76,	2,$77,	2,  4,	1,$37
		.BYTE	1,$61,	2,  4,	1,$34,	2,$55,	2,$55,	2,$55,	2,$55,	4,$3E
		.BYTE	4,  4,	4,$3F,	4,$40,	1,$6A,	4,$2B,	4, $A,	2,  5,	3,$23
		.BYTE	3,$5D,	3,$5E,	2,$4F,	4,$41,	2,  5,	2,$7E,	4,$42,	4,  4
		.BYTE	2,$63,	3,$24,	3,$2C,	3,$2C,	4,$43,	4,$44,	2,  5,	3,$23
		.BYTE	2,$37,	3,$3C,	3,$3F,	4,$45,	2,$10,	2,  2,	4,$32,	4,$46
		.BYTE	4,$47,	4,$48,	4,$49,	4,$4A,	2,$4D,	2,$7E,	2,  5,	3,$11
		.BYTE	2,$5E,	4, $D,	4,$4B,	4,$4C,	1,$6F,	1,$7D,	1,$6E,	2,$4D
		.BYTE	1,$6A,	3,$6F,	1,$6C,	2,$1A,	3,$19,	2,$3B,	3,$24,	2,  2
		.BYTE	3,$20,	3,$5B,	2,  5,	4,$19,	3,$62,	4,$4D,	2,  2,	4,$4E
		.BYTE	2,$65,	4,$4F,	2,$55,	2,$55,	2,$55,$FF,$FF,$FF,$FF,$FF,$FF
		.BYTE	1,$61,	1,$71,	1,$71,	2,$76,	2,$77,	2,  4,	1,$37,	1,$61
		.BYTE	1,$5F,	1,$34,	2,$55,	2,$55,	2,$55,	2,$55,	4, $C,	4, $D
		.BYTE	4,$16,	3,$5E,	2,$26,	3,$6C,	3,$4B,	3,$4C,	3,$4A,	3,$65
		.BYTE	3,$40,	2,$3B,	3,$24,	2,  5,	3,$23,	2,$37,	3,$1A,	3,$17
		.BYTE	3,$1E,	2,$4D,	2,  5,	2,$7E,	3,$48,	4,$3F,	2,$36,	4,$1E
		.BYTE	4,$1F,	4,$20,	2,  5,	4,$42,	2,$7E,	4,$50,	4,$20,	2,  2
		.BYTE	4,$32,	4,$46,	4,$51,	4,  4,	4,$15,	1,  2,	4,$52,	2,$24
		.BYTE	4,$53,	4, $F,	2,$27,	4,$54,	3,$77,	2,  5,	2,$7E,	3,$3F
		.BYTE	4,$12,	2,$37,	4,$55,	4,$56,	2,$4D,	2,$65,	2,$55,	2,$55
		.BYTE $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,	1,$61,	1,$71,	1,$71,	2,$76
		.BYTE	2,$77,	2,  4,	1,$37,	1,$61,	1,$71,	1,$34,	2,$55,	2,$55
		.BYTE	2,$55,	2,$55,	1,$7D,	4,$57,	4,$58,	4,$20,	4,$58,	4,$59
		.BYTE	4,$58,	4,$24,	4,$23,	2,  2,	4,$31,	2,$52,	2,  5,	4,$20
		.BYTE	2,  5,	4,$1E,	4,$1F,	4,$20,	2,  5,	3,$2C,	4,$5A,	3,$2A
		.BYTE	3,$29,	2,$4E,	2,  5,	4,$5B,	4,$5C,	2,  5,	4,$24,	2,$4D
		.BYTE	3,$11,	3,  9,	4,$20,	2,  5,	3,$65,	4,$24,	4,$22,	3,  7
		.BYTE	3,  9,	0
byte_2945B:	.BYTE	2,$55,	2,$55,	2,$42,	2,$37,	2,$27,	4,$5D,	3,$5A,	2,  5
					
		.BYTE	4,$19,	1,$21,	4,$5E,	3,$7D,	2,$68,	3, $D,	2,$4D,	2,  5
		.BYTE	4,$5F,	4, $F,	2,  2,	4,$5E,	3,$7D,	2,$37,	2,$42,	4,$60
		.BYTE	4,$61,	2,  2,	2,$75,	2,$75,	2,$55,	2,$55,	2,$55,	2,$55
		.BYTE	2,$55,	2,$55,	2,$55,	2,$55,	2,$55,	2,$55,	3,$36,	3,$45
		.BYTE	2,$7E,	4,$62,	4,$63,	3,$1A,	4,$64,	4,$65,	2,$4D,	2,  5
		.BYTE	2,$7E,	2,$5B,	2,$58,	4,$66,	2,  8,	3,$6F,	4,$67,	2,$12
		.BYTE	1,$7D,	4,$68,	2,  2,	4,$32,	4,$69,	4,$6A,	4,$6B,	2,  5
		.BYTE	3,$12,	3,$6F,	2,$7E,	4,$2F,	3,$32,	2,  2,	2,$37,	2,$7E
		.BYTE	4,$6C,	2,$57,	2,  2,	2,$21,	2,$22,	4,$6D,	2, $C,	4,$6D
		.BYTE	4,$6E,	4,$6F,	2,$4D,	2,  5,	2,$34,	2,$19,	2,$7E,	4,$70
		.BYTE	4,$71,	4,$17,	4,$18,	4,$72,	4,$73,	3,$14,	3,$20,	2,  5
		.BYTE	4,$74,	4,$75,	4,$76,	1,$6B,	4,$77,	4,$78,	2,$60,	3,  9
		.BYTE	2,$27,	3,$6C,	3,  3,	4,$32,	4,$28,	2,$7E,	3,$25,	3,$46
		.BYTE	4,$79,	4,$19,	3,$19,	4,$69,	2,$4D,	2,  5,	2,$7E,	4,$44
		.BYTE	4,$7A,	2,$57,	2,  8,	4,$40,	4,$7B,	2,$7E,	2,  2,	4,$7C
		.BYTE	4,$7D,	3,  9,	4,$2A,	4,$5A,	2,$4D,	2,  5,	2,$7E,	2,  2
		.BYTE	4,$7E,	3,$19,	3,  9,	2,$55,	2,$55,	2,$55,	2,$55,	2,$55
		.BYTE	2,$55,	2,$55,	2,$55,	2,$55,	2,$55,	2,$55,	4,$7F,	5,  0
		.BYTE	1,$5D,	5,  1,	5,  2,	5,  3,	0
byte_29594:	.BYTE	2,$55,	2,$55,	1,$5E,	3,$5E,	4,$62,	4,$63,	3,$32,	3,$24
					
		.BYTE	2,$4D,	2,  5,	3,$4F,	2,$52,	1,$5E,	1,$24,	2,$3D,	2,$19
		.BYTE	5,  4,	3,$19,	2,  2,	5,  5,	5,  6,	3,$14,	5,  7,	2,  5
		.BYTE	4,$17,	4,$15,	3,$1A,	1,$65,	4,$67,	2,$12,	4,$64,	4,$65
		.BYTE	4,$28,	2,  5,	1,$67,	3,$25,	5,  8,	4,$3D,	4,$1E,	4,$1F
		.BYTE	2,$4E,	3,$3B,	2,  5,	2,$7E,	2,$5E,	5,  9,	5, $A,	4,$62
		.BYTE	4,$63,	3,$33,	4,$2F,	3,$2C,	2,$3B,	1,$67,	3,$35,	2, $C
		.BYTE	2,  2,	4,$60,	1,$7A,	3,  9,	2,$55,	2,$55,	3,$4F,	2,$52
		.BYTE	1,$5E,	1,$24,	2,$26,	2,$16,	3,$71,	2,$3E,	5, $B,	1,$68
		.BYTE	2,$19,	4,$3D,	3,$3F,	5, $C,	3,$70,	5, $D,	2,$55,	2,$55
		.BYTE	2,$55,	2,$55,	2,$55,	2,$55,	2,$55,	2,$55,	5, $E,	2,$27
		.BYTE	3,$71,	3,$25,	2,$37,	5, $F,	3,$32,	1,$67,	5,$10,	5,$11
		.BYTE	4, $E,	4, $F,	1,$28,	2,  2,	5,$12,	3,  9,	4,$17,	4,$15
		.BYTE	1,$7D,	3,$14,	4,$10,	4,$11,	4,$28,	2,  5,	2,$26,	3,$6C
		.BYTE	5,  1,	2,$51,	3,$6A,	1,$7D,	5,$13,	2,$4D,	2,  5,	1,$67
		.BYTE	1,$47,	5,$14,	2,$4D,	2,$1F,	1,$57,	5,$15,	2,  5,	2,$5B
		.BYTE	2,$58,	4, $E,	4, $F,	1,$28,	1,$6F,	3,$3F,	5,$16,	2,$36
		.BYTE	2,$37,	1,$57,	2,  5,	5,$17,	5,$18,	5,$19,	2,  5,	5,$1A
		.BYTE	2,$28,	2,$50,	2,$51,	1, $E,	1,$4A,	1,$68,	2,  8,	2,$58
		.BYTE	1,$57,	2,$11,	3,$15,	2,$4D,	2,$50,	2,$51,	5,$1B,	5,$1C
		.BYTE	3,  9,	2, $B,	4,$3D,	3,$4F,	2,$52,	5,$1D,	3,$2B,	2,$4D
		.BYTE	3,$14,	5,  7,	5,  5,	5,  6,	3,  9,	2,$55,	2,$55,	2,$55
		.BYTE	2,$55,	2,$55,	2,$55,	2,$55,	2,$55,	2,$55,	1,$49,	2,$5D
		.BYTE	2,$19,	5,$1E,	2,  5,	3,$4F,	2,$52,	1,$5E,	1,$24,	2,$40
		.BYTE	5, $F,	3,$32,	2,  1,	3,$34,	3,$41,	5,$11,	2,$4D,	2,$1D
		.BYTE	2,$1E,	2,  2,	3,$5E,	2,$6D,	5,$1F,	2,  5,	1,$67,	2,$58
		.BYTE	3,$2D,	1,$6F,	4, $B,	4,$3D,	3,$3F,	2,$4D,	3,$18,	2,  0
		.BYTE	5, $C,	3,$70,	2,  5,	4,$66,	2,$26,	4, $C,	3,$3F,	5,$20
		.BYTE	3,$27,	2,  5,	3,$4F,	2,$52,	1,$5E,	1,$24,	3,$25,	3,$46
		.BYTE	2,  7,	4,$17,	4,$18,	4,$3D,	5,$21,	4,$3A,	3,$24,	5,$22
		.BYTE	5,$23,	5,$24,	2,$52,	3,  9,	2,$5A,	1,$35,	5,$25,	5,$25
		.BYTE	5,$26,	4,$26,	2,  5,	4,  4,	4,$28,	2,$5A,	5,$24,	2,$52
		.BYTE	2,  2,	1,$2D,	5,$27,	1,$69,	3,$48,	5,$28,	5,$29,	3,  9
		.BYTE	1,$67,	2,$40,	2,$26,	2,$27,	3,$66,	4,$3D,	5,$2A,	2,  8
		.BYTE	2,  5,	5,$2B,	4,$3D,	2,  7,	4,$17,	4,$18,	4,$3D,	5,$21
		.BYTE	4,$3A,	2,$5A,	4,$45,	5,$2C,	2,$24,	2,$19,	4,  8,	5,$2D
		.BYTE	5,$24,	2,$52,	3,$40,	4,$79,	3,  9,	3,$18,	2,  0,	3,$4B
		.BYTE	3,$4C,	3,$4A,	4,$62,	4,$63,	1,$6B,	3,$45,	1,$67,	4,$3D
		.BYTE	5,$2E,	5,$2F,	1,$56,	2,$4D,	3,  9,	0
byte_297FF:	.BYTE	2,$55,	2,$55,	2,$55,	2,$55,	2,$49,	2,$79,	4,$32,	2,$31
					
		.BYTE	2,$55,	2,$55,	2,$55,	2,$55,	1,$61,	1,$71,	1,$71,	2,$76
		.BYTE	2,$77,	2,  4,	1,$37,	1,$24,	1,$60,	1,$34,	2,$55,	2,$55
		.BYTE $FF,$FF,	2,$55,	2,$55,	2,$77,	5,$30,	5,$31,	5,$32,	5,$33
		.BYTE	5,$34,	2,$52,	5,$35,	3,$17,	3,  9,	2,  4,	1,$37,	1,$24
		.BYTE	1,$23,	1,$34,	3,$5F,	2,$24,	1,$61,	1,$23,	2,  3,	2,  5
		.BYTE	2,$26,	3,$6C,	3,$32,	5,$36,	3,$19,	2,$58,	2,$49,	2,$79
		.BYTE	2,$7A,	2,$7B,	2,$7C,	4,$7F,	3,  1,	5,$37,	5,$38,	5,$39
		.BYTE	3,$13,	1,$7D,	2,$5B,	2,$4D,	2,$27,	5,$3A,	2,$77,	5,$30
		.BYTE	5,$31,	5,$32,	2,  2,	4,$78,	4,$40,	3,  9,	2,$49,	2,$79
		.BYTE	2,$7A,	4,$47,	2,$3E,	3,$44,	3,$45,	3,$16,	1,  2,	5,$1C
		.BYTE	3,$69,	2,$37,	2,$27,	1,$21,	2,$6B,	5,$3B,	5,$3C,	2,  5
		.BYTE	3,$36,	3,$45,	4,$78,	4,$40,	3,$1A,	3,$7C,	5,$3D,	2,  2
		.BYTE	1,$42,	3,$7D,	3,$7E,	3,$7F,	2,  5,	4,$66,	2,$26,	5,$3B
		.BYTE	5,$3C,	2,$26,	2,$42,	3,$71,	1,$2A,	5,$3E,	3,  9,	5,$3F
		.BYTE	5,$40,	5,$41,	4,  7,	2,$2D,	5,$42,	5,$43,	5,$44,	2,  5
		.BYTE	2,$34,	2,$19,	5,$1C,	3,$69,	2,$37,	2,$58,	5,$43,	2,$7C
		.BYTE	5,$33,	3,$3F,	5,$45,	5,$23,	2,  5,	4,  4,	4,$28,	4,$78
		.BYTE	4,$40,	5,$46,	2,$2D,	5,$38,	5,$47,	5,$48,	5,$49,	2,  5
		.BYTE	4,$36,	5,$4A,	4,$47,	2,$3E,	2,$3D,	2,$58,	3,$21,	3,$22
		.BYTE	5,$3F,	5,$40,	5,$41,	4,$3F,	5,$4B,	3,  9,	2,$55,	2,$55
		.BYTE	2,$55,	2,$55,	2,$55,	2,$55,	2,$49,	2,$79,	5,$4C,	3,$50
		.BYTE	2,$55,	2,$55,	2,$55,	2,$55,	2,$55,$FF,$FF,	1,$61,	1,$71
		.BYTE	1,$71,	2,$76,	2,$77,	1,$5F,	1,$37,	1,$61,	1,$5F,	1,$34
		.BYTE	2,$55,	2,$55,	2,$55,	2,$55,	3,  0,	3,$29,	3,$61,	5,$43
		.BYTE	2,$7C,	2,$26,	3,$1D,	2,$52,	2,$65,	3,$18,	2,  0,	3,$19
		.BYTE	2,$36,	5,$20,	5,$4D,	3,$11,	2,$5E,	3,$12,	3,$13,	2,$58
		.BYTE	3,  0,	3,$29,	3,$61,	5,$43,	2,$7C,	3,$2C,	3,$3F,	2,$4D
		.BYTE	3,$1D,	2,$52,	2,  5,	2,$42,	2,$28,	3,$1D,	2,$52,	5,$17
		.BYTE	4, $D,	1,$44,	5,$4E,	5,$4F,	5,$50,	2,  5,	2,$15,	4,$1D
		.BYTE	5,$51,	5,$52,	1,$6B,	5,$53,	4,$72,	2,$42,	4, $C,	3,$15
		.BYTE	2, $C,	2,$60,	4,$37,	3,$25,	2,$37,	2,$27,	5,$53,	5,$54
		.BYTE	4,$23,	2,  5,	3,$23,	1,$67,	2,$5E,	2,$79,	3,$66,	4,$75
		.BYTE	5,$54,	4,$23,	2,$63,	3,$16,	5,$35,	2,  5,	5,$55,	5,$1E
		.BYTE	2,  5,	5,$17,	4, $D,	4,$66,	2,$63,	1,$6A,	3,$32,	3,$7D
		.BYTE	5,$56,	5,$57,	1,$67,	2,$5E,	2,  5,	1,$67,	2,$5E,	4, $B
		.BYTE	1,$6A,	3,$46,	5,$58,	5,$34,	5,$22,	5,$23,	3,$19,	5,$59
		.BYTE	2,  5,	2,$34,	2,$19,	4,$44,	4,$7A,	5,$5A,	5,$5B,	5,$5C
		.BYTE	5,$41,	3,$12,	3,$13,	2,$40,	2,$37,	1,$6A,	2,$63,	3,$24
		.BYTE	3,  0,	3,$29,	3,$61,	5,$43,	2,$7C,	3,  9,	1,$6A,	3,$32
		.BYTE	2,  5,	5,$4E,	5,$5D,	2,$57,	5,$5E,	1,$7A,	5,$5F,	5,$60
		.BYTE	2,$6B,	2,  5,	4, $B,	1,$68,	2,$19,	3,$24,	5,$61,	5,$62
		.BYTE	5,$63,	3,  9,	2,$55,	2,$55,	2,$55,	2,$55,	2,$49,	2,$79
		.BYTE	5,$4C,	5,$64,	2,$55,	2,$55,	2,$55,	2,$55,$FF,$FF,	1,$61
		.BYTE	1,$71,	1,$71,	2,$76,	2,$77,	1,$60,	1,$37,	1,$71,	1,$34
		.BYTE	2,$55,	2,$55,	2,$55,	2,$55,	2,$55,	3,  0,	3,$29,	3,$61
		.BYTE	5,$43,	2,$7C,	2,$26,	3,$1D,	2,$52,	2,  5,	4,$47,	2,$3E
		.BYTE	4,$62,	4,$63,	4,$5D,	5,$65,	2,$4D,	3,$34,	5,$36,	3,  9
		.BYTE	3,$36,	3,$45,	5,$43,	2,$7C,	2,$25,	5,$66,	4,$1E,	4,$1F
		.BYTE	2,$6B,	2,  5,	2,$15,	4,$1D,	3,$3F,	5,$16,	2,$36,	2,$37
		.BYTE	2,$7D,	1,  7,	2,  5,	4,$36,	5,$4A,	5,$67,	4,  4,	1,$6A
		.BYTE	5,$68,	2,$26,	2, $F,	5,$69,	2,  2,	5,$6A,	5,$6B,	5,$6C
		.BYTE	5,$6D,	5,$6E,	5,$6F,	1,$7D,	3,$14,	3,$20,	2,$1C,	2,  5
		.BYTE	4,$47,	2,$3E,	4,$62,	4,$63,	4,$5D,	5,$65,	2,$4D,	5, $F
		.BYTE	5,$70,	5,$43,	2,$7C,	2,  2,	2,$34,	2,$26,	3,$34,	5,$36
		.BYTE	3,  9,	5,$71,	2,$5D,	5,$72,	4,$32,	2,  5,	4,$47,	2,$3E
		.BYTE	2,$3D,	5,$73,	3,$31,	5,$38,	2,$4E,	3,$71,	4,$5E,	3,  4
		.BYTE	1,$73,	1,$65,	5,$74,	5,$75,	1,$73,	2,$4B,	3,$58,	5,$76
		.BYTE	5,$77,	2,$58,	5,$43,	2,$7C,	3, $D,	3, $E,	2,  2,	3,$19
		.BYTE	2,  5,	3,$23,	2,$37,	5,$76,	5,$77,	3,  6,	5,$34,	2,$79
		.BYTE	3,$66,	3,$46,	5,$78,	4,$2F,	5,$79,	5,$79,	3,  9,	0
byte_29BCE:	.BYTE	5,$29,	3,$5A,	3,$19,	5, $D,	2,$55,	2,$55,	2,$55,	2,$55
					
		.BYTE	2,$55,	2,$55,	2,$55,	2,$55,	2,$55,	2,$55,	4,  8,	4,$48
		.BYTE	4,$5E,	4,$45,	5,$7A,	5,$7B,	3,$19,	2,$55,	2,$55,	2,$55
		.BYTE $FF,$FF,	1,$7D,	3,$5A,	3,$19,	5, $D,	2,$55,	2,$55,	2,$55
		.BYTE	2,$55,	2,$55,	2,$55,	2,$55,	2,$55,	2,$55,	2,$55,	2,$49
		.BYTE	2,$79,	2,$7A,	5,$25,	1,$17,	5,$7C,	4,$2F,	3,$4B,	3,$4C
		.BYTE	5,$7D,	2,$55,	2,$55,	2,$42,	4,$5D,	3,$5A,	3,$45,	1,$48
		.BYTE	3,$56,	5,$7E,	5,$7F,	2,  5,	6,  0,	5,$5C,	4,$28,	5,$1C
		.BYTE	3,$7B,	6,  1,	6,  2,	6,  3,	3,  9,	2,$55,	2,$55,	2,$55
		.BYTE	2,$55,	2,$55,	2,$55,	4,$17,	4,$15,	2,$3B,	2,$5B,	1,$65
		.BYTE	4,$67,	2,$12,	5,$1E,	3,$40,	2,  2,	4,$10,	4,$11,	4,$28
		.BYTE	2,  5,	2,$7E,	2,$5E,	3,$41,	3,  6,	2,$4D,	6,  4,	4,$12
		.BYTE	2,  2,	3,$21,	3,$22,	2,  5,	1,$7D,	2,$5B,	4,$10,	4,$11
		.BYTE	6,  5,	1,$6B,	2,  2,	6,  6,	3, $D,	4,$75,	6,  7,	6,  8
		.BYTE	2,  2,	2,$63,	3,$6D,	2,  2,	2,  0,	2,  5,	6,  9,	6, $A
		.BYTE	2,  5,	4,$3E,	4,  4,	4,$36,	5,$4A,	4,$3D,	3,$3F,	2,  2
		.BYTE	6, $B,	3,$70,	2,$40,	1,$6A,	5,$60,	1,$69,	6, $C,	2,  5
		.BYTE	3,$23,	5, $A,	4,$38,	4,$62,	4,$63,	2,$26,	1,$5F,	3,$1C
		.BYTE	3,$4B,	3,$4C,	3,$19,	3,$4A,	3,$1E,	5,$6D,	4,$1E,	3,$20
		.BYTE	2,  5,	4,$1D,	2,$34,	2,$26,	2,  2,	6, $D,	2,$20,	5,$41
		.BYTE	2,$36,	3,$1A,	1,$65,	4,$67,	2,$12,	4,$64,	4,$65,	2,$4D
		.BYTE	3,  9,	2,$5D,	5,$1E,	2,  5,	4,$3E,	4,  4,	2,$7E,	2,$5E
		.BYTE	2,  2,	3,$47,	3,$48,	3,$58,	3,$59,	2,$40,	2,$58,	6, $E
		.BYTE	4,$68,	2,  5,	3,$23,	2,$74,	3,$47,	4,$5E,	4,$45,	2,  2
		.BYTE	3,$19,	6, $F,	4,$39,	2,$47,	2,$36,	5,$3F,	5,$40,	2,$4D
		.BYTE	3,  9,	2,$55,	2,$55,	2,$55,	2,$55,	2,$55,	2,$55,	4,$17
		.BYTE	4,$15,	2,$3B,	2,$5B,	4,$10,	4,$11,	1,$35,	4,$28,	2,  5
		.BYTE	2,$7E,	2,$5E,	2,  2,	6,$10,	3,$56,	4,$35,	5,$17,	5,$1E
		.BYTE	6,$11,	2,$4D,	3,  9,	3,$18,	2,  0,	2,  7,	2, $C,	3,$4B
		.BYTE	3,$4C,	2,  7,	2,  2,	5,$34,	2,$52,	2,$36,	3,$40,	2,$3B
		.BYTE	2,$4D,	2,$6F,	2,$70,	1,$28,	2,  5,	5,$7D,	2,$25,	3,$2B
		.BYTE	2,$63,	3, $D,	3,$24,	1,$26,	1,$27,	2,$4D,	3,  9,	2,$7E
		.BYTE	2,$5E,	6,$12,	3,$5A,	2,$26,	3,$18,	2,  0,	3,$4B,	3,$4C
		.BYTE	3,$19,	3,$4A,	2,$36,	3,$1A,	3,$11,	2,$5E,	3,$17,	5,$40
		.BYTE	2,$4D,	2,  5,	4,$78,	4,$40,	3,$1A,	3,$7D,	4,$78,	3,  9
		.BYTE	2,$55,	2,$55,	2,$55,	2,$55,	2,$55,	2,$55,	2,$55,	2,$55
		.BYTE	2,$55,	2,$55,	2,$55,	1,$6A,	3,$32,	2,  5,	5,$1B,	3,$32
		.BYTE	2, $C,	4, $D,	2,  5,	2,$42,	4, $B,	6,$13,	1,$4F,	2,$7E
		.BYTE	2,$5E,	3,$4B,	3,$4C,	2,$3B,	2,  2,	3,$14,	2,$52,	2,  2
		.BYTE	6,$14,	2,$26,	3,$33,	6,$15,	2,  2,	5,$22,	5,$23,	5,$32
		.BYTE	2,  5,	3,$23,	2,$37,	2,  5,	5,$2C,	5,$6D,	1,$67,	2,$5E
		.BYTE	2,  2,	5,$6A,	5,$6B,	3,$33,	1,$68,	2,  8,	3,$46,	3,$1A
		.BYTE	4,$4B,	6,$16,	4,$3D,	3,$1B,	2,  5,	2,$42,	2,$37,	4,$1E
		.BYTE	4,$1F,	6,$17,	5,$63,	2,  2,	3,  9,	4,$36,	5,$4A,	2,  5
		.BYTE	2,$7E,	2,$5E,	2,$27,	3,$66,	2,$63,	6,$18,	4,$33,	6,$19
		.BYTE	1,$2A,	4,$6C,	5,$1E,	6,$1A,	6,$1B,	2,$72,	4,$10,	4,$34
		.BYTE	2,  2,	3,$55,	6,$12,	2,  5,	4,$44,	4,$7A,	6,$1C,	6,$1D
		.BYTE	2,  8,	6,$1E,	3,$2B,	4,$3D,	3,$3F,	6,$1F,	4,$21,	3,  9
		.BYTE	2,$7E,	2,$5E,	2,$40,	3,$33,	6,$20,	4,$33,	6,$21,	6,$22
		.BYTE	2,  2,	2,$4E,	3,$71,	4,$5E,	3,  4,	1,$73,	6,$23,	1,$65
		.BYTE	6,$23,	5,$74,	6,$23,	5,$75,	6,$23,	1,$73,	6,$23,	3,$46
		.BYTE	1,$47,	5,$57,	2,$7E,	2,$5E,	2,  2,	6,  8,	6,$24,	2,  5
		.BYTE	6,$25,	3,$74,	2,$7E,	2,$27,	3,$6C,	4,$6C,	6,$26,	3,$11
		.BYTE	2,$5E,	2,  2,	3,  6,	5,$34,	6,  8,	6,$24,	3,  9,	0
byte_29F2D:	.BYTE	2,$55,	2,$55,	3,$25,	5,$4E,	2,$7E,	2,$58,	2,$24,	5,$62
					
		.BYTE	2,  2,	3,$50,	3,$51,	2,$11,	2,$34,	6,$27,	6,$28,	2,  2
		.BYTE	2,$27,	4,$60,	2,  5,	2,$7E,	4,$6C,	3,$1A,	1,$65,	4,$67
		.BYTE	2,$12,	4,$64,	4,$65,	2,  2,	3,$4F,	2,$52,	1,$5E,	1,$24
		.BYTE	4,$62,	4,$63,	2,$26,	2,$4D,	5,$10,	5,$11,	2,  2,	2,$4D
		.BYTE	6,$1F,	3,  9,	2,$7E,	2,$5E,	1,$7D,	2,$5B,	1,$58,	1,$50
		.BYTE	1,$59,	1,$61,	1,$5F,	1,$5A,	1, $E,	1,$4A,	1,$68,	2,$19
		.BYTE	5,$6A,	6,$29,	2,$42,	3,$71,	3,$4F,	2,$52,	3,  9,	2,$55
		.BYTE	2,$55,	2,$55,	2,$55,	2,$55,	2,$55,	2,$55,	2,$55,	2,$55
		.BYTE	2,$55,	2,$55,	2,$7E,	2,$5E,	1,$45,	2,$42,	3,$71,	1, $E
		.BYTE	1,$4A,	3,$20,	3,$1C,	3,$45,	6,$2A,	1,$62,	1,$5D,	1,$63
		.BYTE	1,$51,	1,$64,	1,$65,	6,$2B,	3,  9,	5,$12,	5,$17,	2,$7E
		.BYTE	2,  2,	6,  8,	6,$2C,	2,  5,	4,$66,	2,$63,	1,$45,	6,$2A
		.BYTE	1,$62,	1,$5D,	1,$63,	1,$51,	1,$64,	1,$65,	6,$2B,	6,$2D
		.BYTE	2,$58,	3,$4F,	2,$52,	1,$5E,	1,$24,	2,  2,	5,$12,	2,$24
		.BYTE	2,  5,	2,  4,	6,$2E,	4,$28,	1,$67,	3,$25,	3,$46,	3,$1E
		.BYTE	5,$69,	3,  9,	0
byte_2A032:	.BYTE	2,$55,	2,$55,	2,$7E,	1,$7D,	6,$2F,	2,$5A,	6,$30,	6,$31
					
		.BYTE	2,$74,	4,  9,	2,$57,	2,$48,	2,$57,	2,  2,	6,$32,	1,$7A
		.BYTE	2,  5,	2,$57,	6,$33,	2,$27,	2,  2,	6,$32,	1,$7A,	3,  9
		.BYTE	1,$10,	1,$3D,	1,$3E,	6,$34,	1,$24,	1,$24,	1,$31,	1,$61
		.BYTE	1,$5F,	6,$35,	1,$12,	0
byte_2A079:	.BYTE	2,$55,	2,$55,	2,$7E,	3,$46,	2,$74,	6,$36,	2,$57,	2,  2
					
		.BYTE	4,$28,	2,$31,	2,  5,	3,$6F,	3,$11,	2,$5E,	6,$37,	6,$38
		.BYTE	5,$5F,	4,$31,	2,  5,	2,$57,	2,$34,	2,$26,	2,  2,	6,$39
		.BYTE	3,$19,	3,$12,	6,$3A,	2,$36,	3,$46,	6,$3B,	3,$3F,	3, $D
		.BYTE	6,$3C,	2,  2,	6,$3D,	5,$5D,	1,$10,	1,$3D,	1,$3E,	6,$34
		.BYTE	1,$24,	1,$24,	1,$31,	1,$61,	1,$60,	6,$35,	1,$12,	0
byte_2A0D8:	.BYTE	2,$55,	2,$55,	3,$36,	3,$45,	2,$57,	6,$3E,	4,$15,	2,$4D
					
		.BYTE	2,$7E,	2,  5,	2,$34,	2,$19,	2,$57,	2,$5A,	6,$30,	6,$31
		.BYTE	3,$14,	3,$79,	2,$58,	3,$2B,	1,$4B,	1,$35,	2,$11,	3,  9
		.BYTE	1,$10,	1,$3D,	1,$3E,	6,$34,	1,$24,	1,$24,	1,$31,	1,$61
		.BYTE	2,$76,	6,$35,	1,$12,	0
byte_2A11F:	.BYTE	2,$55,	2,$55,	2,$55,	6,$3F,	4, $E,	4, $F,	5, $E,	2,$27
					
		.BYTE	6,$40,	6,$3F,	2,$55,	2,$55,	2,$55,	2,$55,	2,$55,	2,$55
		.BYTE	3,$2E,	3,$2F,	1,$48,	6,$41,	6,$42,	2,$55,	2,$55,	2,$55
		.BYTE $FF,$FF,	4,$66,	2,$26,	3,$6D,	6,$40,	6,$43,	3,$4A,	2,$48
		.BYTE	6,$21,	6,$22,	2,  6,	3,$4A,	6,$44,	2,  8,	2, $B,	2,  7
		.BYTE	3,  9,	3,$23,	5,$25,	1,$17,	4,$34,	6,$45,	1,$49,	5,$1E
		.BYTE	5, $F,	5,$70,	3,$2E,	3,$2F,	1,$48,	2,  2,	5, $F,	3,$34
		.BYTE	3,  9,	4,$66,	2,$26,	2,$58,	3,$6D,	3,$6E,	6,$43,	3,$4A
		.BYTE	2,  2,	3,$18,	1,$68,	4, $F,	6,$44,	2,  8,	4,$19,	2,$4F
		.BYTE	3,  9,	2,$66,	6,$46,	6,$47,	3,$17,	6,$48,	6,$49,	3,  9
		.BYTE	2,$55,	2,$55,	2,$55,	2,$55,	2,$55,$FF,$FF,$FF,$FF,	2,$55
		.BYTE	2,$55,	2,$55,	2,$55,	2,$55,	3,$2F,	6,$4A,	1,$48,	2,$55
		.BYTE	2,$55,	2,$55,	2,$55,$FF,$FF,	5,$25,	1,$17,	4,$34,	6,$45
		.BYTE	4, $F,	3,$2F,	6,$4A,	1,$48,	3,$46,	6,$4B,	5,$2D,	2,$55
		.BYTE $FF,$FF,$FF,$FF,	2,$55,	2,$55,	2,$55,	6,$3F,	4, $E,	4, $F
		.BYTE	5, $E,	6,$4C,	6,$40,	6,$3F,	2,$55,	2,$55,	2,$55,	2,$55
		.BYTE	2,$55,	2,$55,	6,$4D,	2,$61,	4,$35,	5,$17,	1,$28,	2,$55
		.BYTE	2,$55,	2,$55,	6,$4D,	2,$61,	4,$35,	5,$17,	1,$28,	1,$28
		.BYTE	2,$4E,	6,$4E,	3,$4B,	3,$4C,	1,$15,	2,  2,	2,  6,	2,  7
		.BYTE	3,$4B,	3,$4C,	1,$28,	2,  5,	6,$4F,	3,$39,	1,$5D,	3,  0
		.BYTE	3,  1,	5,$7E,	2,$37,	6,$4D,	2,$61,	4,$35,	5,$17,	1,$28
		.BYTE	2,  2,	2,  1,	3,$49,	3,$4A,	3,  9,	2,$55,	2,$55,	2,$55
		.BYTE	2,$55,	6,$3F,	4, $E,	4, $F,	5, $E,	2,$18,	6,$40,	6,$3F
		.BYTE	2,$55,	2,$55,	2,$55,	2,$55,	2,$55,	2,$55,	2,$55,	6,$50
		.BYTE	2,$55,	6,$51,	2,$55,	2,$55,	2,$55,	2,$55,	6,$50,	6,$51
		.BYTE	5,$6C,	2,$74,	3,$47,	4,$5E,	4,$45,	5,$7A,	5,$7B,	2,  1
		.BYTE	3,$49,	2,  5,	5,$4E,	5,$5D,	2,$58,	1,$6F,	2,$25,	2, $B
		.BYTE	2,  7,	4,$67,	2,$12,	3,$41,	3,  6,	3,$4B,	3,$4C,	2,  5
		.BYTE	6,$46,	6,$52,	2,$26,	3,$6D,	3,$6E,	6,$43,	3,$4A,	2,$58
		.BYTE	6,$53,	3,  9,	2,$55,	2,$55,	2,$55,	2,$55,	2,$18,	6,$40
		.BYTE	4,  8,	4,  9,	4,$45,	2,$55,	2,$55,	2,$55,	4,$66,	2,$26
		.BYTE	4,$3D,	3,$3F,	3,$48,	4,$5E,	2,  2,	2,$18,	3,$6C,	3,$56
		.BYTE	3,$57,	6,$44,	2,  8,	1,$47,	4,$19,	2,$42,	3,$34,	4,$45
		.BYTE	3,$56,	3,$57,	1,$68,	2,$19,	2,$58,	3,$6D,	3,$6E,	6,$43
		.BYTE	3,$4A,	2,  2,	6,$54,	6,$55,	4, $F,	4,$15,	3,$56,	3,$57
		.BYTE	6,$56,	2,$3B,	1,$7F,	4,$3D,	3,$3F,	3,  9,	2,$55,	2,$55
		.BYTE	2,$55,	2,$55,	2,$55,	2,$55,	2,$55,	2,$55,	2,$55,	2,$55
		.BYTE	2,$55,	2,$55,	2,$55,	1,$29,	1,$2A,	1,$28,	2,$55,	2,$55
		.BYTE	2,$55,	2,$55,	4,$66,	2,$26,	3,$6D,	3,$6E,	5,$7A,	5,$7B
		.BYTE	3,$19,	6,$44,	2,  8,	3,$41,	5,$11,	1,$29,	1,$2A,	1,$28
		.BYTE	3,  9,	1,$6A,	3,$32,	2,  5,	5,$4E,	5,$5D,	3,$4B,	3,$4C
		.BYTE	3,$4A,	4,$3D,	3,$3F,	6,$54,	6,$55,	2,  5,	4, $B,	1,$68
		.BYTE	2,$19,	3,$41,	5,$11,	1,$29,	1,$2A,	1,$28,$FF,$FF,	2,$55
		.BYTE	2,$55,	2,$55,	2,$55,	3,$56,	3,$57,	6,$56,	2,$3B,	1,$7F
		.BYTE	2,$55,	2,$55,	2,$55,	4,$66,	2,$26,	2,$58,	3,$6D,	3,$6E
		.BYTE	6,$43,	3,$4A,	2,  2,	6,$54,	6,$55,	4, $F,	6,$44,	2,  8
		.BYTE	2, $B,	2,  7,	3,$56,	3,$57,	6,$56,	2,$3B,	1,$7F,	3,  9
		.BYTE	2,$55,	2,$55,	2,$55,$FF,$FF,$FF,$FF,	2,$55,	2,$55,	2,$55
		.BYTE	6,$3F,	4, $E,	4, $F,	5, $E,	1,$42,	6,$40,	6,$3F,	2,$55
		.BYTE	2,$55,	2,$55,	2,$55,	2,$55,	2,$55,	2,$55,	3,$12,	3,$6D
		.BYTE	1,$48,	3,$56,	2,$55,	2,$55,	2,$55,	5,$2C,	5,$6D,	1,$65
		.BYTE	4,$67,	2,$12,	2,  2,	5,$16,	3,$49,	2,$3E,	5, $B,	2,$55
		.BYTE	2,$55,	1,$10,	2,$19,	4, $F,	5,$7E,	6,$57,	3,$2C,	1,$6A
		.BYTE	1,$2E,	6,$58,	1,$12,	0
byte_2A476:	.BYTE	6,$59,	4,$7E,	2,  2,	6,$5A,	6,$5B,	5, $D,	2,$55,	2,$55
					
		.BYTE	2,$55,	2,$55,	2,$55,	2,$55,	2,$55,	2,$55,	2,$58,	2,$57
		.BYTE	3,$2C,	2,$42,	4,$5D,	3,$5A,	2,  2,	4,$32,	4,$46,	2,  5
		.BYTE	2,$7E,	4,$62,	4,$63,	2,$48,	2,$19,	5,$4A,	1,$6A,	5,$72
		.BYTE	2,$4D,	2,  5,	3,$5D,	3,$5E,	2,$7E,	2,  2,	4,$3F,	4,$40
		.BYTE	2,$40,	6,$2C,	6,$5C,	3,$66,	3,  9,	3,$23,	2,$37,	2,$7E
		.BYTE	3,$1B,	3,$34,	4,$74,	2,$26,	2,$27,	3,$5E,	2,$7E,	4, $B
		.BYTE	3,$46,	4,$76,	2,  2,	2,$48,	3,$2D,	2,$28,	3,$6A,	3,$6B
		.BYTE	2,$27,	4,$60,	2,  2,	3,  9,	6,$5A,	6,$5B,	2,  5,	2,$57
		.BYTE	2,$62,	2,$26,	5,$33,	3,$3F,	4,$64,	4,$65,	2,  5,	2,$7E
		.BYTE	4,$44,	4,$7A,	2,$57,	2,  8,	2,$27,	3,$2E,	6,$41,	3,$47
		.BYTE	2,$56,	4,$10,	2,  5,	5,$4E,	5,$5D,	2,$57,	2,$37,	3,$12
		.BYTE	4,$28,	2,$27,	3,$6C,	3,$79,	4, $F,	2, $C,	2,  2,	3,$19
		.BYTE	2,  5,	2,$57,	1,$68,	2,$19,	3,$3F,	6,$4D,	2,$61,	4,$35
		.BYTE	5,$17,	1,$28,	3, $B,	3,$2D,	2,$28,	6,$5D,	3,$70,	2,  5
		.BYTE	4,  4,	4,$28,	3,$3F,	1,$29,	1,$2A,	1,$28,	1,$47,	4,$19
		.BYTE	3,$40,	3,$14,	2,  2,	3,$58,	3,$59,	3,  9,	4,$44,	4,$7A
		.BYTE	2,$57,	2,$3B,	3,$24,	4,$28,	2,  8,	2,$5A,	2,$42,	2,$59
		.BYTE	2,  2,	4,$34,	6,$45,	2,$61,	5,$1E,	6,$1A,	4,$4B,	4,$19
		.BYTE	3,  9,	2,$55,	2,$55,	2,$55,	2,$55,	2,$55,	5,$4E,	5,$5D
		.BYTE	1,$6A,	2,$3B,	2,$5B,	6,$5E,	5,$1E,	4,$34,	6,$45,	2,  5
		.BYTE	2,$34,	2,$26,	2,  2,	5,$65,	2,$36,	1,$68,	2,$19,	2,  7
		.BYTE	3,$47,	3,$48,	3,$58,	3,$59,	1,$47,	4,$19,	2,  5,	3,$47
		.BYTE	3,$48,	3,$58,	3,$59,	2,  2,	5,$42,	6,$5F,	3,$1C,	2,$37
		.BYTE	2,$7E,	2,  2,	3,$1C,	6,$57,	1,$10,	1,$63,	6,$60,	6,$61
		.BYTE	6,$62,	1,$12,	2,$15,	3,$56,	3,$57,	6,$46,	2,$37,	2,$57
		.BYTE	2,  2,	3,$1C,	6,$57,	1,$10,	5,$74,	6,$63,	5,$74,	1,$12
		.BYTE	1,$6A,	3,$32,	2,  5,	5,$4E,	5,$5D,	2,$57,	2,$63,	1,$47
		.BYTE	4,$19,	6,$4D,	2,$61,	4,$35,	5,$17,	1,$28,	2,  5,	1,$6A
		.BYTE	1,$52,	2,$63,	6,$56,	5,$11,	2,$19,	2,$24,	2,$16,	3,$6C
		.BYTE	3,$1C,	6,$57,	2,  5,	2,$40,	2,$63,	4,$2A,	6,$56,	5,$11
		.BYTE	2,$27,	3,$6C,	3,$56,	3,$57,	2,$7E,	4,$62,	4,$63,	1,$45
		.BYTE	3,$56,	3,$57,	4,$61,	2,$58,	2,$24,	2,$25,	2,$4D,	2,  5
		.BYTE	2,$57,	5,$1C,	3,$69,	2,  8,	1,$4F,	2,$38,	2,  2,	3,  9
		.BYTE	5,$4E,	5,$5D,	2,$57,	1,$7D,	2,$5B,	2,$7E,	4,$62,	4,$63
		.BYTE	4,$76,	6,$64,	2,$4D,	2,  5,	6,$25,	1,$6A,	2,$63,	6,$65
		.BYTE	6,$66,	2,  5,	3,$7B,	6,  1,	3,$17,	2,$4D,	2,$7E,	4,$4E
		.BYTE	3,  9,	2,$55,	2,$55,	2,$55,	2,$55,	2,$55,	3,$56,	3,$57
		.BYTE	6,$67,	1,$50,	1,$51,	1,$64,	6,$68,	2,$55,	2,$55,	2,$55
		.BYTE	2,$55,	2,$55,	4,$7E,	2,$57,	2,  2,	1,$63,	1,$51,	6,$69
		.BYTE	1,$5B,	0
byte_2A6F9:	.BYTE	2,$55,	2,$55,	3,$12,	2,$55,	3,$6D,	2,$55,	1,$48,	2,$55
					
		.BYTE	3,$56,	2,$55,	2,$55,	2,$55,$FF,$FF,	2,$55,	1,$61,	1,$71
		.BYTE	1,$71,	2,$76,	6,$23,	1,$60,	6,$23,	1,$24,	1,$24,	2,$55
		.BYTE	2,$55,$FF,$FF,	2,$55,	2,$55,	6,$6A,	3,$47,	3,$48,	4,$5E
		.BYTE	4,$45,	5,$58,	2,  1,	2,$55,	2,$55,	2,$55,	6,$25,	2,$58
		.BYTE	6,$6B,	5,$4C,	6,$6C,	1,$69,	1,$6B,	2,$19,	4, $F,	1,$6C
		.BYTE	1,$6D,	5, $D,	1,$61,	6,$23,	1,$45,	1,$73,	6,$23,	1,$65
		.BYTE	6,$23,	5,$74,	6,$23,	5,$75,	6,$23,	1,$73,	2,$55,	2,$55
		.BYTE	2,  2,	3,  4,	3,$4A,	6,$6D,	3,$41,	2,$7E,	2,$5E,	2,  2
		.BYTE	3,$4B,	3,$4C,	2,$55,	2,$55,	2,$34,	2,  5,	3,$2C,	2,$27
		.BYTE	4, $F,	4,$67,	2,$12,	2,  2,	2,$6F,	6,$6E,	2,$55,	2,$55
		.BYTE	2,  8,	1,$2A,	3,  9,	2,$55,	2,$55,	2,$55,	2,$55,	2,$55
		.BYTE	2,$55,	2,$55,	1,$24,	6,$23,	5,$29,	6,$6F,	1,$49,	1,$65
		.BYTE	4,$67,	2,$12,	5,$1E,	2,$34,	2,$26,	4,$67,	2,$55,	2,$55
		.BYTE	2,$12,	2,  2,	6,$70,	6,$71,	3,  9,	2,$55,	2,$55,	2,$55
		.BYTE	2,$55,	2,$55,	1,$25,	6,$23,	5,$6A,	6,$29,	2,$6F,	2,$70
		.BYTE	1,$28,	1,$6F,	2,$34,	2,$26,	2,  2,	3,$4B,	2,$55,	2,$55
		.BYTE	3,$4C,	3,$19,	3,$4A,	2,$48,	5,$34,	2,$52,	2,  5,	2,$63
		.BYTE	3,$6F,	2,$27,	2,$55,	2,$55,	6,$72,	5,  8,	4,$3D,	2,$61
		.BYTE	2,$37,	3,$6C,	6,$5E,	5,$1E,	3,  9,	2,$55,$FF,$FF,	2,$55
		.BYTE	2,$55,	1,$5D,	1,$5D,	1,$58,	1,$50,	1,$59,	5,$75,	6,$68
		.BYTE	1,$64,	1,$64,	5,$74,	0
byte_2A850:	.BYTE	2,$55,	2,$55,	2,$55,	2,$55,	6,$3F,	1, $E,	1, $F,	6,$73
					
		.BYTE	6,$74,	6,$3F,	2,$55,	2,$55,	2,$55,	2,$55,	3,$19,	5,$59
		.BYTE	3,$33,	4,  0,	2,$19,	5,$4A,	3,$25,	4,$19,	4,$1A,	2,  7
		.BYTE	1, $E,	1, $F,	2, $D,	2, $E,	6,$75,	4,$67,	2,$48,	2, $F
		.BYTE	6,$76,	3,  9,	2,$58,	2,$42,	6,$6B,	1,$3C,	1,$6F,	2,  5
		.BYTE	2,$7E,	2,$5E,	3,$46,	6,$73,	6,$74,	2,$49,	2,$79,	2,$7A
		.BYTE	5,$39,	3,$13,	3,$14,	5,  7,	2,  2,	1, $E,	1, $F,	2,  5
		.BYTE	6,$77,	4,$1D,	6,$73,	6,$74,	1,$67,	2,$5E,	2,  2,	2, $E
		.BYTE	6,$78,	3,  9,	1, $E,	1, $F,	2,  2,	4,$68,	2,  7,	1,$6A
		.BYTE	5,$72,	6,$46,	2, $E,	6,$78,	4, $B,	1,$6A,	5,$72,	3,  9
		.BYTE	1,$13,	1,$2B,	1, $E,	1, $F,	1,$68,	2,$19,	2, $D,	2, $E
		.BYTE	2, $F,	2,$10,	2,  5,	1,$14,	1,$2B,	1, $E,	1, $F,	2, $D
		.BYTE	2, $E,	2,$11,	2,$12,	2,$13,	2,$14,	1,$11,	1,$2B,	1, $F
		.BYTE	1, $E,	1,$6A,	2,  8,	2,  9,	2, $A,	2, $B,	2,  7,	1,$67
		.BYTE	2,$27,	3,$66,	2,$63,	2,$48,	6,$79,	1,$67,	1, $F,	1, $E
		.BYTE	2,$5F,	1,$16,	6,$44,	2,  8,	3,$15,	4,$68,	2,  7,	3,  9
		.BYTE	5,$4E,	5,$5D,	2,$57,	1,$45,	1,$11,	1,$2B,	2,$48,	1,$13
		.BYTE	1,$2B,	1, $F,	1, $E,	2,$5F,	1,$16,	2,  5,	3,$25,	2,  8
		.BYTE	2, $B,	2, $E,	2, $F,	6,$78,	5,$5D,	6,$7A,	5,$1D,	6,$7B
		.BYTE	3,  9,	2,$57,	1,$68,	2,$19,	6,$7C,	2,$2D,	2,$19,	1,$6A
		.BYTE	5,$72,	2,  2,	2,$3E,	3,  2,	2,$5F,	1,$16,	2,$42,	2,$18
		.BYTE	3,$71,	1, $E,	1, $F,	2,  5,	4,$17,	4,$18,	4,$40,	3,$46
		.BYTE	2,$27,	4, $F,	6,$78,	5,$5D,	4,$4E,	3,  9,	0
byte_2A9BD:	.BYTE $FF,$FF,$FF,$FF,	2,$55,	2,$55,	1,$59,	6,$7D,	6,$7E,	6,$69
					
		.BYTE	1,$51,	1,$58,	1,$73,	6,$68,	0
byte_2A9D6:	.BYTE	2,$42,	2,$59,	1,$68,	2,  8,	2,$40,	2,$26,	2,$28,	6,$7F
					
		.BYTE	4,$3D,	3,$21,	3,$22,	2,  2,	4,$22,	3,  7,	3,  9,	0
byte_2A9F5:	.BYTE	2,$7E,	2,$63,	3,$24,	3,$50,	3,$51,	4,$48,	3,$2A,	7,  0
					
		.BYTE	2,$75,	2,$75,	0
byte_2AA0A:	.BYTE	2,$5B,	2,$58,	2,$62,	2,$5C,	2,$63,	2,$74,	2,$20,	2,$21
					
		.BYTE	2,$73,	3,  9,	0
byte_2AA1F:	.BYTE	2,$2E,	6,$17,	5,$63,	2,$4D,	2,  5,	1,$6A,	2,  8,	2,$3B
					
		.BYTE	3,$24,	4,$4F,	0
byte_2AA34:	.BYTE	2,$7E,	2,$63,	6, $A,	3,$24,	5,$76,	5,$77,	2,$6B,	7,  1
					
		.BYTE	3,  9,	0
byte_2AA47:	.BYTE	5,$4E,	5,$5D,	2,$26,	1,$2B,	1,$2C,	2,  5,	3,$25,	1,$68
					
		.BYTE	2,$19,	2,  7,	1,$67,	2, $C,	2,$74,	2,$20,	7,  2,	7,  3
		.BYTE	3,$41,	5,  6,	3,  9,	0
byte_2AA6E:	.BYTE	2,$55,	2,$55,	2,$55,	2,$37,	2,$55,	2,$55,	2,$55,	2,$66
					
		.BYTE	0
byte_2AA7F:	.BYTE	3,$11,	2,$37,	1,$6E,	3, $F,	3,$10,	3,  3,	1,$15,	2,  2
					
		.BYTE	2,$79,	7,  4,	3,$2A,	4,$4F,	2,  5,	4,$51,	4,  4,	3,$46
		.BYTE	4,$76,	1,$6B,	4,$77,	4,$78,	3,  9,	0
byte_2AAAA:	.BYTE	2,$42,	2,$37,	2,$27,	3,$43,	2,  2,	4,$72,	7,  5,	2,$1B
					
		.BYTE	2,  5,	2,$57,	2,$63,	1,$2C,	2,$24,	1,$67,	2,$64,	2,$65
		.BYTE	0
byte_2AACB:	.BYTE	2,$57,	4,$3D,	3,$3F,	2,$4D,	2,$27,	3,$43,	2,  2,	4,$72
					
		.BYTE	7,  5,	2,$1B,	3,  9,	0
byte_2AAE2:	.BYTE	3,$11,	2,$5E,	3,$40,	3,$41,	2,$4D,	3,$2D,	3,$42,	2,$6B
					
		.BYTE	3,$43,	0
byte_2AAF5:	.BYTE	3,$11,	2,$5E,	3,$44,	3,$45,	3,$46,	3,$33,	3,$47,	3,$48
					
		.BYTE	0
byte_2AB06:	.BYTE	3,$23,	2,$37,	2,$75,	2,$75,	0 
byte_2AB0F:	.BYTE	2,$42,	2,$37,	7,  6,	4,$56,	4, $E,	2,$3E,	2,$65,	0
					
byte_2AB1E:	.BYTE	7,  7,	4,$4F,	2,$60,	2,$6B,	2,  2,	7,  8,	1,$7A,	0
					
byte_2AB2D:	.BYTE	7,  9,	3,$2A,	3,$29,	3,  4,	5,  7,	2,  5,	3,$29,	1,$6F
					
		.BYTE	3,$2A,	2,$58,	7, $A,	2,$59,	2,$65,	0
byte_2AB48:	.BYTE	6,$4B,	4, $F,	2,  5,	3,$3B,	1,$47,	4,$19,	4,$45,	0
					
byte_2AB57:	.BYTE	1,$68,	2,$37,	3,$29,	1,$6F,	3,$2A,	2,$75,	2,$75,	0
					
byte_2AB66:	.BYTE	3,$2D,	2,$37,	7,  6,	4,$56,	5,$20,	3,$27,	2,$65,	0
					
byte_2AB75:	.BYTE	1,$68,	2,  8,	2,$37,	3,$29,	1,$6F,	3,$2A,	0
					
byte_2AB82:	.BYTE	3,$3D,	2,$59,	2,  5,	2,$57,	3,$24,	7, $B,	3,$2C,	2,$27
					
		.BYTE	4, $F,	4,$4E,	0
byte_2AB97:	.BYTE	2,$7E,	2,$48,	2,$57,	2,$27,	3,$15,	3,$24,	2,  5,	3,$29
					
		.BYTE	1,$6F,	3,$2A,	1,$68,	2,$37,	2,$7E,	2,$5E,	2,  2,	3,$67
		.BYTE	6,$6E,	7, $C,	2,$4D,	0
byte_2ABBE:	.BYTE	2,$60,	4,$4E,	4,$4F,	2,$7E,	7, $D,	2,$58,	2,$42,	0
					
byte_2ABCD:	.BYTE	3,$63,	3,$6D,	4,$47,	7, $E,	0 
byte_2ABD6:	.BYTE	2,$42,	2,$37,	7, $F,	7,  1,	0 
byte_2ABDF:	.BYTE	5,$4E,	5,$5D,	4, $C,	3,$3F,	1,  3,	5,$20,	3,$25,	4,$7F
					
		.BYTE	2,$24,	3,$24,	3,$21,	3,$22,	0
byte_2ABF8:	.BYTE	3, $D,	3,$24,	3,$5A,	4,$33,	2,$4D,	2,$65,	2,$42,	1,$68
					
		.BYTE	1,$6A,	2,$61,	2,$57,	0
byte_2AC0F:	.BYTE	2,$42,	2,$37,	7,  6,	4,$56,	0 
byte_2AC18:	.BYTE	1,$2D,	0	
byte_2AC1B:	.BYTE	3,$3D,	2,$59,	2,  5,	2,$57,	3,$3F,	6,$79,	3,$11,	2,  2
					
		.BYTE	4, $E,	2,$3E,	3,$21,	3,$22,	2,$27,	4, $F,	0
byte_2AC38:	.BYTE	2,$7E,	2,$63,	3,$21,	3,$22,	2,$42,	3,$6C,	0
					
byte_2AC45:	.BYTE	4,$44,	4,$7A,	2,$42,	1,$6A,	2,$37,	3,$29,	1,$6F,	3,$2A
					
		.BYTE	2,  2,	1,$2D,	0
byte_2AC5A:	.BYTE	2,$42,	2,$37,	7,  6,	4,$56,	2,$65,	0 
byte_2AC65:	.BYTE	4,$42,	4,$33,	1,$67,	2,$37,	3,$1D,	2,$52,	4,$4F,	0
					
byte_2AC74:	.BYTE	2,$33,	4,$19,	2,  5,	3,$6F,	2,$7E,	2, $C,	4,$6C,	6,$26
					
		.BYTE	1,$67,	0
byte_2AC87:	.BYTE	3,$11,	2,$37,	7,  6,	4,$56,	4,$22,	3,  7,	2,$65,	0
					
byte_2AC96:	.BYTE	2,$79,	7,  4,	3,$2A,	4, $B,	3,$1A,	5,$40,	2,$4D,	2,  5
					
		.BYTE	3,$25,	2,$37,	1,$67,	7,$10,	2,  2,	0
byte_2ACB1:	.BYTE	3,$6F,	2,$7E,	2,$5E,	3,$50,	3,$51,	7,  9,	3,$2A,	3,$29
					
		.BYTE	3,  4,	5,  7,	4,$4E,	0
byte_2ACC8:	.BYTE	7,  9,	3,$2A,	3,$29,	0 
byte_2ACCF:	.BYTE	3,$30,	3,$1D,	2,  5,	4,$55,	4,$56,	1,$6A,	4,$5A,	2,$4D
					
		.BYTE	0
byte_2ACE0:	.BYTE	3,$3D,	2,$59,	2,  5,	7,$11,	7,$12,	3, $B,	7,  9,	3,$2A
					
		.BYTE	3,$29,	0
byte_2ACF3:	.BYTE	7,$13,	4,$32,	3,$3B,	4,$79,	4,$19,	2,$42,	4,$69,	2,$6C
					
		.BYTE	1,$7A,	0
byte_2AD06:	.BYTE	3,$3F,	5,$16,	4, $B,	3, $B,	1,$6A,	3,$3F,	7,  9,	3,$2A
					
		.BYTE	7,  0,	3,  4,	5,  7,	0
byte_2AD1D:	.BYTE	2,$7E,	4, $B,	2,$37,	2,  5,	2,$42,	3,$3F,	4,$12,	1,$7D
					
		.BYTE	3,$14,	2,$4D,	7,  6,	4,$56,	2,$65,	0
byte_2AD38:	.BYTE	2,$7E,	2,$5E,	5,$1C,	3,$69,	2,$60,	2,$60,	2,  2,	3,$21
					
		.BYTE	3,$22,	2,$27,	4, $F,	2,$42,	4,$69,	7,  8,	1,$7A,	0
byte_2AD57:	.BYTE	2,$34,	2,$19,	2,$7E,	2,$5E,	5,$1C,	3,$69,	4,$15,	2,$27
					
		.BYTE	3,$43,	4,$19,	4,$1A,	5,$76,	3,$22,	0
byte_2AD72:	.BYTE	3,$3D,	2,$59,	2,  5,	2,$42,	2,$37,	5,$65,	6,  2,	2,  5
					
		.BYTE	2,$60,	2,$60,	2,  2,	1,$7D,	7,$14,	2,$57,	2,  2,	4,$19
		.BYTE	5,$65,	6,$6B,	7,$15,	4,$4E,	0
byte_2AD9B:	.BYTE	2,$7E,	6, $A,	3,$24,	7, $F,	7,  1,	3,$21,	3,$22,	2,  5
					
		.BYTE	2,$27,	3,$46,	2,$59,	2,$7E,	2,$5E,	2,$58,	2,$42,	1,$6F
		.BYTE	7,$16,	1,$16,	0
byte_2ADC0:	.BYTE	2,$60,	2,  2,	7,$17,	7,$18,	2,  5,	2,$57,	2,$63,	3,  3
					
		.BYTE	4,$33,	0
byte_2ADD3:	.BYTE	2,$57,	4, $B,	2,$37,	2,  5,	3,$3D,	2,$59,	0
					
byte_2ADE0:	.BYTE	3,$37,	4,$4F,	4,$55,	4,$56,	2,$4D,	0 
byte_2ADEB:	.BYTE	3,$3D,	2,$59,	4,$4F,	2,$37,	2,$57,	2,$58,	1,$6F,	2,$25
					
		.BYTE	4,$56,	2,$65,	0
byte_2AE00:	.BYTE	7,$17,	7,$18,	3,$2B,	2, $C,	7,$11,	7,$12,	2,  5,	4,$45
					
		.BYTE	1,$47,	1,$6A,	4,$19,	2,$4D,	2,  5,	3,$2B,	0
byte_2AE1D:	.BYTE	7,$19,	7,$19,	3,$3D,	2,$59,	2,  5,	2,$57,	7,$1A,	7,$1B
					
		.BYTE	7,$1C,	6,$31,	2,$27,	2,  3,	2,  5,	2,$7E,	2,$63,	1,$45
		.BYTE	1,$67,	7,$1D,	4,$19,	0
byte_2AE44:	.BYTE	7,$17,	7,$18,	0 
byte_2AE49:	.BYTE	7,$1E,	6,$44,	1,$68,	3,$55,	6,$17,	5,$63,	0
					
byte_2AE56:	.BYTE	4,$6C,	2,  5,	7,$17,	7,$18,	2,  5,	7,$1F,	7,$1F,	2,$57
					
		.BYTE	1,$18,	2,$4D,	2,$7E,	2,  2,	3,$20,	0
byte_2AE71:	.BYTE	1,$6A,	3,$32,	2,$57,	1,$6A,	2,$37,	2,$63,	3,$24,	7, $F
					
		.BYTE	7,  1,	5,$76,	3,$22,	4,$56,	2,$65,	0
byte_2AE8C:	.BYTE	2,$57,	4,$55,	4,$56,	3,$46,	2,$58,	2,$42,	2,$65,	0
					
byte_2AE9B:	.BYTE	2,$42,	2,$59,	2,$26,	2,$28,	4,$22,	3,  7,	2,$7E,	7,$20
					
		.BYTE	2,$21,	3,$21,	3,$22,	2,$4D,	0
byte_2AEB4:	.BYTE	2,$7E,	2,$5E,	2,$40,	2,$37,	3,$2B,	3,$24,	3, $B,	7,  9
					
		.BYTE	3,$2A,	3,$29,	3,  4,	5,  7,	2,$48,	3,$29,	1,$6F,	3,$2A
		.BYTE	4,$4E,	0
byte_2AED7:	.BYTE	7,$1F,	7,$1F,	2,$57,	2,  5,	7,$17,	7,$18,	0
					
byte_2AEE4:	.BYTE	7,$17,	7,$18,	0 
byte_2AEE9:	.BYTE	3,$3D,	2,$59,	2,  5,	3, $B,	3,$3F,	7,  6,	4,$56,	7,$21
					
		.BYTE	5,$77,	2,$4D,	2,$64,	2,$65,	0
byte_2AF02:	.BYTE	2,$62,	2,$26,	2,  5,	3,$23,	2,$42,	2,$6C,	1,$7A,	2,$26
					
		.BYTE	2,  3,	7,$22,	3,$1D,	0
byte_2AF19:	.BYTE	7,$23,	2,  5,	2,$42,	2,$59,	4,$1E,	4,$1F,	6,$17,	5,$63
					
		.BYTE	2,  5,	2,$7E,	2,$5E,	5,$1C,	3,$69,	6, $A,	6,$14,	3,$44
		.BYTE	7,$24,	7,$25,	5,$36,	7,$21,	0
byte_2AF42:	.BYTE	2,$42,	2,$59,	2,$27,	3,$66,	2,$26,	7,  6,	4,$56,	7,$26
					
		.BYTE	3,$34,	2,  5,	2,$7E,	2,$5E,	2,$27,	3,$15,	1,$45,	1,$67
		.BYTE	3, $B,	2,$3B,	2, $C,	4,$55,	4,$56,	4,$60,	2,$65,	0
byte_2AF71:	.BYTE	2,$60,	2,$4D,	2,  5,	3,$6F,	2,$7E,	2,$5E,	4,$2A,	5,$62
					
		.BYTE	3,$7D,	1,$21,	3,  6,	5,$34,	4,$4E,	0
byte_2AF8C:	.BYTE	7,$19,	7,$19,	2,  5,	2,$7E,	3, $B,	3,$3F,	2,$27,	4,$60
					
		.BYTE	4,$22,	3,  7,	0
byte_2AFA1:	.BYTE	2,$37,	7,  6,	4,$56,	2,$65,	0 
byte_2AFAA:	.BYTE	2,$37,	5,$7F,	7,$27,	1,$7F,	2,  5,	4,$6C,	3,$14,	2,$52
					
		.BYTE	2,$4E,	3,$3B,	2,$26,	6,$78,	2,  5,	2,$57,	3,$12,	2,$60
		.BYTE	1,$2C,	2,$24,	1,$67,	0
byte_2AFD1:	.BYTE	3,$2D,	2,$57,	4,$55,	4,$56,	7,$28,	2,$65,	0
					
byte_2AFDE:	.BYTE	2,$7E,	2,$26,	2,$42,	3,$6C,	4,$4F,	0 
byte_2AFE9:	.BYTE	7,$1F,	7,$1F,	2,$57,	2,  5,	2,$7E,	3,$46,	1,$2C,	2,$24
					
		.BYTE	1,$67,	2,  2,	0
byte_2AFFE:	.BYTE	3,$49,	3,$22,	2,$4A,	2,  5,	2,$57,	4,$55,	4,$56,	2,$4D
					
		.BYTE	2,$65,	0
byte_2B011:	.BYTE	3,$3D,	2,$59,	2,  5,	2,$42,	2,$6C,	1,$7A,	3,$33,	6,$17
					
		.BYTE	5,$63,	2,  5,	2,$26,	1,$68,	7,$29,	2,  2,	3,$1D,	2,$52
		.BYTE	0
byte_2B032:	.BYTE	2,$57,	4,$30,	2, $F,	2,$4D,	2,  5,	2,$37,	7,  6,	4,$56
					
		.BYTE	3,$1D,	2,$52,	2, $F,	3,$3F,	2,$57,	2,  2,	0
byte_2B04F:	.BYTE	2,$37,	4,$3A,	3,$33,	2,$6B,	2,  2,	2,$12,	7,$2A,	0
					
byte_2B05E:	.BYTE	2,$12,	7,$2A,	2,$65,	7,$2B,	4,$4F,	1,$6A,	2,  5,	3,$49
					
		.BYTE	3,$22,	2,$4A,	2,  5,	7,$2C,	7,$2D,	4,$4A,	0
byte_2B07B:	.BYTE	5,$39,	3,$13,	2,$26,	1,$2D,	1,$2E,	2,  5,	2,$7E,	5,$1C
					
		.BYTE	3,$69,	1,$2C,	2,$24,	2,  2,	0
byte_2B094:	.BYTE	7,$2C,	7,$2D,	4,$4A,	2,  5,	2,$7E,	3,$24,	3,$74,	2,$57
					
		.BYTE	7,$2E,	2, $C,	0
byte_2B0A9:	.BYTE	4,$66,	2,$42,	1,$2D,	1,$2E,	2,  5,	3,$49,	3,$22,	2,$4A
					
		.BYTE	2,  5,	7,$2C,	7,$2D,	4,$4A,	2,  5,	2,$7E,	3,$74,	2,$57
		.BYTE	7,$2F,	1,$7E,	0
byte_2B0CE:	.BYTE	3,$3D,	2,$59,	2,  5,	2,$42,	2,$37,	2,$7E,	2,  2,	5, $F
					
		.BYTE	3,$28,	1,$7F,	2,  5,	2,$57,	1,$2C,	2,$24,	4,$4E,	2,  5
		.BYTE	2,$7E,	2,$75,	2,$75,	0
byte_2B0F5:	.BYTE	1,$6A,	4,$4F,	3,$49,	3,$22,	2,$4A,	0 
byte_2B100:	.BYTE	3,$3D,	2,$59,	2,  5,	2,$63,	3,  3,	4,$33,	0
					
byte_2B10D:	.BYTE	2,$7E,	2,$11,	2,$12,	2,$4D,	2,$64,	2,$65,	2,$7E,	2,$63
					
		.BYTE	1,$2D,	1,$2E,	0
byte_2B122:	.BYTE	7,$17,	7,$18,	2,  5,	7,$17,	7,$18,	0 
byte_2B12D:	.BYTE	2,$42,	3,$3F,	4,$12,	2,$37,	7,  6,	4,$56,	2,$65,	0
					
byte_2B13C:	.BYTE	3,$3D,	2,$59,	0 
byte_2B141:	.BYTE	2,$57,	1,$18,	2,$4D,	2,$7E,	0 
byte_2B14A:	.BYTE	7,$1E,	6,$44,	2,$2E,	6,$17,	5,$63,	2,$4D,	2,  5,	7,$1F
					
		.BYTE	7,$1F,	2,$57,	2,  5,	7,$17,	7,$18,	0
byte_2B165:	.BYTE	2,$62,	5,$2C,	3,$58,	3,  9,	3,$2D,	3,$1D,	2,$52,	2,$2E
					
		.BYTE	1,$68,	7,$29,	2,  2,	2,  5,	2,$42,	2,$59,	3,$3F,	4,$12
		.BYTE	2,$37,	7,  6,	4,$56,	4, $E,	2,$3E,	2,$65,	0
byte_2B192:	.BYTE	7,  9,	3,$2A,	3,$29,	0 
byte_2B199:	.BYTE	3,$3D,	2,$59,	2,  5,	3,$2C,	2, $C,	2,$57,	2,$62,	4,$10
					
		.BYTE	3,  9,	0
byte_2B1AC:	.BYTE	3,$33,	3,$6D,	7,$30,	2,$57,	4, $B,	2,$62,	4,$10,	3,  9
					
		.BYTE	2,$57,	4,  3,	4,  4,	5,$6A,	3, $D,	2,  5,	3,$3F,	4,$12
		.BYTE	2,$24,	7, $A,	2,$59,	3,$24,	2,$4D,	2,$65,	0
byte_2B1D9:	.BYTE	3,$33,	7,$31,	7,$32,	3,$6F,	2,$57,	2,$5E,	6,$20,	4,$33
					
		.BYTE	2,$4D,	2,  5,	3,$23,	2,$7E,	2,$58,	3,$3E,	7,$33,	3,$1D
		.BYTE	2,$52,	2,  5,	2,$74,	4,  9,	4,$17,	4,$18,	3,  9,	0
byte_2B208:	.BYTE	2,$37,	2,$64,	3,  9,	4,$74,	1,$35,	3,$47,	3,$48,	3,$25
					
		.BYTE	2,$60,	2,$4D,	3,  9,	0
byte_2B21F:	.BYTE	3,$3D,	2,$59,	2,  5,	2,$5B,	2,$58,	3,$12,	5,$79,	2,$63
					
		.BYTE	2,  2,	2,$37,	4,$79,	4,$19,	2,$42,	2,$59,	0
byte_2B23C:	.BYTE	4, $D,	4,$3D,	4,$6C,	0 
byte_2B243:	.BYTE	2,$42,	2,$6C,	1,$7A,	1,$6F,	2,$26,	3,$18,	2,  0,	7,  8
					
		.BYTE	4,$69,	2,$36,	1,$6A,	2,  8,	3,$41,	3,$24,	2,  5,	2,$7E
		.BYTE	2,$27,	3,$2E,	2,$58,	3,$65,	7,$28,	3,  2,	3,  9,	0
byte_2B272:	.BYTE	3,$2D,	2,$7E,	3,$25,	3,$24,	6,$79,	3,$11,	2,  2,	7,  8
					
		.BYTE	4,$69,	3,$2C,	3,$2C,	2,$26,	7,  6,	4,$56,	7,$21,	5,$77
		.BYTE	3,  9,	0
byte_2B295:	.BYTE	2,$37,	2,$64,	2,$65,	3,$2D,	3,$25,	7,$34,	7,$35,	2,$57
					
		.BYTE	2,$4D,	3,  9,	0
byte_2B2AA:	.BYTE	2,$7E,	2,$37,	1,$6E,	2,$49,	2,$4A,	2,  5,	2,$7E,	3,$1B
					
		.BYTE	3,$34,	2,$57,	2,  8,	7,$36,	7,$37,	2,$7E,	3,  9,	0
byte_2B2C9:	.BYTE	3,$3F,	4,$12,	4,$55,	4,$56,	2,$4D,	2,$65,	0
					
byte_2B2D6:	.BYTE	2,$7E,	2,$37,	3,$3D,	2,$59,	2,  5,	1,$6E,	2,$49,	2,$4A
					
		.BYTE	3,  9,	7,$2B,	2,  5,	3,$11,	7,$38,	2,$4D,	3,  9,	0
byte_2B2F5:	.BYTE	2,$42,	2,$2E,	7,$26,	2,$4D,	2,  5,	7,  6,	4,$56,	4, $B
					
		.BYTE	3,$2C,	1,$6A,	1,$2E,	3,  9,	0
byte_2B30E:	.BYTE	3,$3D,	2,$59,	2,  5,	1,$7D,	2,$5B,	7,  6,	4,$56,	2,$4E
					
		.BYTE	3,$3B,	2,  2,	4, $E,	2,$3E,	2,$4D,	2,$64,	2,$65,	0
byte_2B32D:	.BYTE	4,$6C,	2,  5,	1,$6A,	3,$32,	3,$2C,	1,$6A,	1,$2E,	6,$58
					
		.BYTE	0
byte_2B33E:	.BYTE	3,$2D,	4,$56,	2,$57,	4, $F,	3,$24,	7,$39,	7,$3A,	3,$2C
					
		.BYTE	3,$2C,	4,$4E,	2,  5,	2,$7E,	2,$42,	2,$59,	2,$26,	7,$3B
		.BYTE	1,$7A,	3,  9,	0
byte_2B363:	.BYTE	2,$60,	2,  2,	2,  5,	2,$7E,	3,$25,	3,$65,	3,$24,	3,$2C
					
		.BYTE	3,$2C,	3,  9,	0
byte_2B378:	.BYTE	3,$37,	2,  5,	4,$55,	4,$56,	2,$4D,	2,$65,	0
					
byte_2B385:	.BYTE	7,$3C,	2,  5,	4,$6C,	1,$6A,	3,$15,	2,  5,	3,$3D,	2,$59
					
		.BYTE	3,  9,	2,$7E,	4,$2A,	3,$24,	7,$2E,	2,$27,	5,$12,	7,$3B
		.BYTE	1,$7A,	3,  9,	0
byte_2B3AA:	.BYTE	7,$17,	7,$18,	2,  5,	7,$17,	7,$18,	0 
byte_2B3B5:	.BYTE	3,$37,	2,  5,	2,$57,	2,$58,	3,$2D,	2,$59,	2,$64,	2,  5
					
		.BYTE	3,$3D,	2,$59,	2,$65,	3,$2B,	2,$29,	4,$4A,	7,$3B,	1,$7A
		.BYTE	3,  9,	0
byte_2B3D8:	.BYTE	2,$7E,	3,$33,	7,$31,	7,$32,	2,  5,	3,$3D,	2,$59,	3,  9
					
		.BYTE	0
byte_2B3E9:	.BYTE	4,$55,	4,$56,	3,$46,	2,$42,	4,$60,	2,$65,	0
					
byte_2B3F6:	.BYTE	4,$6C,	1,$6A,	3,$15,	2,  5,	2,$7E,	2,$2E,	1,$6A,	4,$42
					
		.BYTE	4,$33,	2,$4D,	3,  9,	0
byte_2B40D:	.BYTE	7,$17,	7,$18,	2,  5,	2,$57,	4,$55,	4,$56,	2,$4D,	2,$65
					
		.BYTE	2,$57,	2,$37,	1,$6A,	2,$37,	2,$2E,	7,$3D,	2,$4D,	2,$65
		.BYTE	0
byte_2B42E:	.BYTE	1,$6A,	2,  5,	2,$7E,	2,$62,	4,$10,	2,  5,	3,$3B,	6,$20
					
		.BYTE	4,$33,	3,  9,	0
byte_2B443:	.BYTE	3,$3D,	2,$59,	2,  5,	2,$7E,	1,$7D,	2,$5B,	2,$4D,	2,$27
					
		.BYTE	2,$28,	4,$22,	3,  7,	3,  9,	0
byte_2B45C:	.BYTE	7,$1F,	7,$1F,	2,  5,	2,$7E,	3,$46,	1,$2C,	2,$24,	1,$67
					
		.BYTE	2,  2,	3,  9,	0
byte_2B471:	.BYTE	3,$3D,	2,$59,	2,  5,	2, $C,	2,  2,	2,$3D,	2,$60,	3,  9
					
		.BYTE	7,$1E,	6,$44,	2,$7E,	4, $C,	4,$5A,	3,$2D,	3,$54,	2, $C
		.BYTE	4, $D,	7,$3E,	2,  2,	5,$20,	3,$27,	3,  9,	0
byte_2B49E:	.BYTE	1,$6F,	2,$25,	2,$2E,	7,$26,	2,  5,	3,$2C,	1,$6A,	2,$2E
					
		.BYTE	1,$2E,	2,  5,	2,$7E,	2,$5E,	2,$27,	3,$15,	3,  6,	5,$34
		.BYTE	4,$4E,	3,  9,	0
byte_2B4C3:	.BYTE	2,$7E,	3,$46,	6,$1B,	4,  9,	2,$57,	2,  2,	2,  5,	2,$7E
					
		.BYTE	2,$5E,	3,  6,	5,$34,	4,$4E,	0
byte_2B4DC:	.BYTE	2,$37,	3,$3D,	2,$59,	2,$64,	2,$65,	0 
byte_2B4E7:	.BYTE	2,$37,	5,  3,	1,$6F,	3,$29,	2,$58,	4, $D,	7,$3E,	2,$64
					
		.BYTE	2,$65,	0
byte_2B4FA:	.BYTE	4,$6C,	0	
byte_2B4FD:	.BYTE	2,$58,	3,$2D,	2,$59,	7,$19,	2,$2D,	3,  9,	3,$3D,	2,$59
					
		.BYTE	2,  5,	2,$26,	3,$19,	2,$48,	2,$57,	2,$58,	2,$27,	3,$15
		.BYTE	2,  2,	2,$64,	2,$65,	0
byte_2B524:	.BYTE	7,  6,	4,$56,	2,$65,	7,$2B,	2,  5,	4,$6C,	0
					
byte_2B531:	.BYTE	5,  3,	1,$6F,	3,$29,	0 
byte_2B538:	.BYTE	2,$37,	7,$17,	7,$18,	2,$48,	3,$3D,	2,$59,	2,$27,	3,$15
					
		.BYTE	2, $C,	2,$4D,	3,  9,	0
byte_2B54F:	.BYTE	5,  3,	1,$6F,	3,$29,	2,  5,	2,$57,	2,$62,	4,$10,	4,$4E
					
		.BYTE	2,$65,	0
byte_2B562:	.BYTE	2,$7E,	2,$5E,	2,  2,	3,  4,	3,$4A,	2,$11,	2,$26,	3,$6C
					
		.BYTE	7,$3F,	7,$40,	3,  9,	0
byte_2B579:	.BYTE	2,$42,	2,$36,	2,$37,	1,$58,	1,$50,	1,$59,	5,$75,	6,$68
					
		.BYTE	1,$64,	1,$64,	5,$74,	7,$41,	6,$24,	2,  2,	7,$42,	7,$43
		.BYTE	3,  9,	0
byte_2B59C:	.BYTE	5,  3,	1,$6F,	3,$29,	4,$4F,	0 
byte_2B5A5:	.BYTE	3,$3D,	2,$59,	2,  5,	3,$35,	2, $C,	2,$57,	4, $B,	2,$58
					
		.BYTE	2,$42,	1,$6F,	3,  9,	0
byte_2B5BC:	.BYTE	4,$6C,	2,  5,	3,$65,	1,$6A,	3,$3F,	2,$57,	4, $B,	2,$58
					
		.BYTE	2,$42,	1,$6F,	3,  9,	0
byte_2B5D3:	.BYTE	2,$7E,	7,$44,	5,$36,	2,$4D,	3,  9,	0 
byte_2B5DE:	.BYTE	2,$7E,	2,$5E,	3,$3C,	4,$4E,	3,  9,	0 
byte_2B5E9:	.BYTE	7,  9,	3,$2A,	3,$29,	0 
byte_2B5F0:	.BYTE	7,$17,	7,$18,	2,  5,	2,$57,	3,$2C,	4,$3D,	1,$6A,	7,$45
					
		.BYTE	3,  9,	0
byte_2B603:	.BYTE	2,$7E,	4,$62,	4,$63,	3,$70,	3,$3F,	2,$4D,	3,  9,	0
					
byte_2B612:	.BYTE	3,$3D,	2,$59,	2,  5,	2,$57,	2,$40,	2,$37,	3,$3B,	2,  1
					
		.BYTE	7,$17,	7,$18,	2,  2,	4,$10,	2,$4D,	3,  9,	0
byte_2B62F:	.BYTE	5,$4E,	5,$5D,	3,$11,	1,$6A,	4, $A,	4,$15,	2,$7E,	2,  5
					
		.BYTE	3,$11,	2,  2,	3,$67,	7,$46,	6,$32,	1,$7A,	3,$25,	3,$1E
		.BYTE	3,$66,	2,$4D,	3,  9,	0
byte_2B656:	.BYTE	2,$57,	2,$2E,	5,$35,	7,$47,	2,$4D,	3,  9,	0
					
byte_2B663:	.BYTE	3,$3D,	2,$59,	2,  5,	3,$3B,	2,$2E,	6,$20,	4,$33,	2,  5
					
		.BYTE	3,$36,	3,$45,	2,$57,	3,$33,	3,$2B,	3,$25,	3,$46,	4,$79
		.BYTE	4,$19,	2,$42,	3,$6C,	1,$3E,	6,$1A,	2,$4D,	3,  9,	0
byte_2B692:	.BYTE	2,$57,	3,$45,	7,  6,	4,$56,	2,$63,	5,$6A,	6,$29,	1,$73
					
		.BYTE	1,$65,	5,$74,	5,$75,	1,$73,	2,$65,	0
byte_2B6AD:	.BYTE	2,$42,	2,$37,	1,$58,	1,$50,	1,$59,	5,$75,	6,$68,	1,$64
					
		.BYTE	1,$64,	5,$74,	2,  2,	6,$5E,	7,$48,	3,  9,	0
byte_2B6CA:	.BYTE	2,$42,	2,$37,	2,$6F,	2,$70,	1,$28,	2,$58,	7,$49,	7,$4A
					
		.BYTE	3,  2,	2,  2,	2,$6F,	2,$70,	2,  5,	2,$15,	4,$1D,	6,$7C
		.BYTE	2,$70,	2,$3B,	2,$4D,	4,$10,	4,$11,	3,  9,	0
byte_2B6F7:	.BYTE	3,$23,	2,$42,	2,$27,	6,$72,	1,$6A,	2,  8,	4,$4B,	1,$6E
					
		.BYTE	5,$6D,	6,$16,	3,  9,	0
byte_2B70E:	.BYTE	2,$42,	3,$25,	2,$37,	2,$57,	2,$63,	5,$6A,	6,$29,	1,$73
					
		.BYTE	1,$65,	5,$74,	5,$75,	1,$73,	2,  2,	3,$35,	3,$36,	5, $D
		.BYTE	4,  8,	5,$2D,	1,$48,	3,$56,	6,$11,	7,$4B,	3,  9,	0
byte_2B73D:	.BYTE	2,$5B,	2,$58,	2,$57,	2,$48,	2,$42,	2,$28,	3,$1D,	2,$52
					
		.BYTE	2,$27,	4,$60,	2,$37,	1,$58,	1,$50,	1,$59,	5,$75,	6,$68
		.BYTE	1,$64,	1,$64,	5,$74,	2,  2,	7,$4C,	7,$4D,	2,$4D,	3,  9
		.BYTE	0
byte_2B76E:	.BYTE	2,$7E,	3,$65,	2,$57,	2,$37,	7,$4E,	3,$46,	2,$7E,	2,$4D
					
		.BYTE	2,  5,	4,$6C,	2,$7E,	2, $C,	4, $D,	2,$42,	2,$28,	3,$1D
		.BYTE	2,$52,	2,$27,	5,$7E,	1,$6A,	6,$7F,	3,  9,	0
byte_2B79B:	.BYTE	2,$7E,	2,$63,	1,$45,	1,$67,	2,$5E,	2,$48,	2,$6F,	2,$70
					
		.BYTE	1,$28,	2,$27,	3,$15,	4,$57,	2,$4D,	3,  9,	0
byte_2B7B8:	.BYTE	2,$42,	2,$37,	1,$58,	1,$50,	1,$59,	5,$75,	6,$68,	1,$64
					
		.BYTE	1,$64,	5,$74,	2,  2,	3,$20,	3,$5B,	3,  9,	0
byte_2B7D5:	.BYTE	7,$17,	7,$18,	2,  5,	2,$57,	2,$24,	3,$24,	7,$19,	2,$2D
					
		.BYTE	3,  9,	0
byte_2B7E8:	.BYTE	7,$17,	7,$18,	3,$55,	2,$37,	3,$6C,	7,$4F,	7,$50,	2,  5
					
		.BYTE	0
byte_2B7F9:	.BYTE	3,$11,	2,$27,	7,$51,	1,$7A,	2,$36,	4,$3D,	4, $C,	3,$20
					
		.BYTE	5,$6D,	1,$58,	1,$50,	1,$59,	5,$75,	6,$68,	1,$64,	1,$64
		.BYTE	5,$74,	3,  9,	0
byte_2B81E:	.BYTE	2,$57,	2,$48,	1,$58,	1,$50,	1,$59,	5,$75,	6,$68,	1,$64
					
		.BYTE	1,$64,	5,$74,	4,$51,	4,  4,	2,$29,	3,$11,	2,  2,	3,$6A
		.BYTE	3,$19,	7,$49,	3,$19,	7,$52,	4,$4F,	0
byte_2B849:	.BYTE	1,$58,	1,$50,	1,$59,	5,$75,	6,$68,	1,$64,	1,$64,	5,$74
					
		.BYTE	2,$65,	0
byte_2B85C:	.BYTE	2,$37,	2,$7E,	2,$29,	2,$4D,	3,$11,	2,  2,	3,$6A,	3,$19
					
		.BYTE	2,  5,	2,$48,	1,$58,	1,$50,	1,$59,	5,$75,	6,$68,	1,$64
		.BYTE	1,$64,	5,$74,	2,$62,	5,$2C,	3,$58,	3,  9,	0
byte_2B889:	.BYTE	2,$7E,	2,$26,	4,$17,	4,$18,	2,  2,	6,  8,	6,$24,	2,  5
					
		.BYTE	2,$15,	2,$57,	2,$5E,	2,$36,	2,$19,	3,$45,	2,$7E,	2,$58
		.BYTE	3,$45,	1,$58,	1,$50,	1,$59,	5,$75,	6,$68,	1,$64,	1,$64
		.BYTE	5,$74,	7,$53,	3,$20,	3,  9,	0
byte_2B8C2:	.BYTE	3,$35,	2, $C,	2,$57,	4, $B,	2,$37,	3,$6C,	5,$54,	4,$33
					
		.BYTE	3,$6A,	3,  9,	0
byte_2B8D7:	.BYTE	5,$4E,	5,$5D,	2,$57,	7,$54,	7,$55,	2,$4D,	1,$3E,	6,$1A
					
		.BYTE	2,$24,	3,$12,	5,$3A,	2,$26,	7,$56,	1,$2A,	2,  2,	3,$14
		.BYTE	2,$50,	7,$27,	1,$7F,	2,  5,	0
byte_2B900:	.BYTE	2,$57,	3,$46,	4,$55,	4,$56,	7,$49,	2,$65,	0
					
byte_2B90D:	.BYTE	2,$7E,	2,$27,	3,$66,	2,$63,	6,$3A,	5,$2D,	2,$57,	2,  2
					
		.BYTE	6,  8,	6,$24,	3,  9,	0
byte_2B924:	.BYTE	2,$57,	2,$37,	3,$6C,	7,$57,	7,$58,	2,  2,	5,$31,	6,$32
					
		.BYTE	3,  9,	3,$23,	2,$7E,	6,$10,	4,$6C,	1,$6A,	3,$46,	2,$4F
		.BYTE	2,$69,	2,$42,	3,$6C,	1,$48,	3,$46,	3,  9,	0
byte_2B951:	.BYTE	2,$57,	2,$5E,	2,$36,	2,$37,	2,$38,	7,$59,	2,  5,	2,$36
					
		.BYTE	1,$6A,	5,$2B,	4,$3D,	1,$67,	2,  2,	7,$5A,	6,$7F,	3,  9
		.BYTE	0
byte_2B972:	.BYTE	3,$2D,	2,$57,	5,$73,	3,$31,	7,$5B,	3,$3C,	2,$34,	2,$26
					
		.BYTE	2,  2,	2,$6F,	2,$70,	4,$35,	5,$17,	2,$65,	0
byte_2B98F:	.BYTE	4,$6C,	2,  5,	2,$7E,	2,$63,	2,$57,	3,$2C,	3,$2C,	1,$65
					
		.BYTE	4,$67,	2,$12,	3,  9,	0
byte_2B9A6:	.BYTE	7,$17,	7,$18,	0 
byte_2B9AB:	.BYTE	3,$3D,	2,$59,	2,  5,	4,$6C,	1,$6A,	3,$15,	3,  9,	0
					
byte_2B9BA:	.BYTE	2,$57,	2,  2,	3,$6A,	3,$19,	4,$55,	4,$60,	2,$4D,	2,$65
					
		.BYTE	0
byte_2B9CB:	.BYTE	2,$7E,	4, $C,	2,$4D,	2,$57,	2,$48,	7,  9,	3,$2A,	3,$29
					
		.BYTE	2,  2,	4,$6C,	7,$3E,	2,  5,	2,$7E,	5,$1C,	3,$69,	4,  0
		.BYTE	2,  3,	1,$4F,	2,$38,	3,$32,	2, $C,	2,  2,	3,  9,	0
byte_2B9FA:	.BYTE	2,$7E,	2,$40,	2,$19,	3,$45,	3,$2D,	3,$48,	2,$36,	2,$37
					
		.BYTE	1,$58,	1,$50,	1,$59,	5,$75,	6,$68,	1,$64,	1,$64,	5,$74
		.BYTE	2,  2,	7,$42,	7,$43,	3,  9,	0
byte_2BA23:	.BYTE	3,$35,	2, $C,	2,$42,	3,$48,	2,$36,	2,$37,	3,$11,	7,$41
					
		.BYTE	6,$24,	2,  2,	3,  9,	0
byte_2BA3A:	.BYTE	2,$57,	3,$1B,	3,$34,	3,$25,	2,$60,	2,$4D,	2,  5,	2,$7E
					
		.BYTE	2,$5E,	2,$5B,	2,$58,	3,$2B,	4,$79,	4,$19,	2,$42,	2,$59
		.BYTE	4,$4E,	3,  9,	0
byte_2BA5F:	.BYTE	4,$55,	4,$56,	2,$4D,	2,$65,	0 
byte_2BA68:	.BYTE	2,$57,	3,$1B,	3,$34,	7,  9,	3,$2A,	3,$29,	3,$46,	3,$6F
					
		.BYTE	2,$57,	3,$2C,	7,  6,	4,$56,	2,$64,	2,$65,	0
byte_2BA85:	.BYTE	3,$11,	4, $D,	2,$37,	1,$3E,	6,$1A,	2,$24,	3,$12,	1,$68
					
		.BYTE	7,$29,	2,  2,	3,$14,	2,$50,	7,$27,	1,$7F,	2,  5,	2,$60
		.BYTE	2,$61,	4,  5,	1,$65,	4,$67,	2,$12,	3,  9,	0
byte_2BAB2:	.BYTE	2,$37,	2,  2,	2,  5,	2,$57,	1,$6A,	3,$65,	3,$2C,	3,$2C
					
		.BYTE	2,$64,	2,$65,	0,  2,$57,  3,$44,  3,$45,  2,$7E,  2,$5E,  2
		.BYTE $5B,  2,$58,  3,$25,  1,$68,  2,$19,  4,$5A,  3,$3F,  1,$65,  4
		.BYTE $67,  2,$12,  2,$65,  0,	7,$17,	7,$18,	2,  5,	2,$57,	2,$60
		.BYTE	2,$61,	3,$33,	1,$4B,	7,$5C,	3,  9,	0,  5,$4E,  5,$5D,  2
		.BYTE $7E,  2,$5E,  1,$6A,  5,$6A,  6,$29,  2,$42,  4,$67,  2,$12,  2
		.BYTE	5,  0,	3,$25,	4,$6C,	1,$6A,	3,$15,	1,$73,	1,$65,	5,$74
		.BYTE	5,$75,	1,$73,	2,  2,	6,$6E,	7, $C,	3,  9,	0
byte_2BB2F:	.BYTE	4, $D,	4,$3D,	4,$6C,	2,  5,	2,$7E,	2,$5E,	3,$3C,	4,$4E
					
		.BYTE	4,$4F,	0
byte_2BB42:	.BYTE	2,$42,	3,$6C,	3,$1D,	2,$52,	3,$25,	2,$37,	6,$3A,	7,$5D
					
		.BYTE	3,$14,	2,$50,	7,$27,	1,$7F,	2,$65,	0
byte_2BB5D:	.BYTE	7,  9,	3,$2A,	3,$29,	3,$55,	2,$37,	3,$6C,	5,$13,	1,$7A
					
		.BYTE	3,  9,	0
byte_2BB70:	.BYTE	4,$67,	2,$12,	2,$40,	2,$62,	2,$26,	3,$4B,	3,$4C,	1,$6B
					
		.BYTE	7,$5E,	3,  9,	0
byte_2BB85:	.BYTE	3,$23,	2,$7E,	2,$5E,	2,$27,	3,$66,	2,$63,	5,$6A,	6,$29
					
		.BYTE	1,$67,	3,  9,	0
byte_2BB9A:	.BYTE	2,$42,	2,$27,	3,$66,	2,$37,	2,  7,	2, $C,	1,$26,	1,$27
					
		.BYTE	3,$1D,	2,$52,	2,  2,	1,$29,	7,$5F,	3,  9,	0
byte_2BBB7:	.BYTE	3,$69,	3,$1E,	4,$4F,	0 
byte_2BBBE:	.BYTE	1,$67,	4,$3E,	4,  4,	3,$33,	7,$60,	5,$40,	2,  5,	3,$23
					
		.BYTE	1,$67,	2,$62,	2,$26,	4,$33,	5,$2A,	3,  9,	0
byte_2BBDB:	.BYTE	7,$17,	7,$18,	2,  5,	7,$17,	7,$18,	4,$4F,	0
					
byte_2BBE8:	.BYTE	2,$57,	2,$40,	3,$79,	2,$2D,	3,  9,	0 
byte_2BBF3:	.BYTE	2,$7E,	2,$5B,	2,$58,	5,$34,	1,$6A,	2,$4D,	2,$4D,	3,  9
					
		.BYTE	0
byte_2BC04:	.BYTE	2,$7E,	2,$5E,	3,$3C,	4,$4E,	3,  9,	0 
byte_2BC0F:	.BYTE	7,  9,	3,$2A,	3,$29,	4,$55,	4,$56,	4,$60,	2,$4D,	2,$65
					
		.BYTE	0
byte_2BC20:	.BYTE	7,  9,	3,$2A,	3,$29,	3,$29,	1,$68,	2,  8,	3,$40,	2,$4D
					
		.BYTE	2,  5,	2,$7E,	2,$5E,	3,$2B,	4,$79,	4,$19,	4,$4E,	3,  9
		.BYTE	0
byte_2BC41:	.BYTE	7,$2B,	2,  5,	3,$29,	1,$6F,	3,$2A,	2,  5,	3,$35,	2, $C
					
		.BYTE	2,$57,	2,$62,	4,$10,	3,  9,	0
byte_2BC5A:	.BYTE	4,$6C,	2,  5,	2,$57,	4, $B,	2,$62,	4,$10,	3,  9,	7,  9
					
		.BYTE	3,$2A,	3,$29,	4,$55,	4,$56,	4,$60,	2,$4D,	2,$65,	0
byte_2BC79:	.BYTE	2,$7E,	2,$5E,	2,$19,	4,$28,	4,$2A,	4, $D,	2,$42,	3,$6C
					
		.BYTE	4,$4E,	2,  5,	2,$5B,	2,$58,	3,$2B,	4,$79,	4,$19,	2,$42
		.BYTE	2,$59,	3,  9,	0
byte_2BC9E:	.BYTE	6,  8,	4,$32,	3,$58,	3,$59,	4,$62,	7,$61,	5,$34,	3,  9
					
		.BYTE	0
byte_2BCAF:	.BYTE	6,$25,	2,$34,	2,$26,	3,$4B,	3,$4C,	3,$19,	3,$4A,	2,$48
					
		.BYTE	4,$47,	4,$48,	3,$7B,	2,$2C,	7,$62,	1,  4,	3,  9,	0
byte_2BCCE:	.BYTE	2,$34,	2,$26,	5, $F,	3,$34,	2,$36,	4,$62,	4,$63,	1,$47
					
		.BYTE	4,$19,	3,  9,	0
byte_2BCE3:	.BYTE	2,$7E,	2,$5E,	3,$3C,	4,$4E,	3,  9,	0 
byte_2BCEE:	.BYTE	2,$7E,	2,$5E,	3,$3C,	4,$4E,	3,  9,	0 
byte_2BCF9:	.BYTE	2,$29,	5,$25,	4,$32,	4,$69,	4,$4F,	3,$2B,	2,$75,	2,$75
					
		.BYTE	0
byte_2BD0A:	.BYTE	2,$7E,	2,$37,	1,$6E,	2,$49,	2,$4A,	2,  5,	7,$63,	3,$70
					
		.BYTE	1,$6A,	2,  0,	2,$4D,	3,  9,	0
byte_2BD23:	.BYTE	5,$4E,	5,$5D,	2,$26,	3,$19,	4, $C,	3,$3F,	2,  5,	6,$25
					
		.BYTE	3,$7B,	6,  1,	2,$48,	2,$7E,	2,$4B,	2,$4C,	3,  9,	0
byte_2BD42:	.BYTE	4,$79,	7,$64,	7,$65,	2,$40,	2,$26,	2,$18,	3,$7D,	4,  1
					
		.BYTE	3,  9,	0
byte_2BD55:	.BYTE	3,$3D,	2,$59,	2,  5,	2,$57,	6, $A,	2,$48,	1,$6E,	2,$49
					
		.BYTE	2,$4A,	2,$4B,	2,$4C,	2,  5,	2,$7E,	2,$5E,	2, $C,	7,$66
		.BYTE	4,$49,	3,$1D,	2,$52,	3,  9,	0
byte_2BD7E:	.BYTE	7,$2B,	2,  5,	2,$57,	2,$58,	4,$19,	3,$62,	4,$4D,	4,$4E
					
		.BYTE	2,  5,	2,$36,	4,$62,	4,$63,	3,$3F,	2,$42,	2,$4D,	3,  9
		.BYTE	0
byte_2BD9F:	.BYTE	5,$31,	7,$67,	7,$68,	6, $A,	2,  5,	2,$34,	2,$19,	2,$57
					
		.BYTE	6, $A,	3,$3C,	4,$4E,	3,  9,	0
byte_2BDB8:	.BYTE	3,$23,	2,$37,	3,$29,	1,$6F,	3,$2A,	2,$75,	2,$75,	0
					
byte_2BDC7:	.BYTE	3,$25,	3,$6F,	2,$7E,	7,$49,	2,$27,	2,$60,	3,$19,	4,$4E
					
		.BYTE	3,  9,	0
byte_2BDDA:	.BYTE	2,$60,	4,$4E,	2,  5,	3,$25,	7,$69,	3,$74,	2,$57,	2,$4D
					
		.BYTE	3,  9,	3,$2E,	3,$2F,	3,  5,	1,$48,	2,$24,	4,$5A,	3,  9
		.BYTE	0
byte_2BDFB:	.BYTE	3,$5E,	7,$3C,	4,$4F,	0 
byte_2BE02:	.BYTE	3,$3D,	2,$59,	2,  5,	3,$2B,	3,$17,	3,$1E,	3,$2D,	3,$6C
					
		.BYTE	3,$1D,	2,$52,	3,  9,	0
byte_2BE19:	.BYTE	1,$67,	5,$65,	2,$24,	2,$4D,	2,  5,	1,$21,	1,$22,	2,$2B
					
		.BYTE	2,$61,	0
byte_2BE2C:	.BYTE	1,$67,	5,$65,	2,$24,	2,$4D,	2,  5,	1,$1F,	1,$20,	2,$2B
					
		.BYTE	2,$61,	0
byte_2BE3F:	.BYTE	1,$67,	5,$65,	2,$24,	2,$4D,	2,  5,	1,$1D,	1,$1E,	2,$2B
					
		.BYTE	2,$61,	0
byte_2BE52:	.BYTE	1,$67,	5,$65,	2,$24,	2,$4D,	2,  5,	2,$24,	2,$25,	4,$61
					
		.BYTE	2,$2D,	6,$2A,	1,$23,	1,$23,	1,$24,	6,$2B,	0
byte_2BE6F:	.BYTE	1,$67,	5,$65,	2,$24,	2,$4D,	2,  5,	2,$24,	2,$25,	4,$61
					
		.BYTE	2,$2D,	6,$2A,	1,$23,	1,$23,	1,$25,	6,$2B,	0
byte_2BE8C:	.BYTE	2,$27,	3,$6C,	3,$56,	3,$57,	1,$26,	1,$27,	1,$7F,	2,  5
					
		.BYTE	2,$57,	1,$6A,	3,$1B,	3,$34,	3,$56,	3,$57,	0
byte_2BEA9:	.BYTE	2,$57,	2, $B,	2,  7,	2,$4D,	7,  8,	4,$45,	1,$1B,	1,$1C
					
		.BYTE	3,  9,	0
byte_2BEBC:	.BYTE	2,$27,	7,$6A,	5,$31,	3,$19,	2,  2,	7,$6B,	2,$61,	3,  9
					
		.BYTE	0
byte_2BECD:	.BYTE	7,$6C,	7,$6D,	1,$6F,	2,$37,	2,$27,	3,$6C,	1,$40,	1,$31
					
		.BYTE	3,  9,	0
byte_2BEE0:	.BYTE	3,$41,	7, $F,	2,  7,	5,$3A,	3,  9,	0 
byte_2BEEB:	.BYTE	2,$27,	7,$6A,	7,$6E,	7,$6F,	2,  2,	1,$39,	7,$70,	7,$6B
					
		.BYTE	3,  9,	0
byte_2BEFE:	.BYTE	5,$1E,	2,$25,	2,$2E,	7,$26,	2,  5,	2,$7E,	3,$2C,	1,$6A
					
		.BYTE	1,$2E,	6,$58,	3,  9,	0
byte_2BF15:	.BYTE	2,$62,	7,  6,	4,$56,	6,$64,	4,$1F,	3,  9,	0
					
byte_2BF22:	.BYTE	2,$42,	2,$37,	2,$27,	3,$43,	2,  2,	4,$72,	7,  5,	2,$1B
					
		.BYTE	2,  5,	2,$57,	2,$63,	1,$2C,	2,$24,	1,$67,	4,$7F,	2,$65
		.BYTE	0
byte_2BF43:	.BYTE	6,$2A,	2,$37,	6,$2B,	2,$57,	4,$3D,	3,$3F,	2,$4D,	2,$27
					
		.BYTE	3,$43,	4,$72,	7,  5,	2,$1B,	3,  9,	0
byte_2BF5E:	.BYTE	1,$40,	1,$31,	5, $D,	2,$24,	2,$25,	2,$26,	2,$28,	2,$29
					
		.BYTE	2,$2A,	2,  5,	2,$46,	2,$47,	2,$26,	3,$19,	2, $B,	2,  7
		.BYTE	3,  9,	0
byte_2BF81:	.BYTE	3,$6F,	3,$19,	7,$71,	4,$33,	2,  2,	4,$22,	3,  7,	3,  9
					
		.BYTE	0
byte_2BF92:	.BYTE	2,$42,	2,$37,	3,$6C,	3,$52,	5, $B,	1,$47,	7,$72,	1,$48
					
		.BYTE	3,  9,	0
byte_2BFA5:	.BYTE	2,$57,	1,$68,	2,$19,	2,  7,	1,$67,	2, $C,	2,$74,	2,$20
					
		.BYTE	7,  2,	7,  3,	3,$41,	5,  6,	3,  9,	0
byte_2BFC0:	.BYTE	2,$57,	2,$63,	1,$2C,	2,$24,	1,$7A,	1,  5,	2,$64,	2,$65
					
		.BYTE	0
byte_2BFD1:	.BYTE	7,  9,	3,$14,	7,$73,	2,$48,	1,$2D,	1,$2E,	3,  9,	0
					
byte_2BFE0:	.BYTE	2,$26,	3,$6C,	1,$40,	1,$31,	0 
byte_2BFE9:	.BYTE	2,$62,	7,  6,	4,$56,	2,$26,	2,  7,	2,  2,	4,$22,	3,  7
					
		.BYTE	3,  9,	0
byte_2BFFC:	.BYTE	2,$62,	7,  6,	4,$56,	2,$4E,	3,$3B,	2,  2,	3,  9,	0
					
byte_2C00B:	.BYTE	2,$27,	3,$6C,	1,$57,	7,$74,	2,  5,	1,$57,	3,$25,	2,$37
					
		.BYTE	4,$15,	2,$42,	2,$59,	7,$75,	2,$3B,	3,$24,	2,  2,	2,  5
		.BYTE	2,$72,	1,$7A,	1,$47,	4,$19,	2,$4D,	3,  9,	0
byte_2C038:	.BYTE	2,$24,	2,$25,	4,$61,	2,$2D,	6,$2A,	3,$67,	7,$76,	2,  2
					
		.BYTE	7,$77,	7,$78,	3,$7D,	3,$3B,	3,$45,	1,$11,	1,$2B,	2,$48
		.BYTE	1,$14,	1,$2B,	6,$2B,	3,  9,	0
byte_2C061:	.BYTE	2,$57,	2,$63,	1,$2C,	2,$24,	1,$2B,	1,$2C,	2,$64,	2,$65
					
		.BYTE	0
byte_2C072:	.BYTE	4,$42,	2,$2E,	2,$2F,	3,  7,	7,$79,	2,  5,	1,$37,	2,$30
					
		.BYTE	4,$22,	3,$2F,	2,  5,	1,$38,	1,$38,	2,$3B,	2,$5B,	2,$58
		.BYTE	7,$7A,	1,$54,	2,  5,	4, $E,	2,$25,	7,$7B,	3,$15,	2,$6B
		.BYTE	1,$39,	2,  5,	3,$14,	3,$20,	1,$35,	4,$45,	3,$25,	3,$46
		.BYTE	1,$47,	4,$19,	0
byte_2C0B7:	.BYTE	7,$7C,	7,$7D,	5,$65,	2,$24,	2,$4D,	2,  5,	2,$57,	2,$63
					
		.BYTE	2, $B,	2,  7,	5,$65,	6,  2,	2,$64,	2,$65,	0
byte_2C0D4:	.BYTE	2,$57,	2, $B,	2,  7,	2,$4D,	5,$65,	6,  2,	4,$4F,	1,$10
					
		.BYTE	5, $F,	2,  7,	5,$6D,	2,  7,	1,$1B,	1,$1C,	2,$5A,	7,$7C
		.BYTE	7,$7D,	1,$47,	4,$19,	4,$32,	1,$12,	0
byte_2C0FF:	.BYTE	5,$58,	6,$1D,	2,$37,	3,$14,	3,$67,	4,$67,	3,$1E,	0
					
byte_2C10E:	.BYTE	2,$27,	3,$6C,	7,$7E,	7,$7F,	2,  2,	2,$11,	2,$77,	3,$19
					
		.BYTE	2,  2,	7,$6B,	2,$61,	0
byte_2C125:	.BYTE	2,$27,	7,$6A,	3,$72,	3,$14,	8,  0,	2,$59,	2,  2,	7,$6B
					
		.BYTE	2,$61,	0
byte_2C138:	.BYTE	2,$27,	7,$6A,	2,$77,	5,$30,	8,  1,	3,$19,	2,  2,	7,$6B
					
		.BYTE	2,$61,	0
byte_2C14B:	.BYTE	2,$27,	7,$6A,	8,  0,	2,$59,	2,  2,	7,$6B,	2,$61,	0
					
byte_2C15A:	.BYTE	2,$27,	7,$6A,	3,$79,	8,  2,	2,  2,	8,  1,	6,$32,	2,  2
					
		.BYTE	7,$6B,	2,$61,	0
byte_2C16F:	.BYTE	2,$27,	7,$6A,	8,  3,	1,$21,	3,$67,	3,$19,	2,  2,	7,$6B
					
		.BYTE	2,$61,	0
byte_2C182:	.BYTE	2,$27,	7,$6A,	8,  4,	8,  5,	3,$1E,	3,$19,	2,  2,	7,$6B
					
		.BYTE	2,$61,	0
byte_2C195:	.BYTE	2,$42,	2,$59,	5,$14,	5,$14,	4,$1C,	4,$1C,	2,  2,	3,  9
					
		.BYTE	0
byte_2C1A6:	.BYTE	2,$42,	2,$37,	3,$6C,	4,$19,	5,$2C,	2,  5,	2,$57,	2,$63
					
		.BYTE	2, $B,	2,  7,	2,$64,	2,$65,	0
byte_2C1BF:	.BYTE	1,$45,	1,$67,	2,$5E,	2,$5F,	1,$16,	2,$60,	2,$61,	2,$62
					
		.BYTE	2,  7,	1,$10,	5,$4E,	5,$5D,	3,$62,	5,$41,	1,$45,	2,$16
		.BYTE	1,$13,	2,$48,	2,$27,	1,$11,	2,$5F,	1,$16,	1,$12,	0
byte_2C1EE:	.BYTE	2,$62,	7,  6,	4,$56,	2,$4E,	3,$3B,	2,  2,	3,  9,	1,$10
					
		.BYTE	5,$4E,	5,$5D,	8,  6,	1,$7A,	8,  7,	8,  8,	1,$7A,	7,$7C
		.BYTE	7,$7D,	6,$6C,	2,$56,	4,$22,	3,  7,	4,$32,	5, $F,	2,  7
		.BYTE	1,$12,	0
byte_2C221:	.BYTE	2,$4F,	2,  2,	8,  9,	8,  9,	2,$26,	4,$3A,	3,  9,	0
					
byte_2C230:	.BYTE	5,$5A,	3,$71,	2,$1B,	7,$6B,	0 
byte_2C239:	.BYTE	2,$62,	7,  6,	4,$56,	2,$4E,	3,$3B,	2,  2,	0
					
byte_2C246:	.BYTE	2,$57,	2, $B,	2,  7,	2,$4D,	7,  8,	4,$45,	1,$1B,	1,$1C
					
		.BYTE	0
byte_2C257:	.BYTE	2,$42,	2,$59,	2,$2E,	7,$26,	2,$4D,	2,  5,	7,  6,	4,$56
					
		.BYTE	4, $B,	3,$2C,	1,$6A,	1,$2E,	0
byte_2C270:	.BYTE	2,$57,	2,$63,	1,$2C,	2,$24,	1,$4B,	1,$4C,	2,$64,	2,$65
					
		.BYTE	0
byte_2C281:	.BYTE	2,$42,	2,$37,	1,$37,	1,$52,	2,$43,	2,$44,	2,$45,	2,$75
					
		.BYTE	2,$75,	0
byte_2C294:	.BYTE	2,$45,	1,$4C,	5, $D,	2,$42,	2,$37,	1,$37,	1,$52,	2,$43
					
		.BYTE	2,$44,	2,$45,	2,  2,	1,$4B,	1,$4C,	3,  9,	0
byte_2C2B1:	.BYTE	2,$27,	8, $A,	2,$6B,	8, $B,	8, $C,	0 
byte_2C2BC:	.BYTE	1,$1B,	1,$1C,	5, $D,	1,$1F,	1,$20,	2,$2B,	2,$61,	0
					
byte_2C2CB:	.BYTE	2,$57,	2,$63,	1,$2C,	2,$24,	7,  8,	4,$45,	1,$1B,	1,$1C
					
		.BYTE	2,$64,	2,$65,	0
byte_2C2E0:	.BYTE	3,$6F,	3,$19,	7,$71,	4,$33,	2,  2,	4,$22,	3,  7,	1,$10
					
		.BYTE	8, $D,	2,$76,	3,$6C,	8,  6,	1,$7A,	2,  5,	8, $E,	8,  6
		.BYTE	1,$7A,	1,$6F,	2,$4F,	2,  2,	4,$22,	3,  7,	1,$12,	0
byte_2C30F:	.BYTE	2,$57,	2,$63,	1,$2C,	2,$24,	1,$7A,	1,  5,	2,$64,	2,$65
					
		.BYTE	0
byte_2C320:	.BYTE	2,$42,	1,$45,	1,$1B,	1,$1C,	2,$5B,	2,$58,	2,$62,	2,  7
					
		.BYTE	2,$4D,	2,  5,	2,$68,	4,$53,	1,$67,	2,$64,	2,$65,	0
byte_2C33F:	.BYTE	2,$57,	1,$68,	2,$19,	2,  7,	1,$67,	2, $C,	2,$74,	2,$20
					
		.BYTE	7,  2,	7,  3,	2,  5,	2,$57,	2,$63,	2, $B,	2,  7,	1,$2B
		.BYTE	1,$2C,	2,$64,	2,$65,	0
byte_2C366:	.BYTE	8, $F,	8,$10,	0 
byte_2C36B:	.BYTE	2,$57,	2,$63,	1,$2C,	2,$24,	8,$11,	1,  5,	2,$64,	2,$65
					
		.BYTE	0
byte_2C37C:	.BYTE	1,$3C,	2,$48,	2,$27,	2,$28,	8,$12,	5,$3A,	2,  5,	2,$62
					
		.BYTE	7,  6,	4,$56,	2,$26,	2,  7,	2,  2,	0
byte_2C397:	.BYTE	1,$14,	1,$3A,	1,$3B,	5, $D,	1,$67,	2,$33,	5,$34,	2,$2D
					
		.BYTE	1,$52,	8,$13,	0
byte_2C3AC:	.BYTE	3,$52,	1,$2F,	8,$14,	1,$10,	8,$15,	2,  2,	8,$16,	1,$43
					
		.BYTE	5,$16,	1,$12,	0
byte_2C3C1:	.BYTE	2,$57,	2,$63,	1,$2C,	2,$24,	1,$45,	1,  2,	2,$64,	2,$65
					
		.BYTE	0
byte_2C3D2:	.BYTE	3,$2D,	2,$59,	2,$26,	3,$6C,	2,$3D,	2,$3E,	1,$44,	2,  2
					
		.BYTE	7,$6D,	3,  9,	0
byte_2C3E7:	.BYTE	1,$57,	8,$17,	5,$55,	2,$27,	2,$3F,	5,$49,	3,$24,	3,  9
					
		.BYTE	0
byte_2C3F8:	.BYTE	1,$42,	5,$7F,	2,$52,	1,$56,	2,$36,	3,$1A,	8,$18,	2,$58
					
		.BYTE	2,$24,	2,$25,	2,$4D,	3,  9,	0
byte_2C411:	.BYTE	2,$57,	2,$63,	1,$2C,	2,$24,	1,$13,	1,$2B,	1, $E,	1, $F
					
		.BYTE	2,$64,	2,$65,	0
byte_2C426:	.BYTE	2,$57,	3,$46,	2,$5F,	1,$16,	1, $E,	1,$4A,	2,$64,	2,$65
					
		.BYTE	0
byte_2C437:	.BYTE	1,$57,	4,$15,	2,$24,	2,$25,	2,  2,	5, $F,	3,$34,	5,$49
					
		.BYTE	4, $F,	2, $C,	3,  9,	4,$28,	2,$25,	2,$60,	2,$61,	2,$26
		.BYTE	7,  6,	4,$56,	4,$22,	3,  7,	3,  9,	0
byte_2C462:	.BYTE	2,$62,	7,  6,	4,$56,	6,$64,	4,$1F,	3,  9,	0
					
byte_2C46F:	.BYTE	2,$42,	2,$37,	2,$6D,	2,$6E,	2,  2,	4,$72,	7,  5,	2,$1B
					
		.BYTE	2,  5,	2,$57,	2,$63,	1,$2C,	2,$24,	1,$67,	2,$64,	2,$65
		.BYTE	0
byte_2C490:	.BYTE	2,$57,	4,$3D,	3,$3F,	2,$4D,	2,$6D,	2,$6E,	4,$72,	7,  5
					
		.BYTE	2,$1B,	3,  9,	0
byte_2C4A5:	.BYTE	3,$2F,	6,$4A,	1,$48,	8,$19,	8,$1A,	2,  5,	3,$2F,	6,$4A
					
		.BYTE	1,$48,	2,$5B,	2,$58,	1,$6A,	2,  8,	2,  7,	3,  9,	1,$29
		.BYTE	1,$4D,	3,$1A,	7,$2E,	3,$3C,	2,$4D,	2,  5,	2,$7E,	2,$63
		.BYTE	3,$6F,	3,$2F,	6,$4A,	1,$48,	4,$3D,	3,$3F,	1,$29,	1,$2A
		.BYTE	3,  9,	0
byte_2C4E8:	.BYTE	5,$1E,	2,$25,	2,$2E,	7,$26,	2,  5,	2,$7E,	7,  6,	4,$56
					
		.BYTE	2,$36,	3,$2C,	1,$6A,	4,$5A,	3,  9,	0
byte_2C503:	.BYTE	8,$1B,	8,$1C,	1,$6F,	2,$36,	2,$37,	8,$1D,	1,$57,	2,  5
					
		.BYTE	2,$57,	2,$63,	1,$47,	4,$19,	8,$1E,	1,$7A,	2,$64,	2,$65
		.BYTE	0
byte_2C524:	.BYTE	2,$62,	7,  6,	4,$56,	2,$4E,	3,$3B,	2,  2,	3,  9,	0
					
byte_2C533:	.BYTE	1,$54,	2,$38,	2,  2,	1,$3C,	5, $D,	2,$34,	2,$26,	2,  2
					
		.BYTE	2,$35,	2,$36,	2,$37,	1,$54,	2,$38,	2,  2,	3,  9,	7,  6
		.BYTE	4,$56,	6,$5E,	7,$48,	2,$65,	1,$10,	4,$42,	3,$21,	3,$22
		.BYTE	1,$11,	1,$2B,	1,$35,	1,$3C,	4,$32,	1,$12,	0
byte_2C570:	.BYTE	1,$71,	1,$5A,	8,$1F,	2,  5,	1,$5F,	2,  5,	1,$25,	0
					
byte_2C57F:	.BYTE	1,$68,	2,  8,	2,$31,	2,$32,	5,$1A,	3,$71,	3,$56,	3,$57
					
		.BYTE	2,$75,	2,$75,	0
byte_2C594:	.BYTE	1,$67,	1,$47,	1,$6A,	4,$19,	2,  5,	2,$60,	2,$61,	4,$15
					
		.BYTE	5,$55,	2,$27,	2,$3F,	5,$65,	2,$24,	2,$4D,	3,  9,	0
byte_2C5B3:	.BYTE	2,$1D,	2,$1E,	4,$72,	7,  5,	2,$1B,	2,  5,	2,$57,	2,$63
					
		.BYTE	1,$2C,	2,$24,	2,$64,	2,$65,	0
byte_2C5CC:	.BYTE	2,$57,	4,$3D,	3,$3F,	2,$4D,	2,$1D,	2,$1E,	4,$72,	7,  5
					
		.BYTE	2,$1B,	0
byte_2C5DF:	.BYTE	1,$5E,	1,$24,	1,$5A,	3,$4F,	2,$52,	2,  2,	3,$50,	3,$51
					
		.BYTE	4,$62,	4,$63,	3,$1A,	2,$20,	8,$20,	2,$4D,	3,  9,	0
byte_2C5FE:	.BYTE	2,$62,	2,$26,	1,$57,	2,$4D,	0 
byte_2C607:	.BYTE	3,$2D,	2,$59,	2,$26,	3,$6C,	8,$21,	1,$7A,	2,  5,	2,$57
					
		.BYTE	2,$63,	4, $F,	3,$24,	2,$64,	2,$65,	0
byte_2C622:	.BYTE	2,$42,	1,$45,	1,$1B,	1,$1C,	2,$5B,	2,$58,	2,$62,	2,  7
					
		.BYTE	2,$4D,	2,  5,	2,$68,	4,$53,	1,$67,	2,$64,	2,$65,	0
byte_2C641:	.BYTE	3,$2D,	2,$59,	2,$26,	3,$6C,	1,$26,	1,$27,	8,$22,	2,  5
					
		.BYTE	2,$57,	2,$63,	8,$23,	5,$34,	1,$67,	2,$64,	2,$65,	0
byte_2C660:	.BYTE	3,$2D,	2,$59,	2,$26,	3,$6C,	7,$26,	8,$24,	2,  5,	2,$57
					
		.BYTE	2,$63,	8,$25,	2,$64,	2,$65,	0
byte_2C679:	.BYTE	8,$26,	2,$3F,	2,  2,	7,  8,	4,$69,	2,$26,	5,$20,	3,$27
					
		.BYTE	3,  9,	0
byte_2C68C:	.BYTE	2,$57,	2,$63,	1,$2C,	2,$24,	2,$1D,	2,$1E,	1,$1B,	1,$1C
					
		.BYTE	2,$64,	2,$65,	0
byte_2C6A1:	.BYTE	1,$67,	2,$5E,	2,$36,	8,$27,	2,$4D,	2,  5,	1,$6A,	2,  8
					
		.BYTE	2,  7,	2,$4D,	3,  9,	0
byte_2C6B8:	.BYTE	2,$42,	2,$59,	2,$26,	3,$6C,	8,$28,	1,$7A,	2,  5,	1,$6F
					
		.BYTE	2,$25,	2,$62,	2,$26,	7,  6,	4,$56,	2,$26,	2,  7,	2,  2
		.BYTE	4,$22,	3,  7,	3,  9,	0
byte_2C6DF:	.BYTE	3,$2D,	2,$59,	2,$26,	3,$6C,	3,$56,	3,$57,	1,$26,	1,$27
					
		.BYTE	1,$7F,	2,  5,	2,$57,	2,$63,	8,$25,	8,$29,	2,$64,	2,$65
		.BYTE	0
byte_2C700:	.BYTE	1,$54,	1,$55,	5, $D,	2,$4F,	2,$50,	2,$51,	1, $E,	1,$56
					
		.BYTE	2,  2,	2,$53,	2,$54,	1,$55,	3,  9,	0
byte_2C71B:	.BYTE	1,$61,	8,$2A,	1,$24,	6,$67,	1,$25,	2,$55,	1,$25,	8,$2A
					
		.BYTE	1,$5E,	6,$67,	1,$60,	2,$55,	1,$24,	8,$2A,	1,$5E,	6,$67
		.BYTE	1,$5F,	2,$55,	1,$5F,	8,$2A,	1,$60,	6,$67,	1,$61,	1,$25
		.BYTE	2,$55,	1,$61,	1,$25,	8,$2A,	1,$25,	6,$67,	1,$61,	1,$5F
		.BYTE	0
byte_2C75C:	.BYTE	8,$15,	2,$24,	4,$61,	2,$2D,	2,$28,	7,  6,	4,$56,	4,$22
					
		.BYTE	3,  7,	5, $D,	1,$14,	1,$5D,	1,$61,	2,$55,	1,$11,	1,$5D
		.BYTE	1,$24,	2,$55,	8,$2B,	1,$5D,	1,$25,	2,$55,	1,$13,	1,$5D
		.BYTE	1,$5E,	0
byte_2C78F:	.BYTE	3,$2D,	2,$37,	1,$58,	1,$50,	1,$59,	1,$5E,	1,$5A,	6,$7C
					
		.BYTE	1,$4A,	0
byte_2C7A2:	.BYTE	2,$57,	2,$63,	1,$45,	1,$58,	1,$50,	1,$59,	1,$5E,	1,$5A
					
		.BYTE	6,$7C,	1,$4A,	7,$2F,	5,$11,	1,$54,	1,$55,	1,$7A,	2,$64
		.BYTE	2,$65,	0
byte_2C7C5:	.BYTE	1,$58,	1,$50,	1,$59,	1,$24,	8,$2A,	1,$57,	6,$67,	1,$5B
					
		.BYTE	1,$5C,	1,$5D,	1,$23,	1,$23,	1,$25,	0
byte_2C7E0:	.BYTE	1,$5B,	1,$5C,	1,$5D,	1,$23,	1,$23,	1,$25,	8,$2A,	1,$58
					
		.BYTE	1,$50,	1,$59,	1,$5E,	6,$67,	1,$58,	1,$50,	1,$59,	1,$60
		.BYTE	0
byte_2C801:	.BYTE	1,$58,	1,$50,	1,$59,	1,$24,	8,$2A,	1,$58,	1,$50,	1,$59
					
		.BYTE	1,$5E,	6,$67,	1,$32,	1,$5D,	1,$5F,	0
byte_2C81C:	.BYTE	1,$32,	1,$5F,	8,$2A,	1,$58,	1,$50,	1,$59,	1,$60,	6,$67
					
		.BYTE	1,$58,	1,$50,	1,$59,	1,$61,	1,$25,	0
byte_2C837:	.BYTE	1,$58,	1,$50,	1,$59,	1,$61,	1,$25,	8,$2A,	1,$5B,	1,$5C
					
		.BYTE	1,$5D,	1,$23,	1,$23,	1,$25,	6,$67,	1,$62,	1,$5D,	1,$63
		.BYTE	1,$51,	1,$64,	1,$65,	0
byte_2C85E:	.BYTE	1,$6A,	3,$1B,	3,$34,	2,$68,	3, $D,	2,  2,	1,$3C,	2,$58
					
		.BYTE	3,$2D,	2,$59,	0
byte_2C873:	.BYTE	1,$67,	4,$2D,	5,$65,	2,$24,	2,$4D,	2,  5,	4,$45,	1,$47
					
		.BYTE	1,$6A,	4,$19,	0
byte_2C888:	.BYTE	2,$57,	2,$63,	1,$2C,	2,$24,	1, $A,	8,$2C,	1,  5,	2,$64
					
		.BYTE	2,$65,	0
byte_2C89B:	.BYTE	8,$1B,	8,$1C,	1,$6F,	2,$25,	2,$36,	2,$37,	5,$3B,	2,  5
					
		.BYTE	3,$55,	5,$60,	8,$2D,	2,  2,	3,  9,	0
byte_2C8B6:	.BYTE	2,$42,	8,$2E,	8,$2F,	8,$30,	2,$62,	7,  6,	4,$56,	2,$4E
					
		.BYTE	3,$3B,	2,  2,	3,  9,	0
byte_2C8CD:	.BYTE	2,$42,	2,$28,	1,$3C,	8,$31,	2,$4F,	2,  2,	3,$33,	6, $C
					
		.BYTE	6,$18,	3,  9,	0
byte_2C8E2:	.BYTE	2,$7E,	3,$46,	2,$58,	8,$26,	2,$3F,	2,  2,	7,  8,	4,$69
					
		.BYTE	2,$4F,	2,$28,	1,  5,	1, $E,	2,  5,	4,$44,	4,$7A,	1,$67
		.BYTE	2,$5E,	4,$6C,	2,$57,	2,$26,	7,$11,	8,$32,	3,  9,	7,$17
		.BYTE	1,$6F,	0
byte_2C915:	.BYTE	8,$33,	8,$34,	1,$6F,	2,$26,	1,$2F,	8,$35,	2,  5,	8,$15
					
		.BYTE	2,$24,	2,$26,	8,$36,	3,$53,	0
byte_2C92E:	.BYTE	2,$42,	2,$37,	6,$4C,	3,$43,	4,$72,	7,  5,	2,$1B,	2,  5
					
		.BYTE	2,$57,	2,$63,	1,$2C,	2,$24,	1,$67,	2,$64,	2,$65,	0
byte_2C94D:	.BYTE	2,$57,	4,$3D,	3,$3F,	2,$4D,	6,$4C,	3,$43,	4,$72,	7,  5
					
		.BYTE	2,$1B,	0
byte_2C960:	.BYTE	2,$57,	2,$63,	1,$2C,	2,$24,	1,$11,	1,$2B,	1,$35,	1,$3C
					
		.BYTE	2,$64,	2,$65,	0
byte_2C975:	.BYTE	1,$10,	3,$21,	3,$22,	1,$12,	2,$34,	2,$26,	2,  2,	2,$35
					
		.BYTE	2,$36,	2,$37,	1,$54,	2,$38,	2,  2,	2,  5,	7,  6,	4,$56
		.BYTE	6,$5E,	7,$48,	2,$65,	0
byte_2C99C:	.BYTE	2,$42,	3,$6C,	1,$29,	7,$5F,	2,  7,	2, $C,	1,$47,	4,$19
					
		.BYTE	1,$29,	7,$5F,	5,$65,	2,$57,	2,$63,	1,$47,	4,$19,	2,$64
		.BYTE	2,$65,	0
byte_2C9BF:	.BYTE	2,$42,	1,$6F,	2,$26,	2,$27,	3,$6C,	2,$2B,	2,$61,	2,  5
					
		.BYTE	2,$57,	2,$63,	1,$45,	1,$67,	5,$18,	4, $F,	3,$24,	2,$64
		.BYTE	2,$65,	0
byte_2C9E2:	.BYTE	2,$12,	2,$41,	2,$3D,	2,$58,	6,$11,	8,$37,	2,  5,	4,$3D
					
		.BYTE	8,$38,	5,$25,	4,$79,	4,$19,	4,$4F,	0
byte_2C9FD:	.BYTE	1,$21,	2,$60,	8,$39,	2,  5,	1,$68,	2,  8,	2,$11,	2,$12
					
		.BYTE	2,$4D,	4,$4F,	0
byte_2CA12:	.BYTE	8,$3A,	3,  1,	8,$3B,	8,$3C,	4,$28,	3,$1A,	8,$3D,	8,$3E
					
		.BYTE	3,$19,	2,$52,	1,$18,	3,$15,	2,  5,	4,  6,	2, $C,	1,$35
		.BYTE	4,$28,	2,$75,	2,$75,	0
byte_2CA39:	.BYTE	1,$67,	5,$65,	2,$24,	2,$4D,	4,$4F,	0 
byte_2CA44:	.BYTE	2,$3B,	3,$24,	2,  2,	4,$45,	5,$65,	2,$24,	2,$4D,	4,$4F
					
		.BYTE	0
byte_2CA55:	.BYTE	2,$3B,	3,$24,	2,  2,	4,$45,	1,$47,	4,$19,	2,$4D,	4,$4F
					
		.BYTE	0
byte_2CA66:	.BYTE	7,$38,	1,  4,	1,  5,	1,  3,	0 
byte_2CA6F:	.BYTE	1,$67,	3,$2C,	3,$15,	2, $C,	4,$62,	4,$63,	7,$38,	2,$4D
					
		.BYTE	0
byte_2CA80:	.BYTE	2,$27,	1,$45,	1,  4,	1,  5,	1,  3,	2,  5,	2,$57,	2,$63
					
		.BYTE	1,$2C,	2,$24,	1,$67,	2,$64,	0
byte_2CA99:	.BYTE	3,$2F,	6,$4A,	1,$48,	1,$6A,	2,  8,	2,  7,	2,  5,	2,$60
					
		.BYTE	2,$61,	2,$62,	2,$26,	1,$29,	3,  9,	0
byte_2CAB4:	.BYTE	3,$2D,	2,$59,	2,$26,	3,$6C,	1,$46,	2,$3F,	1,$44,	2,  2
					
		.BYTE	7,$6D,	3,  9,	0
byte_2CAC9:	.BYTE	4,$45,	3,$1A,	8,$3F,	8,$40,	8,$41,	8,$41,	4,$4A,	2,$4D
					
		.BYTE	3,  9,	0
byte_2CADC:	.BYTE	2,$27,	2,$28,	4,$15,	2,$24,	2,$25,	8,$42,	4, $F,	2, $C
					
		.BYTE	2,  2,	3,$4F,	2,$52,	2,  2,	5,$12,	8,$43,	3,  9,	0
byte_2CAFB:	.BYTE	2,$24,	2,$25,	2,$26,	8,$44,	1,$3F,	2,  2,	2,$1B,	2,$1C
					
		.BYTE	3,  9,	0
byte_2CB0E:	.BYTE	2,$24,	2,$25,	2,$26,	5,$54,	1,$41,	2,  2,	2,$1B,	2,$1C
					
		.BYTE	3,  9,	0
byte_2CB21:	.BYTE	2,$42,	8,$45,	4,$45,	5,$25,	5,$25,	5,$65,	2,$24,	2,$4D
					
		.BYTE	3,  9,	0
byte_2CB34:	.BYTE	4,$17,	5,$34,	4,$45,	5,$65,	2,$24,	2,$4D,	2,  5,	2,$60
					
		.BYTE	2,$61,	2,$62,	2,$26,	1,$29,	3,  9,	0
byte_2CB4F:	.BYTE	2,$27,	3,$6C,	7,$6D,	2,  5,	1,$68,	2,$19,	1,$77,	1,$29
					
		.BYTE	1,$4D,	3,  9,	0
byte_2CB64:	.BYTE	1,$67,	2,  7,	1,$29,	1,$7A,	5,$65,	5,$65,	2,$24,	2,$4D
					
		.BYTE	3,  9,	0
byte_2CB77:	.BYTE	2,$6B,	2,$6C,	1,$61,	1,$72,	4,$72,	7,  5,	2,$1B,	0
					
byte_2CB86:	.BYTE	2,$6B,	2,$6C,	1,$59,	1,$61,	4,$72,	7,  5,	2,$1B,	0
					
byte_2CB95:	.BYTE	2,$6B,	2,$6C,	1,$24,	1,$72,	4,$72,	7,  5,	2,$1B,	0
					
byte_2CBA4:	.BYTE	2,$6D,	2,$6E,	4,$72,	7,  5,	2,$1B,	0 
byte_2CBAF:	.BYTE	4, $E,	4, $F,	2,$6D,	2,$6E,	4,$72,	7,  5,	2,$1B,	0
					
byte_2CBBE:	.BYTE	2,$1D,	2,$1E,	1,$61,	1,$72,	4,$72,	7,  5,	2,$1B,	0
					
byte_2CBCD:	.BYTE	2,$1D,	2,$1E,	1,$59,	1,$61,	4,$72,	7,  5,	2,$1B,	0
					
byte_2CBDC:	.BYTE	2,$6F,	2,$70,	1,$28,	1,$59,	1,$61,	4,$72,	7,  5,	2,$1B
					
		.BYTE	0
byte_2CBED:	.BYTE	2,$6F,	2,$70,	1,$28,	1,$59,	1,$24,	4,$72,	7,  5,	2,$1B
					
		.BYTE	0
byte_2CBFE:	.BYTE	2,$6F,	2,$70,	1,$28,	1,$59,	1,$25,	4,$72,	7,  5,	2,$1B
					
		.BYTE	0
byte_2CC0F:	.BYTE	2,$6F,	2,$70,	1,$28,	1,$59,	1,$5E,	4,$72,	7,  5,	2,$1B
					
		.BYTE	0
byte_2CC20:	.BYTE	2,$57,	2,$63,	1,$2C,	2,$24,	1,$67,	2,$64,	2,$65,	0
					
byte_2CC2F:	.BYTE	2,$42,	2,$37,	2,$27,	3,$6C,	3,$56,	3,$57,	6,$56,	2,$3B
					
		.BYTE	1,$7F,	2,  5,	5,$4E,	5,$5D,	2,$7E,	2,$26,	1,$50,	1,$51
		.BYTE	8,$46,	1,$53,	3,$25,	1,$68,	2,$19,	4,$3D,	3,$3F,	3,$56
		.BYTE	3,$57,	3,  9,	0
byte_2CC64:	.BYTE	2,$57,	4,$62,	4,$63,	2, $B,	2,  7,	3,$32,	2,$4D,	4,$4F
					
		.BYTE	0
byte_2CC75:	.BYTE	8,$47,	1,$29,	1,$28,	2,  5,	2,$42,	8,$45,	4,$45,	5,$25
					
		.BYTE	5,$25,	5,$65,	2,$24,	2,$4D,	4,$4F,	0
byte_2CC90:	.BYTE	2,$57,	1,$45,	5,$65,	1,$47,	4,$19,	2,$4D,	4,$4F,	0
					
byte_2CC9F:	.BYTE	2,$42,	3,$6C,	1,$29,	7,$5F,	2,  7,	2, $C,	1,$47,	4,$19
					
		.BYTE	1,$29,	1,$7A,	5,$65,	2,  5,	2,$57,	2,$63,	1,$47,	4,$19
		.BYTE	1,$67,	2,$64,	2,$65,	0
byte_2CCC6:	.BYTE	2,$62,	5,$1B,	5,$1C,	2,  5,	1,$67,	2,$62,	1,$29,	3,  9
					
		.BYTE	0
byte_2CCD7:	.BYTE	3,$2D,	2,$59,	2,$26,	3,$6C,	4,$19,	5,$2C,	2,  5,	2,$57
					
		.BYTE	2,$63,	2, $B,	2,  7,	2,$64,	2,$65,	0
byte_2CCF2:	.BYTE	1,$29,	1,$2A,	4,$19,	5,$2C,	2,  5,	3,$2F,	6,$4A,	1,$48
					
		.BYTE	4,$36,	5,$4A,	2,$62,	2,$26,	1,$29,	2,  5,	2,$57,	3,$65
		.BYTE	8,$47,	1,$29,	3,$74,	3,$2F,	6,$4A,	1,$48,	2,$64,	2,$65
		.BYTE	0
byte_2CD23:	.BYTE	3,$2F,	6,$4A,	1,$48,	4,$62,	4,$63,	4,$3D,	3,$3F,	2,$4D
					
		.BYTE	1,$29,	1,$2A,	2,  5,	7,$21,	5,$36,	2,$36,	8,$48,	5, $F
		.BYTE	2,$4D,	0
byte_2CD46:	.BYTE	3,$2F,	6,$4A,	1,$48,	2,$62,	2,$26,	4,$3D,	3,$3F,	2,$4D
					
		.BYTE	1,$29,	1,$2A,	0
byte_2CD5B:	.BYTE	2,$42,	2,$37,	3,$6C,	1,$29,	1,$2A,	1,$26,	1,$27,	1,$7F
					
		.BYTE	2,  5,	2,$26,	2,$28,	2,$7C,	8,$49,	2,$62,	2,$26,	1,$29
		.BYTE	2,  5,	2,$57,	2,$63,	8,$17,	2,$56,	1,$29,	2,$7C,	8,$49
		.BYTE	8,$47,	1,$29,	2,$64,	2,$65,	0
byte_2CD94:	.BYTE	5,$42,	2,$73,	5, $D,	0 
byte_2CD9B:	.BYTE	3,$56,	3,$57,	5, $D,	0 
byte_2CDA2:	.BYTE	6,$25,	4,$70,	4,$71,	2,$63,	1,$47,	4,$19,	2,  2,	7,  8
					
		.BYTE	4,$69,	5, $D,	0
byte_2CDB7:	.BYTE	1,$59,	1,$24,	0 
byte_2CDBC:	.BYTE	1,$59,	1,$25,	0 
byte_2CDC1:	.BYTE	2,$3A,	5,$6A,	0 
byte_2CDC6:	.BYTE	8,$4A,	6,$10,	2, $B,	2,  7,	4,$4F,	2,$55,	2,$55,	2,$55
					
		.BYTE	2,$55,	2,$55,	2,$55,	6,$25,	6,$56,	5,$11,	3,$56,	3,$57
		.BYTE	0
byte_2CDE7:	.BYTE	5,$6E,	8,$48,	2,$11,	2,$75,	2,$75,	2,$75,	2,$75,	2,$75
					
		.BYTE	2,$75,	2,$75,	2,$75,	4,$62,	4,$19,	5,$65,	6,$23,	0
byte_2CE06:	.BYTE	3,$2D,	2,$59,	2,$62,	5,$1B,	5,$1C,	2,  5,	1,$67,	2,$62
					
		.BYTE	1,$29,	3,  9,	0
byte_2CE1B:	.BYTE	2,$7E,	1,$6A,	2,  8,	3,$25,	2,$42,	4,$60,	3,$3C,	2,$4D
					
		.BYTE	4,$4F,	0
byte_2CE2E:	.BYTE	2,$5B,	2,$58,	2,$62,	2,$5C,	2,$63,	4,$2A,	7,$36,	3,$24
					
		.BYTE	2,$4D,	4,$4F,	0
byte_2CE43:	.BYTE	2,$42,	8,$45,	4,$45,	5,$65,	2,$24,	2,$4D,	2,  5,	8,$26
					
		.BYTE	2,$3F,	2,$26,	2,$18,	3,$6C,	8, $E,	8,$4B,	8,$4C,	0
byte_2CE62:	.BYTE	2,$27,	3,$6C,	3,$74,	3,$4F,	2,$52,	8,$47,	1,$57,	2,  2
					
		.BYTE	1,$57,	7,$74,	2,  5,	2,$72,	1,$7A,	1,$47,	4,$19,	2,$4D
		.BYTE	3,  9,	0
byte_2CE85:	.BYTE	2,$27,	8, $A,	1,$47,	8, $B,	8, $C,	3,  9,	0
					
byte_2CE92:	.BYTE	2,$24,	2,$25,	4,$61,	2,$2D,	6,$2A,	3,$67,	7,$76,	2,  2
					
		.BYTE	7,$77,	7,$78,	3,$7D,	3,$3B,	3,$45,	1,$11,	1,$2B,	2,$48
		.BYTE	1,$14,	1,$2B,	6,$2B,	3,  9,	0
byte_2CEBB:	.BYTE	2,$55,	2,$55,	5,$14,	3,$53,	4,$3A,	0 
byte_2CEC6:	.BYTE $FF,$FF,$FF,$FF,	2,$55,	2,$55,	1,$5C,	6,$69,	5,$74,	5,$75
					
		.BYTE	1,$50,	5,$74,	8,$4D,	8,$4E,	0
byte_2CEDF:	.BYTE	8,$4F,	4,$4F,	8,$3A,	2,$59,	2,  5,	3,$74,	2,$57,	2,$42
					
		.BYTE	3,$6C,	3,  9,	0
byte_2CEF4:	.BYTE	2,$37,	2,$27,	3,$6C,	3,$53,	4,$3A,	3,  9,	0
					
byte_2CF01:	.BYTE	2,$7E,	4,$2A,	2,$3B,	3,$24,	3,$21,	3,$22,	2,$27,	4, $F
					
		.BYTE	3,  9,	0
byte_2CF14:	.BYTE	4,$48,	3,$2A,	7,  0,	5, $D,	8,$50,	8,$50,	2,  5,	2,$42
					
		.BYTE	4, $F,	2,$57,	3,$1E,	3,$66,	2,$4D,	4,$4F,	0
byte_2CF31:	.BYTE	4,$45,	3,$1A,	5,$1B,	5,$65,	2,$4D,	3,  9,	0
					
byte_2CF3E:	.BYTE	3,$49,	3,$22,	2,$4A,	4,$30,	2, $F,	2,$4D,	2,  5,	2,$7E
					
		.BYTE	4,$3D,	3,$24,	3, $B,	1,$2D,	1,$2E,	3,  9,	0
byte_2CF5B:	.BYTE	8,  6,	1,$7A,	2,$24,	8,$51,	2,$2D,	2,$27,	8,$31,	1,$11
					
		.BYTE	1,$2B,	2,  2,	1,$3C,	2,  5,	2,$11,	4,$69,	8,$52,	2,$4D
		.BYTE	2,$27,	6,$6B,	3,  9,	0
byte_2CF82:	.BYTE	2,$42,	8,$45,	4,$45,	5,$25,	5,$25,	5,$65,	2,$24,	2,$4D
					
		.BYTE	2,  5,	2,$7E,	2,$40,	2,$37,	1,$45,	1,  3,	2,$4F,	4, $F
		.BYTE	4,$4E,	4,$4F,	0
byte_2CFA7:	.BYTE	5, $F,	3,$28,	1,$7F,	2,$60,	2,$61,	2,$40,	2,$26,	1,$29
					
		.BYTE	4,$4F,	0
byte_2CFBA:	.BYTE	5,$36,	3,$1A,	3,$4F,	2,$52,	2,  2,	5,$21,	4,$3A,	4,$49
					
		.BYTE	2,$2D,	3,  9,	0
byte_2CFCF:	.BYTE	1,$73,	1,$65,	5,$74,	5,$75,	1,$65,	3,  4,	3,$4A,	4,$63
					
		.BYTE	8,$53,	5,$79,	5,$79,	5,$78,	4,$2F,	1,$35,	4,$28,	2,  5
		.BYTE	6,$3A,	5,$6D,	3, $B,	3,$3F,	1,$58,	1,$50,	1,$59,	5,$75
		.BYTE	6,$68,	1,$64,	1,$64,	5,$74,	4,$4B,	4,$4C,	2,  2,	3,$71
		.BYTE	3,$71,	8,$54,	6,$13,	2,  5,	8,$3A,	3,  1,	3,$11,	2,$5E
		.BYTE	7,$36,	3,$3F,	1,$73,	1,$65,	5,$74,	5,$75,	1,$65,	4,$74
		.BYTE	4,$5E,	4,$28,	2,  5,	8,$17,	6,$21,	6,$22,	8,$55,	8,$37
		.BYTE	1,$58,	1,$50,	1,$59,	5,$75,	6,$68,	1,$64,	1,$64,	5,$74
		.BYTE	4,$4B,	4,$4C,	2,  2,	7,$42,	7,$43,	2,  5,	6,$21,	6,$22
		.BYTE	8,$56,	8,$2E,	6,$49,	3,$6D,	5,  6,	5,$79,	8,$57,	2,$5D
		.BYTE	4,$10,	3,$45,	2,$5D,	8,$58,	2,$3B,	2,  6,	4,$45,	2,  2
		.BYTE	3,$21,	3,$22,	1,$15,	2,  5,	3,$25,	2,$58,	3,$21,	3,$22
		.BYTE	1,$15,	2,$3B,	1,$7D,	4,$28,	2,$16,	3,$5E,	2,  5,	3,$54
		.BYTE	2, $C,	5,$6A,	5,$6B,	2,  5,	3,$21,	3,$22,	1,$15,	8,$59
		.BYTE	8,$5A,	2,  2,	8,$5B,	5,$3C,	8,$5C,	7,$64,	1,$7D,	5,$79
		.BYTE	2,$6B,	4,$10,	5,$7F,	5, $D,	3,$21,	3,$22,	1,$15,	3, $D
		.BYTE	3, $E,	2,  5,	8,$3A,	3,  1,	4,$2D,	8,$48,	3,$3F,	1,$6C
		.BYTE	1,$6D,	5, $D,	5,$4A,	5,$70,	8,$5B,	5,$3C,	8,$5C,	3,$21
		.BYTE	3,$22,	2,$5D,	4,$10,	2,  5,	3, $B,	3,$3F,	3,$21,	3,$22
		.BYTE	1,$15,	2,$75,	2,$75,	0
byte_2D106:	.BYTE	8,$5D,	8,$5E,	5,$1E,	1,$38,	1,$29,	7,$5F,	5,  1,	8,$5F
					
		.BYTE	2,$26,	8,$60,	4,$4B,	4,$4C,	0

; =============== S U B	R O U T	I N E =======================================


sub_2D11F:				
		LDA	#$CF 
		STA	sprite_secondByte_31B
		LDA	#$C
		STA	byte_35E
		LDA	#0
		STA	byte_364
		JMP	loc_2D14F
; End of function sub_2D11F


; =============== S U B	R O U T	I N E =======================================


sub_2D131:				
		LDA	#0
		STA	byte_310
		LDA	#$D7 
		STA	sprite_secondByte_31B
		LDA	#$A
		STA	byte_35E
		LDA	#7
		STA	byte_364
		LDA	#0
		STA	byte_360
		LDA	#1
		STA	byte_361

loc_2D14F:				
		LDA	#$1B
		STA	ppu_unk_byte_309
		LDA	#4
		STA	tilemap_size_307
		LDA	#1
		STA	byte_35F
		LDA	#0
		STA	byte_362
		LDA	#0
		STA	byte_363
		JMP	sub_2D1CB
; End of function sub_2D131


; =============== S U B	R O U T	I N E =======================================


sub_2D16B:				
		LDA	#8
		STA	byte_364
		LDA	#$14
		STA	ppu_unk_byte_309
		LDA	#4
		STA	tilemap_size_307
		LDA	#$C
		STA	byte_35E
		LDA	#2
		STA	byte_35F
		LDA	#0
		STA	byte_362
		LDA	#1
		STA	byte_363
		LDA	#$A0 
		STA	sprite_secondByte_31B
		JMP	sub_2D1CB
; End of function sub_2D16B


; =============== S U B	R O U T	I N E =======================================


sub_2D196:				
		LDA	#8
		STA	ppu_unk_byte_309
		LDA	#4
		STA	tilemap_size_307
		LDA	#$C
		STA	byte_35E
		LDA	#5
		STA	byte_35F
		LDA	#0
		STA	byte_362
		LDA	#2
		STA	byte_363
		LDA	#4
		STA	sprite_secondByte_31B
		LDA	#6
		STA	byte_364
		LDA	#0
		STA	byte_360
		LDA	#3
		STA	byte_361
		JMP	sub_2D1CB
; End of function sub_2D196


; =============== S U B	R O U T	I N E =======================================


sub_2D1CB:				
					; sub_2D131+37j ...
		LDA	text_idx_35C
		PHA
		LDA	char_type_id_35D
		PHA
		LDA	byte_364
		AND	#1
		CMP	#0
		BEQ	loc_2D1DF
		JSR	sub_2D397

loc_2D1DF:				
		ASL	text_idx_35C
		ROL	char_type_id_35D
		ASL	char_type_id_35D
		LDA	#$97 
		CLC
		ADC	char_type_id_35D
		STA	ptr_0
		LDA	#$80 
		ADC	#0
		STA	ptr_1
		LDY	#0
		LDA	(ptr_0),Y
		STA	data_2
		INY
		LDA	(ptr_0),Y
		STA	data_3
		LDA	data_2
		CLC
		ADC	text_idx_35C
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

loc_2D21A:				
		LDA	#0
		STA	tilemapHeight_30A
		LDA	sprite_secondByte_31B
		STA	data_2
		LDA	#0
		STA	data_3
		ASL	data_2
		ROL	data_3
		ASL	data_2
		ROL	data_3
		ASL	data_2
		ROL	data_3
		ASL	data_2
		ROL	data_3
		LDA	data_3
		ORA	#$10
		STA	data_3

loc_2D23E:				
		LDA	#0
		STA	tilemapWidth_308

loc_2D243:				
		LDA	tilemapWidth_308
		ASL	A
		TAY
		LDA	(ptr_0),Y
		CMP	#0
		BNE	loc_2D251
		JMP	loc_2D342
; ---------------------------------------------------------------------------

loc_2D251:				
		CMP	#$FF
		BNE	loc_2D29C
		INY
		LDA	(ptr_0),Y
		CMP	#$FF
		BEQ	loc_2D260
		DEY
		JMP	loc_2D29C
; ---------------------------------------------------------------------------

loc_2D260:				
		LDA	ptr_0
		CLC
		ADC	#2
		STA	ptr_0
		LDA	ptr_1
		ADC	#0
		STA	ptr_1
		LDA	tilemapWidth_308
		ASL	A
		CLC
		ADC	ptr_0
		STA	ptr_0
		LDA	ptr_1
		ADC	#0
		STA	ptr_1
		LDA	byte_35E
		SEC
		SBC	tilemapWidth_308
		TAY

loc_2D284:				
		CPY	#0
		BEQ	loc_2D299
		LDA	data_2
		CLC
		ADC	#$40 
		STA	data_2
		LDA	data_3
		ADC	#0
		STA	data_3
		DEY
		JMP	loc_2D284
; ---------------------------------------------------------------------------

loc_2D299:				
		JMP	loc_2D305
; ---------------------------------------------------------------------------

loc_2D29C:				
					; sub_2D1CB+92j
		LDA	(ptr_0),Y
		STA	char_type_id_35D
		INY
		LDA	(ptr_0),Y
		STA	text_idx_35C
		INY
		ASL	text_idx_35C
		ROL	char_type_id_35D
		LDA	ptr_0
		PHA
		LDA	ptr_1
		PHA
		LDA	data_2
		PHA
		LDA	data_3
		PHA
		LDA	tilemap_size_307
		PHA
		LDA	ppu_unk_byte_309
		PHA
		JSR	sub_2D4D7
		PLA
		STA	ppu_unk_byte_309
		PLA
		STA	tilemap_size_307
		PLA
		STA	data_3
		PLA
		STA	data_2
		PLA
		STA	ptr_1
		PLA
		STA	ptr_0
		LDA	data_2
		CLC
		ADC	#$40 
		STA	data_2
		LDA	data_3
		ADC	#0
		STA	data_3
		INC	tilemapWidth_308
		LDA	tilemapWidth_308
		CMP	byte_35E
		BEQ	loc_2D2F6
		BCS	loc_2D2F6
		JMP	loc_2D243
; ---------------------------------------------------------------------------

loc_2D2F6:				
					; sub_2D1CB+126j
		LDA	tilemapWidth_308
		ASL	A
		CLC
		ADC	ptr_0
		STA	ptr_0
		LDA	ptr_1
		ADC	#0
		STA	ptr_1

loc_2D305:				
		LDY	#0
		LDA	(ptr_0),Y
		CMP	#0
		BEQ	loc_2D342
		INC	tilemapHeight_30A
		LDA	tilemapHeight_30A
		CMP	byte_35F
		BEQ	loc_2D31B
		JMP	loc_2D23E
; ---------------------------------------------------------------------------

loc_2D31B:				
		LDA	byte_364
		AND	#8
		CMP	#0
		BEQ	loc_2D339
		JSR	sub_2E7DA
		JSR	sub_2E7DA
		JSR	sub_2E7DA
		JSR	sub_2E7DA
		JSR	sub_2E7DA
		JSR	sub_2E7DA
		JMP	loc_2D33C
; ---------------------------------------------------------------------------

loc_2D339:				
		JSR	sub_2D4FF

loc_2D33C:				
		JSR	sub_2D397
		JMP	loc_2D21A
; ---------------------------------------------------------------------------

loc_2D342:				
					; sub_2D1CB+140j
		LDA	byte_364
		AND	#8
		CMP	#0
		BEQ	loc_2D360
		JSR	sub_2E7DA
		JSR	sub_2E7DA
		JSR	sub_2E7DA
		JSR	sub_2E7DA
		JSR	sub_2E7DA
		JSR	sub_2E7DA
		JMP	loc_2D36C
; ---------------------------------------------------------------------------

loc_2D360:				
		LDA	byte_364
		AND	#2
		CMP	#0
		BNE	loc_2D36C
		JSR	sub_2D4FF

loc_2D36C:				
					; sub_2D1CB+19Cj
		LDA	byte_364
		AND	#4
		CMP	#0
		BNE	loc_2D378
		JSR	sub_2D397

loc_2D378:				
		PLA
		STA	char_type_id_35D
		PLA
		STA	text_idx_35C
		LDA	text_idx_35C
		CLC
		ADC	#1
		STA	text_idx_35C
		LDA	char_type_id_35D
		ADC	#0
		STA	char_type_id_35D
		LDA	#0
		STA	byte_364
		RTS
; End of function sub_2D1CB


; =============== S U B	R O U T	I N E =======================================


sub_2D397:				
					; sub_2D1CB+11p ...
		LDA	tilemapWidth_308
		PHA
		LDA	ppu_unk_byte_309
		PHA
		LDA	tilemap_size_307
		PHA
		LDA	ptr_0
		PHA
		LDA	ptr_1
		PHA
		LDA	data_2
		PHA
		LDA	data_3
		PHA
		LDA	byte_35F
		STA	tilemapTypeUnk_30B
		LDA	#0
		STA	tilemapHeight_30A

loc_2D3BA:				
		LDA	#0
		STA	tilemapWidth_308
		LDA	tilemapTypeUnk_30B
		PHA
		LDA	ppu_unk_byte_309
		PHA
		LDA	tilemap_size_307
		PHA
		JSR	sub_2E44B
		PLA
		STA	tilemap_size_307
		JSR	sub_2D401
		PLA
		STA	ppu_unk_byte_309
		PLA
		STA	tilemapTypeUnk_30B
		INC	tilemapHeight_30A
		LDA	tilemapHeight_30A
		CMP	tilemapTypeUnk_30B
		BNE	loc_2D3BA
		PLA
		STA	data_3
		PLA
		STA	data_2
		PLA
		STA	ptr_1
		PLA
		STA	ptr_0
		PLA
		STA	tilemap_size_307
		PLA
		STA	ppu_unk_byte_309
		PLA
		STA	tilemapWidth_308
		RTS
; End of function sub_2D397


; =============== S U B	R O U T	I N E =======================================


sub_2D401:				
		LDA	#0
		STA	inv_spr_dscr1_30C
		LDX	#0
		STX	ppu_data_70
		INX

loc_2D40B:				
		LDA	ppu_scroll_x_304
		LSR	A
		LSR	A
		LSR	A
		CLC
		ADC	tilemap_size_307
		STA	tilemapTypeUnk_30B
		CMP	#$20 
		BEQ	loc_2D435
		BCS	loc_2D435
		LDA	byte_35E
		ASL	A
		CLC
		ADC	tilemapTypeUnk_30B
		STA	tilemapTypeUnk_30B
		CMP	#$20 
		BCC	loc_2D445
		LDA	#$20 
		STA	tilemapTypeUnk_30B
		JMP	loc_2D445
; ---------------------------------------------------------------------------

loc_2D435:				
					; sub_2D401+1Bj
		LDA	data_2
		PHA
		LDA	data_3
		PHA
		LDA	byte_35E
		ASL	A
		STA	tilemapTypeUnk_30B
		JMP	loc_2D49D
; ---------------------------------------------------------------------------

loc_2D445:				
					; sub_2D401+31j
		LDY	tilemapTypeUnk_30B
		LDA	ppu_scroll_x_304
		LSR	A
		LSR	A
		LSR	A
		CLC
		ADC	tilemap_size_307
		STA	tilemapTypeUnk_30B
		TYA
		SEC
		SBC	tilemapTypeUnk_30B
		STA	tilemapTypeUnk_30B
		INC	ppu_data_70
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

loc_2D471:				
		LDA	byte_310
		STA	ppu_data_70,X
		INX
		INY
		CPY	tilemapTypeUnk_30B
		BCC	loc_2D471
		LDA	tilemapTypeUnk_30B
		LSR	A
		CMP	byte_35E
		BEQ	loc_2D4C3
		LDA	data_2
		PHA
		LDA	data_3
		PHA
		LDA	data_2
		AND	#$E0 
		STA	data_2
		LDA	byte_35E
		ASL	A
		SEC
		SBC	tilemapTypeUnk_30B
		STA	tilemapTypeUnk_30B

loc_2D49D:				
		INC	ppu_data_70
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

loc_2D4B1:				
		LDA	byte_310
		STA	ppu_data_70,X
		INX
		INY
		CPY	tilemapTypeUnk_30B
		BCC	loc_2D4B1
		PLA
		STA	data_3
		PLA
		STA	data_2

loc_2D4C3:				
		JSR	sub_2E500
		INC	inv_spr_dscr1_30C
		LDA	inv_spr_dscr1_30C
		CMP	#2
		BEQ	loc_2D4D3
		JMP	loc_2D40B
; ---------------------------------------------------------------------------

loc_2D4D3:				
		JSR	sub_2E7BB
		RTS
; End of function sub_2D401


; =============== S U B	R O U T	I N E =======================================


sub_2D4D7:				
		LDA	char_type_id_35D
		LSR	A
		CMP	#8
		BCC	loc_2D4E3
		JSR	sub_2E244
		RTS
; ---------------------------------------------------------------------------

loc_2D4E3:				
		LDA	bank_from_343
		PHA

exec_b3_c0_D4E7:
		LDA	#0
		STA	bank_command_346
		LDA	bank_to_344
		STA	bank_from_343
		LDA	#glyphs_3
		STA	bank_to_344
		JSR	bank_switch_28000

loc_2D4FA:
		PLA
		STA	bank_from_343
		RTS
; End of function sub_2D4D7


; =============== S U B	R O U T	I N E =======================================


sub_2D4FF:				
					; sub_2D1CB+19Ep
		LDA	#0
		STA	count_unk_365
		LDY	#$FF

loc_2D506:				
		JSR	sub_2D514
		LDA	input_pressed_34A
		CMP	#0
		BEQ	loc_2D506
		JSR	sub_2D542
		RTS
; End of function sub_2D4FF


; =============== S U B	R O U T	I N E =======================================


sub_2D514:				
		LDA	sprite_type_306
		CMP	#0
		BEQ	loc_2D51C
		RTS
; ---------------------------------------------------------------------------

loc_2D51C:				
		LDA	count_unk_365
		CMP	#$A
		BCC	locret_2D541
		LDA	#0
		STA	count_unk_365
		TYA
		EOR	#1
		TAY
		CLC
		ADC	#$D4 
		STA	byte_200
		LDA	#$5A 
		STA	byte_201
		LDA	#0
		STA	byte_202
		LDA	#$E2 
		STA	byte_203

locret_2D541:				
		RTS
; End of function sub_2D514


; =============== S U B	R O U T	I N E =======================================


sub_2D542:				
		LDA	sprite_type_306
		CMP	#0
		BEQ	loc_2D54A
		RTS
; ---------------------------------------------------------------------------

loc_2D54A:				
		LDA	#$F0 
		STA	byte_200
		RTS
; End of function sub_2D542

; ---------------------------------------------------------------------------
Fonts:		.WORD 0
		.WORD 0
		.WORD 0
		.WORD 0
		.WORD 0
		.WORD 0
		.WORD 0
		.WORD 0
		.WORD off_2D562
off_2D562:	.WORD byte_2D624	
		.WORD byte_2D644
		.WORD byte_2D664
		.WORD byte_2D684
		.WORD byte_2D6A4
		.WORD byte_2D6C4
		.WORD byte_2D6E4
		.WORD byte_2D704
		.WORD byte_2D724
		.WORD byte_2D744
		.WORD byte_2D764
		.WORD byte_2D784
		.WORD byte_2D7A4
		.WORD byte_2D7C4
		.WORD byte_2D7E4
		.WORD byte_2D804
		.WORD byte_2D824
		.WORD byte_2D844
		.WORD byte_2D864
		.WORD byte_2D884
		.WORD byte_2D8A4
		.WORD byte_2D8C4
		.WORD byte_2D8E4
		.WORD byte_2D904
		.WORD byte_2D924
		.WORD byte_2D944
		.WORD byte_2D964
		.WORD byte_2D984
		.WORD byte_2D9A4
		.WORD byte_2D9C4
		.WORD byte_2D9E4
		.WORD byte_2DA04
		.WORD byte_2DA24
		.WORD byte_2DA44
		.WORD byte_2DA64
		.WORD byte_2DA84
		.WORD byte_2DAA4
		.WORD byte_2DAC4
		.WORD byte_2DAE4
		.WORD byte_2DB04
		.WORD byte_2DB24
		.WORD byte_2DB44
		.WORD byte_2DB64
		.WORD byte_2DB84
		.WORD byte_2DBA4
		.WORD byte_2DBC4
		.WORD byte_2DBE4
		.WORD byte_2DC04
		.WORD byte_2DC24
		.WORD byte_2DC44
		.WORD byte_2DC64
		.WORD byte_2DC84
		.WORD byte_2DCA4
		.WORD byte_2DCC4
		.WORD byte_2DCE4
		.WORD byte_2DD04
		.WORD byte_2DD24
		.WORD byte_2DD44
		.WORD byte_2DD64
		.WORD byte_2DD84
		.WORD byte_2DDA4
		.WORD byte_2DDC4
		.WORD byte_2DDE4
		.WORD byte_2DE04
		.WORD byte_2DE24
		.WORD byte_2DE44
		.WORD byte_2DE64
		.WORD byte_2DE84
		.WORD byte_2DEA4
		.WORD byte_2DEC4
		.WORD byte_2DEE4
		.WORD byte_2DF04
		.WORD byte_2DF24
		.WORD byte_2DF44
		.WORD byte_2DF64
		.WORD byte_2DF84
		.WORD byte_2DFA4
		.WORD byte_2DFC4
		.WORD byte_2DFE4
		.WORD byte_2E004
		.WORD byte_2E024
		.WORD byte_2E044
		.WORD byte_2E064
		.WORD byte_2E084
		.WORD byte_2E0A4
		.WORD byte_2E0C4
		.WORD byte_2E0E4
		.WORD byte_2E104
		.WORD byte_2E124
		.WORD byte_2E144
		.WORD byte_2E164
		.WORD byte_2E184
		.WORD byte_2E1A4
		.WORD byte_2E1C4
		.WORD byte_2E1E4
		.WORD byte_2E204
		.WORD byte_2E224
byte_2D624:	.BYTE	0,$3E,$22,$2A,$2A,$2A,$14,$62,	8,$FC,$88,$A8,$A8,$A8,$50,$88
					
		.BYTE	2,$FF,	4,  8,	4,  3,	4,$38,	4,$FE,$20,$20,$40,$80,$60,$10
byte_2D644:	.BYTE	0,$3F,$21,$21,$3F,$21,$21,$3F,	8,$FC,	8,  8,$F8,  8,	8,$F8
					
		.BYTE $21,  1,$FF,  2,	2,  4,$18,$60,	0,  4,$FE,  4,	4,  4,$28,$10
byte_2D664:	.BYTE	0,$42,$32,$14,$87,$60,$20,  9,$40,$50,$48,$40,$FE,$80,$80,$F8
					
		.BYTE $11,$23,$E2,$24,$28,$20,$21,$26,	8,$10,$90,$A0,$40,$B0, $E,  4
byte_2D684:	.BYTE	0,$3F,	1,  1,$FF,  5,	9,$11,$F0,  0,	0,  4,$FE,$40,$20,$10
					
		.BYTE $27,$44,	4,  4,	8,  8,$10,$60,$CE,$44,$40,$40,$42,$42,$3E,  0
byte_2D6A4:	.BYTE	2,  1,$FF,  0,$1F,$10,$10,$10,	0,  4,$FE,$10,$F8,$10,$10,$10
					
		.BYTE $1F,  5, $C,$14,$24,$C5,	6,  4,$F0,  8,$90,$60,$30, $E,	4,  0
byte_2D6C4:	.BYTE $10,$10,$10,$10,$5B,$56,$53,$92,$48,$7C,$40,$48,$FC,  8,$F8,  8
					
		.BYTE $13,$12,$10,$1F,$10,$10,$10,$10,$F8,$40,$44,$FE,$40,$40,$40,$40
byte_2D6E4:	.BYTE $10,$13,$12,$12,$FE,$13,$32,$3A,	8,$FC,	0,  0,	8,$FC,	8,  8
					
		.BYTE $56,$53,$92,$12,$12,$12,$13,$10,	8,$F8,	8,  0,	0,  4,$FE,  0
byte_2D704:	.BYTE	0,  0,	0,$FF,	0,  2,$3F,$22,$50,$48,$40,$FE,$40,$40,$48,$48
					
		.BYTE $22,$22,$3E,$20,	7,$78,	0,  3,$48,$50,$50,$20,$22,$52,$8A,  4
byte_2D724:	.BYTE	1,  1,	1,  1,$1F,$10,$1F,$10,	8,$FC,	0,$10,$F8,$10,$F0,$10
					
		.BYTE $1F,  1,$FF,  3,	5,  9,$31,  1,$F0,  4,$FE,$80,$60,$1C,	8,  0
byte_2D744:	.BYTE	8,  8,	8,  8,$7F,  8,	8,  8,$20,$20,$20,$28,$FC,$20,$20,$20
					
		.BYTE	8,$FF,	8,  8,	8,  8,$10,$20,$24,$FE,$20,$20,$20,$20,$20,$20
byte_2D764:	.BYTE $10,$10,$7E,$12,$12,$12,$2A,$44,	0,  8,$FC,$88,$88,$88,$F8,$80
					
		.BYTE	1,$FF,	3,  5,	9,$11,$61,  1,	4,$FE,$80,$40,$20,$1C,	8,  0
byte_2D784:	.BYTE $10,$13,$12,$1E,$23,$22,$7E,$92,	4,$FE,	4,  4, $C,$8C,$54,$24
					
		.BYTE $12,$7E,$12,$13,$16,$1A,$12,  2,$24,$54,$8C, $C,	4,  4,$14,  8
byte_2D7A4:	.BYTE	4,$7E,	8,$3E,	8,$7E,	1,  2,	8,$FC,$20,$F8,$20,$FC,	0,$80
					
		.BYTE  $C,$32,$C1, $F,	0,  0,	0,  1,$60,$1E,	4,$E0,$20,$40,$80,  0
byte_2D7C4:	.BYTE	8,  8,	8,  8,$7F,  8,	8,  8,$20,$20,$20,$28,$FC,$20,$20,$20
					
		.BYTE	8,  8,$FF,  0,	4, $C,$10,$20,$20,$24,$FE,  0,$40,$30,$18,  8
byte_2D7E4:	.BYTE $11,$11,$11,$11,$FD,$11,$14,$18,	0,  8,$1C,$E0,	2,  2,$FE,  4
					
		.BYTE $31,$D1,$11,$11,$11,$11,$51,$21,$FE,  4,	4,$FC,	4,  4,$FC,  4
byte_2D804:	.BYTE $10,$10,$10,$13,$7C,$54,$57,$54,$90,$90,$90,$FC,$90,$94,$FE,  8
					
		.BYTE $55,$7D,$51,$15,$1D,$F5,$41,  1,$FC,  8,	8,$F8,	8,  8,$F8,  8
byte_2D824:	.BYTE $10,$10,$10,$12,$55,$59,$51,$91,$20,$20,$20,$24,$FE,$24,$24,$24
					
		.BYTE $11,$11,$11,$28,$24,$44,$83,  1,$24,$FC,$24,$20,$24,$3C,$E2,  2
byte_2D844:	.BYTE	4,$FE,$28,$28,$FF,$AA,$AA,$AB,$20,$20,$40,$84,$FE,$48,$86,$42
					
		.BYTE $AE,$C2,$83,$FE,$82,$FE,$82,  1,$78,$88,$48,$50,$20,$50,$8E,  4
byte_2D864:	.BYTE	0,  0,$7F,  1,	1,  1,	1,  1,	0,  8,$FC,  0,	0,  0,	0,  0
					
		.BYTE	1,  1,	1,  1,	1,$FF,	0,  0,	0,  0,	0,  0,	4,$FE,	0,  0
byte_2D884:	.BYTE	8,  8,$FF,  8,	8,  2,	1,$FF,$20,$24,$FE,$20,$20,  0,	4,$FE
					
		.BYTE $10,$10,$10,$10,$10,$10,$1F,  0,	0,  0,	0,  0,	0,$10,$F8,  0
byte_2D8A4:	.BYTE $20,$27,$20,$20,$F8,$27,$74,$6C,	0,$F8,$10,$A0,$44,$FE,$44,$44
					
		.BYTE $A7,$24,$24,$27,$24,$24,$24,$24,$FC,$44,$44,$FC,$44,$44,$54,$48
byte_2D8C4:	.BYTE $20,$20,$27,$20,$FA,$21,$2F,$20,$40,$48,$FC,$40,$48,$50,$FE,  8
					
		.BYTE $23,$22,$3A,$E2,$42,  2,	3,  2,$FC,  8,$E8,$A8,$E8,  8,$F8,  8
byte_2D8E4:	.BYTE $10,$11,$11,$FD,$11,$15,$18,$30,	8,$FC,	8,  8,	8,$F8,$80,$84
					
		.BYTE $D3,$10,$10,$10,$11,$11,$52,$24,$FE,$84,$84,$84,	4,  4,$14,  8
byte_2D904:	.BYTE	2,  4,	8,$7F,$40,$40,$4F,$48,	0,  0,	4,$FE,	4,$24,$F4,$24
					
		.BYTE $48,$48,$48,$4F,$48,$40,$40,$40,$24,$24,$24,$E4,$24,  4,$14,  8
byte_2D924:	.BYTE	1,$21,$21,$3F,$22,$22,$FF,$22,	0,  8,	8,$F8,$28,$20,$7C,$44
					
		.BYTE $22,$22,$3E,$22,$22,$22,$3E,$21,$A8,$20,$20,$20,$50,$48,$8E,  4
byte_2D944:	.BYTE $10,$10,$20,$23,$44,$F8,$11,$22,$40,$20,$24,$FE,	0,$88,	6,  2
					
		.BYTE $40,$FC,	0,  0,$1C,$E0,$41,  2,$88,$50,$20,$50,$50,$88,	6,  4
byte_2D964:	.BYTE	2,$1F,$10,$12,$11,$FF,$10,$12,$10,$F8,$10,$10,$14,$FE,$10,$10
					
		.BYTE $21,$40,$3F,$24,$24,$24,$FF,  0,$50,$20,$F8,$48,$48,$48,$FE,  0
byte_2D984:	.BYTE	1,$41,$32,$14,$80,$60,$20,  9,$10,$10,	8,$44,$40,$A0,$A0,$10
					
		.BYTE $12,$27,$EA,$22,$22,$22,$23,$22,	8,$FE,	8,  8,	8,  8,$F8,  8
byte_2D9A4:	.BYTE $20,$22,$3F,$48,$48,$88,	9,$FF,	0,  0,	8,$FC,$20,$20,$20,$A0
					
		.BYTE	8,$2A,$2A,$2A,$2A,$3E,$23,  2,$20,$20,$20,$20,$20,$24,$FE,  0
byte_2D9C4:	.BYTE	0,$23,$18,  8,$80,$6F,$21,  9,	8,$FC,	0,  0,	4,$FE,	0,  0
					
		.BYTE $11,$23,$E0,$20,$20,$20,$20,$20,	8,$FC,	8,  8,	8,$88,$50,$20
byte_2D9E4:	.BYTE	2,  1,$7F,$44,$9F,  4,$1F,  4,	0,  0,$FE,$42,$F4,$40,$F0,$40
					
		.BYTE $7F,  5,$19,$67,$81,  1,$7F,  0,$FC,$40,$30,$CE,	4,$10,$F8,  0
byte_2DA04:	.BYTE	0,  8,$FC,$13,$10,$12,$7D,$11,$40,$50,$48,$FE,$40,$44,$4C,$50
					
		.BYTE $10,$10,$11,$1E,$E4,  0,	1,  0,$60,$D0,$50,$4E,$44,$40,$40,$80
byte_2DA24:	.BYTE $10,$10,$12,$11,$FD,$10,$37,$38,$40,$40,$44,$4C,$50,$44,$FE,  4
					
		.BYTE $54,$50,$93,$10,$10,$10,$17,$10,	4,  4,$FC,  4,	4,  4,$FC,  4
byte_2DA44:	.BYTE $12,$11,$10,$13,$FC,$10,$33,$3A,	8,$10,$A0,$F8,$48,$48,$F8,$40
					
		.BYTE $56,$53,$90,$11,$12,$14,$18,$10,$44,$FE,$C4,$44,$54,$48,$40,$40
byte_2DA64:	.BYTE $10,$10,$11,$10,$FC,$10,$30,$3B,	0,  8,$FC,$20,$20,$20,$24,$FE
					
		.BYTE $54,$50,$90,$10,$10,$10,$10,$10,$20,$20,$20,$20,$20,$20,$20,$20
byte_2DA84:	.BYTE	8,$1C,$F0,$11,$12,$FC,$10,$39,$40,$40,$FC,$84,$48,$30,$60,$A0
					
		.BYTE $34,$54,$90,$11,$10,$10,$10,$17,$3E,$42,$C4,$24,$18,$30,$C0,  0
byte_2DAA4:	.BYTE $20,$27,$39,$41,$81,$79,$21,$27,	8,$FC,	8,  8,	8,  8,	8,$F8
					
		.BYTE $F9,$21,$21,$29,$31,$21, $F,  0,	8,  8,	8,  8,	8,  8,$FE,  0
byte_2DAC4:	.BYTE $10,$10,$10,$13,$FA,$14,$10,$3F,$40,$20,	0,$FE,	2,$44,$40,$FE
					
		.BYTE $D0,$10,$11,$10,$10,$10,$50,$23,$88,$88,	8,$90,$60,$50,$8C,  4
byte_2DAE4:	.BYTE	2,  1,$7F,  8,	4,$7F,$42,$81,	0,  8,$FC,$20,$40,$FE,	2,  4
					
		.BYTE $7F,  4,	7,  4,	8,  8,$10,$60,$FC,  0,$F0,$10,$10,$10,$A0,$40
byte_2DB04:	.BYTE	0,$47,$34,$14,$87,$64,$24, $F,	8,$FC,	8,  8,$F8,  8,	8,$F8
					
		.BYTE $11,$21,$E9,$25,$23,$21,$3F,$20,$20,$20,$24,$28,$30,$24,$FE,  0
byte_2DB24:	.BYTE	8,  8,$10,$37,$D0,$10,$12,$11,$A0,$90,$FC,$80,$40,$24,$1C,  0
					
		.BYTE $FF, $A,	9,$18,$28,$C9, $A, $C,$FE,  8,$10,$A0,$40,$30, $E,  4
byte_2DB44:	.BYTE $20,$27,$39,$41,$82,$7A,$24,$27,$10,$10,$7C,$14,$FE,$14,$7C,$10
					
		.BYTE $F9,$21,$25,$22,$2A,$35,$28,  0,$7C,$10,$14,$FE,$10,$10,$96,$7C
byte_2DB64:	.BYTE	0,  0,	0,  0,	0,  0,	0, $F,	0,  0,	0,$80,$80,$80,$80,$F8
					
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,$80,$80,$80,$80,$80,  0,	0,  0
byte_2DB84:	.BYTE	8,$28,$2E,$28,$2E,$F8,$42,  4,$80,$80,$98,$E2,$82,$7E,	0,$10
					
		.BYTE $3F,  1,	2,$3F,	1,  9,$11,$23,$E0,  0,$10,$F8,	8,$20,$18,  8
byte_2DBA4:	.BYTE $10,$10,$10,$15,$5A,$50,$53,$92,$80,$80,$FC,  8,$10,$84,$3E,  4
					
		.BYTE $12,$12,$13,$2A,$26,$46,$83,  2,	4,  4,$BC,  4,	4,  4,$FC,  4
byte_2DBC4:	.BYTE	4,$3E,$25,$25,$25,$3D,$25,$25,$20,$14,$FE,  0,$10,$10,$14,$FE
					
		.BYTE $25,$3D,$25,$25,$25,$45,$95, $A,$10,$10,$10,$10,$10,$14,$FE,  0
byte_2DBE4:	.BYTE	1,  9,$31,$27,$22,$3D,$27,$21,	0,  8,$3C,$C8,	8,$38,$C8,  8
					
		.BYTE $39,$27,$21,$FF,	0,$10,$30,$40,$38,$C8,	8,$FE,	0,$10, $C,  4
byte_2DC04:	.BYTE	0,$42,$32,$13,$82,$64,$20, $F,$40,$40,$48,$FC,$40,$40,$44,$FE
					
		.BYTE $10,$20,$E0,$21,$21,$22,$24,$28,$A0,$A0,$A0,$20,$22,$22,$1E,  0
byte_2DC24:	.BYTE	0,  4,	8,$10,$2F,$C4,	4,  9,$80,$80,$40,$20,$D0,$4E,$44,$40
					
		.BYTE $30,  0,$3F,$24,$24,$24,$FF,  0,$80,  8,$FC,$48,$48,$48,$FE,  0
byte_2DC44:	.BYTE $10,$10,$10,$17,$FC,$10,$14,$1B,$A0,$A0,$A4,$BE,$A0,$A0,$A8,$BC
					
		.BYTE $30,$D0,$10,$1F,$10,$10,$50,$20,$A0,$A0,$A4,$BE,$A0,$A0,$A0,$A0
byte_2DC64:	.BYTE	2,$3F,$22,$22,$23,$3E,$22,$22,$20,$20,$20,$24,$FE,$24,$24,$24
					
		.BYTE $3E,$22,$22,$22,$2F,$F0,$41,  2,$24,$24,$44,$44,$44,$84,$28,$10
byte_2DC84:	.BYTE	2,$3F,$22,$22,$3E,$21,$3E,$62,$20,$14,$FE,$44,$28,$FE,$10,$FE
					
		.BYTE $A2,$3E,$20,$1F,	0,  0,$7F,  0,$10,$90,$80,$F8,$80,$84,$FE,  0
byte_2DCA4:	.BYTE $10,$10,$12,$15,$59,$51,$51,$91,$40,$20,$24,$FE,	4,  4,	4,$FC
					
		.BYTE $11,$11,$11,$11,$29,$45,$82,  4,	4,  0,	0,  0,	0,  0,	0,  0
byte_2DCC4:	.BYTE	8,  8,$28,$2E,$28,$28,$2E,$71,$80,$88,$98,$A0,$C0,$84,$84,$7C
					
		.BYTE	1,$FF,	3,  5,	9,$11,$21,  1,	0,$FF,$80,$40,$20,$1C,	8,  0
byte_2DCE4:	.BYTE	9,$FD,	9,  9,	9,$79,$41,$47,	0,  8,	8,$10,$20,$40,	4,$FE
					
		.BYTE $41,$79,	9,  9,	9,  9,$51,$21,$40,$40,$20,$20,$10,$4E,$84,  0
byte_2DD04:	.BYTE $3F,  1,$7F,$49,$85,  9,$3E,$22,$F8,  0,$FE,$22,$44,$20,$40,$78
					
		.BYTE $22,$3F,	8,$2E,$29,$2E,$70,$20,$88,$50,$20,$50,$FE,$88,$88,$F8
byte_2DD24:	.BYTE	8,  8,	9,$7E,	8,  8,$FE,  9,	0,  8,$FC,$20,$20,$20,$24,$FE
					
		.BYTE $28,$28,$2E,$28,$28,$38,$48,$87,$20,$20,$20,$20,$20,$20,	6,$FC
byte_2DD44:	.BYTE $1F,$10,$1F,$10,$1F,  0,$7F,$42,$F0,$10,$F0,$10,$F0,  0,$FE,  2
					
		.BYTE $9F,  4,	9,$1F,	1,$7F,	1,  1,$F4,  0,	0,$F0,	0,$FC,	0,  0
byte_2DD64:	.BYTE	1,  1,	1,$FF,	1,  1,	1,$3F,	0,  0,	4,$FE,	0,  0,$10,$F8
					
		.BYTE	0,  0,$1F,$10,$10,$10,$1F,$10,	0,$10,$F8,$10,$10,$10,$F0,$10
byte_2DD84:	.BYTE	0,$3F,$21,$21,$3F,$20,$28,$30,$78,$80,	0,$10,$F8,$80,$42,$32
					
		.BYTE $20,$1F,$10,$10,$1F,$10,$10,$1F, $E,$F0,$10,$10,$F0,$10,$10,$F0
byte_2DDA4:	.BYTE $10,$10,$1F,$22,$22,$64,$AF,$21,	4,$44,$E4,  4,$94,$54,$D4,$14
					
		.BYTE $21,$2F,$21,$21,$21,$2F,$24,$20,$14,$D4,$14,$14,$C4,  4,$14,  8
byte_2DDC4:	.BYTE $20,$10,$10,$FD,	9,$11,$39,$55,$20,$20,$24,$FE,$24,$24,$24,$FC
					
		.BYTE $91,$11,$11,$11,$11,$10,$10,$10,$24,$24,$24,$FC,$24,$20,$20,$20
byte_2DDE4:	.BYTE	8,$1C,$F0,$10,$11,$FD,$11,$39,	0,$80,$60,$2C,	8,$10,$10,$20
					
		.BYTE $35,$55,$55,$99,$13,$15,$18,$10,$28,$44,$86,  2,	8,  8,$F8,  0
byte_2DE04:	.BYTE $22,$22,$22,$FB,$AD,$A9,$A9,$AF,	0,  0,	4,$FE,$24,$24,$24,$E4
					
		.BYTE $F9,$A1,$29,$39,$EA,$42,	4,  8,$24,$24,$24,$24,$BC,$64,$40,  0
byte_2DE24:	.BYTE $10,$11,$11,$11,$7D,$56,$54,$57,$20,$20,$28,$FC,$20,$20,$24,$FE
					
		.BYTE $54,$7C,$10,$14,$1D,$F6,$44,  0,$60,$70,$B0,$A8,$2E,$24,$20,$20
byte_2DE44:	.BYTE	0,$7F,$40,$42,$62,$54,$54,$48,	4,$FE,	4, $C,$8C,$54,$54,$24
					
		.BYTE $48,$54,$52,$62,$61,$42,$40,$40,$24,$54,$4C,$8C,	4,  4,$14,  8
byte_2DE64:	.BYTE	8,  8,	8,$17,$14,$34,$54,$97,$40,$40,$44,$FE,$44,$44,$44,$FC
					
		.BYTE $14,$14,$14,$17,$14,$10,$10,$10,$44,$44,$44,$FC,$44,$40,$40,$40
byte_2DE84:	.BYTE	4,  4,$FF,  4,	0,$3F,	0,  1,$40,$44,$FE,$40,	0,$F8,$20,$C0
					
		.BYTE  $E,$70,$1F,  1,	1,  1,$FF,  0,$38,  6,$F0,  0,	0,  4,$FE,  0
byte_2DEA4:	.BYTE $10,$10,$10,$FD,$11,$13,$25,$21,$40,$A0,$88,$FC,$20,$28,$FC,$20
					
		.BYTE $51,$51,$91,$25,$45,$7D,	1,  1,$28,$FC,$20,$20,$24,$FE,	0,  0
byte_2DEC4:	.BYTE	2,  1,$3F,$20,$20,$3F,$20,$20,	0,  8,$FC,  8,	8,$F8,	0,  4
					
		.BYTE $3F,$21,$29,$25,$29,$51,$85,  2,$7E,  4,$24,$14,$24,$44,$14,  8
byte_2DEE4:	.BYTE	2,$11,$F8,$27,$21,$41,$42,$77,	8,$98,$A0,$FE,	8,  8,$52,$BC
					
		.BYTE $D0,$51,$51,$52,$54,$77,$50,  0,$84,  8,	8,$10,$A4,$FE,$42,  0
byte_2DF04:	.BYTE $12,$12,$12,$22,$2F,$62,$A2,$22,$10,$10,$10,$10,$FC,$10,$10,$10
					
		.BYTE $22,$3F,$20,$22,$22,$24,$28,$20,$14,$FE,	0,$10,	8, $C,	4,  0
byte_2DF24:	.BYTE $10,$10,$17,$10,$FD,$10,$17,$18,$80,$48,$FC,  0,$10,$A0,$FC,$80
					
		.BYTE $30,$DF,$10,$11,$10,$10,$50,$23,$84,$FE,$90,$10,$A0,$60,$98,  8
byte_2DF44:	.BYTE $20,$20,$20,$27,$F8,$20,$27,$24,$20,$28,$24,$FE,$20,$A0,$E0,$A4
					
		.BYTE $24,$24,$3F,$E0,$43, $C,	0,  1,$A4,$A8,$90,$10,$AA,$4A,$86,  0
byte_2DF64:	.BYTE $10,$13,$12,$12,$FE,$13,$16,$1A,	8,$FC,	0,  0,	8,$FC,	8,  8
					
		.BYTE $32,$D2,$13,$12,$12,$12,$53,$20,	8,  8,$F8,  8,	0,  4,$FE,  0
byte_2DF84:	.BYTE	0,$3F,	0,  0,	0,  0,$FF,  1,$10,$F8,	0,  0,	0,  4,$FE,  0
					
		.BYTE	1,  9,$19,$21,$41,  1,	5,  2,	0,$20,$18, $C,	4,  0,	0,  0
byte_2DFA4:	.BYTE $10,$10,$17,$10,$54,$58,$50,$90,	0,  4,$FE,$20,$20,$20,$20,$20
					
		.BYTE $10,$10,$10,$28,$24,$44,$80,  0,$20,$20,$20,$20,$20,$20,$A0,$40
byte_2DFC4:	.BYTE	0,  0,	3,  6, $C,$18,$18,$18,	0,  0,$E0,$38,$18,  0,	0,  0
					
		.BYTE $18,$18,$18, $C,	6,  3,	0,  0,	0,  0,	0,  8,$30,$E0,	0,  0
byte_2DFE4:	.BYTE	0,  0,$7C,$38,$1C, $E,	7,  3,	0,  0,$1E, $C,$18,$30,$60,$C0
					
		.BYTE	1,  1,	1,  1,	1,  3,	0,  0,$80,$80,$80,$80,$80,$C0,	0,  0
byte_2E004:	.BYTE	0,  8,$75,$51,$53,$59,$55,$51,$80,$88,$FC,  0,$F8,  8,$48,$28
					
		.BYTE $57,$55,$55,$75,$59,  9,	8,  0,$FE,  8,$48,$28,	8,$FC,	8,$30
byte_2E024:	.BYTE	0,  0,	8,$7C,$49,$49,$4A,$4D,$40,$40,$A0,$A0,$10,  8, $E,$F4
					
		.BYTE $48,$48,$4B,$7A,$4A,  2,	3,  2,	0,  8,$FC,  8,	8,  8,$F8,  8
byte_2E044:	.BYTE $10,$17,$14,$14,$FF,$14,$10,$1B,	4,$FE,$A4,$A4,$FC,$44,$50,$F8
					
		.BYTE $30,$D0,$1F,$10,$11,$12,$57,$20,$40,$44,$FE,$80,$10,  8,$FC,  4
byte_2E064:	.BYTE $20,$20,$24,$3E,$51,$90,$14,$FE,$40,$40,$40,$48,$FC,$48,$48,$48
					
		.BYTE $13,$54,$54,$54,$54,$7D,$46,  4,$FE,$40,$40,$A0,$A0,$10, $E,  4
byte_2E084:	.BYTE	0,$3F,$21,$21,$21,$21,$3F,$21,	8,$FC,	0,  0,	0,  4,$FE,  4
					
		.BYTE $21,$21,$21,$22,$42,$44,$88,$10,	4,  4,	4,  4,	4,$44,$28,$10
byte_2E0A4:	.BYTE	0,$7F,$44,$44,$7F,  0,	4,$FC,	4,$FE,$44,$44,$FC,  0,$44,$7E
					
		.BYTE	4,  4,$7C,  4,	4,$FC,	4,  4,$40,$48,$7C,$40,$44,$7E,$40,$40
byte_2E0C4:	.BYTE $10,$13,$12,$13,$FE,$13,$14,$19,	8,$FC,	8,$F8,	8,$F8,$80,  4
					
		.BYTE $33,$D4,$1C,$14,$15,$17,$50,$20,$FE,$44,$44,$A4,$14,$E4,$28,$10
byte_2E0E4:	.BYTE	0,$7F,	8,  8,	8,  8,	8,  8,	0,$F0,$20,$20,$40,$40,$F8,  8
					
		.BYTE $14,$12,$11,$20,$21,$42,$84,  8,$10,$20,$40,$80,$40,$30, $E,  4
byte_2E104:	.BYTE $20,$13,$12,  2,$FE, $A,$12,$32,	8,$FC,	8,$48,$48,$48,$48,$48
					
		.BYTE $5A,$96,$12,$10,$11,$11,$12,$14,$48,$68,$A8,$A0,$22,$22,$1E,  0
byte_2E124:	.BYTE $40,$37,$14,  4,$85,$65,$25, $D,$1C,$E0,	8,$3C,$C0,$40,$40,$24
					
		.BYTE $15,$25,$E5,$25,$25,$29,$29,$11,$2C,$30,$20,$10,$10,$4E,$84,  0
byte_2E144:	.BYTE	8,$FC,	8,$4B,$48,$48,$48,$48,$40,$20,$24,$FE,$20,$20,$20,$28
					
		.BYTE $7D,  4,	4,$1C,$E4,$44,$17,  8,$FC,$20,$20,$20,$20,$24,$FE,  0
byte_2E164:	.BYTE	8,  8,	8, $A,$FF,  8, $A, $C,$40,$40,$40,$40,$40,$40,$40,$40
					
		.BYTE $38,$C8,	8,  8,	8,  8,$28,$10,$40,$40,$40,$40,$42,$42,$3E,  0
byte_2E184:	.BYTE $10,$10,$21,$7D,$46,$44,$44,$7C,$40,$20,$FE,  2,$14,$F8,	0,  4
					
		.BYTE $47,$44,$44,$44,$7D,$45,	2,  4,$FE,$90,$90,$90,$12,$12, $E,  0
byte_2E1A4:	.BYTE $10,$10,$13,$1C,$21,$21,$7D,$91,$20,$24,$FE,$20,$FC,  4,$FC,  4
					
		.BYTE $11,$FD,$11,$11,$17,$18,$11,  2,$FC,  4,$FC,  4,$FE,$88,	6,  2
byte_2E1C4:	.BYTE $20,$17,$10,  3,$FA, $A,$13,$38,	8,$FC,	0,$F8,	8,  8,$F8,  4
					
		.BYTE $57,$94,$14,$17,$14,$14,$17,$14,$FE,$44,$44,$FC,$44,$44,$FC,  4
byte_2E1E4:	.BYTE $10,$10,$10,$10,$54,$52,$52,$90,	4,$84,$84,$84,$A4,$94,$94,$84
					
		.BYTE $10,$10,$10,$10,$20,$20,$40,  0,$84,$84,$84,$84,$84,$84,	4,  4
byte_2E204:	.BYTE $10,$10,$10,$13,$FC,$10,$10,$13,$40,$40,$48,$FC,$40,$40,$40,$F8
					
		.BYTE $1A,$31,$D1,$10,$10,$10,$51,$26,	8,$10,$10,$A0,$40,$B0, $E,  4
byte_2E224:	.BYTE	0,$7D,$45,$49,$49,$51,$49,$49,	8,$FC,	8,  8,$F8,  8,	8,$F8
					
		.BYTE $45,$45,$45,$69,$51,$41,$41,$41,	4,$88,$50,$20,$10,$4E,$84,  0

; =============== S U B	R O U T	I N E =======================================


sub_2E244:				
		LDA	data_2
		PHA
		LDA	data_3
		PHA
		LDA	#$50 
		CLC
		ADC	char_type_id_35D
		STA	ptr_0
		LDA	#$D5 
		ADC	#0
		STA	ptr_1
		LDY	#0
		LDA	(ptr_0),Y
		STA	data_2
		INY
		LDA	(ptr_0),Y
		STA	data_3
		LDA	data_2
		CLC
		ADC	text_idx_35C
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
		PLA
		STA	data_3
		PLA
		STA	data_2
		LDY	#0
		LDA	#0
		STA	has_ppu_data_to_upload_6F
		LDX	#0
		LDA	#5
		STA	ppu_data_70,X
		INX
		LDA	#$40 
		STA	ppu_data_70,X
		INX
		INX
		LDA	data_2
		STA	ppu_data_70,X
		DEX
		LDA	data_3
		STA	ppu_data_70,X
		INX
		INX
		LDA	#0
		STA	inv_spr_dscr1_30C

loc_2E2A5:				
		LDA	byte_360
		ASL	A
		ASL	A
		ASL	A
		STA	tilemapTypeUnk_30B
		LDA	byte_361
		ASL	A
		CLC
		ADC	tilemapTypeUnk_30B
		TAY
		LDA	#0
		STA	tilemapTypeUnk_30B

loc_2E2BC:				
		TYA
		PHA
		CLC
		ADC	tilemapTypeUnk_30B
		TAY
		LDA	byte_2E3B3,Y
		CMP	#0
		BNE	loc_2E2D7
		LDA	inv_spr_dscr1_30C
		ASL	A
		ASL	A
		ASL	A
		TAY
		JSR	sub_2E3D3
		JMP	loc_2E2F9
; ---------------------------------------------------------------------------

loc_2E2D7:				
		CMP	#1
		BNE	loc_2E2E8
		LDA	inv_spr_dscr1_30C
		ASL	A
		ASL	A
		ASL	A
		TAY
		JSR	sub_2E3F1
		JMP	loc_2E2F9
; ---------------------------------------------------------------------------

loc_2E2E8:				
		CMP	#2
		BNE	loc_2E2F2
		JSR	sub_2E411
		JMP	loc_2E2F9
; ---------------------------------------------------------------------------

loc_2E2F2:				
		CMP	#3
		BNE	loc_2E2F9
		JSR	sub_2E42E

loc_2E2F9:				
					; sub_2E244+A1j ...
		PLA
		TAY
		INC	tilemapTypeUnk_30B
		LDA	tilemapTypeUnk_30B
		CMP	#2
		BCC	loc_2E2BC
		INC	inv_spr_dscr1_30C
		LDA	inv_spr_dscr1_30C
		CMP	#4
		BEQ	loc_2E312
		JMP	loc_2E2A5
; ---------------------------------------------------------------------------

loc_2E312:				
		JSR	sub_2E44B
		LDA	sprite_secondByte_31B
		STA	ptr_0
		LDY	tilemapHeight_30A

loc_2E31D:				
		CPY	#0
		BEQ	loc_2E32F
		LDA	byte_35E
		ASL	A
		ASL	A
		CLC
		ADC	ptr_0
		STA	ptr_0
		DEY
		JMP	loc_2E31D
; ---------------------------------------------------------------------------

loc_2E32F:				
		LDA	tilemapWidth_308
		ASL	A
		ASL	A
		CLC
		ADC	ptr_0
		STA	ptr_0
		LDA	#0
		STA	inv_spr_dscr1_30C

loc_2E33E:				
		LDA	data_2
		PHA
		LDA	data_3
		PHA
		LDA	#1
		STA	ppu_data_70,X
		INX
		INX
		LDA	data_2
		STA	ppu_data_70,X
		DEX
		LDA	data_3
		STA	ppu_data_70,X
		INX
		INX
		LDA	ptr_0
		STA	ppu_data_70,X
		INX
		INC	ptr_0
		LDA	data_2
		AND	#$1F
		CMP	#$1F
		BNE	loc_2E374
		LDA	data_2
		SEC
		SBC	#$1F
		STA	data_2
		LDA	data_3
		SBC	#0
		STA	data_3
		JMP	loc_2E381
; ---------------------------------------------------------------------------

loc_2E374:				
		LDA	data_2
		CLC
		ADC	#1
		STA	data_2
		LDA	data_3
		ADC	#0
		STA	data_3

loc_2E381:				
		LDA	#1
		STA	ppu_data_70,X
		INX
		INX
		LDA	data_2
		STA	ppu_data_70,X
		DEX
		LDA	data_3
		STA	ppu_data_70,X
		INX
		INX
		LDA	ptr_0
		STA	ppu_data_70,X
		INX
		PLA
		STA	data_3
		PLA
		STA	data_2
		INC	ptr_0
		JSR	sub_2E500
		INC	inv_spr_dscr1_30C
		LDA	inv_spr_dscr1_30C
		CMP	#2
		BEQ	loc_2E3AF
		JMP	loc_2E33E
; ---------------------------------------------------------------------------

loc_2E3AF:				
		JSR	sub_2E7BB
		RTS
; End of function sub_2E244

; ---------------------------------------------------------------------------
byte_2E3B3:	.BYTE	2,  2,	0,  2,	2,  0,	0,  0,	1,  2,	3,  2,	1,  0,	3,  0
					
		.BYTE	2,  1,	0,  1,	2,  3,	0,  3,	1,  1,	3,  1,	1,  3,	3,  3

; =============== S U B	R O U T	I N E =======================================


sub_2E3D3:				
		LDA	inv_spr_dscr1_30C
		PHA
		LDA	#0
		STA	inv_spr_dscr1_30C

loc_2E3DC:				
		LDA	(ptr_0),Y
		STA	ppu_data_70,X
		INX
		INY
		INC	inv_spr_dscr1_30C
		LDA	inv_spr_dscr1_30C
		CMP	#8
		BCC	loc_2E3DC
		PLA
		STA	inv_spr_dscr1_30C
		RTS
; End of function sub_2E3D3


; =============== S U B	R O U T	I N E =======================================


sub_2E3F1:				
		LDA	inv_spr_dscr1_30C
		PHA
		LDA	#0
		STA	inv_spr_dscr1_30C

loc_2E3FA:				
		LDA	(ptr_0),Y
		EOR	#$FF
		STA	ppu_data_70,X
		INX
		INY
		INC	inv_spr_dscr1_30C
		LDA	inv_spr_dscr1_30C
		CMP	#8
		BCC	loc_2E3FA
		PLA
		STA	inv_spr_dscr1_30C
		RTS
; End of function sub_2E3F1


; =============== S U B	R O U T	I N E =======================================


sub_2E411:				
		LDA	inv_spr_dscr1_30C
		PHA
		LDA	#0
		STA	inv_spr_dscr1_30C

loc_2E41A:				
		LDA	#0
		STA	ppu_data_70,X
		INX
		INC	inv_spr_dscr1_30C
		LDA	inv_spr_dscr1_30C
		CMP	#8
		BCC	loc_2E41A
		PLA
		STA	inv_spr_dscr1_30C
		RTS
; End of function sub_2E411


; =============== S U B	R O U T	I N E =======================================


sub_2E42E:				
		LDA	inv_spr_dscr1_30C
		PHA
		LDA	#0
		STA	inv_spr_dscr1_30C

loc_2E437:				
		LDA	#$FF
		STA	ppu_data_70,X
		INX
		INC	inv_spr_dscr1_30C
		LDA	inv_spr_dscr1_30C
		CMP	#8
		BCC	loc_2E437
		PLA
		STA	inv_spr_dscr1_30C
		RTS
; End of function sub_2E42E


; =============== S U B	R O U T	I N E =======================================


sub_2E44B:				
					; sub_2E244:loc_2E312p
		LDY	tilemapHeight_30A

loc_2E44E:				
		CPY	#0
		BEQ	loc_2E466
		LDA	ppu_unk_byte_309
		CLC
		ADC	byte_363
		STA	ppu_unk_byte_309
		INC	ppu_unk_byte_309
		INC	ppu_unk_byte_309
		DEY
		JMP	loc_2E44E
; ---------------------------------------------------------------------------

loc_2E466:				
		LDA	ppu_unk_byte_303
		STA	ptr_0
		LDA	ppu_scroll_x_304
		LSR	A
		LSR	A
		LSR	A
		CLC
		ADC	tilemap_size_307
		STA	tilemap_size_307
		CMP	#$20 
		BCC	loc_2E482
		SEC
		SBC	#$20 
		STA	tilemap_size_307

loc_2E482:				
		LDA	ppu_scroll_y_305
		LSR	A
		LSR	A
		LSR	A
		CLC
		ADC	ppu_unk_byte_309
		STA	ppu_unk_byte_309
		CMP	#$1E
		BCC	loc_2E49B
		SEC
		SBC	#$1E
		STA	ppu_unk_byte_309
		INC	ptr_0

loc_2E49B:				
		LDA	ptr_0
		AND	#1
		BEQ	loc_2E4AC
		LDA	#0
		STA	data_2
		LDA	#$28 
		STA	data_3
		JMP	loc_2E4B4
; ---------------------------------------------------------------------------

loc_2E4AC:				
		LDA	#0
		STA	data_2
		LDA	#$20 
		STA	data_3

loc_2E4B4:				
		LDY	ppu_unk_byte_309

loc_2E4B7:				
		CPY	#0
		BEQ	loc_2E4CC
		LDA	data_2
		CLC
		ADC	#$20 
		STA	data_2
		LDA	data_3
		ADC	#0
		STA	data_3
		DEY
		JMP	loc_2E4B7
; ---------------------------------------------------------------------------

loc_2E4CC:				
		LDA	#0
		LDY	tilemapWidth_308

loc_2E4D1:				
		CPY	#0
		BEQ	loc_2E4E0
		CLC
		ADC	#2
		CLC
		ADC	byte_362
		DEY
		JMP	loc_2E4D1
; ---------------------------------------------------------------------------

loc_2E4E0:				
		CLC
		ADC	tilemap_size_307
		STA	tilemap_size_307
		CMP	#$20 
		BCC	loc_2E4F1
		SEC
		SBC	#$20 
		STA	tilemap_size_307

loc_2E4F1:				
		LDA	data_2
		CLC
		ADC	tilemap_size_307
		STA	data_2
		LDA	data_3
		ADC	#0
		STA	data_3
		RTS
; End of function sub_2E44B


; =============== S U B	R O U T	I N E =======================================


sub_2E500:				
					; sub_2E244+15Bp
		LDA	ppu_unk_byte_309
		CMP	#$1D
		BNE	loc_2E521
		LDA	data_3
		CMP	#$28 
		BCC	loc_2E514
		LDA	#$20 
		STA	data_3
		JMP	loc_2E518
; ---------------------------------------------------------------------------

loc_2E514:				
		LDA	#$28 
		STA	data_3

loc_2E518:				
		LDA	data_2
		AND	#$1F
		STA	data_2
		JMP	locret_2E52E
; ---------------------------------------------------------------------------

loc_2E521:				
		LDA	data_2
		CLC
		ADC	#$20 
		STA	data_2
		LDA	data_3
		ADC	#0
		STA	data_3

locret_2E52E:				
		RTS
; End of function sub_2E500

; ---------------------------------------------------------------------------
		.WORD byte_2E571
		.WORD byte_2E581
		.WORD byte_2E591
		.WORD byte_2E5A1
		.WORD byte_2E5B1
		.WORD byte_2E5C1
		.WORD byte_2E5D1
		.WORD byte_2E5E1
		.WORD byte_2E5F1
		.WORD byte_2E601
		.WORD byte_2E611
		.WORD byte_2E621
		.WORD byte_2E631
		.WORD byte_2E641
		.WORD byte_2E651
		.WORD byte_2E661
		.WORD byte_2E671
		.WORD byte_2E681
		.WORD byte_2E691
		.WORD byte_2E6A1
		.WORD byte_2E6B1
		.WORD byte_2E6C1
		.WORD byte_2E6D1
		.WORD byte_2E6E1
		.WORD byte_2E6F1
		.WORD byte_2E701
		.WORD byte_2E711
		.WORD byte_2E721
		.WORD byte_2E731
		.WORD byte_2E741
		.WORD byte_2E751
		.WORD byte_2E761
		.WORD byte_2E771
byte_2E571:	.BYTE $3E, $A,$1C,  6,$3E,$1C,$2C,$30, $E, $E, $E, $E, $E, $E, $E, $E
					
byte_2E581:	.BYTE  $F,  0,	8,  6,$35,  0,	0,$30,$26,  0,	0,$2D, $F,  0,	0,$30
					
byte_2E591:	.BYTE $3E,  6,$16,$26,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					
byte_2E5A1:	.BYTE $3E,$28,	9,$38,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					
byte_2E5B1:	.BYTE $3E,$28,	9,$38,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					
byte_2E5C1:	.BYTE $3E,$28,	9,$38,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					
byte_2E5D1:	.BYTE $3E,$28,	9,$38,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					
byte_2E5E1:	.BYTE $3E,$28,	9,$38,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					
byte_2E5F1:	.BYTE $1D,$30,$3D,$2D,$1D,  2,$16,$3D,$1D,  7,$17,$37,$1D,$2D,$3D,$30
					
byte_2E601:	.BYTE $3E,  0,	0,$30,$3E,  0,	0,  0,$3E,  0,	0,  0,$3E,  0,	0,$30
					
byte_2E611:	.BYTE $3E,$1C,$27,$30,$3E,  7,$27,$30,	0,  0,$10,$30,	0,  0,	0,  0
					
byte_2E621:	.BYTE $3E,  5,	8,  6,$3E,  7,$16,$30,	0,  0,	0,  0,$3E,  0,	0,$30
					
byte_2E631:	.BYTE $3E,$28,	9,$38,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					
byte_2E641:	.BYTE $3E,$28,	9,$38,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					
byte_2E651:	.BYTE $3E,$28,	9,$38,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					
byte_2E661:	.BYTE $3E,$28,	9,$38,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					
byte_2E671:	.BYTE  $F,  9, $B,$1A, $F,  7,$17,$37, $F,$2D,$3D,$10, $F,$3E,$3E,$30
					
byte_2E681:	.BYTE  $F,  7,$27,$30, $F,  9, $B,$1B, $F,$2D,$3D,$10, $F,$3E,$3E,$30
					
byte_2E691:	.BYTE  $F,  1,$10,$30, $F,  0,	0,  0, $F,$2D,$3D,$10, $F,$3E,$3E,$30
					
byte_2E6A1:	.BYTE  $F,$1C,	0,$3C, $F,  9, $B,$1B, $F,$2D,$3D,$10, $F,$3E,$3E,$30
					
byte_2E6B1:	.BYTE $3E,$28,	9,$38,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					
byte_2E6C1:	.BYTE $3E,$28,	9,$38,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					
byte_2E6D1:	.BYTE $3E,$30,	4,$3D,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					
byte_2E6E1:	.BYTE $3E,$2D,$3D,$30,$3E,  7,$27,$30,$3E,$16,$27,$38,$3E,  9,$1A,$30
					
byte_2E6F1:	.BYTE $3E,$2D,$3D,$30,$3E,  7,$27,$30,	0,$16,$27,$17,$3E,  9,$1A,$30
					
byte_2E701:	.BYTE $3E,$2D,$3D,$30,$3E,  7,$27,$30,$3E,$2D,$3D,$16,	0,  9,$1B,$30
					
byte_2E711:	.BYTE $3E,$2D,$3D,$30,$3E, $C,$1C,$3E,$3E,  7,$17,$30,$3E,  9,$1A,$30
					
byte_2E721:	.BYTE $3E,$2D,$3D,$30,$3E,  7,$27,$30,	0,  0,	0,  0,$3E,  9,$1A,$30
					
byte_2E731:	.BYTE $3E,  7,$27,$30,	0,$3E,	0,  0,	0,  0,	0,  0,$3E,  9,$1A,$30
					
byte_2E741:	.BYTE $3E,  7,$27,$30,$3E,$14,$27,$33,	0,  0,	0,  0,$3E,  9,$1A,$30
					
byte_2E751:	.BYTE $3E,  1,$11,$21,	0,  0,	0,  0,	0,  0,	0,  0,$3E,$3B, $A,$39
					
byte_2E761:	.BYTE  $F,$30,$1C,$1D, $F,$30,	0,  0, $F,  0,	0,  0, $F,  0,	0,  0
					
byte_2E771:	.BYTE $3E,  1,$16,$21,$3E,  0,$27,$30,	0,  0,	0,  0,	0,  0,	0,  0
					

; =============== S U B	R O U T	I N E =======================================


sub_2E781:				
		LDA	#$2F 
		STA	ptr_0
		LDA	#$E5 
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

loc_2E7B0:				
		LDA	(data_2),Y
		STA	palette_bg_321,Y ; "����������������"
		INY
		CPY	#$10
		BCC	loc_2E7B0
		RTS
; End of function sub_2E781


; =============== S U B	R O U T	I N E =======================================


sub_2E7BB:				
					; sub_2E244:loc_2E3AFp
		LDA	#1
		STA	has_ppu_data_to_upload_6F

loc_2E7BF:				
		LDA	has_ppu_data_to_upload_6F
		BNE	loc_2E7BF
		RTS
; End of function sub_2E7BB


; =============== S U B	R O U T	I N E =======================================


sub_2E7C4:				
		LDA	_PPU_STATUS
		BMI	sub_2E7C4

loc_2E7C9:				
		LDA	_PPU_STATUS
		BPL	loc_2E7C9
		RTS
; End of function sub_2E7C4


; =============== S U B	R O U T	I N E =======================================


wait_for_count350_zero_2E7CF:
		LDA	#1
		STA	frame_render_count_350

loc_2E7D4:				
		LDA	frame_render_count_350
		BNE	loc_2E7D4
		RTS
; End of function wait_for_count350_zero_2E7CF


; =============== S U B	R O U T	I N E =======================================


sub_2E7DA:				
					; sub_2D1CB+15Cp ...
		LDY	#0

loc_2E7DC:				
		LDX	#0

loc_2E7DE:				
		LDA	input_reg1_347
		CMP	#0
		BNE	locret_2E7EB
		INX
		BNE	loc_2E7DE
		INY
		BNE	loc_2E7DC

locret_2E7EB:				
		RTS
; End of function sub_2E7DA


; =============== S U B	R O U T	I N E =======================================


unused_2E7EC:				
		LDA	input_pressed_34A
		CMP	#$80 
		BNE	unused_2E7EC
		RTS
; End of function unused_2E7EC


; =============== S U B	R O U T	I N E =======================================


unused_2E7F4:				
		LDA	input_pressed_34A
		CMP	#$40 
		BNE	unused_2E7F4
		RTS
; End of function unused_2E7F4


; =============== S U B	R O U T	I N E =======================================


unused_2E7FC:				
		LDA	input_pressed_34A
		CMP	#0
		BEQ	unused_2E7FC
		RTS
; End of function unused_2E7FC


; =============== S U B	R O U T	I N E =======================================


sub_2E804:				
		PHA
		JSR	sub_2E80F
		PLA
		SEC
		SBC	#1
		BNE	sub_2E804
		RTS
; End of function sub_2E804


; =============== S U B	R O U T	I N E =======================================


sub_2E80F:				
		PHA
		TXA
		PHA
		TYA
		PHA
		LDX	#0

loc_2E816:				
		LDY	#0

loc_2E818:				
		DEY
		BNE	loc_2E818
		DEX
		BNE	loc_2E816
		PLA
		TAY
		PLA
		TAX
		PLA
		RTS
; End of function sub_2E80F


; =============== S U B	R O U T	I N E =======================================


nmi_sub_2E824:				
		LDA	#$F0 
		STA	byte_218
		STA	byte_21C
		STA	byte_220
		STA	byte_224
		STA	byte_2E8
		STA	byte_2EC
		RTS
; End of function nmi_sub_2E824


; =============== S U B	R O U T	I N E =======================================


sub_2E839:				
		LDA	byte_43E
		BEQ	loc_2E860
		LDA	byte_203
		BNE	loc_2E84B
		LDA	#0
		STA	byte_43E
		JMP	locret_2E881
; ---------------------------------------------------------------------------

loc_2E84B:				
		LDA	byte_203
		SEC
		SBC	#8
		STA	byte_203
		LDA	byte_207
		SEC
		SBC	#8
		STA	byte_207
		JMP	locret_2E881
; ---------------------------------------------------------------------------

loc_2E860:				
		LDA	byte_203
		CMP	#$F8 
		BNE	loc_2E86F
		LDA	#1
		STA	byte_43E
		JMP	locret_2E881
; ---------------------------------------------------------------------------

loc_2E86F:				
		LDA	byte_203
		CLC
		ADC	#8
		STA	byte_203
		LDA	byte_207
		CLC
		ADC	#8
		STA	byte_207

locret_2E881:				
					; sub_2E839+24j ...
		RTS
; End of function sub_2E839


; =============== S U B	R O U T	I N E =======================================


NMI_2E882:				
		PHP
		PHA
		TXA
		PHA
		TYA
		PHA
		LDA	bank_switch_flag_6C
		CMP	#$88 
		BEQ	loc_2E891
		JMP	loc_2E8C2
; ---------------------------------------------------------------------------

loc_2E891:				
		LDA	#$EE 
		STA	bank_switch_flag_6C
		LDA	sprite_type_306
		BNE	loc_2E89D
		JSR	nmi_sub_2E824

loc_2E89D:				
		LDA	#2
		STA	_PPU_OAM_DMA
		JSR	sub_2E8FA
		JSR	sub_2E94F
		JSR	sub_2E968
		LDA	sprite_type_306
		CMP	#1
		BNE	loc_2E8B8
		JSR	sub_2E839
		JSR	sub_2EA05

loc_2E8B8:				
		JSR	sub_2E9CB
		JSR	apu_music_update_2EA5D
		LDA	#$88 
		STA	bank_switch_flag_6C

loc_2E8C2:				
		LDA	byte_432
		BEQ	loc_2E8CA
		DEC	byte_432

loc_2E8CA:				
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
		BEQ	loc_2E8F3
		DEC	frame_render_count_350

loc_2E8F3:				
		PLA
		TAY
		PLA
		TAX
		PLA
		PLP

locret_2E8F9:				
		RTI
; End of function NMI_2E882


; =============== S U B	R O U T	I N E =======================================


sub_2E8FA:				
		LDA	has_ppu_data_to_upload_6F
		BNE	loc_2E8FF
		RTS
; ---------------------------------------------------------------------------

loc_2E8FF:				
		LDA	ppu_data_70
		BEQ	loc_2E94A
		STA	ppu_fld0_x_6D
		LDX	#1

loc_2E907:				
		LDA	ppu_data_70,X
		AND	#$80 
		BEQ	loc_2E91B
		LDA	ppu_ctrl_31F
		ORA	#4
		STA	ppu_ctrl_31F
		STA	_PPU_CTRL
		JMP	loc_2E926
; ---------------------------------------------------------------------------

loc_2E91B:				
		LDA	ppu_ctrl_31F
		AND	#$FB 
		STA	ppu_ctrl_31F
		STA	_PPU_CTRL

loc_2E926:				
		LDA	ppu_data_70,X
		AND	#$7F 
		STA	ppu_fld1_y_6E
		INX
		LDA	ppu_data_70,X
		STA	_PPU_ADDR
		INX
		LDA	ppu_data_70,X
		STA	_PPU_ADDR

loc_2E938:				
		INX
		LDA	ppu_data_70,X
		STA	_PPU_DATA
		DEC	ppu_fld1_y_6E
		BNE	loc_2E938
		DEC	ppu_fld0_x_6D
		BEQ	loc_2E94A
		INX
		JMP	loc_2E907
; ---------------------------------------------------------------------------

loc_2E94A:				
					; sub_2E8FA+4Aj
		LDA	#0
		STA	has_ppu_data_to_upload_6F
		RTS
; End of function sub_2E8FA


; =============== S U B	R O U T	I N E =======================================


sub_2E94F:				
		LDA	ppu_ctrl_31F
		STA	_PPU_CTRL
		LDA	ppu_mask_320
		STA	_PPU_MASK
		LDA	ppu_scroll_x_304
		STA	_PPU_SCROLL
		LDA	ppu_scroll_y_305
		STA	_PPU_SCROLL
		RTS
; End of function sub_2E94F


; =============== S U B	R O U T	I N E =======================================


sub_2E968:				
		TYA
		PHA
		TYA
		PHA
		JSR	pad_input_update_2E980
		JSR	input_sub_2E9A0
		LDA	input_pressed_34A
		ORA	input_unk_34B
		STA	input_unk_349
		PLA
		TAX
		PLA
		TAY
		RTS
; End of function sub_2E968


; =============== S U B	R O U T	I N E =======================================


pad_input_update_2E980:			
		LDX	#1
		STX	_PAD0_REG
		DEX
		STX	_PAD0_REG
		LDA	#0
		LDY	#8

loc_2E98D:				
		PHA
		LDA	_PAD0_REG,X
		STA	input_reg0_34E
		LSR	input_reg0_34E
		PLA
		ROL	A
		DEY
		BNE	loc_2E98D
		STA	input_reg1_347,X
		RTS
; End of function pad_input_update_2E980


; =============== S U B	R O U T	I N E =======================================


input_sub_2E9A0:			
		LDX	#0
		LDA	input_reg1_347,X
		EOR	input_unk_34C,X
		AND	input_reg1_347,X
		STA	input_pressed_34A,X
		LDA	input_reg1_347,X
		STA	input_unk_34C,X
		RTS
; End of function input_sub_2E9A0


; =============== S U B	R O U T	I N E =======================================


unused_2E9B5:
		LDA	ppu_ctrl_31F
		STA	_PPU_CTRL
		LDA	ppu_mask_320
		STA	_PPU_MASK
		RTS
; End of function unused_2E9B5


; =============== S U B	R O U T	I N E =======================================


unused_2E9C2:
		LDA	#0
		STA	_PPU_CTRL
		STA	_PPU_MASK
		RTS
; End of function unused_2E9C2


; =============== S U B	R O U T	I N E =======================================


sub_2E9CB:				
		INC	byte_353
		LDA	byte_353
		CMP	#$19
		BCS	loc_2E9D6
		RTS
; ---------------------------------------------------------------------------

loc_2E9D6:				
		LDA	#0
		STA	byte_353
		LDA	byte_354
		CMP	#0
		BNE	loc_2EA01
		LDA	byte_355
		CMP	#0
		BNE	loc_2E9F9
		LDA	byte_356
		CMP	#0
		BNE	loc_2E9F1
		RTS
; ---------------------------------------------------------------------------

loc_2E9F1:				
		DEC	byte_356
		LDA	#$A
		STA	byte_355

loc_2E9F9:				
		DEC	byte_355
		LDA	#$A
		STA	byte_354

loc_2EA01:				
		DEC	byte_354
		RTS
; End of function sub_2E9CB


; =============== S U B	R O U T	I N E =======================================


sub_2EA05:				
		INC	scroll_offset_x_479
		LDA	scroll_offset_x_479
		CMP	#$A
		BCC	locret_2EA5C
		LDA	scroll_offset_y_47A
		EOR	#$80 
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		AND	#$FE 
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		AND	#$7F 
		CMP	#0
		BEQ	locret_2EA5C
		LDA	scroll_offset_y_47A
		PHA
		LDA	scroll_offset_y_47A
		AND	#$80 
		CMP	#0
		BEQ	loc_2EA3D
		LDA	#0
		STA	ppu_scroll_y_305
		JMP	loc_2EA4F
; ---------------------------------------------------------------------------

loc_2EA3D:				
		LDA	scroll_offset_y_47A
		AND	#$7F 
		STA	scroll_offset_y_47A
		LDA	ppu_scroll_y_305
		CLC
		ADC	scroll_offset_y_47A
		STA	ppu_scroll_y_305

loc_2EA4F:				
		PLA
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		SEC
		SBC	#2
		STA	scroll_offset_y_47A

locret_2EA5C:				
					; sub_2EA05+21j
		RTS
; End of function sub_2EA05


; =============== S U B	R O U T	I N E =======================================


apu_music_update_2EA5D:			
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
		JSR	bank_switch_28000
		PLA
		STA	bank_from_343
		PLA
		STA	bank_to_344
		PLA
		STA	bank_command_346
		RTS
; End of function apu_music_update_2EA5D

; ---------------------------------------------------------------------------
		.BYTE $46,$1F,$89,$5E,$1D,$8B,$46,$1F, $B,$46,$1D,$75,$C7,$8C,$D0,$8D
		.BYTE $5E, $A,	3,$5E,	8,$50,$53,$FF,$76,$1B,$FF,$76,$19,$9A,$7B,  3
		.BYTE $FA, $B,$8B,$E5,$B8,  8,	0,$2B,$46,  8,$83,$C4,$13,$5D,$CB,$55
		.BYTE $83,$EC,	4,$8B,$EC,$8B,$46, $E,$33,$DB,$85,$C0,$79,  1,$4B,$53
		.BYTE $50,$FF,$76, $C,$FF,$76, $A, $E,$E8,$7A,$FF,$8B,$E5,$83,$C4,  4
		.BYTE $5D,$CB,$55,$83,$EC,$16,$8B,$EC,$C7,$46,$14, $B,	0,$C6,$46,$13
		.BYTE	0,$FF,$4E,$14,$8B,$46,$22,$8B,$5E,$20,$33,$C0,$81,$E3,	7,  0
		.BYTE $83,$C3,$30,$15,	0,  0,$8B,$76,$14,$88,$5A,  8,$B9,  3,	0,$8B
		.BYTE $46,$22,$8B,$5E,$20,$D1,$F8,$D1,$DB,$E2,$FA,$25,$FF,$1F,$89,$46
		.BYTE $22,$89,$5E,$20,$8B,$46,$22, $B,$46,$20,$75,$C5,$8C,$D0,$8D,$5E
		.BYTE	8,  3,$5E,$14,$50,$53,$FF,$76,$1E,$FF,$76,$1C,$9A,$7B,	3,$FA
		.BYTE  $B,$8B,$E5,$B8, $B,  0,$2B,$46,$14,$83,$C4,$16,$5D,$CB,$55,$83
		.BYTE $EC,  4,$8B,$EC,$8B,$46, $E,$33,$DB,$85,$C0,$79,	1,$4B,$53,$50
		.BYTE $FF,$76, $C,$FF,$76, $A, $E,$E8,$78,$FF,$8B,$E5,$83,$C4,	4,$5D
		.BYTE $CB,$55,$83,$EC,	2,$8B,$EC,$8B,$46,  8,$3D,$30,	0,$7C, $A,$3D
		.BYTE $39,  0,$7F,  5,$33,$C0,$40,$EB,	2,$33,$C0,$83,$C4,  2,$5D,$CB
		.BYTE $55,$83,$EC,  2,$8B,$EC,$FF,$76,	8,$9A,	7,  0,$2E,$21,$8B,$E5
		.BYTE $85,$C0,$74,  8,$8B,$46,	8,  5,$E0,$FF,$EB,  3,$8B,$46,	8,$83
		.BYTE $C4,  2,$5D,$CB,$55,$83,$EC,  2,$8B,$EC,$8B,$46,	8,$3D,$61,  0
		.BYTE $7C, $A,$3D,$7A,	0,$7F,	5,$33,$C0,$40,$EB,  2,$33,$C0,$83,$C4
		.BYTE	2,$5D,$CB,$CA,$CA,$55,$8B,$EC,$B8,  0,$80,$C6,	6,$BA,	3,  1
		.BYTE $C7,  6,$C4,  0,	0,  0,$A3,$88,$14,$A3,$7E,$14,$5D,$CB,$55,$83
		.BYTE $EC,  2,$8B,$EC,$83,$3E,$84,$CE,	0,$75, $E,$C7,	6,$2A,$D7,  0
		.BYTE	0,$C7,	6,$28,$D7,  0,	0,$EB, $C,$C7,	6,$2A,$D7,  0,	0,$C7
		.BYTE	6,$28,$D7,  1,	0,$83,$C4,  2,$5D,$CB,$55,$83,$EC,  4,$8B,$EC
		.BYTE $FF,$76, $E,$FF,$76, $C,$FF,$76, $A,$9A, $B,  0, $C,$1F,$8B,$E5
		.BYTE $89,$46,	2,$83,$C4,  4,$5D,$CB,$55,$8B,$EC,$5D,$CB,$55,$8B,$EC
		.BYTE $5D,$CB,$55,$83,$EC,  4,$8B,$EC,$FF,$76, $E,$FF,$76, $C,$FF,$76
		.BYTE  $A,$9A,$78,  2, $C,$1F,$8B,$E5,$89,$46,	2,$83,$C4,  4,$5D,$CB
		.BYTE $55,$83,$EC,$22,$8B,$EC,$16,$8D,$46,$1A,$50,$9A,$AD,  3,$FA, $B
		.BYTE $8B,$E5,$C7,$46, $E,  0,	5,$8A,$46,$28,$30,$E4,$16,$8D,$5E,$1A
		.BYTE $53,$16,$8D,$5E,	2,$53,$16,$8D,$5E, $E,$53,$89,$46,$14,$9A,$DB
		.BYTE	3,$FA, $B,$8B,$E5,$83,$C4,$22,$5D,$CB,$55,$8B,$EC,$B8, $D,  0
		.BYTE $50, $E,$E8,$BB,$FF,$8B,$E5,$B8, $A,  0,$50, $E,$E8,$B1,$FF,$8B
		.BYTE $E5,$5D,$CB,$55,$8B,$EC,$C6,  6,$56,$17,	0,$B0,$41,$A2,$5E,$17
		.BYTE $A2,$5D,$17,$5D,$CB,$55,$83,$EC, $A,$8B,$EC,$A1, $F,$C1,$8B,$36
		.BYTE  $D,$C1,$8A,$1E,$B0,$15,$30,$FF,$4B,$A3,$7F,$C0,$89,$36,$7D,$C0
		.BYTE $74,  3,$E9,$41,	1,$A0,$B5,$15,$30,$E4,$85,$C0,$74,$1E,$8E,  6
		.BYTE $7F,$C0,$26,$C6,	4, $A,$FF,$36,$EC,$CE,$9A, $A,	0,$57,$1F,$8B
		.BYTE $E5,$B0,	0,$A2,$B5,$15,$A2,$B0,$15,$E9,$67,  2,$C4,$36,$19,$C1
		.BYTE $26,$8A,	4,$88,$46,  8,$30,$E4,$3D, $A,	0,$89,$46,  0,$75,  3
		.BYTE $E9,$D9,	0,$3D,$1A,  0,$74,  3,$E9,$BC,	0,$B8,	0,$20,$50,$FF
		.BYTE $36,$13,$C1,$FF,$36,$11,$C1,$FF,$36,$EC,$CE,$9A,	8,  0,$22,$20
		.BYTE $8B,$E5,$85,$C0,$A3,$4E,$CE,$75,$1B,$C6,	6,$B0,$15,  0,$C4,$36
		.BYTE $7D,$C0,$26,$C6,	4, $A,$FF,$36,$EC,$CE,$9A, $A,	0,$57,$1F,$8B
		.BYTE $E5,$E9, $F,  2,$A1,$4E,$CE,$3D,	0,$20,$74,$3E,$FF, $E,$4E,$CE
		.BYTE $A1,$13,$C1,$8B,$36,$11,$C1,$8B,$1E,$4E,$CE,  3,$F3,$8E,$C0,$26
		.BYTE $8A, $C,$30,$ED,$83,$F9,$1A,$75,	6,$FF, $E,$4E,$CE,$EB,$E1,$A1
		.BYTE $4E,$CE,$40,$8B,$1E,$13,$C1,$8B,$36,$11,$C1,  3,$F0,$8E,$C3,$26
		.BYTE $C6,  4, $A,$A3,$4E,$CE,$40,$A3,$4E,$CE,$A1,$13,$C1,$8B,$36,$11
		.BYTE $C1,  3,$36,$4E,$CE,$8E,$C0,$26,$C6,  4,$1A,$8B,$36,$11,$C1,$8E
		.BYTE $C0,$26,$8A,$1C,$88,$5E,	8,$30,$FF,$83,$FB, $A,$A3,$1B,$C1,$89
		.BYTE $36,$19,$C1,$75,$12,$FF,	6,$19,$C1,$8A,$46,  8,$C4,$36,$7D,$C0
		.BYTE $26,$88,$44,$FF,$E9,$8C,	1,$C4,$36,$7D,$C0,$FF,	6,$7D,$C0,$8A
		.BYTE $46,  8,$26,$88,	4,$FF,	6,$19,$C1,$E9,$10,$FF,$C4,$36,$7D,$C0
		.BYTE $26,$8A,$44,$FF,$30,$E4,$3D, $D,	0,$75, $C,$26,$C6,$44,$FF, $A
		.BYTE $FF,  6,$19,$C1,$E9,$5C,	1,$C4,$36,$7D,$C0,$26,$C6,  4, $A,$FF
		.BYTE	6,$19,$C1,$E9,$4D,  1,$A0,$B1,$15,$30,$E4,$85,$C0,$74,	3,$E9
		.BYTE $41,  1,$A0,$B5,$15,$30,$E4,$85,$C0,$74, $D,$C6,	6,$B1,$15,  1
		.BYTE $C6,  6,$B5,$15,	0,$E9,$2B,  1,$C4,$36,$15,$C1,$26,$8A,	4,$88
		.BYTE $46,  8,$30,$E4,$3D, $A,	0,$89,$46,  0,$75,  3,$E9,$EE,	0,$3D
		.BYTE $1A,  0,$74,  3,$E9,$D1,	0,$B8,	0,$20,$50,$FF,$36,$1F,$C1,$FF
		.BYTE $36,$1D,$C1,$FF,$36,$EE,$CE,$9A,	8,  0,$22,$20,$8B,$E5,$85,$C0
		.BYTE $A3,$4E,$CE,$A3,$EA,$CE,$75, $D,$C6,  6,$B1,$15,	1,$C6,	6,$B5
		.BYTE $15,  0,$E9,$DE,	0,$81,$3E,$EA,$CE,  0,$20,$74,$3E,$FF, $E,$4E
		.BYTE $CE,$A1,$1F,$C1,$8B,$36,$1D,$C1,$8B,$1E,$4E,$CE,	3,$F3,$8E,$C0
		.BYTE $26,$8A, $C,$30,$ED,$83,$F9,$1A,$75,  6,$FF, $E,$4E,$CE,$EB,$E1
		.BYTE $A1,$4E,$CE,$40,$8B,$1E,$1F,$C1,$8B,$36,$1D,$C1,	3,$F0,$8E,$C3
		.BYTE $26,$C6,	4, $A,$A3,$4E,$CE,$40,$A3,$4E,$CE,$A1,$1F,$C1,$8B,$36
		.BYTE $1D,$C1,	3,$36,$4E,$CE,$8E,$C0,$26,$C6,	4,$1A,$B8,  1,	0,$50
		.BYTE $33,$C0,$50,$33,$DB,$53,$FF,$36,$EE,$CE,$9A,  6,	0,$40,$1F,$8B
		.BYTE $E5,$8B, $E,$1F,$C1,$8B,$36,$1D,$C1,$8E,$C1,$26,$8A,$14,$88,$56
		.BYTE	8,$30,$F6,$83,$FA, $A,$A3,$2E,$D7,$89, $E,$17,$C1,$89,$1E,$2C
		.BYTE $D7,$89,$36,$15,$C1,$75,$11,$FF,	6,$15,$C1,$8A,$46,  8,$C4,$36
		.BYTE $7D,$C0,$26,$88,$44,$FF,$EB,$3B,$C4,$36,$7D,$C0,$FF,  6,$7D,$C0
		.BYTE $8A,$46,	8,$26,$88,  4,$FF,  6,$15,$C1,$E9,$FB,$FE,$C4,$36,$7D
		.BYTE $C0,$26,$8A,$44,$FF,$30,$E4,$3D, $D,  0,$75, $B,$26,$C6,$44,$FF
		.BYTE  $A,$FF,	6,$15,$C1,$EB, $C,$C4,$36,$7D,$C0,$26,$C6,  4, $A,$FF
		.BYTE	6,$15,$C1,$83,$C4, $A,$5D,$CB,$55,$83,$EC, $E,$8B,$EC,$C7,$46
		.BYTE  $C,  0,	0,$8B,$46,$16,$8B,$5E,$14,$89,$46,  6,$89,$5E,	4,$C4
		.BYTE $76,$14,$26,$8A,	4,$30,$E4,$3D, $A,  0,$74,  5,$FF,$46,$14,$EB
		.BYTE $EE,$8B,$46,$16,$8B,$5E,$14,$89,$46, $A,$89,$5E,	8,$C4,$76,$14
		.BYTE $26,$8A,	4,$30,$E4,$3D,$2E,  0,$89,$46,	0,$74,$18,$3D,$2F,  0
		.BYTE $74,$13,$8C,$C0,$8B,$DE,$3B,$46,	6,$75,	3,$3B,$5E,  4,$74,  5
		.BYTE $FF,$4E,$14,$EB,$D8,$C4,$76,$14,$26,$8A,	4,$30,$E4,$3D,$2E,  0
		.BYTE $74,$23,$C4,$76,	8,$26,$C6,  4,$2E,$8A,$46,$18,$26,$88,$44,  1
		.BYTE $8A,$46,$1A,$26,$88,$44,	2,$8A,$46,$1C,$26,$88,$44,  3,$26,$C6
		.BYTE $44,  4,	0,$EB,	7,$C4,$76,  8,$26,$C6,	4,  0,$8B,$46, $C,$83
		.BYTE $C4, $E,$5D,$CB,$55,$83,$EC, $C,$8B,$EC,$C7,  6,$80,$CE,	0,  0
		.BYTE $8B,$46,$14,$8B,$5E,$12,$81,$CB,	3,  0,$83,$C3,	1,$15,	0,  0
		.BYTE $8B, $E,$BE,  3,$D1,$E1,$D1,$E1,$8B,$F1,$50,$53,$89,$46,$14,$89
		.BYTE $5E,$12,$89,$76,	0,$9A,	3,  0,$9B,$1F,$8B,$E5,$8B,$76,	0,$89
		.BYTE $84,$CF,$CD,$89,$9C,$CD,$CD,$A1,$BE,  3,$FF,  6,$BE,  3,$D1,$E0
		.BYTE $D1,$E0,$8B,$F0,$8B,$84,$CF,$CD,$8B,$9C,$CD,$CD,$89,$46, $A, $B
		.BYTE $C3,$89,$5E,  8,$75,  6,$C7,  6,$80,$CE,	1,  0,$8B,$46, $A,$8B
		.BYTE $5E,  8,$83,$C4, $C,$5D,$CB,$55,$83,$EC, $E,$8B,$EC,$C7,	6,$80
		.BYTE $CE,  0,	0,$8B,$46,$14,$89,$46, $C, $D,	3,  0,$40,$89,$46, $C
		.BYTE	5,  4,	0,$8B,$1E,$C4,	0,$3B,$D8,$89,$46,  0,$72,$27,$8B, $E
		.BYTE $9F,$C0,$8B,$16,$9D,$C0,$8B,$46, $C,$89,$56,  8,	3,$D0,$83,$C2
		.BYTE	4,$8B,$46,  0,$29,  6,$C4,  0,$89, $E,$9F,$C0,$89,$4E, $A,$89
		.BYTE $16,$9D,$C0,$EB,$72,$A1,$BE,  3,$D1,$E0,$D1,$E0,$8B,$F0,$B8,$80
		.BYTE $FF,$50,$89,$76,	0,$9A,	3,  0,$9B,$1F,$8B,$E5,$8B,$76,	0,$89
		.BYTE $84,$CF,$CD,$89,$9C,$CD,$CD,$A1,$BE,  3,$FF,  6,$BE,  3,$D1,$E0
		.BYTE $D1,$E0,$8B,$F0,$8B,$84,$CF,$CD,$8B,$9C,$CD,$CD,$89,$46, $A,$A3
		.BYTE $9F,$C0, $B,$C3,$89,$5E,	8,$89,$1E,$9D,$C0,$75,	6,$C7,	6,$80
		.BYTE $CE,  1,	0,$8B,$46, $C,$8B,$1E,$9F,$C0,$8B, $E,$9D,$C0,	3,$C8
		.BYTE $83,$C1,	4,  5,	4,  0,$BA,$80,$FF,$2B,$D0,$89, $E,$9D,$C0,$89
		.BYTE $16,$C4,	0,$89,$1E,$9F,$C0,$8B,$46, $A,$8B,$5E,	8,$83,$C4, $E
		.BYTE $5D,$CB,$55,$8B,$EC,$C4,$76,  6,$26,$C6,	4, $D,$26,$C6,$44,  1
		.BYTE  $A,$B8,	2,  0,$5D,$CB,$55,$83,$EC,$24,$8B,$EC,$16,$8D,$46,$1C
		.BYTE $50,$9A,$AD,  3,$FA, $B,$8B,$E5,$C7,$46,	4,  0,$2A,$16,$8D,$46
		.BYTE $1C,$50,$16,$8D,$46,$10,$50,$16,$8D,$46,	4,$50,$9A,$DB,	3,$FA
		.BYTE  $B,$8B,$E5,$8B,$46,$10,$25,$FF,	0,$89,$46,  2,$E9,$89,	0,$C6
		.BYTE	6,$99,$5B,$53,$C6,  6,$9A,$5B,$75,$C6,	6,$9B,$5B,$6E,$E9,$88
		.BYTE	0,$C6,	6,$99,$5B,$4D,$C6,  6,$9A,$5B,$6F,$C6,	6,$9B,$5B,$6E
		.BYTE $EB,$77,$C6,  6,$99,$5B,$54,$C6,	6,$9A,$5B,$75,$C6,  6,$9B,$5B
		.BYTE $65,$EB,$66,$C6,	6,$99,$5B,$57,$C6,  6,$9A,$5B,$65,$C6,	6,$9B
		.BYTE $5B,$64,$EB,$55,$C6,  6,$99,$5B,$54,$C6,	6,$9A,$5B,$68,$C6,  6
		.BYTE $9B,$5B,$75,$EB,$44,$C6,	6,$99,$5B,$46,$C6,  6,$9A,$5B,$72,$C6
		.BYTE	6,$9B,$5B,$69,$EB,$33,$C6,  6,$99,$5B,$53,$C6,	6,$9A,$5B,$61
		.BYTE $C6,  6,$9B,$5B,$74,$EB,$22,$E9,$50,  2,$D2,  5,$E4,  5,$F5,  5
		.BYTE	6,  6,$17,  6,$28,  6,$39,  6,$8B,$F0,$83,$FE,	7,$73,	7,$D1
		.BYTE $E6,$2E,$FF,$A4,$4D,  6,$E9,$31,	2,$C6,	6,$9C,$5B,$20,$B1,  8
		.BYTE $8B,$46,$16,$D3,$F8,$25,$FF,  0,$89,$46,	2,$E9,$EE,  0,$C6,  6
		.BYTE $9D,$5B,$4A,$C6,	6,$9E,$5B,$61,$C6,  6,$9F,$5B,$6E,$E9,$F2,  0
		.BYTE $C6,  6,$9D,$5B,$46,$C6,	6,$9E,$5B,$65,$C6,  6,$9F,$5B,$62,$E9
		.BYTE $E0,  0,$C6,  6,$9D,$5B,$4D,$C6,	6,$9E,$5B,$61,$C6,  6,$9F,$5B
		.BYTE $72,$E9,$CE,  0,$C6,  6,$9D,$5B,$41,$C6,	6,$9E,$5B,$70,$C6,  6
		.BYTE $9F,$5B,$72,$E9,$BC,  0,$C6,  6,$9D,$5B,$4D,$C6,	6,$9E,$5B,$61
		.BYTE $C6,  6,$9F,$5B,$79,$E9,$AA,  0,$C6,  6,$9D,$5B,$4A,$C6,	6,$9E
		.BYTE $5B,$75,$C6,  6,$9F,$5B,$6E,$E9,$98,  0,$C6,  6,$9D,$5B,$4A,$C6
		.BYTE	6,$9E,$5B,$75,$C6,  6,$9F,$5B,$6C,$E9,$86,  0,$C6,  6,$9D,$5B
		.BYTE $41,$C6,	6,$9E,$5B,$75,$C6,  6,$9F,$5B,$67,$EB,$75,$C6,	6,$9D
		.BYTE $5B,$53,$C6,  6,$9E,$5B,$65,$C6,	6,$9F,$5B,$70,$EB,$64,$C6,  6
		.BYTE $9D,$5B,$4F,$C6,	6,$9E,$5B,$63,$C6,  6,$9F,$5B,$74,$EB,$53,$C6
		.BYTE	6,$9D,$5B,$4E,$C6,  6,$9E,$5B,$6F,$C6,	6,$9F,$5B,$76,$EB,$42
		.BYTE $C6,  6,$9D,$5B,$44,$C6,	6,$9E,$5B,$65,$C6,  6,$9F,$5B,$63,$EB
		.BYTE $31,$E9,$46,  1,$81,  6,$93,  6,$A5,  6,$B7,  6,$C9,  6,$DB,  6
		.BYTE $ED,  6,$FF,  6,$10,  7,$21,  7,$32,  7,$43,  7,$8B,$F0,$83,$EE
		.BYTE	1,$72, $C,$83,$FE, $C,$73,  7,$D1,$E6,$2E,$FF,$A4,$57,	7,$E9
		.BYTE $18,  1,$C6,  6,$A0,$5B,$20,$8B,$46,$16,$25,$FF,	0,$3D,	9,  0
		.BYTE $89,$46,	2,$76,$1D,$BB, $A,  0,$31,$D2,$F7,$F3,	5,$30,	0,$A2
		.BYTE $A1,$5B,$8B,$46,	2,$31,$D2,$F7,$F3,$83,$C2,$30,$88,$16,$A2,$5B
		.BYTE $EB, $E,$C6,  6,$A1,$5B,$20,$8B,$46,  2,	5,$30,	0,$A2,$A2,$5B
		.BYTE $B0,$20,$8B,$5E,$14,$A2,$A3,$5B,$8B,$C3,$89,$46,	2,$B9,$E8,  3
		.BYTE $31,$D2,$F7,$F1,	5,$30,	0,$A2,$A4,$5B,$8B,$C3,$31,$D2,$F7,$F1
		.BYTE $89,$56,	2,$8B,$46,  2,$BB,$64,	0,$31,$D2,$F7,$F3,  5,$30,  0
		.BYTE $A2,$A5,$5B,$8B,$46,  2,$31,$D2,$F7,$F3,$89,$56,	2,$8B,$46,  2
		.BYTE $BB, $A,	0,$31,$D2,$F7,$F3,  5,$30,  0,$A2,$A6,$5B,$8B,$46,  2
		.BYTE $31,$D2,$F7,$F3,$83,$C2,$30,$C6,	6,$A8,$5B,$20,$C7,$46,	4,  0
		.BYTE $2C,$16,$8D,$46,$1C,$50,$88,$16,$A7,$5B,$9A,$AD,	3,$FA, $B,$8B
		.BYTE $E5,$16,$8D,$46,$1C,$50,$16,$8D,$46,$10,$50,$16,$8D,$46,	4,$50
		.BYTE $9A,$DB,	3,$FA, $B,$8B,$E5,$B1,	8,$8B,$46,$14,$D3,$F8,$25,$FF
		.BYTE	0,$89,$46,  2,$BB, $A,	0,$31,$D2,$F7,$F3,  5,$30,  0,$A2,$A9
		.BYTE $5B,$8B,$46,  2,$31,$D2,$F7,$F3,$83,$C2,$30,$C6,	6,$AB,$5B,$3A
		.BYTE $8B,$46,$14,$25,$FF,  0,$88,$16,$AA,$5B,$89,$46,	2,$31,$D2,$F7
		.BYTE $F3,  5,$30,  0,$A2,$AC,$5B,$8B,$46,  2,$31,$D2,$F7,$F3,$83,$C2
		.BYTE $30,$C6,	6,$AE,$5B,  0,$88,$16,$AD,$5B,$83,$C4,$24,$5D,$CB,$55
		.BYTE $8B,$EC,$C6,  6,$A0,$15,	0,$5D,$CB,$55,$83,$EC,	2,$8B,$EC,$C6
		.BYTE	6,$A0,$15,  0,$1E,$B8,$6B,  1,$50,$9A,$43,  0,$1C,$20,$8B,$E5
		.BYTE $1E,$B8,$E1,$15,$50,$9A,	6,  0,$91, $C,$8B,$E5,$1E,$B8,$89,  1
		.BYTE $50,$9A,$43,  0,$1C,$20,$8B,$E5,$1E,$B8,$E1,$15,$50,$9A,$E1,  1
		.BYTE $91, $C,$8B,$E5,$A0,$E1,$15,$30,$E4,$E9,$F0,  0,$C6,  6,$A0,$15
		.BYTE $FF,$FF,$36,$E4,$CE,$9A, $A,  0,$57,$1F,$8B,$E5,$1E,$B8,$CB,$5B
		.BYTE $50,$9A,$C9,  3,$FA, $B,$8B,$E5,$A0,$A4,$15,$30,$E4,$48,$75,$17
		.BYTE $FF,$36,$96,$CE,$9A, $A,	0,$57,$1F,$8B,$E5,$1E,$B8,$FD,$5B,$50
		.BYTE $9A,$C9,	3,$FA, $B,$8B,$E5,$1E,$B8,$8B,	1,$50,$9A,$43,	0,$1C
		.BYTE $20,$8B,$E5,$E9,$BA,  0,$B0,  2,$C7,  6,$F0,$CE,	0,  0,$C6,  6
		.BYTE $A3,$15,	1,$A2,$A2,$15,$A2,$A1,$15,$A2,$9A,$15,$E9,$A1,	0,$B0
		.BYTE	0,$C6,	6,$A2,$15,  1,$C7,  6,$F0,$CE,$20,  0,$A2,$A3,$15,$A2
		.BYTE $A1,$15,$A2,$9A,$15, $E,$E8,$15,	1,$E9,$84,  0,$B0,  1,$C6,  6
		.BYTE $A2,$15,	2,$C7,	6,$F0,$CE,  0,	0,$A2,$A3,$15,$A2,$A1,$15,$A2
		.BYTE $9A,$15,$EB,$6C, $E,$E8,$6D,  0,$B0,  4,$C6,  6,$A2,$15,	2,$C6
		.BYTE	6,$A3,$15,  1,$C7,  6,$F0,$CE,$20,  0,$A2,$A1,$15,$A2,$9A,$15
		.BYTE  $E,$E8,$DA,  0,$EB,$4A, $E,$E8,$4B,  0,$B0,  5,$C6,  6,$A2,$15
		.BYTE	2,$C7,	6,$F0,$CE,  0,	0,$C6,	6,$A3,$15,  1,$A2,$A1,$15,$A2
		.BYTE $9A,$15,$EB,$2C,$4D,  0,$A9,  9,$44,  0,$87,  9,$54,  0,$6F,  9
		.BYTE $4E,  0,$52,  9,$50,  0,$39,  9,$43,  0,$EF,  8,$BE,$14,	0,$2E
		.BYTE $3B,$84,$C7,  9,$75,  5,$2E,$FF,$A4,$C9,	9,$83,$EE,  4,$79,$EF
		.BYTE $83,$C4,	2,$5D,$CB,$55,$83,$EC,	2,$8B,$EC,$A0,$A4,$15,$30,$E4
		.BYTE $85,$C0,$75,$2C,$B8,$FF,	1,$50,$1E,$B8,$FD,$5B,$50,$9A,$78,  2
		.BYTE  $C,$1F,$8B,$E5,$A3,$96,$CE,$40,$75,$11,$1E,$B8,$AD,  1,$50,$9A
		.BYTE $43,  0,$1C,$20,$8B,$E5,$C6,  6,$A0,$15,$FF,$C6,	6,$A4,$15,  1
		.BYTE $83,$C4,	2,$5D,$CB,$55,$83,$EC,	4,$8B,$EC,$A1,$F0,$CE,$8B,$1E
		.BYTE $14,$D7,$23,$D8,$74,  5,$83,$C4,	4,$5D,$CB,$9A, $E,  0,$3A,$20
		.BYTE $A3,$4E,$CE,$85,$C0,$74,$1D,$9A, $B,  0,$5C,$1F,$88,$46,	2,$30
		.BYTE $E4,$3D,$1B,  0,$75,  7,$C6,  6,$A0,$15,	1,$EB, $C,$C6,	6,$A0
		.BYTE $15,  0,$EB,  5,$C6,  6,$A0,$15,	0,$83,$C4,  4,$5D,$CB,$55,$83
		.BYTE $EC,  2,$8B,$EC,$A0,$AA,$15,$30,$E4,$85,$C0,$75,$6C,$1E,$B8,$CD
		.BYTE	1,$50,$9A,$43,	0,$1C,$20,$8B,$E5,$1E,$B8,  5,	2,$50,$9A,$43
		.BYTE	0,$1C,$20,$8B,$E5,$1E,$B8,$36,	2,$50,$9A,$43,	0,$1C,$20,$8B
		.BYTE $E5,$1E,$B8,$68,	2,$50,$9A,$43,	0,$1C,$20,$8B,$E5,$1E,$B8,$9B
		.BYTE	2,$50,$9A,$43,	0,$1C,$20,$8B,$E5,$1E,$B8,$D0,	2,$50,$9A,$43
		.BYTE	0,$1C,$20,$8B,$E5,$1E,$B8,  4,	3,$50,$9A,$43,	0,$1C,$20,$8B
		.BYTE $E5,$1E,$B8,$35,	3,$50,$9A,$43,	0,$1C,$20,$8B,$E5,$1E,$B8,$6A
		.BYTE	3,$50,$9A,$43,	0,$1C,$20,$8B,$E5,$83,$C4,  2,$5D,$CB,$55,$8B
		.BYTE $EC,$FF,$76,  8,$FF,$76,	6,$9A,$C9,  3,$FA, $B,$8B,$E5,$5D,$CB
		.BYTE $55,$83,$EC,  8,$8B,$EC,$C7,$46,	2,  0,	0,$33,$C0,$50,$FF,$76
		.BYTE $10,$FF,$76, $E, $E,$E8,$22,$F5,$8B,$E5,$89,$46,	4,$40,$74,$78
		.BYTE $B8,$FF,	1,$50,$FF,$76,$14,$FF,$76,$12, $E,$E8,$34,$F5,$8B,$E5
		.BYTE $89,$46,	6,$40,$74,$62,$C7,  6,$4E,$CE,$FF,$FF,$83,$3E,$4E,$CE
		.BYTE	0,$74,$32,$B8,	0,$20,$50,$FF,$36,$1F,$C1,$FF,$36,$1D,$C1,$FF
		.BYTE $76,  4,$9A,  8,	0,$22,$20,$8B,$E5,$85,$C0,$A3,$4E,$CE,$74,$DC
		.BYTE $50,$FF,$36,$1F,$C1,$FF,$36,$1D,$C1,$FF,$76,  6,$9A,  7,	0,$5F
		.BYTE $1F,$8B,$E5,$EB,$C7,$FF,$76,  6,$9A, $A,	0,$57,$1F,$8B,$E5,$FF
		.BYTE $76,  4,$9A, $A,	0,$57,$1F,$8B,$E5,$FF,$76,$10,$FF,$76, $E,$9A
		.BYTE $C9,  3,$FA, $B,$8B,$E5,$EB,$11,$1E,$B8,$9A,  3,$50,$9A,$43,  0
		.BYTE $1C,$20,$8B,$E5,$C7,$46,	2,  1,	0,$8B,$46,  2,$83,$C4,	8,$5D
		.BYTE $CB,$55,$8B,$EC,$B8,  1,	0,$5D,$CB,$55,$83,$EC, $C,$8B,$EC, $E
		.BYTE $E8,$62,$FE,$A0,$A0,$15,$30,$E4,$85,$C0,$74,$14, $E,$E8,$C9,$FC
		.BYTE $A0,$A0,$15,$30,$E4,$25,$FF,  0,$3D,$FF,	0,$75,	3,$E9,$D5,  1
		.BYTE $A0,$9A,$15,$30,$E4,$85,$C0,$75,	3,$E9,$C9,  1,$A1,$12,$D7,$3B
		.BYTE	6,$10,$D7,$73,	3,$E9,$BD,  1,$83,$3E, $E,$D7,	1,$77,	9,$A0
		.BYTE $BC,  3,$30,$E4,$85,$C0,$74,$11,$C4,$36,$25,$C1,$FF,  6,$25,$C1
		.BYTE $26,$C6,	4, $C,$C6,  6,$BC,  3,	0,$C7,	6,$12,$D7,  0,	0,$C7
		.BYTE	6,$4E,$CE,  0,	0,$A0,$B2,$15,$30,$E4,$8B,$1E,$4E,$CE,$3B,$D8
		.BYTE $74,$12,$C4,$36,$25,$C1,$FF,  6,$25,$C1,$26,$C6,	4, $A,$FF,  6
		.BYTE $4E,$CE,$EB,$E1,$C7,  6,$4E,$CE,	0,  0,$83,$3E,$4E,$CE,	2,$74
		.BYTE $12,$C4,$36,$25,$C1,$FF,	6,$25,$C1,$26,$C6,  4,$20,$FF,	6,$4E
		.BYTE $CE,$EB,$E7,$8C,$D8,$BB,$99,$5B,$A3,$7F,$C0,$89,$1E,$7D,$C0,$C4
		.BYTE $36,$7D,$C0,$26,$8A,  4,$30,$E4,$85,$C0,$74,$1C,$8B,$3E,$25,$C1
		.BYTE $FF,  6,$25,$C1,$FF,  6,$7D,$C0,$26,$8A,	4,$8E,	6,$27,$C1,$26
		.BYTE $88,  5,$FF,  6,$4E,$CE,$EB,$D7,$A1, $C,$D7,$2D, $B,  0,$8B,$1E
		.BYTE $4E,$CE,$3B,$D8,$74,$12,$C4,$36,$25,$C1,$FF,  6,$25,$C1,$26,$C6
		.BYTE	4,$20,$FF,  6,$4E,$CE,$EB,$E0,$FF,$36, $E,$D7,$1E,$B8,$AD,  3
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
aInvalidStackSizeInsu_5:.BYTE 'Invalid stack size',$D,$A
		.BYTE '$Insufficient memory',$D,$A
		.BYTE '$',$A
		.BYTE '2500 A.D. Linker  Copyright (C) 1985  -  Version 4.01f',$A
		.BYTE $A,0
		.BYTE $18
aFListingDestinationN_4:.BYTE 'F',$5C,'Listing Destination  (N, T, D, E, L, P, <CR> = N) : ',0
aErrorOnlyListingDest_5:.BYTE 'Error Only Listing Destination  (T, D, P, <CR> = T) : ',0
aListOnOffListingDes_13:.BYTE 'LIST ON/OFF Listing Destination  (T, D, P, <CR> = T) : ',0
aEnterRunTimeSelecti_13:.BYTE $A
		.BYTE $A
		.BYTE 'Enter Run Time Selection : ',0
		.BYTE  $A,  0
aAssemblyTerminatedB_13:.BYTE 'Assembly Terminated By Operator',$A
		.BYTE $A,0
aCanTCreateDiskListi_13:.BYTE 'Can',$27,'t Create Disk Listing File',$A,0
		.BYTE  $A
aActiveCommands_12:.BYTE '                         ***** Active Commands *****',$A
		.BYTE $A,0
aCtrlSStopOutput_13:.BYTE '                           Ctrl S = Stop Output',$A,0
aCtrlQStartOutput_14:.BYTE '                           Ctrl Q = Start Output',$A,0
aEscCStopAssembly_14:.BYTE '                           Esc  C = Stop Assembly',$A,0
aEscTTerminalOutput_14:.BYTE '                           Esc  T = Terminal Output',$A,0
aEscPPrinterOutput_14:.BYTE '                           Esc  P = Printer Output',$A,0
aEscDDiskOutput_14:.BYTE '                           Esc  D = Disk Output',$A,0
aEscMMultipleOutput_14:.BYTE '                           Esc  M = Multiple Output',$A,0
aEscNNoOutput_14:.BYTE '                           Esc  N = No Output',$A
		.BYTE $A,0
aRenameFileError_14:.BYTE 'Rename File Error',$A,0
aPage4u_14:	.BYTE 'Page %4u',0
aLib_14:	.BYTE 'LIB',0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE	0
aC_14:		.BYTE '%c',0
		.BYTE  $A
aMaximumNumberOfDiff_14:.BYTE 'Maximum Number of Different Sections (%d) Exceeded.  Link Term'
		.BYTE 'inated.',$A
		.BYTE $A,0
aS_14:		.BYTE '%s',0
		.BYTE	0
aDiskListingFilename_14:.BYTE 'Disk Listing  Filename : ',0
aSymbolTableFilename_14:.BYTE 'Symbol Table  Filename : ',0
aFormat_14:	.BYTE 'Format   : ',0
aLinkerOutputFilenam_14:.BYTE 'Linker Output Filename : ',0
aMicrotek_14:	.BYTE 'Microtek',0
aZax_14:	.BYTE 'Zax',0
aAbbreviated2500A_d__14:.BYTE 'Abbreviated 2500 A.D.',0
a2500A_d__15:	.BYTE '2500 A.D.',0
aNoneSpecified_14:.BYTE	'<None Specified>',0
		.BYTE  $A
aLinkErrors_15:	.BYTE '         Link Errors :  ',0
aOutputFormat_15:.BYTE '         Output Format :  ',0
aExecutable_14:	.BYTE 'Executable',0
aIntelHex_14:	.BYTE 'Intel Hex',0
aExtendedIntelHex_14:.BYTE 'Extended Intel Hex',0
aTektronixHex_14:.BYTE 'Tektronix Hex',0
aMotorolaS1_14:	.BYTE 'Motorola S1',0
		.BYTE	0
aMotorolaS_14:	.BYTE 'Motorola S'
		.WORD NMI_2E882
		.WORD off_28097
		.WORD locret_2E8F9
; end of 'BANK_02'

; ===========================================================================