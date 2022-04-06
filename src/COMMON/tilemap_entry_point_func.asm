tilemap_switch_case:
		LDA	bank_to_344
		STA	bank_prev_345
		LDA	#$88 
		STA	bank_switch_flag_6C
		LDA	bank_command_346
		CMP	#0
		BEQ	case0_78047
		RTS
; ---------------------------------------------------------------------------

case0_78047:				
		JSR	load_tilemap_chunk_in_ram_7F897
		JMP	return_7804D
; ---------------------------------------------------------------------------

return_7804D:				
		LDA	#$FF
		STA	bank_command_346
		LDA	bank_from_343
		STA	bank_to_344
		JMP	bank_switch
; End of function bank_switch_78000