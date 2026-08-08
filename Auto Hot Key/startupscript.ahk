#Requires AutoHotkey v2.0

; Close active window with Win + Ctrl + Q 
#^Q::
{
    WinClose("A")  ; "A" refers to the active window
}

; Open Firefox with Alt + Shift + F 
!+F::
{
	Run("firefox")
}

; Open Brave Browser with Alt + Shift + B 
!+B::
{
	Run("brave")
}
