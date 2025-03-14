Gui, Add, Text,, ------------------------------------------Key Delay------------------------------------------
Gui, Add, Edit, w350 vKeyDelay, 100
Gui, Add, Text,, -----------------------------------------Text Typer------------------------------------------
Gui, Add, Edit, R10 w350 vTextBox
Gui, Add, Text,, --------------------------------Ctrl + F12 To Type Text----------------------------------
Gui, Add, Text,, --------------------------------Created by Hmovaghari----------------------------------
Gui, Show
^F12::
!^F12::
Gui, Submit, Nohide
SetKeyDelay, %KeyDelay%
;TextBox := StrReplace(TextBox, "`n")  ; Remove linefeeds
;TextBox := StrReplace(TextBox, "`r")  ; Remove carriage returns
;TextBox := StrReplace(TextBox, "/")   ; Remove Ingame Chat
Send, %TextBox%
return
GuiClose:
ExitApp