; Segment type:	Pure code
		;.segment BANK_07 (Tilemaps)
		* =  $8000

; =============== S U B	R O U T	I N E =======================================

bank_switch_78000:			
		.include "common/bank_switch_func.asm"

switch_case_8035:
		.include "common/tilemap_entry_point_func.asm"

; ---------------------------------------------------------------------------

Tilemaps_7805B:
		.include "tilemaps/bank_07.asm"

Code_Tilemaps_07:
		.include "common/tilemap_common_funcs.asm"

; ---------------------------------------------------------------------------
		.include "garbage/bank_07_garbage.asm"

Vectors_07:	
		.WORD NMI_7F9ED
		.WORD Tilemaps_7805B
		.WORD locret_7FA64