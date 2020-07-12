g_ime := "english" 

switch_ime(l_ime)
{
  Sleep % 150 ;延遲

  WinGetActiveTitle, windows_title

  if (InStr(windows_title,"Visual Studio") AND not InStr(windows_title, "Firefox"))
  {
    if (l_ime != "english" )
    {
      Send {LWin Down}
      Send, {Space}
      Send {LWin Up}

      l_ime :=  "english"
    }
    else
    {
      l_ime := "english"
    }
  }
  else
  {
    if (l_ime != "pinyin")
    {
      Send {LWin Down}
      Send, {Space}
      Send {LWin Up}

      l_ime := "pinyin"
    }
    else
    {
      l_ime := "pinyin"
    }
  }
  Return l_ime
}

~*$LButton::
  g_ime := switch_ime(l_ime := g_ime)

~*$Alt::
  KeyWait, Alt ;等Alt鍵釋放
  g_ime := switch_ime(l_ime := g_ime)
