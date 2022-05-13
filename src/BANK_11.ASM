;BANK_11 (Tilemaps)
;* =  $8000

	.include "includes/ram.inc"
	.include "includes/macros.inc"
	.include "includes/tilemaps.inc"

; =============== S U B	R O U T	I N E =======================================

	bank_switch_func switch_case_8035

switch_case_8035:
	tilemap_entry_point_func

; ---------------------------------------------------------------------------

off_11805B:
	.include "tilemaps/bank_11.asm"
	
Code_Tilemaps_11:
	load_tilemap_chunk_in_ram_func off_11805B

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