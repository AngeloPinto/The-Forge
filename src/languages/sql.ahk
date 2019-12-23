;-------------------
; CODES SQL
;-------------------

;-------------------
; Shortcuts
;-------------------

::sqls::
    Gosub, sql_select_sub
Return 

sql_select_sub:
    Sleep, 100
    InputBox, table_name, SQL - Select, Digite o nome da tabela.,,,,,,,, Table_Name
    if ErrorLevel
        Return    
    Send, SELECT * FROM %table_name%;
Return

::sqls2::
    Gosub, sql_select_sub2
Return 

sql_select_sub2:
    Sleep, 100
    InputBox, table_name, SQL - Select, Digite o nome da tabela.,,,,,,,, Table_Name
    if ErrorLevel
        Return    
    InputBox, campos, SQL - Select, Digite os campos que deseja consultar.,,,,,,,, (Campo1, Campo2, Campo3)
    if ErrorLevel
        Return    
    Send, SELECT %campos% {enter}
    Send, FROM %table_name%;
Return

::sqls3::
    Gosub, sql_select_sub3
Return 

sql_select_sub3:
    Sleep, 100
    InputBox, table_name, SQL - Select, Digite o nome da tabela.,,,,,,,, Table_Name
    if ErrorLevel
        Return    
    InputBox, campos, SQL - Select, Digite os campos que deseja consultar.,,,,,,,, ID, Campo2, Campo3
    if ErrorLevel
        Return    
    InputBox, condicao, SQL - Select, Digite a condi��o.,,,,,,,, ID = 10;
    if ErrorLevel
        Return    
    Send, SELECT (%campos%) {enter}
    Send, FROM %table_name% {enter}
    Send, WHERE condicao; 
Return

::sqlorder::
    Gosub, sql_order_by_sub
Return 

sql_order_by_sub:
    Sleep, 100
    Send, SELECT column1, column2 {enter}
    Send, FROM table_name {enter}
    Send, ORDER BY column2 ASC {end}^+{left}
Return

::sqlgroup::
    Gosub, sql_group_by_sub
Return 

sql_group_by_sub:
    Sleep, 100
    Send, SELECT column2, count(*) {enter}
    Send, FROM table_name {enter}
    Send, GROUP BY column2 {enter}
    Send, ORDER BY column2 ASC {end}^+{left}
Return

::sqlsnull::
    Gosub, sql_is_null_sub
return

sql_is_null_sub:
    Sleep, 100
    Send, SELECT column_names {enter}
    Send, FROM table_name {enter}
    Send, WHERE column_name IS NULL;
Return

::sqlsnotnull::
    Gosub, sql_is_not_null_sub
return

sql_is_not_null_sub:
    Sleep, 100
    Send, SELECT column_names {enter}
    Send, FROM table_name {enter}
    Send, WHERE column_name IS NOT NULL;
Return

::sqlinsertex::
    Gosub, sql_insert_sub
Return

sql_insert_sub:
    Sleep, 100
    Send, INSERT INTO table_name {enter}
    Send, VALUES (value1, value2, value3);
Return

::sqlinserex2::
    Gosub, sql_insert_sub2
Return

sql_insert_sub2:
    Sleep, 100
    Send, INSERT INTO table_name (column2, column3){enter}
    Send, VALUES (value2, value3);
Return

::sqlupdateex::
    Gosub, sql_update_sub
Return

sql_update_sub:
    Sleep, 100
    Send, UPDATE table_name {enter}
    Send, SET column1 = value1, {enter}
    Send, {tab}column2 = value2 {enter}
    Send, column3 = value3 {enter}
    Send, +{tab}WHERE condition;
Return

::sqldelete::
    Gosub, sql_delete_sub
Return

sql_delete_sub:
    Sleep, 100
    Send, DELETE FROM table_name {enter}
    Send, WHERE condition; {up}{end}{left}^+{left}
Return

::sqldeleteall::
    Gosub, sql_delete_all_sub
Return

sql_delete_all_sub:
    Sleep, 100
    Send, DELETE * FROM table_name; ^{left}^+{left}
Return

::sqlmin::
    Sleep, 100
    Send, SELECT MIN(column_name) {enter}
    Send, FROM table_name; ^{left}^+{left}
Return

::sqlmax::
    Sleep, 100
    Send, SELECT MAX(column_name) {enter}
    Send, FROM table_name; ^{left}^+{left}
Return

::sqlcount::
    Sleep, 100
    Send, SELECT count(*) {enter}
    Send, FROM table_name; ^{left}^+{left}
return 

::sqlavg::
    Sleep, 100
    Send, SELECT avg(column_name) {enter}
    Send, FROM table_name; ^{left}^+{left}
return 

::sqlsum::
    Send, SELECT sum(column_name) {enter}
    Send, FROM table_name; ^{left}^+{left}
return 

::sqllike::
    Sleep, 100
    Send, SELECT column1, column2 {enter}
    Send, FROM table_name {enter}
    Send, WHERE columnN LIKE 'like'; ^{left}^+{left}
Return

::sqlin::
    Sleep, 100
    InputBox, inValues, SQL IN, Digite ou cole os valores
    if ErrorLevel
        Return    
    Send, IN (%inValues%)
Return

::sqlbetween::
    Sleep, 100
    Send, BETWEEN value1 AND value2 {end}^{left}^{left}{left}^+{left}
Return

::sqlinner::
    Sleep, 100
    InputBox, texto, INNER JOIN, Type or paste the TABLE_NAME and ALIAS NAME (TABLE T),,,,,,,, DB.table_name TN
    if ErrorLevel
        Return    
    tam := StrLen(texto)
    StringGetPos p, texto, %A_Space%
    StringLeft table_name, texto, %p% 
    table_name := TRIM(table_name)
    tam := tam - p
    StringRight alias_name, texto, %tam%
    alias_name := TRIM(alias_name)
    Send, INNER JOIN %table_name% %alias_name% ON %alias_name%.ID = T01.ID {end}
    Send, ^{left}^{left}^{left}{left}^+{left}
Return

::sqlleftjoin::
    Sleep, 100
    InputBox, texto, LEFT OUTER JOIN, Type or paste the TABLE_NAME and ALIAS NAME (TABLE T),,,,,,,, DB.table_name TN
    if ErrorLevel
        Return    
    tam := StrLen(texto)
    StringGetPos p, texto, %A_Space%
    StringLeft table_name, texto, %p% 
    table_name := TRIM(table_name)
    tam := tam - p
    StringRight alias_name, texto, %tam%
    alias_name := TRIM(alias_name)
    Send, LEFT OUTER JOIN %table_name% %alias_name% ON %alias_name%.ID = T01.ID {end}
    Send, ^{left}^{left}^{left}{left}^+{left}
Return

::sqlrightjoin::
    Sleep, 100
    InputBox, texto, RIGHT OUTER JOIN, Type or paste the TABLE_NAME and ALIAS NAME (TABLE T),,,,,,,, DB.table_name TN
    if ErrorLevel
        Return    
    tam := StrLen(texto)
    StringGetPos p, texto, %A_Space%
    StringLeft table_name, texto, %p% 
    table_name := TRIM(table_name)
    tam := tam - p
    StringRight alias_name, texto, %tam%
    alias_name := TRIM(alias_name)
    Send, RIGHT OUTER JOIN %table_name% %alias_name% ON %alias_name%.ID = T01.ID {end}
    Send, ^{left}^{left}^{left}{left}^+{left}
Return

::sqlfulljoin::
    Sleep, 100
    InputBox, texto, FULL OUTER JOIN, Type or paste the TABLE_NAME and ALIAS NAME (TABLE T),,,,,,,, DB.table_name TN
    if ErrorLevel
        Return    
    tam := StrLen(texto)
    StringGetPos p, texto, %A_Space%
    StringLeft table_name, texto, %p% 
    table_name := TRIM(table_name)
    tam := tam - p
    StringRight alias_name, texto, %tam%
    alias_name := TRIM(alias_name)
    Send, FULL OUTER JOIN %table_name% %alias_name% ON %alias_name%.ID = T01.ID {end}
    Send, ^{left}^{left}^{left}{left}^+{left}
Return
