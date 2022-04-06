; Segment type:	Pure code
		;.segment BANK_0E (Tilemaps)
		* =  $8000

; =============== S U B	R O U T	I N E =======================================

bank_switch_E8000:
		.include "common/bank_switch_func.asm"

switch_case_8035:				
		.include "common/tilemap_entry_point_func.asm"

; ---------------------------------------------------------------------------

off_E805B:
		.include "tilemaps/bank_0E.asm"

Code_Tilemaps_0E:
		.include "common/tilemap_common_funcs.asm"

; ---------------------------------------------------------------------------
aDPCrT_1:	.BYTE ', D, P, <CR> = T) : ',0
aListOnOffListingDest_3:.BYTE 'LIST ON/OFF Listing Destination  (T, D, P, <CR> = T) : ',0
aEnterRunTimeSelectio_3:.BYTE $A
		.BYTE $A
		.BYTE 'Enter Run Time Selection : ',0
		.BYTE  $A
		.BYTE	0
aAssemblyTerminatedBy_3:.BYTE 'Assembly Terminated By Operator',$A
		.BYTE $A,0
aCanTCreateDiskListin_3:.BYTE 'Can',$27,'t Create Disk Listing File',$A,0
aActiveCommands_3:.BYTE	$A
		.BYTE '                         ***** Active Commands *****',$A
		.BYTE $A,0
aCtrlSStopOutput_3:.BYTE '                           Ctrl S = Stop Output',$A,0
aCtrlQStartOutput_3:.BYTE '                           Ctrl Q = Start Output',$A,0
aEscCStopAssembly_3:.BYTE '                           Esc  C = Stop Assembly',$A,0
aEscTTerminalOutput_3:.BYTE '                           Esc  T = Terminal Output',$A,0
aEscPPrinterOutput_3:.BYTE '                           Esc  P = Printer Output',$A,0
aEscDDiskOutput_3:.BYTE	'                           Esc  D = Disk Output',$A,0
aEscMMultipleOutput_3:.BYTE '                           Esc  M = Multiple Output',$A,0
aEscNNoOutput_4:.BYTE '                           Esc  N = No Output',$A
		.BYTE $A,0
aRenameFileError_3:.BYTE 'Rename File Error',$A,0
aPage4u_3:	.BYTE 'Page %4u',0
aLib_3:		.BYTE 'LIB',0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE	0
aC_3:		.BYTE '%c',0
		.BYTE  $A
aMaximumNumberOfDiffe_3:.BYTE 'Maximum Number of Different Sections (%d) Exceeded.  Link Term'
		.BYTE 'inated.',$A
		.BYTE $A,0
aS_3:		.BYTE '%s',0
		.BYTE	0
aDiskListingFilename_3:.BYTE 'Disk Listing  Filename : ',0
aSymbolTableFilename_3:.BYTE 'Symbol Table  Filename : ',0
aFormat_3:	.BYTE 'Format   : ',0
aLinkerOutputFilename_3:.BYTE 'Linker Output Filename : ',0
aMicrotek_3:	.BYTE 'Microtek',0
aZax_3:		.BYTE 'Zax',0
aAbbreviated2500A_d__3:.BYTE 'Abbreviated 2500 A.D.',0
a2500A_d__4:	.BYTE '2500 A.D.',0
aNoneSpecified_3:.BYTE '<None Specified>',0
aLinkErrors_4:	.BYTE $A
		.BYTE '         Link Errors :  ',0
aOutputFormat_4:.BYTE '         Output Format :  ',0
aExecutable_3:	.BYTE 'Executable',0
aIntelHex_3:	.BYTE 'Intel Hex',0
aExtendedIntelHex_3:.BYTE 'Extended Intel Hex',0
aTektronixHex_3:.BYTE 'Tektronix Hex',0
aMotorolaS1_3:	.BYTE 'Motorola S1',0
		.BYTE	0
aMotorolaS_3:	.BYTE 'Motorola S'
		.WORD NMI_EF9ED
		.WORD off_E805B
		.WORD locret_EFA64
; end of 'BANK_0E'

; ===========================================================================