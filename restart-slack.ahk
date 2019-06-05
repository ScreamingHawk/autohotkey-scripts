; Run on start up
SplitPath, A_Scriptname, , , , OutNameNoExt
LinkFile=%A_StartupCommon%\%OutNameNoExt%.lnk
IfNotExist, %LinkFile%
	FileCreateShortcut, %A_ScriptFullPath%, %LinkFile%
SetWorkingDir, %A_ScriptDir%

; Restart slack with Win S
#s::
RunWait, tskill /A slack
Run C:\Users\MichaelSta\AppData\Local\slack\slack.exe
return
