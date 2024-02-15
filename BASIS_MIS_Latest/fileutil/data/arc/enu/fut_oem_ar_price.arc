//#charset: ISO-8859-1

// ASCII Resource File
// FUT_OEM_AR_PRICE - Line Item Price Tracking
// Barista Application Framework.  Copyright BASIS International Ltd

VERSION "4.0"

WINDOW 1000 "" 0010 0040 0455 0342
BEGIN
    NAME "win_fut_oem_ar_price"
    MANAGESYSCOLOR
    KEYBOARDNAVIGATION
    DIALOGBEHAVIOR
    EVENTMASK 1136656524
    INVISIBLE
    FONT "Arial" 8
    ENTERASTAB
    
    STATICTEXT 02001, "Firm Id:", 94, 12, 53, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_firm_id"
        FONT "Arial" 8
    END
    
    INPUTE 03001, "", 150, 10, 44, 19
    BEGIN
        NAME "ine_firm_id"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 2
        FONT "Arial" 8
    END
    
    STATICTEXT 02002, "AR Type:", 86, 33, 61, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_ar_type"
        FONT "Arial" 8
    END
    
    INPUTE 03002, "", 150, 31, 44, 19
    BEGIN
        NAME "ine_ar_type"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 2
        FONT "Arial" 8
    END
    
    STATICTEXT 02003, "Customer Nbr:", 42, 54, 105, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_customer_nbr"
        FONT "Arial" 8
    END
    
    INPUTE 03003, "", 150, 52, 61, 19
    BEGIN
        NAME "ine_customer_nbr"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 6
        FONT "Arial" 8
    END
    
    STATICTEXT 04003, "", 246, 54, 200, 17
    BEGIN
        NOT OPAQUE
        NOT WORDWRAP
        NAME "dis_customer_nbr"
        FOREGROUNDCOLOR RGB(0,0,96)
        FONT "Arial" 8
    END
    MENUBUTTON 20003, "", 211, 52, 30, 19
    BEGIN
        NAME "tbnf_customer_nbr"
    END
    
    STATICTEXT 02004, "A/R Invoice Number:", 5, 75, 142, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_ar_inv_nbr"
        FONT "Arial" 8
    END
    
    INPUTE 03004, "", 150, 73, 70, 19
    BEGIN
        NAME "ine_ar_inv_nbr"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 7
        FONT "Arial" 8
    END
    
    STATICTEXT 02005, "Line Number:", 52, 96, 95, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_line_number"
        FONT "Arial" 8
    END
    
    INPUTE 03005, "", 150, 94, 44, 19
    BEGIN
        NAME "ine_line_number"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 3
        FONT "Arial" 8
    END
    
    STATICTEXT 02006, "Invoice date (YYYYMMDD):", 0, 117, 147, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_inv_date"
        FONT "Arial" 8
    END
    
    INPUTD 03006, "", 150, 115, 80, 19
    BEGIN
        NAME "ind_inv_date"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PLUSMINUS
        FONT "Arial" 8
    END
    MENUBUTTON 21006, "", 230, 115, 20, 19
    BEGIN
        NAME "tbnc_inv_date"
    END
    
    STATICTEXT 02007, "Configurator Type of Sale Id:", 0, 138, 147, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_type_of_sale"
        FONT "Arial" 8
    END
    
    INPUTE 03007, "", 150, 136, 40, 19
    BEGIN
        NAME "ine_type_of_sale"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 3
        FONT "Arial" 8
    END
    
    STATICTEXT 02008, "Item number:", 51, 159, 96, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_item_number"
        FONT "Arial" 8
    END
    
    INPUTE 03008, "", 150, 157, 168, 19
    BEGIN
        NAME "ine_item_number"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 20
        FONT "Arial" 8
    END
    
    STATICTEXT 02009, "Ar Po Number:", 44, 180, 103, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_ar_po_number"
        FONT "Arial" 8
    END
    
    INPUTE 03009, "", 150, 178, 88, 19
    BEGIN
        NAME "ine_ar_po_number"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 10
        FONT "Arial" 8
    END
    
    STATICTEXT 02010, "Order Number:", 40, 201, 107, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_order_number"
        FONT "Arial" 8
    END
    
    INPUTE 03010, "", 150, 199, 64, 19
    BEGIN
        NAME "ine_order_number"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 7
        FONT "Arial" 8
    END
    
    STATICTEXT 02011, "Available:", 80, 222, 67, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_available"
        FONT "Arial" 8
    END
    
    INPUTE 03011, "", 150, 220, 192, 19
    BEGIN
        NAME "ine_available"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 23
        FONT "Arial" 8
    END
    
    STATICTEXT 02012, "Extended Price:", 37, 243, 110, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_ext_price"
        FONT "Arial" 8
    END
    INPUTN 03012, "", 150, 241, 80, 19
    BEGIN
        NAME "inn_ext_price"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        DECIMALREPLACE
        MASK "#####.00-"
        FONT "Arial" 8
    END
    
    STATICTEXT 02013, "Available number 1:", 6, 264, 141, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_nbr_1"
        FONT "Arial" 8
    END
    INPUTN 03013, "", 150, 262, 40, 19
    BEGIN
        NAME "inn_nbr_1"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        DECIMALREPLACE
        FONT "Arial" 8
    END
    
    STATICTEXT 02014, "Available number 2:", 6, 285, 141, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_nbr_2"
        FONT "Arial" 8
    END
    INPUTN 03014, "", 150, 283, 40, 19
    BEGIN
        NAME "inn_nbr_2"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        DECIMALREPLACE
        FONT "Arial" 8
    END
END

