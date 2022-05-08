; Segment type:Pure code
	;.segment BANK_0E (Tilemaps)
	;* =  $8000

	.include "includes/ram.inc"
	.include "includes/macros.inc"
	.include "includes/tilemaps.inc"

; =============== S U B	R O U T	I N E =======================================

	bank_switch_func switch_case_8035

switch_case_8035:
	tilemap_entry_point_func

; ---------------------------------------------------------------------------

off_E805B:
	.include "tilemaps/bank_0E.asm"

Code_Tilemaps_0E:
	load_tilemap_chunk_in_ram_func off_E805B

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