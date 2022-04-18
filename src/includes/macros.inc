.macro load_ptr addr

    LDA	#.LOBYTE(addr)
	STA	ptr_0

	LDA	#.HIBYTE(addr)
	STA	ptr_1
.endmacro

.macro load_ptr_iny addr

    LDA	#.LOBYTE(addr)
	STA	ptr_0

	INY

	LDA	#.HIBYTE(addr)
	STA	ptr_1
.endmacro