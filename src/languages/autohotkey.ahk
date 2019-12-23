; --------------------------------- 
; CODES AUTOHOTKEY 
; --------------------------------- 


; --------------------------------- 
; FOR 
; --------------------------------- 

::ahkfor::

    ; InputBox, contador, AHK - FOR, Digite a quantidade de loops,,,,,,,, 3
    ; if ErrorLevel    
    ;     Return
            
    Sleep, 100
    Send, Loop, 3
    Send, {enter}
    Send, {up}{end}{left}{enter}{down}{end}
    ; Gosub, fn_autoCloseChaves
    
Return

; --------------------------------- 
; COMMENT TITLE 
; --------------------------------- 

::ahktitle::
    Sleep, 100
    InputBox, title, Code Title, Type the title,,,,,,,, Title
    if ErrorLevel    
        Return

    Sleep, 100
    Send, {;} --------------------------------------------- {enter}
    Send, {;} %title% {enter}
    Send, {;} ---------------------------------------------
    
Return

; --------------------------------- 
; INPUTBOX 
; --------------------------------- 

::ahkinputbox::

    Sleep, 100
    Send, InputBox, Var_Name, Inputbox_Title, Inputbox_Description,,,,,,,, Default_Value {enter}
    Send, if ErrorLevel {enter}
    Send, {tab}Return {enter}

Return
