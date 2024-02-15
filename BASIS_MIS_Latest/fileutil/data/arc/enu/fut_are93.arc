//#charset: ISO-8859-1

// ASCII Resource File
// FUT_ARE93 - User Feature Detail
// Barista Application Framework.  Copyright BASIS International Ltd

VERSION "4.0"

WINDOW 1000 "" 0010 0040 0435 0426
BEGIN
    NAME "win_fut_are93"
    MANAGESYSCOLOR
    KEYBOARDNAVIGATION
    DIALOGBEHAVIOR
    EVENTMASK 1136656524
    INVISIBLE
    FONT "Arial" 8
    ENTERASTAB
    
    STATICTEXT 02001, "Firm Id:", 74, 12, 53, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_firm_id"
        FONT "Arial" 8
    END
    
    INPUTE 03001, "", 130, 10, 44, 19
    BEGIN
        NAME "ine_firm_id"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 2
        FONT "Arial" 8
    END
    
    STATICTEXT 02002, "AR Type:", 66, 33, 61, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_ar_type"
        FONT "Arial" 8
    END
    
    INPUTE 03002, "", 130, 31, 44, 19
    BEGIN
        NAME "ine_ar_type"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 2
        FONT "Arial" 8
    END
    
    STATICTEXT 02003, "Customer Nbr:", 22, 54, 105, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_customer_nbr"
        FONT "Arial" 8
    END
    
    INPUTE 03003, "", 130, 52, 61, 19
    BEGIN
        NAME "ine_customer_nbr"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 6
        FONT "Arial" 8
    END
    
    STATICTEXT 04003, "", 226, 54, 200, 17
    BEGIN
        NOT OPAQUE
        NOT WORDWRAP
        NAME "dis_customer_nbr"
        FOREGROUNDCOLOR RGB(0,0,96)
        FONT "Arial" 8
    END
    MENUBUTTON 20003, "", 191, 52, 30, 19
    BEGIN
        NAME "tbnf_customer_nbr"
    END
    
    STATICTEXT 02004, "Order Number:", 20, 75, 107, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_order_number"
        FONT "Arial" 8
    END
    
    INPUTE 03004, "", 130, 73, 70, 19
    BEGIN
        NAME "ine_order_number"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 7
        FONT "Arial" 8
    END
    
    STATICTEXT 02005, "Line Number:", 32, 96, 95, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_line_number"
        FONT "Arial" 8
    END
    
    INPUTE 03005, "", 130, 94, 44, 19
    BEGIN
        NAME "ine_line_number"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 3
        FONT "Arial" 8
    END
    
    STATICTEXT 02006, "License Seq:", 36, 117, 91, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_license_seq"
        FONT "Arial" 8
    END
    
    INPUTE 03006, "", 130, 115, 44, 19
    BEGIN
        NAME "ine_license_seq"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 3
        FONT "Arial" 8
    END
    
    STATICTEXT 02007, "Sequence Number:", 0, 138, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_sequence_nbr"
        FONT "Arial" 8
    END
    
    INPUTE 03007, "", 130, 136, 44, 19
    BEGIN
        NAME "ine_sequence_nbr"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 3
        FONT "Arial" 8
    END
    
    STATICTEXT 02008, "Feature Number:", 7, 159, 120, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_feature_nbr"
        FONT "Arial" 8
    END
    
    INPUTE 03008, "", 130, 157, 44, 19
    BEGIN
        NAME "ine_feature_nbr"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 3
        FONT "Arial" 8
    END
    
    STATICTEXT 02009, "Feature:", 69, 180, 58, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_feature"
        FONT "Arial" 8
    END
    
    INPUTE 03009, "", 130, 178, 248, 19
    BEGIN
        NAME "ine_feature"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 30
        FONT "Arial" 8
    END
    
    STATICTEXT 02010, "Feature Rev:", 39, 201, 88, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_feature_rev"
        FONT "Arial" 8
    END
    
    INPUTE 03010, "", 130, 199, 48, 19
    BEGIN
        NAME "ine_feature_rev"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 5
        FONT "Arial" 8
    END
    
    STATICTEXT 02011, "User Based:", 39, 222, 88, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_user_based"
        FONT "Arial" 8
    END
    
    INPUTE 03011, "", 130, 220, 40, 19
    BEGIN
        NAME "ine_user_based"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 1
        FONT "Arial" 8
    END
    
    STATICTEXT 02012, "Prod Code:", 49, 243, 78, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_prod_code"
        FONT "Arial" 8
    END
    
    INPUTE 03012, "", 130, 241, 40, 19
    BEGIN
        NAME "ine_prod_code"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 3
        FONT "Arial" 8
    END
    
    STATICTEXT 02013, "Configurator Type of Sale Id:", 0, 264, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_type_of_sale"
        FONT "Arial" 8
    END
    
    INPUTE 03013, "", 130, 262, 40, 19
    BEGIN
        NAME "ine_type_of_sale"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 3
        FONT "Arial" 8
    END
    
    STATICTEXT 02014, "Expire On Dt:", 34, 285, 93, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_expire_on_dt"
        FONT "Arial" 8
    END
    
    INPUTE 03014, "", 130, 283, 72, 19
    BEGIN
        NAME "ine_expire_on_dt"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 8
        FONT "Arial" 8
    END
    
    STATICTEXT 02015, "Fax Flag:", 65, 306, 62, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_fax_flag"
        FONT "Arial" 8
    END
    
    INPUTE 03015, "", 130, 304, 40, 19
    BEGIN
        NAME "ine_fax_flag"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 1
        FONT "Arial" 8
    END
    
    STATICTEXT 02016, "Available:", 60, 327, 67, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_available"
        FONT "Arial" 8
    END
    
    INPUTE 03016, "", 130, 325, 200, 19
    BEGIN
        NAME "ine_available"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 24
        FONT "Arial" 8
    END
    
    STATICTEXT 02017, "Number of users:", 1, 348, 126, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_users"
        FONT "Arial" 8
    END
    INPUTN 03017, "", 130, 346, 56, 19
    BEGIN
        NAME "inn_users"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        DECIMALREPLACE
        MASK "####0-"
        FONT "Arial" 8
    END
    
    STATICTEXT 02018, "Available Num:", 22, 369, 105, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_available_num"
        FONT "Arial" 8
    END
    INPUTN 03018, "", 130, 367, 80, 19
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

