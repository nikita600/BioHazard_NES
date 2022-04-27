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

.macro set_data2 value

	set data_2, value

.endmacro

; ---------------------------------------------------------------------------

.macro set_data3 value

	set data_3, value

.endmacro

; ---------------------------------------------------------------------------