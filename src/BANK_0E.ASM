; Segment type:Pure code
		;.segment BANK_0E (Tilemaps)
		* =  $8000

; =============== S U B	R O U T	I N E =======================================

bank_switch_E8000:
		.include "common/bank_switch_func.asm"

switch_case_8035:
		.include "common/tilemap_entry_point_func.asm"

; ---------------------------------------------------------------------------

off_E805B:
		.include "tilemaps/bank_0E.asm"

Code_Tilemaps_0E:
		.include "common/tilemap_common_funcs.asm"

; ---------------------------------------------------------------------------
		.include "garbage/bank_0E_garbage.asm"

Vectors_0E:
		.WORD NMI_EF9ED
		.WORD off_E805B
		.WORD locret_EFA64
; end of 'BANK_0E'

; ===========================================================================