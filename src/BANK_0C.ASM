; Segment type:Pure code
	;.segment BANK_0C (Tilemaps)
	* =  $8000

; =============== S U B	R O U T	I N E =======================================

bank_switch_C8000:
	.include "common/bank_switch_func.asm"

switch_case_8035:
	.include "common/tilemap_entry_point_func.asm"

; ---------------------------------------------------------------------------
off_C805B:
	.include "tilemaps/bank_0C.asm"
	
Code_Tilemaps_0C:
	.include "common/tilemap_common_funcs.asm"

; ---------------------------------------------------------------------------
	.include "garbage/bank_0C_garbage.asm"

Vectors_0C:
	.WORD NMI_CF9ED
	.WORD off_C805B
	.WORD locret_CFA64
; end of 'BANK_0C'

; ===========================================================================