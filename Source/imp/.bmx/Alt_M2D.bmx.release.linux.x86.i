import brl.blitz
import brl.max2d
import gale.maxlua4gale
import tricky_units.console
import tricky_units.bye
import gale.main
import gale.multiscript
GALEMainCon2^GALE_DebugConsole{
-New%()="_bb_GALEMainCon2_New"
-Delete%()="_bb_GALEMainCon2_Delete"
-GaleConsoleWrite%(Txt$,R%=255,G%=255,B%=255)="_bb_GALEMainCon2_GaleConsoleWrite"
-GaleConsoleShow%()="_bb_GALEMainCon2_GaleConsoleShow"
-GaleConsoleDoublePrint2%(Txt1$,Txt2$,T%,R1%=255,G1%=255,B1%=255,R2%=255,G2%=255,B2%=255)="_bb_GALEMainCon2_GaleConsoleDoublePrint2"
-GaleConsoleCloseLogFile%()="_bb_GALEMainCon2_GaleConsoleCloseLogFile"
-GaleErrorClosureRequest%()="_bb_GALEMainCon2_GaleErrorClosureRequest"
-DoFlip%(A%=-1)="_bb_GALEMainCon2_DoFlip"
-DoCls%()="_bb_GALEMainCon2_DoCls"
-Rewindow%()="_bb_GALEMainCon2_Rewindow"
-StopGraphics%()="_bb_GALEMainCon2_StopGraphics"
-RequestAppTerminate%()="_bb_GALEMainCon2_RequestAppTerminate"
-FullView%()="_bb_GALEMainCon2_FullView"
}="bb_GALEMainCon2"
SessionFile$&=mem:p("bb_SessionFile")
SessionLogFile$&=mem:p("bb_SessionLogFile")
SessionLogStream:TStream&=mem:p("bb_SessionLogStream")
ErrorClosureMessage$&=mem:p("bb_ErrorClosureMessage")
