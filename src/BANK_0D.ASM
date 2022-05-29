;BANK_0D (Tilemaps)
;* =  $8000

	.include "includes/ram.inc"
	.include "includes/macros.inc"
	.include "includes/tilemaps.inc"

; =============== S U B	R O U T	I N E =======================================

	BANK_SWITCH_FUNC switch_case_8035

switch_case_8035:
	tilemap_entry_point_func

; ---------------------------------------------------------------------------
off_D805B:
	.include "tilemaps/bank_0D.asm"
	
Code_Tilemaps_0D:
	load_tilemap_chunk_in_ram_func off_D805B

Common_Code_Tilemap:
	.include "common/common_funcs.asm"

; ---------------------------------------------------------------------------
	.include "garbage/bank_0D_garbage.asm"

Vectors_0D:
	.WORD NMI_FD53
	.WORD off_D805B
	.WORD return_FDCA
; end of 'BANK_0D'

; ===========================================================================