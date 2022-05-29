;BANK_09 (Tilemaps)
;* =  $8000

	.include "includes/ram.inc"
	.include "includes/macros.inc"
	.include "includes/tilemaps.inc"

; =============== S U B	R O U T	I N E =======================================

	BANK_SWITCH_FUNC switch_case_8035

switch_case_8035:
	TILEMAP_ENTRY_POINT_FUNC

; ---------------------------------------------------------------------------

Tilemaps_9805B:
	.include "tilemaps/bank_09.asm"
	
Code_Tilemaps_09:
	LOAD_TILEMAP_CHUNK_IN_RAM_FUNC Tilemaps_9805B

Common_Code_Tilemap:
	.include "common/common_funcs.asm"

; ---------------------------------------------------------------------------
	.include "garbage/bank_09_garbage.asm"

Vectors_09:
	.WORD NMI_FD53
	.WORD Tilemaps_9805B
	.WORD return_FDCA

; end of 'BANK_09'

; ===========================================================================