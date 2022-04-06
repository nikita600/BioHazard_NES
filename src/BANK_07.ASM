; Segment type:	Pure code
		;.segment BANK_07 (Tilemaps)
		* =  $8000

; =============== S U B	R O U T	I N E =======================================

bank_switch_78000:			
		.include "common/bank_switch_func.asm"

switch_case_8035:
		.include "common/tilemap_entry_point_func.asm"

; ---------------------------------------------------------------------------

Tilemaps_7805B:
		.include "tilemaps/bank_07.asm"

Code_Tilemaps_07:
		.include "common/tilemap_common_funcs.asm"

; ---------------------------------------------------------------------------
aDPCrT_6:	.BYTE ', D, P, <CR> = T) : ',0
aListOnOffListingDest_9:.BYTE 'LIST ON/OFF Listing Destination  (T, D, P, <CR> = T) : ',0
aEnterRunTimeSelecti_10:.BYTE $A
		.BYTE $A
		.BYTE 'Enter Run Time Selection : ',0
		.BYTE  $A
		.BYTE	0
aAssemblyTerminatedB_10:.BYTE 'Assembly Terminated By Operator',$A
		.BYTE $A,0
aCanTCreateDiskListin_9:.BYTE 'Can',$27,'t Create Disk Listing File',$A,0
aActiveCommands_10:.BYTE $A
		.BYTE '                         ***** Active Commands *****',$A
		.BYTE $A,0
aCtrlSStopOutput_9:.BYTE '                           Ctrl S = Stop Output',$A,0
aCtrlQStartOutput_9:.BYTE '                           Ctrl Q = Start Output',$A,0
aEscCStopAssembly_9:.BYTE '                           Esc  C = Stop Assembly',$A,0
aEscTTerminalOutput_9:.BYTE '                           Esc  T = Terminal Output',$A,0
aEscPPrinterOutput_9:.BYTE '                           Esc  P = Printer Output',$A,0
aEscDDiskOutput_9:.BYTE	'                           Esc  D = Disk Output',$A,0
aEscMMultipleOutput_9:.BYTE '                           Esc  M = Multiple Output',$A,0
aEscNNoOutput_10:.BYTE '                           Esc  N = No Output',$A
		.BYTE $A,0
aRenameFileError_9:.BYTE 'Rename File Error',$A,0
aPage4u_9:	.BYTE 'Page %4u',0
aLib_9:		.BYTE 'LIB',0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE	0
aC_9:		.BYTE '%c',0
		.BYTE  $A
aMaximumNumberOfDiffe_9:.BYTE 'Maximum Number of Different Sections (%d) Exceeded.  Link Term'
		.BYTE 'inated.',$A
		.BYTE $A,0
aS_9:		.BYTE '%s',0
		.BYTE	0
aDiskListingFilename_9:.BYTE 'Disk Listing  Filename : ',0
aSymbolTableFilename_9:.BYTE 'Symbol Table  Filename : ',0
aFormat_9:	.BYTE 'Format   : ',0
aLinkerOutputFilename_9:.BYTE 'Linker Output Filename : ',0
aMicrotek_9:	.BYTE 'Microtek',0
aZax_9:		.BYTE 'Zax',0
aAbbreviated2500A_d__9:.BYTE 'Abbreviated 2500 A.D.',0
a2500A_d__10:	.BYTE '2500 A.D.',0
aNoneSpecified_9:.BYTE '<None Specified>',0
aLinkErrors_10:	.BYTE $A
		.BYTE '         Link Errors :  ',0
aOutputFormat_10:.BYTE '         Output Format :  ',0
aExecutable_9:	.BYTE 'Executable',0
aIntelHex_9:	.BYTE 'Intel Hex',0
aExtendedIntelHex_9:.BYTE 'Extended Intel Hex',0
aTektronixHex_9:.BYTE 'Tektronix Hex',0
aMotorolaS1_9:	.BYTE 'Motorola S1',0
		.BYTE	0
aMotorolaS_9:	.BYTE 'Motorola S'

		.WORD NMI_7F9ED
		.WORD Tilemaps_7805B
		.WORD locret_7FA64