;-------------------
; CODES JAVASCRIPT
;-------------------

; https://www.tutorialspoint.com/javascript/

::jsh::
    Sleep, 100
    Send, <script></script>
    loop, 9
    {
        Send, {left}
    }
Return

::jsalert::
    Sleep, 100
    Send, alert();
    loop, 3
    {
        Send, {left}
    }
Return

::jswords::
    Sleep, 100
    Send, JavaScript - Palavras Reservadas {enter}
    Send,  {enter}
    Send, {tab}abstract {enter}
    Send, boolean {enter}
    Send, break {enter}
    Send, byte {enter}
    Send, case {enter}
    Send, catch {enter}
    Send, char {enter}
    Send, class {enter}
    Send, const {enter}
    Send, continue {enter}
    Send, debugger {enter}
    Send, default {enter}
    Send, delete {enter}
    Send, do {enter}
    Send, double {enter}
    Send, else {enter}
    Send, enum {enter}
    Send, export {enter}
    Send, extends {enter}
    Send, false {enter}
    Send, final {enter}
    Send, finally {enter}
    Send, float {enter}
    Send, for {enter}
    Send, function {enter}
    Send, goto {enter}
    Send, if {enter}
    Send, implements {enter}
    Send, import {enter}
    Send, in {enter}
    Send, instanceof {enter}
    Send, int {enter}
    Send, interface {enter}
    Send, long {enter}
    Send, native {enter}
    Send, new {enter}
    Send, null {enter}
    Send, package {enter}
    Send, private {enter}
    Send, protected {enter}
    Send, public {enter}
    Send, return {enter}
    Send, short {enter}
    Send, static {enter}
    Send, super {enter}
    Send, switch {enter}
    Send, synchronized {enter}
    Send, this {enter}
    Send, throw {enter}
    Send, throws {enter}
    Send, transient {enter}
    Send, true {enter}
    Send, try {enter}
    Send, typeof {enter}
    Send, var {enter}
    Send, void {enter}
    Send, volatile {enter}
    Send, while {enter}
    Send, with {enter}
Return

::jsif::
    Sleep, 100
    InputBox, condicao, JavaScript - IF, Digite a condição do IF,,,,,,,, condicao
    if ErrorLevel    
        Return

    Send, if (%condicao%) {{} {enter}
    Send, {tab}{enter}
    Send, +{tab}{}} else {{} {enter}
    Send, {tab}{enter}
    Send, +{tab}{}} {enter}
    Send, {up}{up}{up}{up}{end}
Return

::jscase::
    Sleep, 100
    InputBox, variavel, JavaScript - Case, Digite o nome da variável no Case,,,,,,,, var_name
    if ErrorLevel    
        Return    
    InputBox, qtd, JavaScript - Case, Digite a quantidade de casos,,,,,,,, 1
    if ErrorLevel    
        Return

    Send switch (%variavel%) {{} {enter}
    loop, %qtd%
    {
        if %A_Index% = 1 
        {
            Send {tab}{tab}case %A_Index%: {enter}
            Send {tab}{enter}
            Send break; {enter}
        } else {
            Send {tab}case %A_Index%: {enter}
            Send {tab}{enter}
            Send break; {enter}+{tab}+{tab}
        }
    }
    Send +{tab}{}} 
    loop, %qtd%
    {
        Send, {up}{up}{up}
    }
    Send, {down}{end}
    
Return

::jscase2::
    Sleep, 100
    InputBox, variavel, JavaScript - Case, Digite o nome da vari�vel no Case,,,,,,,, var_name
    if ErrorLevel    
        Return    
    InputBox, qtd, JavaScript - Case, Digite a quantidade de casos,,,,,,,, 1
    if ErrorLevel    
        Return

    Send switch (%variavel%) {{} {enter}
    loop, %qtd%
    {
        if %A_Index% = 1 
        {
            Send {tab}{tab}case '': {enter}
            Send {tab}{enter}
            Send break; {enter}
        } else {
            Send {tab}case '': {enter}
            Send {tab}{enter}
            Send break; {enter}+{tab}+{tab}
        }
    }
    Send +{tab}{}} 
    loop, %qtd%
    {
        Send, {up}{up}{up}
    }
    Send, {down}{end}
    
Return

::jswhile::
    Sleep, 100
    InputBox, condicao, JavaScript - WHILE, Digite a condicao,,,,,,,, condicao
    if ErrorLevel    
        Return

    Send, while (%condicao%) {{} {enter}
    Send, {tab}{enter}
    Send, +{tab}{}} {enter}
    Send, {up}{up}{end}
Return

::jsfor::
    Sleep, 100
    InputBox, variavel, JavaScript - FOR, Digite o nome da vari�vel,,,,,,,, var_name
    if ErrorLevel    
        Return

    Send, for(%variavel% = 0; %variavel% < 10; %variavel%++) {{} {enter}
    Send, {tab}{enter}
    Send, +{tab}{}} {enter}
    Send, {up}{up}{end}
Return


; --------------------------------- 
; Console Log 
; --------------------------------- 


::javascriptcl::
    Gosub, js_console_log_sub
Return

::jscl::
    Gosub, js_console_log_sub
Return

::jsclog::
    Gosub, js_console_log_sub
Return

::jslog::
    Gosub, js_console_log_sub
Return

js_console_log_sub:
    Sleep, 100
    Send, console.log('');
    loop, 3
    {
        Send, {left}
    }
Return
