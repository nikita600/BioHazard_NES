; Segment type:Pure code
		;.segment BANK_08 (Tilemaps)
		* =  $8000

; =============== S U B	R O U T	I N E =======================================

bank_switch_88000:		
		.include "common/bank_switch_func.asm"
		
switch_case_8035:
		.include "common/tilemap_entry_point_func.asm"

; ---------------------------------------------------------------------------

Tilemaps_8805B:
		.include "tilemaps/bank_08.asm"
		
Code_Tilemaps_08:
		.include "common/tilemap_common_funcs.asm"

; ---------------------------------------------------------------------------
		.include "garbage/bank_08_garbage.asm"

Vectors_08:
		.WORD NMI_8F9ED
		.WORD Tilemaps_8805B
		.WORD locret_8FA64
; end of 'BANK_08'

; ===========================================================================