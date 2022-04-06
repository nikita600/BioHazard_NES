; Segment type:	Pure code
		;.segment BANK_0F (Tilemaps)
		* =  $8000

; =============== S U B	R O U T	I N E =======================================

bank_switch_F8000:
		.include "common/bank_switch_func.asm"

switch_case_8035:
		.include "common/tilemap_entry_point_func.asm"

; ---------------------------------------------------------------------------

off_F805B:
		.include "tilemaps/bank_0F.asm"
		
Code_Tilemaps_0F:
		.include "common/tilemap_common_funcs.asm"

; ---------------------------------------------------------------------------
aDPCrT_0:	.BYTE ', D, P, <CR> = T) : ',0
aListOnOffListingDest_2:.BYTE 'LIST ON/OFF Listing Destination  (T, D, P, <CR> = T) : ',0
aEnterRunTimeSelectio_2:.BYTE $A
		.BYTE $A
		.BYTE 'Enter Run Time Selection : ',0
		.BYTE  $A
		.BYTE	0
aAssemblyTerminatedBy_2:.BYTE 'Assembly Terminated By Operator',$A
		.BYTE $A,0
aCanTCreateDiskListin_2:.BYTE 'Can',$27,'t Create Disk Listing File',$A,0
aActiveCommands_2:.BYTE	$A
		.BYTE '                         ***** Active Commands *****',$A
		.BYTE $A,0
aCtrlSStopOutput_2:.BYTE '                           Ctrl S = Stop Output',$A,0
aCtrlQStartOutput_2:.BYTE '                           Ctrl Q = Start Output',$A,0
aEscCStopAssembly_2:.BYTE '                           Esc  C = Stop Assembly',$A,0
aEscTTerminalOutput_2:.BYTE '                           Esc  T = Terminal Output',$A,0
aEscPPrinterOutput_2:.BYTE '                           Esc  P = Printer Output',$A,0
aEscDDiskOutput_2:.BYTE	'                           Esc  D = Disk Output',$A,0
aEscMMultipleOutput_2:.BYTE '                           Esc  M = Multiple Output',$A,0
aEscNNoOutput_2:.BYTE '                           Esc  N = No Output',$A
		.BYTE $A,0
aRenameFileError_2:.BYTE 'Rename File Error',$A,0
aPage4u_2:	.BYTE 'Page %4u',0
aLib_2:		.BYTE 'LIB',0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE	0
aC_2:		.BYTE '%c',0
		.BYTE  $A
aMaximumNumberOfDiffe_2:.BYTE 'Maximum Number of Different Sections (%d) Exceeded.  Link Term'
		.BYTE 'inated.',$A
		.BYTE $A,0
aS_2:		.BYTE '%s',0
		.BYTE	0
aDiskListingFilename_2:.BYTE 'Disk Listing  Filename : ',0
aSymbolTableFilename_2:.BYTE 'Symbol Table  Filename : ',0
aFormat_2:	.BYTE 'Format   : ',0
aLinkerOutputFilename_2:.BYTE 'Linker Output Filename : ',0
aMicrotek_2:	.BYTE 'Microtek',0
aZax_2:		.BYTE 'Zax',0
aAbbreviated2500A_d__2:.BYTE 'Abbreviated 2500 A.D.',0
a2500A_d__3:	.BYTE '2500 A.D.',0
aNoneSpecified_2:.BYTE '<None Specified>',0
		.BYTE  $A
aLinkErrors_3:	.BYTE '         Link Errors :  ',0
aOutputFormat_3:.BYTE '         Output Format :  ',0
aExecutable_2:	.BYTE 'Executable',0
aIntelHex_2:	.BYTE 'Intel Hex',0
aExtendedIntelHex_2:.BYTE 'Extended Intel Hex',0
aTektronixHex_2:.BYTE 'Tektronix Hex',0
aMotorolaS1_2:	.BYTE 'Motorola S1',0
		.BYTE	0
aMotorolaS_2:	.BYTE 'Motorola S'
		.WORD NMI_FF9ED
		.WORD off_F805B
		.WORD locret_FFA64
; end of 'BANK_0F'

; ===========================================================================