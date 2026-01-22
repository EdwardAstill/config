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