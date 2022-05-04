; Segment type:Pure code
	;.segment BANK_07 (Tilemaps)
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

Tilemaps_7805B:
	.include "tilemaps/bank_07.asm"

Code_Tilemaps_07:
	load_tilemap_chunk_in_ram_func Tilemaps_7805B

Common_Code_Tilemap:
	.include "common/common_funcs.asm"

; ---------------------------------------------------------------------------
	.include "garbage/bank_07_garbage.asm"

Vectors_07:
	.WORD NMI_FD53
	.WORD Tilemaps_7805B
	.WORD return_FDCA
	