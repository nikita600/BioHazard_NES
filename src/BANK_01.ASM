; Segment type:	Pure code
		;.segment BANK_01 (Sprites)
		* =  $8000

; =============== S U B	R O U T	I N E =======================================

; SPRITE_BANK

bank_switch_18000:
		.include "common/bank_switch_func.asm"

switch_case_8035:
		LDA	bank_to_344
		STA	bank_prev_345
		LDA	#$88 
		STA	bank_switch_flag_6C
		LDA	bank_command_346
		CMP	#0
		BEQ	loc_18053
		CMP	#1
		BEQ	loc_18059
		CMP	#2
		BEQ	loc_1805F
		CMP	#3
		BEQ	loc_18068
		RTS
; ---------------------------------------------------------------------------

loc_18053:	
		JSR	load_tiles_state_1F25D
		JMP	loc_1806B
; ---------------------------------------------------------------------------

loc_18059:	
		JSR	load_obj_tilemap_1F264
		JMP	loc_1806B
; ---------------------------------------------------------------------------

loc_1805F:	
		JSR	load_sprite_to_vram_1F36D
		JSR	load_sprite_tilemap_1F3B8
		JMP	loc_1806B
; ---------------------------------------------------------------------------

loc_18068:	
		JMP	loc_1806B
; ---------------------------------------------------------------------------

loc_1806B:
		LDA	#$FF
		STA	bank_command_346
		LDA	bank_from_343
		STA	bank_to_344
		JMP	bank_switch_18000 ; SPRITE_BANK
; End of function bank_switch_18000

; ---------------------------------------------------------------------------
SpritePalettes_18079:
		.include "sprites/bank_01_palettes.asm"
		
SpriteTileMaps:
		.include "sprites/bank_01_tilemaps.asm"

Sprites:
		.include "sprites/bank_01_sprites.asm"

; =============== S U B	R O U T	I N E =======================================


load_tiles_state_1F25D:
		JSR	load_palettes_to_ram_1F268
		JSR	upload_tiles_to_ppu_1F32A
		RTS
; End of function load_tiles_state_1F25D


; =============== S U B	R O U T	I N E =======================================


load_obj_tilemap_1F264:
		JSR	sub_1F3B1
		RTS
; End of function load_obj_tilemap_1F264


; =============== S U B	R O U T	I N E =======================================


load_palettes_to_ram_1F268:		
		LDA	sprite_type_306
		CMP	#0
		BEQ	loc_1F2C3

palette0_F26F:
		LDA	#0
		STA	sprPalIdx_319
		JSR	get_sprite_palette_ptr_1F2F3
		JSR	copy_sprite_palette_to_ram_1F316

palette1_F27A:
		LDA	#1
		STA	sprPalIdx_319
		JSR	get_sprite_palette_ptr_1F2F3
		LDA	data_2
		CLC
		ADC	#4
		STA	data_2
		LDA	data_3
		ADC	#0
		STA	data_3
		JSR	copy_sprite_palette_to_ram_1F316

palette2_F292:
		LDA	#2
		STA	sprPalIdx_319
		JSR	get_sprite_palette_ptr_1F2F3
		LDA	data_2
		CLC
		ADC	#8
		STA	data_2
		LDA	data_3
		ADC	#0
		STA	data_3
		JSR	copy_sprite_palette_to_ram_1F316

palette3_F2AA:
		LDA	#3
		STA	sprPalIdx_319
		JSR	get_sprite_palette_ptr_1F2F3
		LDA	data_2
		CLC
		ADC	#$C
		STA	data_2
		LDA	data_3
		ADC	#0
		STA	data_3
		JSR	copy_sprite_palette_to_ram_1F316
		RTS
; ---------------------------------------------------------------------------

loc_1F2C3:	
		LDA	#0
		STA	objectIdx_318
		STA	sprPalIdx_319
		JSR	get_sprite_palette_ptr_1F2F3
		JSR	copy_sprite_palette_to_ram_1F316
		LDX	#0

loop_1F2D3:	
		CPX	objArraySize_373
		BEQ	return_1F2F2
		LDA	objIdxArray_375,X
		STA	objectIdx_318
		LDA	objPalIdxArray_3F7,X
		STA	sprPalIdx_319
		TXA
		PHA
		JSR	get_sprite_palette_ptr_1F2F3
		JSR	copy_sprite_palette_to_ram_1F316
		PLA
		TAX
		INX
		JMP	loop_1F2D3
; ---------------------------------------------------------------------------

return_1F2F2:	
		RTS
; End of function load_palettes_to_ram_1F268


; =============== S U B	R O U T	I N E =======================================


get_sprite_palette_ptr_1F2F3:		
		; load_palettes_to_ram_1F268+17p ...
		LDA	#$79 
		STA	ptr_0
		LDA	#$80 
		STA	ptr_1

get_offset_F2FB:
		LDA	objectIdx_318
		ASL	A
		CLC
		ADC	ptr_0
		STA	ptr_0
		LDA	ptr_1
		ADC	#0
		STA	ptr_1

get_ptr_F30A:
		LDY	#0
		LDA	(ptr_0),Y
		STA	data_2
		INY
		LDA	(ptr_0),Y
		STA	data_3
		RTS
; End of function get_sprite_palette_ptr_1F2F3


; =============== S U B	R O U T	I N E =======================================


copy_sprite_palette_to_ram_1F316:	
		; load_palettes_to_ram_1F268+27p ...
		LDY	#0
		LDA	sprPalIdx_319
		ASL	A
		ASL	A
		TAX

loc_1F31E:	
		LDA	(data_2),Y
		STA	sprite_palette_331,X ; "����������������"
		INX
		INY
		CPY	#4
		BCC	loc_1F31E
		RTS
; End of function copy_sprite_palette_to_ram_1F316


; =============== S U B	R O U T	I N E =======================================


upload_tiles_to_ppu_1F32A:		
		LDA	sprite_type_306
		CMP	#0
		BEQ	loc_1F33D
		LDA	#0
		STA	sprite_secondByte_31B
		JSR	load_sprite_to_vram_1F36D
		JSR	upload_to_ppu_1F6D1
		RTS
; ---------------------------------------------------------------------------

loc_1F33D:	
		LDA	#0
		STA	objectIdx_318
		STA	sprite_secondByte_31B
		JSR	load_sprite_to_vram_1F36D
		JSR	upload_to_ppu_1F6D1
		LDX	#0

loc_1F34D:	
		CPX	objArraySize_373
		BEQ	locret_1F36C
		LDA	objIdxArray_375,X
		STA	objectIdx_318
		LDA	unk_401,X
		STA	sprite_secondByte_31B
		TXA
		PHA
		JSR	load_sprite_to_vram_1F36D
		JSR	upload_to_ppu_1F6D1
		PLA
		TAX
		INX
		JMP	loc_1F34D
; ---------------------------------------------------------------------------

locret_1F36C:	
		RTS
; End of function upload_tiles_to_ppu_1F32A


; =============== S U B	R O U T	I N E =======================================


load_sprite_to_vram_1F36D:		
		; upload_tiles_to_ppu_1F32A+Cp	...
		LDA	#$A1 
		STA	ptr_0
		INY
		LDA	#$93 
		STA	ptr_1

get_offset_F376:; spriteIdx
		LDA	objectIdx_318
		ASL	A
		CLC
		ADC	ptr_0
		STA	ptr_0
		LDA	ptr_1
		ADC	#0
		STA	ptr_1

get_ptr_F385:
		LDY	#0
		LDA	(ptr_0),Y
		STA	data_2
		INY
		LDA	(ptr_0),Y
		STA	data_3

get_sprite_length_F390:
		LDY	#0
		LDA	(data_2),Y
		STA	sprite_length_30F

get_sprite_descr2_F397:
		LDA	sprite_secondByte_31B
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
		RTS
; End of function load_sprite_to_vram_1F36D


; =============== S U B	R O U T	I N E =======================================


sub_1F3B1:	
		JSR	load_sprite_tilemap_1F3B8
		JSR	sub_1F416
		RTS
; End of function sub_1F3B1


; =============== S U B	R O U T	I N E =======================================


load_sprite_tilemap_1F3B8:		
		; sub_1F3B1p
		LDA	#$5F 
		STA	data_2
		INY
		LDA	#$82 
		STA	data_3

get_container_offset_F3C1:
		LDA	objectIdx_318
		ASL	A
		CLC
		ADC	data_2
		STA	data_2
		LDA	data_3
		ADC	#0
		STA	data_3

get_container_ptr_F3D0:
		LDY	#0
		LDA	(data_2),Y
		STA	ptr_0
		INY
		LDA	(data_2),Y
		STA	ptr_1

get_tilemap_offset_F3DB:
		LDA	objMapIdx_316
		ASL	A
		CLC
		ADC	ptr_0
		STA	ptr_0
		LDA	ptr_1
		ADC	#0
		STA	ptr_1

get_tilemap_ptr_F3EA:
		LDY	#0
		LDA	(ptr_0),Y
		STA	data_2
		INY
		LDA	(ptr_0),Y
		STA	data_3

get_width_F3F5:
		LDY	#0
		LDA	(data_2),Y
		STA	tilemapWidth_308
		INY

get_height_F3FD:
		LDA	(data_2),Y
		STA	tilemapHeight_30A
		INY

get_frame_count_F403:
		LDA	(data_2),Y
		STA	tilemapFrameCount_30D

add_offset_F408:
		LDA	data_2
		CLC
		ADC	#3
		STA	data_2
		LDA	data_3
		ADC	#0
		STA	data_3
		RTS
; End of function load_sprite_tilemap_1F3B8


; =============== S U B	R O U T	I N E =======================================


sub_1F416:	
		LDA	#0
		CLC
		ADC	byte_31A
		STA	ptr_0
		LDA	#2
		ADC	#0
		STA	ptr_1
		LDA	byte_317
		AND	#$40 
		CMP	#$40 
		BNE	loc_1F430
		JMP	loc_1F4CA
; ---------------------------------------------------------------------------

loc_1F430:	
		LDA	byte_317
		AND	#$80 
		CMP	#$80 
		BNE	loc_1F43C
		JMP	loc_1F559
; ---------------------------------------------------------------------------

loc_1F43C:	
		LDX	#0
		LDY	#0

loc_1F440:	
		LDA	byte_36A
		PHA
		LDA	byte_36B
		PHA
		LDA	#0
		STA	tilemapTypeUnk_30B

loc_1F44D:	
		JSR	sub_1F5FF
		LDA	ppu_unk_byte_309
		STA	(ptr_0),Y
		INY
		TYA
		PHA
		LDY	tilemapTypeUnk_30B
		LDA	(data_2),Y
		CLC
		ADC	sprite_secondByte_31B
		STA	inv_spr_dscr1_30C
		PLA
		TAY
		LDA	inv_spr_dscr1_30C
		STA	(ptr_0),Y
		INY
		LDA	byte_317
		STA	(ptr_0),Y
		INY
		LDA	tilemap_size_307
		STA	(ptr_0),Y
		INY
		LDA	byte_36A
		CLC
		ADC	#8
		STA	byte_36A
		LDA	byte_36B
		ADC	#0
		STA	byte_36B
		INC	tilemapTypeUnk_30B
		LDA	tilemapTypeUnk_30B
		CMP	tilemapWidth_308
		BCC	loc_1F44D
		PLA
		STA	byte_36B
		PLA
		STA	byte_36A
		LDA	data_2
		CLC
		ADC	tilemapWidth_308
		STA	data_2
		LDA	data_3
		ADC	#0
		STA	data_3
		LDA	byte_366
		CLC
		ADC	#8
		STA	byte_366
		LDA	byte_367
		ADC	#0
		STA	byte_367
		INX
		CPX	tilemapHeight_30A
		BEQ	loc_1F4C4
		JMP	loc_1F440
; ---------------------------------------------------------------------------

loc_1F4C4:	
		LDA	#0
		STA	byte_317
		RTS
; ---------------------------------------------------------------------------

loc_1F4CA:	
		LDX	#0
		LDY	#0

loc_1F4CE:	
		LDA	byte_36A
		PHA
		LDA	byte_36B
		PHA
		LDA	tilemapWidth_308
		STA	tilemapTypeUnk_30B

loc_1F4DC:	
		JSR	sub_1F5FF
		LDA	ppu_unk_byte_309
		STA	(ptr_0),Y
		INY
		TYA
		PHA
		LDY	tilemapTypeUnk_30B
		DEY
		LDA	(data_2),Y
		CLC
		ADC	sprite_secondByte_31B
		STA	inv_spr_dscr1_30C
		PLA
		TAY
		LDA	inv_spr_dscr1_30C
		STA	(ptr_0),Y
		INY
		LDA	byte_317
		STA	(ptr_0),Y
		INY
		LDA	tilemap_size_307
		STA	(ptr_0),Y
		INY
		LDA	byte_36A
		CLC
		ADC	#8
		STA	byte_36A
		LDA	byte_36B
		ADC	#0
		STA	byte_36B
		DEC	tilemapTypeUnk_30B
		LDA	tilemapTypeUnk_30B
		CMP	#0
		BNE	loc_1F4DC
		PLA
		STA	byte_36B
		PLA
		STA	byte_36A
		LDA	data_2
		CLC
		ADC	tilemapWidth_308
		STA	data_2
		LDA	data_3
		ADC	#0
		STA	data_3
		LDA	byte_366
		CLC
		ADC	#8
		STA	byte_366
		LDA	byte_367
		ADC	#0
		STA	byte_367
		INX
		CPX	tilemapHeight_30A
		BEQ	loc_1F553
		JMP	loc_1F4CE
; ---------------------------------------------------------------------------

loc_1F553:	
		LDA	#0
		STA	byte_317
		RTS
; ---------------------------------------------------------------------------

loc_1F559:	
		LDY	tilemapHeight_30A
		DEY

loc_1F55D:	
		CPY	#0
		BEQ	loc_1F572
		LDA	data_2
		CLC
		ADC	tilemapWidth_308
		STA	data_2
		LDA	data_3
		CLC
		STA	data_3
		DEY
		JMP	loc_1F55D
; ---------------------------------------------------------------------------

loc_1F572:	
		LDX	#0
		LDY	#0

loc_1F576:	
		LDA	byte_36A
		PHA
		LDA	byte_36B
		PHA
		LDA	#0
		STA	tilemapTypeUnk_30B

loc_1F583:	
		JSR	sub_1F5FF
		LDA	ppu_unk_byte_309
		STA	(ptr_0),Y
		INY
		TYA
		PHA
		LDY	tilemapTypeUnk_30B
		LDA	(data_2),Y
		CLC
		ADC	sprite_secondByte_31B
		STA	inv_spr_dscr1_30C
		PLA
		TAY
		LDA	inv_spr_dscr1_30C
		STA	(ptr_0),Y
		INY
		LDA	byte_317
		STA	(ptr_0),Y
		INY
		LDA	tilemap_size_307
		STA	(ptr_0),Y
		INY
		LDA	byte_36A
		CLC
		ADC	#8
		STA	byte_36A
		LDA	byte_36B
		ADC	#0
		STA	byte_36B
		DEC	tilemapTypeUnk_30B
		LDA	tilemapTypeUnk_30B
		CMP	#0
		BNE	loc_1F583
		PLA
		STA	byte_36B
		PLA
		STA	byte_36A
		LDA	data_2
		SEC
		SBC	tilemapWidth_308
		STA	data_2
		LDA	data_3
		SBC	#0
		STA	data_3
		LDA	byte_366
		CLC
		ADC	#8
		STA	byte_366
		LDA	byte_367
		ADC	#0
		STA	byte_367
		INX
		CPX	tilemapHeight_30A
		BEQ	loc_1F5F9
		JMP	loc_1F576
; ---------------------------------------------------------------------------

loc_1F5F9:	
		LDA	#0
		STA	byte_317
		RTS
; End of function sub_1F416


; =============== S U B	R O U T	I N E =======================================


sub_1F5FF:	
		; sub_1F416:loc_1F4DCp	...
		LDA	ppu_scroll_x_304
		STA	byte_36C
		LDA	ppu_unk_byte_302
		STA	byte_36D
		LDA	ppu_scroll_y_305
		STA	byte_368
		LDA	ppu_unk_byte_303
		STA	byte_369
		JSR	sub_1F6AB
		LDA	byte_36A
		SEC
		SBC	byte_36C
		LDA	byte_36B
		SBC	byte_36D
		BCC	loc_1F68D
		LDA	byte_366
		SEC
		SBC	byte_368
		LDA	byte_367
		SBC	byte_369
		BCC	loc_1F68D
		INC	byte_36D
		LDA	byte_368
		CLC
		ADC	#$F0 
		STA	byte_368
		LDA	byte_369
		ADC	#0
		STA	byte_369
		LDA	byte_36C
		SEC
		SBC	byte_36A
		LDA	byte_36D
		SBC	byte_36B
		BCC	loc_1F68D
		LDA	byte_36C
		CMP	byte_36A
		BNE	loc_1F66B
		LDA	byte_36D
		CMP	byte_36B
		BEQ	loc_1F68D

loc_1F66B:	
		LDA	byte_368
		SEC
		SBC	byte_366
		LDA	byte_369
		SBC	byte_367
		BCC	loc_1F68D
		LDA	byte_368
		CMP	byte_366
		BNE	loc_1F693
		LDA	byte_369
		CMP	byte_367
		BEQ	loc_1F68D
		JMP	loc_1F693
; ---------------------------------------------------------------------------

loc_1F68D:	
		; sub_1F5FF+37j ...
		LDA	#$F0 
		STA	ppu_unk_byte_309
		RTS
; ---------------------------------------------------------------------------

loc_1F693:	
		; sub_1F5FF+8Bj
		LDA	byte_36A
		SEC
		SBC	byte_36C
		STA	tilemap_size_307
		LDA	byte_366
		SEC
		SBC	byte_368
		SEC
		SBC	#$10
		STA	ppu_unk_byte_309
		RTS
; End of function sub_1F5FF


; =============== S U B	R O U T	I N E =======================================


sub_1F6AB:	
		TYA
		PHA
		LDY	byte_369
		LDA	#0
		STA	byte_369

loc_1F6B5:	
		CPY	#0
		BEQ	loc_1F6CE
		LDA	byte_368
		CLC
		ADC	#$F0 
		STA	byte_368
		LDA	byte_369
		ADC	#0
		STA	byte_369
		DEY
		JMP	loc_1F6B5
; ---------------------------------------------------------------------------

loc_1F6CE:	
		PLA
		TAY
		RTS
; End of function sub_1F6AB


; =============== S U B	R O U T	I N E =======================================


upload_to_ppu_1F6D1:
		; upload_tiles_to_ppu_1F32A+1Ep ...
		LDY	#0
		LDA	(data_2),Y
		STA	tilemapWidth_308
		LDA	data_2
		CLC
		ADC	#2
		STA	data_2
		LDA	data_3
		ADC	#0
		STA	data_3
		LDX	#0

loc_1F6E7:	
		LDA	ptr_1
		STA	_PPU_ADDR
		LDA	ptr_0
		STA	_PPU_ADDR
		LDY	#0

loc_1F6F3:	
		LDA	(data_2),Y
		STA	_PPU_DATA
		INY
		CPY	#$10
		BCC	loc_1F6F3
		LDA	ptr_0
		CLC
		ADC	#$10
		STA	ptr_0
		LDA	ptr_1
		ADC	#0
		STA	ptr_1
		LDA	data_2
		CLC
		ADC	#$10
		STA	data_2
		LDA	data_3
		ADC	#0
		STA	data_3
		INX
		CPX	tilemapWidth_308
		BCC	loc_1F6E7
		RTS
; End of function upload_to_ppu_1F6D1



Common_Code_01
		.include "common/common_funcs.asm"


; ---------------------------------------------------------------------------
		.BYTE $8B,$46,$1E, $B,$46,$1C,$75,  3,$E9,$CB,	0,$8B,$46, $E,$85,$C0
		.BYTE $78,  3,$E9,$C1,	0,$C4,$76,$10,$26,$8A,	4,$30,$E4,$85,$C0,$75
		.BYTE	3,$E9,$B2,  0,$C7,$46, $C,  0,	0,$C4,$76,$10,$26,$8A,	4,$30
		.BYTE $E4,$85,$C0,$89,$46,  0,$74,$1D,$8A,$5E,$14,$30,$FF,$3B,$C3,$74
		.BYTE $14,$8B,$46, $C,$FF,$46, $C,$8B,$F8,$FF,$46,$10,$26,$8A,	4,$88
		.BYTE $85,$81,$5C,$EB,$D4,$8A,$46,$14,$30,$E4,$C4,$76,$10,$26,$8A,$1C
		.BYTE $30,$FF,$3B,$D8,$75,  3,$FF,$46,$10,$A0,$C6,  0,$30,$E4,$8B,$76
		.BYTE  $C,$8A,$9C,$80,$5C,$30,$FF,$3B,$D8,$89,$46,  4,$74,$16,$C4,$7E
		.BYTE $1C,$26,$8A,$1D,$30,$FF,$3B,$D8,$74, $A,$A0,$C6,	0,$88,$84,$81
		.BYTE $5C,$FF,$46, $C,$8B,$76, $C,$C6,$84,$81,$5C,  0,$FF,$76,$1E,$FF
		.BYTE $76,$1C,$1E,$B8,$81,$5C,$50,$9A,$41,  3,$FA, $B,$8B,$E5,$B8,  4
		.BYTE	0,$50,$1E,$B8,$81,$5C,$50,$9A,	3,  0,$97,$1F,$8B,$E5,$89,$46
		.BYTE  $E,$E9,$47,$FF,$FF,$76,$1E,$FF,$76,$1C,$1E,$B8,$81,$5C,$50,$9A
		.BYTE $7B,  3,$FA, $B,$8B,$E5,$8B,$46, $E,$83,$C4,$16,$5D,$CB,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	3,  0,$4C,$43,$20,$33
		.BYTE $2E,$30,$30,  0,	7, $A,$ED,$30,$B0,  7,	0,  8,$C0,$EC,	0,  0
		.BYTE $EA, $B,	0,  0,$21,$22,	0,  0,$6D,$31,	0,  0,$3E,$5F,$30,  0
		.BYTE	0,  0,$57,$53,$70,$62,	1,  0,$C0,$EC,	0,  0,$D8,  7,$ED,$30
		.BYTE $B0,  7,$ED,$30,	4,  0,	9,  0,$ED,  7,$ED,$30,	0,  0,$D8, $B
		.BYTE $E2,  0,	6,  1,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	1,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0
aInvalidStackSizeInsu_6:.BYTE 'Invalid stack size',$D,$A
		.BYTE '$Insufficient memory',$D,$A
		.BYTE '$',$A
		.BYTE '2500 A.D. Linker  Copyright (C) 1985  -  Version 4.01f',$A
		.BYTE $A,0
		.BYTE $18
aFListingDestinationN_6:.BYTE 'F',$5C,'Listing Destination  (N, T, D, E, L, P, <CR> = N) : ',0
aErrorOnlyListingDest_7:.BYTE 'Error Only Listing Destination  (T, D, P, <CR> = T) : ',0
aListOnOffListingDes_16:.BYTE 'LIST ON/OFF Listing Destination  (T, D, P, <CR> = T) : ',0
aEnterRunTimeSelecti_16:.BYTE $A
		.BYTE $A
		.BYTE 'Enter Run Time Selection : ',0
		.BYTE $A,0
aAssemblyTerminatedB_14:.BYTE 'Assembly Terminated By Operator',$A
		.BYTE $A,0
aCanTCreateDiskListi_16:.BYTE 'Can',$27,'t Create Disk Listing File',$A,0
aActiveCommands_17:.BYTE $A
		.BYTE '                         ***** Active Commands *****',$A
		.BYTE $A,0
aCtrlSStopOutput_16:.BYTE '                           Ctrl S = Stop Output',$A,0
aCtrlQStartOutput_17:.BYTE '                           Ctrl Q = Start Output',$A,0
aEscCStopAssembly_17:.BYTE '                           Esc  C = Stop Assembly',$A,0
aEscTTerminalOutput_17:.BYTE '                           Esc  T = Terminal Output',$A,0
aEscPPrinterOutput_17:.BYTE '                           Esc  P = Printer Output',$A,0
aEscDDiskOutput_17:.BYTE '                           Esc  D = Disk Output',$A,0
aEscMMultipleOutput_17:.BYTE '                           Esc  M = Multiple Output',$A,0
aEscNNoOutput_18:.BYTE '                           Esc  N = No Output',$A
		.BYTE $A,0
aRenameFileError_17:.BYTE 'Rename File Error',$A,0
aPage4u_17:	.BYTE 'Page %4u',0
aLib_17:	.BYTE 'LIB',0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE	0
aC_17:		.BYTE '%c',0
		.BYTE  $A
aMaximumNumberOfDiff_18:.BYTE 'Maximum Number of Different Sections (%d) Exceeded.  Link Term'
		.BYTE 'inated.',$A
		.BYTE $A,0
aS_17:		.BYTE '%s',0
		.BYTE	0
aDiskListingFilename_17:.BYTE 'Disk Listing  Filename : ',0
aSymbolTableFilename_17:.BYTE 'Symbol Table  Filename : ',0
aFormat_17:	.BYTE 'Format   : ',0
aLinkerOutputFilenam_17:.BYTE 'Linker Output Filename : ',0
aMicrotek_17:	.BYTE 'Microtek',0
aZax_17:	.BYTE 'Zax',0
aAbbreviated2500A_d__17:.BYTE 'Abbreviated 2500 A.D.',0
a2500A_d__18:	.BYTE '2500 A.D.',0
aNoneSpecified_17:.BYTE	'<None Specified>',0
aLinkErrors_18:	.BYTE $A
		.BYTE '         Link Errors :  ',0
aOutputFormat_18:.BYTE '         Output Format :  ',0
aExecutable_17:	.BYTE 'Executable',0
aIntelHex_17:	.BYTE 'Intel Hex',0
aExtendedIntelHex_17:.BYTE 'Extended Intel Hex',0
aTektronixHex_17:.BYTE 'Tektronix Hex',0
aMotorolaS1_17:	.BYTE 'Motorola S1',0
		.BYTE	0
aMotorolaS_17:	.BYTE 'Motorola S'


		.WORD NMI_1F7E5
		.WORD SpritePalettes_18079
		.WORD exit_1F85C
; end of 'BANK_01'

; ===========================================================================