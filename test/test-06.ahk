while TRUE {
    __ImageFilePath:="C:\google_pinyin.png"
    if FileExist(__ImageFilePath){
        gui,add,picture,hwnd__mypic,%__ImageFilePath%
        controlgetpos,,,__img_w,__img_h,,ahk_id %__mypic%
        CoordMode Pixel
        ;搜尋圖片
        ImageSearch, __FoundX, __FoundY, 0, 0, 1920, 1080,%__ImageFilePath%
        CoordMode Mouse
        ;獲取圖片中心座標
        圖片座標X:=__FoundX + __img_w/2
        圖片座標Y:=__FoundY + __img_h/2
        if (ErrorLevel=0) {
            Msgbox % "Y: " . 圖片座標X . "," . 圖片座標Y
        } else {
            Msgbox % "N"
        }
    } else {
        Msgbox % "path_no_fund"
    }
}

