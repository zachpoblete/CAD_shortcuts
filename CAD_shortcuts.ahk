; Settings:
#Requires AutoHotkey v1.1.33+
#NoEnv
#Warn
#SingleInstance Force

SendMode Input
SetWorkingDir %A_ScriptDir%

; Run LuaMacros script.
Run LuaMacros.exe -r black-and-ocean-numpads.lua, , Hide

; Script Hotkeys:
#^s::Suspend
#^r::
	Suspend Permit
	Reload
	return

; Numpad Hotkeys:
#If GetKeyState("F23")
Numpad0::
NumpadIns::		Send {Click M}	; pan
Numpad1::
NumpadEnd::		Send e{Space}	; erase
Numpad2::
NumpadDown::	Send co{Space}	; copy
Numpad3::
NumpadPgDn::	Send xv{Space}	; xline vertical
Numpad4::
NumpadLeft::	Send ^z			; undo
Numpad5::
NumpadClear::	Send m{Space}	; move
Numpad6::
NumpadRight::	Send xh{Space}	; xline horizontal
Numpad7::
NumpadHome::	Send ma{Space}	; match property
Numpad8::
NumpadUp::		Send s{Space}	; stretch
Numpad9::
NumpadPgUp::	Send dli{Space}	; dimension linear
; NumpadDot::
; NumpadDel::

; NumLock::
NumpadDiv::		Send ro{Space}	; rotate
NumpadMult::	Send {F8}		; ortho on/off
; NumpadAdd::
NumpadSub::		Send PL{Space}	; polyline
; NumpadEnter::
#If
