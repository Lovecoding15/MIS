//#charset: ISO-8859-1

// ASCII Resource File
// FUT_ARM01 - Customer Master
// Barista Application Framework.  Copyright BASIS International Ltd

VERSION "4.0"

WINDOW 1000 "" 0010 0040 0408 0531
BEGIN
    NAME "win_fut_arm01"
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
    
    STATICTEXT 02002, "Customer Nbr:", 22, 33, 105, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_customer_nbr"
        FONT "Arial" 8
    END
    
    INPUTE 03002, "", 130, 31, 61, 19
    BEGIN
        NAME "ine_customer_nbr"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 6
        FONT "Arial" 8
    END
    
    STATICTEXT 02003, "Cust Name:", 44, 54, 83, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_cust_name"
        FONT "Arial" 8
    END
    
    INPUTE 03003, "", 130, 52, 248, 19
    BEGIN
        NAME "ine_cust_name"
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
    
    STATICTEXT 02008, "Telephone Numnber:", 0, 159, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_phone_num"
        FONT "Arial" 8
    END
    
    INPUTE 03008, "", 130, 157, 88, 19
    BEGIN
        NAME "ine_phone_num"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 10
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
    
    STATICTEXT 02010, "Resale Nbr:", 45, 201, 82, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_resale_nbr"
        FONT "Arial" 8
    END
    
    INPUTE 03010, "", 130, 199, 168, 19
    BEGIN
        NAME "ine_resale_nbr"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 20
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
    
    STATICTEXT 02012, "Opened Date:", 30, 243, 97, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_opened_date"
        FONT "Arial" 8
    END
    
    INPUTE 03012, "", 130, 241, 40, 19
    BEGIN
        NAME "ine_opened_date"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 3
        FONT "Arial" 8
    END
    
    STATICTEXT 02013, "Ar Ship Via:", 45, 264, 82, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_ar_ship_via"
        FONT "Arial" 8
    END
    
    INPUTE 03013, "", 130, 262, 88, 19
    BEGIN
        NAME "ine_ar_ship_via"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 10
        FONT "Arial" 8
    END
    
    STATICTEXT 02014, "Fax Telephone Number:", 0, 285, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_fax_number"
        FONT "Arial" 8
    END
    
    INPUTE 03014, "", 130, 283, 88, 19
    BEGIN
        NAME "ine_fax_number"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 10
        FONT "Arial" 8
    END
    
    STATICTEXT 02015, "Addr Line 4:", 42, 306, 85, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_addr_line_4"
        FONT "Arial" 8
    END
    
    INPUTE 03015, "", 130, 304, 200, 19
    BEGIN
        NAME "ine_addr_line_4"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 24
        FONT "Arial" 8
    END
    
    STATICTEXT 02016, "Addr Line 5:", 42, 327, 85, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_addr_line_5"
        FONT "Arial" 8
    END
    
    INPUTE 03016, "", 130, 325, 200, 19
    BEGIN
        NAME "ine_addr_line_5"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 24
        FONT "Arial" 8
    END
    
    STATICTEXT 02017, "Retain Cust:", 41, 348, 86, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_retain_cust"
        FONT "Arial" 8
    END
    
    INPUTE 03017, "", 130, 346, 40, 19
    BEGIN
        NAME "ine_retain_cust"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 1
        FONT "Arial" 8
    END
    
    STATICTEXT 02018, "Contact Name:", 22, 369, 105, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_contact_nm"
        FONT "Arial" 8
    END
    
    INPUTE 03018, "", 130, 367, 168, 19
    BEGIN
        NAME "ine_contact_nm"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 20
        FONT "Arial" 8
    END
    
    STATICTEXT 02019, "D B Number:", 36, 390, 91, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_d_b_number"
        FONT "Arial" 8
    END
    
    INPUTE 03019, "", 130, 388, 80, 19
    BEGIN
        NAME "ine_d_b_number"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 9
        FONT "Arial" 8
    END
    
    STATICTEXT 02020, "Sic Code:", 60, 411, 67, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_sic_code"
        FONT "Arial" 8
    END
    
    INPUTE 03020, "", 130, 409, 72, 19
    BEGIN
        NAME "ine_sic_code"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 8
        FONT "Arial" 8
    END
    
    STATICTEXT 02021, "Country:", 67, 432, 60, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_country"
        FONT "Arial" 8
    END
    
    INPUTE 03021, "", 130, 430, 200, 19
    BEGIN
        NAME "ine_country"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 24
        FONT "Arial" 8
    END
    
    STATICTEXT 02022, "Fob:", 97, 453, 30, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_fob"
        FONT "Arial" 8
    END
    
    INPUTE 03022, "", 130, 451, 128, 19
    BEGIN
        NAME "ine_fob"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 15
        FONT "Arial" 8
    END
    
    STATICTEXT 02023, "Op Frt Terms:", 27, 474, 100, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_op_frt_terms"
        FONT "Arial" 8
    END
    
    INPUTE 03023, "", 130, 472, 40, 19
    BEGIN
        NAME "ine_op_frt_terms"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 2
        FONT "Arial" 8
    END
END

