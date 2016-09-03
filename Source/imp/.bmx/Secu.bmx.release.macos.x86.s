	.reference	___bb_blitz_blitz
	.reference	___bb_console_console
	.reference	___bb_gamevars_gamevars
	.reference	___bb_initfile2_initfile2
	.reference	___bb_jcr6main_jcr6main
	.reference	___bb_rpgstats_rpgstats
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
	.reference	_bbStringClass
	.reference	_bbStringConcat
	.reference	_brl_blitz_NullMethodError
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
	sub	$8,%esp
	cmpl	$0,_121
	je	_122
	mov	$0,%eax
	mov	%ebp,%esp
	pop	%ebp
	ret
_122:
	movl	$1,_121
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
	movl	_117,%eax
	and	$1,%eax
	cmp	$0,%eax
	jne	_118
	movl	$_brl_linkedlist_TList,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	movl	%eax,_bb_SecuList
	orl	$1,_117
_118:
	movl	_117,%eax
	and	$2,%eax
	cmp	$0,%eax
	jne	_120
	movl	$_brl_linkedlist_TList,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	movl	%eax,_bb_NetList
	orl	$2,_117
_120:
	mov	$0,%eax
	jmp	_70
_70:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TSecu_New:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$20,%esp
	movl	8(%ebp),%ebx
	movl	%ebx,(%esp)
	call	_bbObjectCtor
	movl	$_bb_TSecu,(%ebx)
	movl	%ebx,4(%esp)
	movl	_bb_SecuList,%eax
	movl	%eax,(%esp)
	call	_brl_linkedlist_ListAddLast
	mov	$0,%eax
	jmp	_73
_73:
	add	$20,%esp
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
	jmp	_123
_123:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TNetwork_New:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$20,%esp
	movl	8(%ebp),%ebx
	movl	%ebx,(%esp)
	call	_bbObjectCtor
	movl	$_bb_TNetwork,(%ebx)
	movl	%ebx,4(%esp)
	movl	_bb_NetList,%eax
	movl	%eax,(%esp)
	call	_brl_linkedlist_ListAddLast
	mov	$0,%eax
	jmp	_79
_79:
	add	$20,%esp
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
	jmp	_124
_124:
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_SSecuInit:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	push	%esi
	sub	$16,%esp
	movl	_bb_SecuList,%ebx
	mov	%ebx,%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*140(%eax)
	mov	%eax,%esi
	jmp	_15
_17:
	mov	%esi,%eax
	movl	$_bb_TSecu,4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	movl	%eax,(%esp)
	call	_bbObjectDowncast
	cmp	$_bbNullObject,%eax
	je	_15
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
_15:
	mov	%esi,%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*48(%eax)
	cmp	$0,%eax
	jne	_17
_16:
	mov	$0,%eax
	jmp	_84
_84:
	add	$16,%esp
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_SSecu:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	push	%esi
	push	%edi
	sub	$12,%esp
	movl	12(%ebp),%edi
	movl	_bb_SecuList,%ebx
	mov	%ebx,%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*140(%eax)
	mov	%eax,%esi
	jmp	_18
_20:
	mov	%esi,%eax
	movl	$_bb_TSecu,4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	movl	%eax,(%esp)
	call	_bbObjectDowncast
	cmp	$_bbNullObject,%eax
	je	_18
	mov	%eax,%edx
	movl	%edi,8(%esp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	(%edx),%eax
	calll	*56(%eax)
_18:
	mov	%esi,%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*48(%eax)
	cmp	$0,%eax
	jne	_20
_19:
	mov	$0,%eax
	jmp	_88
_88:
	add	$12,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_SSecuDone:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	push	%esi
	push	%edi
	sub	$12,%esp
	movl	8(%ebp),%edi
	movl	_bb_SecuList,%ebx
	mov	%ebx,%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*140(%eax)
	mov	%eax,%esi
	jmp	_21
_23:
	mov	%esi,%eax
	movl	$_bb_TSecu,4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	movl	%eax,(%esp)
	call	_bbObjectDowncast
	cmp	$_bbNullObject,%eax
	je	_21
	movl	%edi,4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*60(%eax)
_21:
	mov	%esi,%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*48(%eax)
	cmp	$0,%eax
	jne	_23
_22:
	mov	$0,%eax
	jmp	_91
_91:
	add	$12,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_SecuStrMap:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$8,%esp
	mov	$_1,%esi
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_map_MapKeys
	mov	%eax,%edi
	mov	%edi,%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*48(%eax)
	movl	%eax,-4(%ebp)
	jmp	_24
_26:
	movl	-4(%ebp),%eax
	movl	$_bbStringClass,4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	movl	%eax,(%esp)
	call	_bbObjectDowncast
	mov	%eax,%ebx
	cmp	$_bbNullObject,%ebx
	je	_24
	movl	8(%ebp),%eax
	movl	%ebx,4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*120(%eax)
	mov	%eax,%esi
	movl	$_27,4(%esp)
	movl	%ebx,(%esp)
	call	_bbStringConcat
	movl	%esi,4(%esp)
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$_28,4(%esp)
	movl	%eax,(%esp)
	call	_bbStringConcat
	mov	%eax,%esi
_24:
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*48(%eax)
	cmp	$0,%eax
	jne	_26
_25:
	mov	%esi,%eax
	jmp	_94
_94:
	add	$8,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_SSecuStringMap:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$20,%esp
	movl	8(%ebp),%ebx
	movl	12(%ebp),%eax
	movl	%eax,(%esp)
	call	_bb_SecuStrMap
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	call	_bb_SSecu
	mov	$0,%eax
	jmp	_98
_98:
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_SaveNet:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	push	%esi
	push	%edi
	sub	$28,%esp
	movl	_bb_NetList,%esi
	mov	%esi,%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*140(%eax)
	mov	%eax,%edi
	jmp	_29
_31:
	mov	%edi,%eax
	movl	$_bb_TNetwork,4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	movl	%eax,(%esp)
	call	_bbObjectDowncast
	mov	%eax,%ebx
	cmp	$_bbNullObject,%ebx
	je	_29
	mov	%ebx,%eax
	movl	$10,12(%esp)
	movl	$95,8(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	movl	%eax,4(%esp)
	movl	$_32,(%esp)
	call	_bbStringConcat
	movl	$255,4(%esp)
	movl	%eax,(%esp)
	call	_tricky_units_console_ConsoleWrite
	mov	%ebx,%eax
	movl	12(%ebp),%edx
	movl	%edx,8(%esp)
	movl	8(%ebp),%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*60(%eax)
_29:
	mov	%edi,%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*48(%eax)
	cmp	$0,%eax
	jne	_31
_30:
	mov	$0,%eax
	jmp	_102
_102:
	add	$28,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_LoadNet:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	push	%esi
	push	%edi
	sub	$28,%esp
	movl	_bb_NetList,%esi
	mov	%esi,%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*140(%eax)
	mov	%eax,%edi
	jmp	_33
_35:
	mov	%edi,%eax
	movl	$_bb_TNetwork,4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	movl	%eax,(%esp)
	call	_bbObjectDowncast
	mov	%eax,%ebx
	cmp	$_bbNullObject,%ebx
	je	_33
	mov	%ebx,%eax
	movl	$10,12(%esp)
	movl	$95,8(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	movl	%eax,4(%esp)
	movl	$_36,(%esp)
	call	_bbStringConcat
	movl	$255,4(%esp)
	movl	%eax,(%esp)
	call	_tricky_units_console_ConsoleWrite
	mov	%ebx,%eax
	movl	12(%ebp),%edx
	movl	%edx,8(%esp)
	movl	8(%ebp),%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*64(%eax)
_33:
	mov	%edi,%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*48(%eax)
	cmp	$0,%eax
	jne	_35
_34:
	mov	$0,%eax
	jmp	_106
_106:
	add	$28,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_SecuFile:
	push	%ebp
	mov	%esp,%ebp
	sub	$12,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$32,%esp
	call	_bb_SSecuInit
	movl	$_1,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	call	_jcr6_jcr6main_JCR_Dir
	movl	%eax,-4(%ebp)
	movl	$_37,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$_bbNullObject,4(%esp)
	movl	%eax,(%esp)
	call	_jcr6_jcr6main_JCR_Create
	mov	%eax,%esi
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_jcr6_jcr6main_EntryList
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*48(%eax)
	movl	%eax,-12(%ebp)
	jmp	_38
_40:
	movl	-12(%ebp),%eax
	movl	$_bbStringClass,4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	movl	%eax,(%esp)
	call	_bbObjectDowncast
	mov	%eax,%ebx
	cmp	$_bbNullObject,%ebx
	je	_38
	movl	%ebx,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_jcr6_jcr6main_JCR_B
	movl	%eax,(%esp)
	call	_brl_stream_LoadString
	mov	%eax,%edi
	movl	%edi,4(%esp)
	movl	%ebx,(%esp)
	call	_bb_SSecu
	movl	-4(%ebp),%eax
	movl	$_1,20(%esp)
	movl	$_1,16(%esp)
	movl	$_41,12(%esp)
	movl	%ebx,4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*48(%eax)
	movl	8(%eax),%eax
	movl	%eax,8(%esp)
	movl	%edi,4(%esp)
	movl	%esi,(%esp)
	movl	(%esi),%eax
	calll	*60(%eax)
_38:
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*48(%eax)
	cmp	$0,%eax
	jne	_40
_39:
	movl	%esi,(%esp)
	call	_bb_SSecuDone
	mov	%esi,%eax
	movl	$_5,4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*80(%eax)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_filesystem_DeleteFile
	movl	$_37,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	8(%ebp),%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	call	_brl_filesystem_RenameFile
	mov	$0,%eax
	jmp	_109
_109:
	add	$32,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_LSecu:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	push	%esi
	push	%edi
	sub	$28,%esp
	mov	$1,%ebx
	movl	_bb_SecuList,%esi
	mov	%esi,%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*140(%eax)
	mov	%eax,%edi
	jmp	_42
_44:
	mov	%edi,%eax
	movl	$_bb_TSecu,4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	movl	%eax,(%esp)
	call	_bbObjectDowncast
	cmp	$_bbNullObject,%eax
	je	_42
	mov	%ebx,%edx
	cmp	$0,%edx
	je	_191
	movl	16(%ebp),%edx
	movl	%edx,12(%esp)
	movl	12(%ebp),%edx
	movl	%edx,8(%esp)
	movl	8(%ebp),%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*64(%eax)
	mov	%eax,%edx
_191:
	mov	%edx,%ebx
_42:
	mov	%edi,%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*48(%eax)
	cmp	$0,%eax
	jne	_44
_43:
	mov	%ebx,%eax
	jmp	_114
_114:
	add	$28,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
	.data	
	.align	4
_121:
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
	.align	4
_117:
	.long	0
	.align	4
_bb_SecuList:
	.long	_bbNullObject
	.align	4
_bb_NetList:
	.long	_bbNullObject
	.align	4
_1:
	.long	_bbStringClass
	.long	2147483647
	.long	0
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
_32:
	.long	_bbStringClass
	.long	2147483647
	.long	19
	.short	83,97,118,105,110,103,32,108,111,103,105,110,32,100,97,116
	.short	97,58,32
	.align	4
_36:
	.long	_bbStringClass
	.long	2147483647
	.long	20
	.short	76,111,97,100,105,110,103,32,108,111,103,105,110,32,100,97
	.short	116,97,58,32
	.align	4
_37:
	.long	_bbStringClass
	.long	2147483647
	.long	16
	.short	95,36,36,36,36,95,83,69,67,85,95,36,36,36,36,95
	.align	4
_41:
	.long	_bbStringClass
	.long	2147483647
	.long	4
	.short	122,108,105,98
	.align	4
_5:
	.long	_bbStringClass
	.long	2147483647
	.long	5
	.short	83,116,111,114,101
