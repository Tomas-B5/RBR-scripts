#NoEnv  ; Recommended for perfo
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

send_restart()
{
    Send {Esc}
	Sleep 100
	Send {up}
	Sleep 100
	Send {up}
	;Sleep 100
	;Send {up}
	Sleep 100
	Send {up}
	Sleep 100
	Send {Enter}
	Sleep 100 	
	Send {up}
	Sleep 100
	Send {Enter}
	Return
}

Joy12::
If (A_ThisHotkey = A_PriorHotkey and A_TimeSincePriorHotkey < 200)
{
    send_restart()
}
Return

2Joy12::
If (A_ThisHotkey = A_PriorHotkey and A_TimeSincePriorHotkey < 200)
{
    send_restart()
}
Return

3Joy12::
If (A_ThisHotkey = A_PriorHotkey and A_TimeSincePriorHotkey < 200)
{
    send_restart()
}
Return