ime := "english" 

switch_ime(){
    WinGetActiveTitle, windows_title
    Sleep % 50
    if InStr(windows_title,"Visual Studio") {
        if (ime != "english" ) {
            Send {LWin Down}
            Send, {Space}
            Send {LWin Up}
            ime :=  "english"
        }
        else
        {
          ime := "english"
        }
    }else {
        if (ime != "pinyin") {
            Send {LWin Down}
            Send, {Space}
            Send {LWin Up}
            ime := "pinyin"
        }
        else{
          ime := "pinyin"
        }
    }
}

~*$LButton:: switch_ime()
