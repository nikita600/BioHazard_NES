; Segment type:Pure code
	;.segment BANK_10 (Tilemaps)
	;* =  $8000

	.include "includes/ram.inc"
	.include "includes/macros.inc"

; =============== S U B	R O U T	I N E =======================================

bank_switch_8000:
	.include "common/bank_switch_func.asm"

switch_case_8035:
	.include "common/tilemap_entry_point_func.asm"

; ---------------------------------------------------------------------------

off_10805B:
	.include "tilemaps/bank_10.asm"
	
Code_Tilemaps_10:
	.include "common/tilemap_common_funcs.asm"

; ---------------------------------------------------------------------------
	.include "garbage/bank_10_garbage.asm"

Vectors_10:
	.WORD NMI_FD53
	.WORD off_10805B
	.WORD return_FDCA

; end of 'BANK_10'

; ===========================================================================