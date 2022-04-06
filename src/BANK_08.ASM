; Segment type:	Pure code
		;.segment BANK_08 (Tilemaps)
		* =  $8000

; =============== S U B	R O U T	I N E =======================================

bank_switch_88000:			
		.include "common/bank_switch_func.asm"
		
switch_case_8035:
		.include "common/tilemap_entry_point_func.asm"

; ---------------------------------------------------------------------------

Tilemaps_8805B:	
		.include "tilemaps/bank_08.asm"
		
Code_Tilemaps_08:
		.include "common/tilemap_common_funcs.asm"

; ---------------------------------------------------------------------------
aDPCrT_5:	.BYTE ', D, P, <CR> = T) : ',0
aListOnOffListingDest_8:.BYTE 'LIST ON/OFF Listing Destination  (T, D, P, <CR> = T) : ',0
aEnterRunTimeSelectio_9:.BYTE $A
		.BYTE $A
		.BYTE 'Enter Run Time Selection : ',0
		.BYTE $A,0
aAssemblyTerminatedBy_9:.BYTE 'Assembly Terminated By Operator',$A
		.BYTE $A,0
aCanTCreateDiskListin_8:.BYTE 'Can',$27,'t Create Disk Listing File',$A,0
aActiveCommands_6:.BYTE	$A
		.BYTE '                         ***** Active Commands *****',$A
		.BYTE $A,0
aCtrlSStopOutput_8:.BYTE '                           Ctrl S = Stop Output',$A,0
aCtrlQStartOutput_8:.BYTE '                           Ctrl Q = Start Output',$A,0
aEscCStopAssembly_8:.BYTE '                           Esc  C = Stop Assembly',$A,0
aEscTTerminalOutput_8:.BYTE '                           Esc  T = Terminal Output',$A,0
aEscPPrinterOutput_8:.BYTE '                           Esc  P = Printer Output',$A,0
aEscDDiskOutput_8:.BYTE	'                           Esc  D = Disk Output',$A,0
aEscMMultipleOutput_8:.BYTE '                           Esc  M = Multiple Output',$A,0
aEscNNoOutput_9:.BYTE '                           Esc  N = No Output',$A
		.BYTE $A,0
aRenameFileError_8:.BYTE 'Rename File Error',$A,0
aPage4u_8:	.BYTE 'Page %4u',0
aLib_8:		.BYTE 'LIB',0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE	0
aC_8:		.BYTE '%c',0
aMaximumNumberOfDiffe_7:.BYTE $A
		.BYTE 'Maximum Number of Different Sections (%d) Exceeded.  Link Term'
		.BYTE 'inated.',$A
		.BYTE $A,0
aS_8:		.BYTE '%s',0
		.BYTE	0
aDiskListingFilename_8:.BYTE 'Disk Listing  Filename : ',0
aSymbolTableFilename_8:.BYTE 'Symbol Table  Filename : ',0
aFormat_8:	.BYTE 'Format   : ',0
aLinkerOutputFilename_8:.BYTE 'Linker Output Filename : ',0
aMicrotek_8:	.BYTE 'Microtek',0
aZax_8:		.BYTE 'Zax',0
aAbbreviated2500A_d__8:.BYTE 'Abbreviated 2500 A.D.',0
a2500A_d__9:	.BYTE '2500 A.D.',0
aNoneSpecified_8:.BYTE '<None Specified>',0
aLinkErrors_9:	.BYTE $A
		.BYTE '         Link Errors :  ',0
aOutputFormat_9:.BYTE '         Output Format :  ',0
aExecutable_8:	.BYTE 'Executable',0
aIntelHex_8:	.BYTE 'Intel Hex',0
aExtendedIntelHex_8:.BYTE 'Extended Intel Hex',0
aTektronixHex_8:.BYTE 'Tektronix Hex',0
aMotorolaS1_8:	.BYTE 'Motorola S1',0
		.BYTE	0
aMotorolaS_8:	.BYTE 'Motorola S'
		.WORD NMI_8F9ED
		.WORD Tilemaps_8805B
		.WORD locret_8FA64
; end of 'BANK_08'

; ===========================================================================