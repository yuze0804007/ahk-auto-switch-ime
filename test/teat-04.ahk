;請確保下段程式碼在腳本最頂部
SysGet, VirtualHeight, 79
SysGet, VirtualWidth, 78
;=====================

while TRUE {
    __ImageFilePath:="""C:\Users\wk415\Google Drive (wk415937@gmail.com)\01-Projects\AutoHotKey\google_pinyin.png"""
    if FileExist(__ImageFilePath){
        gui,add,picture,hwnd__mypic,%__ImageFilePath%
        controlgetpos,,,__img_w,__img_h,,ahk_id %__mypic%
        CoordMode Pixel
        ;搜尋圖片
        ImageSearch, __FoundX, __FoundY, 0, 0, VirtualWidth, VirtualHeight,%__ImageFilePath%
        CoordMode Mouse
        ;獲取圖片中心座標
        圖片座標X:=__FoundX + __img_w/2
        圖片座標Y:=__FoundY + __img_h/2
        if (ErrorLevel=0) {
            Msgbox % "OK!"
        } else {
            Msgbox % "Y"
        }
    } else {
        Msgbox % "N"
    }
}
