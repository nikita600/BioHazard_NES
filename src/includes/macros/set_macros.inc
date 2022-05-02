; ---------------------------------------------------------------------------

.macro set dst, src

	LDA	src
	STA	dst

.endmacro

.macro set_inx dst, src

	LDA	src
	STA	dst
	INX

.endmacro

.macro set_iny dst, src

	LDA	src
	STA	dst
	INY

.endmacro

; ---------------------------------------------------------------------------

.macro set_ptr addr

	set ptr_0, #.LOBYTE(addr)
	set ptr_1, #.HIBYTE(addr)

.endmacro

; ---------------------------------------------------------------------------

.macro set_ptr_iny addr

	set ptr_0, #.LOBYTE(addr)
	INY
	set ptr_1, #.HIBYTE(addr)

.endmacro

; ---------------------------------------------------------------------------

.macro set_data addr

	set data_2, #.LOBYTE(addr)
	set data_3, #.HIBYTE(addr) 

.endmacro

; ---------------------------------------------------------------------------