; Run on start up
SplitPath, A_Scriptname, , , , OutNameNoExt
LinkFile=%A_StartupCommon%\%OutNameNoExt%.lnk
IfNotExist, %LinkFile%
	FileCreateShortcut, %A_ScriptFullPath%, %LinkFile%
SetWorkingDir, %A_ScriptDir%

; Always on top with Ctrl Space
^Space:: Winset, AlwaysOnTop, , A
return
