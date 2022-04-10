aDELPCrN:	.BYTE ', D, E, L, P, <CR> = N) : ',0
aErrorOnlyListingDest_2:.BYTE 'Error Only Listing Destination  (T, D, P, <CR> = T) : ',0
aListOnOffListingDes_10:.BYTE 'LIST ON/OFF Listing Destination  (T, D, P, <CR> = T) : ',0
aEnterRunTimeSelecti_11:.BYTE $A
		.BYTE $A
		.BYTE 'Enter Run Time Selection : ',0
		.BYTE $A,0
aAssemblyTerminatedB_11:.BYTE 'Assembly Terminated By Operator',$A
		.BYTE $A,0
aCanTCreateDiskListi_10:.BYTE 'Can',$27,'t Create Disk Listing File',$A,0
aActiveCommands_9:.BYTE	$A
		.BYTE '                         ***** Active Commands *****',$A
		.BYTE $A,0
aCtrlSStopOutput_10:.BYTE '                           Ctrl S = Stop Output',$A,0
aCtrlQStartOutput_10:.BYTE '                           Ctrl Q = Start Output',$A,0
aEscCStopAssembly_10:.BYTE '                           Esc  C = Stop Assembly',$A,0
aEscTTerminalOutput_10:.BYTE '                           Esc  T = Terminal Output',$A,0
aEscPPrinterOutput_10:.BYTE '                           Esc  P = Printer Output',$A,0
aEscDDiskOutput_10:.BYTE '                           Esc  D = Disk Output',$A,0
aEscMMultipleOutput_10:.BYTE '                           Esc  M = Multiple Output',$A,0
aEscNNoOutput_11:.BYTE '                           Esc  N = No Output',$A
		.BYTE $A,0
aRenameFileError_10:.BYTE 'Rename File Error',$A,0
aPage4u_10:	.BYTE 'Page %4u',0
aLib_10:	.BYTE 'LIB',0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE	0
aC_10:		.BYTE '%c',0
		.BYTE  $A
aMaximumNumberOfDiff_10:.BYTE 'Maximum Number of Different Sections (%d) Exceeded.  Link Term'
		.BYTE 'inated.',$A
		.BYTE $A,0
aS_10:		.BYTE '%s',0
		.BYTE	0
aDiskListingFilename_10:.BYTE 'Disk Listing  Filename : ',0
aSymbolTableFilename_10:.BYTE 'Symbol Table  Filename : ',0
aFormat_10:	.BYTE 'Format   : ',0
aLinkerOutputFilenam_10:.BYTE 'Linker Output Filename : ',0
aMicrotek_10:	.BYTE 'Microtek',0
aZax_10:	.BYTE 'Zax',0
aAbbreviated2500A_d__10:.BYTE 'Abbreviated 2500 A.D.',0
a2500A_d__11:	.BYTE '2500 A.D.',0
aNoneSpecified_10:.BYTE	'<None Specified>',0
aLinkErrors_11:	.BYTE $A
		.BYTE '         Link Errors :  ',0
aOutputFormat_11:.BYTE '         Output Format :  ',0
aExecutable_10:	.BYTE 'Executable',0
aIntelHex_10:	.BYTE 'Intel Hex',0
aExtendedIntelHex_10:.BYTE 'Extended Intel Hex',0
aTektronixHex_10:.BYTE 'Tektronix Hex',0
aMotorolaS1_10:	.BYTE 'Motorola S1',0
		.BYTE	0
aMotorolaS_10:	.BYTE 'Motorola S'