while TRUE {
    WinGetActiveTitle, 視窗標題
    if InStr(視窗標題,"Atom") {
        Msgbox % "目前的視窗是記事本"
    }else {
        Msgbox % "目前的視窗不是記事本"
    }
    Sleep % 500
}
