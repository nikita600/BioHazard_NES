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

.macro load_data addr

	LDA	#.LOBYTE(addr)
	STA	data_2

	LDA	#.HIBYTE(addr)
	STA	data_3

.endmacro

.macro add_to_data value

	LDA	data_2
	CLC
	ADC	#.LOBYTE(value)
	STA	data_2

	LDA	data_3
	ADC	#.HIBYTE(value)
	STA	data_3

.endmacro