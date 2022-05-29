;BANK_07 (Tilemaps)
;* =  $8000

	.include "includes/ram.inc"
	.include "includes/macros.inc"
	.include "includes/tilemaps.inc"

; =============== S U B	R O U T	I N E =======================================

	BANK_SWITCH_FUNC switch_case_8035

switch_case_8035:
	TILEMAP_ENTRY_POINT_FUNC

; ---------------------------------------------------------------------------

Tilemaps_7805B:
	.include "tilemaps/bank_07.asm"

Code_Tilemaps_07:
	LOAD_TILEMAP_CHUNK_IN_RAM_FUNC Tilemaps_7805B

Common_Code_Tilemap:
	.include "common/common_funcs.asm"

; ---------------------------------------------------------------------------
	.include "garbage/bank_07_garbage.asm"

Vectors_07:
	.WORD NMI_FD53
	.WORD Tilemaps_7805B
	.WORD return_FDCA
	