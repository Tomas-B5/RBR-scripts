2Joy1::
2Joy2::
2Joy3::
2Joy4::
2Joy5::
2Joy6::
2Joy7::
2Joy8::
	JoyR := GetKeyState("3JoyR")
	if (JoyR > 90)
    {
        SoundPlay, C:\ahk_gear_grind\Sound2.mp3
    }
	else if (JoyR > 65)
    {
        SoundPlay, C:\ahk_gear_grind\Sound1.mp3
    }
return
