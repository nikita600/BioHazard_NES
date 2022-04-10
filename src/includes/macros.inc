.macro load_ptr ptr
    LDA	#ptr
	STA	ptr_0

	LDA	#ptr+1
	STA	ptr_1
.endmacro