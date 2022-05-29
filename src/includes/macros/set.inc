.macro SET dst, src
	LDA	src
	STA	dst
.endmacro

.macro SET2 dst0, dst1, src
	LDA	src
	STA	dst0
	STA	dst1
.endmacro

.macro SET3 dst0, dst1, dst2, src
	LDA	src
	STA	dst0
	STA	dst1
	STA	dst2
.endmacro

.macro SET4 dst0, dst1, dst2, dst3, src
	LDA	src
	STA	dst0
	STA	dst1
	STA	dst2
	STA	dst3
.endmacro

.macro SET5 dst0, dst1, dst2, dst3, dst4, src
	LDA	src
	STA	dst0
	STA	dst1
	STA	dst2
	STA	dst3
	STA	dst4
.endmacro

.macro SET_INX dst, src
	LDA	src
	STA	dst
	INX
.endmacro

.macro SET_INY dst, src
	LDA	src
	STA	dst
	INY
.endmacro

.macro SET_BYTE_TO_WORD addr, value
	SET addr, value
	SET addr+1, #0
.endmacro

.macro SET_WORD_TO_WORD addr, value
	SET addr, value
	SET addr+1, value+1
.endmacro

.macro SET_WORD_TO_WORD_CONST addr, value
	SET addr, #.LOBYTE(value)
	SET addr+1, #.HIBYTE(value)
.endmacro

.macro SET_TEXT_ARGS text_idx, char_idx
	LDA	text_idx
	STA	text_idx_35C

	LDA	char_idx
	STA	char_type_id_35D
.endmacro