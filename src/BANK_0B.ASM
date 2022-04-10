; Segment type:Pure code
	;.segment BANK_0B (Tilemaps)
	* =  $8000

; =============== S U B	R O U T	I N E =======================================

bank_switch_B8000:
	.include "common/bank_switch_func.asm"

switch_case_8035:
	.include "common/tilemap_entry_point_func.asm"

; ---------------------------------------------------------------------------

off_B805B:
	.include "tilemaps/bank_0B.asm"
	
Code_Tilemaps_0B:
	.include "common/tilemap_common_funcs.asm"

; ---------------------------------------------------------------------------
	.include "garbage/bank_0B_garbage.asm"

Vectors_0B:
	.WORD NMI_BF9ED
	.WORD off_B805B
	.WORD locret_BFA64
; end of 'BANK_0B'

; ===========================================================================