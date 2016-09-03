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
	.reference	_bbEmptyArray
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
	.reference	_bbOnDebugEnterScope
	.reference	_bbOnDebugEnterStm
	.reference	_bbOnDebugLeaveScope
	.reference	_bbStringClass
	.reference	_bbStringCompare
	.reference	_bbStringFromChar
	.reference	_bbStringSplit
	.reference	_brl_blitz_ArrayBoundsError
	.reference	_brl_blitz_NullObjectError
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
	cmpl	$0,_152
	je	_153
	mov	$0,%eax
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_153:
	movl	$1,_152
	movl	%ebp,4(%esp)
	movl	$_144,(%esp)
	calll	*_bbOnDebugEnterScope
	call	___bb_blitz_blitz
	call	___bb_max2d_max2d
	call	___bb_maxlua4gale_maxlua4gale
	call	___bb_console_console
	call	___bb_bye_bye
	call	___bb_main_main
	call	___bb_multiscript_multiscript
	movl	$_bb_GALEMainCon2,(%esp)
	call	_bbObjectRegisterType
	movl	$_23,(%esp)
	call	_bbObjectRegisterType
	movl	$_131,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_133,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_134,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_135,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_136,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_14,4(%esp)
	movl	$_13,(%esp)
	call	_tricky_units_mkl_version_MKL_Version
	movl	$_137,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_15,4(%esp)
	movl	$_13,(%esp)
	call	_tricky_units_mkl_version_MKL_Lic
	movl	$_138,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bb_GALEMainCon2,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_gale_main_GaleCon,%eax
	decl	4(%eax)
	jnz	_142
	movl	%eax,(%esp)
	call	_bbGCFree
_142:
	movl	%ebx,_gale_main_GaleCon
	movl	$_143,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_24,4(%esp)
	movl	$_23,(%esp)
	call	_bbObjectNew
	movl	%eax,(%esp)
	call	_gale_main_GALE_Register
	mov	$0,%ebx
	jmp	_50
_50:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_GALEMainCon2_New:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	%ebp,4(%esp)
	movl	$_155,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	__gale_main_GALE_DebugConsole_New
	movl	-4(%ebp),%eax
	movl	$_bb_GALEMainCon2,(%eax)
	movl	%ebp,4(%esp)
	movl	$_154,(%esp)
	calll	*_bbOnDebugEnterScope
	calll	*_bbOnDebugLeaveScope
	mov	$0,%ebx
	jmp	_53
_53:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_GALEMainCon2_Delete:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	movl	8(%ebp),%eax
_56:
	movl	$_gale_main_GALE_DebugConsole,(%eax)
	movl	%eax,(%esp)
	call	__gale_main_GALE_DebugConsole_Delete
	mov	$0,%eax
	jmp	_158
_158:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_GALEMainCon2_GaleConsoleWrite:
	push	%ebp
	mov	%esp,%ebp
	sub	$20,%esp
	push	%ebx
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	16(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	20(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	24(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	%ebp,4(%esp)
	movl	$_160,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_159,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	_tricky_units_console_ConsoleWrite
	mov	$0,%ebx
	jmp	_63
_63:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_GALEMainCon2_GaleConsoleShow:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	%ebp,4(%esp)
	movl	$_167,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_166,(%esp)
	calll	*_bbOnDebugEnterStm
	call	_tricky_units_console_ConsoleShow
	mov	$0,%ebx
	jmp	_66
_66:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_GALEMainCon2_GaleConsoleDoublePrint2:
	push	%ebp
	mov	%esp,%ebp
	sub	$40,%esp
	push	%ebx
	sub	$44,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	16(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	20(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	24(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	28(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	32(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	36(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	40(%ebp),%eax
	movl	%eax,-36(%ebp)
	movl	44(%ebp),%eax
	movl	%eax,-40(%ebp)
	movl	%ebp,4(%esp)
	movl	$_169,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_168,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-40(%ebp),%eax
	movl	%eax,32(%esp)
	movl	-36(%ebp),%eax
	movl	%eax,28(%esp)
	movl	-32(%ebp),%eax
	movl	%eax,24(%esp)
	movl	-28(%ebp),%eax
	movl	%eax,20(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,16(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	_tricky_units_console_ConsoleDoublePrint2
	mov	$0,%ebx
	jmp	_78
_78:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$44,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_GALEMainCon2_GaleConsoleCloseLogFile:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	%ebp,4(%esp)
	movl	$_180,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_179,(%esp)
	calll	*_bbOnDebugEnterStm
	call	_tricky_units_console_ConsoleCloseLogFile
	mov	$0,%ebx
	jmp	_81
_81:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_GALEMainCon2_GaleErrorClosureRequest:
	push	%ebp
	mov	%esp,%ebp
	sub	$16,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$28,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	$_bbEmptyArray,-12(%ebp)
	movl	$_bbEmptyString,-16(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_216,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_181,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_SessionLogFile,%eax
	movl	%eax,(%esp)
	call	_brl_filesystem_FileType
	cmp	$0,%eax
	setne	%al
	movzbl	%al,%eax
	movl	%eax,-8(%ebp)
	movl	$_183,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$2,4(%esp)
	movl	$_147,(%esp)
	call	_bbArrayNew1D
	mov	$_16,%edx
	incl	4(%edx)
	movl	%edx,24(%eax)
	mov	$_17,%edx
	incl	4(%edx)
	movl	%edx,28(%eax)
	movl	%eax,-12(%ebp)
	movl	$_188,(%esp)
	calll	*_bbOnDebugEnterStm
	call	_tricky_units_console_ConsoleCloseLogFile
	movl	$_189,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bbEmptyString,-16(%ebp)
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
	movl	%eax,-16(%ebp)
	add	$4,%ebx
	cmpl	$_bbNullObject,-16(%ebp)
	je	_18
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_196,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_195,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,12(%esp)
	movl	$180,8(%esp)
	movl	$255,4(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	call	_tricky_units_console_ConsoleWrite
	calll	*_bbOnDebugLeaveScope
_18:
	cmp	%edi,%ebx
	jne	_20
_19:
	movl	$_198,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_200
	call	_brl_blitz_NullObjectError
_200:
	movl	-8(%ebp),%ebx
	movl	-12(%ebp),%eax
	cmpl	20(%eax),%ebx
	jb	_202
	call	_brl_blitz_ArrayBoundsError
_202:
	movl	$255,16(%esp)
	movl	$0,12(%esp)
	movl	$255,8(%esp)
	movl	-12(%ebp),%eax
	movl	24(%eax,%ebx,4),%eax
	movl	%eax,4(%esp)
	movl	%esi,(%esp)
	movl	(%esi),%eax
	calll	*48(%eax)
	movl	$_203,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,16(%esp)
	movl	$60,12(%esp)
	movl	$0,8(%esp)
	movl	$600,4(%esp)
	movl	$800,(%esp)
	call	_brl_graphics_Graphics
	movl	$_204,(%esp)
	calll	*_bbOnDebugEnterStm
	call	_brl_polledinput_FlushKeys
	movl	$_205,(%esp)
	calll	*_bbOnDebugEnterStm
	call	_brl_max2d_Cls
	movl	$_206,(%esp)
	calll	*_bbOnDebugEnterStm
	call	_tricky_units_console_ConsoleShow
	movl	$_207,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$-1,(%esp)
	call	_brl_graphics_Flip
	movl	$_208,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_22,4(%esp)
	call	_brl_polledinput_WaitKey
	movl	%eax,(%esp)
	call	_bbStringFromChar
	movl	%eax,(%esp)
	call	_bbStringCompare
	cmp	$0,%eax
	sete	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	je	_209
	movl	-8(%ebp),%eax
_209:
	cmp	$0,%eax
	je	_211
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_213,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_212,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_SessionLogFile,%eax
	movl	%eax,(%esp)
	call	_brl_system_OpenURL
	calll	*_bbOnDebugLeaveScope
_211:
	movl	$_214,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_SessionFile,%eax
	movl	%eax,(%esp)
	call	_brl_filesystem_DeleteFile
	movl	$_215,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$1,(%esp)
	call	_tricky_units_bye_Bye
	mov	$0,%ebx
	jmp	_84
_84:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$28,%esp
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
	push	%ebx
	sub	$12,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	%ebp,4(%esp)
	movl	$_221,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_220,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$-1,(%esp)
	call	_brl_graphics_Flip
	mov	$0,%ebx
	jmp	_88
_88:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$12,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_GALEMainCon2_DoCls:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	%ebp,4(%esp)
	movl	$_224,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_223,(%esp)
	calll	*_bbOnDebugEnterStm
	call	_brl_max2d_Cls
	mov	$0,%ebx
	jmp	_91
_91:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_GALEMainCon2_Rewindow:
	push	%ebp
	mov	%esp,%ebp
	sub	$12,%esp
	push	%ebx
	sub	$24,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	$0,-12(%ebp)
	movl	%ebp,4(%esp)
	movl	$_231,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_225,(%esp)
	calll	*_bbOnDebugEnterStm
	call	_brl_graphics_GraphicsWidth
	movl	%eax,-8(%ebp)
	movl	$_227,(%esp)
	calll	*_bbOnDebugEnterStm
	call	_brl_graphics_GraphicsHeight
	movl	%eax,-12(%ebp)
	movl	$_229,(%esp)
	calll	*_bbOnDebugEnterStm
	call	_brl_graphics_EndGraphics
	movl	$_230,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,16(%esp)
	movl	$60,12(%esp)
	movl	$0,8(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_graphics_Graphics
	mov	$0,%ebx
	jmp	_94
_94:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$24,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_GALEMainCon2_StopGraphics:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	%ebp,4(%esp)
	movl	$_235,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_234,(%esp)
	calll	*_bbOnDebugEnterStm
	call	_brl_graphics_EndGraphics
	mov	$0,%ebx
	jmp	_97
_97:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_GALEMainCon2_RequestAppTerminate:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	%ebp,4(%esp)
	movl	$_237,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_236,(%esp)
	calll	*_bbOnDebugEnterStm
	call	_brl_polledinput_AppTerminate
	mov	%eax,%ebx
	jmp	_100
_100:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_GALEMainCon2_FullView:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	%ebp,4(%esp)
	movl	$_240,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_238,(%esp)
	calll	*_bbOnDebugEnterStm
	call	_brl_graphics_GraphicsHeight
	movl	%eax,12(%esp)
	call	_brl_graphics_GraphicsWidth
	movl	%eax,8(%esp)
	movl	$0,4(%esp)
	movl	$0,(%esp)
	call	_brl_max2d_SetViewport
	movl	$_239,(%esp)
	calll	*_bbOnDebugEnterStm
	fldz
	fstps	4(%esp)
	fldz
	fstps	(%esp)
	call	_brl_max2d_SetOrigin
	mov	$0,%ebx
	jmp	_103
_103:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_LConsole_New:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	%ebp,4(%esp)
	movl	$_242,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbObjectCtor
	movl	-4(%ebp),%eax
	movl	$_23,(%eax)
	movl	%ebp,4(%esp)
	movl	$_241,(%esp)
	calll	*_bbOnDebugEnterScope
	calll	*_bbOnDebugLeaveScope
	mov	$0,%ebx
	jmp	_106
_106:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_LConsole_Delete:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
_109:
	mov	$0,%eax
	jmp	_244
_244:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_LConsole_Write:
	push	%ebp
	mov	%esp,%ebp
	sub	$20,%esp
	push	%ebx
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	16(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	20(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	24(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	%ebp,4(%esp)
	movl	$_246,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_245,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	_tricky_units_console_ConsoleWrite
	mov	$0,%ebx
	jmp	_116
_116:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_LConsole_Print:
	push	%ebp
	mov	%esp,%ebp
	sub	$20,%esp
	push	%ebx
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	16(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	20(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	24(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	%ebp,4(%esp)
	movl	$_248,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_247,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	_tricky_units_console_ConsoleWrite
	mov	$0,%ebx
	jmp	_123
_123:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_LConsole_Show:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	%ebp,4(%esp)
	movl	$_250,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_249,(%esp)
	calll	*_bbOnDebugEnterStm
	call	_tricky_units_console_ConsoleShow
	mov	$0,%ebx
	jmp	_126
_126:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_LConsole_Flip:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	%ebp,4(%esp)
	movl	$_252,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_251,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$-1,(%esp)
	call	_brl_graphics_Flip
	mov	$0,%ebx
	jmp	_129
_129:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
	.data	
	.align	4
_152:
	.long	0
_145:
	.asciz	"Alt_M2D"
_146:
	.asciz	"SessionFile"
_147:
	.asciz	"$"
	.align	4
_bb_SessionFile:
	.long	_bbEmptyString
_148:
	.asciz	"SessionLogFile"
	.align	4
_bb_SessionLogFile:
	.long	_bbEmptyString
_149:
	.asciz	"SessionLogStream"
_150:
	.asciz	":TStream"
	.align	4
_bb_SessionLogStream:
	.long	_bbNullObject
_151:
	.asciz	"ErrorClosureMessage"
	.align	4
_bb_ErrorClosureMessage:
	.long	_bbEmptyString
	.align	4
_144:
	.long	1
	.long	_145
	.long	4
	.long	_146
	.long	_147
	.long	_bb_SessionFile
	.long	4
	.long	_148
	.long	_147
	.long	_bb_SessionLogFile
	.long	4
	.long	_149
	.long	_150
	.long	_bb_SessionLogStream
	.long	4
	.long	_151
	.long	_147
	.long	_bb_ErrorClosureMessage
	.long	0
_26:
	.asciz	"GALEMainCon2"
_27:
	.asciz	"New"
_28:
	.asciz	"()i"
_29:
	.asciz	"Delete"
_30:
	.asciz	"GaleConsoleWrite"
_31:
	.asciz	"($,i,i,i)i"
_32:
	.asciz	"GaleConsoleShow"
_33:
	.asciz	"GaleConsoleDoublePrint2"
_34:
	.asciz	"($,$,i,i,i,i,i,i,i)i"
_35:
	.asciz	"GaleConsoleCloseLogFile"
_36:
	.asciz	"GaleErrorClosureRequest"
_37:
	.asciz	"DoFlip"
_38:
	.asciz	"(i)i"
_39:
	.asciz	"DoCls"
_40:
	.asciz	"Rewindow"
_41:
	.asciz	"StopGraphics"
_42:
	.asciz	"RequestAppTerminate"
_43:
	.asciz	"FullView"
	.align	4
_25:
	.long	2
	.long	_26
	.long	6
	.long	_27
	.long	_28
	.long	16
	.long	6
	.long	_29
	.long	_28
	.long	20
	.long	6
	.long	_30
	.long	_31
	.long	48
	.long	6
	.long	_32
	.long	_28
	.long	60
	.long	6
	.long	_33
	.long	_34
	.long	52
	.long	6
	.long	_35
	.long	_28
	.long	56
	.long	6
	.long	_36
	.long	_28
	.long	76
	.long	6
	.long	_37
	.long	_38
	.long	64
	.long	6
	.long	_39
	.long	_28
	.long	68
	.long	6
	.long	_40
	.long	_28
	.long	72
	.long	6
	.long	_41
	.long	_28
	.long	80
	.long	6
	.long	_42
	.long	_28
	.long	84
	.long	6
	.long	_43
	.long	_28
	.long	88
	.long	0
	.align	4
_bb_GALEMainCon2:
	.long	_gale_main_GALE_DebugConsole
	.long	_bbObjectFree
	.long	_25
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
_45:
	.asciz	"LConsole"
_46:
	.asciz	"Write"
_47:
	.asciz	"Print"
_48:
	.asciz	"Show"
_49:
	.asciz	"Flip"
	.align	4
_44:
	.long	2
	.long	_45
	.long	6
	.long	_27
	.long	_28
	.long	16
	.long	6
	.long	_29
	.long	_28
	.long	20
	.long	6
	.long	_46
	.long	_31
	.long	48
	.long	6
	.long	_47
	.long	_31
	.long	52
	.long	6
	.long	_48
	.long	_28
	.long	56
	.long	6
	.long	_49
	.long	_28
	.long	60
	.long	0
	.align	4
_23:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_44
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
_132:
	.asciz	"/Volumes/Scyndi/Projects/Applications/BlitzMax/JCR6+/LAURA II/imp/Alt_M2D.bmx"
	.align	4
_131:
	.long	_132
	.long	56
	.long	1
	.align	4
_133:
	.long	_132
	.long	57
	.long	1
	.align	4
_134:
	.long	_132
	.long	58
	.long	1
	.align	4
_135:
	.long	_132
	.long	59
	.long	1
	.align	4
_136:
	.long	_132
	.long	63
	.long	1
	.align	4
_14:
	.long	_bbStringClass
	.long	2147483647
	.long	8
	.short	49,53,46,48,57,46,49,57
	.align	4
_13:
	.long	_bbStringClass
	.long	2147483647
	.long	22
	.short	76,65,85,82,65,32,73,73,32,45,32,65,108,116,95,77
	.short	50,68,46,98,109,120
	.align	4
_137:
	.long	_132
	.long	64
	.long	1
	.align	4
_15:
	.long	_bbStringClass
	.long	2147483647
	.long	26
	.short	77,111,122,105,108,108,97,32,80,117,98,108,105,99,32,76
	.short	105,99,101,110,115,101,32,50,46,48
	.align	4
_138:
	.long	_132
	.long	164
	.long	1
	.align	4
_143:
	.long	_132
	.long	192
	.long	1
	.align	4
_24:
	.long	_bbStringClass
	.long	2147483647
	.long	7
	.short	67,111,110,115,111,108,101
_156:
	.asciz	"Self"
_157:
	.asciz	":GALEMainCon2"
	.align	4
_155:
	.long	1
	.long	_27
	.long	2
	.long	_156
	.long	_157
	.long	-4
	.long	0
	.align	4
_154:
	.long	3
	.long	0
	.long	0
_161:
	.asciz	"Txt"
_162:
	.asciz	"R"
_163:
	.asciz	"i"
_164:
	.asciz	"G"
_165:
	.asciz	"B"
	.align	4
_160:
	.long	1
	.long	_30
	.long	2
	.long	_156
	.long	_157
	.long	-4
	.long	2
	.long	_161
	.long	_147
	.long	-8
	.long	2
	.long	_162
	.long	_163
	.long	-12
	.long	2
	.long	_164
	.long	_163
	.long	-16
	.long	2
	.long	_165
	.long	_163
	.long	-20
	.long	0
	.align	4
_159:
	.long	_132
	.long	100
	.long	2
	.align	4
_167:
	.long	1
	.long	_32
	.long	2
	.long	_156
	.long	_157
	.long	-4
	.long	0
	.align	4
_166:
	.long	_132
	.long	104
	.long	2
_170:
	.asciz	"Txt1"
_171:
	.asciz	"Txt2"
_172:
	.asciz	"T"
_173:
	.asciz	"R1"
_174:
	.asciz	"G1"
_175:
	.asciz	"B1"
_176:
	.asciz	"R2"
_177:
	.asciz	"G2"
_178:
	.asciz	"B2"
	.align	4
_169:
	.long	1
	.long	_33
	.long	2
	.long	_156
	.long	_157
	.long	-4
	.long	2
	.long	_170
	.long	_147
	.long	-8
	.long	2
	.long	_171
	.long	_147
	.long	-12
	.long	2
	.long	_172
	.long	_163
	.long	-16
	.long	2
	.long	_173
	.long	_163
	.long	-20
	.long	2
	.long	_174
	.long	_163
	.long	-24
	.long	2
	.long	_175
	.long	_163
	.long	-28
	.long	2
	.long	_176
	.long	_163
	.long	-32
	.long	2
	.long	_177
	.long	_163
	.long	-36
	.long	2
	.long	_178
	.long	_163
	.long	-40
	.long	0
	.align	4
_168:
	.long	_132
	.long	108
	.long	2
	.align	4
_180:
	.long	1
	.long	_35
	.long	2
	.long	_156
	.long	_157
	.long	-4
	.long	0
	.align	4
_179:
	.long	_132
	.long	112
	.long	2
_217:
	.asciz	"gotlog"
_218:
	.asciz	"cont"
_219:
	.asciz	"[]$"
	.align	4
_216:
	.long	1
	.long	_36
	.long	2
	.long	_156
	.long	_157
	.long	-4
	.long	2
	.long	_217
	.long	_163
	.long	-8
	.long	2
	.long	_218
	.long	_219
	.long	-12
	.long	0
	.align	4
_181:
	.long	_132
	.long	116
	.long	2
	.align	4
_183:
	.long	_132
	.long	117
	.long	2
	.align	4
_16:
	.long	_bbStringClass
	.long	2147483647
	.long	23
	.short	72,105,116,32,97,110,121,32,107,101,121,32,116,111,32,99
	.short	111,110,116,105,110,117,101
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
_188:
	.long	_132
	.long	118
	.long	2
	.align	4
_189:
	.long	_132
	.long	119
	.long	2
	.align	4
_21:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	92,110
_197:
	.asciz	"line"
	.align	4
_196:
	.long	3
	.long	0
	.long	2
	.long	_197
	.long	_147
	.long	-16
	.long	0
	.align	4
_195:
	.long	_132
	.long	120
	.long	3
	.align	4
_198:
	.long	_132
	.long	122
	.long	2
	.align	4
_203:
	.long	_132
	.long	123
	.long	2
	.align	4
_204:
	.long	_132
	.long	124
	.long	2
	.align	4
_205:
	.long	_132
	.long	125
	.long	2
	.align	4
_206:
	.long	_132
	.long	126
	.long	2
	.align	4
_207:
	.long	_132
	.long	127
	.long	2
	.align	4
_208:
	.long	_132
	.long	128
	.long	2
	.align	4
_22:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	89
	.align	4
_213:
	.long	3
	.long	0
	.long	0
	.align	4
_212:
	.long	_132
	.long	128
	.long	35
	.align	4
_214:
	.long	_132
	.long	129
	.long	2
	.align	4
_215:
	.long	_132
	.long	130
	.long	2
_222:
	.asciz	"A"
	.align	4
_221:
	.long	1
	.long	_37
	.long	2
	.long	_156
	.long	_157
	.long	-4
	.long	2
	.long	_222
	.long	_163
	.long	-8
	.long	0
	.align	4
_220:
	.long	_132
	.long	134
	.long	2
	.align	4
_224:
	.long	1
	.long	_39
	.long	2
	.long	_156
	.long	_157
	.long	-4
	.long	0
	.align	4
_223:
	.long	_132
	.long	138
	.long	2
_232:
	.asciz	"GW"
_233:
	.asciz	"GH"
	.align	4
_231:
	.long	1
	.long	_40
	.long	2
	.long	_156
	.long	_157
	.long	-4
	.long	2
	.long	_232
	.long	_163
	.long	-8
	.long	2
	.long	_233
	.long	_163
	.long	-12
	.long	0
	.align	4
_225:
	.long	_132
	.long	142
	.long	2
	.align	4
_227:
	.long	_132
	.long	143
	.long	2
	.align	4
_229:
	.long	_132
	.long	144
	.long	2
	.align	4
_230:
	.long	_132
	.long	145
	.long	2
	.align	4
_235:
	.long	1
	.long	_41
	.long	2
	.long	_156
	.long	_157
	.long	-4
	.long	0
	.align	4
_234:
	.long	_132
	.long	149
	.long	2
	.align	4
_237:
	.long	1
	.long	_42
	.long	2
	.long	_156
	.long	_157
	.long	-4
	.long	0
	.align	4
_236:
	.long	_132
	.long	153
	.long	2
	.align	4
_240:
	.long	1
	.long	_43
	.long	2
	.long	_156
	.long	_157
	.long	-4
	.long	0
	.align	4
_238:
	.long	_132
	.long	157
	.long	2
	.align	4
_239:
	.long	_132
	.long	158
	.long	2
_243:
	.asciz	":LConsole"
	.align	4
_242:
	.long	1
	.long	_27
	.long	2
	.long	_156
	.long	_243
	.long	-4
	.long	0
	.align	4
_241:
	.long	3
	.long	0
	.long	0
	.align	4
_246:
	.long	1
	.long	_46
	.long	2
	.long	_156
	.long	_243
	.long	-4
	.long	2
	.long	_161
	.long	_147
	.long	-8
	.long	2
	.long	_162
	.long	_163
	.long	-12
	.long	2
	.long	_164
	.long	_163
	.long	-16
	.long	2
	.long	_165
	.long	_163
	.long	-20
	.long	0
	.align	4
_245:
	.long	_132
	.long	174
	.long	2
	.align	4
_248:
	.long	1
	.long	_47
	.long	2
	.long	_156
	.long	_243
	.long	-4
	.long	2
	.long	_161
	.long	_147
	.long	-8
	.long	2
	.long	_162
	.long	_163
	.long	-12
	.long	2
	.long	_164
	.long	_163
	.long	-16
	.long	2
	.long	_165
	.long	_163
	.long	-20
	.long	0
	.align	4
_247:
	.long	_132
	.long	178
	.long	2
	.align	4
_250:
	.long	1
	.long	_48
	.long	2
	.long	_156
	.long	_243
	.long	-4
	.long	0
	.align	4
_249:
	.long	_132
	.long	182
	.long	2
	.align	4
_252:
	.long	1
	.long	_49
	.long	2
	.long	_156
	.long	_243
	.long	-4
	.long	0
	.align	4
_251:
	.long	_132
	.long	187
	.long	2
