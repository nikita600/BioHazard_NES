.macro set dst, src
	LDA	src
	STA	dst
.endmacro

.macro set2 dst0, dst1, src
	LDA	src
	STA	dst0
	STA	dst1
.endmacro

.macro set3 dst0, dst1, dst2, src
	LDA	src
	STA	dst0
	STA	dst1
	STA	dst2
.endmacro

.macro set4 dst0, dst1, dst2, dst3, src
	LDA	src
	STA	dst0
	STA	dst1
	STA	dst2
	STA	dst3
.endmacro

.macro set5 dst0, dst1, dst2, dst3, dst4, src
	LDA	src
	STA	dst0
	STA	dst1
	STA	dst2
	STA	dst3
	STA	dst4
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

.macro set_text_args text_idx, char_idx
	LDA	text_idx
	STA	text_idx_35C

	LDA	char_idx
	STA	char_type_id_35D
.endmacro