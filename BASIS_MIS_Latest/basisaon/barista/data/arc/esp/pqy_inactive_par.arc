// Barista Application Framework - ASCII Resource File
// PQY_INACTIVE_PAR - Inactive Partners
// Proprietary Information. BASIS International Ltd. All rights reserved.

VERSION "4.0"

WINDOW 1000 "Temporary Title" 10 40 0426 0113
BEGIN
    NAME "win_pqy_inactive_par"
    MANAGESYSCOLOR
    KEYBOARDNAVIGATION
    DIALOGBEHAVIOR
    EVENTMASK 1136656524
    INVISIBLE
    ENTERASTAB
    
    STATICTEXT 02001, "Last Sale on or Before:", 0, 13, 153, 16
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_inactive_date"
        FONT "Tahoma" 8, Normal
    END
    
    INPUTD 03001, "", 156, 10, 80, 19
    BEGIN
        NAME "ind_inactive_date"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PLUSMINUS
    END
    TOOLBUTTON 21001, "", 236, 10, 20, 19
    BEGIN
        NAME "tbnc_inactive_date"
    END
    
    STATICTEXT 02002, "Partner Type:", 50, 34, 103, 16
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_partner_type"
        FONT "Tahoma" 8, Normal
    END
    
    LISTBUTTON 03002, "", 156, 31, 144, 200
    BEGIN
        NAME "lbx_partner_type"
        SELECTIONHEIGHT 19
        CLIENTEDGE
    END
    
    STATICTEXT 02003, "Partner Types:", 41, 55, 112, 16
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_partner_types"
        FONT "Tahoma" 8, Normal
    END
    
    INPUTE 03003, "", 156, 52, 240, 19
    BEGIN
        NAME "ine_partner_types"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 30
    END
    
    STATICTEXT 02004, "Number of Users:", 21, 76, 132, 16
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_num_users"
        FONT "Tahoma" 8, Normal
    END
    INPUTNSPINNER 03004, "", 156, 73, 35, 19
    BEGIN
        NAME "inn_num_users"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        MASK "###0-"
    END
END

