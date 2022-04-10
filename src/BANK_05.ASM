; Segment type:Pure code
		;.segment BANK_05 (Sprites)
		* =  $8000

; =============== S U B	R O U T	I N E =======================================


bank_switch_58000:		
		.include "common/bank_switch_func.asm"

switch_case_8035:
		LDA	bank_to_344
		STA	bank_prev_345
		LDA	#$88 
		STA	bank_switch_flag_6C
		LDA	bank_command_346
		CMP	#0
		BEQ	loc_58047
		RTS
; ---------------------------------------------------------------------------

loc_58047:			
		JSR	upload_gfx_to_ppu_5F093
		JMP	loc_5804D
; ---------------------------------------------------------------------------

loc_5804D:			
		LDA	#$FF
		STA	bank_command_346
		LDA	bank_from_343
		STA	bank_to_344
		JMP	bank_switch_58000
; End of function bank_switch_58000

; ---------------------------------------------------------------------------

Sprites3_5805B:
		.include "sprites/bank_05_sprites.asm"

; =============== S U B	R O U T	I N E =======================================


upload_gfx_to_ppu_5F093:	
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
		LDA	#0
		STA	ptr_0
		LDA	#$10
		STA	ptr_1
		JSR	upload_gfx_5F0CC
		RTS
; End of function upload_gfx_to_ppu_5F093


; =============== S U B	R O U T	I N E =======================================


upload_gfx_5F0CC:		
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

loc_5F0E2:			
		LDA	ptr_1
		STA	_PPU_ADDR
		LDA	ptr_0
		STA	_PPU_ADDR
		LDY	#0

loc_5F0EE:			
		LDA	(data_2),Y
		STA	_PPU_DATA
		INY
		CPY	#$10
		BCC	loc_5F0EE
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
		BCC	loc_5F0E2
		RTS
; End of function upload_gfx_5F0CC



Common_Code_05
		.include "common/common_funcs.asm"

; ---------------------------------------------------------------------------

		.include "garbage/bank_05_garbage.asm"

Vectors_05:
		.WORD NMI_5F1E0
		.WORD Sprites3_5805B
		.WORD locret_5F257
; end of 'BANK_05'

; ===========================================================================
