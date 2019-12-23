;-------------------
; CODES DELPHI
;-------------------


::delphikeywords::
    Gosub, delphi_keywords_sub
Return

::delkeywords::
    Gosub, delphi_keywords_sub
Return

delphi_keywords_sub:
    Sleep, 100
    Send, Delphi - Keywords: {enter}
    Send, {tab}And - Boolean and or bitwise and of two arguments {enter}
    Send, Array - A data type holding indexable collections of data {enter}
    Send, As - Used for casting object references {enter}
    Send, Begin - Keyword that starts a statement block {enter}
    Send, Case - A mechanism for acting upon different values of an Ordinal {enter}
    Send, Class - Starts the declaration of a type of object class {enter}
    Send, Const - Starts the definition of fixed data values {enter}
    Send, Constructor - Defines the method used to create an object from a class {enter}
    Send, Destructor - Defines the method used to destroy an object {enter}
    Send, Div - Performs integer division, discarding the remainder {enter}
    Send, Do - Defines the start of some controlled action {enter}
    Send, DownTo - Prefixes an decremental for loop target value {enter}
    Send, Else - Starts false section of if, case and try statements {enter}
    Send, End - Keyword that terminates statement blocks {enter}
    Send, Except - Starts the error trapping clause of a Try statement {enter}
    Send, File - Defines a typed or untyped file {enter}
    Send, Finally - Starts the unconditional code section of a Try statement {enter}
    Send, For - Starts a loop that executes a finite number of times {enter}
    Send, Function - Defines a subroutine that returns a value {enter}
    Send, Goto - Forces a jump to a label, regardless of nesting {enter}
    Send, If - Starts a conditional expression to determine what to do next {enter}
    Send, Implementation - Starts the implementation (code) section of a Unit {enter}
    Send, In - Used to test if a value is a member of a set {enter}
    Send, Inherited - Used to call the parent class constructor or destructor method {enter}
    Send, Interface - Used for Unit external definitions, and as a Class skeleton {enter}
    Send, Is - Tests whether an object is a certain class or ascendant {enter}
    Send, Mod - Performs integer division, returning the remainder {enter}
    Send, Not - Boolean Not or bitwise not of one arguments {enter}
    Send, Object - Allows a subroutine data type to refer to an object method {enter}
    Send, Of - Linking keyword used in many places {enter}
    Send, On - Defines exception handling in a Try Except clause {enter}
    Send, Or - Boolean or or bitwise or of two arguments {enter}
    Send, Packed - Compacts complex data types into minimal storage {enter}
    Send, Procedure - Defines a subroutine that does not return a value {enter}
    Send, Program - Defines the start of an application {enter}
    Send, Property - Defines controlled access to class fields {enter}
    Send, Raise - Raise an exception {enter}
    Send, Record - A structured data type - holding fields of data {enter}
    Send, Repeat - Repeat statements until a ternmination condition is met {enter}
    Send, Set - Defines a set of up to 255 distinct values {enter}
    Send, Shl - Shift an integer value left by a number of bits {enter}
    Send, Shr - Shift an integer value right by a number of bits {enter}
    Send, Then - Part of an if statement - starts the true clause {enter}
    Send, ThreadVar - Defines variables that are given separate instances per thread {enter}
    Send, To - Prefixes an incremental for loop target value {enter}
    Send, Try - Starts code that has error trapping {enter}
    Send, Type - Defines a new category of variable or process {enter}
    Send, Unit - Defines the start of a unit file - a Delphi module {enter}
    Send, Until - Ends a Repeat control loop {enter}
    Send, Uses - Declares a list of Units to be imported {enter}
    Send, Var - Starts the definition of a section of data variables {enter}
    Send, While - Repeat statements whilst a continuation condition is met {enter}
    Send, With - A means of simplifying references to structured variables {enter}
    Send, Xor - Boolean Xor or bitwise Xor of two arguments {enter}
    Send, {enter}
Return


;-------------------
; Constantes
;-------------------

::delphiconst::
    Gosub, delphi_constant_sub
Return

delphi_constant_sub:
    Sleep, 100
    Send, CONST{enter}
    Send, {tab}CONST_NAME = 'const_value';
Return

::delphinl::
    Gosub, delphi_const_new_line_sub
Return

::delphinewline::
    Gosub, delphi_const_new_line_sub
Return

delphi_const_new_line_sub:
    Sleep, 100
    Send, NEW_LINE = #13#10;
Return

;-------------------
; Enum
;-------------------

::delphienum::
    Gosub, delphi_enum_sub
Return

;-------------------
; if / else / case
;-------------------

::delphiif::
    Gosub, delphi_if_sub
Return

delphi_if_sub:
    Sleep, 100
    ; InputBox, condicao, Delphi - IF, Digite a condição do IF,,,,,,,, condition
    ; if ErrorLevel    
    ;     Return

    Send, if (condition) then begin {enter}
    Send, {enter}
    Send, end; {enter}
    Send, {up}{up}{end}{tab}
Return

::delphiif2::
    Gosub, delphi_if_sub2
Return

delphi_if_sub2:
    Sleep, 100
    ; InputBox, condicao, Delphi - IF - ELSE, Digite a condição do IF,,,,,,,, condition
    ; if ErrorLevel    
    ;     Return

    Send, if (condition) then begin {enter}
    Send, {enter}
    Send, end else begin {enter} 
    Send, {enter}
    Send, end; {enter}
    Send, {up}{up}{end}{tab}
    Send, {up}{up}{end}{tab}
Return

::delphicase::
    Gosub, delphi_case_sub
return

delphi_case_sub:
    Sleep, 100
    ; InputBox, variavel, Delphi - Case, Digite o nome da variável no Case,,,,,,,, var_name
    ; if ErrorLevel    
    ;     Return    
    InputBox, qtd, Delphi - Case, Digite a quantidade de casos,,,,,,,, 1
    if ErrorLevel    
        Return

    Send, case variable of {enter}{tab}
    loop, %qtd%
    {
        Send, %A_Index%: begin {enter}
        Send, {tab}{enter}
        Send, +{tab}end; {enter}
    }
    Send, +{tab}end; 
    loop, %qtd%
    {
        Send, {up}{up}{up}
    }
    Send, {down}{end}
Return

;-------------------
; loop
;-------------------

::delphifor::
    Gosub, delphi_for_sub
Return

delphi_for_sub:
    Sleep, 100
    ; InputBox, var_ini, Delphi - For, Digite o valor inicial,,,,,,,, 1
    ; if ErrorLevel    
    ;     Return    
    ; InputBox, var_fim, Delphi - For, Digite o valor final,,,,,,,, 10
    ; if ErrorLevel    
    ;     Return

    Send, for x := 1 to 10 do begin {enter} 
    Send, {enter}
    Send, end; 
    Send, {up}{end}{tab}
Return

::delphifor2::
    Gosub, delphi_for_sub2
Return

delphi_for_sub2:
    Sleep, 100
    ; InputBox, var_ini, Delphi - For - Downto, Digite o valor inicial,,,,,,,, 10
    ; if ErrorLevel    
    ;     Return

    ; InputBox, var_fim, Delphi - For - Downto, Digite o valor final,,,,,,,, 1
    ; if ErrorLevel    
    ;     Return

    Send, for x := 10 DownTo 1 do begin {enter} 
    Send, {enter}
    Send, end;
    Send, {up}{end}{tab}
Return

::delphiwhile::
    Gosub, delphi_while_sub
return

delphi_while_sub:
    Sleep, 100
    ; InputBox, variavel, Delphi - While, Digite o nome da variável no While,,,,,,,, var_name
    ; if ErrorLevel    
    ;     Return    
    ; InputBox, var_ini, Delphi - While, Digite o valor inicial,,,,,,,, 1
    ; if ErrorLevel    
    ;     Return    
    ; var_fim := var_ini + 9
    ; InputBox, var_fim, Delphi - While, Digite o valor final,,,,,,,, %var_fim%
    ; if ErrorLevel    
    ;     Return    
    
    ; txt_condicao := variavel . " <= " . var_fim
    ; txt_contador := variavel . " := " . variavel . " {+} 1;"
    
    Send, qtd := 1; {enter} 
    Send, while (qtd < 10) do begin {enter}
    Send, {tab}{enter}
    Send, qtd := {+} 1{;} {enter}
    Send, +{tab}end;
    Send, {up}{up}{end}
Return

::delphidowhile::
    Gosub, delphi_do_while_sub
return

delphi_do_while_sub:
    Sleep, 100
    ; InputBox, variavel, Delphi - Repeat, Digite o nome da variável no While,,,,,,,, var_name
    ; if ErrorLevel    
    ;     Return    
    ; InputBox, var_ini, Delphi - Repeat, Digite o valor inicial,,,,,,,, 1
    ; if ErrorLevel    
    ;     Return    
    ; var_fim := var_ini + 9
    ; InputBox, var_fim, Delphi - Repeat, Digite o valor final,,,,,,,, %var_fim%
    ; if ErrorLevel    
    ;     Return    
    
    ; txt_condicao := variavel . " <= " . var_fim
    ; txt_contador := variavel . " := " . variavel . " {+} 1;"
    
    Send, qtd := 1; {enter} 
    Send, Repeat {enter}
    Send, {tab}{enter}
    Send, qtd := qtd {+}1{;} {enter}
    Send, +{tab}until (qtd = 10); 
    Send, {up}{up}{end}
Return

::delphidowhile2::
    Gosub, delphi_do_while_sub2
return

delphi_do_while_sub2:
    Sleep, 100
    InputBox, variavel, Delphi - Repeat, Digite o nome da variável no While,,,,,,,, var_name
    if ErrorLevel    
        Return    
    InputBox, var_ini, Delphi - Repeat, Digite o valor inicial,,,,,,,, 10
    if ErrorLevel    
        Return    
    var_fim := var_ini - 9
    InputBox, var_fim, Delphi - Repeat, Digite o valor final,,,,,,,, %var_fim%
    if ErrorLevel    
        Return    
    
    txt_condicao := variavel . " >= " . var_fim
    txt_contador := variavel . " := " . variavel . " {-} 1;"
    
    Send, %variavel% := %var_ini%; {enter} 
    Send, Repeat {enter}
    Send, {tab}{enter}
    Send, %txt_contador% {enter}
    Send, +{tab}until (%txt_condicao%); 
    Send, {up}{up}{end}
Return

;-------------------
; Array
;-------------------

::delphiarrayex::
    Gosub, delphi_array_example_sub
Return

delphi_array_example_sub:
    Sleep, 100
    Send, var {enter}
    Send, {tab}Suits : array[1..4] of String; // A list of 4 playing card suit names {enter}
    Send,  {enter}
    Send, +{tab}begin {enter}
    Send, {tab}Suits[1] := 'Hearts'; // Assigning to array index 1 {enter}
    Send, Suits[2] := 'Diamonds'; // Assigning to array index 2 {enter}
    Send, Suits[3] := 'Clubs'; // Assigning to array index 3 {enter}
    Send, Suits[4] := 'Spades'; // Assigning to array index 4 {enter}
    Send, +{tab}end; {enter}
Return

::delphirecordex::
    Gosub, delphi_record_sub
Return

delphi_record_sub:
    Sleep, 100
    Send, type {enter}
    Send, {tab}TCustomer Record {enter}
    Send, {tab}firstName : string[20]; {enter}
    Send, lastName : string[20]; {enter}
    Send, age : byte; {enter}
    Send, +{tab}end; {enter}
    Send,  {enter}
    Send, +{tab}var {enter}
    Send, {tab}customer : TCustomer; // Our customer variable {enter}
    Send, +{tab}begin {enter}
    Send, {tab}customer.firstName := 'Fred'; // Assigning to the customer record {enter}
    Send, customer.lastName := 'Bloggs'; {enter}
    Send, customer.age := 55; {enter}
    Send, +{tab}end; {enter}
Return

;-------------------
; Collection
;-------------------

::delphicollection::

Return

::delphiwith::
    Gosub, delphi_with_sub
Return

delphi_with_sub:
    Sleep, 100
    InputBox, object_name, Delphi - With, Digite o nome do objeto,,,,,,,, object_name
    if ErrorLevel    
        Return

    Send, with %object_name% do begin{esc}{enter}
    Send, {enter}
    Send, end;
    Send, {up}
Return

;-------------------
; Try / Catch
;-------------------

::delphitrye::
    Gosub, delphi_try_except_sub
Return

delphi_try_except_sub:
    Sleep, 100
    Send, try {enter}
    Send, {tab}{enter}
    Send, +{tab}except{enter}
    Send, {tab}{enter}
    Send, +{tab}end;{enter}
    loop, 4
    {
        Send, {up}
    }
    Send, {end}
Return

::delphitryf::
    Gosub, delphi_try_finally_sub
Return

delphi_try_finally_sub:
    Sleep, 100
    Send, try {enter}
    Send, {tab}{enter}
    Send, +{tab}finally{enter}
    Send, {tab}{enter}
    Send, +{tab}end;{enter}
    loop, 4
    {
        Send, {up}
    }
    Send, {end}    
Return

::delphitryef::
    Gosub, delphi_try_except_finally_sub
Return

delphi_try_except_finally_sub:
    Sleep, 100
    Send, try {enter}
    Send, {tab}{enter}
    Send, +{tab}except{enter}    
    Send, {tab}{enter}
    Send, +{tab}finally{enter}
    Send, {tab}{enter}
    Send, +{tab}end;{enter}
    loop, 6
    {
        Send, {up}
    }
    Send, {end}    
Return

;-------------------
; Msgbox
;-------------------

::delphimsg::
    Gosub, delphi_msg_sub
Return

delphi_msg_sub:
    Sleep, 100
    InputBox, mensagem, Delphi - MessageDlg, Digite a mensagem,,,,,,,, 'mensagem'
    if ErrorLevel    
        Return    
    InputBox, tipomsg, Delphi - MessageDlg,
    (
        Selecione o icone:  1 - Information
                            2 - Error
                            3 - Warning
                            4 - Confirmation
                            5 - Nothing
    ),,,,,,,,1
    if ErrorLevel    
        Return

    mensagem := AjustarTexto(mensagem)
    if (tipomsg = 1)
    {
        Send, MessageDlg('%mensagem%', mtInformation, [mbOk], 0);        
    } 
    else if (tipomsg = 2)
    {
        Send, MessageDlg('%mensagem%', mtError, [mbOk], 0);        
    }
    else if (tipomsg = 3)
    {
        Send, MessageDlg('%mensagem%', mtWarning, [mbOk], 0);        
    }
    else if (tipomsg = 4)
    {
        Send, MessageDlg('%mensagem%', mtConfirmation, [mbOk], 0);        
    }
    else 
    {
        Send, MessageDlg('%mensagem%', mtCustom, [mbOk], 0);        
    }
Return

::delphiifmsg::
    Gosub, delphi_if_msg_sub
Return

delphi_if_msg_sub:
    Sleep, 100
    InputBox, mensagem, Delphi - MessageDlg, Digite a mensagem,,,,,,,, 'mensagem'
    if ErrorLevel    
        Return    
    mensagem := AjustarTexto(mensagem)
    Send, if MessageDlg('%mensagem%', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
    Send, {esc}{enter}
    Send, {tab}{enter}
    Send, +{tab}end else begin {enter}
    Send, {tab}{enter}
    Send, +{tab}end; {up}{up}{up}
Return

; --------------------------------------------- 
; PROCEDURE 
; --------------------------------------------- 

::delphiprocedure::
    Gosub, delphi_procedure_sub
Return

::delphiproc::
    Gosub, delphi_procedure_sub
Return

delphi_procedure_sub:
    Sleep, 100
    InputBox, frm_name, Delphi - PROCEDURE, Digite o nome do formulário,,,,,,,, frm_name
    if ErrorLevel    
        Return

    InputBox, procedure_name, Delphi - PROCEDURE, Digite o nome da procedure,,,,,,,, procedure_name
    if ErrorLevel    
        Return        

    Send, // Declare on Private declarations or Public declarations {esc}{enter}
    Send, procedure %procedure_name%(){;}{esc}{enter}
    Send, procedure T%frm_name%.%procedure_name%(){;}{enter}
    Send, // var{enter}
    Send, begin{enter}
    Send, {enter}
    Send, end{;}
    Send, {up}

Return

; --------------------------------------------- 
; FUNCTION 
; --------------------------------------------- 

::delphifunction::
    Gosub, delphi_function_sub
Return

::delphifunc::
    Gosub, delphi_function_sub
Return

delphi_function_sub:
    Sleep, 100
    InputBox, frm_name, Delphi - FUNCTION, Digite o nome do formulário,,,,,,,, frm_name
    if ErrorLevel    
        Return

    InputBox, function_name, Delphi - FUNCTION, Digite o nome da procedure,,,,,,,, function_name
    if ErrorLevel    
        Return      

    InputBox, return_type, Delphi - FUNCTION, Digite o tipo de retorno,,,,,,,, Boolean
    if ErrorLevel    
        Return              

    Send, // Declare on Private declarations or Public declarations {esc}{enter}
    Send, function %function_name%():%return_type%{;}{esc}{enter}
    Send, function T%frm_name%.%function_name%():%return_type%{;}{enter}
    Send, // var{enter}
    Send, begin{enter}
    Send, {enter}
    Send, end{;}
    Send, {up}

Return

;-------------------
; File
;-------------------

::delphifile::
    Gosub, delphi_file_sub
Return

delphi_file_sub:
    Sleep, 100
    Send, var {enter}
    Send, {tab}myFile : TextFile; {enter}
    Send,  {enter}
    Send, +{tab}begin {enter}
    Send, {tab}AssignFile(myFile, 'Test.txt'); {enter}
    Send,  {enter}
    Send, // ReWrite - Opens a file as new - discards existing contents if file exists {enter}
    Send, // Reset - Opens a file for read and write access {enter}
    Send, // Append - Opens a file for appending to the end (such as a log file) {enter}
    Send,  {enter}
    Send, CloseFile(myFile); {enter}
    Send, +{tab}end; {enter}
Return

::delphifile2::
    Gosub, delphi_file_exemplo2_sub
Return

::delphifileex2::
    Gosub, delphi_file_exemplo2_sub
Return

delphi_file_exemplo2_sub:
    Sleep, 100
    Send, var {enter}
    Send, {tab}myFile : TextFile; {enter}
    Send, text : string; {enter}
    Send,  {enter}
    Send, +{tab}begin {enter}
    Send, {tab}// Try to open the Test.txt file for writing to {enter}
    Send, AssignFile(myFile, 'Test.txt'); {enter}
    Send, ReWrite(myFile); {enter}
    Send,  {enter}
    Send, // Write a couple of well known words to this file {enter}
    Send, WriteLn(myFile, 'Hello'); {enter}
    Send, WriteLn(myFile, 'World'); {enter}
    Send,  {enter}
    Send, // Close the file {enter}
    Send, CloseFile(myFile); {enter}
    Send,  {enter}
    Send, // Reopen the file for reading {enter}
    Send, Reset(myFile); {enter}
    Send,  {enter}
    Send, // Display the file contents {enter}
    Send, while not Eof(myFile) do {enter}
    Send, begin {enter}
    Send, {tab}ReadLn(myFile, text); {enter}
    Send, ShowMessage(text); {enter}
    Send, +{tab}end; {enter}
    Send,  {enter}
    Send, // Close the file for the last time {enter}
    Send, CloseFile(myFile); {enter}
    Send, +{tab}end; {enter}
Return

::delphifile3::
    Gosub, delphi_file_exemplo3_sub
Return

::delphifileex3::
    Gosub, delphi_file_exemplo3_sub
Return

delphi_file_exemplo3_sub:
    Sleep, 100
    Send, var {enter}
    Send, {tab}myFile : TextFile; {enter}
    Send, text : string; {enter}
    Send, i : Integer; {enter}
    Send,  {enter}
    Send, +{tab}begin {enter}
    Send, {tab}// Try to open the Test.txt file for writing to {enter}
    Send, AssignFile(myFile, 'Test.txt'); {enter}
    Send, ReWrite(myFile); {enter}
    Send,  {enter}
    Send, // Write a couple of well known words to this file {enter}
    Send, Write(myFile, 'Hello '); {enter}
    Send, Write(myFile, 'World'); {enter}
    Send,  {enter}
    Send, // Terminate this line {enter}
    Send, WriteLn(myFile); {enter}
    Send,  {enter}
    Send, // Write some numbers to the file as a single line {enter}
    Send, for i := 2 to 4 do {enter}
    Send, {tab}Write(myFile, i/2, ' '); {enter}
    Send,  {enter}
    Send, +{tab}// Terminate this line {enter}
    Send, WriteLn(myFile); {enter}
    Send,  {enter}
    Send, // Repeat the above, but with number formatting {enter}
    Send, for i := 2 to 4 do {enter}
    Send, {tab}Write(myFile, i/2:5:1); {enter}
    Send,  {enter}
    Send, +{tab}// Terminate this line {enter}
    Send, WriteLn(myFile); {enter}
    Send,  {enter}
    Send, // Close the file {enter}
    Send, CloseFile(myFile); {enter}
    Send,  {enter}
    Send, // Reopen the file for reading only {enter}
    Send, Reset(myFile); {enter}
    Send,  {enter}
    Send, // Display the file contents {enter}
    Send, while not Eof(myFile) do {enter}
    Send, begin {enter}
    Send, {tab}ReadLn(myFile, text); {enter}
    Send, ShowMessage(text); {enter}
    Send, +{tab}end; {enter}
    Send,  {enter}
    Send, // Close the file for the last time {enter}
    Send, CloseFile(myFile); {enter}
    Send, +{tab}end; {enter}
Return

;-------------------
; DELPHI SUBS
;-------------------

delphi_var_types_sub:
    Sleep, 100
    Send, var {enter}
    Send, {tab}// Integer data types : {enter}
    Send, Int1 : Byte; // 0 to 255 {enter}
    Send, Int2 : ShortInt; // -127 to 127 {enter}
    Send, Int3 : Word; // 0 to 65,535 {enter}
    Send, Int4 : SmallInt; // -32,768 to 32,767 {enter}
    Send, Int5 : LongWord; // 0 to 4,294,967,295 {enter}
    Send, Int6 : Cardinal; // 0 to 4,294,967,295 {enter}
    Send, Int7 : LongInt; // -2,147,483,648 to 2,147,483,647 {enter}
    Send, Int8 : Integer; // -2,147,483,648 to 2,147,483,647 {enter}
    Send, Int9 : Int64; // -9,223,372,036,854,775,808 to 9,223,372,036,854,775,807 {enter}
    Send,  {enter}
    Send, // Decimal data types : {enter}
    Send, Dec1 : Single; // 7 significant digits, exponent -38 to +38 {enter}
    Send, Dec2 : Currency; // 50+ significant digits, fixed 4 decimal places {enter}
    Send, Dec3 : Double; // 15 significant digits, exponent -308 to +308 {enter}
    Send, Dec4 : Extended; // 19 significant digits, exponent -4932 to +4932 {enter}
    Send,  {enter}
    Send, +{tab}var {enter}
    Send, {tab}Str1 : Char; // Holds a single character, small alphabet {enter}
    Send, Str2 : WideChar; // Holds a single character, International alphabet {enter}
    Send, Str3 : AnsiChar; // Holds a single character, small alphabet {enter}
    Send, Str4 : ShortString; // Holds a string of up to 255 Char's {enter}
    Send, Str5 : String; // Holds strings of Char's of any size desired {enter}
    Send, Str6 : AnsiString; // Holds strings of AnsiChar's any size desired {enter}
    Send, Str7 : WideString; // Holds strings of WideChar's of any size desired {enter}
    Send,  {enter}
    Send, +{tab}var {enter}
    Send, {tab}Log1 : Boolean; // Can be 'True' or 'False' {enter}
    Send, +{tab}{enter}
Return

delphi_enum_sub:
    Sleep, 100
    Send, type {enter}
    Send, {tab}TNipe = (Copas, Ouro, Paus, Espada); // Define o Enumation {enter}
    Send, +{tab}var {enter}
    Send, {tab}nipe : TNipe; {enter}
Return

