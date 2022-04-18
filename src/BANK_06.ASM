; Segment type:Pure code
	;.segment BANK_06 (Sprites)
	;* =  $8000

	.include "includes/ram.inc"
	.include "includes/macros.inc"

; =============== S U B	R O U T	I N E =======================================


bank_switch_8000:
	.include "common/bank_switch_func.asm"

switch_case_8035:
	LDA	bank_to_344
	STA	bank_prev_345
	LDA	#$88 
	STA	bank_switch_flag_6C
	LDA	bank_command_346
	CMP	#0
	BEQ	loc_68047
	RTS
; ---------------------------------------------------------------------------

loc_68047:
	JSR	upload_gfx_to_ppu_6F863
	JMP	loc_6804D
; ---------------------------------------------------------------------------

loc_6804D:
	LDA	#$FF
	STA	bank_command_346
	LDA	bank_from_343
	STA	bank_to_344
	JMP	bank_switch_8000
; End of function bank_switch_8000

; ---------------------------------------------------------------------------
GFX_6805B:
	.include "sprites/bank_06_sprites.asm"

; =============== S U B	R O U T	I N E =======================================


upload_gfx_to_ppu_6F863:
	
	load_ptr $805B

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
	
	load_ptr $1000

	JSR	upload_gfx_to_ppu_6F89C
	RTS
; End of function upload_gfx_to_ppu_6F863


; =============== S U B	R O U T	I N E =======================================


upload_gfx_to_ppu_6F89C:
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

loc_6F8B2:
	LDA	ptr_1
	STA	_PPU_ADDR
	LDA	ptr_0
	STA	_PPU_ADDR
	LDY	#0

loc_6F8BE:
	LDA	(data_2),Y
	STA	_PPU_DATA
	INY
	CPY	#$10
	BCC	loc_6F8BE
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
	BCC	loc_6F8B2
	RTS
; End of function upload_gfx_to_ppu_6F89C

Common_Code_06:
	.include "common/common_funcs.asm"

; ---------------------------------------------------------------------------
	.include "garbage/bank_06_garbage.asm"

Vectors_06:
	.WORD NMI_FD53
	.WORD GFX_6805B
	.WORD return_FDCA
; end of 'BANK_06'

; ===========================================================================