@echo off

set cc65_folder=bin\cc65\bin

::call :compile_bank TEMP

call :compile_bank 00
call :compile_bank 01
call :compile_bank 02
call :compile_bank 03
call :compile_bank 04
call :compile_bank 05
call :compile_bank 06
call :compile_bank 07
call :compile_bank 08
call :compile_bank 09
call :compile_bank 0A
call :compile_bank 0B
call :compile_bank 0C
call :compile_bank 0D
call :compile_bank 0E
call :compile_bank 0F
call :compile_bank 10
call :compile_bank 11
call :compile_bank 12
call :compile_bank 13

call :merge_banks Temp ROM.BIN

copy /b bin\HEAD.BIN+ROM.BIN+bin\TAIL.BIN ROM.NES

call :check_checksum ORIG.NES ROM.NES

goto :finish


:: -------------------------------- Functions --------------------------------
:compile_bank

set ASM_FILE="src\BANK_%1.ASM"
set OBJ_FILE="Temp\BANK_%1.OBJ"
set BIN_FILE="Temp\BANK_%1.BIN"
set OLD_FILE="BANKS\%1.BIN"

del %OBJ_FILE%
del %BIN_FILE%

if exist %ASM_FILE% echo "Compile %ASM_FILE% -> %OBJ_FILE%"
if exist %ASM_FILE% %cc65_folder%\ca65.exe %ASM_FILE% -g -o %OBJ_FILE% --listing %OBJ_FILE%.ASM

if exist %OBJ_FILE% echo "Linking %OBJ_FILE% -> %BIN_FILE%"
if exist %OBJ_FILE% %cc65_folder%\ld65.exe -o %BIN_FILE% -C "src\memory.cfg" %OBJ_FILE%

call :check_checksum %OLD_FILE% %BIN_FILE%

echo.

goto :eof

:check_checksum

if exist %1 echo "OLD:"
if exist %1 bin\m3checksum.exe %1

if exist %2 echo "NEW:"
if exist %2 bin\m3checksum.exe %2

goto :eof

:merge_banks
copy /b %1\BANK_00.BIN + %1\BANK_01.BIN + %1\BANK_02.BIN + %1\BANK_03.BIN + %1\BANK_04.BIN + %1\BANK_05.BIN + %1\BANK_06.BIN + %1\BANK_07.BIN + %1\BANK_08.BIN + %1\BANK_09.BIN + %1\BANK_0A.BIN + %1\BANK_0B.BIN + %1\BANK_0C.BIN + %1\BANK_0D.BIN + %1\BANK_0E.BIN + %1\BANK_0F.BIN + %1\BANK_10.BIN + %1\BANK_11.BIN + %1\BANK_12.BIN + %1\BANK_13.BIN %2

goto :eof
:: ---------------------------------------------------------------------------


:finish
echo "Finished!"
pause