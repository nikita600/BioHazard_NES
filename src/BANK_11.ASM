;BANK_11 (Tilemaps)
;* =  $8000

	.include "includes/ram.inc"
	.include "includes/macros.inc"
	.include "includes/tilemaps.inc"

; =============== S U B	R O U T	I N E =======================================

	BANK_SWITCH_FUNC switch_case_8035

switch_case_8035:
	TILEMAP_ENTRY_POINT_FUNC

; ---------------------------------------------------------------------------

off_11805B:
	.include "tilemaps/bank_11.asm"
	
Code_Tilemaps_11:
	LOAD_TILEMAP_CHUNK_IN_RAM_FUNC off_11805B

Common_Code_Tilemap:
	.include "common/common_funcs.asm"

; ---------------------------------------------------------------------------
	.include "garbage/bank_11_garbage.asm"

Vectors_11:
	.WORD NMI_FD53
	.WORD off_11805B
	.WORD return_FDCA

; end of 'BANK_11'

; ===========================================================================