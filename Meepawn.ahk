#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
;MsgBox, x64Slayer in da hausssss
Clones = 1
Meeps = 2
SysGet, VirtualWidth, 78
SysGet, VirtualHeight, 79
!Numpad1::
	Clones = 1
	Meeps = 2
	MsgBox, "1 Clone Setting"
Return


!Numpad2::
	Clones = 2
	Meeps = 3
	MsgBox, "2 Clone Setting"
Return


!Numpad3::
	Clones = 3
	Meeps = 4
	MsgBox, "3 Clone Setting"
Return

!Numpad4::
	Clones = 4
	Meeps = 5
	MsgBox, "4 Clone Setting"
Return

c::
	Send 1
	Loop, %Clones%
	{
		Send %A_Tab% 
		Send f 
		Send {Click}
	}
	Send %A_Tab%
	Send !q
	Send {Click}
Return

v::
	Send 1
	Loop, %Clones%
	{
		Send %A_Tab% 
		Send f 
		Send {Click}
	}
	Send %A_Tab%
	Send !q
	Send {Click}
	Send e
	Send {Click}
Return

b::
	Loop, %Meeps%
	{
		Send f 
		Send {Click}
		Send %A_Tab% 
	}
Return

,::
	Send {f1}
	MouseMove, 320, VirtualHeight-275
	;MouseClick, right, 20, VirtualHeight-25, 2
Return

!g::
	Send 1
	Send !a
	Send !a
	Sleep, 2850
	BlockInput On
	Loop, %Clones%
	{
		Send %A_Tab% 
		Send f 
		Sleep, 50
		MouseClick, left, 20, VirtualHeight-25
	}
	BlockInput Off
	MouseMove, VirtualWidth/2, VirtualHeight2
Return

!t::
	MouseGetPos, xpos, ypos
	Send 1
	Send !a
	Send {Click}
	Sleep, 2850
	BlockInput On
	Loop, %Clones%
	{
		Send %A_Tab% 
		Send f 
		Sleep, 50
		MouseClick, left, xpos, ypos
	}
	BlockInput Off
Return

#p::
Suspend, Permit
Suspend, Toggle
MsgBox, "Script Toggled"
Return