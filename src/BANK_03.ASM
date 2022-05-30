;BANK_03 (Text Data)
;* =  $8000

	.include "includes/ram.inc"
	.include "includes/macros.inc"

; =============== S U B	R O U T	I N E =======================================

	BANK_SWITCH_FUNC switch_case_8035

switch_case_8035:
	SET bank_prev_345, bank_to_344
	SET bank_switch_flag_6C, #$88 
	IF_A_EQUAL_CMP_ADDR bank_command_346, #0, case0_38047
	RTS
; ---------------------------------------------------------------------------

case0_38047:
	JSR	sub_3F76B
	JMP	return_3804D
; ---------------------------------------------------------------------------

return_3804D:
	RETURN_FROM_BANK_COMMAND
; End of function bank_switch_func

; ---------------------------------------------------------------------------
off_3805B:
	.include "text/bank_03_text.asm"

; =============== S U B	R O U T	I N E =======================================

sub_3F76B:
	A_TO_STACK data_2
	A_TO_STACK data_3
	
	ADD_BYTE_TO_BYTE_CLC_IMM ptr_0, #.LOBYTE(off_3805B), char_type_id_35D
	LDA	#.HIBYTE(off_3805B)
	ADC	#0
	STA	ptr_1

	.include "common/text_funcs.asm"

Common_Code_03:
	.include "common/common_funcs.asm"

; ---------------------------------------------------------------------------
	.include "garbage/bank_03_garbage.asm"

Vectors_03:
	.WORD NMI_FD53
	.WORD off_3805B
	.WORD return_FDCA
; end of 'BANK_03'

; ===========================================================================