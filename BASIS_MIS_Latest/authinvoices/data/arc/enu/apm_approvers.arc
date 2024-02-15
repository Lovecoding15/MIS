//#charset: ISO-8859-1

// ASCII Resource File
// APM_APPROVERS - AP Invoice Approvers and Signers
// Barista Application Framework.  Copyright BASIS International Ltd

VERSION "4.0"

WINDOW 1000 "" 10 40 0550 0157
BEGIN
    NAME "win_apm_approvers"
    MANAGESYSCOLOR
    KEYBOARDNAVIGATION
    DIALOGBEHAVIOR
    EVENTMASK 1136656524
    INVISIBLE
    FONT "Dialog" 8
    ENTERASTAB
    
    STATICTEXT 02001, "User ID:", 45, 12, 72, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_user_id"
        FONT "Dialog" 8
    END
    
    INPUTE 03001, "", 120, 10, 150, 19
    BEGIN
        NAME "ine_user_id"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MASK "UUUUUUUUUUUUUUUU"
        FONT "Dialog" 8
    END
    
    STATICTEXT 04001, "", 305, 12, 200, 17
    BEGIN
        NOT OPAQUE
        NOT WORDWRAP
        NAME "dis_user_id"
        FOREGROUNDCOLOR RGB(0,0,96)
        FONT "Dialog" 8
    END
    MENUBUTTON 20001, "", 270, 10, 30, 19
    BEGIN
        NAME "tbnf_user_id"
    END
    
    CHECKBOX 03002, "Provides Preliminary Approval", 118, 31, 270, 19
    BEGIN
        NAME "cbx_prelim_approval"
        NOT OPAQUE
        FONT "Dialog" 8
    END
    
    CHECKBOX 03003, "Check Signer", 118, 52, 134, 19
    BEGIN
        NAME "cbx_check_signer"
        NOT OPAQUE
        FONT "Dialog" 8
    END
    
    STATICTEXT 02004, "Signature File:", 0, 75, 117, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_signature_file"
        FONT "Dialog" 8
    END
    
    INPUTE 03004, "", 120, 73, 400, 19
    BEGIN
        NAME "ine_signature_file"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 80
        FONT "Dialog" 8
    END
    
    CHECKBOX 03005, "", 118, 94, 38, 19
    BEGIN
        NAME "cbx_payables_clerk"
        NOT OPAQUE
        FONT "Dialog" 8
    END
END

