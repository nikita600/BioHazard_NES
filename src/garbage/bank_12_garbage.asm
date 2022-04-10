.BYTE $C3,$74,$14,$8B,$46, $C,$FF,$46, $C,$8B,$F8,$FF,$46,$10,$26,$8A
		.BYTE	4,$88,$85,$81,$5C,$EB,$D4,$8A,$46,$14,$30,$E4,$C4,$76,$10,$26
		.BYTE $8A,$1C,$30,$FF,$3B,$D8,$75,  3,$FF,$46,$10,$A0,$C6,  0,$30,$E4
		.BYTE $8B,$76, $C,$8A,$9C,$80,$5C,$30,$FF,$3B,$D8,$89,$46,  4,$74,$16
		.BYTE $C4,$7E,$1C,$26,$8A,$1D,$30,$FF,$3B,$D8,$74, $A,$A0,$C6,	0,$88
		.BYTE $84,$81,$5C,$FF,$46, $C,$8B,$76, $C,$C6,$84,$81,$5C,  0,$FF,$76
		.BYTE $1E,$FF,$76,$1C,$1E,$B8,$81,$5C,$50,$9A,$41,  3,$FA, $B,$8B,$E5
		.BYTE $B8,  4,	0,$50,$1E,$B8,$81,$5C,$50,$9A,	3,  0,$97,$1F,$8B,$E5
		.BYTE $89,$46, $E,$E9,$47,$FF,$FF,$76,$1E,$FF,$76,$1C,$1E,$B8,$81,$5C
		.BYTE $50,$9A,$7B,  3,$FA, $B,$8B,$E5,$8B,$46, $E,$83,$C4,$16,$5D,$CB
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	3,  0,$4C,$43
		.BYTE $20,$33,$2E,$30,$30,  0,	7, $A,$ED,$30,$B0,  7,	0,  8,$C0,$EC
		.BYTE	0,  0,$EA, $B,	0,  0,$21,$22,	0,  0,$6D,$31,	0,  0,$3E,$5F
		.BYTE $30,  0,	0,  0,$57,$53,$70,$62,	1,  0,$C0,$EC,	0,  0,$D8,  7
		.BYTE $ED,$30,$B0,  7,$ED,$30,	4,  0,	9,  0,$ED,  7,$ED,$30,	0,  0
		.BYTE $D8, $B,$E2,  0,	6,  1,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	1,  0,	0,  0,	0,  0,	0,  0,	0,  0,	0
aInvalidStackSizeInsu_0:.BYTE 'Invalid stack size',$D,$A
		.BYTE '$Insufficient memory',$D,$A
		.BYTE '$',$A
		.BYTE '2500 A.D. Linker  Copyright (C) 1985  -  Version 4.01f',$A
		.BYTE $A,0
		.BYTE $18
aFListingDestinationN_0:.BYTE 'F',$5C,'Listing Destination  (N, T, D, E, L, P, <CR> = N) : ',0
aErrorOnlyListingDest_0:.BYTE 'Error Only Listing Destination  (T, D, P, <CR> = T) : ',0
aListOnOffListingDest_1:.BYTE 'LIST ON/OFF Listing Destination  (T, D, P, <CR> = T) : ',0
		.BYTE  $A
		.BYTE  $A
aEnterRunTimeSelectio_1:.BYTE 'Enter Run Time Selection : ',0
		.BYTE  $A
		.BYTE	0
aAssemblyTerminatedBy_1:.BYTE 'Assembly Terminated By Operator',$A
		.BYTE $A,0
aCanTCreateDiskListin_1:.BYTE 'Can',$27,'t Create Disk Listing File',$A,0
		.BYTE  $A
aActiveCommands_1:.BYTE	'                         ***** Active Commands *****',$A
		.BYTE $A,0
aCtrlSStopOutput_1:.BYTE '                           Ctrl S = Stop Output',$A,0
aCtrlQStartOutput_1:.BYTE '                           Ctrl Q = Start Output',$A,0
aEscCStopAssembly_1:.BYTE '                           Esc  C = Stop Assembly',$A,0
aEscTTerminalOutput_1:.BYTE '                           Esc  T = Terminal Output',$A,0
aEscPPrinterOutput_1:.BYTE '                           Esc  P = Printer Output',$A,0
aEscDDiskOutput_1:.BYTE	'                           Esc  D = Disk Output',$A,0
aEscMMultipleOutput_1:.BYTE '                           Esc  M = Multiple Output',$A,0
aEscNNoOutput_1:.BYTE '                           Esc  N = No Output',$A
		.BYTE $A,0
aRenameFileError_1:.BYTE 'Rename File Error',$A,0
aPage4u_1:	.BYTE 'Page %4u',0
aLib_1:		.BYTE 'LIB',0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE	0
aC_1:		.BYTE '%c',0
		.BYTE  $A
aMaximumNumberOfDiffe_1:.BYTE 'Maximum Number of Different Sections (%d) Exceeded.  Link Term'
		.BYTE 'inated.',$A
		.BYTE $A,0
aS_1:		.BYTE '%s',0
		.BYTE	0
aDiskListingFilename_1:.BYTE 'Disk Listing  Filename : ',0
aSymbolTableFilename_1:.BYTE 'Symbol Table  Filename : ',0
aFormat_1:	.BYTE 'Format   : ',0
aLinkerOutputFilename_1:.BYTE 'Linker Output Filename : ',0
aMicrotek_1:	.BYTE 'Microtek',0
aZax_1:		.BYTE 'Zax',0
aAbbreviated2500A_d__1:.BYTE 'Abbreviated 2500 A.D.',0
a2500A_d__2:	.BYTE '2500 A.D.',0
aNoneSpecified_1:.BYTE '<None Specified>',0
		.BYTE  $A
aLinkErrors_2:	.BYTE '         Link Errors :  ',0
aOutputFormat_2:.BYTE '         Output Format :  ',0
aExecutable_1:	.BYTE 'Executable',0
aIntelHex_1:	.BYTE 'Intel Hex',0
aExtendedIntelHex_1:.BYTE 'Extended Intel Hex',0
aTektronixHex_1:.BYTE 'Tektronix Hex',0
aMotorolaS1_1:	.BYTE 'Motorola S1',0
		.BYTE	0
aMotorolaS_1:	.BYTE 'Motorola S'