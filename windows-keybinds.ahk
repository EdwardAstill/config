#Requires AutoHotkey v2.0
#SingleInstance Force  ; Prevents "Already running" popups
#y:: 
{
    Run('wezterm-gui.exe start -- powershell -NoLogo -Command "y"')
}

#Enter::
{
    ; Run and immediately store the Process ID (PID) in 'wezPID'
    Run('wezterm-gui.exe start -- powershell -NoExit -Nologo',,, &wezPID)
    
    ; Wait for the window belonging to that specific PID to exist
    ; This happens nearly instantly.
    WinWait("ahk_pid " wezPID)
    
    ; Force it to the front
    WinActivate("ahk_pid " wezPID)
}

; Ensure the script can see all windows
SetTitleMatchMode(2)

; Map Win + Shift + Q to act exactly like Alt + F4
+#q::
{
    Send("!{F4}")
}