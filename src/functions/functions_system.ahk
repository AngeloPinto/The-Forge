;------------------------
; FUNÇÕES DO SISTEMA
;------------------------

; Informacoes do sistema
^#!i::
    if (A_Is64bitOS = 1)
        Sistema := "64 bits"
    else
        Sistema := "32 bits"    
    
    Msgbox, 
(
PC Name: %A_ComputerName%

System: %A_OSVersion%
Type: %Sistema%

User: %A_UserName%

IP: %A_IPAddress1%
)
Return

; Bloco de Notas / Notepad
^!numpad1::
    TrayTip Bloco de Notas, Abrindo bloco de notas
    run, notepad.exe
Return

; Bloco de Notas / Notepad
^!1::
    TrayTip Bloco de Notas, Abrindo bloco de notas
    run, notepad.exe
Return

; Calculadora / Calc
^!numpad2::
    TrayTip Calculadora, Abrindo calculadora
    run, calc.exe
Return

; Calculadora / Calc
^!2::
    TrayTip Calculadora, Abrindo calculadora
    run, calc.exe
Return