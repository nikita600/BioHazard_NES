;BANK_08 (Tilemaps)
;* =  $8000

	.include "includes/ram.inc"
	.include "includes/macros.inc"
	.include "includes/tilemaps.inc"

; =============== S U B	R O U T	I N E =======================================

	BANK_SWITCH_FUNC switch_case_8035
	
switch_case_8035:
	tilemap_entry_point_func

; ---------------------------------------------------------------------------

Tilemaps_8805B:
	.include "tilemaps/bank_08.asm"
	
Code_Tilemaps_08:
	load_tilemap_chunk_in_ram_func Tilemaps_8805B

Common_Code_Tilemap:
	.include "common/common_funcs.asm"

; ---------------------------------------------------------------------------
	.include "garbage/bank_08_garbage.asm"

Vectors_08:
	.WORD NMI_FD53
	.WORD Tilemaps_8805B
	.WORD return_FDCA

; end of 'BANK_08'

; ===========================================================================