#NoEnv
SendMode Input

SetWorkingDir %A_ScriptDir%

; NRA
NRA := 1

; NR
~LButton::
while GetKeyState("LButton") & NRA
{
	DllCall("mouse_event", uint, 1, int, 0, int, -16, uint, 0, int, 0)
	Sleep, 5
}
return

; keys
Esc::ExitApp
j::suspend