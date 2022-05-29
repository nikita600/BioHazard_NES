; ---------------------------------------------------------------------------

.macro IF_A_EQUAL value, branch
	LDA	value
	BEQ	branch
.endmacro

.macro IF_A_NOT_EQUAL value, branch
	LDA	value
	BNE	branch
.endmacro

; ---------------------------------------------------------------------------

.macro IF_A_EQUAL_CMP_ADDR addr, value, branch
	LDA addr
	CMP	value
	BEQ	branch
.endmacro

.macro IF_A_EQUAL_CMP value, branch
	CMP	value
	BEQ	branch
.endmacro

.macro IF_X_EQUAL_CMP value, branch
	CPX	value
	BEQ	branch
.endmacro

.macro IF_Y_EQUAL_CMP value, branch
	CPY	value
	BEQ	branch
.endmacro

; ---------------------------------------------------------------------------

.macro IF_A_NOT_EQUAL_CMP_ADDR addr, value, branch
	LDA addr
	CMP value
	BNE branch
.endmacro

.macro IF_A_NOT_EQUAL_CMP value, branch
	CMP value
	BNE branch
.endmacro

.macro IF_X_NOT_EQUAL_CMP value, branch
	CPX value
	BNE branch
.endmacro

.macro IF_Y_NOT_EQUAL_CMP value, branch
	CPY value
	BNE branch
.endmacro

; ---------------------------------------------------------------------------

.macro IF_A_LOWER_CMP_ADDR addr, value, branch
	LDA addr
	CMP value
	BCS branch
.endmacro

.macro IF_A_LOWER_CMP value, branch
	CMP value
	BCS branch
.endmacro

.macro IF_X_LOWER_CMP value, branch
	CPX value
	BCS branch
.endmacro

; ---------------------------------------------------------------------------

.macro IF_A_GREATER_CMP_ADDR addr, value, branch
	LDA addr
	CMP value
	BCC branch
.endmacro

.macro IF_A_GREATER_CMP value, branch
	CMP value
	BCC branch
.endmacro

.macro IF_X_GREATER_CMP value, branch
	CPX value
	BCC branch
.endmacro

.macro IF_Y_GREATER_CMP value, branch
	CPY value
	BCC branch
.endmacro

; ---------------------------------------------------------------------------