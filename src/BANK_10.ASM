; Segment type:Pure code
	;.segment BANK_10 (Tilemaps)
	;* =  $8000

	.include "includes/ram.inc"
	.include "includes/macros.inc"
	.include "includes/tilemaps.inc"

; =============== S U B	R O U T	I N E =======================================

	bank_switch_func switch_case_8035

switch_case_8035:
	tilemap_entry_point_func

; ---------------------------------------------------------------------------

off_10805B:
	.include "tilemaps/bank_10.asm"
	
Code_Tilemaps_10:
	load_tilemap_chunk_in_ram_func off_10805B

Common_Code_Tilemap:
	.include "common/common_funcs.asm"

; ---------------------------------------------------------------------------
	.include "garbage/bank_10_garbage.asm"

Vectors_10:
	.WORD NMI_FD53
	.WORD off_10805B
	.WORD return_FDCA

; end of 'BANK_10'

; ===========================================================================