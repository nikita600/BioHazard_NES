; Segment type:	Pure code
		;.segment BANK_0F
		* =  $8000

; =============== S U B	R O U T	I N E =======================================


bank_switch_F8000:
		.include "common\bank_switch_func.asm"

switch_case_8035:				
					; bank_switch_F8000+1Dj ...
		LDA	bank_to_344
		STA	bank_prev_345
		LDA	#$88 
		STA	bank_switch_flag_6C
		LDA	bank_command_346
		CMP	#0
		BEQ	loc_F8047
		RTS
; ---------------------------------------------------------------------------

loc_F8047:				
		JSR	tilemap_handler_FF897
		JMP	loc_F804D
; ---------------------------------------------------------------------------

loc_F804D:				
		LDA	#$FF
		STA	bank_command_346
		LDA	bank_from_343
		STA	bank_to_344
		JMP	bank_switch_F8000
; End of function bank_switch_F8000

; ---------------------------------------------------------------------------
off_F805B:	.WORD byte_F8097	
		.WORD byte_F8497
		.WORD byte_F8897
		.WORD byte_F8C97
		.WORD byte_F9097
		.WORD byte_F9497
		.WORD byte_F9897
		.WORD byte_F9C97
		.WORD byte_FA097
		.WORD byte_FA497
		.WORD byte_FA897
		.WORD byte_FAC97
		.WORD byte_FB097
		.WORD byte_FB497
		.WORD byte_FB897
		.WORD byte_FBC97
		.WORD byte_FC097
		.WORD byte_FC497
		.WORD byte_FC897
		.WORD byte_FCC97
		.WORD byte_FD097
		.WORD byte_FD497
		.WORD byte_FD897
		.WORD byte_FDC97
		.WORD byte_FE097
		.WORD byte_FE497
		.WORD byte_FE897
		.WORD byte_FEC97
		.WORD byte_FF097
		.WORD byte_FF497
byte_F8097:	.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
					
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
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	3, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $22,$22,$22,$22,$33,$34,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $22,$22,$22,$22,$37,$38,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $22,$22,$22,$22,$3B,$3C,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $22,$22,$22,$22,$3F,$40,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1D, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
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
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_F8497:	.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
					
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F,  1,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	3, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$33,$34
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	4,  5,$22,$22,$35,$36,$22,$22,$37,$38
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	4,  5,$22,$22,$39,$3A,$22,$22,$3B,$3C
		.BYTE $22,$22,$22,$22,$3D,$3E,$3D,$3E,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$3F,$40
		.BYTE $22,$22,$22,$22,$41,$42,$41,$42,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	4,  5,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB
		.BYTE $BC,$BB,$BC,$BB,$43,$44,$43,$44,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$BD,$45,$46,$45,$46,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BB,$BC,$BB,$BC,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$47,$48,$48,$48
		.BYTE $48,$48,$48,$49,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$4A,$4B,$4B,$4B
		.BYTE $4B,$4B,$4B,$4C,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$4A,$4B,$4B,$4B
		.BYTE $4B,$4B,$4B,$4C,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$4A,$4B,$4B,$4B
		.BYTE $4B,$4B,$4B,$4C,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$4A,$4B,$4B,$4B
		.BYTE $4B,$4B,$4B,$4C,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$4A,$4B,$4B,$4B
		.BYTE $4B,$4B,$4B,$4C,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$4A,$4B,$4B,$4B
		.BYTE $4B,$4B,$4B,$4C,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$4D,$4E,$4E,$4E
		.BYTE $4E,$4E,$4E,$4F,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	4,  5,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD
		.BYTE $B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F,$15,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C
		.BYTE $1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1D, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,$40,	0,  0,	0,  0
		.BYTE	0,  0,	0,  4,	0,$55,	0,  0,	0,  0,	0,$50,$50,  0,	0,  0
		.BYTE	0,  0,	0,$55,$55,  0,	0,  0,	0,  0,	0,  5,	5,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_F8897:	.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
					
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	0,  0,	0,  0,	0,  0,	0,  0, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F,  1,	2,  2,	2,  2,	2,  2,	2,  2,	3, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BB,$BC,$BB,$BC,$BB,$50,$51,	8,  4
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$52,$53,	8,  4
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$54,$55,	8,  4
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$56,$57,	8,  4
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,$2B,$1C,$1D, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,	8, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,	8, $F,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,$58,  2,	2,  2
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE  $F, $F, $F, $F,	1,$12,$B8,$B9,$BA,$B9,$BA,$BD,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE  $F, $F, $F, $F,	5,$BB,$BC,$BF,$B7,$BF,$B7,$BB,$BC,$BB,$BC,$BB
		.BYTE $BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB
		.BYTE  $F, $F, $F, $F,	5,$BD,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE  $F, $F, $F, $F,	5,$BB,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE  $F, $F, $F, $F,	5,$BD,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_F8C97:	.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
					
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
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	3, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $22,$22,$22,$22,$22,$22,$33,$34,$22,$22,$22,$22,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $22,$22,$22,$22,$22,$22,$37,$38,$22,$22,$22,$22,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $22,$22,$22,$22,$22,$22,$3B,$3C,$22,$22,$22,$22,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $22,$22,$22,$22,$22,$22,$3F,$40,$22,$22,$22,$22,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_F9097:	.BYTE  $F, $F, $F, $F,$15,$16,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
					
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
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,	8, $F,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,$58,  2,	2,  2
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$33,$34,$22,$22,$22,$22,$22,$22
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$37,$38,$22,$22,$22,$22,$22,$22
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$3B,$3C,$22,$22,$22,$22,$22,$22
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$3F,$40,$22,$22,$22,$22,$22,$22
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,$BC,$BB,$BC,$BB
		.BYTE $BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
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
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_F9497:	.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F
					
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $B8,$BD,$B8,$BD,$B8,$BD,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $1C,$1C,$1C,$1C,$1C,$16,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	0,  0,	0,  0, $F,  5,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F
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
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	0,  0,	0,  0, $F,  5,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	2,  2,	2,  2,	2,$12,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $22,$22,$22,$22,$22,$22,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $22,$22,$22,$22,$22,$22,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $22,$22,$22,$22,$22,$22,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $22,$22,$22,$22,$22,$22,$B8,$B9,$BA,$B9,$BA,$BD,$58,  3, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $22,$22,$22,$22,$22,$22,$BC,$BF,$B7,$BF,$B7,$BB,$BC,  8, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $22,$22,$22,$22,$22,$22,$B8,$B9,$BA,$B9,$BA,$B9,$B8,  8, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $BC,$BB,$BC,$BB,$BC,$BB,$BC,$BF,$B7,$BF,$B7,$BF,$BC,  8, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,$B8,  8, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,$2B,$1D, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,	8,  4, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1D, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
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
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_F9897:	.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
					
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
		.BYTE  $F, $F, $F, $F,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE  $F, $F, $F,  1,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE  $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE  $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE  $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $33,$34,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE  $F, $F,	4,  5,$22,$59,$59,$59,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $37,$38,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE  $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $3B,$3C,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE  $F, $F,	1,$12,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $3F,$40,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE  $F, $F,	5,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB
		.BYTE $BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB
		.BYTE  $F, $F,	5,$BD,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE  $F, $F,	5,$BB,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE  $F, $F,	5,$BD,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE  $F, $F,$15,$16,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE  $F, $F,	4,  5,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD
		.BYTE $B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$B9,$BA,$BD,$B8,$BD
		.BYTE  $F, $F, $F,$15,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C
		.BYTE $1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$16,$BC,$BB,$BC,$BB,$2B,$1C
		.BYTE  $F, $F, $F, $F,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,$15,$1C,$1C,$1C,$1C,$1D,  0
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
byte_F9C97:	.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
					
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
		.BYTE	0,  0,	0,  0, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	2,  2,	2,  2,	3, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $22,$22,$22,$22,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $22,$22,$22,$22,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $22,$22,$22,$22,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $22,$22,$22,$22,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $22,$22,$22,$22,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $22,$22,$22,$22,$58,  3, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $BC,$BB,$BC,$BB,$BC,  8, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $BA,$B9,$BA,$B9,$B8,  8, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $B7,$BF,$B7,$BF,$BC,  8, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $BA,$B9,$BA,$BD,$B8,  8, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $B7,$BF,$B7,$BB,$2B,$1D, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $B8,$BD,$B8,$BD,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE $1C,$1C,$1C,$1C,$1D, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	0,  0,	0,  0, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
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
byte_FA097:	.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
					
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0, $F, $F, $F, $F
		.BYTE  $F, $F, $F,  1,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	3, $F, $F, $F
		.BYTE  $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$22,$22,$5A,$5B,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$33,$34,$22,$22,$22,$22,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$22,$22,$5C,$5D,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$37,$38,$22,$22,$22,$22,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$3B,$3C,$22,$22,$22,$22,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$3F,$40,$22,$22,$22,$22,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$5E,$5F,$5E,$5F
		.BYTE $5E,$5F,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$60,$61,$60,$61
		.BYTE $60,$61,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$5E,$5F
		.BYTE $5E,$5F,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$60,$61
		.BYTE $60,$61,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$3D,$48,$48,$48,$48,$3E,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$4A,$4B,$4B,$4B,$4B,$62,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$4A,$4B,$4B,$4B,$4B,$62,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$63,$C0,$C0,$C0,$C1,$B6,	8,  4, $F, $F
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
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,$40,	0,  0
		.BYTE	0,  0,	0,$50,$10,  4,	0,  0,	0,  0,	0,  4,	1,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,$44,$55,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_FA497:	.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
					
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0, $F, $F, $F, $F
		.BYTE  $F, $F, $F,  1,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	3, $F, $F, $F
		.BYTE  $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$22,$22,$5A,$5B,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$33,$34,$22,$22,$22,$22,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$22,$22,$5C,$5D,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$37,$38,$22,$22,$22,$22,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$3B,$3C,$22,$22,$22,$22,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$3F,$40,$22,$22,$22,$22,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$5E,$5F,$5E,$5F
		.BYTE $5E,$5F,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$60,$61,$60,$61
		.BYTE $60,$61,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$5E,$5F
		.BYTE $5E,$5F,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$60,$61
		.BYTE $60,$61,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$3D,$48,$48,$48,$48,$3E,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$4A,$4B,$4B,$4B,$4B,$62,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$4A,$4B,$4B,$4B,$4B,$62,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$63,$C0,$C0,$C0,$C1,$B6,	8,  4, $F, $F
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
		.BYTE $C0,$F0,$F0,$F8,$F0,$F0,$FC,$30,$CC,$EA,$AA,$AA,$AA,$AA,$AA,$33
		.BYTE $CC,$AA,$AA,$AA,$AA,$AA,$AA,$33,$CC,$AA,$AA,$AA,$AA,$AA,$AA,$33
		.BYTE $CC,$AA,$AA,$AA,$AA,$AA,$AA,$33,$CC,$AA,$AA,$AA,$AA,$AA,$AA,$33
		.BYTE  $C, $F, $F, $F, $F,$3F, $F,  3,	0,  0,	0,  0,	0,  0,	0,  0
byte_FA897:	.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
					
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F,  1,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	3, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$35,$36,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$39,$3A,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB
		.BYTE $BC,$BB,$BC,$BB,$BC,$BB,$64,$65,$48,$66,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$67,$68,$69,$6A,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$BE,$C0,$C1,$B6,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $5E,$5F,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $60,$61,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $5E,$5F,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $60,$61,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $5E,$5F,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$BD,$B8,$BD,$B8,$B9,$BA,$BD,$B8,$BD
		.BYTE $60,$61,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F,$15,$1C,$1C,$1C,$16,$BC,$BB,$BC,$BB,$2B,$1C
		.BYTE $1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1D, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	0,  0,	0,$15,$1C,$1C,$1C,$1C,$1D,  0
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
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_FAC97:	.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
					
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F,  1,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	3, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB
		.BYTE $BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$BD,$B8,$BD
		.BYTE $B8,$BD,$B8,$BD,$B8,$B9,$BA,$BD,$B8,$BD,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BB,$2B,$1C
		.BYTE $1C,$1C,$1C,$16,$BC,$BB,$BC,$BB,$2B,$1C,$1D, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8, $F
		.BYTE	0,  0,	0,$15,$1C,$1C,$1C,$1C,$1D,  0, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4
		.BYTE  $F, $F, $F, $F,	0,  0,	0,  0, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_FB097:	.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4
					
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$BD,$58,  3
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BB,$BC,  8
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$B8,  8
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$BC,  8
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$BD,$B8,  8
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BB,$2B,$1D
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,	8,  4
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F,$15,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1D, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	0,  0,	0,  0,	0,  0,	0,  0, $F, $F
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
byte_FB497:	.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
					
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0, $F, $F, $F, $F
		.BYTE  $F, $F, $F,  1,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	3, $F, $F, $F
		.BYTE  $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$6B,$6C,$6B,$6D
		.BYTE $6B,$6C,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$6E,$6F,$70,$71
		.BYTE $6E,$6F,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$72,$73,$72,$73,$33,$34,$72,$73,$6E,$6F,$74,$75
		.BYTE $6E,$6F,$72,$73,$72,$73,$72,$73,$72,$73,$72,$73,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$76,$77,$76,$77,$37,$38,$76,$77,$6E,$6F,$78,$79
		.BYTE $6E,$6F,$76,$77,$76,$77,$76,$77,$76,$77,$76,$77,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$7A,$7B,$7A,$7B,$3B,$3C,$7A,$7B,$6E,$6F,$7C,$7D
		.BYTE $6E,$6F,$7A,$7B,$7A,$7B,$7A,$7B,$7A,$7B,$7A,$7B,	8,  4, $F, $F
		.BYTE  $F, $F,	4,  5,$7E,$7F,$7E,$7F,$3F,$40,$7E,$7F,$80,$81,$82,$83
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
byte_FB897:	.BYTE  $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8, $F,	0,  0
					
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
byte_FBC97:	.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
					
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F,  1,	2,  2,	2,  2,	2,  2
		.BYTE	2,  2,	2,  2,	2,  2,	3, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$33,$34,$22,$22,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$37,$38,$22,$22,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$3D,$3E,$22,$22,$22,$22
		.BYTE $22,$22,$3B,$3C,$22,$22,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$90,$91,$22,$22,$22,$22
		.BYTE $22,$22,$3F,$40,$22,$22,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$90,$91,$BC,$BB,$BC,$BB
		.BYTE $BC,$BB,$BC,$BB,$BC,$BB,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$45,$46,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$92,$93,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$94,$95,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$96,$97,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$98,$99,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$B8,$BD,$B8,$BD,$B8,$BD
		.BYTE $B8,$BD,$B8,$BD,$B8,$BD,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F,$15,$1C,$1C,$1C,$1C,$1C,$1C
		.BYTE $1C,$1C,$1C,$1C,$1C,$1C,$1D, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_FC097:	.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
					
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F,  1,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	3, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$72,$73,$72,$73,$72,$73,$72,$73,$22,$22
		.BYTE $22,$22,$72,$73,$72,$73,$72,$73,$72,$73,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$76,$77,$76,$77,$76,$77,$76,$77,$22,$22
		.BYTE $22,$22,$76,$77,$76,$77,$76,$77,$76,$77,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$7A,$7B,$7A,$7B,$7A,$7B,$7A,$7B,$22,$22
		.BYTE $22,$22,$7A,$7B,$7A,$7B,$7A,$7B,$7A,$7B,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$7E,$7F,$7E,$7F,$7E,$7F,$7E,$7F,$84,$85
		.BYTE $86,$87,$7E,$7F,$7E,$7F,$7E,$7F,$7E,$7F,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$88,$89
		.BYTE $8A,$8B,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$BD,$8C,$8D
		.BYTE $8D,$8E,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BB,$BC,$BB
		.BYTE $BC,$BB,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD
		.BYTE $B8,$BD,$B8,$BD,$B8,$B9,$BA,$BD,$B8,$BD,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F,$15,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C
		.BYTE $1C,$1C,$1C,$16,$BC,$BB,$BC,$BB,$2B,$1C,$1D, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,$15,$1C,$1C,$1C,$1C,$1D,  0, $F, $F, $F, $F, $F, $F
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
byte_FC497:	.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
					
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F,  1,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	3, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	4,  5,$92,$93,$92,$93,$92,$93,$92,$93
		.BYTE $92,$93,$92,$93,$92,$93,$92,$93,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	4,  5,$94,$95,$94,$95,$94,$95,$94,$95
		.BYTE $94,$95,$94,$95,$94,$95,$94,$95,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	4,  5,$96,$97,$96,$97,$96,$97,$96,$97
		.BYTE $96,$97,$96,$97,$96,$97,$96,$97,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	4,  5,$98,$99,$98,$99,$98,$99,$98,$99
		.BYTE $98,$99,$98,$99,$98,$99,$98,$99,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	4,  5,$64,$65,$48,$66,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	4,  5,$67,$68,$69,$6A,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	4,  5,$BE,$C0,$C1,$B6,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	4,  5,$92,$93,$92,$93,$92,$93,$92,$93
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	4,  5,$94,$95,$94,$95,$94,$95,$94,$95
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	4,  5,$96,$97,$96,$97,$96,$97,$96,$97
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	4,  5,$98,$99,$98,$99,$98,$99,$98,$99
		.BYTE $B8,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F,$15,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$16
		.BYTE $BC,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F,	0,  0,	0,  0,	0,  0, $F,  5
		.BYTE $B8,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5
		.BYTE $BC,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5
		.BYTE $B8,$BD,$B8,$B9,$BA,$BD,$B8,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,$15
		.BYTE $1C,$16,$BC,$BB,$BC,$BB,$2B,$1C,$1D, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	0,$15,$1C,$1C,$1C,$1C,$1D,  0, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_FC897:	.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
					
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
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F,	0,  0,	0,  0,	0,  0,	0,  0, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F,  1,	2,  2,	2,  2,	2,  2,	2,  2, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$22,$22,$22,$22,$22,$22,$22,$22, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$22,$22,$22,$22,$22,$22,$22,$22, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$22,$22,$22,$22,$22,$22,$22,$22, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$22,$22,$22,$22,$22,$22,$22,$22, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$22,$22,$22,$22,$22,$22,$22,$22, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$22,$22,$22,$22,$22,$22,$22,$22, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$BC,$BB,$BC,$BB,$BC,$BB, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,$17, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,$18,$19, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,$1A,$1B, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,$11,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_FCC97:	.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
					
		.BYTE	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE  $F,  5,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F,  1,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE	2,$12,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$33,$34,$22,$22,$22,$22
		.BYTE $22,$22,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$37,$38,$22,$22,$22,$22
		.BYTE $22,$22,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$3B,$3C,$22,$22,$22,$22
		.BYTE $22,$22,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F,	1,$12,$22,$22,$22,$22,$22,$22,$3F,$40,$22,$22,$22,$22
		.BYTE $22,$22,$B8,$B9,$BA,$B9,$BA,$BD,$58,  3, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F,	5,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB
		.BYTE $BC,$BB,$BC,$BF,$B7,$BF,$B7,$BB,$BC,  8, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F,	5,$BD,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,$B8,  8, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F,	5,$BB,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,$BC,  8, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F,	5,$BD,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,$B8,  8, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F,$15,$16,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,$2B,$1D, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F,	4,  5,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD
		.BYTE $B8,$BD,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F,$15,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C
		.BYTE $1C,$16,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE  $F,  5,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$40,  0,	0,  0,	0,  0
		.BYTE	0,  0,	4,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_FD097:	.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
					
		.BYTE	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$B8,$B9,$BA,$BD,$B8,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$BC,$BB,$BC,$BB,$2B,$1C,$1D, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F,$15,$1C,$1C,$1C,$1C,$1D,  0, $F, $F, $F, $F, $F, $F, $F, $F
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
byte_FD497:	.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
					
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F,  1,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	3, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BB,$BC,$BB,$BC,$BB,$5E,$5F,$BC,$BB
		.BYTE $BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$60,$61,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$5E,$5F,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$5E,$5F,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$60,$61,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$60,$61,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$5E,$5F,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$60,$61,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$47,$48,$48,$48
		.BYTE $48,$48,$48,$49,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$4A,$4B,$4B,$4B
		.BYTE $4B,$4B,$4B,$4C,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$4A,$4B,$4B,$4B
		.BYTE $4B,$4B,$4B,$4C,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$4D,$4E,$4E,$4E
		.BYTE $4E,$4E,$4E,$4F,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$B9
		.BYTE $BA,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F,$15,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$16,$BC,$BB
		.BYTE $BC,$BB,$2B,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1D, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	0,  0,	0,  0,	0,  0,	0,$15,$1C,$1C
		.BYTE $1C,$1C,$1D,  0,	0,  0,	0,  0,	0,  0, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0, $C,  0,	0,  3,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_FD897:	.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
					
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F,  1,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	3, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BB,$BC,$BB,$BC,$BB,$5E,$5F,$BC,$BB
		.BYTE $BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	1,$12,$B8,$B9,$BA,$B9,$BA,$B9,$60,$61,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	5,$BB,$BC,$BF,$B7,$BF,$B7,$BF,$5E,$5F,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$5E,$5F,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	5,$BD,$BA,$B9,$BA,$B9,$BA,$B9,$60,$61,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$60,$61,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	5,$BB,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	5,$BD,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,$15,$16,$BC,$BF,$B7,$BF,$5E,$5F,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$60,$61,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$47,$48,$48,$48
		.BYTE $48,$48,$48,$49,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$4A,$4B,$4B,$4B
		.BYTE $4B,$4B,$4B,$4C,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$4A,$4B,$4B,$4B
		.BYTE $4B,$4B,$4B,$4C,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$4D,$4E,$4E,$4E
		.BYTE $4E,$4E,$4E,$4F,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$B9
		.BYTE $BA,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F,$15,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$16,$BC,$BB
		.BYTE $BC,$BB,$2B,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1D, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	0,  0,	0,  0,	0,  0,	0,$15,$1C,$1C
		.BYTE $1C,$1C,$1D,  0,	0,  0,	0,  0,	0,  0, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0, $C,  0,	0,  3,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_FDC97:	.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
					
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F,  1,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	3, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$3D,$3E,$3D,$3E,$3D,$3E,$3D,$3E,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$41,$42,$41,$42,$90,$91,$9A,$9B,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB
		.BYTE $27,$28,$43,$44,$43,$44,$90,$91,$43,$9C,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $29,$2A,$45,$46,$45,$46,$45,$46,$45,$9D,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	1,$12,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	5,$BB,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	5,$BD,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	5,$BB,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$9E,$9F,$92,$93,$B7,$BB,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	5,$BD,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$A0,$A1,$94,$95,$BA,$BD,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,$15,$16,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$96,$97,$B7,$BB,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$98,$99,$BA,$BD,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD
		.BYTE $B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F,$15,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C
		.BYTE $1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1D, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0, $F, $F, $F, $F, $F, $F
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
byte_FE097:	.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
					
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE  $F, $F, $F,  1,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE  $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE  $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE  $F, $F,	4,  5,$72,$73,$72,$73,$72,$73,$72,$73,$72,$73,$72,$73
		.BYTE $72,$73,$72,$73,$72,$73,$22,$22,$33,$34,$22,$22,$72,$73,$72,$73
		.BYTE  $F, $F,	4,  5,$76,$77,$76,$77,$76,$77,$76,$77,$76,$77,$76,$77
		.BYTE $76,$77,$76,$77,$76,$77,$22,$22,$37,$38,$22,$22,$76,$77,$76,$77
		.BYTE  $F, $F,	4,  5,$7A,$7B,$7A,$7B,$7A,$7B,$7A,$7B,$7A,$7B,$7A,$7B
		.BYTE $7A,$7B,$7A,$7B,$7A,$7B,$22,$22,$3B,$3C,$22,$22,$7A,$7B,$7A,$7B
		.BYTE  $F, $F,	4,  5,$7E,$7F,$7E,$7F,$7E,$7F,$7E,$7F,$7E,$7F,$7E,$7F
		.BYTE $7E,$7F,$7E,$7F,$7E,$7F,$22,$22,$3F,$40,$22,$22,$7E,$7F,$7E,$7F
		.BYTE  $F, $F,	4,  5,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB
		.BYTE $BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB
		.BYTE  $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE  $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE  $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE  $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE  $F, $F,	4,  5,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$B9,$BA,$B9
		.BYTE $BA,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD
		.BYTE  $F, $F, $F,$15,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$16,$BC,$BF,$B7,$BF
		.BYTE $B7,$BB,$2B,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C
		.BYTE  $F, $F, $F, $F,	0,  0,	0,  0,	0,  0, $F,  5,$B8,$B9,$BA,$B9
		.BYTE $BA,$BD,	8, $F,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF
		.BYTE $B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9
		.BYTE $BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF
		.BYTE $B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9
		.BYTE $BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF
		.BYTE $B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$B8,$B9,$BA,$B9
		.BYTE $BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	0,  0,	0,  0, $F,  5,$BC,$BF,$B7,$BF
		.BYTE $B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F,  1,	2,  2,	2,  2,	2,$12,$B8,$B9,$BA,$B9
		.BYTE $BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$BC,$BF,$B7,$BF
		.BYTE $B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$B8,$B9,$BA,$B9
		.BYTE $BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$BC,$BF,$B7,$BF
		.BYTE $B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$B8,$B9,$BA,$B9
		.BYTE $BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_FE497:	.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$BC,$BF,$B7,$BF
					
		.BYTE $B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,$B8,$B9,$BA,$B9
		.BYTE $BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$84,$85,$86,$87,$BC,$BB,$BC,$BF,$B7,$BF
		.BYTE $B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$88,$89,$8A,$8B,$B8,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$8C,$8D,$8D,$8E,$BC,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$BD,$B8,$BD,$B8,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F,	4,  5,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD
		.BYTE $B8,$BD,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F,$15,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C
		.BYTE $1C,$1C,$1D, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
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
byte_FE897:	.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
					
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	3, $F, $F, $F, $F, $F, $F, $F
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE $72,$73,$72,$73,$72,$73,$72,$73,$72,$73,$72,$73,$72,$73,$72,$73
		.BYTE $72,$73,$72,$73,$72,$73,$72,$73,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE $76,$77,$76,$77,$76,$77,$76,$77,$76,$77,$76,$77,$76,$77,$76,$77
		.BYTE $76,$77,$76,$77,$76,$77,$76,$77,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE $7A,$7B,$7A,$7B,$7A,$7B,$7A,$7B,$7A,$7B,$7A,$7B,$7A,$7B,$7A,$7B
		.BYTE $7A,$7B,$7A,$7B,$7A,$7B,$7A,$7B,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE $7E,$7F,$7E,$7F,$7E,$7F,$7E,$7F,$7E,$7F,$7E,$7F,$7E,$7F,$7E,$7F
		.BYTE $7E,$7F,$7E,$7F,$7E,$7F,$7E,$7F,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE $BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB
		.BYTE $BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE $B8,$BD,$B8,$B9,$BA,$B9,$BA,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD
		.BYTE $B8,$BD,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE $1C,$16,$BC,$BF,$B7,$BF,$B7,$BB,$2B,$1C,$1C,$1C,$1C,$1C,$1C,$1C
		.BYTE $1C,$16,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F,  5,$B8,$B9,$BA,$B9,$BA,$BD,	8, $F,	0,  0,	0,  0,	0,  0
		.BYTE  $F,  5,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_FEC97:	.BYTE	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
					
		.BYTE	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,	8, $F,	0,  0,	0,  0,	0,  0
		.BYTE  $F,  5,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,$58,  2,	2,  2,	2,  2,	2,  2
		.BYTE	2,$12,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB
		.BYTE $BC,$BB,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$B8,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$BC,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD
		.BYTE $B8,$BD,$B8,$B9,$BA,$BD,$B8,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,$2B,$1C,$1C,$1C,$1C,$1C,$1C,$1C
		.BYTE $1C,$16,$BC,$BB,$BC,$BB,$2B,$1C,$1D, $F, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,	8, $F,	0,  0,	0,  0,	0,  0
		.BYTE	0,$15,$1C,$1C,$1C,$1C,$1D,  0, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	4,  5,$B8,$BD,$B8,$BD,$B8,$BD,	8,  4, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F,$15,$1C,$1C,$1C,$1C,$1C,$1C,$1D, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F,	0,  0,	0,  0,	0,  0, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_FF097:	.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
					
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
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,  1,	2,  2
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$22,$22
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$BC,$BB
		.BYTE $BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$B8,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$BC,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$B8,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$BC,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$B8,$B9
		.BYTE $BA,$B9,$BA,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$BC,$BF
		.BYTE $B7,$BF,$B7,$BB,$2B,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$B8,$B9
		.BYTE $BA,$B9,$BA,$BD,	8, $F,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$BC,$BF
		.BYTE $B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F,	4,  5,$B8,$B9
		.BYTE $BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_FF497:	.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
					
		.BYTE  $F, $F, $F, $F,	0,  0,	0,  0,	0,  0, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F,  1,	2,  2,	2,  2,	2,  2,	3, $F, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F,	4,  5,$22,$22,$22,$22,$22,$22,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F,	4,  5,$22,$22,$33,$34,$22,$22,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F,	4,  5,$22,$22,$37,$38,$22,$22,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F,	4,  5,$22,$22,$3B,$3C,$22,$22,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F,	4,  5,$22,$22,$3F,$40,$22,$22,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F,	4,  5,$BC,$BB,$BC,$BB,$BC,$BB,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0, $F,  5,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE	2,  2,	2,$12,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F
		.BYTE $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
		.BYTE $22,$22,$22,$22,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F
		.BYTE $BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB,$BC,$BB
		.BYTE $BC,$BB,$BC,$BB,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9
		.BYTE $BA,$B9,$BA,$B9,$BA,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF
		.BYTE $B7,$BF,$B7,$BF,$B7,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F
		.BYTE $B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD,$B8,$BD
		.BYTE $B8,$BD,$B8,$BD,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F
		.BYTE $1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C
		.BYTE $1C,$1C,$1C,$16,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0, $F,  5,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F,	4,  5,$BC,$BF,$B7,$BF,$B7,$BB,	8,  4, $F, $F, $F, $F
		.BYTE  $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F, $F
		.BYTE  $F, $F,	4,  5,$B8,$B9,$BA,$B9,$BA,$BD,	8,  4, $F, $F, $F, $F
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,$44,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0

; =============== S U B	R O U T	I N E =======================================


tilemap_handler_FF897:			
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
		BEQ	loc_FF8DF
		LDA	ptr_0
		CLC
		ADC	#$C0 
		STA	ptr_0
		LDA	ptr_1
		ADC	#3
		STA	ptr_1

loc_FF8DF:				
		LDY	tilemap_line_idx_4F

loc_FF8E1:				
		CPY	#0
		BEQ	loc_FF8F6
		LDA	ptr_0
		CLC
		ADC	tilemap_line_size_51
		STA	ptr_0
		LDA	ptr_1
		ADC	#0
		STA	ptr_1
		DEY
		JMP	loc_FF8E1
; ---------------------------------------------------------------------------

loc_FF8F6:				
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

loc_FF90F:				
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
		BCC	loc_FF90F
		RTS
; End of function tilemap_handler_FF897


; =============== S U B	R O U T	I N E =======================================


unused_FF926:
		LDA	#1
		STA	has_ppu_data_to_upload_6F

loc_FF92A:				
		LDA	has_ppu_data_to_upload_6F
		BNE	loc_FF92A
		RTS
; End of function unused_FF926


; =============== S U B	R O U T	I N E =======================================


unused_FF92F:				
		LDA	_PPU_STATUS
		BMI	unused_FF92F

loc_FF934:				
		LDA	_PPU_STATUS
		BPL	loc_FF934
		RTS
; End of function unused_FF92F


; =============== S U B	R O U T	I N E =======================================


unused_FF93A:
		LDA	#1
		STA	frame_render_count_350

loc_FF93F:				
		LDA	frame_render_count_350
		BNE	loc_FF93F
		RTS
; End of function unused_FF93A


; =============== S U B	R O U T	I N E =======================================


unused_FF945:
		LDY	#0

loc_FF947:				
		LDX	#0

loc_FF949:				
		LDA	input_reg1_347
		CMP	#0
		BNE	locret_FF956
		INX
		BNE	loc_FF949
		INY
		BNE	loc_FF947

locret_FF956:				
		RTS
; End of function unused_FF945


; =============== S U B	R O U T	I N E =======================================


unused_FF957:				
		LDA	input_pressed_34A
		CMP	#$80 
		BNE	unused_FF957
		RTS
; End of function unused_FF957


; =============== S U B	R O U T	I N E =======================================


unused_FF95F:				
		LDA	input_pressed_34A
		CMP	#$40 
		BNE	unused_FF95F
		RTS
; End of function unused_FF95F


; =============== S U B	R O U T	I N E =======================================


unused_FF967:				
		LDA	input_pressed_34A
		CMP	#0
		BEQ	unused_FF967
		RTS
; End of function unused_FF967


; =============== S U B	R O U T	I N E =======================================


unused_FF96F:				
		PHA
		JSR	unused_FF97A
		PLA
		SEC
		SBC	#1
		BNE	unused_FF96F
		RTS
; End of function unused_FF96F


; =============== S U B	R O U T	I N E =======================================


unused_FF97A:				
		PHA
		TXA
		PHA
		TYA
		PHA
		LDX	#0

loc_FF981:				
		LDY	#0

loc_FF983:				
		DEY
		BNE	loc_FF983
		DEX
		BNE	loc_FF981
		PLA
		TAY
		PLA
		TAX
		PLA
		RTS
; End of function unused_FF97A


; =============== S U B	R O U T	I N E =======================================


nmi_sub_FF98F:				
		LDA	#$F0 
		STA	byte_218
		STA	byte_21C
		STA	byte_220
		STA	byte_224
		STA	byte_2E8
		STA	byte_2EC
		RTS
; End of function nmi_sub_FF98F


; =============== S U B	R O U T	I N E =======================================


nmi_sub_FF9A4:				
		LDA	byte_43E
		BEQ	loc_FF9CB
		LDA	byte_203
		BNE	loc_FF9B6
		LDA	#0
		STA	byte_43E
		JMP	locret_FF9EC
; ---------------------------------------------------------------------------

loc_FF9B6:				
		LDA	byte_203
		SEC
		SBC	#8
		STA	byte_203
		LDA	byte_207
		SEC
		SBC	#8
		STA	byte_207
		JMP	locret_FF9EC
; ---------------------------------------------------------------------------

loc_FF9CB:				
		LDA	byte_203
		CMP	#$F8 
		BNE	loc_FF9DA
		LDA	#1
		STA	byte_43E
		JMP	locret_FF9EC
; ---------------------------------------------------------------------------

loc_FF9DA:				
		LDA	byte_203
		CLC
		ADC	#8
		STA	byte_203
		LDA	byte_207
		CLC
		ADC	#8
		STA	byte_207

locret_FF9EC:				
					; nmi_sub_FF9A4+24j ...
		RTS
; End of function nmi_sub_FF9A4


; =============== S U B	R O U T	I N E =======================================


NMI_FF9ED:				
		PHP
		PHA
		TXA
		PHA
		TYA
		PHA
		LDA	bank_switch_flag_6C
		CMP	#$88 
		BEQ	loc_FF9FC
		JMP	loc_FFA2D
; ---------------------------------------------------------------------------

loc_FF9FC:				
		LDA	#$EE 
		STA	bank_switch_flag_6C
		LDA	sprite_type_306
		BNE	loc_FFA08
		JSR	nmi_sub_FF98F

loc_FFA08:				
		LDA	#2
		STA	_PPU_OAM_DMA
		JSR	nmi_sub_FFA65
		JSR	nmi_sub_FFABA
		JSR	nmi_sub_FFAD3
		LDA	sprite_type_306
		CMP	#1
		BNE	loc_FFA23
		JSR	nmi_sub_FF9A4
		JSR	nmi_sub_FFB70

loc_FFA23:				
		JSR	nmi_sub_FFB36
		JSR	apu_music_update_FFBC8
		LDA	#$88 
		STA	bank_switch_flag_6C

loc_FFA2D:				
		LDA	byte_432
		BEQ	loc_FFA35
		DEC	byte_432

loc_FFA35:				
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
		BEQ	loc_FFA5E
		DEC	frame_render_count_350

loc_FFA5E:				
		PLA
		TAY
		PLA
		TAX
		PLA
		PLP

locret_FFA64:				
		RTI
; End of function NMI_FF9ED


; =============== S U B	R O U T	I N E =======================================


nmi_sub_FFA65:				
		LDA	has_ppu_data_to_upload_6F
		BNE	loc_FFA6A
		RTS
; ---------------------------------------------------------------------------

loc_FFA6A:				
		LDA	ppu_data_70
		BEQ	loc_FFAB5
		STA	ppu_fld0_x_6D
		LDX	#1

loc_FFA72:				
		LDA	ppu_data_70,X
		AND	#$80 
		BEQ	loc_FFA86
		LDA	ppu_ctrl_31F
		ORA	#4
		STA	ppu_ctrl_31F
		STA	_PPU_CTRL
		JMP	loc_FFA91
; ---------------------------------------------------------------------------

loc_FFA86:				
		LDA	ppu_ctrl_31F
		AND	#$FB 
		STA	ppu_ctrl_31F
		STA	_PPU_CTRL

loc_FFA91:				
		LDA	ppu_data_70,X
		AND	#$7F 
		STA	ppu_fld1_y_6E
		INX
		LDA	ppu_data_70,X
		STA	_PPU_ADDR
		INX
		LDA	ppu_data_70,X
		STA	_PPU_ADDR

loc_FFAA3:				
		INX
		LDA	ppu_data_70,X
		STA	_PPU_DATA
		DEC	ppu_fld1_y_6E
		BNE	loc_FFAA3
		DEC	ppu_fld0_x_6D
		BEQ	loc_FFAB5
		INX
		JMP	loc_FFA72
; ---------------------------------------------------------------------------

loc_FFAB5:				
					; nmi_sub_FFA65+4Aj
		LDA	#0
		STA	has_ppu_data_to_upload_6F
		RTS
; End of function nmi_sub_FFA65


; =============== S U B	R O U T	I N E =======================================


nmi_sub_FFABA:				
		LDA	ppu_ctrl_31F
		STA	_PPU_CTRL
		LDA	ppu_mask_320
		STA	_PPU_MASK
		LDA	ppu_scroll_x_304
		STA	_PPU_SCROLL
		LDA	ppu_scroll_y_305
		STA	_PPU_SCROLL
		RTS
; End of function nmi_sub_FFABA


; =============== S U B	R O U T	I N E =======================================


nmi_sub_FFAD3:				
		TYA
		PHA
		TYA
		PHA
		JSR	pad_input_update_FFAEB
		JSR	input_sub_FFB0B
		LDA	input_pressed_34A
		ORA	input_unk_34B
		STA	input_unk_349
		PLA
		TAX
		PLA
		TAY
		RTS
; End of function nmi_sub_FFAD3


; =============== S U B	R O U T	I N E =======================================


pad_input_update_FFAEB:			
		LDX	#1
		STX	_PAD0_REG
		DEX
		STX	_PAD0_REG
		LDA	#0
		LDY	#8

loc_FFAF8:				
		PHA
		LDA	_PAD0_REG,X
		STA	input_reg0_34E
		LSR	input_reg0_34E
		PLA
		ROL	A
		DEY
		BNE	loc_FFAF8
		STA	input_reg1_347,X
		RTS
; End of function pad_input_update_FFAEB


; =============== S U B	R O U T	I N E =======================================


input_sub_FFB0B:			
		LDX	#0
		LDA	input_reg1_347,X
		EOR	input_unk_34C,X
		AND	input_reg1_347,X
		STA	input_pressed_34A,X
		LDA	input_reg1_347,X
		STA	input_unk_34C,X
		RTS
; End of function input_sub_FFB0B


; =============== S U B	R O U T	I N E =======================================


unused_FFB20:
		LDA	ppu_ctrl_31F
		STA	_PPU_CTRL
		LDA	ppu_mask_320
		STA	_PPU_MASK
		RTS
; End of function unused_FFB20


; =============== S U B	R O U T	I N E =======================================


unused_FFB2D:
		LDA	#0
		STA	_PPU_CTRL
		STA	_PPU_MASK
		RTS
; End of function unused_FFB2D


; =============== S U B	R O U T	I N E =======================================


nmi_sub_FFB36:				
		INC	byte_353
		LDA	byte_353
		CMP	#$19
		BCS	loc_FFB41
		RTS
; ---------------------------------------------------------------------------

loc_FFB41:				
		LDA	#0
		STA	byte_353
		LDA	byte_354
		CMP	#0
		BNE	loc_FFB6C
		LDA	byte_355
		CMP	#0
		BNE	loc_FFB64
		LDA	byte_356
		CMP	#0
		BNE	loc_FFB5C
		RTS
; ---------------------------------------------------------------------------

loc_FFB5C:				
		DEC	byte_356
		LDA	#$A
		STA	byte_355

loc_FFB64:				
		DEC	byte_355
		LDA	#$A
		STA	byte_354

loc_FFB6C:				
		DEC	byte_354
		RTS
; End of function nmi_sub_FFB36


; =============== S U B	R O U T	I N E =======================================


nmi_sub_FFB70:				
		INC	scroll_offset_x_479
		LDA	scroll_offset_x_479
		CMP	#$A
		BCC	locret_FFBC7
		LDA	scroll_offset_y_47A
		EOR	#$80 
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		AND	#$FE 
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		AND	#$7F 
		CMP	#0
		BEQ	locret_FFBC7
		LDA	scroll_offset_y_47A
		PHA
		LDA	scroll_offset_y_47A
		AND	#$80 
		CMP	#0
		BEQ	loc_FFBA8
		LDA	#0
		STA	ppu_scroll_y_305
		JMP	loc_FFBBA
; ---------------------------------------------------------------------------

loc_FFBA8:				
		LDA	scroll_offset_y_47A
		AND	#$7F 
		STA	scroll_offset_y_47A
		LDA	ppu_scroll_y_305
		CLC
		ADC	scroll_offset_y_47A
		STA	ppu_scroll_y_305

loc_FFBBA:				
		PLA
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		SEC
		SBC	#2
		STA	scroll_offset_y_47A

locret_FFBC7:				
					; nmi_sub_FFB70+21j
		RTS
; End of function nmi_sub_FFB70


; =============== S U B	R O U T	I N E =======================================


apu_music_update_FFBC8:			
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
		JSR	bank_switch_F8000
		PLA
		STA	bank_from_343
		PLA
		STA	bank_to_344
		PLA
		STA	bank_command_346
		RTS
; End of function apu_music_update_FFBC8

; ---------------------------------------------------------------------------
aDPCrT_0:	.BYTE ', D, P, <CR> = T) : ',0
aListOnOffListingDest_2:.BYTE 'LIST ON/OFF Listing Destination  (T, D, P, <CR> = T) : ',0
aEnterRunTimeSelectio_2:.BYTE $A
		.BYTE $A
		.BYTE 'Enter Run Time Selection : ',0
		.BYTE  $A
		.BYTE	0
aAssemblyTerminatedBy_2:.BYTE 'Assembly Terminated By Operator',$A
		.BYTE $A,0
aCanTCreateDiskListin_2:.BYTE 'Can',$27,'t Create Disk Listing File',$A,0
aActiveCommands_2:.BYTE	$A
		.BYTE '                         ***** Active Commands *****',$A
		.BYTE $A,0
aCtrlSStopOutput_2:.BYTE '                           Ctrl S = Stop Output',$A,0
aCtrlQStartOutput_2:.BYTE '                           Ctrl Q = Start Output',$A,0
aEscCStopAssembly_2:.BYTE '                           Esc  C = Stop Assembly',$A,0
aEscTTerminalOutput_2:.BYTE '                           Esc  T = Terminal Output',$A,0
aEscPPrinterOutput_2:.BYTE '                           Esc  P = Printer Output',$A,0
aEscDDiskOutput_2:.BYTE	'                           Esc  D = Disk Output',$A,0
aEscMMultipleOutput_2:.BYTE '                           Esc  M = Multiple Output',$A,0
aEscNNoOutput_2:.BYTE '                           Esc  N = No Output',$A
		.BYTE $A,0
aRenameFileError_2:.BYTE 'Rename File Error',$A,0
aPage4u_2:	.BYTE 'Page %4u',0
aLib_2:		.BYTE 'LIB',0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE	0
aC_2:		.BYTE '%c',0
		.BYTE  $A
aMaximumNumberOfDiffe_2:.BYTE 'Maximum Number of Different Sections (%d) Exceeded.  Link Term'
		.BYTE 'inated.',$A
		.BYTE $A,0
aS_2:		.BYTE '%s',0
		.BYTE	0
aDiskListingFilename_2:.BYTE 'Disk Listing  Filename : ',0
aSymbolTableFilename_2:.BYTE 'Symbol Table  Filename : ',0
aFormat_2:	.BYTE 'Format   : ',0
aLinkerOutputFilename_2:.BYTE 'Linker Output Filename : ',0
aMicrotek_2:	.BYTE 'Microtek',0
aZax_2:		.BYTE 'Zax',0
aAbbreviated2500A_d__2:.BYTE 'Abbreviated 2500 A.D.',0
a2500A_d__3:	.BYTE '2500 A.D.',0
aNoneSpecified_2:.BYTE '<None Specified>',0
		.BYTE  $A
aLinkErrors_3:	.BYTE '         Link Errors :  ',0
aOutputFormat_3:.BYTE '         Output Format :  ',0
aExecutable_2:	.BYTE 'Executable',0
aIntelHex_2:	.BYTE 'Intel Hex',0
aExtendedIntelHex_2:.BYTE 'Extended Intel Hex',0
aTektronixHex_2:.BYTE 'Tektronix Hex',0
aMotorolaS1_2:	.BYTE 'Motorola S1',0
		.BYTE	0
aMotorolaS_2:	.BYTE 'Motorola S'
		.WORD NMI_FF9ED
		.WORD off_F805B
		.WORD locret_FFA64
; end of 'BANK_0F'

; ===========================================================================