//#charset: ISO-8859-1

// ASCII Resource File
// FUT_SNM01 - Serial Number Master
// Barista Application Framework.  Copyright BASIS International Ltd

VERSION "4.0"

WINDOW 1000 "" 0010 0040 0560 0468
BEGIN
    NAME "win_fut_snm01"
    MANAGESYSCOLOR
    KEYBOARDNAVIGATION
    DIALOGBEHAVIOR
    EVENTMASK 1136656524
    INVISIBLE
    FONT "Arial" 8
    ENTERASTAB
    
    STATICTEXT 02001, "Serial Number:", 40, 12, 87, 17
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
    
    STATICTEXT 02002, "Serial Number Description:", 0, 33, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_serial_desc"
        FONT "Arial" 8
    END
    
    INPUTE 03002, "", 130, 31, 400, 19
    BEGIN
        NAME "ine_serial_desc"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 60
        FONT "Arial" 8
    END
    
    STATICTEXT 02003, "Configuration Product Id:", 0, 54, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_product"
        FONT "Arial" 8
    END
    
    INPUTE 03003, "", 130, 52, 40, 19
    BEGIN
        NAME "ine_product"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 3
        FONT "Arial" 8
    END
    
    STATICTEXT 02004, "Configuration Platform Id:", 0, 75, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_platform"
        FONT "Arial" 8
    END
    
    INPUTE 03004, "", 130, 73, 40, 19
    BEGIN
        NAME "ine_platform"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 3
        FONT "Arial" 8
    END
    
    STATICTEXT 02005, "Os Level Id:", 56, 96, 71, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_os_level"
        FONT "Arial" 8
    END
    
    INPUTE 03005, "", 130, 94, 40, 19
    BEGIN
        NAME "ine_os_level"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 3
        FONT "Arial" 8
    END
    
    STATICTEXT 02006, "Product Revision Id:", 9, 117, 118, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_product_rev"
        FONT "Arial" 8
    END
    
    INPUTE 03006, "", 130, 115, 40, 19
    BEGIN
        NAME "ine_product_rev"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 3
        FONT "Arial" 8
    END
    
    STATICTEXT 02007, "Configurator License Type Id:", 0, 138, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_license_type"
        FONT "Arial" 8
    END
    
    INPUTE 03007, "", 130, 136, 40, 19
    BEGIN
        NAME "ine_license_type"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 3
        FONT "Arial" 8
    END
    
    STATICTEXT 02008, "Configurator Media Type Id:", 0, 159, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_media_type"
        FONT "Arial" 8
    END
    
    INPUTE 03008, "", 130, 157, 40, 19
    BEGIN
        NAME "ine_media_type"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 3
        FONT "Arial" 8
    END
    
    STATICTEXT 02009, "Serial Number Active Flag:", 0, 180, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_active_flag"
        FONT "Arial" 8
    END
    
    INPUTE 03009, "", 130, 178, 40, 19
    BEGIN
        NAME "ine_active_flag"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 1
        FONT "Arial" 8
    END
    
    STATICTEXT 02010, "Customer Nbr:", 41, 201, 86, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_customer_nbr"
        FONT "Arial" 8
    END
    
    INPUTE 03010, "", 130, 199, 56, 19
    BEGIN
        NAME "ine_customer_nbr"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 6
        FONT "Arial" 8
    END
    
    STATICTEXT 04010, "", 221, 201, 200, 17
    BEGIN
        NOT OPAQUE
        NOT WORDWRAP
        NAME "dis_customer_nbr"
        FOREGROUNDCOLOR RGB(0,0,96)
        FONT "Arial" 8
    END
    MENUBUTTON 20010, "", 186, 199, 30, 19
    BEGIN
        NAME "tbnf_customer_nbr"
    END
    
    STATICTEXT 02011, "Basis Port Id:", 49, 222, 78, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_port_id"
        FONT "Arial" 8
    END
    
    INPUTE 03011, "", 130, 220, 48, 19
    BEGIN
        NAME "ine_port_id"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 5
        FONT "Arial" 8
    END
    
    STATICTEXT 02012, "Firm Id:", 85, 243, 42, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_firm_id"
        FONT "Arial" 8
    END
    
    INPUTE 03012, "", 130, 241, 40, 19
    BEGIN
        NAME "ine_firm_id"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 2
        FONT "Arial" 8
    END
    
    STATICTEXT 02013, "SAM/Developer Contract:", 0, 264, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_contract"
        FONT "Arial" 8
    END
    
    INPUTE 03013, "", 130, 262, 56, 19
    BEGIN
        NAME "ine_contract"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 6
        FONT "Arial" 8
    END
    
    STATICTEXT 02014, "SAM Contract Active:", 0, 285, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_sam_active"
        FONT "Arial" 8
    END
    
    INPUTE 03014, "", 130, 283, 40, 19
    BEGIN
        NAME "ine_sam_active"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 1
        FONT "Arial" 8
    END
    
    STATICTEXT 02015, "Avail Expire:", 52, 306, 75, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_avail_expire"
        FONT "Arial" 8
    END
    
    INPUTD 03015, "", 130, 304, 80, 19
    BEGIN
        NAME "ind_avail_expire"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PLUSMINUS
        FONT "Arial" 8
    END
    MENUBUTTON 21015, "", 210, 304, 20, 19
    BEGIN
        NAME "tbnc_avail_expire"
    END
    
    STATICTEXT 02016, "Reserved For Dealer Use:", 0, 327, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_dealer_str"
        FONT "Arial" 8
    END
    
    INPUTE 03016, "", 130, 325, 40, 19
    BEGIN
        NAME "ine_dealer_str"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 3
        FONT "Arial" 8
    END
    
    STATICTEXT 02017, "Serial Number Comment:", 0, 348, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_comment"
        FONT "Arial" 8
    END
    
    INPUTE 03017, "", 130, 346, 400, 19
    BEGIN
        NAME "ine_comment"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 60
        FONT "Arial" 8
    END
    
    STATICTEXT 02018, "Number of users:", 22, 369, 105, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_users"
        FONT "Arial" 8
    END
    INPUTN 03018, "", 130, 367, 56, 19
    BEGIN
        NAME "inn_users"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        DECIMALREPLACE
        MASK "####0-"
        FONT "Arial" 8
    END
    
    STATICTEXT 02019, "Dist Rest:", 70, 390, 57, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_dist_reset"
        FONT "Arial" 8
    END
    INPUTN 03019, "", 130, 388, 40, 19
    BEGIN
        NAME "inn_dist_reset"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        DECIMALREPLACE
        FONT "Arial" 8
    END
    
    STATICTEXT 02020, "Avail Support:", 42, 411, 85, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_avail_support"
        FONT "Arial" 8
    END
    INPUTN 03020, "", 130, 409, 40, 19
    BEGIN
        NAME "inn_avail_support"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        DECIMALREPLACE
        MASK "##0-"
        FONT "Arial" 8
    END
END

