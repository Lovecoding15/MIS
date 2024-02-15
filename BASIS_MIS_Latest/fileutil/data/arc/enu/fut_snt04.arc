//#charset: ISO-8859-1

// ASCII Resource File
// FUT_SNT04 - SN Vendor Features
// Barista Application Framework.  Copyright BASIS International Ltd

VERSION "4.0"

WINDOW 1000 "" 0010 0040 0408 0279
BEGIN
    NAME "win_fut_snt04"
    MANAGESYSCOLOR
    KEYBOARDNAVIGATION
    DIALOGBEHAVIOR
    EVENTMASK 1136656524
    INVISIBLE
    FONT "Arial" 8
    ENTERASTAB
    
    STATICTEXT 02001, "Serial Number (Basis):", 0, 12, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_serial_nbr"
        FONT "Arial" 8
    END
    
    INPUTE 03001, "", 130, 10, 184, 19
    BEGIN
        NAME "ine_serial_nbr"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 20
        FONT "Arial" 8
    END
    
    STATICTEXT 02002, "Feature:", 69, 33, 58, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_feature"
        FONT "Arial" 8
    END
    
    INPUTE 03002, "", 130, 31, 248, 19
    BEGIN
        NAME "ine_feature"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 30
        FONT "Arial" 8
    END
    
    STATICTEXT 02003, "Feature Rev:", 39, 54, 88, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_feature_rev"
        FONT "Arial" 8
    END
    
    INPUTE 03003, "", 130, 52, 48, 19
    BEGIN
        NAME "ine_feature_rev"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 5
        FONT "Arial" 8
    END
    
    STATICTEXT 02004, "User Based:", 39, 75, 88, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_user_based"
        FONT "Arial" 8
    END
    
    INPUTE 03004, "", 130, 73, 40, 19
    BEGIN
        NAME "ine_user_based"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 1
        FONT "Arial" 8
    END
    
    STATICTEXT 02005, "Prod Code:", 49, 96, 78, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_prod_code"
        FONT "Arial" 8
    END
    
    INPUTE 03005, "", 130, 94, 40, 19
    BEGIN
        NAME "ine_prod_code"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 3
        FONT "Arial" 8
    END
    
    STATICTEXT 02006, "Configurator Type of Sale Id:", 0, 117, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_type_of_sale"
        FONT "Arial" 8
    END
    
    INPUTE 03006, "", 130, 115, 40, 19
    BEGIN
        NAME "ine_type_of_sale"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 3
        FONT "Arial" 8
    END
    
    STATICTEXT 02007, "Expire On Date:", 16, 138, 111, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_expire_on_dt"
        FONT "Arial" 8
    END
    
    INPUTE 03007, "", 130, 136, 72, 19
    BEGIN
        NAME "ine_expire_on_dt"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 8
        FONT "Arial" 8
    END
    
    STATICTEXT 02008, "Fax Flag:", 65, 159, 62, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_fax_flag"
        FONT "Arial" 8
    END
    
    INPUTE 03008, "", 130, 157, 40, 19
    BEGIN
        NAME "ine_fax_flag"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 1
        FONT "Arial" 8
    END
    
    STATICTEXT 02009, "Available:", 60, 180, 67, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_available"
        FONT "Arial" 8
    END
    
    INPUTE 03009, "", 130, 178, 200, 19
    BEGIN
        NAME "ine_available"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 24
        FONT "Arial" 8
    END
    
    STATICTEXT 02010, "Number of users:", 1, 201, 126, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_users"
        FONT "Arial" 8
    END
    INPUTN 03010, "", 130, 199, 56, 19
    BEGIN
        NAME "inn_users"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        DECIMALREPLACE
        MASK "####0-"
        FONT "Arial" 8
    END
    
    STATICTEXT 02011, "Available Num:", 22, 222, 105, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_available_num"
        FONT "Arial" 8
    END
    INPUTN 03011, "", 130, 220, 80, 19
    BEGIN
        NAME "inn_available_num"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        DECIMALREPLACE
        MASK "#####.00-"
        FONT "Arial" 8
    END
END

