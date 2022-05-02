; ---------------------------------------------------------------------------

.macro if_a_equal value, branch
	LDA	value
	BEQ	branch
.endmacro

.macro if_a_not_equal value, branch
	LDA	value
	BNE	branch
.endmacro

.macro if_a_lower value, branch
	LDA value
	BCS branch
.endmacro

.macro if_a_greater value, branch
	LDA value
	BCC branch
.endmacro

; ---------------------------------------------------------------------------

.macro if_a_equal_cmp_addr addr, value, branch
	LDA addr
	CMP	value
	BEQ	branch
.endmacro

.macro if_a_equal_cmp value, branch
	CMP	value
	BEQ	branch
.endmacro

.macro if_x_equal_cmp value, branch
	CPX	value
	BEQ	branch
.endmacro

.macro if_y_equal_cmp value, branch
	CPY	value
	BEQ	branch
.endmacro

; ---------------------------------------------------------------------------

.macro if_a_not_equal_cmp_addr addr, value, branch
	LDA addr
	CMP value
	BNE branch
.endmacro

.macro if_a_not_equal_cmp value, branch
	CMP value
	BNE branch
.endmacro

.macro if_x_not_equal_cmp value, branch
	CPX value
	BNE branch
.endmacro

.macro if_y_not_equal_cmp value, branch
	CPY value
	BNE branch
.endmacro

; ---------------------------------------------------------------------------

.macro if_a_lower_cmp_addr addr, value, branch
	LDA addr
	CMP value
	BCS branch
.endmacro

.macro if_a_lower_cmp value, branch
	CMP value
	BCS branch
.endmacro

.macro if_x_lower_cmp value, branch
	CPX value
	BCS branch
.endmacro

.macro if_y_lower_cmp value, branch
	CPY value
	BCS branch
.endmacro

; ---------------------------------------------------------------------------

.macro if_a_greater_cmp_addr addr, value, branch
	LDA addr
	CMP value
	BCC branch
.endmacro


.macro if_a_greater_cmp value, branch
	CMP value
	BCC branch
.endmacro

.macro if_x_greater_cmp value, branch
	CPX value
	BCC branch
.endmacro

.macro if_y_greater_cmp value, branch
	CPY value
	BCC branch
.endmacro

; ---------------------------------------------------------------------------