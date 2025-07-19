#Requires AutoHotkey v2.0

SendMode "Event"

; Remap CapsLock to Control
CapsLock::Control

; Disable Start menu from Ctrl+Esc
Control & Esc::vkE8

; Remap Alt <-> LWin. Prevent LWin from getting stuck.
; Alt::LWin ; Assume that Alt <-> Win are remapped by another tool.

*LWin::{
  SetKeyDelay -1
  if !GetKeyState("LWin") {
    Send "{Blind}{LWin up}"
  }
  Send "{Blind}{Alt DownR}"
}

*LWin up::{
  SetKeyDelay -1
  Send "{Blind}{Alt up}"
}
; End of "Remap Alt <-> LWin"

; Disable Start menu from Win Key but keep using Win Key for other shortcuts
~LWin::vkE8

; Disable "standard" ALT+TAB
LAlt & Tab::vkE8

; Remap WIN+TAB to ALT+TAB
AltTabMenu := false

LWin & Tab:: {
    global AltTabMenu := true
    if GetKeyState("Shift", "P") {
        Send "{Alt Down}{Shift Down}{Tab}"
    } else {
        Send "{Alt Down}{Tab}"
    }
}

#HotIf (AltTabMenu)
~*LWin Up:: {
    Send "{Shift Up}{Alt Up}"
    global AltTabMenu := false
}
#HotIf

; Disable Win+L and remap it to Ctrl+L - requires Win+L "feature" to be disabled in Registry.
LWin & L:: {
  ; Send Ctrl+L
  Send "^l" 
  return
}

; Cmd + Click to open Chrome links in background t;abs
LWin & LButton:: {
    Send "{LCtrl down}"
    Send "{Click, Left}"
    Send "{LCtrl up}"
}
