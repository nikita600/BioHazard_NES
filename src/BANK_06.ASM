;BANK_06 (Sprites)
;* =  $8000

	.include "includes/ram.inc"
	.include "includes/macros.inc"

; =============== S U B	R O U T	I N E =======================================

	BANK_SWITCH_FUNC switch_case_8035

switch_case_8035:
	SET bank_prev_345, bank_to_344
	SET bank_switch_flag_6C, #$88
	
	IF_A_EQUAL_CMP_ADDR bank_command_346, #0, case0_68047
	RTS
; ---------------------------------------------------------------------------

case0_68047:
	JSR	upload_sprite_to_ppu
	JMP	return_6804D
; ---------------------------------------------------------------------------

return_6804D:
	RETURN_FROM_BANK_COMMAND
; End of function bank_switch_func

; ---------------------------------------------------------------------------

GFX_6805B:
	.include "sprites/bank_06_sprites.asm"

UPLOAD_SPRITE_TO_PPU_FUNCS GFX_6805B

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