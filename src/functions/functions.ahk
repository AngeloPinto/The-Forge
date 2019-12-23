;------------------------
; FUNCTIONS
;------------------------

^#!n::
    Gosub, only_number_sub
Return

; Retornar Apenas Números
only_number_sub:
    TrayTip Get the number of a text
    InputBox, sText, Return Numbers, Infome um texto e será digitado apenas os números deste texto.
    if ErrorLevel
        Return
    num := getNumber(sText)
    Sleep, 100
    Send, %num%
Return

^#!u::
    Gosub, upper_case_sub
Return

; Retorna Maiusculas
upper_case_sub:
    InputBox, texto, Upper Case, Digite o texto
    if ErrorLevel
        Return
    StringUpper texto2, texto
    Sleep, 100
    Send, %texto2%
Return

^#!l::
    Gosub, lower_case_sub
Return

; Retorna Minusculas
lower_case_sub:
    InputBox, texto, Lower Case, Digite o texto
    if ErrorLevel 
        Return
    StringLower texto2, texto
    Sleep, 100
    Send, %texto2%
Return


AjustarTexto(texto)
{
    ; StringReplace, texto, texto, {, {{}, All ; x
    ; StringReplace, texto, texto, }, {}}, All ; x
    StringReplace, texto, texto, !, {!}, All
    StringReplace, texto, texto, +, {+}, All
    StringReplace, texto, texto, #, {#}, All
    StringReplace, texto, texto, ^, {^}, All
    StringReplace, texto, texto, ?, {?}, All
    StringReplace, texto, texto, @, {@}, All
    ; StringReplace, texto, texto, %%, {%}, All
    ; StringReplace, texto, texto, , {;}, All
    Return texto
}

getNumber(texto)
{
    StringLen tam, texto
    if %tam% = 0
        Return
    loop, %tam%
    {
        StringMid caracter, texto, %A_Index%, 1, L
        if caracter is Integer
            num := num . caracter
    }
    Return num
}
