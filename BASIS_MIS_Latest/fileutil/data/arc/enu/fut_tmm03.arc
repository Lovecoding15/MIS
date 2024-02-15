//#charset: ISO-8859-1

// ASCII Resource File
// FUT_TMM03 - Telemkt Add'l Contacts
// Barista Application Framework.  Copyright BASIS International Ltd

VERSION "4.0"

WINDOW 1000 "" 0010 0040 0560 0615
BEGIN
    NAME "win_fut_tmm03"
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
    
    STATICTEXT 04002, "", 226, 33, 200, 17
    BEGIN
        NOT OPAQUE
        NOT WORDWRAP
        NAME "dis_customer_nbr"
        FOREGROUNDCOLOR RGB(0,0,96)
        FONT "Arial" 8
    END
    MENUBUTTON 20002, "", 191, 31, 30, 19
    BEGIN
        NAME "tbnf_customer_nbr"
    END
    
    STATICTEXT 02003, "Main Sort:", 55, 54, 72, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_tm_number"
        FONT "Arial" 8
    END
    
    INPUTE 03003, "", 130, 52, 61, 19
    BEGIN
        NAME "ine_tm_number"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 6
        FONT "Arial" 8
    END
    
    STATICTEXT 02004, "Sequence Number:", 0, 75, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_sequence_nbr"
        FONT "Arial" 8
    END
    
    INPUTE 03004, "", 130, 73, 44, 19
    BEGIN
        NAME "ine_sequence_nbr"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 3
        FONT "Arial" 8
    END
    
    STATICTEXT 02005, "Contact Name:", 22, 96, 105, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_contact_name"
        FONT "Arial" 8
    END
    
    INPUTE 03005, "", 130, 94, 248, 19
    BEGIN
        NAME "ine_contact_name"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 30
        FONT "Arial" 8
    END
    
    STATICTEXT 02006, "Position:", 66, 117, 61, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_position"
        FONT "Arial" 8
    END
    
    INPUTE 03006, "", 130, 115, 152, 19
    BEGIN
        NAME "ine_position"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 18
        FONT "Arial" 8
    END
    
    STATICTEXT 02007, "Telephone Number:", 0, 138, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_phone_number"
        FONT "Arial" 8
    END
    
    INPUTE 03007, "", 130, 136, 120, 19
    BEGIN
        NAME "ine_phone_number"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 14
        FONT "Arial" 8
    END
    
    STATICTEXT 02008, "Time of Day:", 37, 159, 90, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_extension"
        FONT "Arial" 8
    END
    
    INPUTE 03008, "", 130, 157, 56, 19
    BEGIN
        NAME "ine_extension"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 6
        FONT "Arial" 8
    END
    
    STATICTEXT 02009, "Newsletter:", 46, 180, 81, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_primary_contact"
        FONT "Arial" 8
    END
    
    INPUTE 03009, "", 130, 178, 40, 19
    BEGIN
        NAME "ine_primary_contact"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 1
        FONT "Arial" 8
    END
    
    STATICTEXT 02010, "Ap Contact:", 46, 201, 81, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_ap_contact"
        FONT "Arial" 8
    END
    
    INPUTE 03010, "", 130, 199, 40, 19
    BEGIN
        NAME "ine_ap_contact"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 1
        FONT "Arial" 8
    END
    
    STATICTEXT 02011, "Literature Code:", 12, 222, 115, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_use_firm_addr"
        FONT "Arial" 8
    END
    
    INPUTE 03011, "", 130, 220, 40, 19
    BEGIN
        NAME "ine_use_firm_addr"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 1
        FONT "Arial" 8
    END
    
    STATICTEXT 02012, "Send Literature:", 12, 243, 115, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_send_lit"
        FONT "Arial" 8
    END
    
    INPUTE 03012, "", 130, 241, 40, 19
    BEGIN
        NAME "ine_send_lit"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 1
        FONT "Arial" 8
    END
    
    STATICTEXT 02013, "Literature Date:", 16, 264, 111, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_lit_dt"
        FONT "Arial" 8
    END
    
    INPUTE 03013, "", 130, 262, 72, 19
    BEGIN
        NAME "ine_lit_dt"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 8
        FONT "Arial" 8
    END
    
    STATICTEXT 02014, "Sam Contact:", 31, 285, 96, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_sam_contact"
        FONT "Arial" 8
    END
    
    INPUTE 03014, "", 130, 283, 40, 19
    BEGIN
        NAME "ine_sam_contact"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 1
        FONT "Arial" 8
    END
    
    STATICTEXT 02015, "Reserved For Dealer Use:", 0, 306, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_dealer_str_1"
        FONT "Arial" 8
    END
    
    INPUTE 03015, "", 130, 304, 40, 19
    BEGIN
        NAME "ine_dealer_str_1"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 3
        FONT "Arial" 8
    END
    
    STATICTEXT 02016, "Address 1:", 50, 327, 77, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_address_1"
        FONT "Arial" 8
    END
    
    INPUTE 03016, "", 130, 325, 248, 19
    BEGIN
        NAME "ine_address_1"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 30
        FONT "Arial" 8
    END
    
    STATICTEXT 02017, "Address 2:", 50, 348, 77, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_address_2"
        FONT "Arial" 8
    END
    
    INPUTE 03017, "", 130, 346, 248, 19
    BEGIN
        NAME "ine_address_2"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 30
        FONT "Arial" 8
    END
    
    STATICTEXT 02018, "Telemkt City:", 35, 369, 92, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_city"
        FONT "Arial" 8
    END
    
    INPUTE 03018, "", 130, 367, 208, 19
    BEGIN
        NAME "ine_city"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 25
        FONT "Arial" 8
    END
    
    STATICTEXT 02019, "State Code:", 44, 390, 83, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_state_code"
        FONT "Arial" 8
    END
    
    INPUTE 03019, "", 130, 388, 40, 19
    BEGIN
        NAME "ine_state_code"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 2
        FONT "Arial" 8
    END
    
    STATICTEXT 02020, "Zip/Postal Code:", 9, 411, 118, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_zip_code"
        FONT "Arial" 8
    END
    
    INPUTE 03020, "", 130, 409, 80, 19
    BEGIN
        NAME "ine_zip_code"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 9
        FONT "Arial" 8
    END
    
    STATICTEXT 02021, "Country:", 67, 432, 60, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_country_code"
        FONT "Arial" 8
    END
    
    INPUTE 03021, "", 130, 430, 40, 19
    BEGIN
        NAME "ine_country_code"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 2
        FONT "Arial" 8
    END
    
    STATICTEXT 02022, "End User Nbr:", 27, 453, 100, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_end_user_nbr"
        FONT "Arial" 8
    END
    
    INPUTE 03022, "", 130, 451, 88, 19
    BEGIN
        NAME "ine_end_user_nbr"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 10
        FONT "Arial" 8
    END
    
    STATICTEXT 02023, "Available:", 60, 474, 67, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_avail"
        FONT "Arial" 8
    END
    
    INPUTE 03023, "", 130, 472, 40, 19
    BEGIN
        NAME "ine_avail"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 1
        FONT "Arial" 8
    END
    
    STATICTEXT 02024, "Mail Announcements:", 0, 495, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_announcements"
        FONT "Arial" 8
    END
    
    INPUTE 03024, "", 130, 493, 40, 19
    BEGIN
        NAME "ine_announcements"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 1
        FONT "Arial" 8
    END
    
    STATICTEXT 02025, "Fax Telephone Number:", 0, 516, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_fax_number"
        FONT "Arial" 8
    END
    
    INPUTE 03025, "", 130, 514, 88, 19
    BEGIN
        NAME "ine_fax_number"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 10
        FONT "Arial" 8
    END
    
    STATICTEXT 02026, "Reserved For Dealer Use:", 0, 537, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_dealer_str_2"
        FONT "Arial" 8
    END
    
    INPUTE 03026, "", 130, 535, 168, 19
    BEGIN
        NAME "ine_dealer_str_2"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 20
        FONT "Arial" 8
    END
    
    STATICTEXT 02027, "E mail:", 79, 558, 48, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_e_mail"
        FONT "Arial" 8
    END
    
    INPUTE 03027, "", 130, 556, 400, 19
    BEGIN
        NAME "ine_e_mail"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 80
        FONT "Arial" 8
    END
END

