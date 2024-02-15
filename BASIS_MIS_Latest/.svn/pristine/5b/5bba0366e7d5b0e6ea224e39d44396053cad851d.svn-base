//#charset: windows-1252

VERSION "4.0"

WINDOW 101 "Main" 100 100 900 215
BEGIN
    EVENTMASK 1139803660
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Main"
    BUTTON 100, "&Customer", 330, 25, 120, 25
    BEGIN
        NAME "customer"
    END

    BUTTON 101, "&Serial Number", 330, 60, 120, 25
    BEGIN
        NAME "serial_number"
    END

    EDIT 102, "", 110, 25, 90, 25
    BEGIN
        CLIENTEDGE
        NAME "user_id"
        PASSWORDENTRY
        NOT DRAGENABLED
    END

    STATICTEXT 103, "AddOn User ID", 20, 30, 80, 25
    BEGIN
        NAME "user_id_lbl"
    END

    STATICTEXT 104, "Password", 20, 65, 80, 25
    BEGIN
        NAME "password_lbl"
    END

    EDIT 105, "", 110, 60, 90, 25
    BEGIN
        CLIENTEDGE
        NAME "password"
        PASSWORDENTRY
        NOT DRAGENABLED
    END

    BUTTON 120, "E&xit", 750, 25, 120, 25
    BEGIN
        NAME "exit"
    END

    BUTTON 1, "&Login", 110, 95, 90, 25
    BEGIN
        DISABLED
        NAME "login"
    END

    GROUPBOX 109, "Log In", 10, 5, 210, 130
    BEGIN
        NAME "login_grp"
    END

    GROUPBOX 110, "Select Option", 270, 5, 400, 200
    BEGIN
        NAME "select_grp"
    END

    BUTTON 111, "&Ops Menu", 490, 25, 120, 25
    BEGIN
        INVISIBLE
        NAME "ops_menu_btn"
        SHORTCUE "Operations Program Selections"
    END

    BUTTON 112, "&Email Search", 330, 95, 120, 25
    BEGIN
        NAME "email_btn"
    END

    LISTBUTTON 106, "", 10, 150, 210, 65
    BEGIN
        NAME "firm_list"
        SELECTIONHEIGHT 20
    END

    BUTTON 107, "Directcomm Status", 750, 95, 120, 25
    BEGIN
        INVISIBLE
        NAME "directCommTestBtn"
        SHORTCUE "Check the status of the directcomm server"
    END

    BUTTON 108, "Pricing Obj Test Int", 750, 60, 120, 25
    BEGIN
        INVISIBLE
        NAME "pricingObjTestIntBtn"
        SHORTCUE "New Pricing Objects Test Interface"
    END

    BUTTON 113, "Perpetual Exp Report", 330, 130, 120, 25
    BEGIN
        NAME "perpetExpRepBtn"
    END

    BUTTON 114, "Email References", 490, 60, 120, 25
    BEGIN
        INVISIBLE
        NAME "emailReferenceBtn"
    END

    BUTTON 115, "Backup Licenses", 490, 95, 120, 25
    BEGIN
        INVISIBLE
        NAME "backupLicenseBtn"
    END

    BUTTON 116, "HTML Email Editor", 490, 130, 120, 25
    BEGIN
        NAME "htmlEmailEditorbtn"
    END

    BUTTON 117, "SN w/Addon Features\015\n", 750, 130, 120, 25
    BEGIN
        INVISIBLE
        NAME "SNwithAddonFeaturesBTN"
    END

    EDIT 118, "Production", 10, 180, 210, 25
    BEGIN
        BACKGROUNDCOLOR RGB(255,128,128)
        FONT "Default" 10,bold
        JUSTIFICATION 16384
        MAXLENGTH 32767
        NAME "appHost"
        READONLY
        NOT FOCUSABLE
        SPELLCHECKED
        NOT DRAGENABLED
    END

END

WINDOW 103 " Customer" 100 100 1000 625
BEGIN
    EVENTMASK 1139803660
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Customer"
    STATICTEXT 1100, "Customer ", 5, 10, 75, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "custnum_lbl"
    END

    EDIT 100, "", 85, 10, 70, 20
    BEGIN
        CLIENTEDGE
        NAME "customer_nbr"
        SHORTCUE "Customer number to search"
    END

    EDIT 105, "", 155, 10, 320, 20
    BEGIN
        CLIENTEDGE
        NAME "Name"
        SHORTCUE "Customer business name"
    END

    STATICTEXT 1115, "Phone ", 290, 35, 40, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "phone_lbl"
    END

    EDIT 115, "", 335, 30, 140, 20
    BEGIN
        CLIENTEDGE
        NAME "phone"
    END

    STATICTEXT 1110, "Main Contact ", 5, 34, 75, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "main_contact_lbl"
    END

    EDIT 110, "", 85, 30, 200, 20
    BEGIN
        CLIENTEDGE
        NAME "main_contact"
        SHORTCUE "Name of person who is the main contact"
    END

    STATICTEXT 1125, "Fax ", 290, 55, 40, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "fax_lbl"
    END

    EDIT 125, "", 335, 50, 140, 20
    BEGIN
        CLIENTEDGE
        NAME "fax"
    END

    STATICTEXT 1155, "Addr 1 ", 10, 95, 40, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "street_lbl"
    END

    EDIT 155, "", 55, 95, 190, 20
    BEGIN
        CLIENTEDGE
        NAME "address1"
    END

    EDIT 160, " ", 55, 115, 190, 20
    BEGIN
        CLIENTEDGE
        NAME "address2"
    END

    EDIT 165, " ", 55, 135, 190, 20
    BEGIN
        CLIENTEDGE
        NAME "address3"
    END

    EDIT 170, " ", 55, 155, 190, 20
    BEGIN
        CLIENTEDGE
        NAME "address4"
    END

    STATICTEXT 1190, "Country ", 248, 135, 45, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "country_lbl"
    END

    LISTBUTTON 190, "", 295, 135, 190, 90
    BEGIN
        NAME "country"
    END

    STATICTEXT 1175, "City ", 250, 95, 40, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "city_lbl"
    END

    EDIT 175, "", 295, 95, 190, 20
    BEGIN
        CLIENTEDGE
        NAME "city"
    END

    STATICTEXT 1180, "State ", 253, 115, 40, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "state_lbl"
    END

    LISTBUTTON 180, "", 295, 115, 50, 90
    BEGIN
        NAME "state"
    END

    STATICTEXT 1185, "Postal Code", 345, 115, 65, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "postal_code_lbl"
    END

    EDIT 185, "", 415, 115, 70, 20
    BEGIN
        CLIENTEDGE
        NAME "postal_code"
    END

    STATICTEXT 1040, "*  *  *  C R E D I T    H O L D  * * *", 60, 75, 185, 20
    BEGIN
        FOREGROUNDCOLOR RGB(255,0,0)
        INVISIBLE
        NAME "credit_hold"
    END

    STATICTEXT 1205, "Salesperson ", 490, 50, 80, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "salesperson_lbl"
    END

    LISTBUTTON 205, "", 570, 50, 140, 90
    BEGIN
        NAME "salesperson"
    END

    STATICTEXT 1210, "Customer Type ", 490, 70, 80, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "customer_type_lbl"
    END

    LISTBUTTON 210, "", 570, 70, 140, 90
    BEGIN
        NAME "customer_type"
    END

    STATICTEXT 1215, "Discount ", 490, 90, 80, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "discount_lbl"
    END

    LISTBUTTON 215, "", 570, 90, 140, 90
    BEGIN
        NAME "discount"
    END

    STATICTEXT 1220, "Terms ", 490, 110, 80, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "terms_lbl"
    END

    LISTBUTTON 220, "", 570, 110, 140, 90
    BEGIN
        NAME "terms"
    END

    STATICTEXT 1225, "Tax Code ", 490, 130, 80, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "tax_lbl"
    END

    LISTBUTTON 225, "", 570, 130, 140, 90
    BEGIN
        NAME "tax_code"
    END

    STATICTEXT 1200, "Ship via ", 490, 30, 80, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "ship_lbl"
    END

    EDIT 200, " ", 570, 30, 140, 20
    BEGIN
        CLIENTEDGE
        NAME "ship_via"
    END

    BUTTON 305, "E&xit", 920, 35, 70, 20
    BEGIN
        NAME "exit"
        SHORTCUE "Exit and return to main"
    END

    CHECKBOX 240, "&No invoice copy", 720, 150, 105, 20
    BEGIN
        NAME "invoice_copy"
        SHORTCUE "Check to avoid printing customer copy of invoices"
        TEXTLEFT
    END

    STATICTEXT 1160, "Addr 2 ", 10, 115, 40, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "addr2_lbl"
    END

    STATICTEXT 1165, "Addr 3 ", 10, 135, 40, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "addr3_lbl"
    END

    STATICTEXT 1170, "Addr 4 ", 10, 155, 40, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "addr4_lbl"
    END

    EDIT 120, "", 85, 50, 200, 20
    BEGIN
        CLIENTEDGE
        NAME "email"
    END

    STATICTEXT 1120, "Main Email ", 5, 55, 75, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    LISTBOX 300, "", 720, 10, 190, 119
    BEGIN
        CLIENTEDGE
        MULTISELECT
        NAME "options"
    END

    CHECKBOX 230, "&Statements", 740, 130, 85, 20
    BEGIN
        NAME "statements"
        SHORTCUE "Send monthly statement"
        TEXTLEFT
    END

    BUTTON 1, "&Ok", 920, 10, 70, 20
    BEGIN
        NAME "ok_btn"
    END

    STATICTEXT 1195, "Credit Limit ", 490, 10, 80, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "credit_limit_lbl"
    END

    EDIT 195, "", 570, 10, 140, 20
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "credit_limit"
    END

    STATICTEXT 1310, "", 834, 200, 150, 20
    BEGIN
        FOREGROUNDCOLOR RGB(255,0,0)
        JUSTIFICATION 32768
        NAME "message"
    END

    CHECKBOX 245, "&Past due notice", 725, 170, 100, 20
    BEGIN
        NAME "send_notice"
        SHORTCUE "Check to send account past due notices"
        TEXTLEFT
    END

    CHECKBOX 250, "&Credit Hold", 835, 130, 80, 20
    BEGIN
        NAME "credit_hold_cbox"
        TEXTLEFT
    END

    BUTTON 1315, "&Report", 920, 85, 70, 20
    BEGIN
        NAME "report_btn"
        SHORTCUE "Customer Sales Report"
    END

    LISTBUTTON 227, "", 570, 150, 140, 90
    BEGIN
        NAME "language"
    END

    STATICTEXT 1227, "Language", 489, 150, 80, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "language_lbl"
    END

    EDIT 1316, "", 295, 155, 190, 20
    BEGIN
        CLIENTEDGE
        NAME "ust_id"
    END

    STATICTEXT 1317, "UST ID", 252, 155, 39, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "ust_lbl"
    END

    BUTTON 1318, "&Bcomm", 920, 60, 70, 20
    BEGIN
        NAME "bcomm"
        SHORTCUE "Launch B-Commerce for this customer"
    END

    LISTBUTTON 228, "", 570, 170, 140, 90
    BEGIN
        NAME "discount_a"
        SHORTCUE "AddOn Partner new product discount"
    END

    STATICTEXT 1228, "SAM Discount", 489, 170, 80, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "discounta_lbl"
    END

    CHECKBOX 251, "&Excl BASIS", 840, 150, 75, 20
    BEGIN
        NAME "exclPerpetEmail"
        SHORTCUE "Exclude BASIS Email Addr from Perpetual Notices"
        TEXTLEFT
    END

    BUTTON 1319, "Dashboard", 920, 110, 70, 20
    BEGIN
        NAME "dashboardBtn"
    END

    BUTTON 1320, "Emergency", 920, 135, 70, 20
    BEGIN
        NAME "emergencyBtn"
    END

    CHECKBOX 101, "Active Renew", 825, 170, 90, 20
    BEGIN
        NAME "active_renew"
        SHORTCUE "Setting Active Renew will cause auto generated SAM, RNT and DVK contract renewals to roll the contract dates when invoiced."
        TEXTLEFT
    END

END

WINDOW 104 "Serial Number " 100 100 1000 625
BEGIN
    NOT CLOSEBOX
    EVENTMASK 1139803660
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "serial_number"
    EDIT 101, "", 80, 5, 80, 20
    BEGIN
        CLIENTEDGE
        NAME "Serial_number"
    END

    TABCONTROL 117, "", 2, 27, 996, 590
    BEGIN
        AUTOMANAGEMENT
        MULTILINE
        NAME "sn_tab"
        TAB "&Details" 0 126
        TAB "Li&censing" 0 127
        TAB "SA&M" 0 133
        TAB "Related S&N's" 0 134
        TAB "End &User" 0 135
        TAB "Host Ids" 0 138
    END

    STATICTEXT 120, "Serial Number", 5, 5, 75, 20
    BEGIN
        NAME "serial_number_lbl"
    END

    CHILD-WINDOW 101, 126, 0, 0
    BEGIN
        NAME "Detail Child Window"
    END

    CHILD-WINDOW 102, 127, 0, 0
    BEGIN
        NAME "License Child Window"
    END

    BUTTON 1, "&Search", 165, 5, 70, 20
    BEGIN
        NAME "search_btn"
    END

    BUTTON 132, "E&xit", 905, 5, 90, 20
    BEGIN
        NAME "exit_btn"
    END

    CHILD-WINDOW 103, 133, 0, 0
    BEGIN
        NAME "Sam Child Window"
    END

    CHILD-WINDOW 104, 134, 0, 0
    BEGIN
        NAME "Links Child Window"
    END

    CHILD-WINDOW 105, 135, 0, 0
    BEGIN
        NAME "End User Child Window"
    END

    BUTTON 136, "&Bcomm", 240, 5, 70, 20
    BEGIN
        NAME "bcomm"
        SHORTCUE "Launch B-Commerce for this customer"
    END

    BUTTON 137, "AudevBuyNow", 315, 5, 110, 20
    BEGIN
        INVISIBLE
        NAME "buynow"
    END

    CHILD-WINDOW 106, 138, 0, 0
    BEGIN
        NAME "Host Ids Child Window"
    END

    EDIT 142, "", 520, 5, 90, 20
    BEGIN
        INVISIBLE
        LONGCUE "From the PO Number of the original sale."
        MAXLENGTH 32767
        NAME "MARSHACode"
        SHORTCUE "From the PO Number of the original sale."
        SPELLCHECKED
        NOT DRAGENABLED
    END

    STATICTEXT 141, "MARSHA Code:", 426, 9, 90, 20
    BEGIN
        INVISIBLE
        JUSTIFICATION 32768
        NAME "marrMarshaCodeLbl"
        NOT WORDWRAP
    END

END

WINDOW 105 "Select Invoices" 100 100 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 1139803140
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "ic_select"
    NOT SIZABLE
    STATICTEXT 100, "Unbilled Invoices", 30, 60, 100, 20
    BEGIN
        NAME "unbilled_lbl"
    END

    LISTBOX 101, "", 30, 80, 120, 80
    BEGIN
        CLIENTEDGE
        MULTISELECT
        NAME "unbilled_lbox"
    END

    STATICTEXT 102, "Selected Invoices", 330, 60, 100, 20
    BEGIN
        NAME "selected_lbl"
    END

    LISTBOX 103, "", 330, 80, 120, 80
    BEGIN
        CLIENTEDGE
        MULTISELECT
        NAME "selected_lbox"
    END

    BUTTON 104, "&Add >", 190, 90, 90, 20
    BEGIN
        NAME "add_btn"
    END

    BUTTON 105, "< &Remove", 190, 130, 90, 20
    BEGIN
        NAME "remove_btn"
    END

    BUTTON 106, "&Edit Selections", 340, 210, 110, 20
    BEGIN
        NAME "edit_btn"
    END

    BUTTON 107, "E&xit", 340, 290, 110, 20
    BEGIN
        NAME "cancel_btn"
    END

    STATICTEXT 108, "Starting Invoice", 30, 20, 90, 20
    BEGIN
        NAME "invoice_lbl"
    END

    EDIT 109, " ", 120, 20, 90, 20
    BEGIN
        CLIENTEDGE
        NAME "invoice"
    END

    BUTTON 1, "&Search", 220, 20, 90, 20
    BEGIN
        NAME "search_btn"
    END

    BUTTON 110, "Clear M Flag", 340, 250, 110, 20
    BEGIN
        NAME "clearFlagBtn"
    END

END

WINDOW 106 "Inter Company Charges" 100 100 500 400
BEGIN
    EVENTMASK 1139803660
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "ic_invoice"
    STATICTEXT 100, "Invoice", 20, 10, 50, 20
    BEGIN
        NAME "invoice_lbl"
    END

    EDIT 101, "", 70, 10, 90, 20
    BEGIN
        CLIENTEDGE
        NAME "Invoice"
    END

    BUTTON 102, "< &Back", 180, 10, 70, 20
    BEGIN
        NAME "back_btn"
    END

    BUTTON 103, "&Next >", 255, 10, 70, 20
    BEGIN
        NAME "forward_btn"
    END

    STATICTEXT 104, "", 20, 35, 150, 20
    BEGIN
        NAME "invoice_date"
    END

    STATICTEXT 105, "", 190, 35, 150, 20
    BEGIN
        NAME "order_date"
    END

    STATICTEXT 106, " ", 20, 60, 450, 20
    BEGIN
        NAME "cust"
    END

    LISTBOX 108, " \n", 10, 90, 480, 80
    BEGIN
        CLIENTEDGE
        MULTISELECT
        NAME "line_lbox"
    END

    EDIT 109, "", 140, 190, 40, 20
    BEGIN
        CLIENTEDGE
        DISABLED
        NAME "line_no"
    END

    EDIT 120, "", 140, 215, 80, 20
    BEGIN
        CLIENTEDGE
        NAME "dist_code"
    END

    EDIT 114, " ", 140, 240, 120, 20
    BEGIN
        CLIENTEDGE
        DISABLED
        NAME "contract"
    END

    EDIT 118, " ", 140, 265, 40, 20
    BEGIN
        CLIENTEDGE
        NAME "samfactor"
    END

    EDIT 124, " ", 370, 190, 90, 20
    BEGIN
        CLIENTEDGE
        DISABLED
        NAME "euro_price"
    END

    EDIT 125, " ", 370, 215, 90, 20
    BEGIN
        CLIENTEDGE
        DISABLED
        NAME "dollar_price"
    END

    EDIT 126, " ", 370, 240, 90, 20
    BEGIN
        CLIENTEDGE
        DISABLED
        NAME "list_price"
    END

    EDIT 127, " ", 370, 265, 90, 20
    BEGIN
        CLIENTEDGE
        NAME "ic_price"
    END

    STATICTEXT 128, "Line Price Euro", 282, 190, 80, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "euro_price_lbl"
    END

    STATICTEXT 129, "Line Price $", 285, 215, 80, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "dollar_price_lbl"
    END

    STATICTEXT 130, "List Price $", 285, 240, 80, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "list_price_lbl"
    END

    STATICTEXT 131, "I/C Line Price $", 255, 265, 110, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "ic_price_lbl"
    END

    STATICTEXT 133, " Contract / Annual Date", 15, 240, 120, 20
    BEGIN
        NAME "contract_lbl"
    END

    STATICTEXT 134, "Distribution", 40, 215, 90, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "dist_code_lbl"
    END

    BUTTON 135, "E&xit", 350, 10, 100, 20
    BEGIN
        NAME "cancel_btn"
    END

    BUTTON 136, "Create I/C &Order", 140, 360, 120, 20
    BEGIN
        NAME "invoice_btn"
    END

    EDIT 137, " ", 370, 305, 90, 20
    BEGIN
        CLIENTEDGE
        DISABLED
        NAME "ic_total"
    END

    STATICTEXT 138, "I/C Invoice Total  $", 255, 305, 110, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "ic_tot_lbl"
    END

    STATICTEXT 139, "Chargeable Days", 40, 265, 90, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "samfactor_lbl"
    END

    STATICTEXT 140, "Line number", 40, 190, 90, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "line_no_lbl"
    END

    EDIT 141, " ", 370, 360, 90, 20
    BEGIN
        CLIENTEDGE
        DISABLED
        NAME "grand_total"
    END

    STATICTEXT 142, "I/C Grand Total $", 265, 360, 100, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "grand_total_lbl"
    END

    BUTTON 145, " &Recalculate", 140, 305, 100, 20
    BEGIN
        NAME "calc_btn"
    END

    LINE 1000, 20, 340, 440, 0
    BEGIN
        NAME "Horizontal Line"
    END

END

WINDOW 107 "Operations Menu" 100 100 900 200
BEGIN
    EVENTMASK 3287287500
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "ops_menu"
    BUTTON 100, "&Inter Company Invoice", 50, 20, 150, 25
    BEGIN
        NAME "ic_btn"
        SHORTCUE "Inter Company Charges Invoicing"
    END

    BUTTON 101, "&SAM, RNT, DVK Crdt Invoices", 50, 60, 150, 25
    BEGIN
        NAME "credit_sam_btn"
        SHORTCUE "Generate credits for past due SAM, Rent and DVK renewals"
    END

    BUTTON 200, "E&xit", 700, 20, 150, 25
    BEGIN
        NAME "exit_btn"
    END

    BUTTON 102, "Credit Card Logs", 50, 100, 150, 25
    BEGIN
        NAME "ccLog_btn"
    END

    BUTTON 103, "Credit Card Processor", 50, 140, 150, 25
    BEGIN
        NAME "Button"
    END

    BUTTON 104, "Select Orders for Email", 260, 20, 150, 25
    BEGIN
        NAME "Button"
    END

    BUTTON 105, "Direct Renew Exp LIc", 260, 60, 150, 25
    BEGIN
        NAME "directRenew"
    END

END

WINDOW 108 "directcomm Status" 50 50 500 400
BEGIN
    EVENTMASK 0
    KEYBOARDNAVIGATION
    NAME "directCommStatus"
    EDIT 100, "", 125, 20, 80, 25
    BEGIN
        CLIENTEDGE
        NAME "resultCode"
        SHORTCUE "Any result other than 00 indicates a problem."
    END

    BUTTON 101, "Run Test", 210, 20, 90, 25
    BEGIN
        NAME "Button"
    END

    STATICTEXT 102, "Result Code from Test:", 10, 20, 115, 25
    BEGIN
        NAME "resultCodeLabel"
    END

    CUSTOMEDIT 103, "", 10, 100, 480, 290
    BEGIN
        BORDER
        CLIENTEDGE
        HSCROLLBAR
        NAME "tailOfLog"
        VSCROLLBAR
    END

    BUTTON 104, "Exit", 400, 20, 90, 25
    BEGIN
        NAME "Button"
    END

    STATICTEXT 105, "Last 300 lines of the log:", 10, 80, 120, 15
    BEGIN
        NAME "directCommLogLabel"
    END

    BUTTON 106, "Reload Log", 400, 50, 90, 25
    BEGIN
        NAME "reloadLogButton"
    END

    EDIT 107, "1000", 125, 50, 80, 25
    BEGIN
        CLIENTEDGE
        NAME "loglines"
        SHORTCUE "The number of lines to email from the end of the log file."
    END

    BUTTON 108, "Email Log", 210, 50, 90, 25
    BEGIN
        NAME "emailLogBtn"
    END

    STATICTEXT 109, "Log lines to email:", 10, 50, 115, 25
    BEGIN
        NAME "lastlinelabel"
    END

END

WINDOW 109 "Dissovle Prod/Backup License Pair" 100 100 500 300
BEGIN
    NOT CLOSEBOX
    ENTERASTAB
    EVENTMASK 33554432
    ICON ""
    KEYBOARDNAVIGATION
    NOT MAXIMIZABLE
    NAME "removeBackupLic"
    NOT SIZABLE
    STATICTEXT 100, "Production License:", 10, 50, 100, 20
    BEGIN
        NAME "prodLicLbl"
        NOT WORDWRAP
    END

    EDIT 101, "", 110, 45, 90, 25
    BEGIN
        MAXLENGTH 32767
        NAME "productionLicense"
        READONLY
        SPELLCHECKED
        NOT DRAGENABLED
    END

    STATICTEXT 102, "Backup License:", 210, 50, 85, 20
    BEGIN
        NAME "backupLicLbl"
        NOT WORDWRAP
    END

    EDIT 103, "", 295, 45, 90, 25
    BEGIN
        MAXLENGTH 32767
        NAME "backupLicense"
        READONLY
        SPELLCHECKED
        NOT DRAGENABLED
    END

    STATICTEXT 104, "Customer:", 10, 15, 60, 20
    BEGIN
        NAME "customerLbl"
        NOT WORDWRAP
    END

    EDIT 105, "", 70, 10, 315, 25
    BEGIN
        MAXLENGTH 32767
        NAME "customer"
        READONLY
        SPELLCHECKED
        NOT DRAGENABLED
    END

    CHECKBOX 106, "Dissolve the Production/Backup License Pair and deactivate the backup license.", 20, 90, 425, 50
    BEGIN
        NAME "dissolveDeactivate"
    END

    CHECKBOX 107, "Dissovle the Production/Backup License Pair. Backup becomes a full license.", 20, 150, 425, 50
    BEGIN
        NAME "dissolveLeave"
    END

    BUTTON 108, "Cancel", 400, 260, 90, 25
    BEGIN
        NAME "cancelButton"
    END

    BUTTON 110, "Execute", 300, 260, 90, 25
    BEGIN
        NAME "executeButton"
    END

    BUTTON 111, "<>", 385, 45, 20, 25
    BEGIN
        INVISIBLE
        NAME "switchSNBtn"
    END

    EDIT 112, "", 405, 45, 90, 25
    BEGIN
        INVISIBLE
        MAXLENGTH 32767
        NAME "otherSN"
        READONLY
        SPELLCHECKED
        NOT DRAGENABLED
    END

END

WINDOW 110 "Expanded Hostid" 50 50 500 400
BEGIN
    ENTERASTAB
    EVENTMASK 0
    ICON ""
    KEYBOARDNAVIGATION
    NAME "fullHostid"
    CUSTOMEDIT 101, "", 20, 160, 460, 200
    BEGIN
        NAME "fullHostidText"
        READONLY
        WORDWRAP
    END

    STATICTEXT 102, "Full Hostid:", 20, 140, 90, 20
    BEGIN
        NAME "fullHostidLbl"
        NOT WORDWRAP
    END

    BUTTON 103, "Exit", 390, 370, 90, 20
    BEGIN
        NAME "exitFHButton"
    END

    EDIT 100, "", 20, 40, 460, 25
    BEGIN
        MAXLENGTH 32767
        NAME "HostidToken"
        READONLY
        SPELLCHECKED
        NOT DRAGENABLED
    END

    STATICTEXT 104, "Hostid Token", 20, 20, 90, 20
    BEGIN
        NAME "hostidTokenLabel"
        NOT WORDWRAP
    END

    STATICTEXT 105, "Hostid Hash", 20, 80, 90, 20
    BEGIN
        NAME "hostidHashLabel"
        NOT WORDWRAP
    END

    EDIT 106, "", 20, 100, 460, 25
    BEGIN
        MAXLENGTH 32767
        NAME "hostidHash"
        READONLY
        SPELLCHECKED
        NOT DRAGENABLED
    END

END

WINDOW 111 "Vendor Features" 100 100 800 600
BEGIN
    ENTERASTAB
    EVENTMASK 0
    ICON ""
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "vendorFeatures"
    GRID 101, "", 20, 50, 760, 500
    BEGIN
        NOT READONLY
        COLUMNHEAD 25, 104
        COLUMNS 5
        GRIDCOLTITLE 0, "Feature"
        GRIDCOLTITLE 1, "Feature Rev"
        GRIDCOLTITLE 2, "Product Code"
        GRIDCOLTITLE 3, "Expires"
        GRIDCOLTITLE 4, "Users"
        GRIDCOLWIDTH 0, 150
        GRIDCOLWIDTH 1, 100
        GRIDCOLWIDTH 2, 100
        GRIDCOLWIDTH 3, 250
        HORIZLINES
        MAXCOLS 2147483647
        NAME "vendorFeaturesGrid"
        ROWS 100
        NOT FOCUSABLE
        USERSIZE
        VERTLINES
        VSCROLLBAR
    END

    BUTTON 100, "Close", 690, 560, 90, 25
    BEGIN
        NAME "closeBtn"
    END

    EDIT 105, "", 105, 15, 110, 25
    BEGIN
        MAXLENGTH 32767
        NAME "vfSerialNbr"
        READONLY
        SPELLCHECKED
        NOT DRAGENABLED
    END

    STATICTEXT 106, "Serial Number:", 20, 20, 75, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text106"
        NOT WORDWRAP
    END

END

WINDOW 112 "Serial Number License Registration Failures" 50 50 800 500
BEGIN
    ENTERASTAB
    EVENTMASK 0
    ICON ""
    KEYBOARDNAVIGATION
    NAME "regFailures"
    GRID 101, "", 10, 10, 780, 440
    BEGIN
        COLUMNHEAD 25, 103
        COLUMNS 3
        GRIDCOLTITLE 0, "Date"
        GRIDCOLTITLE 1, "Time (US Mountain)"
        GRIDCOLTITLE 2, "Registration Problem"
        GRIDCOLWIDTH 0, 60
        GRIDCOLWIDTH 1, 110
        GRIDCOLWIDTH 2, 580
        HORIZLINES
        HSCROLLBAR
        MAXCOLS 2147483647
        NAME "regFailuresGrid"
        ROWS 24
        USERSIZE
        VERTLINES
        VSCROLLBAR
    END

    BUTTON 100, "Exit", 700, 465, 90, 25
    BEGIN
        NAME "failureExitBtn"
    END

END

WINDOW 113 "License Registrations" 50 50 800 500
BEGIN
    ENTERASTAB
    EVENTMASK 0
    ICON ""
    KEYBOARDNAVIGATION
    NAME "licRegistrations"
    GRID 101, "", 10, 10, 780, 445
    BEGIN
        NOT READONLY
        COLUMNHEAD 25, 103
        COLUMNS 8
        GRIDCOLTITLE 0, "Date"
        GRIDCOLTITLE 1, "Time"
        GRIDCOLTITLE 2, "Prod Type"
        GRIDCOLTITLE 3, "Prod Rev"
        GRIDCOLTITLE 4, "Host Id"
        GRIDCOLTITLE 5, "Auth #"
        GRIDCOLTITLE 6, "Expires"
        GRIDCOLTITLE 7, "Users"
        GRIDCOLWIDTH 0, 70
        GRIDCOLWIDTH 2, 80
        GRIDCOLWIDTH 3, 70
        GRIDCOLWIDTH 4, 250
        GRIDCOLWIDTH 5, 90
        GRIDCOLWIDTH 6, 80
        HORIZLINES
        HSCROLLBAR
        MAXCOLS 2147483647
        NAME "licRegistrationsGrid"
        ROWS 24
        USERSIZE
        VERTLINES
        VSCROLLBAR
    END

    BUTTON 100, "Exit", 700, 465, 90, 25
    BEGIN
        NAME "licRegistrationsExitButton"
    END

END

CHILD-WINDOW 101 0 0 984 550
BEGIN
    EVENTMASK 1676674564
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "sn_detail"
    STATICTEXT 105, "Users", 345, 30, 40, 20
    BEGIN
        NAME "user_lbl"
    END

    STATICTEXT 119, "Port", 345, 50, 30, 20
    BEGIN
        NAME "port_lbl"
    END

    LISTBUTTON 300, " \n", 575, 10, 400, 400
    BEGIN
        NAME "comments"
    END

    STATICTEXT 130, "Comments", 510, 10, 60, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "comments_lbl"
    END

    STATICTEXT 131, "License Features", 475, 30, 95, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "features_lbl"
    END

    LISTBUTTON 310, " \n", 575, 30, 400, 400
    BEGIN
        NAME "vendor_features"
    END

    GRID 320, "", 495, 55, 480, 485
    BEGIN
        CLIENTEDGE
        COLUMNHEAD 20, 509
        COLUMNS 8
        GRIDCOLTITLE 0, "Date"
        GRIDCOLTITLE 1, "Invoice"
        GRIDCOLTITLE 2, "Type"
        GRIDCOLTITLE 3, "Rev"
        GRIDCOLTITLE 4, "Users"
        GRIDCOLTITLE 5, "Authorization"
        GRIDCOLTITLE 6, "Item"
        GRIDCOLTITLE 7, "Price"
        GRIDCOLWIDTH 0, 65
        GRIDCOLWIDTH 2, 35
        GRIDCOLWIDTH 3, 31
        GRIDCOLWIDTH 4, 38
        GRIDCOLWIDTH 5, 78
        GRIDCOLWIDTH 6, 105
        GRIDCOLWIDTH 7, 61
        HORIZLINES
        HSCROLLBAR
        LONGCUE "Double click on the invoice number to drill down to the invoice display."
        MAXCOLS 2147483647
        NAME "transaction_history"
        ROWS 5
        SHORTCUE "Double click on the invoice number to drill down to the invoice display."
        USERSIZE
        VERTLINES
        VSCROLLBAR
    END

    STATICTEXT 134, "License", 20, 115, 50, 20
    BEGIN
        NAME "license_lbl"
    END

    STATICTEXT 135, "Revision", 20, 95, 50, 20
    BEGIN
        NAME "revision_lbl"
    END

    STATICTEXT 136, "OS Level", 20, 75, 50, 20
    BEGIN
        NAME "os_level_lbl"
    END

    STATICTEXT 137, "Platform", 20, 55, 50, 20
    BEGIN
        NAME "platform_lbl"
    END

    STATICTEXT 138, "Product", 20, 35, 50, 20
    BEGIN
        NAME "product_lbl"
    END

    STATICTEXT 144, "", 110, 40, 170, 20
    BEGIN
        NAME "product_desc"
    END

    STATICTEXT 145, " ", 110, 60, 170, 20
    BEGIN
        NAME "platform_desc"
    END

    STATICTEXT 146, " ", 110, 80, 170, 20
    BEGIN
        NAME "os_level_desc"
    END

    STATICTEXT 147, " ", 110, 100, 85, 20
    BEGIN
        NAME "revision_desc"
    END

    STATICTEXT 148, " ", 110, 120, 170, 20
    BEGIN
        NAME "license_desc"
    END

    EDIT 210, " ", 70, 35, 35, 20
    BEGIN
        CLIENTEDGE
        NAME "product"
    END

    EDIT 220, " ", 70, 55, 35, 20
    BEGIN
        CLIENTEDGE
        NAME "platform"
    END

    EDIT 230, " ", 70, 75, 35, 20
    BEGIN
        CLIENTEDGE
        NAME "os_level"
    END

    EDIT 240, " ", 70, 95, 35, 20
    BEGIN
        CLIENTEDGE
        NAME "revision"
    END

    EDIT 260, "", 385, 30, 40, 20
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "users"
    END

    EDIT 280, "", 385, 50, 40, 20
    BEGIN
        CLIENTEDGE
        NAME "port"
    END

    EDIT 250, " ", 70, 115, 35, 20
    BEGIN
        CLIENTEDGE
        NAME "license"
    END

    STATICTEXT 159, "*LICENSE INACTIVE*", 275, 10, 110, 20
    BEGIN
        FOREGROUNDCOLOR RGB(255,0,0)
        INVISIBLE
        NAME "inactive"
    END

    EDIT 290, "", 385, 70, 40, 20
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "available_support"
    END

    STATICTEXT 164, "Available Support", 290, 70, 90, 20
    BEGIN
        NAME "available_support_lbl"
    END

    STATICTEXT 165, " ", 360, 100, 115, 20
    BEGIN
        NAME "support_expires"
    END

    STATICTEXT 166, " ", 285, 160, 170, 20
    BEGIN
        FOREGROUNDCOLOR RGB(255,0,0)
        NAME "sam_status"
    END

    STATICTEXT 168, "Customer", 20, 10, 50, 20
    BEGIN
        NAME "customer_lbl"
    END

    EDIT 200, "", 70, 10, 200, 20
    BEGIN
        CLIENTEDGE
        NAME "Customer"
    END

    EDIT 270, "", 430, 30, 40, 20
    BEGIN
        CLIENTEDGE
        INVISIBLE
        JUSTIFICATION 32768
        NAME "users2"
    END

    STATICTEXT 171, "", 390, 10, 30, 20
    BEGIN
        NAME "users1_lbl"
    END

    STATICTEXT 172, "", 435, 10, 30, 20
    BEGIN
        NAME "users2_lbl"
    END

    STATICTEXT 173, "", 432, 60, 40, 40
    BEGIN
        FOREGROUNDCOLOR RGB(0,0,160)
        NAME "odbc_rw"
    END

    INPUTN 510, "", 285, 50, 30, 20
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        INVISIBLE
        NAME "barista_users"
        PASSENTER
        PASSTAB
        RESTORESTRING "0"
        NOT INSERTMODE
    END

    STATICTEXT 511, "Barista ", 285, 30, 55, 20
    BEGIN
        INVISIBLE
        NAME "bar_users_lbl"
    END

    CHECKBOX 285, "Virtual:", 290, 95, 55, 25
    BEGIN
        DISABLED
        NAME "virtualFlag"
        TEXTLEFT
        JUSTIFICATION 32768
    END

    CHECKBOX 286, "Annual:", 210, 95, 65, 25
    BEGIN
        DISABLED
        NAME "annualFlag"
        TEXTLEFT
        JUSTIFICATION 32768
    END

    STATICTEXT 174, "**HOST ID LIMITED**", 20, 160, 170, 20
    BEGIN
        FOREGROUNDCOLOR RGB(255,0,0)
        INVISIBLE
        NAME "hostIdLimitlbl"
    END

    STATICTEXT 100, "This serial number is a Production License.", 20, 205, 215, 20
    BEGIN
        INVISIBLE
        NAME "prodBackMessage"
        NOT WORDWRAP
    END

    BUTTON 101, "Dissolve Prod/Backup Pair", 20, 260, 160, 25
    BEGIN
        INVISIBLE
        NAME "prodBackMaintBtn"
    END

    STATICTEXT 102, "Production License:", 20, 235, 100, 20
    BEGIN
        INVISIBLE
        NAME "prodBackupLbl"
        NOT WORDWRAP
    END

    EDIT 103, "", 120, 230, 170, 25
    BEGIN
        INVISIBLE
        MAXLENGTH 32767
        NAME "prodBackLic"
        READONLY
        NOT DRAGENABLED
    END

    BUTTON 104, "Load", 295, 230, 45, 25
    BEGIN
        INVISIBLE
        NAME "loadBtn"
        SHORTCUE "Click to load  the other licenses in the prod/backup group."
    END

    GROUPBOX 106, "Production/Backup License Group", 10, 185, 339, 110
    BEGIN
        INVISIBLE
        NAME "grpBoxProdBack"
    END

    BUTTON 107, "Vendor Features", 285, 125, 100, 25
    BEGIN
        NAME "vendorFeatures"
    END

    BUTTON 108, "Add a Backup License", 10, 185, 150, 25
    BEGIN
        NAME "addBackupBtn"
    END

END

CHILD-WINDOW 102 0 0 984 550
BEGIN
    EVENTMASK 1676674564
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "sn_license"
    BUTTON 101, "&Reset counter", 816, 105, 110, 20
    BEGIN
        NAME "reset_btn"
    END

    STATICTEXT 102, "Hostid Token:", 695, 20, 50, 30
    BEGIN
        JUSTIFICATION 32768
        NAME "host_id_lbl"
    END

    STATICTEXT 104, "Authorization ", 510, 20, 70, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "authorization_lbl"
    END

    EDIT 105, "", 580, 20, 110, 20
    BEGIN
        CLIENTEDGE
        NAME "authorization"
    END

    EDIT 130, "", 582, 140, 220, 20
    BEGIN
        CLIENTEDGE
        NAME "email_fax"
    END

    BUTTON 107, "&Generate License", 816, 125, 110, 20
    BEGIN
        NAME "generate_license_btn"
    END

    STATICTEXT 110, "Email/Fax #  ", 507, 140, 70, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "email_fax_lbl"
    END

    BUTTON 135, "Send &License", 816, 145, 110, 20
    BEGIN
        NAME "send_license_btn"
        SHORTCUE "Send a license generated using the above information"
    END

    GROUPBOX 112, "", 500, 5, 470, 65
    BEGIN
        NAME "Group Control"
    END

    GROUPBOX 113, "Send license to", 500, 80, 310, 87
    BEGIN
        NAME "Group Control"
    END

    STATICTEXT 114, "Host Name ", 510, 45, 70, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "host_name_lbl"
    END

    EDIT 106, " ", 580, 45, 110, 20
    BEGIN
        CLIENTEDGE
        NAME "host_name"
    END

    EDIT 118, " ", 582, 120, 220, 20
    BEGIN
        CLIENTEDGE
        NAME "company_name"
    END

    EDIT 116, "", 582, 100, 100, 20
    BEGIN
        CLIENTEDGE
        NAME "last_name"
    END

    EDIT 117, "", 712, 100, 90, 20
    BEGIN
        CLIENTEDGE
        NAME "first_name"
    END

    STATICTEXT 119, "Company ", 507, 120, 70, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "company_name_lbl"
    END

    STATICTEXT 120, "Last name ", 507, 100, 70, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "last_name_lbl"
    END

    STATICTEXT 121, "First", 687, 100, 25, 20
    BEGIN
        NAME "first_name_lbl"
    END

    CUSTOMEDIT 100, "", 10, 5, 470, 540
    BEGIN
        CLIENTEDGE
        HSCROLLBAR
        NAME "license_history"
        VSCROLLBAR
    END

    CUSTOMEDIT 103, "", 750, 20, 210, 20
    BEGIN
        CLIENTEDGE
        NAME "host_id"
        WORDWRAP
    END

    LISTBUTTON 136, "", 816, 82, 160, 80
    BEGIN
        NAME "reset_reason"
        SHORTCUE "Reason license is being reset - REQUIRED"
    END

    RADIOBUTTON 108, "TRL", 930, 125, 47, 25
    BEGIN
        NAME "tamperResistant"
        NOT OPAQUE
    END

    BUTTON 109, "Send Lic/Auth Form", 840, 45, 120, 20
    BEGIN
        NAME "sendLicAuth"
    END

    BUTTON 137, "Edit Log Extract", 500, 180, 120, 20
    BEGIN
        NAME "logExtractbtn"
    END

    BUTTON 111, "Full Hostid", 750, 45, 85, 20
    BEGIN
        NAME "fullHostid"
    END

    BUTTON 138, "License Registrations", 500, 210, 120, 20
    BEGIN
        NAME "licRegistrations"
    END

    BUTTON 139, "License Failures", 500, 240, 120, 20
    BEGIN
        NAME "licFailures"
    END

    BUTTON 140, "Clear BLM Block", 500, 270, 120, 20
    BEGIN
        DISABLED
        NAME "removeBLSBlkBtn"
    END

    STATICTEXT 141, "BLM BLS Whitelisted", 500, 300, 120, 20
    BEGIN
        FOREGROUNDCOLOR RGB(255,0,0)
        INVISIBLE
        NAME "whiteListMsg"
        NOT WORDWRAP
    END

    EDIT 115, "", 938, 105, 35, 20
    BEGIN
        JUSTIFICATION 32768
        MAXLENGTH 32767
        NAME "distResets"
        SHORTCUE "Distributor Resets"
        SPELLCHECKED
        NOT DRAGENABLED
    END

END

CHILD-WINDOW 103 0 0 984 210
BEGIN
    EVENTMASK 1139803652
    KEYBOARDNAVIGATION
    NAME "sn_sam"
    STATICTEXT 100, "Contract ", 10, 10, 75, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "contract_lbl"
    END

    EDIT 101, " ", 90, 10, 80, 20
    BEGIN
        CLIENTEDGE
        NAME "contract"
    END

    BUTTON 102, "&Find contract", 175, 10, 100, 20
    BEGIN
        NAME "contract_search"
    END

    STATICTEXT 103, "Type ", 275, 10, 30, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "contract_type_lbl"
    END

    EDIT 104, " ", 310, 10, 40, 20
    BEGIN
        CLIENTEDGE
        NAME "contract_type"
    END

    STATICTEXT 105, "** SAM INACTIVE **", 370, 10, 100, 20
    BEGIN
        FOREGROUNDCOLOR RGB(255,0,0)
        NAME "contract_inactive"
    END

    STATICTEXT 106, "Start date  ", 10, 50, 75, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "start_date_lbl"
    END

    STATICTEXT 107, "Renewal date ", 10, 80, 75, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "renewal_date_lbl"
    END

    STATICTEXT 108, "Expiration ", 235, 50, 70, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "expiration_lbl"
    END

    EDIT 109, "", 90, 50, 80, 20
    BEGIN
        CLIENTEDGE
        NAME "start_date"
    END

    EDIT 110, "", 90, 80, 80, 20
    BEGIN
        CLIENTEDGE
        NAME "renewal_date"
    END

    EDIT 111, "", 310, 47, 80, 20
    BEGIN
        CLIENTEDGE
        NAME "expiration"
    END

    STATICTEXT 112, "* Flagged not to renew", 190, 80, 150, 20
    BEGIN
        FOREGROUNDCOLOR RGB(255,0,0)
        NAME "no_renew"
    END

    STATICTEXT 113, "Contact email ", 10, 110, 75, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "email_lbl"
    END

    EDIT 114, " ", 90, 110, 340, 20
    BEGIN
        CLIENTEDGE
        NAME "email"
    END

    STATICTEXT 115, "Comment ", 10, 140, 75, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "comment_lbl"
    END

    EDIT 116, " ", 90, 140, 340, 20
    BEGIN
        CLIENTEDGE
        NAME "comment"
    END

    BUTTON 117, "List serial numbers on this contract", 480, 10, 200, 20
    BEGIN
        NAME "listall_btn"
    END

    GRID 118, "", 480, 40, 485, 130
    BEGIN
        CLIENTEDGE
        COLUMNHEAD 20, 509
        COLUMNS 6
        GRIDCOLTITLE 0, "Serial Number"
        GRIDCOLTITLE 1, "SAM Active"
        GRIDCOLTITLE 2, "Serial Number"
        GRIDCOLTITLE 3, "SAM Active"
        GRIDCOLTITLE 4, "Serial Number"
        GRIDCOLTITLE 5, "SAM Active"
        GRIDCOLWIDTH 0, 85
        GRIDCOLWIDTH 1, 70
        GRIDCOLWIDTH 2, 85
        GRIDCOLWIDTH 3, 70
        GRIDCOLWIDTH 4, 85
        GRIDCOLWIDTH 5, 70
        HORIZLINES
        HSCROLLBAR
        MAXCOLS 2147483647
        NAME "all_sns"
        ROWS 5
        USERSIZE
        VERTLINES
        VSCROLLBAR
    END

    BUTTON 119, "Renew", 865, 10, 100, 20
    BEGIN
        INVISIBLE
        NAME "directRenew"
    END

    LISTBUTTON 120, "Active\nProforma\nNo\n", 90, 170, 120, 100
    BEGIN
        NAME "renewType"
        SELECTIONHEIGHT 20
    END

    STATICTEXT 121, "Renew Type", 10, 170, 75, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text121"
        NOT WORDWRAP
    END

END

CHILD-WINDOW 104 0 0 984 196
BEGIN
    EVENTMASK 1139803652
    KEYBOARDNAVIGATION
    NAME "sn_links"
    GRID 110, "", 15, 30, 320, 130
    BEGIN
        CLIENTEDGE
        COLUMNHEAD 20, 509
        COLUMNS 4
        GRIDCOLTITLE 0, "Serial Number"
        GRIDCOLTITLE 1, "Item "
        GRIDCOLTITLE 2, "Users"
        GRIDCOLTITLE 3, "Active"
        GRIDCOLWIDTH 0, 90
        GRIDCOLWIDTH 1, 110
        HORIZLINES
        HSCROLLBAR
        MAXCOLS 2147483647
        NAME "cs_links"
        ROWS 5
        USERSIZE
        VERTLINES
        VSCROLLBAR
    END

    STATICTEXT 111, "Client/Server Links (no longer used or maintained)", 20, 10, 300, 20
    BEGIN
        NAME "sn_links_lbl"
    END

    GRID 120, "", 350, 30, 475, 130
    BEGIN
        CLIENTEDGE
        COLUMNHEAD 20, 519
        COLUMNS 7
        GRIDCOLTITLE 0, "Serial Number"
        GRIDCOLTITLE 1, "Item "
        GRIDCOLTITLE 2, "Users"
        GRIDCOLTITLE 3, "Active"
        GRIDCOLTITLE 4, "Date"
        GRIDCOLTITLE 5, "Invoice"
        GRIDCOLTITLE 6, "Action"
        GRIDCOLWIDTH 0, 80
        GRIDCOLWIDTH 1, 110
        GRIDCOLWIDTH 2, 40
        GRIDCOLWIDTH 3, 40
        GRIDCOLWIDTH 4, 65
        GRIDCOLWIDTH 6, 70
        HORIZLINES
        HSCROLLBAR
        MAXCOLS 2147483647
        NAME "active_inactive"
        ROWS 5
        USERSIZE
        VERTLINES
        VSCROLLBAR
    END

    STATICTEXT 121, "Activated/Deactivated Serial Numbers", 350, 10, 300, 20
    BEGIN
        NAME "sn_links_lbl"
    END

END

CHILD-WINDOW 105 0 0 984 196
BEGIN
    EVENTMASK 3287287492
    KEYBOARDNAVIGATION
    NAME "end_user"
    EDIT 100, "", 130, 20, 220, 20
    BEGIN
        CLIENTEDGE
        NAME "CompName"
        READONLY
    END

    EDIT 101, "", 130, 40, 220, 20
    BEGIN
        CLIENTEDGE
        NAME "ContactName"
        READONLY
    END

    EDIT 102, "", 130, 60, 220, 20
    BEGIN
        CLIENTEDGE
        NAME "AddrLnOne"
        READONLY
    END

    EDIT 103, "", 130, 80, 220, 20
    BEGIN
        CLIENTEDGE
        NAME "AddrLnTwo"
        READONLY
    END

    EDIT 104, "", 130, 100, 220, 20
    BEGIN
        CLIENTEDGE
        NAME "AddrLnThree"
        READONLY
    END

    EDIT 105, "", 130, 120, 220, 20
    BEGIN
        CLIENTEDGE
        NAME "City"
        READONLY
    END

    EDIT 107, "", 270, 140, 80, 20
    BEGIN
        CLIENTEDGE
        NAME "PostalCode"
        READONLY
    END

    EDIT 109, "", 455, 20, 220, 20
    BEGIN
        CLIENTEDGE
        NAME "EmailAddress"
        READONLY
    END

    EDIT 110, "", 455, 40, 220, 20
    BEGIN
        CLIENTEDGE
        NAME "PhoneNumber"
        READONLY
    END

    EDIT 112, "", 455, 80, 220, 20
    BEGIN
        CLIENTEDGE
        DISABLED
        NAME "OtherDesc"
    END

    CUSTOMEDIT 114, "", 810, 40, 110, 93
    BEGIN
        CLIENTEDGE
        NAME "AppModulesUsed"
        READONLY
    END

    CHECKBOX 115, "Advantage", 455, 125, 200, 20
    BEGIN
        NAME "Advantage"
        READONLY
    END

    CHECKBOX 116, "Announcements", 455, 145, 200, 20
    BEGIN
        NAME "Announcements"
        READONLY
    END

    STATICTEXT 117, "Company", 20, 20, 100, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "label1"
        NOT OPAQUE
    END

    STATICTEXT 118, "Contact", 20, 40, 100, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "label2"
    END

    STATICTEXT 119, "Address1", 20, 60, 100, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "label3"
    END

    STATICTEXT 120, "Address2", 20, 80, 100, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "label4"
    END

    STATICTEXT 121, "Address3", 20, 100, 100, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "label5"
    END

    STATICTEXT 122, "City", 20, 120, 100, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "label6"
    END

    STATICTEXT 123, "State", 20, 140, 100, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "label7"
    END

    STATICTEXT 124, "Postal code", 195, 140, 70, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "label8"
    END

    STATICTEXT 125, "Country", 20, 160, 100, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "label9"
    END

    STATICTEXT 126, "Email", 360, 20, 90, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "label10"
    END

    STATICTEXT 127, "Phone", 360, 40, 90, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "label11"
    END

    STATICTEXT 128, "Industry", 360, 60, 90, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "label12"
    END

    STATICTEXT 129, "Other Description", 360, 80, 90, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "label13"
    END

    STATICTEXT 130, "BASIS Product", 360, 100, 90, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "label14"
    END

    STATICTEXT 131, "Application Modules", 810, 20, 120, 20
    BEGIN
        NAME "label15"
        NOT OPAQUE
    END

    LISTBOX 132, "", 690, 40, 110, 93
    BEGIN
        CLIENTEDGE
        MULTISELECT
        NAME "linkedSerialNbrs"
        READONLY
    END

    STATICTEXT 133, "Serial Numbers", 690, 20, 100, 20
    BEGIN
        NAME "label19"
    END

    EDIT 106, "", 130, 140, 60, 20
    BEGIN
        CLIENTEDGE
        NAME "state"
        READONLY
    END

    EDIT 108, "", 130, 160, 220, 20
    BEGIN
        CLIENTEDGE
        NAME "country"
        READONLY
    END

    EDIT 113, "", 455, 100, 220, 20
    BEGIN
        CLIENTEDGE
        NAME "BasisProduct"
        READONLY
    END

    EDIT 111, "", 455, 60, 220, 20
    BEGIN
        CLIENTEDGE
        NAME "industry"
        READONLY
    END

END

CHILD-WINDOW 106 0 0 984 196
BEGIN
    EVENTMASK 3287287492
    KEYBOARDNAVIGATION
    NAME "host_ids"
    STATICTEXT 100, "Host Ids Used", 5, 5, 220, 20
    BEGIN
        NAME "hostids_used_lbl"
    END

    GRID 101, "", 5, 30, 235, 180
    BEGIN
        CLIENTEDGE
        COLUMNHEAD 20, 519
        COLUMNS 2
        GRIDCOLTITLE 0, "Date"
        GRIDCOLTITLE 1, "Host ID"
        GRIDCOLWIDTH 0, 60
        GRIDCOLWIDTH 1, 156
        HORIZLINES
        HSCROLLBAR
        MAXCOLS 2147483647
        NAME "hostids_used"
        ROWS 7
        USERSIZE
        VERTLINES
        VSCROLLBAR
    END

    STATICTEXT 109, "Host Ids Sequence", 255, 5, 220, 20
    BEGIN
        NAME "hostids_seq_lbl"
    END

    GRID 110, "", 255, 30, 235, 180
    BEGIN
        CLIENTEDGE
        COLUMNHEAD 20, 509
        COLUMNS 2
        GRIDCOLTITLE 0, "Date"
        GRIDCOLTITLE 1, "Host ID"
        GRIDCOLWIDTH 0, 60
        GRIDCOLWIDTH 1, 156
        HORIZLINES
        HSCROLLBAR
        MAXCOLS 2147483647
        NAME "hostids_seq"
        ROWS 7
        USERSIZE
        VERTLINES
        VSCROLLBAR
    END

    BUTTON 102, "Limit to One Host Id", 500, 30, 115, 25
    BEGIN
        NAME "hostIdLimitBtn"
        SHORTCUE "Select Host Id from the Host Id Sequence List"
    END

    EDIT 103, "", 720, 30, 200, 25
    BEGIN
        CLIENTEDGE
        NAME "hostidLimitedTo"
    END

    STATICTEXT 104, "Host Id Limited To:", 620, 35, 95, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "hostidLimitLbl"
    END

    STATICTEXT 105, "Use this section to limit the serial numbers host id to a specific host id.", 500, 5, 350, 20
    BEGIN
        NAME "hostIdLimitSectionLbl"
    END

    GRID 106, "", 500, 80, 420, 115
    BEGIN
        CLIENTEDGE
        COLUMNHEAD 20, 108
        COLUMNS 3
        GRIDCOLTITLE 0, "Date"
        GRIDCOLTITLE 1, "Time"
        GRIDCOLTITLE 2, "Host Id Submitted"
        GRIDCOLWIDTH 0, 60
        GRIDCOLWIDTH 1, 60
        GRIDCOLWIDTH 2, 280
        HORIZLINES
        HSCROLLBAR
        MAXCOLS 2147483647
        NAME "rejectRegistrations"
        ROWS 4
        USERSIZE
        VERTLINES
        VSCROLLBAR
    END

    STATICTEXT 107, "Rejected Registration Attempts", 500, 60, 200, 20
    BEGIN
        NAME "regRejectsLbl"
    END

END

