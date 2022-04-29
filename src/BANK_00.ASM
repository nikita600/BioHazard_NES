; Segment type:Pure code
;.segment BANK_00 (Code)
;* =  $8000

    .include "includes/ram.inc"
	.include "includes/macros.inc"

; =============== S U B	R O U T	I N E =======================================

bank_switch_8000:
	.include "common/bank_switch_func.asm"

switch_case_8035:
	set bank_prev_345, bank_to_344
	set bank_switch_flag_6C, #$88 

	LDA	bank_command_346
	CMP	#0
	BEQ	case0_8096
	CMP	#1
	BEQ	case1_80A7
	CMP	#2
	BEQ	case2_80B5
	CMP	#3
	BEQ	case3_80C3
	CMP	#4
	BEQ	case4_80D1
	CMP	#5
	BNE	else_805D
	JMP	case5_80DF
; ---------------------------------------------------------------------------

else_805D:
	CMP	#6
	BNE	case6_8064
	JMP	loc_80ED
; ---------------------------------------------------------------------------

case6_8064:
	CMP	#7
	BNE	loc_806B
	JMP	loc_8104
; ---------------------------------------------------------------------------

loc_806B:
	CMP	#8
	BNE	loc_8072
	JMP	loc_8115
; ---------------------------------------------------------------------------

loc_8072:
	CMP	#9
	BNE	loc_8079
	JMP	loc_8123
; ---------------------------------------------------------------------------

loc_8079:
	CMP	#$A
	BNE	loc_8080
	JMP	loc_8131
; ---------------------------------------------------------------------------

loc_8080:
	CMP	#$B

loc_8082:
	BNE	loc_8087
	JMP	loc_813F
; ---------------------------------------------------------------------------

loc_8087:
	CMP	#$C
	BNE	loc_808E
	JMP	loc_814D
; ---------------------------------------------------------------------------

loc_808E:
	CMP	#$D
	BNE	locret_8095
	JMP	loc_815B
; ---------------------------------------------------------------------------

locret_8095:
	RTS
; ---------------------------------------------------------------------------

case0_8096:
	to_stack bank_from_343
	LDX	tilemapTypeUnk_30B
	JSR	sub_CF13
	from_stack bank_from_343
	JMP	loc_8169
; ---------------------------------------------------------------------------

case1_80A7:
	to_stack bank_from_343
	JSR	sub_CAA9
	from_stack bank_from_343
	JMP	loc_8169
; ---------------------------------------------------------------------------

case2_80B5:
	to_stack bank_from_343
	JSR	load_image_C6D2
	from_stack bank_from_343
	JMP	loc_8169
; ---------------------------------------------------------------------------

case3_80C3:
	to_stack bank_from_343
	JSR	sub_DBE2
	from_stack bank_from_343
	JMP	loc_8169
; ---------------------------------------------------------------------------

case4_80D1:
	to_stack bank_from_343
	JSR	sub_CBC2
	from_stack bank_from_343
	JMP	loc_8169
; ---------------------------------------------------------------------------

case5_80DF:
	to_stack bank_from_343
	JSR	objects_func_D52A
	from_stack bank_from_343
	JMP	loc_8169
; ---------------------------------------------------------------------------

loc_80ED:
	to_stack bank_from_343
	JSR	sub_C873
	JSR	sub_C921
	JSR	sub_ECCC
	JSR	sub_EE72
	from_stack bank_from_343
	JMP	loc_8169
; ---------------------------------------------------------------------------

loc_8104:
	to_stack bank_from_343
	JSR	exec_b4_c0_CA4B
	JSR	exec_b4_c1_CA5E
	from_stack bank_from_343
	JMP	loc_8169
; ---------------------------------------------------------------------------

loc_8115:
	to_stack bank_from_343
	JSR	load_tiles_to_ppu_C83A
	from_stack bank_from_343
	JMP	loc_8169
; ---------------------------------------------------------------------------

loc_8123:
	to_stack bank_from_343
	JSR	sub_91B6
	from_stack bank_from_343
	JMP	loc_8169
; ---------------------------------------------------------------------------

loc_8131:
	to_stack bank_from_343
	JSR	sub_D055
	from_stack bank_from_343
	JMP	loc_8169
; ---------------------------------------------------------------------------

loc_813F:
	to_stack bank_from_343
	JSR	sub_CF42
	from_stack bank_from_343
	JMP	loc_8169
; ---------------------------------------------------------------------------

loc_814D:
	to_stack bank_from_343
	JSR	sub_D359
	from_stack bank_from_343
	JMP	loc_8169
; ---------------------------------------------------------------------------

loc_815B:
	to_stack bank_from_343
	JSR	ppu_unk_func_F09D
	from_stack bank_from_343
	JMP	loc_8169
; ---------------------------------------------------------------------------

loc_8169:
	set bank_command_346, #$FF
	set bank_to_344, bank_from_343

	JMP	bank_switch_8000
; End of function bank_switch_8000

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR gameplay_update_88C2

RESET_8177:
	SEI
	CLD
	set _PPU_CTRL, #0
	STA	_PPU_MASK
	STA	_PPU_OAM_ADDR
	STA	_PPU_SCROLL
	STA	_PPU_SCROLL
	LDX	#0

clear_ram_818C:
	set {ptr_0,X}, #0
	STA	byte_200,X
	STA	entry_idx_300,X
	STA	unk_400,X
	STA	unk_500,X
	STA	byte_600,X
	STA	apu_unk_700,X
	INX
	BNE	clear_ram_818C
	DEX
	TXS
	set loc_8082+1, #0	; reset	current	bank
	LDY	#0
	LDA	#$1D

clear_palette_81B0:
	STA	palette_bg_321,Y 
	INY
	CPY	#$20 
	BCC	clear_palette_81B0
	set ppu_ctrl_31F, #$90 
	STA	_PPU_CTRL
	set ppu_mask_320, #$1E
	STA	_PPU_MASK
	JSR	wait_for_vblank_FC95

switch_b13_c5_81CB:
	set bank_switch_flag_6C, #$88 
	set apu_unk_76C, #0
	set bank_command_346, #5
	set bank_to_344, #banks_13
	set bank_from_343, #0
	JSR	bank_switch_8000

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
	CPX	#$30 
	BCC	loc_8206
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
	set byte_549, #$FF
	STA	byte_46D
	set byte_4A0, #$FF
	STA	byte_4A1
	STA	byte_4A2
	STA	byte_4A3
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
	set byte_5A3, #1
	STA	byte_5A6
	STA	byte_5A8
	STA	byte_5AC
	STA	byte_5AD
	STA	byte_5B0
	STA	byte_5B1
	STA	byte_5B2

reset_values_82C0:
	set byte_5B4, #$FF
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
	set image_offset_4A5, #0
	STA	ppu_prev_unk_4A6
	STA	ppu_prev_scroll_x_unk_4A7
	STA	ppu_prev_scroll_y_unk_4A8
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
	set text_idx_35C, #$88 
	set char_type_id_35D, #0
	JSR	exec_b2_c2_text_cuts_C8E8
	JSR	exec_b2_c2_text_cuts_C8E8
	JSR	exec_b2_c2_text_cuts_C8E8
	JSR	exec_b2_c2_text_cuts_C8E8
	JSR	exec_b2_c2_text_cuts_C8E8

show_cut01_85CD:
	set image_id_4A4, #$11
	JSR	load_image_C6D2
	set text_idx_35C, #$8D 
	set char_type_id_35D, #0
	JSR	exec_b2_c2_text_cuts_C8E8
	JSR	exec_b2_c2_text_cuts_C8E8
	JSR	exec_b2_c2_text_cuts_C8E8

show_cut02_85E8:
	set image_id_4A4, #$12
	JSR	load_image_C6D2
	set text_idx_35C, #$90 
	set char_type_id_35D, #0
	JSR	exec_b2_c2_text_cuts_C8E8
	JSR	exec_b2_c2_text_cuts_C8E8
	JSR	exec_b2_c2_text_cuts_C8E8
	JSR	exec_b2_c2_text_cuts_C8E8

show_cut03_8606:
	set image_id_4A4, #$13
	JSR	load_image_C6D2
	set text_idx_35C, #$94 
	set char_type_id_35D, #0
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
	LDA	input_pressed_34A
	CMP	#up_8
	BNE	loc_8654
	LDA	byte_372
	EOR	#1
	STA	byte_372
	JSR	sub_CC17
	JMP	loc_8639
; ---------------------------------------------------------------------------

loc_8654:
	CMP	#4
	BNE	loc_8666
	LDA	byte_372
	EOR	#1
	STA	byte_372
	JSR	sub_CC17
	JMP	loc_8639
; ---------------------------------------------------------------------------

loc_8666:
	CMP	#$80 
	BEQ	loc_866D
	JMP	loc_8639
; ---------------------------------------------------------------------------

loc_866D:
	LDA	byte_372
	CMP	#0
	BEQ	loc_86B7

	set_ptr _SAVE_RAM

	LDY	#0

loc_867E:
	STY	tilemapTypeUnk_30B
	LDA	(ptr_0),Y
	CMP	tilemapTypeUnk_30B
	BNE	loc_869A
	INY
	CPY	#$10
	BCC	loc_867E
	LDX	#0

loc_868F:
	set_inx {byte_4A0,X}, {(ptr_0),Y}
	INY
	CPX	#4
	BCC	loc_868F

loc_869A:
	set jill_pos_y_47E, #$FF
	JSR	exec_b12_cE_EADE
	LDX	jill_pos_y_47E
	CPX	#$FF
	BNE	loc_86AC
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
	LDA	input_pressed_34A
	CMP	#up_8
	BNE	loc_86E4
	LDA	byte_372
	EOR	#1
	STA	byte_372
	JSR	sub_CC17
	JMP	loc_86C9
; ---------------------------------------------------------------------------

loc_86E4:
	CMP	#4
	BNE	loc_86F6
	LDA	byte_372
	EOR	#1
	STA	byte_372
	JSR	sub_CC17
	JMP	loc_86C9
; ---------------------------------------------------------------------------

loc_86F6:
	CMP	#$40 
	BNE	loc_86FD
	JMP	show_title_screen_8627
; ---------------------------------------------------------------------------

loc_86FD:
	CMP	#$80 
	BEQ	loc_8704
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
	set bank_command_346, #5
	set bank_to_344, #banks_13
	set bank_from_343, #0
	JSR	bank_switch_8000

gameplay_loop_8759:
	JSR	wait_for_frame_rendered_FCA0
	JSR	gameplay_update_88C2
	JMP	gameplay_loop_8759
; END OF FUNCTION CHUNK	FOR gameplay_update_88C2

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
	CPX	tilemapTypeUnk_30B
	BEQ	loc_87C4
	LDA	objCreatedArray_393,X
	BNE	loc_87C4
	JSR	sub_87CE
	LDA	sprite_length_30F
	CMP	#$FF
	BEQ	locret_87CD
	JMP	loc_87C4
; ---------------------------------------------------------------------------
	JSR	sub_D8D8
	JSR	sub_D96B
	LDA	sprite_length_30F
	CMP	#$FF
	BEQ	locret_87CD
	JSR	sub_D8D8
	JSR	sub_D8FD
	JSR	sub_D96B
	LDA	sprite_length_30F
	CMP	#$FF
	BEQ	locret_87CD
	JSR	sub_D8D8
	JSR	sub_D913
	JSR	sub_D96B
	LDA	sprite_length_30F
	CMP	#$FF
	BEQ	locret_87CD
	JSR	sub_D8D8
	JSR	sub_D8FD
	JSR	sub_D913
	JSR	sub_D96B
	LDA	sprite_length_30F
	CMP	#$FF
	BEQ	locret_87CD

loc_87C4:
	INX
	CPX	objArraySize_373
	BEQ	locret_87CD
	JMP	loc_876D
; ---------------------------------------------------------------------------

locret_87CD:
	RTS
; End of function sub_8766


; =============== S U B	R O U T	I N E =======================================


sub_87CE:
	to_stack byte_36A
	to_stack byte_36B
	to_stack byte_366
	to_stack byte_367
	LDA	tilemapWidth_308
	LSR	A
	mult_a_by_8
	CLC
	ADC	byte_36A
	STA	byte_36A
	add_to_byte byte_36B, #0

	LDA	tilemapHeight_30A
	LSR	A
	mult_a_by_8
	CLC
	ADC	byte_366
	STA	byte_366
	add_to_byte byte_367, #0

	JSR	sub_D8D8
	LDA	byte_36A
	SEC
	SBC	byte_36C
	LDA	byte_36B
	SBC	byte_36D
	BCC	loc_8854
	LDA	byte_366
	SEC
	SBC	byte_368
	LDA	byte_367
	SBC	byte_369
	BCC	loc_8854
	JSR	sub_D8FD
	JSR	sub_D913
	LDA	byte_36C
	SEC
	SBC	byte_36A
	LDA	byte_36D
	SBC	byte_36B
	BCC	loc_8854
	LDA	byte_368
	SEC
	SBC	byte_366
	LDA	byte_369
	SBC	byte_367
	BCC	loc_8854
	set sprite_length_30F, #$FF

loc_8854:
	from_stack byte_367
	from_stack byte_366
	from_stack byte_36B
	from_stack byte_36A
	RTS
; End of function sub_87CE


; =============== S U B	R O U T	I N E =======================================


sub_8865:
	LDA	byte_313
	CMP	#0
	BNE	loc_8880
	LDA	byte_366
	SEC
	SBC	#8
	STA	byte_366
	LDA	byte_367
	SBC	#0
	STA	byte_367
	JMP	locret_88C1
; ---------------------------------------------------------------------------

loc_8880:
	CMP	#1
	BNE	loc_8898
	add_to_byte_clc byte_366, #8
	add_to_byte byte_367, #0

	JMP	locret_88C1
; ---------------------------------------------------------------------------

loc_8898:
	CMP	#2
	BNE	loc_88B0
	LDA	byte_36A
	SEC
	SBC	#8
	STA	byte_36A
	LDA	byte_36B
	SBC	#0
	STA	byte_36B
	JMP	locret_88C1
; ---------------------------------------------------------------------------

loc_88B0:
	add_to_byte_clc byte_36A, #8
	add_to_byte byte_36B, #0


locret_88C1:
	RTS
; End of function sub_8865


; =============== S U B	R O U T	I N E =======================================


gameplay_update_88C2:

; FUNCTION CHUNK AT 8177 SIZE 000005EB BYTES

	LDA	input_pressed_34A
	BEQ	gameplay_update_8930
	LDY	jill_pos_x_47D
	LDA	copyright_cheat_sequence_9B29,Y
	CMP	input_pressed_34A
	BEQ	inc_cheat_idx_88DA

reset_cheat_idx_88D2:
	set jill_pos_x_47D, #0
	JMP	check_cheat_entered_88DD
; ---------------------------------------------------------------------------

inc_cheat_idx_88DA:
	INC	jill_pos_x_47D

check_cheat_entered_88DD:
	LDA	jill_pos_x_47D
	CMP	#9
	BNE	gameplay_update_8930

show_copyright_screen_88E4:
	set jill_pos_x_47D, #0
	JSR	cache_prev_data_CA84
	to_stack image_id_4A4
	to_stack image_offset_4A5
	to_stack ppu_prev_unk_4A6
	to_stack ppu_prev_scroll_x_unk_4A7
	to_stack ppu_prev_scroll_y_unk_4A8
	to_stack prev_sprite_type_4A9
	JSR	exec_b12_c4A_ECB6
	JSR	show_hidden_copyright_9AD9
	from_stack prev_sprite_type_4A9
	from_stack ppu_prev_scroll_y_unk_4A8
	from_stack ppu_prev_scroll_x_unk_4A7
	from_stack ppu_prev_unk_4A6
	from_stack image_offset_4A5
	from_stack image_id_4A4
	set map_show_43B, #$FF
	JSR	load_image_C6D2
	set map_show_43B, #0
	RTS
; ---------------------------------------------------------------------------

gameplay_update_8930:
	
	LDA	byte_54A
	CMP	#0
	BEQ	loc_895B
	LDA	count_unk_46C
	CMP	#$A
	BCC	loc_895B
	set count_unk_46C, #0
	LDA	byte_549
	CMP	#1
	BCC	set_game_finished_8956
	LDA	byte_549
	SEC
	SBC	#1
	STA	byte_549
	JMP	loc_895B
; ---------------------------------------------------------------------------

set_game_finished_8956:
	set is_game_finished_561, #$FF

loc_895B:
	
	set byte_315, #8
	set byte_314, #0
	LDA	entry_idx_300
	CMP	#$5C 
	BEQ	loc_8973
	CMP	#$93 
	BEQ	loc_8973
	JMP	loc_89D5
; ---------------------------------------------------------------------------

loc_8973:
	
	JSR	sub_C7C7
	LDA	byte_36A
	CMP	#$B0 
	BNE	loc_8987
	LDA	byte_366
	CMP	#$68 
	BNE	loc_8987
	JMP	loc_89A7
; ---------------------------------------------------------------------------

loc_8987:
	
	LDX	#0

next_object_8989:
	LDA	objIdxArray_375,X
	CMP	#3
	BEQ	obj_id3_handler_8999
	INX
	CPX	objArraySize_373
	BCC	next_object_8989
	JMP	loc_89B8
; ---------------------------------------------------------------------------

obj_id3_handler_8999:
	LDA	array_unk_3C5,X
	CMP	#$B0 
	BNE	loc_89B8
	LDA	array_unk_3D9,X
	CMP	#$60 
	BNE	loc_89B8

loc_89A7:
	LDA	byte_654
	CMP	#0
	BEQ	loc_89B8
	LDA	byte_653
	CMP	#0
	BEQ	loc_89C8
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
	
	LDA	byte_584
	CMP	#$FF
	BNE	loc_8A05
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
	CMP	#$FE 
	BNE	check_ending_8A41
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
	set byte_584, #0
	STA	sprite_type_306
	RTS
; ---------------------------------------------------------------------------

check_ending_8A41:
	JSR	exec_b12_c17_EB26
	LDA	is_game_finished_561
	CMP	#0
	BNE	check_ending_type_8A4E
	JMP	objects_update_8AB3
; ---------------------------------------------------------------------------

check_ending_type_8A4E:
	CMP	#$FF
	BEQ	ending_sequence_8A74
	set apu_unk_76C, #1

exec_b13_c5_8A57:
	set bank_command_346, #5
	set bank_to_344, #banks_13
	set bank_from_343, #0
	JSR	bank_switch_8000

loc_8A69:
	JSR	exec_b12_c45_EC8E
	LDA	#$14
	JSR	wait_for_n_65k_cycles_FCD5
	JMP	RESET_8177
; ---------------------------------------------------------------------------

ending_sequence_8A74:
	set apu_unk_76C, #6

exec_b13_c5_8A79:
	set bank_command_346, #5
	set bank_to_344, #banks_13
	set bank_from_343, #0
	JSR	bank_switch_8000

loc_8A8B:
	set byte_341, #4
	set image_id_4A4, #2
	set image_offset_4A5, #0
	STA	ppu_prev_unk_4A6
	STA	ppu_prev_scroll_x_unk_4A7
	STA	ppu_prev_scroll_y_unk_4A8
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
	LDA	byte_439
	BNE	loc_8AC7
	JMP	update_player_input_8B5F
; ---------------------------------------------------------------------------

loc_8AC7:
	LDX	cur_obj_idx_unk_43A
	LDA	objIdxArray_375,X
	CMP	#$C
	BEQ	loc_8AE0
	CMP	#$F
	BEQ	loc_8AE0
	TAX
	set inv_sprite_idx_31C, {byte_CBFD,X}
	JSR	sub_EC86
	RTS
; ---------------------------------------------------------------------------

loc_8AE0:
	
	LDA	count_unk_46B
	CMP	#$A
	BCC	loc_8B59
	set count_unk_46B, #0
	set objMapIdx_316, #0

loc_8AF1:
	to_stack objMapIdx_316
	LDA	byte_313
	mult_a_by_4
	CLC
	ADC	objMapIdx_316
	TAX
	set objMapIdx_316, {byte_9523,X}
	STA	byte_4AA
	LDA	byte_313
	CMP	#2
	BNE	loc_8B14
	set byte_317, #$40 

loc_8B14:
	JSR	sub_C77D
	JSR	wait_for_frame_rendered_FCA0
	from_stack objMapIdx_316
	INC	objMapIdx_316
	LDA	objMapIdx_316
	CMP	#2
	BCC	loc_8AF1
	LDA	byte_54A
	CMP	#0
	BEQ	loc_8B4A
	LDA	byte_549
	CMP	#$A
	BCC	set_game_finished_8B42
	LDA	byte_549
	SEC
	SBC	#$A
	STA	byte_549
	JMP	loc_8B59
; ---------------------------------------------------------------------------

set_game_finished_8B42:
	set is_game_finished_561, #$FF
	JMP	loc_8B59
; ---------------------------------------------------------------------------

loc_8B4A:
	INC	byte_4B5
	LDA	byte_4B5
	CMP	#$A
	BCC	loc_8B59
	set byte_54A, #1

loc_8B59:
	
	set byte_439, #0
	RTS
; ---------------------------------------------------------------------------

update_player_input_8B5F:
	set byte_433, #0

is_B_pressed_8B64:
	LDA	input_reg1_347
	AND	#$40 
	CMP	#b_40
	BNE	b_not_pressed_8BB1
	set byte_433, #$FF
	LDA	byte_42A
	CMP	#$FF
	BEQ	loc_8BAC
	set byte_42A, #$FF
	set byte_430, #0
	STA	byte_431
	JSR	sub_C7C7
	set byte_42C, byte_36A
	set byte_42D, byte_36B
	add_to_byte_clc byte_366, #4
	STA	byte_42E
	add_to_byte byte_367, #0

	STA	byte_42F

loc_8BAC:
	set byte_432, #$96 

b_not_pressed_8BB1:
	JSR	sub_91D8
	JSR	sub_9195

is_up_pressed_8BB7:
	LDA	input_reg1_347
	AND	#8
	CMP	#up_8
	BNE	up_not_pressed_8BD7

up_pressed_8BC0:
	set byte_437, #0
	set byte_313, #0
	LDA	byte_433
	BEQ	loc_8BD3
	JSR	sub_939C
	RTS
; ---------------------------------------------------------------------------

loc_8BD3:
	JSR	sub_8C5F
	RTS
; ---------------------------------------------------------------------------

up_not_pressed_8BD7:
	LDA	input_reg1_347
	AND	#4
	CMP	#down_4
	BNE	down_not_pressed_8BF7
	set byte_437, #0
	set byte_313, #1
	LDA	byte_433
	BEQ	loc_8BF3
	JSR	sub_939C
	RTS
; ---------------------------------------------------------------------------

loc_8BF3:
	JSR	sub_8D27
	RTS
; ---------------------------------------------------------------------------

down_not_pressed_8BF7:
	LDA	input_reg1_347
	AND	#2
	CMP	#left_2
	BNE	left_not_pressed_8C17
	set byte_437, #0
	set byte_313, #2
	LDA	byte_433
	BEQ	loc_8C13
	JSR	sub_939C
	RTS
; ---------------------------------------------------------------------------

loc_8C13:
	JSR	sub_8DF0
	RTS
; ---------------------------------------------------------------------------

left_not_pressed_8C17:
	LDA	input_reg1_347
	AND	#1
	CMP	#right_1
	BNE	right_not_pressed_8C37
	set byte_437, #0
	set byte_313, #3
	LDA	byte_433
	BEQ	loc_8C33
	JSR	sub_939C
	RTS
; ---------------------------------------------------------------------------

loc_8C33:
	JSR	sub_8EB9
	RTS
; ---------------------------------------------------------------------------

right_not_pressed_8C37:
	LDA	input_reg1_347
	AND	#$10
	CMP	#start_10
	BNE	start_not_pressed_8C44
	JSR	start_button_pressed_8F88
	RTS
; ---------------------------------------------------------------------------

start_not_pressed_8C44:
	LDA	input_reg1_347
	AND	#$20 
	CMP	#select_20
	BNE	select_not_pressed_8C51
	JSR	select_button_pressed_8FC4
	RTS
; ---------------------------------------------------------------------------

select_not_pressed_8C51:
	LDA	input_reg1_347
	AND	#$80 
	CMP	#a_80
	BNE	a_not_pressed_8C5E
	JSR	a_button_pressed_8FDC
	RTS
; ---------------------------------------------------------------------------

a_not_pressed_8C5E:
	RTS
; End of function gameplay_update_88C2


; =============== S U B	R O U T	I N E =======================================


sub_8C5F:
	
	JSR	sub_91B6
	set byte_432, #$96 
	LDA	ppu_unk_byte_303
	BNE	loc_8C79
	LDA	ppu_scroll_y_305
	BNE	loc_8C79
	LDA	byte_4AE
	CMP	#0
	BNE	loc_8C82
	RTS
; ---------------------------------------------------------------------------

loc_8C79:
	LDA	byte_4AE
	CMP	#$20 
	BCC	loc_8CC3
	BEQ	loc_8CC3

loc_8C82:
	JSR	sub_999A
	JSR	sub_9725
	LDA	sprite_length_30F
	CMP	#$FF
	BNE	loc_8C90
	RTS
; ---------------------------------------------------------------------------

loc_8C90:
	JSR	sub_DDC9
	LDA	sprite_length_30F
	BEQ	loc_8C99
	RTS
; ---------------------------------------------------------------------------

loc_8C99:
	set byte_314, #0

loc_8C9E:
	DEC	byte_4AE
	DEC	byte_4AE
	LDA	byte_315
	CMP	#8
	BEQ	loc_8CB1
	DEC	byte_4AE
	DEC	byte_4AE

loc_8CB1:
	INC	byte_314
	JSR	sub_94D3
	JSR	sub_9542
	LDA	byte_314
	CMP	byte_315
	BCC	loc_8C9E
	RTS
; ---------------------------------------------------------------------------

loc_8CC3:
	JSR	sub_999A
	JSR	sub_9725
	LDA	sprite_length_30F
	CMP	#$FF
	BNE	loc_8CD1
	RTS
; ---------------------------------------------------------------------------

loc_8CD1:
	JSR	sub_DDC9
	LDA	sprite_length_30F
	BEQ	loc_8CDA
	RTS
; ---------------------------------------------------------------------------

loc_8CDA:
	LDA	byte_314
	CMP	#0
	BEQ	loc_8CED
	LDA	byte_315
	LSR	A
	CMP	byte_314
	BEQ	loc_8CED
	JMP	loc_8CF0
; ---------------------------------------------------------------------------

loc_8CED:
	JSR	sub_F1A2

loc_8CF0:
	LDA	ppu_scroll_y_305
	CMP	#0
	BNE	loc_8D02
	DEC	ppu_unk_byte_303
	set ppu_scroll_y_305, #$F0 
	JSR	sub_F641

loc_8D02:
	DEC	ppu_scroll_y_305
	DEC	ppu_scroll_y_305
	LDA	byte_315
	CMP	#8
	BEQ	loc_8D15
	DEC	ppu_scroll_y_305
	DEC	ppu_scroll_y_305

loc_8D15:
	INC	byte_314
	JSR	sub_94D3
	JSR	sub_9542
	LDA	byte_314
	CMP	byte_315
	BCC	loc_8CDA
	RTS
; End of function sub_8C5F


; =============== S U B	R O U T	I N E =======================================


sub_8D27:
	
	JSR	sub_91B6
	set byte_432, #$96 
	LDA	ppu_unk_byte_303
	CLC
	ADC	#1
	CMP	tilemaps_vert_count_312
	BNE	loc_8D47
	LDA	ppu_scroll_y_305
	BNE	loc_8D47
	LDA	byte_4AE
	CMP	#$E0 
	BNE	loc_8D50
	RTS
; ---------------------------------------------------------------------------

loc_8D47:
	LDA	byte_4AE
	CMP	#$C0 
	BEQ	loc_8D8C
	BCS	loc_8D8C

loc_8D50:
	JSR	sub_999A
	JSR	sub_9725
	LDA	sprite_length_30F
	CMP	#$FF
	BNE	loc_8D5E
	RTS
; ---------------------------------------------------------------------------

loc_8D5E:
	JSR	sub_DDC9
	LDA	sprite_length_30F
	BEQ	loc_8D67
	RTS
; ---------------------------------------------------------------------------

loc_8D67:
	INC	byte_4AE
	INC	byte_4AE
	LDA	byte_315
	CMP	#8
	BEQ	loc_8D7A
	INC	byte_4AE
	INC	byte_4AE

loc_8D7A:
	INC	byte_314
	JSR	sub_94D3
	JSR	sub_9542
	LDA	byte_314
	CMP	byte_315
	BCC	loc_8D67
	RTS
; ---------------------------------------------------------------------------

loc_8D8C:
	JSR	sub_999A
	JSR	sub_9725
	LDA	sprite_length_30F
	CMP	#$FF
	BNE	loc_8D9A
	RTS
; ---------------------------------------------------------------------------

loc_8D9A:
	JSR	sub_DDC9
	LDA	sprite_length_30F
	BEQ	loc_8DA3
	RTS
; ---------------------------------------------------------------------------

loc_8DA3:
	
	LDA	byte_314
	CMP	#0
	BEQ	loc_8DB6
	LDA	byte_315
	LSR	A
	CMP	byte_314
	BEQ	loc_8DB6
	JMP	loc_8DB9
; ---------------------------------------------------------------------------

loc_8DB6:
	JSR	sub_F1A2

loc_8DB9:
	INC	ppu_scroll_y_305
	INC	ppu_scroll_y_305
	LDA	byte_315
	CMP	#8
	BEQ	loc_8DCC
	INC	ppu_scroll_y_305
	INC	ppu_scroll_y_305

loc_8DCC:
	LDA	ppu_scroll_y_305
	CMP	#$F0 
	BNE	loc_8DDE
	INC	ppu_unk_byte_303
	set ppu_scroll_y_305, #0
	JSR	sub_F641

loc_8DDE:
	INC	byte_314
	JSR	sub_94D3
	JSR	sub_9542
	LDA	byte_314
	CMP	byte_315
	BCC	loc_8DA3
	RTS
; End of function sub_8D27


; =============== S U B	R O U T	I N E =======================================


sub_8DF0:
	
	JSR	sub_91B6
	set byte_432, #$96 
	LDA	ppu_unk_byte_302
	BNE	loc_8E0A
	LDA	ppu_scroll_x_304
	BNE	loc_8E0A
	LDA	byte_4AD
	CMP	#0
	BNE	loc_8E13
	RTS
; ---------------------------------------------------------------------------

loc_8E0A:
	LDA	byte_4AD
	CMP	#$20 
	BCC	loc_8E4F
	BEQ	loc_8E4F

loc_8E13:
	JSR	sub_999A
	JSR	sub_9725
	LDA	sprite_length_30F
	CMP	#$FF
	BNE	loc_8E21
	RTS
; ---------------------------------------------------------------------------

loc_8E21:
	JSR	sub_DDC9
	LDA	sprite_length_30F
	BEQ	loc_8E2A
	RTS
; ---------------------------------------------------------------------------

loc_8E2A:
	DEC	byte_4AD
	DEC	byte_4AD
	LDA	byte_315
	CMP	#8
	BEQ	loc_8E3D
	DEC	byte_4AD
	DEC	byte_4AD

loc_8E3D:
	INC	byte_314
	JSR	sub_94D3
	JSR	sub_9542
	LDA	byte_314
	CMP	byte_315
	BCC	loc_8E2A
	RTS
; ---------------------------------------------------------------------------

loc_8E4F:
	JSR	sub_999A
	JSR	sub_9725
	LDA	sprite_length_30F
	CMP	#$FF
	BNE	loc_8E5D
	RTS
; ---------------------------------------------------------------------------

loc_8E5D:
	JSR	sub_DDC9
	LDA	sprite_length_30F
	BEQ	loc_8E66
	RTS
; ---------------------------------------------------------------------------

loc_8E66:
	LDA	byte_314
	CMP	#0
	BEQ	loc_8E83
	LDA	byte_315
	LSR	A
	CMP	byte_314
	BEQ	loc_8E83
	LDA	byte_315
	LSR	A
	LSR	A
	CMP	byte_314
	BEQ	loc_8E89
	JMP	loc_8E8C
; ---------------------------------------------------------------------------

loc_8E83:
	JSR	sub_F2E4
	JMP	loc_8E8C
; ---------------------------------------------------------------------------

loc_8E89:
	JSR	sub_F37E

loc_8E8C:
	LDA	ppu_scroll_x_304
	BNE	loc_8E94
	DEC	ppu_unk_byte_302

loc_8E94:
	DEC	ppu_scroll_x_304
	DEC	ppu_scroll_x_304
	LDA	byte_315
	CMP	#8
	BEQ	loc_8EA7
	DEC	ppu_scroll_x_304
	DEC	ppu_scroll_x_304

loc_8EA7:
	INC	byte_314
	JSR	sub_94D3
	JSR	sub_9542
	LDA	byte_314
	CMP	byte_315
	BCC	loc_8E66
	RTS
; End of function sub_8DF0


; =============== S U B	R O U T	I N E =======================================


sub_8EB9:
	
	JSR	sub_91B6
	set byte_432, #$96 
	LDA	ppu_unk_byte_302
	CLC
	ADC	#1
	CMP	tilemaps_horiz_count_311
	BNE	loc_8ED9
	LDA	ppu_scroll_x_304
	BNE	loc_8ED9
	LDA	byte_4AD
	CMP	#$F0 
	BNE	loc_8EE2
	RTS
; ---------------------------------------------------------------------------

loc_8ED9:
	LDA	byte_4AD
	CMP	#$D0 
	BEQ	loc_8F1E
	BCS	loc_8F1E

loc_8EE2:
	JSR	sub_999A
	JSR	sub_9725
	LDA	sprite_length_30F
	CMP	#$FF
	BNE	loc_8EF0
	RTS
; ---------------------------------------------------------------------------

loc_8EF0:
	JSR	sub_DDC9
	LDA	sprite_length_30F
	BEQ	loc_8EF9
	RTS
; ---------------------------------------------------------------------------

loc_8EF9:
	INC	byte_4AD
	INC	byte_4AD
	LDA	byte_315
	CMP	#8
	BEQ	loc_8F0C
	INC	byte_4AD
	INC	byte_4AD

loc_8F0C:
	INC	byte_314
	JSR	sub_94D3
	JSR	sub_9542
	LDA	byte_314
	CMP	byte_315
	BCC	loc_8EF9
	RTS
; ---------------------------------------------------------------------------

loc_8F1E:
	JSR	sub_999A
	JSR	sub_9725
	LDA	sprite_length_30F
	CMP	#$FF
	BNE	loc_8F2C
	RTS
; ---------------------------------------------------------------------------

loc_8F2C:
	JSR	sub_DDC9
	LDA	sprite_length_30F
	BEQ	loc_8F35
	RTS
; ---------------------------------------------------------------------------

loc_8F35:
	LDA	byte_314
	CMP	#0
	BEQ	loc_8F52
	LDA	byte_315
	LSR	A
	CMP	byte_314
	BEQ	loc_8F52
	LDA	byte_315
	LSR	A
	LSR	A
	CMP	byte_314
	BEQ	loc_8F58
	JMP	loc_8F5B
; ---------------------------------------------------------------------------

loc_8F52:
	JSR	sub_F2E4
	JMP	loc_8F5B
; ---------------------------------------------------------------------------

loc_8F58:
	JSR	sub_F37E

loc_8F5B:
	INC	ppu_scroll_x_304
	INC	ppu_scroll_x_304
	LDA	byte_315
	CMP	#8
	BEQ	loc_8F6E
	INC	ppu_scroll_x_304
	INC	ppu_scroll_x_304

loc_8F6E:
	LDA	ppu_scroll_x_304
	BNE	loc_8F76
	INC	ppu_unk_byte_302

loc_8F76:
	INC	byte_314
	JSR	sub_94D3
	JSR	sub_9542
	LDA	byte_314
	CMP	byte_315
	BCC	loc_8F35
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
	LDA	byte_46E
	CMP	#$1A
	BEQ	loc_8FBB
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
	LDA	entry_idx_300
	CMP	#$9A 
	BEQ	locret_8FDB
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
	LDA	sprite_length_30F
	CMP	#$FF
	BEQ	loc_900F
	LDA	byte_4AF
	CMP	#0
	BNE	loc_900B
	set byte_445, #1
	JSR	sub_994F
	set byte_445, #0
	LDA	sprite_length_30F
	CMP	#$FF
	BEQ	loc_900F

loc_900B:
	JSR	sub_DFC1
	RTS
; ---------------------------------------------------------------------------

loc_900F:
	; a_button_pressed_8FDC+2Dj
	set tilemapTypeUnk_30B, #$2D 
	JSR	exec_b12_com48_ECA6
	LDX	byte_434
	set tilemapTypeUnk_30B, {obj_array_unk_415,X}
	LDA	tilemapTypeUnk_30B
	CMP	#$1D
	BNE	loc_902F
	LDA	entry_idx_300
	CMP	#$1E
	BEQ	loc_902F
	RTS
; ---------------------------------------------------------------------------

loc_902F:
	; a_button_pressed_8FDC+50j
	LDA	tilemapTypeUnk_30B
	CMP	#2
	BNE	loc_9042
	LDA	byte_5F9
	CMP	#0
	BEQ	loc_9042
	set tilemapTypeUnk_30B, #$3B 

loc_9042:
	; a_button_pressed_8FDC+5Fj
	LDA	tilemapTypeUnk_30B
	CMP	#$1F
	BNE	loc_9061
	to_stack tilemapTypeUnk_30B
	set inv_sprite_idx_31C, #$32 
	JSR	sub_EC86
	from_stack tilemapTypeUnk_30B
	LDA	is_game_finished_561
	CMP	#0
	BEQ	loc_9061
	RTS
; ---------------------------------------------------------------------------

loc_9061:
	; a_button_pressed_8FDC+82j
	LDA	tilemapTypeUnk_30B
	CMP	#$3C 
	BCC	loc_90BB
	LDA	tilemapTypeUnk_30B
	CMP	#$47 
	BEQ	loc_90BB
	BCS	loc_90BB
	LDA	tilemapTypeUnk_30B
	SEC
	SBC	#$3C 
	CLC
	ADC	#$14
	STA	text_idx_35C
	LDA	#0
	ADC	#2
	STA	char_type_id_35D
	to_stack tilemapTypeUnk_30B
	LDX	#1
	JSR	sub_CF13
	set text_idx_35C, #$1F
	set char_type_id_35D, #2
	LDX	#1
	JSR	sub_CF13
	JSR	sub_CAA9
	from_stack tilemapTypeUnk_30B
	LDA	byte_372
	BNE	locret_90BA
	LDX	byte_4C1
	LDA	tilemapTypeUnk_30B
	SEC
	SBC	#$3C 
	STA	unk_4B6,X
	INC	byte_4C1
	JMP	loc_9125
; ---------------------------------------------------------------------------

locret_90BA:
	RTS
; ---------------------------------------------------------------------------

loc_90BB:
	; a_button_pressed_8FDC+91j ...
	LDA	tilemapTypeUnk_30B
	CMP	#$47 
	BCC	loc_911D
	LDA	tilemapTypeUnk_30B
	SEC
	SBC	#$47 
	CLC
	ADC	#$99 
	STA	text_idx_35C
	LDA	#0
	ADC	#0
	STA	char_type_id_35D
	LDA	tilemapTypeUnk_30B
	CMP	#$55 
	BNE	loc_90E6
	set text_idx_35C, #$3A 
	set char_type_id_35D, #2

loc_90E6:
	to_stack tilemapTypeUnk_30B
	LDX	#1
	JSR	sub_CF13
	set text_idx_35C, #$1F
	set char_type_id_35D, #2
	LDX	#1
	JSR	sub_CF13
	JSR	sub_CAA9
	from_stack tilemapTypeUnk_30B
	LDA	byte_372
	BNE	locret_911C
	LDX	byte_4D0
	LDA	tilemapTypeUnk_30B
	SEC
	SBC	#$47 
	STA	unk_4C2,X
	INC	byte_4D0
	JMP	loc_9125
; ---------------------------------------------------------------------------

locret_911C:
	RTS
; ---------------------------------------------------------------------------

loc_911D:
	JSR	exec_b12_cD_EAD6
	LDA	sprite_length_30F
	BEQ	locret_9131

loc_9125:
	; a_button_pressed_8FDC+13Dj
	JSR	exec_b12_cA_EABE
	set cur_obj_idx_unk_43A, byte_434
	JSR	sub_DBE2

locret_9131:
	RTS
; End of function a_button_pressed_8FDC


; =============== S U B	R O U T	I N E =======================================


sub_9132:
	set byte_357, #$18
	set byte_358, #0
	set byte_359, #$1C
	set byte_360, #3
	set byte_361, #0
	set text_unk_35B, #$C0 
	JSR	sub_F65C
	set ppu_unk_byte_309, #$19
	set tilemap_size_307, #4
	set byte_35E, #$C
	set byte_35F, #1
	set byte_362, #0
	set byte_363, #0
	set sprite_secondByte_31B, #$D0 
	LDA	text_unk_35B
	CLC
	ADC	#5
	STA	byte_310
	JSR	exec_b2_c4_C90E
	set byte_357, #$18
	set byte_358, #0
	set byte_359, #$1C
	JSR	sub_F767
	RTS
; End of function sub_9132


; =============== S U B	R O U T	I N E =======================================


sub_9195:
	LDA	byte_433
	BEQ	sub_91B6
	LDX	byte_313
	set objMapIdx_316, {byte_9537,X}
	LDA	byte_313
	CMP	#2
	BNE	loc_91AF
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
	set objMapIdx_316, {byte_9533,X}
	STA	byte_4AA
	LDA	byte_313
	CMP	#2
	BNE	loc_91D1
	set byte_317, #$40 

loc_91D1:
	JSR	sub_C77D
	JSR	sub_938D
	RTS
; End of function sub_91B6


; =============== S U B	R O U T	I N E =======================================


sub_91D8:
	LDA	byte_433
	BEQ	loc_91DE
	RTS
; ---------------------------------------------------------------------------

loc_91DE:
	LDA	byte_42A
	BNE	loc_91E4
	RTS
; ---------------------------------------------------------------------------

loc_91E4:
	set byte_42A, #0
	set sprite_length_30F, #0
	LDX	#0

objects_update_91F0:
	CPX	objArraySize_373
	BEQ	locret_9260
	set byte_36A, byte_42C
	set byte_36B, byte_42D
	set byte_366, byte_42E
	set byte_367, byte_42F
	LDA	objCreatedArray_393,X
	BNE	next_object_924D
	LDA	objIdxArray_375,X
	CMP	#1
	BEQ	case0_923C
	CMP	#2
	BEQ	case0_923C
	CMP	#$B
	BEQ	case0_923C
	CMP	#$D
	BEQ	case0_923C
	CMP	#$E
	BEQ	case0_923C
	CMP	#$10
	BEQ	case0_923C
	CMP	#$11
	BEQ	case0_923C
	CMP	#$18
	BEQ	case0_923C
	CMP	#$19
	BEQ	case0_923C
	JMP	next_object_924D
; ---------------------------------------------------------------------------

case0_923C:
	TXA
	PHA
	JSR	sub_D894
	from_stack_to_x
	STX	cur_obj_idx_unk_43A
	LDA	sprite_length_30F
	CMP	#$FF
	BEQ	loc_9251

next_object_924D:
	INX
	JMP	objects_update_91F0
; ---------------------------------------------------------------------------

loc_9251:
	LDA	sprite_length_30F
	CMP	#0
	BEQ	locret_9260
	set byte_439, #$FF
	JMP	loc_8ABF
; ---------------------------------------------------------------------------

locret_9260:
	RTS
; End of function sub_91D8


; =============== S U B	R O U T	I N E =======================================


sub_9261:
	JSR	sub_C7C7
	add_to_byte_clc byte_366, #4
	add_to_byte byte_367, #0

	set sprite_length_30F, #0

loc_927A:
	LDA	byte_42C
	SEC
	SBC	byte_36A
	LDA	byte_42D
	SBC	byte_36B
	BCC	loc_92B7
	LDA	byte_36A
	SEC
	SBC	byte_42C
	LDA	byte_36B
	SBC	byte_42D
	BCC	loc_92A3
	LDA	sprite_length_30F
	ORA	#$F
	STA	sprite_length_30F
	JMP	loc_92CB
; ---------------------------------------------------------------------------

loc_92A3:
	LDA	byte_42C
	SEC
	SBC	#2
	STA	byte_42C
	LDA	byte_42D
	SBC	#0
	STA	byte_42D
	JMP	loc_92CB
; ---------------------------------------------------------------------------

loc_92B7:
	add_to_byte_clc byte_42C, #2
	add_to_byte byte_42D, #0

	JMP	loc_92CB
; ---------------------------------------------------------------------------

loc_92CB:
	LDA	byte_42E
	SEC
	SBC	byte_366
	LDA	byte_42F
	SBC	byte_367
	BCC	loc_9308
	LDA	byte_366
	SEC
	SBC	byte_42E
	LDA	byte_367
	SBC	byte_42F
	BCC	loc_92F4
	LDA	sprite_length_30F
	ORA	#$F0 
	STA	sprite_length_30F
	JMP	loc_931C
; ---------------------------------------------------------------------------

loc_92F4:
	LDA	byte_42E
	SEC
	SBC	#2
	STA	byte_42E
	LDA	byte_42F
	SBC	#0
	STA	byte_42F
	JMP	loc_931C
; ---------------------------------------------------------------------------

loc_9308:
	add_to_byte_clc byte_42E, #2
	add_to_byte byte_42F, #0

	JMP	loc_931C
; ---------------------------------------------------------------------------

loc_931C:
	to_stack byte_36A
	to_stack byte_36B
	to_stack byte_366
	to_stack byte_367
	to_stack sprite_length_30F
	JSR	sub_935A
	from_stack sprite_length_30F
	from_stack byte_367
	from_stack byte_366
	from_stack byte_36B
	from_stack byte_36A
	JSR	wait_for_frame_rendered_FCA0
	LDA	sprite_length_30F
	CMP	#$FF
	BEQ	loc_9354
	JMP	loc_927A
; ---------------------------------------------------------------------------

loc_9354:
	set byte_42A, #0
	RTS
; End of function sub_9261


; =============== S U B	R O U T	I N E =======================================


sub_935A:
	set byte_31A, #0
	set sprite_secondByte_31B, #0
	STA	sprPalIdx_319
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


sub_938D:
	set byte_200, #$F0 
	STA	byte_204
	STA	byte_208
	STA	byte_20C
	RTS
; End of function sub_938D


; =============== S U B	R O U T	I N E =======================================


sub_939C:
	
	JSR	sub_C7C7
	LDA	byte_313
	CMP	#0
	BEQ	loc_93D5
	CMP	#1
	BEQ	loc_93FC
	CMP	#2
	BEQ	loc_9423
	LDA	byte_203
	CMP	#$F0 
	BEQ	locret_93D4
	JSR	sub_944A
	LDA	sprite_length_30F
	BNE	locret_93D4
	add_to_byte_clc byte_42C, #2
	add_to_byte byte_42D, #0

	INC	byte_430
	INC	byte_430

locret_93D4:
	RTS
; ---------------------------------------------------------------------------

loc_93D5:
	LDA	byte_200
	CMP	#0
	BEQ	locret_93FB
	JSR	sub_944A
	LDA	sprite_length_30F
	BNE	locret_93FB
	LDA	byte_42E
	SEC
	SBC	#2
	STA	byte_42E
	LDA	byte_42F
	SBC	#0
	STA	byte_42F
	DEC	byte_431
	DEC	byte_431

locret_93FB:
	RTS
; ---------------------------------------------------------------------------

loc_93FC:
	LDA	byte_200
	CMP	#$E0 
	BEQ	locret_9422
	JSR	sub_944A
	LDA	sprite_length_30F
	BNE	locret_9422
	add_to_byte_clc byte_42E, #2
	add_to_byte byte_42F, #0

	INC	byte_431
	INC	byte_431

locret_9422:
	RTS
; ---------------------------------------------------------------------------

loc_9423:
	LDA	byte_203
	CMP	#0
	BEQ	locret_9449
	JSR	sub_944A
	LDA	sprite_length_30F
	BNE	locret_9449
	LDA	byte_42C
	SEC
	SBC	#2
	STA	byte_42C
	LDA	byte_42D
	SBC	#0
	STA	byte_42D
	DEC	byte_430
	DEC	byte_430

locret_9449:
	RTS
; End of function sub_939C


; =============== S U B	R O U T	I N E =======================================


sub_944A:
	set sprite_length_30F, #0
	to_stack byte_430
	to_stack byte_431
	LDA	byte_313
	CMP	#0
	BEQ	loc_9469
	CMP	#1
	BEQ	loc_9472
	CMP	#2
	BEQ	loc_947B
	JMP	loc_9484
; ---------------------------------------------------------------------------

loc_9469:
	DEC	byte_431
	DEC	byte_431
	JMP	loc_948A
; ---------------------------------------------------------------------------

loc_9472:
	INC	byte_431
	INC	byte_431
	JMP	loc_948A
; ---------------------------------------------------------------------------

loc_947B:
	DEC	byte_430
	DEC	byte_430
	JMP	loc_948A
; ---------------------------------------------------------------------------

loc_9484:
	INC	byte_430
	INC	byte_430

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
	CLC
	ADC	ppu_unk_byte_309
	CMP	byte_42B
	BCC	loc_94C5
	set sprite_length_30F, #$FF
	JMP	loc_94CA
; ---------------------------------------------------------------------------

loc_94C5:
	set sprite_length_30F, #0

loc_94CA:
	from_stack byte_431
	from_stack byte_430
	RTS
; End of function sub_944A


; =============== S U B	R O U T	I N E =======================================


sub_94D3:
	LDA	byte_315
	CMP	#4
	BEQ	loc_94E9
	LDA	byte_314
	AND	#1
	BEQ	loc_94E2
	RTS
; ---------------------------------------------------------------------------

loc_94E2:
	LDA	byte_314
	LSR	A
	JMP	loc_94EC
; ---------------------------------------------------------------------------

loc_94E9:
	LDA	byte_314

loc_94EC:
	SEC
	SBC	#1
	STA	objMapIdx_316
	LDA	byte_313
	mult_a_by_4
	CLC
	ADC	objMapIdx_316
	TAX
	set objMapIdx_316, {byte_9523,X}
	STA	byte_4AA
	LDA	byte_313
	CMP	#2
	BNE	loc_9511
	set byte_317, #$40 

loc_9511:
	JSR	sub_C77D
	LDA	byte_314
	CMP	byte_315
	BEQ	locret_9522
	JSR	wait_for_frame_rendered_FCA0
	JSR	wait_for_frame_rendered_FCA0

locret_9522:
	RTS
; End of function sub_94D3

; ---------------------------------------------------------------------------
byte_9523:.BYTE  $B, $B, $D, $D,	6,  6,	8,  8,	1,  1,	2,  2,	1,  1,	2,  2
	
	
byte_9533:.BYTE  $A,  5,	0,  0	
	; load_image_C6D2+9Fr
byte_9537:.BYTE $11, $F,$10,$10	
byte_953B:.BYTE	0,$20,$30,$3C,$50,$3C,$60 

; =============== S U B	R O U T	I N E =======================================


sub_9542:
	JSR	sub_9881
	LDA	entry_idx_300
	CMP	#$46 
	BNE	loc_957C
	LDX	#0
	LDA	array_unk_3C5,X
	CMP	#$60 
	BNE	loc_957C
	LDA	array_unk_3D9,X
	CMP	#$60 
	BNE	loc_957C
	LDX	#2
	LDA	array_unk_3C5,X
	CMP	#$90 
	BNE	loc_957C
	LDA	array_unk_3D9,X
	CMP	#$60 
	BNE	loc_957C
	set byte_5BF, #0
	STA	byte_5C0
	set byte_5C1, #$FF
	STA	byte_5C2

loc_957C:
	LDA	entry_idx_300
	CMP	#$3D 
	BNE	loc_95CA
	LDX	#0
	LDA	array_unk_3C5,X
	CMP	#$50 
	BNE	loc_95CA
	LDA	array_unk_3BB,X
	CMP	#0
	BNE	loc_95CA
	LDA	array_unk_3D9,X
	CMP	#$30 
	BNE	loc_95CA
	LDA	array_unk_3CF,X
	CMP	#0
	BNE	loc_95CA
	set byte_58A, #$FF
	JSR	exec_b12_c9_EAB6
	set image_id_4A4, entry_idx_300
	set image_offset_4A5, ppu_unk_byte_302
	set ppu_prev_unk_4A6, ppu_unk_byte_303
	set ppu_prev_scroll_x_unk_4A7, ppu_scroll_x_304
	set ppu_prev_scroll_y_unk_4A8, ppu_scroll_y_305
	JSR	load_image_C6D2

loc_95CA:
	LDA	entry_idx_300
	CMP	#$65 
	BNE	loc_9602
	LDX	#0

loc_95D3:
	LDA	objIdxArray_375,X
	CMP	#3
	BEQ	loc_95EA
	LDA	array_unk_39D,X
	CMP	#1
	BEQ	loc_95EA
	INX
	CPX	objArraySize_373
	BCC	loc_95D3
	JMP	loc_9602
; ---------------------------------------------------------------------------

loc_95EA:
	set byte_567, {array_unk_3C5,X}
	set byte_568, {array_unk_3BB,X}
	set byte_569, {array_unk_3D9,X}
	set byte_56A, {array_unk_3CF,X}

loc_9602:
	LDA	entry_idx_300
	CMP	#$3C 
	BNE	loc_963A
	LDX	#0

loc_960B:
	LDA	objIdxArray_375,X
	CMP	#3
	BNE	loc_9619
	LDA	array_unk_39D,X
	CMP	#1
	BEQ	loc_9622

loc_9619:
	INX
	CPX	objArraySize_373
	BCC	loc_960B
	JMP	loc_963A
; ---------------------------------------------------------------------------

loc_9622:
	set byte_56B, {array_unk_3C5,X}
	set byte_56C, {array_unk_3BB,X}
	set byte_56D, {array_unk_3D9,X}
	set byte_56E, {array_unk_3CF,X}

loc_963A:
	LDA	entry_idx_300
	CMP	#$5C 
	BEQ	loc_9648
	CMP	#$93 
	BEQ	loc_9648
	JMP	loc_9679
; ---------------------------------------------------------------------------

loc_9648:
	
	LDX	#0

loc_964A:
	LDA	objIdxArray_375,X
	CMP	#3
	BNE	loc_9658
	LDA	array_unk_39D,X
	CMP	#2
	BEQ	loc_9661

loc_9658:
	INX
	CPX	objArraySize_373
	BCC	loc_964A
	JMP	loc_9679
; ---------------------------------------------------------------------------

loc_9661:
	set byte_56F, {array_unk_3C5,X}
	set byte_570, {array_unk_3BB,X}
	set byte_571, {array_unk_3D9,X}
	set byte_572, {array_unk_3CF,X}

loc_9679:
	
	LDA	entry_idx_300
	CMP	#$5D 
	BNE	loc_96AA
	LDX	#0

loc_9682:
	LDA	objIdxArray_375,X
	CMP	#3
	BEQ	loc_9692
	INX
	CPX	objArraySize_373
	BCC	loc_9682
	JMP	loc_96AA
; ---------------------------------------------------------------------------

loc_9692:
	set byte_573, {array_unk_3C5,X}
	set byte_574, {array_unk_3BB,X}
	set byte_575, {array_unk_3D9,X}
	set byte_576, {array_unk_3CF,X}

loc_96AA:
	
	LDA	entry_idx_300
	CMP	#$7D 
	BNE	loc_971B
	LDA	array_unk_3C5
	CMP	#$50 
	BNE	loc_96C2
	LDA	array_unk_3D9
	CMP	#$60 
	BNE	loc_96C2
	JMP	loc_96D3
; ---------------------------------------------------------------------------

loc_96C2:
	
	LDA	array_unk_3C5
	CMP	#$A0 
	BNE	loc_971B
	LDA	array_unk_3D9
	CMP	#$60 
	BNE	loc_971B
	JMP	loc_96E4
; ---------------------------------------------------------------------------

loc_96D3:
	LDA	byte_3C6
	CMP	#$A0 
	BNE	loc_971B
	LDA	byte_3DA
	CMP	#$60 
	BNE	loc_971B
	JMP	loc_96F2
; ---------------------------------------------------------------------------

loc_96E4:
	LDA	byte_3C6
	CMP	#$50 
	BNE	loc_971B
	LDA	byte_3DA
	CMP	#$60 
	BNE	loc_971B

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
	set byte_435, #0
	STA	byte_436
	STA	byte_437
	STA	byte_438
	JSR	sub_97F8
	LDA	sprite_length_30F
	CMP	#$FF
	BEQ	loc_9740
	JMP	loc_97D2
; ---------------------------------------------------------------------------

loc_9740:
	LDA	entry_idx_300
	CMP	#$5D 
	BNE	loc_9773
	LDX	byte_434
	LDA	objIdxArray_375,X
	CMP	#3
	BNE	loc_9773
	LDA	byte_573
	CMP	#$90 
	BNE	loc_9773
	LDA	byte_574
	CMP	#1
	BNE	loc_9773
	LDA	byte_575
	CMP	#$B0 
	BNE	loc_9773
	LDA	byte_576
	CMP	#0
	BNE	loc_9773
	set sprite_length_30F, #$FF
	RTS
; ---------------------------------------------------------------------------

loc_9773:
	LDX	byte_434
	LDA	objIdxArray_375,X
	CMP	#6
	BEQ	loc_97E7
	LDX	byte_434
	LDA	objIdxArray_375,X
	CMP	#3
	BNE	loc_97D2
	LDA	array_unk_39D,X
	CMP	#0
	BEQ	loc_9797
	CMP	#1
	BEQ	loc_9797
	CMP	#2
	BEQ	loc_9797
	RTS
; ---------------------------------------------------------------------------

loc_9797:
	to_stack byte_313
	JSR	sub_D9B9
	from_stack byte_313
	JSR	sub_98F2
	STX	tilemapTypeUnk_30B
	TXA
	PHA
	JSR	sub_8762
	from_stack_to_x
	LDA	sprite_length_30F
	CMP	#$FF
	BNE	loc_97B9
	JMP	loc_97D2
; ---------------------------------------------------------------------------

loc_97B9:
	to_stack byte_313
	JSR	sub_D9B9
	from_stack byte_313
	TXA
	PHA
	JSR	sub_DDDA
	from_stack_to_x
	LDA	sprite_length_30F
	CMP	#$FF
	BNE	loc_97ED

loc_97D2:
	LDX	byte_434
	LDA	objIdxArray_375,X
	CMP	#$F
	BEQ	loc_97E1
	CMP	#$C
	BEQ	loc_97E1
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
	add_to_byte_clc byte_366, #$10
	add_to_byte byte_367, #0

	add_to_byte_clc byte_36A, #8
	add_to_byte byte_36B, #0

	JSR	sub_9824
	JSR	sub_DA33
	RTS
; End of function sub_97F8


; =============== S U B	R O U T	I N E =======================================


sub_9824:
	LDA	byte_313
	CMP	#0
	BNE	loc_983F
	LDA	byte_366
	SEC
	SBC	#$10
	STA	byte_366
	LDA	byte_367
	SBC	#0
	STA	byte_367
	JMP	locret_9880
; ---------------------------------------------------------------------------

loc_983F:
	CMP	#1
	BNE	loc_9857
	add_to_byte_clc byte_366, #$10
	add_to_byte byte_367, #0

	JMP	locret_9880
; ---------------------------------------------------------------------------

loc_9857:
	CMP	#2
	BNE	loc_986F
	LDA	byte_36A
	SEC
	SBC	#$10
	STA	byte_36A
	LDA	byte_36B
	SBC	#0
	STA	byte_36B
	JMP	locret_9880
; ---------------------------------------------------------------------------

loc_986F:
	add_to_byte_clc byte_36A, #$10
	add_to_byte byte_36B, #0


locret_9880:
	RTS
; End of function sub_9824


; =============== S U B	R O U T	I N E =======================================


sub_9881:
	LDA	byte_435
	CMP	#$FF
	BEQ	loc_988B
	JMP	locret_98F1
; ---------------------------------------------------------------------------

loc_988B:
	LDX	byte_434
	LDA	byte_313
	CMP	#0
	BEQ	loc_98CC
	CMP	#1
	BEQ	loc_98E0
	CMP	#2
	BEQ	loc_98A4
	CMP	#3
	BEQ	loc_98B8
	JMP	locret_98F1
; ---------------------------------------------------------------------------

loc_98A4:
	LDA	array_unk_3C5,X
	SEC
	SBC	#2
	STA	array_unk_3C5,X
	LDA	array_unk_3BB,X
	SBC	#0
	STA	array_unk_3BB,X
	JMP	locret_98F1
; ---------------------------------------------------------------------------

loc_98B8:
	LDA	array_unk_3C5,X
	CLC
	ADC	#2
	STA	array_unk_3C5,X
	LDA	array_unk_3BB,X
	ADC	#0
	STA	array_unk_3BB,X
	JMP	locret_98F1
; ---------------------------------------------------------------------------

loc_98CC:
	LDA	array_unk_3D9,X
	SEC
	SBC	#2
	STA	array_unk_3D9,X
	LDA	array_unk_3CF,X
	SBC	#0
	STA	array_unk_3CF,X
	JMP	locret_98F1
; ---------------------------------------------------------------------------

loc_98E0:
	LDA	array_unk_3D9,X
	CLC
	ADC	#2
	STA	array_unk_3D9,X
	LDA	array_unk_3CF,X
	ADC	#0
	STA	array_unk_3CF,X

locret_98F1:
	RTS
; End of function sub_9881


; =============== S U B	R O U T	I N E =======================================


sub_98F2:
	LDA	byte_313
	CMP	#0
	BNE	loc_990D
	LDA	byte_366
	SEC
	SBC	#$10
	STA	byte_366
	LDA	byte_367
	SBC	#0
	STA	byte_367
	JMP	locret_994E
; ---------------------------------------------------------------------------

loc_990D:
	CMP	#1
	BNE	loc_9925
	add_to_byte_clc byte_366, #$10
	add_to_byte byte_367, #0

	JMP	locret_994E
; ---------------------------------------------------------------------------

loc_9925:
	CMP	#2
	BNE	loc_993D
	LDA	byte_36A
	SEC
	SBC	#$10
	STA	byte_36A
	LDA	byte_36B
	SBC	#0
	STA	byte_36B
	JMP	locret_994E
; ---------------------------------------------------------------------------

loc_993D:
	add_to_byte_clc byte_36A, #$10
	add_to_byte byte_36B, #0


locret_994E:
	RTS
; End of function sub_98F2


; =============== S U B	R O U T	I N E =======================================


sub_994F:
	; a_button_pressed_8FDC+20p
	set sprite_length_30F, #0
	LDX	#0

loc_9956:
	CPX	objArraySize_373
	BEQ	locret_9999
	LDA	objCreatedArray_393,X
	CMP	#0
	BNE	loc_9995
	LDA	objIdxArray_375,X
	CMP	#6
	BNE	loc_9995
	TXA
	PHA
	JSR	sub_C7C7
	LDA	byte_445
	CMP	#0
	BEQ	loc_9986
	LDA	byte_366
	SEC
	SBC	#$16
	STA	byte_366
	LDA	byte_367
	SBC	#0
	STA	byte_367

loc_9986:
	JSR	sub_D894
	from_stack_to_x
	STX	byte_434
	LDA	sprite_length_30F
	CMP	#$FF
	BEQ	locret_9999

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
	
	add_to_byte_clc byte_366, #8
	add_to_byte byte_367, #0

	JSR	sub_9824

	set tilemapWidth_308, byte_36A
	set tilemap_size_307, byte_36B
	set tilemapHeight_30A, byte_366
	set ppu_unk_byte_309, byte_367

	set_ptr off_9B32

	LDY	#0
	set tilemapTypeUnk_30B, {(ptr_0),Y}

	add_to_ptr 1

	set inv_spr_dscr1_30C, #0

loc_99EF:
	LDA	inv_spr_dscr1_30C
	mult_a_by_2
	TAY
	set_iny data_2, {(ptr_0),Y}
	set data_3, {(ptr_0),Y}
	LDY	#0
	LDA	(data_2),Y
	CMP	entry_idx_300
	BNE	loc_9A7F
	INY
	set_iny byte_36A, {(data_2),Y}
	set_iny byte_36B, {(data_2),Y}
	set_iny byte_366, {(data_2),Y}
	set_iny byte_367, {(data_2),Y}
	set_iny byte_36C, {(data_2),Y}
	set_iny byte_36D, {(data_2),Y}
	set_iny byte_368, {(data_2),Y}
	set_iny byte_369, {(data_2),Y}
	LDA	tilemapWidth_308
	SEC
	SBC	byte_36A
	LDA	tilemap_size_307
	SBC	byte_36B
	BCC	loc_9A7F
	LDA	tilemapHeight_30A
	SEC
	SBC	byte_366
	LDA	ppu_unk_byte_309
	SBC	byte_367
	BCC	loc_9A7F
	LDA	byte_36C
	SEC
	SBC	tilemapWidth_308
	LDA	byte_36D
	SBC	tilemap_size_307
	BCC	loc_9A7F
	LDA	byte_368
	SEC
	SBC	tilemapHeight_30A
	LDA	byte_369
	SBC	ppu_unk_byte_309
	BCC	loc_9A7F
	set_iny ptr_0, {(data_2),Y}
	set ptr_1, {(data_2),Y}
	JMP	(ptr_0)
; ---------------------------------------------------------------------------

loc_9A7F:
	INC	inv_spr_dscr1_30C
	LDA	inv_spr_dscr1_30C
	CMP	tilemapTypeUnk_30B
	BEQ	loc_9A8D
	JMP	loc_99EF
; ---------------------------------------------------------------------------

loc_9A8D:
	LDA	entry_idx_300
	CMP	#$6A 
	BNE	locret_9AD8
	LDA	byte_577
	CMP	#$FF
	BNE	locret_9AD8
	LDA	tilemapWidth_308
	CMP	byte_57A
	BNE	locret_9AD8
	LDA	tilemap_size_307
	CMP	byte_57D
	BNE	locret_9AD8
	LDA	tilemapHeight_30A
	CMP	byte_580
	BNE	loc_9AC3
	LDA	ppu_unk_byte_309
	CMP	byte_583
	BNE	loc_9AC3
	set byte_584, #$FF
	JMP	locret_9AD8
; ---------------------------------------------------------------------------

loc_9AC3:
	
	LDA	tilemapHeight_30A
	CMP	byte_57E
	BNE	locret_9AD8
	LDA	ppu_unk_byte_309
	CMP	byte_581
	BNE	locret_9AD8
	set byte_584, #$FE 

locret_9AD8:
	RTS
; End of function sub_999A


; =============== S U B	R O U T	I N E =======================================


show_hidden_copyright_9AD9:
	set text_idx_35C, #$47 
	set char_type_id_35D, #2
	set byte_364, #4
	set ppu_unk_byte_309, #$D
	set tilemap_size_307, #4
	set byte_35E, #$C
	set byte_35F, #1
	set byte_362, #0
	set byte_363, #0
	set sprite_secondByte_31B, #$A0 
	to_stack byte_360
	to_stack byte_361
	set byte_360, #0
	set byte_361, #3
	JSR	exec_b2_c4_C90E
	from_stack byte_361
	from_stack byte_360
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
byte_BCF2:.BYTE	0	
byte_BCF3:.BYTE	0	
byte_BCF4:.BYTE	0	
byte_BCF5:.BYTE	0	
byte_BCF6:.BYTE	0	
byte_BCF7:.BYTE	0	
byte_BCF8:.BYTE	0	
byte_BCF9:.BYTE	0	
byte_BCFA:.BYTE	0	
byte_BCFB:.BYTE	0	
byte_BCFC:.BYTE	0	
byte_BCFD:.BYTE	0	
byte_BCFE:.BYTE	0	
byte_BCFF:.BYTE	0	
byte_BD00:.BYTE	0	
byte_BD01:.BYTE	0	
byte_BD02:.BYTE	0	
byte_BD03:.BYTE	0	
byte_BD04:.BYTE	0	
byte_BD05:.BYTE	0	
byte_BD06:.BYTE	0	
byte_BD07:.BYTE	0	
byte_BD08:.BYTE	0	
byte_BD09:.BYTE $A3	
byte_BD0A:.BYTE $88	
byte_BD0B:.BYTE $8E	
byte_BD0C:.BYTE $72	
byte_BD0D:.BYTE $B6	
byte_BD0E:.BYTE $99	
byte_BD0F:.BYTE $86	
byte_BD10:.BYTE  $B,$18,$25,$30,$39,$45,$50,$58,$63,$70,$7C,$85
	
byte_BD1C:.BYTE	2,$16,$21	

; =============== S U B	R O U T	I N E =======================================


sub_BD1F:
	set tilemapWidth_308, #0
	set byte_31A, #0
; End of function sub_BD1F


; =============== S U B	R O U T	I N E =======================================


sub_BD29:
	add_to_byte_clc tilemapWidth_308, byte_31A
	LDY	byte_31A

loc_BD36:
	set_iny {byte_200,Y}, #$F0 
	INY
	INY
	INY
	CPY	tilemapWidth_308
	BNE	loc_BD36
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
	LDA	byte_341
	CMP	#0
	BNE	loc_BD7A
	set inv_spr_dscr1_30C, #1

loc_BD7A:
	LDY	#0

loc_BD7C:
	LDA	inv_spr_dscr1_30C
	CMP	#4
	BEQ	loc_BD8F
	CMP	#3
	BEQ	loc_BD97
	CMP	#2
	BEQ	loc_BDA8
	CMP	#1
	BEQ	loc_BDB9

loc_BD8F:
	LDA	palette_bg_321,Y 
	AND	#$CF 
	JMP	loc_BDCD
; ---------------------------------------------------------------------------

loc_BD97:
	LDA	palette_bg_321,Y 
	AND	#$30 
	CMP	#$30 
	BCC	loc_BDCA
	LDA	palette_bg_321,Y 
	AND	#$DF 
	JMP	loc_BDCD
; ---------------------------------------------------------------------------

loc_BDA8:
	LDA	palette_bg_321,Y 
	AND	#$30 
	CMP	#$20 
	BCC	loc_BDCA
	LDA	palette_bg_321,Y 
	AND	#$EF 
	JMP	loc_BDCD
; ---------------------------------------------------------------------------

loc_BDB9:
	LDA	palette_bg_321,Y 
	AND	#$30 
	CMP	#$10
	BCC	loc_BDCA
	LDA	palette_bg_321,Y 
	AND	#$FF
	JMP	loc_BDCD
; ---------------------------------------------------------------------------

loc_BDCA:
	LDA	palette_bg_321,Y 

loc_BDCD:
	STA	ppu_data_70,X
	INX
	INY
	CPY	#$20 
	BCC	loc_BD7C
	set has_ppu_data_to_upload_6F, #1
	DEC	inv_spr_dscr1_30C
	LDA	inv_spr_dscr1_30C
	CMP	#0
	BEQ	loc_BDEC
	LDA	byte_341
	JSR	wait_for_frame_rendered_FCA0
	JMP	loc_BD54
; ---------------------------------------------------------------------------

loc_BDEC:
	LDA	byte_341
	CMP	#0
	BEQ	loc_BDF7
	JSR	wait_for_frame_rendered_FCA0
	RTS
; ---------------------------------------------------------------------------

loc_BDF7:
	CLC
	ADC	#1
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
	LDA	byte_341
	CMP	#0
	BNE	loc_BE29
	set inv_spr_dscr1_30C, #0

loc_BE29:
	LDY	#0

loc_BE2B:
	LDA	inv_spr_dscr1_30C
	CMP	#4
	BEQ	loc_BE42
	CMP	#3
	BEQ	loc_BE4A
	CMP	#2
	BEQ	loc_BE5B
	CMP	#1
	BEQ	loc_BE6C
	CMP	#0
	BEQ	loc_BE7D

loc_BE42:
	LDA	palette_bg_321,Y 
	AND	#$FF
	JMP	loc_BE85
; ---------------------------------------------------------------------------

loc_BE4A:
	LDA	palette_bg_321,Y 
	AND	#$30 
	CMP	#$30 
	BCC	loc_BE82
	LDA	palette_bg_321,Y 
	AND	#$EF 
	JMP	loc_BE85
; ---------------------------------------------------------------------------

loc_BE5B:
	LDA	palette_bg_321,Y 
	AND	#$30 
	CMP	#$20 
	BCC	loc_BE82
	LDA	palette_bg_321,Y 
	AND	#$DF 
	JMP	loc_BE85
; ---------------------------------------------------------------------------

loc_BE6C:
	LDA	palette_bg_321,Y 
	AND	#$30 
	CMP	#$10
	BCC	loc_BE82
	LDA	palette_bg_321,Y 
	AND	#$CF 
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
	CPY	#$20 
	BCC	loc_BE2B
	set has_ppu_data_to_upload_6F, #1
	DEC	inv_spr_dscr1_30C
	LDA	inv_spr_dscr1_30C
	CMP	#$FF
	BEQ	loc_BEA4
	LDA	byte_341
	JSR	wait_for_frame_rendered_FCA0
	JMP	loc_BE03
; ---------------------------------------------------------------------------

loc_BEA4:
	LDA	byte_341
	CMP	#0
	BEQ	loc_BEAF
	JSR	wait_for_frame_rendered_FCA0
	RTS
; ---------------------------------------------------------------------------

loc_BEAF:
	CLC
	ADC	#1
	JSR	wait_for_frame_rendered_FCA0
	RTS
; End of function sub_BDFE


; =============== S U B	R O U T	I N E =======================================

sub_BEB6:
	TXA
	PHA
	LDX	#0

loc_BEBA:
	ADC	ptr_0,X
	ADC	byte_100,X
	ADC	byte_200,X
	ADC	entry_idx_300,X
	ADC	unk_400,X
	ADC	unk_500,X
	ADC	byte_600,X
	ADC	apu_unk_700,X
	INX
	CPX	#0
	BNE	loc_BEBA
	STA	byte_351

loc_BED9:
	LDA	byte_351
	CMP	byte_352
	BCC	loc_BEEE
	LDA	byte_351
	SEC
	SBC	byte_352
	STA	byte_351
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
	
	set byte_430, #0
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
	LDA	sprite_type_306
	BNE	loc_C71B
	set byte_301, entry_idx_300

loc_C71B:
	JSR	sub_BD1F
	JSR	sub_C873
	JSR	sub_C921
	JSR	sub_ECCC
	JSR	sub_EE72
	LDA	sprite_type_306
	BNE	loc_C743
	JSR	upload_text_palette_to_ppu_FB85
	LDA	map_show_43B
	BNE	loc_C73D
	JSR	sub_CBE2
	JSR	sub_D409

loc_C73D:
	JSR	objects_func_D644
	JSR	objects_func_D52A

loc_C743:
	JSR	load_tiles_to_ppu_C83A
	LDA	ppu_unk_byte_303
	AND	#1
	BEQ	loc_C75A
	LDA	ppu_ctrl_31F
	AND	#$FC 
	ORA	#2
	STA	ppu_ctrl_31F
	JMP	loc_C762
; ---------------------------------------------------------------------------

loc_C75A:
	LDA	ppu_ctrl_31F
	AND	#$FC 
	STA	ppu_ctrl_31F

loc_C762:
	JSR	ppu_update_ctrl_mask_FE86
	JSR	ppu_unk_func_F09D
	JSR	sub_CBC2
	JSR	sub_BD45
	LDX	byte_4AF
	set objMapIdx_316, {byte_9533,X}
	LDA	sprite_type_306
	BEQ	sub_C77D
	RTS
; End of function load_image_C6D2


; =============== S U B	R O U T	I N E =======================================


sub_C77D:
	
	set byte_317, #0
	LDA	byte_313
	CMP	#2
	BNE	loc_C78E
	set byte_317, #$40 

loc_C78E:
	set byte_31A, #$10
	set sprite_secondByte_31B, #0
	STA	sprPalIdx_319
	set objectIdx_318, #0
	JSR	sub_C7C7
	to_stack byte_317
	JSR	loadt_obj_tilemaps_C84D
	from_stack byte_317
	set byte_31A, #$E8 
	set sprite_secondByte_31B, #0
	STA	sprPalIdx_319
	set objectIdx_318, #0
	JSR	sub_C7C7
	JSR	loadt_obj_tilemaps_C84D
	RTS
; End of function sub_C77D


; =============== S U B	R O U T	I N E =======================================


sub_C7C7:
	
	set byte_36A, ppu_scroll_x_304
	set byte_36B, ppu_unk_byte_302
	add_to_byte_clc byte_36A, byte_4AD
	add_to_byte byte_36B, #0

	set byte_368, ppu_scroll_y_305
	set byte_369, ppu_unk_byte_303
	TYA
	PHA
	LDY	byte_369
	set byte_369, #0

loc_C7FB:
	CPY	#0
	BEQ	loc_C814
	add_to_byte_clc byte_368, #$F0 
	add_to_byte byte_369, #0

	DEY
	JMP	loc_C7FB
; ---------------------------------------------------------------------------

loc_C814:
	from_stack_to_y
	LDA	byte_368
	CLC
	ADC	byte_4AE
	STA	byte_366
	LDA	byte_369
	ADC	#0
	STA	byte_367
	LDA	byte_366
	SEC
	SBC	#8
	STA	byte_366
	LDA	byte_367
	SBC	#0
	STA	byte_367
	RTS
; End of function sub_C7C7


; =============== S U B	R O U T	I N E =======================================


load_tiles_to_ppu_C83A:
	; load_image_C6D2:loc_C743p
	set bank_command_346, #0
	set bank_to_344, #sprites_1
	set bank_from_343, #0
	JSR	bank_switch_8000
	RTS
; End of function load_tiles_to_ppu_C83A


; =============== S U B	R O U T	I N E =======================================


loadt_obj_tilemaps_C84D:
	set bank_command_346, #1
	set bank_to_344, #sprites_1
	set bank_from_343, #0
	JSR	bank_switch_8000
	RTS
; End of function loadt_obj_tilemaps_C84D


; =============== S U B	R O U T	I N E =======================================


exec_b1_c2_C860:
	set bank_command_346, #2
	set bank_to_344, #sprites_1
	set bank_from_343, #0
	JSR	bank_switch_8000
	RTS
; End of function exec_b1_c2_C860


; =============== S U B	R O U T	I N E =======================================


sub_C873:
	to_stack entry_idx_300

	set_ptr unknown_entries_C558

	set_data2 entry_idx_300
	set_data3 #0

	ASL	data_2
	ROL	data_3

	;LDA	ptr_0
	;CLC
	;ADC	data_2
	;STA	ptr_0
	;LDA	ptr_1
	;ADC	data_3
	;STA	ptr_1

	add_to_ptr_addr data_2

	LDY	#0
	set_iny data_2, {(ptr_0),Y}
	set data_3, {(ptr_0),Y}
	LDY	#0
	set entry_idx_300, {(data_2),Y}

exec_b2_c6_C8AB:
	set bank_command_346, #6
	set bank_to_344, #text_2
	set bank_from_343, #0
	JSR	bank_switch_8000

loc_C8BD:
	from_stack entry_idx_300
	RTS
; End of function sub_C873


; =============== S U B	R O U T	I N E =======================================


exec_b2_c0_C8C2:
	set bank_command_346, #0
	set bank_to_344, #text_2
	set bank_from_343, #0
	JSR	bank_switch_8000
	RTS
; End of function exec_b2_c0_C8C2


; =============== S U B	R O U T	I N E =======================================


exec_b2_c1_C8D5:
	set bank_command_346, #1
	set bank_to_344, #text_2
	set bank_from_343, #0
	JSR	bank_switch_8000
	RTS
; End of function exec_b2_c1_C8D5


; =============== S U B	R O U T	I N E =======================================


exec_b2_c2_text_cuts_C8E8:
	
	set bank_command_346, #2
	set bank_to_344, #text_2
	set bank_from_343, #0
	JSR	bank_switch_8000
	RTS
; End of function exec_b2_c2_text_cuts_C8E8


; =============== S U B	R O U T	I N E =======================================


exec_b2_c3_C8FB:
	set bank_command_346, #3
	set bank_to_344, #text_2
	set bank_from_343, #0
	JSR	bank_switch_8000
	RTS
; End of function exec_b2_c3_C8FB


; =============== S U B	R O U T	I N E =======================================


exec_b2_c4_C90E:
	; show_hidden_copyright_9AD9+44p ...
	set bank_command_346, #4
	set bank_to_344, #text_2
	set bank_from_343, #0
	JSR	bank_switch_8000
	RTS
; End of function exec_b2_c4_C90E


; =============== S U B	R O U T	I N E =======================================


sub_C921:
	to_stack entry_idx_300

	set_ptr unknown_entries_C558

	set data_2, entry_idx_300
	set data_3, #0
	ASL	data_2
	ROL	data_3

	add_to_byte_clc ptr_0, data_2
	add_to_byte ptr_1, data_3


	LDY	#0
	set_iny data_2, {(ptr_0),Y}
	set data_3, {(ptr_0),Y}
	LDY	#0
	set entry_idx_300, {(data_2),Y}
	LDX	#0
	set_inx tilemapTypeUnk_30B, {byte_BD1C,X}

loc_C962:
	LDA	entry_idx_300
	CMP	byte_BD1C,X
	BCC	loc_C970
	INX
	CPX	tilemapTypeUnk_30B
	BCC	loc_C962

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
	from_stack entry_idx_300
	RTS
; End of function sub_C921


; =============== S U B	R O U T	I N E =======================================


sub_C98A:
	to_stack tilemapTypeUnk_30B
	LDX	#0
	set_inx tilemapTypeUnk_30B, {byte_BD10,X}

loc_C997:
	LDA	entry_idx_300
	CMP	byte_BD10,X
	BCC	loc_C9A5
	INX
	CPX	tilemapTypeUnk_30B
	BCC	loc_C997

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
	from_stack tilemapTypeUnk_30B
	JSR	bank_switch_8000
	RTS
; End of function sub_C98A


; =============== S U B	R O U T	I N E =======================================


ppu_upset_data_1000_C9BF:

	set_ptr _PPU_PAT_TBL_1

; End of function ppu_upset_data_1000_C9BF


; =============== S U B	R O U T	I N E =======================================


ppu_upset_data_C9C7:
	LDY	#0
	set tilemapWidth_308, {(data_2),Y}

	add_to_data 2

	LDX	#0

loc_C9DD:
	set _PPU_ADDR, ptr_1
	set _PPU_ADDR, ptr_0

	LDY	#0

loc_C9E9:
	set_iny _PPU_DATA, {(data_2),Y}
	CPY	#$10
	BCC	loc_C9E9

	add_to_byte_clc ptr_0, #$10
	add_to_byte ptr_1, #0

	
	add_to_data $10

	INX
	CPX	tilemapWidth_308
	BCC	loc_C9DD
	RTS
; End of function ppu_upset_data_C9C7


; =============== S U B	R O U T	I N E =======================================


sub_CA14:
	TYA
	PHA
	LDY	#0

loc_CA18:
	LDA	byte_367
	CMP	#0
	BEQ	loc_CA34
	LDA	byte_366
	SEC
	SBC	#$F0 
	STA	byte_366
	LDA	byte_367
	SBC	#0
	STA	byte_367
	INY
	JMP	loc_CA18
; ---------------------------------------------------------------------------

loc_CA34:
	LDA	byte_366
	CMP	#$F0 
	BCC	loc_CA45
	LDA	byte_366
	SEC
	SBC	#$F0 
	STA	byte_366
	INY

loc_CA45:
	STY	byte_367
	from_stack_to_y
	RTS
; End of function sub_CA14


; =============== S U B	R O U T	I N E =======================================


exec_b4_c0_CA4B:
	set bank_command_346, #0
	set bank_to_344, #items_spr_4
	set bank_from_343, #0
	JSR	bank_switch_8000
	RTS
; End of function exec_b4_c0_CA4B


; =============== S U B	R O U T	I N E =======================================


exec_b4_c1_CA5E:
	set bank_command_346, #1
	set bank_to_344, #items_spr_4
	set bank_from_343, #0
	JSR	bank_switch_8000
	RTS
; End of function exec_b4_c1_CA5E


; =============== S U B	R O U T	I N E =======================================


exec_b4_c2_CA71:
	set bank_command_346, #2
	set bank_to_344, #items_spr_4
	set bank_from_343, #0
	JSR	bank_switch_8000
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
	; a_button_pressed_8FDC+C0p ...
	set byte_357, #$18
	set byte_358, #0
	set byte_359, #$1C
	set byte_360, #3
	set byte_361, #0
	set text_unk_35B, #$C0 
	JSR	sub_F65C
	set text_idx_35C, #$BB 
	set char_type_id_35D, #0
	set ppu_unk_byte_309, #$19
	set tilemap_size_307, #4
	set byte_35E, #$C
	set byte_35F, #1
	set byte_362, #0
	set byte_363, #0
	set sprite_secondByte_31B, #$D0 
	LDA	text_unk_35B
	CLC
	ADC	#5
	STA	byte_310
	set byte_364, #7
	JSR	exec_b2_c4_C90E
	set byte_364, #0
	set byte_372, #0

loc_CB12:
	JSR	sub_CB58
	JSR	wait_for_frame_rendered_FCA0
	LDA	input_pressed_34A
	CMP	#left_2
	BEQ	left_right_pressed_CB2A
	CMP	#right_1
	BEQ	left_right_pressed_CB2A
	CMP	#a_80
	BEQ	a_pressed_CB3D
	JMP	loc_CB12
; ---------------------------------------------------------------------------

left_right_pressed_CB2A:
	LDA	byte_372
	EOR	#1
	STA	byte_372
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
	to_stack byte_4AD
	to_stack byte_4AE
	LDA	byte_372
	mult_a_by_2
	TAX
	set_inx byte_4AD, {off_CBBE,X}
	LDA	off_CBBE,X
	CLC
	ADC	#4
	STA	byte_4AE
	INX
	LDA	count_unk_465
	CMP	#$A
	BCC	loc_CBAF
	CMP	#$14
	BCC	loc_CBA7
	set count_unk_465, #0
	JMP	loc_CBAF
; ---------------------------------------------------------------------------

loc_CBA7:
	LDA	byte_4AD
	EOR	#1
	STA	byte_4AD

loc_CBAF:
	JSR	sub_C7C7
	from_stack byte_4AE
	from_stack byte_4AD
	JSR	loadt_obj_tilemaps_C84D
	RTS
; End of function sub_CB58

; ---------------------------------------------------------------------------
off_CBBE:.WORD loc_D03C	
	.WORD loc_D080

; =============== S U B	R O U T	I N E =======================================


sub_CBC2:
	; load_image_C6D2+96p
	LDA	entry_idx_300
	CMP	#$46 
	BNE	locret_CBE1
	LDA	byte_560
	CMP	#0
	BEQ	locret_CBE1
	JSR	sub_EE72
	LDX	#0

loc_CBD5:
	set_inx {byte_4,X}, #$AA 
	CPX	#$48 
	BCC	loc_CBD5
	JSR	ppu_unk_func_F09D

locret_CBE1:
	RTS
; End of function sub_CBC2


; =============== S U B	R O U T	I N E =======================================


sub_CBE2:
	to_stack bank_from_343

exec_c12_b29_CBE6:
	set bank_command_346, #$29 
	set bank_to_344, #banks_12
	set bank_from_343, #0
	JSR	bank_switch_8000

loc_CBF8:
	from_stack bank_from_343
	RTS
; End of function sub_CBE2

; ---------------------------------------------------------------------------
byte_CBFD:
	.BYTE $FF,$2F,$2A,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$2B,$FF,$2C,$31,$FF
	.BYTE $32,$2D,$FF,$FF,$FF,$FF,$FF,$FF,$30,$33

; =============== S U B	R O U T	I N E =======================================


sub_CC17:
	
	LDA	byte_372
	CMP	#0
	BNE	loc_CC39
	LDY	#0
	LDX	#$20 

loc_CC22:
	set_inx {byte_4,X}, #$55 
	INY
	CPY	#8
	BCC	loc_CC22

loc_CC2C:
	set_inx {byte_4,X}, #$A5 
	INY
	CPY	#$10
	BCC	loc_CC2C
	JMP	loc_CC51
; ---------------------------------------------------------------------------

loc_CC39:
	LDY	#0
	LDX	#$20 

loc_CC3D:
	set_inx {byte_4,X}, #$AA 
	INY
	CPY	#8
	BCC	loc_CC3D

loc_CC47:
	set_inx {byte_4,X}, #$5A 
	INY
	CPY	#$10
	BCC	loc_CC47

loc_CC51:
	to_stack byte_372
	JSR	ppu_unk_func_F09D
	from_stack byte_372
	RTS
; End of function sub_CC17


; =============== S U B	R O U T	I N E =======================================


ppu_upload_unk_data_CC5D:
	
	LDA	count_unk_465
	CMP	#5
	BCC	locret_CC99
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
	CLC
	ADC	#1
	CMP	#6
	BCC	loc_CC96
	LDA	#0

loc_CC96:
	STA	byte_421

locret_CC99:
	RTS
; End of function ppu_upload_unk_data_CC5D

; ---------------------------------------------------------------------------
unk_CC9A:.BYTE $30 ; 0	
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
	add_to_byte_clc byte_366, #8
	add_to_byte byte_367, #0

	LDX	#0
	set {array_unk_446,X}, byte_36A
	STA	array_unk_452,X
	INX
	set {array_unk_446,X}, byte_36B
	STA	array_unk_452,X
	INX
	set {array_unk_446,X}, byte_366
	STA	array_unk_452,X
	INX
	set {array_unk_446,X}, byte_367
	STA	array_unk_452,X
	INX
	set obj_idx_unk_462, #0
	LDY	#0

next_object_CCEC:
	LDA	objIdxArray_375,Y
	CMP	#7
	BEQ	obj_id7_handle_CCF6
	JMP	inc_obj_idx_CD5F
; ---------------------------------------------------------------------------

obj_id7_handle_CCF6:
	LDA	objCreatedArray_393,Y
	CMP	#0
	BEQ	loc_CD00
	JMP	inc_obj_idx_CD5F
; ---------------------------------------------------------------------------

loc_CD00:
	LDA	obj_array_unk_415,Y
	CMP	#0
	BNE	loc_CD0F
	LDA	byte_551
	BNE	loc_CD2A
	JMP	inc_obj_idx_CD5F
; ---------------------------------------------------------------------------

loc_CD0F:
	CMP	#1
	BNE	loc_CD1B
	LDA	byte_553
	BNE	loc_CD2A
	JMP	inc_obj_idx_CD5F
; ---------------------------------------------------------------------------

loc_CD1B:
	CMP	#2
	BNE	loc_CD27
	LDA	byte_552
	BNE	loc_CD2A
	JMP	inc_obj_idx_CD5F
; ---------------------------------------------------------------------------

loc_CD27:
	JMP	inc_obj_idx_CD5F
; ---------------------------------------------------------------------------

loc_CD2A:
	; objects_func_CCA7+6Fj ...
	TYA
	PHA
	LDY	obj_idx_unk_462
	STA	obj_array_unk_45E,Y
	from_stack_to_y
	INC	obj_idx_unk_462
	set {array_unk_446,X}, {array_unk_3C5,Y}
	STA	array_unk_452,X
	INX
	set {array_unk_446,X}, {array_unk_3BB,Y}
	STA	array_unk_452,X
	INX
	set {array_unk_446,X}, {array_unk_3D9,Y}
	STA	array_unk_452,X
	INX
	set {array_unk_446,X}, {array_unk_3CF,Y}
	STA	array_unk_452,X
	INX

inc_obj_idx_CD5F:
	; objects_func_CCA7+56j ...
	INY
	CPY	objArraySize_373
	BCC	next_object_CCEC
	RTS
; End of function objects_func_CCA7


; =============== S U B	R O U T	I N E =======================================


sub_CD66:
	LDA	obj_idx_unk_462
	BNE	loc_CD6C
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
	LDA	byte_36A
	SEC
	SBC	byte_36C
	LDA	byte_36B
	SBC	byte_36D
	BCC	loc_CDDD
	LDA	byte_36A
	CMP	byte_36C
	BNE	loc_CDC4
	LDA	byte_36B
	CMP	byte_36D
	BNE	loc_CDC4
	JMP	loc_CE35
; ---------------------------------------------------------------------------

loc_CDC4:
	LDA	byte_36A
	SEC
	SBC	byte_36C
	STA	ptr_0
	LDA	byte_36B
	SBC	byte_36D
	STA	ptr_1
	set sprite_length_30F, #0
	JMP	loc_CDF3
; ---------------------------------------------------------------------------

loc_CDDD:
	LDA	byte_36C
	SEC
	SBC	byte_36A
	STA	ptr_0
	LDA	byte_36D
	SBC	byte_36B
	STA	ptr_1
	set sprite_length_30F, #1

loc_CDF3:
	LDA	ptr_0
	CMP	#$10
	BCC	loc_CDFE
	BEQ	loc_CDFE
	JMP	loc_CEC8
; ---------------------------------------------------------------------------

loc_CDFE:
	LDA	sprite_length_30F
	BEQ	loc_CE1C
	LDA	unk_456,X
	SEC
	SBC	#2
	STA	unk_456,X
	LDA	unk_457,X
	SBC	#0
	STA	unk_457,X
	set {unk_460,Y}, #2
	JMP	loc_CEC8
; ---------------------------------------------------------------------------

loc_CE1C:
	LDA	unk_456,X
	CLC
	ADC	#2
	STA	unk_456,X
	LDA	unk_457,X
	ADC	#0
	STA	unk_457,X
	set {unk_460,Y}, #3
	JMP	loc_CEC8
; ---------------------------------------------------------------------------

loc_CE35:
	LDA	byte_366
	SEC
	SBC	byte_368
	LDA	byte_367
	SBC	byte_369
	BCC	loc_CE70
	LDA	byte_366
	CMP	byte_368
	BNE	loc_CE57
	LDA	byte_367
	CMP	byte_369
	BNE	loc_CE57
	JMP	loc_CEC8
; ---------------------------------------------------------------------------

loc_CE57:
	LDA	byte_366
	SEC
	SBC	byte_368
	STA	ptr_0
	LDA	byte_367
	SBC	byte_369
	STA	ptr_1
	set sprite_length_30F, #0
	JMP	loc_CE86
; ---------------------------------------------------------------------------

loc_CE70:
	LDA	byte_368
	SEC
	SBC	byte_366
	STA	ptr_0
	LDA	byte_369
	SBC	byte_367
	STA	ptr_1
	set sprite_length_30F, #1

loc_CE86:
	LDA	ptr_0
	CMP	#$10
	BCC	loc_CE91
	BEQ	loc_CE91
	JMP	loc_CEC8
; ---------------------------------------------------------------------------

loc_CE91:
	
	LDA	sprite_length_30F
	BEQ	loc_CEAF
	LDA	unk_458,X
	SEC
	SBC	#2
	STA	unk_458,X
	LDA	unk_459,X
	SBC	#0
	STA	unk_459,X
	set {unk_460,Y}, #0
	JMP	loc_CEC8
; ---------------------------------------------------------------------------

loc_CEAF:
	LDA	unk_458,X
	CLC
	ADC	#2
	STA	unk_458,X
	LDA	unk_459,X
	ADC	#0
	STA	unk_459,X
	set {unk_460,Y}, #1
	JMP	loc_CEC8
; ---------------------------------------------------------------------------

loc_CEC8:
	INY
	CPY	obj_idx_unk_462
	BEQ	locret_CED1
	JMP	loc_CD6E
; ---------------------------------------------------------------------------

locret_CED1:
	RTS
; End of function sub_CD66


; =============== S U B	R O U T	I N E =======================================


objects_func_CED2:
	
	LDA	obj_idx_unk_462
	BNE	loc_CED8
	RTS
; ---------------------------------------------------------------------------

loc_CED8:
	LDX	#4
	LDY	#0

loc_CEDC:
	TYA
	PHA
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
	CPY	obj_idx_unk_462
	BCC	loc_CEDC
	RTS
; End of function objects_func_CED2


; =============== S U B	R O U T	I N E =======================================


sub_CF13:
	; a_button_pressed_8FDC+AEp ...
	to_stack text_idx_35C
	to_stack char_type_id_35D
	TXA
	PHA
	JSR	sub_9132
	from_stack_to_x
	from_stack char_type_id_35D
	from_stack text_idx_35C
	add_to_byte_clc text_idx_35C, #1
	add_to_byte char_type_id_35D, #0

	DEX
	CPX	#0
	BNE	sub_CF13
	RTS
; End of function sub_CF13


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
	set inv_spr_dscr1_30C, {roomUnk1_4D,X}
	set byte_313, {roomUnk2_4E,X}
	LDA	inv_spr_dscr1_30C
	BNE	loc_CF5D
	JMP	loc_CFF2
; ---------------------------------------------------------------------------

loc_CF5D:
	DEC	roomUnk1_4D,X
	TXA
	PHA
	TYA
	PHA
	LDY	#0
	LDX	tilemapTypeUnk_30B

loc_CF68:
	set {array_unk_3A7,X}, byte_313
	LDA	byte_313
	CMP	#0
	BNE	loc_CF89
	LDA	array_unk_3D9,X
	SEC
	SBC	#2
	STA	array_unk_3D9,X
	LDA	array_unk_3CF,X
	SBC	#0
	STA	array_unk_3CF,X
	JMP	loc_CFCA
; ---------------------------------------------------------------------------

loc_CF89:
	CMP	#1
	BNE	loc_CFA1
	LDA	array_unk_3D9,X
	CLC
	ADC	#2
	STA	array_unk_3D9,X
	LDA	array_unk_3CF,X
	ADC	#0
	STA	array_unk_3CF,X
	JMP	loc_CFCA
; ---------------------------------------------------------------------------

loc_CFA1:
	CMP	#2
	BNE	loc_CFB9
	LDA	array_unk_3C5,X
	SEC
	SBC	#2
	STA	array_unk_3C5,X
	LDA	array_unk_3BB,X
	SBC	#0
	STA	array_unk_3BB,X
	JMP	loc_CFCA
; ---------------------------------------------------------------------------

loc_CFB9:
	LDA	array_unk_3C5,X
	CLC
	ADC	#2
	STA	array_unk_3C5,X
	LDA	array_unk_3BB,X
	ADC	#0
	STA	array_unk_3BB,X

loc_CFCA:
	TXA
	PHA
	TYA
	PHA
	TXA
	PHA
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
	CPY	#8
	BEQ	loc_CFEE
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
	CPY	tilemapData_4C
	BEQ	loc_CFFD
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
	CPY	tilemapData_4C
	BCC	loc_D006
	LDA	inv_spr_dscr1_30C
	BEQ	locret_D01E
	JMP	sub_CF42
; ---------------------------------------------------------------------------

locret_D01E:
	RTS
; End of function sub_CF42


; =============== S U B	R O U T	I N E =======================================


sub_D01F:
	to_stack tilemapTypeUnk_30B
	TXA
	mult_a_by_4
	STA	tilemapTypeUnk_30B
	TXA
	CLC
	ADC	tilemapTypeUnk_30B
	STA	tilemapTypeUnk_30B
	TYA
	LSR	A
	CLC
	ADC	tilemapTypeUnk_30B
	TAX
	LDA	byte_D041,X
	TAY

loc_D03C:
	from_stack tilemapTypeUnk_30B
	RTS
; End of function sub_D01F

; ---------------------------------------------------------------------------
byte_D041:.BYTE  $B, $B, $D, $D, $A,  6,	6,  8,	8,  5,	1,  1,	2,  2,	0,  1
	
	.BYTE	1,  2,	2,  0

; =============== S U B	R O U T	I N E =======================================


sub_D055:
	
	to_stack tilemapTypeUnk_30B
	to_stack byte_313
	set byte_315, #8
	set byte_314, #0
	JSR	objects_func_CCA7
	JSR	objects_func_CED2
	JSR	objects_func_D644
	JSR	objects_func_D52A
	LDA	byte_313
	CMP	#0
	BNE	loc_D080
	JSR	sub_8C5F
	JMP	loc_D097
; ---------------------------------------------------------------------------

loc_D080:
	
	CMP	#1
	BNE	loc_D08A
	JSR	sub_8D27
	JMP	loc_D097
; ---------------------------------------------------------------------------

loc_D08A:
	CMP	#2
	BNE	loc_D094
	JSR	sub_8DF0
	JMP	loc_D097
; ---------------------------------------------------------------------------

loc_D094:
	JSR	sub_8EB9

loc_D097:
	from_stack byte_313
	from_stack tilemapTypeUnk_30B
	JSR	wait_for_frame_rendered_FCA0
	DEC	tilemapTypeUnk_30B
	LDA	tilemapTypeUnk_30B
	CMP	#0
	BNE	sub_D055
	RTS
; End of function sub_D055


; =============== S U B	R O U T	I N E =======================================


sub_D0AD:
	to_stack tilemapTypeUnk_30B
	JSR	sub_C7C7
	add_to_byte_clc byte_366, #8
	add_to_byte byte_367, #0

	from_stack_to_x

loc_D0C7:
	set byte_36C, {array_unk_3C5,X}
	set byte_36D, {array_unk_3BB,X}
	LDA	byte_36A
	SEC
	SBC	byte_36C
	LDA	byte_36B
	SBC	byte_36D
	BCC	loc_D11E
	LDA	byte_36A
	SEC
	SBC	byte_36C
	STA	ptr_0
	LDA	byte_36B
	SBC	byte_36D
	STA	ptr_1
	LDA	ptr_0
	CMP	#$10
	BCC	loc_D15A
	BEQ	loc_D15A
	LDY	#0

loc_D0FD:
	LDA	array_unk_3C5,X
	CLC
	ADC	#2
	STA	array_unk_3C5,X
	LDA	array_unk_3BB,X
	ADC	#0
	STA	array_unk_3BB,X
	set_iny {array_unk_3A7,X}, #3
	JSR	sub_D1EE
	CPY	#8
	BCC	loc_D0FD
	JMP	loc_D0C7
; ---------------------------------------------------------------------------

loc_D11E:
	LDA	byte_36C
	SEC
	SBC	byte_36A
	STA	ptr_0
	LDA	byte_36D
	SBC	byte_36B
	STA	ptr_1
	LDA	ptr_0
	CMP	#$10
	BCC	loc_D15A
	BEQ	loc_D15A
	LDY	#0

loc_D139:
	LDA	array_unk_3C5,X
	SEC
	SBC	#2
	STA	array_unk_3C5,X
	LDA	array_unk_3BB,X
	SBC	#0
	STA	array_unk_3BB,X
	set_iny {array_unk_3A7,X}, #2
	JSR	sub_D1EE
	CPY	#8
	BCC	loc_D139
	JMP	loc_D0C7
; ---------------------------------------------------------------------------

loc_D15A:
	set byte_368, {array_unk_3D9,X}
	set byte_369, {array_unk_3CF,X}
	LDA	byte_366
	SEC
	SBC	byte_368
	LDA	byte_367
	SBC	byte_369
	BCC	loc_D1B1
	LDA	byte_366
	SEC
	SBC	byte_368
	STA	ptr_0
	LDA	byte_367
	SBC	byte_369
	STA	ptr_1
	LDA	ptr_0
	CMP	#$10
	BCC	locret_D1ED
	BEQ	locret_D1ED
	LDY	#0

loc_D190:
	LDA	array_unk_3D9,X
	CLC
	ADC	#2
	STA	array_unk_3D9,X
	LDA	array_unk_3CF,X
	ADC	#0
	STA	array_unk_3CF,X
	set_iny {array_unk_3A7,X}, #1
	JSR	sub_D1EE
	CPY	#8
	BCC	loc_D190
	JMP	loc_D15A
; ---------------------------------------------------------------------------

loc_D1B1:
	LDA	byte_368
	SEC
	SBC	byte_366
	STA	ptr_0
	LDA	byte_369
	SBC	byte_367
	STA	ptr_1
	LDA	ptr_0
	CMP	#$10
	BCC	locret_D1ED
	BEQ	locret_D1ED
	LDY	#0

loc_D1CC:
	LDA	array_unk_3D9,X
	SEC
	SBC	#2
	STA	array_unk_3D9,X
	LDA	array_unk_3CF,X
	SBC	#0
	STA	array_unk_3CF,X
	set_iny {array_unk_3A7,X}, #0
	JSR	sub_D1EE
	CPY	#8
	BCC	loc_D1CC
	JMP	loc_D15A
; ---------------------------------------------------------------------------

locret_D1ED:
	RTS
; End of function sub_D0AD


; =============== S U B	R O U T	I N E =======================================


sub_D1EE:
	TXA
	PHA
	TYA
	PHA
	to_stack byte_36A
	to_stack byte_36B
	to_stack byte_366
	to_stack byte_367
	TXA
	PHA
	LDA	array_unk_3A7,X
	TAX
	JSR	sub_D01F
	from_stack_to_x
	TYA
	STA	array_unk_39D,X
	JSR	objects_func_D52A
	from_stack byte_367
	from_stack byte_366
	from_stack byte_36B
	from_stack byte_36A
	from_stack_to_y
	from_stack_to_x
	JSR	wait_for_frame_rendered_FCA0
	RTS
; End of function sub_D1EE


; =============== S U B	R O U T	I N E =======================================


sub_D22C:
	set text_idx_35C, #$C2 
	set char_type_id_35D, #0
	LDX	#$B
	JSR	sub_CF13
	set tilemapData_4C, #1
	set roomUnk1_4D, #0
	set roomUnk2_4E, #2
	set tilemap_line_idx_4F, #0
	JSR	sub_CF42
	set tilemapData_4C, #1
	set roomUnk1_4D, #0
	set roomUnk2_4E, #6
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
	LDA	objIdxArray_375,X
	CMP	#7
	BEQ	loc_D2C4
	INX
	CPX	objArraySize_373
	BCC	loc_D2B4
	JMP	locret_D358
; ---------------------------------------------------------------------------

loc_D2C4:
	TXA
	PHA
	set tilemapTypeUnk_30B, #1
	set byte_313, #2
	JSR	sub_D055
	JSR	sub_C7C7
	from_stack_to_x
	add_to_byte_clc byte_366, #8
	add_to_byte byte_367, #0

	LDA	array_unk_3C5,X
	CLC
	ADC	#$10
	STA	byte_36C
	LDA	array_unk_3BB,X
	ADC	#0
	STA	byte_36D
	set byte_368, {array_unk_3D9,X}
	set byte_369, {array_unk_3CF,X}
	LDA	byte_366
	SEC
	SBC	byte_368
	LDA	byte_367
	SBC	byte_369
	BCC	loc_D32B
	LDA	byte_366
	SEC
	SBC	byte_368
	LSR	A
	LSR	A
	LSR	A
	LSR	A
	STA	tilemapTypeUnk_30B
	set byte_313, #0
	JMP	loc_D33E
; ---------------------------------------------------------------------------

loc_D32B:
	LDA	byte_368
	SEC
	SBC	byte_366
	LSR	A
	LSR	A
	LSR	A
	LSR	A
	STA	tilemapTypeUnk_30B
	set byte_313, #1

loc_D33E:
	JSR	sub_D055
	set byte_313, #2
	JSR	sub_91B6
	set text_idx_35C, #$D0 
	set char_type_id_35D, #0
	LDX	#5
	JSR	sub_CF13

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
	set text_idx_35C, #$DB 
	set char_type_id_35D, #0
	LDX	#4
	JSR	sub_CF13
	set byte_551, #0
	set tilemapTypeUnk_30B, #4
	set byte_313, #0
	JSR	sub_D055
	set byte_313, #1
	JSR	sub_91B6
	set text_idx_35C, #$DB 
	set char_type_id_35D, #0
	LDX	#8
	JSR	sub_CF13
	set tilemapData_4C, #1
	set roomUnk1_4D, #2
	set roomUnk2_4E, #4
	set tilemap_line_idx_4F, #2
	JSR	sub_CF42
	set tilemapData_4C, #1
	set roomUnk1_4D, #2
	set roomUnk2_4E, #7
	set tilemap_line_idx_4F, #0
	JSR	sub_CF42
	set tilemapData_4C, #1
	set roomUnk1_4D, #2
	set roomUnk2_4E, #$A
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
	LDA	objArraySize_373
	BNE	loc_D40F
	RTS
; ---------------------------------------------------------------------------

loc_D40F:
	LDA	byte_596
	CMP	#$FF
	BNE	loc_D43B
	LDA	entry_idx_300
	CMP	#$32 
	BCC	loc_D427
	CMP	#$35 
	BCC	loc_D43B
	CMP	#$4E 
	BEQ	loc_D43B
	BCS	loc_D43B

loc_D427:
	LDX	#0

loc_D429:
	LDA	objIdxArray_375,X
	CMP	#2
	BNE	loc_D435
	set {objIdxArray_375,X}, #1

loc_D435:
	INX
	CPX	objArraySize_373
	BCC	loc_D429

loc_D43B:
	LDX	#0
	LDA	#0

loc_D43F:
	STA	unk_37F,X
	INX
	CPX	objArraySize_373
	BCC	loc_D43F
	set byte_31A, #$28 
	set sprite_secondByte_31B, #$6F 
	LDX	#0

loc_D454:
	TXA
	PHA
	set objectIdx_318, {objIdxArray_375,X}
	set objMapIdx_316, {array_unk_39D,X}
	set {unk_40B,X}, byte_31A
	TXA
	PHA
	JSR	exec_b1_c2_C860
	from_stack_to_x
	set {unk_389,X}, tilemapFrameCount_30D
	set {unk_401,X}, sprite_length_30F
	set {unk_3E3,X}, tilemapWidth_308
	set {unk_3ED,X}, tilemapHeight_30A
	ASL	tilemapWidth_308
	ASL	tilemapWidth_308
	LDY	tilemapHeight_30A

loc_D490:
	CPY	#0
	BEQ	loc_D4A2
	add_to_byte_clc byte_31A, tilemapWidth_308
	DEY
	JMP	loc_D490
; ---------------------------------------------------------------------------

loc_D4A2:
	from_stack_to_x
	INX
	CPX	objArraySize_373
	BEQ	loc_D4AD
	JMP	loc_D454
; ---------------------------------------------------------------------------

loc_D4AD:
	LDY	#0
	LDX	#0
	set tilemapTypeUnk_30B, #0
	set {unk_56,X}, {objIdxArray_375,Y}
	set {tilemapData_4C,X}, {unk_401,Y}
	INC	tilemapTypeUnk_30B
	INY

loc_D4C4:
	LDX	#0

loc_D4C6:
	LDA	objIdxArray_375,Y
	CMP	unk_56,X
	BEQ	loc_D4E0
	INX
	CPX	tilemapTypeUnk_30B
	BCC	loc_D4C6
	set {unk_56,X}, {objIdxArray_375,Y}
	set {tilemapData_4C,X}, {unk_401,Y}
	INC	tilemapTypeUnk_30B

loc_D4E0:
	INY
	CPY	objArraySize_373
	BCC	loc_D4C4
	LDY	#0

loc_D4E8:
	LDX	#0

loc_D4EA:
	LDA	unk_56,X
	CMP	objIdxArray_375,Y
	BEQ	loc_D4F7
	INX
	CPX	tilemapTypeUnk_30B
	BCC	loc_D4EA

loc_D4F7:
	TXA
	CLC
	ADC	#1
	STA	objPalIdxArray_3F7,Y
	STX	inv_spr_dscr1_30C
	set sprite_length_30F, #0
	LDX	#0

loc_D508:
	CPX	inv_spr_dscr1_30C
	BEQ	loc_D51A
	LDA	tilemapData_4C,X
	CLC
	ADC	sprite_length_30F
	STA	sprite_length_30F
	INX
	JMP	loc_D508
; ---------------------------------------------------------------------------

loc_D51A:
	LDA	sprite_length_30F
	CLC
	ADC	#$6F 
	STA	unk_401,Y
	INY
	CPY	objArraySize_373
	BCC	loc_D4E8
	RTS
; End of function sub_D409


; =============== S U B	R O U T	I N E =======================================


objects_func_D52A:
	
	LDA	objArraySize_373
	BNE	loc_D532
	JMP	loc_D637
; ---------------------------------------------------------------------------

loc_D532:
	LDA	entry_idx_300
	CMP	#$5D 
	BNE	loc_D53B
	LDA	#$58 

loc_D53B:
	LDY	#0

loc_D53D:
	TYA
	PHA
	set objectIdx_318, {objIdxArray_375,Y}
	set objMapIdx_316, {array_unk_39D,Y}
	set byte_31A, {unk_40B,Y}
	set sprite_secondByte_31B, {unk_401,Y}
	set byte_317, {objPalIdxArray_3F7,Y}
	set byte_36A, {array_unk_3C5,Y}
	set byte_36B, {array_unk_3BB,Y}
	set byte_366, {array_unk_3D9,Y}
	set byte_367, {array_unk_3CF,Y}
	LDA	objectIdx_318
	CMP	#$15
	BNE	loc_D57F
	JMP	loc_D62C
; ---------------------------------------------------------------------------

loc_D57F:
	LDA	objectIdx_318
	CMP	#7
	BEQ	loc_D591
	CMP	#8
	BEQ	loc_D591
	CMP	#9
	BEQ	loc_D591
	JMP	loc_D5A2
; ---------------------------------------------------------------------------

loc_D591:
	; objects_func_D52A+5Ej ...
	LDA	byte_366
	SEC
	SBC	#8
	STA	byte_366
	LDA	byte_367
	SBC	#0
	STA	byte_367

loc_D5A2:
	LDA	objCreatedArray_393,Y
	BEQ	loc_D5AA
	JMP	loc_D62C
; ---------------------------------------------------------------------------

loc_D5AA:
	LDA	objIdxArray_375,Y
	CMP	#3
	BEQ	loc_D629
	CMP	#6
	BEQ	loc_D629
	CMP	#$A
	BEQ	loc_D629
	CMP	#$19
	BEQ	loc_D629
	LDA	objIdxArray_375,Y
	CMP	#$13
	BNE	loc_D5C9
	LDA	byte_58E
	BEQ	loc_D629

loc_D5C9:
	LDA	array_unk_3A7,Y
	CMP	#2
	BNE	loc_D5D8
	LDA	byte_317
	ORA	#$40 
	STA	byte_317

loc_D5D8:
	LDA	objectIdx_318
	CMP	#7
	BEQ	loc_D60C
	CMP	#8
	BEQ	loc_D60C
	CMP	#9
	BEQ	loc_D60C
	LDA	array_unk_3A7,Y
	TAX
	CPX	#3
	BCC	loc_D5F0
	DEX

loc_D5F0:
	; objects_func_D52A+D5j
	CPX	#0
	BEQ	loc_D602
	LDA	objMapIdx_316
	CLC
	ADC	unk_389,Y
	STA	objMapIdx_316
	DEX
	JMP	loc_D5F0
; ---------------------------------------------------------------------------

loc_D602:
	LDA	objMapIdx_316
	CLC
	ADC	unk_37F,Y
	STA	objMapIdx_316

loc_D60C:
	; objects_func_D52A+B7j ...
	LDA	count_unk_464
	CMP	#$F
	BCC	loc_D629
	LDA	unk_37F,Y
	CLC
	ADC	#1
	STA	unk_37F,Y
	LDA	unk_37F,Y
	CMP	unk_389,Y
	BCC	loc_D629
	set {unk_37F,Y}, #0

loc_D629:
	; objects_func_D52A+89j ...
	JSR	loadt_obj_tilemaps_C84D

loc_D62C:
	; objects_func_D52A+7Dj
	from_stack_to_y
	INY
	CPY	objArraySize_373
	BEQ	loc_D637
	JMP	loc_D53D
; ---------------------------------------------------------------------------

loc_D637:
	; objects_func_D52A+108j
	LDA	count_unk_464
	CMP	#$F
	BCC	locret_D643
	set count_unk_464, #0

locret_D643:
	RTS
; End of function objects_func_D52A


; =============== S U B	R O U T	I N E =======================================


objects_func_D644:
	
	LDA	objArraySize_373
	BNE	loc_D64A
	RTS
; ---------------------------------------------------------------------------

loc_D64A:
	set inv_spr_dscr1_30C, #0

loc_D64F:
	LDX	inv_spr_dscr1_30C
	LDA	objCreatedArray_393,X
	BEQ	loc_D65A
	JMP	loc_D811
; ---------------------------------------------------------------------------

loc_D65A:
	LDA	count_unk_465
	CMP	#$A
	BCC	loc_D689
	LDA	objIdxArray_375,X
	CMP	#6
	BNE	loc_D66B
	JSR	sub_DC25

loc_D66B:
	LDA	objIdxArray_375,X
	CMP	#$A
	BNE	loc_D675
	JSR	sub_DC41

loc_D675:
	LDA	objIdxArray_375,X
	CMP	#$19
	BNE	loc_D67F
	JSR	sub_DC64

loc_D67F:
	LDA	objIdxArray_375,X
	CMP	#$16
	BNE	loc_D689
	JSR	nullsub_1

loc_D689:
	; objects_func_D644+40j
	LDA	count_unk_466
	CMP	#$A
	BCC	loc_D69F
	LDA	objIdxArray_375,X
	CMP	#2
	BEQ	loc_D6ED
	CMP	#$10
	BEQ	loc_D6ED
	CMP	#$F
	BEQ	loc_D6ED

loc_D69F:
	LDA	count_unk_467
	CMP	#5
	BCC	loc_D6B9
	LDA	objIdxArray_375,X
	CMP	#1
	BEQ	loc_D6ED
	CMP	#$B
	BEQ	loc_D6ED
	CMP	#$D
	BEQ	loc_D6ED
	CMP	#$18
	BEQ	loc_D6ED

loc_D6B9:
	LDA	count_unk_468
	CMP	#3
	BCC	loc_D6CB
	LDA	objIdxArray_375,X
	CMP	#$E
	BEQ	loc_D6ED
	CMP	#$C
	BEQ	loc_D6ED

loc_D6CB:
	LDA	count_unk_469
	CMP	#1
	BCC	loc_D6D9
	LDA	objIdxArray_375,X
	CMP	#$11
	BEQ	loc_D6ED

loc_D6D9:
	LDA	count_unk_46A
	CMP	#1
	BCC	loc_D6EA
	LDA	objIdxArray_375,X
	CMP	#$13
	BNE	loc_D6EA
	JSR	sub_DC88

loc_D6EA:
	; objects_func_D644+A1j
	JMP	loc_D811
; ---------------------------------------------------------------------------

loc_D6ED:
	; objects_func_D644+55j ...
	LDA	count_unk_463
	CMP	#$64 
	BCC	loc_D702
	set byte_352, #4
	JSR	sub_BEB6
	set {array_unk_3A7,X}, byte_352

loc_D702:
	LDA	objIdxArray_375,X
	CMP	#1
	BEQ	loc_D730
	CMP	#2
	BEQ	loc_D730
	CMP	#$B
	BEQ	loc_D730
	CMP	#$C
	BEQ	loc_D730
	CMP	#$D
	BEQ	loc_D730
	CMP	#$E
	BEQ	loc_D730
	CMP	#$F
	BEQ	loc_D730
	CMP	#$10
	BEQ	loc_D730
	CMP	#$11
	BEQ	loc_D730
	CMP	#$18
	BEQ	loc_D730
	JMP	loc_D811
; ---------------------------------------------------------------------------

loc_D730:
	; objects_func_D644+C7j ...
	to_stack byte_313
	TXA
	PHA
	JSR	sub_D9B9
	JSR	sub_D9E4
	JSR	sub_DDDA
	from_stack_to_x
	from_stack byte_313
	LDA	sprite_length_30F
	CMP	#$FF
	BNE	loc_D75D
	set byte_352, #4
	JSR	sub_BEB6
	set {array_unk_3A7,X}, byte_352
	JMP	loc_D811
; ---------------------------------------------------------------------------

loc_D75D:
	to_stack byte_313
	TXA
	PHA
	JSR	sub_D9B9
	STX	tilemapTypeUnk_30B
	JSR	sub_D874
	from_stack_to_x
	from_stack byte_313
	LDA	sprite_length_30F
	CMP	#$FF
	BNE	loc_D78C
	set byte_352, #4
	JSR	sub_BEB6
	LDA	byte_352
	LDA	array_unk_3A7,X
	EOR	#1
	STA	array_unk_3A7,X

loc_D78C:
	JSR	sub_DADA
	to_stack byte_313
	TXA
	PHA
	JSR	sub_D9B9
	JSR	sub_DACD
	from_stack_to_x
	from_stack byte_313
	STX	cur_obj_idx_unk_43A
	LDA	byte_439
	CMP	#$FF
	BNE	loc_D7AE
	JMP	loc_D81F
; ---------------------------------------------------------------------------

loc_D7AE:
	LDA	array_unk_3A7,X
	CMP	#0
	BEQ	loc_D7EC
	CMP	#1
	BEQ	loc_D800
	CMP	#2
	BEQ	loc_D7C4
	CMP	#3
	BEQ	loc_D7D8
	JMP	loc_D811
; ---------------------------------------------------------------------------

loc_D7C4:
	LDA	array_unk_3C5,X
	SEC
	SBC	#2
	STA	array_unk_3C5,X
	LDA	array_unk_3BB,X
	SBC	#0
	STA	array_unk_3BB,X
	JMP	loc_D811
; ---------------------------------------------------------------------------

loc_D7D8:
	LDA	array_unk_3C5,X
	CLC
	ADC	#2
	STA	array_unk_3C5,X
	LDA	array_unk_3BB,X
	ADC	#0
	STA	array_unk_3BB,X
	JMP	loc_D811
; ---------------------------------------------------------------------------

loc_D7EC:
	LDA	array_unk_3D9,X
	SEC
	SBC	#2
	STA	array_unk_3D9,X
	LDA	array_unk_3CF,X
	SBC	#0
	STA	array_unk_3CF,X
	JMP	loc_D811
; ---------------------------------------------------------------------------

loc_D800:
	LDA	array_unk_3D9,X
	CLC
	ADC	#2
	STA	array_unk_3D9,X
	LDA	array_unk_3CF,X
	ADC	#0
	STA	array_unk_3CF,X

loc_D811:
	; objects_func_D644:loc_D6EAj ...
	INC	inv_spr_dscr1_30C
	LDA	inv_spr_dscr1_30C
	CMP	objArraySize_373
	BEQ	loc_D81F
	JMP	loc_D64F
; ---------------------------------------------------------------------------

loc_D81F:
	; objects_func_D644+1D6j
	LDA	count_unk_463
	CMP	#$64 
	BCC	loc_D82B
	set count_unk_463, #0

loc_D82B:
	LDA	count_unk_465
	CMP	#$A
	BCC	loc_D837
	set count_unk_465, #0

loc_D837:
	LDA	count_unk_466
	CMP	#$A
	BCC	loc_D843
	set count_unk_466, #0

loc_D843:
	LDA	count_unk_467
	CMP	#5
	BCC	loc_D84F
	set count_unk_467, #0

loc_D84F:
	LDA	count_unk_468
	CMP	#3
	BCC	loc_D85B
	set count_unk_468, #0

loc_D85B:
	LDA	count_unk_469
	CMP	#1
	BCC	loc_D867
	set count_unk_469, #0

loc_D867:
	LDA	count_unk_46A
	CMP	#1
	BCC	locret_D873
	set count_unk_46A, #0

locret_D873:
	RTS
; End of function objects_func_D644


; =============== S U B	R O U T	I N E =======================================


sub_D874:
	set sprite_length_30F, #0
	LDX	#0

loc_D87B:
	CPX	tilemapTypeUnk_30B
	BEQ	loc_D88A
	JSR	sub_D894
	LDA	sprite_length_30F
	CMP	#$FF
	BEQ	locret_D893

loc_D88A:
	INX
	CPX	objArraySize_373
	BEQ	locret_D893
	JMP	loc_D87B
; ---------------------------------------------------------------------------

locret_D893:
	RTS
; End of function sub_D874


; =============== S U B	R O U T	I N E =======================================


sub_D894:
	
	set sprite_length_30F, #0
	LDA	objCreatedArray_393,X
	BNE	locret_D8D7
	JSR	sub_D8D8
	JSR	sub_D96B
	LDA	sprite_length_30F
	CMP	#$FF
	BEQ	locret_D8D7
	JSR	sub_D8D8
	JSR	sub_D8FD
	JSR	sub_D96B
	LDA	sprite_length_30F
	CMP	#$FF
	BEQ	locret_D8D7
	JSR	sub_D8D8
	JSR	sub_D913
	JSR	sub_D96B
	LDA	sprite_length_30F
	CMP	#$FF
	BEQ	locret_D8D7
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
	LDA	tilemap_size_307
	mult_a_by_8
	CLC
	ADC	byte_36C
	STA	byte_36C
	add_to_byte byte_36D, #0

	RTS
; End of function sub_D8FD


; =============== S U B	R O U T	I N E =======================================


sub_D913:
	LDA	ppu_unk_byte_309
	mult_a_by_8
	CLC
	ADC	byte_368
	STA	byte_368
	add_to_byte byte_369, #0

	RTS
; End of function sub_D913


; =============== S U B	R O U T	I N E =======================================


sub_D929:
	to_stack tilemapWidth_308
	mult_a_by_8
	STA	tilemapWidth_308
	LDA	byte_36C
	SEC
	SBC	tilemapWidth_308
	STA	byte_36C
	LDA	byte_36D
	SBC	#0
	STA	byte_36D
	from_stack tilemapWidth_308
	RTS
; End of function sub_D929


; =============== S U B	R O U T	I N E =======================================


sub_D94A:
	to_stack tilemapHeight_30A
	mult_a_by_8
	STA	tilemapHeight_30A
	LDA	byte_368
	SEC
	SBC	tilemapHeight_30A
	STA	byte_368
	LDA	byte_369
	SBC	#0
	STA	byte_369
	from_stack tilemapHeight_30A
	RTS
; End of function sub_D94A


; =============== S U B	R O U T	I N E =======================================


sub_D96B:
	LDA	byte_36C
	SEC
	SBC	byte_36A
	LDA	byte_36D
	SBC	byte_36B
	BCC	loc_D9B3
	LDA	byte_368
	SEC
	SBC	byte_366
	LDA	byte_369
	SBC	byte_367
	BCC	loc_D9B3
	JSR	sub_D929
	JSR	sub_D94A
	LDA	byte_36A
	SEC
	SBC	byte_36C
	LDA	byte_36B
	SBC	byte_36D
	BCC	loc_D9B3
	LDA	byte_366
	SEC
	SBC	byte_368
	LDA	byte_367
	SBC	byte_369
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
	LDA	byte_36A
	AND	#$F
	BEQ	loc_DA0B
	LDA	byte_36A
	AND	#$F0 
	STA	byte_36A
	LDA	array_unk_3A7,X
	CMP	#2
	BNE	loc_DA0B
	add_to_byte_clc byte_36A, #$10
	add_to_byte byte_36B, #0


loc_DA0B:
	LDA	byte_366
	AND	#$F
	BEQ	locret_DA32
	LDA	byte_366
	AND	#$F0 
	STA	byte_366
	LDA	array_unk_3A7,X
	CMP	#0
	BNE	locret_DA32
	add_to_byte_clc byte_366, #$10
	add_to_byte byte_367, #0


locret_DA32:
	RTS
; End of function sub_D9E4


; =============== S U B	R O U T	I N E =======================================


sub_DA33:
	LDA	objArraySize_373
	BNE	loc_DA3E
	set sprite_length_30F, #0
	RTS
; ---------------------------------------------------------------------------

loc_DA3E:
	LDX	#0

loc_DA40:
	LDA	objCreatedArray_393,X
	BNE	loc_DABE
	JSR	sub_D8D8
	LDA	objIdxArray_375,X
	CMP	#$13
	BEQ	loc_DA73
	LDA	ppu_unk_byte_309
	CMP	#2
	BCC	loc_DA73
	LDA	ppu_unk_byte_309
	SEC
	SBC	#2
	mult_a_by_8
	CLC
	ADC	byte_368
	STA	byte_368
	add_to_byte byte_369, #0

	set ppu_unk_byte_309, #2

loc_DA73:
	LDA	byte_36A
	SEC
	SBC	byte_36C
	LDA	byte_36B
	SBC	byte_36D
	BCC	loc_DABE
	LDA	byte_366
	SEC
	SBC	byte_368
	LDA	byte_367
	SBC	byte_369
	BCC	loc_DABE
	JSR	sub_D8FD
	JSR	sub_D913
	LDA	byte_36C
	SEC
	SBC	byte_36A
	LDA	byte_36D
	SBC	byte_36B
	BCC	loc_DABE
	LDA	byte_368
	SEC
	SBC	byte_366
	LDA	byte_369
	SBC	byte_367
	BCC	loc_DABE
	STX	byte_434
	set sprite_length_30F, #$FF
	RTS
; ---------------------------------------------------------------------------

loc_DABE:
	INX
	CPX	objArraySize_373
	BEQ	loc_DAC7
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
	LDA	byte_36A
	SEC
	SBC	array_unk_3C5,X
	LDA	byte_36B
	SBC	array_unk_3BB,X
	BCC	loc_DB0F
	LDA	byte_36A
	SEC
	SBC	array_unk_3C5,X
	STA	byte_36C
	LDA	byte_36B
	SBC	array_unk_3BB,X
	STA	byte_36D
	LDA	sprite_length_30F
	ORA	#3
	STA	sprite_length_30F
	JMP	loc_DB2A
; ---------------------------------------------------------------------------

loc_DB0F:
	LDA	array_unk_3C5,X
	SEC
	SBC	byte_36A
	STA	byte_36C
	LDA	array_unk_3BB,X
	SBC	byte_36B
	STA	byte_36D
	LDA	sprite_length_30F
	ORA	#$C
	STA	sprite_length_30F

loc_DB2A:
	LDA	byte_366
	SEC
	SBC	array_unk_3D9,X
	LDA	byte_367
	SBC	array_unk_3CF,X
	BCC	loc_DB57
	LDA	byte_366
	SEC
	SBC	array_unk_3D9,X
	STA	byte_368
	LDA	byte_367
	SBC	array_unk_3CF,X
	STA	byte_369
	LDA	sprite_length_30F
	ORA	#$30 
	STA	sprite_length_30F
	JMP	loc_DB72
; ---------------------------------------------------------------------------

loc_DB57:
	LDA	array_unk_3D9,X
	SEC
	SBC	byte_366
	STA	byte_368
	LDA	array_unk_3CF,X
	SBC	byte_367
	STA	byte_369
	LDA	sprite_length_30F
	ORA	#$C0 
	STA	sprite_length_30F

loc_DB72:
	LDA	byte_368
	CLC
	ADC	byte_36C
	STA	byte_36A
	LDA	byte_369
	ADC	byte_36D
	STA	byte_36B
	LDA	byte_36A
	SEC
	SBC	#$60 
	LDA	byte_36B
	SBC	#0
	BCC	loc_DB98
	set sprite_length_30F, #0
	RTS
; ---------------------------------------------------------------------------

loc_DB98:
	LDA	byte_368
	SEC
	SBC	byte_36C
	LDA	byte_369
	SBC	byte_36D
	BCC	loc_DBC3
	LDA	sprite_length_30F
	AND	#$F0 
	STA	sprite_length_30F
	CMP	#$30 
	BEQ	loc_DBBB
	set {array_unk_3A7,X}, #0
	JMP	loc_DBDC
; ---------------------------------------------------------------------------

loc_DBBB:
	set {array_unk_3A7,X}, #1
	JMP	loc_DBDC
; ---------------------------------------------------------------------------

loc_DBC3:
	LDA	sprite_length_30F
	AND	#$F
	STA	sprite_length_30F
	CMP	#3
	BEQ	loc_DBD7
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
	CPX	#0
	BEQ	loc_DC13
	CLC
	ADC	tilemapWidth_308
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
	LDA	array_unk_39D,X
	CMP	#5
	BCC	loc_DC31
	set {array_unk_39D,X}, #$FF

loc_DC31:
	INC	array_unk_39D,X
	LDA	obj_array_unk_415,X
	CMP	#$3C 
	BCC	locret_DC40
	set {array_unk_39D,X}, #6

locret_DC40:
	RTS
; End of function sub_DC25


; =============== S U B	R O U T	I N E =======================================


sub_DC41:
	LDA	array_unk_39D,X
	CMP	#1
	BCC	loc_DC4D
	set {array_unk_39D,X}, #$FF

loc_DC4D:
	INC	array_unk_39D,X
	LDA	entry_idx_300
	CMP	#$42 
	BNE	locret_DC63
	LDA	byte_562
	CMP	#$FF
	BNE	locret_DC63
	set {array_unk_39D,X}, #2

locret_DC63:
	RTS
; End of function sub_DC41


; =============== S U B	R O U T	I N E =======================================


sub_DC64:
	LDA	array_unk_39D,X
	CMP	#1
	BCC	loc_DC70
	set {array_unk_39D,X}, #$FF

loc_DC70:
	INC	array_unk_39D,X
	LDA	entry_idx_300
	CMP	#$6C 
	BNE	locret_DC86
	LDA	byte_587
	CMP	#$FF
	BNE	locret_DC86
	set {array_unk_39D,X}, #2

locret_DC86:
	RTS
; End of function sub_DC64

nullsub_1:
	RTS

; =============== S U B	R O U T	I N E =======================================


sub_DC88:
	to_stack inv_spr_dscr1_30C
	LDA	byte_58E
	BEQ	loc_DCE6
	LDA	entry_idx_300
	CMP	#$57 
	BNE	loc_DCA8
	LDA	array_unk_3C5,X
	SEC
	SBC	#0
	LDA	array_unk_3BB,X
	SBC	#2
	BCS	loc_DD0C
	JMP	loc_DCB5
; ---------------------------------------------------------------------------

loc_DCA8:
	LDA	array_unk_3C5,X
	SEC
	SBC	#$B0 
	LDA	array_unk_3BB,X
	SBC	#1
	BCS	loc_DCE9

loc_DCB5:
	TXA
	PHA
	JSR	sub_C7C7
	from_stack_to_x
	JSR	sub_DD40
	LDA	array_unk_3C5,X
	CLC
	ADC	#2
	STA	array_unk_3C5,X
	LDA	array_unk_3BB,X
	ADC	#0
	STA	array_unk_3BB,X
	LDA	unk_37F,X
	CLC
	ADC	#1
	STA	unk_37F,X
	LDA	unk_37F,X
	CMP	unk_389,X
	BCC	loc_DCE6
	set {unk_37F,X}, #0

loc_DCE6:
	JMP	loc_DD3B
; ---------------------------------------------------------------------------

loc_DCE9:
	set byte_651, #0
	STA	byte_58D
	STA	byte_58E
	set cur_obj_idx_unk_43A, #1
	JSR	sub_DBE2
	set byte_652, #$FF
	set cur_obj_idx_unk_43A, #2
	JSR	sub_DC1C
	JMP	loc_DD3B
; ---------------------------------------------------------------------------

loc_DD0C:
	set byte_646, #0
	STA	byte_58D
	STA	byte_58E
	JSR	exec_b12_c9_EAB6
	set image_id_4A4, entry_idx_300
	set image_offset_4A5, ppu_unk_byte_302
	set ppu_prev_unk_4A6, ppu_unk_byte_303
	set ppu_prev_scroll_x_unk_4A7, ppu_scroll_x_304
	set ppu_prev_scroll_y_unk_4A8, ppu_scroll_y_305
	JSR	load_image_C6D2

loc_DD3B:
	
	from_stack inv_spr_dscr1_30C
	RTS
; End of function sub_DC88


; =============== S U B	R O U T	I N E =======================================


sub_DD40:
	add_to_byte_clc byte_366, #$C
	add_to_byte byte_367, #0

	add_to_byte_clc byte_36A, #8
	add_to_byte byte_36B, #0

	LDA	byte_36A
	SEC
	SBC	array_unk_3C5,X
	LDA	byte_36B
	SBC	array_unk_3BB,X
	BCC	locret_DDC5
	LDA	byte_366
	SEC
	SBC	array_unk_3D9,X
	LDA	byte_367
	SBC	array_unk_3CF,X
	BCC	locret_DDC5
	LDA	byte_366
	SEC
	SBC	#$20 
	STA	byte_366
	LDA	byte_367
	SBC	#0
	STA	byte_367
	LDA	byte_36A
	SEC
	SBC	#$20 
	STA	byte_36A
	LDA	byte_36B
	SBC	#0
	STA	byte_36B
	LDA	array_unk_3C5,X
	SEC
	SBC	byte_36A
	LDA	array_unk_3BB,X
	SBC	byte_36B
	BCC	locret_DDC5
	LDA	array_unk_3D9,X
	SEC
	SBC	byte_366
	LDA	array_unk_3CF,X
	SBC	byte_367
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
	; objects_func_D644+F8p ...
	LDA	byte_313
	CMP	#0
	BNE	loc_DE22
	LDA	tilemapHeight_30A
	CMP	#2
	BEQ	loc_DDEB
	JMP	loc_DDFC
; ---------------------------------------------------------------------------

loc_DDEB:
	LDA	byte_366
	SEC
	SBC	#$10
	STA	byte_366
	LDA	byte_367
	SBC	#0
	STA	byte_367

loc_DDFC:
	LDY	#0

loc_DDFE:
	TYA
	PHA
	JSR	map_update_DEFA
	from_stack_to_y
	LDA	sprite_length_30F
	BNE	locret_DE21
	add_to_byte_clc byte_36A, #8
	add_to_byte byte_36B, #0

	INY
	CPY	tilemapWidth_308
	BCC	loc_DDFE

locret_DE21:
	RTS
; ---------------------------------------------------------------------------

loc_DE22:
	CMP	#1
	BNE	loc_DE6A
	add_to_byte_clc tilemapHeight_30A, #1
	LDA	tilemapHeight_30A
	mult_a_by_8
	CLC
	ADC	byte_366
	STA	byte_366
	add_to_byte byte_367, #0

	LDY	#0

loc_DE46:
	TYA
	PHA
	JSR	map_update_DEFA
	from_stack_to_y
	LDA	sprite_length_30F
	BNE	locret_DE69
	add_to_byte_clc byte_36A, #8
	add_to_byte byte_36B, #0

	INY
	CPY	tilemapWidth_308
	BCC	loc_DE46

locret_DE69:
	RTS
; ---------------------------------------------------------------------------

loc_DE6A:
	CMP	#2
	BNE	loc_DEB4
	LDA	tilemapHeight_30A
	SEC
	SBC	#1
	mult_a_by_8
	CLC
	ADC	byte_366
	STA	byte_366
	add_to_byte byte_367, #0

	LDA	byte_36A
	SEC
	SBC	#$10
	STA	byte_36A
	LDA	byte_36B
	SBC	#0
	STA	byte_36B
	JSR	map_update_DEFA
	LDA	sprite_length_30F
	BNE	locret_DEB3
	add_to_byte_clc byte_36A, #8
	add_to_byte byte_36B, #0

	JSR	map_update_DEFA

locret_DEB3:
	RTS
; ---------------------------------------------------------------------------

loc_DEB4:
	LDA	tilemapHeight_30A
	SEC
	SBC	#1
	mult_a_by_8
	CLC
	ADC	byte_366
	STA	byte_366
	add_to_byte byte_367, #0

	add_to_byte_clc byte_36A, #$10
	add_to_byte byte_36B, #0

	JSR	map_update_DEFA
	LDA	sprite_length_30F
	BNE	locret_DEF9
	add_to_byte_clc byte_36A, #8
	add_to_byte byte_36B, #0

	JSR	map_update_DEFA

locret_DEF9:
	RTS
; End of function sub_DDDA


; =============== S U B	R O U T	I N E =======================================


map_update_DEFA:
	to_stack entry_idx_300
	to_stack byte_36A
	to_stack byte_36B
	to_stack byte_366
	to_stack byte_367
	JSR	sub_CA14
	LSR	byte_36A
	LSR	byte_36A
	LSR	byte_36A
	LSR	byte_366
	LSR	byte_366
	LSR	byte_366

read_tilemap_DF23:
	set tilemapData_4C, entry_idx_300
	set roomUnk1_4D, byte_36B
	set roomUnk2_4E, byte_367
	set tilemap_line_idx_4F, byte_366
	set mapLineSize_50, byte_36A
	set tilemap_line_size_51, #$20 
	set mapLineWidth_52, #1
	set mapLineHeight_53, #1
	JSR	tilemap_read_next_chunk_F472

load_from_C558_DF4B:

	set_ptr unknown_entries_C558

	set data_2, entry_idx_300
	set data_3, #0
	ASL	data_2
	ROL	data_3

	add_to_byte_clc ptr_0, data_2
	add_to_byte ptr_1, data_3


	LDY	#0
	set_iny data_2, {(ptr_0),Y}
	set data_3, {(ptr_0),Y}
	LDY	#0
	set entry_idx_300, {(data_2),Y}

load_from_BCB6_DF7F:

	set_ptr unknown_data_BCB6

	LDA	entry_idx_300
	mult_a_by_2
	TAY
	set_iny data_2, {(ptr_0),Y}
	set data_3, {(ptr_0),Y}
	LDY	#0
	LDA	(data_2),Y
	CMP	tilemapData_4C
	BCC	loc_DFA7
	BEQ	loc_DFA7
	set sprite_length_30F, #$FF
	JMP	loc_DFAC
; ---------------------------------------------------------------------------

loc_DFA7:
	; map_update_DEFA+A3j
	set sprite_length_30F, #0

loc_DFAC:
	from_stack byte_367
	from_stack byte_366
	from_stack byte_36B
	from_stack byte_36A
	from_stack entry_idx_300
	RTS
; End of function map_update_DEFA


; =============== S U B	R O U T	I N E =======================================


sub_DFC1:
	set byte_36E, #$FF

	set_ptr off_9BB5

get_offset_DFCE:
	set data_2, entry_idx_300
	set data_3, #0
	ASL	data_2
	ROL	data_3

	add_to_byte_clc ptr_0, data_2
	add_to_byte ptr_1, data_3


get_ptr_DFE8:
	LDY	#0
	set_iny data_2, {(ptr_0),Y}
	set data_3, {(ptr_0),Y}

read_entry_DFF3:
	LDY	#0
	set tilemapTypeUnk_30B, {(data_2),Y}

	add_to_data $1

	JSR	sub_C7C7
	add_to_byte_clc byte_366, #8
	add_to_byte byte_367, #0

	JSR	sub_9824
	set tilemapWidth_308, byte_36A
	set tilemap_size_307, byte_36B
	set tilemapHeight_30A, byte_366
	set ppu_unk_byte_309, byte_367
	set inv_spr_dscr1_30C, #0

loc_E03B:
	LDA	inv_spr_dscr1_30C
	CMP	tilemapTypeUnk_30B
	BNE	loc_E046
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E046:
	LDA	inv_spr_dscr1_30C
	mult_a_by_2
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
	LDA	tilemapWidth_308
	SEC
	SBC	byte_36A
	LDA	tilemap_size_307
	SBC	byte_36B
	BCC	loc_E0C5
	LDA	tilemapHeight_30A
	SEC
	SBC	byte_366
	LDA	ppu_unk_byte_309
	SBC	byte_367
	BCC	loc_E0C5
	LDA	byte_36C
	SEC
	SBC	tilemapWidth_308
	LDA	byte_36D
	SBC	tilemap_size_307
	BCC	loc_E0C5
	LDA	byte_368
	SEC
	SBC	tilemapHeight_30A
	LDA	byte_369
	SBC	ppu_unk_byte_309
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
	LDA	byte_370
	CMP	#$25 
	BNE	loc_E0E8
	LDA	byte_371
	CMP	#1
	BNE	loc_E0E8
	JMP	loc_E0EB
; ---------------------------------------------------------------------------

loc_E0E8:
	
	JMP	loc_E17D
; ---------------------------------------------------------------------------

loc_E0EB:
	LDA	byte_471
	CMP	#0
	BEQ	loc_E0F5
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E0F5:
	LDA	byte_36F
	CMP	#$FF
	BNE	loc_E0FF
	JMP	loc_E70C
; ---------------------------------------------------------------------------

loc_E0FF:
	set cur_obj_idx_unk_43A, #0
	JSR	sub_DC1C
	set tilemapData_4C, #1
	set roomUnk1_4D, #0
	set roomUnk2_4E, #7
	set tilemap_line_idx_4F, #2
	JSR	sub_CF42
	set tilemapData_4C, #1
	set roomUnk1_4D, #0
	set roomUnk2_4E, #7
	set tilemap_line_idx_4F, #1
	JSR	sub_CF42
	LDX	byte_4D0
	set {unk_4C2,X}, #$D
	INC	byte_4D0
	set text_idx_35C, #$3C 
	set char_type_id_35D, #2
	LDX	#3
	JSR	sub_CF13
	set tilemapData_4C, #1
	set roomUnk1_4D, #0
	set roomUnk2_4E, #7
	set tilemap_line_idx_4F, #0
	JSR	sub_CF42
	set tilemapData_4C, #1
	set roomUnk1_4D, #0
	set roomUnk2_4E, #7
	set tilemap_line_idx_4F, #3
	JSR	sub_CF42
	set cur_obj_idx_unk_43A, #0
	JSR	sub_DBE2
	set byte_6BD, #$FF
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E17D:
	LDA	byte_370
	CMP	#$B8 
	BNE	loc_E1B4
	LDA	byte_371
	CMP	#0
	BNE	loc_E1B4
	JMP	loc_E70C
; ---------------------------------------------------------------------------
	LDA	byte_471
	CMP	#0
	BEQ	loc_E198
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E198:
	LDA	byte_36F
	CMP	#$FF
	BNE	loc_E1A2
	JMP	loc_E70C
; ---------------------------------------------------------------------------

loc_E1A2:
	set text_idx_35C, #$43 
	set char_type_id_35D, #2
	LDX	#1
	JSR	sub_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E1B4:
	
	LDA	byte_370
	CMP	#$30 
	BNE	loc_E1E8
	LDA	byte_371
	CMP	#1
	BNE	loc_E1E8
	LDA	byte_471
	CMP	#0
	BEQ	loc_E1CC
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E1CC:
	LDA	byte_36F
	CMP	#$FF
	BNE	loc_E1D6
	JMP	loc_E70C
; ---------------------------------------------------------------------------

loc_E1D6:
	set text_idx_35C, #4
	set char_type_id_35D, #2
	LDX	#1
	JSR	sub_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E1E8:
	
	LDA	byte_370
	CMP	#$9E 
	BNE	loc_E221
	LDA	byte_371
	CMP	#0
	BNE	loc_E221
	LDA	byte_471
	CMP	#0
	BEQ	loc_E205
	set byte_46D, #$2E 
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E205:
	LDA	byte_36F
	CMP	#$FF
	BNE	loc_E20F
	JMP	loc_E70C
; ---------------------------------------------------------------------------

loc_E20F:
	set text_idx_35C, #$D4 
	set char_type_id_35D, #1
	LDX	#1
	JSR	sub_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E221:
	
	LDA	byte_370
	CMP	#$B4 
	BNE	loc_E25A
	LDA	byte_371
	CMP	#0
	BNE	loc_E25A
	LDA	byte_471
	CMP	#0
	BEQ	loc_E23E
	set byte_46D, #0
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E23E:
	LDA	byte_36F
	CMP	#$FF
	BNE	loc_E248
	JMP	loc_E70C
; ---------------------------------------------------------------------------

loc_E248:
	set text_idx_35C, #$C
	set char_type_id_35D, #2
	LDX	#1
	JSR	sub_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E25A:
	
	LDA	byte_36F
	CMP	#$FF
	BNE	loc_E290
	LDA	byte_370
	CMP	#$91 
	BNE	loc_E272
	LDA	byte_371
	CMP	#0
	BNE	loc_E272
	JMP	loc_E70C
; ---------------------------------------------------------------------------

loc_E272:
	
	LDA	byte_471
	CMP	#0
	BEQ	loc_E28D
	LDA	byte_370
	CMP	#$17
	BNE	loc_E28A
	LDA	byte_371
	CMP	#0
	BNE	loc_E28A
	JMP	loc_E70C
; ---------------------------------------------------------------------------

loc_E28A:
	
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E28D:
	JMP	loc_E70C
; ---------------------------------------------------------------------------

loc_E290:
	LDA	byte_370
	CMP	#0
	BNE	loc_E2BA
	LDA	byte_371
	CMP	#0
	BNE	loc_E2BA
	LDA	byte_471
	CMP	#0
	BEQ	loc_E2A8
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E2A8:
	set text_idx_35C, #$B9 
	set char_type_id_35D, #0
	LDX	#1
	JSR	sub_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E2BA:
	
	LDA	byte_370
	CMP	#1
	BNE	loc_E2E9
	LDA	byte_371
	CMP	#0
	BNE	loc_E2E9
	LDA	byte_471
	CMP	#0
	BEQ	loc_E2D7
	set byte_46D, #$13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E2D7:
	set text_idx_35C, #$8E 
	set char_type_id_35D, #1
	LDX	#1
	JSR	sub_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E2E9:
	
	LDA	byte_370
	CMP	#2
	BNE	loc_E318
	LDA	byte_371
	CMP	#0
	BNE	loc_E318
	LDA	byte_471
	CMP	#0
	BEQ	loc_E306
	set byte_46D, #$14
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E306:
	set text_idx_35C, #$8D 
	set char_type_id_35D, #1
	LDX	#1
	JSR	sub_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E318:
	
	LDA	byte_370
	CMP	#3
	BNE	loc_E347
	LDA	byte_371
	CMP	#0
	BNE	loc_E347
	LDA	byte_471
	CMP	#0
	BEQ	loc_E335
	set byte_46D, #$15
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E335:
	set text_idx_35C, #$8C 
	set char_type_id_35D, #1
	LDX	#1
	JSR	sub_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E347:
	
	LDA	byte_370
	CMP	#4
	BNE	loc_E376
	LDA	byte_371
	CMP	#0
	BNE	loc_E376
	LDA	byte_471
	CMP	#0
	BEQ	loc_E364
	set byte_46D, #$16
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E364:
	set text_idx_35C, #$8F 
	set char_type_id_35D, #1
	LDX	#1
	JSR	sub_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E376:
	
	LDA	byte_370
	CMP	#5
	BNE	loc_E3A5
	LDA	byte_371
	CMP	#0
	BNE	loc_E3A5
	LDA	byte_471
	CMP	#0
	BEQ	loc_E393
	set byte_46D, #$18
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E393:
	set text_idx_35C, #4
	set char_type_id_35D, #2
	LDX	#1
	JSR	sub_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E3A5:
	
	LDA	byte_370
	CMP	#6
	BNE	loc_E3D4
	LDA	byte_371
	CMP	#0
	BNE	loc_E3D4
	LDA	byte_471
	CMP	#0
	BEQ	loc_E3C2
	set byte_46D, #$19
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E3C2:
	set text_idx_35C, #$22 
	set char_type_id_35D, #2
	LDX	#1
	JSR	sub_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E3D4:
	
	LDA	byte_370
	CMP	#$33 
	BNE	loc_E403
	LDA	byte_371
	CMP	#0
	BNE	loc_E403
	LDA	byte_471
	CMP	#0
	BEQ	loc_E3F1
	set byte_46D, #$17
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E3F1:
	set text_idx_35C, #$90 
	set char_type_id_35D, #1
	LDX	#1
	JSR	sub_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E403:
	
	LDA	byte_370
	CMP	#$3D 
	BNE	loc_E42D
	LDA	byte_371
	CMP	#0
	BNE	loc_E42D
	LDA	byte_471
	CMP	#0
	BEQ	loc_E41B
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E41B:
	set text_idx_35C, #$DB 
	set char_type_id_35D, #1
	LDX	#1
	JSR	sub_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E42D:
	
	LDA	byte_370
	CMP	#$3C 
	BNE	loc_E457
	LDA	byte_371
	CMP	#0
	BNE	loc_E457
	LDA	byte_471
	CMP	#0
	BEQ	loc_E445
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E445:
	set text_idx_35C, #$DB 
	set char_type_id_35D, #1
	LDX	#1
	JSR	sub_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E457:
	
	LDA	byte_370
	CMP	#$3B 
	BNE	loc_E481
	LDA	byte_371
	CMP	#0
	BNE	loc_E481
	LDA	byte_471
	CMP	#0
	BEQ	loc_E46F
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E46F:
	set text_idx_35C, #$DB 
	set char_type_id_35D, #1
	LDX	#1
	JSR	sub_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E481:
	
	LDA	byte_370
	CMP	#$6F 
	BNE	loc_E4C7
	LDA	byte_371
	CMP	#0
	BNE	loc_E4C7
	LDA	byte_471
	CMP	#0
	BEQ	loc_E499
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E499:
	set text_idx_35C, #$E8 
	set char_type_id_35D, #1
	LDX	#1
	JSR	sub_CF13
	JSR	sub_CAA9
	LDA	byte_372
	BNE	loc_E4C4
	set byte_420, #1
	JSR	exec_b12_c24_EB8E
	LDA	byte_41F
	CMP	#0
	BEQ	loc_E4C4
	set byte_607, #$FF

loc_E4C4:
	
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E4C7:
	
	LDA	byte_370
	CMP	#$D2 
	BNE	loc_E50D
	LDA	byte_371
	CMP	#0
	BNE	loc_E50D
	LDA	byte_471
	CMP	#0
	BEQ	loc_E4DF
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E4DF:
	set text_idx_35C, #$E8 
	set char_type_id_35D, #1
	LDX	#1
	JSR	sub_CF13
	JSR	sub_CAA9
	LDA	byte_372
	BNE	loc_E50A
	set byte_420, #0
	JSR	exec_b12_c24_EB8E
	LDA	byte_41F
	CMP	#0
	BEQ	loc_E4C4
	set byte_66A, #$FF

loc_E50A:
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E50D:
	
	LDA	byte_370
	CMP	#$3A 
	BNE	loc_E537
	LDA	byte_371
	CMP	#0
	BNE	loc_E537
	LDA	byte_471
	CMP	#0
	BEQ	loc_E525
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E525:
	set text_idx_35C, #$F4 
	set char_type_id_35D, #1
	LDX	#1
	JSR	sub_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E537:
	
	LDA	byte_370
	CMP	#$9B 
	BNE	loc_E561
	LDA	byte_371
	CMP	#0
	BNE	loc_E561
	LDA	byte_471
	CMP	#0
	BEQ	loc_E54F
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E54F:
	set text_idx_35C, #$A
	set char_type_id_35D, #2
	LDX	#1
	JSR	sub_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E561:
	
	LDA	byte_370
	CMP	#$E2 
	BNE	loc_E58B
	LDA	byte_371
	CMP	#0
	BNE	loc_E58B
	LDA	byte_471
	CMP	#0
	BEQ	loc_E579
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E579:
	set text_idx_35C, #$10
	set char_type_id_35D, #2
	LDX	#1
	JSR	sub_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E58B:
	
	LDA	byte_370
	CMP	#$32 
	BNE	loc_E5B5
	LDA	byte_371
	CMP	#1
	BNE	loc_E5B5
	LDA	byte_471
	CMP	#0
	BEQ	loc_E5A3
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E5A3:
	set text_idx_35C, #$11
	set char_type_id_35D, #2
	LDX	#1
	JSR	sub_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E5B5:
	
	LDA	byte_370
	CMP	#$EC 
	BNE	loc_E5DF
	LDA	byte_371
	CMP	#0
	BNE	loc_E5DF
	LDA	byte_471
	CMP	#0
	BEQ	loc_E5CD
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E5CD:
	set text_idx_35C, #$13
	set char_type_id_35D, #2
	LDX	#1
	JSR	sub_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E5DF:
	
	LDA	byte_370
	CMP	#8
	BNE	loc_E609
	LDA	byte_371
	CMP	#1
	BNE	loc_E609
	LDA	byte_471
	CMP	#0
	BEQ	loc_E5F7
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E5F7:
	set text_idx_35C, #$33 
	set char_type_id_35D, #2
	LDX	#1
	JSR	sub_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E609:
	
	LDA	byte_370
	CMP	#$F8 
	BNE	loc_E633
	LDA	byte_371
	CMP	#0
	BNE	loc_E633
	LDA	byte_471
	CMP	#0
	BEQ	loc_E621
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E621:
	set text_idx_35C, #$DB 
	set char_type_id_35D, #1
	LDX	#1
	JSR	sub_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E633:
	
	LDA	byte_370
	CMP	#6
	BNE	loc_E65D
	LDA	byte_371
	CMP	#1
	BNE	loc_E65D
	LDA	byte_471
	CMP	#0
	BEQ	loc_E64B
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E64B:
	set text_idx_35C, #$13
	set char_type_id_35D, #2
	LDX	#1
	JSR	sub_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E65D:
	
	LDA	byte_370
	CMP	#$31 
	BNE	loc_E687
	LDA	byte_371
	CMP	#1
	BNE	loc_E687
	LDA	byte_471
	CMP	#0
	BEQ	loc_E675
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E675:
	set text_idx_35C, #$34 
	set char_type_id_35D, #2
	LDX	#1
	JSR	sub_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E687:
	
	LDA	byte_370
	CMP	#$B
	BNE	loc_E6B1
	LDA	byte_371
	CMP	#1
	BNE	loc_E6B1
	LDA	byte_471
	CMP	#0
	BEQ	loc_E69F
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E69F:
	set text_idx_35C, #$35 
	set char_type_id_35D, #2
	LDX	#1
	JSR	sub_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E6B1:
	
	LDA	byte_370
	CMP	#$C
	BNE	loc_E6DB
	LDA	byte_371
	CMP	#1
	BNE	loc_E6DB
	LDA	byte_471
	CMP	#0
	BEQ	loc_E6C9
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E6C9:
	set text_idx_35C, #$36 
	set char_type_id_35D, #2
	LDX	#1
	JSR	sub_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E6DB:
	
	LDA	byte_370
	CMP	#$2F 
	BNE	loc_E705
	LDA	byte_371
	CMP	#1
	BNE	loc_E705
	LDA	byte_471
	CMP	#0
	BEQ	loc_E6F3
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E6F3:
	set text_idx_35C, #$41 
	set char_type_id_35D, #2
	LDX	#1
	JSR	sub_CF13
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E705:
	
	LDA	byte_36F
	CMP	#$FF
	BNE	loc_E741

loc_E70C:
	
	INY
	set_iny byte_36E, {(ptr_0),Y}
	LDA	byte_36E
	CMP	#0
	BNE	loc_E725
	JSR	sub_E855
	set sprite_length_30F, #$FF
	JMP	locret_E740
; ---------------------------------------------------------------------------

loc_E725:
	CMP	#1
	BNE	loc_E734
	JSR	nullsub_2
	set sprite_length_30F, #$FF
	JMP	locret_E740
; ---------------------------------------------------------------------------

loc_E734:
	CMP	#2
	BNE	locret_E740
	JSR	sub_E925
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
	set byte_36F, #0
	STA	byte_370
	STA	byte_371
	TYA
	PHA
	to_stack ptr_0
	to_stack ptr_1
	to_stack tilemapTypeUnk_30B
	to_stack inv_spr_dscr1_30C
	LDY	#0
	set tilemapTypeUnk_30B, {(data_2),Y}
	CMP	#0
	BNE	loc_E775
	set byte_36F, #$FF
	JMP	loc_E7E7
; ---------------------------------------------------------------------------

loc_E775:
	add_to_data $1
	
	set inv_spr_dscr1_30C, #0

loc_E787:
	LDA	inv_spr_dscr1_30C
	mult_a_by_2
	TAY
	set_iny ptr_0, {(data_2),Y}
	set ptr_1, {(data_2),Y}
	LDY	#0

loc_E797:
	set_iny tilemapFrameCount_30D, {(ptr_0),Y}
	set_iny byte_30E, {(ptr_0),Y}
	LDA	tilemapFrameCount_30D
	CMP	#$FF
	BNE	loc_E7B1
	LDA	tilemapFrameCount_30D
	CMP	#$FF
	BEQ	loc_E7D3

loc_E7B1:
	add_to_byte_clc byte_370, tilemapFrameCount_30D
	add_to_byte byte_371, byte_30E

	JSR	sub_E7F8
	LDA	byte_36F
	ORA	tilemapFrameCount_30D
	STA	byte_36F
	JMP	loc_E797
; ---------------------------------------------------------------------------

loc_E7D3:
	LDA	byte_36F
	AND	tilemapFrameCount_30D
	STA	byte_36F
	INC	inv_spr_dscr1_30C
	LDA	inv_spr_dscr1_30C
	CMP	tilemapTypeUnk_30B
	BCC	loc_E787

loc_E7E7:
	from_stack inv_spr_dscr1_30C
	from_stack tilemapTypeUnk_30B
	from_stack ptr_1
	from_stack ptr_0
	from_stack_to_y
	RTS
; End of function sub_E747


; =============== S U B	R O U T	I N E =======================================


sub_E7F8:
	to_stack ptr_0
	to_stack ptr_1
	TYA
	PHA

	set_ptr byte_598

	add_to_byte_clc ptr_0, tilemapFrameCount_30D
	add_to_byte ptr_1, byte_30E

	LDY	#0
	set tilemapFrameCount_30D, {(ptr_0),Y}
	from_stack_to_y
	from_stack ptr_1
	from_stack ptr_0
	RTS
; End of function sub_E7F8


; =============== S U B	R O U T	I N E =======================================


sub_E827:
	to_stack ptr_0
	to_stack ptr_1
	TYA
	PHA

	set_ptr byte_598

	add_to_byte_clc ptr_0, tilemapFrameCount_30D
	add_to_byte ptr_1, byte_30E


	LDY	#0
	set {(ptr_0),Y}, #$FF
	from_stack_to_y
	from_stack ptr_1
	from_stack ptr_0
	RTS
; End of function sub_E827


; =============== S U B	R O U T	I N E =======================================


sub_E855:
	set_iny data_2, {(ptr_0),Y}
	set data_3, {(ptr_0),Y}
	JSR	sub_E8F8
	LDA	sprite_length_30F
	BEQ	loc_E867
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
	LDA	ppu_unk_byte_309
	CMP	#0
	BEQ	loc_E8C1
	LDA	byte_4AE
	SEC
	SBC	#$F0 
	STA	byte_4AE
	LDA	ppu_unk_byte_309
	SBC	#0
	STA	ppu_unk_byte_309
	INC	ppu_unk_byte_303
	JMP	loc_E8A3
; ---------------------------------------------------------------------------

loc_E8C1:
	LDA	byte_4AE
	CMP	#$F0 
	BCC	loc_E8D1
	SEC
	SBC	#$F0 
	STA	byte_4AE
	INC	ppu_unk_byte_303

loc_E8D1:
	JSR	exec_b12_c9_EAB6
	set image_id_4A4, entry_idx_300
	set image_offset_4A5, ppu_unk_byte_302
	set ppu_prev_unk_4A6, ppu_unk_byte_303
	set ppu_prev_scroll_x_unk_4A7, #0
	STA	ppu_prev_scroll_y_unk_4A8
	STA	prev_sprite_type_4A9
	JSR	load_image_C6D2
	JSR	sub_EC96
	RTS
; End of function sub_E855


; =============== S U B	R O U T	I N E =======================================


sub_E8F8:
	to_stack data_2
	to_stack data_3
	set sprite_length_30F, #0
	LDA	entry_idx_300
	CMP	#$17
	BNE	loc_E91D
	LDA	inv_spr_dscr1_30C
	CMP	#0
	BNE	loc_E917
	JSR	sub_E9F2
	JMP	loc_E91D
; ---------------------------------------------------------------------------

loc_E917:
	JSR	sub_EA14
	JMP	loc_E91D
; ---------------------------------------------------------------------------

loc_E91D:
	from_stack data_3
	from_stack data_2
	RTS
; End of function sub_E8F8

nullsub_2:
	RTS

; =============== S U B	R O U T	I N E =======================================


sub_E925:
	set_iny data_2, {(ptr_0),Y}
	set data_3, {(ptr_0),Y}
	JMP	(data_2)
; End of function sub_E925


; =============== S U B	R O U T	I N E =======================================


nullsub_4:
	RTS
; End of function nullsub_4


; =============== S U B	R O U T	I N E =======================================


sub_E932:
	LDA	byte_471
	CMP	#0
	BNE	loc_E949
	set text_idx_35C, #$BA 
	set char_type_id_35D, #0
	LDX	#1
	JSR	sub_CF13
	RTS
; ---------------------------------------------------------------------------

loc_E949:
	set byte_47F, #0
	set byte_46D, #$1A
	RTS
; End of function sub_E932


; =============== S U B	R O U T	I N E =======================================


sub_E954:
	LDA	byte_471
	CMP	#0
	BNE	loc_E968
	set text_idx_35C, #$B8 
	set char_type_id_35D, #0
	JSR	sub_9132

loc_E968:
	set sprite_length_30F, #$FF
	RTS
; End of function sub_E954


; =============== S U B	R O U T	I N E =======================================


sub_E96E:
	LDA	byte_471
	CMP	#0
	BNE	locret_E9B9
	LDA	byte_554
	CMP	#0
	BNE	loc_E98F
	set text_idx_35C, #$BC 
	set char_type_id_35D, #0
	LDX	#1
	JSR	sub_CF13
	INC	byte_554
	RTS
; ---------------------------------------------------------------------------

loc_E98F:
	CMP	#1
	BNE	loc_E9A4
	set tilemapTypeUnk_30B, #6
	JSR	exec_b12_cD_EAD6
	LDA	sprite_length_30F
	BEQ	locret_E9B9
	INC	byte_554
	RTS
; ---------------------------------------------------------------------------

loc_E9A4:
	CMP	#2
	BNE	locret_E9B9
	set tilemapTypeUnk_30B, #6
	JSR	exec_b12_cD_EAD6
	LDA	sprite_length_30F
	BEQ	locret_E9B9
	INC	byte_554
	RTS
; ---------------------------------------------------------------------------

locret_E9B9:
	RTS
; End of function sub_E96E


; =============== S U B	R O U T	I N E =======================================


sub_E9BA:
	LDA	byte_471
	CMP	#0
	BEQ	loc_E9C7
	set sprite_length_30F, #$FF
	RTS
; ---------------------------------------------------------------------------

loc_E9C7:
	LDA	byte_54E
	CMP	#2
	BNE	loc_E9D7
	set byte_54E, #0
	JSR	sub_EA3C
	RTS
; ---------------------------------------------------------------------------

loc_E9D7:
	LDA	byte_54E
	CMP	#1
	BNE	loc_E9EC
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
	LDA	byte_550
	CMP	#$16
	BEQ	loc_E9FF
	set sprite_length_30F, #0
	RTS
; ---------------------------------------------------------------------------

loc_E9FF:
	set text_idx_35C, #$B5 
	set char_type_id_35D, #0
	LDX	#1
	JSR	sub_CF13
	set sprite_length_30F, #$FF
	RTS
; End of function sub_E9F2


; =============== S U B	R O U T	I N E =======================================


sub_EA14:
	LDA	byte_550
	CMP	#$18
	BEQ	loc_EA21
	set sprite_length_30F, #0
	RTS
; ---------------------------------------------------------------------------

loc_EA21:
	set text_idx_35C, #$B6 
	set char_type_id_35D, #0
	LDX	#1
	JSR	sub_CF13
	set sprite_length_30F, #$FF
	RTS
; End of function sub_EA14

; ---------------------------------------------------------------------------
	LDA	byte_5AB
	BNE	locret_EA3B

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
	; a_button_pressed_8FDC+76p
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
	; exec_b12_c1_EA76+5j ...
	set bank_to_344, #banks_12
	set bank_from_343, #0
	JSR	bank_switch_8000
	RTS
; End of function exec_b12_com48_ECA6


; =============== S U B	R O U T	I N E =======================================


sub_ECCC:
	; load_image_C6D2+52p
	JSR	sub_ED7C
	LDX	ppu_unk_byte_302
	LDY	ppu_unk_byte_303
	JSR	sub_EDB1
	JSR	sub_ED8F
	JSR	sub_EDA2
	LDX	ppu_unk_byte_302
	LDY	ppu_unk_byte_303
	set tilemapTypeUnk_30B, #3
	LDA	#$20 
	SEC
	SBC	tilemap_size_307
	STA	tilemapWidth_308
	LDA	#$1E
	SEC
	SBC	ppu_unk_byte_309
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
	LDA	#$1E
	SEC
	SBC	ppu_unk_byte_309
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
	LDA	#$20 
	SEC
	SBC	tilemap_size_307
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
	LDA	ppu_scroll_y_305
	LSR	A
	LSR	A
	LSR	A
	STA	ppu_unk_byte_309
	LDA	ppu_scroll_x_304
	LSR	A
	LSR	A
	LSR	A
	STA	tilemap_size_307
	RTS
; End of function sub_ED7C


; =============== S U B	R O U T	I N E =======================================


sub_ED8F:
	TYA
	PHA
	LDY	ppu_unk_byte_309

loc_ED94:
	CPY	#0
	BEQ	loc_ED9F
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
	add_to_byte_clc data_2, tilemap_size_307
	add_to_byte data_3, #0

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
	add_to_byte_clc data_3, #4

locret_EDD5:
	RTS
; End of function sub_EDB1


; =============== S U B	R O U T	I N E =======================================


sub_EDD6:
	LDA	tilemapHeight_30A
	BEQ	exit_EDE3
	LDA	tilemapWidth_308
	BEQ	exit_EDE3
	JMP	loc_EDE4
; ---------------------------------------------------------------------------

exit_EDE3:
	RTS
; ---------------------------------------------------------------------------

loc_EDE4:
	to_stack ppu_unk_byte_309
	to_stack tilemap_size_307
	LDA	tilemapTypeUnk_30B
	CMP	#3
	BNE	next_check_EDF6
	JMP	start_read_tilemap_EE1C
; ---------------------------------------------------------------------------

next_check_EDF6:
	CMP	#2
	BNE	next_check_EE02
	set tilemap_size_307, #0
	JMP	start_read_tilemap_EE1C
; ---------------------------------------------------------------------------

next_check_EE02:
	CMP	#1
	BNE	next_check_EE0E
	set ppu_unk_byte_309, #0
	JMP	start_read_tilemap_EE1C
; ---------------------------------------------------------------------------

next_check_EE0E:
	CMP	#0
	BNE	start_read_tilemap_EE1C
	set ppu_unk_byte_309, #0
	set tilemap_size_307, #0

start_read_tilemap_EE1C:
	set tilemapData_4C, entry_idx_300
	STX	roomUnk1_4D
	STY	roomUnk2_4E
	set tilemap_line_idx_4F, ppu_unk_byte_309
	set mapLineSize_50, tilemap_size_307
	set tilemap_line_size_51, #$20 
	set mapLineWidth_52, tilemapWidth_308
	set mapLineHeight_53, #1
	JSR	tilemap_read_next_chunk_F472

start_upload_ppu_EE3F:
	set _PPU_ADDR, data_3
	set _PPU_ADDR, data_2
	TYA
	PHA
	LDY	#0

write_tilemap_to_ppu_EE4D:
	set_iny _PPU_DATA, {tilemapData_4C,Y}
	CPY	tilemapWidth_308
	BCC	write_tilemap_to_ppu_EE4D
	from_stack_to_y
	INC	ppu_unk_byte_309
	JSR	sub_F194
	DEC	tilemapHeight_30A
	LDA	tilemapHeight_30A
	BNE	start_read_tilemap_EE1C
	from_stack tilemap_size_307
	from_stack ppu_unk_byte_309
	RTS
; End of function sub_EDD6


; =============== S U B	R O U T	I N E =======================================


sub_EE72:
	; load_image_C6D2+55p ...
	JSR	sub_ED7C
	LSR	ppu_unk_byte_309
	LSR	ppu_unk_byte_309
	LSR	tilemap_size_307
	LSR	tilemap_size_307
	LDA	#8
	SEC
	SBC	tilemap_size_307
	STA	tilemapWidth_308
	LDA	#8
	SEC
	SBC	ppu_unk_byte_309
	STA	tilemapHeight_30A
	LDX	tilemap_size_307
	to_stack ppu_unk_byte_309

loc_EE9A:
	TXA
	PHA

start_read_tilemap_EE9C:
	set tilemapData_4C, entry_idx_300
	set roomUnk1_4D, ppu_unk_byte_302
	set roomUnk2_4E, ppu_unk_byte_303
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
	CPY	tilemapWidth_308
	BCC	loc_EEC7
	PLA
	CLC
	ADC	#8
	TAX
	INC	ppu_unk_byte_309
	DEC	tilemapHeight_30A
	LDA	tilemapHeight_30A
	BNE	loc_EE9A
	from_stack ppu_unk_byte_309
	LDA	ppu_scroll_x_304
	BNE	loc_EEEF
	JMP	loc_EF71
; ---------------------------------------------------------------------------

loc_EEEF:
	set tilemapWidth_308, tilemap_size_307
	LDA	#8
	SEC
	SBC	ppu_unk_byte_309
	STA	tilemapHeight_30A
	LDX	#0
	to_stack ppu_unk_byte_309

loc_EF04:
	TXA
	PHA

start_read_tilemap_EF06:
	set tilemapData_4C, entry_idx_300
	LDA	ppu_unk_byte_302
	CLC
	ADC	#1
	STA	roomUnk1_4D
	set roomUnk2_4E, ppu_unk_byte_303
	set tilemap_line_idx_4F, ppu_unk_byte_309
	set mapLineSize_50, #0
	set tilemap_line_size_51, #8
	LDA	tilemapWidth_308
	CLC
	ADC	#1
	STA	mapLineWidth_52
	set mapLineHeight_53, #1
	JSR	tilemap_read_next_chunk_F472
	LDY	#0

loc_EF36:
	CPY	tilemapWidth_308
	BEQ	loc_EF45
	set_inx {byte_4,X}, {tilemapData_4C,Y}
	INY
	JMP	loc_EF36
; ---------------------------------------------------------------------------

loc_EF45:
	LDA	ppu_scroll_x_304
	AND	#$1F
	BEQ	loc_EF5D
	LDA	tilemapData_4C,Y
	AND	#$33 
	STA	tilemapTypeUnk_30B
	LDA	byte_4,X
	AND	#$CC 
	ORA	tilemapTypeUnk_30B
	STA	byte_4,X

loc_EF5D:
	PLA
	CLC
	ADC	#8
	TAX
	INC	ppu_unk_byte_309
	DEC	tilemapHeight_30A
	LDA	tilemapHeight_30A
	BNE	loc_EF04
	from_stack ppu_unk_byte_309

loc_EF71:
	LDA	ppu_scroll_y_305
	CMP	#0
	BNE	loc_EF7B
	JMP	locret_F09C
; ---------------------------------------------------------------------------

loc_EF7B:
	LDA	#8
	SEC
	SBC	tilemap_size_307
	STA	tilemapWidth_308
	set tilemapHeight_30A, ppu_unk_byte_309
	LDA	ppu_scroll_y_305
	AND	#$1F
	BEQ	loc_EF94
	INC	tilemapHeight_30A

loc_EF94:
	LDA	#8
	SEC
	SBC	ppu_unk_byte_309
	mult_a_by_8
	CLC
	ADC	tilemap_size_307
	TAX
	to_stack ppu_unk_byte_309
	set ppu_unk_byte_309, #0

loc_EFAB:
	TXA
	PHA

start_read_tilemap_EFAD:
	set tilemapData_4C, entry_idx_300
	set roomUnk1_4D, ppu_unk_byte_302
	LDA	ppu_unk_byte_303
	CLC
	ADC	#1
	STA	roomUnk2_4E
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
	CPY	tilemapWidth_308
	BCC	loc_EFDB
	PLA
	CLC
	ADC	#8
	TAX
	INC	ppu_unk_byte_309
	DEC	tilemapHeight_30A
	LDA	tilemapHeight_30A
	BNE	loc_EFAB
	from_stack ppu_unk_byte_309
	LDA	ppu_scroll_x_304
	BNE	loc_F003
	JMP	locret_F09C
; ---------------------------------------------------------------------------

loc_F003:
	set tilemapWidth_308, tilemap_size_307
	set tilemapHeight_30A, ppu_unk_byte_309
	LDA	ppu_scroll_y_305
	AND	#$1F
	BEQ	loc_F019
	INC	tilemapHeight_30A

loc_F019:
	LDA	#8
	SEC
	SBC	ppu_unk_byte_309
	mult_a_by_8
	TAX
	to_stack ppu_unk_byte_309
	set ppu_unk_byte_309, #0

loc_F02C:
	TXA
	PHA

start_read_tilemap_F02E:
	set tilemapData_4C, entry_idx_300
	LDA	ppu_unk_byte_302
	CLC
	ADC	#1
	STA	roomUnk1_4D
	LDA	ppu_unk_byte_303
	CLC
	ADC	#1
	STA	roomUnk2_4E
	set tilemap_line_idx_4F, ppu_unk_byte_309
	set mapLineSize_50, #0
	set tilemap_line_size_51, #8
	LDA	tilemapWidth_308
	CLC
	ADC	#1
	STA	mapLineWidth_52
	set mapLineHeight_53, #1
	JSR	tilemap_read_next_chunk_F472
	LDY	#0

loc_F061:
	CPY	tilemapWidth_308
	BEQ	loc_F070
	set_inx {byte_4,X}, {tilemapData_4C,Y}
	INY
	JMP	loc_F061
; ---------------------------------------------------------------------------

loc_F070:
	LDA	ppu_scroll_x_304
	AND	#$1F
	BEQ	loc_F088
	LDA	tilemapData_4C,Y
	AND	#$33 
	STA	tilemapTypeUnk_30B
	LDA	byte_4,X
	AND	#$CC 
	ORA	tilemapTypeUnk_30B
	STA	byte_4,X

loc_F088:
	PLA
	CLC
	ADC	#8
	TAX
	INC	ppu_unk_byte_309
	DEC	tilemapHeight_30A
	LDA	tilemapHeight_30A
	BNE	loc_F02C
	from_stack ppu_unk_byte_309

locret_F09C:
	
	RTS
; End of function sub_EE72


; =============== S U B	R O U T	I N E =======================================


ppu_unk_func_F09D:
	LDA	ppu_unk_byte_303
	AND	#1
	CMP	#1
	BEQ	loc_F0B9

	set_ptr _PPU_ATTR_TBL_0
	set_data _PPU_ATTR_TBL_1

	JMP	loc_F0C9
; ---------------------------------------------------------------------------

loc_F0B9:

	set_data _PPU_ATTR_TBL_0
	set_ptr _PPU_ATTR_TBL_1

loc_F0C9:
	LDA	ppu_unk_byte_302
	AND	#1
	CMP	#1
	BNE	loc_F0E0
	add_to_byte_clc ptr_1, #4
	add_to_byte_clc data_3, #4

loc_F0E0:
	LDA	ppu_scroll_y_305
	LSR	A
	LSR	A
	LSR	A
	STA	ppu_unk_byte_309
	LSR	A
	LSR	A
	STA	tilemapHeight_30A
	mult_a_by_8
	CLC
	ADC	ptr_0
	STA	ptr_0
	add_to_byte ptr_1, #0

	LDA	#8
	SEC
	SBC	tilemapHeight_30A
	STA	inv_spr_dscr1_30C
	ASL	inv_spr_dscr1_30C
	ASL	inv_spr_dscr1_30C
	ASL	inv_spr_dscr1_30C
	LDA	ppu_unk_byte_309
	AND	#3
	CMP	#0
	BEQ	loc_F11A
	INC	tilemapHeight_30A

loc_F11A:
	ASL	tilemapHeight_30A
	ASL	tilemapHeight_30A
	ASL	tilemapHeight_30A
	set tilemapTypeUnk_30B, #1
	LDA	ppu_scroll_y_305
	CMP	#0
	BEQ	loc_F134
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
	CPY	inv_spr_dscr1_30C
	BCC	loc_F152
	LDA	tilemapTypeUnk_30B
	CMP	#1
	BEQ	set_ppu_upload_flag_F18B
	set_inx {ppu_data_70,X}, tilemapHeight_30A
	set_inx {ppu_data_70,X}, data_3
	set_inx {ppu_data_70,X}, data_2
	add_to_byte_clc tilemapHeight_30A, inv_spr_dscr1_30C

loc_F17F:
	set_inx {ppu_data_70,X}, {byte_4,Y}
	INY
	CPY	tilemapHeight_30A
	BCC	loc_F17F

set_ppu_upload_flag_F18B:
	set has_ppu_data_to_upload_6F, #1

wait_for_ppu_finished_F18F:
	LDA	has_ppu_data_to_upload_6F
	BNE	wait_for_ppu_finished_F18F
	RTS
; End of function ppu_unk_func_F09D


; =============== S U B	R O U T	I N E =======================================


sub_F194:
	add_to_data $20

	RTS
; End of function sub_F194


; =============== S U B	R O U T	I N E =======================================


sub_F1A2:
	
	JSR	sub_ED7C
	JSR	sub_F42F
	LDA	#$20 
	SEC
	SBC	tilemap_size_307
	STA	tilemapTypeUnk_30B

start_read_tilemap_F1B1:
	set tilemapData_4C, entry_idx_300
	STX	roomUnk1_4D
	STY	roomUnk2_4E
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
	LDA	ppu_scroll_x_304
	BEQ	loc_F228
	TXA
	PHA
	JSR	sub_ED7C
	JSR	sub_F42F
	set tilemapTypeUnk_30B, tilemap_size_307

start_read_tilemap_F1FA:
	set_inx tilemapData_4C, entry_idx_300
	STX	roomUnk1_4D
	STY	roomUnk2_4E
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
	TXA
	PHA
	JSR	sub_ED7C
	JSR	sub_F42F
	JSR	sub_F5A2
	LDA	#8
	SEC
	SBC	tilemap_size_307
	STA	tilemapTypeUnk_30B

start_read_tilemap_F23C:
	set tilemapData_4C, entry_idx_300
	STX	roomUnk1_4D
	STY	roomUnk2_4E
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
	LDA	ppu_scroll_x_304
	BEQ	loc_F2E0
	TXA
	PHA
	JSR	sub_ED7C
	JSR	sub_F42F
	JSR	sub_F5A2
	set tilemapTypeUnk_30B, tilemap_size_307
	LDA	ppu_scroll_x_304
	AND	#$1F
	BEQ	start_read_tilemap_F290
	INC	tilemapTypeUnk_30B

start_read_tilemap_F290:
	set_inx tilemapData_4C, entry_idx_300
	STX	roomUnk1_4D
	STY	roomUnk2_4E
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
	LDA	ppu_scroll_x_304
	AND	#$1F
	BEQ	loc_F2E0
	DEX
	LDA	ppu_data_70,X
	AND	#$33 
	STA	tilemapTypeUnk_30B
	TXA
	TAY
	SEC
	SBC	#$B
	TAX
	LDA	ppu_data_70,X
	AND	#$CC 
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
	LDA	#$1E
	SEC
	SBC	ppu_unk_byte_309
	STA	tilemapTypeUnk_30B

start_read_tilemap_F2F3:
	set tilemapData_4C, entry_idx_300
	STX	roomUnk1_4D
	STY	roomUnk2_4E
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
	LDA	tilemapTypeUnk_30B
	ORA	#$80 
	STA	tilemapTypeUnk_30B
	JSR	sub_F51D
	LDA	ppu_scroll_y_305
	BEQ	loc_F37A
	TXA
	PHA
	JSR	sub_ED7C
	JSR	sub_F42F
	set tilemapTypeUnk_30B, ppu_unk_byte_309

start_read_tilemap_F344:
	set tilemapData_4C, entry_idx_300
	STX	roomUnk1_4D
	INY
	STY	roomUnk2_4E
	set tilemap_line_idx_4F, #0
	set mapLineSize_50, tilemap_size_307
	set tilemap_line_size_51, #$20 
	set mapLineWidth_52, tilemapTypeUnk_30B
	set mapLineHeight_53, #$20 
	JSR	tilemap_read_next_chunk_F472
	JSR	sub_F504
	JSR	sub_EDA2
	from_stack_to_x
	LDA	tilemapTypeUnk_30B
	ORA	#$80 
	STA	tilemapTypeUnk_30B
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
	LDA	#8
	SEC
	SBC	ppu_unk_byte_309
	STA	tilemapTypeUnk_30B

start_read_tilemap_F390:
	set tilemapData_4C, entry_idx_300
	STX	roomUnk1_4D
	STY	roomUnk2_4E
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
	LDA	ppu_scroll_y_305
	BEQ	loc_F42B
	TXA
	PHA
	JSR	sub_ED7C
	JSR	sub_F42F
	JSR	sub_F5A2
	set tilemapTypeUnk_30B, ppu_unk_byte_309
	LDA	ppu_scroll_y_305
	AND	#$1F
	BEQ	start_read_tilemap_F3F2
	INC	tilemapTypeUnk_30B

start_read_tilemap_F3F2:
	set_iny tilemapData_4C, entry_idx_300
	STX	roomUnk1_4D
	STY	roomUnk2_4E
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
	LDA	byte_313
	CMP	#0
	BNE	loc_F44D
	LDA	ppu_unk_byte_309
	BNE	loc_F447
	DEY
	set ppu_unk_byte_309, #$1E

loc_F447:
	DEC	ppu_unk_byte_309
	JMP	locret_F471
; ---------------------------------------------------------------------------

loc_F44D:
	CMP	#1
	BNE	loc_F455
	INY
	JMP	locret_F471
; ---------------------------------------------------------------------------

loc_F455:
	CMP	#2
	BNE	loc_F46C
	LDA	tilemap_size_307
	CMP	#0
	BNE	loc_F466
	DEX
	set tilemap_size_307, #$20 

loc_F466:
	DEC	tilemap_size_307
	JMP	locret_F471
; ---------------------------------------------------------------------------

loc_F46C:
	CMP	#3
	BNE	locret_F471
	INX

locret_F471:
	RTS
; End of function sub_F42F


; =============== S U B	R O U T	I N E =======================================


tilemap_read_next_chunk_F472:
	
	TXA
	PHA
	TYA
	PHA
	to_stack ptr_0
	to_stack ptr_1
	to_stack data_2
	to_stack data_3
	to_stack entry_idx_300

get_tilemap_entries_ptr_F486:

	set_ptr tilemap_entries_C000

get_tilemap_entry_offset_F48E:
	set data_2, entry_idx_300
	set data_3, #0
	ASL	data_2
	ROL	data_3
	
	add_to_byte_clc ptr_0, data_2
	add_to_byte ptr_1, data_3


get_tilemap_entry_ptr_F4A8:
	LDY	#0
	set_iny data_2, {(ptr_0),Y}
	set data_3, {(ptr_0),Y}

read_tilemap_entry_data_F4B3:
	LDY	#0
	set_iny tilemaps_horiz_count_311, {(data_2),Y}
	set tilemaps_vert_count_312, {(data_2),Y}
	LDA	#0
	LDY	roomUnk2_4E

add_offset_F4C4:
	CPY	#0
	BEQ	next_F4D0
	CLC
	ADC	tilemaps_horiz_count_311
	DEY
	JMP	add_offset_F4C4
; ---------------------------------------------------------------------------

next_F4D0:
	CLC
	ADC	roomUnk1_4D
	mult_a_by_2
	TAY
	INY
	INY

exec_bN_c0_F4D7:
	set_iny bank_to_344, {(data_2),Y}
	set entry_idx_300, {(data_2),Y}
	set bank_command_346, #0
	set bank_from_343, #0
	JSR	bank_switch_8000

exitFunc_F4EF:
	from_stack entry_idx_300
	from_stack data_3
	from_stack data_2
	from_stack ptr_1
	from_stack ptr_0
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
	TYA
	PHA
	INC	ppu_data_70
	set_inx {ppu_data_70,X}, tilemapTypeUnk_30B
	set_inx {ppu_data_70,X}, data_3
	set_inx {ppu_data_70,X}, data_2
	LDA	tilemapTypeUnk_30B
	AND	#$7F 
	STA	tilemapTypeUnk_30B
	LDY	#0

loc_F53B:
	set_inx {ppu_data_70,X}, {tilemapData_4C,Y}
	INY
	CPY	tilemapTypeUnk_30B
	BCC	loc_F53B
	from_stack_to_y
	RTS
; End of function sub_F51D


; =============== S U B	R O U T	I N E =======================================


sub_F54A:
	TYA
	PHA
	LDY	#0

loc_F54E:
	INC	ppu_data_70
	set_inx {ppu_data_70,X}, #1
	set_inx {ppu_data_70,X}, data_3
	set_inx {ppu_data_70,X}, data_2
	set {ppu_data_70,X}, {tilemapData_4C,Y}

	add_to_data $8
	
	INX
	INY
	CPY	tilemapTypeUnk_30B
	BCC	loc_F54E
	from_stack_to_y
	RTS
; End of function sub_F54A


; =============== S U B	R O U T	I N E =======================================


sub_F57B:
	
	add_to_data $3C0

	RTS
; End of function sub_F57B


; =============== S U B	R O U T	I N E =======================================


sub_F589:
	
	LDY	ppu_unk_byte_309

loc_F58C:
	CPY	#0
	BEQ	locret_F5A1

	add_to_data $8

	DEY
	JMP	loc_F58C
; ---------------------------------------------------------------------------

locret_F5A1:
	RTS
; End of function sub_F589


; =============== S U B	R O U T	I N E =======================================


sub_F5A2:
	LSR	ppu_unk_byte_309
	LSR	ppu_unk_byte_309
	LSR	tilemap_size_307
	LSR	tilemap_size_307
	RTS
; End of function sub_F5A2


; =============== S U B	R O U T	I N E =======================================


sub_F5AF:
	LDA	byte_313
	CMP	#3
	BEQ	loc_F5C2
	LDA	ppu_scroll_x_304
	AND	#$10
	CMP	#$10
	BEQ	loc_F5CE
	JMP	locret_F640
; ---------------------------------------------------------------------------

loc_F5C2:
	LDA	ppu_scroll_x_304
	AND	#$F8 
	AND	#$1F
	BEQ	loc_F5CE
	JMP	locret_F640
; ---------------------------------------------------------------------------

loc_F5CE:
	TXA
	PHA
	LDX	#0

loc_F5D2:
	set_inx {unk_5C,X}, {tilemapData_4C,X}
	CPX	#8
	BCC	loc_F5D2
	from_stack_to_x
	set tilemapData_4C, entry_idx_300
	LDA	byte_313
	CMP	#2
	BEQ	loc_F5ED
	DEX
	JMP	loc_F5EE
; ---------------------------------------------------------------------------

loc_F5ED:
	INX

loc_F5EE:
	STX	roomUnk1_4D
	STY	roomUnk2_4E
	set tilemap_line_idx_4F, inv_spr_dscr1_30C
	set mapLineSize_50, tilemap_size_307
	set tilemap_line_size_51, #8
	set mapLineWidth_52, tilemapTypeUnk_30B
	set mapLineHeight_53, #8
	JSR	tilemap_read_next_chunk_F472
	LDA	byte_313
	CMP	#2
	BEQ	loc_F62B
	LDX	#0

loc_F615:
	LDA	tilemapData_4C,X
	AND	#$CC 
	STA	tilemapData_4C,X
	LDA	unk_5C,X
	AND	#$33 
	ORA	tilemapData_4C,X
	STA	tilemapData_4C,X
	INX
	CPX	#8
	BCC	loc_F615
	JMP	locret_F640
; ---------------------------------------------------------------------------

loc_F62B:
	LDX	#0

loc_F62D:
	LDA	tilemapData_4C,X
	AND	#$33 
	STA	tilemapData_4C,X
	LDA	unk_5C,X
	AND	#$CC 
	ORA	tilemapData_4C,X
	STA	tilemapData_4C,X
	INX
	CPX	#8
	BCC	loc_F62D

locret_F640:
	RTS
; End of function sub_F5AF


; =============== S U B	R O U T	I N E =======================================


sub_F641:
	LDA	ppu_unk_byte_303
	AND	#1
	BEQ	loc_F653
	LDA	ppu_ctrl_31F
	AND	#$FC 
	ORA	#2
	STA	ppu_ctrl_31F
	RTS
; ---------------------------------------------------------------------------

loc_F653:
	LDA	ppu_ctrl_31F
	AND	#$FC 
	STA	ppu_ctrl_31F
	RTS
; End of function sub_F641


; =============== S U B	R O U T	I N E =======================================


sub_F65C:
	JSR	sub_EE72
	LDA	byte_357
	mult_a_by_8
	STA	byte_366
	LDA	byte_358
	mult_a_by_8
	STA	byte_36A
	LDA	byte_359
	mult_a_by_8
	STA	tilemapWidth_308
	LDA	byte_36A
	CLC
	ADC	tilemapWidth_308
	STA	byte_36C
	LDA	byte_366
	CLC
	ADC	#$20 
	STA	byte_368
	LDX	#0

loc_F68F:
	LDA	byte_200,X
	AND	#$F8 
	CMP	byte_366
	BCC	loc_F6C0
	LDA	byte_200,X
	AND	#$F8 
	CMP	byte_368
	BEQ	loc_F6C0
	BCS	loc_F6C0
	LDA	byte_203,X
	AND	#$F8 
	CMP	byte_36A
	BCC	loc_F6C0
	LDA	byte_203,X
	AND	#$F8 
	CMP	byte_36C
	BEQ	loc_F6C0
	BCS	loc_F6C0
	set {byte_200,X}, #$F0 

loc_F6C0:
	INX
	INX
	INX
	INX
	CPX	#0
	BNE	loc_F68F
	set ppu_unk_byte_309, byte_357
	set tilemap_size_307, byte_358
	set tilemapWidth_308, byte_359
	LDA	tilemapWidth_308
	LSR	A
	AND	#$FE 
	CLC
	ADC	tilemap_size_307
	STA	tilemap_size_307
	set inv_spr_dscr1_30C, #0

loc_F6EC:
	LDA	inv_spr_dscr1_30C
	AND	#3
	BEQ	loc_F700
	add_to_byte_clc tilemap_size_307, inv_spr_dscr1_30C
	JMP	loc_F70A
; ---------------------------------------------------------------------------

loc_F700:
	LDA	tilemap_size_307
	SEC
	SBC	inv_spr_dscr1_30C
	STA	tilemap_size_307

loc_F70A:
	LDX	#0
	set_inx ppu_data_70, #0
	set tilemapHeight_30A, #0
	JSR	sub_F921
	JSR	text_unk_func_F80C
	set tilemapHeight_30A, #1
	INC	ppu_unk_byte_309
	INC	ppu_unk_byte_309
	JSR	sub_F921
	JSR	text_unk_func_F80C
	DEC	ppu_unk_byte_309
	DEC	ppu_unk_byte_309
	set tilemapHeight_30A, #0
	JSR	sub_F942
	JSR	sub_F9C2
	set tilemapHeight_30A, #1
	INC	ppu_unk_byte_309
	INC	ppu_unk_byte_309
	JSR	sub_F942
	JSR	sub_F9C2
	DEC	ppu_unk_byte_309
	DEC	ppu_unk_byte_309
	JSR	wait_for_ppu_data_upload_FC8C
	INC	inv_spr_dscr1_30C
	INC	inv_spr_dscr1_30C
	LDA	inv_spr_dscr1_30C
	CMP	tilemapWidth_308
	BCC	loc_F6EC
	RTS
; End of function sub_F65C


; =============== S U B	R O U T	I N E =======================================


sub_F767:
	set ppu_unk_byte_309, byte_357
	set tilemap_size_307, byte_358
	set tilemapWidth_308, byte_359
	LDA	tilemapWidth_308
	AND	#3
	BEQ	loc_F78C
	LDA	tilemapWidth_308
	SEC
	SBC	#2
	STA	inv_spr_dscr1_30C
	JMP	loc_F792
; ---------------------------------------------------------------------------

loc_F78C:
	set inv_spr_dscr1_30C, tilemapWidth_308

loc_F792:
	LDA	inv_spr_dscr1_30C
	AND	#3
	BEQ	loc_F7A6
	LDA	tilemap_size_307
	SEC
	SBC	inv_spr_dscr1_30C
	STA	tilemap_size_307
	JMP	loc_F7B0
; ---------------------------------------------------------------------------

loc_F7A6:
	add_to_byte_clc tilemap_size_307, inv_spr_dscr1_30C

loc_F7B0:
	LDX	#0
	set_inx ppu_data_70, #0
	set tilemapHeight_30A, #0
	JSR	sub_F921
	JSR	sub_F8A1
	set tilemapHeight_30A, #1
	INC	ppu_unk_byte_309
	INC	ppu_unk_byte_309
	JSR	sub_F921
	JSR	sub_F8A1
	DEC	ppu_unk_byte_309
	DEC	ppu_unk_byte_309
	set tilemapHeight_30A, #0
	JSR	sub_F942
	JSR	sub_FAAF
	set tilemapHeight_30A, #1
	INC	ppu_unk_byte_309
	INC	ppu_unk_byte_309
	JSR	sub_F942
	JSR	sub_FAAF
	DEC	ppu_unk_byte_309
	DEC	ppu_unk_byte_309
	JSR	wait_for_ppu_data_upload_FC8C
	DEC	inv_spr_dscr1_30C
	DEC	inv_spr_dscr1_30C
	LDA	inv_spr_dscr1_30C
	CMP	#0
	BNE	loc_F792
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
	CLC
	ADC	#2
	CMP	tilemapWidth_308
	BEQ	loc_F84E
	LDA	inv_spr_dscr1_30C
	CLC
	ADC	#4
	CMP	tilemapWidth_308
	BEQ	loc_F83D
	LDY	#8
	JMP	loc_F85C
; ---------------------------------------------------------------------------

loc_F83D:
	LDA	tilemapWidth_308
	AND	#2
	BEQ	loc_F849
	LDY	#$10
	JMP	loc_F85C
; ---------------------------------------------------------------------------

loc_F849:
	LDY	#0
	JMP	loc_F85C
; ---------------------------------------------------------------------------

loc_F84E:
	LDA	tilemapWidth_308
	AND	#2
	BEQ	loc_F85A
	LDY	#0
	JMP	loc_F85C
; ---------------------------------------------------------------------------

loc_F85A:
	LDY	#$10

loc_F85C:
	; text_unk_func_F80C+3Aj ...
	LDA	tilemapHeight_30A
	BEQ	loc_F865
	INY
	INY
	INY
	INY

loc_F865:
	LDA	tilemapTypeUnk_30B
	CMP	#0
	BEQ	loc_F86E
	INY
	INY

loc_F86E:
	to_stack tilemapTypeUnk_30B
	set tilemapTypeUnk_30B, #0

loc_F877:
	LDA	TextBg_FBD2,Y
	CLC
	ADC	text_unk_35B
	STA	ppu_data_70,X
	INY
	INX
	INC	tilemapTypeUnk_30B
	LDA	tilemapTypeUnk_30B
	CMP	#2
	BCC	loc_F877
	from_stack tilemapTypeUnk_30B
	JSR	sub_F194
	INC	tilemapTypeUnk_30B
	LDA	tilemapTypeUnk_30B
	CMP	#2
	BEQ	locret_F8A0
	JMP	loc_F811
; ---------------------------------------------------------------------------

locret_F8A0:
	RTS
; End of function text_unk_func_F80C


; =============== S U B	R O U T	I N E =======================================


sub_F8A1:
	to_stack ppu_unk_byte_309
	to_stack tilemap_size_307
	set tilemapTypeUnk_30B, #0

loc_F8AE:
	TXA
	PHA
	to_stack ppu_unk_byte_309
	to_stack tilemap_size_307
	JSR	sub_F98B

start_read_tilemap_F8BB:
	set tilemapData_4C, entry_idx_300
	STX	roomUnk1_4D
	STY	roomUnk2_4E
	set tilemap_line_idx_4F, ppu_unk_byte_309
	set mapLineSize_50, tilemap_size_307
	set tilemap_line_size_51, #$20 
	set mapLineWidth_52, #2
	set mapLineHeight_53, #1
	JSR	tilemap_read_next_chunk_F472
	from_stack tilemap_size_307
	from_stack ppu_unk_byte_309
	from_stack_to_x
	INC	ppu_data_70
	set_inx {ppu_data_70,X}, #2
	set_inx {ppu_data_70,X}, data_3
	set_inx {ppu_data_70,X}, data_2
	LDY	#0

loc_F8FA:
	set_iny {ppu_data_70,X}, {tilemapData_4C,Y}
	INX
	CPY	#2
	BCC	loc_F8FA
	JSR	sub_F194
	INC	ppu_unk_byte_309
	INC	tilemapTypeUnk_30B
	LDA	tilemapTypeUnk_30B
	CMP	#2
	BEQ	loc_F918
	JMP	loc_F8AE
; ---------------------------------------------------------------------------

loc_F918:
	from_stack tilemap_size_307
	from_stack ppu_unk_byte_309
	RTS
; End of function sub_F8A1


; =============== S U B	R O U T	I N E =======================================


sub_F921:
	TXA
	PHA
	to_stack ppu_unk_byte_309
	to_stack tilemap_size_307
	JSR	sub_F98B
	JSR	sub_F504
	JSR	sub_ED8F
	JSR	sub_EDA2
	from_stack tilemap_size_307
	from_stack ppu_unk_byte_309
	from_stack_to_x
	RTS
; End of function sub_F921


; =============== S U B	R O U T	I N E =======================================


sub_F942:
	TXA
	PHA
	to_stack ppu_unk_byte_309
	to_stack tilemap_size_307
	JSR	sub_F98B
	LSR	ppu_unk_byte_309
	LSR	ppu_unk_byte_309
	LSR	tilemap_size_307
	LSR	tilemap_size_307
	JSR	sub_F504
	JSR	sub_F57B
	JSR	sub_F972
	JSR	sub_EDA2
	from_stack tilemap_size_307
	from_stack ppu_unk_byte_309
	from_stack_to_x
	RTS
; End of function sub_F942


; =============== S U B	R O U T	I N E =======================================


sub_F972:
	LDY	ppu_unk_byte_309

loc_F975:
	CPY	#0
	BEQ	locret_F98A
	
	add_to_data $8

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
	LDA	ppu_scroll_y_305
	LSR	A
	LSR	A
	LSR	A
	CLC
	ADC	ppu_unk_byte_309
	STA	ppu_unk_byte_309
	CMP	#$1E
	BCC	loc_F9A9
	INY
	SEC
	SBC	#$1E
	STA	ppu_unk_byte_309

loc_F9A9:
	LDA	ppu_scroll_x_304
	LSR	A
	LSR	A
	LSR	A
	CLC
	ADC	tilemap_size_307
	STA	tilemap_size_307
	CMP	#$20 
	BCC	locret_F9C1
	INX
	SEC
	SBC	#$20 
	STA	tilemap_size_307

locret_F9C1:
	RTS
; End of function sub_F98B


; =============== S U B	R O U T	I N E =======================================


sub_F9C2:
	to_stack ppu_unk_byte_309
	to_stack tilemap_size_307
	JSR	sub_FA61
	LDA	ppu_unk_byte_309
	AND	#3
	BEQ	loc_FA0D
	LDA	tilemap_size_307
	AND	#3
	BEQ	loc_F9F5
	LDA	byte_4,Y
	AND	#$3F 
	STA	byte_4,Y
	LDA	byte_35A
	mult_a_by_64
	ORA	byte_4,Y
	STA	byte_4,Y
	JMP	loc_FA3B
; ---------------------------------------------------------------------------

loc_F9F5:
	LDA	byte_4,Y
	AND	#$CF 
	STA	byte_4,Y
	LDA	byte_35A
	mult_a_by_16
	ORA	byte_4,Y
	STA	byte_4,Y
	JMP	loc_FA3B
; ---------------------------------------------------------------------------

loc_FA0D:
	LDA	tilemap_size_307
	AND	#3
	BEQ	loc_FA2A
	LDA	byte_4,Y
	AND	#$F3 
	STA	byte_4,Y
	LDA	byte_35A
	mult_a_by_4
	ORA	byte_4,Y
	STA	byte_4,Y
	JMP	loc_FA3B
; ---------------------------------------------------------------------------

loc_FA2A:
	LDA	byte_4,Y
	AND	#$FC 
	STA	byte_4,Y
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
	from_stack tilemap_size_307
	from_stack ppu_unk_byte_309
	RTS
; End of function sub_F9C2


; =============== S U B	R O U T	I N E =======================================


sub_FA61:
	LDA	ppu_scroll_x_304
	LSR	A
	LSR	A
	LSR	A
	CLC
	ADC	tilemap_size_307
	STA	tilemap_size_307
	CMP	#$20 
	BCC	loc_FA78
	SEC
	SBC	#$20 
	STA	tilemap_size_307

loc_FA78:
	LDA	ppu_scroll_y_305
	LSR	A
	LSR	A
	LSR	A
	CLC
	ADC	ppu_unk_byte_309
	CMP	#$1E
	BCC	loc_FA8C
	INC	ppu_unk_byte_309
	INC	ppu_unk_byte_309

loc_FA8C:
	LDA	ppu_scroll_y_305
	AND	#$1F
	BEQ	loc_FA99
	INC	ppu_unk_byte_309
	INC	ppu_unk_byte_309

loc_FA99:
	LDA	ppu_unk_byte_309
	LSR	A
	LSR	A
	mult_a_by_8
	STA	tilemapTypeUnk_30B
	LDA	tilemap_size_307
	LSR	A
	LSR	A
	CLC
	ADC	tilemapTypeUnk_30B
	TAY
	RTS
; End of function sub_FA61


; =============== S U B	R O U T	I N E =======================================


sub_FAAF:
	TXA
	PHA
	to_stack ppu_unk_byte_309
	to_stack tilemap_size_307
	JSR	sub_F98B
	LSR	ppu_unk_byte_309
	LSR	ppu_unk_byte_309
	LSR	tilemap_size_307
	LSR	tilemap_size_307

start_read_tilemap_FAC8:
	set tilemapData_4C, entry_idx_300
	STX	roomUnk1_4D
	STY	roomUnk2_4E
	set tilemap_line_idx_4F, ppu_unk_byte_309
	set mapLineSize_50, tilemap_size_307
	set tilemap_line_size_51, #8
	set mapLineWidth_52, #1
	set mapLineHeight_53, #1
	JSR	tilemap_read_next_chunk_F472
	from_stack tilemap_size_307
	from_stack ppu_unk_byte_309
	to_stack ppu_unk_byte_309
	to_stack tilemap_size_307
	JSR	sub_FA61
	LDA	ppu_unk_byte_309
	AND	#3
	BEQ	loc_FB35
	LDA	tilemap_size_307
	AND	#3
	BEQ	loc_FB20
	LDA	byte_4,Y
	AND	#$3F 
	STA	byte_4,Y
	LDA	tilemapData_4C
	AND	#$C0 
	ORA	byte_4,Y
	STA	byte_4,Y
	JMP	loc_FB63
; ---------------------------------------------------------------------------

loc_FB20:
	LDA	byte_4,Y
	AND	#$CF 
	STA	byte_4,Y
	LDA	tilemapData_4C
	AND	#$30 
	ORA	byte_4,Y
	STA	byte_4,Y
	JMP	loc_FB63
; ---------------------------------------------------------------------------

loc_FB35:
	LDA	tilemap_size_307
	AND	#3
	BEQ	loc_FB51
	LDA	byte_4,Y
	AND	#$F3 
	STA	byte_4,Y
	LDA	tilemapData_4C
	AND	#$C
	ORA	byte_4,Y
	STA	byte_4,Y
	JMP	loc_FB63
; ---------------------------------------------------------------------------

loc_FB51:
	LDA	byte_4,Y
	AND	#$FC 
	STA	byte_4,Y
	LDA	tilemapData_4C
	AND	#3
	ORA	byte_4,Y
	STA	byte_4,Y

loc_FB63:
	from_stack tilemap_size_307
	from_stack ppu_unk_byte_309
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
	CPY	#$10
	BCC	loc_FB8C
	set data_2, #$EA 
	set data_3, #$FB 
	set ptr_0, text_unk_35B
	set ptr_1, #0
	ASL	ptr_0
	ROL	ptr_1
	ASL	ptr_0
	ROL	ptr_1
	ASL	ptr_0
	ROL	ptr_1
	ASL	ptr_0
	ROL	ptr_1
	LDA	ptr_1
	ORA	#$10
	STA	ptr_1
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
