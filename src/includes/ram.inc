
; CONSTS
.include "includes/consts/bank_ids.inc"
.include "includes/consts/pad_buttons.inc"

; title screen options
new_game_00 	.SET $00
load_game_01 	.SET $01

; new game options
easy_00     .SET $00
hard_01     .SET $01

; player directions
dir_up_00       .SET $00
dir_down_01     .SET $01
dir_left_02     .SET $02
dir_right_03    .SET $03

; RAM
.include "includes/ram/ram_0.inc"
.include "includes/ram/ram_100.inc"
.include "includes/ram/ram_200.inc"
.include "includes/ram/ram_300.inc"
.include "includes/ram/ram_400.inc"
.include "includes/ram/ram_500.inc"
.include "includes/ram/ram_600.inc"
.include "includes/ram/ram_700.inc"

; PPU REGS
_PPU_PAT_TBL_1 = $1000

_PPU_CTRL = $2000
_PPU_MASK = $2001
_PPU_STATUS = $2002
_PPU_OAM_ADDR = $2003
_PPU_OAM_DATA = $2004
_PPU_SCROLL = $2005
_PPU_ADDR = $2006
_PPU_DATA = $2007 

_PPU_ATTR_TBL_0 = $23C0
_PPU_ATTR_TBL_1 = $2BC0

_PPU_PALETTE = $3F00

; APU REGS
_APU_PULSE1_ENV = $4000
_APU_PULSE1_SWEEP = $4001
_APU_PULSE1_TIME = $4002 
_APU_PULSE1_LEN = $4003 

_APU_PULSE2_ENV = $4004
_APU_PULSE2_SWEEP = $4005
_APU_PULSE2_TIME = $4006 
_APU_PULSE2_LEN = $4007 

_APU_TRI_COUNT = $4008
_APU_TRI_UNUSED = $4009
_APU_TRI_TIME = $400A
_APU_TRI_LEN = $400B

_APU_NOISE_ENV = $400C
_APU_NOISE_UNUSED = $400D
_APU_NOISE_LOOP = $400E
_APU_NOISE_LEN = $400F 

_APU_DMC_FREQ = $4010
_APU_DMC_LOAD = $4011
_APU_DMC_ADDR = 4012
_APU_DMC_LEN = $4013

; STATUS REGS
_PPU_OAM_DMA = $4014
_APU_STATUS = $4015 

; PAD REGS
_PAD0_REG = $4016
_PAD1_REG = $4017

_SAVE_RAM = $6900