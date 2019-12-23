;-------------------
; CODES GIT
;-------------------

; --------------------------------------------- 
; GIT INIT
; ---------------------------------------------

::gitinit::
    Gosub, git_init_sub
Return

::giti::
    Gosub, git_init_sub
Return

git_init_sub:
    Sleep, 100
    Send, git init
Return

; --------------------------------------------- 
; GIT STATUS 
; ---------------------------------------------

::gitstatus::
    Gosub, git_status_sub
Return

::gitst::
    Gosub, git_status_sub
Return

::gits::
    Gosub, git_status_sub
Return

git_status_sub:
    Sleep, 100
    Send, git status
Return


; --------------------------------------------- 
; GIT ADD 
; ---------------------------------------------

::gitadd::
    Gosub, git_add_all_sub
Return

::gita::
    Gosub, git_add_all_sub
Return

git_add_all_sub:
    Sleep, 100
    Send, git add *
Return


; --------------------------------------------- 
; GIT LOG 
; ---------------------------------------------

::gitlog::
    Gosub, git_log_sub
Return

::gitl::
    Gosub, git_log_sub
Return

git_log_sub:
    Sleep, 100
    Send, git log
Return


; --------------------------------------------- 
; GIT LOG -- PRETTY
; ---------------------------------------------

::gitlogpretty::
    Gosub, git_log_pretty_sub
Return

::gitlp::
    Gosub, git_log_pretty_sub
Return

git_log_pretty_sub:
    Sleep, 100
    Send, git log --pretty=oneline
Return


; --------------------------------------------- 
; GIT LOG -- PRETTY -- FORMAT
; ---------------------------------------------

::gitlogprettyformat::
    Gosub, git_log_pretty_format_sub
Return

::gitlogpf::
    Gosub, git_log_pretty_format_sub
Return

::gitlpf::
    Gosub, git_log_pretty_format_sub
Return

git_log_pretty_format_sub:
    Sleep, 100
    Send, git log --pretty=format:"`%h `%ad | `%s`%d [`%an]" --graph --date=short
Return



; --------------------------------------------- 
; GIT COMMIT 
; ---------------------------------------------

::gitcommit::
    Gosub, git_commit_sub
Return

::gitcom::
    Gosub, git_commit_sub
Return

::gitc::
    Gosub, git_commit_sub
Return

git_commit_sub:
    Sleep, 100

    InputBox, sText, Git Commit, Type the text of commit,,,,,,,, text_commit
    if ErrorLevel
        Return

    Send, git commit -m "%sText%"
Return




; --------------------------------------------- 
; GIT PULL 
; ---------------------------------------------

::gitpull::
    Gosub, git_pull_sub
Return

::gitu::
    Gosub, git_pull_sub
Return

git_pull_sub:
    Sleep, 100

    InputBox, sBranch, Git Pull, Type the branch name,,,,,,,, master
    if ErrorLevel
        Return

    Send, git pull origin %sBranch%
Return


; --------------------------------------------- 
; GIT PUSH 
; ---------------------------------------------

::gitpush::
    Gosub, git_push_sub
Return

::gitp::
    Gosub, git_push_sub
Return

git_push_sub:
    Sleep, 100

    InputBox, sBranch, Git Push, Type the branch name,,,,,,,, master
    if ErrorLevel
        Return

    Send, git push origin %sBranch%
Return

; --------------------------------------------- 
; GIT PUSH - FORCE
; ---------------------------------------------

::gitpushf::
    Gosub, git_push_force_sub
Return

::gitpf::
    Gosub, git_push_force_sub
Return

git_push_force_sub:
    Sleep, 100

    InputBox, sBranch, Git Push Forced, Type the branch name,,,,,,,, master
    if ErrorLevel
        Return

    Send, git push origin --force %sBranch%
Return

; --------------------------------------------- 
; GIT CHECKOUT 
; ---------------------------------------------

::gitcheckout::
    Gosub, git_checkout_sub
Return

::gitcheck::
    Gosub, git_checkout_sub
Return

::gitchk::
    Gosub, git_checkout_sub
Return

git_checkout_sub:
    Sleep, 100

    InputBox, sBranch, Git Checkout, Type the branch name,,,,,,,, master
    if ErrorLevel
        Return

    Send, git checkout %sBranch%
Return


; --------------------------------------------- 
; GIT REBASE
; ---------------------------------------------

::gitrebase::
    Gosub, git_rebase_sub
Return

::gitrb::
    Gosub, git_rebase_sub
Return

git_rebase_sub:
    Sleep, 100

    InputBox, sBranch, Git Checkout, Type the branch name,,,,,,,, master
    if ErrorLevel
        Return

    Send, git rebase %sBranch%
Return


; --------------------------------------------- 
; GIT RESET
; ---------------------------------------------

::gitreset::
    Gosub, git_reset_sub
Return

::gitrs::
    Gosub, git_reset_sub
Return

git_reset_sub:
    Sleep, 100
    Send, git reset
Return


; --------------------------------------------- 
; GIT CONFIG - NAME
; ---------------------------------------------

::gituser::
    Gosub, git_config_user_name_sub
Return

::gitname::
    Gosub, git_config_user_name_sub
Return

::gitusername::
    Gosub, git_config_user_name_sub
Return

::gitconfiguser::
    Gosub, git_config_user_name_sub
Return

::gitconfigname::
    Gosub, git_config_user_name_sub
Return

git_config_user_name_sub:
    Sleep, 100

    InputBox, sUser, Git User Name, Type your User Name,,,,,,,, user_name
    if ErrorLevel
        Return

    Send, git config --global user.name "%sUser%"
Return

; --------------------------------------------- 
; GIT CONFIG - E-MAIL
; ---------------------------------------------

::gitmail::
    Gosub, git_config_email_sub
Return

::gitemail::
    Gosub, git_config_email_sub
Return

::gitconfigemail::
    Gosub, git_config_email_sub
Return

git_config_email_sub:
    Sleep, 100

    InputBox, sEmail, Git E-mail, Type your e-mail,,,,,,,, user@email.com
    if ErrorLevel
        Return

    Send, git config --global user.email "%sEmail%"
Return


; --------------------------------------------- 
; GIT END LINE 1
; ---------------------------------------------

::gitline1::
    Gosub, git_config_end_line_1_sub
Return

::gitel1::
    Gosub, git_config_end_line_1_sub
Return

::gitendline1::
    Gosub, git_config_end_line_1_sub
Return

::gitconfigendline1::
    Gosub, git_config_end_line_1_sub
Return

git_config_end_line_1_sub:
    Sleep, 100
    Send, git config --global core.autocrlf true
Return


; --------------------------------------------- 
; GIT END LINE 2
; ---------------------------------------------

::gitline2::
    Gosub, git_config_end_line_2_sub
Return

::gitel2::
    Gosub, git_config_end_line_2_sub
Return

::gitendline2::
    Gosub, git_config_end_line_2_sub
Return

::gitconfigendline2::
    Gosub, git_config_end_line_2_sub
Return

git_config_end_line_2_sub:
    Sleep, 100
    Send, git config --global core.safecrlf warn
Return