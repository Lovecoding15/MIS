//#charset: ISO-8859-1

// ASCII Resource File
// FUT_TMM01 - Telemaster Masterfile
// Barista Application Framework.  Copyright BASIS International Ltd

VERSION "4.0"

WINDOW 1000 "" 0010 0040 0585 1249
BEGIN
    NAME "win_fut_tmm01"
    MANAGESYSCOLOR
    KEYBOARDNAVIGATION
    DIALOGBEHAVIOR
    EVENTMASK 1136656524
    INVISIBLE
    FONT "Arial" 8
    HSCROLLBAR
    VSCROLLBAR
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
    
    STATICTEXT 02002, "Main Sort:", 55, 33, 72, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_name_sort"
        FONT "Arial" 8
    END
    
    INPUTE 03002, "", 130, 31, 168, 19
    BEGIN
        NAME "ine_name_sort"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 20
        FONT "Arial" 8
    END
    
    STATICTEXT 02003, "2nd Sort (Firm or Name):", 0, 54, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_contact_sort"
        FONT "Arial" 8
    END
    
    INPUTE 03003, "", 130, 52, 128, 19
    BEGIN
        NAME "ine_contact_sort"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 15
        FONT "Arial" 8
    END
    
    STATICTEXT 02004, "Telephone Number:", 0, 75, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_phone_number"
        FONT "Arial" 8
    END
    
    INPUTE 03004, "", 130, 73, 120, 19
    BEGIN
        NAME "ine_phone_number"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 14
        FONT "Arial" 8
    END
    
    STATICTEXT 02005, "Contact Name Tm:", 0, 96, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_cont_name"
        FONT "Arial" 8
    END
    
    INPUTE 03005, "", 130, 94, 248, 19
    BEGIN
        NAME "ine_cont_name"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 30
        FONT "Arial" 8
    END
    
    STATICTEXT 02006, "Contact Title Tm:", 6, 117, 121, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_cont_title"
        FONT "Arial" 8
    END
    
    INPUTE 03006, "", 130, 115, 248, 19
    BEGIN
        NAME "ine_cont_title"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 30
        FONT "Arial" 8
    END
    
    STATICTEXT 02007, "Contact Firm Name Tm:", 0, 138, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_cont_firm"
        FONT "Arial" 8
    END
    
    INPUTE 03007, "", 130, 136, 248, 19
    BEGIN
        NAME "ine_cont_firm"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 30
        FONT "Arial" 8
    END
    
    STATICTEXT 02008, "Address 1:", 50, 159, 77, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_address_1"
        FONT "Arial" 8
    END
    
    INPUTE 03008, "", 130, 157, 248, 19
    BEGIN
        NAME "ine_address_1"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 30
        FONT "Arial" 8
    END
    
    STATICTEXT 02009, "Address 2:", 50, 180, 77, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_address_2"
        FONT "Arial" 8
    END
    
    INPUTE 03009, "", 130, 178, 248, 19
    BEGIN
        NAME "ine_address_2"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 30
        FONT "Arial" 8
    END
    
    STATICTEXT 02010, "Telemkt City:", 35, 201, 92, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_city"
        FONT "Arial" 8
    END
    
    INPUTE 03010, "", 130, 199, 208, 19
    BEGIN
        NAME "ine_city"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 25
        FONT "Arial" 8
    END
    
    STATICTEXT 02011, "State:", 85, 222, 42, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_state"
        FONT "Arial" 8
    END
    
    INPUTE 03011, "", 130, 220, 40, 19
    BEGIN
        NAME "ine_state"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 2
        FONT "Arial" 8
    END
    
    STATICTEXT 02012, "Zip/Postal Code:", 9, 243, 118, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_zip_code"
        FONT "Arial" 8
    END
    
    INPUTE 03012, "", 130, 241, 80, 19
    BEGIN
        NAME "ine_zip_code"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 9
        FONT "Arial" 8
    END
    
    STATICTEXT 02013, "Lang Code:", 47, 264, 80, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_lang_code"
        FONT "Arial" 8
    END
    
    INPUTE 03013, "", 130, 262, 40, 19
    BEGIN
        NAME "ine_lang_code"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 2
        FONT "Arial" 8
    END
    
    STATICTEXT 02014, "Available:", 60, 285, 67, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_available"
        FONT "Arial" 8
    END
    
    INPUTE 03014, "", 130, 283, 40, 19
    BEGIN
        NAME "ine_available"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 1
        FONT "Arial" 8
    END
    
    STATICTEXT 02015, "Customer Nbr:", 22, 306, 105, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_customer_nbr"
        FONT "Arial" 8
    END
    
    INPUTE 03015, "", 130, 304, 61, 19
    BEGIN
        NAME "ine_customer_nbr"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 6
        FONT "Arial" 8
    END
    
    STATICTEXT 04015, "", 226, 306, 200, 17
    BEGIN
        NOT OPAQUE
        NOT WORDWRAP
        NAME "dis_customer_nbr"
        FOREGROUNDCOLOR RGB(0,0,96)
        FONT "Arial" 8
    END
    MENUBUTTON 20015, "", 191, 304, 30, 19
    BEGIN
        NAME "tbnf_customer_nbr"
    END
    
    STATICTEXT 02016, "Record ID:", 55, 327, 72, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_record_id_l"
        FONT "Arial" 8
    END
    
    INPUTE 03016, "", 130, 325, 40, 19
    BEGIN
        NAME "ine_record_id_l"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 1
        FONT "Arial" 8
    END
    
    STATICTEXT 02017, "Customer Type:", 14, 348, 113, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_cust_type"
        FONT "Arial" 8
    END
    
    INPUTE 03017, "", 130, 346, 40, 19
    BEGIN
        NAME "ine_cust_type"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 3
        FONT "Arial" 8
    END
    
    STATICTEXT 02018, "Record ID:", 55, 369, 72, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_record_id_i"
        FONT "Arial" 8
    END
    
    INPUTE 03018, "", 130, 367, 40, 19
    BEGIN
        NAME "ine_record_id_i"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 1
        FONT "Arial" 8
    END
    
    STATICTEXT 02019, "Sales Discount Code:", 0, 390, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_disc_code"
        FONT "Arial" 8
    END
    
    INPUTE 03019, "", 130, 388, 40, 19
    BEGIN
        NAME "ine_disc_code"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 2
        FONT "Arial" 8
    END
    
    STATICTEXT 02020, "Record ID:", 55, 411, 72, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_record_id_a"
        FONT "Arial" 8
    END
    
    INPUTE 03020, "", 130, 409, 40, 19
    BEGIN
        NAME "ine_record_id_a"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 1
        FONT "Arial" 8
    END
    
    STATICTEXT 02021, "Terms Code:", 35, 432, 92, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_terms_code"
        FONT "Arial" 8
    END
    
    INPUTE 03021, "", 130, 430, 40, 19
    BEGIN
        NAME "ine_terms_code"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 2
        FONT "Arial" 8
    END
    
    STATICTEXT 02022, "Main Sort:", 55, 453, 72, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_tm_number"
        FONT "Arial" 8
    END
    
    INPUTE 03022, "", 130, 451, 61, 19
    BEGIN
        NAME "ine_tm_number"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 6
        FONT "Arial" 8
    END
    
    STATICTEXT 02023, "Country:", 67, 474, 60, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_country_code"
        FONT "Arial" 8
    END
    
    INPUTE 03023, "", 130, 472, 40, 19
    BEGIN
        NAME "ine_country_code"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 2
        FONT "Arial" 8
    END
    
    STATICTEXT 02024, "Disc Code A:", 37, 495, 90, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_disc_code_a"
        FONT "Arial" 8
    END
    
    INPUTE 03024, "", 130, 493, 40, 19
    BEGIN
        NAME "ine_disc_code_a"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 2
        FONT "Arial" 8
    END
    
    STATICTEXT 02025, "Available:", 60, 516, 67, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_available0"
        FONT "Arial" 8
    END
    
    INPUTE 03025, "", 130, 514, 40, 19
    BEGIN
        NAME "ine_available0"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 1
        FONT "Arial" 8
    END
    
    STATICTEXT 02026, "Territory Code:", 20, 537, 107, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_territory"
        FONT "Arial" 8
    END
    
    INPUTE 03026, "", 130, 535, 40, 19
    BEGIN
        NAME "ine_territory"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 3
        FONT "Arial" 8
    END
    
    STATICTEXT 02027, "Next Call Date yyyymmdd:", 0, 558, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_apdir_dt"
        FONT "Arial" 8
    END
    
    INPUTE 03027, "", 130, 556, 72, 19
    BEGIN
        NAME "ine_apdir_dt"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 8
        FONT "Arial" 8
    END
    
    STATICTEXT 02028, "Slsperson:", 50, 579, 77, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_slsperson"
        FONT "Arial" 8
    END
    
    INPUTE 03028, "", 130, 577, 40, 19
    BEGIN
        NAME "ine_slsperson"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 3
        FONT "Arial" 8
    END
    
    STATICTEXT 02029, "Order Date Tm yyyymmdd:", 0, 600, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_plan_dt"
        FONT "Arial" 8
    END
    
    INPUTE 03029, "", 130, 598, 72, 19
    BEGIN
        NAME "ine_plan_dt"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 8
        FONT "Arial" 8
    END
    
    STATICTEXT 02030, "Csr Rep:", 66, 621, 61, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_goals_dt"
        FONT "Arial" 8
    END
    
    INPUTE 03030, "", 130, 619, 72, 19
    BEGIN
        NAME "ine_goals_dt"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 8
        FONT "Arial" 8
    END
    
    STATICTEXT 02031, "Quote Follow up Date:", 0, 642, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_ust_id"
        FONT "Arial" 8
    END
    
    INPUTE 03031, "", 130, 640, 136, 19
    BEGIN
        NAME "ine_ust_id"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 16
        FONT "Arial" 8
    END
    
    STATICTEXT 02032, "Start Date yyyymmdd:", 0, 663, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_qstnr_dt"
        FONT "Arial" 8
    END
    
    INPUTE 03032, "", 130, 661, 72, 19
    BEGIN
        NAME "ine_qstnr_dt"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 8
        FONT "Arial" 8
    END
    
    STATICTEXT 02033, "Fax Telephone Number:", 0, 684, 117, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_available1"
        FONT "Arial" 8
    END
    
    INPUTE 03033, "", 120, 682, 40, 19
    BEGIN
        NAME "ine_available1"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 1
        FONT "Arial" 8
    END
    
    STATICTEXT 02034, "Send Literature:", 2, 705, 115, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_send_lit"
        FONT "Arial" 8
    END
    
    INPUTE 03034, "", 120, 703, 40, 19
    BEGIN
        NAME "ine_send_lit"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 1
        FONT "Arial" 8
    END
    
    STATICTEXT 02035, "Quotation Date yyyymmdd:", 0, 726, 117, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_quote_dt"
        FONT "Arial" 8
    END
    
    INPUTE 03035, "", 120, 724, 72, 19
    BEGIN
        NAME "ine_quote_dt"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 8
        FONT "Arial" 8
    END
    
    STATICTEXT 02036, "Dear (Salutation):", 0, 747, 117, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_apdir_flag"
        FONT "Arial" 8
    END
    
    INPUTE 03036, "", 120, 745, 40, 19
    BEGIN
        NAME "ine_apdir_flag"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 1
        FONT "Arial" 8
    END
    
    STATICTEXT 02037, "Plan Flag:", 49, 768, 68, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_plan_flag"
        FONT "Arial" 8
    END
    
    INPUTE 03037, "", 120, 766, 40, 19
    BEGIN
        NAME "ine_plan_flag"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 1
        FONT "Arial" 8
    END
    
    STATICTEXT 02038, "Goals Flag:", 37, 789, 80, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_goals_flag"
        FONT "Arial" 8
    END
    
    INPUTE 03038, "", 120, 787, 40, 19
    BEGIN
        NAME "ine_goals_flag"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 1
        FONT "Arial" 8
    END
    
    STATICTEXT 02039, "Qstnr Flag:", 39, 810, 78, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_qstnr_flag"
        FONT "Arial" 8
    END
    
    INPUTE 03039, "", 120, 808, 40, 19
    BEGIN
        NAME "ine_qstnr_flag"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 1
        FONT "Arial" 8
    END
    
    STATICTEXT 02040, "Link Flag:", 51, 831, 66, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_link_flag"
        FONT "Arial" 8
    END
    
    INPUTE 03040, "", 120, 829, 40, 19
    BEGIN
        NAME "ine_link_flag"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 1
        FONT "Arial" 8
    END
    
    STATICTEXT 02041, "Bblist Flag:", 39, 852, 78, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_bblist_flag"
        FONT "Arial" 8
    END
    
    INPUTE 03041, "", 120, 850, 40, 19
    BEGIN
        NAME "ine_bblist_flag"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 1
        FONT "Arial" 8
    END
    
    STATICTEXT 02042, "Fx Num:", 60, 873, 57, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_fax_num"
        FONT "Arial" 8
    END
    
    INPUTE 03042, "", 120, 871, 120, 19
    BEGIN
        NAME "ine_fax_num"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 14
        FONT "Arial" 8
    END
    
    STATICTEXT 02043, "Address 3:", 40, 894, 77, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_address_3"
        FONT "Arial" 8
    END
    
    INPUTE 03043, "", 120, 892, 248, 19
    BEGIN
        NAME "ine_address_3"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 30
        FONT "Arial" 8
    END
    
    STATICTEXT 02044, "Address 4:", 40, 915, 77, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_address_4"
        FONT "Arial" 8
    END
    
    INPUTE 03044, "", 120, 913, 248, 19
    BEGIN
        NAME "ine_address_4"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 30
        FONT "Arial" 8
    END
    
    STATICTEXT 02045, "Reserved For Dealer Use:", 0, 936, 117, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_dealer_str"
        FONT "Arial" 8
    END
    
    INPUTE 03045, "", 120, 934, 40, 19
    BEGIN
        NAME "ine_dealer_str"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 1
        FONT "Arial" 8
    END
    
    STATICTEXT 02046, "User Defined Memo (25 ea):", 0, 957, 117, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_usr_def_memo"
        FONT "Arial" 8
    END
    
    INPUTE 03046, "", 120, 955, 400, 19
    BEGIN
        NAME "ine_usr_def_memo"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 50
        FONT "Arial" 8
    END
    
    STATICTEXT 02047, "User Defined Dates (8 ea):", 0, 978, 117, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_usr_def_dt"
        FONT "Arial" 8
    END
    
    INPUTE 03047, "", 120, 976, 72, 19
    BEGIN
        NAME "ine_usr_def_dt"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 8
        FONT "Arial" 8
    END
    
    STATICTEXT 02048, "Osas Rsl Yn:", 26, 999, 91, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_osas_rsl_yn"
        FONT "Arial" 8
    END
    
    INPUTE 03048, "", 120, 997, 40, 19
    BEGIN
        NAME "ine_osas_rsl_yn"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 1
        FONT "Arial" 8
    END
    
    STATICTEXT 02049, "Addon Rsl Yn:", 20, 1020, 97, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_addon_rsl_yn"
        FONT "Arial" 8
    END
    
    INPUTE 03049, "", 120, 1018, 40, 19
    BEGIN
        NAME "ine_addon_rsl_yn"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 1
        FONT "Arial" 8
    END
    
    STATICTEXT 02050, "Pvx Yn:", 66, 1041, 51, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_pvx_yn"
        FONT "Arial" 8
    END
    
    INPUTE 03050, "", 120, 1039, 40, 19
    BEGIN
        NAME "ine_pvx_yn"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 1
        FONT "Arial" 8
    END
    
    STATICTEXT 02051, "Ssi Rsl Yn:", 41, 1062, 76, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_ssi_rsl_yn"
        FONT "Arial" 8
    END
    
    INPUTE 03051, "", 120, 1060, 40, 19
    BEGIN
        NAME "ine_ssi_rsl_yn"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 1
        FONT "Arial" 8
    END
    
    STATICTEXT 02052, "Richter Eu Yn:", 19, 1083, 98, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_richter_eu_yn"
        FONT "Arial" 8
    END
    
    INPUTE 03052, "", 120, 1081, 40, 19
    BEGIN
        NAME "ine_richter_eu_yn"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 1
        FONT "Arial" 8
    END
    
    STATICTEXT 02053, "Tbred Yn:", 49, 1104, 68, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_tbred_yn"
        FONT "Arial" 8
    END
    
    INPUTE 03053, "", 120, 1102, 40, 19
    BEGIN
        NAME "ine_tbred_yn"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 1
        FONT "Arial" 8
    END
    
    STATICTEXT 02054, "Hsd Eu Yn:", 40, 1125, 77, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_hsd_eu_yn"
        FONT "Arial" 8
    END
    
    INPUTE 03054, "", 120, 1123, 40, 19
    BEGIN
        NAME "ine_hsd_eu_yn"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 1
        FONT "Arial" 8
    END
    
    STATICTEXT 02055, "User Defined y/n (1 ea):", 0, 1146, 117, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_ssi_eu_yn"
        FONT "Arial" 8
    END
    
    INPUTE 03055, "", 120, 1144, 40, 19
    BEGIN
        NAME "ine_ssi_eu_yn"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 1
        FONT "Arial" 8
    END
    
    STATICTEXT 02056, "User Defined Numbers (10 ea):", 0, 1167, 117, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_usr_def_num"
        FONT "Arial" 8
    END
    INPUTN 03056, "", 120, 1165, 104, 19
    BEGIN
        NAME "inn_usr_def_num"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        DECIMALREPLACE
        MASK "########.00-"
        FONT "Arial" 8
    END
END

