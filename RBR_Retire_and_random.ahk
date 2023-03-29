#NoEnv ; Recommended for perfo
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

global StageCount := 496 ; indexes
Blacklist := [ 305] ; PUT PS_VALSTAGNA and others here

; SELECT ANY STAGE FROM ALL BEFORE EXECUTING THE SHORTCUT FOR THE FIRST TIME!

send_retire()
{
    Send {Esc}
    Sleep 100
    Send {up}
    Sleep 100
    Send {up}
    Sleep 100
    Send {Enter}
    Sleep 100 	
    Send {up}
    Sleep 100
    Send {Enter}
}

go_to_all_stages()
{
    Send {down}
    Sleep 100
    Send {Enter}
    Sleep 200

	Send {down}
    Sleep 100
    Send {Enter}
    Sleep 100

}

go_to_gravel_stages()
{
    Send {down}
    Sleep 100
    Send {Enter}
    Sleep 200

	Send {down}
    Sleep 100
	Send {down}
    Sleep 100
	Send {down}
    Sleep 100
    Send {Enter}
    Sleep 100

}

go_to_random_stage()
{
    Random randstage, 0, StageCount
	
    If randstage in Blacklist
        return go_to_random_stage()
		
	Clipboard := randstage
    while randstage > 0
    {
        If randstage >= 10
        {
            Send {PgDn}
            Sleep 20
            randstage -= 10
        }
        Else
        {
            Send {down}
            Sleep 100
            randstage -= 1
        }
    }	
	Sleep 100
    Send {Enter}
    Sleep 200
}

confirm_selectio()
{
	Send {up}
    Sleep 100
    Send {Enter}
}

do_random_stage()
{
    go_to_all_stages()
    go_to_random_stage()
	confirm_selectio()
}

do_random_stage_from_game()
{
    send_retire()
    Sleep 5000
    go_to_all_stages()
    go_to_random_stage()
	confirm_selectio()
}

F1::
    If (A_ThisHotkey = A_PriorHotkey and A_TimeSincePriorHotkey < 300)
    {
        do_random_stage()
    }
Return

Joy11::
    If (A_ThisHotkey = A_PriorHotkey and A_TimeSincePriorHotkey < 300)
    {
        do_random_stage_from_game()
    }
Return

2Joy11::
    If (A_ThisHotkey = A_PriorHotkey and A_TimeSincePriorHotkey < 300)
    {
        do_random_stage_from_game()
    }
Return

3Joy11::
    If (A_ThisHotkey = A_PriorHotkey and A_TimeSincePriorHotkey < 300)
    {
        do_random_stage_from_game()
    }
Return