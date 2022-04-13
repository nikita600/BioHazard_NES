; Segment type:Pure code
	;.segment BANK_0A (Tilemaps)
	;* =  $8000

	.include "includes\\ram.inc"

; =============== S U B	R O U T	I N E =======================================

bank_switch_A8000:
	.include "common/bank_switch_func.asm"

switch_case_8035:
	.include "common/tilemap_entry_point_func.asm"

; ---------------------------------------------------------------------------

off_A805B:
	.include "tilemaps/bank_0A.asm"

Code_Tilemaps_0A:
	.include "common/tilemap_common_funcs.asm"

; ---------------------------------------------------------------------------
	.include "garbage/bank_0A_garbage.asm"

Vectors_0A:
	.WORD NMI_FD53
	.WORD off_A805B
	.WORD return_FDCA

; end of 'BANK_0A'

; ===========================================================================