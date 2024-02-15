//#charset: ISO-8859-1

// ASCII Resource File
// FUT_APM01 - Vendor Master
// Barista Application Framework.  Copyright BASIS International Ltd

VERSION "4.0"

WINDOW 1000 "" 0010 0040 0408 0468
BEGIN
    NAME "win_fut_apm01"
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
    
    STATICTEXT 02002, "Vendor Number:", 11, 33, 116, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_vendor_nbr"
        FONT "Arial" 8
    END
    
    INPUTE 03002, "", 130, 31, 61, 19
    BEGIN
        NAME "ine_vendor_nbr"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 6
        FONT "Arial" 8
    END
    
    STATICTEXT 02003, "Vendor Name:", 26, 54, 101, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_vendor_name"
        FONT "Arial" 8
    END
    
    INPUTE 03003, "", 130, 52, 248, 19
    BEGIN
        NAME "ine_vendor_name"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 30
        FONT "Arial" 8
    END
    
    STATICTEXT 02004, "Addr Line 1:", 42, 75, 85, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_addr_line_1"
        FONT "Arial" 8
    END
    
    INPUTE 03004, "", 130, 73, 200, 19
    BEGIN
        NAME "ine_addr_line_1"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 24
        FONT "Arial" 8
    END
    
    STATICTEXT 02005, "Addr Line 2:", 42, 96, 85, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_addr_line_2"
        FONT "Arial" 8
    END
    
    INPUTE 03005, "", 130, 94, 200, 19
    BEGIN
        NAME "ine_addr_line_2"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 24
        FONT "Arial" 8
    END
    
    STATICTEXT 02006, "Addr Line 3:", 42, 117, 85, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_addr_line_3"
        FONT "Arial" 8
    END
    
    INPUTE 03006, "", 130, 115, 200, 19
    BEGIN
        NAME "ine_addr_line_3"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 24
        FONT "Arial" 8
    END
    
    STATICTEXT 02007, "Zip/Postal Code:", 9, 138, 118, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_zip_code"
        FONT "Arial" 8
    END
    
    INPUTE 03007, "", 130, 136, 80, 19
    BEGIN
        NAME "ine_zip_code"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 9
        FONT "Arial" 8
    END
    
    STATICTEXT 02008, "Telephone Number:", 0, 159, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_phone_number"
        FONT "Arial" 8
    END
    
    INPUTE 03008, "", 130, 157, 120, 19
    BEGIN
        NAME "ine_phone_number"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 14
        FONT "Arial" 8
    END
    
    STATICTEXT 02009, "Phone Exten:", 35, 180, 92, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_phone_exten"
        FONT "Arial" 8
    END
    
    INPUTE 03009, "", 130, 178, 40, 19
    BEGIN
        NAME "ine_phone_exten"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 4
        FONT "Arial" 8
    END
    
    STATICTEXT 02010, "Contact Name:", 22, 201, 105, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_contact_name"
        FONT "Arial" 8
    END
    
    INPUTE 03010, "", 130, 199, 248, 19
    BEGIN
        NAME "ine_contact_name"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 30
        FONT "Arial" 8
    END
    
    STATICTEXT 02011, "Alt Sequence:", 30, 222, 97, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_alt_sequence"
        FONT "Arial" 8
    END
    
    INPUTE 03011, "", 130, 220, 88, 19
    BEGIN
        NAME "ine_alt_sequence"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 10
        FONT "Arial" 8
    END
    
    STATICTEXT 02012, "Date Opened:", 30, 243, 97, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_date_opened"
        FONT "Arial" 8
    END
    
    INPUTE 03012, "", 130, 241, 40, 19
    BEGIN
        NAME "ine_date_opened"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 3
        FONT "Arial" 8
    END
    
    STATICTEXT 02013, "A/P Hold Flag:", 30, 264, 97, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_ap_hold_flag"
        FONT "Arial" 8
    END
    
    INPUTE 03013, "", 130, 262, 40, 19
    BEGIN
        NAME "ine_ap_hold_flag"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 1
        FONT "Arial" 8
    END
    
    STATICTEXT 02014, "Federal Id Number:", 0, 285, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_federal_id"
        FONT "Arial" 8
    END
    
    INPUTE 03014, "", 130, 283, 128, 19
    BEGIN
        NAME "ine_federal_id"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 15
        FONT "Arial" 8
    END
    
    STATICTEXT 02015, "Vendor 1099 Flag:", 0, 306, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_vend_1099"
        FONT "Arial" 8
    END
    
    INPUTE 03015, "", 130, 304, 40, 19
    BEGIN
        NAME "ine_vend_1099"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 1
        FONT "Arial" 8
    END
    
    STATICTEXT 02016, "Vendor Account Id:", 0, 327, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_vendor_acct"
        FONT "Arial" 8
    END
    
    INPUTE 03016, "", 130, 325, 88, 19
    BEGIN
        NAME "ine_vendor_acct"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 10
        FONT "Arial" 8
    END
    
    STATICTEXT 02017, "Fax Telephone Number:", 0, 348, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_fax_number"
        FONT "Arial" 8
    END
    
    INPUTE 03017, "", 130, 346, 88, 19
    BEGIN
        NAME "ine_fax_number"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 10
        FONT "Arial" 8
    END
    
    STATICTEXT 02018, "Fob:", 97, 369, 30, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_fob"
        FONT "Arial" 8
    END
    
    INPUTE 03018, "", 130, 367, 128, 19
    BEGIN
        NAME "ine_fob"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 15
        FONT "Arial" 8
    END
    
    STATICTEXT 02019, "Vendor Ship Via:", 10, 390, 117, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_ap_ship_via"
        FONT "Arial" 8
    END
    
    INPUTE 03019, "", 130, 388, 128, 19
    BEGIN
        NAME "ine_ap_ship_via"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 15
        FONT "Arial" 8
    END
    
    STATICTEXT 02020, "Reserved For Add+on Use:", 0, 411, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_reserved_str"
        FONT "Arial" 8
    END
    
    INPUTE 03020, "", 130, 409, 168, 19
    BEGIN
        NAME "ine_reserved_str"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 20
        FONT "Arial" 8
    END
END

