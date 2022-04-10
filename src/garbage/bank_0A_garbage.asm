aDPCrT_4:	.BYTE ', D, P, <CR> = T) : ',0
aListOnOffListingDest_6:.BYTE 'LIST ON/OFF Listing Destination  (T, D, P, <CR> = T) : ',0
aEnterRunTimeSelectio_6:.BYTE $A
		.BYTE $A
		.BYTE 'Enter Run Time Selection : ',0
		.BYTE $A,0
aAssemblyTerminatedBy_7:.BYTE 'Assembly Terminated By Operator',$A
		.BYTE $A,0
aCanTCreateDiskListin_6:.BYTE 'Can',$27,'t Create Disk Listing File',$A,0
aActiveCommands_7:.BYTE	$A
		.BYTE '                         ***** Active Commands *****',$A
		.BYTE $A,0
aCtrlSStopOutput_6:.BYTE '                           Ctrl S = Stop Output',$A,0
aCtrlQStartOutput_6:.BYTE '                           Ctrl Q = Start Output',$A,0
aEscCStopAssembly_6:.BYTE '                           Esc  C = Stop Assembly',$A,0
aEscTTerminalOutput_6:.BYTE '                           Esc  T = Terminal Output',$A,0
aEscPPrinterOutput_6:.BYTE '                           Esc  P = Printer Output',$A,0
aEscDDiskOutput_6:.BYTE	'                           Esc  D = Disk Output',$A,0
aEscMMultipleOutput_6:.BYTE '                           Esc  M = Multiple Output',$A,0
aEscNNoOutput_7:.BYTE '                           Esc  N = No Output',$A
		.BYTE $A,0
aRenameFileError_6:.BYTE 'Rename File Error',$A,0
aPage4u_6:	.BYTE 'Page %4u',0
aLib_6:		.BYTE 'LIB',0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE	0
aC_6:		.BYTE '%c',0
		.BYTE  $A
aMaximumNumberOfDiffe_6:.BYTE 'Maximum Number of Different Sections (%d) Exceeded.  Link Term'
		.BYTE 'inated.',$A
		.BYTE $A,0
aS_6:		.BYTE '%s',0
		.BYTE	0
aDiskListingFilename_6:.BYTE 'Disk Listing  Filename : ',0
aSymbolTableFilename_6:.BYTE 'Symbol Table  Filename : ',0
aFormat_6:	.BYTE 'Format   : ',0
aLinkerOutputFilename_6:.BYTE 'Linker Output Filename : ',0
aMicrotek_6:	.BYTE 'Microtek',0
aZax_6:		.BYTE 'Zax',0
aAbbreviated2500A_d__6:.BYTE 'Abbreviated 2500 A.D.',0
a2500A_d__7:	.BYTE '2500 A.D.',0
aNoneSpecified_6:.BYTE '<None Specified>',0
aLinkErrors_7:	.BYTE $A
		.BYTE '         Link Errors :  ',0
aOutputFormat_7:.BYTE '         Output Format :  ',0
aExecutable_6:	.BYTE 'Executable',0
aIntelHex_6:	.BYTE 'Intel Hex',0
aExtendedIntelHex_6:.BYTE 'Extended Intel Hex',0
aTektronixHex_6:.BYTE 'Tektronix Hex',0
aMotorolaS1_6:	.BYTE 'Motorola S1',0
		.BYTE	0
aMotorolaS_6:	.BYTE 'Motorola S'