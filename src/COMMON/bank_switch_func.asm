bank_switch:
		set bank_switch_flag_6C, #$EE 

		LDA	bank_to_344
		CMP	#$10
		BCS	bank_idx_greater_10_8020
		mult_a_by_2
		mult_a_by_2
		mult_a_by_2
		TAY
		LDA	mirroring_type_342
		BNE	vertical_801A

horizontal_8014:
		STA	$8083,Y
		JMP	switch_case_8035
; ---------------------------------------------------------------------------

vertical_801A:		
		STA	$8081,Y
		JMP	switch_case_8035
; ---------------------------------------------------------------------------

bank_idx_greater_10_8020:
		SEC
		SBC	#$10
		mult_a_by_2
		mult_a_by_2
		mult_a_by_2
		TAY
		LDA	mirroring_type_342
		BNE	vertical_8032

horizontal_802C:
		STA	$8183,Y
		JMP	switch_case_8035
; ---------------------------------------------------------------------------

vertical_8032:		
		STA	$8181,Y