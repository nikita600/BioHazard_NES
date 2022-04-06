; Segment type:	Pure code
		;.segment BANK_0B (Tilemaps)
		* =  $8000

; =============== S U B	R O U T	I N E =======================================

bank_switch_B8000:			
		.include "common/bank_switch_func.asm"

switch_case_8035:
		.include "common/tilemap_entry_point_func.asm"

; ---------------------------------------------------------------------------

off_B805B:
		.include "tilemaps/bank_0B.asm"
		
Code_Tilemaps_0B:
		.include "common/tilemap_common_funcs.asm"

; ---------------------------------------------------------------------------
aDPCrT_7:	.BYTE ', D, P, <CR> = T) : ',0
aListOnOffListingDes_15:.BYTE 'LIST ON/OFF Listing Destination  (T, D, P, <CR> = T) : ',0
aEnterRunTimeSelecti_15:.BYTE $A
		.BYTE $A
		.BYTE 'Enter Run Time Selection : ',0
		.BYTE $A,0
aAssemblyTerminatedB_16:.BYTE 'Assembly Terminated By Operator',$A
		.BYTE $A,0
aCanTCreateDiskListi_15:.BYTE 'Can',$27,'t Create Disk Listing File',$A,0
aActiveCommands_16:.BYTE $A
		.BYTE '                         ***** Active Commands *****',$A
		.BYTE $A,0
aCtrlSStopOutput_15:.BYTE '                           Ctrl S = Stop Output',$A,0
aCtrlQStartOutput_16:.BYTE '                           Ctrl Q = Start Output',$A,0
aEscCStopAssembly_16:.BYTE '                           Esc  C = Stop Assembly',$A,0
aEscTTerminalOutput_16:.BYTE '                           Esc  T = Terminal Output',$A,0
aEscPPrinterOutput_16:.BYTE '                           Esc  P = Printer Output',$A,0
aEscDDiskOutput_16:.BYTE '                           Esc  D = Disk Output',$A,0
aEscMMultipleOutput_16:.BYTE '                           Esc  M = Multiple Output',$A,0
aEscNNoOutput_17:.BYTE '                           Esc  N = No Output',$A
		.BYTE $A,0
aRenameFileError_16:.BYTE 'Rename File Error',$A,0
aPage4u_16:	.BYTE 'Page %4u',0
aLib_16:	.BYTE 'LIB',0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE	0
aC_16:		.BYTE '%c',0
aMaximumNumberOfDiff_17:.BYTE $A
		.BYTE 'Maximum Number of Different Sections (%d) Exceeded.  Link Term'
		.BYTE 'inated.',$A
		.BYTE $A,0
aS_16:		.BYTE '%s',0
		.BYTE	0
aDiskListingFilename_16:.BYTE 'Disk Listing  Filename : ',0
aSymbolTableFilename_16:.BYTE 'Symbol Table  Filename : ',0
aFormat_16:	.BYTE 'Format   : ',0
aLinkerOutputFilenam_16:.BYTE 'Linker Output Filename : ',0
aMicrotek_16:	.BYTE 'Microtek',0
aZax_16:	.BYTE 'Zax',0
aAbbreviated2500A_d__16:.BYTE 'Abbreviated 2500 A.D.',0
a2500A_d__17:	.BYTE '2500 A.D.',0
aNoneSpecified_16:.BYTE	'<None Specified>',0
aLinkErrors_17:	.BYTE $A
		.BYTE '         Link Errors :  ',0
aOutputFormat_17:.BYTE '         Output Format :  ',0
aExecutable_16:	.BYTE 'Executable',0
aIntelHex_16:	.BYTE 'Intel Hex',0
aExtendedIntelHex_16:.BYTE 'Extended Intel Hex',0
aTektronixHex_16:.BYTE 'Tektronix Hex',0
aMotorolaS1_16:	.BYTE 'Motorola S1',0
		.BYTE	0
aMotorolaS_16:	.BYTE 'Motorola S'
		.WORD NMI_BF9ED
		.WORD off_B805B
		.WORD locret_BFA64
; end of 'BANK_0B'

; ===========================================================================