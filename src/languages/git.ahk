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
    Sleep, 150
    Send, git init
Return


; --------------------------------------------- 
; GIT CLONE
; ---------------------------------------------

::gitclone::
    Gosub, git_clone_sub
Return

::gitcl::
    Gosub, git_clone_sub
Return

git_clone_sub:
    Sleep, 150

    Sleep, 150

    InputBox, sText, Git Clone, Type the Remote Git Repository,,,,,,,, git_repository
    if ErrorLevel
        Return

    Send, git clone %sText%
Return

; --------------------------------------------- 
; GIT STATUS 
; ---------------------------------------------

::gits::
    Gosub, git_status_sub
Return

::gitst::
    Gosub, git_status_sub
Return

::gitstatus::
    Gosub, git_status_sub
Return

git_status_sub:
    Sleep, 150
    Send, git status
Return


; --------------------------------------------- 
; GIT ADD 
; ---------------------------------------------

::gita::
    Gosub, git_add_all_sub
Return

::gitadd::
    Gosub, git_add_all_sub
Return

git_add_all_sub:
    Sleep, 150
    Send, git add .
Return

; --------------------------------------------- 
; GIT ADD - COMMIT
; ---------------------------------------------

::gitac::
    Gosub, git_add_commit_sub
Return

::gitaddc::
    Gosub, git_add_commit_sub
Return

::gitaddcommit::
    Gosub, git_add_commit_sub
Return

git_add_commit_sub:
    Sleep, 150

    InputBox, sText, Git Commit, Type the text of commit,,,,,,,, commit_text
    if ErrorLevel
        Return

    Send, git commit -am "%sText%"
Return


; --------------------------------------------- 
; GIT LOG 
; ---------------------------------------------

::gitl::
    Gosub, git_log_sub
Return

::gitlog::
    Gosub, git_log_sub
Return

git_log_sub:
    Sleep, 150
    Send, git log
Return


; --------------------------------------------- 
; GIT REF LOG 
; ---------------------------------------------

::gitrl::
    Gosub, git_ref_log_sub
Return

::gitrefl::
    Gosub, git_ref_log_sub
Return

::gitreflog::
    Gosub, git_ref_log_sub
Return

git_ref_log_sub:
    Sleep, 150
    Send, git ref log
Return


; --------------------------------------------- 
; GIT LOG - GRAPH
; ---------------------------------------------

::gitlg::
    Gosub, git_log_graph_sub
Return

::gitlogg::
    Gosub, git_log_graph_sub
Return

::gitloggraph::
    Gosub, git_log_graph_sub
Return

git_log_graph_sub:
    Sleep, 150
    Send, git log --graph
Return


; --------------------------------------------- 
; GIT LOG - GRAPH -- online
; ---------------------------------------------

::gitlgo::
    Gosub, git_log_graph_oneline_sub
Return

::gitloggo::
    Gosub, git_log_graph_oneline_sub
Return

::gitloggraphonline::
    Gosub, git_log_graph_oneline_sub
Return

git_log_graph_oneline_sub:
    Sleep, 150
    Send, git log --graph --oneline
Return


; --------------------------------------------- 
; GIT LOG - DECORATE
; ---------------------------------------------

::gitld::
    Gosub, git_log_decorate_sub
Return

::gitlogd::
    Gosub, git_log_decorate_sub
Return

::gitlogdecorate::
    Gosub, git_log_decorate_sub
Return

git_log_decorate_sub:
    Sleep, 150
    Send, git log --decorate
Return


; --------------------------------------------- 
; GIT LOG - DECORATE --oneline
; ---------------------------------------------

::gitldo::
    Gosub, git_log_decorate_oneline_sub
Return

::gitlogdo::
    Gosub, git_log_decorate_oneline_sub
Return

::gitlogdecorateoneline::
    Gosub, git_log_decorate_oneline_sub
Return

git_log_decorate_oneline_sub:
    Sleep, 150
    Send, git log --decorate --oneline
Return


; --------------------------------------------- 
; GIT LOG -- PRETTY
; ---------------------------------------------

::gitlp::
    Gosub, git_log_pretty_sub
Return

::gitlogpretty::
    Gosub, git_log_pretty_sub
Return

git_log_pretty_sub:
    Sleep, 150
    Send, git log --pretty=oneline
Return


; --------------------------------------------- 
; GIT LOG -- PRETTY -- FORMAT
; ---------------------------------------------

::gitlpf::
    Gosub, git_log_pretty_format_sub
Return

::gitlogpf::
    Gosub, git_log_pretty_format_sub
Return

::gitlogprettyformat::
    Gosub, git_log_pretty_format_sub
Return

git_log_pretty_format_sub:
    Sleep, 150
    Send, git log --pretty=format:"`%h `%ad | `%s`%d [`%an]" --graph --date=short
Return


; --------------------------------------------- 
; GIT COMMIT 
; ---------------------------------------------

::gitc::
    Gosub, git_commit_sub
Return

::gitcommit::
    Gosub, git_commit_sub
Return

git_commit_sub:
    Sleep, 150

    InputBox, sText, Git Commit, Type the text of commit,,,,,,,, commit_text
    if ErrorLevel
        Return

    Send, git commit -m "%sText%"
Return

; --------------------------------------------- 
; GIT COMMIT - ISSUE
; ---------------------------------------------

::gitci::
    Gosub, git_commit_issue_sub
Return

::gitcommitissue::
    Gosub, git_commit_issue_sub
Return

git_commit_issue_sub:

    Sleep, 150

    InputBox, sText, Git Commit, Type the message of commit,,,,,,,, commit_text
    if ErrorLevel
        Return

    InputBox, sIssue, Git Issue, Type the Issue Code,,,,,,,, issue_code
    if ErrorLevel
        Return

    Send, git commit -m "%sText% {#}sIssue"

Return

; --------------------------------------------- 
; GIT COMMIT - CLOSE ISSUE
; ---------------------------------------------

::gitcci::
    Gosub, git_commit_close_issue_sub
Return

::gitclosei::
    Gosub, git_commit_close_issue_sub
Return

::gitcommitclosei::
    Gosub, git_commit_close_issue_sub
Return

::gitcommitcloseissue::
    Gosub, git_commit_close_issue_sub
Return

git_commit_close_issue_sub:

    Sleep, 150

    InputBox, sText, Git Commit, Type the message of commit,,,,,,,, commit_text
    if ErrorLevel
        Return

    InputBox, sIssue, Git Issue, Type the Issue Code,,,,,,,, issue_code
    if ErrorLevel
        Return

    Send, git commit -m "%sText% closes {#}sIssue"

Return

; --------------------------------------------- 
; GIT COMMIT - FIXES ISSUE
; ---------------------------------------------

::gitcfi::
    Gosub, git_commit_fixes_issue_sub
Return

::gitfixesi::
    Gosub, git_commit_fixes_issue_sub
Return

::gitcommitfixesi::
    Gosub, git_commit_fixes_issue_sub
Return

::gitcommitfixesissue::
    Gosub, git_commit_fixes_issue_sub
Return

git_commit_fixes_issue_sub:

    Sleep, 150

    InputBox, sText, Git Commit, Type the message of commit,,,,,,,, commit_text
    if ErrorLevel
        Return

    InputBox, sIssue, Git Issue, Type the Issue Code,,,,,,,, issue_code
    if ErrorLevel
        Return

    Send, git commit -m "%sText% fixes {#}sIssue"

Return


; --------------------------------------------- 
; GIT COMMIT --AMEND
; ---------------------------------------------

::gitcam::
    Gosub, git_commit_ammend_sub
Return

::gitcommitam::
    Gosub, git_commit_ammend_sub
Return

::gitcommitammend::
    Gosub, git_commit_ammend_sub
Return

git_commit_ammend_sub:
    Sleep, 150

    InputBox, sText, Git Commit Ammend, Type the text of commit,,,,,,,, commit_text
    if ErrorLevel
        Return

    Send, git commit --amend -m "%sText%"
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
    Sleep, 150

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
    Sleep, 150

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
    Sleep, 150

    InputBox, sBranch, Git Push Forced, Type the branch name,,,,,,,, master
    if ErrorLevel
        Return

    Send, git push origin --force %sBranch%
Return

; --------------------------------------------- 
; GIT CHECKOUT 
; ---------------------------------------------

::gitchk::
    Gosub, git_checkout_sub
Return

::gitcheckout::
    Gosub, git_checkout_sub
Return

git_checkout_sub:
    Sleep, 150

    InputBox, sBranch, Git Checkout, Type the branch name,,,,,,,, master
    if ErrorLevel
        Return

    Send, git checkout %sBranch%
Return

; --------------------------------------------- 
; GIT CHECKOUT - BRANCH
; ---------------------------------------------

::gitchkb::
    Gosub, git_checkout_branch_sub
Return

::gitchkbranch::
    Gosub, git_checkout_branch_sub
Return

::gitcheckoutbranch::
    Gosub, git_checkout_branch_sub
Return

git_checkout_branch_sub:

    Sleep, 150

    InputBox, sBranch, Git Checkout, Type the branch name,,,,,,,, Feature/
    if ErrorLevel
        Return

    Send, git checkout -b %sBranch%

Return

; --------------------------------------------- 
; GIT CHECKOUT - DELETED BRANCH
; ---------------------------------------------

::gitchkbd::
    Gosub, git_checkout_delete_branch_sub
Return

::gitchkbranchd::
    Gosub, git_checkout_delete_branch_sub
Return

::gitcheckoutbranchdeleted::
    Gosub, git_checkout_delete_branch_sub
Return

git_checkout_delete_branch_sub:

    Sleep, 150

    InputBox, sBranch, Git Checkout Deleted Branch, Type the branch name,,,,,,,, branch_name
    if ErrorLevel
        Return

    InputBox, sRef, Git Checkout Deleted Branch, Type the Ref Log,,,,,,,, ref_log
    if ErrorLevel
        Return

    Send, git checkout -b %sBranch% %sRef%

Return


; --------------------------------------------- 
; GIT MOVE
; ---------------------------------------------

::gitmove::
    Gosub, git_move_sub
Return

::gitmv::
    Gosub, git_move_sub
Return

git_move_sub:
    Sleep, 150

    InputBox, sFileName, Git Move, Type the File Name,,,,,,,, file.ext
    if ErrorLevel
        Return

    InputBox, sDir, Git Move, Type the Directory Name,,,,,,,, dir_name
    if ErrorLevel
        Return

    Send, git mv %sFileName% %sDir%
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
    Sleep, 150

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
    Sleep, 150
    Send, git reset
Return

; --------------------------------------------- 
; GIT RESET - HEAD INDEX
; ---------------------------------------------

::gitrsi::
    Gosub, git_reset_index_sub
Return

::gitresetindex::
    Gosub, git_reset_index_sub
Return

git_reset_index_sub:
    Sleep, 150
    Send, git reset HEAD{^}
Return


; --------------------------------------------- 
; GIT RESET -- HARD - HASH
; ---------------------------------------------

::gitrsh::
    Gosub, git_reset_hard_sub
Return

::gitresethard::
    Gosub, git_reset_hard_sub
Return

git_reset_hard_sub:
    Sleep, 150
    
    InputBox, sTagName, Git Reset Hard, Type the Tag Name,,,,,,,, tag_name
    if ErrorLevel
        Return    

    Send, git reset --hard %sTagName%
Return



; --------------------------------------------- 
; GIT CONFIG - NAME
; ---------------------------------------------

::gitu::
    Gosub, git_config_user_name_sub
Return

::gituser::
    Gosub, git_config_user_name_sub
Return

git_config_user_name_sub:
    Sleep, 150

    InputBox, sUser, Git User Name, Type your User Name,,,,,,,, user_name
    if ErrorLevel
        Return

    Send, git config user.name "%sUser%"
Return

; --------------------------------------------- 
; GIT CONFIG - NAME - LOCAL
; ---------------------------------------------

::gitul::
    Gosub, git_config_user_name_local_sub
Return

::gituserl::
    Gosub, git_config_user_name_local_sub
Return

::gituserlocal::
    Gosub, git_config_user_name_local_sub
Return

git_config_user_name_local_sub:
    Sleep, 150

    InputBox, sUser, Git Local User Name, Type your User Name,,,,,,,, user_name
    if ErrorLevel
        Return

    Send, git config --local user.name "%sUser%"
Return

; --------------------------------------------- 
; GIT CONFIG - NAME - GLOBAL
; ---------------------------------------------

::gitug::
    Gosub, git_config_user_name_global_sub
Return

::gituserg::
    Gosub, git_config_user_name_global_sub
Return

::gituserglobal::
    Gosub, git_config_user_name_global_sub
Return

git_config_user_name_global_sub:
    Sleep, 150

    InputBox, sUser, Git Global User Name, Type your User Name,,,,,,,, user_name
    if ErrorLevel
        Return

    Send, git config --global user.name "%sUser%"
Return

; --------------------------------------------- 
; GIT CONFIG - E-MAIL
; ---------------------------------------------

::gite::
    Gosub, git_config_email_sub
Return

::gitemail::
    Gosub, git_config_email_sub
Return

git_config_email_sub:
    Sleep, 150

    InputBox, sEmail, Git E-mail, Type your e-mail,,,,,,,, user@email.com
    if ErrorLevel
        Return

    Send, git config user.email "%sEmail%"
Return

; --------------------------------------------- 
; GIT CONFIG - E-MAIL - LOCAL
; ---------------------------------------------

::gitel::
    Gosub, git_config_email_local_sub
Return

::gitemaill::
    Gosub, git_config_email_local_sub
Return

::gitemaillocal::
    Gosub, git_config_email_local_sub
Return

git_config_email_local_sub:
    Sleep, 150

    InputBox, sEmail, Git Local E-mail, Type your e-mail,,,,,,,, user@email.com
    if ErrorLevel
        Return

    Send, git config --local user.email "%sEmail%"
Return

; --------------------------------------------- 
; GIT CONFIG - E-MAIL - GLOBAL
; ---------------------------------------------

::giteg::
    Gosub, git_config_email_global_sub
Return

::gitemailg::
    Gosub, git_config_email_global_sub
Return

::gitemailglobal::
    Gosub, git_config_email_global_sub
Return

git_config_email_global_sub:
    Sleep, 150

    InputBox, sEmail, Git Global E-mail, Type your e-mail,,,,,,,, user@email.com
    if ErrorLevel
        Return

    Send, git config --global user.email "%sEmail%"
Return


; --------------------------------------------- 
; GIT END LINE 1
; ---------------------------------------------


::gitel1::
    Gosub, git_config_end_line_1_sub
Return

::gitline1::
    Gosub, git_config_end_line_1_sub
Return

git_config_end_line_1_sub:
    Sleep, 150
    Send, git config core.autocrlf true
Return


; --------------------------------------------- 
; GIT END LINE 1 - LOCAL
; ---------------------------------------------


::gitell1::
    Gosub, git_config_end_line_1_local_sub
Return

::gitlinelocal1::
    Gosub, git_config_end_line_1_local_sub
Return

git_config_end_line_1_local_sub:
    Sleep, 150
    Send, git config --local core.autocrlf true
Return


; --------------------------------------------- 
; GIT END LINE 1 - GLOBAL
; ---------------------------------------------


::gitlg1::
    Gosub, git_config_end_line_1_global_sub
Return

::gitlineglobal1::
    Gosub, git_config_end_line_1_global_sub
Return

git_config_end_line_1_global_sub:
    Sleep, 150
    Send, git config --global core.autocrlf true
Return


; --------------------------------------------- 
; GIT END LINE 2 - 
; ---------------------------------------------

::gitl2::
    Gosub, git_config_end_line_2_sub
Return

::gitline2::
    Gosub, git_config_end_line_2_sub
Return

git_config_end_line_2_sub:
    Sleep, 150
    Send, git config core.safecrlf warn
Return


; --------------------------------------------- 
; GIT END LINE 2 - LOCAL
; ---------------------------------------------

::gitll2::
    Gosub, git_config_end_line_2_local_sub
Return

::gitlinelocal2::
    Gosub, git_config_end_line_2_local_sub
Return

git_config_end_line_2_local_sub:
    Sleep, 150
    Send, git config --local core.safecrlf warn
Return


; --------------------------------------------- 
; GIT END LINE 2 - GLOBAL
; ---------------------------------------------

::gitlg2::
    Gosub, git_config_end_line_2_global_sub
Return

::gitlineglobal2::
    Gosub, git_config_end_line_2_global_sub
Return

git_config_end_line_2_global_sub:
    Sleep, 150
    Send, git config --global core.safecrlf warn
Return


; --------------------------------------------- 
; GIT ALIAS
; ---------------------------------------------

::gitalias::
    Gosub, git_alias_sub
Return

::gital::
    Gosub, git_alias_sub
Return

git_alias_sub:

    Sleep, 150

    InputBox, sAlias, Git Alias, Type the alias,,,,,,,, st status
    if ErrorLevel
        Return

    Send, git config --global alias.%sAlias%

Return

; --------------------------------------------- 
; GIT TAG
; ---------------------------------------------

::gittag::
    Gosub, git_tag_sub
Return

::gitt::
    Gosub, git_tag_sub
Return

git_tag_sub:

    Sleep, 150

    InputBox, sTag, Git Tag, Type the Tag Name,,,,,,,, tag_name
    if ErrorLevel
        Return

    Send, git tag %sTag%

Return


; --------------------------------------------- 
; GIT TAG -- DELETE
; ---------------------------------------------

::gittagdelete::
    Gosub, git_tag_delete_sub
Return

::gittagdel::
    Gosub, git_tag_delete_sub
Return

::gittd::
    Gosub, git_tag_delete_sub
Return

git_tag_delete_sub:

    Sleep, 150

    InputBox, sTag, Git Tag Delete, Type the Tag Name to delete,,,,,,,, tag_name
    if ErrorLevel
        Return

    Send, git tag -d %sTag%

Return


; --------------------------------------------- 
; GIT REVERT
; ---------------------------------------------

::gitrevert::
    Gosub, git_revert_sub
Return

::gitrv::
    Gosub, git_revert_sub
Return

git_revert_sub:

    Sleep, 150

    InputBox, sHash, Git Revert, Type the Hash,,,,,,,, HEAD
    if ErrorLevel
        Return

    Send, git revert %sHash%

Return

; --------------------------------------------- 
; GIT REVERT - NO EDIT
; ---------------------------------------------

::gitrevertnoedit::
    Gosub, git_revert_no_edit_sub
Return

::gitrvne::
    Gosub, git_revert_no_edit_sub
Return

::gitrvnoedit::
    Gosub, git_revert_no_edit_sub
Return

git_revert_no_edit_sub:

    Sleep, 150

    InputBox, sHash, Git Revert, Type the Hash,,,,,,,, HEAD
    if ErrorLevel
        Return

    Send, git revert %sHash% --no-edit

Return


; --------------------------------------------- 
; GIT BRANCH
; ---------------------------------------------

::gitb::
    Gosub, git_branch_sub
Return

::gitbranch::
    Gosub, git_branch_sub
Return

git_branch_sub:

    Sleep, 150
    Send, git branch

Return


; --------------------------------------------- 
; GIT BRANCH - ADD
; ---------------------------------------------

::gitba::
    Gosub, git_branch_add_sub
Return

::gitbrancha::
    Gosub, git_branch_add_sub
Return

::gitbranchadd::
    Gosub, git_branch_add_sub
Return

git_branch_add_sub:

    Sleep, 150

    InputBox, sBranch, Git New Branch, Type the new Branch Name,,,,,,,, Feature/
    if ErrorLevel
        Return

    Send, git branch %sBranch%

Return


; --------------------------------------------- 
; GIT MERGE
; ---------------------------------------------

::gitmb::
    Gosub, git_merge_branch_sub
Return

::gitmergeb::
    Gosub, git_merge_branch_sub
Return

::gitmergebranch::
    Gosub, git_merge_branch_sub
Return

git_merge_branch_sub:

    Sleep, 150

    InputBox, sBranch, Git Branch, Type the new Branch Name,,,,,,,, Feature/
    if ErrorLevel
        Return

    Send, git branch -d %sBranch%

Return



; --------------------------------------------- 
; GIT BRANCH - DELETE
; ---------------------------------------------

::gitbd::
    Gosub, git_branch_delete_sub
Return

::gitbranchd::
    Gosub, git_branch_delete_sub
Return

::gitbranchdelete::
    Gosub, git_branch_delete_sub
Return

git_branch_delete_sub:

    Sleep, 150

    InputBox, sBranch, Git Branch, Type the new Branch Name,,,,,,,, branch_name
    if ErrorLevel
        Return

    Send, git branch -d %sBranch%

Return




; --------------------------------------------- 
; GIT BRANCH - DELETE - REPOSITORY
; ---------------------------------------------

::gitbdr::
    Gosub, git_branch_delete_repository_sub
Return

::gitbranchdr::
    Gosub, git_branch_delete_repository_sub
Return

::gitbranchdeleterepository::
    Gosub, git_branch_delete_repository_sub
Return

git_branch_delete_repository_sub:

    Sleep, 150

    InputBox, sBranch, Git Branch, Type the new Branch Name,,,,,,,, branch_name
    if ErrorLevel
        Return

    Send, git push origin --delete %sBranch%

Return




; --------------------------------------------- 
; GIT REMOTE - ADD
; ---------------------------------------------

::gitrma::
    Gosub, git_remote_add_sub
Return

::gitremotea::
    Gosub, git_remote_add_sub
Return

::gitremoteadd::
    Gosub, git_remote_add_sub
Return

git_remote_add_sub:

    Sleep, 150

    InputBox, sRepository, Git Add Repository, Type the URL of Remote Repository,,,,,,,, remote_repository
    if ErrorLevel
        Return

    Send, git remote add origin %sRepository%

Return


; --------------------------------------------- 
; GIT REMOTE - ADD UPSTREAM
; ---------------------------------------------

::gitrmu::
    Gosub, git_remote_add_upstream_sub
Return

::gitremoteu::
    Gosub, git_remote_add_upstream_sub
Return

::gitremoteupstrem::
    Gosub, git_remote_add_upstream_sub
Return

git_remote_add_upstream_sub:

    Sleep, 150

    InputBox, url_project, Git Add Upstream Repository, Type the URL of Remote Upstream Repository,,,,,,,, upstream_repository
    if ErrorLevel
        Return

    Send, git remote add upstream %url_project%

Return


