cc65\bin\ca65.exe "src\SPRITES\BANK_0\SPR_00.ASM" -g -o "Temp\SPR_00.OBJ"
cc65\bin\ld65.exe -o "Temp\SPR_00.BIN" -C "src\memory.cfg" "Temp\SPR_00.OBJ"
pause