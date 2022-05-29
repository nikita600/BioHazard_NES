;BANK_0E (Tilemaps)
;* =  $8000

	.include "includes/ram.inc"
	.include "includes/macros.inc"
	.include "includes/tilemaps.inc"

; =============== S U B	R O U T	I N E =======================================

	BANK_SWITCH_FUNC switch_case_8035

switch_case_8035:
	TILEMAP_ENTRY_POINT_FUNC

; ---------------------------------------------------------------------------

off_E805B:
	.include "tilemaps/bank_0E.asm"

Code_Tilemaps_0E:
	LOAD_TILEMAP_CHUNK_IN_RAM_FUNC off_E805B

Common_Code_Tilemap:
	.include "common/common_funcs.asm"

; ---------------------------------------------------------------------------
	.include "garbage/bank_0E_garbage.asm"

Vectors_0E:
	.WORD NMI_FD53
	.WORD off_E805B
	.WORD return_FDCA
; end of 'BANK_0E'

; ===========================================================================