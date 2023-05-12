$tryNow = 0
$tryMax = 5


Sleep(2000)

Farm()


Func Farm()
Sleep(2000)

MouseClick("left", 1000, 700)
Sleep(100)
MouseClick("left", 976, 662)
Sleep(100)
MouseClick("left", 85, 400)
Sleep(100)
MouseClick("left", 970, 380)
Sleep(100)
MouseClick("left", 970, 500)
Sleep(100)
While 1
	Sleep(2000)
	MouseClick("left", 1000, 700)
	Sleep(100)
	$tryNow = $tryNow + 1
	if $tryNow > $tryMax Then
		Sleep(100)
        MouseClick("left", 85, 400)
		Sleep(100)
		$random = Random(0,1)
		if $random > 0.8 Then
			MouseClick("left", 760, 450)
			Sleep(5000)
			MouseClick("left", 1186, 509)
		Else
			MouseClick("left", 980, 450)
			Sleep(5000)
			MouseClick("left", 1498, 822)
	    EndIf
		Sleep(100000)
		MouseClick("left", 1000, 700)
        Sleep(10000)
		MouseClick("left", 976, 662)
        Sleep(10000)
		MouseClick("left", 85, 400)
        Sleep(100)
        MouseClick("left", 970, 380)
		Sleep(100)
		MouseClick("left", 970, 500)
        Sleep(1000)
	EndIf
While 1
    Local $pos = PixelSearch(0, 0, @DesktopWidth, @DesktopHeight, 0xC23131)
    If Not @error Then
        MouseClick("left", $pos[0], $pos[1])
		$tryNow = 0
        Sleep(10000)
    Else
        ExitLoop
    EndIf
WEnd
MouseClick("left", 1000, 700)
Sleep(100)
MouseClick("left", 1020, 800)
Sleep(5000)
MouseClick("left", 976, 662)
Sleep(100)
MouseClick("left", 85, 400)
Sleep(100)
MouseClick("left", 970, 380)
Sleep(100)
MouseClick("left", 970, 500)
Sleep(100)
WEnd
EndFunc


