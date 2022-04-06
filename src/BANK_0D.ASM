; Segment type:	Pure code
		;.segment BANK_0D (Tilemaps)
		* =  $8000

; =============== S U B	R O U T	I N E =======================================

bank_switch_D8000:
		.include "common/bank_switch_func.asm"

switch_case_8035:				
		.include "common/tilemap_entry_point_func.asm"

; ---------------------------------------------------------------------------
off_D805B:
		.include "tilemaps/bank_0D.asm"
		
Code_Tilemaps_0D:
		.include "common/tilemap_common_funcs.asm"

; ---------------------------------------------------------------------------
aDPCrT_2:	.BYTE ', D, P, <CR> = T) : ',0
aListOnOffListingDest_4:.BYTE 'LIST ON/OFF Listing Destination  (T, D, P, <CR> = T) : ',0
aEnterRunTimeSelectio_4:.BYTE $A
		.BYTE $A
		.BYTE 'Enter Run Time Selection : ',0
		.BYTE $A,0
aAssemblyTerminatedBy_5:.BYTE 'Assembly Terminated By Operator',$A
		.BYTE $A,0
aCanTCreateDiskListin_4:.BYTE 'Can',$27,'t Create Disk Listing File',$A,0
aActiveCommands_4:.BYTE	$A
		.BYTE '                         ***** Active Commands *****',$A
		.BYTE $A,0
aCtrlSStopOutput_4:.BYTE '                           Ctrl S = Stop Output',$A,0
aCtrlQStartOutput_4:.BYTE '                           Ctrl Q = Start Output',$A,0
aEscCStopAssembly_4:.BYTE '                           Esc  C = Stop Assembly',$A,0
aEscTTerminalOutput_4:.BYTE '                           Esc  T = Terminal Output',$A,0
aEscPPrinterOutput_4:.BYTE '                           Esc  P = Printer Output',$A,0
aEscDDiskOutput_4:.BYTE	'                           Esc  D = Disk Output',$A,0
aEscMMultipleOutput_4:.BYTE '                           Esc  M = Multiple Output',$A,0
aEscNNoOutput_5:.BYTE '                           Esc  N = No Output',$A
		.BYTE $A,0
aRenameFileError_4:.BYTE 'Rename File Error',$A,0
aPage4u_4:	.BYTE 'Page %4u',0
aLib_4:		.BYTE 'LIB',0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE	0
aC_4:		.BYTE '%c',0
aMaximumNumberOfDiffe_5:.BYTE $A
		.BYTE 'Maximum Number of Different Sections (%d) Exceeded.  Link Term'
		.BYTE 'inated.',$A
		.BYTE $A,0
aS_4:		.BYTE '%s',0
		.BYTE	0
aDiskListingFilename_4:.BYTE 'Disk Listing  Filename : ',0
aSymbolTableFilename_4:.BYTE 'Symbol Table  Filename : ',0
aFormat_4:	.BYTE 'Format   : ',0
aLinkerOutputFilename_4:.BYTE 'Linker Output Filename : ',0
aMicrotek_4:	.BYTE 'Microtek',0
aZax_4:		.BYTE 'Zax',0
aAbbreviated2500A_d__4:.BYTE 'Abbreviated 2500 A.D.',0
a2500A_d__5:	.BYTE '2500 A.D.',0
aNoneSpecified_4:.BYTE '<None Specified>',0
aLinkErrors_5:	.BYTE $A
		.BYTE '         Link Errors :  ',0
aOutputFormat_5:.BYTE '         Output Format :  ',0
aExecutable_4:	.BYTE 'Executable',0
aIntelHex_4:	.BYTE 'Intel Hex',0
aExtendedIntelHex_4:.BYTE 'Extended Intel Hex',0
aTektronixHex_5:.BYTE 'Tektronix Hex',0
aMotorolaS1_4:	.BYTE 'Motorola S1',0
		.BYTE	0
aMotorolaS_4:	.BYTE 'Motorola S'
		.WORD NMI_DF9ED
		.WORD off_D805B
		.WORD locret_DFA64
; end of 'BANK_0D'

; ===========================================================================