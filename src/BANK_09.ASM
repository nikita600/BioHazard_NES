; Segment type:Pure code
	;.segment BANK_09 (Tilemaps)
	;* =  $8000

	.include "includes\\ram.inc"

; =============== S U B	R O U T	I N E =======================================

bank_switch_8000:
	.include "common/bank_switch_func.asm"

switch_case_8035:
	.include "common/tilemap_entry_point_func.asm"

; ---------------------------------------------------------------------------

Tilemaps_9805B:
	.include "tilemaps/bank_09.asm"
	
Code_Tilemaps_09:
	.include "common/tilemap_common_funcs.asm"

; ---------------------------------------------------------------------------
	.include "garbage/bank_09_garbage.asm"

Vectors_09:
	.WORD NMI_FD53
	.WORD Tilemaps_9805B
	.WORD return_FDCA

; end of 'BANK_09'

; ===========================================================================