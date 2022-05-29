;BANK_04 (Sprites)
;* =  $8000

	.include "includes/ram.inc"
	.include "includes/macros.inc"
	.include "includes/sprites.inc"

; ---------------------------------------------------------------------------

	BANK_SWITCH_FUNC switch_case_8035

switch_case_8035:
	SET bank_prev_345, bank_to_344
	SET bank_switch_flag_6C, #$88 
	IF_A_EQUAL_CMP_ADDR bank_command_346, #0, case0_48053
	IF_A_EQUAL_CMP #1, case1_48059
	IF_A_EQUAL_CMP #2, case2_48083
	IF_A_EQUAL_CMP #3, case3_48089
	RTS

; ---------------------------------------------------------------------------

case0_48053:
	JSR	load_palette_4F323
	JMP	return_4808F

case1_48059:
	IF_A_GREATER_CMP_ADDR inv_sprite_idx_31C, #$2F, loc_4807D
	A_TO_STACK bank_from_343

exec_b13_c1_48064:
	EXECUTE_BANK_COMMAND #1, #banks_13, #4

loc_48076:
	FROM_STACK_TO_A bank_from_343
	JMP	return_4808F

loc_4807D:
	JSR	load_inventory_sprite_4F372
	JMP	return_4808F

case2_48083:
	JSR	load_inventory_sprite_tilemap_4F443
	JMP	return_4808F

case3_48089:
	JSR	sub_4F3B3
	JMP	return_4808F

return_4808F:
	RETURN_FROM_BANK_COMMAND
	
; ---------------------------------------------------------------------------

Palette_4809D:
	.include "sprites/bank_04_palettes.asm"

TilemapsUnk_8445:
	.include "sprites/bank_04_tilemaps.asm"

InvItemSprites_9817:
	.include "sprites/bank_04_sprites.asm"

; ---------------------------------------------------------------------------

load_palette_4F323:
	load_sprite_palette_func Palette_4809D

load_inventory_sprite_4F372:
	load_sprite	get_inventory_sprite_ptr_4F3E7

sub_4F3B3:
	upload_sprite_chunks_to_ppu	get_inventory_sprite_ptr_4F3E7, sub_4F583

get_inventory_sprite_ptr_4F3E7:
	get_sprite_offset_func InvItemSprites_9817

load_inventory_sprite_tilemap_4F443:
	load_sprite_tilemap_func TilemapsUnk_8445, sub_4F527

sub_4F527:
	upload_sprite_to_ppu

sub_4F583:
	upload_sprite_chunk_to_ppu

; ---------------------------------------------------------------------------

Common_Code_04:
	.include "common/common_funcs.asm"

; ---------------------------------------------------------------------------

	.include "garbage/bank_04_garbage.asm"

; ---------------------------------------------------------------------------

Vectors_04:
	.WORD NMI_FD53
	.WORD Palette_4809D
	.WORD return_FDCA
; end of 'BANK_04'