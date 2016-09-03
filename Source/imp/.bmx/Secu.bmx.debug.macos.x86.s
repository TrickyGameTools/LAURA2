	.reference	___bb_blitz_blitz
	.reference	___bb_console_console
	.reference	___bb_gamevars_gamevars
	.reference	___bb_initfile2_initfile2
	.reference	___bb_jcr6main_jcr6main
	.reference	___bb_rpgstats_rpgstats
	.reference	_bbEmptyString
	.reference	_bbNullObject
	.reference	_bbObjectClass
	.reference	_bbObjectCompare
	.reference	_bbObjectCtor
	.reference	_bbObjectDowncast
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
	.reference	_bbStringConcat
	.reference	_brl_blitz_NullMethodError
	.reference	_brl_blitz_NullObjectError
	.reference	_brl_filesystem_DeleteFile
	.reference	_brl_filesystem_RenameFile
	.reference	_brl_linkedlist_ListAddLast
	.reference	_brl_linkedlist_TList
	.reference	_brl_map_MapKeys
	.reference	_brl_stream_LoadString
	.reference	_jcr6_jcr6main_EntryList
	.reference	_jcr6_jcr6main_JCR_B
	.reference	_jcr6_jcr6main_JCR_Create
	.reference	_jcr6_jcr6main_JCR_Dir
	.reference	_tricky_units_console_ConsoleWrite
	.globl	___bb_imp_secu
	.globl	__bb_TNetwork_Delete
	.globl	__bb_TNetwork_New
	.globl	__bb_TSecu_Delete
	.globl	__bb_TSecu_New
	.globl	_bb_LSecu
	.globl	_bb_LoadNet
	.globl	_bb_NetList
	.globl	_bb_SSecu
	.globl	_bb_SSecuDone
	.globl	_bb_SSecuInit
	.globl	_bb_SSecuStringMap
	.globl	_bb_SaveNet
	.globl	_bb_SecuFile
	.globl	_bb_SecuList
	.globl	_bb_SecuStrMap
	.globl	_bb_TNetwork
	.globl	_bb_TSecu
	.text	
___bb_imp_secu:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$20,%esp
	cmpl	$0,_129
	je	_130
	mov	$0,%eax
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_130:
	movl	$1,_129
	movl	%ebp,4(%esp)
	movl	$_124,(%esp)
	calll	*_bbOnDebugEnterScope
	call	___bb_blitz_blitz
	call	___bb_initfile2_initfile2
	call	___bb_jcr6main_jcr6main
	call	___bb_gamevars_gamevars
	call	___bb_rpgstats_rpgstats
	call	___bb_console_console
	movl	$_bb_TSecu,(%esp)
	call	_bbObjectRegisterType
	movl	$_bb_TNetwork,(%esp)
	call	_bbObjectRegisterType
	movl	$_116,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_119,%eax
	and	$1,%eax
	cmp	$0,%eax
	jne	_120
	movl	$_brl_linkedlist_TList,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	movl	%eax,_bb_SecuList
	orl	$1,_119
_120:
	movl	$_121,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_119,%eax
	and	$2,%eax
	cmp	$0,%eax
	jne	_123
	movl	$_brl_linkedlist_TList,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	movl	%eax,_bb_NetList
	orl	$2,_119
_123:
	mov	$0,%ebx
	jmp	_70
_70:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TSecu_New:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	%ebp,4(%esp)
	movl	$_133,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbObjectCtor
	movl	-4(%ebp),%eax
	movl	$_bb_TSecu,(%eax)
	movl	%ebp,4(%esp)
	movl	$_132,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_131,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	movl	_bb_SecuList,%eax
	movl	%eax,(%esp)
	call	_brl_linkedlist_ListAddLast
	calll	*_bbOnDebugLeaveScope
	mov	$0,%ebx
	jmp	_73
_73:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TSecu_Delete:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
_76:
	mov	$0,%eax
	jmp	_136
_136:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TNetwork_New:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	%ebp,4(%esp)
	movl	$_139,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbObjectCtor
	movl	-4(%ebp),%eax
	movl	$_bb_TNetwork,(%eax)
	movl	%ebp,4(%esp)
	movl	$_138,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_137,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	movl	_bb_NetList,%eax
	movl	%eax,(%esp)
	call	_brl_linkedlist_ListAddLast
	calll	*_bbOnDebugLeaveScope
	mov	$0,%ebx
	jmp	_79
_79:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TNetwork_Delete:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
_82:
	mov	$0,%eax
	jmp	_141
_141:
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_SSecuInit:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$8,%esp
	movl	$_bbNullObject,-4(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_157,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_142,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bbNullObject,-4(%ebp)
	movl	_bb_SecuList,%edi
	mov	%edi,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_146
	call	_brl_blitz_NullObjectError
_146:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*140(%eax)
	mov	%eax,%esi
	jmp	_15
_17:
	mov	%esi,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_151
	call	_brl_blitz_NullObjectError
_151:
	movl	$_bb_TSecu,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	%eax,(%esp)
	call	_bbObjectDowncast
	movl	%eax,-4(%ebp)
	cmpl	$_bbNullObject,-4(%ebp)
	je	_15
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_155,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_152,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_154
	call	_brl_blitz_NullObjectError
_154:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	calll	*_bbOnDebugLeaveScope
_15:
	mov	%esi,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_149
	call	_brl_blitz_NullObjectError
_149:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*48(%eax)
	cmp	$0,%eax
	jne	_17
_16:
	mov	$0,%ebx
	jmp	_84
_84:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$8,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_SSecu:
	push	%ebp
	mov	%esp,%ebp
	sub	$12,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	$_bbNullObject,-12(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_172,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_158,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bbNullObject,-12(%ebp)
	movl	_bb_SecuList,%edi
	mov	%edi,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_162
	call	_brl_blitz_NullObjectError
_162:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*140(%eax)
	mov	%eax,%esi
	jmp	_18
_20:
	mov	%esi,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_167
	call	_brl_blitz_NullObjectError
_167:
	movl	$_bb_TSecu,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	%eax,(%esp)
	call	_bbObjectDowncast
	movl	%eax,-12(%ebp)
	cmpl	$_bbNullObject,-12(%ebp)
	je	_18
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_171,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_168,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_170
	call	_brl_blitz_NullObjectError
_170:
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*56(%eax)
	calll	*_bbOnDebugLeaveScope
_18:
	mov	%esi,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_165
	call	_brl_blitz_NullObjectError
_165:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*48(%eax)
	cmp	$0,%eax
	jne	_20
_19:
	mov	$0,%ebx
	jmp	_88
_88:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_SSecuDone:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$20,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	$_bbNullObject,-8(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_190,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_176,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bbNullObject,-8(%ebp)
	movl	_bb_SecuList,%edi
	mov	%edi,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_180
	call	_brl_blitz_NullObjectError
_180:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*140(%eax)
	mov	%eax,%esi
	jmp	_21
_23:
	mov	%esi,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_185
	call	_brl_blitz_NullObjectError
_185:
	movl	$_bb_TSecu,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	%eax,(%esp)
	call	_bbObjectDowncast
	movl	%eax,-8(%ebp)
	cmpl	$_bbNullObject,-8(%ebp)
	je	_21
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_189,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_186,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_188
	call	_brl_blitz_NullObjectError
_188:
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*60(%eax)
	calll	*_bbOnDebugLeaveScope
_21:
	mov	%esi,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_183
	call	_brl_blitz_NullObjectError
_183:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*48(%eax)
	cmp	$0,%eax
	jne	_23
_22:
	mov	$0,%ebx
	jmp	_91
_91:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$20,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_SecuStrMap:
	push	%ebp
	mov	%esp,%ebp
	sub	$12,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	$_bbEmptyString,-8(%ebp)
	movl	$_bbEmptyString,-12(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_211,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_193,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_1,-8(%ebp)
	movl	$_195,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bbEmptyString,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_map_MapKeys
	mov	%eax,%edi
	mov	%edi,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_199
	call	_brl_blitz_NullObjectError
_199:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*48(%eax)
	mov	%eax,%esi
	jmp	_24
_26:
	mov	%esi,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_204
	call	_brl_blitz_NullObjectError
_204:
	movl	$_bbStringClass,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	%eax,(%esp)
	call	_bbObjectDowncast
	movl	%eax,-12(%ebp)
	cmpl	$_bbNullObject,-12(%ebp)
	je	_24
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_208,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_205,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_207
	call	_brl_blitz_NullObjectError
_207:
	movl	-12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*120(%eax)
	mov	%eax,%ebx
	movl	$_27,4(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	%ebx,4(%esp)
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$_28,4(%esp)
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	%eax,-8(%ebp)
	calll	*_bbOnDebugLeaveScope
_24:
	mov	%esi,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_202
	call	_brl_blitz_NullObjectError
_202:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*48(%eax)
	cmp	$0,%eax
	jne	_26
_25:
	movl	$_210,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%ebx
	jmp	_94
_94:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_SSecuStringMap:
	push	%ebp
	mov	%esp,%ebp
	sub	$12,%esp
	push	%ebx
	sub	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	$_bbEmptyString,-12(%ebp)
	movl	%ebp,4(%esp)
	movl	$_218,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_215,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	_bb_SecuStrMap
	movl	%eax,-12(%ebp)
	movl	$_217,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bb_SSecu
	mov	$0,%ebx
	jmp	_98
_98:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$8,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_SaveNet:
	push	%ebp
	mov	%esp,%ebp
	sub	$12,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	$_bbNullObject,-12(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_239,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_221,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bbNullObject,-12(%ebp)
	movl	_bb_NetList,%edi
	mov	%edi,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_225
	call	_brl_blitz_NullObjectError
_225:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*140(%eax)
	mov	%eax,%esi
	jmp	_29
_31:
	mov	%esi,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_230
	call	_brl_blitz_NullObjectError
_230:
	movl	$_bb_TNetwork,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	%eax,(%esp)
	call	_bbObjectDowncast
	movl	%eax,-12(%ebp)
	cmpl	$_bbNullObject,-12(%ebp)
	je	_29
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_237,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_231,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_233
	call	_brl_blitz_NullObjectError
_233:
	movl	$10,12(%esp)
	movl	$95,8(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	%eax,4(%esp)
	movl	$_32,(%esp)
	call	_bbStringConcat
	movl	$255,4(%esp)
	movl	%eax,(%esp)
	call	_tricky_units_console_ConsoleWrite
	movl	$_234,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_236
	call	_brl_blitz_NullObjectError
_236:
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*60(%eax)
	calll	*_bbOnDebugLeaveScope
_29:
	mov	%esi,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_228
	call	_brl_blitz_NullObjectError
_228:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*48(%eax)
	cmp	$0,%eax
	jne	_31
_30:
	mov	$0,%ebx
	jmp	_102
_102:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_LoadNet:
	push	%ebp
	mov	%esp,%ebp
	sub	$12,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	$_bbNullObject,-12(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_260,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_243,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bbNullObject,-12(%ebp)
	movl	_bb_NetList,%edi
	mov	%edi,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_247
	call	_brl_blitz_NullObjectError
_247:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*140(%eax)
	mov	%eax,%esi
	jmp	_33
_35:
	mov	%esi,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_252
	call	_brl_blitz_NullObjectError
_252:
	movl	$_bb_TNetwork,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	%eax,(%esp)
	call	_bbObjectDowncast
	movl	%eax,-12(%ebp)
	cmpl	$_bbNullObject,-12(%ebp)
	je	_33
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_259,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_253,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_255
	call	_brl_blitz_NullObjectError
_255:
	movl	$10,12(%esp)
	movl	$95,8(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	%eax,4(%esp)
	movl	$_36,(%esp)
	call	_bbStringConcat
	movl	$255,4(%esp)
	movl	%eax,(%esp)
	call	_tricky_units_console_ConsoleWrite
	movl	$_256,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_258
	call	_brl_blitz_NullObjectError
_258:
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*64(%eax)
	calll	*_bbOnDebugLeaveScope
_33:
	mov	%esi,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_250
	call	_brl_blitz_NullObjectError
_250:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*48(%eax)
	cmp	$0,%eax
	jne	_35
_34:
	mov	$0,%ebx
	jmp	_106
_106:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_SecuFile:
	push	%ebp
	mov	%esp,%ebp
	sub	$24,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$36,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	$_bbNullObject,-8(%ebp)
	movl	$_bbNullObject,-12(%ebp)
	movl	$_bbEmptyString,-16(%ebp)
	movl	$_bbEmptyString,-20(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_297,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_263,(%esp)
	calll	*_bbOnDebugEnterStm
	call	_bb_SSecuInit
	movl	$_264,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_1,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_jcr6_jcr6main_JCR_Dir
	movl	%eax,-8(%ebp)
	movl	$_266,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_37,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$_bbNullObject,4(%esp)
	movl	%eax,(%esp)
	call	_jcr6_jcr6main_JCR_Create
	movl	%eax,-12(%ebp)
	movl	$_268,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bbEmptyString,-16(%ebp)
	movl	$_270,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bbEmptyString,-20(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	_jcr6_jcr6main_EntryList
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_274
	call	_brl_blitz_NullObjectError
_274:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*48(%eax)
	mov	%eax,%edi
	jmp	_38
_40:
	mov	%edi,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_279
	call	_brl_blitz_NullObjectError
_279:
	movl	$_bbStringClass,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	%eax,(%esp)
	call	_bbObjectDowncast
	movl	%eax,-20(%ebp)
	cmpl	$_bbNullObject,-20(%ebp)
	je	_38
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_289,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_280,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	_jcr6_jcr6main_JCR_B
	movl	%eax,(%esp)
	call	_brl_stream_LoadString
	movl	%eax,-16(%ebp)
	movl	$_281,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-16(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,(%esp)
	call	_bb_SSecu
	movl	$_282,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_284
	call	_brl_blitz_NullObjectError
_284:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_286
	call	_brl_blitz_NullObjectError
_286:
	movl	-20(%ebp),%eax
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*48(%eax)
	mov	%eax,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_288
	call	_brl_blitz_NullObjectError
_288:
	movl	$_1,20(%esp)
	movl	$_1,16(%esp)
	movl	$_41,12(%esp)
	movl	8(%ebx),%eax
	movl	%eax,8(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,4(%esp)
	movl	%esi,(%esp)
	movl	(%esi),%eax
	calll	*60(%eax)
	calll	*_bbOnDebugLeaveScope
_38:
	mov	%edi,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_277
	call	_brl_blitz_NullObjectError
_277:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*48(%eax)
	cmp	$0,%eax
	jne	_40
_39:
	movl	$_291,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	call	_bb_SSecuDone
	movl	$_292,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_294
	call	_brl_blitz_NullObjectError
_294:
	movl	$_5,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*80(%eax)
	movl	$_295,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_filesystem_DeleteFile
	movl	$_296,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	movl	$_37,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	%ebx,4(%esp)
	movl	%eax,(%esp)
	call	_brl_filesystem_RenameFile
	mov	$0,%ebx
	jmp	_109
_109:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$36,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_LSecu:
	push	%ebp
	mov	%esp,%ebp
	sub	$20,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$24,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	16(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	$_bbNullObject,-20(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_322,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_303,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$1,-16(%ebp)
	movl	$_305,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bbNullObject,-20(%ebp)
	movl	_bb_SecuList,%edi
	mov	%edi,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_309
	call	_brl_blitz_NullObjectError
_309:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*140(%eax)
	mov	%eax,%esi
	jmp	_42
_44:
	mov	%esi,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_314
	call	_brl_blitz_NullObjectError
_314:
	movl	$_bb_TSecu,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	%eax,(%esp)
	call	_bbObjectDowncast
	movl	%eax,-20(%ebp)
	cmpl	$_bbNullObject,-20(%ebp)
	je	_42
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_320,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_315,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-16(%ebp),%eax
	cmp	$0,%eax
	je	_318
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_317
	call	_brl_blitz_NullObjectError
_317:
	movl	-12(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*64(%eax)
_318:
	movl	%eax,-16(%ebp)
	calll	*_bbOnDebugLeaveScope
_42:
	mov	%esi,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_312
	call	_brl_blitz_NullObjectError
_312:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*48(%eax)
	cmp	$0,%eax
	jne	_44
_43:
	movl	$_321,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-16(%ebp),%ebx
	jmp	_114
_114:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$24,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
	.data	
	.align	4
_129:
	.long	0
_125:
	.asciz	"Secu"
_126:
	.asciz	"SecuList"
_127:
	.asciz	":TList"
	.align	4
_bb_SecuList:
	.long	_bbNullObject
_128:
	.asciz	"NetList"
	.align	4
_bb_NetList:
	.long	_bbNullObject
	.align	4
_124:
	.long	1
	.long	_125
	.long	4
	.long	_126
	.long	_127
	.long	_bb_SecuList
	.long	4
	.long	_128
	.long	_127
	.long	_bb_NetList
	.long	0
_46:
	.asciz	"TSecu"
_47:
	.asciz	"New"
_48:
	.asciz	"()i"
_49:
	.asciz	"Delete"
_50:
	.asciz	"Check"
_51:
	.asciz	"(:TJCRDir,:TIni)i"
_52:
	.asciz	"SSecuInit"
_53:
	.asciz	"SSecu"
_54:
	.asciz	"($,$)i"
_55:
	.asciz	"SSecuDone"
_56:
	.asciz	"(:TJCRCreate)i"
_57:
	.asciz	"LSecu"
_58:
	.asciz	"(:TJCRDir,:TJCRDir,$)i"
	.align	4
_45:
	.long	2
	.long	_46
	.long	6
	.long	_47
	.long	_48
	.long	16
	.long	6
	.long	_49
	.long	_48
	.long	20
	.long	6
	.long	_50
	.long	_51
	.long	48
	.long	6
	.long	_52
	.long	_48
	.long	52
	.long	6
	.long	_53
	.long	_54
	.long	56
	.long	6
	.long	_55
	.long	_56
	.long	60
	.long	6
	.long	_57
	.long	_58
	.long	64
	.long	0
	.align	4
_bb_TSecu:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_45
	.long	8
	.long	__bb_TSecu_New
	.long	__bb_TSecu_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_brl_blitz_NullMethodError
	.long	_brl_blitz_NullMethodError
	.long	_brl_blitz_NullMethodError
	.long	_brl_blitz_NullMethodError
	.long	_brl_blitz_NullMethodError
_60:
	.asciz	"TNetwork"
_61:
	.asciz	"Login"
_62:
	.asciz	"(:TIni)i"
_63:
	.asciz	"Name"
_64:
	.asciz	"()$"
_65:
	.asciz	"User"
_66:
	.asciz	"(:TIni)$"
_67:
	.asciz	"SaveLogin"
_68:
	.asciz	"(:TJCRCreate,:TIni)i"
_69:
	.asciz	"LoadLogin"
	.align	4
_59:
	.long	2
	.long	_60
	.long	6
	.long	_47
	.long	_48
	.long	16
	.long	6
	.long	_49
	.long	_48
	.long	20
	.long	6
	.long	_61
	.long	_62
	.long	48
	.long	6
	.long	_63
	.long	_64
	.long	52
	.long	6
	.long	_65
	.long	_66
	.long	56
	.long	6
	.long	_67
	.long	_68
	.long	60
	.long	6
	.long	_69
	.long	_51
	.long	64
	.long	0
	.align	4
_bb_TNetwork:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_59
	.long	8
	.long	__bb_TNetwork_New
	.long	__bb_TNetwork_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_brl_blitz_NullMethodError
	.long	_brl_blitz_NullMethodError
	.long	_brl_blitz_NullMethodError
	.long	_brl_blitz_NullMethodError
	.long	_brl_blitz_NullMethodError
_117:
	.asciz	"/Volumes/Scyndi/Projects/Applications/BlitzMax/JCR6+/LAURA II/imp/Secu.bmx"
	.align	4
_116:
	.long	_117
	.long	52
	.long	1
	.align	4
_119:
	.long	0
	.align	4
_121:
	.long	_117
	.long	53
	.long	1
_134:
	.asciz	"Self"
_135:
	.asciz	":TSecu"
	.align	4
_133:
	.long	1
	.long	_47
	.long	2
	.long	_134
	.long	_135
	.long	-4
	.long	0
	.align	4
_132:
	.long	3
	.long	0
	.long	0
	.align	4
_131:
	.long	_117
	.long	34
	.long	15
_140:
	.asciz	":TNetwork"
	.align	4
_139:
	.long	1
	.long	_47
	.long	2
	.long	_134
	.long	_140
	.long	-4
	.long	0
	.align	4
_138:
	.long	3
	.long	0
	.long	0
	.align	4
_137:
	.long	_117
	.long	48
	.long	15
	.align	4
_157:
	.long	1
	.long	_52
	.long	0
	.align	4
_142:
	.long	_117
	.long	57
	.long	1
_156:
	.asciz	"S"
	.align	4
_155:
	.long	3
	.long	0
	.long	2
	.long	_156
	.long	_135
	.long	-4
	.long	0
	.align	4
_152:
	.long	_117
	.long	57
	.long	37
_173:
	.asciz	"e"
_174:
	.asciz	"$"
_175:
	.asciz	"d"
	.align	4
_172:
	.long	1
	.long	_53
	.long	2
	.long	_173
	.long	_174
	.long	-4
	.long	2
	.long	_175
	.long	_174
	.long	-8
	.long	0
	.align	4
_158:
	.long	_117
	.long	61
	.long	1
	.align	4
_171:
	.long	3
	.long	0
	.long	2
	.long	_156
	.long	_135
	.long	-12
	.long	0
	.align	4
_168:
	.long	_117
	.long	61
	.long	37
_191:
	.asciz	"J"
_192:
	.asciz	":TJCRCreate"
	.align	4
_190:
	.long	1
	.long	_55
	.long	2
	.long	_191
	.long	_192
	.long	-4
	.long	0
	.align	4
_176:
	.long	_117
	.long	65
	.long	1
	.align	4
_189:
	.long	3
	.long	0
	.long	2
	.long	_156
	.long	_135
	.long	-8
	.long	0
	.align	4
_186:
	.long	_117
	.long	65
	.long	37
_212:
	.asciz	"SecuStrMap"
_213:
	.asciz	":StringMap"
_214:
	.asciz	"r"
	.align	4
_211:
	.long	1
	.long	_212
	.long	2
	.long	_175
	.long	_213
	.long	-4
	.long	2
	.long	_214
	.long	_174
	.long	-8
	.long	0
	.align	4
_193:
	.long	_117
	.long	70
	.long	1
	.align	4
_1:
	.long	_bbStringClass
	.long	2147483647
	.long	0
	.align	4
_195:
	.long	_117
	.long	71
	.long	1
_209:
	.asciz	"K"
	.align	4
_208:
	.long	3
	.long	0
	.long	2
	.long	_209
	.long	_174
	.long	-12
	.long	0
	.align	4
_205:
	.long	_117
	.long	72
	.long	2
	.align	4
_27:
	.long	_bbStringClass
	.long	2147483647
	.long	3
	.short	32,61,32
	.align	4
_28:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	10
	.align	4
_210:
	.long	_117
	.long	74
	.long	1
_219:
	.asciz	"SSecuStringMap"
_220:
	.asciz	"D"
	.align	4
_218:
	.long	1
	.long	_219
	.long	2
	.long	_173
	.long	_174
	.long	-4
	.long	2
	.long	_220
	.long	_213
	.long	-8
	.long	2
	.long	_214
	.long	_174
	.long	-12
	.long	0
	.align	4
_215:
	.long	_117
	.long	78
	.long	1
	.align	4
_217:
	.long	_117
	.long	79
	.long	1
_240:
	.asciz	"SaveNet"
_241:
	.asciz	"bt"
_242:
	.asciz	":TIni"
	.align	4
_239:
	.long	1
	.long	_240
	.long	2
	.long	_241
	.long	_192
	.long	-4
	.long	2
	.long	_175
	.long	_242
	.long	-8
	.long	0
	.align	4
_221:
	.long	_117
	.long	83
	.long	1
_238:
	.asciz	"N"
	.align	4
_237:
	.long	3
	.long	0
	.long	2
	.long	_238
	.long	_140
	.long	-12
	.long	0
	.align	4
_231:
	.long	_117
	.long	84
	.long	2
	.align	4
_32:
	.long	_bbStringClass
	.long	2147483647
	.long	19
	.short	83,97,118,105,110,103,32,108,111,103,105,110,32,100,97,116
	.short	97,58,32
	.align	4
_234:
	.long	_117
	.long	85
	.long	2
_261:
	.asciz	"LoadNet"
_262:
	.asciz	":TJCRDir"
	.align	4
_260:
	.long	1
	.long	_261
	.long	2
	.long	_241
	.long	_262
	.long	-4
	.long	2
	.long	_175
	.long	_242
	.long	-8
	.long	0
	.align	4
_243:
	.long	_117
	.long	90
	.long	1
	.align	4
_259:
	.long	3
	.long	0
	.long	2
	.long	_238
	.long	_140
	.long	-12
	.long	0
	.align	4
_253:
	.long	_117
	.long	91
	.long	2
	.align	4
_36:
	.long	_bbStringClass
	.long	2147483647
	.long	20
	.short	76,111,97,100,105,110,103,32,108,111,103,105,110,32,100,97
	.short	116,97,58,32
	.align	4
_256:
	.long	_117
	.long	92
	.long	2
_298:
	.asciz	"SecuFile"
_299:
	.asciz	"file"
_300:
	.asciz	"JI"
_301:
	.asciz	"JO"
_302:
	.asciz	"data"
	.align	4
_297:
	.long	1
	.long	_298
	.long	2
	.long	_299
	.long	_174
	.long	-4
	.long	2
	.long	_300
	.long	_262
	.long	-8
	.long	2
	.long	_301
	.long	_192
	.long	-12
	.long	2
	.long	_302
	.long	_174
	.long	-16
	.long	0
	.align	4
_263:
	.long	_117
	.long	98
	.long	1
	.align	4
_264:
	.long	_117
	.long	99
	.long	1
	.align	4
_266:
	.long	_117
	.long	100
	.long	1
	.align	4
_37:
	.long	_bbStringClass
	.long	2147483647
	.long	16
	.short	95,36,36,36,36,95,83,69,67,85,95,36,36,36,36,95
	.align	4
_268:
	.long	_117
	.long	101
	.long	1
	.align	4
_270:
	.long	_117
	.long	102
	.long	1
_290:
	.asciz	"F"
	.align	4
_289:
	.long	3
	.long	0
	.long	2
	.long	_290
	.long	_174
	.long	-20
	.long	0
	.align	4
_280:
	.long	_117
	.long	103
	.long	2
	.align	4
_281:
	.long	_117
	.long	104
	.long	2
	.align	4
_282:
	.long	_117
	.long	105
	.long	2
	.align	4
_41:
	.long	_bbStringClass
	.long	2147483647
	.long	4
	.short	122,108,105,98
	.align	4
_291:
	.long	_117
	.long	107
	.long	1
	.align	4
_292:
	.long	_117
	.long	108
	.long	1
	.align	4
_5:
	.long	_bbStringClass
	.long	2147483647
	.long	5
	.short	83,116,111,114,101
	.align	4
_295:
	.long	_117
	.long	109
	.long	1
	.align	4
_296:
	.long	_117
	.long	110
	.long	1
_323:
	.asciz	"MainJ"
_324:
	.asciz	"Dev"
_325:
	.asciz	"Original"
_326:
	.asciz	"i"
	.align	4
_322:
	.long	1
	.long	_57
	.long	2
	.long	_191
	.long	_262
	.long	-4
	.long	2
	.long	_323
	.long	_262
	.long	-8
	.long	2
	.long	_324
	.long	_174
	.long	-12
	.long	2
	.long	_325
	.long	_326
	.long	-16
	.long	0
	.align	4
_303:
	.long	_117
	.long	114
	.long	1
	.align	4
_305:
	.long	_117
	.long	115
	.long	1
	.align	4
_320:
	.long	3
	.long	0
	.long	2
	.long	_156
	.long	_135
	.long	-20
	.long	0
	.align	4
_315:
	.long	_117
	.long	116
	.long	2
	.align	4
_321:
	.long	_117
	.long	118
	.long	1
