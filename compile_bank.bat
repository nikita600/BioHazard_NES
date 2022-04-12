cc65\bin\ca65.exe "src\BANK_00.ASM" -g -o "Temp\BANK.OBJ"
cc65\bin\ld65.exe -o "Temp\BANK.BIN" -C "src\memory.cfg" "Temp\BANK.OBJ"
pause