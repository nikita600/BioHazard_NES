; ---------------------------------------------------------------------------

pulse_entry	struc ;	(sizeof=0x4)	; XREF:	BANK_12:apu_pulse_timer1_12861A/r
					; BANK_12:stru_12871A/r	...
timer:		.BYTE ?			; XREF:	apu_func_13D575:loc_13D6F1/r
					; music_func_13D804:apu_update_noise_13D988/r
length:		.BYTE ?
envelope:	.BYTE ?
sweep:		.BYTE ?
pulse_entry	ends

; ---------------------------------------------------------------------------

vec2		struc ;	(sizeof=0x2)	; XREF:	BANK_00:stru_C144/r
					; BANK_00:stru_C14A/r ...
width:		.BYTE ?
height:		.BYTE ?
vec2		ends

; ---------------------------------------------------------------------------

mapEntry	struc ;	(sizeof=0x2)	; XREF:	BANK_00:C146/r BANK_00:C148/r ...
bankIdx:	.BYTE ?
mapIdx:		.BYTE ?
mapEntry	ends

; ---------------------------------------------------------------------------

rooms		struc ;	(sizeof=0x4)
size:		vec2 ?
map0:		mapEntry ?
rooms		ends

; ---------------------------------------------------------------------------

sprite_entry	struc ;	(sizeof=0x3)	; XREF:	BANK_01:stru_182C1/r
					; BANK_01:stru_182CA/r ...
width:		.BYTE ?
height:		.BYTE ?
field_2:	.BYTE ?
sprite_entry	ends

; ---------------------------------------------------------------------------

; enum banks
code_0:		 = 0
sprites_1:	 = 1
text_2:		 = 2
glyphs_3:	 = 3
items_spr_4:	 = 4
map_inventory_spr_5: = 5
environment_spr_6: = 6
tilemaps_7:	 = 7
tilemaps_8:	 = 8
tilemaps_9:	 = 9
tilemaps_A:	 = $A
tilemaps_B:	 = $B
tilemaps_C:	 = $C
tilemaps_D:	 = $D
tilemaps_E:	 = $E
tilemaps_F:	 = $F
tilemaps_10:	 = $10
tilemaps_11:	 = $11
banks_12:	 = $12
banks_13:	 = $13

; ---------------------------------------------------------------------------

; enum input
none_0:		 = 0
right_1:	 = 1
left_2:		 = 2
down_4:		 = 4
up_8:		 = 8
start_10:	 = $10
select_20:	 = $20
b_40:		 = $40
a_80:		 = $80
