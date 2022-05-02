; Segment type:Pure code
	;.segment BANK_04 (Text)
	;* =  $8000

	.include "includes/ram.inc"
	.include "includes/macros.inc"

; =============== S U B	R O U T	I N E =======================================

bank_switch_8000:
	.include "common/bank_switch_func.asm"

switch_case_8035:
	set bank_prev_345, bank_to_344
	set bank_switch_flag_6C, #$88 
	if_a_equal_cmp_addr bank_command_346, #0, loc_48053
	if_a_equal_cmp #1, loc_48059
	if_a_equal_cmp #2, loc_48083
	if_a_equal_cmp #3, loc_48089
	RTS
; ---------------------------------------------------------------------------

loc_48053:
	JSR	load_palette_4F323
	JMP	loc_4808F
; ---------------------------------------------------------------------------

loc_48059:
	if_a_greater_cmp_addr inv_sprite_idx_31C, #$2F, loc_4807D
	a_to_stack bank_from_343

exec_b13_c1_48064:
	set bank_command_346, #1
	set bank_to_344, #banks_13
	set bank_from_343, #4
	JSR	bank_switch_8000

loc_48076:
	from_stack_to_a bank_from_343
	JMP	loc_4808F
; ---------------------------------------------------------------------------

loc_4807D:
	JSR	load_inventory_sprite_4F372
	JMP	loc_4808F
; ---------------------------------------------------------------------------

loc_48083:
	JSR	load_inventory_sprite_tilemap_4F443
	JMP	loc_4808F
; ---------------------------------------------------------------------------

loc_48089:
	JSR	sub_4F3B3
	JMP	loc_4808F
; ---------------------------------------------------------------------------

loc_4808F:
	set bank_command_346, #$FF
	set bank_to_344, bank_from_343
	JMP	bank_switch_8000
; End of function bank_switch_8000

; ---------------------------------------------------------------------------
Palette_4809D:
	.include "sprites/bank_04_palettes.asm"

TilemapsUnk_8445:
	.include "sprites/bank_04_tilemaps.asm"

InvItemSprites_9817:
	.include "sprites/bank_04_sprites.asm"

; =============== S U B	R O U T	I N E =======================================

	.include "includes/sprites.inc"

load_palette_4F323:
	load_sprite_palette_func Palette_4809D

; End of function load_palette_4F323

; =============== S U B	R O U T	I N E =======================================

load_inventory_sprite_4F372:
	load_sprite	get_inventory_sprite_ptr_4F3E7
	
; End of function load_inventory_sprite_4F372

; =============== S U B	R O U T	I N E =======================================

sub_4F3B3:
	upload_sprite_chunks_to_ppu	get_inventory_sprite_ptr_4F3E7, sub_4F583

; End of function sub_4F3B3

; =============== S U B	R O U T	I N E =======================================

get_inventory_sprite_ptr_4F3E7:
	get_sprite_offset_func InvItemSprites_9817

; End of function get_inventory_sprite_ptr_4F3E7

; =============== S U B	R O U T	I N E =======================================

load_inventory_sprite_tilemap_4F443:
	load_sprite_tilemap_func TilemapsUnk_8445, sub_4F527

; End of function load_inventory_sprite_tilemap_4F443

; =============== S U B	R O U T	I N E =======================================

sub_4F527:
	upload_sprite_to_ppu

; End of function sub_4F527

; =============== S U B	R O U T	I N E =======================================

sub_4F583:
	upload_sprite_chunk_to_ppu

; End of function sub_4F583


Common_Code_04:
	.include "common/common_funcs.asm"

; ---------------------------------------------------------------------------
	.include "garbage/bank_04_garbage.asm"

Vectors_04:
	.WORD NMI_FD53
	.WORD Palette_4809D
	.WORD return_FDCA
; end of 'BANK_04'

; ===========================================================================