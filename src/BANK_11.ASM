; Segment type:	Pure code
		;.segment BANK_11 (Tilemaps)
		* =  $8000

; =============== S U B	R O U T	I N E =======================================


bank_switch_118000:
		.include "common/bank_switch_func.asm"

switch_case_8035:
		.include "common/tilemap_entry_point_func.asm"

; ---------------------------------------------------------------------------

off_11805B:
		.include "tilemaps/bank_11.asm"
		
Code_Tilemaps_11:
		.include "common/tilemap_common_funcs.asm"

; ---------------------------------------------------------------------------
		.include "garbage/bank_11_garbage.asm"

Vectors_11:
		.WORD NMI_11EDE7
		.WORD off_11805B
		.WORD locret_11EE5E
; end of 'BANK_11'

; ===========================================================================