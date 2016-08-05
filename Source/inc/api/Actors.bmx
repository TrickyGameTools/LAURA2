Rem
        Actors.bmx
	(c) 2015, 2016 Jeroen Petrus Broks.
	
	This Source Code Form is subject to the terms of the 
	Mozilla Public License, v. 2.0. If a copy of the MPL was not 
	distributed with this file, You can obtain one at 
	http://mozilla.org/MPL/2.0/.
        Version: 16.07.30
End Rem

Global OldChoosePic$ = ""


Type LAURA2ACTORS ' BLD: Object Actors\nA collection of functions needed to work with actors.

	'These two values were wrong, and have been stripped, but were kept in the source for backup purposes.
	'Field ActorPicBundlePrefix$ = "GFX/ACTORS/" ' BLD--: The value of this variable determines the path of actor bundles. Makes the use of ChoosePic easier. By default GFX/ACTORS
	'Field ActorPicBundleSuffix$ = ".PNG"       ' BLD--: The value of this variable determines the extention of actor bundle pic files. Makes the use of ChoosePic easier. By default it contains .PNG

	Field PickedActor:TKthuraActor  ' Undocumented. This function can be called from by the Lua Scripts, but I only recommend to do so if you really know what you are doing!		
	Field DontWarn=False ' Undocumented. When set to true Maps.Obj.Obj will not warn when the object accessed is an actor.

	Method Spawn(Spot$,Pics$,Tag$,single=0) ' BLD: Spawns an actor<p>Due to the limited amount of parameters Lua can transfer to the underylying LAURA II engine it will only be possible to spawn an actor this way and not on precise XY coordinates.
	map.SpawnActor(Spot,Pics,Tag,single=0)
	End Method
	
	Method ChoosePic(Tag$,Pic$) ' BLD: Will select a picture in a PicBundle Actor
	Local A:TKthuraActor = TKthuraActor(MapValueForKey(Map.Tagmap,tag))
	If Not A KthuraWarning "There is no actor named ~q"+Tag+"~q found!"; Return
	If Not A.picbundledir KthuraWarning "Actor ~q"+Tag+"~q does not use a picture bundle"; Return
	'Local PicTag$ = "Actor.Bundle:"+Upper(ActorPicBundlePrefix+Pic+ActorPicBundleSuffix)
	If Not MapContains(A.Picbundle,Upper(Pic))  
		KthuraWarning "Actor ~q"+Tag+"~q does not have a picture called "+Pic+" in the bundle"
		For Local poep$=EachIn MapKeys(A.PicBundle) ConsoleWrite("= "+Poep) Next
		EndIf
	A.ChosenPic = Pic
	Local TP$ = Upper( Tag+":"+Pic+":"+A.IDNum )
	If TP<>OldChoosePic Then
 		A.Frame = 0
		DebugLog "Needed frame reset due to different pic~n~t"+TP+" != "+OldChoosePic
		oldchoosepic=tp
		EndIf
	End Method
	
	Method WalkTo(Tag$,X,Y) ' BLD: Make an actor walk to X,Y. If the position cannot be reached in any way the request will be ignored.<p>This feature uses a pathfinder routine, so it will make the actor go around any obstacles if possible. Returns 1 if request was possible and executed. Otherwise 0.
	Local A:TKthuraActor = TKthuraActor(MapValueForKey(Map.Tagmap,tag))
	If Not A KthuraWarning "There is no actor named ~q"+Tag+"~q found!"; Return
	Return A.Walkto(X,Y)
	End Method	
	
	Method WalkToSpot(ActorTag$,Spot$) ' BLD: Moves character to a spot. Returns 1 if the request was possible otherwise 0.
	Local O:TKthuraObject = map.tagmap.get(Spot)
	If Not O GALE_Error "Spot not found!",["Function,Maps.WalkToSpot","Actor,"+ActorTag,"Spot,"+Spot]
	Return WalkTo(ActorTag,O.X,O.Y) 
	End Method
	
	Method Walking(Tag$) ' BLD: Returns 1 if an actor is walking returns 0 if not.
	Local A:TKthuraActor = TKthuraActor(MapValueForKey(Map.Tagmap,tag))
	If Not A KthuraWarning "There is no actor named ~q"+Tag+"~q found!"; Return
	Return A.Walking
	End Method
	
	Method StopWalking(Tag$) ' BLD: The selected actor will stop walking immediately regardless if he/she/it reached his/her/its desitnation.
	Local A:TKthuraActor = TKthuraActor(MapValueForKey(Map.Tagmap,tag))
	If Not A KthuraWarning "There is no actor named ~q"+Tag+"~q found!"; Return
	A.Walking = False
	End Method
	
	Method StopMoving(Tag$) ' BLD: Stop all movement of an actor
	Local A:TKthuraActor = TKthuraActor(MapValueForKey(Map.Tagmap,tag))
	If Not A KthuraWarning "There is no actor named ~q"+Tag+"~q found!"; Return
	A.Moving = False
	A.walking = False
	End Method
	
	Method MoveTo(Tag$,X,Y,IgnoreBlock) ' BLD: Tries to move the character to the destination. Contrary to 'WalkTo' this routine does not use a pathfinder, and will cause the character to stop as soon as an obstacle is in the way (unless IngoreBlock is set to 1, then the character will ignore obstacles). This routine also supports a more precize position to move to, due to it and it also doesn't eat so much memory (like WalkTo does).
	Local A:TKthuraActor = TKthuraActor(MapValueForKey(Map.Tagmap,tag))
	If Not A KthuraWarning "There is no actor named ~q"+Tag+"~q found!"; Return
	A.MoveTo(X,Y,IgnoreBlock)
	End Method
	
	Method MoveToSpot(ActorTag$,Spot$,IgnoreBlock=0) ' BLD: Moves character to a spot
	Local O:TKthuraObject = map.tagmap.get(Spot)
	If Not O GALE_Error "Spot not found!",["Function,Maps.MoveToSpot","Actor,"+ActorTag,"Spot,"+Spot]
	MoveTo ActorTag,O.X,O.Y,IgnoreBlock
	End Method	
	
	
	Method Pick(Tag$) ' BLD: Pick an actor for some quick functions.
	Local A:TKthuraActor = TKthuraActor(MapValueForKey(Map.Tagmap,tag))
	If Not A KthuraWarning "There is no actor named ~q"+Tag+"~q found!"; Return
	PickedActor = A
	End Method
	
	Method Actor:TKthuraActor(Tag$="") ' Undocumented. Mostly used for functions internally. Can be called from the Lua script, but you should only do so if you know what you are doing.
	If Not Tag 
		If Not PickedActor GALE_Error("No actor was picked, yet a call to the picked actor was made")
		Return PickedActor
		EndIf
	Local A:TKthuraActor = TKthuraActor(MapValueForKey(Map.Tagmap,tag))
	If Not A GALE_Error "There is no actor named ~q"+Tag+"~q found!",["Map,"+LAURA2MAPS.CodeName,"Layer,"+LAURA2MAPS.LayerCodeName]; Return
	Return A
	End Method

	Method RenewActor:TKthuraActor(actor$) ' BLD: Recreates an existing actor.<br>Sometimes actors can get a little faulty. This feature creates a new actor and destroys the old one. This should basically destroy all impurities that ended up in it as well.
	map.renewactor actor
	End Method
	
	Method PX(Tag$="") ' BLD: Return the X value of an actor. If no tag is given the picked actor will be returned, otherwise the auhtor in the tag.
	Return Actor(Tag).X
	End Method
	
	Method PY(Tag$="") ' BLD: Return the Y value of an actor. If no tag is given the picked actor will be returned, otherwise the auhtor in the tag.
	Return Actor(Tag).Y
	End Method
	
	Method PWind$(Tag$="") ' BLD: Return the wind value of an actor. If no tag is given the picked actor will be returned, otherwise the auhtor in the tag.<p>The returned value could be either "North", "East", "West" or "South".
	Return Actor(Tag).Wind
	End Method	
	

	
	Method CountWalking() ' BLD: Returns the number of walking actors.
	Return Map.CountWalkingActors()
	End Method

	Method CountMoving() ' BLD: Returns the number of moving actors (Actors set on the move with both WalkTo or MoveTo will be counted).
	Return Map.CountMovingActors()
	End Method
	
	
End Type	

Global LAURA2ACTOR:LAURA2ACTORS =  New LAURA2ACTORS
GALE_Register LAURA2ACTOR,"Actors"

MKL_Lic     "LAURA II - Actors.bmx","Mozilla Public License 2.0"
MKL_Version "LAURA II - Actors.bmx","16.07.30"
