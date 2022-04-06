; Segment type:	Pure code
		;.segment BANK_10
		* =  $8000

; =============== S U B	R O U T	I N E =======================================


bank_switch_108000:
		.include "common\bank_switch_func.asm"

switch_case_8035:				
					; bank_switch_108000+1Dj ...
		LDA	bank_to_344
		STA	bank_prev_345
		LDA	#$88 
		STA	bank_switch_flag_6C
		LDA	bank_command_346
		CMP	#0
		BEQ	loc_108047
		RTS
; ---------------------------------------------------------------------------

loc_108047:				
		JSR	tilemap_handler_10F897
		JMP	loc_10804D
; ---------------------------------------------------------------------------

loc_10804D:				
		LDA	#$FF
		STA	bank_command_346
		LDA	bank_from_343
		STA	bank_to_344
		JMP	bank_switch_108000
; End of function bank_switch_108000

; ---------------------------------------------------------------------------
off_10805B:	.WORD byte_108097	
		.WORD byte_108497
		.WORD byte_108897
		.WORD byte_108C97
		.WORD byte_109097
		.WORD byte_109497
		.WORD byte_109897
		.WORD byte_109C97
		.WORD byte_10A097
		.WORD byte_10A497
		.WORD byte_10A897
		.WORD byte_10AC97
		.WORD byte_10B097
		.WORD byte_10B497
		.WORD byte_10B897
		.WORD byte_10BC97
		.WORD byte_10C097
		.WORD byte_10C497
		.WORD byte_10C897
		.WORD byte_10CC97
		.WORD byte_10D097
		.WORD byte_10D497
		.WORD byte_10D897
		.WORD byte_10DC97
		.WORD byte_10E097
		.WORD byte_10E497
		.WORD byte_10E897
		.WORD byte_10EC97
		.WORD byte_10F097
		.WORD byte_10F497
byte_108097:	.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$BC,$BF
					
		.BYTE $B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$B8,$B9
		.BYTE $BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$BC,$BF
		.BYTE $B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$B8,$B9
		.BYTE $BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$BC,$BF
		.BYTE $B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$B8,$B9
		.BYTE $BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0, $F,  5,$BC,$BF
		.BYTE $B7,$BF,$B7,$BB,	8, $F,	0,  0,	0,  0,	0,  0,	0,  0, $F, $F
		.BYTE  $F,  1,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,$12,$B8,$B9
		.BYTE $BA,$B9,$BA,$BD,$58,  2,	2,  2,	2,  2,	2,  2,	2,  2,	3, $F
		.BYTE	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$BC,$BF
		.BYTE $B7,$BF,$B7,$BB,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4
		.BYTE	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$B8,$B9
		.BYTE $BA,$B9,$BA,$BD,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4
		.BYTE	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$BC,$BF
		.BYTE $B7,$BF,$B7,$BB,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4
		.BYTE	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$B8,$B9
		.BYTE $BA,$B9,$BA,$BD,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4
		.BYTE	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$BC,$BF
		.BYTE $B7,$BF,$B7,$BB,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4
		.BYTE	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$B8,$B9
		.BYTE $BA,$B9,$BA,$BD,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4
		.BYTE	4,  5,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BF
		.BYTE $B7,$BF,$B7,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,	8,  4
		.BYTE	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4
		.BYTE	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4
		.BYTE	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4
		.BYTE	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4
		.BYTE	4,  5,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD
		.BYTE $B8,$BD,$B8,$BD,$B8,$B9,$BA,$BD,$B8,$BD,$B8,$BD,$B8,$BD,	8,  4
		.BYTE  $F,$15,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C
		.BYTE $1C,$1C,$1C,$16,$BC,$BB,$BC,$BB,$2B,$1C,$1C,$1C,$1C,$1C,$1D, $F
		.BYTE  $F, $F,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,$15,$1C,$1C,$1C,$1C,$1D,  0,	0,  0,	0,  0, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_108497:	.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
					
		.BYTE  $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	0,  0,	0,  0
		.BYTE	0,  0, $F,  5,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,  1,	2,  2,	2,  2
		.BYTE	2,  2,	2,$12,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$BC,$BB,$BC,$BB
		.BYTE $BC,$BB,$BC,$BB,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$64,$65,$48,$66
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$67,$68,$69,$6A
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$BE,$C0,$C1,$B6
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$B8,$BD,$B8,$BD
		.BYTE $B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,$15,$1C,$1C,$1C,$1C
		.BYTE $1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1D, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_108897:	.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
					
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE  $F, $F, $F, $F, $F,  1,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE  $F, $F, $F, $F,	4,  5,$72,$73,$72,$73,$22,$22,$72,$73,$72,$73
		.BYTE $22,$22,$22,$22,$33,$34,$22,$22,$22,$22,$72,$73,$72,$73,$22,$22
		.BYTE  $F, $F, $F, $F,	4,  5,$76,$77,$76,$77,$22,$22,$76,$77,$76,$77
		.BYTE $22,$22,$22,$22,$37,$38,$22,$22,$22,$22,$76,$77,$76,$77,$22,$22
		.BYTE  $F, $F, $F, $F,	4,  5,$7A,$7B,$7A,$7B,$22,$22,$7A,$7B,$7A,$7B
		.BYTE $22,$22,$22,$22,$3B,$3C,$22,$22,$22,$22,$7A,$7B,$7A,$7B,$22,$22
		.BYTE  $F, $F, $F, $F,	4,  5,$7E,$7F,$7E,$7F,$22,$22,$7E,$7F,$7E,$7F
		.BYTE $22,$22,$22,$22,$3F,$40,$22,$22,$22,$22,$7E,$7F,$7E,$7F,$22,$22
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB
		.BYTE $BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,$B8,$BD,$B8,$BD
		.BYTE $B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,$2B,$1C,$1C,$1C
		.BYTE $1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,	8, $F,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$B7,$BD,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$BA,$BB,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$B7,$BD,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$BA,$BB,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$B7,$BD,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$BA,$BB,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$B7,$BD,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,$11,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_108C97:	.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
					
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE	2,  2,	2,  2,	2,  2,	3, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $72,$73,$72,$73,$22,$22,$72,$73,$72,$73,$22,$22,$72,$73,$72,$73
		.BYTE $22,$22,$72,$73,$72,$73,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $76,$77,$76,$77,$22,$22,$76,$77,$76,$77,$22,$22,$76,$77,$76,$77
		.BYTE $22,$22,$76,$77,$76,$77,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $7A,$7B,$7A,$7B,$22,$22,$7A,$7B,$7A,$7B,$22,$22,$7A,$7B,$7A,$7B
		.BYTE $22,$22,$7A,$7B,$7A,$7B,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $7E,$7F,$7E,$7F,$22,$22,$7E,$7F,$7E,$7F,$22,$22,$7E,$7F,$7E,$7F
		.BYTE $22,$22,$7E,$7F,$7E,$7F,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB
		.BYTE $BC,$BB,$BC,$BB,$BC,$BB,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD
		.BYTE $B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$16
		.BYTE $BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0, $F,  5
		.BYTE $B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5
		.BYTE $BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5
		.BYTE $B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5
		.BYTE $BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5
		.BYTE $B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5
		.BYTE $BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5
		.BYTE $B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5
		.BYTE $BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5
		.BYTE $B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5
		.BYTE $BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5
		.BYTE $B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_109097:	.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,	8, $F,	0,  0
					
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,$58,  2,	2,  2
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,$22,$22,$22,$22
		.BYTE $22,$22,$72,$73,$72,$73,$22,$22,$72,$73,$72,$73,$22,$22,$72,$73
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,$22,$22,$22,$22
		.BYTE $22,$22,$76,$77,$76,$77,$22,$22,$76,$77,$76,$77,$22,$22,$76,$77
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,$22,$22,$22,$22
		.BYTE $22,$22,$7A,$7B,$7A,$7B,$22,$22,$7A,$7B,$7A,$7B,$22,$22,$7A,$7B
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,$84,$85,$86,$87
		.BYTE $22,$22,$7E,$7F,$7E,$7F,$22,$22,$7E,$7F,$7E,$7F,$22,$22,$7E,$7F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,$88,$89,$8A,$8B
		.BYTE $BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$8C,$8D,$8D,$8E
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD
		.BYTE $B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD
		.BYTE  $F, $F, $F, $F, $F,$15,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C
		.BYTE $1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C
		.BYTE  $F, $F, $F, $F, $F, $F,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_109497:	.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0, $F,  5
					
		.BYTE $BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,$12
		.BYTE $B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $72,$73,$22,$22,$72,$73,$72,$73,$22,$22,$72,$73,$72,$73,$22,$22
		.BYTE $BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $76,$77,$22,$22,$76,$77,$76,$77,$22,$22,$76,$77,$76,$77,$22,$22
		.BYTE $B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $7A,$7B,$22,$22,$7A,$7B,$7A,$7B,$22,$22,$7A,$7B,$7A,$7B,$22,$22
		.BYTE $BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $7E,$7F,$22,$22,$7E,$7F,$7E,$7F,$22,$22,$7E,$7F,$7E,$7F,$22,$22
		.BYTE $B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB
		.BYTE $BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD
		.BYTE $B8,$BD,$B8,$BD,$B8,$BD,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C
		.BYTE $1C,$1C,$1C,$1C,$1C,$1C,$1D, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_109897:	.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
					
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F,  1,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	3, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB
		.BYTE $BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,$17, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,$18,$19, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,$B8,$BD,$B8,$BD
		.BYTE $B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$1A,$1B, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,$2B,$1C,$1C,$1C
		.BYTE $1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,	8, $F,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$BD,$B8,$BD,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BB,$BC,$BB,$2B,$1C,$1D, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F,$15,$1C,$1C,$1C,$1C,$1D,  0, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,$10
		.BYTE	0,  0,	0,  0,	0,  0,	0,  1,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_109C97:	.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
					
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0, $F, $F, $F, $F
		.BYTE  $F, $F, $F,  1,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	3, $F, $F, $F
		.BYTE  $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$6B,$6C,$6B,$6C
		.BYTE $6B,$6C,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$6E,$6F,$6E,$6F
		.BYTE $6E,$6F,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$72,$73,$72,$73,$33,$34,$72,$73,$6E,$6F,$6E,$6F
		.BYTE $6E,$6F,$72,$73,$72,$73,$72,$73,$72,$73,$72,$73,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$76,$77,$76,$77,$37,$38,$76,$77,$6E,$6F,$6E,$6F
		.BYTE $6E,$6F,$76,$77,$76,$77,$76,$77,$76,$77,$76,$77,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$7A,$7B,$7A,$7B,$3B,$3C,$7A,$7B,$6E,$6F,$6E,$6F
		.BYTE $6E,$6F,$7A,$7B,$7A,$7B,$7A,$7B,$7A,$7B,$7A,$7B,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$7E,$7F,$7E,$7F,$3F,$40,$7E,$7F,$80,$81,$80,$81
		.BYTE $80,$81,$84,$85,$86,$87,$7E,$7F,$7E,$7F,$7E,$7F,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB
		.BYTE $BC,$BB,$88,$89,$8A,$8B,$BC,$BB,$BC,$BB,$BC,$BB,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$8C,$8D,$8D,$8E,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$2B,$1C,$1C,$1C
		.BYTE $1C,$1C,$1C,$16,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,	8, $F,$8F,$8F
		.BYTE $8F,$8F, $F,  5,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$20,$55,$11,  0,	0,  0
		.BYTE	0,  0,	2,  5,	1,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_10A097:	.BYTE  $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8, $F,	0,  0
					
		.BYTE	0,  0, $F,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$BD,$58,  2,	2,  2
		.BYTE	2,  2,	2,$12,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BB,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$BD,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BB,$72,$73,$72,$73
		.BYTE $72,$73,$72,$73,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$BD,$76,$77,$76,$77
		.BYTE $76,$77,$76,$77,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BB,$7A,$7B,$7A,$7B
		.BYTE $7A,$7B,$7A,$7B,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$BD,$7E,$7F,$7E,$7F
		.BYTE $7E,$7F,$7E,$7F,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BB,$BC,$BB,$BC,$BB
		.BYTE $BC,$BB,$BC,$BB,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD
		.BYTE $B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,	8,  4, $F, $F
		.BYTE  $F, $F, $F,$15,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C
		.BYTE $1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1D, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_10A497:	.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
					
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,$A5,	2,  2
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,$A1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	3,  4,	5,  5
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	6,  3,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	3,  4,	5,  5
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	6,  3,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	3,  4,	5,  5
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	6,  1,	0,  0
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	3,  4,	5,  5
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	7,  2,	2,  2
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	3,  4,	8,  9
		.BYTE	8,  9,	8,  9,	8,  9,	5,  5,	5,  5, $A, $B,	5,  5,	5,  5
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	3,  4, $C, $D
		.BYTE  $C, $D, $C, $D, $C, $D,	5,  5,	5,  5, $E, $F,	5,  5,	5,  5
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	3,  4, $C, $D
		.BYTE  $C, $D, $C, $D, $C, $D,$9F,$9F,$9F,$9F,$10,$11,	5,  5,	5,  5
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	3,  4,$12,$13
		.BYTE $12,$13,$12,$13,$12,$13,$9F,$A3,$A3,$9F,$14,$15,	5,  5,	5,  5
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	3,  4,$9F,$9F
		.BYTE $9F,$9F,$9F,$9F,$9F,$9F,$9F,$A3,$A0,$9F,$9F,$9F,	5,  5,	5,  5
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	3,  4,$9F,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$9F,	5,  5,	5,  5
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	3,  4,$9F,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$9F,$9F,$9F,$9F,$9F
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	3,  4,$9F,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	3,  4,$9F,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	3,  4,$9F,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	3,  4,$9F,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	3,  4,$9F,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$9F,$9F,$9F,$9F,$9F
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	3,  4,$9F,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$9F,$16,$17,$17,$17
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	3,  4,$9F,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$9F,	6,  1,	0,  0
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	3,  4,$9F,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$9F,	6,  3,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	3,  4,$9F,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$9F,	6,  3,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	3,  4,$9F,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$9F,	6,  3,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	3,  4,$9F,$9F
		.BYTE $9F,$9F,$9F,$A3,$A3,$9F,$9F,$9F,$9F,$9F,$9F,$9F,	6,  3,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,$A4,$17,$17
		.BYTE $17,$18,$9F,$9F,$9F,$9F,$16,$17,$17,$17,$17,$17,$A7,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	0,  0
		.BYTE	0,$A4,$17,$17,$17,$17,$A7,  0,	0,  0,	0,  0,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0, $C,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_10A897:	.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
					
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,$19,$1A,	5,  5,	5,  5,	5,  5
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,$1B,$1C,	5,  5,	5,  5,	5,  5
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,$1D,$1E,	5,  5,	5,  5,	5,  5
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,$1F,$20,	5,  5,	5,  5,	5,  5
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE $9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F
		.BYTE $9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3
		.BYTE $9F,$9F,$9F,$9F,$9F,$A3,$A3,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F
		.BYTE $9F,$A3,$A3,$A3,$A3,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F
		.BYTE $17,$17,$17,$18,$9F,$9F,$9F,$9F,$16,$17,$17,$17,$17,$17,$17,$18
		.BYTE $9F,$A3,$A0,$A3,$A0,$9F,$16,$17,$17,$17,$17,$17,$17,$17,$17,$17
		.BYTE	0,  0,	0,$A4,$17,$17,$17,$17,$A7,  0,	0,  0,	0,  0,	1,  4
		.BYTE $9F,$A3,$A3,$A3,$A3,$9F,	6,  1,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	3,  4
		.BYTE $9F,$A3,$A0,$A3,$A0,$9F,	6,  3,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	3,  4
		.BYTE $9F,$A3,$A3,$A3,$A3,$9F,	6,  3,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	3,  4
		.BYTE $9F,$A3,$A5,$A1,$A0,$9F,	6,  3,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	3,  4
		.BYTE $9F,$A3,$A4,$A7,$A3,$9F,	6,  3,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	3,  4
		.BYTE $9F,$A3,$A0,$A3,$A0,$9F,	6,  3,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	3,  4
		.BYTE $9F,$A3,$A3,$A3,$A3,$9F,	6,  3,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	3,  4
		.BYTE $9F,$A3,$A0,$A3,$A0,$9F,	6,  3,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	3,  4
		.BYTE $9F,$A3,$A3,$A3,$A3,$9F,	6,  3,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_10AC97:	.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
					
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	0,  0,	0,  0,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	2,  2,	2,  2,$A1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	5,  5,	5,  5,	6,  3,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	5,  5,	5,  5,	6,  3,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	5,  5,	5,  5,	6,  3,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	5,  5,	5,  5,	6,  3,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	5,  5,	5,  5,	6,  3,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	5,  5,	5,  5,	7,$A1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE $9F,$9F,$9F,$9F,$9F,  6,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE $A3,$A3,$A3,$A3,$9F,  6,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE $A0,$A3,$A0,$A3,$9F,  6,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE $A3,$A3,$A3,$9F,$9F,  6,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE $A0,$A3,$A0,$9F,$16,$A7,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE $9F,$9F,$9F,$9F,	6,  3,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE $17,$17,$17,$17,$A7,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	0,  0,	0,  0,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_10B097:	.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	3,  4
					
		.BYTE $9F,$A3,$A0,$A3,$A0,$9F,	6,  3,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	3,  4
		.BYTE $9F,$A3,$A3,$A3,$A3,$9F,	6,  3,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	3,  4
		.BYTE $9F,$A3,$A0,$A3,$A0,$9F,	6,  3,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	3,  4
		.BYTE $9F,$9F,$A3,$A3,$9F,$9F,	6,  3,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,$A4
		.BYTE $17,$18,$9F,$9F,$16,$17,$A7,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	0,$A4,$17,$17,$A7,  0,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_10B497:	.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
					
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,$A5,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,$A1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	3,  4,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	3,  4,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	3,  4,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE	5,  5,$19,$1A,	5,  5,	5,  5,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	3,  4,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE	5,  5,$1B,$1C,	5,  5,	5,  5,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	3,  4,	8,  9,	8,  9,	8,  9,	8,  9, $A, $B
		.BYTE	5,  5,$1D,$1E,	5,  5,	5,  5,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	3,  4, $C, $D,$21,$22,$21,$22,$23,$24, $E, $F
		.BYTE	5,  5,$1F,$20,	5,  5,	5,  5,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	3,  4, $C, $D,$25,$26,$25,$26,$25,$27,$10,$11
		.BYTE $9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	3,  4,$12,$13,$12,$28,$12,$28,$12,$13,$14,$15
		.BYTE $9F,$A3,$A3,$A3,$A3,$A3,$A3,$9F,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	3,  4,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F
		.BYTE $9F,$A0,$A3,$A0,$A3,$A0,$A3,$9F,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	3,  4,$9F,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$9F,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	3,  4,$9F,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0
		.BYTE $A3,$A0,$A3,$A0,$A3,$A0,$A3,$9F,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	3,  4,$9F,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$9F,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	3,  4,$29,$2A,$2B,$2C,$A3,$A0,$A3,$A0,$A3,$A0
		.BYTE $A3,$A0,$A3,$A0, $A, $B, $A, $B,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	3,  4,$2D,$2E,$2F,$30,$9F,$A3,$A3,$A3,$A3,$A3
		.BYTE $A3,$A3,$A3,$A3, $E, $F, $E, $F,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	3,  4,$9F,$9F,$31,$32,$9F,$A0,$A3,$A0,$A3,$A0
		.BYTE $A3,$A0,$A3,$A0,$10,$11,$10,$11,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	3,  4,$9F,$9F,$33,$34,$9F,$A3,$A3,$A3,$A3,$A3
		.BYTE $A3,$A3,$A3,$9F,$14,$15,$14,$15,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	3,  4,$9F,$9F,$9F,$9F,$9F,$A0,$A3,$A0,$A3,$A0
		.BYTE $A3,$A0,$A3,$9F,$9F,$9F,$35,$36,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	3,  4,$9F,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$37,$38,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	3,  4,$9F,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0
		.BYTE $A3,$A0,$A3,$A0,$A3,$A0,$A3,$9F,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	3,  4,$9F,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$9F,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	3,  4,$9F,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0
		.BYTE $A3,$A0,$A3,$A0,$A3,$A0,$A3,$9F,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	3,  4,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F
		.BYTE $9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,$A4,$17,$17,$17,$17,$17,$17,$17,$17,$17,$17
		.BYTE $17,$17,$17,$17,$17,$17,$17,$17,$A7,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0, $C,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0, $F,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_10B897:	.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
					
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,$A5,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,$A1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	3,  4,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	3,  4,$39,$3A,	5,  5,$39,$3A,	5,  5,$39,$3A
		.BYTE	5,  5,$39,$3A,	5,  5,$39,$3A,	5,  5,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	3,  4,$3B,$3B,	5,  5,$3B,$3B,	5,  5,$3B,$3B
		.BYTE	5,  5,$3B,$3B,	5,  5,$3B,$3B,	5,  5,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	3,  4,$3C,$3D,	5,  5,$3C,$3D,	5,  5,$3C,$3D
		.BYTE	5,  5,$3C,$3D,	5,  5,$3C,$3D,	5,  5,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	3,  4,	5,  5,	5,  5, $A, $B,	5,  5,	5,  5
		.BYTE  $A, $B,$3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	3,  4,	5,  5,	5,  5, $E, $F,	5,  5,	5,  5
		.BYTE  $E, $F,$40,$41,$40,$41,$40,$41,$40,$41,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	3,  4,$2B,$2C,$42,$43,$10,$11,$9F,$9F,$9F,$9F
		.BYTE $10,$11,$40,$41,$40,$41,$40,$41,$40,$41,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	3,  4,$2F,$30,$44,$45,$14,$15,$9F,$A3,$A0,$9F
		.BYTE $14,$15,$46,$47,$46,$47,$46,$47,$46,$47,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	3,  4,$31,$32,$9F,$9F,$9F,$9F,$9F,$A3,$A3,$9F
		.BYTE $9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	3,  4,$33,$34,$9F,$A3,$A3,$A3,$A0,$A3,$A0,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$9F,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	3,  4, $A, $B, $A, $B,$A3,$A3,$A3,$A3,$A3,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3, $A, $B, $A, $B,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	3,  4, $E, $F, $E, $F,$A0,$A3,$A0,$A3,$A0,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$A3, $E, $F, $E, $F,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	3,  4,$10,$11,$10,$11,$A3,$A3,$A3,$A3,$A3,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$10,$11,$10,$11,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	3,  4,$14,$15,$14,$15,$9F,$A3,$A0,$A3,$A0,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$9F,$14,$15,$14,$15,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	3,  4,$9F,$9F,$9F,$9F,$9F,$A3,$A3,$A3,$A3,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$9F,$9F,$9F,$9F,$9F,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	3,  4,$9F,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$9F,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	3,  4,$9F,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$9F,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	3,  4,$9F,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$9F,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	3,  4,$9F,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$9F,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	3,  4,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F
		.BYTE $9F,$9F,$9F,$A3,$A0,$A3,$A0,$A3,$A0,$9F,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,$A4,$17,$17,$17,$17,$17,$17,$17,$17,$17,$17
		.BYTE $17,$18,$9F,$A3,$A3,$A3,$A3,$A3,$A3,$9F,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	1,  4,$9F,$A3,$A0,$A3,$A0,$A3,$A0,$9F,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	3,  4,$9F,$A3,$A3,$A3,$A3,$A3,$A3,$9F,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	3,  4,$9F,$A3,$A0,$A3,$A0,$A3,$A0,$9F,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE $A5,$48,$9F,$A3,$A3,$A3,$A3,$A3,$A3,$9F,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	4,$A6,$9F,$A3,$A0,$A3,$A0,$A3,$A0,$9F,	6,  3,	1,  1,	1,  1
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0, $C,  0,	3,  0,	0,  0,	0,$C0,$30,  0,	0,$C0,$30,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_10BC97:	.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
					
		.BYTE	4,$A6,$9F,$A3,$A3,$A3,$A3,$A3,$A3,$9F,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	4,$A6,$9F,$A3,$A0,$A3,$A0,$A3,$A0,$9F,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	4,$A6,$9F,$A3,$A3,$A3,$A3,$A3,$A3,$9F,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE $A4,$18,$9F,$A3,$A0,$A3,$A0,$A3,$A0,$9F,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	3,  4,$9F,$A3,$A3,$A3,$A3,$A3,$A3,$9F,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	3,  4,$9F,$9F,$9F,$A3,$A3,$9F,$9F,$9F,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,$A4,$17,$18,$9F,$9F,$9F,$9F,$16,$17,$A7,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	0,$A4,$17,$17,$17,$17,$A7,  0,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_10C097:	.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
					
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,$A5,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE	2,  2,	2,  2,	2,  2,$A1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE	5,  5,	5,  5,	5,  5,	6,  3,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE	5,  5,	5,  5,	5,  5,	6,  3,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE	5,  5,	5,  5,	5,  5,	6,  3,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE	5,  5,	5,  5,	5,  5,	6,  3,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,	8,  9,	8,  9,	8,  9,	5,  5
		.BYTE	5,  5,	5,  5,	5,  5,	6,  3,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4, $C, $D, $C, $D, $C, $D,	5,  5
		.BYTE	5,  5,	5,  5,	5,  5,	6,  3,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4, $C, $D, $C, $D, $C, $D,$9F,$9F
		.BYTE $9F,$9F,$9F,$9F,$9F,$9F,	6,  3,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,$12,$13,$12,$13,$12,$13,$9F,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$9F,	6,  3,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$9F,	6,  3,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,$9F,$A3,$A3,$A3,$A3,$A3,$A3,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$9F,	6,  3,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,$9F,$A3,$A0,$A3,$A0,$A3,$A0,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$9F,	6,  3,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,$9F,$A3,$A3,$A3,$A3,$A3,$A3,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$9F,	6,  3,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,$9F,$A3,$A0,$A3,$A0,$A3,$A0,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$9F,	6,  3,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,$9F,$A3,$A3,$A3,$A3,$A3,$A3,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$9F,	7,$A1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,$9F,$A3,$A0,$A3,$A0,$A3,$A0,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$9F,$9F,  6,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,$9F,$A3,$A3,$A3,$A3,$A3,$A3,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$9F,  6,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,$49,$4A,$A0,$A3,$A0,$A3,$A0,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$A3,$9F,  6,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,$4B,$4C,$9F,$A3,$A3,$A3,$A3,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$9F,$9F,  6,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,$4D,$4E,$9F,$A3,$A0,$A3,$A0,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$9F,$16,$A7,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,$4F,$50,$9F,$9F,$9F,$9F,$9F,$9F
		.BYTE $9F,$9F,$9F,$9F,$9F,$9F,	6,  3,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,$A4,$17,$17,$17,$17,$17,$17,$17,$17
		.BYTE $17,$17,$17,$17,$17,$17,$A7,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	0,  0,	3,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_10C497:	.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
					
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,$A5
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,$A1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	3,  4
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	6,  3,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	3,  4
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	6,  3,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	3,  4
		.BYTE	5,  5,	5,  5,	5,  5,$39,$3A,	5,  5,	5,  5,	6,  3,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	3,  4
		.BYTE	5,  5,	5,  5,	5,  5,$3B,$3B,	5,  5,	5,  5,	6,  3,	1,  1
		.BYTE	1,  1,	1,  1,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	1,  4
		.BYTE	8,  9,	8,  9, $A, $B,$3C,$3D,	5,  5,	8,  9,	6,  3,	1,  1
		.BYTE	1,  1,	1,$A5,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,$48
		.BYTE $21,$22,$23,$24, $E, $F,	5,  5,	5,  5,$23,$24,	6,  3,	1,  1
		.BYTE	1,  1,	3,  4,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE $25,$26,$25,$27,$10,$11,$A6,$A6,$A6,$A6,$25,$27,	6,  3,	1,  1
		.BYTE	1,  1,	3,  4,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE $12,$28,$12,$13,$14,$15,$A6,$A3,$A0,$A6,$12,$13,	6,  3,	1,  1
		.BYTE	1,  1,	3,  4,	5,  5,$39,$3A,	5,  5,	5,  5,$39,$3A,	5,  5
		.BYTE $A6,$A6,$A6,$A6,$A6,$A6,$A6,$A3,$A3,$A6,$A6,$A6,	6,  3,	1,  1
		.BYTE	1,  1,	3,  4,	5,  5,$3B,$3B,	5,  5,	5,  5,$3B,$3B,	5,  5
		.BYTE $A6,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A6,	6,  3,	1,  1
		.BYTE	1,  1,	3,  4,	5,  5,$3C,$3D,	5,  5,	5,  5,$3C,$3D,	5,  5
		.BYTE $A6,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A6,	6,  3,	1,  1
		.BYTE	1,  1,	3,  4,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE $A6,$A3,$A0,$A3,$A0,$A6,$A6,$A6,$A6,$A6,$A6,$A6,	6,  3,	1,  1
		.BYTE	1,  1,	3,  4,$A6,$A6,$A6,$A6,$A6,$A6,$A6,$A6,$A6,$A6,$A6,$A6
		.BYTE $A6,$A3,$A3,$A3,$A3,$A6, $A, $B, $A, $B, $A, $B,	6,  3,	1,  1
		.BYTE	1,  1,	3,  4,$A6,$A6,$A6,$A6,$A6,$A6,$A6,$A3,$A0,$A3,$A0,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$A6, $E, $F, $E, $F, $E, $F,	6,  3,	1,  1
		.BYTE	1,  1,	3,  4,$A6,$A6,$51,$52,$52,$53,$A6,$A3,$A3,$A3,$A3,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A6,$10,$11,$10,$11,$10,$11,	6,  3,	1,  1
		.BYTE	1,  1,	3,  4,$A6,$A6,$54,$A2,$A2,$55,$A6,$A3,$A0,$A3,$A0,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$A6,$14,$15,$14,$15,$14,$15,	6,  3,	1,  1
		.BYTE	1,  1,	3,  4,$A6,$A6,$54,$A2,$A2,$55,$A6,$A3,$A3,$A3,$A3,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A6, $A, $B, $A, $B, $A, $B,	6,  3,	1,  1
		.BYTE	1,  1,	3,  4,$A6,$A6,$56,$A2,$A2,$57,$A6,$A3,$A0,$A3,$A0,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$A6, $E, $F, $E, $F, $E, $F,	6,  3,	1,  1
		.BYTE	1,  1,	3,  4,$A6,$A6,$54,$A2,$A2,$55,$A6,$A3,$A3,$A3,$A3,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A6,$10,$11,$10,$11,$10,$11,	6,  3,	1,  1
		.BYTE	1,  1,	3,  4,$A6,$A6,$54,$A2,$A2,$55,$A6,$A3,$A0,$A3,$A0,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$A6,$14,$15,$14,$15,$14,$15,	6,  3,	1,  1
		.BYTE	1,  1,	3,  4,$A6,$A6,$58,$59,$59,$5A,$A6,$A3,$A3,$A3,$A3,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A6,$A6,$A6,$A6,$A6,$A6,$A6,	6,  3,	1,  1
		.BYTE	1,  1,	3,  4,$A6,$A6,$5B,$5C,$5C,$5D,$A6,$A3,$A0,$A3,$A0,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A6,	6,  3,	1,  1
		.BYTE	1,  1,	3,  4,$A6,$A6,$A6,$A6,$A6,$A6,$A6,$A3,$A3,$A3,$A3,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A6,	6,  3,	1,  1
		.BYTE	1,  1,	3,  4,$A6,$A6,$A6,$A6,$A6,$A6,$A6,$A6,$A6,$A6,$A6,$A6
		.BYTE $A6,$A6,$A6,$A6,$A6,$A3,$A0,$A3,$A0,$A3,$A0,$A6,	6,  3,	1,  1
		.BYTE	1,  1,	1,$A4,$17,$17,$17,$17,$17,$17,$17,$17,$17,$18, $A, $B
		.BYTE  $A, $B, $A, $B,$A6,$A3,$A3,$A3,$A3,$A3,$A3,$A6,	6,  3,	1,  1
		.BYTE	1,  1,	1,  1,	0,  0,	0,  0,	0,  0,	0,  0,	1,  4, $E, $F
		.BYTE  $E, $F, $E, $F,$A6,$A3,$A0,$A3,$A0,$A3,$A0,$A6,	6,  3,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	3,  4,$10,$11
		.BYTE $10,$11,$10,$11,$A6,$A3,$A3,$A3,$A3,$A3,$A3,$A6,	6,  3,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,$A5,$48,$14,$15
		.BYTE $14,$15,$14,$15,$A6,$A3,$A0,$A3,$A0,$A3,$A0,$A6,	6,  3,	1,  1
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,$30,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,$C0,$F0,  0
		.BYTE	0,$CC,$33,  0,	0,$C0,$F0,  0,	0,$CC,$33,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,$C0,$F0,  0,	0,  0,	0,  0,	3,  0,	0,  0,	0,  0
byte_10C897:	.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	4,$A6,$A6,$A6
					
		.BYTE $A6,$A6,$A6,$A6,$A6,$A3,$A3,$A3,$A3,$A3,$A3,$A6,	6,  3,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	4,$A6,$A0,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A6,	6,  3,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	4,$A6,$A3,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A6,	6,  3,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	4,$A6,$A6,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A6,	6,  3,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	0,  0,$A4,$18,$A6,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A6,	6,  3,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,$A5,	2,  2,	2,$48,$A6,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A6,	6,  3,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	3,  4,	5,  5,	5,  5,$A6,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A6,	6,  3,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	3,  4,	5,  5,	5,  5,$A6,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$A3,$A0,$A6,$A6,$A6,$A6,$A6,	6,  3,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	3,  4,	5,  5,	5,  5,$A6,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$A6,$6C,$6D,$A6,$A6,	6,  3,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	3,  4,	5,  5,	5,  5,$A6,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$A3,$A0,$A6,$6E,$6F,$A6,$A6,	6,  3,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	3,  4,	5,  5,	5,  5,$A6,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$A6,$6E,$6F,$A6,$A6,	6,  3,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	3,  4,	5,  5,	5,  5,$A6,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$A3,$A0,$A6,$6E,$6F,$A6,$A6,	6,  3,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	3,  4, $A, $B, $A, $B,$A6,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$A6,$6E,$6F,$A6,$A6,	6,  3,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	3,  4, $E, $F, $E, $F,$A6,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$A3,$A0,$A6,$6E,$6F,$A6,$A6,	6,  3,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	3,  4,$10,$11,$10,$11,$A6,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$A6,$6E,$6F,$A6,$A6,	6,  3,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	3,  4,$14,$15,$14,$15,$A6,$A6
		.BYTE $A6,$A6,$A6,$A6,$A6,$A6,$A6,$A6,$6E,$6F,$A6,$A6,	6,  3,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	3,  4, $A, $B,$A6,$A6,$A6,$A6
		.BYTE $6C,$6D,$A6,$A6,$6C,$6D,$A6,$A6,$6E,$6F,$70,$71,	6,  3,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	3,  4, $E, $F,$A6,$A3,$A0,$A6
		.BYTE $6E,$6F,$A6,$A6,$6E,$6F,$A6,$A6,$6E,$6F,$72,$73,	6,  3,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	3,  4,$10,$11,$A6,$A3,$A3,$A6
		.BYTE $5B,$74,$A6,$A6,$5B,$74,$A6,$A6,$6E,$6F,$75,$76,	6,  3,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	3,  4,$14,$15,$A6,$A6,$A6,$A6
		.BYTE $A6,$A6,$A6,$A6,$A6,$A6,$A6,$A6,$5B,$74,$77,$78,	6,  3,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,$A4,$17,$17,$17,$17,$17,$17
		.BYTE $17,$17,$17,$17,$17,$17,$17,$17,$17,$17,$17,$17,$A7,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	0,  0,$33,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0, $C,  3,	0,  0,	0,  0
		.BYTE	0,  0, $C,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_10CC97:	.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
					
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	0,  0,	0,  0,	0,  0,	0,  0,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,$A5,	2,  2,	2,  2,	2,  2,	2,  2,$A1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	3,  4,	5,  5,	5,  5,	5,  5,	5,  5,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	3,  4,	5,  5,	5,  5,	5,  5,	5,  5,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	3,  4,	5,  5,	5,  5,	5,  5,	5,  5,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	3,  4,	5,  5,	5,  5,	5,  5,	5,  5,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	3,  4,	5,  5,	5,  5,	5,  5,	5,  5,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	3,  4,	5,  5,	5,  5,	5,  5,	5,  5,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	3,  4,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	3,  4,$9F,$A3,$A3,$A3,$A3,$A3,$A3,$9F,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	3,  4,$9F,$A0,$A3,$A0,$A3,$A0,$A3,$9F,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	3,  4,$9F,$A3,$A3,$A3,$A3,$A3,$A3,$9F,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	3,  4,$9F,$A0,$A3,$A0,$A3,$A0,$A3,$9F,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	3,  4,$9F,$A3,$A3,$A3,$A3,$A3,$A3,$9F,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	3,  4,$9F,$A0,$A3,$A0,$A3,$A0,$A3,$9F,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	3,  4,$9F,$A3,$A3,$A3,$A3,$A3,$A3,$9F,	7,$A1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	3,  4,$9F,$A0,$A3,$A0,$A3,$A0,$A3,$9F,$9F,  6,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	3,  4,$9F,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$9F,  6,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	3,  4,$9F,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$9F,  6,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	3,  4,$9F,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$9F,  6,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	3,  4,$9F,$A0,$A3,$A0,$A3,$A0,$A3,$9F,$16,$A7,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	3,  4,$9F,$A3,$A3,$A3,$A3,$A3,$A3,$9F,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	3,  4,$9F,$A0,$A3,$A0,$A3,$A0,$A3,$9F,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	3,  4,$9F,$A3,$A3,$A3,$A3,$A3,$A3,$9F,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	3,  4,$9F,$A0,$A3,$A0,$A3,$A0,$A3,$9F,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	3,  4,$9F,$A3,$A3,$A3,$A3,$A3,$A3,$9F,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	3,  4,$9F,$A0,$A3,$A0,$A3,$A0,$A3,$9F,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	3,  4,$9F,$A3,$A3,$A3,$A3,$A3,$A3,$9F,	6,  3,	1,  1,	1,  1
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_10D097:	.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
					
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	1,  1,	1,$A5,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE	1,  1,	3,  4,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE	1,  1,	3,  4,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE	1,  1,	3,  4,	5,  5,	5,  5,$19,$1A,	5,  5,	5,  5,	5,  5
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE	1,  1,	3,  4,	5,  5,	5,  5,$1B,$1C,	5,  5,	5,  5,	5,  5
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE	1,  1,	3,  4,	5,  5,	5,  5,$1D,$1E,	5,  5,	5,  5,	5,  5
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE	1,  1,	3,  4,	5,  5,	5,  5,$1F,$20,	5,  5,	5,  5,	5,  5
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE	1,  1,	3,  4,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F
		.BYTE $9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F
		.BYTE	1,  1,	3,  4,$9F,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3
		.BYTE	1,  1,	3,  4,$9F,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0
		.BYTE $A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0
		.BYTE	1,  1,	3,  4,$9F,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3
		.BYTE	1,  1,	3,  4,$9F,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0
		.BYTE $A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0
		.BYTE	1,  1,	3,  4,$9F,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3
		.BYTE	1,  1,	3,  4,$9F,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0
		.BYTE $A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0
		.BYTE	1,  1,	3,  4,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F
		.BYTE $9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F
		.BYTE	1,  1,	1,$A4,$17,$17,$17,$17,$17,$17,$17,$17,$17,$17,$17,$17
		.BYTE $17,$17,$17,$17,$17,$17,$17,$17,$17,$17,$17,$17,$17,$17,$17,$17
		.BYTE	1,  1,	1,  1,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_10D497:	.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
					
		.BYTE	3,  4,$9F,$A0,$A3,$A0,$A3,$A0,$A3,$9F,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	3,  4,$9F,$A3,$A3,$A3,$A3,$A3,$A3,$9F,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	3,  4,$9F,$A0,$A3,$A0,$A3,$A0,$A3,$9F,	6,  3,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	3,  4,$9F,$A3,$A3,$A3,$A3,$A3,$A3,$9F,	6,  3,	1,  1,	1,  1
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	1,  4,$9F,$A0,$A3,$A0,$A3,$A0,$A3,$9F,	6,  3,	1,  1,	1,  1
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE	2,$48,$9F,$A3,$A3,$A3,$A3,$A3,$A3,$9F,	6,  3,	1,  1,	1,  1
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE	5,  5,$9F,$A0,$A3,$A0,$A3,$A0,$A3,$9F,	6,  3,	1,  1,	1,  1
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE	5,  5,$9F,$A3,$A3,$A3,$A3,$A3,$A3,$9F,	7,$A1,	1,  1,	1,  1
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE	5,  5,$9F,$A0,$A3,$A0,$A3,$A0,$A3,$9F,$9F,  6,	1,  1,	1,  1
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE	5,  5,$9F,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$9F,  6,	1,  1,	1,  1
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE	5,  5,$9F,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$9F,  6,	1,  1,	1,  1
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE	5,  5,$9F,$A3,$A3,$A3,$A3,$A3,$A3,$9F,$9F,  6,	1,  1,	1,  1
		.BYTE $9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F
		.BYTE $9F,$9F,$9F,$A0,$A3,$A0,$A3,$A0,$A3,$9F,$16,$A7,	1,  1,	1,  1
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$9F,	6,  3,	1,  1,	1,  1
		.BYTE $A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0
		.BYTE $A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$9F,	6,  3,	1,  1,	1,  1
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$9F,	6,  3,	1,  1,	1,  1
		.BYTE $A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0
		.BYTE $A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$9F,	6,  3,	1,  1,	1,  1
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$9F,	6,  3,	1,  1,	1,  1
		.BYTE $A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0
		.BYTE $A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$9F,	6,  3,	1,  1,	1,  1
		.BYTE $9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F
		.BYTE $9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,	6,  3,	1,  1,	1,  1
		.BYTE $17,$17,$17,$17,$17,$17,$17,$17,$17,$17,$17,$17,$17,$17,$17,$17
		.BYTE $17,$17,$17,$17,$17,$17,$17,$17,$17,$17,$A7,  1,	1,  1,	1,  1
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_10D897:	.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
					
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	0,  0,	0,  0,	0,  0,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,$A5,	2,  2,	2,  2,	2,  2,$A1,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	3,  4,	5,  5,	5,  5,	5,  5,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	3,  4,	5,  5,	5,  5,	5,  5,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	3,  4,	5,  5,	5,  5,	5,  5,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	3,  4,	5,  5,	5,  5,	5,  5,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	0,  0,	0,  0,	0,  0
		.BYTE	3,  4,	5,  5,$5E,$5F,	5,  5,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,$A5,	2,  2,	2,  2,	2,  2
		.BYTE	2,$48,	5,  5,$60,$61,	5,  5,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	3,  4,	5,  5,	5,  5,	5,  5
		.BYTE	5,  5,$42,$43,$42,$43,$9F,$9F,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	3,  4,	5,  5,	5,  5,	5,  5
		.BYTE	5,  5,$44,$45,$44,$45,$9F,$9F,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	3,  4,	5,  5,	5,  5,	5,  5
		.BYTE	5,  5,$9F,$9F,$9F,$9F,$9F,$9F,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	3,  4,	5,  5,	5,  5,	5,  5
		.BYTE	5,  5,$9F,$A3,$A3,$A3,$A3,$9F,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	3,  4,	5,  5,	5,  5,	5,  5
		.BYTE	5,  5,$9F,$A3,$A0,$A3,$A0,$9F,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	3,  4,	5,  5,	5,  5,	5,  5
		.BYTE	5,  5,$9F,$A3,$A3,$A3,$A3,$9F,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	3,  4,$9F,$9F,$9F,$9F,$9F,$9F
		.BYTE $9F,$9F,$9F,$A3,$A0,$A3,$A0,$9F,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,$A5,$48,$9F,$A3,$A3,$A3,$A3,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$9F,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_10DC97:	.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
					
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,$A5,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,$9F,$A3,$A3,$A3,$A3,$A3,$A3,$A3
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,$A5,$48,$9F,$A3,$A0,$A3,$A0,$A3,$A0,$A3
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	4,$A6,$9F,$A3,$A3,$A3,$A3,$A3,$A3,$A3
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	4,$A6,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	4,$A6,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	4,$A6,$9F,$A3,$A0,$A3,$A0,$A3,$A0,$A3
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,$A4,$18,$9F,$A3,$A3,$A3,$A3,$A3,$A3,$A3
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,$9F,$A3,$A0,$A3,$A0,$A3,$A0,$A3
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,$9F,$A3,$A3,$A3,$A3,$A3,$A3,$A3
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,$9F,$A3,$A0,$A3,$A0,$A3,$A0,$A3
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,$A4,$17,$17,$17,$17,$17,$17,$17,$17
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_10E097:	.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	4,$9F,$9F,$A3,$A0,$A3,$A0,$A3
					
		.BYTE $A0,$A3,$A0,$A3,$A0,$A3,$A0,$9F,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	4,$9F,$A3,$A3,$A3,$A3,$A3,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$9F,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	4,$9F,$A3,$A3,$A0,$A3,$A0,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$A3,$A0,$9F,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	4,$A6,$9F,$A3,$A3,$A3,$A3,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$9F,	7,$A1,	1,  1,	1,  1,	1,  1
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,$A4,$18,$9F,$A3,$A0,$A3,$A0,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$A3,$A0,$9F,$9F,  6,	1,  1,	1,  1,	1,  1
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,$48,$9F,$A3,$A3,$A3,$A3,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$9F,  6,	1,  1,	1,  1,	1,  1
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,$9F,$A3,$A0,$A3,$A0,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$9F,  6,	1,  1,	1,  1,	1,  1
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,$9F,$A3,$A3,$A3,$A3,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$9F,$9F,  6,	1,  1,	1,  1,	1,  1
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,$9F,$A3,$A0,$A3,$A0,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$A3,$A0,$9F,$16,$A7,	0,  0,	0,  0,	0,  0
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,$9F,$A3,$A3,$A3,$A3,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$9F,	7,  2,	2,  2,	2,  2,	2,  2
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,$9F,$A3,$A0,$A3,$A0,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$A3,$A0,$9F,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,$9F,$A3,$A3,$A3,$A3,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$9F,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE $9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$A3,$A0,$A3,$A0,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$A3,$A0,$9F,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$9F,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE $A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$A3,$A0,$9F,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$9F,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE $A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$A3,$A0,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3
		.BYTE $9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F
		.BYTE $9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F
		.BYTE $17,$17,$17,$17,$17,$17,$17,$17,$17,$17,$17,$17,$17,$17,$17,$17
		.BYTE $17,$17,$17,$17,$17,$17,$17,$17,$17,$17,$17,$17,$17,$17,$17,$17
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_10E497:	.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
					
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,$A1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE $9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,	7,$A1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE $A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$9F,  6,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$9F,  6,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE $A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$9F,  6,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$9F,  6,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE $A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$16,$A7,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE $9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE $17,$17,$17,$17,$17,$17,$17,$17,$A7,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_10E897:	.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
					
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,$A5,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,$A1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,	5,  5,$3E,$3F,$3E,$3F,$3E,$3F
		.BYTE $3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,$62,$63,$40,$41,$40,$41,$40,$41
		.BYTE $40,$41,$40,$41,$40,$41,$40,$41,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,$64,$65,$40,$41,$40,$41,$40,$41
		.BYTE $40,$41,$40,$41,$40,$41,$40,$41,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,$66,$67,$46,$47,$46,$47,$46,$47
		.BYTE $46,$47,$46,$47,$46,$47,$46,$47,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F
		.BYTE $9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,$9F,$A3,$A0,$A3,$A0,$A3,$A0,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$A3,$A0,$9F,	7,$A1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,$3E,$3F,$3E,$3F,$3E,$3F,$3E,$3F
		.BYTE $3E,$3F,$A3,$A3,$A3,$A3,$A3,$9F,$9F,  6,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,$40,$41,$40,$41,$40,$41,$40,$41
		.BYTE $40,$41,$A0,$A3,$A0,$A3,$A0,$A3,$9F,  6,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,$40,$41,$40,$41,$40,$41,$40,$41
		.BYTE $40,$41,$9F,$A3,$A3,$A3,$A3,$A3,$9F,  6,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,$46,$47,$46,$47,$46,$47,$46,$47
		.BYTE $46,$47,$9F,$A3,$A0,$A3,$A0,$9F,$9F,  6,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F
		.BYTE $9F,$9F,$9F,$A3,$A3,$A3,$A3,$9F,$16,$A7,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,$9F,$A3,$A0,$A3,$A0,$A3,$A0,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$A3,$A0,$9F,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,$42,$43,$9F,$A3,$A3,$A3,$A3,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$9F,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,$44,$45,$9F,$9F,$9F,$9F,$9F,$9F
		.BYTE $9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,$A4,$17,$17,$17,$17,$17,$17,$17,$17
		.BYTE $17,$17,$17,$17,$17,$17,$17,$17,$A7,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_10EC97:	.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
					
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,$A5,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,	5,  5,	5,  5,	5,  5,$19,$1A
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,	5,  5,	5,  5,	5,  5,$1B,$1C
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,	5,  5,	5,  5,	5,  5,$1D,$1E
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,	5,  5,	5,  5,	5,  5,$1F,$20
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,$A5,$48,$A6,$A6,$A6,$A6,$A6,$A6,$A6,$A6
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	4,$A6,$A6,$A0,$A3,$A0,$A3,$A0,$A3,$A0
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	4,$A6,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	4,$A6,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	4,$A6,$A6,$A3,$A3,$A3,$A3,$A3,$A3,$A3
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,$A4,$18,$A6,$A6,$A6,$A6,$A6,$A6,$A6,$A6
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,$A4,$17,$17,$17,$17,$17,$17,$17,$17
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_10F097:	.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	0,  0,	0,  0
					
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,$A5,	2,  2,	2,  2
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,$A1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	3,  4,	5,  5,	5,  5
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	6,  3,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	3,  4,	5,  5,	5,  5
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	6,  3,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	3,  4,	5,  5,	5,  5
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	6,  3,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	3,  4,	5,  5,	5,  5
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	6,  3,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	3,  4,	8,  9,	8,  9
		.BYTE	8,  9,	5,  5,	8,  9,	8,  9,	5,  5,	5,  5,	6,  3,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	3,  4, $C, $D,$21,$22
		.BYTE $23,$24,	5,  5,$21,$22,$23,$24,	5,  5,	5,  5,	6,  3,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	3,  4, $C, $D,$25,$26
		.BYTE $25,$27,$68,$69,$25,$26,$25,$27,$A6,$A6,$A6,$A6,	6,  3,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	3,  4,$12,$13,$12,$28
		.BYTE $12,$13,$6A,$6B,$12,$28,$12,$13,$A6,$A0,$A3,$A6,	6,  3,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	3,  4,$A6,$A6,$A6,$A6
		.BYTE $A6,$A6,$A6,$A6,$A6,$A6,$A6,$A6,$A6,$A3,$A3,$A6,	6,  3,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	3,  4,$A6,$A0,$A3,$A0
		.BYTE $A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A6,	6,  3,	1,  1
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	1,  4,$A6,$A3,$A8,$A9
		.BYTE $A9,$A9,$A9,$A9,$A9,$A9,$A9,$A9,$A9,$99,$A3,$A6,	6,  3,	1,  1
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,$48,$A6,$A0,$9A,$A2
		.BYTE $A2,$A2,$A2,$A2,$A2,$A2,$A2,$A2,$A2,$9B,$A3,$A6,	6,  3,	1,  1
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,$A6,$A3,$9A,$A2
		.BYTE $A2,$A2,$A2,$A2,$A2,$A2,$A2,$A2,$A2,$9B,$A3,$A6,	6,  3,	1,  1
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,$A6,$A0,$9A,$A2
		.BYTE $A2,$A2,$A2,$A2,$A2,$A2,$A2,$A2,$A2,$9B,$A3,$A6,	6,  3,	1,  1
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,$A6,$A3,$9A,$A2
		.BYTE $A2,$A2,$A2,$A2,$A2,$A2,$A2,$A2,$A2,$9B,$A3,$A6,	6,  3,	1,  1
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,$A6,$A0,$9A,$A2
		.BYTE $A2,$A2,$A2,$A2,$A2,$A2,$A2,$A2,$A2,$9B,$A3,$A6,	6,  3,	1,  1
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,$A6,$A3,$9A,$A2
		.BYTE $A2,$A2,$A2,$A2,$A2,$A2,$A2,$A2,$A2,$9B,$A3,$A6,	6,  3,	1,  1
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,	5,  5,$A6,$A0,$9C,$9D
		.BYTE $9D,$9D,$9D,$9D,$9D,$9D,$9D,$9D,$9D,$9E,$A3,$A6,	6,  3,	1,  1
		.BYTE $A6,$A6,$A6,$A6,$A6,$A6,$A6,$A6,$A6,$A6,$A6,$A6,$A6,$A3,$A3,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A6,	6,  3,	1,  1
		.BYTE $A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0
		.BYTE $A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A6,	6,  3,	1,  1
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3
		.BYTE $A3,$A3,$A3,$A3,$2B,$2C,$A3,$A3,$2B,$2C,$A3,$A6,	6,  3,	1,  1
		.BYTE $A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0,$A3,$A0
		.BYTE $A3,$A0,$A3,$A6,$2F,$30,$A6,$A6,$2F,$30,$A6,$A6,	6,  3,	1,  1
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3
		.BYTE $A3,$A3,$A3,$A6,$31,$32,$A6,$A6,$31,$32,$A6,$A6,	6,  3,	1,  1
		.BYTE $A6,$A6,$A6,$A6,$A6,$A6,$A6,$A6,$A6,$A6,$A6,$A6,$A6,$A6,$A6,$A6
		.BYTE $A6,$A6,$A6,$A6,$33,$34,$A6,$A6,$33,$34,$A6,$A6,	6,  3,	1,  1
		.BYTE $17,$17,$17,$17,$17,$17,$17,$17,$17,$17,$17,$17,$17,$17,$17,$17
		.BYTE $17,$17,$17,$17,$17,$17,$17,$17,$17,$17,$17,$17,$A7,  1,	1,  1
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_10F497:	.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
					
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,$A5,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,$A1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,	5,  5,	5,  5,	5,  5,	5,  5
		.BYTE	5,  5,	5,  5,	5,  5,	5,  5,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,$A6,$9F,$9F,$9F,$9F,$9F,$9F,$9F
		.BYTE $9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,$A6,$A3,$A3,$A3,$A3,$A3,$A3,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$9F,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,$A6,$A3,$A0,$A3,$A0,$A3,$A0,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$A3,$A0,$9F,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,$A6,$A3,$A3,$A3,$A3,$A3,$A3,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$9F,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,$A6,$A3,$A0,$A3,$A0,$A3,$A0,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$A3,$A0,$9F,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,$A6,$A3,$A3,$A3,$A3,$A3,$A3,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$9F,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,$A6,$A3,$A0,$A3,$A0,$A3,$A0,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$A3,$A0,$9F,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,$A6,$A3,$A3,$A3,$A3,$A3,$A3,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$9F,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,$A6,$A3,$A0,$A3,$A0,$A3,$A0,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$A3,$A0,$9F,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,$A6,$A3,$A3,$A3,$A3,$A3,$A3,$A3
		.BYTE $A3,$A3,$A3,$A3,$A3,$A3,$A3,$9F,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,$A6,$A3,$A0,$A3,$A0,$A3,$A0,$A3
		.BYTE $A0,$A3,$A0,$A3,$A0,$A3,$A0,$9F,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	3,  4,$A6,$9F,$9F,$9F,$9F,$A3,$A3,$9F
		.BYTE $9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,	6,  3,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,$A4,$17,$17,$17,$18,$9F,$9F,$9F,$9F
		.BYTE $16,$17,$17,$17,$17,$17,$17,$17,$A7,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	0,  0,	0,$A4,$17,$17,$17,$17
		.BYTE $A7,  0,	0,  0,	0,  0,	0,  0,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1,	1,  1
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0

; =============== S U B	R O U T	I N E =======================================


tilemap_handler_10F897:			
		LDA	#$5B 
		STA	ptr_0
		LDA	#$80 
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
		LDA	data_2
		STA	ptr_0
		LDA	data_3
		STA	ptr_1
		LDA	tilemap_line_size_51
		CMP	#$20 
		BEQ	loc_10F8DF
		LDA	ptr_0
		CLC
		ADC	#$C0 
		STA	ptr_0
		LDA	ptr_1
		ADC	#3
		STA	ptr_1

loc_10F8DF:				
		LDY	tilemap_line_idx_4F

loc_10F8E1:				
		CPY	#0
		BEQ	loc_10F8F6
		LDA	ptr_0
		CLC
		ADC	tilemap_line_size_51
		STA	ptr_0
		LDA	ptr_1
		ADC	#0
		STA	ptr_1
		DEY
		JMP	loc_10F8E1
; ---------------------------------------------------------------------------

loc_10F8F6:				
		LDA	ptr_0
		CLC
		ADC	mapLineSize_50
		STA	ptr_0
		LDA	ptr_1
		ADC	#0
		STA	ptr_1
		LDA	mapLineWidth_52
		STA	data_2
		LDA	mapLineHeight_53
		STA	data_3
		LDY	#0
		LDX	#0

loc_10F90F:				
		LDA	(ptr_0),Y
		STA	tilemapData_4C,X
		LDA	ptr_0
		CLC
		ADC	data_3
		STA	ptr_0
		LDA	ptr_1
		ADC	#0
		STA	ptr_1
		INX
		CPX	data_2
		BCC	loc_10F90F
		RTS
; End of function tilemap_handler_10F897


; =============== S U B	R O U T	I N E =======================================


unused_10F926:
		LDA	#1
		STA	has_ppu_data_to_upload_6F

loc_10F92A:				
		LDA	has_ppu_data_to_upload_6F
		BNE	loc_10F92A
		RTS
; End of function unused_10F926


; =============== S U B	R O U T	I N E =======================================


unused_10F92F:				
		LDA	_PPU_STATUS
		BMI	unused_10F92F

loc_10F934:				
		LDA	_PPU_STATUS
		BPL	loc_10F934
		RTS
; End of function unused_10F92F


; =============== S U B	R O U T	I N E =======================================


unused_10F93A:
		LDA	#1
		STA	frame_render_count_350

loc_10F93F:				
		LDA	frame_render_count_350
		BNE	loc_10F93F
		RTS
; End of function unused_10F93A


; =============== S U B	R O U T	I N E =======================================


unused_10F945:
		LDY	#0

loc_10F947:				
		LDX	#0

loc_10F949:				
		LDA	input_reg1_347
		CMP	#0
		BNE	locret_10F956
		INX
		BNE	loc_10F949
		INY
		BNE	loc_10F947

locret_10F956:				
		RTS
; End of function unused_10F945


; =============== S U B	R O U T	I N E =======================================


unused_10F957:				
		LDA	input_pressed_34A
		CMP	#$80 
		BNE	unused_10F957
		RTS
; End of function unused_10F957


; =============== S U B	R O U T	I N E =======================================


unused_10F95F:				
		LDA	input_pressed_34A
		CMP	#$40 
		BNE	unused_10F95F
		RTS
; End of function unused_10F95F


; =============== S U B	R O U T	I N E =======================================


unused_10F967:				
		LDA	input_pressed_34A
		CMP	#0
		BEQ	unused_10F967
		RTS
; End of function unused_10F967


; =============== S U B	R O U T	I N E =======================================


unused_10F96F:				
		PHA
		JSR	unused_10F97A
		PLA
		SEC
		SBC	#1
		BNE	unused_10F96F
		RTS
; End of function unused_10F96F


; =============== S U B	R O U T	I N E =======================================


unused_10F97A:				
		PHA
		TXA
		PHA
		TYA
		PHA
		LDX	#0

loc_10F981:				
		LDY	#0

loc_10F983:				
		DEY
		BNE	loc_10F983
		DEX
		BNE	loc_10F981
		PLA
		TAY
		PLA
		TAX
		PLA
		RTS
; End of function unused_10F97A


; =============== S U B	R O U T	I N E =======================================


nmi_sub_10F98F:				
		LDA	#$F0 
		STA	byte_218
		STA	byte_21C
		STA	byte_220
		STA	byte_224
		STA	byte_2E8
		STA	byte_2EC
		RTS
; End of function nmi_sub_10F98F


; =============== S U B	R O U T	I N E =======================================


nmi_sub_10F9A4:				
		LDA	byte_43E
		BEQ	loc_10F9CB
		LDA	byte_203
		BNE	loc_10F9B6
		LDA	#0
		STA	byte_43E
		JMP	locret_10F9EC
; ---------------------------------------------------------------------------

loc_10F9B6:				
		LDA	byte_203
		SEC
		SBC	#8
		STA	byte_203
		LDA	byte_207
		SEC
		SBC	#8
		STA	byte_207
		JMP	locret_10F9EC
; ---------------------------------------------------------------------------

loc_10F9CB:				
		LDA	byte_203
		CMP	#$F8 
		BNE	loc_10F9DA
		LDA	#1
		STA	byte_43E
		JMP	locret_10F9EC
; ---------------------------------------------------------------------------

loc_10F9DA:				
		LDA	byte_203
		CLC
		ADC	#8
		STA	byte_203
		LDA	byte_207
		CLC
		ADC	#8
		STA	byte_207

locret_10F9EC:				
					; nmi_sub_10F9A4+24j ...
		RTS
; End of function nmi_sub_10F9A4


; =============== S U B	R O U T	I N E =======================================


NMI_10F9ED:				
		PHP
		PHA
		TXA
		PHA
		TYA
		PHA
		LDA	bank_switch_flag_6C
		CMP	#$88 
		BEQ	loc_10F9FC
		JMP	loc_10FA2D
; ---------------------------------------------------------------------------

loc_10F9FC:				
		LDA	#$EE 
		STA	bank_switch_flag_6C
		LDA	sprite_type_306
		BNE	loc_10FA08
		JSR	nmi_sub_10F98F

loc_10FA08:				
		LDA	#2
		STA	_PPU_OAM_DMA
		JSR	nmi_sub_10FA65
		JSR	nmi_sub_10FABA
		JSR	nmi_sub_10FAD3
		LDA	sprite_type_306
		CMP	#1
		BNE	loc_10FA23
		JSR	nmi_sub_10F9A4
		JSR	nmi_sub_10FB70

loc_10FA23:				
		JSR	nmi_sub_10FB36
		JSR	apu_music_update_10FBC8
		LDA	#$88 
		STA	bank_switch_flag_6C

loc_10FA2D:				
		LDA	byte_432
		BEQ	loc_10FA35
		DEC	byte_432

loc_10FA35:				
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
		BEQ	loc_10FA5E
		DEC	frame_render_count_350

loc_10FA5E:				
		PLA
		TAY
		PLA
		TAX
		PLA
		PLP

locret_10FA64:				
		RTI
; End of function NMI_10F9ED


; =============== S U B	R O U T	I N E =======================================


nmi_sub_10FA65:				
		LDA	has_ppu_data_to_upload_6F
		BNE	loc_10FA6A
		RTS
; ---------------------------------------------------------------------------

loc_10FA6A:				
		LDA	ppu_data_70
		BEQ	loc_10FAB5
		STA	ppu_fld0_x_6D
		LDX	#1

loc_10FA72:				
		LDA	ppu_data_70,X
		AND	#$80 
		BEQ	loc_10FA86
		LDA	ppu_ctrl_31F
		ORA	#4
		STA	ppu_ctrl_31F
		STA	_PPU_CTRL
		JMP	loc_10FA91
; ---------------------------------------------------------------------------

loc_10FA86:				
		LDA	ppu_ctrl_31F
		AND	#$FB 
		STA	ppu_ctrl_31F
		STA	_PPU_CTRL

loc_10FA91:				
		LDA	ppu_data_70,X
		AND	#$7F 
		STA	ppu_fld1_y_6E
		INX
		LDA	ppu_data_70,X
		STA	_PPU_ADDR
		INX
		LDA	ppu_data_70,X
		STA	_PPU_ADDR

loc_10FAA3:				
		INX
		LDA	ppu_data_70,X
		STA	_PPU_DATA
		DEC	ppu_fld1_y_6E
		BNE	loc_10FAA3
		DEC	ppu_fld0_x_6D
		BEQ	loc_10FAB5
		INX
		JMP	loc_10FA72
; ---------------------------------------------------------------------------

loc_10FAB5:				
					; nmi_sub_10FA65+4Aj
		LDA	#0
		STA	has_ppu_data_to_upload_6F
		RTS
; End of function nmi_sub_10FA65


; =============== S U B	R O U T	I N E =======================================


nmi_sub_10FABA:				
		LDA	ppu_ctrl_31F
		STA	_PPU_CTRL
		LDA	ppu_mask_320
		STA	_PPU_MASK
		LDA	ppu_scroll_x_304
		STA	_PPU_SCROLL
		LDA	ppu_scroll_y_305
		STA	_PPU_SCROLL
		RTS
; End of function nmi_sub_10FABA


; =============== S U B	R O U T	I N E =======================================


nmi_sub_10FAD3:				
		TYA
		PHA
		TYA
		PHA
		JSR	pad_input_update_10FAEB
		JSR	input_sub_10FB0B
		LDA	input_pressed_34A
		ORA	input_unk_34B
		STA	input_unk_349
		PLA
		TAX
		PLA
		TAY
		RTS
; End of function nmi_sub_10FAD3


; =============== S U B	R O U T	I N E =======================================


pad_input_update_10FAEB:		
		LDX	#1
		STX	_PAD0_REG
		DEX
		STX	_PAD0_REG
		LDA	#0
		LDY	#8

loc_10FAF8:				
		PHA
		LDA	_PAD0_REG,X
		STA	input_reg0_34E
		LSR	input_reg0_34E
		PLA
		ROL	A
		DEY
		BNE	loc_10FAF8
		STA	input_reg1_347,X
		RTS
; End of function pad_input_update_10FAEB


; =============== S U B	R O U T	I N E =======================================


input_sub_10FB0B:			
		LDX	#0
		LDA	input_reg1_347,X
		EOR	input_unk_34C,X
		AND	input_reg1_347,X
		STA	input_pressed_34A,X
		LDA	input_reg1_347,X
		STA	input_unk_34C,X
		RTS
; End of function input_sub_10FB0B


; =============== S U B	R O U T	I N E =======================================


unused_10FB20:
		LDA	ppu_ctrl_31F
		STA	_PPU_CTRL
		LDA	ppu_mask_320
		STA	_PPU_MASK
		RTS
; End of function unused_10FB20


; =============== S U B	R O U T	I N E =======================================


unused_10FB2D:
		LDA	#0
		STA	_PPU_CTRL
		STA	_PPU_MASK
		RTS
; End of function unused_10FB2D


; =============== S U B	R O U T	I N E =======================================


nmi_sub_10FB36:				
		INC	byte_353
		LDA	byte_353
		CMP	#$19
		BCS	loc_10FB41
		RTS
; ---------------------------------------------------------------------------

loc_10FB41:				
		LDA	#0
		STA	byte_353
		LDA	byte_354
		CMP	#0
		BNE	loc_10FB6C
		LDA	byte_355
		CMP	#0
		BNE	loc_10FB64
		LDA	byte_356
		CMP	#0
		BNE	loc_10FB5C
		RTS
; ---------------------------------------------------------------------------

loc_10FB5C:				
		DEC	byte_356
		LDA	#$A
		STA	byte_355

loc_10FB64:				
		DEC	byte_355
		LDA	#$A
		STA	byte_354

loc_10FB6C:				
		DEC	byte_354
		RTS
; End of function nmi_sub_10FB36


; =============== S U B	R O U T	I N E =======================================


nmi_sub_10FB70:				
		INC	scroll_offset_x_479
		LDA	scroll_offset_x_479
		CMP	#$A
		BCC	locret_10FBC7
		LDA	scroll_offset_y_47A
		EOR	#$80 
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		AND	#$FE 
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		AND	#$7F 
		CMP	#0
		BEQ	locret_10FBC7
		LDA	scroll_offset_y_47A
		PHA
		LDA	scroll_offset_y_47A
		AND	#$80 
		CMP	#0
		BEQ	loc_10FBA8
		LDA	#0
		STA	ppu_scroll_y_305
		JMP	loc_10FBBA
; ---------------------------------------------------------------------------

loc_10FBA8:				
		LDA	scroll_offset_y_47A
		AND	#$7F 
		STA	scroll_offset_y_47A
		LDA	ppu_scroll_y_305
		CLC
		ADC	scroll_offset_y_47A
		STA	ppu_scroll_y_305

loc_10FBBA:				
		PLA
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		SEC
		SBC	#2
		STA	scroll_offset_y_47A

locret_10FBC7:				
					; nmi_sub_10FB70+21j
		RTS
; End of function nmi_sub_10FB70


; =============== S U B	R O U T	I N E =======================================


apu_music_update_10FBC8:		
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
		JSR	bank_switch_108000
		PLA
		STA	bank_from_343
		PLA
		STA	bank_to_344
		PLA
		STA	bank_command_346
		RTS
; End of function apu_music_update_10FBC8

; ---------------------------------------------------------------------------
aDPCrT:		.BYTE ', D, P, <CR> = T) : ',0
aListOnOffListingDestin:.BYTE 'LIST ON/OFF Listing Destination  (T, D, P, <CR> = T) : ',0
aEnterRunTimeSelection:.BYTE $A
		.BYTE $A
		.BYTE 'Enter Run Time Selection : ',0
		.BYTE  $A
		.BYTE	0
aAssemblyTerminatedByOp:.BYTE 'Assembly Terminated By Operator',$A
		.BYTE $A,0
aCanTCreateDiskListingF:.BYTE 'Can',$27,'t Create Disk Listing File',$A,0
aActiveCommands:.BYTE $A
		.BYTE '                         ***** Active Commands *****',$A
		.BYTE $A,0
aCtrlSStopOutput:.BYTE '                           Ctrl S = Stop Output',$A,0
aCtrlQStartOutput:.BYTE	'                           Ctrl Q = Start Output',$A,0
aEscCStopAssembly:.BYTE	'                           Esc  C = Stop Assembly',$A,0
aEscTTerminalOutput:.BYTE '                           Esc  T = Terminal Output',$A,0
aEscPPrinterOutput:.BYTE '                           Esc  P = Printer Output',$A,0
aEscDDiskOutput:.BYTE '                           Esc  D = Disk Output',$A,0
aEscMMultipleOutput:.BYTE '                           Esc  M = Multiple Output',$A,0
aEscNNoOutput:	.BYTE '                           Esc  N = No Output',$A
		.BYTE $A,0
aRenameFileError:.BYTE 'Rename File Error',$A,0
aPage4u:	.BYTE 'Page %4u',0
aLib:		.BYTE 'LIB',0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE	0
aC:		.BYTE '%c',0
		.BYTE  $A
aMaximumNumberOfDiffere:.BYTE 'Maximum Number of Different Sections (%d) Exceeded.  Link Term'
		.BYTE 'inated.',$A
		.BYTE $A,0
aS:		.BYTE '%s',0
		.BYTE	0
aDiskListingFilename:.BYTE 'Disk Listing  Filename : ',0
aSymbolTableFilename:.BYTE 'Symbol Table  Filename : ',0
aFormat:	.BYTE 'Format   : ',0
aLinkerOutputFilename:.BYTE 'Linker Output Filename : ',0
aMicrotek:	.BYTE 'Microtek',0
aZax:		.BYTE 'Zax',0
aAbbreviated2500A_d_:.BYTE 'Abbreviated 2500 A.D.',0
a2500A_d__0:	.BYTE '2500 A.D.',0
aNoneSpecified:	.BYTE '<None Specified>',0
aLinkErrors_0:	.BYTE $A
		.BYTE '         Link Errors :  ',0
aOutputFormat_0:.BYTE '         Output Format :  ',0
aExecutable:	.BYTE 'Executable',0
aIntelHex:	.BYTE 'Intel Hex',0
aExtendedIntelHex:.BYTE	'Extended Intel Hex',0
aTektronixHex:	.BYTE 'Tektronix Hex',0
aMotorolaS1:	.BYTE 'Motorola S1',0
		.BYTE	0
aMotorolaS:	.BYTE 'Motorola S'
		.WORD NMI_10F9ED
		.WORD off_10805B
		.WORD locret_10FA64
; end of 'BANK_10'

; ===========================================================================