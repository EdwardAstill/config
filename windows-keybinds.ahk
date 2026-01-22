#Requires AutoHotkey v2.0
#SingleInstance Force  ; Prevents "Already running" popups

#y:: 
{
    Run('wezterm-gui.exe start -- powershell -NoExit -Command "y"')
}

#Enter::
{
    Run("wezterm-gui.exe")
}

; Ensure the script can see all windows
SetTitleMatchMode(2)

; Map Win + Shift + Q to act exactly like Alt + F4
+#q::
{
    Send("!{F4}")
}