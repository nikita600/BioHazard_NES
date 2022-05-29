;.segment BANK_00 (Code)
;* =  $8000

	.include "includes/ram.inc"
	.include "includes/macros.inc"

; =============== S U B	R O U T	I N E =======================================

	BANK_SWITCH_FUNC switch_case_8035

switch_case_8035:
	set bank_prev_345, bank_to_344
	set bank_switch_flag_6C, #$88 

	IF_A_EQUAL_CMP_ADDR bank_command_346, #0, case0_8096
	IF_A_EQUAL_CMP #1, case1_80A7
	IF_A_EQUAL_CMP #2, case2_80B5
	IF_A_EQUAL_CMP #3, case3_80C3
	IF_A_EQUAL_CMP #4, case4_80D1
	IF_A_NOT_EQUAL_CMP #5, else_805D
	JMP	case5_80DF
; ---------------------------------------------------------------------------

else_805D:
	IF_A_NOT_EQUAL_CMP #6, case6_8064
	JMP	loc_80ED
; ---------------------------------------------------------------------------

case6_8064:
	IF_A_NOT_EQUAL_CMP #7, loc_806B
	JMP	loc_8104
; ---------------------------------------------------------------------------

loc_806B:
	IF_A_NOT_EQUAL_CMP #8, loc_8072
	JMP	loc_8115
; ---------------------------------------------------------------------------

loc_8072:
	IF_A_NOT_EQUAL_CMP #9, loc_8079
	JMP	loc_8123
; ---------------------------------------------------------------------------

loc_8079:
	IF_A_NOT_EQUAL_CMP #$A, loc_8080
	JMP	loc_8131
; ---------------------------------------------------------------------------

loc_8080:
	CMP	#$B

loc_8082:
	BNE	loc_8087
	JMP	loc_813F
; ---------------------------------------------------------------------------

loc_8087:
	IF_A_NOT_EQUAL_CMP #$C, loc_808E
	JMP	loc_814D
; ---------------------------------------------------------------------------

loc_808E:
	IF_A_NOT_EQUAL_CMP #$D, locret_8095
	JMP	loc_815B
; ---------------------------------------------------------------------------

locret_8095:
	RTS
; ---------------------------------------------------------------------------

case0_8096:
	a_to_stack bank_from_343
	LDX	tilemapTypeUnk_30B
	JSR	show_text_sequence_func_CF13
	from_stack_to_a bank_from_343
	JMP	loc_8169
; ---------------------------------------------------------------------------

case1_80A7:
	a_to_stack bank_from_343
	JSR	sub_CAA9
	from_stack_to_a bank_from_343
	JMP	loc_8169
; ---------------------------------------------------------------------------

case2_80B5:
	a_to_stack bank_from_343
	JSR	load_image_C6D2
	from_stack_to_a bank_from_343
	JMP	loc_8169
; ---------------------------------------------------------------------------

case3_80C3:
	a_to_stack bank_from_343
	JSR	sub_DBE2
	from_stack_to_a bank_from_343
	JMP	loc_8169
; ---------------------------------------------------------------------------

case4_80D1:
	a_to_stack bank_from_343
	JSR	sub_CBC2
	from_stack_to_a bank_from_343
	JMP	loc_8169
; ---------------------------------------------------------------------------

case5_80DF:
	a_to_stack bank_from_343
	JSR	objects_func_D52A
	from_stack_to_a bank_from_343
	JMP	loc_8169
; ---------------------------------------------------------------------------

loc_80ED:
	a_to_stack bank_from_343
	JSR	sub_C873
	JSR	sub_C921
	JSR	sub_ECCC
	JSR	sub_EE72
	from_stack_to_a bank_from_343
	JMP	loc_8169
; ---------------------------------------------------------------------------

loc_8104:
	a_to_stack bank_from_343
	JSR	exec_b4_c0_CA4B
	JSR	exec_b4_c1_CA5E
	from_stack_to_a bank_from_343
	JMP	loc_8169
; ---------------------------------------------------------------------------

loc_8115:
	a_to_stack bank_from_343
	JSR	load_tiles_to_ppu_C83A
	from_stack_to_a bank_from_343
	JMP	loc_8169
; ---------------------------------------------------------------------------

loc_8123:
	a_to_stack bank_from_343
	JSR	sub_91B6
	from_stack_to_a bank_from_343
	JMP	loc_8169
; ---------------------------------------------------------------------------

loc_8131:
	a_to_stack bank_from_343
	JSR	sub_D055
	from_stack_to_a bank_from_343
	JMP	loc_8169
; ---------------------------------------------------------------------------

loc_813F:
	a_to_stack bank_from_343
	JSR	sub_CF42
	from_stack_to_a bank_from_343
	JMP	loc_8169
; ---------------------------------------------------------------------------

loc_814D:
	a_to_stack bank_from_343
	JSR	sub_D359
	from_stack_to_a bank_from_343
	JMP	loc_8169
; ---------------------------------------------------------------------------

loc_815B:
	a_to_stack bank_from_343
	JSR	ppu_unk_func_F09D
	from_stack_to_a bank_from_343
	JMP	loc_8169
; ---------------------------------------------------------------------------

loc_8169:
	RETURN_FROM_BANK_COMMAND
; End of function bank_switch_func

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR update_88C2

RESET_8177:
	SEI
	CLD
	LDA	#0
	STA	_PPU_CTRL
	STA	_PPU_MASK
	STA	_PPU_OAM_ADDR
	STA	_PPU_SCROLL
	STA	_PPU_SCROLL
	LDX	#0

clear_ram_818C:
	LDA	#0
	STA	ptr_0,X
	STA	spr_y_pos_200,X
	STA	entry_idx_300,X
	STA	unk_400,X
	STA	unk_500,X
	STA	byte_600,X
	STA	apu_unk_700,X
	INX
	BNE	clear_ram_818C
	
	DEX
	TXS
	set $8083, #0

	LDY	#0
	LDA	#$1D
clear_palette_81B0:
	STA	palette_bg_321,Y 
	INY
	IF_Y_GREATER_CMP #$20, clear_palette_81B0

	set2 ppu_ctrl_31F, _PPU_CTRL, #$90 
	set2 ppu_mask_320, _PPU_MASK, #$1E
	JSR	wait_for_vblank_FC95

switch_b13_c5_81CB:
	set bank_switch_flag_6C, #$88 
	set apu_unk_76C, #0
	EXECUTE_BANK_COMMAND #5, #banks_13, #0

continue_816E:
	set byte_357, #$18
	set byte_358, #0
	set byte_359, #$1C
	set byte_35A, #3
	set byte_360, #0
	set byte_361, #3
	LDX	#0

loc_8206:
	set_inx {unk_4D2,X}, #$3A 
	IF_X_GREATER_CMP #$30 , loc_8206
	LDX	#0
	set {unk_4D2,X}, #6
	set_inx {unk_502,X}, #$F
	set {unk_4D2,X}, #6
	set {unk_502,X}, #$F
	set byte_532, #3
	set byte_533, #0
	set byte_534, #1
	set byte_53C, #$F
	set byte_535, #$12
	set2 byte_549, byte_46D, #$FF
	set4 byte_4A0, byte_4A1, byte_4A2, byte_4A3, #$FF
	set byte_567, #$90 
	set byte_568, #1
	set byte_569, #$40 
	set byte_56A, #0
	set byte_56B, #$70 
	set byte_56C, #0
	set byte_56D, #$30 
	set byte_56E, #0
	set byte_56F, #$20 
	set byte_570, #0
	set byte_571, #$A0 
	set byte_572, #0
	set byte_573, #0
	set byte_574, #1
	set byte_575, #$60 
	set byte_576, #0
	LDA	#1
	STA	byte_5A3
	STA	byte_5A6
	STA	byte_5A8
	STA	byte_5AC
	STA	byte_5AD
	STA	byte_5B0
	STA	byte_5B1
	STA	byte_5B2

reset_values_82C0:
	LDA	#$FF
	STA	byte_5B4
	STA	byte_5B5
	STA	byte_5B6
	STA	byte_5B7
	STA	byte_5B8
	STA	byte_5B9
	STA	byte_5BA
	STA	byte_5BB
	STA	byte_5BC
	STA	byte_5BF

	STA	byte_5C0
	STA	byte_5C3
	STA	byte_5C4
	STA	byte_5C5
	STA	byte_5C6
	STA	byte_5C8
	STA	byte_5C9
	STA	byte_5CC
	STA	byte_5CD
	STA	byte_5CE
	STA	byte_5CF

	STA	byte_5D0
	STA	byte_5D1
	STA	byte_5D6
	STA	byte_5D7
	STA	byte_5DA
	STA	byte_5DB
	STA	byte_5DC
	STA	byte_5DD
	STA	byte_5DE
	STA	byte_5DF

	STA	byte_5E0
	STA	byte_5E1
	STA	byte_5E2
	STA	byte_5E3
	STA	byte_5E4
	STA	byte_5E5
	STA	byte_5E6
	STA	byte_5E7
	STA	byte_5E8
	STA	byte_5E9
	STA	byte_5EA
	STA	byte_5EB
	STA	byte_5EC
	STA	byte_5ED
	STA	byte_5EE
	STA	byte_5EF

	STA	byte_5F0
	STA	byte_5F1
	STA	byte_5F2
	STA	byte_5F3
	STA	byte_5F4
	STA	byte_5F5
	STA	byte_5F6
	STA	byte_5F7
	STA	byte_5F8
	STA	byte_5EF
	STA	byte_5FA
	STA	byte_5FB
	STA	byte_5FC
	STA	byte_5FD
	STA	byte_5FE
	STA	byte_5FF

	STA	byte_600
	STA	byte_601
	STA	byte_602
	STA	byte_603
	STA	byte_604
	STA	byte_605
	STA	byte_606
	STA	byte_608
	STA	byte_609
	STA	byte_60A
	STA	byte_60B
	STA	byte_60C
	STA	byte_60D
	STA	byte_60E
	STA	byte_60F

	STA	byte_610
	STA	byte_611
	STA	byte_612
	STA	byte_613
	STA	byte_614
	STA	byte_615
	STA	byte_616
	STA	byte_619
	STA	byte_61A
	STA	byte_61B
	STA	byte_61C
	STA	byte_61D
	STA	byte_61E
	STA	byte_61F

	STA	byte_620
	STA	byte_621
	STA	byte_622
	STA	byte_623
	STA	byte_624
	STA	byte_625
	STA	byte_626
	STA	byte_62A
	STA	byte_62B
	STA	byte_62C
	STA	byte_62D
	STA	byte_62E
	STA	byte_62F

	STA	byte_630
	STA	byte_631
	STA	byte_632
	STA	byte_634
	STA	byte_635
	STA	byte_637
	STA	byte_638
	STA	byte_639
	STA	byte_63A
	STA	byte_63B
	STA	byte_63C
	STA	byte_63D
	STA	byte_63E
	STA	byte_63F

	STA	byte_640
	STA	byte_641
	STA	byte_642
	STA	byte_643
	STA	byte_644
	STA	byte_645
	STA	byte_646
	STA	byte_647
	STA	byte_648
	STA	byte_649
	STA	byte_64A
	STA	byte_64B
	STA	byte_64D
	STA	byte_64E
	STA	byte_64F

	STA	byte_650
	STA	byte_651
	STA	byte_654
	STA	byte_655
	STA	byte_656
	STA	byte_657
	STA	byte_658
	STA	byte_659
	STA	byte_65A
	STA	byte_65B
	STA	byte_65C
	STA	byte_65D
	STA	byte_65E
	STA	byte_65F

	STA	byte_660
	STA	byte_661
	STA	byte_662
	STA	byte_663
	STA	byte_664
	STA	byte_668
	STA	byte_669
	STA	byte_66B
	STA	byte_66C
	STA	byte_66D
	STA	byte_66E
	STA	byte_66F

	STA	byte_670
	STA	byte_671
	STA	byte_672
	STA	byte_673
	STA	byte_674
	STA	byte_675
	STA	byte_676
	STA	byte_677
	STA	byte_678
	STA	byte_679
	STA	byte_67C
	STA	byte_67D
	STA	byte_67E
	STA	byte_67F

	STA	byte_680
	STA	byte_681
	STA	byte_682
	STA	byte_683
	STA	byte_685
	STA	byte_686
	STA	byte_687
	STA	byte_688
	STA	byte_689
	STA	byte_68A
	STA	byte_68B
	STA	byte_68C

	STA	byte_691
	STA	byte_692
	STA	byte_693
	STA	byte_694
	STA	byte_695
	STA	byte_696
	STA	byte_697
	STA	byte_698
	STA	byte_699
	STA	byte_69A
	STA	byte_69B
	STA	byte_69C
	STA	byte_69D
	STA	byte_69F

	STA	byte_6A2
	STA	byte_6A3
	STA	byte_6A5
	STA	byte_6A8
	STA	byte_6A9
	STA	byte_6AA
	STA	byte_6AB
	STA	byte_6AC
	STA	byte_6AD
	STA	byte_6AE
	STA	byte_6AF

	STA	byte_6B0
	STA	byte_6B1
	STA	byte_6B2
	STA	byte_6B3
	STA	byte_6B4
	STA	byte_6B5
	STA	byte_6B6
	STA	byte_6B7
	STA	byte_6B8
	STA	byte_6B9
	STA	byte_6BA
	STA	byte_6BB
	STA	byte_6BC
	
	STA	byte_6C1
	STA	byte_6C2
	STA	byte_6C3
	STA	byte_6C4
	STA	byte_6C6

start_game_loop_8571:
	set byte_341, #2
	set image_id_4A4, #$A1 
	set4 image_offset_4A5, ppu_prev_unk_4A6, ppu_prev_scroll_x_unk_4A7, ppu_prev_scroll_y_unk_4A8, #0
	set prev_sprite_type_4A9, #2
	JSR	load_image_C6D2
	JSR	wait_any_input_65k_cycles_FCAB
	JSR	wait_any_input_65k_cycles_FCAB
	JSR	wait_any_input_65k_cycles_FCAB
	JSR	wait_any_input_65k_cycles_FCAB
	JSR	wait_any_input_65k_cycles_FCAB
	JSR	wait_any_input_65k_cycles_FCAB
	JSR	wait_any_input_65k_cycles_FCAB
	JSR	wait_any_input_65k_cycles_FCAB
	JSR	wait_any_input_65k_cycles_FCAB

show_cut01_85AC:
	set image_id_4A4, #$10
	JSR	load_image_C6D2
	set_text_args #$88, #0
	JSR	exec_b2_c2_text_cuts_C8E8
	JSR	exec_b2_c2_text_cuts_C8E8
	JSR	exec_b2_c2_text_cuts_C8E8
	JSR	exec_b2_c2_text_cuts_C8E8
	JSR	exec_b2_c2_text_cuts_C8E8

show_cut01_85CD:
	set image_id_4A4, #$11
	JSR	load_image_C6D2
	set_text_args #$8D, #0
	JSR	exec_b2_c2_text_cuts_C8E8
	JSR	exec_b2_c2_text_cuts_C8E8
	JSR	exec_b2_c2_text_cuts_C8E8

show_cut02_85E8:
	set image_id_4A4, #$12
	JSR	load_image_C6D2
	set_text_args #$90, #0
	JSR	exec_b2_c2_text_cuts_C8E8
	JSR	exec_b2_c2_text_cuts_C8E8
	JSR	exec_b2_c2_text_cuts_C8E8
	JSR	exec_b2_c2_text_cuts_C8E8

show_cut03_8606:
	set image_id_4A4, #$13
	JSR	load_image_C6D2
	set_text_args #$94, #0
	JSR	exec_b2_c2_text_cuts_C8E8
	JSR	exec_b2_c2_text_cuts_C8E8
	JSR	exec_b2_c2_text_cuts_C8E8
	JSR	exec_b2_c2_text_cuts_C8E8
	JSR	exec_b2_c2_text_cuts_C8E8

show_title_screen_8627:
	set image_id_4A4, #1
	JSR	load_image_C6D2
	set byte_372, #1
	set byte_421, #0

loc_8639:
	JSR	ppu_upload_unk_data_CC5D
	JSR	wait_for_frame_rendered_FCA0
	IF_A_NOT_EQUAL_CMP_ADDR input_pressed_34A, #up_8, loc_8654
	xor_byte byte_372, #1
	JSR	sub_CC17
	JMP	loc_8639
; ---------------------------------------------------------------------------

loc_8654:
	IF_A_NOT_EQUAL_CMP #4, loc_8666
	xor_byte byte_372, #1
	JSR	sub_CC17
	JMP	loc_8639
; ---------------------------------------------------------------------------

loc_8666:
	IF_A_EQUAL_CMP #$80, loc_866D
	JMP	loc_8639
; ---------------------------------------------------------------------------

loc_866D:
	IF_A_EQUAL_CMP_ADDR byte_372, #0, loc_86B7

	set_word_to_word_const ptr_0, _SAVE_RAM

	LDY	#0

loc_867E:
	STY	tilemapTypeUnk_30B
	IF_A_NOT_EQUAL_CMP_ADDR {(ptr_0),Y}, tilemapTypeUnk_30B, loc_869A
	INY
	IF_Y_GREATER_CMP #$10, loc_867E
	LDX	#0

loc_868F:
	set_inx {byte_4A0,X}, {(ptr_0),Y}
	INY
	IF_X_GREATER_CMP #4, loc_868F

loc_869A:
	set jill_pos_y_47E, #$FF
	JSR	exec_b12_cE_EADE
	LDX	jill_pos_y_47E
	IF_X_NOT_EQUAL_CMP #$FF, loc_86AC
	JMP	show_title_screen_8627
; ---------------------------------------------------------------------------

loc_86AC:
	set jill_pos_y_47E, #0
	JSR	load_image_C6D2
	JMP	loc_8742
; ---------------------------------------------------------------------------

loc_86B7:
	set image_id_4A4, #$9F 
	JSR	load_image_C6D2
	set byte_372, #1
	set byte_421, #0

loc_86C9:
	JSR	ppu_upload_unk_data_CC5D
	JSR	wait_for_frame_rendered_FCA0
	IF_A_NOT_EQUAL_CMP_ADDR input_pressed_34A, #up_8, loc_86E4
	xor_byte byte_372, #1
	JSR	sub_CC17
	JMP	loc_86C9
; ---------------------------------------------------------------------------

loc_86E4:
	IF_A_NOT_EQUAL_CMP #4, loc_86F6
	xor_byte byte_372, #1
	JSR	sub_CC17
	JMP	loc_86C9
; ---------------------------------------------------------------------------

loc_86F6:
	IF_A_NOT_EQUAL_CMP #$40, loc_86FD
	JMP	show_title_screen_8627
; ---------------------------------------------------------------------------

loc_86FD:
	IF_A_EQUAL_CMP #$80, loc_8704
	JMP	loc_86C9
; ---------------------------------------------------------------------------

loc_8704:
	set byte_4B4, byte_372
	set jill_pos_y_47E, #0
	set byte_341, #1
	set image_id_4A4, #$16
	set image_offset_4A5, #0
	set ppu_prev_unk_4A6, #1
	set ppu_prev_scroll_x_unk_4A7, #$80 
	set ppu_prev_scroll_y_unk_4A8, #0
	set prev_sprite_type_4A9, #0
	set byte_4AD, #$80 
	set byte_4AE, #$60 
	JSR	load_image_C6D2
	JSR	sub_D22C

loc_8742:
	set apu_unk_76C, #2

exec_b13_c5_8747:
	EXECUTE_BANK_COMMAND #5, #banks_13, #0

gameplay_loop_8759:
	JSR	wait_for_frame_rendered_FCA0
	JSR	update_88C2
	JMP	gameplay_loop_8759
; END OF FUNCTION CHUNK	FOR update_88C2

; =============== S U B	R O U T	I N E =======================================

sub_8762:
	JSR	sub_8766
	RTS
; End of function sub_8762

; =============== S U B	R O U T	I N E =======================================

sub_8766:
	set sprite_length_30F, #0
	LDX	#0

loc_876D:
	IF_X_EQUAL_CMP tilemapTypeUnk_30B, loc_87C4
	IF_A_NOT_EQUAL {objCreatedArray_393,X}, loc_87C4
	JSR	sub_87CE
	IF_A_EQUAL_CMP_ADDR sprite_length_30F, #$FF, locret_87CD
	JMP	loc_87C4
; ---------------------------------------------------------------------------
	JSR	sub_D8D8
	JSR	sub_D96B
	IF_A_EQUAL_CMP_ADDR sprite_length_30F, #$FF, locret_87CD
	JSR	sub_D8D8
	JSR	sub_D8FD
	JSR	sub_D96B
	IF_A_EQUAL_CMP_ADDR sprite_length_30F, #$FF, locret_87CD
	JSR	sub_D8D8
	JSR	sub_D913
	JSR	sub_D96B
	IF_A_EQUAL_CMP_ADDR sprite_length_30F, #$FF, locret_87CD
	JSR	sub_D8D8
	JSR	sub_D8FD
	JSR	sub_D913
	JSR	sub_D96B
	IF_A_EQUAL_CMP_ADDR sprite_length_30F, #$FF, locret_87CD

loc_87C4:
	INX
	IF_X_EQUAL_CMP objArraySize_373, locret_87CD
	JMP	loc_876D
; ---------------------------------------------------------------------------

locret_87CD:
	RTS
; End of function sub_8766

; =============== S U B	R O U T	I N E =======================================

sub_87CE:
	a_to_stack byte_36A
	a_to_stack byte_36B
	a_to_stack byte_366
	a_to_stack byte_367

	div_a_by_2_addr tilemapWidth_308
	mult_a_by_8
	ADD_TO_A byte_36A
	STA	byte_36A
	ADD_BYTE_TO_BYTE byte_36B, #0

	div_a_by_2_addr tilemapHeight_30A
	mult_a_by_8
	ADD_TO_A byte_366
	STA	byte_366
	ADD_BYTE_TO_BYTE byte_367, #0

	JSR	sub_D8D8
	sub_word_from_word byte_36A, byte_36C
	BCC	loc_8854
	sub_word_from_word byte_366, byte_368
	BCC	loc_8854
	JSR	sub_D8FD
	JSR	sub_D913
	sub_word_from_word byte_36C, byte_36A
	BCC	loc_8854
	sub_word_from_word byte_368, byte_366
	BCC	loc_8854
	set sprite_length_30F, #$FF

loc_8854:
	from_stack_to_a byte_367
	from_stack_to_a byte_366
	from_stack_to_a byte_36B
	from_stack_to_a byte_36A
	RTS
; End of function sub_87CE

; =============== S U B	R O U T	I N E =======================================

sub_8865:
	IF_A_NOT_EQUAL_CMP_ADDR byte_313, #0, loc_8880
	sub_byte_from_word byte_366, #8
	JMP	locret_88C1
; ---------------------------------------------------------------------------

loc_8880:
	IF_A_NOT_EQUAL_CMP #1, loc_8898
	ADD_BYTE_TO_WORD byte_366, #8

	JMP	locret_88C1
; ---------------------------------------------------------------------------

loc_8898:
	IF_A_NOT_EQUAL_CMP #2, loc_88B0
	sub_byte_from_word byte_36A, #8
	JMP	locret_88C1
; ---------------------------------------------------------------------------

loc_88B0:
	ADD_BYTE_TO_WORD byte_36A, #8

locret_88C1:
	RTS
; End of function sub_8865

; =============== S U B	R O U T	I N E =======================================

update_88C2:
	IF_A_EQUAL input_pressed_34A, gameplay_update_8930
	LDY	jill_pos_x_47D
	IF_A_EQUAL_CMP_ADDR {copyright_cheat_sequence_9B29,Y}, input_pressed_34A, inc_cheat_idx_88DA

reset_cheat_idx_88D2:
	set jill_pos_x_47D, #0
	JMP	check_cheat_entered_88DD
; ---------------------------------------------------------------------------

inc_cheat_idx_88DA:
	INC	jill_pos_x_47D

check_cheat_entered_88DD:
	IF_A_NOT_EQUAL_CMP_ADDR jill_pos_x_47D, #9, gameplay_update_8930

show_copyright_screen_88E4:
	set jill_pos_x_47D, #0
	JSR	cache_prev_data_CA84
	a_to_stack image_id_4A4
	a_to_stack image_offset_4A5
	a_to_stack ppu_prev_unk_4A6
	a_to_stack ppu_prev_scroll_x_unk_4A7
	a_to_stack ppu_prev_scroll_y_unk_4A8
	a_to_stack prev_sprite_type_4A9
	JSR	exec_b12_c4A_ECB6
	JSR	show_hidden_copyright_9AD9
	from_stack_to_a prev_sprite_type_4A9
	from_stack_to_a ppu_prev_scroll_y_unk_4A8
	from_stack_to_a ppu_prev_scroll_x_unk_4A7
	from_stack_to_a ppu_prev_unk_4A6
	from_stack_to_a image_offset_4A5
	from_stack_to_a image_id_4A4
	set map_show_43B, #$FF
	JSR	load_image_C6D2
	set map_show_43B, #0
	RTS
; ---------------------------------------------------------------------------

gameplay_update_8930:
	IF_A_EQUAL_CMP_ADDR byte_54A, #0, loc_895B
	IF_A_GREATER_CMP_ADDR count_unk_46C, #$A, loc_895B
	set count_unk_46C, #0
	IF_A_GREATER_CMP_ADDR byte_549, #1, set_game_finished_8956
	sub_byte_sec byte_549, #1
	JMP	loc_895B
; ---------------------------------------------------------------------------

set_game_finished_8956:
	set is_game_finished_561, #$FF

loc_895B:
	set byte_315, #8
	set byte_314, #0
	IF_A_EQUAL_CMP_ADDR entry_idx_300, #$5C, loc_8973
	IF_A_EQUAL_CMP #$93, loc_8973
	JMP	loc_89D5
; ---------------------------------------------------------------------------

loc_8973:
	JSR	sub_C7C7
	IF_A_NOT_EQUAL_CMP_ADDR byte_36A, #$B0, loc_8987
	IF_A_NOT_EQUAL_CMP_ADDR byte_366, #$68, loc_8987
	JMP	loc_89A7
; ---------------------------------------------------------------------------

loc_8987:
	LDX	#0

next_object_8989:
	IF_A_EQUAL_CMP_ADDR {objIdxArray_375,X}, #3, obj_id3_handler_8999
	INX
	IF_X_GREATER_CMP objArraySize_373, next_object_8989
	JMP	loc_89B8
; ---------------------------------------------------------------------------

obj_id3_handler_8999:
	IF_A_NOT_EQUAL_CMP_ADDR {array_unk_3C5,X}, #$B0, loc_89B8
	IF_A_NOT_EQUAL_CMP_ADDR {array_unk_3D9,X}, #$60, loc_89B8

loc_89A7:
	IF_A_EQUAL_CMP_ADDR byte_654, #0, loc_89B8
	IF_A_EQUAL_CMP_ADDR byte_653, #0, loc_89C8
	JMP	loc_89D5
; ---------------------------------------------------------------------------

loc_89B8:
	set byte_653, #0
	set cur_obj_idx_unk_43A, #0
	JSR	sub_DBE2
	JMP	loc_89D5
; ---------------------------------------------------------------------------

loc_89C8:
	set byte_653, #$FF
	set cur_obj_idx_unk_43A, #0
	JSR	sub_DC1C

loc_89D5:
	IF_A_NOT_EQUAL_CMP_ADDR byte_584, #$FF, loc_8A05
	set sprite_type_306, #$FF
	JSR	loc_8DA3
	set byte_314, #0
	JSR	loc_8DA3
	set byte_314, #0
	JSR	loc_8DA3
	set byte_314, #0
	JSR	loc_8DA3
	set byte_584, #0

loc_8A01:
	STA	sprite_type_306
	RTS
; ---------------------------------------------------------------------------

loc_8A05:
	IF_A_NOT_EQUAL_CMP #$FE, check_ending_8A41
	set sprite_type_306, #$FF
	JSR	loc_8CDA
	set byte_315, #8
	set byte_314, #0
	JSR	loc_8CDA
	set byte_315, #8
	set byte_314, #0
	JSR	loc_8CDA
	set byte_315, #8
	set byte_314, #0
	JSR	loc_8CDA
	set2 byte_584, sprite_type_306, #0
	RTS
; ---------------------------------------------------------------------------

check_ending_8A41:
	JSR	exec_b12_c17_EB26
	IF_A_NOT_EQUAL_CMP_ADDR is_game_finished_561, #0, check_ending_type_8A4E
	JMP	objects_update_8AB3
; ---------------------------------------------------------------------------

check_ending_type_8A4E:
	IF_A_EQUAL_CMP #$FF, ending_sequence_8A74
	set apu_unk_76C, #1

exec_b13_c5_8A57:
	EXECUTE_BANK_COMMAND #5, #banks_13, #0

loc_8A69:
	JSR	exec_b12_c45_EC8E
	LDA	#$14
	JSR	wait_for_n_65k_cycles_FCD5
	JMP	RESET_8177
; ---------------------------------------------------------------------------

ending_sequence_8A74:
	set apu_unk_76C, #6

exec_b13_c5_8A79:
	EXECUTE_BANK_COMMAND #5, #banks_13, #0

loc_8A8B:
	set byte_341, #4
	set image_id_4A4, #2
	set4 image_offset_4A5, ppu_prev_unk_4A6, ppu_prev_scroll_x_unk_4A7, ppu_prev_scroll_y_unk_4A8, #0
	set prev_sprite_type_4A9, #2
	JSR	load_image_C6D2
	LDA	#$14
	JSR	wait_for_n_65k_cycles_FCD5
	JMP	RESET_8177
; ---------------------------------------------------------------------------

objects_update_8AB3:
	JSR	objects_func_CCA7
	JSR	objects_func_CED2
	JSR	objects_func_D644
	JSR	objects_func_D52A

loc_8ABF:
	IF_A_NOT_EQUAL byte_439, loc_8AC7
	JMP	update_player_input_8B5F
; ---------------------------------------------------------------------------

loc_8AC7:
	LDX	cur_obj_idx_unk_43A
	IF_A_EQUAL_CMP_ADDR {objIdxArray_375,X}, #$C, loc_8AE0
	IF_A_EQUAL_CMP #$F, loc_8AE0
	TAX
	set inv_sprite_idx_31C, {byte_CBFD,X}
	JSR	sub_EC86
	RTS
; ---------------------------------------------------------------------------

loc_8AE0:
	IF_A_GREATER_CMP_ADDR count_unk_46B, #$A, loc_8B59
	set count_unk_46B, #0
	set objMapIdx_316, #0

loc_8AF1:
	a_to_stack objMapIdx_316

	mult_by_4_byte byte_313
	ADD_TO_A objMapIdx_316
	TAX
	set2 objMapIdx_316, byte_4AA, {byte_9523,X}
	IF_A_NOT_EQUAL_CMP_ADDR byte_313, #2, loc_8B14
	set byte_317, #$40 

loc_8B14:
	JSR	sub_C77D
	JSR	wait_for_frame_rendered_FCA0
	from_stack_to_a objMapIdx_316
	INC	objMapIdx_316
	IF_A_GREATER_CMP_ADDR objMapIdx_316, #2, loc_8AF1
	IF_A_EQUAL_CMP_ADDR byte_54A, #0, loc_8B4A
	IF_A_GREATER_CMP_ADDR byte_549, #$A, set_game_finished_8B42
	sub_byte_sec byte_549, #$A
	JMP	loc_8B59
; ---------------------------------------------------------------------------

set_game_finished_8B42:
	set is_game_finished_561, #$FF
	JMP	loc_8B59
; ---------------------------------------------------------------------------

loc_8B4A:
	INC	byte_4B5
	IF_A_GREATER_CMP_ADDR byte_4B5, #$A, loc_8B59
	set byte_54A, #1

loc_8B59:
	set byte_439, #0
	RTS
; ---------------------------------------------------------------------------

update_player_input_8B5F:
	set byte_433, #0

is_B_pressed_8B64:
	load_a_masked input_reg1_347, #$40 
	IF_A_NOT_EQUAL_CMP #b_40, b_not_pressed_8BB1
	set byte_433, #$FF
	IF_A_EQUAL_CMP_ADDR byte_42A, #$FF, loc_8BAC
	set byte_42A, #$FF
	set2 byte_430, byte_431, #0
	JSR	sub_C7C7
	set byte_42C, byte_36A
	set byte_42D, byte_36B
	ADD_BYTE_TO_BYTE_CLC byte_366, #4
	STA	byte_42E
	ADD_BYTE_TO_BYTE byte_367, #0
	STA	byte_42F

loc_8BAC:
	set byte_432, #$96 

b_not_pressed_8BB1:
	JSR	sub_91D8
	JSR	sub_9195

is_up_pressed_8BB7:
	load_a_masked input_reg1_347, #8
	IF_A_NOT_EQUAL_CMP #up_8, up_not_pressed_8BD7

up_pressed_8BC0:
	set byte_437, #0
	set byte_313, #0
	IF_A_EQUAL byte_433, loc_8BD3
	JSR	sub_939C
	RTS
; ---------------------------------------------------------------------------

loc_8BD3:
	JSR	sub_8C5F
	RTS
; ---------------------------------------------------------------------------

up_not_pressed_8BD7:
	load_a_masked input_reg1_347, #4
	IF_A_NOT_EQUAL_CMP #down_4, down_not_pressed_8BF7
	set byte_437, #0
	set byte_313, #1
	IF_A_EQUAL byte_433, loc_8BF3
	JSR	sub_939C
	RTS
; ---------------------------------------------------------------------------

loc_8BF3:
	JSR	sub_8D27
	RTS
; ---------------------------------------------------------------------------

down_not_pressed_8BF7:
	load_a_masked input_reg1_347, #2
	IF_A_NOT_EQUAL_CMP #left_2, left_not_pressed_8C17
	set byte_437, #0
	set byte_313, #2
	IF_A_EQUAL byte_433, loc_8C13
	JSR	sub_939C
	RTS
; ---------------------------------------------------------------------------

loc_8C13:
	JSR	sub_8DF0
	RTS
; ---------------------------------------------------------------------------

left_not_pressed_8C17:
	load_a_masked input_reg1_347, #1
	IF_A_NOT_EQUAL_CMP #right_1, right_not_pressed_8C37
	set byte_437, #0
	set byte_313, #3
	IF_A_EQUAL byte_433, loc_8C33
	JSR	sub_939C
	RTS
; ---------------------------------------------------------------------------

loc_8C33:
	JSR	sub_8EB9
	RTS
; ---------------------------------------------------------------------------

right_not_pressed_8C37:
	load_a_masked input_reg1_347, #$10
	IF_A_NOT_EQUAL_CMP #start_10, start_not_pressed_8C44
	JSR	start_button_pressed_8F88
	RTS
; ---------------------------------------------------------------------------

start_not_pressed_8C44:
	load_a_masked input_reg1_347, #$20 
	IF_A_NOT_EQUAL_CMP #select_20, select_not_pressed_8C51
	JSR	select_button_pressed_8FC4
	RTS
; ---------------------------------------------------------------------------

select_not_pressed_8C51:
	load_a_masked input_reg1_347, #$80 
	IF_A_NOT_EQUAL_CMP #a_80, a_not_pressed_8C5E
	JSR	a_button_pressed_8FDC
	RTS
; ---------------------------------------------------------------------------

a_not_pressed_8C5E:
	RTS
; End of function update_88C2

; =============== S U B	R O U T	I N E =======================================

sub_8C5F:
	JSR	sub_91B6
	set byte_432, #$96 
	IF_A_NOT_EQUAL ppu_unk_byte_303, loc_8C79
	IF_A_NOT_EQUAL ppu_scroll_y_305, loc_8C79
	IF_A_NOT_EQUAL_CMP_ADDR byte_4AE, #0, loc_8C82
	RTS
; ---------------------------------------------------------------------------

loc_8C79:
	IF_A_GREATER_CMP_ADDR byte_4AE, #$20, loc_8CC3
	BEQ	loc_8CC3

loc_8C82:
	JSR	sub_999A
	JSR	sub_9725
	IF_A_NOT_EQUAL_CMP_ADDR sprite_length_30F, #$FF, loc_8C90
	RTS
; ---------------------------------------------------------------------------

loc_8C90:
	JSR	sub_DDC9
	IF_A_EQUAL sprite_length_30F, loc_8C99
	RTS
; ---------------------------------------------------------------------------

loc_8C99:
	set byte_314, #0

loc_8C9E:
	sub_2_from byte_4AE
	IF_A_EQUAL_CMP_ADDR byte_315, #8, loc_8CB1
	sub_2_from byte_4AE

loc_8CB1:
	INC	byte_314
	JSR	sub_94D3
	JSR	sub_9542
	IF_A_GREATER_CMP_ADDR byte_314, byte_315, loc_8C9E
	RTS
; ---------------------------------------------------------------------------

loc_8CC3:
	JSR	sub_999A
	JSR	sub_9725
	IF_A_NOT_EQUAL_CMP_ADDR sprite_length_30F, #$FF, loc_8CD1
	RTS
; ---------------------------------------------------------------------------

loc_8CD1:
	JSR	sub_DDC9
	IF_A_EQUAL sprite_length_30F, loc_8CDA
	RTS
; ---------------------------------------------------------------------------

loc_8CDA:
	IF_A_EQUAL_CMP_ADDR byte_314, #0, loc_8CED
	div_a_by_2_addr byte_315
	IF_A_EQUAL_CMP byte_314, loc_8CED
	JMP	loc_8CF0
; ---------------------------------------------------------------------------

loc_8CED:
	JSR	sub_F1A2

loc_8CF0:
	IF_A_NOT_EQUAL_CMP_ADDR ppu_scroll_y_305, #0, loc_8D02
	DEC	ppu_unk_byte_303
	set ppu_scroll_y_305, #$F0 
	JSR	sub_F641

loc_8D02:
	sub_2_from ppu_scroll_y_305
	IF_A_EQUAL_CMP_ADDR byte_315, #8, loc_8D15
	sub_2_from ppu_scroll_y_305

loc_8D15:
	INC	byte_314
	JSR	sub_94D3
	JSR	sub_9542
	IF_A_GREATER_CMP_ADDR byte_314, byte_315, loc_8CDA
	RTS
; End of function sub_8C5F

; =============== S U B	R O U T	I N E =======================================

sub_8D27:
	JSR	sub_91B6
	set byte_432, #$96 
	LDA	ppu_unk_byte_303
	ADD_TO_A #1
	IF_A_NOT_EQUAL_CMP tilemaps_vert_count_312, loc_8D47
	IF_A_NOT_EQUAL ppu_scroll_y_305, loc_8D47
	IF_A_NOT_EQUAL_CMP_ADDR byte_4AE, #$E0, loc_8D50
	RTS
; ---------------------------------------------------------------------------

loc_8D47:
	IF_A_EQUAL_CMP_ADDR byte_4AE, #$C0, loc_8D8C
	BCS	loc_8D8C

loc_8D50:
	JSR	sub_999A
	JSR	sub_9725
	IF_A_NOT_EQUAL_CMP_ADDR sprite_length_30F, #$FF, loc_8D5E
	RTS
; ---------------------------------------------------------------------------

loc_8D5E:
	JSR	sub_DDC9
	IF_A_EQUAL sprite_length_30F, loc_8D67
	RTS
; ---------------------------------------------------------------------------

loc_8D67:
	ADD_2_TO byte_4AE
	IF_A_EQUAL_CMP_ADDR byte_315, #8, loc_8D7A
	ADD_2_TO byte_4AE

loc_8D7A:
	INC	byte_314
	JSR	sub_94D3
	JSR	sub_9542
	IF_A_GREATER_CMP_ADDR byte_314, byte_315, loc_8D67
	RTS
; ---------------------------------------------------------------------------

loc_8D8C:
	JSR	sub_999A
	JSR	sub_9725
	IF_A_NOT_EQUAL_CMP_ADDR sprite_length_30F, #$FF, loc_8D9A
	RTS
; ---------------------------------------------------------------------------

loc_8D9A:
	JSR	sub_DDC9
	IF_A_EQUAL sprite_length_30F, loc_8DA3
	RTS
; ---------------------------------------------------------------------------

loc_8DA3:
	IF_A_EQUAL_CMP_ADDR byte_314, #0, loc_8DB6
	div_a_by_2_addr byte_315
	IF_A_EQUAL_CMP byte_314, loc_8DB6
	JMP	loc_8DB9
; ---------------------------------------------------------------------------

loc_8DB6:
	JSR	sub_F1A2

loc_8DB9:
	ADD_2_TO ppu_scroll_y_305
	IF_A_EQUAL_CMP_ADDR byte_315, #8, loc_8DCC
	ADD_2_TO ppu_scroll_y_305

loc_8DCC:
	IF_A_NOT_EQUAL_CMP_ADDR ppu_scroll_y_305, #$F0, loc_8DDE
	INC	ppu_unk_byte_303
	set ppu_scroll_y_305, #0
	JSR	sub_F641

loc_8DDE:
	INC	byte_314
	JSR	sub_94D3
	JSR	sub_9542
	IF_A_GREATER_CMP_ADDR byte_314, byte_315, loc_8DA3
	RTS
; End of function sub_8D27

; =============== S U B	R O U T	I N E =======================================

sub_8DF0:
	JSR	sub_91B6
	set byte_432, #$96 
	IF_A_NOT_EQUAL ppu_unk_byte_302, loc_8E0A
	IF_A_NOT_EQUAL ppu_scroll_x_304, loc_8E0A
	IF_A_NOT_EQUAL_CMP_ADDR byte_4AD, #0, loc_8E13
	RTS
; ---------------------------------------------------------------------------

loc_8E0A:
	IF_A_GREATER_CMP_ADDR byte_4AD, #$20, loc_8E4F
	BEQ	loc_8E4F

loc_8E13:
	JSR	sub_999A
	JSR	sub_9725
	IF_A_NOT_EQUAL_CMP_ADDR sprite_length_30F, #$FF, loc_8E21
	RTS
; ---------------------------------------------------------------------------

loc_8E21:
	JSR	sub_DDC9
	IF_A_EQUAL sprite_length_30F, loc_8E2A
	RTS
; ---------------------------------------------------------------------------

loc_8E2A:
	sub_2_from byte_4AD
	IF_A_EQUAL_CMP_ADDR byte_315, #8, loc_8E3D
	sub_2_from byte_4AD

loc_8E3D:
	INC	byte_314
	JSR	sub_94D3
	JSR	sub_9542
	IF_A_GREATER_CMP_ADDR byte_314, byte_315, loc_8E2A
	RTS
; ---------------------------------------------------------------------------

loc_8E4F:
	JSR	sub_999A
	JSR	sub_9725
	IF_A_NOT_EQUAL_CMP_ADDR sprite_length_30F, #$FF, loc_8E5D
	RTS
; ---------------------------------------------------------------------------

loc_8E5D:
	JSR	sub_DDC9
	IF_A_EQUAL sprite_length_30F, loc_8E66
	RTS
; ---------------------------------------------------------------------------

loc_8E66:
	IF_A_EQUAL_CMP_ADDR byte_314, #0, loc_8E83
	div_a_by_2_addr byte_315
	IF_A_EQUAL_CMP byte_314, loc_8E83
	div_a_by_4_addr byte_315
	IF_A_EQUAL_CMP byte_314, loc_8E89
	JMP	loc_8E8C
; ---------------------------------------------------------------------------

loc_8E83:
	JSR	sub_F2E4
	JMP	loc_8E8C
; ---------------------------------------------------------------------------

loc_8E89:
	JSR	sub_F37E

loc_8E8C:
	IF_A_NOT_EQUAL ppu_scroll_x_304, loc_8E94
	DEC	ppu_unk_byte_302

loc_8E94:
	sub_2_from ppu_scroll_x_304
	IF_A_EQUAL_CMP_ADDR byte_315, #8, loc_8EA7
	sub_2_from ppu_scroll_x_304

loc_8EA7:
	INC	byte_314
	JSR	sub_94D3
	JSR	sub_9542
	IF_A_GREATER_CMP_ADDR byte_314, byte_315, loc_8E66
	RTS
; End of function sub_8DF0

; =============== S U B	R O U T	I N E =======================================

sub_8EB9:
	JSR	sub_91B6
	set byte_432, #$96 
	LDA	ppu_unk_byte_302
	ADD_TO_A #1
	IF_A_NOT_EQUAL_CMP tilemaps_horiz_count_311, loc_8ED9
	IF_A_NOT_EQUAL ppu_scroll_x_304, loc_8ED9
	IF_A_NOT_EQUAL_CMP_ADDR byte_4AD, #$F0, loc_8EE2
	RTS
; ---------------------------------------------------------------------------

loc_8ED9:
	IF_A_EQUAL_CMP_ADDR byte_4AD, #$D0, loc_8F1E
	BCS	loc_8F1E

loc_8EE2:
	JSR	sub_999A
	JSR	sub_9725
	IF_A_NOT_EQUAL_CMP_ADDR sprite_length_30F, #$FF, loc_8EF0
	RTS
; ---------------------------------------------------------------------------

loc_8EF0:
	JSR	sub_DDC9
	IF_A_EQUAL sprite_length_30F, loc_8EF9
	RTS
; ---------------------------------------------------------------------------

loc_8EF9:
	ADD_2_TO byte_4AD
	IF_A_EQUAL_CMP_ADDR byte_315, #8, loc_8F0C
	ADD_2_TO byte_4AD

loc_8F0C:
	INC	byte_314
	JSR	sub_94D3
	JSR	sub_9542
	IF_A_GREATER_CMP_ADDR byte_314, byte_315, loc_8EF9
	RTS
; ---------------------------------------------------------------------------

loc_8F1E:
	JSR	sub_999A
	JSR	sub_9725
	IF_A_NOT_EQUAL_CMP_ADDR sprite_length_30F, #$FF, loc_8F2C
	RTS
; ---------------------------------------------------------------------------

loc_8F2C:
	JSR	sub_DDC9
	IF_A_EQUAL sprite_length_30F, loc_8F35
	RTS
; ---------------------------------------------------------------------------

loc_8F35:
	IF_A_EQUAL_CMP_ADDR byte_314, #0, loc_8F52
	div_a_by_2_addr byte_315
	IF_A_EQUAL_CMP byte_314, loc_8F52
	div_a_by_4_addr byte_315
	IF_A_EQUAL_CMP byte_314, loc_8F58
	JMP	loc_8F5B
; ---------------------------------------------------------------------------

loc_8F52:
	JSR	sub_F2E4
	JMP	loc_8F5B
; ---------------------------------------------------------------------------

loc_8F58:
	JSR	sub_F37E

loc_8F5B:
	ADD_2_TO ppu_scroll_x_304
	IF_A_EQUAL_CMP_ADDR byte_315, #8, loc_8F6E
	ADD_2_TO ppu_scroll_x_304

loc_8F6E:
	IF_A_NOT_EQUAL ppu_scroll_x_304, loc_8F76
	INC	ppu_unk_byte_302

loc_8F76:
	INC	byte_314
	JSR	sub_94D3
	JSR	sub_9542
	IF_A_GREATER_CMP_ADDR byte_314, byte_315, loc_8F35
	RTS
; End of function sub_8EB9

; =============== S U B	R O U T	I N E =======================================

start_button_pressed_8F88:
	set byte_629, #$FF

loc_8F8D:
	set byte_471, #$FF
	set byte_46E, #$FF
	set byte_5AF, #$FF
	JSR	sub_DFC1
	set byte_5AF, #0
	JSR	exec_b12_cB_EAC6
	IF_A_EQUAL_CMP_ADDR byte_46E, #$1A, loc_8FBB
	set map_show_43B, #$FF
	JSR	load_image_C6D2
	set map_show_43B, #0

loc_8FBB:
	set byte_46D, #$FF
	JSR	exec_b12_c11_EAF6
	RTS
; End of function start_button_pressed_8F88

; =============== S U B	R O U T	I N E =======================================

select_button_pressed_8FC4:
	IF_A_EQUAL_CMP_ADDR entry_idx_300, #$9A, locret_8FDB
	JSR	exec_b12_cC_EACE
	set map_show_43B, #$FF
	JSR	load_image_C6D2
	set map_show_43B, #0

locret_8FDB:
	RTS
; End of function select_button_pressed_8FC4

; =============== S U B	R O U T	I N E =======================================

a_button_pressed_8FDC:
	set byte_629, #$FF
	set byte_471, #0
	JSR	sub_994F
	IF_A_EQUAL_CMP_ADDR sprite_length_30F, #$FF, loc_900F
	IF_A_NOT_EQUAL_CMP_ADDR byte_4AF, #0, loc_900B
	set byte_445, #1
	JSR	sub_994F
	set byte_445, #0
	IF_A_EQUAL_CMP_ADDR sprite_length_30F, #$FF, loc_900F

loc_900B:
	JSR	sub_DFC1
	RTS
; ---------------------------------------------------------------------------

loc_900F:
	set tilemapTypeUnk_30B, #$2D 
	JSR	exec_b12_com48_ECA6
	LDX	byte_434
	set tilemapTypeUnk_30B, {obj_array_unk_415,X}
	IF_A_NOT_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #$1D, loc_902F
	IF_A_EQUAL_CMP_ADDR entry_idx_300, #$1E, loc_902F
	RTS
; ---------------------------------------------------------------------------

loc_902F:
	IF_A_NOT_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #2, loc_9042
	IF_A_EQUAL_CMP_ADDR byte_5F9, #0, loc_9042
	set tilemapTypeUnk_30B, #$3B 

loc_9042:
	IF_A_NOT_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #$1F, loc_9061
	a_to_stack tilemapTypeUnk_30B
	set inv_sprite_idx_31C, #$32 
	JSR	sub_EC86
	from_stack_to_a tilemapTypeUnk_30B
	IF_A_EQUAL_CMP_ADDR is_game_finished_561, #0, loc_9061
	RTS
; ---------------------------------------------------------------------------

loc_9061:
	IF_A_GREATER_CMP_ADDR tilemapTypeUnk_30B, #$3C, loc_90BB
	IF_A_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #$47, loc_90BB
	BCS	loc_90BB
	sub_addr_sec tilemapTypeUnk_30B, #$3C 
	ADD_TO_A #$14
	STA	text_idx_35C
	LDA	#0
	ADC	#2
	STA	char_type_id_35D
	a_to_stack tilemapTypeUnk_30B
	LDX	#1
	JSR	show_text_sequence_func_CF13
	set_text_args #$1F, #2
	LDX	#1
	JSR	show_text_sequence_func_CF13
	JSR	sub_CAA9
	from_stack_to_a tilemapTypeUnk_30B
	IF_A_NOT_EQUAL byte_372, locret_90BA
	LDX	byte_4C1
	sub_addr_sec tilemapTypeUnk_30B, #$3C 
	STA	unk_4B6,X
	INC	byte_4C1
	JMP	loc_9125
; ---------------------------------------------------------------------------

locret_90BA:
	RTS
; ---------------------------------------------------------------------------

loc_90BB:
	IF_A_GREATER_CMP_ADDR tilemapTypeUnk_30B, #$47, loc_911D
	sub_addr_sec tilemapTypeUnk_30B, #$47 
	ADD_TO_A #$99 
	STA	text_idx_35C
	LDA	#0
	ADC	#0
	STA	char_type_id_35D
	IF_A_NOT_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #$55, loc_90E6
	set_text_args #$3A, #2

loc_90E6:
	a_to_stack tilemapTypeUnk_30B
	LDX	#1
	JSR	show_text_sequence_func_CF13
	set_text_args #$1F, #2
	LDX	#1
	JSR	show_text_sequence_func_CF13
	JSR	sub_CAA9
	from_stack_to_a tilemapTypeUnk_30B
	IF_A_NOT_EQUAL byte_372, locret_911C
	LDX	byte_4D0
	sub_addr_sec tilemapTypeUnk_30B, #$47 
	STA	unk_4C2,X
	INC	byte_4D0
	JMP	loc_9125
; ---------------------------------------------------------------------------

locret_911C:
	RTS
; ---------------------------------------------------------------------------

loc_911D:
	JSR	exec_b12_cD_EAD6
	IF_A_EQUAL sprite_length_30F, locret_9131

loc_9125:
	JSR	exec_b12_cA_EABE
	set cur_obj_idx_unk_43A, byte_434
	JSR	sub_DBE2

locret_9131:
	RTS
; End of function a_button_pressed_8FDC

; =============== S U B	R O U T	I N E =======================================

show_text_func_9132:
	set byte_357, #$18
	set byte_358, #0
	set byte_359, #$1C
	set byte_360, #3
	set byte_361, #0
	set text_unk_35B, #$C0 
	JSR	sprites_func_9132

	set ppu_unk_byte_309, #$19
	set tilemap_size_307, #4
	set byte_35E, #$C
	set byte_35F, #1
	set byte_362, #0
	set byte_363, #0
	set sprite_secondByte_31B, #$D0 
	ADD_BYTE_TO_BYTE_CLC_IMM byte_310, text_unk_35B, #5
	JSR	exec_b2_c4_C90E

	set byte_357, #$18
	set byte_358, #0
	set byte_359, #$1C
	JSR	sub_F767

	RTS
; End of function show_text_func_9132

; =============== S U B	R O U T	I N E =======================================

sub_9195:
	IF_A_EQUAL byte_433, sub_91B6
	LDX	byte_313
	set objMapIdx_316, {byte_9537,X}
	IF_A_NOT_EQUAL_CMP_ADDR byte_313, #2, loc_91AF
	set byte_317, #$40 

loc_91AF:
	JSR	sub_C77D
	JSR	sub_935A
	RTS
; End of function sub_9195

; =============== S U B	R O U T	I N E =======================================

sub_91B6:
	LDX	byte_313
	STX	byte_4AF
	set2 objMapIdx_316, byte_4AA, {byte_9533,X}
	IF_A_NOT_EQUAL_CMP_ADDR byte_313, #2, loc_91D1
	set byte_317, #$40 

loc_91D1:
	JSR	sub_C77D
	JSR	hide_sprites_938D
	RTS
; End of function sub_91B6

; =============== S U B	R O U T	I N E =======================================

sub_91D8:
	IF_A_EQUAL byte_433, loc_91DE
	RTS
; ---------------------------------------------------------------------------

loc_91DE:
	IF_A_NOT_EQUAL byte_42A, loc_91E4
	RTS
; ---------------------------------------------------------------------------

loc_91E4:
	set byte_42A, #0
	set sprite_length_30F, #0
	LDX	#0

objects_update_91F0:
	IF_X_EQUAL_CMP objArraySize_373, locret_9260
	set byte_36A, byte_42C
	set byte_36B, byte_42D
	set byte_366, byte_42E
	set byte_367, byte_42F
	IF_A_NOT_EQUAL {objCreatedArray_393,X}, next_object_924D
	IF_A_EQUAL_CMP_ADDR {objIdxArray_375,X}, #1, case0_923C
	IF_A_EQUAL_CMP #2, case0_923C
	IF_A_EQUAL_CMP #$B, case0_923C
	IF_A_EQUAL_CMP #$D, case0_923C
	IF_A_EQUAL_CMP #$E, case0_923C
	IF_A_EQUAL_CMP #$10, case0_923C
	IF_A_EQUAL_CMP #$11, case0_923C
	IF_A_EQUAL_CMP #$18, case0_923C
	IF_A_EQUAL_CMP #$19, case0_923C
	JMP	next_object_924D
; ---------------------------------------------------------------------------

case0_923C:
	x_to_stack
	JSR	sub_D894
	from_stack_to_x
	STX	cur_obj_idx_unk_43A
	IF_A_EQUAL_CMP_ADDR sprite_length_30F, #$FF, loc_9251

next_object_924D:
	INX
	JMP	objects_update_91F0
; ---------------------------------------------------------------------------

loc_9251:
	IF_A_EQUAL_CMP_ADDR sprite_length_30F, #0, locret_9260
	set byte_439, #$FF
	JMP	loc_8ABF
; ---------------------------------------------------------------------------

locret_9260:
	RTS
; End of function sub_91D8

; =============== S U B	R O U T	I N E =======================================

sub_9261:
	JSR	sub_C7C7
	ADD_BYTE_TO_WORD byte_366, #4

	set sprite_length_30F, #0

loc_927A:
	sub_word_from_word byte_42C, byte_36A
	BCC	loc_92B7
	sub_word_from_word byte_36A, byte_42C
	BCC	loc_92A3
	or_byte sprite_length_30F, #$F
	JMP	loc_92CB
; ---------------------------------------------------------------------------

loc_92A3:
	sub_byte_from_word byte_42C, #2
	JMP	loc_92CB
; ---------------------------------------------------------------------------

loc_92B7:
	ADD_BYTE_TO_WORD byte_42C, #2

	JMP	loc_92CB
; ---------------------------------------------------------------------------

loc_92CB:
	sub_word_from_word byte_42E, byte_366
	BCC	loc_9308
	sub_word_from_word byte_366, byte_42E
	BCC	loc_92F4
	or_byte sprite_length_30F, #$F0 
	JMP	loc_931C
; ---------------------------------------------------------------------------

loc_92F4:
	sub_byte_from_word byte_42E, #2
	JMP	loc_931C
; ---------------------------------------------------------------------------

loc_9308:
	ADD_BYTE_TO_WORD byte_42E, #2

	JMP	loc_931C
; ---------------------------------------------------------------------------

loc_931C:
	a_to_stack byte_36A
	a_to_stack byte_36B
	a_to_stack byte_366
	a_to_stack byte_367
	a_to_stack sprite_length_30F
	JSR	sub_935A
	from_stack_to_a sprite_length_30F
	from_stack_to_a byte_367
	from_stack_to_a byte_366
	from_stack_to_a byte_36B
	from_stack_to_a byte_36A
	JSR	wait_for_frame_rendered_FCA0
	IF_A_EQUAL_CMP_ADDR sprite_length_30F, #$FF, loc_9354
	JMP	loc_927A
; ---------------------------------------------------------------------------

loc_9354:
	set byte_42A, #0
	RTS
; End of function sub_9261

; =============== S U B	R O U T	I N E =======================================

sub_935A:
	set byte_31A, #0
	set2 sprite_secondByte_31B, sprPalIdx_319, #0
	set objectIdx_318, #0
	set objMapIdx_316, #$14
	set byte_36A, byte_42C
	set byte_36B, byte_42D
	set byte_366, byte_42E
	set byte_367, byte_42F
	JSR	loadt_obj_tilemaps_C84D
	RTS
; End of function sub_935A

; =============== S U B	R O U T	I N E =======================================

hide_sprites_938D:
	set4 spr_y_pos_200, spr_y_pos_204, spr_y_pos_208, spr_y_pos_20C, #$F0 
	RTS
; End of function hide_sprites_938D

; =============== S U B	R O U T	I N E =======================================

sub_939C:
	JSR	sub_C7C7
	IF_A_EQUAL_CMP_ADDR byte_313, #0, loc_93D5
	IF_A_EQUAL_CMP #1, loc_93FC
	IF_A_EQUAL_CMP #2, loc_9423
	IF_A_EQUAL_CMP_ADDR spr_x_pos_203, #$F0, locret_93D4
	JSR	sub_944A
	IF_A_NOT_EQUAL sprite_length_30F, locret_93D4
	ADD_BYTE_TO_WORD byte_42C, #2

	ADD_2_TO byte_430

locret_93D4:
	RTS
; ---------------------------------------------------------------------------

loc_93D5:
	IF_A_EQUAL_CMP_ADDR spr_y_pos_200, #0, locret_93FB
	JSR	sub_944A
	IF_A_NOT_EQUAL sprite_length_30F, locret_93FB
	sub_byte_from_word byte_42E, #2
	sub_2_from byte_431

locret_93FB:
	RTS
; ---------------------------------------------------------------------------

loc_93FC:
	IF_A_EQUAL_CMP_ADDR spr_y_pos_200, #$E0, locret_9422
	JSR	sub_944A
	IF_A_NOT_EQUAL sprite_length_30F, locret_9422
	ADD_BYTE_TO_WORD byte_42E, #2

	ADD_2_TO byte_431

locret_9422:
	RTS
; ---------------------------------------------------------------------------

loc_9423:
	IF_A_EQUAL_CMP_ADDR spr_x_pos_203, #0, locret_9449
	JSR	sub_944A
	IF_A_NOT_EQUAL sprite_length_30F, locret_9449
	sub_byte_from_word byte_42C, #2
	sub_2_from byte_430

locret_9449:
	RTS
; End of function sub_939C

; =============== S U B	R O U T	I N E =======================================

sub_944A:
	set sprite_length_30F, #0
	a_to_stack byte_430
	a_to_stack byte_431
	IF_A_EQUAL_CMP_ADDR byte_313, #0, loc_9469
	IF_A_EQUAL_CMP #1, loc_9472
	IF_A_EQUAL_CMP #2, loc_947B
	JMP	loc_9484
; ---------------------------------------------------------------------------

loc_9469:
	sub_2_from byte_431
	JMP	loc_948A
; ---------------------------------------------------------------------------

loc_9472:
	ADD_2_TO byte_431
	JMP	loc_948A
; ---------------------------------------------------------------------------

loc_947B:
	sub_2_from byte_430
	JMP	loc_948A
; ---------------------------------------------------------------------------

loc_9484:
	ADD_2_TO byte_430

loc_948A:
	LDX	byte_543
	set byte_42B, {byte_953B,X}
	set tilemap_size_307, byte_430
	BPL	loc_94A2
	EOR	#$FF
	TAX
	INX
	STX	tilemap_size_307

loc_94A2:
	set ppu_unk_byte_309, byte_431
	BPL	loc_94B1
	EOR	#$FF
	TAX
	INX
	STX	ppu_unk_byte_309

loc_94B1:
	LDA	tilemap_size_307
	ADD_TO_A ppu_unk_byte_309
	IF_A_GREATER_CMP byte_42B, loc_94C5
	set sprite_length_30F, #$FF
	JMP	loc_94CA
; ---------------------------------------------------------------------------

loc_94C5:
	set sprite_length_30F, #0

loc_94CA:
	from_stack_to_a byte_431
	from_stack_to_a byte_430
	RTS
; End of function sub_944A

; =============== S U B	R O U T	I N E =======================================

sub_94D3:
	IF_A_EQUAL_CMP_ADDR byte_315, #4, loc_94E9
	load_a_masked byte_314, #1
	BEQ	loc_94E2
	RTS
; ---------------------------------------------------------------------------

loc_94E2:
	div_a_by_2_addr byte_314
	JMP	loc_94EC
; ---------------------------------------------------------------------------

loc_94E9:
	LDA	byte_314

loc_94EC:
	sub_a_sec #1
	STA	objMapIdx_316

	mult_by_4_byte byte_313
	ADD_TO_A objMapIdx_316
	TAX
	set2 objMapIdx_316, byte_4AA, {byte_9523,X}
	IF_A_NOT_EQUAL_CMP_ADDR byte_313, #2, loc_9511
	set byte_317, #$40 

loc_9511:
	JSR	sub_C77D
	IF_A_EQUAL_CMP_ADDR byte_314, byte_315, locret_9522
	JSR	wait_for_frame_rendered_FCA0
	JSR	wait_for_frame_rendered_FCA0

locret_9522:
	RTS
; End of function sub_94D3

; ---------------------------------------------------------------------------
byte_9523:.BYTE  $B, $B, $D, $D,	6,  6,	8,  8,	1,  1,	2,  2,	1,  1,	2,  2
	
	
byte_9533:.BYTE  $A,  5,	0,  0	

byte_9537:.BYTE $11, $F,$10,$10	
byte_953B:.BYTE	0,$20,$30,$3C,$50,$3C,$60 

; =============== S U B	R O U T	I N E =======================================

sub_9542:
	JSR	sub_9881
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$46, loc_957C
	LDX	#0
	IF_A_NOT_EQUAL_CMP_ADDR {array_unk_3C5,X}, #$60, loc_957C
	IF_A_NOT_EQUAL_CMP_ADDR {array_unk_3D9,X}, #$60, loc_957C
	LDX	#2
	IF_A_NOT_EQUAL_CMP_ADDR {array_unk_3C5,X}, #$90, loc_957C
	IF_A_NOT_EQUAL_CMP_ADDR {array_unk_3D9,X}, #$60, loc_957C
	set2 byte_5BF, byte_5C0, #0
	set2 byte_5C1, byte_5C2, #$FF

loc_957C:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$3D, loc_95CA
	LDX	#0
	IF_A_NOT_EQUAL_CMP_ADDR {array_unk_3C5,X}, #$50, loc_95CA
	IF_A_NOT_EQUAL_CMP_ADDR {array_unk_3BB,X}, #0, loc_95CA
	IF_A_NOT_EQUAL_CMP_ADDR {array_unk_3D9,X}, #$30, loc_95CA
	IF_A_NOT_EQUAL_CMP_ADDR {array_unk_3CF,X}, #0, loc_95CA
	set byte_58A, #$FF
	JSR	exec_b12_c9_EAB6
	set image_id_4A4, entry_idx_300
	set image_offset_4A5, ppu_unk_byte_302
	set ppu_prev_unk_4A6, ppu_unk_byte_303
	set ppu_prev_scroll_x_unk_4A7, ppu_scroll_x_304
	set ppu_prev_scroll_y_unk_4A8, ppu_scroll_y_305
	JSR	load_image_C6D2

loc_95CA:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$65, loc_9602
	LDX	#0

loc_95D3:
	IF_A_EQUAL_CMP_ADDR {objIdxArray_375,X}, #3, loc_95EA
	IF_A_EQUAL_CMP_ADDR {array_unk_39D,X}, #1, loc_95EA
	INX
	IF_X_GREATER_CMP objArraySize_373, loc_95D3
	JMP	loc_9602
; ---------------------------------------------------------------------------

loc_95EA:
	set byte_567, {array_unk_3C5,X}
	set byte_568, {array_unk_3BB,X}
	set byte_569, {array_unk_3D9,X}
	set byte_56A, {array_unk_3CF,X}

loc_9602:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$3C, loc_963A
	LDX	#0

loc_960B:
	IF_A_NOT_EQUAL_CMP_ADDR {objIdxArray_375,X}, #3, loc_9619
	IF_A_EQUAL_CMP_ADDR {array_unk_39D,X}, #1, loc_9622

loc_9619:
	INX
	IF_X_GREATER_CMP objArraySize_373, loc_960B
	JMP	loc_963A
; ---------------------------------------------------------------------------

loc_9622:
	set byte_56B, {array_unk_3C5,X}
	set byte_56C, {array_unk_3BB,X}
	set byte_56D, {array_unk_3D9,X}
	set byte_56E, {array_unk_3CF,X}

loc_963A:
	IF_A_EQUAL_CMP_ADDR entry_idx_300, #$5C, loc_9648
	IF_A_EQUAL_CMP #$93, loc_9648
	JMP	loc_9679
; ---------------------------------------------------------------------------

loc_9648:
	LDX	#0

loc_964A:
	IF_A_NOT_EQUAL_CMP_ADDR {objIdxArray_375,X}, #3, loc_9658
	IF_A_EQUAL_CMP_ADDR {array_unk_39D,X}, #2, loc_9661

loc_9658:
	INX
	IF_X_GREATER_CMP objArraySize_373, loc_964A
	JMP	loc_9679
; ---------------------------------------------------------------------------

loc_9661:
	set byte_56F, {array_unk_3C5,X}
	set byte_570, {array_unk_3BB,X}
	set byte_571, {array_unk_3D9,X}
	set byte_572, {array_unk_3CF,X}

loc_9679:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$5D, loc_96AA
	LDX	#0

loc_9682:
	IF_A_EQUAL_CMP_ADDR {objIdxArray_375,X}, #3, loc_9692
	INX
	IF_X_GREATER_CMP objArraySize_373, loc_9682
	JMP	loc_96AA
; ---------------------------------------------------------------------------

loc_9692:
	set byte_573, {array_unk_3C5,X}
	set byte_574, {array_unk_3BB,X}
	set byte_575, {array_unk_3D9,X}
	set byte_576, {array_unk_3CF,X}

loc_96AA:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$7D, loc_971B
	IF_A_NOT_EQUAL_CMP_ADDR array_unk_3C5, #$50, loc_96C2
	IF_A_NOT_EQUAL_CMP_ADDR array_unk_3D9, #$60, loc_96C2
	JMP	loc_96D3
; ---------------------------------------------------------------------------

loc_96C2:
	IF_A_NOT_EQUAL_CMP_ADDR array_unk_3C5, #$A0, loc_971B
	IF_A_NOT_EQUAL_CMP_ADDR array_unk_3D9, #$60, loc_971B
	JMP	loc_96E4
; ---------------------------------------------------------------------------

loc_96D3:
	IF_A_NOT_EQUAL_CMP_ADDR byte_3C6, #$A0, loc_971B
	IF_A_NOT_EQUAL_CMP_ADDR byte_3DA, #$60, loc_971B
	JMP	loc_96F2
; ---------------------------------------------------------------------------

loc_96E4:
	IF_A_NOT_EQUAL_CMP_ADDR byte_3C6, #$50, loc_971B
	IF_A_NOT_EQUAL_CMP_ADDR byte_3DA, #$60, loc_971B

loc_96F2:
	set byte_594, #$FF
	JSR	exec_b12_c9_EAB6
	set image_id_4A4, entry_idx_300
	set image_offset_4A5, ppu_unk_byte_302
	set ppu_prev_unk_4A6, ppu_unk_byte_303
	set ppu_prev_scroll_x_unk_4A7, ppu_scroll_x_304
	set ppu_prev_scroll_y_unk_4A8, ppu_scroll_y_305
	JSR	load_image_C6D2

loc_971B:
	JSR	sub_CCA0
	JSR	objects_func_D644
	JSR	objects_func_D52A
	RTS
; End of function sub_9542

; =============== S U B	R O U T	I N E =======================================

sub_9725:
	set4 byte_435, byte_436, byte_437, byte_438, #0
	JSR	sub_97F8
	IF_A_EQUAL_CMP_ADDR sprite_length_30F, #$FF, loc_9740
	JMP	loc_97D2
; ---------------------------------------------------------------------------

loc_9740:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$5D, loc_9773
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {objIdxArray_375,X}, #3, loc_9773
	IF_A_NOT_EQUAL_CMP_ADDR byte_573, #$90, loc_9773
	IF_A_NOT_EQUAL_CMP_ADDR byte_574, #1, loc_9773
	IF_A_NOT_EQUAL_CMP_ADDR byte_575, #$B0, loc_9773
	IF_A_NOT_EQUAL_CMP_ADDR byte_576, #0, loc_9773
	set sprite_length_30F, #$FF
	RTS
; ---------------------------------------------------------------------------

loc_9773:
	LDX	byte_434
	IF_A_EQUAL_CMP_ADDR {objIdxArray_375,X}, #6, loc_97E7
	LDX	byte_434
	IF_A_NOT_EQUAL_CMP_ADDR {objIdxArray_375,X}, #3, loc_97D2
	IF_A_EQUAL_CMP_ADDR {array_unk_39D,X}, #0, loc_9797
	IF_A_EQUAL_CMP #1, loc_9797
	IF_A_EQUAL_CMP #2, loc_9797
	RTS
; ---------------------------------------------------------------------------

loc_9797:
	a_to_stack byte_313
	JSR	sub_D9B9
	from_stack_to_a byte_313
	JSR	sub_98F2
	STX	tilemapTypeUnk_30B
	x_to_stack
	JSR	sub_8762
	from_stack_to_x
	IF_A_NOT_EQUAL_CMP_ADDR sprite_length_30F, #$FF, loc_97B9
	JMP	loc_97D2
; ---------------------------------------------------------------------------

loc_97B9:
	a_to_stack byte_313
	JSR	sub_D9B9
	from_stack_to_a byte_313
	x_to_stack
	JSR	sub_DDDA
	from_stack_to_x
	IF_A_NOT_EQUAL_CMP_ADDR sprite_length_30F, #$FF, loc_97ED

loc_97D2:
	LDX	byte_434
	IF_A_EQUAL_CMP_ADDR {objIdxArray_375,X}, #$F, loc_97E1
	IF_A_EQUAL_CMP #$C, loc_97E1
	RTS
; ---------------------------------------------------------------------------

loc_97E1:
	set sprite_length_30F, #0
	RTS
; ---------------------------------------------------------------------------

loc_97E7:
	set byte_437, #$FF
	RTS
; ---------------------------------------------------------------------------

loc_97ED:
	set sprite_length_30F, #0
	set byte_435, #$FF
	RTS
; End of function sub_9725

; =============== S U B	R O U T	I N E =======================================

sub_97F8:
	JSR	sub_C7C7
	ADD_BYTE_TO_WORD byte_366, #$10

	ADD_BYTE_TO_WORD byte_36A, #8

	JSR	sub_9824
	JSR	sub_DA33
	RTS
; End of function sub_97F8

; =============== S U B	R O U T	I N E =======================================

sub_9824:
	IF_A_NOT_EQUAL_CMP_ADDR byte_313, #0, loc_983F
	sub_byte_from_word byte_366, #$10
	JMP	locret_9880
; ---------------------------------------------------------------------------

loc_983F:
	IF_A_NOT_EQUAL_CMP #1, loc_9857
	ADD_BYTE_TO_WORD byte_366, #$10

	JMP	locret_9880
; ---------------------------------------------------------------------------

loc_9857:
	IF_A_NOT_EQUAL_CMP #2, loc_986F
	sub_byte_from_word byte_36A, #$10
	JMP	locret_9880
; ---------------------------------------------------------------------------

loc_986F:
	ADD_BYTE_TO_WORD byte_36A, #$10

locret_9880:
	RTS
; End of function sub_9824

; =============== S U B	R O U T	I N E =======================================

sub_9881:
	IF_A_EQUAL_CMP_ADDR byte_435, #$FF, loc_988B
	JMP	locret_98F1
; ---------------------------------------------------------------------------

loc_988B:
	LDX	byte_434
	IF_A_EQUAL_CMP_ADDR byte_313, #0, loc_98CC
	IF_A_EQUAL_CMP #1, loc_98E0
	IF_A_EQUAL_CMP #2, loc_98A4
	IF_A_EQUAL_CMP #3, loc_98B8
	JMP	locret_98F1
; ---------------------------------------------------------------------------

loc_98A4:
	sub_byte_sec {array_unk_3C5,X}, #2
	sub_byte {array_unk_3BB,X}, #0
	JMP	locret_98F1
; ---------------------------------------------------------------------------

loc_98B8:
	ADD_TO {array_unk_3C5,X}, {array_unk_3BB,X}, #2, #0
	JMP	locret_98F1
; ---------------------------------------------------------------------------

loc_98CC:
	sub_byte_sec {array_unk_3D9,X}, #2
	sub_byte {array_unk_3CF,X}, #0
	JMP	locret_98F1
; ---------------------------------------------------------------------------

loc_98E0:
	ADD_TO {array_unk_3D9,X}, {array_unk_3CF,X}, #2, #0

locret_98F1:
	RTS
; End of function sub_9881

; =============== S U B	R O U T	I N E =======================================

sub_98F2:
	IF_A_NOT_EQUAL_CMP_ADDR byte_313, #0, loc_990D
	sub_byte_from_word byte_366, #$10
	JMP	locret_994E
; ---------------------------------------------------------------------------

loc_990D:
	IF_A_NOT_EQUAL_CMP #1, loc_9925
	ADD_BYTE_TO_WORD byte_366, #$10

	JMP	locret_994E
; ---------------------------------------------------------------------------

loc_9925:
	IF_A_NOT_EQUAL_CMP #2, loc_993D
	sub_byte_from_word byte_36A, #$10
	JMP	locret_994E
; ---------------------------------------------------------------------------

loc_993D:
	ADD_BYTE_TO_WORD byte_36A, #$10

locret_994E:
	RTS
; End of function sub_98F2

; =============== S U B	R O U T	I N E =======================================

sub_994F:
	set sprite_length_30F, #0
	LDX	#0

loc_9956:
	IF_X_EQUAL_CMP objArraySize_373, locret_9999
	IF_A_NOT_EQUAL_CMP_ADDR {objCreatedArray_393,X}, #0, loc_9995
	IF_A_NOT_EQUAL_CMP_ADDR {objIdxArray_375,X}, #6, loc_9995
	x_to_stack
	JSR	sub_C7C7
	IF_A_EQUAL_CMP_ADDR byte_445, #0, loc_9986
	sub_byte_from_word byte_366, #$16

loc_9986:
	JSR	sub_D894
	from_stack_to_x
	STX	byte_434
	IF_A_EQUAL_CMP_ADDR sprite_length_30F, #$FF, locret_9999

loc_9995:
	INX
	JMP	loc_9956
; ---------------------------------------------------------------------------

locret_9999:
	RTS
; End of function sub_994F

; =============== S U B	R O U T	I N E =======================================

sub_999A:
	set byte_584, #0
	JSR	sub_C7C7
	
	ADD_BYTE_TO_WORD byte_366, #8

	JSR	sub_9824

	set tilemapWidth_308, byte_36A
	set tilemap_size_307, byte_36B
	set tilemapHeight_30A, byte_366
	set ppu_unk_byte_309, byte_367

	set_word_to_word_const ptr_0, off_9B32

	LDY	#0
	set tilemapTypeUnk_30B, {(ptr_0),Y}

	ADD_BYTE_TO_WORD ptr_0, #1

	set inv_spr_dscr1_30C, #0

loc_99EF:
	mult_by_2_byte inv_spr_dscr1_30C
	TAY
	set_iny data_2, {(ptr_0),Y}
	set data_3, {(ptr_0),Y}

	LDY	#0
	IF_A_NOT_EQUAL_CMP_ADDR {(data_2),Y}, entry_idx_300, loc_9A7F
	INY

	set_iny byte_36A, {(data_2),Y}
	set_iny byte_36B, {(data_2),Y}

	set_iny byte_366, {(data_2),Y}
	set_iny byte_367, {(data_2),Y}

	set_iny byte_36C, {(data_2),Y}
	set_iny byte_36D, {(data_2),Y}

	set_iny byte_368, {(data_2),Y}
	set_iny byte_369, {(data_2),Y}

	sub_addr_sec tilemapWidth_308, byte_36A
	sub_addr tilemap_size_307, byte_36B
	BCC	loc_9A7F
	sub_addr_sec tilemapHeight_30A, byte_366
	sub_addr ppu_unk_byte_309, byte_367
	BCC	loc_9A7F
	sub_addr_sec byte_36C, tilemapWidth_308
	sub_addr byte_36D, tilemap_size_307
	BCC	loc_9A7F
	sub_addr_sec byte_368, tilemapHeight_30A
	sub_addr byte_369, ppu_unk_byte_309
	BCC	loc_9A7F
	set_iny ptr_0, {(data_2),Y}
	set ptr_1, {(data_2),Y}
	JMP	(ptr_0)

; ---------------------------------------------------------------------------

loc_9A7F:
	INC	inv_spr_dscr1_30C
	IF_A_EQUAL_CMP_ADDR inv_spr_dscr1_30C, tilemapTypeUnk_30B, loc_9A8D
	JMP	loc_99EF
; ---------------------------------------------------------------------------

loc_9A8D:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$6A, locret_9AD8
	IF_A_NOT_EQUAL_CMP_ADDR byte_577, #$FF, locret_9AD8
	IF_A_NOT_EQUAL_CMP_ADDR tilemapWidth_308, byte_57A, locret_9AD8
	IF_A_NOT_EQUAL_CMP_ADDR tilemap_size_307, byte_57D, locret_9AD8
	IF_A_NOT_EQUAL_CMP_ADDR tilemapHeight_30A, byte_580, loc_9AC3
	IF_A_NOT_EQUAL_CMP_ADDR ppu_unk_byte_309, byte_583, loc_9AC3
	set byte_584, #$FF
	JMP	locret_9AD8
; ---------------------------------------------------------------------------

loc_9AC3:
	IF_A_NOT_EQUAL_CMP_ADDR tilemapHeight_30A, byte_57E, locret_9AD8
	IF_A_NOT_EQUAL_CMP_ADDR ppu_unk_byte_309, byte_581, locret_9AD8
	set byte_584, #$FE 

locret_9AD8:
	RTS
; End of function sub_999A

; =============== S U B	R O U T	I N E =======================================

show_hidden_copyright_9AD9:
	set_text_args #$47, #2
	set byte_364, #4
	set ppu_unk_byte_309, #$D
	set tilemap_size_307, #4
	set byte_35E, #$C
	set byte_35F, #1
	set byte_362, #0
	set byte_363, #0
	set sprite_secondByte_31B, #$A0 
	a_to_stack byte_360
	a_to_stack byte_361
	set byte_360, #0
	set byte_361, #3
	JSR	exec_b2_c4_C90E
	from_stack_to_a byte_361
	from_stack_to_a byte_360
	RTS
; End of function show_hidden_copyright_9AD9

; ---------------------------------------------------------------------------
copyright_cheat_sequence_9B29:
	.BYTE up_8, up_8, down_4, down_4, left_2, left_2, right_1, right_1, a_80

off_9B32:
	.include "binary_data/bank_0_9B32.asm"

off_9BB5:
	.include "binary_data/bank_0_9BB5.asm"

unknown_data_BCB6:
	.WORD byte_BCF2
	.WORD byte_BCF3
	.WORD byte_BCF4
	.WORD byte_BCF5
	.WORD byte_BCF6
	.WORD byte_BCF7
	.WORD byte_BCF8
	.WORD byte_BCF9
	.WORD byte_BCFA
	.WORD byte_BCFB
	.WORD byte_BCFC
	.WORD byte_BCFD
	.WORD byte_BCFE
	.WORD byte_BCFF
	.WORD byte_BD00
	.WORD byte_BD01
	.WORD byte_BD02
	.WORD byte_BD03
	.WORD byte_BD04
	.WORD byte_BD05
	.WORD byte_BD06
	.WORD byte_BD07
	.WORD byte_BD08
	.WORD byte_BD09
	.WORD byte_BD0A
	.WORD byte_BD0B
	.WORD byte_BD0C
	.WORD byte_BD0D
	.WORD byte_BD0E
	.WORD byte_BD0F
byte_BCF2: .BYTE	0	
byte_BCF3: .BYTE	0	
byte_BCF4: .BYTE	0	
byte_BCF5: .BYTE	0	
byte_BCF6: .BYTE	0	
byte_BCF7: .BYTE	0	
byte_BCF8: .BYTE	0	
byte_BCF9: .BYTE	0	
byte_BCFA: .BYTE	0	
byte_BCFB: .BYTE	0	
byte_BCFC: .BYTE	0	
byte_BCFD: .BYTE	0	
byte_BCFE: .BYTE	0	
byte_BCFF: .BYTE	0	
byte_BD00: .BYTE	0	
byte_BD01: .BYTE	0	
byte_BD02: .BYTE	0	
byte_BD03: .BYTE	0	
byte_BD04: .BYTE	0	
byte_BD05: .BYTE	0	
byte_BD06: .BYTE	0	
byte_BD07: .BYTE	0	
byte_BD08: .BYTE	0	
byte_BD09: .BYTE $A3	
byte_BD0A: .BYTE $88	
byte_BD0B: .BYTE $8E	
byte_BD0C: .BYTE $72	
byte_BD0D: .BYTE $B6	
byte_BD0E: .BYTE $99	
byte_BD0F: .BYTE $86	
byte_BD10: .BYTE  $B,$18,$25,$30,$39,$45,$50,$58,$63,$70,$7C,$85
	
byte_BD1C:.BYTE	2,$16,$21	

; =============== S U B	R O U T	I N E =======================================

sub_BD1F:
	set tilemapWidth_308, #0
	set byte_31A, #0
; End of function sub_BD1F

; =============== S U B	R O U T	I N E =======================================

sub_BD29:
	ADD_BYTE_TO_BYTE_CLC tilemapWidth_308, byte_31A
	LDY	byte_31A

hide_all_sprites_BD36:
	set_iny {spr_y_pos_200,Y}, #$F0 
	INY
	INY
	INY
	IF_Y_NOT_EQUAL_CMP tilemapWidth_308, hide_all_sprites_BD36
	RTS
; End of function sub_BD29

; =============== S U B	R O U T	I N E =======================================

sub_BD45:
	LDX	#0
	LDA	palette_bg_321,X 
	LDX	#$10
	STA	palette_bg_321,X 
	set inv_spr_dscr1_30C, #4

loc_BD54:
	set has_ppu_data_to_upload_6F, #0
	LDX	#0
	set_inx {ppu_data_70,X}, #1
	set_inx {ppu_data_70,X}, #$20 
	set_inx {ppu_data_70,X}, #$3F 
	set_inx {ppu_data_70,X}, #0
	IF_A_NOT_EQUAL_CMP_ADDR byte_341, #0, loc_BD7A
	set inv_spr_dscr1_30C, #1

loc_BD7A:
	LDY	#0

loc_BD7C:
	IF_A_EQUAL_CMP_ADDR inv_spr_dscr1_30C, #4, loc_BD8F
	IF_A_EQUAL_CMP #3, loc_BD97
	IF_A_EQUAL_CMP #2, loc_BDA8
	IF_A_EQUAL_CMP #1, loc_BDB9

loc_BD8F:
	load_a_masked {palette_bg_321,Y }, #$CF 
	JMP	loc_BDCD
; ---------------------------------------------------------------------------

loc_BD97:
	load_a_masked {palette_bg_321,Y }, #$30 
	IF_A_GREATER_CMP #$30, loc_BDCA
	load_a_masked {palette_bg_321,Y }, #$DF 
	JMP	loc_BDCD
; ---------------------------------------------------------------------------

loc_BDA8:
	load_a_masked {palette_bg_321,Y }, #$30 
	IF_A_GREATER_CMP #$20, loc_BDCA
	load_a_masked {palette_bg_321,Y }, #$EF 
	JMP	loc_BDCD
; ---------------------------------------------------------------------------

loc_BDB9:
	load_a_masked {palette_bg_321,Y }, #$30 
	IF_A_GREATER_CMP #$10, loc_BDCA
	load_a_masked {palette_bg_321,Y }, #$FF
	JMP	loc_BDCD
; ---------------------------------------------------------------------------

loc_BDCA:
	LDA	palette_bg_321,Y 

loc_BDCD:
	STA	ppu_data_70,X
	INX
	INY
	IF_Y_GREATER_CMP #$20 , loc_BD7C
	set has_ppu_data_to_upload_6F, #1
	DEC	inv_spr_dscr1_30C
	IF_A_EQUAL_CMP_ADDR inv_spr_dscr1_30C, #0, loc_BDEC
	LDA	byte_341
	JSR	wait_for_frame_rendered_FCA0
	JMP	loc_BD54
; ---------------------------------------------------------------------------

loc_BDEC:
	IF_A_EQUAL_CMP_ADDR byte_341, #0, loc_BDF7
	JSR	wait_for_frame_rendered_FCA0
	RTS
; ---------------------------------------------------------------------------

loc_BDF7:
	ADD_TO_A #1
	JSR	wait_for_frame_rendered_FCA0
	RTS
; End of function sub_BD45

; =============== S U B	R O U T	I N E =======================================

sub_BDFE:
	set inv_spr_dscr1_30C, #4

loc_BE03:
	set has_ppu_data_to_upload_6F, #0
	LDX	#0
	set_inx {ppu_data_70,X}, #1
	set_inx {ppu_data_70,X}, #$20 
	set_inx {ppu_data_70,X}, #$3F 
	set_inx {ppu_data_70,X}, #0
	IF_A_NOT_EQUAL_CMP_ADDR byte_341, #0, loc_BE29
	set inv_spr_dscr1_30C, #0

loc_BE29:
	LDY	#0

loc_BE2B:
	IF_A_EQUAL_CMP_ADDR inv_spr_dscr1_30C, #4, loc_BE42
	IF_A_EQUAL_CMP #3, loc_BE4A
	IF_A_EQUAL_CMP #2, loc_BE5B
	IF_A_EQUAL_CMP #1, loc_BE6C
	IF_A_EQUAL_CMP #0, loc_BE7D

loc_BE42:
	load_a_masked {palette_bg_321,Y }, #$FF
	JMP	loc_BE85
; ---------------------------------------------------------------------------

loc_BE4A:
	load_a_masked {palette_bg_321,Y }, #$30 
	IF_A_GREATER_CMP #$30, loc_BE82
	load_a_masked {palette_bg_321,Y }, #$EF 
	JMP	loc_BE85
; ---------------------------------------------------------------------------

loc_BE5B:
	load_a_masked {palette_bg_321,Y }, #$30 
	IF_A_GREATER_CMP #$20, loc_BE82
	load_a_masked {palette_bg_321,Y }, #$DF 
	JMP	loc_BE85
; ---------------------------------------------------------------------------

loc_BE6C:
	load_a_masked {palette_bg_321,Y }, #$30 
	IF_A_GREATER_CMP #$10, loc_BE82
	load_a_masked {palette_bg_321,Y }, #$CF 
	JMP	loc_BE85
; ---------------------------------------------------------------------------

loc_BE7D:
	LDA	#$1D
	JMP	loc_BE85
; ---------------------------------------------------------------------------

loc_BE82:
	LDA	palette_bg_321,Y 

loc_BE85:
	STA	ppu_data_70,X
	INX
	INY
	IF_Y_GREATER_CMP #$20 , loc_BE2B
	set has_ppu_data_to_upload_6F, #1
	DEC	inv_spr_dscr1_30C
	IF_A_EQUAL_CMP_ADDR inv_spr_dscr1_30C, #$FF, loc_BEA4
	LDA	byte_341
	JSR	wait_for_frame_rendered_FCA0
	JMP	loc_BE03
; ---------------------------------------------------------------------------

loc_BEA4:
	IF_A_EQUAL_CMP_ADDR byte_341, #0, loc_BEAF
	JSR	wait_for_frame_rendered_FCA0
	RTS
; ---------------------------------------------------------------------------

loc_BEAF:
	ADD_TO_A #1
	JSR	wait_for_frame_rendered_FCA0
	RTS
; End of function sub_BDFE

; =============== S U B	R O U T	I N E =======================================

sub_BEB6:
	x_to_stack
	LDX	#0

loc_BEBA:
	ADC	ptr_0,X
	ADC	byte_100,X
	ADC	spr_y_pos_200,X
	ADC	entry_idx_300,X
	ADC	unk_400,X
	ADC	unk_500,X
	ADC	byte_600,X
	ADC	apu_unk_700,X
	INX
	IF_X_NOT_EQUAL_CMP #0, loc_BEBA
	STA	byte_351

loc_BED9:
	IF_A_GREATER_CMP_ADDR byte_351, byte_352, loc_BEEE
	sub_byte_sec byte_351, byte_352
	JMP	loc_BED9
; ---------------------------------------------------------------------------

loc_BEEE:
	set byte_352, byte_351
	from_stack_to_x
	RTS
; End of function sub_BEB6

; ---------------------------------------------------------------------------
unused_data_BEF7:
	.BYTE $D7,$89,$46, $E,$89,$5E, $C,$FF,	6,$50,$CE,$E9,$61,$FF,$B8,$10
	.BYTE	0,$50,$1E,$B8,$E1,$15,$50,$FF,$36,$F6,$CE,$9A,	8,  0,$22,$20
	.BYTE $8B,$E5,$A3,$50,$CE,$3D,$10,  0,$74,$25,$C7,$46, $A,  0,	0,$A1
	.BYTE $F2,$CE,$BB,$32,	0,$F7,$EB,$8C,$DB,$B9,$B9,$5D,	3,$C8,$53,$51
	.BYTE $1E,$B8,$17,$14,$50,$9A,$43,  0,$1C,$20,$8B,$E5,$E9,$75,	3,$A1
	.BYTE $88,$CE,$D1,$E0,$D1,$E0,$8B,$F0,$33,$DB,$33,$C9,$89,$9C,$36,$DF
	.BYTE $89,$8C,$34,$DF,$89,$9C,$36,$DB,$89,$8C,$34,$DB,$89,$9C,$36,$E3
	.BYTE $89,$8C,$34,$E3,$C7,  6,$50,$CE,	0,  0,$A1,$50,$CE,$3D,	4,  0
	.BYTE $75,  3,$E9,$DD,	0,$8B,$1E,$88,$CE,$D1,$E3,$D1,$E3,$B9,	8,  0
	.BYTE $8B,$97,$36,$DF,$8B,$87,$34,$DF,$D1,$E0,$D1,$D2,$E2,$FA,$89,$97
	.BYTE $36,$DF,$89,$87,$34,$DF,$B9,  3,	0,$89,$46, $C,$A1,$50,$CE,$2B
	.BYTE $C8,$89, $E,$5E,$CE,$8B,$F1,$8A,$84,$E1,$15,$98,$25,$FF,	0,$33
	.BYTE $C9,$85,$C0,$79,	1,$49,	9,$8F,$36,$DF,	9,$87,$34,$DF,$B9,  8
	.BYTE	0,$8B,$87,$36,$DB,$89,$56, $E,$8B,$97,$34,$DB,$D1,$E2,$D1,$D0
	.BYTE $E2,$FA,$89,$87,$36,$DB,$89,$97,$34,$DB,$B9,  7,	0,$89,$46, $E
	.BYTE $A1,$50,$CE,$2B,$C8,$89, $E,$5E,$CE,$8B,$F1,$8A,$84,$E1,$15,$98
	.BYTE $25,$FF,	0,$53,$FD,$77,$81,$CA,$FD

tilemap_entries_C000:
	.include "tilemaps/bank_00_tilemap_entries.asm"

unknown_entries_C558:
	.WORD byte_C69C
	.WORD byte_C69D
	.WORD byte_C69E
	.WORD byte_C69F
	.WORD byte_C6A0
	.WORD byte_C6A1
	.WORD byte_C6A2
	.WORD byte_C6A3
	.WORD byte_C6A4
	.WORD byte_C6A5
	.WORD byte_C6A6
	.WORD byte_C6A7
	.WORD byte_C6A8
	.WORD byte_C6A9
	.WORD byte_C6AA
	.WORD byte_C6AB
	.WORD byte_C6AC
	.WORD byte_C6AD
	.WORD byte_C6AE
	.WORD byte_C6AF
	.WORD byte_C6B0
	.WORD byte_C6B1
	.WORD byte_C6B2
	.WORD byte_C6B3
	.WORD byte_C6B4
	.WORD byte_C6B5
	.WORD byte_C6B6
	.WORD byte_C6B7
	.WORD byte_C6B8
	.WORD byte_C6B9
	.WORD byte_C6B9
	.WORD byte_C6B9
	.WORD byte_C6B9
	.WORD byte_C6B9
	.WORD byte_C6B9
	.WORD byte_C6B9
	.WORD byte_C6B9
	.WORD byte_C6B9
	.WORD byte_C6B9
	.WORD byte_C6B9
	.WORD byte_C6B9
	.WORD byte_C6B9
	.WORD byte_C6B9
	.WORD byte_C6B9
	.WORD byte_C6B9
	.WORD byte_C6B9
	.WORD byte_C6B9
	.WORD byte_C6B9
	.WORD byte_C6B9
	.WORD byte_C6BA
	.WORD byte_C6BB
	.WORD byte_C6BB
	.WORD byte_C6BB
	.WORD byte_C6BB
	.WORD byte_C6BB
	.WORD byte_C6BB
	.WORD byte_C6BB
	.WORD byte_C6BB
	.WORD byte_C6BB
	.WORD byte_C6BB
	.WORD byte_C6BB
	.WORD byte_C6BB
	.WORD byte_C6BB
	.WORD byte_C6BB
	.WORD byte_C6BB
	.WORD byte_C6BB
	.WORD byte_C6BB
	.WORD byte_C6BB
	.WORD byte_C6BB
	.WORD byte_C6BB
	.WORD byte_C6BB
	.WORD byte_C6BB
	.WORD byte_C6BB
	.WORD byte_C6BB
	.WORD byte_C6BB
	.WORD byte_C6BB
	.WORD byte_C6BB
	.WORD byte_C6BB
	.WORD byte_C6BC
	.WORD byte_C6BC
	.WORD byte_C6BC
	.WORD byte_C6BC
	.WORD byte_C6BC
	.WORD byte_C6BC
	.WORD byte_C6BC
	.WORD byte_C6BC
	.WORD byte_C6BC
	.WORD byte_C6BC
	.WORD byte_C6BC
	.WORD byte_C6BC
	.WORD byte_C6BC
	.WORD byte_C6BC
	.WORD byte_C6BC
	.WORD byte_C6BD
	.WORD byte_C6BD
	.WORD byte_C6BD
	.WORD byte_C6BD
	.WORD byte_C6BD
	.WORD byte_C6BD
	.WORD byte_C6BD
	.WORD byte_C6BD
	.WORD byte_C6BD
	.WORD byte_C6BD
	.WORD byte_C6BD
	.WORD byte_C6BD
	.WORD byte_C6BE
	.WORD byte_C6BF
	.WORD byte_C6BF
	.WORD byte_C6BF
	.WORD byte_C6BF
	.WORD byte_C6BF
	.WORD byte_C6C0
	.WORD byte_C6C0
	.WORD byte_C6C0
	.WORD byte_C6C0
	.WORD byte_C6C0
	.WORD byte_C6C0
	.WORD byte_C6C0
	.WORD byte_C6C0
	.WORD byte_C6C0
	.WORD byte_C6C0
	.WORD byte_C6C0
	.WORD byte_C6C0
	.WORD byte_C6C0
	.WORD byte_C6C0
	.WORD byte_C6C0
	.WORD byte_C6C0
	.WORD byte_C6C0
	.WORD byte_C6C0
	.WORD byte_C6C0
	.WORD byte_C6C0
	.WORD byte_C6C0
	.WORD byte_C6C1
	.WORD byte_C6C2
	.WORD byte_C6C2
	.WORD byte_C6C2
	.WORD byte_C6C3
	.WORD byte_C6C3
	.WORD byte_C6C4
	.WORD byte_C6C4
	.WORD byte_C6C4
	.WORD byte_C6C5
	.WORD byte_C6C5
	.WORD byte_C6C5
	.WORD byte_C6C5
	.WORD byte_C6C5
	.WORD byte_C6C5
	.WORD byte_C6C5
	.WORD byte_C6C6
	.WORD byte_C6C6
	.WORD byte_C6C6
	.WORD byte_C6C7
	.WORD byte_C6C8
	.WORD byte_C6C9
	.WORD byte_C6CA
	.WORD byte_C6CB
	.WORD byte_C6CC
	.WORD byte_C6CD
	.WORD byte_C6CE
	.WORD byte_C6CF
	.WORD byte_C6D0
	.WORD byte_C6D1
byte_C69C:.BYTE	0	
byte_C69D:.BYTE	1	
byte_C69E:.BYTE	2	
byte_C69F:.BYTE	3	
byte_C6A0:.BYTE	4	
byte_C6A1:.BYTE	5	
byte_C6A2:.BYTE	6	
byte_C6A3:.BYTE	7	
byte_C6A4:.BYTE	8	
byte_C6A5:.BYTE	9	
byte_C6A6:.BYTE  $A	
byte_C6A7:.BYTE  $B	
byte_C6A8:.BYTE  $C	
byte_C6A9:.BYTE  $D	
byte_C6AA:.BYTE  $E	
byte_C6AB:.BYTE  $F	
byte_C6AC:.BYTE $10	
byte_C6AD:.BYTE $11	
byte_C6AE:.BYTE $12	
byte_C6AF:.BYTE $13	
byte_C6B0:.BYTE $14	
byte_C6B1:.BYTE $15	
byte_C6B2:.BYTE $18	
byte_C6B3:.BYTE $19	
byte_C6B4:.BYTE $19	
byte_C6B5:.BYTE $18	
byte_C6B6:.BYTE $19	
byte_C6B7:.BYTE $18	
byte_C6B8:.BYTE $19	
byte_C6B9:.BYTE $18	
byte_C6BA:.BYTE $19	
byte_C6BB:.BYTE $17	
byte_C6BC:.BYTE $1A	
byte_C6BD:.BYTE $1C	
byte_C6BE:.BYTE $1D	
byte_C6BF:.BYTE $1A	
byte_C6C0:.BYTE $1B	
byte_C6C1:.BYTE $16	
byte_C6C2:.BYTE $19	
byte_C6C3:.BYTE $18	
byte_C6C4:.BYTE $17
byte_C6C5:.BYTE $1A	
byte_C6C6:.BYTE $1B
byte_C6C7:.BYTE $1C	
byte_C6C8:.BYTE $1D	
byte_C6C9:.BYTE $1A	
byte_C6CA:.BYTE $1D	
byte_C6CB:.BYTE $1C	
byte_C6CC:.BYTE $17	
byte_C6CD:.BYTE $1E	
byte_C6CE:.BYTE $1E	
byte_C6CF:.BYTE	1	
byte_C6D0:.BYTE $1F	
byte_C6D1:.BYTE $20	

; =============== S U B	R O U T	I N E =======================================

load_image_C6D2:
	LDA	#0
	STA	byte_430
	STA	byte_431
	STA	byte_42C
	STA	byte_42D
	STA	byte_42E
	STA	byte_42F
	JSR	sub_BDFE
	JSR	ppu_reset_ctrl_mask_FE93
	set entry_idx_300, image_id_4A4
	set ppu_unk_byte_302, image_offset_4A5
	set ppu_unk_byte_303, ppu_prev_unk_4A6
	set ppu_scroll_x_304, ppu_prev_scroll_x_unk_4A7
	set ppu_scroll_y_305, ppu_prev_scroll_y_unk_4A8
	set sprite_type_306, prev_sprite_type_4A9
	IF_A_NOT_EQUAL sprite_type_306, loc_C71B
	set byte_301, entry_idx_300

loc_C71B:
	JSR	sub_BD1F
	JSR	sub_C873
	JSR	sub_C921
	JSR	sub_ECCC
	JSR	sub_EE72
	IF_A_NOT_EQUAL sprite_type_306, loc_C743
	JSR	upload_text_palette_to_ppu_FB85
	IF_A_NOT_EQUAL map_show_43B, loc_C73D
	JSR	sub_CBE2
	JSR	sub_D409

loc_C73D:
	JSR	objects_func_D644
	JSR	objects_func_D52A

loc_C743:
	JSR	load_tiles_to_ppu_C83A
	load_a_masked ppu_unk_byte_303, #1
	BEQ	loc_C75A
	load_a_masked ppu_ctrl_31F, #$FC 
	ORA	#2
	STA	ppu_ctrl_31F
	JMP	loc_C762
; ---------------------------------------------------------------------------

loc_C75A:
	and_byte ppu_ctrl_31F, #$FC 

loc_C762:
	JSR	ppu_update_ctrl_mask_FE86
	JSR	ppu_unk_func_F09D
	JSR	sub_CBC2
	JSR	sub_BD45
	LDX	byte_4AF
	set objMapIdx_316, {byte_9533,X}
	IF_A_EQUAL sprite_type_306, sub_C77D
	RTS
; End of function load_image_C6D2

; =============== S U B	R O U T	I N E =======================================

sub_C77D:
	set byte_317, #0
	IF_A_NOT_EQUAL_CMP_ADDR byte_313, #2, loc_C78E
	set byte_317, #$40 

loc_C78E:
	set byte_31A, #$10
	set2 sprite_secondByte_31B, sprPalIdx_319, #0
	set objectIdx_318, #0
	JSR	sub_C7C7
	a_to_stack byte_317
	JSR	loadt_obj_tilemaps_C84D
	from_stack_to_a byte_317
	set byte_31A, #$E8 
	set2 sprite_secondByte_31B, sprPalIdx_319, #0
	set objectIdx_318, #0
	JSR	sub_C7C7
	JSR	loadt_obj_tilemaps_C84D
	RTS
; End of function sub_C77D

; =============== S U B	R O U T	I N E =======================================

sub_C7C7:
	set byte_36A, ppu_scroll_x_304
	set byte_36B, ppu_unk_byte_302
	ADD_BYTE_TO_WORD byte_36A, byte_4AD

	set byte_368, ppu_scroll_y_305
	set byte_369, ppu_unk_byte_303
	y_to_stack
	LDY	byte_369
	set byte_369, #0

loc_C7FB:
	IF_Y_EQUAL_CMP #0, loc_C814
	ADD_BYTE_TO_WORD byte_368, #$F0 

	DEY
	JMP	loc_C7FB
; ---------------------------------------------------------------------------

loc_C814:
	from_stack_to_y
	ADD_BYTE_TO_BYTE_CLC_IMM byte_366, byte_368, byte_4AE
	LDA	byte_369
	ADC	#0
	STA	byte_367
	sub_byte_from_word byte_366, #8
	RTS
; End of function sub_C7C7

; =============== S U B	R O U T	I N E =======================================

load_tiles_to_ppu_C83A:
	EXECUTE_BANK_COMMAND #0, #sprites_1, #0
	RTS
; End of function load_tiles_to_ppu_C83A

; =============== S U B	R O U T	I N E =======================================

loadt_obj_tilemaps_C84D:
	EXECUTE_BANK_COMMAND #1, #sprites_1, #0
	RTS
; End of function loadt_obj_tilemaps_C84D

; =============== S U B	R O U T	I N E =======================================

exec_b1_c2_C860:
	EXECUTE_BANK_COMMAND #2, #sprites_1, #0
	RTS
; End of function exec_b1_c2_C860

; =============== S U B	R O U T	I N E =======================================

sub_C873:
	a_to_stack entry_idx_300

	GET_PTR_FROM_TBL unknown_entries_C558, entry_idx_300

	LDY	#0
	set entry_idx_300, {(data_2),Y}

exec_b2_c6_C8AB:
	EXECUTE_BANK_COMMAND #6, #text_2, #0

loc_C8BD:
	from_stack_to_a entry_idx_300
	RTS
; End of function sub_C873

; =============== S U B	R O U T	I N E =======================================

exec_b2_c0_C8C2:
	EXECUTE_BANK_COMMAND #0, #text_2, #0
	RTS
; End of function exec_b2_c0_C8C2

; =============== S U B	R O U T	I N E =======================================

exec_b2_c1_C8D5:
	EXECUTE_BANK_COMMAND #1, #text_2, #0
	RTS
; End of function exec_b2_c1_C8D5

; =============== S U B	R O U T	I N E =======================================

exec_b2_c2_text_cuts_C8E8:
	EXECUTE_BANK_COMMAND #2, #text_2, #0
	RTS
; End of function exec_b2_c2_text_cuts_C8E8

; =============== S U B	R O U T	I N E =======================================

exec_b2_c3_C8FB:
	EXECUTE_BANK_COMMAND #3, #text_2, #0
	RTS
; End of function exec_b2_c3_C8FB

; =============== S U B	R O U T	I N E =======================================

exec_b2_c4_C90E:
	EXECUTE_BANK_COMMAND #4, #text_2, #0
	RTS
; End of function exec_b2_c4_C90E

; =============== S U B	R O U T	I N E =======================================

sub_C921:
	a_to_stack entry_idx_300

	GET_PTR_FROM_TBL unknown_entries_C558, entry_idx_300

	LDY	#0
	set entry_idx_300, {(data_2),Y}

	LDX	#0
	set_inx tilemapTypeUnk_30B, {byte_BD1C,X}

loc_C962:
	IF_A_GREATER_CMP_ADDR entry_idx_300, {byte_BD1C,X}, loc_C970
	INX
	IF_X_GREATER_CMP tilemapTypeUnk_30B, loc_C962

loc_C970:
	DEX
	TXA
	CLC

exec_b5_c0_C973:
	ADC	#map_inventory_spr_5
	STA	bank_to_344
	set bank_command_346, #0
	set bank_from_343, #0
	JSR	bank_switch_8000

loc_C985:
	from_stack_to_a entry_idx_300
	RTS
; End of function sub_C921

; =============== S U B	R O U T	I N E =======================================

sub_C98A:
	a_to_stack tilemapTypeUnk_30B
	LDX	#0
	set_inx tilemapTypeUnk_30B, {byte_BD10,X}

loc_C997:
	IF_A_GREATER_CMP_ADDR entry_idx_300, {byte_BD10,X}, loc_C9A5
	INX
	IF_X_GREATER_CMP tilemapTypeUnk_30B, loc_C997

loc_C9A5:
	DEX
	TXA
	CLC

exec_b9_c0_C9A8:
	ADC	#tilemaps_9
	STA	bank_to_344
	set bank_command_346, #0
	set bank_from_343, #0

loc_C9B7:
	from_stack_to_a tilemapTypeUnk_30B
	JSR	bank_switch_8000
	RTS
; End of function sub_C98A

; =============== S U B	R O U T	I N E =======================================

ppu_upset_data_1000_C9BF:
	set_word_to_word_const ptr_0, _PPU_PAT_TBL_1

; End of function ppu_upset_data_1000_C9BF

; =============== S U B	R O U T	I N E =======================================

ppu_upset_data_C9C7:
	LDY	#0
	set tilemapWidth_308, {(data_2),Y}

	ADD_WORD_TO_WORD_IMM data_2, 2

	LDX	#0

loc_C9DD:
	set _PPU_ADDR, ptr_1
	set _PPU_ADDR, ptr_0

	LDY	#0

loc_C9E9:
	set_iny _PPU_DATA, {(data_2),Y}
	IF_Y_GREATER_CMP #$10, loc_C9E9

	ADD_BYTE_TO_WORD ptr_0, #$10

	
	ADD_WORD_TO_WORD_IMM data_2, $10

	INX
	IF_X_GREATER_CMP tilemapWidth_308, loc_C9DD
	RTS
; End of function ppu_upset_data_C9C7

; =============== S U B	R O U T	I N E =======================================

sub_CA14:
	y_to_stack
	LDY	#0

loc_CA18:
	IF_A_EQUAL_CMP_ADDR byte_367, #0, loc_CA34
	sub_byte_from_word byte_366, #$F0 
	INY
	JMP	loc_CA18
; ---------------------------------------------------------------------------

loc_CA34:
	IF_A_GREATER_CMP_ADDR byte_366, #$F0, loc_CA45
	sub_byte_sec byte_366, #$F0 
	INY

loc_CA45:
	STY	byte_367
	from_stack_to_y
	RTS
; End of function sub_CA14

; =============== S U B	R O U T	I N E =======================================

exec_b4_c0_CA4B:
	EXECUTE_BANK_COMMAND #0, #items_spr_4, #0
	RTS
; End of function exec_b4_c0_CA4B

; =============== S U B	R O U T	I N E =======================================

exec_b4_c1_CA5E:
	EXECUTE_BANK_COMMAND #1, #items_spr_4, #0
	RTS
; End of function exec_b4_c1_CA5E

; =============== S U B	R O U T	I N E =======================================

exec_b4_c2_CA71:
	EXECUTE_BANK_COMMAND #2, #items_spr_4, #0
	RTS
; End of function exec_b4_c2_CA71

; =============== S U B	R O U T	I N E =======================================

cache_prev_data_CA84:
	set image_id_4A4, entry_idx_300
	set image_offset_4A5, ppu_unk_byte_302
	set ppu_prev_unk_4A6, ppu_unk_byte_303
	set ppu_prev_scroll_x_unk_4A7, ppu_scroll_x_304
	set ppu_prev_scroll_y_unk_4A8, ppu_scroll_y_305
	set prev_sprite_type_4A9, sprite_type_306
	RTS
; End of function cache_prev_data_CA84

; =============== S U B	R O U T	I N E =======================================

sub_CAA9:
	set byte_357, #$18
	set byte_358, #0
	set byte_359, #$1C
	set byte_360, #3
	set byte_361, #0
	set text_unk_35B, #$C0 
	JSR	sprites_func_9132
	set_text_args #$BB, #0
	set ppu_unk_byte_309, #$19
	set tilemap_size_307, #4
	set byte_35E, #$C
	set byte_35F, #1
	set byte_362, #0
	set byte_363, #0
	set sprite_secondByte_31B, #$D0 
	ADD_BYTE_TO_BYTE_CLC_IMM byte_310, text_unk_35B, #5
	set byte_364, #7
	JSR	exec_b2_c4_C90E
	set byte_364, #0
	set byte_372, #0

loc_CB12:
	JSR	sub_CB58
	JSR	wait_for_frame_rendered_FCA0
	IF_A_EQUAL_CMP_ADDR input_pressed_34A, #left_2, left_right_pressed_CB2A
	IF_A_EQUAL_CMP #right_1, left_right_pressed_CB2A
	IF_A_EQUAL_CMP #a_80, a_pressed_CB3D
	JMP	loc_CB12
; ---------------------------------------------------------------------------

left_right_pressed_CB2A:
	xor_byte byte_372, #1
	set tilemapTypeUnk_30B, #$2B 
	JSR	exec_b12_com48_ECA6
	JMP	loc_CB12
; ---------------------------------------------------------------------------

a_pressed_CB3D:
	set tilemapTypeUnk_30B, #6
	JSR	exec_b12_com48_ECA6
	set byte_357, #$18
	set byte_358, #0
	set byte_359, #$1C
	JSR	sub_F767
	RTS
; End of function sub_CAA9

; =============== S U B	R O U T	I N E =======================================

sub_CB58:
	set byte_31A, #0
	set sprite_secondByte_31B, #0
	set sprPalIdx_319, #0
	set objectIdx_318, #0
	set byte_317, #0
	set objMapIdx_316, #$12
	a_to_stack byte_4AD
	a_to_stack byte_4AE
	mult_by_2_byte byte_372
	TAX
	set_inx byte_4AD, {off_CBBE,X}
	ADD_BYTE_TO_BYTE_CLC_IMM byte_4AE, {off_CBBE,X}, #4
	INX
	IF_A_GREATER_CMP_ADDR count_unk_465, #$A, loc_CBAF
	IF_A_GREATER_CMP #$14, loc_CBA7
	set count_unk_465, #0
	JMP	loc_CBAF
; ---------------------------------------------------------------------------

loc_CBA7:
	xor_byte byte_4AD, #1

loc_CBAF:
	JSR	sub_C7C7
	from_stack_to_a byte_4AE
	from_stack_to_a byte_4AD
	JSR	loadt_obj_tilemaps_C84D
	RTS
; End of function sub_CB58

; ---------------------------------------------------------------------------
off_CBBE:.WORD loc_D03C	
	.WORD loc_D080

; =============== S U B	R O U T	I N E =======================================

sub_CBC2:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$46, locret_CBE1
	IF_A_EQUAL_CMP_ADDR byte_560, #0, locret_CBE1
	JSR	sub_EE72
	LDX	#0

loc_CBD5:
	set_inx {byte_4,X}, #$AA 
	IF_X_GREATER_CMP #$48 , loc_CBD5
	JSR	ppu_unk_func_F09D

locret_CBE1:
	RTS
; End of function sub_CBC2

; =============== S U B	R O U T	I N E =======================================

sub_CBE2:
	a_to_stack bank_from_343

exec_c12_b29_CBE6:
	EXECUTE_BANK_COMMAND #$29 , #banks_12, #0

loc_CBF8:
	from_stack_to_a bank_from_343
	RTS
; End of function sub_CBE2

; ---------------------------------------------------------------------------
byte_CBFD:
	.BYTE $FF,$2F,$2A,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$2B,$FF,$2C,$31,$FF
	.BYTE $32,$2D,$FF,$FF,$FF,$FF,$FF,$FF,$30,$33

; =============== S U B	R O U T	I N E =======================================

sub_CC17:
	IF_A_NOT_EQUAL_CMP_ADDR byte_372, #0, loc_CC39
	LDY	#0
	LDX	#$20 

loc_CC22:
	set_inx {byte_4,X}, #$55 
	INY
	IF_Y_GREATER_CMP #8, loc_CC22

loc_CC2C:
	set_inx {byte_4,X}, #$A5 
	INY
	IF_Y_GREATER_CMP #$10, loc_CC2C
	JMP	loc_CC51
; ---------------------------------------------------------------------------

loc_CC39:
	LDY	#0
	LDX	#$20 

loc_CC3D:
	set_inx {byte_4,X}, #$AA 
	INY
	IF_Y_GREATER_CMP #8, loc_CC3D

loc_CC47:
	set_inx {byte_4,X}, #$5A 
	INY
	IF_Y_GREATER_CMP #$10, loc_CC47

loc_CC51:
	a_to_stack byte_372
	JSR	ppu_unk_func_F09D
	from_stack_to_a byte_372
	RTS
; End of function sub_CC17

; =============== S U B	R O U T	I N E =======================================

ppu_upload_unk_data_CC5D:
	IF_A_GREATER_CMP_ADDR count_unk_465, #5, locret_CC99
	set count_unk_465, #0
	LDX	#0
	set_inx {ppu_data_70,X}, #1
	set_inx {ppu_data_70,X}, #1
	set_inx {ppu_data_70,X}, #$3F 
	set_inx {ppu_data_70,X}, #7
	LDY	byte_421
	set {ppu_data_70,X}, {unk_CC9A,Y}
	JSR	wait_for_ppu_data_upload_FC8C
	LDA	byte_421
	ADD_TO_A #1
	IF_A_GREATER_CMP #6, loc_CC96
	LDA	#0

loc_CC96:
	STA	byte_421

locret_CC99:
	RTS
; End of function ppu_upload_unk_data_CC5D

; ---------------------------------------------------------------------------

unk_CC9A:
	.BYTE $30
	.BYTE $20
	.BYTE $10
	.BYTE	0
	.BYTE $10
	.BYTE $20

; =============== S U B	R O U T	I N E =======================================

sub_CCA0:
	JSR	sub_CD66
	JSR	objects_func_CED2
	RTS
; End of function sub_CCA0

; =============== S U B	R O U T	I N E =======================================

objects_func_CCA7:
	JSR	sub_C7C7
	ADD_BYTE_TO_WORD byte_366, #8

	LDX	#0
	set2 {array_unk_446,X}, {array_unk_452,X}, byte_36A
	INX
	set2 {array_unk_446,X}, {array_unk_452,X}, byte_36B
	INX
	set2 {array_unk_446,X}, {array_unk_452,X}, byte_366
	INX
	set2 {array_unk_446,X}, {array_unk_452,X}, byte_367
	INX
	set obj_idx_unk_462, #0
	LDY	#0

next_object_CCEC:
	IF_A_EQUAL_CMP_ADDR {objIdxArray_375,Y}, #7, obj_id7_handle_CCF6
	JMP	inc_obj_idx_CD5F
; ---------------------------------------------------------------------------

obj_id7_handle_CCF6:
	IF_A_EQUAL_CMP_ADDR {objCreatedArray_393,Y}, #0, loc_CD00
	JMP	inc_obj_idx_CD5F
; ---------------------------------------------------------------------------

loc_CD00:
	IF_A_NOT_EQUAL_CMP_ADDR {obj_array_unk_415,Y}, #0, loc_CD0F
	IF_A_NOT_EQUAL byte_551, loc_CD2A
	JMP	inc_obj_idx_CD5F
; ---------------------------------------------------------------------------

loc_CD0F:
	IF_A_NOT_EQUAL_CMP #1, loc_CD1B
	IF_A_NOT_EQUAL byte_553, loc_CD2A
	JMP	inc_obj_idx_CD5F
; ---------------------------------------------------------------------------

loc_CD1B:
	IF_A_NOT_EQUAL_CMP #2, loc_CD27
	IF_A_NOT_EQUAL byte_552, loc_CD2A
	JMP	inc_obj_idx_CD5F
; ---------------------------------------------------------------------------

loc_CD27:
	JMP	inc_obj_idx_CD5F
; ---------------------------------------------------------------------------

loc_CD2A:
	y_to_stack
	LDY	obj_idx_unk_462
	STA	obj_array_unk_45E,Y
	from_stack_to_y
	INC	obj_idx_unk_462
	set2 {array_unk_446,X}, {array_unk_452,X}, {array_unk_3C5,Y}
	INX
	set2 {array_unk_446,X}, {array_unk_452,X}, {array_unk_3BB,Y}
	INX
	set2 {array_unk_446,X}, {array_unk_452,X}, {array_unk_3D9,Y}
	INX
	set2 {array_unk_446,X}, {array_unk_452,X}, {array_unk_3CF,Y}
	INX

inc_obj_idx_CD5F:
	INY
	IF_Y_GREATER_CMP objArraySize_373, next_object_CCEC
	RTS
; End of function objects_func_CCA7

; =============== S U B	R O U T	I N E =======================================

sub_CD66:
	IF_A_NOT_EQUAL obj_idx_unk_462, loc_CD6C
	RTS
; ---------------------------------------------------------------------------

loc_CD6C:
	LDY	#0

loc_CD6E:
	TYA
	mult_a_by_4
	TAX
	set byte_36A, {array_unk_446,X}
	set byte_36B, {unk_447,X}
	set byte_366, {unk_448,X}
	set byte_367, {unk_449,X}
	set byte_36C, {unk_456,X}
	set byte_36D, {unk_457,X}
	set byte_368, {unk_458,X}
	set byte_369, {unk_459,X}
	sub_word_from_word byte_36A, byte_36C
	BCC	loc_CDDD
	IF_A_NOT_EQUAL_CMP_ADDR byte_36A, byte_36C, loc_CDC4
	IF_A_NOT_EQUAL_CMP_ADDR byte_36B, byte_36D, loc_CDC4
	JMP	loc_CE35
; ---------------------------------------------------------------------------

loc_CDC4:
	sub_addr_sec byte_36A, byte_36C
	STA	ptr_0
	sub_addr byte_36B, byte_36D
	STA	ptr_1
	set sprite_length_30F, #0
	JMP	loc_CDF3
; ---------------------------------------------------------------------------

loc_CDDD:
	sub_addr_sec byte_36C, byte_36A
	STA	ptr_0
	sub_addr byte_36D, byte_36B
	STA	ptr_1
	set sprite_length_30F, #1

loc_CDF3:
	IF_A_GREATER_CMP_ADDR ptr_0, #$10, loc_CDFE
	BEQ	loc_CDFE
	JMP	loc_CEC8
; ---------------------------------------------------------------------------

loc_CDFE:
	IF_A_EQUAL sprite_length_30F, loc_CE1C
	sub_byte_sec {unk_456,X}, #2
	sub_byte {unk_457,X}, #0
	set {unk_460,Y}, #2
	JMP	loc_CEC8
; ---------------------------------------------------------------------------

loc_CE1C:
	ADD_TO {unk_456,X}, {unk_457,X}, #2, #0
	set {unk_460,Y}, #3
	JMP	loc_CEC8
; ---------------------------------------------------------------------------

loc_CE35:
	sub_word_from_word byte_366, byte_368
	BCC	loc_CE70
	IF_A_NOT_EQUAL_CMP_ADDR byte_366, byte_368, loc_CE57
	IF_A_NOT_EQUAL_CMP_ADDR byte_367, byte_369, loc_CE57
	JMP	loc_CEC8
; ---------------------------------------------------------------------------

loc_CE57:
	sub_addr_sec byte_366, byte_368
	STA	ptr_0
	sub_addr byte_367, byte_369
	STA	ptr_1
	set sprite_length_30F, #0
	JMP	loc_CE86
; ---------------------------------------------------------------------------

loc_CE70:
	sub_addr_sec byte_368, byte_366
	STA	ptr_0
	sub_addr byte_369, byte_367
	STA	ptr_1
	set sprite_length_30F, #1

loc_CE86:
	IF_A_GREATER_CMP_ADDR ptr_0, #$10, loc_CE91
	BEQ	loc_CE91
	JMP	loc_CEC8
; ---------------------------------------------------------------------------

loc_CE91:
	IF_A_EQUAL sprite_length_30F, loc_CEAF
	sub_byte_sec {unk_458,X}, #2
	sub_byte {unk_459,X}, #0
	set {unk_460,Y}, #0
	JMP	loc_CEC8
; ---------------------------------------------------------------------------

loc_CEAF:
	ADD_TO {unk_458,X}, {unk_459,X}, #2, #0
	set {unk_460,Y}, #1
	JMP	loc_CEC8
; ---------------------------------------------------------------------------

loc_CEC8:
	INY
	IF_Y_EQUAL_CMP obj_idx_unk_462, locret_CED1
	JMP	loc_CD6E
; ---------------------------------------------------------------------------

locret_CED1:
	RTS
; End of function sub_CD66

; =============== S U B	R O U T	I N E =======================================

objects_func_CED2:
	IF_A_NOT_EQUAL obj_idx_unk_462, loc_CED8
	RTS
; ---------------------------------------------------------------------------

loc_CED8:
	LDX	#4
	LDY	#0

loc_CEDC:
	y_to_stack
	LDA	obj_array_unk_45E,Y
	TAY
	set {array_unk_3A7,Y}, byte_4AF
	set {array_unk_39D,Y}, byte_4AA
	set_inx {array_unk_3C5,Y}, {array_unk_452,X}
	set_inx {array_unk_3BB,Y}, {array_unk_452,X}
	set_inx {array_unk_3D9,Y}, {array_unk_452,X}
	set_inx {array_unk_3CF,Y}, {array_unk_452,X}
	from_stack_to_y
	INY
	IF_Y_GREATER_CMP obj_idx_unk_462, loc_CEDC
	RTS
; End of function objects_func_CED2

; =============== S U B	R O U T	I N E =======================================

show_text_sequence_func_CF13:
	a_to_stack text_idx_35C
	a_to_stack char_type_id_35D
	x_to_stack
	JSR	show_text_func_9132
	from_stack_to_x
	from_stack_to_a char_type_id_35D
	from_stack_to_a text_idx_35C
	
	ADD_BYTE_TO_WORD text_idx_35C, #1

	DEX
	IF_X_NOT_EQUAL_CMP #0, show_text_sequence_func_CF13
	RTS
; End of function show_text_sequence_func_CF13

; =============== S U B	R O U T	I N E =======================================

nullsub_6:
	RTS
; End of function nullsub_6

; =============== S U B	R O U T	I N E =======================================

sub_CF42:
	LDY	#0
	LDX	#1

loc_CF46:
	set tilemapTypeUnk_30B, {tilemapData_4C,X}
	set inv_spr_dscr1_30C, {room_pos_x_4D,X}
	set byte_313, {room_pos_y_4E,X}
	IF_A_NOT_EQUAL inv_spr_dscr1_30C, loc_CF5D
	JMP	loc_CFF2
; ---------------------------------------------------------------------------

loc_CF5D:
	DEC	room_pos_x_4D,X
	x_to_stack
	y_to_stack
	LDY	#0
	LDX	tilemapTypeUnk_30B

loc_CF68:
	set {array_unk_3A7,X}, byte_313
	IF_A_NOT_EQUAL_CMP_ADDR byte_313, #0, loc_CF89
	sub_byte_sec {array_unk_3D9,X}, #2
	sub_byte {array_unk_3CF,X}, #0
	JMP	loc_CFCA
; ---------------------------------------------------------------------------

loc_CF89:
	IF_A_NOT_EQUAL_CMP #1, loc_CFA1
	ADD_TO {array_unk_3D9,X}, {array_unk_3CF,X}, #2, #0
	JMP	loc_CFCA
; ---------------------------------------------------------------------------

loc_CFA1:
	IF_A_NOT_EQUAL_CMP #2, loc_CFB9
	sub_byte_sec {array_unk_3C5,X}, #2
	sub_byte {array_unk_3BB,X}, #0
	JMP	loc_CFCA
; ---------------------------------------------------------------------------

loc_CFB9:
	ADD_TO {array_unk_3C5,X}, {array_unk_3BB,X}, #2, #0

loc_CFCA:
	x_to_stack
	y_to_stack
	x_to_stack
	LDX	byte_313
	JSR	sub_D01F
	from_stack_to_x
	TYA
	STA	array_unk_39D,X
	JSR	objects_func_D52A
	JSR	wait_for_frame_rendered_FCA0
	from_stack_to_y
	from_stack_to_x
	INY
	IF_Y_EQUAL_CMP #8, loc_CFEE
	JMP	loc_CF68
; ---------------------------------------------------------------------------

loc_CFEE:
	from_stack_to_y
	from_stack_to_x

loc_CFF2:
	INX
	INX
	INX
	INY
	IF_Y_EQUAL_CMP tilemapData_4C, loc_CFFD
	JMP	loc_CF46
; ---------------------------------------------------------------------------

loc_CFFD:
	set inv_spr_dscr1_30C, #0
	LDX	#2
	LDY	#0

loc_D006:
	LDA	tilemapData_4C,X
	ORA	inv_spr_dscr1_30C
	STA	inv_spr_dscr1_30C
	INX
	INX
	INX
	INY
	IF_Y_GREATER_CMP tilemapData_4C, loc_D006
	IF_A_EQUAL inv_spr_dscr1_30C, locret_D01E
	JMP	sub_CF42
; ---------------------------------------------------------------------------

locret_D01E:
	RTS
; End of function sub_CF42

; =============== S U B	R O U T	I N E =======================================

sub_D01F:
	a_to_stack tilemapTypeUnk_30B
	TXA
	mult_a_by_4
	STA	tilemapTypeUnk_30B
	TXA
	ADD_TO_A tilemapTypeUnk_30B
	STA	tilemapTypeUnk_30B
	TYA
	div_a_by_2
	ADD_TO_A tilemapTypeUnk_30B
	TAX
	LDA	byte_D041,X
	TAY

loc_D03C:
	from_stack_to_a tilemapTypeUnk_30B
	RTS
; End of function sub_D01F

; ---------------------------------------------------------------------------
byte_D041:.BYTE  $B, $B, $D, $D, $A,  6,	6,  8,	8,  5,	1,  1,	2,  2,	0,  1
	
	.BYTE	1,  2,	2,  0

; =============== S U B	R O U T	I N E =======================================

sub_D055:
	a_to_stack tilemapTypeUnk_30B
	a_to_stack byte_313
	set byte_315, #8
	set byte_314, #0
	JSR	objects_func_CCA7
	JSR	objects_func_CED2
	JSR	objects_func_D644
	JSR	objects_func_D52A
	IF_A_NOT_EQUAL_CMP_ADDR byte_313, #0, loc_D080
	JSR	sub_8C5F
	JMP	loc_D097
; ---------------------------------------------------------------------------

loc_D080:
	IF_A_NOT_EQUAL_CMP #1, loc_D08A
	JSR	sub_8D27
	JMP	loc_D097
; ---------------------------------------------------------------------------

loc_D08A:
	IF_A_NOT_EQUAL_CMP #2, loc_D094
	JSR	sub_8DF0
	JMP	loc_D097
; ---------------------------------------------------------------------------

loc_D094:
	JSR	sub_8EB9

loc_D097:
	from_stack_to_a byte_313
	from_stack_to_a tilemapTypeUnk_30B
	JSR	wait_for_frame_rendered_FCA0
	DEC	tilemapTypeUnk_30B
	IF_A_NOT_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #0, sub_D055
	RTS
; End of function sub_D055

; =============== S U B	R O U T	I N E =======================================

sub_D0AD:
	a_to_stack tilemapTypeUnk_30B
	JSR	sub_C7C7
	ADD_BYTE_TO_WORD byte_366, #8

	from_stack_to_x

loc_D0C7:
	set byte_36C, {array_unk_3C5,X}
	set byte_36D, {array_unk_3BB,X}
	sub_word_from_word byte_36A, byte_36C
	BCC	loc_D11E
	sub_addr_sec byte_36A, byte_36C
	STA	ptr_0
	sub_addr byte_36B, byte_36D
	STA	ptr_1
	IF_A_GREATER_CMP_ADDR ptr_0, #$10, loc_D15A
	BEQ	loc_D15A
	LDY	#0

loc_D0FD:
	ADD_TO {array_unk_3C5,X}, {array_unk_3BB,X}, #2, #0
	set_iny {array_unk_3A7,X}, #3
	JSR	sub_D1EE
	IF_Y_GREATER_CMP #8, loc_D0FD
	JMP	loc_D0C7
; ---------------------------------------------------------------------------

loc_D11E:
	sub_addr_sec byte_36C, byte_36A
	STA	ptr_0
	sub_addr byte_36D, byte_36B
	STA	ptr_1
	IF_A_GREATER_CMP_ADDR ptr_0, #$10, loc_D15A
	BEQ	loc_D15A
	LDY	#0

loc_D139:
	sub_byte_sec {array_unk_3C5,X}, #2
	sub_byte {array_unk_3BB,X}, #0
	set_iny {array_unk_3A7,X}, #2
	JSR	sub_D1EE
	IF_Y_GREATER_CMP #8, loc_D139
	JMP	loc_D0C7
; ---------------------------------------------------------------------------

loc_D15A:
	set byte_368, {array_unk_3D9,X}
	set byte_369, {array_unk_3CF,X}
	sub_word_from_word byte_366, byte_368
	BCC	loc_D1B1
	sub_addr_sec byte_366, byte_368
	STA	ptr_0
	sub_addr byte_367, byte_369
	STA	ptr_1
	IF_A_GREATER_CMP_ADDR ptr_0, #$10, locret_D1ED
	BEQ	locret_D1ED
	LDY	#0

loc_D190:
	ADD_TO {array_unk_3D9,X}, {array_unk_3CF,X}, #2, #0
	set_iny {array_unk_3A7,X}, #1
	JSR	sub_D1EE
	IF_Y_GREATER_CMP #8, loc_D190
	JMP	loc_D15A
; ---------------------------------------------------------------------------

loc_D1B1:
	sub_addr_sec byte_368, byte_366
	STA	ptr_0
	sub_addr byte_369, byte_367
	STA	ptr_1
	IF_A_GREATER_CMP_ADDR ptr_0, #$10, locret_D1ED
	BEQ	locret_D1ED
	LDY	#0

loc_D1CC:
	sub_byte_sec {array_unk_3D9,X}, #2
	sub_byte {array_unk_3CF,X}, #0
	set_iny {array_unk_3A7,X}, #0
	JSR	sub_D1EE
	IF_Y_GREATER_CMP #8, loc_D1CC
	JMP	loc_D15A
; ---------------------------------------------------------------------------

locret_D1ED:
	RTS
; End of function sub_D0AD

; =============== S U B	R O U T	I N E =======================================

sub_D1EE:
	x_to_stack
	y_to_stack
	a_to_stack byte_36A
	a_to_stack byte_36B
	a_to_stack byte_366
	a_to_stack byte_367
	x_to_stack
	LDA	array_unk_3A7,X
	TAX
	JSR	sub_D01F
	from_stack_to_x
	TYA
	STA	array_unk_39D,X
	JSR	objects_func_D52A
	from_stack_to_a byte_367
	from_stack_to_a byte_366
	from_stack_to_a byte_36B
	from_stack_to_a byte_36A
	from_stack_to_y
	from_stack_to_x
	JSR	wait_for_frame_rendered_FCA0
	RTS
; End of function sub_D1EE

; =============== S U B	R O U T	I N E =======================================

sub_D22C:
	set_text_args #$C2, #0
	LDX	#$B
	JSR	show_text_sequence_func_CF13
	set tilemapData_4C, #1
	set room_pos_x_4D, #0
	set room_pos_y_4E, #2
	set tilemap_line_idx_4F, #0
	JSR	sub_CF42

	set tilemapData_4C, #1
	set room_pos_x_4D, #0
	set room_pos_y_4E, #6
	set tilemap_line_idx_4F, #2
	JSR	sub_CF42
	
	set cur_obj_idx_unk_43A, #0
	JSR	sub_DBE2
	set byte_5A3, #0
	set byte_5A5, #1
	set byte_550, #$16
	set byte_54E, #1
	set tilemapTypeUnk_30B, #6
	set byte_313, #0
	JSR	sub_D055
	set tilemapTypeUnk_30B, #8
	set byte_313, #2
	JSR	sub_D055
	set tilemapTypeUnk_30B, #3
	set byte_313, #0
	JSR	sub_D055
	set tilemapTypeUnk_30B, #3
	set byte_313, #2
	JSR	sub_D055
	RTS
; End of function sub_D22C

; =============== S U B	R O U T	I N E =======================================

sub_D2B2:
	LDX	#0

loc_D2B4:
	IF_A_EQUAL_CMP_ADDR {objIdxArray_375,X}, #7, loc_D2C4
	INX
	IF_X_GREATER_CMP objArraySize_373, loc_D2B4
	JMP	locret_D358
; ---------------------------------------------------------------------------

loc_D2C4:
	x_to_stack
	set tilemapTypeUnk_30B, #1
	set byte_313, #2
	JSR	sub_D055
	JSR	sub_C7C7
	from_stack_to_x
	ADD_BYTE_TO_WORD byte_366, #8

	ADD_BYTE_TO_BYTE_CLC_IMM byte_36C, {array_unk_3C5,X}, #$10
	LDA	array_unk_3BB,X
	ADC	#0
	STA	byte_36D
	set byte_368, {array_unk_3D9,X}
	set byte_369, {array_unk_3CF,X}
	sub_word_from_word byte_366, byte_368
	BCC	loc_D32B
	sub_addr_sec byte_366, byte_368
	div_a_by_16
	STA	tilemapTypeUnk_30B
	set byte_313, #0
	JMP	loc_D33E
; ---------------------------------------------------------------------------

loc_D32B:
	sub_addr_sec byte_368, byte_366
	div_a_by_16
	STA	tilemapTypeUnk_30B
	set byte_313, #1

loc_D33E:
	JSR	sub_D055
	set byte_313, #2
	JSR	sub_91B6
	set_text_args #$D0, #0
	LDX	#5
	JSR	show_text_sequence_func_CF13

locret_D358:
	RTS
; End of function sub_D2B2

; =============== S U B	R O U T	I N E =======================================

sub_D359:
	set tilemapTypeUnk_30B, #5
	set byte_313, #3
	JSR	sub_D055
	set tilemapTypeUnk_30B, #8
	set byte_313, #1
	JSR	sub_D055
	set tilemapTypeUnk_30B, #8
	set byte_313, #3
	JSR	sub_D055
	set_text_args #$DB, #0
	LDX	#4
	JSR	show_text_sequence_func_CF13
	set byte_551, #0
	set tilemapTypeUnk_30B, #4
	set byte_313, #0
	JSR	sub_D055
	set byte_313, #1
	JSR	sub_91B6
	set_text_args #$DB, #0
	LDX	#8
	JSR	show_text_sequence_func_CF13
	set tilemapData_4C, #1
	set room_pos_x_4D, #2
	set room_pos_y_4E, #4
	set tilemap_line_idx_4F, #2
	JSR	sub_CF42
	set tilemapData_4C, #1
	set room_pos_x_4D, #2
	set room_pos_y_4E, #7
	set tilemap_line_idx_4F, #0
	JSR	sub_CF42
	set tilemapData_4C, #1
	set room_pos_x_4D, #2
	set room_pos_y_4E, #$A
	set tilemap_line_idx_4F, #2
	JSR	sub_CF42
	set cur_obj_idx_unk_43A, #2
	JSR	sub_DBE2
	set byte_5A4, #0
	set byte_550, #0
	set byte_598, #$FF
	RTS
; End of function sub_D359

; =============== S U B	R O U T	I N E =======================================

sub_D409:
	IF_A_NOT_EQUAL objArraySize_373, loc_D40F
	RTS
; ---------------------------------------------------------------------------

loc_D40F:
	IF_A_NOT_EQUAL_CMP_ADDR byte_596, #$FF, loc_D43B
	IF_A_GREATER_CMP_ADDR entry_idx_300, #$32, loc_D427
	IF_A_GREATER_CMP #$35, loc_D43B
	IF_A_EQUAL_CMP #$4E, loc_D43B
	BCS	loc_D43B

loc_D427:
	LDX	#0

loc_D429:
	IF_A_NOT_EQUAL_CMP_ADDR {objIdxArray_375,X}, #2, loc_D435
	set {objIdxArray_375,X}, #1

loc_D435:
	INX
	IF_X_GREATER_CMP objArraySize_373, loc_D429

loc_D43B:
	LDX	#0
	LDA	#0

loc_D43F:
	STA	unk_37F,X
	INX
	IF_X_GREATER_CMP objArraySize_373, loc_D43F
	set byte_31A, #$28 
	set sprite_secondByte_31B, #$6F 
	LDX	#0

loc_D454:
	x_to_stack
	set objectIdx_318, {objIdxArray_375,X}
	set objMapIdx_316, {array_unk_39D,X}
	set {unk_40B,X}, byte_31A
	x_to_stack
	JSR	exec_b1_c2_C860
	from_stack_to_x
	set {unk_389,X}, tilemapFrameCount_30D
	set {unk_401,X}, sprite_length_30F
	set {unk_3E3,X}, tilemapWidth_308
	set {unk_3ED,X}, tilemapHeight_30A
	mult_byte_by_4 tilemapWidth_308
	LDY	tilemapHeight_30A

loc_D490:
	IF_Y_EQUAL_CMP #0, loc_D4A2
	ADD_BYTE_TO_BYTE_CLC byte_31A, tilemapWidth_308
	DEY
	JMP	loc_D490
; ---------------------------------------------------------------------------

loc_D4A2:
	from_stack_to_x
	INX
	IF_X_EQUAL_CMP objArraySize_373, loc_D4AD
	JMP	loc_D454
; ---------------------------------------------------------------------------

loc_D4AD:
	LDY	#0
	LDX	#0
	set tilemapTypeUnk_30B, #0
	set {byte_56,X}, {objIdxArray_375,Y}
	set {tilemapData_4C,X}, {unk_401,Y}
	INC	tilemapTypeUnk_30B
	INY

loc_D4C4:
	LDX	#0

loc_D4C6:
	IF_A_EQUAL_CMP_ADDR {objIdxArray_375,Y}, {byte_56,X}, loc_D4E0
	INX
	IF_X_GREATER_CMP tilemapTypeUnk_30B, loc_D4C6
	set {byte_56,X}, {objIdxArray_375,Y}
	set {tilemapData_4C,X}, {unk_401,Y}
	INC	tilemapTypeUnk_30B

loc_D4E0:
	INY
	IF_Y_GREATER_CMP objArraySize_373, loc_D4C4
	LDY	#0

loc_D4E8:
	LDX	#0

loc_D4EA:
	IF_A_EQUAL_CMP_ADDR {byte_56,X}, {objIdxArray_375,Y}, loc_D4F7
	INX
	IF_X_GREATER_CMP tilemapTypeUnk_30B, loc_D4EA

loc_D4F7:
	TXA
	ADD_TO_A #1
	STA	objPalIdxArray_3F7,Y
	STX	inv_spr_dscr1_30C
	set sprite_length_30F, #0
	LDX	#0

loc_D508:
	IF_X_EQUAL_CMP inv_spr_dscr1_30C, loc_D51A
	ADD_BYTE_TO_BYTE_CLC_IMM sprite_length_30F, {tilemapData_4C,X}, sprite_length_30F
	INX
	JMP	loc_D508
; ---------------------------------------------------------------------------

loc_D51A:
	ADD_BYTE_TO_BYTE_CLC_IMM {unk_401,Y}, sprite_length_30F, #$6F 
	INY
	IF_Y_GREATER_CMP objArraySize_373, loc_D4E8
	RTS
; End of function sub_D409

; =============== S U B	R O U T	I N E =======================================

objects_func_D52A:
	IF_A_NOT_EQUAL objArraySize_373, loc_D532
	JMP	loc_D637
; ---------------------------------------------------------------------------

loc_D532:
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$5D, loc_D53B
	LDA	#$58 

loc_D53B:
	LDY	#0

loc_D53D:
	y_to_stack
	set objectIdx_318, {objIdxArray_375,Y}
	set objMapIdx_316, {array_unk_39D,Y}
	set byte_31A, {unk_40B,Y}
	set sprite_secondByte_31B, {unk_401,Y}
	set byte_317, {objPalIdxArray_3F7,Y}
	set byte_36A, {array_unk_3C5,Y}
	set byte_36B, {array_unk_3BB,Y}
	set byte_366, {array_unk_3D9,Y}
	set byte_367, {array_unk_3CF,Y}
	IF_A_NOT_EQUAL_CMP_ADDR objectIdx_318, #$15, loc_D57F
	JMP	loc_D62C
; ---------------------------------------------------------------------------

loc_D57F:
	IF_A_EQUAL_CMP_ADDR objectIdx_318, #7, loc_D591
	IF_A_EQUAL_CMP #8, loc_D591
	IF_A_EQUAL_CMP #9, loc_D591
	JMP	loc_D5A2
; ---------------------------------------------------------------------------

loc_D591:
	sub_byte_from_word byte_366, #8

loc_D5A2:
	IF_A_EQUAL {objCreatedArray_393,Y}, loc_D5AA
	JMP	loc_D62C
; ---------------------------------------------------------------------------

loc_D5AA:
	IF_A_EQUAL_CMP_ADDR {objIdxArray_375,Y}, #3, loc_D629
	IF_A_EQUAL_CMP #6, loc_D629
	IF_A_EQUAL_CMP #$A, loc_D629
	IF_A_EQUAL_CMP #$19, loc_D629
	IF_A_NOT_EQUAL_CMP_ADDR {objIdxArray_375,Y}, #$13, loc_D5C9
	IF_A_EQUAL byte_58E, loc_D629

loc_D5C9:
	IF_A_NOT_EQUAL_CMP_ADDR {array_unk_3A7,Y}, #2, loc_D5D8
	or_byte byte_317, #$40 

loc_D5D8:
	IF_A_EQUAL_CMP_ADDR objectIdx_318, #7, loc_D60C
	IF_A_EQUAL_CMP #8, loc_D60C
	IF_A_EQUAL_CMP #9, loc_D60C
	LDA	array_unk_3A7,Y
	TAX
	IF_X_GREATER_CMP #3, loc_D5F0
	DEX

loc_D5F0:
	IF_X_EQUAL_CMP #0, loc_D602
	ADD_BYTE_TO_BYTE_CLC objMapIdx_316, {unk_389,Y}
	DEX
	JMP	loc_D5F0
; ---------------------------------------------------------------------------

loc_D602:
	ADD_BYTE_TO_BYTE_CLC objMapIdx_316, {unk_37F,Y}

loc_D60C:
	IF_A_GREATER_CMP_ADDR count_unk_464, #$F, loc_D629
	ADD_BYTE_TO_BYTE_CLC {unk_37F,Y}, #1
	IF_A_GREATER_CMP_ADDR {unk_37F,Y}, {unk_389,Y}, loc_D629
	set {unk_37F,Y}, #0

loc_D629:
	JSR	loadt_obj_tilemaps_C84D

loc_D62C:
	from_stack_to_y
	INY
	IF_Y_EQUAL_CMP objArraySize_373, loc_D637
	JMP	loc_D53D
; ---------------------------------------------------------------------------

loc_D637:
	IF_A_GREATER_CMP_ADDR count_unk_464, #$F, locret_D643
	set count_unk_464, #0

locret_D643:
	RTS
; End of function objects_func_D52A

; =============== S U B	R O U T	I N E =======================================

objects_func_D644:
	IF_A_NOT_EQUAL objArraySize_373, loc_D64A
	RTS
; ---------------------------------------------------------------------------

loc_D64A:
	set inv_spr_dscr1_30C, #0

loc_D64F:
	LDX	inv_spr_dscr1_30C
	IF_A_EQUAL {objCreatedArray_393,X}, loc_D65A
	JMP	loc_D811
; ---------------------------------------------------------------------------

loc_D65A:
	IF_A_GREATER_CMP_ADDR count_unk_465, #$A, loc_D689
	IF_A_NOT_EQUAL_CMP_ADDR {objIdxArray_375,X}, #6, loc_D66B
	JSR	sub_DC25

loc_D66B:
	IF_A_NOT_EQUAL_CMP_ADDR {objIdxArray_375,X}, #$A, loc_D675
	JSR	sub_DC41

loc_D675:
	IF_A_NOT_EQUAL_CMP_ADDR {objIdxArray_375,X}, #$19, loc_D67F
	JSR	sub_DC64

loc_D67F:
	IF_A_NOT_EQUAL_CMP_ADDR {objIdxArray_375,X}, #$16, loc_D689
	JSR	nullsub_1

loc_D689:
	IF_A_GREATER_CMP_ADDR count_unk_466, #$A, loc_D69F
	IF_A_EQUAL_CMP_ADDR {objIdxArray_375,X}, #2, loc_D6ED
	IF_A_EQUAL_CMP #$10, loc_D6ED
	IF_A_EQUAL_CMP #$F, loc_D6ED

loc_D69F:
	IF_A_GREATER_CMP_ADDR count_unk_467, #5, loc_D6B9
	IF_A_EQUAL_CMP_ADDR {objIdxArray_375,X}, #1, loc_D6ED
	IF_A_EQUAL_CMP #$B, loc_D6ED
	IF_A_EQUAL_CMP #$D, loc_D6ED
	IF_A_EQUAL_CMP #$18, loc_D6ED

loc_D6B9:
	IF_A_GREATER_CMP_ADDR count_unk_468, #3, loc_D6CB
	IF_A_EQUAL_CMP_ADDR {objIdxArray_375,X}, #$E, loc_D6ED
	IF_A_EQUAL_CMP #$C, loc_D6ED

loc_D6CB:
	IF_A_GREATER_CMP_ADDR count_unk_469, #1, loc_D6D9
	IF_A_EQUAL_CMP_ADDR {objIdxArray_375,X}, #$11, loc_D6ED

loc_D6D9:
	IF_A_GREATER_CMP_ADDR count_unk_46A, #1, loc_D6EA
	IF_A_NOT_EQUAL_CMP_ADDR {objIdxArray_375,X}, #$13, loc_D6EA
	JSR	sub_DC88

loc_D6EA:
	JMP	loc_D811
; ---------------------------------------------------------------------------

loc_D6ED:
	IF_A_GREATER_CMP_ADDR count_unk_463, #$64, loc_D702
	set byte_352, #4
	JSR	sub_BEB6
	set {array_unk_3A7,X}, byte_352

loc_D702:
	IF_A_EQUAL_CMP_ADDR {objIdxArray_375,X}, #1, loc_D730
	IF_A_EQUAL_CMP #2, loc_D730
	IF_A_EQUAL_CMP #$B, loc_D730
	IF_A_EQUAL_CMP #$C, loc_D730
	IF_A_EQUAL_CMP #$D, loc_D730
	IF_A_EQUAL_CMP #$E, loc_D730
	IF_A_EQUAL_CMP #$F, loc_D730
	IF_A_EQUAL_CMP #$10, loc_D730
	IF_A_EQUAL_CMP #$11, loc_D730
	IF_A_EQUAL_CMP #$18, loc_D730
	JMP	loc_D811
; ---------------------------------------------------------------------------

loc_D730:
	a_to_stack byte_313
	x_to_stack
	JSR	sub_D9B9
	JSR	sub_D9E4
	JSR	sub_DDDA
	from_stack_to_x
	from_stack_to_a byte_313
	IF_A_NOT_EQUAL_CMP_ADDR sprite_length_30F, #$FF, loc_D75D
	set byte_352, #4
	JSR	sub_BEB6
	set {array_unk_3A7,X}, byte_352
	JMP	loc_D811
; ---------------------------------------------------------------------------

loc_D75D:
	a_to_stack byte_313
	x_to_stack
	JSR	sub_D9B9
	STX	tilemapTypeUnk_30B
	JSR	sub_D874
	from_stack_to_x
	from_stack_to_a byte_313
	IF_A_NOT_EQUAL_CMP_ADDR sprite_length_30F, #$FF, loc_D78C
	set byte_352, #4
	JSR	sub_BEB6
	LDA	byte_352
	xor_byte {array_unk_3A7,X}, #1

loc_D78C:
	JSR	sub_DADA
	a_to_stack byte_313
	x_to_stack
	JSR	sub_D9B9
	JSR	sub_DACD
	from_stack_to_x
	from_stack_to_a byte_313
	STX	cur_obj_idx_unk_43A
	IF_A_NOT_EQUAL_CMP_ADDR byte_439, #$FF, loc_D7AE
	JMP	loc_D81F
; ---------------------------------------------------------------------------

loc_D7AE:
	IF_A_EQUAL_CMP_ADDR {array_unk_3A7,X}, #0, loc_D7EC
	IF_A_EQUAL_CMP #1, loc_D800
	IF_A_EQUAL_CMP #2, loc_D7C4
	IF_A_EQUAL_CMP #3, loc_D7D8
	JMP	loc_D811
; ---------------------------------------------------------------------------

loc_D7C4:
	sub_byte_sec {array_unk_3C5,X}, #2
	sub_byte {array_unk_3BB,X}, #0
	JMP	loc_D811
; ---------------------------------------------------------------------------

loc_D7D8:
	ADD_TO {array_unk_3C5,X}, {array_unk_3BB,X}, #2, #0
	JMP	loc_D811
; ---------------------------------------------------------------------------

loc_D7EC:
	sub_byte_sec {array_unk_3D9,X}, #2
	sub_byte {array_unk_3CF,X}, #0
	JMP	loc_D811
; ---------------------------------------------------------------------------

loc_D800:
	ADD_TO {array_unk_3D9,X}, {array_unk_3CF,X}, #2, #0

loc_D811:
	INC	inv_spr_dscr1_30C
	IF_A_EQUAL_CMP_ADDR inv_spr_dscr1_30C, objArraySize_373, loc_D81F
	JMP	loc_D64F
; ---------------------------------------------------------------------------

loc_D81F:
	IF_A_GREATER_CMP_ADDR count_unk_463, #$64, loc_D82B
	set count_unk_463, #0

loc_D82B:
	IF_A_GREATER_CMP_ADDR count_unk_465, #$A, loc_D837
	set count_unk_465, #0

loc_D837:
	IF_A_GREATER_CMP_ADDR count_unk_466, #$A, loc_D843
	set count_unk_466, #0

loc_D843:
	IF_A_GREATER_CMP_ADDR count_unk_467, #5, loc_D84F
	set count_unk_467, #0

loc_D84F:
	IF_A_GREATER_CMP_ADDR count_unk_468, #3, loc_D85B
	set count_unk_468, #0

loc_D85B:
	IF_A_GREATER_CMP_ADDR count_unk_469, #1, loc_D867
	set count_unk_469, #0

loc_D867:
	IF_A_GREATER_CMP_ADDR count_unk_46A, #1, locret_D873
	set count_unk_46A, #0

locret_D873:
	RTS
; End of function objects_func_D644

; =============== S U B	R O U T	I N E =======================================

sub_D874:
	set sprite_length_30F, #0
	LDX	#0

loc_D87B:
	IF_X_EQUAL_CMP tilemapTypeUnk_30B, loc_D88A
	JSR	sub_D894
	IF_A_EQUAL_CMP_ADDR sprite_length_30F, #$FF, locret_D893

loc_D88A:
	INX
	IF_X_EQUAL_CMP objArraySize_373, locret_D893
	JMP	loc_D87B
; ---------------------------------------------------------------------------

locret_D893:
	RTS
; End of function sub_D874

; =============== S U B	R O U T	I N E =======================================

sub_D894:
	set sprite_length_30F, #0
	IF_A_NOT_EQUAL {objCreatedArray_393,X}, locret_D8D7
	JSR	sub_D8D8
	JSR	sub_D96B
	IF_A_EQUAL_CMP_ADDR sprite_length_30F, #$FF, locret_D8D7
	JSR	sub_D8D8
	JSR	sub_D8FD
	JSR	sub_D96B
	IF_A_EQUAL_CMP_ADDR sprite_length_30F, #$FF, locret_D8D7
	JSR	sub_D8D8
	JSR	sub_D913
	JSR	sub_D96B
	IF_A_EQUAL_CMP_ADDR sprite_length_30F, #$FF, locret_D8D7
	JSR	sub_D8D8
	JSR	sub_D8FD
	JSR	sub_D913
	JSR	sub_D96B

locret_D8D7:
	RTS
; End of function sub_D894

; =============== S U B	R O U T	I N E =======================================

sub_D8D8:
	set byte_36C, {array_unk_3C5,X}
	set byte_36D, {array_unk_3BB,X}
	set byte_368, {array_unk_3D9,X}
	set byte_369, {array_unk_3CF,X}
	set tilemap_size_307, {unk_3E3,X}
	set ppu_unk_byte_309, {unk_3ED,X}
	RTS
; End of function sub_D8D8

; =============== S U B	R O U T	I N E =======================================

sub_D8FD:
	mult_a_by_8_byte tilemap_size_307
	ADD_TO_A byte_36C
	STA	byte_36C
	ADD_BYTE_TO_BYTE byte_36D, #0

	RTS
; End of function sub_D8FD

; =============== S U B	R O U T	I N E =======================================

sub_D913:
	mult_a_by_8_byte ppu_unk_byte_309
	ADD_TO_A byte_368
	STA	byte_368
	ADD_BYTE_TO_BYTE byte_369, #0

	RTS
; End of function sub_D913

; =============== S U B	R O U T	I N E =======================================

sub_D929:
	a_to_stack tilemapWidth_308
	mult_a_by_8
	STA	tilemapWidth_308
	sub_byte_from_word byte_36C, tilemapWidth_308
	from_stack_to_a tilemapWidth_308
	RTS
; End of function sub_D929

; =============== S U B	R O U T	I N E =======================================

sub_D94A:
	a_to_stack tilemapHeight_30A
	mult_a_by_8
	STA	tilemapHeight_30A
	sub_byte_from_word byte_368, tilemapHeight_30A
	from_stack_to_a tilemapHeight_30A
	RTS
; End of function sub_D94A

; =============== S U B	R O U T	I N E =======================================

sub_D96B:
	sub_word_from_word byte_36C, byte_36A
	BCC	loc_D9B3
	sub_word_from_word byte_368, byte_366
	BCC	loc_D9B3
	JSR	sub_D929
	JSR	sub_D94A
	sub_word_from_word byte_36A, byte_36C
	BCC	loc_D9B3
	sub_word_from_word byte_366, byte_368
	BCC	loc_D9B3
	set sprite_length_30F, #$FF
	RTS
; ---------------------------------------------------------------------------

loc_D9B3:
	set sprite_length_30F, #0
	RTS
; End of function sub_D96B

; =============== S U B	R O U T	I N E =======================================

sub_D9B9:
	set byte_313, {array_unk_3A7,X}
	set tilemapWidth_308, {unk_3E3,X}
	set tilemapHeight_30A, {unk_3ED,X}
	set byte_36A, {array_unk_3C5,X}
	set byte_36B, {array_unk_3BB,X}
	set byte_366, {array_unk_3D9,X}
	set byte_367, {array_unk_3CF,X}
	RTS
; End of function sub_D9B9

; =============== S U B	R O U T	I N E =======================================

sub_D9E4:
	load_a_masked byte_36A, #$F
	BEQ	loc_DA0B
	and_byte byte_36A, #$F0 
	IF_A_NOT_EQUAL_CMP_ADDR {array_unk_3A7,X}, #2, loc_DA0B
	ADD_BYTE_TO_WORD byte_36A, #$10

loc_DA0B:
	load_a_masked byte_366, #$F
	BEQ	locret_DA32
	and_byte byte_366, #$F0 
	IF_A_NOT_EQUAL_CMP_ADDR {array_unk_3A7,X}, #0, locret_DA32
	ADD_BYTE_TO_WORD byte_366, #$10

locret_DA32:
	RTS
; End of function sub_D9E4

; =============== S U B	R O U T	I N E =======================================

sub_DA33:
	IF_A_NOT_EQUAL objArraySize_373, loc_DA3E
	set sprite_length_30F, #0
	RTS
; ---------------------------------------------------------------------------

loc_DA3E:
	LDX	#0

loc_DA40:
	IF_A_NOT_EQUAL {objCreatedArray_393,X}, loc_DABE
	JSR	sub_D8D8
	IF_A_EQUAL_CMP_ADDR {objIdxArray_375,X}, #$13, loc_DA73
	IF_A_GREATER_CMP_ADDR ppu_unk_byte_309, #2, loc_DA73
	sub_addr_sec ppu_unk_byte_309, #2
	mult_a_by_8
	ADD_TO_A byte_368
	STA	byte_368
	ADD_BYTE_TO_BYTE byte_369, #0

	set ppu_unk_byte_309, #2

loc_DA73:
	sub_word_from_word byte_36A, byte_36C
	BCC	loc_DABE
	sub_word_from_word byte_366, byte_368
	BCC	loc_DABE
	JSR	sub_D8FD
	JSR	sub_D913
	sub_word_from_word byte_36C, byte_36A
	BCC	loc_DABE
	sub_word_from_word byte_368, byte_366
	BCC	loc_DABE
	STX	byte_434
	set sprite_length_30F, #$FF
	RTS
; ---------------------------------------------------------------------------

loc_DABE:
	INX
	IF_X_EQUAL_CMP objArraySize_373, loc_DAC7
	JMP	loc_DA40
; ---------------------------------------------------------------------------

loc_DAC7:
	set sprite_length_30F, #0
	RTS
; End of function sub_DA33

; =============== S U B	R O U T	I N E =======================================

sub_DACD:
	JSR	sub_C7C7
	JSR	sub_D894
	set byte_439, sprite_length_30F
	RTS
; End of function sub_DACD

; =============== S U B	R O U T	I N E =======================================

sub_DADA:
	JSR	sub_C7C7
	set sprite_length_30F, #0
	sub_addr_sec byte_36A, {array_unk_3C5,X}
	sub_addr byte_36B, {array_unk_3BB,X}
	BCC	loc_DB0F
	sub_addr_sec byte_36A, {array_unk_3C5,X}
	STA	byte_36C
	sub_addr byte_36B, {array_unk_3BB,X}
	STA	byte_36D
	or_byte sprite_length_30F, #3
	JMP	loc_DB2A
; ---------------------------------------------------------------------------

loc_DB0F:
	sub_addr_sec {array_unk_3C5,X}, byte_36A
	STA	byte_36C
	sub_addr {array_unk_3BB,X}, byte_36B
	STA	byte_36D
	or_byte sprite_length_30F, #$C

loc_DB2A:
	sub_addr_sec byte_366, {array_unk_3D9,X}
	sub_addr byte_367, {array_unk_3CF,X}
	BCC	loc_DB57
	sub_addr_sec byte_366, {array_unk_3D9,X}
	STA	byte_368
	sub_addr byte_367, {array_unk_3CF,X}
	STA	byte_369
	or_byte sprite_length_30F, #$30 
	JMP	loc_DB72
; ---------------------------------------------------------------------------

loc_DB57:
	sub_addr_sec {array_unk_3D9,X}, byte_366
	STA	byte_368
	sub_addr {array_unk_3CF,X}, byte_367
	STA	byte_369
	or_byte sprite_length_30F, #$C0 

loc_DB72:
	ADD_BYTE_TO_BYTE_CLC_IMM byte_36A, byte_368, byte_36C
	LDA	byte_369
	ADC	byte_36D
	STA	byte_36B
	sub_addr_sec byte_36A, #$60 
	sub_addr byte_36B, #0
	BCC	loc_DB98
	set sprite_length_30F, #0
	RTS
; ---------------------------------------------------------------------------

loc_DB98:
	sub_word_from_word byte_368, byte_36C
	BCC	loc_DBC3
	and_byte sprite_length_30F, #$F0 
	IF_A_EQUAL_CMP #$30, loc_DBBB
	set {array_unk_3A7,X}, #0
	JMP	loc_DBDC
; ---------------------------------------------------------------------------

loc_DBBB:
	set {array_unk_3A7,X}, #1
	JMP	loc_DBDC
; ---------------------------------------------------------------------------

loc_DBC3:
	and_byte sprite_length_30F, #$F
	IF_A_EQUAL_CMP #3, loc_DBD7
	set {array_unk_3A7,X}, #2
	JMP	loc_DBDC
; ---------------------------------------------------------------------------

loc_DBD7:
	set {array_unk_3A7,X}, #3

loc_DBDC:
	set sprite_length_30F, #$FF
	RTS
; End of function sub_DADA

; =============== S U B	R O U T	I N E =======================================

sub_DBE2:
	LDX	cur_obj_idx_unk_43A
	set {objCreatedArray_393,X}, #1
	set byte_439, #0
	LDX	cur_obj_idx_unk_43A
	set byte_31A, {unk_40B,X}
	set tilemapWidth_308, {unk_3E3,X}
	set tilemapHeight_30A, {unk_3ED,X}
	LDX	tilemapHeight_30A

loc_DC07:
	IF_X_EQUAL_CMP #0, loc_DC13
	ADD_TO_A tilemapWidth_308
	DEX
	JMP	loc_DC07
; ---------------------------------------------------------------------------

loc_DC13:
	mult_a_by_4
	STA	tilemapWidth_308
	JSR	sub_BD29
	RTS
; End of function sub_DBE2

; =============== S U B	R O U T	I N E =======================================

sub_DC1C:
	LDX	cur_obj_idx_unk_43A
	set {objCreatedArray_393,X}, #0
	RTS
; End of function sub_DC1C

; =============== S U B	R O U T	I N E =======================================

sub_DC25:
	IF_A_GREATER_CMP_ADDR {array_unk_39D,X}, #5, loc_DC31
	set {array_unk_39D,X}, #$FF

loc_DC31:
	INC	array_unk_39D,X
	IF_A_GREATER_CMP_ADDR {obj_array_unk_415,X}, #$3C, locret_DC40
	set {array_unk_39D,X}, #6

locret_DC40:
	RTS
; End of function sub_DC25

; =============== S U B	R O U T	I N E =======================================

sub_DC41:
	IF_A_GREATER_CMP_ADDR {array_unk_39D,X}, #1, loc_DC4D
	set {array_unk_39D,X}, #$FF

loc_DC4D:
	INC	array_unk_39D,X
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$42, locret_DC63
	IF_A_NOT_EQUAL_CMP_ADDR byte_562, #$FF, locret_DC63
	set {array_unk_39D,X}, #2

locret_DC63:
	RTS
; End of function sub_DC41

; =============== S U B	R O U T	I N E =======================================

sub_DC64:
	IF_A_GREATER_CMP_ADDR {array_unk_39D,X}, #1, loc_DC70
	set {array_unk_39D,X}, #$FF

loc_DC70:
	INC	array_unk_39D,X
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$6C, locret_DC86
	IF_A_NOT_EQUAL_CMP_ADDR byte_587, #$FF, locret_DC86
	set {array_unk_39D,X}, #2

locret_DC86:
	RTS
; End of function sub_DC64

nullsub_1:
	RTS

; =============== S U B	R O U T	I N E =======================================

sub_DC88:
	a_to_stack inv_spr_dscr1_30C
	IF_A_EQUAL byte_58E, loc_DCE6
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$57, loc_DCA8
	sub_addr_sec {array_unk_3C5,X}, #0
	sub_addr {array_unk_3BB,X}, #2
	BCS	loc_DD0C
	JMP	loc_DCB5
; ---------------------------------------------------------------------------

loc_DCA8:
	sub_addr_sec {array_unk_3C5,X}, #$B0 
	sub_addr {array_unk_3BB,X}, #1
	BCS	loc_DCE9

loc_DCB5:
	x_to_stack
	JSR	sub_C7C7
	from_stack_to_x
	JSR	sub_DD40
	ADD_TO {array_unk_3C5,X}, {array_unk_3BB,X}, #2, #0
	ADD_BYTE_TO_BYTE_CLC {unk_37F,X}, #1
	IF_A_GREATER_CMP_ADDR {unk_37F,X}, {unk_389,X}, loc_DCE6
	set {unk_37F,X}, #0

loc_DCE6:
	JMP	loc_DD3B
; ---------------------------------------------------------------------------

loc_DCE9:
	set3 byte_651, byte_58D, byte_58E, #0
	set cur_obj_idx_unk_43A, #1
	JSR	sub_DBE2
	set byte_652, #$FF
	set cur_obj_idx_unk_43A, #2
	JSR	sub_DC1C
	JMP	loc_DD3B
; ---------------------------------------------------------------------------

loc_DD0C:
	set3 byte_646, byte_58D, byte_58E, #0
	JSR	exec_b12_c9_EAB6
	set image_id_4A4, entry_idx_300
	set image_offset_4A5, ppu_unk_byte_302
	set ppu_prev_unk_4A6, ppu_unk_byte_303
	set ppu_prev_scroll_x_unk_4A7, ppu_scroll_x_304
	set ppu_prev_scroll_y_unk_4A8, ppu_scroll_y_305
	JSR	load_image_C6D2

loc_DD3B:
	from_stack_to_a inv_spr_dscr1_30C
	RTS
; End of function sub_DC88

; =============== S U B	R O U T	I N E =======================================

sub_DD40:
	ADD_BYTE_TO_WORD byte_366, #$C

	ADD_BYTE_TO_WORD byte_36A, #8

	sub_addr_sec byte_36A, {array_unk_3C5,X}
	sub_addr byte_36B, {array_unk_3BB,X}
	BCC	locret_DDC5
	sub_addr_sec byte_366, {array_unk_3D9,X}
	sub_addr byte_367, {array_unk_3CF,X}
	BCC	locret_DDC5
	sub_byte_from_word byte_366, #$20 
	sub_byte_from_word byte_36A, #$20 
	sub_addr_sec {array_unk_3C5,X}, byte_36A
	sub_addr {array_unk_3BB,X}, byte_36B
	BCC	locret_DDC5
	sub_addr_sec {array_unk_3D9,X}, byte_366
	sub_addr {array_unk_3CF,X}, byte_367
	BCC	locret_DDC5

set_game_finished_DDC0:
	set is_game_finished_561, #$FF

locret_DDC5:
	RTS
; End of function sub_DD40

; ---------------------------------------------------------------------------
	RTS
; ---------------------------------------------------------------------------
	RTS
; ---------------------------------------------------------------------------
	RTS

; =============== S U B	R O U T	I N E =======================================

sub_DDC9:
	JSR	sub_C7C7
	set tilemapWidth_308, #2
	set tilemapHeight_30A, #3
	JSR	sub_DDDA
	RTS
; End of function sub_DDC9

; =============== S U B	R O U T	I N E =======================================

sub_DDDA:
	IF_A_NOT_EQUAL_CMP_ADDR byte_313, #0, loc_DE22
	IF_A_EQUAL_CMP_ADDR tilemapHeight_30A, #2, loc_DDEB
	JMP	loc_DDFC
; ---------------------------------------------------------------------------

loc_DDEB:
	sub_byte_from_word byte_366, #$10

loc_DDFC:
	LDY	#0

loc_DDFE:
	y_to_stack
	JSR	map_update_DEFA
	from_stack_to_y
	IF_A_NOT_EQUAL sprite_length_30F, locret_DE21
	ADD_BYTE_TO_WORD byte_36A, #8

	INY
	IF_Y_GREATER_CMP tilemapWidth_308, loc_DDFE

locret_DE21:
	RTS
; ---------------------------------------------------------------------------

loc_DE22:
	IF_A_NOT_EQUAL_CMP #1, loc_DE6A
	ADD_BYTE_TO_BYTE_CLC tilemapHeight_30A, #1
	mult_a_by_8_byte tilemapHeight_30A
	ADD_TO_A byte_366
	STA	byte_366
	ADD_BYTE_TO_BYTE byte_367, #0

	LDY	#0

loc_DE46:
	y_to_stack
	JSR	map_update_DEFA
	from_stack_to_y
	IF_A_NOT_EQUAL sprite_length_30F, locret_DE69
	ADD_BYTE_TO_WORD byte_36A, #8

	INY
	IF_Y_GREATER_CMP tilemapWidth_308, loc_DE46

locret_DE69:
	RTS
; ---------------------------------------------------------------------------

loc_DE6A:
	IF_A_NOT_EQUAL_CMP #2, loc_DEB4
	sub_addr_sec tilemapHeight_30A, #1
	mult_a_by_8
	ADD_TO_A byte_366
	STA	byte_366
	ADD_BYTE_TO_BYTE byte_367, #0

	sub_byte_from_word byte_36A, #$10
	JSR	map_update_DEFA
	IF_A_NOT_EQUAL sprite_length_30F, locret_DEB3
	ADD_BYTE_TO_WORD byte_36A, #8

	JSR	map_update_DEFA

locret_DEB3:
	RTS
; ---------------------------------------------------------------------------

loc_DEB4:
	sub_addr_sec tilemapHeight_30A, #1
	mult_a_by_8
	ADD_TO_A byte_366
	STA	byte_366
	ADD_BYTE_TO_BYTE byte_367, #0

	ADD_BYTE_TO_WORD byte_36A, #$10

	JSR	map_update_DEFA
	IF_A_NOT_EQUAL sprite_length_30F, locret_DEF9
	ADD_BYTE_TO_WORD byte_36A, #8

	JSR	map_update_DEFA

locret_DEF9:
	RTS
; End of function sub_DDDA

; =============== S U B	R O U T	I N E =======================================

map_update_DEFA:
	a_to_stack entry_idx_300
	a_to_stack byte_36A
	a_to_stack byte_36B
	a_to_stack byte_366
	a_to_stack byte_367
	JSR	sub_CA14
	div_byte_by_8 byte_36A
	div_byte_by_8 byte_366

read_tilemap_DF23:
	set tilemapData_4C, entry_idx_300
	set room_pos_x_4D, byte_36B
	set room_pos_y_4E, byte_367
	set tilemap_line_idx_4F, byte_366
	set mapLineSize_50, byte_36A
	set tilemap_line_size_51, #$20 
	set mapLineWidth_52, #1
	set mapLineHeight_53, #1
	JSR	tilemap_read_next_chunk_F472

load_from_C558_DF4B:
	GET_PTR_FROM_TBL unknown_entries_C558, entry_idx_300

	LDY	#0
	set entry_idx_300, {(data_2),Y}

load_from_BCB6_DF7F:
	set_word_to_word_const ptr_0, unknown_data_BCB6

	mult_by_2_byte entry_idx_300
	TAY
	set_iny data_2, {(ptr_0),Y}
	set data_3, {(ptr_0),Y}

	LDY	#0
	IF_A_GREATER_CMP_ADDR {(data_2),Y}, tilemapData_4C, loc_DFA7
	BEQ	loc_DFA7
	set sprite_length_30F, #$FF
	JMP	loc_DFAC
; ---------------------------------------------------------------------------

loc_DFA7:
	set sprite_length_30F, #0

loc_DFAC:
	from_stack_to_a byte_367
	from_stack_to_a byte_366
	from_stack_to_a byte_36B
	from_stack_to_a byte_36A
	from_stack_to_a entry_idx_300
	RTS
; End of function map_update_DEFA

; =============== S U B	R O U T	I N E =======================================

sub_DFC1:
	set byte_36E, #$FF

	GET_PTR_FROM_TBL off_9BB5, entry_idx_300

	LDY	#0
	set tilemapTypeUnk_30B, {(data_2),Y}

	ADD_WORD_TO_WORD_IMM data_2, $1

	JSR	sub_C7C7
	ADD_BYTE_TO_WORD byte_366, #8

	JSR	sub_9824
	set tilemapWidth_308, byte_36A
	set tilemap_size_307, byte_36B
	set tilemapHeight_30A, byte_366
	set ppu_unk_byte_309, byte_367
	set inv_spr_dscr1_30C, #0

loc_E03B:
	IF_A_NOT_EQUAL_CMP_ADDR inv_spr_dscr1_30C, tilemapTypeUnk_30B, loc_E046
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E046:
	mult_by_2_byte inv_spr_dscr1_30C
	TAY
	set_iny ptr_0, {(data_2),Y}
	set ptr_1, {(data_2),Y}

	LDY	#0
	set_iny byte_36A, {(ptr_0),Y}
	set_iny byte_36B, {(ptr_0),Y}

	set_iny byte_366, {(ptr_0),Y}
	set_iny byte_367, {(ptr_0),Y}

	set_iny byte_36C, {(ptr_0),Y}
	set_iny byte_36D, {(ptr_0),Y}

	set_iny byte_368, {(ptr_0),Y}
	set_iny byte_369, {(ptr_0),Y}

	sub_addr_sec tilemapWidth_308, byte_36A
	sub_addr tilemap_size_307, byte_36B
	BCC	loc_E0C5

	sub_addr_sec tilemapHeight_30A, byte_366
	sub_addr ppu_unk_byte_309, byte_367
	BCC	loc_E0C5

	sub_addr_sec byte_36C, tilemapWidth_308
	sub_addr byte_36D, tilemap_size_307
	BCC	loc_E0C5

	sub_addr_sec byte_368, tilemapHeight_30A
	sub_addr byte_369, ppu_unk_byte_309
	BCC	loc_E0C5
	
	JMP	loc_E0CB
; ---------------------------------------------------------------------------

loc_E0C5:
	INC	inv_spr_dscr1_30C
	JMP	loc_E03B
; ---------------------------------------------------------------------------

loc_E0CB:
	set_iny data_2, {(ptr_0),Y}
	set data_3, {(ptr_0),Y}

	JSR	sub_E747
	IF_A_NOT_EQUAL_CMP_ADDR byte_370, #$25, loc_E0E8
	IF_A_NOT_EQUAL_CMP_ADDR byte_371, #1, loc_E0E8
	JMP	loc_E0EB
; ---------------------------------------------------------------------------

loc_E0E8:
	JMP	loc_E17D
; ---------------------------------------------------------------------------

loc_E0EB:
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_E0F5
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E0F5:
	IF_A_NOT_EQUAL_CMP_ADDR byte_36F, #$FF, loc_E0FF
	JMP	loc_E70C
; ---------------------------------------------------------------------------

loc_E0FF:
	set cur_obj_idx_unk_43A, #0
	JSR	sub_DC1C
	set tilemapData_4C, #1
	set room_pos_x_4D, #0
	set room_pos_y_4E, #7
	set tilemap_line_idx_4F, #2
	JSR	sub_CF42
	set tilemapData_4C, #1
	set room_pos_x_4D, #0
	set room_pos_y_4E, #7
	set tilemap_line_idx_4F, #1
	JSR	sub_CF42
	LDX	byte_4D0
	set {unk_4C2,X}, #$D
	INC	byte_4D0
	set_text_args #$3C, #2
	LDX	#3
	JSR	show_text_sequence_func_CF13
	set tilemapData_4C, #1
	set room_pos_x_4D, #0
	set room_pos_y_4E, #7
	set tilemap_line_idx_4F, #0
	JSR	sub_CF42
	set tilemapData_4C, #1
	set room_pos_x_4D, #0
	set room_pos_y_4E, #7
	set tilemap_line_idx_4F, #3
	JSR	sub_CF42
	set cur_obj_idx_unk_43A, #0
	JSR	sub_DBE2
	set byte_6BD, #$FF
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E17D:
	IF_A_NOT_EQUAL_CMP_ADDR byte_370, #$B8, loc_E1B4
	IF_A_NOT_EQUAL_CMP_ADDR byte_371, #0, loc_E1B4
	JMP	loc_E70C
; ---------------------------------------------------------------------------
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_E198
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E198:
	IF_A_NOT_EQUAL_CMP_ADDR byte_36F, #$FF, loc_E1A2
	JMP	loc_E70C
; ---------------------------------------------------------------------------

loc_E1A2:
	set_text_args #$43, #2
	LDX	#1
	JSR	show_text_sequence_func_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E1B4:
	IF_A_NOT_EQUAL_CMP_ADDR byte_370, #$30, loc_E1E8
	IF_A_NOT_EQUAL_CMP_ADDR byte_371, #1, loc_E1E8
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_E1CC
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E1CC:
	IF_A_NOT_EQUAL_CMP_ADDR byte_36F, #$FF, loc_E1D6
	JMP	loc_E70C
; ---------------------------------------------------------------------------

loc_E1D6:
	set_text_args #4, #2
	LDX	#1
	JSR	show_text_sequence_func_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E1E8:
	IF_A_NOT_EQUAL_CMP_ADDR byte_370, #$9E, loc_E221
	IF_A_NOT_EQUAL_CMP_ADDR byte_371, #0, loc_E221
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_E205
	set byte_46D, #$2E 
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E205:
	IF_A_NOT_EQUAL_CMP_ADDR byte_36F, #$FF, loc_E20F
	JMP	loc_E70C
; ---------------------------------------------------------------------------

loc_E20F:
	set_text_args #$D4, #1
	LDX	#1
	JSR	show_text_sequence_func_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E221:
	IF_A_NOT_EQUAL_CMP_ADDR byte_370, #$B4, loc_E25A
	IF_A_NOT_EQUAL_CMP_ADDR byte_371, #0, loc_E25A
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_E23E
	set byte_46D, #0
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E23E:
	IF_A_NOT_EQUAL_CMP_ADDR byte_36F, #$FF, loc_E248
	JMP	loc_E70C
; ---------------------------------------------------------------------------

loc_E248:
	set_text_args #$C, #2
	LDX	#1
	JSR	show_text_sequence_func_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E25A:
	IF_A_NOT_EQUAL_CMP_ADDR byte_36F, #$FF, loc_E290
	IF_A_NOT_EQUAL_CMP_ADDR byte_370, #$91, loc_E272
	IF_A_NOT_EQUAL_CMP_ADDR byte_371, #0, loc_E272
	JMP	loc_E70C
; ---------------------------------------------------------------------------

loc_E272:
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_E28D
	IF_A_NOT_EQUAL_CMP_ADDR byte_370, #$17, loc_E28A
	IF_A_NOT_EQUAL_CMP_ADDR byte_371, #0, loc_E28A
	JMP	loc_E70C
; ---------------------------------------------------------------------------

loc_E28A:
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E28D:
	JMP	loc_E70C
; ---------------------------------------------------------------------------

loc_E290:
	IF_A_NOT_EQUAL_CMP_ADDR byte_370, #0, loc_E2BA
	IF_A_NOT_EQUAL_CMP_ADDR byte_371, #0, loc_E2BA
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_E2A8
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E2A8:
	set_text_args #$B9, #0
	LDX	#1
	JSR	show_text_sequence_func_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E2BA:
	IF_A_NOT_EQUAL_CMP_ADDR byte_370, #1, loc_E2E9
	IF_A_NOT_EQUAL_CMP_ADDR byte_371, #0, loc_E2E9
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_E2D7
	set byte_46D, #$13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E2D7:
	set_text_args #$8E, #1
	LDX	#1
	JSR	show_text_sequence_func_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E2E9:
	IF_A_NOT_EQUAL_CMP_ADDR byte_370, #2, loc_E318
	IF_A_NOT_EQUAL_CMP_ADDR byte_371, #0, loc_E318
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_E306
	set byte_46D, #$14
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E306:
	set_text_args #$8D, #1
	LDX	#1
	JSR	show_text_sequence_func_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E318:
	IF_A_NOT_EQUAL_CMP_ADDR byte_370, #3, loc_E347
	IF_A_NOT_EQUAL_CMP_ADDR byte_371, #0, loc_E347
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_E335
	set byte_46D, #$15
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E335:
	set_text_args #$8C, #1
	LDX	#1
	JSR	show_text_sequence_func_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E347:
	IF_A_NOT_EQUAL_CMP_ADDR byte_370, #4, loc_E376
	IF_A_NOT_EQUAL_CMP_ADDR byte_371, #0, loc_E376
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_E364
	set byte_46D, #$16
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E364:
	set_text_args #$8F, #1
	LDX	#1
	JSR	show_text_sequence_func_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E376:
	IF_A_NOT_EQUAL_CMP_ADDR byte_370, #5, loc_E3A5
	IF_A_NOT_EQUAL_CMP_ADDR byte_371, #0, loc_E3A5
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_E393
	set byte_46D, #$18
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E393:
	set_text_args #4, #2
	LDX	#1
	JSR	show_text_sequence_func_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E3A5:
	IF_A_NOT_EQUAL_CMP_ADDR byte_370, #6, loc_E3D4
	IF_A_NOT_EQUAL_CMP_ADDR byte_371, #0, loc_E3D4
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_E3C2
	set byte_46D, #$19
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E3C2:
	set_text_args #$22, #2
	LDX	#1
	JSR	show_text_sequence_func_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E3D4:
	IF_A_NOT_EQUAL_CMP_ADDR byte_370, #$33, loc_E403
	IF_A_NOT_EQUAL_CMP_ADDR byte_371, #0, loc_E403
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_E3F1
	set byte_46D, #$17
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E3F1:
	set_text_args #$90, #1
	LDX	#1
	JSR	show_text_sequence_func_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E403:
	IF_A_NOT_EQUAL_CMP_ADDR byte_370, #$3D, loc_E42D
	IF_A_NOT_EQUAL_CMP_ADDR byte_371, #0, loc_E42D
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_E41B
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E41B:
	set_text_args #$DB, #1
	LDX	#1
	JSR	show_text_sequence_func_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E42D:
	IF_A_NOT_EQUAL_CMP_ADDR byte_370, #$3C, loc_E457
	IF_A_NOT_EQUAL_CMP_ADDR byte_371, #0, loc_E457
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_E445
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E445:
	set_text_args #$DB, #1
	LDX	#1
	JSR	show_text_sequence_func_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E457:
	IF_A_NOT_EQUAL_CMP_ADDR byte_370, #$3B, loc_E481
	IF_A_NOT_EQUAL_CMP_ADDR byte_371, #0, loc_E481
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_E46F
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E46F:
	set_text_args #$DB, #1
	LDX	#1
	JSR	show_text_sequence_func_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E481:
	IF_A_NOT_EQUAL_CMP_ADDR byte_370, #$6F, loc_E4C7
	IF_A_NOT_EQUAL_CMP_ADDR byte_371, #0, loc_E4C7
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_E499
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E499:
	set_text_args #$E8, #1
	LDX	#1
	JSR	show_text_sequence_func_CF13
	JSR	sub_CAA9
	IF_A_NOT_EQUAL byte_372, loc_E4C4
	set byte_420, #1
	JSR	exec_b12_c24_EB8E
	IF_A_EQUAL_CMP_ADDR byte_41F, #0, loc_E4C4
	set byte_607, #$FF

loc_E4C4:
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E4C7:
	IF_A_NOT_EQUAL_CMP_ADDR byte_370, #$D2, loc_E50D
	IF_A_NOT_EQUAL_CMP_ADDR byte_371, #0, loc_E50D
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_E4DF
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E4DF:
	set_text_args #$E8, #1
	LDX	#1
	JSR	show_text_sequence_func_CF13
	JSR	sub_CAA9
	IF_A_NOT_EQUAL byte_372, loc_E50A
	set byte_420, #0
	JSR	exec_b12_c24_EB8E
	IF_A_EQUAL_CMP_ADDR byte_41F, #0, loc_E4C4
	set byte_66A, #$FF

loc_E50A:
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E50D:
	IF_A_NOT_EQUAL_CMP_ADDR byte_370, #$3A, loc_E537
	IF_A_NOT_EQUAL_CMP_ADDR byte_371, #0, loc_E537
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_E525
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E525:
	set_text_args #$F4, #1
	LDX	#1
	JSR	show_text_sequence_func_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E537:
	IF_A_NOT_EQUAL_CMP_ADDR byte_370, #$9B, loc_E561
	IF_A_NOT_EQUAL_CMP_ADDR byte_371, #0, loc_E561
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_E54F
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E54F:
	set_text_args #$A, #2
	LDX	#1
	JSR	show_text_sequence_func_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E561:
	IF_A_NOT_EQUAL_CMP_ADDR byte_370, #$E2, loc_E58B
	IF_A_NOT_EQUAL_CMP_ADDR byte_371, #0, loc_E58B
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_E579
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E579:
	set_text_args #$10, #2
	LDX	#1
	JSR	show_text_sequence_func_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E58B:
	IF_A_NOT_EQUAL_CMP_ADDR byte_370, #$32, loc_E5B5
	IF_A_NOT_EQUAL_CMP_ADDR byte_371, #1, loc_E5B5
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_E5A3
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E5A3:
	set_text_args #$11, #2
	LDX	#1
	JSR	show_text_sequence_func_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E5B5:
	IF_A_NOT_EQUAL_CMP_ADDR byte_370, #$EC, loc_E5DF
	IF_A_NOT_EQUAL_CMP_ADDR byte_371, #0, loc_E5DF
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_E5CD
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E5CD:
	set_text_args #$13, #2
	LDX	#1
	JSR	show_text_sequence_func_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E5DF:
	IF_A_NOT_EQUAL_CMP_ADDR byte_370, #8, loc_E609
	IF_A_NOT_EQUAL_CMP_ADDR byte_371, #1, loc_E609
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_E5F7
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E5F7:
	set_text_args #$33, #2
	LDX	#1
	JSR	show_text_sequence_func_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E609:
	IF_A_NOT_EQUAL_CMP_ADDR byte_370, #$F8, loc_E633
	IF_A_NOT_EQUAL_CMP_ADDR byte_371, #0, loc_E633
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_E621
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E621:
	set_text_args #$DB, #1
	LDX	#1
	JSR	show_text_sequence_func_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E633:
	IF_A_NOT_EQUAL_CMP_ADDR byte_370, #6, loc_E65D
	IF_A_NOT_EQUAL_CMP_ADDR byte_371, #1, loc_E65D
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_E64B
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E64B:
	set_text_args #$13, #2
	LDX	#1
	JSR	show_text_sequence_func_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E65D:
	IF_A_NOT_EQUAL_CMP_ADDR byte_370, #$31, loc_E687
	IF_A_NOT_EQUAL_CMP_ADDR byte_371, #1, loc_E687
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_E675
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E675:
	set_text_args #$34, #2
	LDX	#1
	JSR	show_text_sequence_func_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E687:
	IF_A_NOT_EQUAL_CMP_ADDR byte_370, #$B, loc_E6B1
	IF_A_NOT_EQUAL_CMP_ADDR byte_371, #1, loc_E6B1
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_E69F
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E69F:
	set_text_args #$35, #2
	LDX	#1
	JSR	show_text_sequence_func_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E6B1:
	IF_A_NOT_EQUAL_CMP_ADDR byte_370, #$C, loc_E6DB
	IF_A_NOT_EQUAL_CMP_ADDR byte_371, #1, loc_E6DB
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_E6C9
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E6C9:
	set_text_args #$36, #2
	LDX	#1
	JSR	show_text_sequence_func_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E6DB:
	IF_A_NOT_EQUAL_CMP_ADDR byte_370, #$2F, loc_E705
	IF_A_NOT_EQUAL_CMP_ADDR byte_371, #1, loc_E705
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_E6F3
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E6F3:
	set_text_args #$41, #2
	LDX	#1
	JSR	show_text_sequence_func_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E705:
	IF_A_NOT_EQUAL_CMP_ADDR byte_36F, #$FF, loc_E741

loc_E70C:
	INY
	set_iny byte_36E, {(ptr_0),Y}
	IF_A_NOT_EQUAL_CMP_ADDR byte_36E, #0, loc_E725
	JSR	sub_E855
	set sprite_length_30F, #$FF
	JMP	locret_E740
; ---------------------------------------------------------------------------

loc_E725:
	IF_A_NOT_EQUAL_CMP #1, loc_E734
	JSR	nullsub_2
	set sprite_length_30F, #$FF
	JMP	locret_E740
; ---------------------------------------------------------------------------

loc_E734:
	IF_A_NOT_EQUAL_CMP #2, locret_E740
	JSR	get_func_ptr_and_jmp_E925
	set sprite_length_30F, #$FF

locret_E740:
	RTS
; ---------------------------------------------------------------------------

loc_E741:
	set sprite_length_30F, #0
	RTS
; End of function sub_DFC1

; =============== S U B	R O U T	I N E =======================================

sub_E747:
	set3 byte_36F, byte_370, byte_371, #0
	y_to_stack
	a_to_stack ptr_0
	a_to_stack ptr_1
	a_to_stack tilemapTypeUnk_30B
	a_to_stack inv_spr_dscr1_30C

	LDY	#0
	set tilemapTypeUnk_30B, {(data_2),Y}
	IF_A_NOT_EQUAL_CMP #0, loc_E775
	set byte_36F, #$FF
	JMP	loc_E7E7
; ---------------------------------------------------------------------------

loc_E775:
	ADD_WORD_TO_WORD_IMM data_2, $1
	
	set inv_spr_dscr1_30C, #0

loc_E787:
	mult_by_2_byte inv_spr_dscr1_30C
	TAY
	set_iny ptr_0, {(data_2),Y}
	set ptr_1, {(data_2),Y}
	LDY	#0

loc_E797:
	set_iny tilemapFrameCount_30D, {(ptr_0),Y}
	set_iny byte_30E, {(ptr_0),Y}
	IF_A_NOT_EQUAL_CMP_ADDR tilemapFrameCount_30D, #$FF, loc_E7B1
	IF_A_EQUAL_CMP_ADDR tilemapFrameCount_30D, #$FF, loc_E7D3

loc_E7B1:
	ADD_WORD_TO_WORD byte_370, tilemapFrameCount_30D

	JSR	sub_E7F8
	or_byte byte_36F, tilemapFrameCount_30D
	JMP	loc_E797
; ---------------------------------------------------------------------------

loc_E7D3:
	and_byte byte_36F, tilemapFrameCount_30D
	INC	inv_spr_dscr1_30C
	IF_A_GREATER_CMP_ADDR inv_spr_dscr1_30C, tilemapTypeUnk_30B, loc_E787

loc_E7E7:
	from_stack_to_a inv_spr_dscr1_30C
	from_stack_to_a tilemapTypeUnk_30B
	from_stack_to_a ptr_1
	from_stack_to_a ptr_0
	from_stack_to_y
	RTS
; End of function sub_E747

; =============== S U B	R O U T	I N E =======================================

sub_E7F8:
	a_to_stack ptr_0
	a_to_stack ptr_1
	y_to_stack

	set_word_to_word_const ptr_0, byte_598

	ADD_WORD_TO_WORD ptr_0, tilemapFrameCount_30D

	LDY	#0
	set tilemapFrameCount_30D, {(ptr_0),Y}
	from_stack_to_y
	from_stack_to_a ptr_1
	from_stack_to_a ptr_0
	RTS
; End of function sub_E7F8

; =============== S U B	R O U T	I N E =======================================

sub_E827:
	a_to_stack ptr_0
	a_to_stack ptr_1
	y_to_stack

	set_word_to_word_const ptr_0, byte_598

	ADD_WORD_TO_WORD ptr_0, tilemapFrameCount_30D

	LDY	#0
	set {(ptr_0),Y}, #$FF
	from_stack_to_y
	from_stack_to_a ptr_1
	from_stack_to_a ptr_0
	RTS
; End of function sub_E827

; =============== S U B	R O U T	I N E =======================================

sub_E855:
	set_iny data_2, {(ptr_0),Y}
	set data_3, {(ptr_0),Y}
	JSR	sub_E8F8
	IF_A_EQUAL sprite_length_30F, loc_E867
	RTS
; ---------------------------------------------------------------------------

loc_E867:
	set byte_46F, entry_idx_300
	set byte_470, inv_spr_dscr1_30C
	LDY	#0
	set_iny entry_idx_300, {(data_2),Y}
	set_iny byte_4AD, {(data_2),Y}
	set_iny tilemap_size_307, {(data_2),Y}
	set_iny byte_4AE, {(data_2),Y}
	set_iny ppu_unk_byte_309, {(data_2),Y}
	set byte_313, {(data_2),Y}
	set ppu_unk_byte_302, tilemap_size_307
	set ppu_unk_byte_303, #0

loc_E8A3:
	IF_A_EQUAL_CMP_ADDR ppu_unk_byte_309, #0, loc_E8C1
	sub_byte_sec byte_4AE, #$F0 
	sub_byte ppu_unk_byte_309, #0
	INC	ppu_unk_byte_303
	JMP	loc_E8A3
; ---------------------------------------------------------------------------

loc_E8C1:
	IF_A_GREATER_CMP_ADDR byte_4AE, #$F0, loc_E8D1
	sub_a_sec #$F0 
	STA	byte_4AE
	INC	ppu_unk_byte_303

loc_E8D1:
	JSR	exec_b12_c9_EAB6
	set image_id_4A4, entry_idx_300
	set image_offset_4A5, ppu_unk_byte_302
	set ppu_prev_unk_4A6, ppu_unk_byte_303
	set3 ppu_prev_scroll_x_unk_4A7, ppu_prev_scroll_y_unk_4A8, prev_sprite_type_4A9, #0
	JSR	load_image_C6D2
	JSR	sub_EC96
	RTS
; End of function sub_E855

; =============== S U B	R O U T	I N E =======================================

sub_E8F8:
	a_to_stack data_2
	a_to_stack data_3
	set sprite_length_30F, #0
	IF_A_NOT_EQUAL_CMP_ADDR entry_idx_300, #$17, loc_E91D
	IF_A_NOT_EQUAL_CMP_ADDR inv_spr_dscr1_30C, #0, loc_E917
	JSR	sub_E9F2
	JMP	loc_E91D
; ---------------------------------------------------------------------------

loc_E917:
	JSR	sub_EA14
	JMP	loc_E91D
; ---------------------------------------------------------------------------

loc_E91D:
	from_stack_to_a data_3
	from_stack_to_a data_2
	RTS
; End of function sub_E8F8

nullsub_2:
	RTS

; =============== S U B	R O U T	I N E =======================================

get_func_ptr_and_jmp_E925:
	set_iny data_2, {(ptr_0),Y}
	set data_3, {(ptr_0),Y}
	JMP	(data_2)
	RTS
; End of function get_func_ptr_and_jmp_E925

; =============== S U B	R O U T	I N E =======================================

sub_E932:
	IF_A_NOT_EQUAL_CMP_ADDR byte_471, #0, loc_E949
	set_text_args #$BA, #0
	LDX	#1
	JSR	show_text_sequence_func_CF13
	RTS
; ---------------------------------------------------------------------------

loc_E949:
	set byte_47F, #0
	set byte_46D, #$1A
	RTS
; End of function sub_E932

; =============== S U B	R O U T	I N E =======================================

sub_E954:
	IF_A_NOT_EQUAL_CMP_ADDR byte_471, #0, loc_E968
	set_text_args #$B8, #0
	JSR	show_text_func_9132

loc_E968:
	set sprite_length_30F, #$FF
	RTS
; End of function sub_E954

; =============== S U B	R O U T	I N E =======================================

sub_E96E:
	IF_A_NOT_EQUAL_CMP_ADDR byte_471, #0, locret_E9B9
	IF_A_NOT_EQUAL_CMP_ADDR byte_554, #0, loc_E98F
	set_text_args #$BC, #0
	LDX	#1
	JSR	show_text_sequence_func_CF13
	INC	byte_554
	RTS
; ---------------------------------------------------------------------------

loc_E98F:
	IF_A_NOT_EQUAL_CMP #1, loc_E9A4
	set tilemapTypeUnk_30B, #6
	JSR	exec_b12_cD_EAD6
	IF_A_EQUAL sprite_length_30F, locret_E9B9
	INC	byte_554
	RTS
; ---------------------------------------------------------------------------

loc_E9A4:
	IF_A_NOT_EQUAL_CMP #2, locret_E9B9
	set tilemapTypeUnk_30B, #6
	JSR	exec_b12_cD_EAD6
	IF_A_EQUAL sprite_length_30F, locret_E9B9
	INC	byte_554
	RTS
; ---------------------------------------------------------------------------

locret_E9B9:
	RTS
; End of function sub_E96E

; =============== S U B	R O U T	I N E =======================================

sub_E9BA:
	IF_A_EQUAL_CMP_ADDR byte_471, #0, loc_E9C7
	set sprite_length_30F, #$FF
	RTS
; ---------------------------------------------------------------------------

loc_E9C7:
	IF_A_NOT_EQUAL_CMP_ADDR byte_54E, #2, loc_E9D7
	set byte_54E, #0
	JSR	sub_EA3C
	RTS
; ---------------------------------------------------------------------------

loc_E9D7:
	IF_A_NOT_EQUAL_CMP_ADDR byte_54E, #1, loc_E9EC
	set byte_54E, #0
	JSR	sub_D2B2
	set sprite_length_30F, #$FF
	RTS
; ---------------------------------------------------------------------------

loc_E9EC:
	set sprite_length_30F, #0
	RTS
; End of function sub_E9BA

; =============== S U B	R O U T	I N E =======================================

sub_E9F2:
	IF_A_EQUAL_CMP_ADDR byte_550, #$16, loc_E9FF
	set sprite_length_30F, #0
	RTS
; ---------------------------------------------------------------------------

loc_E9FF:
	set_text_args #$B5, #0
	LDX	#1
	JSR	show_text_sequence_func_CF13
	set sprite_length_30F, #$FF
	RTS
; End of function sub_E9F2

; =============== S U B	R O U T	I N E =======================================

sub_EA14:
	IF_A_EQUAL_CMP_ADDR byte_550, #$18, loc_EA21
	set sprite_length_30F, #0
	RTS
; ---------------------------------------------------------------------------

loc_EA21:
	set_text_args #$B6, #0
	LDX	#1
	JSR	show_text_sequence_func_CF13
	set sprite_length_30F, #$FF
	RTS
; End of function sub_EA14

; ---------------------------------------------------------------------------
	IF_A_NOT_EQUAL byte_5AB, locret_EA3B

locret_EA3B:
	RTS

; =============== S U B	R O U T	I N E =======================================

sub_EA3C:
	set tilemapTypeUnk_30B, #1
	JSR	sub_D0AD
	set byte_5AB, #1
	set byte_5AC, #0
	set byte_550, #$18
	set byte_551, #1
	set byte_5A4, #1
	set byte_5A5, #0
	set byte_5A6, #0
	set byte_54E, #3
	RTS
; End of function sub_EA3C

; =============== S U B	R O U T	I N E =======================================

exec_b12_c0_EA6D:
	set bank_command_346, #0
	JMP	exec_b12_comm_ECBE
; End of function exec_b12_c0_EA6D

; =============== S U B	R O U T	I N E =======================================

nullsub_5:
	RTS
; End of function nullsub_5

; =============== S U B	R O U T	I N E =======================================

exec_b12_c1_EA76:
	set bank_command_346, #1
	JMP	exec_b12_comm_ECBE
; End of function exec_b12_c1_EA76

; =============== S U B	R O U T	I N E =======================================

exec_b12_c2_EA7E:
	set bank_command_346, #2
	JMP	exec_b12_comm_ECBE
; End of function exec_b12_c2_EA7E

; =============== S U B	R O U T	I N E =======================================

exec_b12_c3_EA86:
	set bank_command_346, #3
	JMP	exec_b12_comm_ECBE
; End of function exec_b12_c3_EA86

; =============== S U B	R O U T	I N E =======================================

exec_b12_c4_EA8E:
	set bank_command_346, #4
	JMP	exec_b12_comm_ECBE
; End of function exec_b12_c4_EA8E

; =============== S U B	R O U T	I N E =======================================

exec_b12_c5_EA96:
	set bank_command_346, #5
	JMP	exec_b12_comm_ECBE
; End of function exec_b12_c5_EA96

; =============== S U B	R O U T	I N E =======================================

exec_b12_c6_EA9E:
	set bank_command_346, #6
	JMP	exec_b12_comm_ECBE
; End of function exec_b12_c6_EA9E

; =============== S U B	R O U T	I N E =======================================

exec_b12_c7_EAA6:
	set bank_command_346, #7
	JMP	exec_b12_comm_ECBE
; End of function exec_b12_c7_EAA6

; =============== S U B	R O U T	I N E =======================================

exec_b12_c8_EAAE:
	set bank_command_346, #8
	JMP	exec_b12_comm_ECBE
; End of function exec_b12_c8_EAAE

; =============== S U B	R O U T	I N E =======================================

exec_b12_c9_EAB6:
	set bank_command_346, #9
	JMP	exec_b12_comm_ECBE
; End of function exec_b12_c9_EAB6

; =============== S U B	R O U T	I N E =======================================

exec_b12_cA_EABE:
	set bank_command_346, #$A
	JMP	exec_b12_comm_ECBE
; End of function exec_b12_cA_EABE

; =============== S U B	R O U T	I N E =======================================

exec_b12_cB_EAC6:
	set bank_command_346, #$B
	JMP	exec_b12_comm_ECBE
; End of function exec_b12_cB_EAC6

; =============== S U B	R O U T	I N E =======================================

exec_b12_cC_EACE:
	set bank_command_346, #$C
	JMP	exec_b12_comm_ECBE
; End of function exec_b12_cC_EACE

; =============== S U B	R O U T	I N E =======================================

exec_b12_cD_EAD6:
	set bank_command_346, #$D
	JMP	exec_b12_comm_ECBE
; End of function exec_b12_cD_EAD6

; =============== S U B	R O U T	I N E =======================================

exec_b12_cE_EADE:
	set bank_command_346, #$E
	JMP	exec_b12_comm_ECBE
; End of function exec_b12_cE_EADE

; =============== S U B	R O U T	I N E =======================================

exec_b12_cF_EAE6:
	set bank_command_346, #$F
	JMP	exec_b12_comm_ECBE
; End of function exec_b12_cF_EAE6

; =============== S U B	R O U T	I N E =======================================

sub_EAEE:
	set bank_command_346, #$10
	JMP	exec_b12_comm_ECBE
; End of function sub_EAEE

; =============== S U B	R O U T	I N E =======================================

exec_b12_c11_EAF6:
	set bank_command_346, #$11
	JMP	exec_b12_comm_ECBE
; End of function exec_b12_c11_EAF6

; =============== S U B	R O U T	I N E =======================================

sub_EAFE:
	set bank_command_346, #$12
	JMP	exec_b12_comm_ECBE
; End of function sub_EAFE

; =============== S U B	R O U T	I N E =======================================

sub_EB06:
	set bank_command_346, #$13
	JMP	exec_b12_comm_ECBE
; End of function sub_EB06

; =============== S U B	R O U T	I N E =======================================

sub_EB0E:
	set bank_command_346, #$14
	JMP	exec_b12_comm_ECBE
; End of function sub_EB0E

; =============== S U B	R O U T	I N E =======================================

sub_EB16:
	set bank_command_346, #$15
	JMP	exec_b12_comm_ECBE
; End of function sub_EB16

; =============== S U B	R O U T	I N E =======================================

sub_EB1E:
	set bank_command_346, #$16
	JMP	exec_b12_comm_ECBE
; End of function sub_EB1E

; =============== S U B	R O U T	I N E =======================================

exec_b12_c17_EB26:
	set bank_command_346, #$17
	JMP	exec_b12_comm_ECBE
; End of function exec_b12_c17_EB26

; =============== S U B	R O U T	I N E =======================================

sub_EB2E:
	set bank_command_346, #$18
	JMP	exec_b12_comm_ECBE
; End of function sub_EB2E

; =============== S U B	R O U T	I N E =======================================

sub_EB36:
	set bank_command_346, #$19
	JMP	exec_b12_comm_ECBE
; End of function sub_EB36

; =============== S U B	R O U T	I N E =======================================

sub_EB3E:
	set bank_command_346, #$1A
	JMP	exec_b12_comm_ECBE
; End of function sub_EB3E

; =============== S U B	R O U T	I N E =======================================

sub_EB46:
	set bank_command_346, #$1B
	JMP	exec_b12_comm_ECBE
; End of function sub_EB46

; =============== S U B	R O U T	I N E =======================================

sub_EB4E:
	set bank_command_346, #$1C
	JMP	exec_b12_comm_ECBE
; End of function sub_EB4E

; =============== S U B	R O U T	I N E =======================================

sub_EB56:
	set bank_command_346, #$1D
	JMP	exec_b12_comm_ECBE
; End of function sub_EB56

; =============== S U B	R O U T	I N E =======================================

sub_EB5E:
	set bank_command_346, #$1E
	JMP	exec_b12_comm_ECBE
; End of function sub_EB5E

; =============== S U B	R O U T	I N E =======================================

sub_EB66:
	set bank_command_346, #$1F
	JMP	exec_b12_comm_ECBE
; End of function sub_EB66

; =============== S U B	R O U T	I N E =======================================

sub_EB6E:
	set bank_command_346, #$20 
	JMP	exec_b12_comm_ECBE
; End of function sub_EB6E

; =============== S U B	R O U T	I N E =======================================

sub_EB76:
	set bank_command_346, #$21 
	JMP	exec_b12_comm_ECBE
; End of function sub_EB76

; =============== S U B	R O U T	I N E =======================================

sub_EB7E:
	set bank_command_346, #$22 
	JMP	exec_b12_comm_ECBE
; End of function sub_EB7E

; =============== S U B	R O U T	I N E =======================================

sub_EB86:
	set bank_command_346, #$23 
	JMP	exec_b12_comm_ECBE
; End of function sub_EB86

; =============== S U B	R O U T	I N E =======================================

exec_b12_c24_EB8E:
	set bank_command_346, #$24 
	JMP	exec_b12_comm_ECBE
; End of function exec_b12_c24_EB8E

; =============== S U B	R O U T	I N E =======================================

sub_EB96:
	set bank_command_346, #$25 
	JMP	exec_b12_comm_ECBE
; End of function sub_EB96

; =============== S U B	R O U T	I N E =======================================

sub_EB9E:
	set bank_command_346, #$26 
	JMP	exec_b12_comm_ECBE
; End of function sub_EB9E

; =============== S U B	R O U T	I N E =======================================

sub_EBA6:
	set bank_command_346, #$27 
	JMP	exec_b12_comm_ECBE
; End of function sub_EBA6

; =============== S U B	R O U T	I N E =======================================

sub_EBAE:
	set bank_command_346, #$28 
	JMP	exec_b12_comm_ECBE
; End of function sub_EBAE

; =============== S U B	R O U T	I N E =======================================

sub_EBB6:
	set bank_command_346, #$2A 
	JMP	exec_b12_comm_ECBE
; End of function sub_EBB6

; =============== S U B	R O U T	I N E =======================================

sub_EBBE:
	set bank_command_346, #$2B 
	JMP	exec_b12_comm_ECBE
; End of function sub_EBBE

; =============== S U B	R O U T	I N E =======================================

sub_EBC6:
	set bank_command_346, #$2C 
	JMP	exec_b12_comm_ECBE
; End of function sub_EBC6

; =============== S U B	R O U T	I N E =======================================

sub_EBCE:
	set bank_command_346, #$2D 
	JMP	exec_b12_comm_ECBE
; End of function sub_EBCE

; =============== S U B	R O U T	I N E =======================================

sub_EBD6:
	set bank_command_346, #$2E 
	JMP	exec_b12_comm_ECBE
; End of function sub_EBD6

; =============== S U B	R O U T	I N E =======================================

sub_EBDE:
	set bank_command_346, #$2F 
	JMP	exec_b12_comm_ECBE
; End of function sub_EBDE

; =============== S U B	R O U T	I N E =======================================

sub_EBE6:
	set bank_command_346, #$30 
	JMP	exec_b12_comm_ECBE
; End of function sub_EBE6

; =============== S U B	R O U T	I N E =======================================

sub_EBEE:
	set bank_command_346, #$31 
	JMP	exec_b12_comm_ECBE
; End of function sub_EBEE

; =============== S U B	R O U T	I N E =======================================

sub_EBF6:
	set bank_command_346, #$32 
	JMP	exec_b12_comm_ECBE
; End of function sub_EBF6

; =============== S U B	R O U T	I N E =======================================

sub_EBFE:
	set bank_command_346, #$33 
	JMP	exec_b12_comm_ECBE
; End of function sub_EBFE

; =============== S U B	R O U T	I N E =======================================

sub_EC06:
	set bank_command_346, #$34 
	JMP	exec_b12_comm_ECBE
; End of function sub_EC06

; =============== S U B	R O U T	I N E =======================================

sub_EC0E:
	set bank_command_346, #$35 
	JMP	exec_b12_comm_ECBE
; End of function sub_EC0E

; =============== S U B	R O U T	I N E =======================================

sub_EC16:
	set bank_command_346, #$36 
	JMP	exec_b12_comm_ECBE
; End of function sub_EC16

; =============== S U B	R O U T	I N E =======================================

sub_EC1E:
	set bank_command_346, #$37 
	JMP	exec_b12_comm_ECBE
; End of function sub_EC1E

; =============== S U B	R O U T	I N E =======================================

sub_EC26:
	set bank_command_346, #$38 
	JMP	exec_b12_comm_ECBE
; End of function sub_EC26

; =============== S U B	R O U T	I N E =======================================

sub_EC2E:
	set bank_command_346, #$39 
	JMP	exec_b12_comm_ECBE
; End of function sub_EC2E

; =============== S U B	R O U T	I N E =======================================

sub_EC36:
	set bank_command_346, #$3A 
	JMP	exec_b12_comm_ECBE
; End of function sub_EC36

; =============== S U B	R O U T	I N E =======================================

sub_EC3E:
	set bank_command_346, #$3B 
	JMP	exec_b12_comm_ECBE
; End of function sub_EC3E

; =============== S U B	R O U T	I N E =======================================

sub_EC46:
	set bank_command_346, #$3C 
	JMP	exec_b12_comm_ECBE
; End of function sub_EC46

; =============== S U B	R O U T	I N E =======================================

sub_EC4E:
	set bank_command_346, #$3D 
	JMP	exec_b12_comm_ECBE
; End of function sub_EC4E

; =============== S U B	R O U T	I N E =======================================

sub_EC56:
	set bank_command_346, #$3E 
	JMP	exec_b12_comm_ECBE
; End of function sub_EC56

; =============== S U B	R O U T	I N E =======================================

sub_EC5E:
	set bank_command_346, #$3F 
	JMP	exec_b12_comm_ECBE
; End of function sub_EC5E

; =============== S U B	R O U T	I N E =======================================

sub_EC66:
	set bank_command_346, #$40 
	JMP	exec_b12_comm_ECBE
; End of function sub_EC66

; =============== S U B	R O U T	I N E =======================================

sub_EC6E:
	set bank_command_346, #$41 
	JMP	exec_b12_comm_ECBE
; End of function sub_EC6E

; =============== S U B	R O U T	I N E =======================================

sub_EC76:
	set bank_command_346, #$42 
	JMP	exec_b12_comm_ECBE
; End of function sub_EC76

; =============== S U B	R O U T	I N E =======================================

sub_EC7E:
	set bank_command_346, #$43 
	JMP	exec_b12_comm_ECBE
; End of function sub_EC7E

; =============== S U B	R O U T	I N E =======================================

sub_EC86:
	set bank_command_346, #$44 
	JMP	exec_b12_comm_ECBE
; End of function sub_EC86

; =============== S U B	R O U T	I N E =======================================

exec_b12_c45_EC8E:
	set bank_command_346, #$45 
	JMP	exec_b12_comm_ECBE
; End of function exec_b12_c45_EC8E

; =============== S U B	R O U T	I N E =======================================

sub_EC96:
	set bank_command_346, #$46 
	JMP	exec_b12_comm_ECBE
; End of function sub_EC96

; =============== S U B	R O U T	I N E =======================================

sub_EC9E:
	set bank_command_346, #$47 
	JMP	exec_b12_comm_ECBE
; End of function sub_EC9E

; =============== S U B	R O U T	I N E =======================================

exec_b12_com48_ECA6:
	set bank_command_346, #$48 
	JMP	exec_b12_comm_ECBE
; ---------------------------------------------------------------------------
	set bank_command_346, #$49 
	JMP	exec_b12_comm_ECBE
; ---------------------------------------------------------------------------

exec_b12_c4A_ECB6:
	set bank_command_346, #$4A 
	JMP	exec_b12_comm_ECBE
; ---------------------------------------------------------------------------

exec_b12_comm_ECBE:
	set bank_to_344, #banks_12
	set bank_from_343, #0
	JSR	bank_switch_8000
	RTS
; End of function exec_b12_com48_ECA6

; =============== S U B	R O U T	I N E =======================================

sub_ECCC:
	JSR	sub_ED7C
	LDX	ppu_unk_byte_302
	LDY	ppu_unk_byte_303
	JSR	sub_EDB1
	JSR	sub_ED8F
	JSR	sub_EDA2
	LDX	ppu_unk_byte_302
	LDY	ppu_unk_byte_303
	set tilemapTypeUnk_30B, #3
	sub_addr_sec #$20 , tilemap_size_307
	STA	tilemapWidth_308
	sub_addr_sec #$1E, ppu_unk_byte_309
	STA	tilemapHeight_30A
	JSR	sub_EDD6
	LDX	ppu_unk_byte_302
	INX
	LDY	ppu_unk_byte_303
	JSR	sub_EDB1
	JSR	sub_ED8F
	LDX	ppu_unk_byte_302
	INX
	LDY	ppu_unk_byte_303
	set tilemapTypeUnk_30B, #2
	set tilemapWidth_308, tilemap_size_307
	sub_addr_sec #$1E, ppu_unk_byte_309
	STA	tilemapHeight_30A
	JSR	sub_EDD6
	LDX	ppu_unk_byte_302
	LDY	ppu_unk_byte_303
	INY
	JSR	sub_EDB1
	JSR	sub_EDA2
	LDX	ppu_unk_byte_302
	LDY	ppu_unk_byte_303
	INY
	set tilemapTypeUnk_30B, #1
	sub_addr_sec #$20 , tilemap_size_307
	STA	tilemapWidth_308
	set tilemapHeight_30A, ppu_unk_byte_309
	JSR	sub_EDD6
	LDX	ppu_unk_byte_302
	INX
	LDY	ppu_unk_byte_303
	INY
	JSR	sub_EDB1
	LDX	ppu_unk_byte_302
	INX
	LDY	ppu_unk_byte_303
	INY
	set tilemapTypeUnk_30B, #0
	set tilemapWidth_308, tilemap_size_307
	set tilemapHeight_30A, ppu_unk_byte_309
	JSR	sub_EDD6
	RTS
; End of function sub_ECCC

; =============== S U B	R O U T	I N E =======================================

sub_ED7C:
	div_a_by_8_addr ppu_scroll_y_305
	STA	ppu_unk_byte_309
	div_a_by_8_addr ppu_scroll_x_304
	STA	tilemap_size_307
	RTS
; End of function sub_ED7C

; =============== S U B	R O U T	I N E =======================================

sub_ED8F:
	y_to_stack
	LDY	ppu_unk_byte_309

loc_ED94:
	IF_Y_EQUAL_CMP #0, loc_ED9F
	JSR	sub_F194
	DEY
	JMP	loc_ED94
; ---------------------------------------------------------------------------

loc_ED9F:
	from_stack_to_y
	RTS
; End of function sub_ED8F

; =============== S U B	R O U T	I N E =======================================

sub_EDA2:
	ADD_BYTE_TO_WORD data_2, tilemap_size_307

	RTS
; End of function sub_EDA2

; =============== S U B	R O U T	I N E =======================================

sub_EDB1:
	TYA
	AND	#1
	BEQ	loc_EDC1
	set data_2, #0
	set data_3, #$28 
	JMP	loc_EDC9
; ---------------------------------------------------------------------------

loc_EDC1:
	set data_2, #0
	set data_3, #$20 

loc_EDC9:
	TXA
	AND	#1
	BEQ	locret_EDD5
	ADD_BYTE_TO_BYTE_CLC data_3, #4

locret_EDD5:
	RTS
; End of function sub_EDB1

; =============== S U B	R O U T	I N E =======================================

sub_EDD6:
	IF_A_EQUAL tilemapHeight_30A, exit_EDE3
	IF_A_EQUAL tilemapWidth_308, exit_EDE3
	JMP	loc_EDE4
; ---------------------------------------------------------------------------

exit_EDE3:
	RTS
; ---------------------------------------------------------------------------

loc_EDE4:
	a_to_stack ppu_unk_byte_309
	a_to_stack tilemap_size_307
	IF_A_NOT_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #3, next_check_EDF6
	JMP	start_read_tilemap_EE1C
; ---------------------------------------------------------------------------

next_check_EDF6:
	IF_A_NOT_EQUAL_CMP #2, next_check_EE02
	set tilemap_size_307, #0
	JMP	start_read_tilemap_EE1C
; ---------------------------------------------------------------------------

next_check_EE02:
	IF_A_NOT_EQUAL_CMP #1, next_check_EE0E
	set ppu_unk_byte_309, #0
	JMP	start_read_tilemap_EE1C
; ---------------------------------------------------------------------------

next_check_EE0E:
	IF_A_NOT_EQUAL_CMP #0, start_read_tilemap_EE1C
	set ppu_unk_byte_309, #0
	set tilemap_size_307, #0

start_read_tilemap_EE1C:
	set tilemapData_4C, entry_idx_300
	STX	room_pos_x_4D
	STY	room_pos_y_4E
	set tilemap_line_idx_4F, ppu_unk_byte_309
	set mapLineSize_50, tilemap_size_307
	set tilemap_line_size_51, #$20 
	set mapLineWidth_52, tilemapWidth_308
	set mapLineHeight_53, #1
	JSR	tilemap_read_next_chunk_F472

start_upload_ppu_EE3F:
	set _PPU_ADDR, data_3
	set _PPU_ADDR, data_2

	y_to_stack
	LDY	#0
write_tilemap_to_ppu_EE4D:
	set_iny _PPU_DATA, {tilemapData_4C,Y}
	IF_Y_GREATER_CMP tilemapWidth_308, write_tilemap_to_ppu_EE4D
	from_stack_to_y
	
	INC	ppu_unk_byte_309
	JSR	sub_F194
	DEC	tilemapHeight_30A
	IF_A_NOT_EQUAL tilemapHeight_30A, start_read_tilemap_EE1C
	from_stack_to_a tilemap_size_307
	from_stack_to_a ppu_unk_byte_309
	RTS
; End of function sub_EDD6

; =============== S U B	R O U T	I N E =======================================

sub_EE72:
	JSR	sub_ED7C
	div_byte_by_4 ppu_unk_byte_309
	div_byte_by_4 tilemap_size_307
	sub_addr_sec #8, tilemap_size_307
	STA	tilemapWidth_308
	sub_addr_sec #8, ppu_unk_byte_309
	STA	tilemapHeight_30A
	LDX	tilemap_size_307
	a_to_stack ppu_unk_byte_309

loc_EE9A:
	x_to_stack

start_read_tilemap_EE9C:
	set tilemapData_4C, entry_idx_300
	set room_pos_x_4D, ppu_unk_byte_302
	set room_pos_y_4E, ppu_unk_byte_303
	set tilemap_line_idx_4F, ppu_unk_byte_309
	set mapLineSize_50, tilemap_size_307
	set tilemap_line_size_51, #8
	set mapLineWidth_52, tilemapWidth_308
	set mapLineHeight_53, #1
	JSR	tilemap_read_next_chunk_F472

	LDY	#0
loc_EEC7:
	set_inx {byte_4,X}, {tilemapData_4C,Y}
	INY
	IF_Y_GREATER_CMP tilemapWidth_308, loc_EEC7
	PLA
	ADD_TO_A #8
	TAX
	INC	ppu_unk_byte_309
	DEC	tilemapHeight_30A
	IF_A_NOT_EQUAL tilemapHeight_30A, loc_EE9A
	from_stack_to_a ppu_unk_byte_309
	IF_A_NOT_EQUAL ppu_scroll_x_304, loc_EEEF
	JMP	loc_EF71
; ---------------------------------------------------------------------------

loc_EEEF:
	set tilemapWidth_308, tilemap_size_307
	sub_addr_sec #8, ppu_unk_byte_309
	STA	tilemapHeight_30A
	LDX	#0
	a_to_stack ppu_unk_byte_309

loc_EF04:
	x_to_stack

start_read_tilemap_EF06:
	set tilemapData_4C, entry_idx_300
	ADD_BYTE_TO_BYTE_CLC_IMM room_pos_x_4D, ppu_unk_byte_302, #1
	set room_pos_y_4E, ppu_unk_byte_303
	set tilemap_line_idx_4F, ppu_unk_byte_309
	set mapLineSize_50, #0
	set tilemap_line_size_51, #8
	ADD_BYTE_TO_BYTE_CLC_IMM mapLineWidth_52, tilemapWidth_308, #1
	set mapLineHeight_53, #1
	JSR	tilemap_read_next_chunk_F472

	LDY	#0
loc_EF36:
	IF_Y_EQUAL_CMP tilemapWidth_308, loc_EF45
	set_inx {byte_4,X}, {tilemapData_4C,Y}
	INY
	JMP	loc_EF36
; ---------------------------------------------------------------------------

loc_EF45:
	load_a_masked ppu_scroll_x_304, #$1F
	BEQ	loc_EF5D
	load_a_masked {tilemapData_4C,Y}, #$33 
	STA	tilemapTypeUnk_30B
	load_a_masked {byte_4,X}, #$CC 
	ORA	tilemapTypeUnk_30B
	STA	byte_4,X

loc_EF5D:
	PLA
	ADD_TO_A #8
	TAX
	INC	ppu_unk_byte_309
	DEC	tilemapHeight_30A
	IF_A_NOT_EQUAL tilemapHeight_30A, loc_EF04
	from_stack_to_a ppu_unk_byte_309

loc_EF71:
	IF_A_NOT_EQUAL_CMP_ADDR ppu_scroll_y_305, #0, loc_EF7B
	JMP	locret_F09C
; ---------------------------------------------------------------------------

loc_EF7B:
	sub_addr_sec #8, tilemap_size_307
	STA	tilemapWidth_308
	set tilemapHeight_30A, ppu_unk_byte_309
	load_a_masked ppu_scroll_y_305, #$1F
	BEQ	loc_EF94
	INC	tilemapHeight_30A

loc_EF94:
	sub_addr_sec #8, ppu_unk_byte_309
	mult_a_by_8
	ADD_TO_A tilemap_size_307
	TAX
	a_to_stack ppu_unk_byte_309
	set ppu_unk_byte_309, #0

loc_EFAB:
	x_to_stack

start_read_tilemap_EFAD:
	set tilemapData_4C, entry_idx_300
	set room_pos_x_4D, ppu_unk_byte_302
	ADD_BYTE_TO_BYTE_CLC_IMM room_pos_y_4E, ppu_unk_byte_303, #1
	set tilemap_line_idx_4F, ppu_unk_byte_309
	set mapLineSize_50, tilemap_size_307
	set tilemap_line_size_51, #8
	set mapLineWidth_52, tilemapWidth_308
	set mapLineHeight_53, #1
	JSR	tilemap_read_next_chunk_F472

	LDY	#0
loc_EFDB:
	set_inx {byte_4,X}, {tilemapData_4C,Y}
	INY
	IF_Y_GREATER_CMP tilemapWidth_308, loc_EFDB
	PLA
	ADD_TO_A #8
	TAX
	INC	ppu_unk_byte_309
	DEC	tilemapHeight_30A
	IF_A_NOT_EQUAL tilemapHeight_30A, loc_EFAB
	from_stack_to_a ppu_unk_byte_309
	IF_A_NOT_EQUAL ppu_scroll_x_304, loc_F003
	JMP	locret_F09C
; ---------------------------------------------------------------------------

loc_F003:
	set tilemapWidth_308, tilemap_size_307
	set tilemapHeight_30A, ppu_unk_byte_309
	load_a_masked ppu_scroll_y_305, #$1F
	BEQ	loc_F019
	INC	tilemapHeight_30A

loc_F019:
	sub_addr_sec #8, ppu_unk_byte_309
	mult_a_by_8
	TAX
	a_to_stack ppu_unk_byte_309
	set ppu_unk_byte_309, #0

loc_F02C:
	x_to_stack

start_read_tilemap_F02E:
	set tilemapData_4C, entry_idx_300
	ADD_BYTE_TO_BYTE_CLC_IMM room_pos_x_4D, ppu_unk_byte_302, #1
	ADD_BYTE_TO_BYTE_CLC_IMM room_pos_y_4E, ppu_unk_byte_303, #1
	set tilemap_line_idx_4F, ppu_unk_byte_309
	set mapLineSize_50, #0
	set tilemap_line_size_51, #8
	ADD_BYTE_TO_BYTE_CLC_IMM mapLineWidth_52, tilemapWidth_308, #1
	set mapLineHeight_53, #1
	JSR	tilemap_read_next_chunk_F472

	LDY	#0
loc_F061:
	IF_Y_EQUAL_CMP tilemapWidth_308, loc_F070
	set_inx {byte_4,X}, {tilemapData_4C,Y}
	INY
	JMP	loc_F061
; ---------------------------------------------------------------------------

loc_F070:
	load_a_masked ppu_scroll_x_304, #$1F
	BEQ	loc_F088
	load_a_masked {tilemapData_4C,Y}, #$33 
	STA	tilemapTypeUnk_30B
	load_a_masked {byte_4,X}, #$CC 
	ORA	tilemapTypeUnk_30B
	STA	byte_4,X

loc_F088:
	PLA
	ADD_TO_A #8
	TAX
	INC	ppu_unk_byte_309
	DEC	tilemapHeight_30A
	IF_A_NOT_EQUAL tilemapHeight_30A, loc_F02C
	from_stack_to_a ppu_unk_byte_309

locret_F09C:
	RTS
; End of function sub_EE72

; =============== S U B	R O U T	I N E =======================================

ppu_unk_func_F09D:
	load_a_masked ppu_unk_byte_303, #1
	IF_A_EQUAL_CMP #1, loc_F0B9

	set_word_to_word_const ptr_0, _PPU_ATTR_TBL_0
	set_word_to_word_const data_2, _PPU_ATTR_TBL_1

	JMP	loc_F0C9
; ---------------------------------------------------------------------------

loc_F0B9:
	set_word_to_word_const data_2, _PPU_ATTR_TBL_0
	set_word_to_word_const ptr_0, _PPU_ATTR_TBL_1

loc_F0C9:
	load_a_masked ppu_unk_byte_302, #1
	IF_A_NOT_EQUAL_CMP #1, loc_F0E0
	ADD_BYTE_TO_BYTE_CLC ptr_1, #4
	ADD_BYTE_TO_BYTE_CLC data_3, #4

loc_F0E0:
	div_a_by_8_addr ppu_scroll_y_305
	STA	ppu_unk_byte_309
	div_a_by_4
	STA	tilemapHeight_30A
	mult_a_by_8
	ADD_TO_A ptr_0
	STA	ptr_0
	ADD_BYTE_TO_BYTE ptr_1, #0

	sub_addr_sec #8, tilemapHeight_30A
	STA	inv_spr_dscr1_30C
	mult_byte_by_8 inv_spr_dscr1_30C
	load_a_masked ppu_unk_byte_309, #3
	IF_A_EQUAL_CMP #0, loc_F11A
	INC	tilemapHeight_30A

loc_F11A:
	mult_byte_by_8 tilemapHeight_30A
	set tilemapTypeUnk_30B, #1
	IF_A_EQUAL_CMP_ADDR ppu_scroll_y_305, #0, loc_F134
	set tilemapTypeUnk_30B, #2

loc_F134:
	set has_ppu_data_to_upload_6F, #0
	LDX	#0
	set_inx {ppu_data_70,X}, tilemapTypeUnk_30B
	set_inx {ppu_data_70,X}, inv_spr_dscr1_30C
	set_inx {ppu_data_70,X}, ptr_1
	set_inx {ppu_data_70,X}, ptr_0
	LDY	#0

loc_F152:
	set_inx {ppu_data_70,X}, {byte_4,Y}
	INY
	IF_Y_GREATER_CMP inv_spr_dscr1_30C, loc_F152
	IF_A_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #1, set_ppu_upload_flag_F18B
	set_inx {ppu_data_70,X}, tilemapHeight_30A
	set_inx {ppu_data_70,X}, data_3
	set_inx {ppu_data_70,X}, data_2
	ADD_BYTE_TO_BYTE_CLC tilemapHeight_30A, inv_spr_dscr1_30C

loc_F17F:
	set_inx {ppu_data_70,X}, {byte_4,Y}
	INY
	IF_Y_GREATER_CMP tilemapHeight_30A, loc_F17F

set_ppu_upload_flag_F18B:
	set has_ppu_data_to_upload_6F, #1

wait_for_ppu_finished_F18F:
	IF_A_NOT_EQUAL has_ppu_data_to_upload_6F, wait_for_ppu_finished_F18F
	RTS
; End of function ppu_unk_func_F09D

; =============== S U B	R O U T	I N E =======================================

sub_F194:
	ADD_WORD_TO_WORD_IMM data_2, $20

	RTS
; End of function sub_F194

; =============== S U B	R O U T	I N E =======================================

sub_F1A2:
	JSR	sub_ED7C
	JSR	sub_F42F
	sub_addr_sec #$20 , tilemap_size_307
	STA	tilemapTypeUnk_30B

start_read_tilemap_F1B1:
	set tilemapData_4C, entry_idx_300
	STX	room_pos_x_4D
	STY	room_pos_y_4E
	set tilemap_line_idx_4F, ppu_unk_byte_309
	set mapLineSize_50, tilemap_size_307
	set tilemap_line_size_51, #$20 
	set mapLineWidth_52, tilemapTypeUnk_30B
	set mapLineHeight_53, #1
	JSR	tilemap_read_next_chunk_F472

	JSR	sub_F504
	JSR	sub_ED8F
	JSR	sub_EDA2
	LDX	#0
	set_inx ppu_data_70, #0
	JSR	sub_F51D
	IF_A_EQUAL ppu_scroll_x_304, loc_F228
	x_to_stack
	JSR	sub_ED7C
	JSR	sub_F42F
	set tilemapTypeUnk_30B, tilemap_size_307

start_read_tilemap_F1FA:
	set_inx tilemapData_4C, entry_idx_300
	STX	room_pos_x_4D
	STY	room_pos_y_4E
	set tilemap_line_idx_4F, ppu_unk_byte_309
	set mapLineSize_50, #0
	set tilemap_line_size_51, #$20 
	set mapLineWidth_52, tilemapTypeUnk_30B
	set mapLineHeight_53, #1
	JSR	tilemap_read_next_chunk_F472

	JSR	sub_F504
	JSR	sub_ED8F
	from_stack_to_x
	JSR	sub_F51D

loc_F228:
	x_to_stack
	JSR	sub_ED7C
	JSR	sub_F42F
	JSR	sub_F5A2
	sub_addr_sec #8, tilemap_size_307
	STA	tilemapTypeUnk_30B

start_read_tilemap_F23C:
	set tilemapData_4C, entry_idx_300
	STX	room_pos_x_4D
	STY	room_pos_y_4E
	set tilemap_line_idx_4F, ppu_unk_byte_309
	set mapLineSize_50, tilemap_size_307
	set tilemap_line_size_51, #8
	set mapLineWidth_52, tilemapTypeUnk_30B
	set mapLineHeight_53, #1
	JSR	tilemap_read_next_chunk_F472

	JSR	sub_F504
	JSR	sub_F57B
	JSR	sub_F589
	JSR	sub_EDA2
	from_stack_to_x
	JSR	sub_F51D
	IF_A_EQUAL ppu_scroll_x_304, loc_F2E0
	x_to_stack
	JSR	sub_ED7C
	JSR	sub_F42F
	JSR	sub_F5A2
	set tilemapTypeUnk_30B, tilemap_size_307
	load_a_masked ppu_scroll_x_304, #$1F
	BEQ	start_read_tilemap_F290
	INC	tilemapTypeUnk_30B

start_read_tilemap_F290:
	set_inx tilemapData_4C, entry_idx_300
	STX	room_pos_x_4D
	STY	room_pos_y_4E
	set tilemap_line_idx_4F, ppu_unk_byte_309
	set mapLineSize_50, #0
	set tilemap_line_size_51, #8
	set mapLineWidth_52, tilemapTypeUnk_30B
	set mapLineHeight_53, #1
	JSR	tilemap_read_next_chunk_F472

	JSR	sub_F504
	JSR	sub_F57B
	JSR	sub_F589
	from_stack_to_x
	JSR	sub_F51D
	load_a_masked ppu_scroll_x_304, #$1F
	BEQ	loc_F2E0
	DEX
	load_a_masked {ppu_data_70,X}, #$33 
	STA	tilemapTypeUnk_30B
	TXA
	TAY
	sub_a_sec #$B
	TAX
	load_a_masked {ppu_data_70,X}, #$CC 
	ORA	tilemapTypeUnk_30B
	STA	ppu_data_70,Y

loc_F2E0:
	JSR	wait_for_ppu_data_upload_FC8C
	RTS
; End of function sub_F1A2

; =============== S U B	R O U T	I N E =======================================

sub_F2E4:
	JSR	sub_ED7C
	JSR	sub_F42F
	sub_addr_sec #$1E, ppu_unk_byte_309
	STA	tilemapTypeUnk_30B

start_read_tilemap_F2F3:
	set tilemapData_4C, entry_idx_300
	STX	room_pos_x_4D
	STY	room_pos_y_4E
	set tilemap_line_idx_4F, ppu_unk_byte_309
	set mapLineSize_50, tilemap_size_307
	set tilemap_line_size_51, #$20 
	set mapLineWidth_52, tilemapTypeUnk_30B
	set mapLineHeight_53, #$20 
	JSR	tilemap_read_next_chunk_F472

	JSR	sub_F504
	JSR	sub_ED8F
	JSR	sub_EDA2
	LDX	#0
	set_inx ppu_data_70, #0
	or_byte tilemapTypeUnk_30B, #$80 
	JSR	sub_F51D
	IF_A_EQUAL ppu_scroll_y_305, loc_F37A
	x_to_stack
	JSR	sub_ED7C
	JSR	sub_F42F
	set tilemapTypeUnk_30B, ppu_unk_byte_309

start_read_tilemap_F344:
	set tilemapData_4C, entry_idx_300
	STX	room_pos_x_4D
	INY
	STY	room_pos_y_4E
	set tilemap_line_idx_4F, #0
	set mapLineSize_50, tilemap_size_307
	set tilemap_line_size_51, #$20 
	set mapLineWidth_52, tilemapTypeUnk_30B
	set mapLineHeight_53, #$20 
	JSR	tilemap_read_next_chunk_F472

	JSR	sub_F504
	JSR	sub_EDA2
	from_stack_to_x
	or_byte tilemapTypeUnk_30B, #$80 
	JSR	sub_F51D

loc_F37A:
	JSR	wait_for_ppu_data_upload_FC8C
	RTS
; End of function sub_F2E4

; =============== S U B	R O U T	I N E =======================================

sub_F37E:
	JSR	sub_ED7C
	JSR	sub_F42F
	JSR	sub_F5A2
	sub_addr_sec #8, ppu_unk_byte_309
	STA	tilemapTypeUnk_30B

start_read_tilemap_F390:
	set tilemapData_4C, entry_idx_300
	STX	room_pos_x_4D
	STY	room_pos_y_4E
	set tilemap_line_idx_4F, ppu_unk_byte_309
	set mapLineSize_50, tilemap_size_307
	set tilemap_line_size_51, #8
	set mapLineWidth_52, tilemapTypeUnk_30B
	set mapLineHeight_53, #8
	JSR	tilemap_read_next_chunk_F472

	set inv_spr_dscr1_30C, ppu_unk_byte_309
	JSR	sub_F5AF
	JSR	sub_F504
	JSR	sub_F57B
	JSR	sub_F589
	JSR	sub_EDA2
	LDX	#0
	set_inx ppu_data_70, #0
	JSR	sub_F54A
	IF_A_EQUAL ppu_scroll_y_305, loc_F42B
	x_to_stack
	JSR	sub_ED7C
	JSR	sub_F42F
	JSR	sub_F5A2
	set tilemapTypeUnk_30B, ppu_unk_byte_309
	load_a_masked ppu_scroll_y_305, #$1F
	BEQ	start_read_tilemap_F3F2
	INC	tilemapTypeUnk_30B

start_read_tilemap_F3F2:
	set_iny tilemapData_4C, entry_idx_300
	STX	room_pos_x_4D
	STY	room_pos_y_4E
	set tilemap_line_idx_4F, #0
	set mapLineSize_50, tilemap_size_307
	set tilemap_line_size_51, #8
	set mapLineWidth_52, tilemapTypeUnk_30B
	set mapLineHeight_53, #8
	JSR	tilemap_read_next_chunk_F472

	set inv_spr_dscr1_30C, #0
	JSR	sub_F5AF
	JSR	sub_F504
	JSR	sub_F57B
	JSR	sub_EDA2
	from_stack_to_x
	JSR	sub_F54A

loc_F42B:
	JSR	wait_for_ppu_data_upload_FC8C
	RTS
; End of function sub_F37E

; =============== S U B	R O U T	I N E =======================================

sub_F42F:
	LDX	ppu_unk_byte_302
	LDY	ppu_unk_byte_303
	IF_A_NOT_EQUAL_CMP_ADDR byte_313, #0, loc_F44D
	IF_A_NOT_EQUAL ppu_unk_byte_309, loc_F447
	DEY
	set ppu_unk_byte_309, #$1E

loc_F447:
	DEC	ppu_unk_byte_309
	JMP	locret_F471
; ---------------------------------------------------------------------------

loc_F44D:
	IF_A_NOT_EQUAL_CMP #1, loc_F455
	INY
	JMP	locret_F471
; ---------------------------------------------------------------------------

loc_F455:
	IF_A_NOT_EQUAL_CMP #2, loc_F46C
	IF_A_NOT_EQUAL_CMP_ADDR tilemap_size_307, #0, loc_F466
	DEX
	set tilemap_size_307, #$20 

loc_F466:
	DEC	tilemap_size_307
	JMP	locret_F471
; ---------------------------------------------------------------------------

loc_F46C:
	IF_A_NOT_EQUAL_CMP #3, locret_F471
	INX

locret_F471:
	RTS
; End of function sub_F42F

; =============== S U B	R O U T	I N E =======================================

tilemap_read_next_chunk_F472:
	x_to_stack
	y_to_stack
	a_to_stack ptr_0
	a_to_stack ptr_1
	a_to_stack data_2
	a_to_stack data_3
	a_to_stack entry_idx_300

	GET_PTR_FROM_TBL tilemap_entries_C000, entry_idx_300

read_tilemap_sizes_F4B3:
	READ_WORD tilemaps_horiz_count_311, {(data_2),Y}

	LDA	#0
	LDY	room_pos_y_4E
add_offset_F4C4:
	IF_Y_EQUAL_CMP #0, next_F4D0
	ADD_TO_A tilemaps_horiz_count_311
	DEY
	JMP	add_offset_F4C4
; ---------------------------------------------------------------------------

next_F4D0:
	ADD_TO_A room_pos_x_4D
	mult_a_by_2
	TAY

	INY
	INY

read_tilemap_from_bank_F4D7:
	set_iny bank_to_344, {(data_2),Y}
	set entry_idx_300, {(data_2),Y}
	set bank_command_346, #0
	set bank_from_343, #0
	JSR	bank_switch_8000

exitFunc_F4EF:
	from_stack_to_a entry_idx_300
	from_stack_to_a data_3
	from_stack_to_a data_2
	from_stack_to_a ptr_1
	from_stack_to_a ptr_0
	from_stack_to_y
	from_stack_to_x
	RTS
; End of function tilemap_read_next_chunk_F472

; =============== S U B	R O U T	I N E =======================================

sub_F504:
	TYA
	AND	#1
	BEQ	loc_F514
	set data_2, #0
	set data_3, #$28 
	JMP	locret_F51C
; ---------------------------------------------------------------------------

loc_F514:
	set data_2, #0
	set data_3, #$20 

locret_F51C:
	RTS
; End of function sub_F504

; =============== S U B	R O U T	I N E =======================================

sub_F51D:
	y_to_stack
	INC	ppu_data_70
	set_inx {ppu_data_70,X}, tilemapTypeUnk_30B
	set_inx {ppu_data_70,X}, data_3
	set_inx {ppu_data_70,X}, data_2
	and_byte tilemapTypeUnk_30B, #$7F 
	LDY	#0

loc_F53B:
	set_inx {ppu_data_70,X}, {tilemapData_4C,Y}
	INY
	IF_Y_GREATER_CMP tilemapTypeUnk_30B, loc_F53B
	from_stack_to_y
	RTS
; End of function sub_F51D

; =============== S U B	R O U T	I N E =======================================

sub_F54A:
	y_to_stack
	LDY	#0

loc_F54E:
	INC	ppu_data_70
	set_inx {ppu_data_70,X}, #1
	set_inx {ppu_data_70,X}, data_3
	set_inx {ppu_data_70,X}, data_2
	set {ppu_data_70,X}, {tilemapData_4C,Y}

	ADD_WORD_TO_WORD_IMM data_2, $8
	
	INX
	INY
	IF_Y_GREATER_CMP tilemapTypeUnk_30B, loc_F54E
	from_stack_to_y
	RTS
; End of function sub_F54A

; =============== S U B	R O U T	I N E =======================================

sub_F57B:
	ADD_WORD_TO_WORD_IMM data_2, $3C0

	RTS
; End of function sub_F57B

; =============== S U B	R O U T	I N E =======================================

sub_F589:
	LDY	ppu_unk_byte_309

loc_F58C:
	IF_Y_EQUAL_CMP #0, locret_F5A1

	ADD_WORD_TO_WORD_IMM data_2, $8

	DEY
	JMP	loc_F58C
; ---------------------------------------------------------------------------

locret_F5A1:
	RTS
; End of function sub_F589

; =============== S U B	R O U T	I N E =======================================

sub_F5A2:
	div_byte_by_4 ppu_unk_byte_309
	div_byte_by_4 tilemap_size_307
	RTS
; End of function sub_F5A2

; =============== S U B	R O U T	I N E =======================================

sub_F5AF:
	IF_A_EQUAL_CMP_ADDR byte_313, #3, loc_F5C2
	load_a_masked ppu_scroll_x_304, #$10
	IF_A_EQUAL_CMP #$10, loc_F5CE
	JMP	locret_F640
; ---------------------------------------------------------------------------

loc_F5C2:
	load_a_masked ppu_scroll_x_304, #$F8 
	AND	#$1F
	BEQ	loc_F5CE
	JMP	locret_F640
; ---------------------------------------------------------------------------

loc_F5CE:
	x_to_stack
	LDX	#0

loc_F5D2:
	set_inx {byte_5C,X}, {tilemapData_4C,X}
	IF_X_GREATER_CMP #8, loc_F5D2
	from_stack_to_x
	set tilemapData_4C, entry_idx_300
	IF_A_EQUAL_CMP_ADDR byte_313, #2, loc_F5ED
	DEX
	JMP	loc_F5EE
; ---------------------------------------------------------------------------

loc_F5ED:
	INX

loc_F5EE:
	STX	room_pos_x_4D
	STY	room_pos_y_4E
	set tilemap_line_idx_4F, inv_spr_dscr1_30C
	set mapLineSize_50, tilemap_size_307
	set tilemap_line_size_51, #8
	set mapLineWidth_52, tilemapTypeUnk_30B
	set mapLineHeight_53, #8
	JSR	tilemap_read_next_chunk_F472

	IF_A_EQUAL_CMP_ADDR byte_313, #2, loc_F62B
	LDX	#0
loc_F615:
	and_byte {tilemapData_4C,X}, #$CC 
	load_a_masked {byte_5C,X}, #$33 
	ORA	tilemapData_4C,X
	STA	tilemapData_4C,X
	INX
	IF_X_GREATER_CMP #8, loc_F615
	JMP	locret_F640
; ---------------------------------------------------------------------------

loc_F62B:
	LDX	#0

loc_F62D:
	and_byte {tilemapData_4C,X}, #$33 
	load_a_masked {byte_5C,X}, #$CC 
	ORA	tilemapData_4C,X
	STA	tilemapData_4C,X
	INX
	IF_X_GREATER_CMP #8, loc_F62D

locret_F640:
	RTS
; End of function sub_F5AF

; =============== S U B	R O U T	I N E =======================================

sub_F641:
	load_a_masked ppu_unk_byte_303, #1
	BEQ	loc_F653
	load_a_masked ppu_ctrl_31F, #$FC 
	ORA	#2
	STA	ppu_ctrl_31F
	RTS
; ---------------------------------------------------------------------------

loc_F653:
	and_byte ppu_ctrl_31F, #$FC 
	RTS
; End of function sub_F641

; =============== S U B	R O U T	I N E =======================================

sprites_func_9132:
	JSR	sub_EE72

	mult_a_by_8_byte byte_357
	STA	byte_366

	mult_a_by_8_byte byte_358
	STA	byte_36A

	mult_a_by_8_byte byte_359
	STA	tilemapWidth_308

	ADD_BYTE_TO_BYTE_CLC_IMM byte_36C, byte_36A, tilemapWidth_308

	ADD_BYTE_TO_BYTE_CLC_IMM byte_368, byte_366, #$20 

	LDX	#0

loc_F68F:
	load_a_masked {spr_y_pos_200,X}, #$F8 
	IF_A_GREATER_CMP byte_366, loc_F6C0

	load_a_masked {spr_y_pos_200,X}, #$F8 
	IF_A_EQUAL_CMP byte_368, loc_F6C0

	BCS	loc_F6C0

	load_a_masked {spr_x_pos_203,X}, #$F8 
	IF_A_GREATER_CMP byte_36A, loc_F6C0

	load_a_masked {spr_x_pos_203,X}, #$F8 
	IF_A_EQUAL_CMP byte_36C, loc_F6C0
	
	BCS	loc_F6C0
	set {spr_y_pos_200,X}, #$F0 

loc_F6C0:
	INX
	INX
	INX
	INX
	IF_X_NOT_EQUAL_CMP #0, loc_F68F
	set ppu_unk_byte_309, byte_357
	set tilemap_size_307, byte_358
	set tilemapWidth_308, byte_359
	div_a_by_2_addr tilemapWidth_308
	AND	#$FE 
	ADD_TO_A tilemap_size_307
	STA	tilemap_size_307
	set inv_spr_dscr1_30C, #0

loc_F6EC:
	load_a_masked inv_spr_dscr1_30C, #3
	BEQ	loc_F700
	ADD_BYTE_TO_BYTE_CLC tilemap_size_307, inv_spr_dscr1_30C
	JMP	loc_F70A
; ---------------------------------------------------------------------------

loc_F700:
	sub_byte_sec tilemap_size_307, inv_spr_dscr1_30C

loc_F70A:
	LDX	#0
	set_inx ppu_data_70, #0
	set tilemapHeight_30A, #0
	JSR	sub_F921
	JSR	text_unk_func_F80C
	set tilemapHeight_30A, #1
	ADD_2_TO ppu_unk_byte_309
	JSR	sub_F921
	JSR	text_unk_func_F80C
	sub_2_from ppu_unk_byte_309
	set tilemapHeight_30A, #0
	JSR	sub_F942
	JSR	sub_F9C2
	set tilemapHeight_30A, #1
	ADD_2_TO ppu_unk_byte_309
	JSR	sub_F942
	JSR	sub_F9C2
	sub_2_from ppu_unk_byte_309
	JSR	wait_for_ppu_data_upload_FC8C
	ADD_2_TO inv_spr_dscr1_30C
	IF_A_GREATER_CMP_ADDR inv_spr_dscr1_30C, tilemapWidth_308, loc_F6EC
	RTS
; End of function sprites_func_9132

; =============== S U B	R O U T	I N E =======================================

sub_F767:
	set ppu_unk_byte_309, byte_357
	set tilemap_size_307, byte_358
	set tilemapWidth_308, byte_359
	load_a_masked tilemapWidth_308, #3
	BEQ	loc_F78C
	sub_addr_sec tilemapWidth_308, #2
	STA	inv_spr_dscr1_30C
	JMP	loc_F792
; ---------------------------------------------------------------------------

loc_F78C:
	set inv_spr_dscr1_30C, tilemapWidth_308

loc_F792:
	load_a_masked inv_spr_dscr1_30C, #3
	BEQ	loc_F7A6
	sub_byte_sec tilemap_size_307, inv_spr_dscr1_30C
	JMP	loc_F7B0
; ---------------------------------------------------------------------------

loc_F7A6:
	ADD_BYTE_TO_BYTE_CLC tilemap_size_307, inv_spr_dscr1_30C

loc_F7B0:
	LDX	#0
	set_inx ppu_data_70, #0
	set tilemapHeight_30A, #0
	JSR	sub_F921
	JSR	sub_F8A1

	set tilemapHeight_30A, #1
	ADD_2_TO ppu_unk_byte_309
	JSR	sub_F921
	JSR	sub_F8A1

	sub_2_from ppu_unk_byte_309
	set tilemapHeight_30A, #0
	JSR	sub_F942
	JSR	sub_FAAF

	set tilemapHeight_30A, #1
	ADD_2_TO ppu_unk_byte_309
	JSR	sub_F942
	JSR	sub_FAAF

	sub_2_from ppu_unk_byte_309
	JSR	wait_for_ppu_data_upload_FC8C
	sub_2_from inv_spr_dscr1_30C
	IF_A_NOT_EQUAL_CMP_ADDR inv_spr_dscr1_30C, #0, loc_F792
	RTS
; End of function sub_F767

; =============== S U B	R O U T	I N E =======================================

text_unk_func_F80C:
	set tilemapTypeUnk_30B, #0

loc_F811:
	INC	ppu_data_70
	set_inx {ppu_data_70,X}, #2
	set_inx {ppu_data_70,X}, data_3
	set_inx {ppu_data_70,X}, data_2
	LDA	inv_spr_dscr1_30C
	ADD_TO_A #2
	IF_A_EQUAL_CMP tilemapWidth_308, loc_F84E
	LDA	inv_spr_dscr1_30C
	ADD_TO_A #4
	IF_A_EQUAL_CMP tilemapWidth_308, loc_F83D
	LDY	#8
	JMP	loc_F85C
; ---------------------------------------------------------------------------

loc_F83D:
	load_a_masked tilemapWidth_308, #2
	BEQ	loc_F849
	LDY	#$10
	JMP	loc_F85C
; ---------------------------------------------------------------------------

loc_F849:
	LDY	#0
	JMP	loc_F85C
; ---------------------------------------------------------------------------

loc_F84E:
	load_a_masked tilemapWidth_308, #2
	BEQ	loc_F85A
	LDY	#0
	JMP	loc_F85C
; ---------------------------------------------------------------------------

loc_F85A:
	LDY	#$10

loc_F85C:
	IF_A_EQUAL tilemapHeight_30A, loc_F865
	INY
	INY
	INY
	INY

loc_F865:
	IF_A_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #0, loc_F86E
	INY
	INY

loc_F86E:
	a_to_stack tilemapTypeUnk_30B
	set tilemapTypeUnk_30B, #0

loc_F877:
	ADD_BYTE_TO_BYTE_CLC_IMM {ppu_data_70,X}, {TextBg_FBD2,Y}, text_unk_35B
	INY
	INX
	INC	tilemapTypeUnk_30B
	IF_A_GREATER_CMP_ADDR tilemapTypeUnk_30B, #2, loc_F877
	from_stack_to_a tilemapTypeUnk_30B
	JSR	sub_F194
	INC	tilemapTypeUnk_30B
	IF_A_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #2, locret_F8A0
	JMP	loc_F811
; ---------------------------------------------------------------------------

locret_F8A0:
	RTS
; End of function text_unk_func_F80C

; =============== S U B	R O U T	I N E =======================================

sub_F8A1:
	a_to_stack ppu_unk_byte_309
	a_to_stack tilemap_size_307
	set tilemapTypeUnk_30B, #0

loc_F8AE:
	x_to_stack
	a_to_stack ppu_unk_byte_309
	a_to_stack tilemap_size_307
	JSR	sub_F98B

start_read_tilemap_F8BB:
	set tilemapData_4C, entry_idx_300
	STX	room_pos_x_4D
	STY	room_pos_y_4E
	set tilemap_line_idx_4F, ppu_unk_byte_309
	set mapLineSize_50, tilemap_size_307
	set tilemap_line_size_51, #$20 
	set mapLineWidth_52, #2
	set mapLineHeight_53, #1
	JSR	tilemap_read_next_chunk_F472

	from_stack_to_a tilemap_size_307
	from_stack_to_a ppu_unk_byte_309
	from_stack_to_x
	INC	ppu_data_70
	set_inx {ppu_data_70,X}, #2
	set_inx {ppu_data_70,X}, data_3
	set_inx {ppu_data_70,X}, data_2
	LDY	#0

loc_F8FA:
	set_iny {ppu_data_70,X}, {tilemapData_4C,Y}
	INX
	IF_Y_GREATER_CMP #2, loc_F8FA
	JSR	sub_F194
	INC	ppu_unk_byte_309
	INC	tilemapTypeUnk_30B
	IF_A_EQUAL_CMP_ADDR tilemapTypeUnk_30B, #2, loc_F918
	JMP	loc_F8AE
; ---------------------------------------------------------------------------

loc_F918:
	from_stack_to_a tilemap_size_307
	from_stack_to_a ppu_unk_byte_309
	RTS
; End of function sub_F8A1

; =============== S U B	R O U T	I N E =======================================

sub_F921:
	x_to_stack
	a_to_stack ppu_unk_byte_309
	a_to_stack tilemap_size_307
	JSR	sub_F98B
	JSR	sub_F504
	JSR	sub_ED8F
	JSR	sub_EDA2
	from_stack_to_a tilemap_size_307
	from_stack_to_a ppu_unk_byte_309
	from_stack_to_x
	RTS
; End of function sub_F921

; =============== S U B	R O U T	I N E =======================================

sub_F942:
	x_to_stack
	a_to_stack ppu_unk_byte_309
	a_to_stack tilemap_size_307
	JSR	sub_F98B
	div_byte_by_4 ppu_unk_byte_309
	div_byte_by_4 tilemap_size_307
	JSR	sub_F504
	JSR	sub_F57B
	JSR	sub_F972
	JSR	sub_EDA2
	from_stack_to_a tilemap_size_307
	from_stack_to_a ppu_unk_byte_309
	from_stack_to_x
	RTS
; End of function sub_F942

; =============== S U B	R O U T	I N E =======================================

sub_F972:
	LDY	ppu_unk_byte_309

loc_F975:
	IF_Y_EQUAL_CMP #0, locret_F98A
	
	ADD_WORD_TO_WORD_IMM data_2, $8

	DEY
	JMP	loc_F975
; ---------------------------------------------------------------------------

locret_F98A:
	RTS
; End of function sub_F972

; =============== S U B	R O U T	I N E =======================================

sub_F98B:
	LDX	ppu_unk_byte_302
	LDY	ppu_unk_byte_303
	div_a_by_8_addr ppu_scroll_y_305
	ADD_TO_A ppu_unk_byte_309
	STA	ppu_unk_byte_309
	IF_A_GREATER_CMP #$1E, loc_F9A9
	INY
	sub_a_sec #$1E
	STA	ppu_unk_byte_309

loc_F9A9:
	div_a_by_8_addr ppu_scroll_x_304
	ADD_TO_A tilemap_size_307
	STA	tilemap_size_307
	IF_A_GREATER_CMP #$20, locret_F9C1
	INX
	sub_a_sec #$20 
	STA	tilemap_size_307

locret_F9C1:
	RTS
; End of function sub_F98B

; =============== S U B	R O U T	I N E =======================================

sub_F9C2:
	a_to_stack ppu_unk_byte_309
	a_to_stack tilemap_size_307
	JSR	sub_FA61
	load_a_masked ppu_unk_byte_309, #3
	BEQ	loc_FA0D
	load_a_masked tilemap_size_307, #3
	BEQ	loc_F9F5
	and_byte {byte_4,Y}, #$3F 

	LDA	byte_35A
	mult_a_by_64
	ORA	byte_4,Y
	STA	byte_4,Y
	
	JMP	loc_FA3B
; ---------------------------------------------------------------------------

loc_F9F5:
	and_byte {byte_4,Y}, #$CF 
	LDA	byte_35A
	mult_a_by_16
	ORA	byte_4,Y
	STA	byte_4,Y
	JMP	loc_FA3B
; ---------------------------------------------------------------------------

loc_FA0D:
	load_a_masked tilemap_size_307, #3
	BEQ	loc_FA2A
	and_byte {byte_4,Y}, #$F3 
	mult_by_4_byte byte_35A
	ORA	byte_4,Y
	STA	byte_4,Y
	JMP	loc_FA3B
; ---------------------------------------------------------------------------

loc_FA2A:
	and_byte {byte_4,Y}, #$FC 
	LDA	byte_35A
	ORA	byte_4,Y
	STA	byte_4,Y

loc_FA3B:
	set tilemapTypeUnk_30B, {byte_4,Y}
	INC	ppu_data_70
	set_inx {ppu_data_70,X}, #1
	set_inx {ppu_data_70,X}, data_3
	set_inx {ppu_data_70,X}, data_2
	set_inx {ppu_data_70,X}, tilemapTypeUnk_30B
	from_stack_to_a tilemap_size_307
	from_stack_to_a ppu_unk_byte_309
	RTS
; End of function sub_F9C2

; =============== S U B	R O U T	I N E =======================================

sub_FA61:
	div_a_by_8_addr ppu_scroll_x_304
	ADD_TO_A tilemap_size_307
	STA	tilemap_size_307
	IF_A_GREATER_CMP #$20, loc_FA78
	sub_a_sec #$20 
	STA	tilemap_size_307

loc_FA78:
	div_a_by_8_addr ppu_scroll_y_305
	ADD_TO_A ppu_unk_byte_309
	IF_A_GREATER_CMP #$1E, loc_FA8C
	ADD_2_TO ppu_unk_byte_309

loc_FA8C:
	load_a_masked ppu_scroll_y_305, #$1F
	BEQ	loc_FA99
	ADD_2_TO ppu_unk_byte_309

loc_FA99:
	div_a_by_4_addr ppu_unk_byte_309
	mult_a_by_8
	STA	tilemapTypeUnk_30B
	div_a_by_4_addr tilemap_size_307
	ADD_TO_A tilemapTypeUnk_30B
	TAY
	RTS
; End of function sub_FA61

; =============== S U B	R O U T	I N E =======================================

sub_FAAF:
	x_to_stack
	a_to_stack ppu_unk_byte_309
	a_to_stack tilemap_size_307
	JSR	sub_F98B
	div_byte_by_4 ppu_unk_byte_309
	div_byte_by_4 tilemap_size_307

start_read_tilemap_FAC8:
	set tilemapData_4C, entry_idx_300
	STX	room_pos_x_4D
	STY	room_pos_y_4E
	set tilemap_line_idx_4F, ppu_unk_byte_309
	set mapLineSize_50, tilemap_size_307
	set tilemap_line_size_51, #8
	set mapLineWidth_52, #1
	set mapLineHeight_53, #1
	JSR	tilemap_read_next_chunk_F472

	from_stack_to_a tilemap_size_307
	from_stack_to_a ppu_unk_byte_309
	a_to_stack ppu_unk_byte_309
	a_to_stack tilemap_size_307
	JSR	sub_FA61
	load_a_masked ppu_unk_byte_309, #3
	BEQ	loc_FB35
	load_a_masked tilemap_size_307, #3
	BEQ	loc_FB20
	and_byte {byte_4,Y}, #$3F 
	load_a_masked tilemapData_4C, #$C0 
	ORA	byte_4,Y
	STA	byte_4,Y
	JMP	loc_FB63
; ---------------------------------------------------------------------------

loc_FB20:
	and_byte {byte_4,Y}, #$CF 
	load_a_masked tilemapData_4C, #$30 
	ORA	byte_4,Y
	STA	byte_4,Y
	JMP	loc_FB63
; ---------------------------------------------------------------------------

loc_FB35:
	load_a_masked tilemap_size_307, #3
	BEQ	loc_FB51
	and_byte {byte_4,Y}, #$F3 
	load_a_masked tilemapData_4C, #$C
	ORA	byte_4,Y
	STA	byte_4,Y
	JMP	loc_FB63
; ---------------------------------------------------------------------------

loc_FB51:
	and_byte {byte_4,Y}, #$FC 
	load_a_masked tilemapData_4C, #3
	ORA	byte_4,Y
	STA	byte_4,Y

loc_FB63:
	from_stack_to_a tilemap_size_307
	from_stack_to_a ppu_unk_byte_309
	from_stack_to_x
	INC	ppu_data_70
	set_inx {ppu_data_70,X}, #1
	set_inx {ppu_data_70,X}, data_3
	set_inx {ppu_data_70,X}, data_2
	set_inx {ppu_data_70,X}, {byte_4,Y}
	RTS
; End of function sub_FAAF

; =============== S U B	R O U T	I N E =======================================

upload_text_palette_to_ppu_FB85:
	set text_unk_35B, #$C0 
	LDY	#$C

loc_FB8C:
	set_iny {palette_bg_321,Y}, {TextPalette_FBC2,Y}
	IF_Y_GREATER_CMP #$10, loc_FB8C
	set data_2, #$EA 
	set data_3, #$FB 

	set_byte_to_word ptr_0, text_unk_35B
	mult_word_by_16 ptr_0
	or_byte ptr_1, #$10

	JSR	ppu_upset_data_C9C7
	RTS
; End of function upload_text_palette_to_ppu_FB85

; ---------------------------------------------------------------------------
	.include "text/bank_00_textbox.asm"

Common_Code_00:
	.include "common/common_funcs.asm"

; ---------------------------------------------------------------------------
	.include "garbage/bank_00_garbage.asm"

Vectors_00:
	.WORD NMI_FD53
	.WORD RESET_8177
	.WORD return_FDCA
; end of 'BANK_00'
; ===========================================================================
