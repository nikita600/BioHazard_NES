; Segment type:Pure code
	;.segment BANK_0F (Tilemaps)
	* =  $8000

; =============== S U B	R O U T	I N E =======================================

bank_switch_F8000:
	.include "common/bank_switch_func.asm"

switch_case_8035:
	.include "common/tilemap_entry_point_func.asm"

; ---------------------------------------------------------------------------

off_F805B:
	.include "tilemaps/bank_0F.asm"
	
Code_Tilemaps_0F:
	.include "common/tilemap_common_funcs.asm"

; ---------------------------------------------------------------------------
	.include "garbage/bank_0F_garbage.asm"

Vectors_0F:
	.WORD NMI_FF9ED
	.WORD off_F805B
	.WORD locret_FFA64
; end of 'BANK_0F'

; ===========================================================================