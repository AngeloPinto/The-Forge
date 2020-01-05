;-------------------
; CODES VBA
;-------------------

;-------------------
; if / else / case
;-------------------

::vbaif::
    Gosub, vba_if_sub
Return

vba_if_sub:

    Sleep, 100
    Send, If (condition) Then{esc}{enter}
    Send, {enter}    
    Send, End If{esc}
    Send, {up}{up}{end}
    Loop, 6
    {
        Send, {left}
    }
    Send, ^+{left}

Return

::vbaif2::
    Gosub, vba_if_else_sub
Return

::vbaifelse::
    Gosub, vba_if_else_sub
Return

vba_if_else_sub:

    Sleep, 100
    Send, If (condition) Then{esc}{enter}
    Send, {enter}
    Send, Else{esc}{enter}
    Send, {enter}
    Send, End If{esc}
    Send, {up}{up}{up}{up}{end}
    Loop, 6
    {
        Send, {left}
    }
    Send, ^+{left}

Return

::vbaif3::
    Gosub, vba_if_sub3
Return

vba_if_sub3:
    Sleep, 100
    Send, IIf(condition, result_if_TRUE, result_if_FALSE)%A_Space%
    Loop, 36
    {
        Send, {left}
    }
    Send, ^+{left}
Return

::vbacase::
    Gosub, vba_case_sub
Return

vba_case_sub:
    Sleep, 100
    InputBox, variavel, VBA - Case, Digite o nome da vari·vel,,,,,,,, var_name
    if ErrorLevel
        Return
    InputBox, qtd, VBA - Case, Digite a quantidade de casos,,,,,,,, 1
    if ErrorLevel
        Return
    Send, Select Case %variavel% {esc}{enter}{tab}
    loop, %qtd%
    {
        Send, Case = %A_Index% {enter}
        Send, {enter}
    }
    Send, +{tab}End Select {end}
    loop, %qtd%
    {
        Send, {up}{up}
    }
    Send, {down}{tab}
Return

::vbacase2::
    Gosub, vba_case_sub2
Return

vba_case_sub2:
    Sleep, 100
    InputBox, variavel, VBA - Case, Digite o nome da vari·vel,,,,,,,, var_name
    if ErrorLevel
        Return
    InputBox, qtd, VBA - Case, Digite a quantidade de casos,,,,,,,, 1
    if ErrorLevel
        Return
    Send, Select Case %variavel% {enter}{tab}
    loop, %qtd%
    {
        Send, Case is "texto%A_Index%"  {enter}
        Send, {enter}
    }
    Send, +{tab}End Select {end}
    loop, %qtd%
    {
        Send, {up}{up}
    }
    Send, {down}{tab}
Return

;-------------------
; loop
;-------------------

::vbafor::
    Gosub, vba_for_sub
Return 

vba_for_sub:
    Sleep, 100
    InputBox, variavel, VBA - FOR, Digite o nome da vari·vel,,,,,,,, x
    if ErrorLevel
        Return
    InputBox, var_ini, VBA - FOR, Digite o valor inicial,,,,,,,, 1
    if ErrorLevel
        Return    
    InputBox, var_fim, VBA - FOR, Digite o valor final,,,,,,,, 10
    if ErrorLevel
        Return    
;    if (%var_ini% > %var_fim%)
;    {
        Send, For %variavel% = %var_ini% To %var_fim%{enter}
        Send, {tab}{enter}
        Send, +{tab}Next %variavel%
        Send, {up}{end}
;    }
Return

::vbafor2::
    Gosub, vba_for_sub2
Return 

vba_for_sub2:
    Sleep, 100
    ;decrescente
    InputBox, variavel, VBA - FOR Decrescente, Digite o nome da vari·vel,,,,,,,, x
    if ErrorLevel
        Return    
    InputBox, var_ini, VBA - FOR Decrescente, Digite o valor inicial,,,,,,,, 10
    if ErrorLevel
        Return    
    InputBox, var_fim, VBA - FOR Decrescente, Digite o valor final,,,,,,,, 1
    if ErrorLevel
        Return    
;    if (%var_ini% < %var_fim%)
;    {
        Send, For %variavel% = %var_ini% To %var_fim% Step -1{enter}
        Send, {tab}{enter}
        Send, +{tab}Next %variavel%
        Send, {up}{end}
;    }
Return

::vbafor3::
    Gosub, vba_for_sub3
Return 

vba_for_sub3:
    Sleep, 100
    ;celula
    InputBox, variavel, VBA - FOR Last Cell, Digite o nome da vari·vel,,,,,,,, x
    if ErrorLevel
        Return    
    InputBox, var_ini, VBA - FOR Last Cell, Digite o valor inicial,,,,,,,, 1
    if ErrorLevel
        Return    
    Send, for %variavel% = %var_ini% To Cells.SpecialCells(xlCellTypeLastCell).Row{enter}
    Send, {tab}{enter}
    Send, +{tab}next %variavel%
    Send, {up}{end}
Return

::vbawhile::
    Gosub, vba_while_sub
Return

vba_while_sub:

    Sleep, 100

    InputBox, variavel, VBA - FOR Decrescente, Digite o nome da vari·vel,,,,,,,, x
    if ErrorLevel
        Return    
    InputBox, var_ini, VBA - FOR Decrescente, Digite o valor inicial,,,,,,,, 1
    if ErrorLevel
        Return    
    InputBox, var_fim, VBA - FOR Decrescente, Digite o valor final,,,,,,,, 10
    if ErrorLevel
        Return    

    Send, %variavel% = %var_ini% {enter}
    Send, While %variavel% < %var_fim%{enter}
    Send, {tab}{enter}
    Send, %variavel% = %variavel% {+} 1{enter}
    Send, +{tab}Wend
    Send, {up}{up}{end}

Return

::vbawhile2::
    Gosub, vba_while_desc_sub
Return

vba_while_desc_sub:
    Sleep, 100
    InputBox, variavel, VBA - FOR Decrescente, Digite o nome da vari·vel,,,,,,,, x
    if ErrorLevel
        Return    
    InputBox, var_ini, VBA - FOR Decrescente, Digite o valor inicial,,,,,,,, 10
    if ErrorLevel
        Return    
    InputBox, var_fim, VBA - FOR Decrescente, Digite o valor final,,,,,,,, 1
    if ErrorLevel
        Return    
    Send, %variavel% = %var_ini% {enter}
    Send, While %variavel% > %var_fim%{enter}
    Send, {tab}{enter}
    Send, %variavel% = %variavel% {-} 1
    Send, +{tab}Wend
    Send, {up}{up}{end}
Return

::vbawhile3::
    Gosub, vba_while_cell_sub
Return

::vbawhilecell::
    Gosub, vba_while_cell_sub
Return

vba_while_cell_sub:

    Sleep, 100

    InputBox, variavel, VBA - WHILE, Digite o nome da vari·vel,,,,,,,, x
    if ErrorLevel
        Return    
    InputBox, var_ini, VBA - WHILE, Digite o valor inicial,,,,,,,, 1
    if ErrorLevel
        Return    
    InputBox, var_col, VBA - WHILE, Digite a coluna,,,,,,,, 1
    if ErrorLevel
        Return    

    Send, %variavel% = %var_ini% {enter}
    Send, while cells(%variavel%, %var_col%).value <> vbnullstring{enter}
    Send, {tab}{enter}
    Send, %variavel% = %variavel% {+} 1{enter}
    Send, +{tab}wend
    Send, {up}{up}{end}

Return

::vbaenum::
    Gosub, vba_enum_sub
Return

vba_enum_sub:

    Sleep, 100

    InputBox, enum_name, VBA - ENUM, Digite o nome do Enumeration,,,,,,,, enum_name
    if ErrorLevel
        Return    

    Send, Enum %enum_name%{enter}
    Send, {enter}
    Send, End Enum
    Send, {up}{end}{tab}

Return

;-------------------
; Array
;-------------------

::vbaarray::

Return

;-------------------
; Collections
;-------------------

::vbacollection::

Return

;-------------------
; Msgbox
;-------------------

::vbamsg::
    Gosub, vba_msg_sub
Return

vba_msg_sub:

    Sleep, 100
    InputBox, texto, VBA - Msgbox, Digite o texto da mensagem,,,,,,,, mensagem
    if ErrorLevel
        Return    
    InputBox, titulo, VBA - Msgbox, Digite o t√≠tulo da mensagem,,,,,,,, titulo
    if ErrorLevel
        Return    
    InputBox, tipomsg, VBA - Msgbox,
    (
        Selecione o icone:  1 - Information
                            2 - Error
                            3 - Warning
                            4 - Confirmation
                            5 - Nothing
    ),,,,,,,,1    
    if ErrorLevel
        Return    
    StringReplace, texto, texto, !, {!}, All
    StringReplace, titulo, titulo, !, {!}, All
    if (tipomsg = 1)
    {
        Send, MsgBox %texto%, vbInformation, %titulo%
    } 
    else if (tipomsg = 2)
    {
        Send, MsgBox %texto%, vbCritical, %titulo%
    }
    else if (tipomsg = 3)
    {
        Send, MsgBox %texto%, vbExclamation, %titulo%
    }
    else if (tipomsg = 4)
    {
        Send, MsgBox %texto%, vbQuestion, %titulo%
    }
    else 
    {
        Send, MsgBox %texto%, , %titulo%
    }

Return

::vbaifmsg::
    Gosub, vba_msg_if_sub
Return

vba_msg_if_sub:

    Sleep, 100

    InputBox, texto, VBA - Msgbox, Digite o texto da mensagem,,,,,,,, mensagem
    if ErrorLevel
        Return    
    InputBox, titulo, VBA - Msgbox, Digite o t√≠tulo da mensagem,,,,,,,, titulo
    if ErrorLevel
        Return

    Send, If VBA.MsgBox(%texto%, vbQuestion {+} vbYesNo, %titulo%) = vbYes Then {enter}
    Send, {tab}{enter}
    Send, +{tab}End If
    Send, {up}{end}

Return

::vbainput::
    Gosub, vba_input_sub
Return

vba_input_sub:

    Sleep, 100

    InputBox, mensagem, VBA - Input, Digite a mensagem.,,,,,,,, mensagem
    if ErrorLevel
        Return
    InputBox, titulo, VBA - Input, Digite o t√≠tulo do input.,,,,,,,, titulo
    if ErrorLevel
        Return
    InputBox, variavel, VBA - Input, Digite a variavel que receber· input.,,,,,,,, variavel
    if ErrorLevel
        Return
    
    Send, %variavel% = InputBox("%mensagem%", "%titulo%")

Return

::vbainput2::
    Gosub, vba_input_sub2
Return

vba_input_sub2:

    Sleep, 100
    InputBox, mensagem, VBA - Input, Digite a mensagem.,,,,,,,, mensagem
    if ErrorLevel
        Return    
    InputBox, titulo, VBA - Input, Digite o t√≠tulo do input.,,,,,,,, titulo
    if ErrorLevel
        Return    
    InputBox, variavel, VBA - Input, Digite a variavel que receber· input.,,,,,,,, variavel
    if ErrorLevel
        Return    
    
    Send, %variavel% = VBA.InputBox("%mensagem%", "%titulo%")

Return

;-------------------
; File
;-------------------

;-------------------
; Class
;-------------------

::vbaclass::

Return

; ----------------
; VBA SUBS
; ----------------

; --------------------------------------------- 
; WITH 
; --------------------------------------------- 

::vbawith::
    Gosub, vba_with_sub
Return

vba_with_sub:

    Sleep, 100

    InputBox, var_name, VBA - Input, Infome o nome do componente with.,,,,,,,, var_name
    if ErrorLevel
        Return

    Send, With %var_name%{enter}
    Send, {enter}
    Send, End With
    Send, {up}{up}{end}^+{left}

Return

; --------------------------------------------- 
; COMMENT 
; ---------------------------------------------

::vbacomment::
    Gosub, vba_comment_sub
Return

::vbac::
    Gosub, vba_comment_sub
Return

vba_comment_sub:

    Sleep, 100

    InputBox, vba_comment, VBA - Comment, Type your comment text.,,,,,,,, comment_text
    if ErrorLevel
        Return    

    line := StrLen(vba_comment) + 3

    Send, ' %vba_comment%{enter}
    Send, '
    loop, %line%
    {
        Send, -
    }

Return