;-------------------
; CODES ORACLE
;-------------------

; http://www.devmedia.com.br/estruturas-condicionais-sequenciais-e-comentarios-no-oracle/32984
; https://www.tutorialspoint.com/plsql/plsql_loops.htm


;CONSTANTE
::oracleconst::
    Gosub, oracle_constant_sub
Return

::oracleconstant::
    Gosub, oracle_constant_sub
Return

::oracleconstante::
    Gosub, oracle_constant_sub
Return

::oraconst::
    Gosub, oracle_constant_sub
Return

::oraconstant::
    Gosub, oracle_constant_sub
Return

::oraconstante::
    Gosub, oracle_constant_sub
Return

oracle_constant_sub:

    Sleep, 100
    InputBox, v_const_name, ORACLE - CONSTANT, Informe o nome da CONSTANT,,,,,,,, C_PI
    if ErrorLevel
        Return

    InputBox, v_type, ORACLE - TYPE OF CONSTANT, Informe o tipo da CONSTANT,,,,,,,, NUMBER
    if ErrorLevel
        Return

    InputBox, v_const_value, ORACLE - VALUE OF CONSTANT, Informe o valor da CONSTANT,,,,,,,, 3.141592654
    if ErrorLevel
        Return

    Send, %v_const_name% CONSTANT %v_type% := %v_const_value%;

Return

; CASE 1
::oraclecase::
    Gosub, oracle_case_sub
Return

::oracase::
    Gosub, oracle_case_sub
Return

oracle_case_sub:
    
    Sleep, 100

    InputBox, v_field, ORACLE - CASE, Informe o nome do FIELD,,,,,,,, FIELD_NAME
    if ErrorLevel
        Return

    InputBox, v_qtd, ORACE - CASE, Digite a quantidade de casos,,,,,,,, 1
    if ErrorLevel
        Return        

    ; SINTAX
    Send, CASE %v_field%
    Send, {esc}{enter}
    Send, {esc}{enter}
    loop, %v_qtd%
    {
        Send, WHEN VALUE_%A_Index% THEN %A_Index%{esc}{enter}
    }    
    Send, ELSE 0 {esc}{enter}
    Send, END AS %v_field%,
    
    ; IDENTATION
    v_qtd := v_qtd + 1
    loop, %v_qtd%
    {
        Send, {up}{home}{tab}
    }
Return

; CASE 2
::oraclecase2::
    Gosub, oracle_case_2_sub
Return

::oracase2::
    Gosub, oracle_case_2_sub
Return

oracle_case_2_sub:
    
    Sleep, 100

    InputBox, v_field, ORACLE - CASE, Informe o nome do FIELD,,,,,,,, FIELD_NAME
    if ErrorLevel
        Return    

    InputBox, v_qtd, ORACE - CASE, Digite a quantidade de casos,,,,,,,, 1
    if ErrorLevel
        Return        

    ; SINTAX
    Send, CASE
    Send, {esc}{enter}
    Send, {esc}{enter}
    loop, %v_qtd%
    {
        Send, WHEN VALUE_%A_Index% = %A_Index% THEN %A_Index%{esc}{enter}
    }    
    Send, ELSE 0 {esc}{enter}
    Send, END AS %v_field%,
    
    ; IDENTATION
    v_qtd := v_qtd + 1
    loop, %v_qtd%
    {
        Send, {up}{home}{tab}
    }
Return

; IF
::oracleif::
    Gosub, oracle_if_sub
Return

::oraif::
    Gosub, oracle_if_sub
Return

oracle_if_sub:
    Sleep, 100
    Send, IF (CONDITION) THEN{esc}{enter}
    Send, {enter}
    Send, END IF;
    Send, {up}{up}{end}
    Loop, 6
    {
        Send, {left}
    }
    Send, ^+{left}
Return

::oracleif2::
    Gosub, oracle_if_else_sub
Return

::oraif2::
    Gosub, oracle_if_else_sub
Return

oracle_if_else_sub:
    Sleep, 100
    Send, IF (CONDITION) THEN{esc}{enter}
    Send, {enter}
    Send, ELSE{esc}{enter}
    Send, {enter}
    Send, END IF;
    Send, {up}{up}{up}{up}{end}
    Loop, 6
    {
        Send, {left}
    }
    Send, ^+{left}
Return

::oracleif3::
    Gosub, oracle_if_else_if_sub
Return

::oraif3::
    Gosub, oracle_if_else_if_sub
Return

oracle_if_else_if_sub:
    Sleep, 100

    InputBox, v_qtd, ORACE - IF - ELSE - IF, Digite a quantidade de ELSE IF,,,,,,,, 1
    if ErrorLevel
        Return  

    ; SINTAX
    Send, IF (CONDITION) THEN{esc}{enter}
    Send, {esc}{enter}
    Send, {esc}{enter}
    loop, %v_qtd%
    {
        Send, ELSIF (CONDITION) THEN{esc}{enter}
        Send, {enter}
    }
    Send, ELSE{esc}{enter}
    Send, {enter}
    Send, END IF;

    ; IDENTATION
    loop, %v_qtd%
    {
        Send, {up}{up}
    }
    Send, {up}{up}{up}{up}{end}
    Loop, 6
    {
        Send, {left}
    }
    Send, ^+{left}
Return

; LOOP
::oracleloop::
    Gosub, oracle_loop_sub
Return

::oraloop::
    Gosub, oracle_loop_sub
Return

oracle_loop_sub:
    Sleep, 100

    ; SINTAX
    Send, LOOP{esc}{enter}
    Send, {enter}
    Send, EXIT WHEN (condition);{enter}
    Send, END LOOP;

    ; IDENTATION
    Send, {up}
    Send, {home}{tab}
    Send, {end}{left}{left}
    SEnd, ^+{left}

Return

; WHILE
::oraclewhile::
    Gosub, oracle_while_sub
Return

::orawhile::
    Gosub, oracle_while_sub
Return

oracle_while_sub:
    Sleep, 100

    ; Sintax
    Send, WHILE (condition) LOOP{esc}{enter}
    Send, {enter}
    Send, END LOOP;

    ; Identation
    Send, {up}{up}{end}
    loop, 6
    {
        Send, {left}
    }
    Send, ^+{left}

Return

; FOR
::oraclefor::
    Gosub, oracle_for_sub
Return

::orafor::
    Gosub, oracle_for_sub
Return

oracle_for_sub:

    Sleep, 100

    InputBox, v_name, ORACE - FOR, Digite o Nome da Vari�vel,,,,,,,, var_name
    if ErrorLevel
        Return      

    InputBox, v_min, ORACE - FOR, Digite o Valor Inicial,,,,,,,, 1
    if ErrorLevel
        Return      

    InputBox, v_max, ORACE - FOR, Digite o Valor Final,,,,,,,, 10
    if ErrorLevel
        Return  

    ; Sintax
    Send, FOR %v_name% IN [ REVERSE ] %v_min%..%v_max% LOOP{esc}{enter}
    Send, {enter}
    Send, {enter}
    Send, END LOOP;{enter}

    ; Identation
    Send, {up}{up}{tab}

Return

::oracleforex::
    Gosub, oracle_for_example_sub
Return

::oraforex::
    Gosub, oracle_for_example_sub
Return

oracle_for_example_sub:
    Send, BEGIN {enter}
    Send, {tab}DBMS_OUTPUT.PUT_LINE ('Trabalhando com o menor_indice de forma crescente'); {enter}
    Send, {tab}FOR i IN 1..15 LOOP {enter}
    Send, +{tab}DBMS_OUTPUT.PUT_LINE (i); {enter}
    Send, END LOOP; {enter}
    Send, DBMS_OUTPUT.PUT_LINE ('Parando o processo quando o menor_indice for igual ao maior_indice'); {enter}
    Send, FOR i IN 9..9 LOOP {enter}
    Send, {tab}DBMS_OUTPUT.PUT_LINE (i); {enter}
    Send, +{tab}END LOOP; {enter}
    Send,  {enter}
    Send, DBMS_OUTPUT.PUT_LINE ('Trabalhando em ordem decrescente, partindo do maior_indice at� chegar ao menor_indice'); {enter}
    Send, FOR i IN 25..5 LOOP {enter}
    Send, {tab}DBMS_OUTPUT.PUT_LINE (i); {enter}
    Send, +{tab}END LOOP; {enter}
    Send, +{tab}END; {enter}
Return

::oracleforex2::
    Gosub, oracle_for_example_sub2
Return

::oraforex2::
    Gosub, oracle_for_example_sub2
Return

oracle_for_example_sub2:
    Send, BEGIN {enter}
    Send, {tab}DBMS_OUTPUT.PUT_LINE ('Trabalhando com o menor_indice de forma crescente'); {enter}
    Send, FOR i IN REVERSE 1..15 LOOP {enter}
    Send, {tab}DBMS_OUTPUT.PUT_LINE (i); {enter}
    Send, +{tab}END LOOP; {enter}
    Send, DBMS_OUTPUT.PUT_LINE ('Parando o processo quando o menor_indice for igual ao maior_indice'); {enter}
    Send, FOR i IN REVERSE 9..9 LOOP {enter}
    Send, {tab}DBMS_OUTPUT.PUT_LINE (i); {enter}
    Send, +{tab}END LOOP; {enter}
    Send,  {enter}
    Send, DBMS_OUTPUT.PUT_LINE ('Trabalhando em ordem decrescente, partindo do maior_indice at� chegar ao menor_indice'); {enter}
    Send,  {enter}
    Send, FOR i IN REVERSE 25..5 LOOP {enter}
    Send, {tab}DBMS_OUTPUT.PUT_LINE (i); {enter}
    Send, +{tab}END LOOP; {enter}
    Send, +{tab}END; {enter}
Return


; TO_DATE
::oracletodate::
    Gosub, oracle_to_date_sub
Return

::oratodate::
    Gosub, oracle_to_date_sub
Return

oracle_to_date_sub:
    Inputbox data, ORACLE - TO_DATE, Digite a data
    if ErrorLevel
        Return

    Send, TO_DATE(%data%, 'DD/MM/YYYY
    ; Gosub, fn_autoCloseAspasSimples ; '
    ; Gosub, fn_autoCloseParenteses   ; )
Return 

; LAST_DAY
::oraclelastday::
    Gosub, oracle_last_day_sub
Return

::oralastday::
    Gosub, oracle_last_day_sub
Return

oracle_last_day_sub:
    Inputbox data, ORACLE - LAST_DAY, Digite uma data
    if ErrorLevel
        Return
            
    Send, select LAST_DAY(TO_DATE(%data%, 'DD/MM/YYYY
    ; Gosub, fn_autoCloseAspasSimples ; '
    ; Gosub, fn_autoCloseParenteses   ; )
    ; Gosub, fn_autoCloseParenteses   ; )
    Send, from dual
Return

; VARIAVEIS
::oravarex::
    Gosub, oracle_variaveis_example_sub
Return

::oraclevarex::
    Gosub, oracle_variaveis_example_sub
Return

oracle_variaveis_example_sub:
    send, declare v_data date;
Return

; LIMIT ROWNUM
::oraclelimit::
    Gosub, oracle_limit_sub
Return

::oralimit::
    Gosub, oracle_limit_sub
Return

oracle_limit_sub:
    InputBox table_name, ORACLE - Limit, Informe o nome da tabela,,,,,,,, table_name
    if ErrorLevel
        Return    
    InputBox qtd, ORACLE - Limit, Informe a quantidade de registros,,,,,,,, 10
    if ErrorLevel
        Return

    send, SELECT * {enter}
    send, FROM %table_name% {enter}
    send, WHERE ROWNUM <= %qtd% {enter}
Return

::oraclelimit2::
    Gosub, oracle_limit2_sub
Return

::oralimit2::
    Gosub, oracle_limit2_sub
Return

oracle_limit2_sub:
    InputBox qtd, ORACLE - Limit, Informe a quantidade de registros,,,,,,,, 10
    if ErrorLevel
        Return

    Send, {enter}
    Send, AND ROWNUM <= %qtd%; {enter}
Return

; CURRENT_DATE
::oracletoday::
    Gosub, oracle_current_date_sub
Return

::oratoday::
    Gosub, oracle_current_date_sub
Return

::oraclecurdate::
    Gosub, oracle_current_date_sub
Return

::oracurdate::
    Gosub, oracle_current_date_sub
Return

oracle_current_date_sub:
    Send, SELECT TO_CHAR(SYSDATE, 'MM-DD-YYYY HH24:MI:SS
    ; Gosub, fn_autoCloseAspasSimples
    Send, ) "NOW" FROM DUAL;
Return

; PACKAGE
::oraclepackage::
    Gosub, oracle_package_sub
Return

::orapackage::
    Gosub, oracle_package_sub
Return

oracle_package_sub:
    SEND, CREATE [OR REPLACE] PACKAGE package_name {enter}
    SEND, [ AUTHID {{} CURRENT_USER | DEFINER {}} ] {enter}
    SEND, {{} IS | AS {}} {enter}
    SEND, {tab}[definitions of public TYPES {enter}
    SEND, ,declarations of public variables, types, and objects {enter}
    SEND, ,declarations of exceptions {enter}
    SEND, ,pragmas {enter}
    SEND, ,declarations of cursors, procedures, and functions {enter}
    SEND, ,headers of procedures and functions] {enter}
    SEND, +{tab}END [package_name]; {enter}
Return

::oraclepackageex::
    Gosub, oracle_package_example_sub
Return

::orapackageex::
    Gosub, oracle_package_example_sub
Return

oracle_package_example_sub:
    SEND, CREATE OR REPLACE PACKAGE funcionario AS {enter}
    SEND, {tab}// get nome completo do funcionario {enter}
    SEND, FUNCTION get_nomeCompleto(n_func_id NUMBER) {enter}
    SEND, {tab}RETURN VARCHAR2; {enter}
    SEND, +{tab}// get salario do funcionario {enter}
    SEND, FUNCTION get_salario(n_func_id NUMBER) {enter}
    SEND, {tab}RETURN NUMBER; {enter}
    SEND, +{tab}+{tab}END funcionario; {enter}
Return

::oraclepackagebody::
    Gosub, oracle_package_body_sub
Return

::orapackagebody::
    Gosub, oracle_package_body_sub
Return

oracle_package_body_sub:
    Send, CREATE [OR REPLACE] PACKAGE BODY package_name {enter}
    Send, {tab}{{} IS | AS {}} {enter}
    Send,  {enter}
    Send, [definitions of private TYPEs {enter}
    Send, ,declarations of private variables, types, and objects {enter}
    Send, ,full definitions of cursors {enter}
    Send, ,full definitions of procedures and functions] {enter}
    Send, +{tab}[BEGIN {enter}
    Send, {tab}sequence_of_statements {enter}
    Send,  {enter}
    Send, +{tab}[EXCEPTION {enter}
    Send, {tab}exception_handlers ] ] {enter}
    Send,  {enter}
    Send, +{tab}+{tab}END [package_name]; {enter}
Return

::oraclepackagebodyex::
    Gosub, oracle_package_body_example_sub
Return

oracle_package_body_example_sub:
    Send, /* {enter}
    Send, {tab}Package funcionario body {enter}
    Send, +{tab}*/ {enter}
    Send, CREATE OR REPLACE PACKAGE BODY funcionario AS {enter}
    Send, {tab}// get funcion�rio nomeCompleto {enter}
    Send, FUNCTION get_nomeCompleto(n_func_id NUMBER) RETURN VARCHAR2 IS {enter}
    Send, {tab}v_nomeCompleto VARCHAR2(46); {enter}
    Send, +{tab}BEGIN {enter}
    Send, {tab}SELECT primeiro_nome || ',' || ultimo_nome {enter}
    Send, INTO v_nomeCompleto {enter}
    Send, FROM funcionarios {enter}
    Send, WHERE empresa_id = n_func_id; {enter}
    Send,  {enter}
    Send, RETURN v_nomeCompleto; {enter}
    Send,  {enter}
    Send, +{tab}EXCEPTION {enter}
    Send, WHEN NO_DATA_FOUND THEN {enter}
    Send, {tab}RETURN NULL; {enter}
    Send, +{tab}WHEN TOO_MANY_ROWS THEN {enter}
    Send, {tab}RETURN NULL; {enter}
    Send, +{tab}END; // end get_nomeCompleto {enter}
    Send,  {enter}
    Send, {tab}get salario {enter}
    Send, +{tab}FUNCTION get_salario(n_func_id NUMBER) RETURN NUMBER IS {enter}
    Send, {tab}n_salario NUMBER(8,2); {enter}
    Send, +{tab}BEGIN {enter}
    Send, {tab}SELECT salario {enter}
    Send, INTO n_salario {enter}
    Send, FROM funcionarios {enter}
    Send, WHERE empresa_id = n_func_id; {enter}
    Send,  {enter}
    Send, RETURN n_salario; {enter}
    Send,  {enter}
    Send, EXCEPTION {enter}
    Send, {tab}WHEN NO_DATA_FOUND THEN {enter}
    Send, {tab}RETURN NULL; {enter}
    Send, +{tab}WHEN TOO_MANY_ROWS THEN {enter}
    Send, {tab}RETURN NULL; {enter}
    Send, +{tab}+{tab}+{tab}END; {enter}
    Send, +{tab}END funcionario; {enter}
Return

; BASIC
::oraclebasic::
    Gosub, oracle_basic_sintax_sub
Return

::orabasic::
    Gosub, oracle_basic_sintax_sub
Return

oracle_basic_sintax_sub:
    Sleep, 100
    Send, DECLARE{esc}{enter}
    Send, -- <declarations section>{esc}{enter}{enter}
    Send, BEGIN{esc}{enter}
    SEnd, -- <selects | commands>{esc}{enter}{enter}
    Send, EXCEPTION{esc}{enter}
    Send, -- <exception handling>{esc}{enter}{enter}
    Send, END{esc}{;}
    Send, {up}{up}{home}{tab}
    Send, {up}{up}{up}{home}{tab}
    Send, {up}{up}{up}{home}{tab}
Return

::oraclebasic_ex::
    Gosub, oracle_basic_sintax_example_sub
Return

::orabasic_ex::
    Gosub, oracle_basic_sintax_example_sub
Return

oracle_basic_sintax_example_sub:
    Send, DECLARE {enter}
    Send, message varchar2(20):= 'Hello, World!'; {enter} 
    Send, BEGIN {enter} 
    Send, dbms_output.put_line(message); {enter}
    Send, END; {enter}
    Send, / 
    Loop, 6
    {
        Send, {up}
    }
Return

; OPERATORS
::oracleoperators::
    Gosub, oracle_operators_sub
Return

::oraoperators::
    Gosub, oracle_operators_sub
Return

::oracleop::
    Gosub, oracle_operators_sub
Return

::oraop::
    Gosub, oracle_operators_sub
Return

oracle_operators_sub:
    Send, /* {enter}
    Send, Delimiter         Description {enter}
    Send, +, -, *, /        Addition, subtraction/negation, multiplication, division {enter}
    ;Send, AjustarTexto(%                 Attribute indicator {enter})
    Send, '                 Character string delimiter {enter}
    Send, .                 Component selector {enter}
    Send, (,)               Expression or list delimiter {enter}
    Send, :                 Host variable indicator {enter}
    Send, ,                 Item separator {enter}
    ; Send, "                 Quoted identifier delimiter {enter}
    Send, =                 Relational operator {enter}
    Send, @                 Remote access indicator {enter}
    ;Send, AjustarTexto(;                 Statement terminator {enter})
    Send, :=                Assignment operator {enter}
    Send, =>                Association operator {enter}
    Send, ||                Concatenation operator {enter}
    Send, **                Exponentiation operator {enter}
    Send, <<, >>            Label delimiter (begin and end) {enter}
    Send, /*, */            Multi-line comment delimiter (begin and end) {enter}
    Send, --                Single-line comment indicator {enter}
    Send, ..                Range operator {enter}
    Send, <, >, <=, >=      Relational operators {enter}
    Send, <>, '=, ~=, ^=    Different versions of NOT EQUAL {enter}
    Send, */ {enter}
Return

; COMMENTS
::oraclecomment::
    Gosub, oracle_comments_sub
Return

::oracomment::
    Gosub, oracle_comments_sub
Return

oracle_comments_sub:
    Send, -- single like comment {enter}
    Send, /* {enter}
    Send, multiline {enter}
    Send, comment {enter}
    Send, */ {enter}
Return

; PRINT
::oracleprint::
    Gosub, oracle_print_sub
Return

::oraprint::
    Gosub, oracle_print_sub
Return

oracle_print_sub:
    Sleep, 100
    Send, DBMS_OUTPUT.PUT_LINE(MESSAGE_TEXT);
    Send, {left}{left}
    Send, ^+{left}
Return

; --------------
;  SUBS ORACLE
; --------------


::sqltop::
    send, SELECT TOP 10 * {enter}
    send, FROM table_name; ^{left}^+{left}
Return

::sqllimit::
    send, SELECT * {enter}
    send, FROM table_name {enter}
    send, LIMIT 10; {up}{end}{left}^+{left}
Return

; DATA TYPES
oracle_data_types_sub:

    Send, Oracle Data Types {enter}
    Send, {enter}
    Send, CATEGORY                  DESCRIPTION {enter}
    Send, 1 - Scalar                Single values with no internal components, such as a NUMBER, DATE, or BOOLEAN. {enter}
    Send, 2 - Large Object (LOB)    Pointers to large objects that are stored separately from other data items, such as text, graphic images, video clips, and sound waveforms. {enter}
    Send, 3 - Composite             Data items that have internal components that can be accessed individually. For example, collections and records.
    Send, 4 - Reference             Pointers to other data items. {enter}
    Send, {enter}

    Send, PL/SQL SCALAR Data Types and Subtypes {enter}
    Send, DATA TYPE         DESCRIPTION {enter}
    Send, 1.1 - Numeric      Numeric values on which arithmetic operations are performed. {enter}
    Send, 1.2 - Character    Alphanumeric values that represent single characters or strings of characters. {enter}
    Send, 1.3 - Boolean      Logical values on which logical operations are performed. {enter}
    Send, 1.4 - Datetime     Dates and times. {enter}
    Send, {enter}

    Send, PL/SQL Numeric Data Types and Subtypes {enter}
    Send, Data Type             Description
    Send, 1.1.1 - PLS_INTEGER           Signed integer in range -2,147,483,648 through 2,147,483,647, represented in 32 bits
    Send, 1.1.2 - BINARY_INTEGER        Signed integer in range -2,147,483,648 through 2,147,483,647, represented in 32 bits
    Send, 1.1.3 - BINARY_FLOAT          Single-precision IEEE 754-format floating-point number
    Send, 1.1.4 - BINARY_DOUBLE         Double-precision IEEE 754-format floating-point number
    Send, 1.1.5 - NUMBER(prec, scale)   Fixed-point or floating-point number with absolute value in range 1E-130 to (but not including) 1.0E126. A NUMBER variable can also represent 0
    Send, 1.1.6 - DEC(prec, scale)      ANSI specific fixed-point type with maximum precision of 38 decimal digits
    
Return


; ----------------------------------------------------------
; PROCEDURE -- Incluido em (10/09/2019) - Angelo R. Pinto
; ----------------------------------------------------------

oracleprocedure:
    Gosub, oracle_procedure_sub
Return

oraprocedure:
    Gosub, oracle_procedure_sub    
Return

oracle_procedure_sub:
    Sleep, 100
    Send, CREATE [OR REPLACE ] PROCEDURE procedure_name (parameter_list){enter}
    Send, IS{enter}
    Send,     [declaration statements]{enter}
    Send, BEGIN{enter}
    Send,     [execution statements]{enter}
    Send,     EXCEPTION{enter}
    Send,         [exception handler]{enter}
    Send, END [procedure_name ];
Return


; ---------------------------------------------------------
; FUNCTION -- Incluido em (10/09/2019) - Angelo R. Pinto
; ---------------------------------------------------------

;-- Incluido em (10/09/2019) - Angelo R. Pinto
::oraclefunction::
    Gosub, oracle_function_sub
Return

::orafunction::
    Gosub, oracle_function_sub
Return

oracle_function_sub:
    Sleep, 100
    Send, CREATE [OR REPLACE] FUNCTION function_name (parameter_list){enter}
    Send,     RETURN return_type{enter}
    Send, IS{enter}
    Send,     [declarative section]{enter}
    Send, BEGIN{enter}
    Send,     [executable section]{enter}
    Send, [EXCEPTION]{enter}
    Send,     [exception-handling section]{enter}
    Send, END;
Return