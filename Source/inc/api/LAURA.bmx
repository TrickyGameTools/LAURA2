Rem
	LAURA II
	General Lua API
	
	
	
	(c) Jeroen P. Broks, 2015, 2016, 2017, All rights reserved
	
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
Version: 17.03.20
End Rem

MKL_Version "LAURA II - LAURA.bmx","17.03.20"
MKL_Lic     "LAURA II - LAURA.bmx","GNU General Public License 3"

Type TLAURA_API ' BLD: Object LAURA\nThis object contains a few core features of LAURA


	Method Flow(Tag$) ' BLD: Will put the general flow to the script with the requested tag.<p>The script MUST have a function called "MAIN_FLOW" or your game will crash. It must be defined as 'function MAIN_FLOW()'! 'MAIN_FLOW = function()' will NOT do, and extra stuff like 'local' is also forbidden. The line MUST SOLELY contain the definition as I just placed it. Comments after the defintion should be okay, but I recommend against it! The function will not receive any parameters and any returned data will be ignored.<p>The game will keep on repeating this MAIN_FLOW function until the system is set to perform this function of an other script.
	Local S:TLua = GALE_GetScript(Tag)
	If Not S GALE_Error("There is no script loaded on tag: "+Tag)
	If Not ListContains(S.Functions,"MAIN_FLOW") GALE_Error("There is no valid MAIN_FLOW routine found in script tag: "+Tag)
	CurrentFlow = Tag
	End Method
	
	Method GetFlow$() ' BLD: Returns the current flow tag
	Return CurrentFlow
	End Method
	
	Method AutoINP(SetValue) ' BLD: Sets the keyboard autograbber on or off (alternatively you can assign INP.AutoGrab yourself, as basically, that's all this function does :P)<p>When set to 1, the keys will automatically be grabbed prior to running a new MAIN_FLOW cycle.
	GALE_INP.AutoGrab = SetValue
	End Method
	
	Field Terminate ' BLD: Contains 1 if an APP-Terminate event was triggered. This will only be checked at the start of a new cycle and not by INP.Grab() so it's better to rely on that<br>The existence of this variable is the result of a few errors in development of LAURA II, and should therefore be considered as "deprecated". Use INP.Terminate in stead!
	
	Method Save(File$,DeleteOnLoad=0) ' BLD: Saves the game to "File". If "DeleteOnLoad" is set to any value other than 0 the savegame will be deleted after it's loaded. If the value is set to 0 the savegame will stay.
	SaveGame File,DeleteOnLoad
	End Method
	
	Method StringForSave(file$,str$) ' BLD: You can save a string in the swap folder, which can serve as extra meta data for your savegame  otherwise wouldn't cover. Pathnames are ignored and the file is deleted as soon the savegame has been created to prevent conflicts with later save game files.	
		If Not CreateDir(swapdir+"/SaveMeta",1) GALE_Error "Cannot create "+swapdir+"/SaveMeta"
		SaveString str,swapdir+"/SaveMeta/"+StripDir(file)
	End Method
	
	Method ImageForSave(file$,tag$,frame=0) ' BLD: Allows you to save an image (as PNG) in the swap folderwhich can serve as extra meta data for your savegame otherwise wouldn't cover. Pathnames are ignored and the file is deleted as soon the savegame has been created to prevent conflicts with later save game files.	
		If Not CreateDir(swapdir+"/SaveMeta",1) GALE_Error "Cannot create "+swapdir+"/SaveMeta"
		If Lower(ExtractExt(file)<>".png") file:+".png"
		Local I:TImage = TImage(MapValueForKey(MJBC_Lua_Image,Upper(tag)))
		If Not I GALE_Error "ImageForSave(~q"+file+"~q,~q"+tag+"~q,"+frame+"): No image available on that tag!"
		If frame>Len(I.Pixmaps) GALE_Error("ImageForSave(~q"+file+"~q,~q"+tag+"~q,"+frame+"): Frame beyond number of frames ("+Len(I.Pixmaps)+")")
		SavePixmapPNG I.PixMaps[frame],swapdir+"/SaveMeta/"+StripDir(file),9
	End Method	
	
	Method User$() ' BLD: Returns the username if one is given<br>This does not refer to a network name, just a justname used in LAURA II itself.
	Return startup.c("User")
	End Method
	
	Method LauraStartUp$(v$) ' Undocumented.
	Return startup.c(v)
	End Method
	
	Method Version$() ' BLD: Returns current LAURA II version
		Return MKL_NewestVersion()
	End Method
	
	Method GetSaveDir$() ' BLD: Returns the full path name of the directory where the savegames are being stored.
	Return SaveDir
	End Method
	
	' Not used now, but I may change my mind later!
	'Method LabelCheck(Actor$) ' -BLD: Detects all labels of the spots the actor is on.
	'End Method
	
	Method ConsoleInput$() ' BLD: Requests input over the console. This command is only meant for debug purposes.
	Return DevConsoleInput$()
	End Method
	
	Method ToggleFullScreen() ' BLD: Toggle between full screen and windowed mode<br><span style='color:#ff0000'>WARNING!</span> This feature can (when used often) make the game inevitably crash, so I recommend against implementing it unless you have VERY good reasons to do so anyway.
	graphicsfullscreen = Not graphicsfullscreen
	InitGraphics id,GraphicsFullScreen
	End Method
	
	Method TerminateBye() ' BLD: If called, the system will check if in the last INP.Grab or start of a cycle a request to close the application was detected. If so, LAURA II will ask for confirmation and if the user confirms LAURA II will terminate itself immediately.<br>Due to safety measures, this function will be ignored when in fullscreen (in which a termination call should be impossible to make anyway).
	If (Not graphicsfullscreen) And GALE_INP.Terminate 
		If Confirm("Are you sure you wish to quit ~q"+AppTitle+"~q immediately?~n~n(Any unsaved progress will be lost)") GALE_Sys.Bye
	ElseIf GALE_INP.Terminate
		ConsoleWrite "WARNING! Terminate call received, but we're not in full screen",255,60,0	
		EndIf
	End Method
	
	Method KillSaveGame(File$) ' BLD: Deletes a savegame file, if it exists
	Local s = DeleteFile(SaveDir+"/"+File)
	If s
		ConsoleWrite "Savegame deleted: "+SaveDir+"/"+File
		'Notify "Savegame deleted: "+SaveDir+"/"+File ' Debug line
		Else
		ConsoleWrite "Savegame deletion failed: "+Savedir+"/"+file
		'Notify "Savegame deletion failed: "+Savedir+file ' Debug line
		EndIf
	Return s
	End Method
	
	Method StringFromSave$(file$,entry$) ' BLD: Reads an entry from a savegame file and return its contents as a string
	 file$ = Savedir+"/"+file
	If Not JCR_Exists(file,entry)
		ConsoleWrite "Warning! StringFromSave(~q"+file+"~q,~q"+entry+"~q): File or entry not found!"
		Return
	EndIf
	Return LoadString(JCR_B(file,entry))
	End Method
	
	Method ImageFromSave$(file$,Entry$,ID$="") ' BLD: Reads an image from a savegame
		file$ = Savedir+"/"+file
		If Not ID
			Repeat
				ID = Upper(Hex(Rand(0,MilliSecs())))
			Until Not MapContains(MJBC_Lua_Image,ID)
		EndIf
		If Not JCR_Exists(file,entry)
			ConsoleWrite "Warning! StringFromSave(~q"+file+"~q,~q"+entry+"~q,~q"+ID+"~q): File or entry not found!"
			Return
		EndIf
		Local I:TImage = LoadImage(JCR_B(file,entry))
		If Not I 
			ConsoleWrite "Warning! StringFromSave(~q"+file+"~q,~q"+entry+"~q,~q"+ID+"~q): Image not properly read!" 
			Return
		EndIf
		MapInsert MJBC_Lua_Image,Upper(ID),i
		Return ID	
	End Method
	
	End Type

Global LAURA_API:TLAURA_API = New TLAURA_API

GALE_Register LAURA_API,"LAURA"
