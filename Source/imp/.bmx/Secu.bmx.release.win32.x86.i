import brl.blitz
import tricky_units.initfile2
import jcr6.jcr6main
import tricky_units.gamevars
import tricky_units.rpgstats
import tricky_units.console
TSecu^Object{
-New%()="_bb_TSecu_New"
-Delete%()="_bb_TSecu_Delete"
-Check%(JCR:TJCRDir,d:TIni)A="brl_blitz_NullMethodError"
-SSecuInit%()A="brl_blitz_NullMethodError"
-SSecu%(e$,d$)A="brl_blitz_NullMethodError"
-SSecuDone%(J:TJCRCreate)A="brl_blitz_NullMethodError"
-LSecu%(J:TJCRDir,MainJ:TJCRDir,Dev$)A="brl_blitz_NullMethodError"
}A="bb_TSecu"
TNetwork^Object{
-New%()="_bb_TNetwork_New"
-Delete%()="_bb_TNetwork_Delete"
-Login%(d:TIni)A="brl_blitz_NullMethodError"
-Name$()A="brl_blitz_NullMethodError"
-User$(d:TIni)A="brl_blitz_NullMethodError"
-SaveLogin%(bt:TJCRCreate,d:TIni)A="brl_blitz_NullMethodError"
-LoadLogin%(J:TJCRDir,d:TIni)A="brl_blitz_NullMethodError"
}A="bb_TNetwork"
SSecuInit%()="bb_SSecuInit"
SSecu%(e$,d$)="bb_SSecu"
SSecuDone%(J:TJCRCreate)="bb_SSecuDone"
SecuStrMap$(d:StringMap)="bb_SecuStrMap"
SSecuStringMap%(e$,D:StringMap)="bb_SSecuStringMap"
SaveNet%(bt:TJCRCreate,d:TIni)="bb_SaveNet"
LoadNet%(bt:TJCRDir,d:TIni)="bb_LoadNet"
SecuFile%(file$)="bb_SecuFile"
LSecu%(J:TJCRDir,MainJ:TJCRDir,Dev$)="bb_LSecu"
SecuList:TList&=mem:p("bb_SecuList")
NetList:TList&=mem:p("bb_NetList")
