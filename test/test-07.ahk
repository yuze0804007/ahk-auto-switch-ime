
ime := "english"
while TRUE {
    WinGetActiveTitle, windows＿title
    if InStr(windows＿title,"Visual Studio") {
        if (ime != "english") {
            Send {LWin Down}
            Send, {Space}
            Send {LWin Up}
            ime := "english"
        }
    }else {
        if (ime != "pinyin") {
            Send {LWin Down}
            Send, {Space}
            Send {LWin Up}
            ime := "pinyin"
        }
    }
    Sleep % 500
}



