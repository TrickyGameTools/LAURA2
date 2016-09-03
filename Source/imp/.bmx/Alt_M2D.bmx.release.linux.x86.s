	format	ELF
	extrn	__bb_blitz_blitz
	extrn	__bb_bye_bye
	extrn	__bb_console_console
	extrn	__bb_main_main
	extrn	__bb_max2d_max2d
	extrn	__bb_maxlua4gale_maxlua4gale
	extrn	__bb_multiscript_multiscript
	extrn	_gale_main_GALE_DebugConsole_Delete
	extrn	_gale_main_GALE_DebugConsole_New
	extrn	bbArrayNew1D
	extrn	bbEmptyString
	extrn	bbGCFree
	extrn	bbNullObject
	extrn	bbObjectClass
	extrn	bbObjectCompare
	extrn	bbObjectCtor
	extrn	bbObjectFree
	extrn	bbObjectNew
	extrn	bbObjectRegisterType
	extrn	bbObjectReserved
	extrn	bbObjectSendMessage
	extrn	bbObjectToString
	extrn	bbStringClass
	extrn	bbStringCompare
	extrn	bbStringFromChar
	extrn	bbStringSplit
	extrn	brl_filesystem_DeleteFile
	extrn	brl_filesystem_FileType
	extrn	brl_graphics_EndGraphics
	extrn	brl_graphics_Flip
	extrn	brl_graphics_Graphics
	extrn	brl_graphics_GraphicsHeight
	extrn	brl_graphics_GraphicsWidth
	extrn	brl_max2d_Cls
	extrn	brl_max2d_SetOrigin
	extrn	brl_max2d_SetViewport
	extrn	brl_polledinput_AppTerminate
	extrn	brl_polledinput_FlushKeys
	extrn	brl_polledinput_WaitKey
	extrn	brl_system_OpenURL
	extrn	gale_main_GALE_DebugConsole
	extrn	gale_main_GALE_Register
	extrn	gale_main_GaleCon
	extrn	tricky_units_bye_Bye
	extrn	tricky_units_console_ConsoleCloseLogFile
	extrn	tricky_units_console_ConsoleDoublePrint2
	extrn	tricky_units_console_ConsoleShow
	extrn	tricky_units_console_ConsoleWrite
	extrn	tricky_units_mkl_version_MKL_Lic
	extrn	tricky_units_mkl_version_MKL_Version
	public	__bb_imp_alt_m2d
	public	_bb_GALEMainCon2_Delete
	public	_bb_GALEMainCon2_DoCls
	public	_bb_GALEMainCon2_DoFlip
	public	_bb_GALEMainCon2_FullView
	public	_bb_GALEMainCon2_GaleConsoleCloseLogFile
	public	_bb_GALEMainCon2_GaleConsoleDoublePrint2
	public	_bb_GALEMainCon2_GaleConsoleShow
	public	_bb_GALEMainCon2_GaleConsoleWrite
	public	_bb_GALEMainCon2_GaleErrorClosureRequest
	public	_bb_GALEMainCon2_New
	public	_bb_GALEMainCon2_RequestAppTerminate
	public	_bb_GALEMainCon2_Rewindow
	public	_bb_GALEMainCon2_StopGraphics
	public	_bb_LConsole_Delete
	public	_bb_LConsole_Flip
	public	_bb_LConsole_New
	public	_bb_LConsole_Print
	public	_bb_LConsole_Show
	public	_bb_LConsole_Write
	public	bb_ErrorClosureMessage
	public	bb_GALEMainCon2
	public	bb_SessionFile
	public	bb_SessionLogFile
	public	bb_SessionLogStream
	section	"code" executable
__bb_imp_alt_m2d:
	push	ebp
	mov	ebp,esp
	push	ebx
	cmp	dword [_135],0
	je	_136
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_136:
	mov	dword [_135],1
	call	__bb_blitz_blitz
	call	__bb_max2d_max2d
	call	__bb_maxlua4gale_maxlua4gale
	call	__bb_console_console
	call	__bb_bye_bye
	call	__bb_main_main
	call	__bb_multiscript_multiscript
	push	bb_GALEMainCon2
	call	bbObjectRegisterType
	add	esp,4
	push	_23
	call	bbObjectRegisterType
	add	esp,4
	push	_14
	push	_13
	call	tricky_units_mkl_version_MKL_Version
	add	esp,8
	push	_15
	push	_13
	call	tricky_units_mkl_version_MKL_Lic
	add	esp,8
	push	bb_GALEMainCon2
	call	bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [gale_main_GaleCon]
	dec	dword [eax+4]
	jnz	_134
	push	eax
	call	bbGCFree
	add	esp,4
_134:
	mov	dword [gale_main_GaleCon],ebx
	push	_24
	push	_23
	call	bbObjectNew
	add	esp,4
	push	eax
	call	gale_main_GALE_Register
	add	esp,8
	mov	eax,0
	jmp	_50
_50:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_GALEMainCon2_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_gale_main_GALE_DebugConsole_New
	add	esp,4
	mov	dword [ebx],bb_GALEMainCon2
	mov	eax,0
	jmp	_53
_53:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_GALEMainCon2_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_56:
	mov	dword [eax],gale_main_GALE_DebugConsole
	push	eax
	call	_gale_main_GALE_DebugConsole_Delete
	add	esp,4
	mov	eax,0
	jmp	_137
_137:
	mov	esp,ebp
	pop	ebp
	ret
_bb_GALEMainCon2_GaleConsoleWrite:
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
	call	tricky_units_console_ConsoleWrite
	add	esp,16
	mov	eax,0
	jmp	_63
_63:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_GALEMainCon2_GaleConsoleShow:
	push	ebp
	mov	ebp,esp
	call	tricky_units_console_ConsoleShow
	mov	eax,0
	jmp	_66
_66:
	mov	esp,ebp
	pop	ebp
	ret
_bb_GALEMainCon2_GaleConsoleDoublePrint2:
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
	call	tricky_units_console_ConsoleDoublePrint2
	add	esp,36
	mov	eax,0
	jmp	_78
_78:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_GALEMainCon2_GaleConsoleCloseLogFile:
	push	ebp
	mov	ebp,esp
	call	tricky_units_console_ConsoleCloseLogFile
	mov	eax,0
	jmp	_81
_81:
	mov	esp,ebp
	pop	ebp
	ret
_bb_GALEMainCon2_GaleErrorClosureRequest:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	push	edi
	push	dword [bb_SessionLogFile]
	call	brl_filesystem_FileType
	add	esp,4
	cmp	eax,0
	setne	al
	movzx	eax,al
	mov	dword [ebp-4],eax
	push	2
	push	_140
	call	bbArrayNew1D
	add	esp,8
	mov	edx,_16
	inc	dword [edx+4]
	mov	dword [eax+24],edx
	mov	edx,_17
	inc	dword [edx+4]
	mov	dword [eax+28],edx
	mov	dword [ebp-8],eax
	call	tricky_units_console_ConsoleCloseLogFile
	push	_21
	push	dword [bb_ErrorClosureMessage]
	call	bbStringSplit
	add	esp,8
	mov	esi,eax
	mov	eax,esi
	add	eax,24
	mov	ebx,eax
	mov	eax,ebx
	add	eax,dword [esi+16]
	mov	edi,eax
	jmp	_18
_20:
	mov	eax,dword [ebx]
	add	ebx,4
	cmp	eax,bbNullObject
	je	_18
	push	0
	push	180
	push	255
	push	eax
	call	tricky_units_console_ConsoleWrite
	add	esp,16
_18:
	cmp	ebx,edi
	jne	_20
_19:
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
	call	brl_graphics_Graphics
	add	esp,20
	call	brl_polledinput_FlushKeys
	call	brl_max2d_Cls
	call	tricky_units_console_ConsoleShow
	push	-1
	call	brl_graphics_Flip
	add	esp,4
	push	_22
	call	brl_polledinput_WaitKey
	push	eax
	call	bbStringFromChar
	add	esp,4
	push	eax
	call	bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_150
	mov	eax,dword [ebp-4]
_150:
	cmp	eax,0
	je	_152
	push	dword [bb_SessionLogFile]
	call	brl_system_OpenURL
	add	esp,4
_152:
	push	dword [bb_SessionFile]
	call	brl_filesystem_DeleteFile
	add	esp,4
	push	1
	call	tricky_units_bye_Bye
	add	esp,4
	mov	eax,0
	jmp	_84
_84:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_GALEMainCon2_DoFlip:
	push	ebp
	mov	ebp,esp
	push	-1
	call	brl_graphics_Flip
	add	esp,4
	mov	eax,0
	jmp	_88
_88:
	mov	esp,ebp
	pop	ebp
	ret
_bb_GALEMainCon2_DoCls:
	push	ebp
	mov	ebp,esp
	call	brl_max2d_Cls
	mov	eax,0
	jmp	_91
_91:
	mov	esp,ebp
	pop	ebp
	ret
_bb_GALEMainCon2_Rewindow:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	call	brl_graphics_GraphicsWidth
	mov	ebx,eax
	call	brl_graphics_GraphicsHeight
	mov	esi,eax
	call	brl_graphics_EndGraphics
	push	0
	push	60
	push	0
	push	esi
	push	ebx
	call	brl_graphics_Graphics
	add	esp,20
	mov	eax,0
	jmp	_94
_94:
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_GALEMainCon2_StopGraphics:
	push	ebp
	mov	ebp,esp
	call	brl_graphics_EndGraphics
	mov	eax,0
	jmp	_97
_97:
	mov	esp,ebp
	pop	ebp
	ret
_bb_GALEMainCon2_RequestAppTerminate:
	push	ebp
	mov	ebp,esp
	call	brl_polledinput_AppTerminate
	jmp	_100
_100:
	mov	esp,ebp
	pop	ebp
	ret
_bb_GALEMainCon2_FullView:
	push	ebp
	mov	ebp,esp
	call	brl_graphics_GraphicsHeight
	push	eax
	call	brl_graphics_GraphicsWidth
	push	eax
	push	0
	push	0
	call	brl_max2d_SetViewport
	add	esp,16
	push	0
	push	0
	call	brl_max2d_SetOrigin
	add	esp,8
	mov	eax,0
	jmp	_103
_103:
	mov	esp,ebp
	pop	ebp
	ret
_bb_LConsole_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	bbObjectCtor
	add	esp,4
	mov	dword [ebx],_23
	mov	eax,0
	jmp	_106
_106:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_LConsole_Delete:
	push	ebp
	mov	ebp,esp
_109:
	mov	eax,0
	jmp	_155
_155:
	mov	esp,ebp
	pop	ebp
	ret
_bb_LConsole_Write:
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
	call	tricky_units_console_ConsoleWrite
	add	esp,16
	mov	eax,0
	jmp	_116
_116:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_LConsole_Print:
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
	call	tricky_units_console_ConsoleWrite
	add	esp,16
	mov	eax,0
	jmp	_123
_123:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_LConsole_Show:
	push	ebp
	mov	ebp,esp
	call	tricky_units_console_ConsoleShow
	mov	eax,0
	jmp	_126
_126:
	mov	esp,ebp
	pop	ebp
	ret
_bb_LConsole_Flip:
	push	ebp
	mov	ebp,esp
	push	-1
	call	brl_graphics_Flip
	add	esp,4
	mov	eax,0
	jmp	_129
_129:
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" writeable align 8
	align	4
_135:
	dd	0
_26:
	db	"GALEMainCon2",0
_27:
	db	"New",0
_28:
	db	"()i",0
_29:
	db	"Delete",0
_30:
	db	"GaleConsoleWrite",0
_31:
	db	"($,i,i,i)i",0
_32:
	db	"GaleConsoleShow",0
_33:
	db	"GaleConsoleDoublePrint2",0
_34:
	db	"($,$,i,i,i,i,i,i,i)i",0
_35:
	db	"GaleConsoleCloseLogFile",0
_36:
	db	"GaleErrorClosureRequest",0
_37:
	db	"DoFlip",0
_38:
	db	"(i)i",0
_39:
	db	"DoCls",0
_40:
	db	"Rewindow",0
_41:
	db	"StopGraphics",0
_42:
	db	"RequestAppTerminate",0
_43:
	db	"FullView",0
	align	4
_25:
	dd	2
	dd	_26
	dd	6
	dd	_27
	dd	_28
	dd	16
	dd	6
	dd	_29
	dd	_28
	dd	20
	dd	6
	dd	_30
	dd	_31
	dd	48
	dd	6
	dd	_32
	dd	_28
	dd	60
	dd	6
	dd	_33
	dd	_34
	dd	52
	dd	6
	dd	_35
	dd	_28
	dd	56
	dd	6
	dd	_36
	dd	_28
	dd	76
	dd	6
	dd	_37
	dd	_38
	dd	64
	dd	6
	dd	_39
	dd	_28
	dd	68
	dd	6
	dd	_40
	dd	_28
	dd	72
	dd	6
	dd	_41
	dd	_28
	dd	80
	dd	6
	dd	_42
	dd	_28
	dd	84
	dd	6
	dd	_43
	dd	_28
	dd	88
	dd	0
	align	4
bb_GALEMainCon2:
	dd	gale_main_GALE_DebugConsole
	dd	bbObjectFree
	dd	_25
	dd	8
	dd	_bb_GALEMainCon2_New
	dd	_bb_GALEMainCon2_Delete
	dd	bbObjectToString
	dd	bbObjectCompare
	dd	bbObjectSendMessage
	dd	bbObjectReserved
	dd	bbObjectReserved
	dd	bbObjectReserved
	dd	_bb_GALEMainCon2_GaleConsoleWrite
	dd	_bb_GALEMainCon2_GaleConsoleDoublePrint2
	dd	_bb_GALEMainCon2_GaleConsoleCloseLogFile
	dd	_bb_GALEMainCon2_GaleConsoleShow
	dd	_bb_GALEMainCon2_DoFlip
	dd	_bb_GALEMainCon2_DoCls
	dd	_bb_GALEMainCon2_Rewindow
	dd	_bb_GALEMainCon2_GaleErrorClosureRequest
	dd	_bb_GALEMainCon2_StopGraphics
	dd	_bb_GALEMainCon2_RequestAppTerminate
	dd	_bb_GALEMainCon2_FullView
_45:
	db	"LConsole",0
_46:
	db	"Write",0
_47:
	db	"Print",0
_48:
	db	"Show",0
_49:
	db	"Flip",0
	align	4
_44:
	dd	2
	dd	_45
	dd	6
	dd	_27
	dd	_28
	dd	16
	dd	6
	dd	_29
	dd	_28
	dd	20
	dd	6
	dd	_46
	dd	_31
	dd	48
	dd	6
	dd	_47
	dd	_31
	dd	52
	dd	6
	dd	_48
	dd	_28
	dd	56
	dd	6
	dd	_49
	dd	_28
	dd	60
	dd	0
	align	4
_23:
	dd	bbObjectClass
	dd	bbObjectFree
	dd	_44
	dd	8
	dd	_bb_LConsole_New
	dd	_bb_LConsole_Delete
	dd	bbObjectToString
	dd	bbObjectCompare
	dd	bbObjectSendMessage
	dd	bbObjectReserved
	dd	bbObjectReserved
	dd	bbObjectReserved
	dd	_bb_LConsole_Write
	dd	_bb_LConsole_Print
	dd	_bb_LConsole_Show
	dd	_bb_LConsole_Flip
	align	4
bb_SessionFile:
	dd	bbEmptyString
	align	4
bb_SessionLogFile:
	dd	bbEmptyString
	align	4
bb_SessionLogStream:
	dd	bbNullObject
	align	4
bb_ErrorClosureMessage:
	dd	bbEmptyString
	align	4
_14:
	dd	bbStringClass
	dd	2147483647
	dd	8
	dw	49,53,46,48,57,46,49,57
	align	4
_13:
	dd	bbStringClass
	dd	2147483647
	dd	22
	dw	76,65,85,82,65,32,73,73,32,45,32,65,108,116,95,77
	dw	50,68,46,98,109,120
	align	4
_15:
	dd	bbStringClass
	dd	2147483647
	dd	26
	dw	77,111,122,105,108,108,97,32,80,117,98,108,105,99,32,76
	dw	105,99,101,110,115,101,32,50,46,48
	align	4
_24:
	dd	bbStringClass
	dd	2147483647
	dd	7
	dw	67,111,110,115,111,108,101
_140:
	db	"$",0
	align	4
_16:
	dd	bbStringClass
	dd	2147483647
	dd	23
	dw	72,105,116,32,97,110,121,32,107,101,121,32,116,111,32,99
	dw	111,110,116,105,110,117,101
	align	4
_17:
	dd	bbStringClass
	dd	2147483647
	dd	49
	dw	68,111,32,121,111,117,32,119,105,115,104,32,116,111,32,111
	dw	112,101,110,32,116,104,101,32,108,111,103,32,105,110,32,116
	dw	104,101,32,98,114,111,119,115,101,114,63,32,40,89,47,78
	dw	41
	align	4
_21:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	92,110
	align	4
_22:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	89
