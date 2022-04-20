; Segment type:Pure code
;.segment BANK_00 (Code)
;* =  $8000

    .include "includes/ram.inc"
	.include "includes/macros.inc"

; =============== S U B	R O U T	I N E =======================================

bank_switch_8000:
	.include "common/bank_switch_func.asm"

switch_case_8035:
	LDA	bank_to_344
	STA	bank_prev_345
	LDA	#$88 
	STA	bank_switch_flag_6C
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
	LDA	bank_from_343
	PHA
	LDX	tilemapTypeUnk_30B
	JSR	sub_CF13
	PLA
	STA	bank_from_343
	JMP	loc_8169
; ---------------------------------------------------------------------------

case1_80A7:
	LDA	bank_from_343
	PHA
	JSR	sub_CAA9
	PLA
	STA	bank_from_343
	JMP	loc_8169
; ---------------------------------------------------------------------------

case2_80B5:
	LDA	bank_from_343
	PHA
	JSR	load_image_C6D2
	PLA
	STA	bank_from_343
	JMP	loc_8169
; ---------------------------------------------------------------------------

case3_80C3:
	LDA	bank_from_343
	PHA
	JSR	sub_DBE2
	PLA
	STA	bank_from_343
	JMP	loc_8169
; ---------------------------------------------------------------------------

case4_80D1:
	LDA	bank_from_343
	PHA
	JSR	sub_CBC2
	PLA
	STA	bank_from_343
	JMP	loc_8169
; ---------------------------------------------------------------------------

case5_80DF:
	LDA	bank_from_343
	PHA
	JSR	objects_func_D52A
	PLA
	STA	bank_from_343
	JMP	loc_8169
; ---------------------------------------------------------------------------

loc_80ED:
	LDA	bank_from_343
	PHA
	JSR	sub_C873
	JSR	sub_C921
	JSR	sub_ECCC
	JSR	sub_EE72
	PLA
	STA	bank_from_343
	JMP	loc_8169
; ---------------------------------------------------------------------------

loc_8104:
	LDA	bank_from_343
	PHA
	JSR	exec_b4_c0_CA4B
	JSR	exec_b4_c1_CA5E
	PLA
	STA	bank_from_343
	JMP	loc_8169
; ---------------------------------------------------------------------------

loc_8115:
	LDA	bank_from_343
	PHA
	JSR	load_tiles_to_ppu_C83A
	PLA
	STA	bank_from_343
	JMP	loc_8169
; ---------------------------------------------------------------------------

loc_8123:
	LDA	bank_from_343
	PHA
	JSR	sub_91B6
	PLA
	STA	bank_from_343
	JMP	loc_8169
; ---------------------------------------------------------------------------

loc_8131:
	LDA	bank_from_343
	PHA
	JSR	sub_D055
	PLA
	STA	bank_from_343
	JMP	loc_8169
; ---------------------------------------------------------------------------

loc_813F:
	LDA	bank_from_343
	PHA
	JSR	sub_CF42
	PLA
	STA	bank_from_343
	JMP	loc_8169
; ---------------------------------------------------------------------------

loc_814D:
	LDA	bank_from_343
	PHA
	JSR	sub_D359
	PLA
	STA	bank_from_343
	JMP	loc_8169
; ---------------------------------------------------------------------------

loc_815B:
	LDA	bank_from_343
	PHA
	JSR	ppu_unk_func_F09D
	PLA
	STA	bank_from_343
	JMP	loc_8169
; ---------------------------------------------------------------------------

loc_8169:
	; bank_switch_8000+B2j	...
	LDA	#$FF
	STA	bank_command_346
	LDA	bank_from_343
	STA	bank_to_344
	JMP	bank_switch_8000
; End of function bank_switch_8000

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR gameplay_update_88C2

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
	LDA	#0	; reset	current	bank
	STA	loc_8082+1
	LDY	#0
	LDA	#$1D

clear_palette_81B0:
	STA	palette_bg_321,Y 
	INY
	CPY	#$20 
	BCC	clear_palette_81B0
	LDA	#$90 
	STA	ppu_ctrl_31F
	STA	_PPU_CTRL
	LDA	#$1E
	STA	ppu_mask_320
	STA	_PPU_MASK
	JSR	wait_for_vblank_FC95

switch_b13_c5_81CB:
	LDA	#$88 
	STA	bank_switch_flag_6C
	LDA	#0
	STA	apu_unk_76C
	LDA	#5
	STA	bank_command_346
	LDA	#banks_13
	STA	bank_to_344
	LDA	#0
	STA	bank_from_343
	JSR	bank_switch_8000

continue_816E:
	LDA	#$18
	STA	byte_357
	LDA	#0
	STA	byte_358
	LDA	#$1C
	STA	byte_359
	LDA	#3
	STA	byte_35A
	LDA	#0
	STA	byte_360
	LDA	#3
	STA	byte_361
	LDX	#0

loc_8206:
	LDA	#$3A 
	STA	unk_4D2,X
	INX
	CPX	#$30 
	BCC	loc_8206
	LDX	#0
	LDA	#6
	STA	unk_4D2,X
	LDA	#$F
	STA	unk_502,X
	INX
	LDA	#6
	STA	unk_4D2,X
	LDA	#$F
	STA	unk_502,X
	LDA	#3
	STA	byte_532
	LDA	#0
	STA	byte_533
	LDA	#1
	STA	byte_534
	LDA	#$F
	STA	byte_53C
	LDA	#$12
	STA	byte_535
	LDA	#$FF
	STA	byte_549
	STA	byte_46D
	LDA	#$FF
	STA	byte_4A0
	STA	byte_4A1
	STA	byte_4A2
	STA	byte_4A3
	LDA	#$90 
	STA	byte_567
	LDA	#1
	STA	byte_568
	LDA	#$40 
	STA	byte_569
	LDA	#0
	STA	byte_56A
	LDA	#$70 
	STA	byte_56B
	LDA	#0
	STA	byte_56C
	LDA	#$30 
	STA	byte_56D
	LDA	#0
	STA	byte_56E
	LDA	#$20 
	STA	byte_56F
	LDA	#0
	STA	byte_570
	LDA	#$A0 
	STA	byte_571
	LDA	#0
	STA	byte_572
	LDA	#0
	STA	byte_573
	LDA	#1
	STA	byte_574
	LDA	#$60 
	STA	byte_575
	LDA	#0
	STA	byte_576
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
	LDA	#2
	STA	byte_341
	LDA	#$A1 
	STA	image_id_4A4
	LDA	#0
	STA	image_offset_4A5
	STA	ppu_prev_unk_4A6
	STA	ppu_prev_scroll_x_unk_4A7
	STA	ppu_prev_scroll_y_unk_4A8
	LDA	#2
	STA	prev_sprite_type_4A9
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
	LDA	#$10
	STA	image_id_4A4
	JSR	load_image_C6D2
	LDA	#$88 
	STA	text_idx_35C
	LDA	#0
	STA	char_type_id_35D
	JSR	exec_b2_c2_text_cuts_C8E8
	JSR	exec_b2_c2_text_cuts_C8E8
	JSR	exec_b2_c2_text_cuts_C8E8
	JSR	exec_b2_c2_text_cuts_C8E8
	JSR	exec_b2_c2_text_cuts_C8E8

show_cut01_85CD:
	LDA	#$11
	STA	image_id_4A4
	JSR	load_image_C6D2
	LDA	#$8D 
	STA	text_idx_35C
	LDA	#0
	STA	char_type_id_35D
	JSR	exec_b2_c2_text_cuts_C8E8
	JSR	exec_b2_c2_text_cuts_C8E8
	JSR	exec_b2_c2_text_cuts_C8E8

show_cut02_85E8:
	LDA	#$12
	STA	image_id_4A4
	JSR	load_image_C6D2
	LDA	#$90 
	STA	text_idx_35C
	LDA	#0
	STA	char_type_id_35D
	JSR	exec_b2_c2_text_cuts_C8E8
	JSR	exec_b2_c2_text_cuts_C8E8
	JSR	exec_b2_c2_text_cuts_C8E8
	JSR	exec_b2_c2_text_cuts_C8E8

show_cut03_8606:
	LDA	#$13
	STA	image_id_4A4
	JSR	load_image_C6D2
	LDA	#$94 
	STA	text_idx_35C
	LDA	#0
	STA	char_type_id_35D
	JSR	exec_b2_c2_text_cuts_C8E8
	JSR	exec_b2_c2_text_cuts_C8E8
	JSR	exec_b2_c2_text_cuts_C8E8
	JSR	exec_b2_c2_text_cuts_C8E8
	JSR	exec_b2_c2_text_cuts_C8E8

show_title_screen_8627:
	
	LDA	#1
	STA	image_id_4A4
	JSR	load_image_C6D2
	LDA	#1
	STA	byte_372
	LDA	#0
	STA	byte_421

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

	load_ptr _SAVE_RAM

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
	LDA	(ptr_0),Y
	STA	byte_4A0,X
	INX
	INY
	CPX	#4
	BCC	loc_868F

loc_869A:
	LDA	#$FF
	STA	jill_pos_y_47E
	JSR	exec_b12_cE_EADE
	LDX	jill_pos_y_47E
	CPX	#$FF
	BNE	loc_86AC
	JMP	show_title_screen_8627
; ---------------------------------------------------------------------------

loc_86AC:
	LDA	#0
	STA	jill_pos_y_47E
	JSR	load_image_C6D2
	JMP	loc_8742
; ---------------------------------------------------------------------------

loc_86B7:
	LDA	#$9F 
	STA	image_id_4A4
	JSR	load_image_C6D2
	LDA	#1
	STA	byte_372
	LDA	#0
	STA	byte_421

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
	LDA	byte_372
	STA	byte_4B4
	LDA	#0
	STA	jill_pos_y_47E
	LDA	#1
	STA	byte_341
	LDA	#$16
	STA	image_id_4A4
	LDA	#0
	STA	image_offset_4A5
	LDA	#1
	STA	ppu_prev_unk_4A6
	LDA	#$80 
	STA	ppu_prev_scroll_x_unk_4A7
	LDA	#0
	STA	ppu_prev_scroll_y_unk_4A8
	LDA	#0
	STA	prev_sprite_type_4A9
	LDA	#$80 
	STA	byte_4AD
	LDA	#$60 
	STA	byte_4AE
	JSR	load_image_C6D2
	JSR	sub_D22C

loc_8742:
	LDA	#2
	STA	apu_unk_76C

exec_b13_c5_8747:
	LDA	#5
	STA	bank_command_346
	LDA	#banks_13
	STA	bank_to_344
	LDA	#0
	STA	bank_from_343
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
	LDA	#0
	STA	sprite_length_30F
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
	LDA	byte_36A
	PHA
	LDA	byte_36B
	PHA
	LDA	byte_366
	PHA
	LDA	byte_367
	PHA
	LDA	tilemapWidth_308
	LSR	A
	ASL	A
	ASL	A
	ASL	A
	CLC
	ADC	byte_36A
	STA	byte_36A
	LDA	byte_36B
	ADC	#0
	STA	byte_36B
	LDA	tilemapHeight_30A
	LSR	A
	ASL	A
	ASL	A
	ASL	A
	CLC
	ADC	byte_366
	STA	byte_366
	LDA	byte_367
	ADC	#0
	STA	byte_367
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
	LDA	#$FF
	STA	sprite_length_30F

loc_8854:
	PLA
	STA	byte_367
	PLA
	STA	byte_366
	PLA
	STA	byte_36B
	PLA
	STA	byte_36A
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
	LDA	byte_366
	CLC
	ADC	#8
	STA	byte_366
	LDA	byte_367
	ADC	#0
	STA	byte_367
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
	LDA	byte_36A
	CLC
	ADC	#8
	STA	byte_36A
	LDA	byte_36B
	ADC	#0
	STA	byte_36B

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
	LDA	#0
	STA	jill_pos_x_47D
	JMP	check_cheat_entered_88DD
; ---------------------------------------------------------------------------

inc_cheat_idx_88DA:
	INC	jill_pos_x_47D

check_cheat_entered_88DD:
	LDA	jill_pos_x_47D
	CMP	#9
	BNE	gameplay_update_8930

show_copyright_screen_88E4:
	LDA	#0
	STA	jill_pos_x_47D
	JSR	cache_prev_data_CA84
	LDA	image_id_4A4
	PHA
	LDA	image_offset_4A5
	PHA
	LDA	ppu_prev_unk_4A6
	PHA
	LDA	ppu_prev_scroll_x_unk_4A7
	PHA
	LDA	ppu_prev_scroll_y_unk_4A8
	PHA
	LDA	prev_sprite_type_4A9
	PHA
	JSR	exec_b12_c4A_ECB6
	JSR	show_hidden_copyright_9AD9
	PLA
	STA	prev_sprite_type_4A9
	PLA
	STA	ppu_prev_scroll_y_unk_4A8
	PLA
	STA	ppu_prev_scroll_x_unk_4A7
	PLA
	STA	ppu_prev_unk_4A6
	PLA
	STA	image_offset_4A5
	PLA
	STA	image_id_4A4
	LDA	#$FF
	STA	map_show_43B
	JSR	load_image_C6D2
	LDA	#0
	STA	map_show_43B
	RTS
; ---------------------------------------------------------------------------

gameplay_update_8930:
	
	LDA	byte_54A
	CMP	#0
	BEQ	loc_895B
	LDA	count_unk_46C
	CMP	#$A
	BCC	loc_895B
	LDA	#0
	STA	count_unk_46C
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
	LDA	#$FF
	STA	is_game_finished_561

loc_895B:
	
	LDA	#8
	STA	byte_315
	LDA	#0
	STA	byte_314
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
	
	LDA	#0
	STA	byte_653
	LDA	#0
	STA	cur_obj_idx_unk_43A
	JSR	sub_DBE2
	JMP	loc_89D5
; ---------------------------------------------------------------------------

loc_89C8:
	LDA	#$FF
	STA	byte_653
	LDA	#0
	STA	cur_obj_idx_unk_43A
	JSR	sub_DC1C

loc_89D5:
	
	LDA	byte_584
	CMP	#$FF
	BNE	loc_8A05
	LDA	#$FF
	STA	sprite_type_306
	JSR	loc_8DA3
	LDA	#0
	STA	byte_314
	JSR	loc_8DA3
	LDA	#0
	STA	byte_314
	JSR	loc_8DA3
	LDA	#0
	STA	byte_314
	JSR	loc_8DA3
	LDA	#0
	STA	byte_584

loc_8A01:
	STA	sprite_type_306
	RTS
; ---------------------------------------------------------------------------

loc_8A05:
	CMP	#$FE 
	BNE	check_ending_8A41
	LDA	#$FF
	STA	sprite_type_306
	JSR	loc_8CDA
	LDA	#8
	STA	byte_315
	LDA	#0
	STA	byte_314
	JSR	loc_8CDA
	LDA	#8
	STA	byte_315
	LDA	#0
	STA	byte_314
	JSR	loc_8CDA
	LDA	#8
	STA	byte_315
	LDA	#0
	STA	byte_314
	JSR	loc_8CDA
	LDA	#0
	STA	byte_584
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
	LDA	#1
	STA	apu_unk_76C

exec_b13_c5_8A57:
	LDA	#5
	STA	bank_command_346
	LDA	#banks_13
	STA	bank_to_344
	LDA	#0
	STA	bank_from_343
	JSR	bank_switch_8000

loc_8A69:
	JSR	exec_b12_c45_EC8E
	LDA	#$14
	JSR	wait_for_n_65k_cycles_FCD5
	JMP	RESET_8177
; ---------------------------------------------------------------------------

ending_sequence_8A74:
	LDA	#6
	STA	apu_unk_76C

exec_b13_c5_8A79:
	LDA	#5
	STA	bank_command_346
	LDA	#banks_13
	STA	bank_to_344
	LDA	#0
	STA	bank_from_343
	JSR	bank_switch_8000

loc_8A8B:
	LDA	#4
	STA	byte_341
	LDA	#2
	STA	image_id_4A4
	LDA	#0
	STA	image_offset_4A5
	STA	ppu_prev_unk_4A6
	STA	ppu_prev_scroll_x_unk_4A7
	STA	ppu_prev_scroll_y_unk_4A8
	LDA	#2
	STA	prev_sprite_type_4A9
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
	LDA	byte_CBFD,X
	STA	inv_sprite_idx_31C
	JSR	sub_EC86
	RTS
; ---------------------------------------------------------------------------

loc_8AE0:
	
	LDA	count_unk_46B
	CMP	#$A
	BCC	loc_8B59
	LDA	#0
	STA	count_unk_46B
	LDA	#0
	STA	objMapIdx_316

loc_8AF1:
	LDA	objMapIdx_316
	PHA
	LDA	byte_313
	ASL	A
	ASL	A
	CLC
	ADC	objMapIdx_316
	TAX
	LDA	byte_9523,X
	STA	objMapIdx_316
	STA	byte_4AA
	LDA	byte_313
	CMP	#2
	BNE	loc_8B14
	LDA	#$40 
	STA	byte_317

loc_8B14:
	JSR	sub_C77D
	JSR	wait_for_frame_rendered_FCA0
	PLA
	STA	objMapIdx_316
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
	LDA	#$FF
	STA	is_game_finished_561
	JMP	loc_8B59
; ---------------------------------------------------------------------------

loc_8B4A:
	INC	byte_4B5
	LDA	byte_4B5
	CMP	#$A
	BCC	loc_8B59
	LDA	#1
	STA	byte_54A

loc_8B59:
	
	LDA	#0
	STA	byte_439
	RTS
; ---------------------------------------------------------------------------

update_player_input_8B5F:
	LDA	#0
	STA	byte_433

is_B_pressed_8B64:
	LDA	input_reg1_347
	AND	#$40 
	CMP	#b_40
	BNE	b_not_pressed_8BB1
	LDA	#$FF
	STA	byte_433
	LDA	byte_42A
	CMP	#$FF
	BEQ	loc_8BAC
	LDA	#$FF
	STA	byte_42A
	LDA	#0
	STA	byte_430
	STA	byte_431
	JSR	sub_C7C7
	LDA	byte_36A
	STA	byte_42C
	LDA	byte_36B
	STA	byte_42D
	LDA	byte_366
	CLC
	ADC	#4
	STA	byte_366
	STA	byte_42E
	LDA	byte_367
	ADC	#0
	STA	byte_367
	STA	byte_42F

loc_8BAC:
	LDA	#$96 
	STA	byte_432

b_not_pressed_8BB1:
	JSR	sub_91D8
	JSR	sub_9195

is_up_pressed_8BB7:
	LDA	input_reg1_347
	AND	#8
	CMP	#up_8
	BNE	up_not_pressed_8BD7

up_pressed_8BC0:
	LDA	#0
	STA	byte_437
	LDA	#0
	STA	byte_313
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
	LDA	#0
	STA	byte_437
	LDA	#1
	STA	byte_313
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
	LDA	#0
	STA	byte_437
	LDA	#2
	STA	byte_313
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
	LDA	#0
	STA	byte_437
	LDA	#3
	STA	byte_313
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
	LDA	#$96 
	STA	byte_432
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
	LDA	#0
	STA	byte_314

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
	LDA	#$F0 
	STA	ppu_scroll_y_305
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
	LDA	#$96 
	STA	byte_432
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
	LDA	#0
	STA	ppu_scroll_y_305
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
	LDA	#$96 
	STA	byte_432
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
	LDA	#$96 
	STA	byte_432
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
	LDA	#$FF
	STA	byte_629

loc_8F8D:
	LDA	#$FF
	STA	byte_471
	LDA	#$FF
	STA	byte_46E
	LDA	#$FF
	STA	byte_5AF
	JSR	sub_DFC1
	LDA	#0
	STA	byte_5AF
	JSR	exec_b12_cB_EAC6
	LDA	byte_46E
	CMP	#$1A
	BEQ	loc_8FBB
	LDA	#$FF
	STA	map_show_43B
	JSR	load_image_C6D2
	LDA	#0
	STA	map_show_43B

loc_8FBB:
	LDA	#$FF
	STA	byte_46D
	JSR	exec_b12_c11_EAF6
	RTS
; End of function start_button_pressed_8F88


; =============== S U B	R O U T	I N E =======================================


select_button_pressed_8FC4:
	LDA	entry_idx_300
	CMP	#$9A 
	BEQ	locret_8FDB
	JSR	exec_b12_cC_EACE
	LDA	#$FF
	STA	map_show_43B
	JSR	load_image_C6D2
	LDA	#0
	STA	map_show_43B

locret_8FDB:
	RTS
; End of function select_button_pressed_8FC4


; =============== S U B	R O U T	I N E =======================================


a_button_pressed_8FDC:
	LDA	#$FF
	STA	byte_629
	LDA	#0
	STA	byte_471
	JSR	sub_994F
	LDA	sprite_length_30F
	CMP	#$FF
	BEQ	loc_900F
	LDA	byte_4AF
	CMP	#0
	BNE	loc_900B
	LDA	#1
	STA	byte_445
	JSR	sub_994F
	LDA	#0
	STA	byte_445
	LDA	sprite_length_30F
	CMP	#$FF
	BEQ	loc_900F

loc_900B:
	JSR	sub_DFC1
	RTS
; ---------------------------------------------------------------------------

loc_900F:
	; a_button_pressed_8FDC+2Dj
	LDA	#$2D 
	STA	tilemapTypeUnk_30B
	JSR	exec_b12_com48_ECA6
	LDX	byte_434
	LDA	obj_array_unk_415,X
	STA	tilemapTypeUnk_30B
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
	LDA	#$3B 
	STA	tilemapTypeUnk_30B

loc_9042:
	; a_button_pressed_8FDC+5Fj
	LDA	tilemapTypeUnk_30B
	CMP	#$1F
	BNE	loc_9061
	LDA	tilemapTypeUnk_30B
	PHA
	LDA	#$32 
	STA	inv_sprite_idx_31C
	JSR	sub_EC86
	PLA
	STA	tilemapTypeUnk_30B
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
	LDA	tilemapTypeUnk_30B
	PHA
	LDX	#1
	JSR	sub_CF13
	LDA	#$1F
	STA	text_idx_35C
	LDA	#2
	STA	char_type_id_35D
	LDX	#1
	JSR	sub_CF13
	JSR	sub_CAA9
	PLA
	STA	tilemapTypeUnk_30B
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
	LDA	#$3A 
	STA	text_idx_35C
	LDA	#2
	STA	char_type_id_35D

loc_90E6:
	LDA	tilemapTypeUnk_30B
	PHA
	LDX	#1
	JSR	sub_CF13
	LDA	#$1F
	STA	text_idx_35C
	LDA	#2
	STA	char_type_id_35D
	LDX	#1
	JSR	sub_CF13
	JSR	sub_CAA9
	PLA
	STA	tilemapTypeUnk_30B
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
	LDA	byte_434
	STA	cur_obj_idx_unk_43A
	JSR	sub_DBE2

locret_9131:
	RTS
; End of function a_button_pressed_8FDC


; =============== S U B	R O U T	I N E =======================================


sub_9132:
	LDA	#$18
	STA	byte_357
	LDA	#0
	STA	byte_358
	LDA	#$1C
	STA	byte_359
	LDA	#3
	STA	byte_360
	LDA	#0
	STA	byte_361
	LDA	#$C0 
	STA	text_unk_35B
	JSR	sub_F65C
	LDA	#$19
	STA	ppu_unk_byte_309
	LDA	#4
	STA	tilemap_size_307
	LDA	#$C
	STA	byte_35E
	LDA	#1
	STA	byte_35F
	LDA	#0
	STA	byte_362
	LDA	#0
	STA	byte_363
	LDA	#$D0 
	STA	sprite_secondByte_31B
	LDA	text_unk_35B
	CLC
	ADC	#5
	STA	byte_310
	JSR	exec_b2_c4_C90E
	LDA	#$18
	STA	byte_357
	LDA	#0
	STA	byte_358
	LDA	#$1C
	STA	byte_359
	JSR	sub_F767
	RTS
; End of function sub_9132


; =============== S U B	R O U T	I N E =======================================


sub_9195:
	LDA	byte_433
	BEQ	sub_91B6
	LDX	byte_313
	LDA	byte_9537,X
	STA	objMapIdx_316
	LDA	byte_313
	CMP	#2
	BNE	loc_91AF
	LDA	#$40 
	STA	byte_317

loc_91AF:
	JSR	sub_C77D
	JSR	sub_935A
	RTS
; End of function sub_9195


; =============== S U B	R O U T	I N E =======================================


sub_91B6:
	
	LDX	byte_313
	STX	byte_4AF
	LDA	byte_9533,X
	STA	objMapIdx_316
	STA	byte_4AA
	LDA	byte_313
	CMP	#2
	BNE	loc_91D1
	LDA	#$40 
	STA	byte_317

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
	LDA	#0
	STA	byte_42A
	LDA	#0
	STA	sprite_length_30F
	LDX	#0

objects_update_91F0:
	CPX	objArraySize_373
	BEQ	locret_9260
	LDA	byte_42C
	STA	byte_36A
	LDA	byte_42D
	STA	byte_36B
	LDA	byte_42E
	STA	byte_366
	LDA	byte_42F
	STA	byte_367
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
	PLA
	TAX
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
	LDA	#$FF
	STA	byte_439
	JMP	loc_8ABF
; ---------------------------------------------------------------------------

locret_9260:
	RTS
; End of function sub_91D8


; =============== S U B	R O U T	I N E =======================================


sub_9261:
	JSR	sub_C7C7
	LDA	byte_366
	CLC
	ADC	#4
	STA	byte_366
	LDA	byte_367
	ADC	#0
	STA	byte_367
	LDA	#0
	STA	sprite_length_30F

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
	LDA	byte_42C
	CLC
	ADC	#2
	STA	byte_42C
	LDA	byte_42D
	ADC	#0
	STA	byte_42D
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
	LDA	byte_42E
	CLC
	ADC	#2
	STA	byte_42E
	LDA	byte_42F
	ADC	#0
	STA	byte_42F
	JMP	loc_931C
; ---------------------------------------------------------------------------

loc_931C:
	LDA	byte_36A
	PHA
	LDA	byte_36B
	PHA
	LDA	byte_366
	PHA
	LDA	byte_367
	PHA
	LDA	sprite_length_30F
	PHA
	JSR	sub_935A
	PLA
	STA	sprite_length_30F
	PLA
	STA	byte_367
	PLA
	STA	byte_366
	PLA
	STA	byte_36B
	PLA
	STA	byte_36A
	JSR	wait_for_frame_rendered_FCA0
	LDA	sprite_length_30F
	CMP	#$FF
	BEQ	loc_9354
	JMP	loc_927A
; ---------------------------------------------------------------------------

loc_9354:
	LDA	#0
	STA	byte_42A
	RTS
; End of function sub_9261


; =============== S U B	R O U T	I N E =======================================


sub_935A:
	LDA	#0
	STA	byte_31A
	LDA	#0
	STA	sprite_secondByte_31B
	STA	sprPalIdx_319
	LDA	#0
	STA	objectIdx_318
	LDA	#$14
	STA	objMapIdx_316
	LDA	byte_42C
	STA	byte_36A
	LDA	byte_42D
	STA	byte_36B
	LDA	byte_42E
	STA	byte_366
	LDA	byte_42F
	STA	byte_367
	JSR	loadt_obj_tilemaps_C84D
	RTS
; End of function sub_935A


; =============== S U B	R O U T	I N E =======================================


sub_938D:
	LDA	#$F0 
	STA	byte_200
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
	LDA	byte_42C
	CLC
	ADC	#2
	STA	byte_42C
	LDA	byte_42D
	ADC	#0
	STA	byte_42D
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
	LDA	byte_42E
	CLC
	ADC	#2
	STA	byte_42E
	LDA	byte_42F
	ADC	#0
	STA	byte_42F
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
	LDA	#0
	STA	sprite_length_30F
	LDA	byte_430
	PHA
	LDA	byte_431
	PHA
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
	LDA	byte_953B,X
	STA	byte_42B
	LDA	byte_430
	STA	tilemap_size_307
	BPL	loc_94A2
	EOR	#$FF
	TAX
	INX
	STX	tilemap_size_307

loc_94A2:
	LDA	byte_431
	STA	ppu_unk_byte_309
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
	LDA	#$FF
	STA	sprite_length_30F
	JMP	loc_94CA
; ---------------------------------------------------------------------------

loc_94C5:
	LDA	#0
	STA	sprite_length_30F

loc_94CA:
	PLA
	STA	byte_431
	PLA
	STA	byte_430
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
	ASL	A
	ASL	A
	CLC
	ADC	objMapIdx_316
	TAX
	LDA	byte_9523,X
	STA	objMapIdx_316
	STA	byte_4AA
	LDA	byte_313
	CMP	#2
	BNE	loc_9511
	LDA	#$40 
	STA	byte_317

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
	LDA	#0
	STA	byte_5BF
	STA	byte_5C0
	LDA	#$FF
	STA	byte_5C1
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
	LDA	#$FF
	STA	byte_58A
	JSR	exec_b12_c9_EAB6
	LDA	entry_idx_300
	STA	image_id_4A4
	LDA	ppu_unk_byte_302
	STA	image_offset_4A5
	LDA	ppu_unk_byte_303
	STA	ppu_prev_unk_4A6
	LDA	ppu_scroll_x_304
	STA	ppu_prev_scroll_x_unk_4A7
	LDA	ppu_scroll_y_305
	STA	ppu_prev_scroll_y_unk_4A8
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
	LDA	array_unk_3C5,X
	STA	byte_567
	LDA	array_unk_3BB,X
	STA	byte_568
	LDA	array_unk_3D9,X
	STA	byte_569
	LDA	array_unk_3CF,X
	STA	byte_56A

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
	LDA	array_unk_3C5,X
	STA	byte_56B
	LDA	array_unk_3BB,X
	STA	byte_56C
	LDA	array_unk_3D9,X
	STA	byte_56D
	LDA	array_unk_3CF,X
	STA	byte_56E

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
	LDA	array_unk_3C5,X
	STA	byte_56F
	LDA	array_unk_3BB,X
	STA	byte_570
	LDA	array_unk_3D9,X
	STA	byte_571
	LDA	array_unk_3CF,X
	STA	byte_572

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
	LDA	array_unk_3C5,X
	STA	byte_573
	LDA	array_unk_3BB,X
	STA	byte_574
	LDA	array_unk_3D9,X
	STA	byte_575
	LDA	array_unk_3CF,X
	STA	byte_576

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
	LDA	#$FF
	STA	byte_594
	JSR	exec_b12_c9_EAB6
	LDA	entry_idx_300
	STA	image_id_4A4
	LDA	ppu_unk_byte_302
	STA	image_offset_4A5
	LDA	ppu_unk_byte_303
	STA	ppu_prev_unk_4A6
	LDA	ppu_scroll_x_304
	STA	ppu_prev_scroll_x_unk_4A7
	LDA	ppu_scroll_y_305
	STA	ppu_prev_scroll_y_unk_4A8
	JSR	load_image_C6D2

loc_971B:
	
	JSR	sub_CCA0
	JSR	objects_func_D644
	JSR	objects_func_D52A
	RTS
; End of function sub_9542


; =============== S U B	R O U T	I N E =======================================


sub_9725:
	LDA	#0
	STA	byte_435
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
	LDA	#$FF
	STA	sprite_length_30F
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
	LDA	byte_313
	PHA
	JSR	sub_D9B9
	PLA
	STA	byte_313
	JSR	sub_98F2
	STX	tilemapTypeUnk_30B
	TXA
	PHA
	JSR	sub_8762
	PLA
	TAX
	LDA	sprite_length_30F
	CMP	#$FF
	BNE	loc_97B9
	JMP	loc_97D2
; ---------------------------------------------------------------------------

loc_97B9:
	LDA	byte_313
	PHA
	JSR	sub_D9B9
	PLA
	STA	byte_313
	TXA
	PHA
	JSR	sub_DDDA
	PLA
	TAX
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
	LDA	#0
	STA	sprite_length_30F
	RTS
; ---------------------------------------------------------------------------

loc_97E7:
	LDA	#$FF
	STA	byte_437
	RTS
; ---------------------------------------------------------------------------

loc_97ED:
	LDA	#0
	STA	sprite_length_30F
	LDA	#$FF
	STA	byte_435
	RTS
; End of function sub_9725


; =============== S U B	R O U T	I N E =======================================


sub_97F8:
	JSR	sub_C7C7
	LDA	byte_366
	CLC
	ADC	#$10
	STA	byte_366
	LDA	byte_367
	ADC	#0
	STA	byte_367
	LDA	byte_36A
	CLC
	ADC	#8
	STA	byte_36A
	LDA	byte_36B
	ADC	#0
	STA	byte_36B
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
	LDA	byte_366
	CLC
	ADC	#$10
	STA	byte_366
	LDA	byte_367
	ADC	#0
	STA	byte_367
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
	LDA	byte_36A
	CLC
	ADC	#$10
	STA	byte_36A
	LDA	byte_36B
	ADC	#0
	STA	byte_36B

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
	LDA	byte_366
	CLC
	ADC	#$10
	STA	byte_366
	LDA	byte_367
	ADC	#0
	STA	byte_367
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
	LDA	byte_36A
	CLC
	ADC	#$10
	STA	byte_36A
	LDA	byte_36B
	ADC	#0
	STA	byte_36B

locret_994E:
	RTS
; End of function sub_98F2


; =============== S U B	R O U T	I N E =======================================


sub_994F:
	; a_button_pressed_8FDC+20p
	LDA	#0
	STA	sprite_length_30F
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
	PLA
	TAX
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
	
	LDA	#0
	STA	byte_584
	JSR	sub_C7C7
	
	LDA	byte_366
	CLC
	ADC	#8
	STA	byte_366
	LDA	byte_367
	ADC	#0
	STA	byte_367
	JSR	sub_9824

	LDA	byte_36A
	STA	tilemapWidth_308
	LDA	byte_36B
	STA	tilemap_size_307

	LDA	byte_366
	STA	tilemapHeight_30A
	LDA	byte_367
	STA	ppu_unk_byte_309

	load_ptr off_9B32

	LDY	#0
	LDA	(ptr_0),Y
	STA	tilemapTypeUnk_30B
	LDA	ptr_0
	CLC
	ADC	#1
	STA	ptr_0
	LDA	ptr_1
	ADC	#0
	STA	ptr_1
	LDA	#0
	STA	inv_spr_dscr1_30C

loc_99EF:
	LDA	inv_spr_dscr1_30C
	ASL	A
	TAY
	LDA	(ptr_0),Y
	STA	data_2
	INY
	LDA	(ptr_0),Y
	STA	data_3
	LDY	#0
	LDA	(data_2),Y
	CMP	entry_idx_300
	BNE	loc_9A7F
	INY
	LDA	(data_2),Y
	STA	byte_36A
	INY
	LDA	(data_2),Y
	STA	byte_36B
	INY
	LDA	(data_2),Y
	STA	byte_366
	INY
	LDA	(data_2),Y
	STA	byte_367
	INY
	LDA	(data_2),Y
	STA	byte_36C
	INY
	LDA	(data_2),Y
	STA	byte_36D
	INY
	LDA	(data_2),Y
	STA	byte_368
	INY
	LDA	(data_2),Y
	STA	byte_369
	INY
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
	LDA	(data_2),Y
	STA	ptr_0
	INY
	LDA	(data_2),Y
	STA	ptr_1
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
	LDA	#$FF
	STA	byte_584
	JMP	locret_9AD8
; ---------------------------------------------------------------------------

loc_9AC3:
	
	LDA	tilemapHeight_30A
	CMP	byte_57E
	BNE	locret_9AD8
	LDA	ppu_unk_byte_309
	CMP	byte_581
	BNE	locret_9AD8
	LDA	#$FE 
	STA	byte_584

locret_9AD8:
	RTS
; End of function sub_999A


; =============== S U B	R O U T	I N E =======================================


show_hidden_copyright_9AD9:
	LDA	#$47 
	STA	text_idx_35C
	LDA	#2
	STA	char_type_id_35D
	LDA	#4
	STA	byte_364
	LDA	#$D
	STA	ppu_unk_byte_309
	LDA	#4
	STA	tilemap_size_307
	LDA	#$C
	STA	byte_35E
	LDA	#1
	STA	byte_35F
	LDA	#0
	STA	byte_362
	LDA	#0
	STA	byte_363
	LDA	#$A0 
	STA	sprite_secondByte_31B
	LDA	byte_360
	PHA
	LDA	byte_361
	PHA
	LDA	#0
	STA	byte_360
	LDA	#3
	STA	byte_361
	JSR	exec_b2_c4_C90E
	PLA
	STA	byte_361
	PLA
	STA	byte_360
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
	LDA	#0
	STA	tilemapWidth_308
	LDA	#0
	STA	byte_31A
; End of function sub_BD1F


; =============== S U B	R O U T	I N E =======================================


sub_BD29:
	LDA	tilemapWidth_308
	CLC
	ADC	byte_31A
	STA	tilemapWidth_308
	LDY	byte_31A

loc_BD36:
	LDA	#$F0 
	STA	byte_200,Y
	INY
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
	LDA	#4
	STA	inv_spr_dscr1_30C

loc_BD54:
	LDA	#0
	STA	has_ppu_data_to_upload_6F
	LDX	#0
	LDA	#1
	STA	ppu_data_70,X
	INX
	LDA	#$20 
	STA	ppu_data_70,X
	INX
	LDA	#$3F 
	STA	ppu_data_70,X
	INX
	LDA	#0
	STA	ppu_data_70,X
	INX
	LDA	byte_341
	CMP	#0
	BNE	loc_BD7A
	LDA	#1
	STA	inv_spr_dscr1_30C

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
	LDA	#1
	STA	has_ppu_data_to_upload_6F
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
	LDA	#4
	STA	inv_spr_dscr1_30C

loc_BE03:
	LDA	#0
	STA	has_ppu_data_to_upload_6F
	LDX	#0
	LDA	#1
	STA	ppu_data_70,X
	INX
	LDA	#$20 
	STA	ppu_data_70,X
	INX
	LDA	#$3F 
	STA	ppu_data_70,X
	INX
	LDA	#0
	STA	ppu_data_70,X
	INX
	LDA	byte_341
	CMP	#0
	BNE	loc_BE29
	LDA	#0
	STA	inv_spr_dscr1_30C

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
	LDA	#1
	STA	has_ppu_data_to_upload_6F
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
	LDA	byte_351
	STA	byte_352
	PLA
	TAX
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
	LDA	image_id_4A4
	STA	entry_idx_300
	LDA	image_offset_4A5
	STA	ppu_unk_byte_302
	LDA	ppu_prev_unk_4A6
	STA	ppu_unk_byte_303
	LDA	ppu_prev_scroll_x_unk_4A7
	STA	ppu_scroll_x_304
	LDA	ppu_prev_scroll_y_unk_4A8
	STA	ppu_scroll_y_305
	LDA	prev_sprite_type_4A9
	STA	sprite_type_306
	LDA	sprite_type_306
	BNE	loc_C71B
	LDA	entry_idx_300
	STA	byte_301

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
	LDA	byte_9533,X
	STA	objMapIdx_316
	LDA	sprite_type_306
	BEQ	sub_C77D
	RTS
; End of function load_image_C6D2


; =============== S U B	R O U T	I N E =======================================


sub_C77D:
	
	LDA	#0
	STA	byte_317
	LDA	byte_313
	CMP	#2
	BNE	loc_C78E
	LDA	#$40 
	STA	byte_317

loc_C78E:
	LDA	#$10
	STA	byte_31A
	LDA	#0
	STA	sprite_secondByte_31B
	STA	sprPalIdx_319
	LDA	#0
	STA	objectIdx_318
	JSR	sub_C7C7
	LDA	byte_317
	PHA
	JSR	loadt_obj_tilemaps_C84D
	PLA
	STA	byte_317
	LDA	#$E8 
	STA	byte_31A
	LDA	#0
	STA	sprite_secondByte_31B
	STA	sprPalIdx_319
	LDA	#0
	STA	objectIdx_318
	JSR	sub_C7C7
	JSR	loadt_obj_tilemaps_C84D
	RTS
; End of function sub_C77D


; =============== S U B	R O U T	I N E =======================================


sub_C7C7:
	
	LDA	ppu_scroll_x_304
	STA	byte_36A
	LDA	ppu_unk_byte_302
	STA	byte_36B
	LDA	byte_36A
	CLC
	ADC	byte_4AD
	STA	byte_36A
	LDA	byte_36B
	ADC	#0
	STA	byte_36B
	LDA	ppu_scroll_y_305
	STA	byte_368
	LDA	ppu_unk_byte_303
	STA	byte_369
	TYA
	PHA
	LDY	byte_369
	LDA	#0
	STA	byte_369

loc_C7FB:
	CPY	#0
	BEQ	loc_C814
	LDA	byte_368
	CLC
	ADC	#$F0 
	STA	byte_368
	LDA	byte_369
	ADC	#0
	STA	byte_369
	DEY
	JMP	loc_C7FB
; ---------------------------------------------------------------------------

loc_C814:
	PLA
	TAY
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
	LDA	#0
	STA	bank_command_346
	LDA	#sprites_1
	STA	bank_to_344
	LDA	#0
	STA	bank_from_343
	JSR	bank_switch_8000
	RTS
; End of function load_tiles_to_ppu_C83A


; =============== S U B	R O U T	I N E =======================================


loadt_obj_tilemaps_C84D:
	LDA	#1
	STA	bank_command_346
	LDA	#sprites_1
	STA	bank_to_344
	LDA	#0
	STA	bank_from_343
	JSR	bank_switch_8000
	RTS
; End of function loadt_obj_tilemaps_C84D


; =============== S U B	R O U T	I N E =======================================


exec_b1_c2_C860:
	LDA	#2
	STA	bank_command_346
	LDA	#sprites_1
	STA	bank_to_344
	LDA	#0
	STA	bank_from_343
	JSR	bank_switch_8000
	RTS
; End of function exec_b1_c2_C860


; =============== S U B	R O U T	I N E =======================================


sub_C873:
	LDA	entry_idx_300
	PHA

	load_ptr unknown_entries_C558

	LDA	entry_idx_300
	STA	data_2
	LDA	#0
	STA	data_3
	ASL	data_2
	ROL	data_3
	LDA	ptr_0
	CLC
	ADC	data_2
	STA	ptr_0
	LDA	ptr_1
	ADC	data_3
	STA	ptr_1
	LDY	#0
	LDA	(ptr_0),Y
	STA	data_2
	INY
	LDA	(ptr_0),Y
	STA	data_3
	LDY	#0
	LDA	(data_2),Y
	STA	entry_idx_300

exec_b2_c6_C8AB:
	LDA	#6
	STA	bank_command_346
	LDA	#text_2
	STA	bank_to_344
	LDA	#0
	STA	bank_from_343
	JSR	bank_switch_8000

loc_C8BD:
	PLA
	STA	entry_idx_300
	RTS
; End of function sub_C873


; =============== S U B	R O U T	I N E =======================================


exec_b2_c0_C8C2:
	LDA	#0
	STA	bank_command_346
	LDA	#text_2
	STA	bank_to_344
	LDA	#0
	STA	bank_from_343
	JSR	bank_switch_8000
	RTS
; End of function exec_b2_c0_C8C2


; =============== S U B	R O U T	I N E =======================================


exec_b2_c1_C8D5:
	LDA	#1
	STA	bank_command_346
	LDA	#text_2
	STA	bank_to_344
	LDA	#0
	STA	bank_from_343
	JSR	bank_switch_8000
	RTS
; End of function exec_b2_c1_C8D5


; =============== S U B	R O U T	I N E =======================================


exec_b2_c2_text_cuts_C8E8:
	
	LDA	#2
	STA	bank_command_346
	LDA	#text_2
	STA	bank_to_344
	LDA	#0
	STA	bank_from_343
	JSR	bank_switch_8000
	RTS
; End of function exec_b2_c2_text_cuts_C8E8


; =============== S U B	R O U T	I N E =======================================


exec_b2_c3_C8FB:
	LDA	#3
	STA	bank_command_346
	LDA	#text_2
	STA	bank_to_344
	LDA	#0
	STA	bank_from_343
	JSR	bank_switch_8000
	RTS
; End of function exec_b2_c3_C8FB


; =============== S U B	R O U T	I N E =======================================


exec_b2_c4_C90E:
	; show_hidden_copyright_9AD9+44p ...
	LDA	#4
	STA	bank_command_346
	LDA	#text_2
	STA	bank_to_344
	LDA	#0
	STA	bank_from_343
	JSR	bank_switch_8000
	RTS
; End of function exec_b2_c4_C90E


; =============== S U B	R O U T	I N E =======================================


sub_C921:
	LDA	entry_idx_300
	PHA

	load_ptr unknown_entries_C558

	LDA	entry_idx_300
	STA	data_2
	LDA	#0
	STA	data_3
	ASL	data_2
	ROL	data_3
	LDA	ptr_0
	CLC
	ADC	data_2
	STA	ptr_0
	LDA	ptr_1
	ADC	data_3
	STA	ptr_1
	LDY	#0
	LDA	(ptr_0),Y
	STA	data_2
	INY
	LDA	(ptr_0),Y
	STA	data_3
	LDY	#0
	LDA	(data_2),Y
	STA	entry_idx_300
	LDX	#0
	LDA	byte_BD1C,X
	STA	tilemapTypeUnk_30B
	INX

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
	LDA	#0
	STA	bank_command_346
	LDA	#0
	STA	bank_from_343
	JSR	bank_switch_8000

loc_C985:
	PLA
	STA	entry_idx_300
	RTS
; End of function sub_C921


; =============== S U B	R O U T	I N E =======================================


sub_C98A:
	LDA	tilemapTypeUnk_30B
	PHA
	LDX	#0
	LDA	byte_BD10,X
	STA	tilemapTypeUnk_30B
	INX

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
	LDA	#0
	STA	bank_command_346
	LDA	#0
	STA	bank_from_343

loc_C9B7:
	PLA
	STA	tilemapTypeUnk_30B
	JSR	bank_switch_8000
	RTS
; End of function sub_C98A


; =============== S U B	R O U T	I N E =======================================


ppu_upload_data_1000_C9BF:

	load_ptr _PPU_PAT_TBL_1

; End of function ppu_upload_data_1000_C9BF


; =============== S U B	R O U T	I N E =======================================


ppu_upload_data_C9C7:
	LDY	#0
	LDA	(data_2),Y
	STA	tilemapWidth_308

	add_to_data 2

	LDX	#0

loc_C9DD:
	LDA	ptr_1
	STA	_PPU_ADDR
	LDA	ptr_0
	STA	_PPU_ADDR
	LDY	#0

loc_C9E9:
	LDA	(data_2),Y
	STA	_PPU_DATA
	INY
	CPY	#$10
	BCC	loc_C9E9
	LDA	ptr_0
	CLC
	ADC	#$10
	STA	ptr_0
	LDA	ptr_1
	ADC	#0
	STA	ptr_1
	
	add_to_data $10

	INX
	CPX	tilemapWidth_308
	BCC	loc_C9DD
	RTS
; End of function ppu_upload_data_C9C7


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
	PLA
	TAY
	RTS
; End of function sub_CA14


; =============== S U B	R O U T	I N E =======================================


exec_b4_c0_CA4B:
	LDA	#0
	STA	bank_command_346
	LDA	#items_spr_4
	STA	bank_to_344
	LDA	#0
	STA	bank_from_343
	JSR	bank_switch_8000
	RTS
; End of function exec_b4_c0_CA4B


; =============== S U B	R O U T	I N E =======================================


exec_b4_c1_CA5E:
	LDA	#1
	STA	bank_command_346
	LDA	#items_spr_4
	STA	bank_to_344
	LDA	#0
	STA	bank_from_343
	JSR	bank_switch_8000
	RTS
; End of function exec_b4_c1_CA5E


; =============== S U B	R O U T	I N E =======================================


exec_b4_c2_CA71:
	LDA	#2
	STA	bank_command_346
	LDA	#items_spr_4
	STA	bank_to_344
	LDA	#0
	STA	bank_from_343
	JSR	bank_switch_8000
	RTS
; End of function exec_b4_c2_CA71


; =============== S U B	R O U T	I N E =======================================


cache_prev_data_CA84:
	LDA	entry_idx_300
	STA	image_id_4A4
	LDA	ppu_unk_byte_302
	STA	image_offset_4A5
	LDA	ppu_unk_byte_303
	STA	ppu_prev_unk_4A6
	LDA	ppu_scroll_x_304
	STA	ppu_prev_scroll_x_unk_4A7
	LDA	ppu_scroll_y_305
	STA	ppu_prev_scroll_y_unk_4A8
	LDA	sprite_type_306
	STA	prev_sprite_type_4A9
	RTS
; End of function cache_prev_data_CA84


; =============== S U B	R O U T	I N E =======================================


sub_CAA9:
	; a_button_pressed_8FDC+C0p ...
	LDA	#$18
	STA	byte_357
	LDA	#0
	STA	byte_358
	LDA	#$1C
	STA	byte_359
	LDA	#3
	STA	byte_360
	LDA	#0
	STA	byte_361
	LDA	#$C0 
	STA	text_unk_35B
	JSR	sub_F65C
	LDA	#$BB 
	STA	text_idx_35C
	LDA	#0
	STA	char_type_id_35D
	LDA	#$19
	STA	ppu_unk_byte_309
	LDA	#4
	STA	tilemap_size_307
	LDA	#$C
	STA	byte_35E
	LDA	#1
	STA	byte_35F
	LDA	#0
	STA	byte_362
	LDA	#0
	STA	byte_363
	LDA	#$D0 
	STA	sprite_secondByte_31B
	LDA	text_unk_35B
	CLC
	ADC	#5
	STA	byte_310
	LDA	#7
	STA	byte_364
	JSR	exec_b2_c4_C90E
	LDA	#0
	STA	byte_364
	LDA	#0
	STA	byte_372

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
	LDA	#$2B 
	STA	tilemapTypeUnk_30B
	JSR	exec_b12_com48_ECA6
	JMP	loc_CB12
; ---------------------------------------------------------------------------

a_pressed_CB3D:
	LDA	#6
	STA	tilemapTypeUnk_30B
	JSR	exec_b12_com48_ECA6
	LDA	#$18
	STA	byte_357
	LDA	#0
	STA	byte_358
	LDA	#$1C
	STA	byte_359
	JSR	sub_F767
	RTS
; End of function sub_CAA9


; =============== S U B	R O U T	I N E =======================================


sub_CB58:
	LDA	#0
	STA	byte_31A
	LDA	#0
	STA	sprite_secondByte_31B
	LDA	#0
	STA	sprPalIdx_319
	LDA	#0
	STA	objectIdx_318
	LDA	#0
	STA	byte_317
	LDA	#$12
	STA	objMapIdx_316
	LDA	byte_4AD
	PHA
	LDA	byte_4AE
	PHA
	LDA	byte_372
	ASL	A
	TAX
	LDA	off_CBBE,X
	STA	byte_4AD
	INX
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
	LDA	#0
	STA	count_unk_465
	JMP	loc_CBAF
; ---------------------------------------------------------------------------

loc_CBA7:
	LDA	byte_4AD
	EOR	#1
	STA	byte_4AD

loc_CBAF:
	JSR	sub_C7C7
	PLA
	STA	byte_4AE
	PLA
	STA	byte_4AD
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
	LDA	#$AA 
	STA	byte_4,X
	INX
	CPX	#$48 
	BCC	loc_CBD5
	JSR	ppu_unk_func_F09D

locret_CBE1:
	RTS
; End of function sub_CBC2


; =============== S U B	R O U T	I N E =======================================


sub_CBE2:
	LDA	bank_from_343
	PHA

exec_c12_b29_CBE6:
	LDA	#$29 
	STA	bank_command_346
	LDA	#banks_12
	STA	bank_to_344
	LDA	#0
	STA	bank_from_343
	JSR	bank_switch_8000

loc_CBF8:
	PLA
	STA	bank_from_343
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
	LDA	#$55 
	STA	byte_4,X
	INX
	INY
	CPY	#8
	BCC	loc_CC22

loc_CC2C:
	LDA	#$A5 
	STA	byte_4,X
	INX
	INY
	CPY	#$10
	BCC	loc_CC2C
	JMP	loc_CC51
; ---------------------------------------------------------------------------

loc_CC39:
	LDY	#0
	LDX	#$20 

loc_CC3D:
	LDA	#$AA 
	STA	byte_4,X
	INX
	INY
	CPY	#8
	BCC	loc_CC3D

loc_CC47:
	LDA	#$5A 
	STA	byte_4,X
	INX
	INY
	CPY	#$10
	BCC	loc_CC47

loc_CC51:
	LDA	byte_372
	PHA
	JSR	ppu_unk_func_F09D
	PLA
	STA	byte_372
	RTS
; End of function sub_CC17


; =============== S U B	R O U T	I N E =======================================


ppu_upload_unk_data_CC5D:
	
	LDA	count_unk_465
	CMP	#5
	BCC	locret_CC99
	LDA	#0
	STA	count_unk_465
	LDX	#0
	LDA	#1
	STA	ppu_data_70,X
	INX
	LDA	#1
	STA	ppu_data_70,X
	INX
	LDA	#$3F 
	STA	ppu_data_70,X
	INX
	LDA	#7
	STA	ppu_data_70,X
	INX
	LDY	byte_421
	LDA	unk_CC9A,Y
	STA	ppu_data_70,X
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
	LDA	byte_366
	CLC
	ADC	#8
	STA	byte_366
	LDA	byte_367
	ADC	#0
	STA	byte_367
	LDX	#0
	LDA	byte_36A
	STA	array_unk_446,X
	STA	array_unk_452,X
	INX
	LDA	byte_36B
	STA	array_unk_446,X
	STA	array_unk_452,X
	INX
	LDA	byte_366
	STA	array_unk_446,X
	STA	array_unk_452,X
	INX
	LDA	byte_367
	STA	array_unk_446,X
	STA	array_unk_452,X
	INX
	LDA	#0
	STA	obj_idx_unk_462
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
	PLA
	TAY
	INC	obj_idx_unk_462
	LDA	array_unk_3C5,Y
	STA	array_unk_446,X
	STA	array_unk_452,X
	INX
	LDA	array_unk_3BB,Y
	STA	array_unk_446,X
	STA	array_unk_452,X
	INX
	LDA	array_unk_3D9,Y
	STA	array_unk_446,X
	STA	array_unk_452,X
	INX
	LDA	array_unk_3CF,Y
	STA	array_unk_446,X
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
	ASL	A
	ASL	A
	TAX
	LDA	array_unk_446,X
	STA	byte_36A
	LDA	unk_447,X
	STA	byte_36B
	LDA	unk_448,X
	STA	byte_366
	LDA	unk_449,X
	STA	byte_367
	LDA	unk_456,X
	STA	byte_36C
	LDA	unk_457,X
	STA	byte_36D
	LDA	unk_458,X
	STA	byte_368
	LDA	unk_459,X
	STA	byte_369
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
	LDA	#0
	STA	sprite_length_30F
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
	LDA	#1
	STA	sprite_length_30F

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
	LDA	#2
	STA	unk_460,Y
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
	LDA	#3
	STA	unk_460,Y
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
	LDA	#0
	STA	sprite_length_30F
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
	LDA	#1
	STA	sprite_length_30F

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
	LDA	#0
	STA	unk_460,Y
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
	LDA	#1
	STA	unk_460,Y
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
	LDA	byte_4AF
	STA	array_unk_3A7,Y
	LDA	byte_4AA
	STA	array_unk_39D,Y
	LDA	array_unk_452,X
	STA	array_unk_3C5,Y
	INX
	LDA	array_unk_452,X
	STA	array_unk_3BB,Y
	INX
	LDA	array_unk_452,X
	STA	array_unk_3D9,Y
	INX
	LDA	array_unk_452,X
	STA	array_unk_3CF,Y
	INX
	PLA
	TAY
	INY
	CPY	obj_idx_unk_462
	BCC	loc_CEDC
	RTS
; End of function objects_func_CED2


; =============== S U B	R O U T	I N E =======================================


sub_CF13:
	; a_button_pressed_8FDC+AEp ...
	LDA	text_idx_35C
	PHA
	LDA	char_type_id_35D
	PHA
	TXA
	PHA
	JSR	sub_9132
	PLA
	TAX
	PLA
	STA	char_type_id_35D
	PLA
	STA	text_idx_35C
	LDA	text_idx_35C
	CLC
	ADC	#1
	STA	text_idx_35C
	LDA	char_type_id_35D
	ADC	#0
	STA	char_type_id_35D
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
	LDA	tilemapData_4C,X
	STA	tilemapTypeUnk_30B
	LDA	roomUnk1_4D,X
	STA	inv_spr_dscr1_30C
	LDA	roomUnk2_4E,X
	STA	byte_313
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
	LDA	byte_313
	STA	array_unk_3A7,X
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
	PLA
	TAX
	TYA
	STA	array_unk_39D,X
	JSR	objects_func_D52A
	JSR	wait_for_frame_rendered_FCA0
	PLA
	TAY
	PLA
	TAX
	INY
	CPY	#8
	BEQ	loc_CFEE
	JMP	loc_CF68
; ---------------------------------------------------------------------------

loc_CFEE:
	PLA
	TAY
	PLA
	TAX

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
	LDA	#0
	STA	inv_spr_dscr1_30C
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
	LDA	tilemapTypeUnk_30B
	PHA
	TXA
	ASL	A
	ASL	A
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
	PLA
	STA	tilemapTypeUnk_30B
	RTS
; End of function sub_D01F

; ---------------------------------------------------------------------------
byte_D041:.BYTE  $B, $B, $D, $D, $A,  6,	6,  8,	8,  5,	1,  1,	2,  2,	0,  1
	
	.BYTE	1,  2,	2,  0

; =============== S U B	R O U T	I N E =======================================


sub_D055:
	
	LDA	tilemapTypeUnk_30B
	PHA
	LDA	byte_313
	PHA
	LDA	#8
	STA	byte_315
	LDA	#0
	STA	byte_314
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
	PLA
	STA	byte_313
	PLA
	STA	tilemapTypeUnk_30B
	JSR	wait_for_frame_rendered_FCA0
	DEC	tilemapTypeUnk_30B
	LDA	tilemapTypeUnk_30B
	CMP	#0
	BNE	sub_D055
	RTS
; End of function sub_D055


; =============== S U B	R O U T	I N E =======================================


sub_D0AD:
	LDA	tilemapTypeUnk_30B
	PHA
	JSR	sub_C7C7
	LDA	byte_366
	CLC
	ADC	#8
	STA	byte_366
	LDA	byte_367
	ADC	#0
	STA	byte_367
	PLA
	TAX

loc_D0C7:
	LDA	array_unk_3C5,X
	STA	byte_36C
	LDA	array_unk_3BB,X
	STA	byte_36D
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
	LDA	#3
	STA	array_unk_3A7,X
	INY
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
	LDA	#2
	STA	array_unk_3A7,X
	INY
	JSR	sub_D1EE
	CPY	#8
	BCC	loc_D139
	JMP	loc_D0C7
; ---------------------------------------------------------------------------

loc_D15A:
	LDA	array_unk_3D9,X
	STA	byte_368
	LDA	array_unk_3CF,X
	STA	byte_369
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
	LDA	#1
	STA	array_unk_3A7,X
	INY
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
	LDA	#0
	STA	array_unk_3A7,X
	INY
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
	LDA	byte_36A
	PHA
	LDA	byte_36B
	PHA
	LDA	byte_366
	PHA
	LDA	byte_367
	PHA
	TXA
	PHA
	LDA	array_unk_3A7,X
	TAX
	JSR	sub_D01F
	PLA
	TAX
	TYA
	STA	array_unk_39D,X
	JSR	objects_func_D52A
	PLA
	STA	byte_367
	PLA
	STA	byte_366
	PLA
	STA	byte_36B
	PLA
	STA	byte_36A
	PLA
	TAY
	PLA
	TAX
	JSR	wait_for_frame_rendered_FCA0
	RTS
; End of function sub_D1EE


; =============== S U B	R O U T	I N E =======================================


sub_D22C:
	LDA	#$C2 
	STA	text_idx_35C
	LDA	#0
	STA	char_type_id_35D
	LDX	#$B
	JSR	sub_CF13
	LDA	#1
	STA	tilemapData_4C
	LDA	#0
	STA	roomUnk1_4D
	LDA	#2
	STA	roomUnk2_4E
	LDA	#0
	STA	tilemap_line_idx_4F
	JSR	sub_CF42
	LDA	#1
	STA	tilemapData_4C
	LDA	#0
	STA	roomUnk1_4D
	LDA	#6
	STA	roomUnk2_4E
	LDA	#2
	STA	tilemap_line_idx_4F
	JSR	sub_CF42
	LDA	#0
	STA	cur_obj_idx_unk_43A
	JSR	sub_DBE2
	LDA	#0
	STA	byte_5A3
	LDA	#1
	STA	byte_5A5
	LDA	#$16
	STA	byte_550
	LDA	#1
	STA	byte_54E
	LDA	#6
	STA	tilemapTypeUnk_30B
	LDA	#0
	STA	byte_313
	JSR	sub_D055
	LDA	#8
	STA	tilemapTypeUnk_30B
	LDA	#2
	STA	byte_313
	JSR	sub_D055
	LDA	#3
	STA	tilemapTypeUnk_30B
	LDA	#0
	STA	byte_313
	JSR	sub_D055
	LDA	#3
	STA	tilemapTypeUnk_30B
	LDA	#2
	STA	byte_313
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
	LDA	#1
	STA	tilemapTypeUnk_30B
	LDA	#2
	STA	byte_313
	JSR	sub_D055
	JSR	sub_C7C7
	PLA
	TAX
	LDA	byte_366
	CLC
	ADC	#8
	STA	byte_366
	LDA	byte_367
	ADC	#0
	STA	byte_367
	LDA	array_unk_3C5,X
	CLC
	ADC	#$10
	STA	byte_36C
	LDA	array_unk_3BB,X
	ADC	#0
	STA	byte_36D
	LDA	array_unk_3D9,X
	STA	byte_368
	LDA	array_unk_3CF,X
	STA	byte_369
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
	LDA	#0
	STA	byte_313
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
	LDA	#1
	STA	byte_313

loc_D33E:
	JSR	sub_D055
	LDA	#2
	STA	byte_313
	JSR	sub_91B6
	LDA	#$D0 
	STA	text_idx_35C
	LDA	#0
	STA	char_type_id_35D
	LDX	#5
	JSR	sub_CF13

locret_D358:
	RTS
; End of function sub_D2B2


; =============== S U B	R O U T	I N E =======================================


sub_D359:
	LDA	#5
	STA	tilemapTypeUnk_30B
	LDA	#3
	STA	byte_313
	JSR	sub_D055
	LDA	#8
	STA	tilemapTypeUnk_30B
	LDA	#1
	STA	byte_313
	JSR	sub_D055
	LDA	#8
	STA	tilemapTypeUnk_30B
	LDA	#3
	STA	byte_313
	JSR	sub_D055
	LDA	#$DB 
	STA	text_idx_35C
	LDA	#0
	STA	char_type_id_35D
	LDX	#4
	JSR	sub_CF13
	LDA	#0
	STA	byte_551
	LDA	#4
	STA	tilemapTypeUnk_30B
	LDA	#0
	STA	byte_313
	JSR	sub_D055
	LDA	#1
	STA	byte_313
	JSR	sub_91B6
	LDA	#$DB 
	STA	text_idx_35C
	LDA	#0
	STA	char_type_id_35D
	LDX	#8
	JSR	sub_CF13
	LDA	#1
	STA	tilemapData_4C
	LDA	#2
	STA	roomUnk1_4D
	LDA	#4
	STA	roomUnk2_4E
	LDA	#2
	STA	tilemap_line_idx_4F
	JSR	sub_CF42
	LDA	#1
	STA	tilemapData_4C
	LDA	#2
	STA	roomUnk1_4D
	LDA	#7
	STA	roomUnk2_4E
	LDA	#0
	STA	tilemap_line_idx_4F
	JSR	sub_CF42
	LDA	#1
	STA	tilemapData_4C
	LDA	#2
	STA	roomUnk1_4D
	LDA	#$A
	STA	roomUnk2_4E
	LDA	#2
	STA	tilemap_line_idx_4F
	JSR	sub_CF42
	LDA	#2
	STA	cur_obj_idx_unk_43A
	JSR	sub_DBE2
	LDA	#0
	STA	byte_5A4
	LDA	#0
	STA	byte_550
	LDA	#$FF
	STA	byte_598
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
	LDA	#1
	STA	objIdxArray_375,X

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
	LDA	#$28 
	STA	byte_31A
	LDA	#$6F 
	STA	sprite_secondByte_31B
	LDX	#0

loc_D454:
	TXA
	PHA
	LDA	objIdxArray_375,X
	STA	objectIdx_318
	LDA	array_unk_39D,X
	STA	objMapIdx_316
	LDA	byte_31A
	STA	unk_40B,X
	TXA
	PHA
	JSR	exec_b1_c2_C860
	PLA
	TAX
	LDA	tilemapFrameCount_30D
	STA	unk_389,X
	LDA	sprite_length_30F
	STA	unk_401,X
	LDA	tilemapWidth_308
	STA	unk_3E3,X
	LDA	tilemapHeight_30A
	STA	unk_3ED,X
	ASL	tilemapWidth_308
	ASL	tilemapWidth_308
	LDY	tilemapHeight_30A

loc_D490:
	CPY	#0
	BEQ	loc_D4A2
	LDA	byte_31A
	CLC
	ADC	tilemapWidth_308
	STA	byte_31A
	DEY
	JMP	loc_D490
; ---------------------------------------------------------------------------

loc_D4A2:
	PLA
	TAX
	INX
	CPX	objArraySize_373
	BEQ	loc_D4AD
	JMP	loc_D454
; ---------------------------------------------------------------------------

loc_D4AD:
	LDY	#0
	LDX	#0
	LDA	#0
	STA	tilemapTypeUnk_30B
	LDA	objIdxArray_375,Y
	STA	unk_56,X
	LDA	unk_401,Y
	STA	tilemapData_4C,X
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
	LDA	objIdxArray_375,Y
	STA	unk_56,X
	LDA	unk_401,Y
	STA	tilemapData_4C,X
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
	LDA	#0
	STA	sprite_length_30F
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
	LDA	objIdxArray_375,Y
	STA	objectIdx_318
	LDA	array_unk_39D,Y
	STA	objMapIdx_316
	LDA	unk_40B,Y
	STA	byte_31A
	LDA	unk_401,Y
	STA	sprite_secondByte_31B
	LDA	objPalIdxArray_3F7,Y
	STA	byte_317
	LDA	array_unk_3C5,Y
	STA	byte_36A
	LDA	array_unk_3BB,Y
	STA	byte_36B
	LDA	array_unk_3D9,Y
	STA	byte_366
	LDA	array_unk_3CF,Y
	STA	byte_367
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
	LDA	#0
	STA	unk_37F,Y

loc_D629:
	; objects_func_D52A+89j ...
	JSR	loadt_obj_tilemaps_C84D

loc_D62C:
	; objects_func_D52A+7Dj
	PLA
	TAY
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
	LDA	#0
	STA	count_unk_464

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
	LDA	#0
	STA	inv_spr_dscr1_30C

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
	LDA	#4
	STA	byte_352
	JSR	sub_BEB6
	LDA	byte_352
	STA	array_unk_3A7,X

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
	LDA	byte_313
	PHA
	TXA
	PHA
	JSR	sub_D9B9
	JSR	sub_D9E4
	JSR	sub_DDDA
	PLA
	TAX
	PLA
	STA	byte_313
	LDA	sprite_length_30F
	CMP	#$FF
	BNE	loc_D75D
	LDA	#4
	STA	byte_352
	JSR	sub_BEB6
	LDA	byte_352
	STA	array_unk_3A7,X
	JMP	loc_D811
; ---------------------------------------------------------------------------

loc_D75D:
	LDA	byte_313
	PHA
	TXA
	PHA
	JSR	sub_D9B9
	STX	tilemapTypeUnk_30B
	JSR	sub_D874
	PLA
	TAX
	PLA
	STA	byte_313
	LDA	sprite_length_30F
	CMP	#$FF
	BNE	loc_D78C
	LDA	#4
	STA	byte_352
	JSR	sub_BEB6
	LDA	byte_352
	LDA	array_unk_3A7,X
	EOR	#1
	STA	array_unk_3A7,X

loc_D78C:
	JSR	sub_DADA
	LDA	byte_313
	PHA
	TXA
	PHA
	JSR	sub_D9B9
	JSR	sub_DACD
	PLA
	TAX
	PLA
	STA	byte_313
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
	LDA	#0
	STA	count_unk_463

loc_D82B:
	LDA	count_unk_465
	CMP	#$A
	BCC	loc_D837
	LDA	#0
	STA	count_unk_465

loc_D837:
	LDA	count_unk_466
	CMP	#$A
	BCC	loc_D843
	LDA	#0
	STA	count_unk_466

loc_D843:
	LDA	count_unk_467
	CMP	#5
	BCC	loc_D84F
	LDA	#0
	STA	count_unk_467

loc_D84F:
	LDA	count_unk_468
	CMP	#3
	BCC	loc_D85B
	LDA	#0
	STA	count_unk_468

loc_D85B:
	LDA	count_unk_469
	CMP	#1
	BCC	loc_D867
	LDA	#0
	STA	count_unk_469

loc_D867:
	LDA	count_unk_46A
	CMP	#1
	BCC	locret_D873
	LDA	#0
	STA	count_unk_46A

locret_D873:
	RTS
; End of function objects_func_D644


; =============== S U B	R O U T	I N E =======================================


sub_D874:
	LDA	#0
	STA	sprite_length_30F
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
	
	LDA	#0
	STA	sprite_length_30F
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
	LDA	array_unk_3C5,X
	STA	byte_36C
	LDA	array_unk_3BB,X
	STA	byte_36D
	LDA	array_unk_3D9,X
	STA	byte_368
	LDA	array_unk_3CF,X
	STA	byte_369
	LDA	unk_3E3,X
	STA	tilemap_size_307
	LDA	unk_3ED,X
	STA	ppu_unk_byte_309
	RTS
; End of function sub_D8D8


; =============== S U B	R O U T	I N E =======================================


sub_D8FD:
	LDA	tilemap_size_307
	ASL	A
	ASL	A
	ASL	A
	CLC
	ADC	byte_36C
	STA	byte_36C
	LDA	byte_36D
	ADC	#0
	STA	byte_36D
	RTS
; End of function sub_D8FD


; =============== S U B	R O U T	I N E =======================================


sub_D913:
	LDA	ppu_unk_byte_309
	ASL	A
	ASL	A
	ASL	A
	CLC
	ADC	byte_368
	STA	byte_368
	LDA	byte_369
	ADC	#0
	STA	byte_369
	RTS
; End of function sub_D913


; =============== S U B	R O U T	I N E =======================================


sub_D929:
	LDA	tilemapWidth_308
	PHA
	ASL	A
	ASL	A
	ASL	A
	STA	tilemapWidth_308
	LDA	byte_36C
	SEC
	SBC	tilemapWidth_308
	STA	byte_36C
	LDA	byte_36D
	SBC	#0
	STA	byte_36D
	PLA
	STA	tilemapWidth_308
	RTS
; End of function sub_D929


; =============== S U B	R O U T	I N E =======================================


sub_D94A:
	LDA	tilemapHeight_30A
	PHA
	ASL	A
	ASL	A
	ASL	A
	STA	tilemapHeight_30A
	LDA	byte_368
	SEC
	SBC	tilemapHeight_30A
	STA	byte_368
	LDA	byte_369
	SBC	#0
	STA	byte_369
	PLA
	STA	tilemapHeight_30A
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
	LDA	#$FF
	STA	sprite_length_30F
	RTS
; ---------------------------------------------------------------------------

loc_D9B3:
	LDA	#0
	STA	sprite_length_30F
	RTS
; End of function sub_D96B


; =============== S U B	R O U T	I N E =======================================


sub_D9B9:
	LDA	array_unk_3A7,X
	STA	byte_313
	LDA	unk_3E3,X
	STA	tilemapWidth_308
	LDA	unk_3ED,X
	STA	tilemapHeight_30A
	LDA	array_unk_3C5,X
	STA	byte_36A
	LDA	array_unk_3BB,X
	STA	byte_36B
	LDA	array_unk_3D9,X
	STA	byte_366
	LDA	array_unk_3CF,X
	STA	byte_367
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
	LDA	byte_36A
	CLC
	ADC	#$10
	STA	byte_36A
	LDA	byte_36B
	ADC	#0
	STA	byte_36B

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
	LDA	byte_366
	CLC
	ADC	#$10
	STA	byte_366
	LDA	byte_367
	ADC	#0
	STA	byte_367

locret_DA32:
	RTS
; End of function sub_D9E4


; =============== S U B	R O U T	I N E =======================================


sub_DA33:
	LDA	objArraySize_373
	BNE	loc_DA3E
	LDA	#0
	STA	sprite_length_30F
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
	ASL	A
	ASL	A
	ASL	A
	CLC
	ADC	byte_368
	STA	byte_368
	LDA	byte_369
	ADC	#0
	STA	byte_369
	LDA	#2
	STA	ppu_unk_byte_309

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
	LDA	#$FF
	STA	sprite_length_30F
	RTS
; ---------------------------------------------------------------------------

loc_DABE:
	INX
	CPX	objArraySize_373
	BEQ	loc_DAC7
	JMP	loc_DA40
; ---------------------------------------------------------------------------

loc_DAC7:
	LDA	#0
	STA	sprite_length_30F
	RTS
; End of function sub_DA33


; =============== S U B	R O U T	I N E =======================================


sub_DACD:
	JSR	sub_C7C7
	JSR	sub_D894
	LDA	sprite_length_30F
	STA	byte_439
	RTS
; End of function sub_DACD


; =============== S U B	R O U T	I N E =======================================


sub_DADA:
	JSR	sub_C7C7
	LDA	#0
	STA	sprite_length_30F
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
	LDA	#0
	STA	sprite_length_30F
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
	LDA	#0
	STA	array_unk_3A7,X
	JMP	loc_DBDC
; ---------------------------------------------------------------------------

loc_DBBB:
	LDA	#1
	STA	array_unk_3A7,X
	JMP	loc_DBDC
; ---------------------------------------------------------------------------

loc_DBC3:
	LDA	sprite_length_30F
	AND	#$F
	STA	sprite_length_30F
	CMP	#3
	BEQ	loc_DBD7
	LDA	#2
	STA	array_unk_3A7,X
	JMP	loc_DBDC
; ---------------------------------------------------------------------------

loc_DBD7:
	LDA	#3
	STA	array_unk_3A7,X

loc_DBDC:
	LDA	#$FF
	STA	sprite_length_30F
	RTS
; End of function sub_DADA


; =============== S U B	R O U T	I N E =======================================


sub_DBE2:
	
	LDX	cur_obj_idx_unk_43A
	LDA	#1
	STA	objCreatedArray_393,X
	LDA	#0
	STA	byte_439
	LDX	cur_obj_idx_unk_43A
	LDA	unk_40B,X
	STA	byte_31A
	LDA	unk_3E3,X
	STA	tilemapWidth_308
	LDA	unk_3ED,X
	STA	tilemapHeight_30A
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
	ASL	A
	ASL	A
	STA	tilemapWidth_308
	JSR	sub_BD29
	RTS
; End of function sub_DBE2


; =============== S U B	R O U T	I N E =======================================


sub_DC1C:
	
	LDX	cur_obj_idx_unk_43A
	LDA	#0
	STA	objCreatedArray_393,X
	RTS
; End of function sub_DC1C


; =============== S U B	R O U T	I N E =======================================


sub_DC25:
	LDA	array_unk_39D,X
	CMP	#5
	BCC	loc_DC31
	LDA	#$FF
	STA	array_unk_39D,X

loc_DC31:
	INC	array_unk_39D,X
	LDA	obj_array_unk_415,X
	CMP	#$3C 
	BCC	locret_DC40
	LDA	#6
	STA	array_unk_39D,X

locret_DC40:
	RTS
; End of function sub_DC25


; =============== S U B	R O U T	I N E =======================================


sub_DC41:
	LDA	array_unk_39D,X
	CMP	#1
	BCC	loc_DC4D
	LDA	#$FF
	STA	array_unk_39D,X

loc_DC4D:
	INC	array_unk_39D,X
	LDA	entry_idx_300
	CMP	#$42 
	BNE	locret_DC63
	LDA	byte_562
	CMP	#$FF
	BNE	locret_DC63
	LDA	#2
	STA	array_unk_39D,X

locret_DC63:
	RTS
; End of function sub_DC41


; =============== S U B	R O U T	I N E =======================================


sub_DC64:
	LDA	array_unk_39D,X
	CMP	#1
	BCC	loc_DC70
	LDA	#$FF
	STA	array_unk_39D,X

loc_DC70:
	INC	array_unk_39D,X
	LDA	entry_idx_300
	CMP	#$6C 
	BNE	locret_DC86
	LDA	byte_587
	CMP	#$FF
	BNE	locret_DC86
	LDA	#2
	STA	array_unk_39D,X

locret_DC86:
	RTS
; End of function sub_DC64

nullsub_1:
	RTS

; =============== S U B	R O U T	I N E =======================================


sub_DC88:
	LDA	inv_spr_dscr1_30C
	PHA
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
	PLA
	TAX
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
	LDA	#0
	STA	unk_37F,X

loc_DCE6:
	JMP	loc_DD3B
; ---------------------------------------------------------------------------

loc_DCE9:
	LDA	#0
	STA	byte_651
	STA	byte_58D
	STA	byte_58E
	LDA	#1
	STA	cur_obj_idx_unk_43A
	JSR	sub_DBE2
	LDA	#$FF
	STA	byte_652
	LDA	#2
	STA	cur_obj_idx_unk_43A
	JSR	sub_DC1C
	JMP	loc_DD3B
; ---------------------------------------------------------------------------

loc_DD0C:
	LDA	#0
	STA	byte_646
	STA	byte_58D
	STA	byte_58E
	JSR	exec_b12_c9_EAB6
	LDA	entry_idx_300
	STA	image_id_4A4
	LDA	ppu_unk_byte_302
	STA	image_offset_4A5
	LDA	ppu_unk_byte_303
	STA	ppu_prev_unk_4A6
	LDA	ppu_scroll_x_304
	STA	ppu_prev_scroll_x_unk_4A7
	LDA	ppu_scroll_y_305
	STA	ppu_prev_scroll_y_unk_4A8
	JSR	load_image_C6D2

loc_DD3B:
	
	PLA
	STA	inv_spr_dscr1_30C
	RTS
; End of function sub_DC88


; =============== S U B	R O U T	I N E =======================================


sub_DD40:
	LDA	byte_366
	CLC
	ADC	#$C
	STA	byte_366
	LDA	byte_367
	ADC	#0
	STA	byte_367
	LDA	byte_36A
	CLC
	ADC	#8
	STA	byte_36A
	LDA	byte_36B
	ADC	#0
	STA	byte_36B
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
	LDA	#$FF
	STA	is_game_finished_561

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
	LDA	#2
	STA	tilemapWidth_308
	LDA	#3
	STA	tilemapHeight_30A
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
	PLA
	TAY
	LDA	sprite_length_30F
	BNE	locret_DE21
	LDA	byte_36A
	CLC
	ADC	#8
	STA	byte_36A
	LDA	byte_36B
	ADC	#0
	STA	byte_36B
	INY
	CPY	tilemapWidth_308
	BCC	loc_DDFE

locret_DE21:
	RTS
; ---------------------------------------------------------------------------

loc_DE22:
	CMP	#1
	BNE	loc_DE6A
	LDA	tilemapHeight_30A
	CLC
	ADC	#1
	STA	tilemapHeight_30A
	LDA	tilemapHeight_30A
	ASL	A
	ASL	A
	ASL	A
	CLC
	ADC	byte_366
	STA	byte_366
	LDA	byte_367
	ADC	#0
	STA	byte_367
	LDY	#0

loc_DE46:
	TYA
	PHA
	JSR	map_update_DEFA
	PLA
	TAY
	LDA	sprite_length_30F
	BNE	locret_DE69
	LDA	byte_36A
	CLC
	ADC	#8
	STA	byte_36A
	LDA	byte_36B
	ADC	#0
	STA	byte_36B
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
	ASL	A
	ASL	A
	ASL	A
	CLC
	ADC	byte_366
	STA	byte_366
	LDA	byte_367
	ADC	#0
	STA	byte_367
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
	LDA	byte_36A
	CLC
	ADC	#8
	STA	byte_36A
	LDA	byte_36B
	ADC	#0
	STA	byte_36B
	JSR	map_update_DEFA

locret_DEB3:
	RTS
; ---------------------------------------------------------------------------

loc_DEB4:
	LDA	tilemapHeight_30A
	SEC
	SBC	#1
	ASL	A
	ASL	A
	ASL	A
	CLC
	ADC	byte_366
	STA	byte_366
	LDA	byte_367
	ADC	#0
	STA	byte_367
	LDA	byte_36A
	CLC
	ADC	#$10
	STA	byte_36A
	LDA	byte_36B
	ADC	#0
	STA	byte_36B
	JSR	map_update_DEFA
	LDA	sprite_length_30F
	BNE	locret_DEF9
	LDA	byte_36A
	CLC
	ADC	#8
	STA	byte_36A
	LDA	byte_36B
	ADC	#0
	STA	byte_36B
	JSR	map_update_DEFA

locret_DEF9:
	RTS
; End of function sub_DDDA


; =============== S U B	R O U T	I N E =======================================


map_update_DEFA:
	LDA	entry_idx_300
	PHA
	LDA	byte_36A
	PHA
	LDA	byte_36B
	PHA
	LDA	byte_366
	PHA
	LDA	byte_367
	PHA
	JSR	sub_CA14
	LSR	byte_36A
	LSR	byte_36A
	LSR	byte_36A
	LSR	byte_366
	LSR	byte_366
	LSR	byte_366

read_tilemap_DF23:
	LDA	entry_idx_300
	STA	tilemapData_4C
	LDA	byte_36B
	STA	roomUnk1_4D
	LDA	byte_367
	STA	roomUnk2_4E
	LDA	byte_366
	STA	tilemap_line_idx_4F
	LDA	byte_36A
	STA	mapLineSize_50
	LDA	#$20 
	STA	tilemap_line_size_51
	LDA	#1
	STA	mapLineWidth_52
	LDA	#1
	STA	mapLineHeight_53
	JSR	tilemap_read_next_chunk_F472

load_from_C558_DF4B:

	load_ptr unknown_entries_C558

	LDA	entry_idx_300
	STA	data_2
	LDA	#0
	STA	data_3
	ASL	data_2
	ROL	data_3
	LDA	ptr_0
	CLC
	ADC	data_2
	STA	ptr_0
	LDA	ptr_1
	ADC	data_3
	STA	ptr_1
	LDY	#0
	LDA	(ptr_0),Y
	STA	data_2
	INY
	LDA	(ptr_0),Y
	STA	data_3
	LDY	#0
	LDA	(data_2),Y
	STA	entry_idx_300

load_from_BCB6_DF7F:

	load_ptr unknown_data_BCB6

	LDA	entry_idx_300
	ASL	A
	TAY
	LDA	(ptr_0),Y
	STA	data_2
	INY
	LDA	(ptr_0),Y
	STA	data_3
	LDY	#0
	LDA	(data_2),Y
	CMP	tilemapData_4C
	BCC	loc_DFA7
	BEQ	loc_DFA7
	LDA	#$FF
	STA	sprite_length_30F
	JMP	loc_DFAC
; ---------------------------------------------------------------------------

loc_DFA7:
	; map_update_DEFA+A3j
	LDA	#0
	STA	sprite_length_30F

loc_DFAC:
	PLA
	STA	byte_367
	PLA
	STA	byte_366
	PLA
	STA	byte_36B
	PLA
	STA	byte_36A
	PLA
	STA	entry_idx_300
	RTS
; End of function map_update_DEFA


; =============== S U B	R O U T	I N E =======================================


sub_DFC1:
	LDA	#$FF
	STA	byte_36E

	load_ptr off_9BB5

get_offset_DFCE:
	LDA	entry_idx_300
	STA	data_2
	LDA	#0
	STA	data_3
	ASL	data_2
	ROL	data_3
	LDA	ptr_0
	CLC
	ADC	data_2
	STA	ptr_0
	LDA	ptr_1
	ADC	data_3
	STA	ptr_1

get_ptr_DFE8:
	LDY	#0
	LDA	(ptr_0),Y
	STA	data_2
	INY
	LDA	(ptr_0),Y
	STA	data_3

read_entry_DFF3:
	LDY	#0
	LDA	(data_2),Y
	STA	tilemapTypeUnk_30B

	add_to_data $1

	JSR	sub_C7C7
	LDA	byte_366
	CLC
	ADC	#8
	STA	byte_366
	LDA	byte_367
	ADC	#0
	STA	byte_367
	JSR	sub_9824
	LDA	byte_36A
	STA	tilemapWidth_308
	LDA	byte_36B
	STA	tilemap_size_307
	LDA	byte_366
	STA	tilemapHeight_30A
	LDA	byte_367
	STA	ppu_unk_byte_309
	LDA	#0
	STA	inv_spr_dscr1_30C

loc_E03B:
	LDA	inv_spr_dscr1_30C
	CMP	tilemapTypeUnk_30B
	BNE	loc_E046
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E046:
	LDA	inv_spr_dscr1_30C
	ASL	A
	TAY
	LDA	(data_2),Y
	STA	ptr_0
	INY
	LDA	(data_2),Y
	STA	ptr_1
	LDY	#0
	LDA	(ptr_0),Y
	STA	byte_36A
	INY
	LDA	(ptr_0),Y
	STA	byte_36B
	INY
	LDA	(ptr_0),Y
	STA	byte_366
	INY
	LDA	(ptr_0),Y
	STA	byte_367
	INY
	LDA	(ptr_0),Y
	STA	byte_36C
	INY
	LDA	(ptr_0),Y
	STA	byte_36D
	INY
	LDA	(ptr_0),Y
	STA	byte_368
	INY
	LDA	(ptr_0),Y
	STA	byte_369
	INY
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
	LDA	(ptr_0),Y
	STA	data_2
	INY
	LDA	(ptr_0),Y
	STA	data_3
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
	LDA	#0
	STA	cur_obj_idx_unk_43A
	JSR	sub_DC1C
	LDA	#1
	STA	tilemapData_4C
	LDA	#0
	STA	roomUnk1_4D
	LDA	#7
	STA	roomUnk2_4E
	LDA	#2
	STA	tilemap_line_idx_4F
	JSR	sub_CF42
	LDA	#1
	STA	tilemapData_4C
	LDA	#0
	STA	roomUnk1_4D
	LDA	#7
	STA	roomUnk2_4E
	LDA	#1
	STA	tilemap_line_idx_4F
	JSR	sub_CF42
	LDX	byte_4D0
	LDA	#$D
	STA	unk_4C2,X
	INC	byte_4D0
	LDA	#$3C 
	STA	text_idx_35C
	LDA	#2
	STA	char_type_id_35D
	LDX	#3
	JSR	sub_CF13
	LDA	#1
	STA	tilemapData_4C
	LDA	#0
	STA	roomUnk1_4D
	LDA	#7
	STA	roomUnk2_4E
	LDA	#0
	STA	tilemap_line_idx_4F
	JSR	sub_CF42
	LDA	#1
	STA	tilemapData_4C
	LDA	#0
	STA	roomUnk1_4D
	LDA	#7
	STA	roomUnk2_4E
	LDA	#3
	STA	tilemap_line_idx_4F
	JSR	sub_CF42
	LDA	#0
	STA	cur_obj_idx_unk_43A
	JSR	sub_DBE2
	LDA	#$FF
	STA	byte_6BD
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
	LDA	#$43 
	STA	text_idx_35C
	LDA	#2
	STA	char_type_id_35D
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
	LDA	#4
	STA	text_idx_35C
	LDA	#2
	STA	char_type_id_35D
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
	LDA	#$2E 
	STA	byte_46D
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E205:
	LDA	byte_36F
	CMP	#$FF
	BNE	loc_E20F
	JMP	loc_E70C
; ---------------------------------------------------------------------------

loc_E20F:
	LDA	#$D4 
	STA	text_idx_35C
	LDA	#1
	STA	char_type_id_35D
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
	LDA	#0
	STA	byte_46D
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E23E:
	LDA	byte_36F
	CMP	#$FF
	BNE	loc_E248
	JMP	loc_E70C
; ---------------------------------------------------------------------------

loc_E248:
	LDA	#$C
	STA	text_idx_35C
	LDA	#2
	STA	char_type_id_35D
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
	LDA	#$B9 
	STA	text_idx_35C
	LDA	#0
	STA	char_type_id_35D
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
	LDA	#$13
	STA	byte_46D
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E2D7:
	LDA	#$8E 
	STA	text_idx_35C
	LDA	#1
	STA	char_type_id_35D
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
	LDA	#$14
	STA	byte_46D
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E306:
	LDA	#$8D 
	STA	text_idx_35C
	LDA	#1
	STA	char_type_id_35D
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
	LDA	#$15
	STA	byte_46D
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E335:
	LDA	#$8C 
	STA	text_idx_35C
	LDA	#1
	STA	char_type_id_35D
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
	LDA	#$16
	STA	byte_46D
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E364:
	LDA	#$8F 
	STA	text_idx_35C
	LDA	#1
	STA	char_type_id_35D
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
	LDA	#$18
	STA	byte_46D
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E393:
	LDA	#4
	STA	text_idx_35C
	LDA	#2
	STA	char_type_id_35D
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
	LDA	#$19
	STA	byte_46D
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E3C2:
	LDA	#$22 
	STA	text_idx_35C
	LDA	#2
	STA	char_type_id_35D
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
	LDA	#$17
	STA	byte_46D
	JMP	loc_E741
; ---------------------------------------------------------------------------

loc_E3F1:
	LDA	#$90 
	STA	text_idx_35C
	LDA	#1
	STA	char_type_id_35D
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
	LDA	#$DB 
	STA	text_idx_35C
	LDA	#1
	STA	char_type_id_35D
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
	LDA	#$DB 
	STA	text_idx_35C
	LDA	#1
	STA	char_type_id_35D
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
	LDA	#$DB 
	STA	text_idx_35C
	LDA	#1
	STA	char_type_id_35D
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
	LDA	#$E8 
	STA	text_idx_35C
	LDA	#1
	STA	char_type_id_35D
	LDX	#1
	JSR	sub_CF13
	JSR	sub_CAA9
	LDA	byte_372
	BNE	loc_E4C4
	LDA	#1
	STA	byte_420
	JSR	exec_b12_c24_EB8E
	LDA	byte_41F
	CMP	#0
	BEQ	loc_E4C4
	LDA	#$FF
	STA	byte_607

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
	LDA	#$E8 
	STA	text_idx_35C
	LDA	#1
	STA	char_type_id_35D
	LDX	#1
	JSR	sub_CF13
	JSR	sub_CAA9
	LDA	byte_372
	BNE	loc_E50A
	LDA	#0
	STA	byte_420
	JSR	exec_b12_c24_EB8E
	LDA	byte_41F
	CMP	#0
	BEQ	loc_E4C4
	LDA	#$FF
	STA	byte_66A

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
	LDA	#$F4 
	STA	text_idx_35C
	LDA	#1
	STA	char_type_id_35D
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
	LDA	#$A
	STA	text_idx_35C
	LDA	#2
	STA	char_type_id_35D
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
	LDA	#$10
	STA	text_idx_35C
	LDA	#2
	STA	char_type_id_35D
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
	LDA	#$11
	STA	text_idx_35C
	LDA	#2
	STA	char_type_id_35D
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
	LDA	#$13
	STA	text_idx_35C
	LDA	#2
	STA	char_type_id_35D
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
	LDA	#$33 
	STA	text_idx_35C
	LDA	#2
	STA	char_type_id_35D
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
	LDA	#$DB 
	STA	text_idx_35C
	LDA	#1
	STA	char_type_id_35D
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
	LDA	#$13
	STA	text_idx_35C
	LDA	#2
	STA	char_type_id_35D
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
	LDA	#$34 
	STA	text_idx_35C
	LDA	#2
	STA	char_type_id_35D
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
	LDA	#$35 
	STA	text_idx_35C
	LDA	#2
	STA	char_type_id_35D
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
	LDA	#$36 
	STA	text_idx_35C
	LDA	#2
	STA	char_type_id_35D
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
	LDA	#$41 
	STA	text_idx_35C
	LDA	#2
	STA	char_type_id_35D
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
	LDA	(ptr_0),Y
	STA	byte_36E
	INY
	LDA	byte_36E
	CMP	#0
	BNE	loc_E725
	JSR	sub_E855
	LDA	#$FF
	STA	sprite_length_30F
	JMP	locret_E740
; ---------------------------------------------------------------------------

loc_E725:
	CMP	#1
	BNE	loc_E734
	JSR	nullsub_2
	LDA	#$FF
	STA	sprite_length_30F
	JMP	locret_E740
; ---------------------------------------------------------------------------

loc_E734:
	CMP	#2
	BNE	locret_E740
	JSR	sub_E925
	LDA	#$FF
	STA	sprite_length_30F

locret_E740:
	
	RTS
; ---------------------------------------------------------------------------

loc_E741:
	
	LDA	#0
	STA	sprite_length_30F
	RTS
; End of function sub_DFC1


; =============== S U B	R O U T	I N E =======================================


sub_E747:
	LDA	#0
	STA	byte_36F
	STA	byte_370
	STA	byte_371
	TYA
	PHA
	LDA	ptr_0
	PHA
	LDA	ptr_1
	PHA
	LDA	tilemapTypeUnk_30B
	PHA
	LDA	inv_spr_dscr1_30C
	PHA
	LDY	#0
	LDA	(data_2),Y
	STA	tilemapTypeUnk_30B
	CMP	#0
	BNE	loc_E775
	LDA	#$FF
	STA	byte_36F
	JMP	loc_E7E7
; ---------------------------------------------------------------------------

loc_E775:
	add_to_data $1
	
	LDA	#0
	STA	inv_spr_dscr1_30C

loc_E787:
	LDA	inv_spr_dscr1_30C
	ASL	A
	TAY
	LDA	(data_2),Y
	STA	ptr_0
	INY
	LDA	(data_2),Y
	STA	ptr_1
	LDY	#0

loc_E797:
	LDA	(ptr_0),Y
	STA	tilemapFrameCount_30D
	INY
	LDA	(ptr_0),Y
	STA	byte_30E
	INY
	LDA	tilemapFrameCount_30D
	CMP	#$FF
	BNE	loc_E7B1
	LDA	tilemapFrameCount_30D
	CMP	#$FF
	BEQ	loc_E7D3

loc_E7B1:
	LDA	byte_370
	CLC
	ADC	tilemapFrameCount_30D
	STA	byte_370
	LDA	byte_371
	ADC	byte_30E
	STA	byte_371
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
	PLA
	STA	inv_spr_dscr1_30C
	PLA
	STA	tilemapTypeUnk_30B
	PLA
	STA	ptr_1
	PLA
	STA	ptr_0
	PLA
	TAY
	RTS
; End of function sub_E747


; =============== S U B	R O U T	I N E =======================================


sub_E7F8:
	LDA	ptr_0
	PHA
	LDA	ptr_1
	PHA
	TYA
	PHA

	load_ptr byte_598

	LDA	ptr_0
	CLC
	ADC	tilemapFrameCount_30D
	STA	ptr_0
	LDA	ptr_1
	ADC	byte_30E
	STA	ptr_1
	LDY	#0
	LDA	(ptr_0),Y
	STA	tilemapFrameCount_30D
	PLA
	TAY
	PLA
	STA	ptr_1
	PLA
	STA	ptr_0
	RTS
; End of function sub_E7F8


; =============== S U B	R O U T	I N E =======================================


sub_E827:
	LDA	ptr_0
	PHA
	LDA	ptr_1
	PHA
	TYA
	PHA

	load_ptr byte_598

	LDA	ptr_0
	CLC
	ADC	tilemapFrameCount_30D
	STA	ptr_0
	LDA	ptr_1
	ADC	byte_30E
	STA	ptr_1
	LDY	#0
	LDA	#$FF
	STA	(ptr_0),Y
	PLA
	TAY
	PLA
	STA	ptr_1
	PLA
	STA	ptr_0
	RTS
; End of function sub_E827


; =============== S U B	R O U T	I N E =======================================


sub_E855:
	LDA	(ptr_0),Y
	STA	data_2
	INY
	LDA	(ptr_0),Y
	STA	data_3
	JSR	sub_E8F8
	LDA	sprite_length_30F
	BEQ	loc_E867
	RTS
; ---------------------------------------------------------------------------

loc_E867:
	LDA	entry_idx_300
	STA	byte_46F
	LDA	inv_spr_dscr1_30C
	STA	byte_470
	LDY	#0
	LDA	(data_2),Y
	STA	entry_idx_300
	INY
	LDA	(data_2),Y
	STA	byte_4AD
	INY
	LDA	(data_2),Y
	STA	tilemap_size_307
	INY
	LDA	(data_2),Y
	STA	byte_4AE
	INY
	LDA	(data_2),Y
	STA	ppu_unk_byte_309
	INY
	LDA	(data_2),Y
	STA	byte_313
	LDA	tilemap_size_307
	STA	ppu_unk_byte_302
	LDA	#0
	STA	ppu_unk_byte_303

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
	LDA	entry_idx_300
	STA	image_id_4A4
	LDA	ppu_unk_byte_302
	STA	image_offset_4A5
	LDA	ppu_unk_byte_303
	STA	ppu_prev_unk_4A6
	LDA	#0
	STA	ppu_prev_scroll_x_unk_4A7
	STA	ppu_prev_scroll_y_unk_4A8
	STA	prev_sprite_type_4A9
	JSR	load_image_C6D2
	JSR	sub_EC96
	RTS
; End of function sub_E855


; =============== S U B	R O U T	I N E =======================================


sub_E8F8:
	LDA	data_2
	PHA
	LDA	data_3
	PHA
	LDA	#0
	STA	sprite_length_30F
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
	PLA
	STA	data_3
	PLA
	STA	data_2
	RTS
; End of function sub_E8F8

nullsub_2:
	RTS

; =============== S U B	R O U T	I N E =======================================


sub_E925:
	LDA	(ptr_0),Y
	STA	data_2
	INY
	LDA	(ptr_0),Y
	STA	data_3
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
	LDA	#$BA 
	STA	text_idx_35C
	LDA	#0
	STA	char_type_id_35D
	LDX	#1
	JSR	sub_CF13
	RTS
; ---------------------------------------------------------------------------

loc_E949:
	LDA	#0
	STA	byte_47F
	LDA	#$1A
	STA	byte_46D
	RTS
; End of function sub_E932


; =============== S U B	R O U T	I N E =======================================


sub_E954:
	LDA	byte_471
	CMP	#0
	BNE	loc_E968
	LDA	#$B8 
	STA	text_idx_35C
	LDA	#0
	STA	char_type_id_35D
	JSR	sub_9132

loc_E968:
	LDA	#$FF
	STA	sprite_length_30F
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
	LDA	#$BC 
	STA	text_idx_35C
	LDA	#0
	STA	char_type_id_35D
	LDX	#1
	JSR	sub_CF13
	INC	byte_554
	RTS
; ---------------------------------------------------------------------------

loc_E98F:
	CMP	#1
	BNE	loc_E9A4
	LDA	#6
	STA	tilemapTypeUnk_30B
	JSR	exec_b12_cD_EAD6
	LDA	sprite_length_30F
	BEQ	locret_E9B9
	INC	byte_554
	RTS
; ---------------------------------------------------------------------------

loc_E9A4:
	CMP	#2
	BNE	locret_E9B9
	LDA	#6
	STA	tilemapTypeUnk_30B
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
	LDA	#$FF
	STA	sprite_length_30F
	RTS
; ---------------------------------------------------------------------------

loc_E9C7:
	LDA	byte_54E
	CMP	#2
	BNE	loc_E9D7
	LDA	#0
	STA	byte_54E
	JSR	sub_EA3C
	RTS
; ---------------------------------------------------------------------------

loc_E9D7:
	LDA	byte_54E
	CMP	#1
	BNE	loc_E9EC
	LDA	#0
	STA	byte_54E
	JSR	sub_D2B2
	LDA	#$FF
	STA	sprite_length_30F
	RTS
; ---------------------------------------------------------------------------

loc_E9EC:
	LDA	#0
	STA	sprite_length_30F
	RTS
; End of function sub_E9BA


; =============== S U B	R O U T	I N E =======================================


sub_E9F2:
	LDA	byte_550
	CMP	#$16
	BEQ	loc_E9FF
	LDA	#0
	STA	sprite_length_30F
	RTS
; ---------------------------------------------------------------------------

loc_E9FF:
	LDA	#$B5 
	STA	text_idx_35C
	LDA	#0
	STA	char_type_id_35D
	LDX	#1
	JSR	sub_CF13
	LDA	#$FF
	STA	sprite_length_30F
	RTS
; End of function sub_E9F2


; =============== S U B	R O U T	I N E =======================================


sub_EA14:
	LDA	byte_550
	CMP	#$18
	BEQ	loc_EA21
	LDA	#0
	STA	sprite_length_30F
	RTS
; ---------------------------------------------------------------------------

loc_EA21:
	LDA	#$B6 
	STA	text_idx_35C
	LDA	#0
	STA	char_type_id_35D
	LDX	#1
	JSR	sub_CF13
	LDA	#$FF
	STA	sprite_length_30F
	RTS
; End of function sub_EA14

; ---------------------------------------------------------------------------
	LDA	byte_5AB
	BNE	locret_EA3B

locret_EA3B:
	RTS

; =============== S U B	R O U T	I N E =======================================


sub_EA3C:
	LDA	#1
	STA	tilemapTypeUnk_30B
	JSR	sub_D0AD
	LDA	#1
	STA	byte_5AB
	LDA	#0
	STA	byte_5AC
	LDA	#$18
	STA	byte_550
	LDA	#1
	STA	byte_551
	LDA	#1
	STA	byte_5A4
	LDA	#0
	STA	byte_5A5
	LDA	#0
	STA	byte_5A6
	LDA	#3
	STA	byte_54E
	RTS
; End of function sub_EA3C


; =============== S U B	R O U T	I N E =======================================


exec_b12_c0_EA6D:
	LDA	#0
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function exec_b12_c0_EA6D


; =============== S U B	R O U T	I N E =======================================


nullsub_5:
	RTS
; End of function nullsub_5


; =============== S U B	R O U T	I N E =======================================


exec_b12_c1_EA76:
	LDA	#1
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function exec_b12_c1_EA76


; =============== S U B	R O U T	I N E =======================================


exec_b12_c2_EA7E:
	LDA	#2
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function exec_b12_c2_EA7E


; =============== S U B	R O U T	I N E =======================================


exec_b12_c3_EA86:
	LDA	#3
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function exec_b12_c3_EA86


; =============== S U B	R O U T	I N E =======================================


exec_b12_c4_EA8E:
	LDA	#4
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function exec_b12_c4_EA8E


; =============== S U B	R O U T	I N E =======================================


exec_b12_c5_EA96:
	LDA	#5
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function exec_b12_c5_EA96


; =============== S U B	R O U T	I N E =======================================


exec_b12_c6_EA9E:
	LDA	#6
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function exec_b12_c6_EA9E


; =============== S U B	R O U T	I N E =======================================


exec_b12_c7_EAA6:
	LDA	#7
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function exec_b12_c7_EAA6


; =============== S U B	R O U T	I N E =======================================


exec_b12_c8_EAAE:
	LDA	#8
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function exec_b12_c8_EAAE


; =============== S U B	R O U T	I N E =======================================


exec_b12_c9_EAB6:
	
	LDA	#9
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function exec_b12_c9_EAB6


; =============== S U B	R O U T	I N E =======================================


exec_b12_cA_EABE:
	LDA	#$A
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function exec_b12_cA_EABE


; =============== S U B	R O U T	I N E =======================================


exec_b12_cB_EAC6:
	LDA	#$B
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function exec_b12_cB_EAC6


; =============== S U B	R O U T	I N E =======================================


exec_b12_cC_EACE:
	LDA	#$C
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function exec_b12_cC_EACE


; =============== S U B	R O U T	I N E =======================================


exec_b12_cD_EAD6:
	
	LDA	#$D
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function exec_b12_cD_EAD6


; =============== S U B	R O U T	I N E =======================================


exec_b12_cE_EADE:
	LDA	#$E
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function exec_b12_cE_EADE


; =============== S U B	R O U T	I N E =======================================


exec_b12_cF_EAE6:
	LDA	#$F
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function exec_b12_cF_EAE6


; =============== S U B	R O U T	I N E =======================================


sub_EAEE:
	LDA	#$10
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EAEE


; =============== S U B	R O U T	I N E =======================================


exec_b12_c11_EAF6:
	LDA	#$11
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function exec_b12_c11_EAF6


; =============== S U B	R O U T	I N E =======================================


sub_EAFE:
	LDA	#$12
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EAFE


; =============== S U B	R O U T	I N E =======================================


sub_EB06:
	LDA	#$13
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EB06


; =============== S U B	R O U T	I N E =======================================


sub_EB0E:
	LDA	#$14
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EB0E


; =============== S U B	R O U T	I N E =======================================


sub_EB16:
	LDA	#$15
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EB16


; =============== S U B	R O U T	I N E =======================================


sub_EB1E:
	LDA	#$16
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EB1E


; =============== S U B	R O U T	I N E =======================================


exec_b12_c17_EB26:
	LDA	#$17
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function exec_b12_c17_EB26


; =============== S U B	R O U T	I N E =======================================


sub_EB2E:
	LDA	#$18
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EB2E


; =============== S U B	R O U T	I N E =======================================


sub_EB36:
	LDA	#$19
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EB36


; =============== S U B	R O U T	I N E =======================================


sub_EB3E:
	LDA	#$1A
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EB3E


; =============== S U B	R O U T	I N E =======================================


sub_EB46:
	LDA	#$1B
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EB46


; =============== S U B	R O U T	I N E =======================================


sub_EB4E:
	LDA	#$1C
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EB4E


; =============== S U B	R O U T	I N E =======================================


sub_EB56:
	LDA	#$1D
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EB56


; =============== S U B	R O U T	I N E =======================================


sub_EB5E:
	LDA	#$1E
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EB5E


; =============== S U B	R O U T	I N E =======================================


sub_EB66:
	LDA	#$1F
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EB66


; =============== S U B	R O U T	I N E =======================================


sub_EB6E:
	LDA	#$20 
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EB6E


; =============== S U B	R O U T	I N E =======================================


sub_EB76:
	LDA	#$21 
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EB76


; =============== S U B	R O U T	I N E =======================================


sub_EB7E:
	LDA	#$22 
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EB7E


; =============== S U B	R O U T	I N E =======================================


sub_EB86:
	LDA	#$23 
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EB86


; =============== S U B	R O U T	I N E =======================================


exec_b12_c24_EB8E:
	
	LDA	#$24 
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function exec_b12_c24_EB8E


; =============== S U B	R O U T	I N E =======================================


sub_EB96:
	LDA	#$25 
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EB96


; =============== S U B	R O U T	I N E =======================================


sub_EB9E:
	LDA	#$26 
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EB9E


; =============== S U B	R O U T	I N E =======================================


sub_EBA6:
	LDA	#$27 
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EBA6


; =============== S U B	R O U T	I N E =======================================


sub_EBAE:
	LDA	#$28 
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EBAE


; =============== S U B	R O U T	I N E =======================================


sub_EBB6:
	LDA	#$2A 
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EBB6


; =============== S U B	R O U T	I N E =======================================


sub_EBBE:
	LDA	#$2B 
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EBBE


; =============== S U B	R O U T	I N E =======================================


sub_EBC6:
	LDA	#$2C 
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EBC6


; =============== S U B	R O U T	I N E =======================================


sub_EBCE:
	LDA	#$2D 
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EBCE


; =============== S U B	R O U T	I N E =======================================


sub_EBD6:
	LDA	#$2E 
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EBD6


; =============== S U B	R O U T	I N E =======================================


sub_EBDE:
	LDA	#$2F 
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EBDE


; =============== S U B	R O U T	I N E =======================================


sub_EBE6:
	LDA	#$30 
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EBE6


; =============== S U B	R O U T	I N E =======================================


sub_EBEE:
	LDA	#$31 
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EBEE


; =============== S U B	R O U T	I N E =======================================


sub_EBF6:
	LDA	#$32 
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EBF6


; =============== S U B	R O U T	I N E =======================================


sub_EBFE:
	LDA	#$33 
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EBFE


; =============== S U B	R O U T	I N E =======================================


sub_EC06:
	LDA	#$34 
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EC06


; =============== S U B	R O U T	I N E =======================================


sub_EC0E:
	LDA	#$35 
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EC0E


; =============== S U B	R O U T	I N E =======================================


sub_EC16:
	LDA	#$36 
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EC16


; =============== S U B	R O U T	I N E =======================================


sub_EC1E:
	LDA	#$37 
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EC1E


; =============== S U B	R O U T	I N E =======================================


sub_EC26:
	LDA	#$38 
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EC26


; =============== S U B	R O U T	I N E =======================================


sub_EC2E:
	LDA	#$39 
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EC2E


; =============== S U B	R O U T	I N E =======================================


sub_EC36:
	LDA	#$3A 
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EC36


; =============== S U B	R O U T	I N E =======================================


sub_EC3E:
	LDA	#$3B 
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EC3E


; =============== S U B	R O U T	I N E =======================================


sub_EC46:
	LDA	#$3C 
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EC46


; =============== S U B	R O U T	I N E =======================================


sub_EC4E:
	LDA	#$3D 
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EC4E


; =============== S U B	R O U T	I N E =======================================


sub_EC56:
	LDA	#$3E 
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EC56


; =============== S U B	R O U T	I N E =======================================


sub_EC5E:
	LDA	#$3F 
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EC5E


; =============== S U B	R O U T	I N E =======================================


sub_EC66:
	LDA	#$40 
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EC66


; =============== S U B	R O U T	I N E =======================================


sub_EC6E:
	LDA	#$41 
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EC6E


; =============== S U B	R O U T	I N E =======================================


sub_EC76:
	LDA	#$42 
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EC76


; =============== S U B	R O U T	I N E =======================================


sub_EC7E:
	LDA	#$43 
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EC7E


; =============== S U B	R O U T	I N E =======================================


sub_EC86:
	; a_button_pressed_8FDC+76p
	LDA	#$44 
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EC86


; =============== S U B	R O U T	I N E =======================================


exec_b12_c45_EC8E:
	LDA	#$45 
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function exec_b12_c45_EC8E


; =============== S U B	R O U T	I N E =======================================


sub_EC96:
	LDA	#$46 
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EC96


; =============== S U B	R O U T	I N E =======================================


sub_EC9E:
	LDA	#$47 
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; End of function sub_EC9E


; =============== S U B	R O U T	I N E =======================================


exec_b12_com48_ECA6:
	
	LDA	#$48 
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; ---------------------------------------------------------------------------
	LDA	#$49 
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; ---------------------------------------------------------------------------

exec_b12_c4A_ECB6:
	LDA	#$4A 
	STA	bank_command_346
	JMP	exec_b12_comm_ECBE
; ---------------------------------------------------------------------------

exec_b12_comm_ECBE:
	; exec_b12_c1_EA76+5j ...
	LDA	#banks_12
	STA	bank_to_344
	LDA	#0
	STA	bank_from_343
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
	LDA	#3
	STA	tilemapTypeUnk_30B
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
	LDA	#2
	STA	tilemapTypeUnk_30B
	LDA	tilemap_size_307
	STA	tilemapWidth_308
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
	LDA	#1
	STA	tilemapTypeUnk_30B
	LDA	#$20 
	SEC
	SBC	tilemap_size_307
	STA	tilemapWidth_308
	LDA	ppu_unk_byte_309
	STA	tilemapHeight_30A
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
	LDA	#0
	STA	tilemapTypeUnk_30B
	LDA	tilemap_size_307
	STA	tilemapWidth_308
	LDA	ppu_unk_byte_309
	STA	tilemapHeight_30A
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
	PLA
	TAY
	RTS
; End of function sub_ED8F


; =============== S U B	R O U T	I N E =======================================


sub_EDA2:
	LDA	data_2
	CLC
	ADC	tilemap_size_307
	STA	data_2
	LDA	data_3
	ADC	#0
	STA	data_3
	RTS
; End of function sub_EDA2


; =============== S U B	R O U T	I N E =======================================


sub_EDB1:
	TYA
	AND	#1
	BEQ	loc_EDC1
	LDA	#0
	STA	data_2
	LDA	#$28 
	STA	data_3
	JMP	loc_EDC9
; ---------------------------------------------------------------------------

loc_EDC1:
	LDA	#0
	STA	data_2
	LDA	#$20 
	STA	data_3

loc_EDC9:
	TXA
	AND	#1
	BEQ	locret_EDD5
	LDA	data_3
	CLC
	ADC	#4
	STA	data_3

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
	LDA	ppu_unk_byte_309
	PHA
	LDA	tilemap_size_307
	PHA
	LDA	tilemapTypeUnk_30B
	CMP	#3
	BNE	next_check_EDF6
	JMP	start_read_tilemap_EE1C
; ---------------------------------------------------------------------------

next_check_EDF6:
	CMP	#2
	BNE	next_check_EE02
	LDA	#0
	STA	tilemap_size_307
	JMP	start_read_tilemap_EE1C
; ---------------------------------------------------------------------------

next_check_EE02:
	CMP	#1
	BNE	next_check_EE0E
	LDA	#0
	STA	ppu_unk_byte_309
	JMP	start_read_tilemap_EE1C
; ---------------------------------------------------------------------------

next_check_EE0E:
	CMP	#0
	BNE	start_read_tilemap_EE1C
	LDA	#0
	STA	ppu_unk_byte_309
	LDA	#0
	STA	tilemap_size_307

start_read_tilemap_EE1C:
	LDA	entry_idx_300
	STA	tilemapData_4C
	STX	roomUnk1_4D
	STY	roomUnk2_4E
	LDA	ppu_unk_byte_309
	STA	tilemap_line_idx_4F
	LDA	tilemap_size_307
	STA	mapLineSize_50
	LDA	#$20 
	STA	tilemap_line_size_51
	LDA	tilemapWidth_308
	STA	mapLineWidth_52
	LDA	#1
	STA	mapLineHeight_53
	JSR	tilemap_read_next_chunk_F472

start_upload_ppu_EE3F:
	LDA	data_3
	STA	_PPU_ADDR
	LDA	data_2
	STA	_PPU_ADDR
	TYA
	PHA
	LDY	#0

write_tilemap_to_ppu_EE4D:
	LDA	tilemapData_4C,Y
	STA	_PPU_DATA
	INY
	CPY	tilemapWidth_308
	BCC	write_tilemap_to_ppu_EE4D
	PLA
	TAY
	INC	ppu_unk_byte_309
	JSR	sub_F194
	DEC	tilemapHeight_30A
	LDA	tilemapHeight_30A
	BNE	start_read_tilemap_EE1C
	PLA
	STA	tilemap_size_307
	PLA
	STA	ppu_unk_byte_309
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
	LDA	ppu_unk_byte_309
	PHA

loc_EE9A:
	TXA
	PHA

start_read_tilemap_EE9C:
	LDA	entry_idx_300
	STA	tilemapData_4C
	LDA	ppu_unk_byte_302
	STA	roomUnk1_4D
	LDA	ppu_unk_byte_303
	STA	roomUnk2_4E
	LDA	ppu_unk_byte_309
	STA	tilemap_line_idx_4F
	LDA	tilemap_size_307
	STA	mapLineSize_50
	LDA	#8
	STA	tilemap_line_size_51
	LDA	tilemapWidth_308
	STA	mapLineWidth_52
	LDA	#1
	STA	mapLineHeight_53
	JSR	tilemap_read_next_chunk_F472
	LDY	#0

loc_EEC7:
	LDA	tilemapData_4C,Y
	STA	byte_4,X
	INX
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
	PLA
	STA	ppu_unk_byte_309
	LDA	ppu_scroll_x_304
	BNE	loc_EEEF
	JMP	loc_EF71
; ---------------------------------------------------------------------------

loc_EEEF:
	LDA	tilemap_size_307
	STA	tilemapWidth_308
	LDA	#8
	SEC
	SBC	ppu_unk_byte_309
	STA	tilemapHeight_30A
	LDX	#0
	LDA	ppu_unk_byte_309
	PHA

loc_EF04:
	TXA
	PHA

start_read_tilemap_EF06:
	LDA	entry_idx_300
	STA	tilemapData_4C
	LDA	ppu_unk_byte_302
	CLC
	ADC	#1
	STA	roomUnk1_4D
	LDA	ppu_unk_byte_303
	STA	roomUnk2_4E
	LDA	ppu_unk_byte_309
	STA	tilemap_line_idx_4F
	LDA	#0
	STA	mapLineSize_50
	LDA	#8
	STA	tilemap_line_size_51
	LDA	tilemapWidth_308
	CLC
	ADC	#1
	STA	mapLineWidth_52
	LDA	#1
	STA	mapLineHeight_53
	JSR	tilemap_read_next_chunk_F472
	LDY	#0

loc_EF36:
	CPY	tilemapWidth_308
	BEQ	loc_EF45
	LDA	tilemapData_4C,Y
	STA	byte_4,X
	INX
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
	PLA
	STA	ppu_unk_byte_309

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
	LDA	ppu_unk_byte_309
	STA	tilemapHeight_30A
	LDA	ppu_scroll_y_305
	AND	#$1F
	BEQ	loc_EF94
	INC	tilemapHeight_30A

loc_EF94:
	LDA	#8
	SEC
	SBC	ppu_unk_byte_309
	ASL	A
	ASL	A
	ASL	A
	CLC
	ADC	tilemap_size_307
	TAX
	LDA	ppu_unk_byte_309
	PHA
	LDA	#0
	STA	ppu_unk_byte_309

loc_EFAB:
	TXA
	PHA

start_read_tilemap_EFAD:
	LDA	entry_idx_300
	STA	tilemapData_4C
	LDA	ppu_unk_byte_302
	STA	roomUnk1_4D
	LDA	ppu_unk_byte_303
	CLC
	ADC	#1
	STA	roomUnk2_4E
	LDA	ppu_unk_byte_309
	STA	tilemap_line_idx_4F
	LDA	tilemap_size_307
	STA	mapLineSize_50
	LDA	#8
	STA	tilemap_line_size_51
	LDA	tilemapWidth_308
	STA	mapLineWidth_52
	LDA	#1
	STA	mapLineHeight_53
	JSR	tilemap_read_next_chunk_F472
	LDY	#0

loc_EFDB:
	LDA	tilemapData_4C,Y
	STA	byte_4,X
	INX
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
	PLA
	STA	ppu_unk_byte_309
	LDA	ppu_scroll_x_304
	BNE	loc_F003
	JMP	locret_F09C
; ---------------------------------------------------------------------------

loc_F003:
	LDA	tilemap_size_307
	STA	tilemapWidth_308
	LDA	ppu_unk_byte_309
	STA	tilemapHeight_30A
	LDA	ppu_scroll_y_305
	AND	#$1F
	BEQ	loc_F019
	INC	tilemapHeight_30A

loc_F019:
	LDA	#8
	SEC
	SBC	ppu_unk_byte_309
	ASL	A
	ASL	A
	ASL	A
	TAX
	LDA	ppu_unk_byte_309
	PHA
	LDA	#0
	STA	ppu_unk_byte_309

loc_F02C:
	TXA
	PHA

start_read_tilemap_F02E:
	LDA	entry_idx_300
	STA	tilemapData_4C
	LDA	ppu_unk_byte_302
	CLC
	ADC	#1
	STA	roomUnk1_4D
	LDA	ppu_unk_byte_303
	CLC
	ADC	#1
	STA	roomUnk2_4E
	LDA	ppu_unk_byte_309
	STA	tilemap_line_idx_4F
	LDA	#0
	STA	mapLineSize_50
	LDA	#8
	STA	tilemap_line_size_51
	LDA	tilemapWidth_308
	CLC
	ADC	#1
	STA	mapLineWidth_52
	LDA	#1
	STA	mapLineHeight_53
	JSR	tilemap_read_next_chunk_F472
	LDY	#0

loc_F061:
	CPY	tilemapWidth_308
	BEQ	loc_F070
	LDA	tilemapData_4C,Y
	STA	byte_4,X
	INX
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
	PLA
	STA	ppu_unk_byte_309

locret_F09C:
	
	RTS
; End of function sub_EE72


; =============== S U B	R O U T	I N E =======================================


ppu_unk_func_F09D:
	LDA	ppu_unk_byte_303
	AND	#1
	CMP	#1
	BEQ	loc_F0B9

	load_ptr _PPU_ATTR_TBL_0
	load_data _PPU_ATTR_TBL_1

	JMP	loc_F0C9
; ---------------------------------------------------------------------------

loc_F0B9:

	load_data _PPU_ATTR_TBL_0
	load_ptr _PPU_ATTR_TBL_1

loc_F0C9:
	LDA	ppu_unk_byte_302
	AND	#1
	CMP	#1
	BNE	loc_F0E0
	LDA	ptr_1
	CLC
	ADC	#4
	STA	ptr_1
	LDA	data_3
	CLC
	ADC	#4
	STA	data_3

loc_F0E0:
	LDA	ppu_scroll_y_305
	LSR	A
	LSR	A
	LSR	A
	STA	ppu_unk_byte_309
	LSR	A
	LSR	A
	STA	tilemapHeight_30A
	ASL	A
	ASL	A
	ASL	A
	CLC
	ADC	ptr_0
	STA	ptr_0
	LDA	ptr_1
	ADC	#0
	STA	ptr_1
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
	LDA	#1
	STA	tilemapTypeUnk_30B
	LDA	ppu_scroll_y_305
	CMP	#0
	BEQ	loc_F134
	LDA	#2
	STA	tilemapTypeUnk_30B

loc_F134:
	LDA	#0
	STA	has_ppu_data_to_upload_6F
	LDX	#0
	LDA	tilemapTypeUnk_30B
	STA	ppu_data_70,X
	INX
	LDA	inv_spr_dscr1_30C
	STA	ppu_data_70,X
	INX
	LDA	ptr_1
	STA	ppu_data_70,X
	INX
	LDA	ptr_0
	STA	ppu_data_70,X
	INX
	LDY	#0

loc_F152:
	LDA	byte_4,Y
	STA	ppu_data_70,X
	INX
	INY
	CPY	inv_spr_dscr1_30C
	BCC	loc_F152
	LDA	tilemapTypeUnk_30B
	CMP	#1
	BEQ	set_ppu_upload_flag_F18B
	LDA	tilemapHeight_30A
	STA	ppu_data_70,X
	INX
	LDA	data_3
	STA	ppu_data_70,X
	INX
	LDA	data_2
	STA	ppu_data_70,X
	INX
	LDA	tilemapHeight_30A
	CLC
	ADC	inv_spr_dscr1_30C
	STA	tilemapHeight_30A

loc_F17F:
	LDA	byte_4,Y
	STA	ppu_data_70,X
	INX
	INY
	CPY	tilemapHeight_30A
	BCC	loc_F17F

set_ppu_upload_flag_F18B:
	LDA	#1
	STA	has_ppu_data_to_upload_6F

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
	LDA	entry_idx_300
	STA	tilemapData_4C
	STX	roomUnk1_4D
	STY	roomUnk2_4E
	LDA	ppu_unk_byte_309
	STA	tilemap_line_idx_4F
	LDA	tilemap_size_307
	STA	mapLineSize_50
	LDA	#$20 
	STA	tilemap_line_size_51
	LDA	tilemapTypeUnk_30B
	STA	mapLineWidth_52
	LDA	#1
	STA	mapLineHeight_53
	JSR	tilemap_read_next_chunk_F472
	JSR	sub_F504
	JSR	sub_ED8F
	JSR	sub_EDA2
	LDX	#0
	LDA	#0
	STA	ppu_data_70
	INX
	JSR	sub_F51D
	LDA	ppu_scroll_x_304
	BEQ	loc_F228
	TXA
	PHA
	JSR	sub_ED7C
	JSR	sub_F42F
	LDA	tilemap_size_307
	STA	tilemapTypeUnk_30B

start_read_tilemap_F1FA:
	LDA	entry_idx_300
	STA	tilemapData_4C
	INX
	STX	roomUnk1_4D
	STY	roomUnk2_4E
	LDA	ppu_unk_byte_309
	STA	tilemap_line_idx_4F
	LDA	#0
	STA	mapLineSize_50
	LDA	#$20 
	STA	tilemap_line_size_51
	LDA	tilemapTypeUnk_30B
	STA	mapLineWidth_52
	LDA	#1
	STA	mapLineHeight_53
	JSR	tilemap_read_next_chunk_F472
	JSR	sub_F504
	JSR	sub_ED8F
	PLA
	TAX
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
	LDA	entry_idx_300
	STA	tilemapData_4C
	STX	roomUnk1_4D
	STY	roomUnk2_4E
	LDA	ppu_unk_byte_309
	STA	tilemap_line_idx_4F
	LDA	tilemap_size_307
	STA	mapLineSize_50
	LDA	#8
	STA	tilemap_line_size_51
	LDA	tilemapTypeUnk_30B
	STA	mapLineWidth_52
	LDA	#1
	STA	mapLineHeight_53
	JSR	tilemap_read_next_chunk_F472
	JSR	sub_F504
	JSR	sub_F57B
	JSR	sub_F589
	JSR	sub_EDA2
	PLA
	TAX
	JSR	sub_F51D
	LDA	ppu_scroll_x_304
	BEQ	loc_F2E0
	TXA
	PHA
	JSR	sub_ED7C
	JSR	sub_F42F
	JSR	sub_F5A2
	LDA	tilemap_size_307
	STA	tilemapTypeUnk_30B
	LDA	ppu_scroll_x_304
	AND	#$1F
	BEQ	start_read_tilemap_F290
	INC	tilemapTypeUnk_30B

start_read_tilemap_F290:
	LDA	entry_idx_300
	STA	tilemapData_4C
	INX
	STX	roomUnk1_4D
	STY	roomUnk2_4E
	LDA	ppu_unk_byte_309
	STA	tilemap_line_idx_4F
	LDA	#0
	STA	mapLineSize_50
	LDA	#8
	STA	tilemap_line_size_51
	LDA	tilemapTypeUnk_30B
	STA	mapLineWidth_52
	LDA	#1
	STA	mapLineHeight_53
	JSR	tilemap_read_next_chunk_F472
	JSR	sub_F504
	JSR	sub_F57B
	JSR	sub_F589
	PLA
	TAX
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
	LDA	entry_idx_300
	STA	tilemapData_4C
	STX	roomUnk1_4D
	STY	roomUnk2_4E
	LDA	ppu_unk_byte_309
	STA	tilemap_line_idx_4F
	LDA	tilemap_size_307
	STA	mapLineSize_50
	LDA	#$20 
	STA	tilemap_line_size_51
	LDA	tilemapTypeUnk_30B
	STA	mapLineWidth_52
	LDA	#$20 
	STA	mapLineHeight_53
	JSR	tilemap_read_next_chunk_F472
	JSR	sub_F504
	JSR	sub_ED8F
	JSR	sub_EDA2
	LDX	#0
	LDA	#0
	STA	ppu_data_70
	INX
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
	LDA	ppu_unk_byte_309
	STA	tilemapTypeUnk_30B

start_read_tilemap_F344:
	LDA	entry_idx_300
	STA	tilemapData_4C
	STX	roomUnk1_4D
	INY
	STY	roomUnk2_4E
	LDA	#0
	STA	tilemap_line_idx_4F
	LDA	tilemap_size_307
	STA	mapLineSize_50
	LDA	#$20 
	STA	tilemap_line_size_51
	LDA	tilemapTypeUnk_30B
	STA	mapLineWidth_52
	LDA	#$20 
	STA	mapLineHeight_53
	JSR	tilemap_read_next_chunk_F472
	JSR	sub_F504
	JSR	sub_EDA2
	PLA
	TAX
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
	LDA	entry_idx_300
	STA	tilemapData_4C
	STX	roomUnk1_4D
	STY	roomUnk2_4E
	LDA	ppu_unk_byte_309
	STA	tilemap_line_idx_4F
	LDA	tilemap_size_307
	STA	mapLineSize_50
	LDA	#8
	STA	tilemap_line_size_51
	LDA	tilemapTypeUnk_30B
	STA	mapLineWidth_52
	LDA	#8
	STA	mapLineHeight_53
	JSR	tilemap_read_next_chunk_F472
	LDA	ppu_unk_byte_309
	STA	inv_spr_dscr1_30C
	JSR	sub_F5AF
	JSR	sub_F504
	JSR	sub_F57B
	JSR	sub_F589
	JSR	sub_EDA2
	LDX	#0
	LDA	#0
	STA	ppu_data_70
	INX
	JSR	sub_F54A
	LDA	ppu_scroll_y_305
	BEQ	loc_F42B
	TXA
	PHA
	JSR	sub_ED7C
	JSR	sub_F42F
	JSR	sub_F5A2
	LDA	ppu_unk_byte_309
	STA	tilemapTypeUnk_30B
	LDA	ppu_scroll_y_305
	AND	#$1F
	BEQ	start_read_tilemap_F3F2
	INC	tilemapTypeUnk_30B

start_read_tilemap_F3F2:
	LDA	entry_idx_300
	STA	tilemapData_4C
	INY
	STX	roomUnk1_4D
	STY	roomUnk2_4E
	LDA	#0
	STA	tilemap_line_idx_4F
	LDA	tilemap_size_307
	STA	mapLineSize_50
	LDA	#8
	STA	tilemap_line_size_51
	LDA	tilemapTypeUnk_30B
	STA	mapLineWidth_52
	LDA	#8
	STA	mapLineHeight_53
	JSR	tilemap_read_next_chunk_F472
	LDA	#0
	STA	inv_spr_dscr1_30C
	JSR	sub_F5AF
	JSR	sub_F504
	JSR	sub_F57B
	JSR	sub_EDA2
	PLA
	TAX
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
	LDA	#$1E
	STA	ppu_unk_byte_309

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
	LDA	#$20 
	STA	tilemap_size_307

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
	LDA	ptr_0
	PHA
	LDA	ptr_1
	PHA
	LDA	data_2
	PHA
	LDA	data_3
	PHA
	LDA	entry_idx_300
	PHA

get_tilemap_entries_ptr_F486:

	load_ptr tilemap_entries_C000

get_tilemap_entry_offset_F48E:
	LDA	entry_idx_300
	STA	data_2
	LDA	#0
	STA	data_3
	ASL	data_2
	ROL	data_3
	LDA	ptr_0
	CLC
	ADC	data_2
	STA	ptr_0
	LDA	ptr_1
	ADC	data_3
	STA	ptr_1

get_tilemap_entry_ptr_F4A8:
	LDY	#0
	LDA	(ptr_0),Y
	STA	data_2
	INY
	LDA	(ptr_0),Y
	STA	data_3

read_tilemap_entry_data_F4B3:
	LDY	#0
	LDA	(data_2),Y
	STA	tilemaps_horiz_count_311
	INY
	LDA	(data_2),Y
	STA	tilemaps_vert_count_312
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
	ASL	A
	TAY
	INY
	INY

exec_bN_c0_F4D7:
	LDA	(data_2),Y
	STA	bank_to_344
	INY
	LDA	(data_2),Y
	STA	entry_idx_300
	LDA	#0
	STA	bank_command_346
	LDA	#0
	STA	bank_from_343
	JSR	bank_switch_8000

exitFunc_F4EF:
	PLA
	STA	entry_idx_300
	PLA
	STA	data_3
	PLA
	STA	data_2
	PLA
	STA	ptr_1
	PLA
	STA	ptr_0
	PLA
	TAY
	PLA
	TAX
	RTS
; End of function tilemap_read_next_chunk_F472


; =============== S U B	R O U T	I N E =======================================


sub_F504:
	TYA
	AND	#1
	BEQ	loc_F514
	LDA	#0
	STA	data_2
	LDA	#$28 
	STA	data_3
	JMP	locret_F51C
; ---------------------------------------------------------------------------

loc_F514:
	LDA	#0
	STA	data_2
	LDA	#$20 
	STA	data_3

locret_F51C:
	RTS
; End of function sub_F504


; =============== S U B	R O U T	I N E =======================================


sub_F51D:
	TYA
	PHA
	INC	ppu_data_70
	LDA	tilemapTypeUnk_30B
	STA	ppu_data_70,X
	INX
	LDA	data_3
	STA	ppu_data_70,X
	INX
	LDA	data_2
	STA	ppu_data_70,X
	INX
	LDA	tilemapTypeUnk_30B
	AND	#$7F 
	STA	tilemapTypeUnk_30B
	LDY	#0

loc_F53B:
	LDA	tilemapData_4C,Y
	STA	ppu_data_70,X
	INX
	INY
	CPY	tilemapTypeUnk_30B
	BCC	loc_F53B
	PLA
	TAY
	RTS
; End of function sub_F51D


; =============== S U B	R O U T	I N E =======================================


sub_F54A:
	TYA
	PHA
	LDY	#0

loc_F54E:
	INC	ppu_data_70
	LDA	#1
	STA	ppu_data_70,X
	INX
	LDA	data_3
	STA	ppu_data_70,X
	INX
	LDA	data_2
	STA	ppu_data_70,X
	INX
	LDA	tilemapData_4C,Y
	STA	ppu_data_70,X

	add_to_data $8
	
	INX
	INY
	CPY	tilemapTypeUnk_30B
	BCC	loc_F54E
	PLA
	TAY
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
	LDA	tilemapData_4C,X
	STA	unk_5C,X
	INX
	CPX	#8
	BCC	loc_F5D2
	PLA
	TAX
	LDA	entry_idx_300
	STA	tilemapData_4C
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
	LDA	inv_spr_dscr1_30C
	STA	tilemap_line_idx_4F
	LDA	tilemap_size_307
	STA	mapLineSize_50
	LDA	#8
	STA	tilemap_line_size_51
	LDA	tilemapTypeUnk_30B
	STA	mapLineWidth_52
	LDA	#8
	STA	mapLineHeight_53
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
	ASL	A
	ASL	A
	ASL	A
	STA	byte_366
	LDA	byte_358
	ASL	A
	ASL	A
	ASL	A
	STA	byte_36A
	LDA	byte_359
	ASL	A
	ASL	A
	ASL	A
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
	LDA	#$F0 
	STA	byte_200,X

loc_F6C0:
	INX
	INX
	INX
	INX
	CPX	#0
	BNE	loc_F68F
	LDA	byte_357
	STA	ppu_unk_byte_309
	LDA	byte_358
	STA	tilemap_size_307
	LDA	byte_359
	STA	tilemapWidth_308
	LDA	tilemapWidth_308
	LSR	A
	AND	#$FE 
	CLC
	ADC	tilemap_size_307
	STA	tilemap_size_307
	LDA	#0
	STA	inv_spr_dscr1_30C

loc_F6EC:
	LDA	inv_spr_dscr1_30C
	AND	#3
	BEQ	loc_F700
	LDA	tilemap_size_307
	CLC
	ADC	inv_spr_dscr1_30C
	STA	tilemap_size_307
	JMP	loc_F70A
; ---------------------------------------------------------------------------

loc_F700:
	LDA	tilemap_size_307
	SEC
	SBC	inv_spr_dscr1_30C
	STA	tilemap_size_307

loc_F70A:
	LDX	#0
	LDA	#0
	STA	ppu_data_70
	INX
	LDA	#0
	STA	tilemapHeight_30A
	JSR	sub_F921
	JSR	text_unk_func_F80C
	LDA	#1
	STA	tilemapHeight_30A
	INC	ppu_unk_byte_309
	INC	ppu_unk_byte_309
	JSR	sub_F921
	JSR	text_unk_func_F80C
	DEC	ppu_unk_byte_309
	DEC	ppu_unk_byte_309
	LDA	#0
	STA	tilemapHeight_30A
	JSR	sub_F942
	JSR	sub_F9C2
	LDA	#1
	STA	tilemapHeight_30A
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
	LDA	byte_357
	STA	ppu_unk_byte_309
	LDA	byte_358
	STA	tilemap_size_307
	LDA	byte_359
	STA	tilemapWidth_308
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
	LDA	tilemapWidth_308
	STA	inv_spr_dscr1_30C

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
	LDA	tilemap_size_307
	CLC
	ADC	inv_spr_dscr1_30C
	STA	tilemap_size_307

loc_F7B0:
	LDX	#0
	LDA	#0
	STA	ppu_data_70
	INX
	LDA	#0
	STA	tilemapHeight_30A
	JSR	sub_F921
	JSR	sub_F8A1
	LDA	#1
	STA	tilemapHeight_30A
	INC	ppu_unk_byte_309
	INC	ppu_unk_byte_309
	JSR	sub_F921
	JSR	sub_F8A1
	DEC	ppu_unk_byte_309
	DEC	ppu_unk_byte_309
	LDA	#0
	STA	tilemapHeight_30A
	JSR	sub_F942
	JSR	sub_FAAF
	LDA	#1
	STA	tilemapHeight_30A
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
	LDA	#0
	STA	tilemapTypeUnk_30B

loc_F811:
	INC	ppu_data_70
	LDA	#2
	STA	ppu_data_70,X
	INX
	LDA	data_3
	STA	ppu_data_70,X
	INX
	LDA	data_2
	STA	ppu_data_70,X
	INX
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
	LDA	tilemapTypeUnk_30B
	PHA
	LDA	#0
	STA	tilemapTypeUnk_30B

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
	PLA
	STA	tilemapTypeUnk_30B
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
	LDA	ppu_unk_byte_309
	PHA
	LDA	tilemap_size_307
	PHA
	LDA	#0
	STA	tilemapTypeUnk_30B

loc_F8AE:
	TXA
	PHA
	LDA	ppu_unk_byte_309
	PHA
	LDA	tilemap_size_307
	PHA
	JSR	sub_F98B

start_read_tilemap_F8BB:
	LDA	entry_idx_300
	STA	tilemapData_4C
	STX	roomUnk1_4D
	STY	roomUnk2_4E
	LDA	ppu_unk_byte_309
	STA	tilemap_line_idx_4F
	LDA	tilemap_size_307
	STA	mapLineSize_50
	LDA	#$20 
	STA	tilemap_line_size_51
	LDA	#2
	STA	mapLineWidth_52
	LDA	#1
	STA	mapLineHeight_53
	JSR	tilemap_read_next_chunk_F472
	PLA
	STA	tilemap_size_307
	PLA
	STA	ppu_unk_byte_309
	PLA
	TAX
	INC	ppu_data_70
	LDA	#2
	STA	ppu_data_70,X
	INX
	LDA	data_3
	STA	ppu_data_70,X
	INX
	LDA	data_2
	STA	ppu_data_70,X
	INX
	LDY	#0

loc_F8FA:
	LDA	tilemapData_4C,Y
	STA	ppu_data_70,X
	INY
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
	PLA
	STA	tilemap_size_307
	PLA
	STA	ppu_unk_byte_309
	RTS
; End of function sub_F8A1


; =============== S U B	R O U T	I N E =======================================


sub_F921:
	TXA
	PHA
	LDA	ppu_unk_byte_309
	PHA
	LDA	tilemap_size_307
	PHA
	JSR	sub_F98B
	JSR	sub_F504
	JSR	sub_ED8F
	JSR	sub_EDA2
	PLA
	STA	tilemap_size_307
	PLA
	STA	ppu_unk_byte_309
	PLA
	TAX
	RTS
; End of function sub_F921


; =============== S U B	R O U T	I N E =======================================


sub_F942:
	TXA
	PHA
	LDA	ppu_unk_byte_309
	PHA
	LDA	tilemap_size_307
	PHA
	JSR	sub_F98B
	LSR	ppu_unk_byte_309
	LSR	ppu_unk_byte_309
	LSR	tilemap_size_307
	LSR	tilemap_size_307
	JSR	sub_F504
	JSR	sub_F57B
	JSR	sub_F972
	JSR	sub_EDA2
	PLA
	STA	tilemap_size_307
	PLA
	STA	ppu_unk_byte_309
	PLA
	TAX
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
	LDA	ppu_unk_byte_309
	PHA
	LDA	tilemap_size_307
	PHA
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
	ASL	A
	ASL	A
	ASL	A
	ASL	A
	ASL	A
	ASL	A
	ORA	byte_4,Y
	STA	byte_4,Y
	JMP	loc_FA3B
; ---------------------------------------------------------------------------

loc_F9F5:
	LDA	byte_4,Y
	AND	#$CF 
	STA	byte_4,Y
	LDA	byte_35A
	ASL	A
	ASL	A
	ASL	A
	ASL	A
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
	ASL	A
	ASL	A
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
	LDA	byte_4,Y
	STA	tilemapTypeUnk_30B
	INC	ppu_data_70
	LDA	#1
	STA	ppu_data_70,X
	INX
	LDA	data_3
	STA	ppu_data_70,X
	INX
	LDA	data_2
	STA	ppu_data_70,X
	INX
	LDA	tilemapTypeUnk_30B
	STA	ppu_data_70,X
	INX
	PLA
	STA	tilemap_size_307
	PLA
	STA	ppu_unk_byte_309
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
	ASL	A
	ASL	A
	ASL	A
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
	LDA	ppu_unk_byte_309
	PHA
	LDA	tilemap_size_307
	PHA
	JSR	sub_F98B
	LSR	ppu_unk_byte_309
	LSR	ppu_unk_byte_309
	LSR	tilemap_size_307
	LSR	tilemap_size_307

start_read_tilemap_FAC8:
	LDA	entry_idx_300
	STA	tilemapData_4C
	STX	roomUnk1_4D
	STY	roomUnk2_4E
	LDA	ppu_unk_byte_309
	STA	tilemap_line_idx_4F
	LDA	tilemap_size_307
	STA	mapLineSize_50
	LDA	#8
	STA	tilemap_line_size_51
	LDA	#1
	STA	mapLineWidth_52
	LDA	#1
	STA	mapLineHeight_53
	JSR	tilemap_read_next_chunk_F472
	PLA
	STA	tilemap_size_307
	PLA
	STA	ppu_unk_byte_309
	LDA	ppu_unk_byte_309
	PHA
	LDA	tilemap_size_307
	PHA
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
	PLA
	STA	tilemap_size_307
	PLA
	STA	ppu_unk_byte_309
	PLA
	TAX
	INC	ppu_data_70
	LDA	#1
	STA	ppu_data_70,X
	INX
	LDA	data_3
	STA	ppu_data_70,X
	INX
	LDA	data_2
	STA	ppu_data_70,X
	INX
	LDA	byte_4,Y
	STA	ppu_data_70,X
	INX
	RTS
; End of function sub_FAAF


; =============== S U B	R O U T	I N E =======================================


upload_text_palette_to_ppu_FB85:
	LDA	#$C0 
	STA	text_unk_35B
	LDY	#$C

loc_FB8C:
	LDA	TextPalette_FBC2,Y
	STA	palette_bg_321,Y
	INY
	CPY	#$10
	BCC	loc_FB8C
	LDA	#$EA 
	STA	data_2
	LDA	#$FB 
	STA	data_3
	LDA	text_unk_35B
	STA	ptr_0
	LDA	#0
	STA	ptr_1
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
	JSR	ppu_upload_data_C9C7
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
