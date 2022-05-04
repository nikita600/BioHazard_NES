; Segment type:Pure code
	;.segment BANK_0B (Tilemaps)
	;* =  $8000

	.include "includes/ram.inc"
	.include "includes/macros.inc"
	.include "includes/tilemaps.inc"

; =============== S U B	R O U T	I N E =======================================

bank_switch_8000:
	.include "common/bank_switch_func.asm"

switch_case_8035:
	tilemap_entry_point_func

; ---------------------------------------------------------------------------

off_B805B:
	.include "tilemaps/bank_0B.asm"
	
Code_Tilemaps_0B:
	load_tilemap_chunk_in_ram_func off_B805B

Common_Code_Tilemap:
	.include "common/common_funcs.asm"

; ---------------------------------------------------------------------------
	.include "garbage/bank_0B_garbage.asm"

Vectors_0B:
	.WORD NMI_FD53
	.WORD off_B805B
	.WORD return_FDCA

; end of 'BANK_0B'

; ===========================================================================