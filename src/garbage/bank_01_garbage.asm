.BYTE $8B,$46,$1E, $B,$46,$1C,$75,  3,$E9,$CB,	0,$8B,$46, $E,$85,$C0
		.BYTE $78,  3,$E9,$C1,	0,$C4,$76,$10,$26,$8A,	4,$30,$E4,$85,$C0,$75
		.BYTE	3,$E9,$B2,  0,$C7,$46, $C,  0,	0,$C4,$76,$10,$26,$8A,	4,$30
		.BYTE $E4,$85,$C0,$89,$46,  0,$74,$1D,$8A,$5E,$14,$30,$FF,$3B,$C3,$74
		.BYTE $14,$8B,$46, $C,$FF,$46, $C,$8B,$F8,$FF,$46,$10,$26,$8A,	4,$88
		.BYTE $85,$81,$5C,$EB,$D4,$8A,$46,$14,$30,$E4,$C4,$76,$10,$26,$8A,$1C
		.BYTE $30,$FF,$3B,$D8,$75,  3,$FF,$46,$10,$A0,$C6,  0,$30,$E4,$8B,$76
		.BYTE  $C,$8A,$9C,$80,$5C,$30,$FF,$3B,$D8,$89,$46,  4,$74,$16,$C4,$7E
		.BYTE $1C,$26,$8A,$1D,$30,$FF,$3B,$D8,$74, $A,$A0,$C6,	0,$88,$84,$81
		.BYTE $5C,$FF,$46, $C,$8B,$76, $C,$C6,$84,$81,$5C,  0,$FF,$76,$1E,$FF
		.BYTE $76,$1C,$1E,$B8,$81,$5C,$50,$9A,$41,  3,$FA, $B,$8B,$E5,$B8,  4
		.BYTE	0,$50,$1E,$B8,$81,$5C,$50,$9A,	3,  0,$97,$1F,$8B,$E5,$89,$46
		.BYTE  $E,$E9,$47,$FF,$FF,$76,$1E,$FF,$76,$1C,$1E,$B8,$81,$5C,$50,$9A
		.BYTE $7B,  3,$FA, $B,$8B,$E5,$8B,$46, $E,$83,$C4,$16,$5D,$CB,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	3,  0,$4C,$43,$20,$33
		.BYTE $2E,$30,$30,  0,	7, $A,$ED,$30,$B0,  7,	0,  8,$C0,$EC,	0,  0
		.BYTE $EA, $B,	0,  0,$21,$22,	0,  0,$6D,$31,	0,  0,$3E,$5F,$30,  0
		.BYTE	0,  0,$57,$53,$70,$62,	1,  0,$C0,$EC,	0,  0,$D8,  7,$ED,$30
		.BYTE $B0,  7,$ED,$30,	4,  0,	9,  0,$ED,  7,$ED,$30,	0,  0,$D8, $B
		.BYTE $E2,  0,	6,  1,	0,  0,	0,  0,	0,  0,	0,  0,	0,  0,	1,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0,	0
aInvalidStackSizeInsu_6:.BYTE 'Invalid stack size',$D,$A
		.BYTE '$Insufficient memory',$D,$A
		.BYTE '$',$A
		.BYTE '2500 A.D. Linker  Copyright (C) 1985  -  Version 4.01f',$A
		.BYTE $A,0
		.BYTE $18
aFListingDestinationN_6:.BYTE 'F',$5C,'Listing Destination  (N, T, D, E, L, P, <CR> = N) : ',0
aErrorOnlyListingDest_7:.BYTE 'Error Only Listing Destination  (T, D, P, <CR> = T) : ',0
aListOnOffListingDes_16:.BYTE 'LIST ON/OFF Listing Destination  (T, D, P, <CR> = T) : ',0
aEnterRunTimeSelecti_16:.BYTE $A
		.BYTE $A
		.BYTE 'Enter Run Time Selection : ',0
		.BYTE $A,0
aAssemblyTerminatedB_14:.BYTE 'Assembly Terminated By Operator',$A
		.BYTE $A,0
aCanTCreateDiskListi_16:.BYTE 'Can',$27,'t Create Disk Listing File',$A,0
aActiveCommands_17:.BYTE $A
		.BYTE '                         ***** Active Commands *****',$A
		.BYTE $A,0
aCtrlSStopOutput_16:.BYTE '                           Ctrl S = Stop Output',$A,0
aCtrlQStartOutput_17:.BYTE '                           Ctrl Q = Start Output',$A,0
aEscCStopAssembly_17:.BYTE '                           Esc  C = Stop Assembly',$A,0
aEscTTerminalOutput_17:.BYTE '                           Esc  T = Terminal Output',$A,0
aEscPPrinterOutput_17:.BYTE '                           Esc  P = Printer Output',$A,0
aEscDDiskOutput_17:.BYTE '                           Esc  D = Disk Output',$A,0
aEscMMultipleOutput_17:.BYTE '                           Esc  M = Multiple Output',$A,0
aEscNNoOutput_18:.BYTE '                           Esc  N = No Output',$A
		.BYTE $A,0
aRenameFileError_17:.BYTE 'Rename File Error',$A,0
aPage4u_17:	.BYTE 'Page %4u',0
aLib_17:	.BYTE 'LIB',0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE	0
aC_17:		.BYTE '%c',0
		.BYTE  $A
aMaximumNumberOfDiff_18:.BYTE 'Maximum Number of Different Sections (%d) Exceeded.  Link Term'
		.BYTE 'inated.',$A
		.BYTE $A,0
aS_17:		.BYTE '%s',0
		.BYTE	0
aDiskListingFilename_17:.BYTE 'Disk Listing  Filename : ',0
aSymbolTableFilename_17:.BYTE 'Symbol Table  Filename : ',0
aFormat_17:	.BYTE 'Format   : ',0
aLinkerOutputFilenam_17:.BYTE 'Linker Output Filename : ',0
aMicrotek_17:	.BYTE 'Microtek',0
aZax_17:	.BYTE 'Zax',0
aAbbreviated2500A_d__17:.BYTE 'Abbreviated 2500 A.D.',0
a2500A_d__18:	.BYTE '2500 A.D.',0
aNoneSpecified_17:.BYTE	'<None Specified>',0
aLinkErrors_18:	.BYTE $A
		.BYTE '         Link Errors :  ',0
aOutputFormat_18:.BYTE '         Output Format :  ',0
aExecutable_17:	.BYTE 'Executable',0
aIntelHex_17:	.BYTE 'Intel Hex',0
aExtendedIntelHex_17:.BYTE 'Extended Intel Hex',0
aTektronixHex_17:.BYTE 'Tektronix Hex',0
aMotorolaS1_17:	.BYTE 'Motorola S1',0
		.BYTE	0
aMotorolaS_17:	.BYTE 'Motorola S'