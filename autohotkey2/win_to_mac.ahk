#Requires AutoHotkey v2.0

; Syntax of AutoHotkey:
; ! = Alt
; ^ = Ctrl
; <^ = LCtrl
; >^ = RCtrl
; + = Shift
; <+ = LShift
; >+ RShift

; This script requires some keys to be remapped in "KeyTweak" app.
; 1. Remap "Caps Lock" to "Left Control".
; 2. Remap "Left Win" to "Left Alt".
; 3. Remap "Left Alt" to "Right Control" (RCtrl).

; Remap CapsLock to Control - Currently remapped in "KeyTweak"!
; CapsLock::LCtrl

; Disable "Start menu" from Ctrl+Esc.
Control & Esc::vkE8

; Disable Start menu from Win Key but keep using Win Key for other shortcuts.
~LWin::vkE8

; Disable "standard" Alt+Tab.
LAlt & Tab::vkE8

; In this script RCtrl is treated as logical "Cmd" from MacOS.

RCtrl & Tab::AltTab
RCtrl & Space::Send "#{Space}"

RCtrl & A::Send "^a"
RCtrl & Q::Send "!{F4}"

; Tabs cycling.
>^+sc01A::Send("^+{Tab}")
>^+sc01B::Send("^{Tab}")

LCtrl & A::Send "{Home}"
LCtrl & E::Send "{End}"
LCtrl & P::Send "{Up}"
LCtrl & N::Send "{Down}"

LCtrl & D::Send "{Delete}"
