if WinExist("Untitled - Notepad")
    WinActivate ; use the window found above
else
    WinActivate, Calculator
