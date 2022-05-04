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

.macro set_ptr addr
	set ptr_0, #.LOBYTE(addr)
	set ptr_1, #.HIBYTE(addr)
.endmacro

.macro set_ptr_iny addr
	set ptr_0, #.LOBYTE(addr)
	INY
	set ptr_1, #.HIBYTE(addr)
.endmacro

.macro set_data addr
	set data_2, #.LOBYTE(addr)
	set data_3, #.HIBYTE(addr) 
.endmacro

.macro set_byte_to_word addr, value
	set addr, value
	set addr+1, #0
.endmacro

.macro set_byte_to_word_const addr, value
	set addr, #.LOBYTE(value)
	set addr+1, #0
.endmacro

.macro set_word_to_word addr, value
	set addr, value
	set addr+1, value+1
.endmacro

.macro set_word_to_word_const addr, value
	set addr, #.LOBYTE(value)
	set addr+1, #.HIBYTE(value)
.endmacro