//#charset: ISO-8859-1

// ASCII Resource File
// FUT_SNM02 - Serial Nbr Registration Info
// Barista Application Framework.  Copyright BASIS International Ltd

VERSION "4.0"

WINDOW 1000 "" 0010 0040 0560 0363
BEGIN
    NAME "win_fut_snm02"
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
    
    STATICTEXT 02002, "Upg To Product:", 14, 33, 113, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_upg_to_product"
        FONT "Arial" 8
    END
    
    INPUTE 03002, "", 130, 31, 40, 19
    BEGIN
        NAME "ine_upg_to_product"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 3
        FONT "Arial" 8
    END
    
    STATICTEXT 02003, "Upg To Rev:", 42, 54, 85, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_upg_to_rev"
        FONT "Arial" 8
    END
    
    INPUTE 03003, "", 130, 52, 40, 19
    BEGIN
        NAME "ine_upg_to_rev"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 3
        FONT "Arial" 8
    END
    
    STATICTEXT 02004, "Register to Customer:", 0, 75, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_lic_property1"
        FONT "Arial" 8
    END
    
    INPUTE 03004, "", 130, 73, 40, 19
    BEGIN
        NAME "ine_lic_property1"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 2
        FONT "Arial" 8
    END
    
    STATICTEXT 02005, "Register to Customer:", 0, 96, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_lic_property2"
        FONT "Arial" 8
    END
    
    INPUTE 03005, "", 130, 94, 40, 19
    BEGIN
        NAME "ine_lic_property2"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 2
        FONT "Arial" 8
    END
    
    STATICTEXT 02006, "Register to Customer:", 0, 117, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_lic_property3"
        FONT "Arial" 8
    END
    
    INPUTE 03006, "", 130, 115, 40, 19
    BEGIN
        NAME "ine_lic_property3"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 2
        FONT "Arial" 8
    END
    
    STATICTEXT 02007, "Reserved For Dealer Use:", 0, 138, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_odbc_rw"
        FONT "Arial" 8
    END
    
    INPUTE 03007, "", 130, 136, 40, 19
    BEGIN
        NAME "ine_odbc_rw"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 1
        FONT "Arial" 8
    END
    
    STATICTEXT 02008, "Exp Days Dt:", 37, 159, 90, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_exp_days_dt"
        FONT "Arial" 8
    END
    
    INPUTE 03008, "", 130, 157, 72, 19
    BEGIN
        NAME "ine_exp_days_dt"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 8
        FONT "Arial" 8
    END
    
    STATICTEXT 02009, "Available:", 60, 180, 67, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_available"
        FONT "Arial" 8
    END
    
    INPUTE 03009, "", 130, 178, 400, 19
    BEGIN
        NAME "ine_available"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 56
        FONT "Arial" 8
    END
    
    STATICTEXT 02010, "Sep1:", 86, 201, 41, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_sep1"
        FONT "Arial" 8
    END
    
    INPUTE 03010, "", 130, 199, 40, 19
    BEGIN
        NAME "ine_sep1"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 1
        FONT "Arial" 8
    END
    
    STATICTEXT 02011, "Users1:", 71, 222, 56, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_users1"
        FONT "Arial" 8
    END
    INPUTN 03011, "", 130, 220, 56, 19
    BEGIN
        NAME "inn_users1"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        DECIMALREPLACE
        MASK "####0-"
        FONT "Arial" 8
    END
    
    STATICTEXT 02012, "Users2:", 71, 243, 56, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_users2"
        FONT "Arial" 8
    END
    INPUTN 03012, "", 130, 241, 56, 19
    BEGIN
        NAME "inn_users2"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        DECIMALREPLACE
        MASK "####0-"
        FONT "Arial" 8
    END
    
    STATICTEXT 02013, "Users3:", 71, 264, 56, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_users3"
        FONT "Arial" 8
    END
    INPUTN 03013, "", 130, 262, 56, 19
    BEGIN
        NAME "inn_users3"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        DECIMALREPLACE
        MASK "####0-"
        FONT "Arial" 8
    END
    
    STATICTEXT 02014, "Reserved Num 1:", 5, 285, 122, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_num_1"
        FONT "Arial" 8
    END
    INPUTN 03014, "", 130, 283, 40, 19
    BEGIN
        NAME "inn_num_1"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        DECIMALREPLACE
        FONT "Arial" 8
    END
    
    STATICTEXT 02015, "Reserved Num 2:", 5, 306, 122, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_num_2"
        FONT "Arial" 8
    END
    INPUTN 03015, "", 130, 304, 40, 19
    BEGIN
        NAME "inn_num_2"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        DECIMALREPLACE
        FONT "Arial" 8
    END
END

