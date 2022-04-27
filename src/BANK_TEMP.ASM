
.include "includes/ram.inc"
.include "includes/macros.inc"

.org $1234
data:
    NOP
    NOP
    NOP
    NOP

    NOP
    NOP
    NOP
    NOP

start:
    set_ptr data
