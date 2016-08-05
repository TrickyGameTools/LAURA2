Rem
	LAURA II
	Black Hole API
	
	
	
	(c) Jeroen P. Broks, 2016, All rights reserved
	
		This program is free software: you can redistribute it and/or modify
		it under the terms of the GNU General Public License as published by
		the Free Software Foundation, either version 3 of the License, or
		(at your option) any later version.
		
		This program is distributed in the hope that it will be useful,
		but WITHOUT ANY WARRANTY; without even the implied warranty of
		MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
		GNU General Public License for more details.
		You should have received a copy of the GNU General Public License
		along with this program.  If not, see <http://www.gnu.org/licenses/>.
		
	Exceptions to the standard GNU license are available with Jeroen's written permission given prior 
	to the project the exceptions are needed for.
Version: 16.07.30
End Rem
Type T_API_BlackHole

	Field HoleMap:TMap = New TMap

	Method Init$(path$)
		Local ret$
		Repeat
			ret = "$"+Hex(Rand(1,MilliSecs()))
		Until Not MapContains(holemap,ret)
		DebugLog "Gonna return the BlackHole to: "+ret
		MapInsert holemap,ret,InitBlackHole(JCR,path)
		Return ret
	End Method
	
	Method Show(bh$,x,y)
		DebugLog "Showing: "+bh+","+x+","+y
		BlackHole(TBlackHole(MapValueForKey(holemap,bh)),x,y)
	End Method
	
	Method Canvas(bh$,x,y,w,h)
		Local cx = w/2
		Local cy = h/2		
		Show bh,x+cx,y+cy
	End Method
	
	Method Clear(bh$)
		MapRemove holemap,bh
	End Method
	
	Method ClearAll()
		DebugLog "Blackhole all clear"
		ClearMap holemap
	End Method
End Type


Global API_BlackHole:T_API_BlackHole = New T_API_BlackHole

GALE_Register API_BlackHole,"BlackHole"
