tilemap_switch_case:

	set bank_prev_345, bank_to_344
	set bank_switch_flag_6C, #$88

	LDA	bank_command_346
	if_equal_cmp #0, case0_78047
	RTS
; ---------------------------------------------------------------------------

case0_78047:
	JSR	load_tilemap_chunk_in_ram_7F897
	JMP	return_7804D
; ---------------------------------------------------------------------------

return_7804D:
	set bank_command_346, #$FF
	set bank_to_344, bank_from_343

	JMP	bank_switch
; End of function bank_switch_78000