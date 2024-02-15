//#charset: ISO-8859-1

// ASCII Resource File
// FUT_ARM02 - Customer Detail
// Barista Application Framework.  Copyright BASIS International Ltd

VERSION "4.0"

WINDOW 1000 "" 0010 0040 0435 0909
BEGIN
    NAME "win_fut_arm02"
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
    
    STATICTEXT 02003, "AR Type:", 66, 54, 61, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_ar_type"
        FONT "Arial" 8
    END
    
    INPUTE 03003, "", 130, 52, 44, 19
    BEGIN
        NAME "ine_ar_type"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 2
        FONT "Arial" 8
    END
    
    STATICTEXT 02004, "Salesperson Code:", 0, 75, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_slspsn_code"
        FONT "Arial" 8
    END
    
    INPUTE 03004, "", 130, 73, 40, 19
    BEGIN
        NAME "ine_slspsn_code"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 3
        FONT "Arial" 8
    END
    
    STATICTEXT 02005, "Terms Code:", 35, 96, 92, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_terms_code"
        FONT "Arial" 8
    END
    
    INPUTE 03005, "", 130, 94, 40, 19
    BEGIN
        NAME "ine_terms_code"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 2
        FONT "Arial" 8
    END
    
    STATICTEXT 02006, "Sales Discount Code:", 0, 117, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_disc_code"
        FONT "Arial" 8
    END
    
    INPUTE 03006, "", 130, 115, 40, 19
    BEGIN
        NAME "ine_disc_code"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 2
        FONT "Arial" 8
    END
    
    STATICTEXT 02007, "Distribution Code:", 0, 138, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_dist_code"
        FONT "Arial" 8
    END
    
    INPUTE 03007, "", 130, 136, 40, 19
    BEGIN
        NAME "ine_dist_code"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 2
        FONT "Arial" 8
    END
    
    STATICTEXT 02008, "Finance Charge?:", 5, 159, 122, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_finance_chg"
        FONT "Arial" 8
    END
    
    INPUTE 03008, "", 130, 157, 40, 19
    BEGIN
        NAME "ine_finance_chg"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 1
        FONT "Arial" 8
    END
    
    STATICTEXT 02009, "Sales Analysis (N/P/I):", 0, 180, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_sa_flag"
        FONT "Arial" 8
    END
    
    INPUTE 03009, "", 130, 178, 40, 19
    BEGIN
        NAME "ine_sa_flag"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 1
        FONT "Arial" 8
    END
    
    STATICTEXT 02010, "Total Users Per Feature?  (Y/N):", 0, 201, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_feat_user_flag"
        FONT "Arial" 8
    END
    
    INPUTE 03010, "", 130, 199, 40, 19
    BEGIN
        NAME "ine_feat_user_flag"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 1
        FONT "Arial" 8
    END
    
    STATICTEXT 02011, "Reserved For Add+on Use:", 0, 222, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_invoice_copy"
        FONT "Arial" 8
    END
    
    INPUTE 03011, "", 130, 220, 40, 19
    BEGIN
        NAME "ine_invoice_copy"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 1
        FONT "Arial" 8
    END
    
    STATICTEXT 02012, "Last invoice date:", 2, 243, 125, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_lastinv_date"
        FONT "Arial" 8
    END
    
    INPUTE 03012, "", 130, 241, 40, 19
    BEGIN
        NAME "ine_lastinv_date"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 3
        FONT "Arial" 8
    END
    
    STATICTEXT 02013, "Last payment date:", 0, 264, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_lastpay_date"
        FONT "Arial" 8
    END
    
    INPUTE 03013, "", 130, 262, 40, 19
    BEGIN
        NAME "ine_lastpay_date"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 3
        FONT "Arial" 8
    END
    
    STATICTEXT 02014, "Statements?:", 32, 285, 95, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_statements"
        FONT "Arial" 8
    END
    
    INPUTE 03014, "", 130, 283, 40, 19
    BEGIN
        NAME "ine_statements"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 1
        FONT "Arial" 8
    END
    
    STATICTEXT 02015, "Territory Code:", 20, 306, 107, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_territory"
        FONT "Arial" 8
    END
    
    INPUTE 03015, "", 130, 304, 40, 19
    BEGIN
        NAME "ine_territory"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 3
        FONT "Arial" 8
    END
    
    STATICTEXT 02016, "Customer Pricing Code:", 0, 327, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_pricing_code"
        FONT "Arial" 8
    END
    
    INPUTE 03016, "", 130, 325, 40, 19
    BEGIN
        NAME "ine_pricing_code"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 4
        FONT "Arial" 8
    END
    
    STATICTEXT 02017, "Disc Code A:", 37, 348, 90, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_disc_code_a"
        FONT "Arial" 8
    END
    
    INPUTE 03017, "", 130, 346, 40, 19
    BEGIN
        NAME "ine_disc_code_a"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 2
        FONT "Arial" 8
    END
    
    STATICTEXT 02018, "Standard Message Code:", 0, 369, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_message_code"
        FONT "Arial" 8
    END
    
    INPUTE 03018, "", 130, 367, 40, 19
    BEGIN
        NAME "ine_message_code"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 2
        FONT "Arial" 8
    END
    
    STATICTEXT 02019, "Tax Code:", 56, 390, 71, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_tax_code"
        FONT "Arial" 8
    END
    
    INPUTE 03019, "", 130, 388, 40, 19
    BEGIN
        NAME "ine_tax_code"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 2
        FONT "Arial" 8
    END
    
    STATICTEXT 02020, "Customer Type:", 14, 411, 113, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_cust_type"
        FONT "Arial" 8
    END
    
    INPUTE 03020, "", 130, 409, 40, 19
    BEGIN
        NAME "ine_cust_type"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 3
        FONT "Arial" 8
    END
    
    STATICTEXT 02021, "Invoice in Dm or Euro (D/E):", 0, 432, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_invoice_prcd"
        FONT "Arial" 8
    END
    
    INPUTE 03021, "", 130, 430, 40, 19
    BEGIN
        NAME "ine_invoice_prcd"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 1
        FONT "Arial" 8
    END
    
    STATICTEXT 02022, "Retain Detail Invoice History?:", 0, 453, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_inv_hist_flg"
        FONT "Arial" 8
    END
    
    INPUTE 03022, "", 130, 451, 40, 19
    BEGIN
        NAME "ine_inv_hist_flg"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 1
        FONT "Arial" 8
    END
    
    STATICTEXT 02023, "Credit Hold (Y/N/E):", 0, 474, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_cred_hold"
        FONT "Arial" 8
    END
    
    INPUTE 03023, "", 130, 472, 40, 19
    BEGIN
        NAME "ine_cred_hold"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 1
        FONT "Arial" 8
    END
    
    STATICTEXT 02024, "Linked to Customer Number:", 0, 495, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_link_to_cust"
        FONT "Arial" 8
    END
    
    INPUTE 03024, "", 130, 493, 56, 19
    BEGIN
        NAME "ine_link_to_cust"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 6
        FONT "Arial" 8
    END
    
    STATICTEXT 02025, "Customer Product Prefix:", 0, 516, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_product_prefix"
        FONT "Arial" 8
    END
    
    INPUTE 03025, "", 130, 514, 40, 19
    BEGIN
        NAME "ine_product_prefix"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 3
        FONT "Arial" 8
    END
    
    STATICTEXT 02026, "Rental Perc1:", 34, 537, 93, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_rental_perc1"
        FONT "Arial" 8
    END
    
    INPUTE 03026, "", 130, 535, 40, 19
    BEGIN
        NAME "ine_rental_perc1"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 4
        FONT "Arial" 8
    END
    
    STATICTEXT 02027, "Rental Perc2:", 34, 558, 93, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_rental_perc2"
        FONT "Arial" 8
    END
    
    INPUTE 03027, "", 130, 556, 40, 19
    BEGIN
        NAME "ine_rental_perc2"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 4
        FONT "Arial" 8
    END
    
    STATICTEXT 02028, "Rental Perc3:", 34, 579, 93, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_rental_perc3"
        FONT "Arial" 8
    END
    
    INPUTE 03028, "", 130, 577, 40, 19
    BEGIN
        NAME "ine_rental_perc3"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 4
        FONT "Arial" 8
    END
    
    STATICTEXT 02029, "Send Notice:", 37, 600, 90, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_send_notice"
        FONT "Arial" 8
    END
    
    INPUTE 03029, "", 130, 598, 40, 19
    BEGIN
        NAME "ine_send_notice"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 1
        FONT "Arial" 8
    END
    
    STATICTEXT 02030, "Reserved For Add+on Use:", 0, 621, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_reserved_str_3"
        FONT "Arial" 8
    END
    
    INPUTE 03030, "", 130, 619, 168, 19
    BEGIN
        NAME "ine_reserved_str_3"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 20
        FONT "Arial" 8
    END
    
    STATICTEXT 02031, "Aging Amount   Future:", 0, 642, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_aging_future"
        FONT "Arial" 8
    END
    INPUTN 03031, "", 130, 640, 80, 19
    BEGIN
        NAME "inn_aging_future"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        DECIMALREPLACE
        MASK "#####.00-"
        FONT "Arial" 8
    END
    
    STATICTEXT 02032, "Aging Amount   Current:", 0, 663, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_aging_cur"
        FONT "Arial" 8
    END
    INPUTN 03032, "", 130, 661, 80, 19
    BEGIN
        NAME "inn_aging_cur"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        DECIMALREPLACE
        MASK "#####.00-"
        FONT "Arial" 8
    END
    
    STATICTEXT 02033, "Aging Amount    30 Days:", 0, 684, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_aging_30"
        FONT "Arial" 8
    END
    INPUTN 03033, "", 130, 682, 80, 19
    BEGIN
        NAME "inn_aging_30"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        DECIMALREPLACE
        MASK "#####.00-"
        FONT "Arial" 8
    END
    
    STATICTEXT 02034, "Aging Amount    60 Days:", 0, 705, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_aging_60"
        FONT "Arial" 8
    END
    INPUTN 03034, "", 130, 703, 80, 19
    BEGIN
        NAME "inn_aging_60"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        DECIMALREPLACE
        MASK "#####.00-"
        FONT "Arial" 8
    END
    
    STATICTEXT 02035, "Aging Amount    90 Days:", 0, 726, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_aging_90"
        FONT "Arial" 8
    END
    INPUTN 03035, "", 130, 724, 80, 19
    BEGIN
        NAME "inn_aging_90"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        DECIMALREPLACE
        MASK "#####.00-"
        FONT "Arial" 8
    END
    
    STATICTEXT 02036, "Aging Amount   120 Days:", 0, 747, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_aging_120"
        FONT "Arial" 8
    END
    INPUTN 03036, "", 130, 745, 80, 19
    BEGIN
        NAME "inn_aging_120"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        DECIMALREPLACE
        MASK "#####.00-"
        FONT "Arial" 8
    END
    
    STATICTEXT 02037, "Credit Limit:", 41, 768, 86, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_credit_limit"
        FONT "Arial" 8
    END
    INPUTN 03037, "", 130, 766, 80, 19
    BEGIN
        NAME "inn_credit_limit"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        DECIMALREPLACE
        MASK "#####.00-"
        FONT "Arial" 8
    END
    
    STATICTEXT 02038, "Reserved For Add+on Use:", 0, 789, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_pricing_level"
        FONT "Arial" 8
    END
    INPUTN 03038, "", 130, 787, 56, 19
    BEGIN
        NAME "inn_pricing_level"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        DECIMALREPLACE
        MASK "##.00-"
        FONT "Arial" 8
    END
    
    STATICTEXT 02039, "Reserved For Add+on Use:", 0, 810, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_allowed_resets"
        FONT "Arial" 8
    END
    INPUTN 03039, "", 130, 808, 40, 19
    BEGIN
        NAME "inn_allowed_resets"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        DECIMALREPLACE
        FONT "Arial" 8
    END
    
    STATICTEXT 02040, "Reserved For Add+on Use:", 0, 831, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_rental_billing"
        FONT "Arial" 8
    END
    INPUTN 03040, "", 130, 829, 40, 19
    BEGIN
        NAME "inn_rental_billing"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        DECIMALREPLACE
        FONT "Arial" 8
    END
    
    STATICTEXT 02041, "Reserved For Add+on Use:", 0, 852, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_reserved_num_4"
        FONT "Arial" 8
    END
    INPUTN 03041, "", 130, 850, 40, 19
    BEGIN
        NAME "inn_reserved_num_4"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        DECIMALREPLACE
        FONT "Arial" 8
    END
END

