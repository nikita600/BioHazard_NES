; ---------------------------------------------------------------------------

.macro add_to_ptr value

	add_to ptr_0, ptr_1, #.LOBYTE(value), #.HIBYTE(value)

.endmacro

; ---------------------------------------------------------------------------

.macro add_to_ptr_addr value

	add_to ptr_0, ptr_1, value, value+1

.endmacro

; ---------------------------------------------------------------------------

.macro add_to_ptr_byte value

	add_to ptr_0, ptr_1, value, #0

.endmacro

; ---------------------------------------------------------------------------

.macro add_to_data value

	add_to data_2, data_3, #.LOBYTE(value), #.HIBYTE(value)

.endmacro

; ---------------------------------------------------------------------------