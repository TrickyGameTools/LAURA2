	format	ELF
	extrn	__bb_blitz_blitz
	extrn	__bb_console_console
	extrn	__bb_gamevars_gamevars
	extrn	__bb_initfile2_initfile2
	extrn	__bb_jcr6main_jcr6main
	extrn	__bb_rpgstats_rpgstats
	extrn	bbNullObject
	extrn	bbObjectClass
	extrn	bbObjectCompare
	extrn	bbObjectCtor
	extrn	bbObjectDowncast
	extrn	bbObjectFree
	extrn	bbObjectNew
	extrn	bbObjectRegisterType
	extrn	bbObjectReserved
	extrn	bbObjectSendMessage
	extrn	bbObjectToString
	extrn	bbStringClass
	extrn	bbStringConcat
	extrn	brl_blitz_NullMethodError
	extrn	brl_filesystem_DeleteFile
	extrn	brl_filesystem_RenameFile
	extrn	brl_linkedlist_ListAddLast
	extrn	brl_linkedlist_TList
	extrn	brl_map_MapKeys
	extrn	brl_stream_LoadString
	extrn	jcr6_jcr6main_EntryList
	extrn	jcr6_jcr6main_JCR_B
	extrn	jcr6_jcr6main_JCR_Create
	extrn	jcr6_jcr6main_JCR_Dir
	extrn	tricky_units_console_ConsoleWrite
	public	__bb_imp_secu
	public	_bb_TNetwork_Delete
	public	_bb_TNetwork_New
	public	_bb_TSecu_Delete
	public	_bb_TSecu_New
	public	bb_LSecu
	public	bb_LoadNet
	public	bb_NetList
	public	bb_SSecu
	public	bb_SSecuDone
	public	bb_SSecuInit
	public	bb_SSecuStringMap
	public	bb_SaveNet
	public	bb_SecuFile
	public	bb_SecuList
	public	bb_SecuStrMap
	public	bb_TNetwork
	public	bb_TSecu
	section	"code" executable
__bb_imp_secu:
	push	ebp
	mov	ebp,esp
	cmp	dword [_121],0
	je	_122
	mov	eax,0
	mov	esp,ebp
	pop	ebp
	ret
_122:
	mov	dword [_121],1
	call	__bb_blitz_blitz
	call	__bb_initfile2_initfile2
	call	__bb_jcr6main_jcr6main
	call	__bb_gamevars_gamevars
	call	__bb_rpgstats_rpgstats
	call	__bb_console_console
	push	bb_TSecu
	call	bbObjectRegisterType
	add	esp,4
	push	bb_TNetwork
	call	bbObjectRegisterType
	add	esp,4
	mov	eax,dword [_117]
	and	eax,1
	cmp	eax,0
	jne	_118
	push	brl_linkedlist_TList
	call	bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [bb_SecuList],eax
	or	dword [_117],1
_118:
	mov	eax,dword [_117]
	and	eax,2
	cmp	eax,0
	jne	_120
	push	brl_linkedlist_TList
	call	bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [bb_NetList],eax
	or	dword [_117],2
_120:
	mov	eax,0
	jmp	_70
_70:
	mov	esp,ebp
	pop	ebp
	ret
_bb_TSecu_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	bbObjectCtor
	add	esp,4
	mov	dword [ebx],bb_TSecu
	push	ebx
	push	dword [bb_SecuList]
	call	brl_linkedlist_ListAddLast
	add	esp,8
	mov	eax,0
	jmp	_73
_73:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_TSecu_Delete:
	push	ebp
	mov	ebp,esp
_76:
	mov	eax,0
	jmp	_123
_123:
	mov	esp,ebp
	pop	ebp
	ret
_bb_TNetwork_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	bbObjectCtor
	add	esp,4
	mov	dword [ebx],bb_TNetwork
	push	ebx
	push	dword [bb_NetList]
	call	brl_linkedlist_ListAddLast
	add	esp,8
	mov	eax,0
	jmp	_79
_79:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_TNetwork_Delete:
	push	ebp
	mov	ebp,esp
_82:
	mov	eax,0
	jmp	_124
_124:
	mov	esp,ebp
	pop	ebp
	ret
bb_SSecuInit:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	mov	esi,dword [bb_SecuList]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_15
_17:
	push	bb_TSecu
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	bbObjectDowncast
	add	esp,8
	cmp	eax,bbNullObject
	je	_15
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
_15:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_17
_16:
	mov	eax,0
	jmp	_84
_84:
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
bb_SSecu:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	push	edi
	mov	edi,dword [ebp+12]
	mov	esi,dword [bb_SecuList]
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_18
_20:
	mov	eax,ebx
	push	bb_TSecu
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	bbObjectDowncast
	add	esp,8
	cmp	eax,bbNullObject
	je	_18
	push	edi
	push	dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,12
_18:
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_20
_19:
	mov	eax,0
	jmp	_88
_88:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
bb_SSecuDone:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	push	edi
	mov	edi,dword [ebp+8]
	mov	esi,dword [bb_SecuList]
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_21
_23:
	mov	eax,ebx
	push	bb_TSecu
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	bbObjectDowncast
	add	esp,8
	cmp	eax,bbNullObject
	je	_21
	push	edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,8
_21:
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_23
_22:
	mov	eax,0
	jmp	_91
_91:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
bb_SecuStrMap:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	push	edi
	mov	dword [ebp-4],_1
	push	dword [ebp+8]
	call	brl_map_MapKeys
	add	esp,4
	mov	ebx,eax
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	mov	edi,eax
	jmp	_24
_26:
	mov	eax,edi
	push	bbStringClass
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,bbNullObject
	je	_24
	mov	eax,dword [ebp+8]
	push	_28
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+120]
	add	esp,8
	push	eax
	push	_27
	push	esi
	call	bbStringConcat
	add	esp,8
	push	eax
	call	bbStringConcat
	add	esp,8
	push	eax
	call	bbStringConcat
	add	esp,8
	mov	dword [ebp-4],eax
_24:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_26
_25:
	mov	eax,dword [ebp-4]
	jmp	_94
_94:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
bb_SSecuStringMap:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	eax
	call	bb_SecuStrMap
	add	esp,4
	push	eax
	push	ebx
	call	bb_SSecu
	add	esp,8
	mov	eax,0
	jmp	_98
_98:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
bb_SaveNet:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	push	edi
	mov	ebx,dword [bb_NetList]
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_29
_31:
	mov	eax,edi
	push	bb_TNetwork
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,bbNullObject
	je	_29
	mov	eax,esi
	push	10
	push	95
	push	255
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	push	_32
	call	bbStringConcat
	add	esp,8
	push	eax
	call	tricky_units_console_ConsoleWrite
	add	esp,16
	mov	eax,esi
	push	dword [ebp+12]
	push	dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,12
_29:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_31
_30:
	mov	eax,0
	jmp	_102
_102:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
bb_LoadNet:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	push	edi
	mov	ebx,dword [bb_NetList]
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_33
_35:
	mov	eax,edi
	push	bb_TNetwork
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,bbNullObject
	je	_33
	mov	eax,esi
	push	10
	push	95
	push	255
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	push	_36
	call	bbStringConcat
	add	esp,8
	push	eax
	call	tricky_units_console_ConsoleWrite
	add	esp,16
	mov	eax,esi
	push	dword [ebp+12]
	push	dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,12
_33:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_35
_34:
	mov	eax,0
	jmp	_106
_106:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
bb_SecuFile:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	push	esi
	push	edi
	call	bb_SSecuInit
	push	dword [ebp+8]
	call	jcr6_jcr6main_JCR_Dir
	add	esp,4
	mov	dword [ebp-4],eax
	push	bbNullObject
	push	_37
	push	dword [ebp+8]
	call	bbStringConcat
	add	esp,8
	push	eax
	call	jcr6_jcr6main_JCR_Create
	add	esp,8
	mov	ebx,eax
	push	dword [ebp-4]
	call	jcr6_jcr6main_EntryList
	add	esp,4
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp-8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	mov	dword [ebp-12],eax
	jmp	_38
_40:
	mov	eax,dword [ebp-12]
	push	bbStringClass
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,bbNullObject
	je	_38
	push	esi
	push	dword [ebp-4]
	call	jcr6_jcr6main_JCR_B
	add	esp,8
	push	eax
	call	brl_stream_LoadString
	add	esp,4
	mov	edi,eax
	push	edi
	push	esi
	call	bb_SSecu
	add	esp,8
	mov	eax,dword [ebp-4]
	push	_1
	push	_1
	push	_41
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,8
	push	dword [eax+8]
	push	edi
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,24
_38:
	mov	eax,dword [ebp-12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_40
_39:
	push	ebx
	call	bb_SSecuDone
	add	esp,4
	mov	eax,ebx
	push	_5
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+80]
	add	esp,8
	push	dword [ebp+8]
	call	brl_filesystem_DeleteFile
	add	esp,4
	push	dword [ebp+8]
	push	_37
	push	dword [ebp+8]
	call	bbStringConcat
	add	esp,8
	push	eax
	call	brl_filesystem_RenameFile
	add	esp,8
	mov	eax,0
	jmp	_109
_109:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
bb_LSecu:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	push	edi
	mov	esi,1
	mov	ebx,dword [bb_SecuList]
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_42
_44:
	mov	eax,edi
	push	bb_TSecu
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	bbObjectDowncast
	add	esp,8
	cmp	eax,bbNullObject
	je	_42
	mov	edx,esi
	cmp	edx,0
	je	_191
	push	dword [ebp+16]
	push	dword [ebp+12]
	push	dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,16
	mov	edx,eax
_191:
	mov	esi,edx
_42:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_44
_43:
	mov	eax,esi
	jmp	_114
_114:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" writeable align 8
	align	4
_121:
	dd	0
_46:
	db	"TSecu",0
_47:
	db	"New",0
_48:
	db	"()i",0
_49:
	db	"Delete",0
_50:
	db	"Check",0
_51:
	db	"(:TJCRDir,:TIni)i",0
_52:
	db	"SSecuInit",0
_53:
	db	"SSecu",0
_54:
	db	"($,$)i",0
_55:
	db	"SSecuDone",0
_56:
	db	"(:TJCRCreate)i",0
_57:
	db	"LSecu",0
_58:
	db	"(:TJCRDir,:TJCRDir,$)i",0
	align	4
_45:
	dd	2
	dd	_46
	dd	6
	dd	_47
	dd	_48
	dd	16
	dd	6
	dd	_49
	dd	_48
	dd	20
	dd	6
	dd	_50
	dd	_51
	dd	48
	dd	6
	dd	_52
	dd	_48
	dd	52
	dd	6
	dd	_53
	dd	_54
	dd	56
	dd	6
	dd	_55
	dd	_56
	dd	60
	dd	6
	dd	_57
	dd	_58
	dd	64
	dd	0
	align	4
bb_TSecu:
	dd	bbObjectClass
	dd	bbObjectFree
	dd	_45
	dd	8
	dd	_bb_TSecu_New
	dd	_bb_TSecu_Delete
	dd	bbObjectToString
	dd	bbObjectCompare
	dd	bbObjectSendMessage
	dd	bbObjectReserved
	dd	bbObjectReserved
	dd	bbObjectReserved
	dd	brl_blitz_NullMethodError
	dd	brl_blitz_NullMethodError
	dd	brl_blitz_NullMethodError
	dd	brl_blitz_NullMethodError
	dd	brl_blitz_NullMethodError
_60:
	db	"TNetwork",0
_61:
	db	"Login",0
_62:
	db	"(:TIni)i",0
_63:
	db	"Name",0
_64:
	db	"()$",0
_65:
	db	"User",0
_66:
	db	"(:TIni)$",0
_67:
	db	"SaveLogin",0
_68:
	db	"(:TJCRCreate,:TIni)i",0
_69:
	db	"LoadLogin",0
	align	4
_59:
	dd	2
	dd	_60
	dd	6
	dd	_47
	dd	_48
	dd	16
	dd	6
	dd	_49
	dd	_48
	dd	20
	dd	6
	dd	_61
	dd	_62
	dd	48
	dd	6
	dd	_63
	dd	_64
	dd	52
	dd	6
	dd	_65
	dd	_66
	dd	56
	dd	6
	dd	_67
	dd	_68
	dd	60
	dd	6
	dd	_69
	dd	_51
	dd	64
	dd	0
	align	4
bb_TNetwork:
	dd	bbObjectClass
	dd	bbObjectFree
	dd	_59
	dd	8
	dd	_bb_TNetwork_New
	dd	_bb_TNetwork_Delete
	dd	bbObjectToString
	dd	bbObjectCompare
	dd	bbObjectSendMessage
	dd	bbObjectReserved
	dd	bbObjectReserved
	dd	bbObjectReserved
	dd	brl_blitz_NullMethodError
	dd	brl_blitz_NullMethodError
	dd	brl_blitz_NullMethodError
	dd	brl_blitz_NullMethodError
	dd	brl_blitz_NullMethodError
	align	4
_117:
	dd	0
	align	4
bb_SecuList:
	dd	bbNullObject
	align	4
bb_NetList:
	dd	bbNullObject
	align	4
_1:
	dd	bbStringClass
	dd	2147483647
	dd	0
	align	4
_28:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	10
	align	4
_27:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	32,61,32
	align	4
_32:
	dd	bbStringClass
	dd	2147483647
	dd	19
	dw	83,97,118,105,110,103,32,108,111,103,105,110,32,100,97,116
	dw	97,58,32
	align	4
_36:
	dd	bbStringClass
	dd	2147483647
	dd	20
	dw	76,111,97,100,105,110,103,32,108,111,103,105,110,32,100,97
	dw	116,97,58,32
	align	4
_37:
	dd	bbStringClass
	dd	2147483647
	dd	16
	dw	95,36,36,36,36,95,83,69,67,85,95,36,36,36,36,95
	align	4
_41:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	122,108,105,98
	align	4
_5:
	dd	bbStringClass
	dd	2147483647
	dd	5
	dw	83,116,111,114,101
