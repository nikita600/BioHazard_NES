aCtrlQStartOutput_13:.BYTE '   Ctrl Q = Start Output',$A,0
aEscCStopAssembly_13:.BYTE '                           Esc  C = Stop Assembly',$A,0
aEscTTerminalOutput_13:.BYTE '                           Esc  T = Terminal Output',$A,0
aEscPPrinterOutput_13:.BYTE '                           Esc  P = Printer Output',$A,0
aEscDDiskOutput_13:.BYTE '                           Esc  D = Disk Output',$A,0
aEscMMultipleOutput_13:.BYTE '                           Esc  M = Multiple Output',$A,0
aEscNNoOutput_12:.BYTE '                           Esc  N = No Output',$A
		.BYTE $A,0
aRenameFileError_13:.BYTE 'Rename File Error',$A,0
aPage4u_13:	.BYTE 'Page %4u',0
aLib_13:	.BYTE 'LIB',0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE	0
aC_13:		.BYTE '%c',0
		.BYTE  $A
aMaximumNumberOfDiff_13:.BYTE 'Maximum Number of Different Sections (%d) Exceeded.  Link Term'
		.BYTE 'inated.',$A
		.BYTE $A,0
aS_13:		.BYTE '%s',0
		.BYTE	0
aDiskListingFilename_13:.BYTE 'Disk Listing  Filename : ',0
aSymbolTableFilename_13:.BYTE 'Symbol Table  Filename : ',0
aFormat_13:	.BYTE 'Format   : ',0
aLinkerOutputFilenam_13:.BYTE 'Linker Output Filename : ',0
aMicrotek_13:	.BYTE 'Microtek',0
aZax_13:	.BYTE 'Zax',0
aAbbreviated2500A_d__13:.BYTE 'Abbreviated 2500 A.D.',0
a2500A_d__14:	.BYTE '2500 A.D.',0
aNoneSpecified_13:.BYTE	'<None Specified>',0
aLinkErrors_14:	.BYTE $A
		.BYTE '         Link Errors :  ',0
aOutputFormat_14:.BYTE '         Output Format :  ',0
aExecutable_13:	.BYTE 'Executable',0
aIntelHex_13:	.BYTE 'Intel Hex',0
aExtendedIntelHex_13:.BYTE 'Extended Intel Hex',0
aTektronixHex_13:.BYTE 'Tektronix Hex',0
aMotorolaS1_13:	.BYTE 'Motorola S1',0
		.BYTE	0
aMotorolaS_13:	.BYTE 'Motorola S'