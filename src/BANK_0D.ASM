; Segment type:Pure code
		;.segment BANK_0D (Tilemaps)
		* =  $8000

; =============== S U B	R O U T	I N E =======================================

bank_switch_D8000:
		.include "common/bank_switch_func.asm"

switch_case_8035:			
		.include "common/tilemap_entry_point_func.asm"

; ---------------------------------------------------------------------------
off_D805B:
		.include "tilemaps/bank_0D.asm"
		
Code_Tilemaps_0D:
		.include "common/tilemap_common_funcs.asm"

; ---------------------------------------------------------------------------
		.include "garbage/bank_0D_garbage.asm"

Vectors_0D:
		.WORD NMI_DF9ED
		.WORD off_D805B
		.WORD locret_DFA64
; end of 'BANK_0D'

; ===========================================================================