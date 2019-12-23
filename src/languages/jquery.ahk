;-------------------
; CODES JQUERY
;-------------------

; -------------------
; Document Ready
; -------------------

::jqueryready::
    Gosub, jquery_document_ready_sub
Return

::jqready::
    Gosub, jquery_document_ready_sub
Return

jquery_document_ready_sub:
    Sleep, 100
    Send, $(document).ready(function(){{}{enter}
    ; Send, {enter}
    ; Send, {}});
    ; Gosub, fn_autoCloseChaves
    ; Gosub, fn_autoCloseParenteses
    Send, {down}{end}{;}
    Send, {up}{end}
Return

; -------------------
; Selector by ID
; -------------------

::jqueryid::
    Gosub, jquery_selector_id_sub
Return

::jqid::
    Gosub, jquery_selector_id_sub
Return

jquery_selector_id_sub:
    Sleep, 100
    Send, $("{#}").
    Loop, 3
    {
        Send, {left}
    }
Return

; -------------------
; Selector by Class
; -------------------

::jqueryclass::
    Gosub, jquery_selector_class_sub
Return

::jqclass::
    Gosub, jquery_selector_class_sub
Return

jquery_selector_class_sub:
    Sleep, 100
    Send, $(".").
    Loop, 3
    {
        Send, {left}
    }
Return

; -------------------
; Selector by Tag
; -------------------

::jquerytag::
    Gosub, jquery_selector_tag_sub
Return

::jqtag::
    Gosub, jquery_selector_tag_sub
Return

jquery_selector_tag_sub:
    Sleep, 100
    Send, $("").
    Loop, 3
    {
        Send, {left}
    }
Return

; -------------------
; Click
; -------------------

::jqueryclick::
    Gosub, jquery_click_sub
Return

::jqclick::
    Gosub, jquery_click_sub
Return

jquery_click_sub:
    Sleep, 100
    Send, $("").click(function(){{}{enter}
    ; Send, {enter}
    ; Send, {}});
    ; Gosub, fn_autoCloseChaves
    ; Gosub, fn_autoCloseParenteses
    Send, {down}{end}{;}
    Send, {up}{up}{end}
    Loop, 20
    {
        Send, {left}
    }
Return

; -------------------
; Focus
; -------------------

::jqueryfocus::
    Gosub, jquery_focus_sub
Return

::jqfocus::
    Gosub, jquery_focus_sub
Return

jquery_focus_sub:
    Sleep, 100
    Send, $("").focus(function(){{}{enter}
    ; Send, {enter}
    ; Send, {}});
    ; Gosub, fn_autoCloseChaves
    ; Gosub, fn_autoCloseParenteses
    Send, {down}{end}{;}
    Send, {up}{up}{end}
    Loop, 20
    {
        Send, {left}
    }
Return

; -------------------
; Blur - Perda de Foco
; -------------------

::jqueryblur::
    Gosub, jquery_blur_sub
Return

::jqblur::
    Gosub, jquery_blur_sub
Return

jquery_blur_sub:
    Sleep, 100
    Send, $("").blur(function(){{}{enter}
    ; Send, {enter}
    ; Send, {}});
    ; Gosub, fn_autoCloseChaves
    ; Gosub, fn_autoCloseParenteses
    Send, {down}{end}{;}
    Send, {up}{up}{end}
    Loop, 20
    {
        Send, {left}
    }
Return


; -------------------
; On Click
; -------------------

::jqueyonclick::
    Gosub, jquery_on_click_sub
Return

::jqonclick::
    Gosub, jquery_on_click_sub
Return

jquery_on_click_sub:
    Sleep, 100
    Send, $("").on("click", function(){{}{enter}
    ; Send, {enter}
    ; Send, {}});
    ; Gosub, fn_autoCloseChaves
    ; Gosub, fn_autoCloseParenteses
    Send, {down}{end}{;}
    Send, {up}{up}{end}
    Loop, 26
    {
        Send, {left}
    }
Return


; --------------------------------- 
; AJAX 
; --------------------------------- 

::jqueryajax::
    Gosub, jquery_ajax_sub
Return

::jqajax::
    Gosub, jquery_ajax_sub
Return

jquery_ajax_sub:
    Sleep, 100
    Send, jQuery.ajax({{} {enter}
    Send, async: true, {enter}
    Send, url: '', {enter}
    Send, type: 'POST', {enter}
    Send, dataType: 'json', {enter}
    Send, data: {{} {enter}
    Send, param01: valor1, {enter}
    Send, param02: valor2 {enter}
    Send, {}}, {enter}
    Send, beforeSend: function() {{}, {enter}
    Send, {enter}
    Send, {}}, {enter}
    Send, success: function(result) {{} {enter}
    Send, console.log(result); {enter}
    Send, {}}, {enter}
    Send, error: function (e) {{} {enter}
    Send, console.log(e); {enter}
    Send, {}}, {enter}
    Send, complete: function() {{} {enter}
    Send, {enter}
    Send, {}}, {enter}
    Send, {}}); {enter}
Return