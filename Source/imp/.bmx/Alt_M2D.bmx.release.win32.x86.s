	format	MS COFF
	extrn	___bb_blitz_blitz
	extrn	___bb_bye_bye
	extrn	___bb_console_console
	extrn	___bb_main_main
	extrn	___bb_max2d_max2d
	extrn	___bb_maxlua4gale_maxlua4gale
	extrn	___bb_multiscript_multiscript
	extrn	__gale_main_GALE_DebugConsole_Delete
	extrn	__gale_main_GALE_DebugConsole_New
	extrn	_bbArrayNew1D
	extrn	_bbEmptyString
	extrn	_bbGCFree
	extrn	_bbNullObject
	extrn	_bbObjectClass
	extrn	_bbObjectCompare
	extrn	_bbObjectCtor
	extrn	_bbObjectFree
	extrn	_bbObjectNew
	extrn	_bbObjectRegisterType
	extrn	_bbObjectReserved
	extrn	_bbObjectSendMessage
	extrn	_bbObjectToString
	extrn	_bbStringClass
	extrn	_bbStringCompare
	extrn	_bbStringFromChar
	extrn	_bbStringSplit
	extrn	_brl_filesystem_DeleteFile
	extrn	_brl_filesystem_FileType
	extrn	_brl_graphics_EndGraphics
	extrn	_brl_graphics_Flip
	extrn	_brl_graphics_Graphics
	extrn	_brl_graphics_GraphicsHeight
	extrn	_brl_graphics_GraphicsWidth
	extrn	_brl_max2d_Cls
	extrn	_brl_max2d_SetOrigin
	extrn	_brl_max2d_SetViewport
	extrn	_brl_polledinput_AppTerminate
	extrn	_brl_polledinput_FlushKeys
	extrn	_brl_polledinput_WaitKey
	extrn	_brl_system_OpenURL
	extrn	_gale_main_GALE_DebugConsole
	extrn	_gale_main_GALE_Register
	extrn	_gale_main_GaleCon
	extrn	_tricky_units_bye_Bye
	extrn	_tricky_units_console_ConsoleCloseLogFile
	extrn	_tricky_units_console_ConsoleDoublePrint2
	extrn	_tricky_units_console_ConsoleShow
	extrn	_tricky_units_console_ConsoleWrite
	extrn	_tricky_units_mkl_version_MKL_Lic
	extrn	_tricky_units_mkl_version_MKL_Version
	public	___bb_imp_alt_m2d
	public	__bb_GALEMainCon2_Delete
	public	__bb_GALEMainCon2_DoCls
	public	__bb_GALEMainCon2_DoFlip
	public	__bb_GALEMainCon2_FullView
	public	__bb_GALEMainCon2_GaleConsoleCloseLogFile
	public	__bb_GALEMainCon2_GaleConsoleDoublePrint2
	public	__bb_GALEMainCon2_GaleConsoleShow
	public	__bb_GALEMainCon2_GaleConsoleWrite
	public	__bb_GALEMainCon2_GaleErrorClosureRequest
	public	__bb_GALEMainCon2_New
	public	__bb_GALEMainCon2_RequestAppTerminate
	public	__bb_GALEMainCon2_Rewindow
	public	__bb_GALEMainCon2_StopGraphics
	public	__bb_LConsole_Delete
	public	__bb_LConsole_Flip
	public	__bb_LConsole_New
	public	__bb_LConsole_Print
	public	__bb_LConsole_Show
	public	__bb_LConsole_Write
	public	_bb_ErrorClosureMessage
	public	_bb_GALEMainCon2
	public	_bb_SessionFile
	public	_bb_SessionLogFile
	public	_bb_SessionLogStream
	section	"code" code
___bb_imp_alt_m2d:
	push	ebp
	mov	ebp,esp
	push	ebx
	cmp	dword [_147],0
	je	_148
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_148:
	mov	dword [_147],1
	call	___bb_blitz_blitz
	call	___bb_max2d_max2d
	call	___bb_maxlua4gale_maxlua4gale
	call	___bb_console_console
	call	___bb_bye_bye
	call	___bb_main_main
	call	___bb_multiscript_multiscript
	push	_bb_GALEMainCon2
	call	_bbObjectRegisterType
	add	esp,4
	push	_35
	call	_bbObjectRegisterType
	add	esp,4
	push	_22
	push	_21
	call	_tricky_units_mkl_version_MKL_Version
	add	esp,8
	push	_23
	push	_21
	call	_tricky_units_mkl_version_MKL_Lic
	add	esp,8
	push	_bb_GALEMainCon2
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_gale_main_GaleCon]
	dec	dword [eax+4]
	jnz	_146
	push	eax
	call	_bbGCFree
	add	esp,4
_146:
	mov	dword [_gale_main_GaleCon],ebx
	push	_36
	push	_35
	call	_bbObjectNew
	add	esp,4
	push	eax
	call	_gale_main_GALE_Register
	add	esp,8
	mov	eax,0
	jmp	_62
_62:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_GALEMainCon2_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	__gale_main_GALE_DebugConsole_New
	add	esp,4
	mov	dword [ebx],_bb_GALEMainCon2
	mov	eax,0
	jmp	_65
_65:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_GALEMainCon2_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_68:
	mov	dword [eax],_gale_main_GALE_DebugConsole
	push	eax
	call	__gale_main_GALE_DebugConsole_Delete
	add	esp,4
	mov	eax,0
	jmp	_149
_149:
	mov	esp,ebp
	pop	ebp
	ret
__bb_GALEMainCon2_GaleConsoleWrite:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+12]
	mov	ecx,dword [ebp+16]
	mov	edx,dword [ebp+20]
	mov	eax,dword [ebp+24]
	push	eax
	push	edx
	push	ecx
	push	ebx
	call	_tricky_units_console_ConsoleWrite
	add	esp,16
	mov	eax,0
	jmp	_75
_75:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_GALEMainCon2_GaleConsoleShow:
	push	ebp
	mov	ebp,esp
	call	_tricky_units_console_ConsoleShow
	mov	eax,0
	jmp	_78
_78:
	mov	esp,ebp
	pop	ebp
	ret
__bb_GALEMainCon2_GaleConsoleDoublePrint2:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	push	edi
	mov	esi,dword [ebp+16]
	mov	ebx,dword [ebp+20]
	mov	ecx,dword [ebp+24]
	mov	edx,dword [ebp+28]
	mov	eax,dword [ebp+32]
	mov	edi,dword [ebp+36]
	push	dword [ebp+44]
	push	dword [ebp+40]
	push	edi
	push	eax
	push	edx
	push	ecx
	push	ebx
	push	esi
	push	dword [ebp+12]
	call	_tricky_units_console_ConsoleDoublePrint2
	add	esp,36
	mov	eax,0
	jmp	_90
_90:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_GALEMainCon2_GaleConsoleCloseLogFile:
	push	ebp
	mov	ebp,esp
	call	_tricky_units_console_ConsoleCloseLogFile
	mov	eax,0
	jmp	_93
_93:
	mov	esp,ebp
	pop	ebp
	ret
__bb_GALEMainCon2_GaleErrorClosureRequest:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	push	edi
	push	dword [_bb_SessionLogFile]
	call	_brl_filesystem_FileType
	add	esp,4
	cmp	eax,0
	setne	al
	movzx	eax,al
	mov	dword [ebp-4],eax
	push	2
	push	_152
	call	_bbArrayNew1D
	add	esp,8
	mov	edx,_24
	inc	dword [edx+4]
	mov	dword [eax+24],edx
	mov	edx,_25
	inc	dword [edx+4]
	mov	dword [eax+28],edx
	mov	dword [ebp-8],eax
	call	_tricky_units_console_ConsoleCloseLogFile
	push	_29
	push	dword [_bb_ErrorClosureMessage]
	call	_bbStringSplit
	add	esp,8
	mov	esi,eax
	mov	eax,esi
	add	eax,24
	mov	ebx,eax
	mov	eax,ebx
	add	eax,dword [esi+16]
	mov	edi,eax
	jmp	_26
_28:
	mov	eax,dword [ebx]
	add	ebx,4
	cmp	eax,_bbNullObject
	je	_26
	push	0
	push	180
	push	255
	push	eax
	call	_tricky_units_console_ConsoleWrite
	add	esp,16
_26:
	cmp	ebx,edi
	jne	_28
_27:
	mov	ecx,dword [ebp+8]
	push	255
	push	0
	push	255
	mov	edx,dword [ebp-4]
	mov	eax,dword [ebp-8]
	push	dword [eax+edx*4+24]
	push	ecx
	mov	eax,dword [ecx]
	call	dword [eax+48]
	add	esp,20
	push	0
	push	60
	push	0
	push	600
	push	800
	call	_brl_graphics_Graphics
	add	esp,20
	call	_brl_polledinput_FlushKeys
	call	_brl_max2d_Cls
	call	_tricky_units_console_ConsoleShow
	push	-1
	call	_brl_graphics_Flip
	add	esp,4
_32:
_30:
	call	_brl_polledinput_WaitKey
	mov	ebx,eax
	push	_33
	push	ebx
	call	_bbStringFromChar
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_163
	mov	eax,dword [ebp-4]
_163:
	cmp	eax,0
	je	_165
	push	dword [_bb_SessionLogFile]
	call	_brl_system_OpenURL
	add	esp,4
	jmp	_31
_165:
	push	_34
	push	ebx
	call	_bbStringFromChar
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_167
	mov	eax,dword [ebp-4]
_167:
	cmp	eax,0
	je	_169
	jmp	_31
_169:
	cmp	ebx,13
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_171
	mov	eax,dword [ebp-4]
	cmp	eax,0
	sete	al
	movzx	eax,al
_171:
	cmp	eax,0
	je	_173
	jmp	_31
_173:
_170:
_166:
	jmp	_32
_31:
	push	dword [_bb_SessionFile]
	call	_brl_filesystem_DeleteFile
	add	esp,4
	push	1
	call	_tricky_units_bye_Bye
	add	esp,4
	mov	eax,0
	jmp	_96
_96:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_GALEMainCon2_DoFlip:
	push	ebp
	mov	ebp,esp
	push	-1
	call	_brl_graphics_Flip
	add	esp,4
	mov	eax,0
	jmp	_100
_100:
	mov	esp,ebp
	pop	ebp
	ret
__bb_GALEMainCon2_DoCls:
	push	ebp
	mov	ebp,esp
	call	_brl_max2d_Cls
	mov	eax,0
	jmp	_103
_103:
	mov	esp,ebp
	pop	ebp
	ret
__bb_GALEMainCon2_Rewindow:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	call	_brl_graphics_GraphicsWidth
	mov	ebx,eax
	call	_brl_graphics_GraphicsHeight
	mov	esi,eax
	call	_brl_graphics_EndGraphics
	push	0
	push	60
	push	0
	push	esi
	push	ebx
	call	_brl_graphics_Graphics
	add	esp,20
	mov	eax,0
	jmp	_106
_106:
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_GALEMainCon2_StopGraphics:
	push	ebp
	mov	ebp,esp
	call	_brl_graphics_EndGraphics
	mov	eax,0
	jmp	_109
_109:
	mov	esp,ebp
	pop	ebp
	ret
__bb_GALEMainCon2_RequestAppTerminate:
	push	ebp
	mov	ebp,esp
	call	_brl_polledinput_AppTerminate
	jmp	_112
_112:
	mov	esp,ebp
	pop	ebp
	ret
__bb_GALEMainCon2_FullView:
	push	ebp
	mov	ebp,esp
	call	_brl_graphics_GraphicsHeight
	push	eax
	call	_brl_graphics_GraphicsWidth
	push	eax
	push	0
	push	0
	call	_brl_max2d_SetViewport
	add	esp,16
	push	0
	push	0
	call	_brl_max2d_SetOrigin
	add	esp,8
	mov	eax,0
	jmp	_115
_115:
	mov	esp,ebp
	pop	ebp
	ret
__bb_LConsole_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_35
	mov	eax,0
	jmp	_118
_118:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_LConsole_Delete:
	push	ebp
	mov	ebp,esp
_121:
	mov	eax,0
	jmp	_176
_176:
	mov	esp,ebp
	pop	ebp
	ret
__bb_LConsole_Write:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+12]
	mov	ecx,dword [ebp+16]
	mov	edx,dword [ebp+20]
	mov	eax,dword [ebp+24]
	push	eax
	push	edx
	push	ecx
	push	ebx
	call	_tricky_units_console_ConsoleWrite
	add	esp,16
	mov	eax,0
	jmp	_128
_128:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_LConsole_Print:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+12]
	mov	ecx,dword [ebp+16]
	mov	edx,dword [ebp+20]
	mov	eax,dword [ebp+24]
	push	eax
	push	edx
	push	ecx
	push	ebx
	call	_tricky_units_console_ConsoleWrite
	add	esp,16
	mov	eax,0
	jmp	_135
_135:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_LConsole_Show:
	push	ebp
	mov	ebp,esp
	call	_tricky_units_console_ConsoleShow
	mov	eax,0
	jmp	_138
_138:
	mov	esp,ebp
	pop	ebp
	ret
__bb_LConsole_Flip:
	push	ebp
	mov	ebp,esp
	push	-1
	call	_brl_graphics_Flip
	add	esp,4
	mov	eax,0
	jmp	_141
_141:
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_147:
	dd	0
_38:
	db	"GALEMainCon2",0
_39:
	db	"New",0
_40:
	db	"()i",0
_41:
	db	"Delete",0
_42:
	db	"GaleConsoleWrite",0
_43:
	db	"($,i,i,i)i",0
_44:
	db	"GaleConsoleShow",0
_45:
	db	"GaleConsoleDoublePrint2",0
_46:
	db	"($,$,i,i,i,i,i,i,i)i",0
_47:
	db	"GaleConsoleCloseLogFile",0
_48:
	db	"GaleErrorClosureRequest",0
_49:
	db	"DoFlip",0
_50:
	db	"(i)i",0
_51:
	db	"DoCls",0
_52:
	db	"Rewindow",0
_53:
	db	"StopGraphics",0
_54:
	db	"RequestAppTerminate",0
_55:
	db	"FullView",0
	align	4
_37:
	dd	2
	dd	_38
	dd	6
	dd	_39
	dd	_40
	dd	16
	dd	6
	dd	_41
	dd	_40
	dd	20
	dd	6
	dd	_42
	dd	_43
	dd	48
	dd	6
	dd	_44
	dd	_40
	dd	60
	dd	6
	dd	_45
	dd	_46
	dd	52
	dd	6
	dd	_47
	dd	_40
	dd	56
	dd	6
	dd	_48
	dd	_40
	dd	76
	dd	6
	dd	_49
	dd	_50
	dd	64
	dd	6
	dd	_51
	dd	_40
	dd	68
	dd	6
	dd	_52
	dd	_40
	dd	72
	dd	6
	dd	_53
	dd	_40
	dd	80
	dd	6
	dd	_54
	dd	_40
	dd	84
	dd	6
	dd	_55
	dd	_40
	dd	88
	dd	0
	align	4
_bb_GALEMainCon2:
	dd	_gale_main_GALE_DebugConsole
	dd	_bbObjectFree
	dd	_37
	dd	8
	dd	__bb_GALEMainCon2_New
	dd	__bb_GALEMainCon2_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_GALEMainCon2_GaleConsoleWrite
	dd	__bb_GALEMainCon2_GaleConsoleDoublePrint2
	dd	__bb_GALEMainCon2_GaleConsoleCloseLogFile
	dd	__bb_GALEMainCon2_GaleConsoleShow
	dd	__bb_GALEMainCon2_DoFlip
	dd	__bb_GALEMainCon2_DoCls
	dd	__bb_GALEMainCon2_Rewindow
	dd	__bb_GALEMainCon2_GaleErrorClosureRequest
	dd	__bb_GALEMainCon2_StopGraphics
	dd	__bb_GALEMainCon2_RequestAppTerminate
	dd	__bb_GALEMainCon2_FullView
_57:
	db	"LConsole",0
_58:
	db	"Write",0
_59:
	db	"Print",0
_60:
	db	"Show",0
_61:
	db	"Flip",0
	align	4
_56:
	dd	2
	dd	_57
	dd	6
	dd	_39
	dd	_40
	dd	16
	dd	6
	dd	_41
	dd	_40
	dd	20
	dd	6
	dd	_58
	dd	_43
	dd	48
	dd	6
	dd	_59
	dd	_43
	dd	52
	dd	6
	dd	_60
	dd	_40
	dd	56
	dd	6
	dd	_61
	dd	_40
	dd	60
	dd	0
	align	4
_35:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_56
	dd	8
	dd	__bb_LConsole_New
	dd	__bb_LConsole_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_LConsole_Write
	dd	__bb_LConsole_Print
	dd	__bb_LConsole_Show
	dd	__bb_LConsole_Flip
	align	4
_bb_SessionFile:
	dd	_bbEmptyString
	align	4
_bb_SessionLogFile:
	dd	_bbEmptyString
	align	4
_bb_SessionLogStream:
	dd	_bbNullObject
	align	4
_bb_ErrorClosureMessage:
	dd	_bbEmptyString
	align	4
_22:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	49,54,46,48,56,46,50,51
	align	4
_21:
	dd	_bbStringClass
	dd	2147483647
	dd	22
	dw	76,65,85,82,65,32,73,73,32,45,32,65,108,116,95,77
	dw	50,68,46,98,109,120
	align	4
_23:
	dd	_bbStringClass
	dd	2147483647
	dd	26
	dw	77,111,122,105,108,108,97,32,80,117,98,108,105,99,32,76
	dw	105,99,101,110,115,101,32,50,46,48
	align	4
_36:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	67,111,110,115,111,108,101
_152:
	db	"$",0
	align	4
_24:
	dd	_bbStringClass
	dd	2147483647
	dd	34
	dw	72,105,116,32,97,110,121,32,101,110,116,101,114,32,116,111
	dw	32,99,108,111,115,101,32,116,104,101,32,112,114,111,103,114
	dw	97,109
	align	4
_25:
	dd	_bbStringClass
	dd	2147483647
	dd	49
	dw	68,111,32,121,111,117,32,119,105,115,104,32,116,111,32,111
	dw	112,101,110,32,116,104,101,32,108,111,103,32,105,110,32,116
	dw	104,101,32,98,114,111,119,115,101,114,63,32,40,89,47,78
	dw	41
	align	4
_29:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	92,110
	align	4
_33:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	89
	align	4
_34:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	78
