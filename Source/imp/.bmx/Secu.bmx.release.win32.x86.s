	format	MS COFF
	extrn	___bb_blitz_blitz
	extrn	___bb_console_console
	extrn	___bb_gamevars_gamevars
	extrn	___bb_initfile2_initfile2
	extrn	___bb_jcr6main_jcr6main
	extrn	___bb_rpgstats_rpgstats
	extrn	_bbNullObject
	extrn	_bbObjectClass
	extrn	_bbObjectCompare
	extrn	_bbObjectCtor
	extrn	_bbObjectDowncast
	extrn	_bbObjectFree
	extrn	_bbObjectNew
	extrn	_bbObjectRegisterType
	extrn	_bbObjectReserved
	extrn	_bbObjectSendMessage
	extrn	_bbObjectToString
	extrn	_bbStringClass
	extrn	_bbStringConcat
	extrn	_brl_blitz_NullMethodError
	extrn	_brl_filesystem_DeleteFile
	extrn	_brl_filesystem_RenameFile
	extrn	_brl_linkedlist_ListAddLast
	extrn	_brl_linkedlist_TList
	extrn	_brl_map_MapKeys
	extrn	_brl_stream_LoadString
	extrn	_jcr6_jcr6main_EntryList
	extrn	_jcr6_jcr6main_JCR_B
	extrn	_jcr6_jcr6main_JCR_Create
	extrn	_jcr6_jcr6main_JCR_Dir
	extrn	_tricky_units_console_ConsoleWrite
	public	___bb_imp_secu
	public	__bb_TNetwork_Delete
	public	__bb_TNetwork_New
	public	__bb_TSecu_Delete
	public	__bb_TSecu_New
	public	_bb_LSecu
	public	_bb_LoadNet
	public	_bb_NetList
	public	_bb_SSecu
	public	_bb_SSecuDone
	public	_bb_SSecuInit
	public	_bb_SSecuStringMap
	public	_bb_SaveNet
	public	_bb_SecuFile
	public	_bb_SecuList
	public	_bb_SecuStrMap
	public	_bb_TNetwork
	public	_bb_TSecu
	section	"code" code
___bb_imp_secu:
	push	ebp
	mov	ebp,esp
	cmp	dword [_129],0
	je	_130
	mov	eax,0
	mov	esp,ebp
	pop	ebp
	ret
_130:
	mov	dword [_129],1
	call	___bb_blitz_blitz
	call	___bb_initfile2_initfile2
	call	___bb_jcr6main_jcr6main
	call	___bb_gamevars_gamevars
	call	___bb_rpgstats_rpgstats
	call	___bb_console_console
	push	_bb_TSecu
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TNetwork
	call	_bbObjectRegisterType
	add	esp,4
	mov	eax,dword [_125]
	and	eax,1
	cmp	eax,0
	jne	_126
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [_bb_SecuList],eax
	or	dword [_125],1
_126:
	mov	eax,dword [_125]
	and	eax,2
	cmp	eax,0
	jne	_128
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [_bb_NetList],eax
	or	dword [_125],2
_128:
	mov	eax,0
	jmp	_78
_78:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TSecu_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_bb_TSecu
	push	ebx
	push	dword [_bb_SecuList]
	call	_brl_linkedlist_ListAddLast
	add	esp,8
	mov	eax,0
	jmp	_81
_81:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TSecu_Delete:
	push	ebp
	mov	ebp,esp
_84:
	mov	eax,0
	jmp	_131
_131:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TNetwork_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_bb_TNetwork
	push	ebx
	push	dword [_bb_NetList]
	call	_brl_linkedlist_ListAddLast
	add	esp,8
	mov	eax,0
	jmp	_87
_87:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TNetwork_Delete:
	push	ebp
	mov	ebp,esp
_90:
	mov	eax,0
	jmp	_132
_132:
	mov	esp,ebp
	pop	ebp
	ret
_bb_SSecuInit:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	mov	esi,dword [_bb_SecuList]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_23
_25:
	push	_bb_TSecu
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	je	_23
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
_23:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_25
_24:
	mov	eax,0
	jmp	_92
_92:
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_SSecu:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	push	edi
	mov	edi,dword [ebp+12]
	mov	esi,dword [_bb_SecuList]
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_26
_28:
	mov	eax,ebx
	push	_bb_TSecu
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	je	_26
	push	edi
	push	dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,12
_26:
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_28
_27:
	mov	eax,0
	jmp	_96
_96:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_SSecuDone:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	push	edi
	mov	edi,dword [ebp+8]
	mov	esi,dword [_bb_SecuList]
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_29
_31:
	mov	eax,ebx
	push	_bb_TSecu
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	je	_29
	push	edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,8
_29:
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_31
_30:
	mov	eax,0
	jmp	_99
_99:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_SecuStrMap:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	push	edi
	mov	dword [ebp-4],_1
	push	dword [ebp+8]
	call	_brl_map_MapKeys
	add	esp,4
	mov	ebx,eax
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	mov	edi,eax
	jmp	_32
_34:
	mov	eax,edi
	push	_bbStringClass
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_32
	mov	eax,dword [ebp+8]
	push	_36
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+120]
	add	esp,8
	push	eax
	push	_35
	push	esi
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-4],eax
_32:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_34
_33:
	mov	eax,dword [ebp-4]
	jmp	_102
_102:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_SSecuStringMap:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	eax
	call	_bb_SecuStrMap
	add	esp,4
	push	eax
	push	ebx
	call	_bb_SSecu
	add	esp,8
	mov	eax,0
	jmp	_106
_106:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_SaveNet:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	push	edi
	mov	ebx,dword [_bb_NetList]
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_37
_39:
	mov	eax,edi
	push	_bb_TNetwork
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_37
	mov	eax,esi
	push	10
	push	95
	push	255
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	push	_40
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_tricky_units_console_ConsoleWrite
	add	esp,16
	mov	eax,esi
	push	dword [ebp+12]
	push	dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,12
_37:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_39
_38:
	mov	eax,0
	jmp	_110
_110:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_LoadNet:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	push	edi
	mov	ebx,dword [_bb_NetList]
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_41
_43:
	mov	eax,edi
	push	_bb_TNetwork
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_41
	mov	eax,esi
	push	10
	push	95
	push	255
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	push	_44
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_tricky_units_console_ConsoleWrite
	add	esp,16
	mov	eax,esi
	push	dword [ebp+12]
	push	dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,12
_41:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_43
_42:
	mov	eax,0
	jmp	_114
_114:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_SecuFile:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	push	esi
	push	edi
	call	_bb_SSecuInit
	push	_1
	push	dword [ebp+8]
	call	_jcr6_jcr6main_JCR_Dir
	add	esp,8
	mov	dword [ebp-4],eax
	push	_bbNullObject
	push	_45
	push	dword [ebp+8]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_jcr6_jcr6main_JCR_Create
	add	esp,8
	mov	ebx,eax
	push	dword [ebp-4]
	call	_jcr6_jcr6main_EntryList
	add	esp,4
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp-8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	mov	dword [ebp-12],eax
	jmp	_46
_48:
	mov	eax,dword [ebp-12]
	push	_bbStringClass
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_46
	push	esi
	push	dword [ebp-4]
	call	_jcr6_jcr6main_JCR_B
	add	esp,8
	push	eax
	call	_brl_stream_LoadString
	add	esp,4
	mov	edi,eax
	push	edi
	push	esi
	call	_bb_SSecu
	add	esp,8
	mov	eax,dword [ebp-4]
	push	_1
	push	_1
	push	_49
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
_46:
	mov	eax,dword [ebp-12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_48
_47:
	push	ebx
	call	_bb_SSecuDone
	add	esp,4
	mov	eax,ebx
	push	_13
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+80]
	add	esp,8
	push	dword [ebp+8]
	call	_brl_filesystem_DeleteFile
	add	esp,4
	push	dword [ebp+8]
	push	_45
	push	dword [ebp+8]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_filesystem_RenameFile
	add	esp,8
	mov	eax,0
	jmp	_117
_117:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_LSecu:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	push	edi
	mov	esi,1
	mov	ebx,dword [_bb_SecuList]
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_50
_52:
	mov	eax,edi
	push	_bb_TSecu
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	je	_50
	mov	edx,esi
	cmp	edx,0
	je	_199
	push	dword [ebp+16]
	push	dword [ebp+12]
	push	dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,16
	mov	edx,eax
_199:
	mov	esi,edx
_50:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_52
_51:
	mov	eax,esi
	jmp	_122
_122:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_129:
	dd	0
_54:
	db	"TSecu",0
_55:
	db	"New",0
_56:
	db	"()i",0
_57:
	db	"Delete",0
_58:
	db	"Check",0
_59:
	db	"(:TJCRDir,:TIni)i",0
_60:
	db	"SSecuInit",0
_61:
	db	"SSecu",0
_62:
	db	"($,$)i",0
_63:
	db	"SSecuDone",0
_64:
	db	"(:TJCRCreate)i",0
_65:
	db	"LSecu",0
_66:
	db	"(:TJCRDir,:TJCRDir,$)i",0
	align	4
_53:
	dd	2
	dd	_54
	dd	6
	dd	_55
	dd	_56
	dd	16
	dd	6
	dd	_57
	dd	_56
	dd	20
	dd	6
	dd	_58
	dd	_59
	dd	48
	dd	6
	dd	_60
	dd	_56
	dd	52
	dd	6
	dd	_61
	dd	_62
	dd	56
	dd	6
	dd	_63
	dd	_64
	dd	60
	dd	6
	dd	_65
	dd	_66
	dd	64
	dd	0
	align	4
_bb_TSecu:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_53
	dd	8
	dd	__bb_TSecu_New
	dd	__bb_TSecu_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_brl_blitz_NullMethodError
	dd	_brl_blitz_NullMethodError
	dd	_brl_blitz_NullMethodError
	dd	_brl_blitz_NullMethodError
	dd	_brl_blitz_NullMethodError
_68:
	db	"TNetwork",0
_69:
	db	"Login",0
_70:
	db	"(:TIni)i",0
_71:
	db	"Name",0
_72:
	db	"()$",0
_73:
	db	"User",0
_74:
	db	"(:TIni)$",0
_75:
	db	"SaveLogin",0
_76:
	db	"(:TJCRCreate,:TIni)i",0
_77:
	db	"LoadLogin",0
	align	4
_67:
	dd	2
	dd	_68
	dd	6
	dd	_55
	dd	_56
	dd	16
	dd	6
	dd	_57
	dd	_56
	dd	20
	dd	6
	dd	_69
	dd	_70
	dd	48
	dd	6
	dd	_71
	dd	_72
	dd	52
	dd	6
	dd	_73
	dd	_74
	dd	56
	dd	6
	dd	_75
	dd	_76
	dd	60
	dd	6
	dd	_77
	dd	_59
	dd	64
	dd	0
	align	4
_bb_TNetwork:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_67
	dd	8
	dd	__bb_TNetwork_New
	dd	__bb_TNetwork_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_brl_blitz_NullMethodError
	dd	_brl_blitz_NullMethodError
	dd	_brl_blitz_NullMethodError
	dd	_brl_blitz_NullMethodError
	dd	_brl_blitz_NullMethodError
	align	4
_125:
	dd	0
	align	4
_bb_SecuList:
	dd	_bbNullObject
	align	4
_bb_NetList:
	dd	_bbNullObject
	align	4
_1:
	dd	_bbStringClass
	dd	2147483647
	dd	0
	align	4
_36:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	10
	align	4
_35:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	32,61,32
	align	4
_40:
	dd	_bbStringClass
	dd	2147483647
	dd	19
	dw	83,97,118,105,110,103,32,108,111,103,105,110,32,100,97,116
	dw	97,58,32
	align	4
_44:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	76,111,97,100,105,110,103,32,108,111,103,105,110,32,100,97
	dw	116,97,58,32
	align	4
_45:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	95,36,36,36,36,95,83,69,67,85,95,36,36,36,36,95
	align	4
_49:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	122,108,105,98
	align	4
_13:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	83,116,111,114,101
