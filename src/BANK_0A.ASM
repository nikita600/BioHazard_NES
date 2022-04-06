; Segment type:	Pure code
		;.segment BANK_0A
		* =  $8000

; =============== S U B	R O U T	I N E =======================================


bank_switch_A8000:			
		.include "common\bank_switch_func.asm"

switch_case_8035:
		LDA	bank_to_344
		STA	bank_prev_345
		LDA	#$88 
		STA	bank_switch_flag_6C
		LDA	bank_command_346
		CMP	#0
		BEQ	loc_A8047
		RTS
; ---------------------------------------------------------------------------

loc_A8047:				
		JSR	tilemap_handler_AF897
		JMP	loc_A804D
; ---------------------------------------------------------------------------

loc_A804D:				
		LDA	#$FF
		STA	bank_command_346
		LDA	bank_from_343
		STA	bank_to_344
		JMP	bank_switch_A8000
; End of function bank_switch_A8000

; ---------------------------------------------------------------------------
off_A805B:	.WORD byte_A8097	
		.WORD byte_A8497
		.WORD byte_A8897
		.WORD byte_A8C97
		.WORD byte_A9097
		.WORD byte_A9497
		.WORD byte_A9897
		.WORD byte_A9C97
		.WORD byte_AA097
		.WORD byte_AA497
		.WORD byte_AA897
		.WORD byte_AAC97
		.WORD byte_AB097
		.WORD byte_AB497
		.WORD byte_AB897
		.WORD byte_ABC97
		.WORD byte_AC097
		.WORD byte_AC497
		.WORD byte_AC897
		.WORD byte_ACC97
		.WORD byte_AD097
		.WORD byte_AD497
		.WORD byte_AD897
		.WORD byte_ADC97
		.WORD byte_AE097
		.WORD byte_AE497
		.WORD byte_AE897
		.WORD byte_AEC97
		.WORD byte_AF097
		.WORD byte_AF497
byte_A8097:	.BYTE $A7,$A7,$A7,$A7,$A7,$91,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
					
		.BYTE $9E,$9D,$9E,$97,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $A7,$A7,$A7,$A7,$A7,$91,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$A8,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $A7,$A7,$A7,$A7,$A7,$91,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$97,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $A7,$A7,$A7,$A7,$A7,$91,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$A8,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $A7,$A7,$A7,$A7,$A7,$91,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$97,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $A7,$A7,$A7,$A7,$A7,$91,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$A8,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $A7,$A7,$A7,$A7,$A7,$91,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$97,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $A7,$A7,$A7,$A7,$A7,$91,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$A8,	8,  3, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $A7,$A7,$A7,$A7,$A7,$91,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$97,$96,  7, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $A7,$A7,$A7,$A7,$A7,$91,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$9B,$9A,  7, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $A7,$A7,$A7,$A7,$A7,$91,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$9D,$96,  7, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $A7,$A7,$A7,$A7,$A7,$91,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$A8,$9A,  7, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $A7,$A7,$A7,$A7,$A7,$91,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$97,$16,$17, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $A7,$A7,$A7,$A7,$A7,$91,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$A8,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $A7,$A7,$A7,$A7,$A7,$91,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$97,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $93,$93,$93,$93,$93,$95,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8
		.BYTE $9A,$A8,$9A,$A8,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $96,$97,$96,$97,$16,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18
		.BYTE $18,$18,$18,$18,$17, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $18,$18,$18,$18,$17,$15,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $55,$11,	0,  0,	0,  0,	0,  0,$55,$11,	0,  0,	0,  0,	0,  0
		.BYTE $55,$11,	0,  0,	0,  0,	0,  0,$55,$11,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_A8497:	.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
					
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	0,  0,	0,  0,	0,  0
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B,  1,	2,  2,	2,  2,	2,  2
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6,	6,  6
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6,	6,  6
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6,	6,  6
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6,	6,  6
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6,	6,  6
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6,	6,  6
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$96,$97,$96,$97,$96,$97
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$9A,$9B,$9C,$9B,$9C,$9B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$96,$9D,$9E,$9D,$9E,$9D
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$9A,$9B,$9C,$9B,$9C,$9B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$96,$9D,$9E,$9D,$9E,$9D
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	1,$12,$9A,$9B,$9C,$9B,$9C,$9B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	5,$97,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	5,$A8,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	5,$97,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	5,$A8,$9A,$A8,$9A,$A8,$9A,$A8
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,$13,$18,$18,$18,$18,$18,$18,$18
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B,  0,	0,  0,	0,  0,	0,  0
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_A8897:	.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
					
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B,  1,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	3, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B,	4,  5,$96,$97,$96,$97,$96,$97,$96,$97
		.BYTE $96,$97,$96,$97,$96,$97,$96,$97,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B,	1,$12,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B,	5,$97,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B,	5,$A8,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B,	5,$97,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B,	5,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8
		.BYTE $9A,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B,$13,$18,$18,$18,$18,$18,$18,$18,$18,$14
		.BYTE $96,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B,  0,	0,  0,	0,  0,	0,  0, $B,  5
		.BYTE $9A,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5
		.BYTE $96,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5
		.BYTE $9A,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_A8C97:	.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5
					
		.BYTE $96,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5
		.BYTE $9A,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0, $B,  5
		.BYTE $96,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,$12
		.BYTE $9A,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE $96,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE $9A,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE $96,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE $9A,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE $96,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE $9A,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE $96,$97,$96,$97,$96,$97,$96,$97,$96,$97,$96,$97,$96,$97,$96,$97
		.BYTE $96,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE $9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8
		.BYTE $9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE $18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18
		.BYTE $18,$18,$18,$18,$18,$18,$18,$18,$17, $B, $B, $B, $B, $B, $B, $B
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_A9097:	.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
					
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B,  1,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,	4,  5,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,	4,  5,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,	4,  5,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,	4,  5,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,	4,  5,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,	4,  5,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,	4,  5,$96,$97,$96,$97,$96,$97,$96,$97,$96,$97
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,	1,$12,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,	5,$97,$96,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,	5,$A8,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,	5,$97,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,	5,$A8,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,$13,$14,$96,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$A8,$9A,$A8
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$97,$16,$18
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7, $B
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_A9497:	.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
					
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	3, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	7, $B,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0, $B, $B, $B, $B
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	8,  2,	2,  2,	2,  2,	2,  2
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	3, $B, $B, $B
		.BYTE	6,  6,	6,  6,	6,  6,$19,$1A,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	7,  4, $B, $B
		.BYTE	6,  6,	6,  6,	6,  6,$1B,$1C,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	7,  4, $B, $B
		.BYTE $96,$97,$97,$97,$96,$97,$1D,$1E,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE	9, $A,	6,  6,	9, $A,	6,  6,	6,  6,	6,  6,	7,  4, $B, $B
		.BYTE $9C,$9B,$9B,$9B,$9C,$A8,$1F,$20,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE  $C, $D,	6,  6, $C, $D,	6,  6,	6,  6,	6,  6,	7,  4, $B, $B
		.BYTE $9E,$9D,$9D,$9D,$9E,$97,$96,$97,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	7,  4, $B, $B
		.BYTE $9C,$9B,$9B,$9B,$9C,$9B,$9C,$A8,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	7,  4, $B, $B
		.BYTE $9E,$9D,$9D,$9D,$9E,$9D,$9E,$97,$96,$97,$96,$97,$96,$97,$96,$97
		.BYTE $96,$97,$96,$97,$96,$97,$96,$97,$96,$97,$96,$97,	7,  4, $B, $B
		.BYTE $9C,$9B,$9B,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4, $B, $B
		.BYTE $9E,$9D,$9D,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4, $B, $B
		.BYTE $9C,$9B,$9B,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4, $B, $B
		.BYTE $9E,$9D,$9D,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4, $B, $B
		.BYTE $9A,$A8,$A8,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8
		.BYTE $9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$9B,$9C,$A8,	7,  4, $B, $B
		.BYTE $18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18
		.BYTE $18,$18,$18,$18,$18,$18,$18,$14,$96,$9D,$9E,$97,	7,  4, $B, $B
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0, $B,  5,$9A,$9B,$9C,$A8,	7,  4, $B, $B
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0, $C,	0,  0,$10,$10,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_A9897:	.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
					
		.BYTE  $B, $B, $B, $B,	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	8,  2
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$97,	6,  6
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	6,  6
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$97,	6,  6
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	6,  6
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$97,	6,  6
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	6,  6
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$97,$96,$97
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,	1,$12,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$A8,$9A,$A8
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,	5,$97,$96,$9D,$9E,$9D,$9E,$9D,$9E,$97,$16,$18
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,	5,$A8,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,	5,$97,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,	5,$A8,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,$13,$14,$96,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,	4,  5,$9A,$A8,$9A,$9B,$9C,$A8,$9A,$A8,	7,  4
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B,$13,$18,$14,$96,$97,$96,$97,$16,$18,$17, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B,	0,$13,$18,$18,$18,$18,$17,$15, $B, $B
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_A9C97:	.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
					
		.BYTE  $B, $B, $B, $B, $B, $B,	4,  5,$96,$9D,$9E,$97,	7,  4, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B,	1,$12,$9A,$9B,$9C,$A8,	7,  4, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B,	5,$97,$96,$9D,$9E,$97,	7,  4, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B,	5,$A8,$9C,$9B,$9C,$A8,	7,  4, $B, $B
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B,	5,$97,$9E,$9D,$9E,$97,	7,  4, $B, $B
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	3, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B,	5,$A8,$9A,$9B,$9C,$A8,	7,  4, $B, $B
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	7,  4, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B,$13,$14,$96,$9D,$9E,$97,	7,  4, $B, $B
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	7,  4, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B,	4,  5,$9A,$9B,$9C,$A8,	7,  4, $B, $B
		.BYTE	6,  6,	6,  6,$33,$34,	6,  6,	6,  6,	7,  4, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B,	4,  5,$96,$9D,$9E,$97,	7,  4, $B, $B
		.BYTE	6,  6,	6,  6,$35,$36,	6,  6,	6,  6,	7,  4, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B,	4,  5,$9A,$A8,$9A,$A8,	7,  4, $B, $B
		.BYTE	6,  6,	6,  6,$37,$38,	6,  6,	6,  6,	7,  4, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B,$13,$18,$18,$18,$18,$17, $B, $B, $B
		.BYTE	6,  6,	6,  6,$39,$3A,	6,  6,	6,  6,	7,  4, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	0,  0,	0,  0, $B, $B, $B, $B
		.BYTE $96,$97,$96,$97,$9E,$9D,$96,$97,$96,$97,	7,  4, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,	7,  4, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$17, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,$22,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_AA097:	.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
					
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	0,  0,	0,  0
		.BYTE	0,  0, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,  1,	2,  2,	2,  2
		.BYTE	2,  2,	3, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6
		.BYTE	6,  6,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6
		.BYTE	6,  6,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6
		.BYTE	6,  6,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6
		.BYTE	6,  6,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,$21,$22
		.BYTE	6,  6,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,$23,$24
		.BYTE	6,  6,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$96,$97,$25,$26
		.BYTE $96,$97,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$9A,$A8,$27,$28
		.BYTE $9A,$A8,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$96,$97,$96,$97
		.BYTE $96,$97,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$9A,$9B,$9C,$9B
		.BYTE $9C,$A8,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$96,$9D,$9E,$9D
		.BYTE $9E,$97,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$9A,$9B,$9C,$9B
		.BYTE $9C,$A8,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$96,$9D,$9E,$9D
		.BYTE $9E,$97,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$9A,$9B,$9C,$9B
		.BYTE $9C,$A8,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$96,$9D,$9E,$9D
		.BYTE $9E,$97,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$9A,$A8,$9C,$9B
		.BYTE $9A,$A8,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,$13,$18,$14,$96,$97
		.BYTE $16,$18,$17, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	0,$13,$18,$18
		.BYTE $17,$15, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  4,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_AA497:	.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
					
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	0,  0,	0,  0, $B, $B
		.BYTE  $B, $B, $B, $B,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B,  1,	2,  2,	2,  2,	3, $B
		.BYTE  $B, $B, $B,  1,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6,	7,  4
		.BYTE  $B, $B,	4,  5,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6,	7,  4
		.BYTE  $B, $B,	4,  5,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6,	7,  4
		.BYTE  $B, $B,	4,  5,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6,	7,  4
		.BYTE  $B, $B,	4,  5,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$29,$2A,$19,$1A,	7,  4
		.BYTE  $B, $B,	4,  5,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$2B,$2C,$1B,$1C,	7,  4
		.BYTE  $B, $B,	4,  5,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$2D,$2E,$1D,$1E,	7,  4
		.BYTE  $B, $B,	4,  5,$96,$97,$96,$97,$96,$97,$96,$97,$96,$97,$2F,$30
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$27,$28,$1F,$20,	7,  4
		.BYTE  $B, $B,	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$31,$32
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$96,$97,$96,$97,	7,  4
		.BYTE  $B, $B,	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$9A,$9B,$9C,$A8,	7,  4
		.BYTE  $B, $B,	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$96,$9D,$9E,$97,	7,  4
		.BYTE  $B, $B,	4,  5,$96,$9D,$9E,$9D,	1,  2,	2,  2,	2,  2,	2,  3
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$9A,$9B,$9C,$A8,	7,  4
		.BYTE  $B, $B,	4,  5,$9A,$9B,$9C,$9B,	5,  6,	6,  6,	6,  6,	6,  7
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$96,$9D,$9E,$97,	7,  4
		.BYTE  $B, $B,	4,  5,$96,$9D,$9E,$9D,	5,  6,	6,  6,	6,  6,	6,  7
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$9A,$9B,$9C,$A8,	7,  4
		.BYTE  $B, $B,	4,  5,$9A,$9B,$9C,$9B,	5, $B, $B, $B, $B, $B, $B,  7
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$96,$9D,$9E,$97,	7,  4
		.BYTE  $B, $B,	4,  5,$96,$9D,$9E,$9D,	5, $B, $B, $B, $B, $B, $B,  7
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$9A,$9B,$9C,$A8,	7,  4
		.BYTE  $B, $B,	4,  5,$9A,$9B,$9C,$9B,	5, $B, $B, $B, $B, $B, $B,  7
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$96,$9D,$9E,$97,	7,  4
		.BYTE  $B, $B,	4,  5,$96,$9D,$9E,$9D,	5, $B, $B, $B, $B, $B, $B,  7
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$9A,$9B,$9C,$A8,	7,  4
		.BYTE  $B, $B,	4,  5,$9A,$9B,$9C,$9B,$13,$18,$18,$18,$18,$18,$18,$17
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$96,$9D,$9E,$97,	7,  4
		.BYTE  $B, $B,	4,  5,$96,$9D,$9E,$9D,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$9A,$9B,$9C,$A8,	7,  4
		.BYTE  $B, $B,	4,  5,$9A,$9B,$9C,$9B,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$96,$9D,$9E,$97,	7,  4
		.BYTE  $B, $B,	4,  5,$96,$9D,$9E,$9D,$96,$97,$96,$97,$96,$97,$96,$97
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$9A,$9B,$9C,$A8,	7,  4
		.BYTE  $B, $B,	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$96,$9D,$9E,$97,	7,  4
		.BYTE  $B, $B,	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$9A,$9B,$9C,$A8,	7,  4
		.BYTE  $B, $B,	4,  5,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$96,$9D,$9E,$97,	7,  4
		.BYTE  $B, $B, $B,$13,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$9A,$9B,$9C,$A8,	7,  4
		.BYTE  $B, $B, $B, $B,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  3,	0,$F0,$F0,$30,	0,  0,	0,  0,	0,$FF, $F, $F
		.BYTE	0,  0,	0,  0,	0,$FF,	0,  0,	0,  0,	0,  0,	0,$FF,	0,  0
		.BYTE	0,  0,	0,  0,	0,$FF,$FF,$FF,	0,  0,	0,  0,	0,  0,	0,  0
byte_AA897:	.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
					
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	0,  0,	0,  0, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	2,  2,	2,  2,	3, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6,	6,  6,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6,	6,  6,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6,	6,  6,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6,	6,  6,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6,	6,  6,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6,	6,  6,	8,  3, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $96,$97,$96,$97,$96,  7, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9C,$9B,$9C,$9B,$9A,  7, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9E,$9D,$9E,$9D,$96,  7, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9C,$9B,$9C,$A8,$9A,  7, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9E,$9D,$9E,$97,$16,$17, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9C,$9B,$9C,$A8,	7, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9E,$9D,$9E,$97,	7, $B,	0,  0,	0,  0,	0,  0,	0,  0, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9C,$9B,$9C,$A8,	8,  2,	2,  2,	2,  2,	2,  2,	2,  2,	3, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9E,$9D,$9E,$97,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	7,  4
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9C,$9B,$9C,$A8,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	7,  4
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9E,$9D,$9E,$97,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	7,  4
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9C,$9B,$9C,$A8,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	7,  4
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9E,$9D,$9E,$97,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	7,  4
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9C,$9B,$9C,$A8,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	7,  4
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9E,$9D,$9E,$97,$96,$97,$96,$97,$96,$97,$96,$97,$96,$97,	7,  4
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,	7,  4
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$17, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE $F0,  0,	0,  0,	0,  0,	0,  0,$FF,  0,	0,  0,	0,  0,	0,  0
		.BYTE $FF,  0,	0,  0,	0,  0,	0,  0,$FF,  0,	0,  0,	0,  0,	0,  0
		.BYTE $FF,$FF,$FF,$33,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_AAC97:	.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
					
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE  $B, $B, $B,  1,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE  $B, $B,	4,  5,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE  $B, $B,	4,  5,	6,  6,$3B,$3C,	6,  6,	6,  6,$3B,$3C,	6,  6
		.BYTE	6,  6,$3B,$3C,	6,  6,	6,  6,$3B,$3C,	6,  6,	6,  6,$3B,$3C
		.BYTE  $B, $B,	4,  5,	6,  6,$3D,$3D,	6,  6,	6,  6,$3D,$3D,	6,  6
		.BYTE	6,  6,$3D,$3D,	6,  6,	6,  6,$3D,$3D,	6,  6,	6,  6,$3D,$3D
		.BYTE  $B, $B,	4,  5,	6,  6,$3E,$3F,	6,  6,	6,  6,$3E,$3F,	6,  6
		.BYTE	6,  6,$3E,$3F,	6,  6,	6,  6,$3E,$3F,	6,  6,	6,  6,$3E,$3F
		.BYTE  $B, $B,	4,  5,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE  $B, $B,	4,  5,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE  $B, $B,	4,  5,$96,$97,$96,$97,$96,$97,$96,$97,$96,$97,$96,$97
		.BYTE $96,$97,$96,$97,$96,$97,$96,$97,$96,$97,$96,$97,$96,$97,$96,$97
		.BYTE  $B, $B,	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE  $B, $B,	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE  $B, $B,	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE  $B, $B,	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE  $B, $B,	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE  $B, $B,	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE  $B, $B,	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$A8,$9A,$A8,$9A,$A8
		.BYTE $9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8
		.BYTE  $B, $B,	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$97,$16,$18,$18,$18
		.BYTE $18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18
		.BYTE  $B, $B,	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7, $B,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE  $B, $B,	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B,	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B,	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B,	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B,	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B,	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_AB097:	.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
					
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE	2,  2,	2,  2,	3, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE	6,  6,	6,  6,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6,	6,  6,$3B,$3C,	6,  6,	6,  6,$3B,$3C,	6,  6,	6,  6
		.BYTE	6,  6,	6,  6,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6,	6,  6,$3D,$3D,	6,  6,	6,  6,$3D,$3D,	6,  6,	6,  6
		.BYTE	6,  6,	6,  6,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6,	6,  6,$3E,$3F,	6,  6,	6,  6,$3E,$3F,	6,  6,	6,  6
		.BYTE	6,  6,	6,  6,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE	6,  6,	6,  6,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE	6,  6,	6,  6,	8,  3, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $96,$97,$96,$97,$96,$97,$96,$97,$96,$97,$96,$97,$96,$97,$96,$97
		.BYTE $96,$97,$96,$97,$96,  7, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$9B,$9A,  7, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$9D,$96,  7, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$9B,$9A,  7, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$97,$16,$17, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$A8,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$97,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9A,$A8,$9A,$A8,$9A,$A8,$9A,$9B,$9C,$A8,$9A,$A8,$9A,$A8,$9A,$A8
		.BYTE $9A,$A8,$9A,$A8,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $18,$18,$18,$18,$18,$14,$96,$97,$96,$97,$16,$18,$18,$18,$18,$18
		.BYTE $18,$18,$18,$18,$17, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	0,  0,	0,  0,	0,$13,$18,$18,$18,$18,$17,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_AB497:	.BYTE  $B, $B,	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4, $B, $B
					
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B,	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B,	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7, $B,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B,	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	8,  2,	2,  2
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	3, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B,	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$97,	6,  6,	6,  6
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B,	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	6,  6,	6,  6
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B,	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$97,	6,  6,	6,  6
		.BYTE	6,  6,$33,$34,	6,  6,	6,  6,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B,	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	6,  6,	6,  6
		.BYTE	6,  6,$35,$36,	6,  6,	6,  6,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B,	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$97,	6,  6,	6,  6
		.BYTE	6,  6,$37,$38,	6,  6,	6,  6,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B,	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	6,  6,	6,  6
		.BYTE	6,  6,$39,$3A,	6,  6,	6,  6,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B,	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$97,$96,$97,$96,$97
		.BYTE $96,$97,$9E,$9D,$96,$97,$96,$97,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B,	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B,	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B,	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B,	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B,	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$A8,$9A,$A8
		.BYTE $9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B,	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$97,$16,$18
		.BYTE $18,$18,$18,$18,$18,$18,$18,$18,$17, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B,	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	8,  2
		.BYTE	2,  2,	2,  2,	3, $B,	0,  0, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B,	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$97,	6,  6
		.BYTE	6,  6,	6,  6,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B,	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	6,  6
		.BYTE	6,  6,	6,  6,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B,	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$97,	6,  6
		.BYTE	6,  6,	6,  6,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B,	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	6,  6
		.BYTE	6,  6,	6,  6,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B,	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$97,	6,  6
		.BYTE	6,  6,	6,  6,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B,	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	6,  6
		.BYTE	6,  6,	6,  6,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B,	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$97,$96,$97
		.BYTE $96,$97,$62,$63,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B,	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE $9C,$A8,$64,$65,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B,	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE $9E,$97,$66,$67,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B,	4,  5,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8
		.BYTE $9A,$A8,$68,$69,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B,$13,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18
		.BYTE $18,$18,$18,$18,$17, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$40,  0,	0,  0
		.BYTE	0,  0,	0,  0,	4,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_AB897:	.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
					
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B,  1,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	3, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6,$33,$34,	6,  6
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6,$35,$36,	6,  6
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6,$37,$38,	6,  6
		.BYTE	6,  6,$2F,$30,$2F,$30,$2F,$30,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6,$39,$3A,	6,  6
		.BYTE	6,  6,$40,$41,$40,$41,$40,$41,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B,	4,  5,$96,$97,$96,$97,$9E,$9D,$96,$97
		.BYTE $96,$97,$40,$41,$40,$41,$40,$41,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B,	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE $9C,$A8,$42,$43,$42,$43,$42,$43,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B,	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE $9E,$97,$96,$97,$96,$97,$96,$97,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B,	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B,	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B,	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B,	4,  5,$44,$45,$45,$46,$9E,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B,	4,  5,$47,$48,$48,$49,$9A,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B,	4,  5,$96,$97,$96,$97,$96,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B,	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B,	4,  5,$2F,$4A,$4A,$30,$9E,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B,	4,  5,$4B,$4C,$4D,$4E,$9A,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B,	4,  5,$96,$97,$96,$97,$96,$9D,$9E,$9D
		.BYTE $4F,$50,$9E,$9D,$4F,$50,$9E,$97,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B,	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$A8
		.BYTE $51,$52,$9A,$A8,$51,$52,$9A,$A8,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B,	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$97
		.BYTE $53,$54,$96,$97,$53,$54,$96,$97,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B,	4,  5,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8
		.BYTE $55,$56,$9A,$A8,$55,$56,$9A,$A8,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B,$13,$18,$18,$18,$18,$18,$18,$18,$18
		.BYTE $18,$18,$18,$18,$18,$18,$18,$18,$17, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	5,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_ABC97:	.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
					
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B,  1,	2,  2,	2,  2,	2,  2
		.BYTE	2,  2,	2,  2,	2,  2,	3, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6,	6,  6
		.BYTE	6,  6,	6,  6,	6,  6,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6,	6,  6
		.BYTE	6,  6,	6,  6,	6,  6,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6,	6,  6
		.BYTE	6,  6,	6,  6,	6,  6,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6,	6,  6
		.BYTE	6,  6,	6,  6,	6,  6,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6,	6,  6
		.BYTE $2F,$30,$2F,$30,$2F,$30,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6,	6,  6
		.BYTE $40,$41,$40,$41,$31,$32,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$4F,$50, $E, $F,$57,$58
		.BYTE $40,$41,$40,$41,$59,$5A,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$51,$52,$10,$11,$5B,$5C
		.BYTE $42,$43,$42,$43,$42,$5D,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$53,$54,$96,$97,$96,$97
		.BYTE $96,$97,$96,$97,$96,$97,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$55,$56,$9A,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$9B,$9C,$A8,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$96,$97,$96,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$9D,$9E,$97,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$9A,$9B,$9C,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$9B,$9C,$A8,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$19,$1A,$9E,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$9D,$9E,$97,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$1B,$1C,$9C,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$9B,$9C,$A8,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$1D,$1E,$9E,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$9D,$9E,$97,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$1F,$20,$9A,$A8,$9C,$9B
		.BYTE $9A,$A8,$9A,$A8,$9A,$A8,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B,$13,$18,$18,$18,$14,$96,$97
		.BYTE $16,$18,$18,$18,$18,$18,$17, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	0,  0,	0,$13,$18,$18
		.BYTE $17,  0,	0,  0,	0,  0, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,$50,$10,	0,  0,	0,  0,$44,  1,	5,  1,	0,  0
		.BYTE	0,  0,$C0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_AC097:	.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
					
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE  $B, $B, $B, $B, $B, $B, $B,  1,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE  $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE  $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE  $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE  $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE  $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE  $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE  $B, $B, $B, $B, $B, $B,	4,  5,$5E,$5F,$96,$97,$96,$97,$96,$97
		.BYTE $96,$97,$96,$97,$96,$97,$96,$97,$96,$97,$96,$97,$96,$97,$96,$97
		.BYTE  $B, $B, $B, $B, $B, $B,	4,  5,$60,$61,$9A,$9B,$9C,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE  $B, $B, $B, $B, $B, $B,	4,  5,$2F,$30,$2F,$30,$19,$1A,$2F,$30
		.BYTE $2F,$30,$2F,$30,$2F,$30,$2F,$30,$2F,$30,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE  $B, $B, $B, $B, $B, $B,	4,  5,$40,$41,$31,$32,$1B,$1C,$31,$32
		.BYTE $31,$32,$40,$41,$31,$32,$31,$32,$31,$32,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE  $B, $B, $B, $B, $B, $B,	4,  5,$40,$41,$59,$5A,$1D,$1E,$59,$5A
		.BYTE $59,$5A,$40,$41,$59,$5A,$59,$5A,$59,$5A,$96,$9D,$9E,$9D,$9E,$9D
		.BYTE  $B, $B, $B, $B, $B, $B,	4,  5,$42,$43,$42,$5D,$1F,$20,$42,$5D
		.BYTE $42,$5D,$42,$43,$42,$5D,$42,$5D,$42,$5D,$9A,$9B,$9C,$9B,$9C,$9B
		.BYTE  $B, $B, $B, $B, $B, $B,	4,  5,$96,$97,$96,$97,$96,$97,$96,$97
		.BYTE $96,$97,$96,$97,$96,$97,$96,$97,$96,$97,$96,$9D,$9E,$9D,$9E,$9D
		.BYTE  $B, $B, $B, $B, $B, $B,	1,$12,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE  $B, $B, $B, $B, $B, $B,	5,$97,$96,$9D,$9E,$9D,$9E,$9D,$29,$2A
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$2F,$30,$2F,$30,$2F,$30,$2F,$30,$9E,$9D
		.BYTE  $B, $B, $B, $B, $B, $B,	5,$A8,$9C,$9B,$9C,$9B,$9C,$9B,$2B,$2C
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$31,$32,$40,$41,$31,$32,$31,$32,$9C,$9B
		.BYTE  $B, $B, $B, $B, $B, $B,	5,$97,$9E,$9D,$9E,$9D,$9E,$9D,$2D,$2E
		.BYTE $96,$9D,$9E,$9D,$9E,$9D,$59,$5A,$40,$41,$59,$5A,$59,$5A,$96,$9D
		.BYTE  $B, $B, $B, $B, $B, $B,	5,$A8,$9A,$9B,$9C,$9B,$9C,$9B,$27,$28
		.BYTE $9A,$9B,$9C,$9B,$9C,$9B,$42,$5D,$42,$43,$42,$5D,$42,$5D,$9A,$9B
		.BYTE  $B, $B, $B, $B, $B, $B,$13,$14,$96,$9D,$9E,$9D,$9E,$9D,$96,$97
		.BYTE $96,$9D,$9E,$9D,$9E,$9D,$96,$97,$96,$97,$96,$97,$96,$97,$96,$9D
		.BYTE  $B, $B, $B, $B, $B, $B,	4,  5,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8
		.BYTE $9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8
		.BYTE  $B, $B, $B, $B, $B, $B, $B,$13,$18,$18,$18,$18,$18,$18,$18,$18
		.BYTE $18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,$50,$70,$50,$50,$10,  0
		.BYTE	0,  0,	5,  4,	5,  5,	1,  0,	0,  0,	0,  0,	0,$44,$55,$11
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_AC497:	.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
					
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE	2,  2,	3, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE	6,  6,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE	6,  6,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE	6,  6,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE	6,  6,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE	6,  6,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE	6,  6,	8,  3, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $96,$97,$96,$97,$96,$97,$96,$97,$96,$97,$96,$97,$96,$97,$96,$97
		.BYTE $96,$97,$96,  7, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE $9C,$A8,$9A,  7, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE $9E,$97,$16,$17, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9C,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8
		.BYTE $9A,$A8,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9E,$97,$16,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18
		.BYTE $18,$18,$17, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9C,$A8,	7, $B,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9E,$97,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9C,$A8,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9E,$97,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9C,$A8,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9E,$97,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9C,$A8,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9E,$97,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9A,$A8,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $18,$18,$17, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	0,  0, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_AC897:	.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
					
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0, $B, $B
		.BYTE  $B,  1,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	3, $B
		.BYTE	4,  5,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	7,  4
		.BYTE	4,  5,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	7,  4
		.BYTE	4,  5,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	7,  4
		.BYTE	4,  5,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	7,  4
		.BYTE	4,  5,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,$2F,$30
		.BYTE $2F,$30,$2F,$30,$2F,$30,$2F,$30,$2F,$30,	6,  6,	6,  6,	7,  4
		.BYTE	1,$12,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,$40,$41
		.BYTE $40,$41,$40,$41,$31,$32,$40,$41,$31,$32,	6,  6,	6,  6,	7,  4
		.BYTE	5,$97,$96,$97,$96,$97,$96,$97,$96,$97,$96,$97,$96,$97,$40,$41
		.BYTE $40,$41,$40,$41,$59,$5A,$40,$41,$59,$5A,$96,$97,$96,$97,	7,  4
		.BYTE	5,$A8,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$A8,$42,$43
		.BYTE $42,$43,$42,$43,$42,$5D,$42,$43,$42,$5D,$9A,$9B,$9C,$A8,	7,  4
		.BYTE	5,$97,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$97,$96,$97
		.BYTE $96,$97,$96,$97,$96,$97,$96,$97,$96,$97,$96,$9D,$9E,$97,	7,  4
		.BYTE	5,$A8,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4
		.BYTE $13,$14,$96,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4
		.BYTE	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4
		.BYTE	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4
		.BYTE	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4
		.BYTE	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4
		.BYTE	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4
		.BYTE	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4
		.BYTE	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4
		.BYTE	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4
		.BYTE	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4
		.BYTE	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4
		.BYTE	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4
		.BYTE	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4
		.BYTE	4,  5,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8
		.BYTE $9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,	7,  4
		.BYTE  $B,$13,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18
		.BYTE $18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$17, $B
		.BYTE  $B, $B,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0, $B, $B
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_ACC97:	.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
					
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE  $B, $B, $B,  1,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE  $B, $B,	4,  5,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE  $B, $B,	4,  5,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE  $B, $B,	4,  5,	6,  6,	9, $A,	6,  6,	6,  6,	9, $A,	6,  6
		.BYTE	6,  6,	9, $A,	6,  6,	6,  6,	9, $A,	6,  6,	6,  6,	6,  6
		.BYTE  $B, $B,	4,  5,	6,  6, $C, $D,	6,  6,	6,  6, $C, $D,	6,  6
		.BYTE	6,  6, $C, $D,	6,  6,	6,  6, $C, $D,	6,  6,	6,  6,	6,  6
		.BYTE  $B, $B,	4,  5,$19,$1A,	6,  6,	6,  6,$19,$1A,	6,  6,$19,$1A
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,$29,$2A,	6,  6
		.BYTE  $B, $B,	4,  5,$1B,$1C,	6,  6,	6,  6,$1B,$1C,	6,  6,$1B,$1C
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,$2B,$2C,	6,  6
		.BYTE  $B, $B,	4,  5,$1D,$1E,$96,$97,$96,$97,$1D,$1E,$96,$97,$1D,$1E
		.BYTE $96,$97,$96,$97,$96,$97,$96,$97,$96,$97,$96,$97,$2D,$2E,$96,$97
		.BYTE  $B, $B,	4,  5,$1F,$20,$9C,$9B,$9C,$9B,$1F,$20,$9C,$9B,$1F,$20
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$27,$28,$9C,$A8
		.BYTE  $B, $B,	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$9D,$29,$2A,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$97
		.BYTE  $B, $B,	1,$12,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$9B,$2B,$2C,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$A8
		.BYTE  $B, $B,	5,$97,$96,$9D,$9E,$9D,$9E,$9D,$29,$2A,$9E,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$9D,$2D,$2E,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$97
		.BYTE  $B, $B,	5,$A8,$9C,$9B,$9C,$9B,$9C,$9B,$2B,$2C,$9C,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$9B,$27,$28,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$A8
		.BYTE  $B, $B,	5,$97,$9E,$9D,$9E,$9D,$9E,$9D,$2D,$2E,$9E,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$19,$1A,$9E,$9D,$9E,$97
		.BYTE  $B, $B,	5,$A8,$9A,$9B,$9C,$9B,$9C,$9B,$27,$28,$9C,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$1B,$1C,$9C,$9B,$9C,$A8
		.BYTE  $B, $B,$13,$14,$96,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$1D,$1E,$9E,$9D,$9E,$97
		.BYTE  $B, $B,	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$1F,$20,$9C,$9B,$9C,$9B
		.BYTE  $B, $B,	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE  $B, $B,	4,  5,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8
		.BYTE $9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8
		.BYTE  $B, $B, $B,$13,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18
		.BYTE $18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18
		.BYTE  $B, $B, $B, $B,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,$30,$C0,$C0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,$C0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_AD097:	.BYTE  $B, $B, $B, $B, $B, $B,	0,  0,	0,  0, $B, $B, $B, $B, $B, $B
					
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B,  1,	2,  2,	2,  2,	3, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,	4,  5,	6,  6,	6,  6,	7,  4, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,	4,  5,	6,  6,	6,  6,	7,  4, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B,	4,  5,	6,  6,	6,  6,	7,  4, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	3, $B, $B, $B,	4,  5,	6,  6,	6,  6,	7,  4, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	7, $B,	0,  0, $B,  5,$2F,$30,$2F,$30,	7,  4, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	8,  2,	2,  2,	2,$12,$40,$41,$31,$32,	7,  4, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6,	6,  6,	6,  6,$40,$41,$59,$5A,	7,  4, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6,	6,  6,	6,  6,$42,$43,$42,$5D,	7,  4, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6,	6,  6,	6,  6,$96,$9D,$9E,$97,	7,  4, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6,	6,  6,	6,  6,$9A,$9B,$9C,$A8,	7,  4, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6,	6,  6,	6,  6,$96,$9D,$9E,$97,	7,  4, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6,	6,  6,	6,  6,$9A,$9B,$9C,$A8,	7,  4, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $96,$97,$96,$97,$96,$97,$96,$9D,$9E,$97,	7,  4, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,	7,  4, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $16,$18,$18,$18,$18,$18,$18,$18,$18,$18,$17, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	7, $B,	0,  0,	0,  0,	0,  0,	0,  0, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	7,  4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	8,  3, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $96,  7,	4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9A,  7,	4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $96,  7,	4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9A,  7,	4, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $18,$17, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	0, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_AD497:	.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
					
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	0,  0,	0,  0
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,  1,	2,  2,	2,  2
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$19,$1A,	6,  6
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$1B,$1C,	6,  6
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$1D,$1E,$96,$97
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	1,$12,$1F,$20,$9A,$A8
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	5,$97,$96,$97,$96,$97
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	5,$A8,$9C,$9B,$9C,$9B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	5,$97,$9E,$9D,$9E,$9D
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	5,$A8,$9A,$9B,$9C,$9B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,$13,$14,$96,$9D,$9E,$9D
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$9A,$A8,$9A,$A8
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,$13,$18,$18,$18,$18
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	0,  0,	0,  0
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,$30
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_AD897:	.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
					
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,  1
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	3, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5
		.BYTE	6,  6,	6,  6,$33,$34,	6,  6,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5
		.BYTE	6,  6,	6,  6,$35,$36,	6,  6,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5
		.BYTE $19,$1A,	6,  6,$37,$38,	6,  6,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5
		.BYTE $1B,$1C,	6,  6,$39,$3A,	6,  6,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5
		.BYTE $1D,$1E,$96,$97,$96,$97,$96,$97,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5
		.BYTE $1F,$20,$9A,$9B,$9C,$9B,$9C,$A8,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5
		.BYTE $5E,$5F,$96,$9D,$9E,$9D,$9E,$97,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5
		.BYTE $60,$61,$9A,$9B,$9C,$9B,$9C,$A8,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5
		.BYTE $96,$97,$96,$9D,$9E,$9D,$9E,$97,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5
		.BYTE $9A,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5
		.BYTE $96,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5
		.BYTE $9A,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5
		.BYTE $96,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5
		.BYTE $9A,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,$30,$11,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_ADC97:	.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0, $B,  5
					
		.BYTE $96,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,$12
		.BYTE $9A,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE $96,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE $9A,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE $5E,$5F,$9E,$9D,$9E,$9D,$9E,$97,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE $60,$61,$9A,$9B,$9C,$9B,$9C,$A8,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE $96,$97,$96,$9D,$9E,$9D,$9E,$97,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE $9A,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE $5E,$5F,$96,$97,$96,$97,$96,$97,$96,$97,$96,$97,$5E,$5F,$96,$97
		.BYTE $96,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE $60,$61,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$A8,$60,$61,$9A,$9B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE $96,$97,$96,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$97,$96,$97,$96,$9D
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE $9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8
		.BYTE $9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,	7,  4, $B, $B, $B, $B, $B, $B
		.BYTE $18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18
		.BYTE $18,$18,$18,$18,$18,$18,$18,$18,$17, $B, $B, $B, $B, $B, $B, $B
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_AE097:	.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
					
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	0,  0,	0,  0,	0,  0
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B,  1,	2,  2,	2,  2,	2,  2
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6,	6,  6
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6,	6,  6
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	9, $A,	6,  6
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,	6,  6, $C, $D,	6,  6
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6,	6,  6
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6,	6,  6
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0, $B,  5,$96,$97,$96,$97,$96,$97
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,  1,	2,  2,	2,  2
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,$12,$9A,$9B,$9C,$9B,$9C,$9B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,$96,$9D,$9E,$9D,$9E,$9D
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,$9A,$9B,$9C,$9B,$9C,$9B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,$96,$9D,$9E,$9D,$9E,$9D
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,$9A,$9B,$9C,$A8,$9A,$A8
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,$96,$9D,$9E,$97,$16,$18
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,	6,  6,	6,  6
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,$9A,$9B,$9C,$A8,	7, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$96,$97,$96,$97
		.BYTE $96,$97,$96,$97,$96,$97,$96,$97,$96,$97,$96,$9D,$9E,$97,	7,  4
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$9A,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$96,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	1,$12,$9A,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	8,  3
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	5,$97,$96,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$97,$96,  7
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	5,$A8,$9C,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9A,  7
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	5,$97,$9E,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$96,  7
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	5,$A8,$9A,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$A8,$9A,  7
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,$13,$14,$96,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$97,$16,$17
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$9A,$A8,$9A,$A8
		.BYTE $9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,	7, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,$13,$18,$18,$18,$18
		.BYTE $18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$17, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  1
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_AE497:	.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
					
		.BYTE	0,  0,	0,  0,	0,  0, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE	2,  2,	2,  2,	2,  2,	3, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE	6,  6,	6,  6,	6,  6,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE	6,  6,	6,  6,	6,  6,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6,	9, $A,	6,  6,	6,  6,	9, $A,	6,  6,	6,  6,	9, $A
		.BYTE	6,  6,	6,  6,	6,  6,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6, $C, $D,	6,  6,	6,  6, $C, $D,	6,  6,	6,  6, $C, $D
		.BYTE	6,  6,	6,  6,	6,  6,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE	6,  6,	6,  6,	6,  6,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE	6,  6,	6,  6,	6,  6,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $96,$97,$96,$97,$96,$97,$96,$97,$96,$97,$96,$97,$96,$97,$96,$97
		.BYTE $96,$97,$96,$97,$96,$97,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$9B,$9C,$A8,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$9D,$9E,$97,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$9B,$9C,$A8,	7,  4, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$9D,$9E,$97,	7, $B,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE $9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$9B
		.BYTE $9C,$9B,$9C,$9B,$9C,$A8,	8,  2,	2,  2,	2,  2,	2,  2,	2,  2
		.BYTE $18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$14,$96,$9D
		.BYTE $9E,$9D,$9E,$9D,$9E,$97,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0, $B,  5,$9A,$9B
		.BYTE $9C,$9B,$9C,$9B,$9C,$A8,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$96,$9D
		.BYTE $9E,$9D,$9E,$9D,$9E,$97,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$9A,$9B
		.BYTE $9C,$9B,$9C,$9B,$9C,$A8,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$96,$9D
		.BYTE $9E,$9D,$9E,$9D,$9E,$97,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$9A,$9B
		.BYTE $9C,$9B,$9C,$9B,$9C,$A8,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$96,$9D
		.BYTE $9E,$9D,$9E,$9D,$9E,$97,$96,$97,$96,$97,$96,$97,$96,$97,$96,$97
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$9A,$9B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$96,$9D
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$9A,$9B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$96,$9D
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	4,  5,$9A,$A8
		.BYTE $9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,$13,$18,$18
		.BYTE $18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	4,  0,	1,  4,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_AE897:	.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
					
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	2,  2,	3, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	7,  4, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	6,  6,	7,  4, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6,	6,  6,	6,  6,$33,$34,	6,  6,	6,  6,	7,  4, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6,	6,  6,	6,  6,$35,$36,	6,  6,	6,  6,	7,  4, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6,	6,  6,	6,  6,$37,$38,	6,  6,	6,  6,	7,  4, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	6,  6,	6,  6,	6,  6,$39,$3A,	6,  6,	6,  6,	7,  4, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $96,$97,$96,$97,$96,$97,$96,$97,$96,$97,$96,$97,	7,  4, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	8,  3, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$97,$96,  7, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9A,  7, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$96,  7, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9A,$A8,$9A,$A8,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$A8,$9A,  7, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $18,$18,$18,$14,$96,$9D,$9E,$9D,$9E,$9D,$9E,$97,$16,$17, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	0,  0, $B,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B,	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B,	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_AEC97:	.BYTE  $B, $B,	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4, $B, $B
					
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B,	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B,	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B,	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$A8,	7,  4, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B,	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$97,	7,  4, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B,	4,  5,$9A,$A8,$9A,$9B,$9C,$A8,$9A,$A8,	7,  4, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B,$13,$18,$14,$96,$97,$96,$97,$16,$18,$17, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B,$13,$18,$18,$18,$18,$17, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_AF097:	.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
					
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $19,$1A,$19,$1A,$19,$1A,$19,$1A,$19,$1A,$19,$1A,$19,$1A,$19,$1A
		.BYTE $19,$1A,$19,$1A,$19,$1A,$19,$1A,$19,$1A,$19,$1A,$19,$1A,$19,$1A
		.BYTE $1B,$1C,$1B,$1C,$1B,$1C,$1B,$1C,$1B,$1C,$1B,$1C,$1B,$1C,$1B,$1C
		.BYTE $1B,$1C,$1B,$1C,$1B,$1C,$1B,$1C,$1B,$1C,$1B,$1C,$1B,$1C,$1B,$1C
		.BYTE $19,$1A,$19,$1A,$19,$1A,$19,$1A,$19,$1A,$19,$1A,$19,$1A,$19,$1A
		.BYTE $19,$1A,$19,$1A,$19,$1A,$19,$1A,$19,$1A,$19,$1A,$19,$1A,$19,$1A
		.BYTE $1B,$1C,$1B,$1C,$1B,$1C,$1B,$1C,$1B,$1C,$1B,$1C,$1B,$1C,$1B,$1C
		.BYTE $1B,$1C,$1B,$1C,$1B,$1C,$1B,$1C,$1B,$1C,$1B,$1C,$1B,$1C,$1B,$1C
		.BYTE $19,$1A,$19,$1A,$19,$1A,$19,$1A,$19,$1A,$19,$1A,$19,$1A,$19,$1A
		.BYTE $19,$1A,$19,$1A,$19,$1A,$19,$1A,$19,$1A,$19,$1A,$19,$1A,$19,$1A
		.BYTE $1B,$1C,$1B,$1C,$1B,$1C,$1B,$1C,$1B,$1C,$1B,$1C,$1B,$1C,$1B,$1C
		.BYTE $1B,$1C,$1B,$1C,$1B,$1C,$1B,$1C,$1B,$1C,$1B,$1C,$1B,$1C,$1B,$1C
		.BYTE $19,$1A,$19,$1A,$19,$1A,$96,$97,$96,$97,$96,$97,$96,$97,$96,$97
		.BYTE $96,$97,$96,$97,$96,$97,$96,$97,$96,$97,$96,$97,$96,$97,$96,$97
		.BYTE $1B,$1C,$1B,$1C,$1B,$1C,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE $19,$1A,$19,$1A,$19,$1A,$96,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE $1B,$1C,$1B,$1C,$1B,$1C,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE $19,$1A,$19,$1A,$19,$1A,$96,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE $1B,$1C,$1B,$1C,$1B,$1C,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B
		.BYTE $19,$1A,$19,$1A,$19,$1A,$96,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D
		.BYTE $1B,$1C,$1B,$1C,$1B,$1C,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8
		.BYTE $9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8,$9A,$A8
		.BYTE $19,$1A,$19,$1A,$19,$1A,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18
		.BYTE $18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18
		.BYTE $1B,$1C,$1B,$1C,$1B,$1C,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
		.BYTE $FF,$33,	0,  0,	0,  0,	0,  0,$FF,$33,	0,  0,	0,  0,	0,  0
		.BYTE  $F,  3,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
byte_AF497:	.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
					
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $19,$1A,$19,$1A,$19,$1A,$19,$1A,$19,$1A,$19,$1A,$19,$1A,$19,$1A
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $1B,$1C,$1B,$1C,$1B,$1C,$1B,$1C,$1B,$1C,$1B,$1C,$1B,$1C,$1B,$1C
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $19,$1A,$19,$1A,$19,$1A,$19,$1A,$19,$1A,$19,$1A,$19,$1A,$19,$1A
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $1B,$1C,$1B,$1C,$1B,$1C,$1B,$1C,$1B,$1C,$1B,$1C,$1B,$1C,$1B,$1C
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $19,$1A,$19,$1A,$19,$1A,$19,$1A,$19,$1A,$19,$1A,$19,$1A,$19,$1A
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $1B,$1C,$1B,$1C,$1B,$1C,$1B,$1C,$1B,$1C,$1B,$1C,$1B,$1C,$1B,$1C
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $96,$97,$96,$97,$96,$97,$96,$97,$96,$97,$19,$1A,$19,$1A,$19,$1A
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$A8,$1B,$1C,$1B,$1C,$1B,$1C
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$97,$19,$1A,$19,$1A,$19,$1A
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$A8,$1B,$1C,$1B,$1C,$1B,$1C
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$97,$19,$1A,$19,$1A,$19,$1A
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9C,$9B,$9C,$9B,$9C,$9B,$9C,$9B,$9C,$A8,$1B,$1C,$1B,$1C,$1B,$1C
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9E,$9D,$9E,$9D,$9E,$9D,$9E,$9D,$9E,$97,$19,$1A,$19,$1A,$19,$1A
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $9A,$A8,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$A8,$1B,$1C,$1B,$1C,$1B,$1C
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $18,$14,$96,$9D,$9E,$9D,$9E,$9D,$9E,$97,$19,$1A,$19,$1A,$19,$1A
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE  $B,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$A8,$1B,$1C,$1B,$1C,$1B,$1C
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$97,$19,$1A,$19,$1A,$19,$1A
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$A8,$1B,$1C,$1B,$1C,$1B,$1C
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$97,$19,$1A,$19,$1A,$19,$1A
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$A8,$1B,$1C,$1B,$1C,$1B,$1C
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$97,$19,$1A,$19,$1A,$19,$1A
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$A8,$1B,$1C,$1B,$1C,$1B,$1C
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$97,$19,$1A,$19,$1A,$19,$1A
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$A8,$1B,$1C,$1B,$1C,$1B,$1C
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$97,$19,$1A,$19,$1A,$19,$1A
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$A8,$1B,$1C,$1B,$1C,$1B,$1C
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	4,  5,$96,$9D,$9E,$9D,$9E,$9D,$9E,$97,$19,$1A,$19,$1A,$19,$1A
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE	4,  5,$9A,$9B,$9C,$9B,$9C,$9B,$9C,$A8,$1B,$1C,$1B,$1C,$1B,$1C
		.BYTE  $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B, $B
		.BYTE $F0,$F0,$F0,$F0,	0,  0,	0,  0,$FF,$FF,$FF,$FF,	0,  0,	0,  0
		.BYTE	0,  0,$CC,$FF,	0,  0,	0,  0,	0,  0,$CC,$FF,	0,  0,	0,  0
		.BYTE	0,  0,$CC,$FF,	0,  0,	0,  0,	0,  0,$CC,$FF,	0,  0,	0,  0
		.BYTE	0,  0,$CC,$FF,	0,  0,	0,  0,	0,  0, $C, $F,	0,  0,	0,  0

; =============== S U B	R O U T	I N E =======================================


tilemap_handler_AF897:			
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
		BEQ	loc_AF8DF
		LDA	ptr_0
		CLC
		ADC	#$C0 
		STA	ptr_0
		LDA	ptr_1
		ADC	#3
		STA	ptr_1

loc_AF8DF:				
		LDY	tilemap_line_idx_4F

loc_AF8E1:				
		CPY	#0
		BEQ	loc_AF8F6
		LDA	ptr_0
		CLC
		ADC	tilemap_line_size_51
		STA	ptr_0
		LDA	ptr_1
		ADC	#0
		STA	ptr_1
		DEY
		JMP	loc_AF8E1
; ---------------------------------------------------------------------------

loc_AF8F6:				
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

loc_AF90F:				
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
		BCC	loc_AF90F
		RTS
; End of function tilemap_handler_AF897


; =============== S U B	R O U T	I N E =======================================


sub_AF926:
		LDA	#1
		STA	has_ppu_data_to_upload_6F

loc_AF92A:				
		LDA	has_ppu_data_to_upload_6F
		BNE	loc_AF92A
		RTS
; End of function sub_AF926


; =============== S U B	R O U T	I N E =======================================


sub_AF92F:				
		LDA	_PPU_STATUS
		BMI	sub_AF92F

loc_AF934:				
		LDA	_PPU_STATUS
		BPL	loc_AF934
		RTS
; End of function sub_AF92F


; =============== S U B	R O U T	I N E =======================================


wait_for_count350_zero_AF93A:
		LDA	#1
		STA	frame_render_count_350

loc_AF93F:				
		LDA	frame_render_count_350
		BNE	loc_AF93F
		RTS
; End of function wait_for_count350_zero_AF93A


; =============== S U B	R O U T	I N E =======================================


sub_AF945:
		LDY	#0

loc_AF947:				
		LDX	#0

loc_AF949:				
		LDA	input_reg1_347
		CMP	#0
		BNE	locret_AF956
		INX
		BNE	loc_AF949
		INY
		BNE	loc_AF947

locret_AF956:				
		RTS
; End of function sub_AF945


; =============== S U B	R O U T	I N E =======================================


unused_AF957:				
		LDA	input_pressed_34A
		CMP	#$80 
		BNE	unused_AF957
		RTS
; End of function unused_AF957


; =============== S U B	R O U T	I N E =======================================


unused_AF95F:				
		LDA	input_pressed_34A
		CMP	#$40 
		BNE	unused_AF95F
		RTS
; End of function unused_AF95F


; =============== S U B	R O U T	I N E =======================================


unused_AF967:				
		LDA	input_pressed_34A
		CMP	#0
		BEQ	unused_AF967
		RTS
; End of function unused_AF967


; =============== S U B	R O U T	I N E =======================================


sub_AF96F:				
		PHA
		JSR	sub_AF97A
		PLA
		SEC
		SBC	#1
		BNE	sub_AF96F
		RTS
; End of function sub_AF96F


; =============== S U B	R O U T	I N E =======================================


sub_AF97A:				
		PHA
		TXA
		PHA
		TYA
		PHA
		LDX	#0

loc_AF981:				
		LDY	#0

loc_AF983:				
		DEY
		BNE	loc_AF983
		DEX
		BNE	loc_AF981
		PLA
		TAY
		PLA
		TAX
		PLA
		RTS
; End of function sub_AF97A


; =============== S U B	R O U T	I N E =======================================


nmi_sub_AF98F:				
		LDA	#$F0 
		STA	byte_218
		STA	byte_21C
		STA	byte_220
		STA	byte_224
		STA	byte_2E8
		STA	byte_2EC
		RTS
; End of function nmi_sub_AF98F


; =============== S U B	R O U T	I N E =======================================


sub_AF9A4:				
		LDA	byte_43E
		BEQ	loc_AF9CB
		LDA	byte_203
		BNE	loc_AF9B6
		LDA	#0
		STA	byte_43E
		JMP	locret_AF9EC
; ---------------------------------------------------------------------------

loc_AF9B6:				
		LDA	byte_203
		SEC
		SBC	#8
		STA	byte_203
		LDA	byte_207
		SEC
		SBC	#8
		STA	byte_207
		JMP	locret_AF9EC
; ---------------------------------------------------------------------------

loc_AF9CB:				
		LDA	byte_203
		CMP	#$F8 
		BNE	loc_AF9DA
		LDA	#1
		STA	byte_43E
		JMP	locret_AF9EC
; ---------------------------------------------------------------------------

loc_AF9DA:				
		LDA	byte_203
		CLC
		ADC	#8
		STA	byte_203
		LDA	byte_207
		CLC
		ADC	#8
		STA	byte_207

locret_AF9EC:				
					; sub_AF9A4+24j ...
		RTS
; End of function sub_AF9A4


; =============== S U B	R O U T	I N E =======================================


NMI_AF9ED:				
		PHP
		PHA
		TXA
		PHA
		TYA
		PHA
		LDA	bank_switch_flag_6C
		CMP	#$88 
		BEQ	loc_AF9FC
		JMP	loc_AFA2D
; ---------------------------------------------------------------------------

loc_AF9FC:				
		LDA	#$EE 
		STA	bank_switch_flag_6C
		LDA	sprite_type_306
		BNE	loc_AFA08
		JSR	nmi_sub_AF98F

loc_AFA08:				
		LDA	#2
		STA	_PPU_OAM_DMA
		JSR	sub_AFA65
		JSR	sub_AFABA
		JSR	sub_AFAD3
		LDA	sprite_type_306
		CMP	#1
		BNE	loc_AFA23
		JSR	sub_AF9A4
		JSR	sub_AFB70

loc_AFA23:				
		JSR	sub_AFB36
		JSR	apu_music_update_AFBC8
		LDA	#$88 
		STA	bank_switch_flag_6C

loc_AFA2D:				
		LDA	byte_432
		BEQ	loc_AFA35
		DEC	byte_432

loc_AFA35:				
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
		BEQ	loc_AFA5E
		DEC	frame_render_count_350

loc_AFA5E:				
		PLA
		TAY
		PLA
		TAX
		PLA
		PLP

locret_AFA64:				
		RTI
; End of function NMI_AF9ED


; =============== S U B	R O U T	I N E =======================================


sub_AFA65:				
		LDA	has_ppu_data_to_upload_6F
		BNE	loc_AFA6A
		RTS
; ---------------------------------------------------------------------------

loc_AFA6A:				
		LDA	ppu_data_70
		BEQ	loc_AFAB5
		STA	ppu_fld0_x_6D
		LDX	#1

loc_AFA72:				
		LDA	ppu_data_70,X
		AND	#$80 
		BEQ	loc_AFA86
		LDA	ppu_ctrl_31F
		ORA	#4
		STA	ppu_ctrl_31F
		STA	_PPU_CTRL
		JMP	loc_AFA91
; ---------------------------------------------------------------------------

loc_AFA86:				
		LDA	ppu_ctrl_31F
		AND	#$FB 
		STA	ppu_ctrl_31F
		STA	_PPU_CTRL

loc_AFA91:				
		LDA	ppu_data_70,X
		AND	#$7F 
		STA	ppu_fld1_y_6E
		INX
		LDA	ppu_data_70,X
		STA	_PPU_ADDR
		INX
		LDA	ppu_data_70,X
		STA	_PPU_ADDR

loc_AFAA3:				
		INX
		LDA	ppu_data_70,X
		STA	_PPU_DATA
		DEC	ppu_fld1_y_6E
		BNE	loc_AFAA3
		DEC	ppu_fld0_x_6D
		BEQ	loc_AFAB5
		INX
		JMP	loc_AFA72
; ---------------------------------------------------------------------------

loc_AFAB5:				
					; sub_AFA65+4Aj
		LDA	#0
		STA	has_ppu_data_to_upload_6F
		RTS
; End of function sub_AFA65


; =============== S U B	R O U T	I N E =======================================


sub_AFABA:				
		LDA	ppu_ctrl_31F
		STA	_PPU_CTRL
		LDA	ppu_mask_320
		STA	_PPU_MASK
		LDA	ppu_scroll_x_304
		STA	_PPU_SCROLL
		LDA	ppu_scroll_y_305
		STA	_PPU_SCROLL
		RTS
; End of function sub_AFABA


; =============== S U B	R O U T	I N E =======================================


sub_AFAD3:				
		TYA
		PHA
		TYA
		PHA
		JSR	pad_input_update_AFAEB
		JSR	input_sub_AFB0B
		LDA	input_pressed_34A
		ORA	input_unk_34B
		STA	input_unk_349
		PLA
		TAX
		PLA
		TAY
		RTS
; End of function sub_AFAD3


; =============== S U B	R O U T	I N E =======================================


pad_input_update_AFAEB:			
		LDX	#1
		STX	_PAD0_REG
		DEX
		STX	_PAD0_REG
		LDA	#0
		LDY	#8

loc_AFAF8:				
		PHA
		LDA	_PAD0_REG,X
		STA	input_reg0_34E
		LSR	input_reg0_34E
		PLA
		ROL	A
		DEY
		BNE	loc_AFAF8
		STA	input_reg1_347,X
		RTS
; End of function pad_input_update_AFAEB


; =============== S U B	R O U T	I N E =======================================


input_sub_AFB0B:			
		LDX	#0
		LDA	input_reg1_347,X
		EOR	input_unk_34C,X
		AND	input_reg1_347,X
		STA	input_pressed_34A,X
		LDA	input_reg1_347,X
		STA	input_unk_34C,X
		RTS
; End of function input_sub_AFB0B


; =============== S U B	R O U T	I N E =======================================


unused_AFB20:
		LDA	ppu_ctrl_31F
		STA	_PPU_CTRL
		LDA	ppu_mask_320
		STA	_PPU_MASK
		RTS
; End of function unused_AFB20


; =============== S U B	R O U T	I N E =======================================


unused_AFB2D:
		LDA	#0
		STA	_PPU_CTRL
		STA	_PPU_MASK
		RTS
; End of function unused_AFB2D


; =============== S U B	R O U T	I N E =======================================


sub_AFB36:				
		INC	byte_353
		LDA	byte_353
		CMP	#$19
		BCS	loc_AFB41
		RTS
; ---------------------------------------------------------------------------

loc_AFB41:				
		LDA	#0
		STA	byte_353
		LDA	byte_354
		CMP	#0
		BNE	loc_AFB6C
		LDA	byte_355
		CMP	#0
		BNE	loc_AFB64
		LDA	byte_356
		CMP	#0
		BNE	loc_AFB5C
		RTS
; ---------------------------------------------------------------------------

loc_AFB5C:				
		DEC	byte_356
		LDA	#$A
		STA	byte_355

loc_AFB64:				
		DEC	byte_355
		LDA	#$A
		STA	byte_354

loc_AFB6C:				
		DEC	byte_354
		RTS
; End of function sub_AFB36


; =============== S U B	R O U T	I N E =======================================


sub_AFB70:				
		INC	scroll_offset_x_479
		LDA	scroll_offset_x_479
		CMP	#$A
		BCC	locret_AFBC7
		LDA	scroll_offset_y_47A
		EOR	#$80 
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		AND	#$FE 
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		AND	#$7F 
		CMP	#0
		BEQ	locret_AFBC7
		LDA	scroll_offset_y_47A
		PHA
		LDA	scroll_offset_y_47A
		AND	#$80 
		CMP	#0
		BEQ	loc_AFBA8
		LDA	#0
		STA	ppu_scroll_y_305
		JMP	loc_AFBBA
; ---------------------------------------------------------------------------

loc_AFBA8:				
		LDA	scroll_offset_y_47A
		AND	#$7F 
		STA	scroll_offset_y_47A
		LDA	ppu_scroll_y_305
		CLC
		ADC	scroll_offset_y_47A
		STA	ppu_scroll_y_305

loc_AFBBA:				
		PLA
		STA	scroll_offset_y_47A
		LDA	scroll_offset_y_47A
		SEC
		SBC	#2
		STA	scroll_offset_y_47A

locret_AFBC7:				
					; sub_AFB70+21j
		RTS
; End of function sub_AFB70


; =============== S U B	R O U T	I N E =======================================


apu_music_update_AFBC8:			
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
		JSR	bank_switch_A8000
		PLA
		STA	bank_from_343
		PLA
		STA	bank_to_344
		PLA
		STA	bank_command_346
		RTS
; End of function apu_music_update_AFBC8

; ---------------------------------------------------------------------------
aDPCrT_4:	.BYTE ', D, P, <CR> = T) : ',0
aListOnOffListingDest_6:.BYTE 'LIST ON/OFF Listing Destination  (T, D, P, <CR> = T) : ',0
aEnterRunTimeSelectio_6:.BYTE $A
		.BYTE $A
		.BYTE 'Enter Run Time Selection : ',0
		.BYTE $A,0
aAssemblyTerminatedBy_7:.BYTE 'Assembly Terminated By Operator',$A
		.BYTE $A,0
aCanTCreateDiskListin_6:.BYTE 'Can',$27,'t Create Disk Listing File',$A,0
aActiveCommands_7:.BYTE	$A
		.BYTE '                         ***** Active Commands *****',$A
		.BYTE $A,0
aCtrlSStopOutput_6:.BYTE '                           Ctrl S = Stop Output',$A,0
aCtrlQStartOutput_6:.BYTE '                           Ctrl Q = Start Output',$A,0
aEscCStopAssembly_6:.BYTE '                           Esc  C = Stop Assembly',$A,0
aEscTTerminalOutput_6:.BYTE '                           Esc  T = Terminal Output',$A,0
aEscPPrinterOutput_6:.BYTE '                           Esc  P = Printer Output',$A,0
aEscDDiskOutput_6:.BYTE	'                           Esc  D = Disk Output',$A,0
aEscMMultipleOutput_6:.BYTE '                           Esc  M = Multiple Output',$A,0
aEscNNoOutput_7:.BYTE '                           Esc  N = No Output',$A
		.BYTE $A,0
aRenameFileError_6:.BYTE 'Rename File Error',$A,0
aPage4u_6:	.BYTE 'Page %4u',0
aLib_6:		.BYTE 'LIB',0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE	0
aC_6:		.BYTE '%c',0
		.BYTE  $A
aMaximumNumberOfDiffe_6:.BYTE 'Maximum Number of Different Sections (%d) Exceeded.  Link Term'
		.BYTE 'inated.',$A
		.BYTE $A,0
aS_6:		.BYTE '%s',0
		.BYTE	0
aDiskListingFilename_6:.BYTE 'Disk Listing  Filename : ',0
aSymbolTableFilename_6:.BYTE 'Symbol Table  Filename : ',0
aFormat_6:	.BYTE 'Format   : ',0
aLinkerOutputFilename_6:.BYTE 'Linker Output Filename : ',0
aMicrotek_6:	.BYTE 'Microtek',0
aZax_6:		.BYTE 'Zax',0
aAbbreviated2500A_d__6:.BYTE 'Abbreviated 2500 A.D.',0
a2500A_d__7:	.BYTE '2500 A.D.',0
aNoneSpecified_6:.BYTE '<None Specified>',0
aLinkErrors_7:	.BYTE $A
		.BYTE '         Link Errors :  ',0
aOutputFormat_7:.BYTE '         Output Format :  ',0
aExecutable_6:	.BYTE 'Executable',0
aIntelHex_6:	.BYTE 'Intel Hex',0
aExtendedIntelHex_6:.BYTE 'Extended Intel Hex',0
aTektronixHex_6:.BYTE 'Tektronix Hex',0
aMotorolaS1_6:	.BYTE 'Motorola S1',0
		.BYTE	0
aMotorolaS_6:	.BYTE 'Motorola S'
		.WORD NMI_AF9ED
		.WORD off_A805B
		.WORD locret_AFA64
; end of 'BANK_0A'

; ===========================================================================