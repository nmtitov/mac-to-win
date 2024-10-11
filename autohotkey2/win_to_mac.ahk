#Requires AutoHotkey v2.0

; Remap CapsLock to Control
CapsLock::Control

; Disable Start menu from Win Key but keep using Win Key for other shortcuts
~LWin::vkE8

; Disable Start menu from Ctrl+Esc
Control & Esc::vkE8

; TODO: this doesn't work and needs to be fixed
~LWin & l:: {
    Send "{Ctrl}{l}"
}

; Cmd + Click to open Chrome links in background tabs
LWin & LButton:: {
    Send "{LCtrl down}"
    Sleep 1
    Send "{LButton down}"
    Sleep 1
    Send "{LButton up}"
    Sleep 1
    Send "{LCtrl up}"
}


