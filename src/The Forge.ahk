#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance, Force
;#Warn  ; Enable warnings to assist with detecting common errors.
; SetKeyDelay, 100
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_MyDocuments%  ;  %A_ScriptDir%  ; Ensures a consistent starting directory.

ProductName      := "The Forge"
ProductVersion   := "0.2.1"
ProductPublisher := "Angelo R. Pinto"
ProductWebsite   := "https://github.com/angelorpt/The-Forge"
autoComplete     := 1 ; DEFAULT


TrayTip, The Forge, Your Forge of Development is Activate!
Return

#Include, %A_ScriptDir%\functions\functions.ahk
#Include, %A_ScriptDir%\functions\functions_system.ahk

#Include, %A_ScriptDir%\languages\autohotkey.ahk
#Include, %A_ScriptDir%\languages\delphi.ahk
#Include, %A_ScriptDir%\languages\git.ahk
#Include, %A_ScriptDir%\languages\javascript.ahk
#Include, %A_ScriptDir%\languages\jquery.ahk
#Include, %A_ScriptDir%\languages\oracle.ahk
#Include, %A_ScriptDir%\languages\quasar_cli.ahk
#Include, %A_ScriptDir%\languages\sql.ahk
#Include, %A_ScriptDir%\languages\vba.ahk
