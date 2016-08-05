Rem
        Effects.bmx
	(c) 2015, 2016 Jeroen Petrus Broks.
	
	This Source Code Form is subject to the terms of the 
	Mozilla Public License, v. 2.0. If a copy of the MPL was not 
	distributed with this file, You can obtain one at 
	http://mozilla.org/MPL/2.0/.
        Version: 16.02.06
End Rem
Type TFalldown
	Field X:Double,Y:Double
	Field P:TPixmap
	Field I:TImage
	Field spd:Double
	End Type

Type TLUAFX ' BLD: Object: FX\nJust an object with some funny effects that were not really suitable to script in Lua (unless you don't mind an extremely slow game)

	Method FallDown(MS$,Func$,Param$) ' BLD: Cuts the screen in little pieces and makes all the pieces fall down. As soon as the last piece has fallen out of the screen the game will continue. The parameters you can give up are supposed to have certain things to still be drawn onto the screen no matter what.<br>This feature was written for the instant encounter effect in Star Story!
	Local pieces:TList = New TList
	Local x,y
	Local GW = GraphicsWidth(),GH = GraphicsHeight()
	Local mg = GW; If GH>GW MG=GH
	SetColor 255,255,255
	Local OriPix:TPixmap = GrabPixmap(0,0,GW,GH)
	Local ak,FD:TFalldown
	Local timeout
	For ak=0 Until MG Step 32
		Cls
		DrawPixmap OriPix,0,0
		DrawLine ak,0,ak,GH
		DrawLine 0,ak,GW,ak
		Flip
		Next
	Cls; 	DrawPixmap OriPix,0,0; Flip
	Cls; 	DrawPixmap OriPix,0,0; Flip
	While (y<GH)
		FD = New tfalldown
		fd.x = x
		fd.y = y
		fd.spd = Double(Rand(25,60))/Double(Rand(1,10))
		fd.p = GrabPixmap(x,y,32,32)
		fd.i = LoadImage(fd.p)
		x:+32
		If fd.x>GW x=0 y:+32
		timeout:+1
		If timeout>10000 GALE_Error("Falldown generation timeout: "+x+","+y)
		ListAddLast pieces,fd
		Wend
	Repeat
	Cls
	SetColor 255,255,255
	For fd=EachIn pieces	
		'DrawPixmap fd.p,fd.x,fd.y
		DrawImage fd.i,fd.x,fd.y
		fd.y:+fd.spd
		If fd.y>GH ListRemove pieces,fd
		Next
	GALE_MS.run MS,Func,param			
	Flip	
	Until CountList(pieces)<=0
	End Method
	
	End Type		

Global LFX:TLUAFX = New TLUAFX
GALE_Register LFX,"FX"
