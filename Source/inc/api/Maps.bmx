Rem
        Maps.bmx
	(c) 2015, 2016, 2017 Jeroen Petrus Broks.
	
	This Source Code Form is subject to the terms of the 
	Mozilla Public License, v. 2.0. If a copy of the MPL was not 
	distributed with this file, You can obtain one at 
	http://mozilla.org/MPL/2.0/.
        Version: 17.03.03
End Rem


MKL_Version "LAURA II - Maps.bmx","17.03.03"
MKL_Lic     "LAURA II - Maps.bmx","Mozilla Public License 2.0"


Type tLAURA2OBJECTLIST ' BLD: Object Maps.ObjectList\nThis feature allows you to browse through the objects of a map.<br>All features require that you use Maps.ObjectList.Start() (or semilar function) first or LAURA II will crash out with an error!<p>Only one listout can be active at a time, and (very important) when you load a new map, all data will be reset, so you'll need to start up a new queue.

	Field MyList:TList 
	Field MyArray:TKthuraObject[]
	Field MyObject:TKthuraObject ' It is allowed to read out or even assign stuff directly to this variable, however, you must only do so if you know the core of Kthura well and thus know what you are doing.
	Field Picked=-1
	Field Chat=0 ' When set to any other value than 0, some function may output some debugging code on the console. In most cases you don't need that though, so you can better leave it to 0. (And that's why it's undocumented for BLD)
	
	Method Start(kind$="") ' BLD: Look up all objects of a certain kind. If you don't define a kind, all objects of the map will be listed. Once the listout is complete the number of entries will be returned. 
	If Not map GALE_Error "Tried to list out a map, while no map is loaded!"
	If Not kind
		mylist = map.fullobjectlist
	Else
		mylist = New TList
		For Local O:TKthuraObject = EachIn map.fullobjectlist
			If O.kind = kind ListAddLast mylist, O
			Next
		EndIf
		MyArray = TKthuraObject[](ListToArray(MyList))
	Return CountList(mylist)
	End Method
	
	Method GotList() ' BLD: Returns 1 if there is a list. Returns 0 otherwise
	Return MyArray<>Null
	End Method
	
	Method GotPick() ' BLD: Returns 1 if a pick was done. returns 0 otherwise
	Return MyObject<>Null
	End Method
	
	Method CurrentPick() ' BLD: Returns -1 if we got no pick, otherwise it returns the number of the current pick
	Return picked
	End Method
	
	Method Pick(idx) ' BLD: Pick an object within the list. You must do this before trying to read out any objects. If you index a negative value this function will just flush the last pick.
	If Not MyList GALE_Error "Cannot pick an object when nothing has been listed"
	Picked=idx
	Rem
	If idx>CountList(mylist) GALE_Error "Picked index exceeds maximum ("+idx+">"+CountList(mylist)
	If idx>=0 MyObject = TKthuraObject(MyList.ValueAtIndex(idx)) Else MyObject=Null
	End Rem
	If idx>Len(myarray) GALE_Error "Picked index exceeds maximum ("+idx+">"+Len(myArray)
	If idx>=0 MyObject = MyArray[idx] Else myobject=Null
	If Not MyObject GALE_Error "Invalid object picked ("+idx+")"
	End Method
	

	Method X() ' BLD: X coordinate picked object
	If Not MyObject GALE_Error "Maps.ObjectList.X(): No object picked"
	Return MyObject.X
	End Method
	
	Method Y() ' BLD: Y coordinate picked object
	If Not MyObject GALE_Error "Maps.ObjectList.Y(): No object picked"
	Return MyObject.Y
	End Method

	Method ToScript$(idx=0) ' BLD: Returns a script you can execute with LoadScript to create a function returning the values needed. When Idx is set to a negative value you'll get a big array containing all indexes of the current list. When Idx is a value of 0 or higher, you'll just get a table with all the stuff in the record.
	If Not MyList GALE_Error "Cannot script an object when nothing has been listed"	
	If idx>CountList(mylist) GALE_Error "Picked index exceeds maximum ("+idx+">"+CountList(mylist)
	Local ret$ = "-- GALE LUA SCRIPT --~n"
	Local Start=0,Einde=CountList(myList)
	Local t$ = "~t"
	Local O:TKthuraObject
	If idx>=0 Start=Idx Einde=Idx+1 t="~t~t"
	ret:+ "ret = {~n"
	For Local ak=Start Until Einde
		If idx<0 
			If ak<>start ret:+",~n"
			ret:+"~t{~n"
			EndIf
		O = TKthuraObject(MyList.ValueAtIndex(ak))	
		ret:+t+"X = "+O.X+",~n"+t+"Y = "+O.Y+",~n"
		ret:+t+"IDNum = "+O.IDNum+",~n"
		ret:+t+"Kind = ~q"+O.Kind+"~q,~n"
		ret:+t+"Tag = ~q"+BSString(O.Tag)+"~q~n"
		If idx<0 ret:+"~t}"
		Next
	ret:+"~t}"
	If chat 
		For Local L$=EachIn ret.split("~n") ConsoleWrite L Next
		EndIf
	Return ret
	End Method	
	
	End Type
	
Type TLAURAMAPOBJECT ' BLD: Object Maps.Obj\n

	Field MyObject:TKthuraObject ' BLD: The variable containing the current object data and you can even write data with it DIRECLY into the core of the Kthura object, but you can better only use it if you know the core of Kthura and thus know what you are doing.

	Method Pick(Tag$)
	Local A:TKthuraObject = TKthuraObject(MapValueForKey(Map.Tagmap,tag))
	If Not A KthuraWarning "There is no object named ~q"+Tag+"~q found!"; Return
	MyObject = A
	End Method
	
	Method Obj:TKthuraObject(Tag$) ' BLD: Returns the object directly into a Lua Var. Please note this is for the advanced user only. Best is NOT to use this on actors though it is possible. For actors use Actors.Actor() in stead.
	Local A:TKthuraObject = TKthuraObject(MapValueForKey(Map.Tagmap,tag))
	If Not A KthuraError "There is no object named ~q"+Tag+"~q found!"
	If TKthuraActor(A) And (Not LAURA2ACTOR.DontWarn) KthuraWarning "Object ~q"+Tag+"~q is an actor. Best is to use Actors.Actor() in stead"
	Return A
	End Method
	
	Method CreateObject:TKthuraObject(Kind$,Tag$,Remap=0) ' BLD: Allows you to create an object and add it to Kthura. The Kind value can currently contain "TiledArea", "Obstacle", "Zone", "Exit" or any string prefixed with an asterisk (*). Don't ever use the kind "Actor" for this, as you'll be very likely to blow up your game.<p>This routine is a pretty powerful tool, and if you do not now the depths of the Kthura map engine, you may consider NOT to use it. The created object is returned so if you directly assign the returned object to a variable you don't have to do that afterward with Maps.Obj.Obj().<p>'Permanent' is not supported for this routine, as it only creates a new object without any values set. If you want to make the created object permanent you will have to set all settings of the object first and "seal" it with the Maps.Obj.Seal() method. <p>If you are not well versed in Kthura, you can best create an object in Kthura that way that players can't see it in the game and make it visible for the player when you need it, in stead of using this function. ;)
	Local ETag$ = "Maps.Obj.Create(~q"+Kind+"~q,~q"+Tag+"~q): "
	If tag And MapContains(map.tagmap,tag) Then KthuraWarning "Maps.Obj.Create(~q"+Kind+"~q,~q"+Tag+"~q): Tag already exists! Request ignored" Return 
	If kind = "Actor" Then KthuraError ETag+"Actors cannot be created this way!"
	Local ret:TKthuraObject = map.createobject()
	ret.Kind = Kind
	ret.Tag = Tag
	If Remap Map.TotalRemap
	Return ret
	End Method
	
	Method Kind$(Tag$) ' BLD: Turns the kind of object as a string
	Local A:TKthuraObject = TKthuraObject(MapValueForKey(Map.Tagmap,tag))
	If Not A Return "*NONE*"
	Return A.Kind
	End Method

	
	Method PickCurrentActor() ' BLD: You can get the currently chosen actor into the normal object reader. Please note that actors can do more than objects, but the features available to both can be found here.
	MyObject = LAURA2ACTOR.PickedActor
	End Method
	
	Method PickListedObject() ' BLD: Copy the currently listed object into the normal object API
	MyObject = LAURA2MAPS.ObjectList.MyObject
	End Method


	Method SetColor(R,G,B) ' BLD: Sets the color of the chosen object.<p>This function with basically accept all objects, including actors. Keep in mind though that some objects may not respond to the color change.<br>(And using this on zones, is (since you can't see them) pretty pointless) :-P
	If Not MyObject GALE_Error "Maps.SetColor("+R+","+G+","+B+"): No object picked!"
	MyObject.R = R
	MyObject.G = G
	MyObject.B = B
	End Method
	
	Method Kill(Tag$="",Permanent=0) ' BLD: Destroys the object chosen by Pick unless you give up a Tag, then it will destroy the object under that tag.<p>Warning! This method can be dangerous when you make use of the direct access features. The underlying API uses BlitzMax and BlitzMax uses an automated garbage collector to destroy all objects BlitzMax has no more references to. However the garbage collector has no support for the stuff Lua refers to. If you use this function make sure you reset the direct access features to make 100% sure you got good access once more before you go into this. Neglecting to do this properly will most likely lead to a crash (without a proper error message).<p>This function works on both actors as reguar objects.<p>If "permanent" is set to any value other than 0, the system will log this removal and this log is always loaded when loading a new map. Important notice on this, the more permanent changes you have the slower the re-load of this map can become. Therefore it's important you perma-remove (or perma-change in general) as little as you can.
	Local M:TKthuraObject = myobject
	If Tag M = TKthuraObject(MapValueForKey(map.tagmap,tag))
	If Not M ConsoleWrite("Maps.Obj.Kill(~q"+Tag+"~q,"+Permanent+"): Requested object already removed, or it never existed!"); Return
	ListRemove map.fullobjectlist,M
	If m=myobject myobject=Null
	map.totalremap
	If permanent LAURA2MAPS.PermaWrite("~tMaps.Obj.Kill(~q"+Tag+"~q)")
	End Method
	
	Method Seal(Tag$) ' BLD: The next data of an object will be made permanent: Coordinates, width, height, insertionpoints, alpha, rotiation, dominance, labels, tag<br>Please note the object must exist at the time the permanent changes are being processed by LAURA. If the object does not exist it's simply ignored.
	Local O:TKthuraObject = TKthuraObject(MapValueForKey(Map.Tagmap,tag))
	If Not O ConsoleWrite("I cannot seal object ~q"+tag+"~q. It doesn't exist!",255,0,0); Return
	If TKthuraActor(O) ConsoleWrite("I cannot seal object ~q"+tag+"~q. The object is an actor!",255,0,0); Return
	LAURA2Maps.PermaWrite "~n~tif Maps.Obj.Exists(~q"+tag+"~q)==1 then~n~t~tseal = Maps.Obj.Obj(~q"+Tag+"~q)"
	LAURA2Maps.PermaWrite "~t~tseal.X         = "+O.X
	LAURA2Maps.PermaWrite "~t~tseal.Y         = "+O.Y
	LAURA2Maps.PermaWrite "~t~tseal.H         = "+O.H
	LAURA2Maps.PermaWrite "~t~tseal.W         = "+O.W
	LAURA2Maps.PermaWrite "~t~tseal.InsertX   = "+O.InsertX
	LAURA2Maps.PermaWrite "~t~tseal.InsertY   = "+O.InsertY
	LAURA2Maps.PermaWrite "~t~tseal.Alpha     = "+O.Alpha
	LAURA2Maps.PermaWrite "~t~tseal.Rotation  = "+O.Rotation
	LAURA2Maps.PermaWrite "~t~tseal.Dominance = "+O.Dominance
	LAURA2Maps.PermaWrite "~t~tseal.Visible   = "+O.Visible	
	LAURA2Maps.PermaWrite "~t~tseal.Labels    = ~q"+O.labels+"~q"
	LAURA2Maps.PermaWrite "~t~tseal.Tag       = ~q"+O.Tag+"~q"
	LAURA2Maps.PermaWrite "~t~tMaps.Remap()"
	LAURA2Maps.PermaWrite "~tend~n"
	End Method
	
	
	Method X() ' BLD: X coordinate picked object
	If Not MyObject GALE_Error "Maps.Obj.X(): No object picked"
	Return MyObject.X
	End Method
	
	Method Y() ' BLD: Y coordinate picked object
	If Not MyObject GALE_Error "Maps.Obj.Y(): No object picked"
	Return MyObject.Y
	End Method
	
	Method Exists(Tag$) ' BLD: Returns 1 if an object with the specified tag exists otherwise 0. Please note Lua regards both values as "true" so you need specific expression in boolean compiration.<br>This function works on all objects including actors.
	Return MapContains(map.tagmap,tag)
	End Method
	
	End Type
	
	


Type TLAURA2MAPS ' BLD: Object Maps\nContains the map features, LAURA II provide. <p>Please note that LAURA II uses the Kthura map engine, which is not a tile based map engine, but an object based engine. Therefore its usage may appear a little awkward at first, but you may learn to truly understand its possibilities, and see if this is better than old-fashioned tile based way of working ;-)

	Field CamX ' BLD: Assign a value to this to assign the X coordinate of the camera
	Field CamY ' BLD: Assign a value to this to assign the Y coordiante of the camera
	
	Field CodeName$ ' BLD: Contains the code name of the last loaded map. <p>Though it is possible I recommend you NEVER to assign any data to this variable.
	Field LayerCodeName$ ' BLD: Contains the code name of the current layer. <p>Though it is possible I recommend you NEVER assign any data to this variable.
	
	Field ObjectList:TLAURA2OBJECTLIST = New TLAURA2OBJECTLIST
	
	Field forcevisible = False
	Field Obj:TLAURAMAPOBJECT = New TLAURAMAPOBJECT
	
	Field CObj:TKthuraObject ' BLD: In the case of a function being called by the 'custom object' drawer, the concerned object is stored in this variable. In all other cases it's empty and should not be used. This is only for advanced users who do know the integrity of Kthura.
	Field CObjCrash = 1 ' BLD: If set 1 (default value) the LAURA II will crash with an error message if a custom object is not properly defined.
	
	Method Kthura:TKthura() Return map End Method' This feature is not documented, because it allows DIRECT access to everything a Kthura map offers, and should therefore ONLY be used by people who KNOW what they are doing!


	Method Load(Mapname$,LayerName$="") ' BLD: Loads a map into the memory.<p>If a a file named script.lua is present in the Kthura map folder it will be loaded under scripttag "MAP", if not the system will see if a file named <mapname>.lua is present in the Script/Maps/ folder and load it under scripttag "MAP". If both do not exist an empty script file will be loaded in stead.<p>The "LayerName" parameter only has value in Multi-Map and may then be used to select which layer you initially want to use. If the requested map is not a multi-map this parameter will be ignored.
	Local L:TLua
	ObjectList.MyList = Null
	ObjectList.MyObject = Null
	map = LoadKthura(JCR,"Kthura/"+MapName+"/")	
	map.BuildBlockMap()
	LAURA_Assert Map<>Null,"Kthura Map ~q"+MapName+"~q could not be properly loaded"
	If Not mappatchloaded JCR_AddPatch JCR,Raw2JCR("incbin::inc/api/EmptyMapScript.lua","Script/System/EmptyMap.lua"); mappatchloaded=True
	CodeName = MapName
	Local s$[] = ["Kthura/"+MapName+"/Script.lua","Script/Maps/"+MapName+".lua","Script/System/EmptyMap.lua"]
	For Local sk$=EachIn s
		If (Not L) And JCR_Exists(JCR,sk) 
			DebugLog "Trying to load: "+sk
			L=GALE_LoadScript(JCR,sk)
			EndIf
		Next
	If Not L GALE_Error "INTERNAL LAURA II ERROR: Something went wrong when loading the map script.",[",Please contact Jeroen Broks!"]
	GALE_AddScript "MAP",L
	CamX = 0
	CamY = 0
	MapListOnlyLabels = New TList	
	MapArrayOnlyLabels = Null
	Local permafile$ = Replace(SwapDir+"/Perma-Map/"+CodeName+".lua","//","/")
	If Not map.multi
		If FileType(permafile)
			ConsoleWrite "Loading perma-map: "+permafile
			ConsoleWrite "Put in as: "+StripDir(permafile)
			GALE_LoadScript(Raw2JCR(permafile,StripDir(permafile)),StripDir(permafile))
			ConsoleWrite "Perma-Map handled"
		Else
			ConsoleWrite "Perma-map not found: "+Permafile	
			EndIf
  	Else
		For Local lm$=EachIn MapKeys(Map.multi)
			permafile = Replace(SwapDir+"/Perma-MultiMap/"+CodeName+"/"+lm+".lua","//","/")
			If FileType(permafile)
				ConsoleWrite "Loading perma-map: "+permafile
				Map = map.getmultilayer(lm)
				GALE_LoadScript(Raw2JCR(permafile,StripDir(permafile)),StripDir(permafile))
			Else
				ConsoleWrite "Perma-map not found: "+Permafile	
				EndIf
			Next
		If Trim(LayerName)
			map = map.getmultilayer(Layername)
			LayerCodeName = LayerName
			DebugLog "LoadMap: Gone to Layer: "+LayerName
		Else
			For Local m$ = EachIn MapKeys(map.multi)
				'If map = map.getmultilayer(m) 
				LayerCodeName = m 'LayerName
				Next
			'DebugLog "LoadMap: Detected to be on Layer: "+LayerName
			EndIf
		EndIf
	End Method
	
	Method Block(X,Y) ' BLD: returns 1 if an area is blocked
	If Not map GALE_Error("Cannot determine if a position is blocked or not if no map is loaded at all")
	Return map.block(x,y)
	End Method
	
	Method Multi() ' BLD: Returns 1 if the currently loaded map is a multi-map, otherwise it retuns 0
	If Not map GALE_Error("Cannot determine if a map is multimap or not if no map is loaded at all")
	Return map.ismulti()
	End Method
	
	Method GotoLayer(Layer$) ' BLD: Goes to the requested layer. (This only works on a multi-map. When used on a non-multi-map, this will throw an error)
	If Not map GALE_Error("Cannot go to a multi-map layer if no map is loaded at all")
	If Not map.multi GALE_Error("Cannot go to any layer. Loaded map is not a multi-map")
	If Not layer Return
	map = map.getmultilayer(Layer)
	LayerCodeName = Layer
	End Method
	
	Method CheckLayer$() ' BLD: This will make a "hardcore" check to make sure we have gotten ourselves on the correct layer. This function DOES slow down your performance and it's only included for debugging purposes.
	If Not map.multi GALE_Error("CheckLayer() can only be used on Multi-Maps")
	For Local ret$ = EachIn MapKeys(map.multi)
		If map.getmultilayer(ret) Return ret
		Next
	ConsoleWrite "WARNING! The current open layer is not properly defined!"
	End Method
	
	Method TagMap$() ' Not documented. I need to sort out an error of Kthura's that isn't there, so why does it pop up!
	Local ret$
	For Local K$=EachIn MapKeys(map.tagmap)
		If ret ret:+";"
		ret:+K
		Next
	Return ret
	End Method
	
	
	Method CreateObstacle$(X,Y,Pic$,Tag$="",Permanent=0) ' BLD: Creates an obstacle into the field. If you don't enter a tag, the system will create one for you and return it. When you make this permanent, this creation will be logged and redone when the map is reloaded.
	Local mytag$ = tag
	Local o:TKthuraObject
	While (Not mytag) Or MapContains(map.tagmap,mytag)
		mytag = "LAURA II Obstacle $"+Hex(Rand(0,MilliSecs()))
		Wend
	If Not pic GALE_Error "No Picture defined",[",Map.CreateObstacle","Coords,("+X+" . "+Y+")","Tag,"+Tag,"Use Tag,"+mytag,"Permanent,"+permanent]
	o = map.createobject(False)
	o.x = x
	o.y = y
	o.kind = "Obstacle"
	o.TextureFile$ = Pic
	o.tag = mytag
	map.TotalRemap
	If permanent LAURA2MAPS.PermaWrite("~tMaps.CreateObstacle("+x+","+y+",~q"+Pic+"~q,~q"+mytag+"~q,0)")
	End Method	
	
	
	
	Method GetData$(key$) ' BLD: Retrieves the data from the Kthura map.
	Return map.getdata(key)
	End Method
	
	Method SetData(key$,Value$,perm=0) ' BLD: Sets new data inside the Kthura map. If you set perm to any other value than 0, this change will be stored, making the change permanent for the remainder of the game
	map.setdata(key$,value$)
	TempMapWrite "Maps.SetData(~q"+key+"~q,~q"+Value+"~q)"
	End Method	
	
	Method Draw() ' BLD: Draw the map taking the camera coordinates in mind
	DrawKthura map,CamX,Camy,forcevisible,MapArrayOnlyLabels
	End Method

	Method DebugBlockMap() ' BLD: Shows the blockmap of the current map and position.<p>I should note that this function is strictly meant for debugging purposes
	Local gw = GraphicsWidth()
	Local gh = GraphicsHeight()
	Local ax
	Local ay
	Local c
	Cls
	For ay=0 Until GraphicsHeight()
		For ax=0 Until GraphicsWidth()
			c = map.block(ax+CamX,ay+CamY)
			SetColor c*255,c*180,0
			DrawRect ax,ay,1,1
			'Print "("+ax+","+ay+") >>> "+c
			Next
		Next
	FlushKeys()
	Flip
	WaitKey
	End Method
	
	Method Layers$() ' BLD: In a multi-map this will contain a list of all layers separated by ;<br>In a non-multi-map this will return an empty string
	Local ret$
	If Not map.multi Return
	For Local K$=EachIn MapKeys(map.multi)
		If ret ret:+";"
		ret:+K
		Next
	Return ret
	End Method
	
	Method ActorInZone(ActorTag$,ZoneTag$) ' BLD: Returns 1 if the actor is within a Zone or TiledArea and will return 0 if not.<br><span style='color:red'>NOTES</span><ol type=lower-greek><li>Lua will deem both 0 and 1 as "true" so you really MUST check on the value. BlitzMax in which the underlying API was written is does not support Booleans and only uses bytes containing either 1 or 0 in stead, that is why.</li><li>Actor tags may ONLY be used for actors. Obstacles will not do and result in an error!</li><li>If you use the zone tag for anything else but TiledAreas or Zones, this feature will not work and throw an error!</li><li>Though the system will handle it just the same, using 'Impassible' objects for the zone is mostly a dumb thing to do.</ol>
	Local er$[] = ["Function,Maps.ActorInZone","ActorTag,"+ActorTag,"ZoneTag,"+ZoneTag]
	Local a:TKthuraActor = TKthuraActor(map.getobjectbytag(actortag))
	If Not a GALE_Error "Actor ~q"+actortag+"~q does not exist or it's not an actor",er
	Local z:TKthuraObject = map.getobjectbytag(zonetag)
	If Not z GALE_Error "Object ~q"+zonetag+"~q does not exist!",er
	If z.kind<>"Zone" And z.kind<>"TiledArea" GALE_Error "Kind ~q"+z.kind+"~q not supported",er
	Return a.x>=z.x And a.y>=z.y And a.x<=z.x+z.w And a.y<=z.y+z.h
	End Method	
	
	Method CoordsInObject(ObjectTag$,x,y) ' BLD: Detects whether or not the given coordinates are in an object or not. Returns 1 if so, and 0 if not.
	Return map.CoordInObjectFromTag(ObjectTag,x,y)
	End Method
	
	Method SetObjectVisible(Tag$,Visible)
	Local o:TKthuraObject = map.getobjectbytag(tag)
	If Not o GALE_Error "Cannot change the visibility of an non-existent object",["Object Tag,"+tag]
	o.visible = visible
	End Method
	
	Method ShowObject(Tag$) ' BLD: Shows an object. This function works on any object including actors.
	setobjectvisible tag,True
	End Method
	
	Method HideObject(Tag$) ' BLD: Hides an object. This function works on any object including actors
	setobjectvisible tag,False
	End Method
	
	Method ShowLabel(Labels$) ' BLD: Show objects with set up labels.
	map.ShowLabel(labels$)
	End Method
	
	Method ShowOnlyLabel(Labels$) ' BLD: Show only object with required labels. When giving parameter "*ALL*" all objects will be shown regardless of label
	map.showonlylabel(Labels)
	End Method
	
	Method HideLabels(Labels$) ' BLD: Hide objects with set up labels
	map.hidelabel Labels
	End Method
	
	Method PermaWrite(Str$) ' BLD: Writes script to the perma-change file of this map.<br>Anything can be written to this file, as long as it's valid Lua code. The more changes the slower the re-laod of the level becomes. Most functions supporting permanent changes already call this function.
	Local bt:TStream
	Select map.multi<>Null
		Case False
			CreateDir ExtractDir(SwapDir+"/Perma-Map/"+CodeName+".lua"),1
			BT:TStream = WriteOrAppend(SwapDir+"/Perma-Map/"+CodeName+".lua")
		Case True	
			CreateDir ExtractDir(SwapDir+"/Perma-MultiMap/"+CodeName+"/"+LayerCodeName+".lua"),1
			BT:TStream = WriteOrAppend(SwapDir+"/Perma-MultiMap/"+CodeName+"/"+LayerCodeName+".lua")
		End Select	
	If StreamSize(BT)=0 WriteLine bt,"--[[~n~tThis file was written by LAURA II~n~tThe copyrights and license terms are the as those of the game itself~n~tPlease read the game's documentation on that matter~n]]~n~n"
	WriteLine bt,str
	CloseFile bt
	End Method
	
	Method PermaKill() ' BLD: Removes all data from the current room's or layer's perma file.<br>Please note in the case of a multi-map, only the current layer is killed.
	Local PFile$ = SwapDir+"/Perma-Map/"+CodeName+".lua"
	If map.multi PFile = SwapDir+"/Perma-MultiMap/"+CodeName+"/"+LayerCodeName+".lua"
	SaveString "--[[~n~tThis file was written by LAURA II~n~tThe copyrights and license terms are the as those of the game itself~n~tPlease read the game's documentation on that matter~n]]~n~n",PFile
	End Method
	
	Method PermaGenocide(NoteNoKill=0) ' BLD: Destroys ALL data for all rooms. If NoteNoKill is set to any other value than 0 all files will be checked for "-- NOKILL:" tags and the first line beyond that will be kept.
		ConsoleWrite "Analysing Perma-trees for genocide"
		Local Tree:TList = New TList
		For Local af$=EachIn CreateTree(SwapDir+"/Perma-Map")
			ListAddLast tree,"/Perma-Map/"+af
		Next
		
		For Local af$=EachIn CreateTree(SwapDir+"/Perma-MultiMap")
			ListAddLast tree,"/Perma-MultiMap/"+af
		Next
		Local content$,line$,cd,bt:TStream
		SortList tree
		For Local kf$=EachIn tree
			If NoteNoKill
				content = LoadString(swapdir+kf)
				If Not DeleteFile(swapdir+kf) Error "Couldn't delete: "+swapdir+kf
				If content.find("-- NOKILL:")=-1
					ConsoleWrite "Exterminated: "+swapdir+kf,255,0,0
				Else
					bt = WriteFile(swapdir+kf)
					WriteLine bt,"-- Cleaned up version of "+kf+" after a genocide command"
					WriteLine bt,"-- Read the license text of the game this file belongs to ("+AppTitle+")"
					WriteLine bt,"-- and the same license applies to this file~n~n"
					For Local fline$=EachIn content.split("~n")
						Line = Trim(fline)						
						If line="-- NOKILL:" cd=2						
						If cd
							WriteLine bt,line
							cd:-1
						EndIf
					Next
					CloseFile bt
					ConsoleWrite "  Cleaned up: "+swapdir+kf,180,0,255								
				EndIf		
			Else
				If Not DeleteFile(swapdir+kf) Error "Couldn't delete: "+swapdir+kf Else ConsoleWrite "Assasinated: "+swapdir+kf,255,0,0
			EndIf
		Next
	End Method
	
	
	Method Remap() ' BLD: Remaps the Kthura map.<br>This feature can be needed if you used some direct access routines. Some stuff (like the blockmap) need to be rebuilt as a result. This feature should make sure everything works the way it should again.<p>Please note in a multi-map only the current layer is remapped. If you want a multi-map to be fully remapped (which is all layers being covered) use Maps.MultiRemap() in stead.
	Map.TotalRemap
	End Method
	
	Method MultiRemap() ' BLD: Remaps ALL layers in a Multi-Map.<p>Warning. When used on a non multi-map you'll get an error or otherwise very unwanted behavior.
	Map.MultiRemap()
	End Method

	End Type
	
	



Global LAURA2Maps:TLAURA2Maps = New TLAURA2Maps
GALE_Register LAURA2MAPS,"Maps"


Function LAURA_CUSTOM(O:TKthuraObject,x,y)
Local tag$
Select Upper(O.DataGet("LAURA_TYPE"))
	Case "SCRIPT"
		tag$ = O.DataGet("LAURA_SCRIPT_MS")
 		Local S:TLua = GALE_GetScript(Tag)
		If Not S GALE_Error("LAURA.KTHURA.OBJECT.CUSTOM: There is no script loaded on tag: "+Tag)
		LAURA2Maps.CObj = O
		Local f$ = O.DataGet("LAURA_SCRIPT_FN")
		Local p$ = O.DataGet("LAURA_SCRIPT_PR")
		Local ps$[] = p.split(";")
		'debuglog "Calling function "+f+" in script "+tag
		If p s.run f,ps Else s.run f,Null
		LAURA2Maps.CObj = Null
	Default
		If LAURA2Maps.COBJCRASH Error "Kthura Custom Type Object not properly defined > "+O.DataGet("LAURA_TYPE")
	End Select
End Function
CustomDraw = LAURA_CUSTOM ' -- Connect this function to Kthura.







Function TempMapWrite(str$)
CreateSwapDir(CMapDir)
Local BT:TStream = WriteOrAppend(CMapDir+"/"+LAURA2Maps.CodeName+".lua")
If StreamSize(BT)=0 WriteLine bt,"-- This file is first created by "+AppTitle+" a game written in LAURA II~n-- It is copyrighted by the respected creator of that game~n-- This file is only for swapping purposes, and will be written/modified/deleted as the game sees fit.~n~n-- File created: "+PNow()+"~n~n~n"
WriteLine bt,str
End Function
