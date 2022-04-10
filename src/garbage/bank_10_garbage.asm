aDPCrT:		.BYTE ', D, P, <CR> = T) : ',0
aListOnOffListingDestin:.BYTE 'LIST ON/OFF Listing Destination  (T, D, P, <CR> = T) : ',0
aEnterRunTimeSelection:.BYTE $A
		.BYTE $A
		.BYTE 'Enter Run Time Selection : ',0
		.BYTE  $A
		.BYTE	0
aAssemblyTerminatedByOp:.BYTE 'Assembly Terminated By Operator',$A
		.BYTE $A,0
aCanTCreateDiskListingF:.BYTE 'Can',$27,'t Create Disk Listing File',$A,0
aActiveCommands:.BYTE $A
		.BYTE '                         ***** Active Commands *****',$A
		.BYTE $A,0
aCtrlSStopOutput:.BYTE '                           Ctrl S = Stop Output',$A,0
aCtrlQStartOutput:.BYTE	'                           Ctrl Q = Start Output',$A,0
aEscCStopAssembly:.BYTE	'                           Esc  C = Stop Assembly',$A,0
aEscTTerminalOutput:.BYTE '                           Esc  T = Terminal Output',$A,0
aEscPPrinterOutput:.BYTE '                           Esc  P = Printer Output',$A,0
aEscDDiskOutput:.BYTE '                           Esc  D = Disk Output',$A,0
aEscMMultipleOutput:.BYTE '                           Esc  M = Multiple Output',$A,0
aEscNNoOutput:	.BYTE '                           Esc  N = No Output',$A
		.BYTE $A,0
aRenameFileError:.BYTE 'Rename File Error',$A,0
aPage4u:	.BYTE 'Page %4u',0
aLib:		.BYTE 'LIB',0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE	0
aC:		.BYTE '%c',0
		.BYTE  $A
aMaximumNumberOfDiffere:.BYTE 'Maximum Number of Different Sections (%d) Exceeded.  Link Term'
		.BYTE 'inated.',$A
		.BYTE $A,0
aS:		.BYTE '%s',0
		.BYTE	0
aDiskListingFilename:.BYTE 'Disk Listing  Filename : ',0
aSymbolTableFilename:.BYTE 'Symbol Table  Filename : ',0
aFormat:	.BYTE 'Format   : ',0
aLinkerOutputFilename:.BYTE 'Linker Output Filename : ',0
aMicrotek:	.BYTE 'Microtek',0
aZax:		.BYTE 'Zax',0
aAbbreviated2500A_d_:.BYTE 'Abbreviated 2500 A.D.',0
a2500A_d__0:	.BYTE '2500 A.D.',0
aNoneSpecified:	.BYTE '<None Specified>',0
aLinkErrors_0:	.BYTE $A
		.BYTE '         Link Errors :  ',0
aOutputFormat_0:.BYTE '         Output Format :  ',0
aExecutable:	.BYTE 'Executable',0
aIntelHex:	.BYTE 'Intel Hex',0
aExtendedIntelHex:.BYTE	'Extended Intel Hex',0
aTektronixHex:	.BYTE 'Tektronix Hex',0
aMotorolaS1:	.BYTE 'Motorola S1',0
		.BYTE	0
aMotorolaS:	.BYTE 'Motorola S'