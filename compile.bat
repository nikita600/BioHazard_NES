set bank_id=02
set cc65_folder=bin\cc65\bin

%cc65_folder%\ca65.exe "src\BANK_%bank_id%.ASM" -g -o "Temp\BANK_%bank_id%.OBJ"
%cc65_folder%\ld65.exe -o "Temp\BANK_%bank_id%.BIN" -C "src\memory.cfg" "Temp\BANK_%bank_id%.OBJ"
echo "=== OLD BANK ==="
bin\m3checksum.exe "Temp\BANK_%bank_id%.BIN"
echo "=== NEW BANK ==="
bin\m3checksum.exe "BANKS\%bank_id%.BIN"

pause