	.reference	___bb_blitz_blitz
	.reference	___bb_bye_bye
	.reference	___bb_console_console
	.reference	___bb_main_main
	.reference	___bb_max2d_max2d
	.reference	___bb_maxlua4gale_maxlua4gale
	.reference	___bb_multiscript_multiscript
	.reference	__gale_main_GALE_DebugConsole_Delete
	.reference	__gale_main_GALE_DebugConsole_New
	.reference	_bbArrayNew1D
	.reference	_bbEmptyString
	.reference	_bbGCFree
	.reference	_bbNullObject
	.reference	_bbObjectClass
	.reference	_bbObjectCompare
	.reference	_bbObjectCtor
	.reference	_bbObjectFree
	.reference	_bbObjectNew
	.reference	_bbObjectRegisterType
	.reference	_bbObjectReserved
	.reference	_bbObjectSendMessage
	.reference	_bbObjectToString
	.reference	_bbStringClass
	.reference	_bbStringCompare
	.reference	_bbStringFromChar
	.reference	_bbStringSplit
	.reference	_brl_filesystem_DeleteFile
	.reference	_brl_filesystem_FileType
	.reference	_brl_graphics_EndGraphics
	.reference	_brl_graphics_Flip
	.reference	_brl_graphics_Graphics
	.reference	_brl_graphics_GraphicsHeight
	.reference	_brl_graphics_GraphicsWidth
	.reference	_brl_max2d_Cls
	.reference	_brl_max2d_SetOrigin
	.reference	_brl_max2d_SetViewport
	.reference	_brl_polledinput_AppTerminate
	.reference	_brl_polledinput_FlushKeys
	.reference	_brl_polledinput_WaitKey
	.reference	_brl_system_OpenURL
	.reference	_gale_main_GALE_DebugConsole
	.reference	_gale_main_GALE_Register
	.reference	_gale_main_GaleCon
	.reference	_tricky_units_bye_Bye
	.reference	_tricky_units_console_ConsoleCloseLogFile
	.reference	_tricky_units_console_ConsoleDoublePrint2
	.reference	_tricky_units_console_ConsoleShow
	.reference	_tricky_units_console_ConsoleWrite
	.reference	_tricky_units_mkl_version_MKL_Lic
	.reference	_tricky_units_mkl_version_MKL_Version
	.globl	___bb_imp_alt_m2d
	.globl	__bb_GALEMainCon2_Delete
	.globl	__bb_GALEMainCon2_DoCls
	.globl	__bb_GALEMainCon2_DoFlip
	.globl	__bb_GALEMainCon2_FullView
	.globl	__bb_GALEMainCon2_GaleConsoleCloseLogFile
	.globl	__bb_GALEMainCon2_GaleConsoleDoublePrint2
	.globl	__bb_GALEMainCon2_GaleConsoleShow
	.globl	__bb_GALEMainCon2_GaleConsoleWrite
	.globl	__bb_GALEMainCon2_GaleErrorClosureRequest
	.globl	__bb_GALEMainCon2_New
	.globl	__bb_GALEMainCon2_RequestAppTerminate
	.globl	__bb_GALEMainCon2_Rewindow
	.globl	__bb_GALEMainCon2_StopGraphics
	.globl	__bb_LConsole_Delete
	.globl	__bb_LConsole_Flip
	.globl	__bb_LConsole_New
	.globl	__bb_LConsole_Print
	.globl	__bb_LConsole_Show
	.globl	__bb_LConsole_Write
	.globl	_bb_ErrorClosureMessage
	.globl	_bb_GALEMainCon2
	.globl	_bb_SessionFile
	.globl	_bb_SessionLogFile
	.globl	_bb_SessionLogStream
	.text	
___bb_imp_alt_m2d:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$20,%esp
	cmpl	$0,_139
	je	_140
	mov	$0,%eax
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_140:
	movl	$1,_139
	call	___bb_blitz_blitz
	call	___bb_max2d_max2d
	call	___bb_maxlua4gale_maxlua4gale
	call	___bb_console_console
	call	___bb_bye_bye
	call	___bb_main_main
	call	___bb_multiscript_multiscript
	movl	$_bb_GALEMainCon2,(%esp)
	call	_bbObjectRegisterType
	movl	$_27,(%esp)
	call	_bbObjectRegisterType
	movl	$_14,4(%esp)
	movl	$_13,(%esp)
	call	_tricky_units_mkl_version_MKL_Version
	movl	$_15,4(%esp)
	movl	$_13,(%esp)
	call	_tricky_units_mkl_version_MKL_Lic
	movl	$_bb_GALEMainCon2,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_gale_main_GaleCon,%eax
	decl	4(%eax)
	jnz	_138
	movl	%eax,(%esp)
	call	_bbGCFree
_138:
	movl	%ebx,_gale_main_GaleCon
	movl	$_28,4(%esp)
	movl	$_27,(%esp)
	call	_bbObjectNew
	movl	%eax,(%esp)
	call	_gale_main_GALE_Register
	mov	$0,%eax
	jmp	_54
_54:
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_GALEMainCon2_New:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$4,%esp
	movl	8(%ebp),%ebx
	movl	%ebx,(%esp)
	call	__gale_main_GALE_DebugConsole_New
	movl	$_bb_GALEMainCon2,(%ebx)
	mov	$0,%eax
	jmp	_57
_57:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_GALEMainCon2_Delete:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	movl	8(%ebp),%eax
_60:
	movl	$_gale_main_GALE_DebugConsole,(%eax)
	movl	%eax,(%esp)
	call	__gale_main_GALE_DebugConsole_Delete
	mov	$0,%eax
	jmp	_141
_141:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_GALEMainCon2_GaleConsoleWrite:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$20,%esp
	movl	12(%ebp),%ebx
	movl	16(%ebp),%ecx
	movl	20(%ebp),%edx
	movl	24(%ebp),%eax
	movl	%eax,12(%esp)
	movl	%edx,8(%esp)
	movl	%ecx,4(%esp)
	movl	%ebx,(%esp)
	call	_tricky_units_console_ConsoleWrite
	mov	$0,%eax
	jmp	_67
_67:
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_GALEMainCon2_GaleConsoleShow:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	call	_tricky_units_console_ConsoleShow
	mov	$0,%eax
	jmp	_70
_70:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_GALEMainCon2_GaleConsoleDoublePrint2:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	push	%esi
	push	%edi
	sub	$44,%esp
	movl	24(%ebp),%edi
	movl	28(%ebp),%esi
	movl	32(%ebp),%ebx
	movl	36(%ebp),%ecx
	movl	40(%ebp),%edx
	movl	44(%ebp),%eax
	movl	%eax,32(%esp)
	movl	%edx,28(%esp)
	movl	%ecx,24(%esp)
	movl	%ebx,20(%esp)
	movl	%esi,16(%esp)
	movl	%edi,12(%esp)
	movl	20(%ebp),%eax
	movl	%eax,8(%esp)
	movl	16(%ebp),%eax
	movl	%eax,4(%esp)
	movl	12(%ebp),%eax
	movl	%eax,(%esp)
	call	_tricky_units_console_ConsoleDoublePrint2
	mov	$0,%eax
	jmp	_82
_82:
	add	$44,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_GALEMainCon2_GaleConsoleCloseLogFile:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	call	_tricky_units_console_ConsoleCloseLogFile
	mov	$0,%eax
	jmp	_85
_85:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_GALEMainCon2_GaleErrorClosureRequest:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$20,%esp
	movl	_bb_SessionLogFile,%eax
	movl	%eax,(%esp)
	call	_brl_filesystem_FileType
	cmp	$0,%eax
	setne	%al
	movzbl	%al,%eax
	movl	%eax,-4(%ebp)
	movl	$2,4(%esp)
	movl	$_144,(%esp)
	call	_bbArrayNew1D
	mov	$_16,%edx
	incl	4(%edx)
	movl	%edx,24(%eax)
	mov	$_17,%edx
	incl	4(%edx)
	movl	%edx,28(%eax)
	movl	%eax,-8(%ebp)
	call	_tricky_units_console_ConsoleCloseLogFile
	movl	$_21,4(%esp)
	movl	_bb_ErrorClosureMessage,%eax
	movl	%eax,(%esp)
	call	_bbStringSplit
	mov	%eax,%esi
	mov	%esi,%eax
	add	$24,%eax
	mov	%eax,%ebx
	mov	%ebx,%eax
	addl	16(%esi),%eax
	mov	%eax,%edi
	jmp	_18
_20:
	movl	(%ebx),%eax
	add	$4,%ebx
	cmp	$_bbNullObject,%eax
	je	_18
	movl	$0,12(%esp)
	movl	$180,8(%esp)
	movl	$255,4(%esp)
	movl	%eax,(%esp)
	call	_tricky_units_console_ConsoleWrite
_18:
	cmp	%edi,%ebx
	jne	_20
_19:
	movl	8(%ebp),%ecx
	movl	$255,16(%esp)
	movl	$0,12(%esp)
	movl	$255,8(%esp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	24(%eax,%edx,4),%eax
	movl	%eax,4(%esp)
	movl	%ecx,(%esp)
	movl	(%ecx),%eax
	calll	*48(%eax)
	movl	$0,16(%esp)
	movl	$60,12(%esp)
	movl	$0,8(%esp)
	movl	$600,4(%esp)
	movl	$800,(%esp)
	call	_brl_graphics_Graphics
	call	_brl_polledinput_FlushKeys
	call	_brl_max2d_Cls
	call	_tricky_units_console_ConsoleShow
	movl	$-1,(%esp)
	call	_brl_graphics_Flip
_24:
_22:
	call	_brl_polledinput_WaitKey
	mov	%eax,%ebx
	movl	$_25,4(%esp)
	movl	%ebx,(%esp)
	call	_bbStringFromChar
	movl	%eax,(%esp)
	call	_bbStringCompare
	cmp	$0,%eax
	sete	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	je	_155
	movl	-4(%ebp),%eax
_155:
	cmp	$0,%eax
	je	_157
	movl	_bb_SessionLogFile,%eax
	movl	%eax,(%esp)
	call	_brl_system_OpenURL
	jmp	_23
_157:
	movl	$_26,4(%esp)
	movl	%ebx,(%esp)
	call	_bbStringFromChar
	movl	%eax,(%esp)
	call	_bbStringCompare
	cmp	$0,%eax
	sete	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	je	_159
	movl	-4(%ebp),%eax
_159:
	cmp	$0,%eax
	je	_161
	jmp	_23
_161:
	cmp	$13,%ebx
	sete	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	je	_163
	movl	-4(%ebp),%eax
	cmp	$0,%eax
	sete	%al
	movzbl	%al,%eax
_163:
	cmp	$0,%eax
	je	_165
	jmp	_23
_165:
_162:
_158:
	jmp	_24
_23:
	movl	_bb_SessionFile,%eax
	movl	%eax,(%esp)
	call	_brl_filesystem_DeleteFile
	movl	$1,(%esp)
	call	_tricky_units_bye_Bye
	mov	$0,%eax
	jmp	_88
_88:
	add	$20,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_GALEMainCon2_DoFlip:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	movl	$-1,(%esp)
	call	_brl_graphics_Flip
	mov	$0,%eax
	jmp	_92
_92:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_GALEMainCon2_DoCls:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	call	_brl_max2d_Cls
	mov	$0,%eax
	jmp	_95
_95:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_GALEMainCon2_Rewindow:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	push	%esi
	sub	$32,%esp
	call	_brl_graphics_GraphicsWidth
	mov	%eax,%esi
	call	_brl_graphics_GraphicsHeight
	mov	%eax,%ebx
	call	_brl_graphics_EndGraphics
	movl	$0,16(%esp)
	movl	$60,12(%esp)
	movl	$0,8(%esp)
	movl	%ebx,4(%esp)
	movl	%esi,(%esp)
	call	_brl_graphics_Graphics
	mov	$0,%eax
	jmp	_98
_98:
	add	$32,%esp
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_GALEMainCon2_StopGraphics:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	call	_brl_graphics_EndGraphics
	mov	$0,%eax
	jmp	_101
_101:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_GALEMainCon2_RequestAppTerminate:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	call	_brl_polledinput_AppTerminate
	jmp	_104
_104:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_GALEMainCon2_FullView:
	push	%ebp
	mov	%esp,%ebp
	sub	$24,%esp
	call	_brl_graphics_GraphicsHeight
	movl	%eax,12(%esp)
	call	_brl_graphics_GraphicsWidth
	movl	%eax,8(%esp)
	movl	$0,4(%esp)
	movl	$0,(%esp)
	call	_brl_max2d_SetViewport
	fldz
	fstps	4(%esp)
	fldz
	fstps	(%esp)
	call	_brl_max2d_SetOrigin
	mov	$0,%eax
	jmp	_107
_107:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_LConsole_New:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$4,%esp
	movl	8(%ebp),%ebx
	movl	%ebx,(%esp)
	call	_bbObjectCtor
	movl	$_27,(%ebx)
	mov	$0,%eax
	jmp	_110
_110:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_LConsole_Delete:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
_113:
	mov	$0,%eax
	jmp	_168
_168:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_LConsole_Write:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$20,%esp
	movl	12(%ebp),%ebx
	movl	16(%ebp),%ecx
	movl	20(%ebp),%edx
	movl	24(%ebp),%eax
	movl	%eax,12(%esp)
	movl	%edx,8(%esp)
	movl	%ecx,4(%esp)
	movl	%ebx,(%esp)
	call	_tricky_units_console_ConsoleWrite
	mov	$0,%eax
	jmp	_120
_120:
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_LConsole_Print:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$20,%esp
	movl	12(%ebp),%ebx
	movl	16(%ebp),%ecx
	movl	20(%ebp),%edx
	movl	24(%ebp),%eax
	movl	%eax,12(%esp)
	movl	%edx,8(%esp)
	movl	%ecx,4(%esp)
	movl	%ebx,(%esp)
	call	_tricky_units_console_ConsoleWrite
	mov	$0,%eax
	jmp	_127
_127:
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_LConsole_Show:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	call	_tricky_units_console_ConsoleShow
	mov	$0,%eax
	jmp	_130
_130:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_LConsole_Flip:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	movl	$-1,(%esp)
	call	_brl_graphics_Flip
	mov	$0,%eax
	jmp	_133
_133:
	mov	%ebp,%esp
	pop	%ebp
	ret
	.data	
	.align	4
_139:
	.long	0
_30:
	.asciz	"GALEMainCon2"
_31:
	.asciz	"New"
_32:
	.asciz	"()i"
_33:
	.asciz	"Delete"
_34:
	.asciz	"GaleConsoleWrite"
_35:
	.asciz	"($,i,i,i)i"
_36:
	.asciz	"GaleConsoleShow"
_37:
	.asciz	"GaleConsoleDoublePrint2"
_38:
	.asciz	"($,$,i,i,i,i,i,i,i)i"
_39:
	.asciz	"GaleConsoleCloseLogFile"
_40:
	.asciz	"GaleErrorClosureRequest"
_41:
	.asciz	"DoFlip"
_42:
	.asciz	"(i)i"
_43:
	.asciz	"DoCls"
_44:
	.asciz	"Rewindow"
_45:
	.asciz	"StopGraphics"
_46:
	.asciz	"RequestAppTerminate"
_47:
	.asciz	"FullView"
	.align	4
_29:
	.long	2
	.long	_30
	.long	6
	.long	_31
	.long	_32
	.long	16
	.long	6
	.long	_33
	.long	_32
	.long	20
	.long	6
	.long	_34
	.long	_35
	.long	48
	.long	6
	.long	_36
	.long	_32
	.long	60
	.long	6
	.long	_37
	.long	_38
	.long	52
	.long	6
	.long	_39
	.long	_32
	.long	56
	.long	6
	.long	_40
	.long	_32
	.long	76
	.long	6
	.long	_41
	.long	_42
	.long	64
	.long	6
	.long	_43
	.long	_32
	.long	68
	.long	6
	.long	_44
	.long	_32
	.long	72
	.long	6
	.long	_45
	.long	_32
	.long	80
	.long	6
	.long	_46
	.long	_32
	.long	84
	.long	6
	.long	_47
	.long	_32
	.long	88
	.long	0
	.align	4
_bb_GALEMainCon2:
	.long	_gale_main_GALE_DebugConsole
	.long	_bbObjectFree
	.long	_29
	.long	8
	.long	__bb_GALEMainCon2_New
	.long	__bb_GALEMainCon2_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	__bb_GALEMainCon2_GaleConsoleWrite
	.long	__bb_GALEMainCon2_GaleConsoleDoublePrint2
	.long	__bb_GALEMainCon2_GaleConsoleCloseLogFile
	.long	__bb_GALEMainCon2_GaleConsoleShow
	.long	__bb_GALEMainCon2_DoFlip
	.long	__bb_GALEMainCon2_DoCls
	.long	__bb_GALEMainCon2_Rewindow
	.long	__bb_GALEMainCon2_GaleErrorClosureRequest
	.long	__bb_GALEMainCon2_StopGraphics
	.long	__bb_GALEMainCon2_RequestAppTerminate
	.long	__bb_GALEMainCon2_FullView
_49:
	.asciz	"LConsole"
_50:
	.asciz	"Write"
_51:
	.asciz	"Print"
_52:
	.asciz	"Show"
_53:
	.asciz	"Flip"
	.align	4
_48:
	.long	2
	.long	_49
	.long	6
	.long	_31
	.long	_32
	.long	16
	.long	6
	.long	_33
	.long	_32
	.long	20
	.long	6
	.long	_50
	.long	_35
	.long	48
	.long	6
	.long	_51
	.long	_35
	.long	52
	.long	6
	.long	_52
	.long	_32
	.long	56
	.long	6
	.long	_53
	.long	_32
	.long	60
	.long	0
	.align	4
_27:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_48
	.long	8
	.long	__bb_LConsole_New
	.long	__bb_LConsole_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	__bb_LConsole_Write
	.long	__bb_LConsole_Print
	.long	__bb_LConsole_Show
	.long	__bb_LConsole_Flip
	.align	4
_bb_SessionFile:
	.long	_bbEmptyString
	.align	4
_bb_SessionLogFile:
	.long	_bbEmptyString
	.align	4
_bb_SessionLogStream:
	.long	_bbNullObject
	.align	4
_bb_ErrorClosureMessage:
	.long	_bbEmptyString
	.align	4
_14:
	.long	_bbStringClass
	.long	2147483647
	.long	8
	.short	49,54,46,48,56,46,50,51
	.align	4
_13:
	.long	_bbStringClass
	.long	2147483647
	.long	22
	.short	76,65,85,82,65,32,73,73,32,45,32,65,108,116,95,77
	.short	50,68,46,98,109,120
	.align	4
_15:
	.long	_bbStringClass
	.long	2147483647
	.long	26
	.short	77,111,122,105,108,108,97,32,80,117,98,108,105,99,32,76
	.short	105,99,101,110,115,101,32,50,46,48
	.align	4
_28:
	.long	_bbStringClass
	.long	2147483647
	.long	7
	.short	67,111,110,115,111,108,101
_144:
	.asciz	"$"
	.align	4
_16:
	.long	_bbStringClass
	.long	2147483647
	.long	34
	.short	72,105,116,32,97,110,121,32,101,110,116,101,114,32,116,111
	.short	32,99,108,111,115,101,32,116,104,101,32,112,114,111,103,114
	.short	97,109
	.align	4
_17:
	.long	_bbStringClass
	.long	2147483647
	.long	49
	.short	68,111,32,121,111,117,32,119,105,115,104,32,116,111,32,111
	.short	112,101,110,32,116,104,101,32,108,111,103,32,105,110,32,116
	.short	104,101,32,98,114,111,119,115,101,114,63,32,40,89,47,78
	.short	41
	.align	4
_21:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	92,110
	.align	4
_25:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	89
	.align	4
_26:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	78
