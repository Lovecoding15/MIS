//#charset: windows-1252

VERSION "4.0"

WINDOW 101 "Search Results" 100 100 420 180
BEGIN
    EVENTMASK 1136657412
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "search_result"
    NOT SIZABLE
    LISTBOX 100, "", 10, 20, 240, 93
    BEGIN
        CLIENTEDGE
        MULTISELECT
        NAME "cust_list"
    END

    BUTTON 1, "&Ok", 50, 130, 50, 20
    BEGIN
        NAME "Ok_btn"
    END

    BUTTON 200, "E&xit", 110, 130, 50, 20
    BEGIN
        NAME "Exit_btn"
    END

    LISTBOX 110, "", 260, 20, 150, 119
    BEGIN
        CLIENTEDGE
        MULTISELECT
        NAME "cust_detail"
    END

END

WINDOW 102 "b-commerce" 100 100 600 200
BEGIN
    EVENTMASK 3287287500
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "bcomm"
    BUTTON 1, "&Ok", 510, 20, 60, 20
    BEGIN
        NAME "ok_btn"
    END

    BUTTON 2, "E&xit", 510, 60, 60, 20
    BEGIN
        NAME "exit_btn"
    END

    EDIT 100, "", 90, 20, 70, 20
    BEGIN
        CLIENTEDGE
        NAME "customer_nbr"
        READONLY
    END

    EDIT 120, "", 90, 120, 200, 20
    BEGIN
        CLIENTEDGE
        NAME "email_1"
    END

    EDIT 130, "", 90, 145, 200, 20
    BEGIN
        CLIENTEDGE
        NAME "email_2"
    END

    EDIT 140, "", 90, 170, 150, 20
    BEGIN
        CLIENTEDGE
        NAME "password"
        SHORTCUE "Must be 6-8 characters, at least 1 numeric"
    END

    LISTBOX 200, "", 320, 20, 170, 93
    BEGIN
        CLIENTEDGE
        MULTISELECT
        NAME "option_list"
    END

    STATICTEXT 500, "Customer", 10, 20, 70, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "cust_lbl"
    END

    STATICTEXT 510, "User code", 10, 45, 70, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "user_lbl"
    END

    STATICTEXT 520, "Email 1", 10, 120, 70, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "email1_lbl"
    END

    STATICTEXT 530, "Email 2", 10, 145, 70, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "email2_lbl"
    END

    STATICTEXT 540, "Password", 10, 170, 70, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "password_lbl"
    END

    INPUTE 110, "", 90, 45, 50, 20
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        MASK "UU"
        NAME "user_code"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    EDIT 112, "", 90, 70, 200, 20
    BEGIN
        CLIENTEDGE
        NAME "first_name"
    END

    EDIT 114, "", 90, 95, 200, 20
    BEGIN
        CLIENTEDGE
        NAME "last_name"
    END

    STATICTEXT 522, "First Name", 10, 70, 70, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "first_name_lbl"
    END

    STATICTEXT 524, "Last Name", 10, 95, 70, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "last_name_lbl"
    END

    CHECKBOX 101, "Lock this user's account", 320, 140, 180, 25
    BEGIN
        NAME "lockUserAccount"
    END

END

WINDOW 103 "Contacts" 100 100 600 260
BEGIN
    RADIOGROUP 598, 599, 600
    EVENTMASK 3287287500
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "contacts"
    EDIT 100, "", 75, 10, 220, 20
    BEGIN
        CLIENTEDGE
        NAME "name"
    END

    EDIT 110, "", 75, 30, 220, 20
    BEGIN
        CLIENTEDGE
        NAME "position"
    END

    STATICTEXT 500, "Name", 10, 10, 60, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "name_lbl"
    END

    STATICTEXT 510, "Position", 10, 30, 60, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "position_lbl"
    END

    EDIT 120, "", 75, 50, 120, 20
    BEGIN
        CLIENTEDGE
        NAME "phone"
    END

    EDIT 140, "", 75, 70, 220, 20
    BEGIN
        CLIENTEDGE
        NAME "email"
    END

    STATICTEXT 520, "Phone", 10, 50, 60, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "phone_lbl"
    END

    STATICTEXT 540, "E-mail", 10, 70, 60, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "email_lbl"
    END

    EDIT 150, "", 75, 90, 220, 20
    BEGIN
        CLIENTEDGE
        NAME "addr1"
    END

    EDIT 160, "", 75, 110, 220, 20
    BEGIN
        CLIENTEDGE
        NAME "addr2"
    END

    EDIT 170, "", 75, 130, 220, 20
    BEGIN
        CLIENTEDGE
        NAME "City"
    END

    STATICTEXT 550, "Addr1", 10, 90, 60, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "addr1_lbl"
    END

    STATICTEXT 560, "Addr2", 10, 110, 60, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "addr2_lbl"
    END

    STATICTEXT 570, "City", 10, 130, 60, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "city_lbl"
    END

    STATICTEXT 580, "State", 10, 150, 60, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "state_lbl"
    END

    STATICTEXT 581, "Postal code", 140, 150, 60, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "zip_lbl"
    END

    EDIT 190, "", 205, 150, 90, 20
    BEGIN
        CLIENTEDGE
        NAME "zip"
    END

    LISTBOX 300, "", 320, 10, 180, 80
    BEGIN
        CLIENTEDGE
        MULTISELECT
        NAME "option_list"
    END

    BUTTON 1, "&Ok", 520, 10, 60, 20
    BEGIN
        NAME "ok_btn"
    END

    BUTTON 2, "E&xit", 520, 50, 60, 20
    BEGIN
        NAME "exit_btn"
    END

    LISTBUTTON 192, "", 75, 170, 220, 90
    BEGIN
        NAME "country"
    END

    STATICTEXT 592, "Country", 10, 170, 60, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "country_lbl"
    END

    STATICTEXT 522, "Ext", 195, 50, 25, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "extension_lbl"
    END

    EDIT 122, "", 225, 50, 70, 20
    BEGIN
        CLIENTEDGE
        NAME "extension"
    END

    LISTBUTTON 180, "", 75, 150, 65, 90
    BEGIN
        NAME "state"
    END

    CHECKBOX 593, "&Main contact", 75, 215, 85, 20
    BEGIN
        NAME "main_contact"
        SHORTCUE "Main contact for this firm."
    END

    CHECKBOX 594, "&AP contact", 75, 235, 85, 20
    BEGIN
        NAME "ap_contact"
        SHORTCUE "Accounts payable contact"
    END

    STATICTEXT 596, "Advantage:", 10, 195, 60, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "advantage_lbl"
    END

    CHECKBOX 597, "A&nnouncements", 170, 215, 100, 20
    BEGIN
        NAME "announcements"
        SHORTCUE "On announcements list."
    END

    RADIOBUTTON 598, "HardCopy", 75, 195, 70, 20
    BEGIN
        NAME "adv_y"
        SHORTCUE "Mail hard copy magazine."
    END

    RADIOBUTTON 599, "E-Zine", 150, 195, 60, 20
    BEGIN
        NAME "adv_e"
        SHORTCUE "Electronic version only."
    END

    RADIOBUTTON 600, "None", 215, 195, 70, 20
    BEGIN
        NAME "adv_n"
    END

    CHECKBOX 601, "&SAM Contact", 170, 235, 100, 20
    BEGIN
        NAME "sam_contact"
        SHORTCUE "Use this e-mail address for SAM notices"
    END

    CHECKBOX 602, "Perpetual Notices", 285, 235, 150, 20
    BEGIN
        NAME "perpetNotice"
    END

END

WINDOW 104 "Sales, Aging, Invoices" 100 100 930 600
BEGIN
    EVENTMASK 3287287500
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "sales"
    GROUPBOX 100, "Sales", 5, 5, 180, 160
    BEGIN
        NAME "sales_grp"
    END

    EDIT 110, "", 90, 20, 80, 20
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "mtd"
        READONLY
    END

    STATICTEXT 560, "Last Payment", 15, 120, 70, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "last_pmt_lbl"
    END

    STATICTEXT 510, "MTD", 15, 20, 70, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "mtd_lbl"
    END

    EDIT 120, "", 90, 40, 80, 20
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "ytd"
        READONLY
    END

    EDIT 130, "", 90, 60, 80, 20
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "pyr"
        READONLY
    END

    EDIT 140, "", 90, 80, 80, 20
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "nmtd"
        READONLY
    END

    EDIT 150, "", 90, 100, 80, 20
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "last_inv_date"
        READONLY
    END

    EDIT 160, "", 90, 120, 80, 20
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "last_pmt_date"
        READONLY
    END

    STATICTEXT 520, "YTD", 15, 40, 70, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "ytd_lbl"
    END

    STATICTEXT 530, "Prev Year", 15, 60, 70, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "prev_year_lbl"
    END

    STATICTEXT 540, "Next Month", 15, 80, 70, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "next_month_lbl"
    END

    STATICTEXT 550, "Last Invoice", 15, 100, 70, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "last_inv_lbl"
    END

    GROUPBOX 200, "Aging", 190, 5, 260, 160
    BEGIN
        NAME "aging_grp"
    END

    STATICTEXT 610, "Current", 200, 40, 45, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "current_lbl"
    END

    STATICTEXT 620, "30", 200, 60, 45, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "30_lbl"
    END

    STATICTEXT 630, "60", 200, 80, 45, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "60_lbl"
    END

    STATICTEXT 640, "90", 200, 100, 45, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "90_lbl"
    END

    STATICTEXT 650, "120", 200, 120, 45, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "120_lbl"
    END

    STATICTEXT 660, "Total", 350, 100, 45, 20
    BEGIN
        NAME "total_lbl"
    END

    EDIT 210, "", 250, 40, 80, 20
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "current"
        READONLY
    END

    EDIT 220, "", 250, 60, 80, 20
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "age30"
        READONLY
    END

    EDIT 230, "", 250, 80, 80, 20
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "age60"
        READONLY
    END

    EDIT 240, "", 250, 100, 80, 20
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "age90"
        READONLY
    END

    EDIT 250, "", 250, 120, 80, 20
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "age120"
        READONLY
    END

    EDIT 260, "", 350, 120, 80, 20
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "bal_due"
        READONLY
    END

    GRID 300, "", 470, 40, 450, 550
    BEGIN
        CLIENTEDGE
        COLUMNHEAD 20, 301
        COLUMNS 7
        GRIDCOLTITLE 0, "Invoice"
        GRIDCOLTITLE 1, "Date"
        GRIDCOLTITLE 2, "Due/Pmt"
        GRIDCOLTITLE 3, "Chk/Ref"
        GRIDCOLTITLE 4, "Amount"
        GRIDCOLTITLE 5, "Applied"
        GRIDCOLTITLE 6, "Balance"
        GRIDCOLWIDTH 0, 55
        GRIDCOLWIDTH 1, 60
        GRIDCOLWIDTH 2, 60
        GRIDCOLWIDTH 3, 55
        GRIDCOLWIDTH 4, 65
        GRIDCOLWIDTH 5, 65
        GRIDCOLWIDTH 6, 65
        HORIZLINES
        HSCROLLBAR
        LONGCUE "Double click on the invoice number to drill down to the invoice display."
        MAXCOLS 2147483647
        NAME "Grid"
        ROWS 25
        SHORTCUE "Double click on the invoice number to drill down to the invoice display."
        USERSIZE
        VERTLINES
        VSCROLLBAR
    END

    EDIT 310, "", 775, 10, 60, 20
    BEGIN
        CLIENTEDGE
        NAME "inv_nbr"
    END

    LISTBUTTON 320, "", 470, 10, 60, 90
    BEGIN
        NAME "type_list"
    END

    CHECKBOX 330, "&Recent first", 540, 10, 85, 20
    BEGIN
        NAME "dir"
    END

    BUTTON 1, "Load Grid", 625, 10, 70, 20
    BEGIN
        NAME "next_btn"
    END

    STATICTEXT 710, "Next Inv#", 715, 13, 56, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "inv_lbl"
    END

    BUTTON 400, "E&xit", 850, 10, 70, 20
    BEGIN
        NAME "exit_btn"
    END

    STATICTEXT 605, "Future", 200, 20, 45, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "future_lbl"
    END

    EDIT 205, "", 250, 20, 80, 20
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "future"
        READONLY
    END

END

WINDOW 105 "Comments" 100 100 470 230
BEGIN
    EVENTMASK 1139802116
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "comments"
    LISTBOX 110, "", 5, 10, 385, 119
    BEGIN
        CLIENTEDGE
        MULTISELECT
        NAME "comment_list"
    END

    EDIT 200, "", 5, 150, 70, 20
    BEGIN
        CLIENTEDGE
        NAME "date"
        READONLY
    END

    EDIT 210, "", 75, 150, 40, 20
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "seq"
        READONLY
    END

    BUTTON 300, "&Add", 395, 20, 70, 20
    BEGIN
        NAME "add_btn"
    END

    BUTTON 310, "&Edit", 395, 40, 70, 20
    BEGIN
        NAME "edit_btn"
    END

    BUTTON 320, "&Delete", 395, 60, 70, 20
    BEGIN
        NAME "delete_btn"
    END

    BUTTON 330, "E&xit", 395, 80, 70, 20
    BEGIN
        NAME "exit_btn"
    END

    BUTTON 1, "&Ok", 395, 190, 70, 20
    BEGIN
        NAME "ok_btn"
    END

    CUSTOMEDIT 220, "", 5, 175, 385, 45
    BEGIN
        BORDER
        CLIENTEDGE
        LIMIT 650
        ONEPARAGRAPH
        NAME "comment"
        WORDWRAP
    END

END

WINDOW 106 "Invoice History" 1 100 1100 600
BEGIN
    EVENTMASK 3287287500
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "invoice_history"
    EDIT 110, "", 55, 10, 80, 20
    BEGIN
        CLIENTEDGE
        NAME "invoice_nbr"
    END

    STATICTEXT 510, "Invoice", 10, 10, 40, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "inv_lbl"
    END

    STATICTEXT 520, "Date", 140, 10, 30, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "date_lbl"
    END

    STATICTEXT 530, "PO", 260, 10, 25, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "po_lbl"
    END

    EDIT 130, "", 290, 10, 80, 20
    BEGIN
        CLIENTEDGE
        NAME "po"
    END

    BUTTON 1, "&Search", 380, 10, 70, 20
    BEGIN
        NAME "search_btn"
    END

    CUSTOMEDIT 140, "", 690, 335, 400, 260
    BEGIN
        CLIENTEDGE
        FONT "Courier New" 8
        HSCROLLBAR
        IGNORETABS
        NAME "invoice"
        VSCROLLBAR
    END

    LISTBOX 150, "", 760, 10, 250, 255
    BEGIN
        CLIENTEDGE
        FONT "Courier New" 8
        MULTISELECT
        NAME "invoice_list"
    END

    BUTTON 300, "&Print", 1020, 275, 70, 20
    BEGIN
        NAME "print_btn"
        SHORTCUE "Print or email selected invoice"
    END

    LISTBUTTON 160, "", 760, 275, 250, 90
    BEGIN
        FONT "Courier New" 8
        NAME "printers"
    END

    BUTTON 250, "E&xit", 1020, 10, 70, 20
    BEGIN
        NAME "exit_btn"
    END

    EDIT 170, "", 760, 305, 250, 20
    BEGIN
        CLIENTEDGE
        NAME "email_addr"
    END

    STATICTEXT 550, "Invoices", 695, 10, 60, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "invoice_list_lbl"
    END

    STATICTEXT 560, "Output", 695, 280, 60, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "printers_lbl"
    END

    STATICTEXT 570, "Email address", 665, 310, 90, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "email_addr_lbl"
    END

    INPUTD 120, "", 175, 10, 80, 20
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "date"
        PASSENTER
        PASSTAB
    END

    BUTTON 320, "&Credit", 495, 10, 70, 20
    BEGIN
        NAME "credit_btn"
        SHORTCUE "Credit Credit Memo Order for Selected Invoice"
    END

    HTMLVIEW 145, "", 5, 35, 660, 560
    BEGIN
        NAME "InvoiceBrowser"
        URL "about:blank"
        NOT DRAGENABLED
    END

END

WINDOW 108 "Send Renewals to Web" 1 100 450 360
BEGIN
    EVENTMASK 58721804
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "renew_contracts"
    CHECKBOX 102, "SAM", 300, 15, 55, 20
    BEGIN
        CHECKED
        NAME "sam_chk"
    END

    CHECKBOX 103, "Rental", 300, 40, 55, 20
    BEGIN
        CHECKED
        NAME "rental_chk"
    END

    BUTTON 105, "&Send to web", 300, 140, 110, 20
    BEGIN
        NAME "push_btn"
    END

    BUTTON 107, "&Find SN's", 300, 110, 110, 20
    BEGIN
        NAME "search_btn"
    END

    BUTTON 108, "E&xit", 300, 200, 110, 20
    BEGIN
        NAME "exit_btn"
    END

    STATICTEXT 111, "New expiration", 145, 15, 100, 20
    BEGIN
        NAME "new_dt_lbl"
    END

    LISTBOX 112, "", 20, 100, 245, 218
    BEGIN
        CLIENTEDGE
        FONT "Courier New" 8
        MULTISELECT
        NAME "contract_list"
    END

    LISTBUTTON 118, "", 20, 40, 120, 90
    BEGIN
        NAME "current_dt"
    END

    LISTBUTTON 119, "", 145, 40, 120, 130
    BEGIN
        NAME "new_dt"
    END

    STATICTEXT 120, "Current expiration", 20, 15, 100, 20
    BEGIN
        NAME "current_dt_lbl"
    END

END

WINDOW 109 "Reseller Partner Program" 100 100 340 330
BEGIN
    EVENTMASK 3287287500
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "partner"
    CHECKBOX 110, "Attended BASIS event", 15, 25, 130, 20
    BEGIN
        NAME "event_chk"
        READONLY
    END

    CHECKBOX 130, "&Application Directory entry", 15, 120, 150, 20
    BEGIN
        NAME "apdir_chk"
    END

    CHECKBOX 140, "&Registered on BBx/BBj list", 15, 140, 150, 20
    BEGIN
        NAME "bblist_chk"
    END

    CHECKBOX 160, "&Plan submitted", 15, 215, 150, 20
    BEGIN
        NAME "plan_chk"
    END

    CHECKBOX 180, "&Goals met", 15, 255, 150, 20
    BEGIN
        NAME "goals_chk"
    END

    CHECKBOX 170, "&Questionnaire completed", 15, 235, 150, 20
    BEGIN
        NAME "qstnr_chk"
    END

    GRID 120, "", 150, 25, 170, 85
    BEGIN
        CLIENTEDGE
        COLUMNHEAD 20, 118
        COLUMNS 2
        GRIDCOLTITLE 0, "Type"
        GRIDCOLTITLE 1, "Date"
        GRIDCOLWIDTH 0, 85
        GRIDCOLWIDTH 1, 75
        HORIZLINES
        MAXCOLS 2147483647
        NAME "event_grid"
        ROWS 4
        USERSIZE
        VERTLINES
        VSCROLLBAR
    END

    STATICTEXT 134, "Last updated: ", 170, 123, 80, 16
    BEGIN
        JUSTIFICATION 32768
        NAME "apdir_lbl"
    END

    INPUTD 135, "", 250, 120, 70, 20
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "apdir_dt"
        PASSENTER
        PASSTAB
    END

    STATICTEXT 164, "Date: ", 170, 215, 80, 16
    BEGIN
        JUSTIFICATION 32768
        NAME "plan_lbl"
    END

    STATICTEXT 184, "Date: ", 170, 255, 80, 16
    BEGIN
        JUSTIFICATION 32768
        NAME "goals_lbl"
    END

    STATICTEXT 174, "Date: ", 170, 235, 80, 16
    BEGIN
        JUSTIFICATION 32768
        NAME "qstnr_lbl"
    END

    INPUTD 165, "", 250, 215, 70, 20
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "plan_dt"
        PASSENTER
        PASSTAB
    END

    INPUTD 185, "", 250, 255, 70, 20
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "goals_dt"
        PASSENTER
        PASSTAB
    END

    INPUTD 175, "", 250, 235, 70, 20
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "qstnr_dt"
        PASSENTER
        PASSTAB
    END

    STATICTEXT 189, "Total Discount: ", 15, 300, 80, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "discount_lbl"
    END

    GROUPBOX 300, "Product Knowledge", 5, 5, 330, 190
    BEGIN
        NAME "Product_grp"
    END

    GROUPBOX 301, "Marketing Plan", 5, 195, 330, 95
    BEGIN
        NAME "market_grp"
    END

    BUTTON 1, "&Update", 165, 300, 80, 20
    BEGIN
        NAME "ok_btn"
    END

    BUTTON 200, "E&xit", 250, 300, 80, 20
    BEGIN
        NAME "exit_btn"
    END

    EDIT 190, "", 100, 300, 40, 20
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "discount"
        READONLY
    END

    LISTBUTTON 145, "", 15, 165, 200, 90
    BEGIN
        NAME "link_lbtn"
    END

END

WINDOW 110 "" 100 100 400 300
BEGIN
    EVENTMASK 3287287500
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "report"
    EDIT 105, "", 130, 20, 220, 20
    BEGIN
        CLIENTEDGE
        NAME "email"
    END

    STATICTEXT 100, " Email report to:", 50, 20, 80, 20
    BEGIN
        NAME "email_lbl"
    END

    BUTTON 1, "&Ok", 120, 260, 70, 20
    BEGIN
        NAME "ok_btn"
    END

    BUTTON 2, "&Cancel", 200, 260, 70, 20
    BEGIN
        NAME "cancel_btn"
    END

    LISTBOX 110, " \n", 50, 70, 120, 67
    BEGIN
        CLIENTEDGE
        MULTISELECT
        NAME "country_lbox"
    END

    LISTBOX 115, " \n", 245, 70, 120, 67
    BEGIN
        CLIENTEDGE
        MULTISELECT
        NAME "selected_lbox"
    END

    BUTTON 7, "&Add >", 180, 80, 60, 20
    BEGIN
        NAME "add_btn"
    END

    BUTTON 116, "< &Remove", 180, 110, 60, 20
    BEGIN
        NAME "remove_btn"
    END

    EDIT 120, " ", 50, 170, 90, 20
    BEGIN
        CLIENTEDGE
        NAME "start_cust"
    END

    EDIT 125, "", 50, 215, 90, 20
    BEGIN
        CLIENTEDGE
        NAME "end_cust"
    END

    EDIT 130, " ", 145, 170, 200, 20
    BEGIN
        CLIENTEDGE
        DISABLED
        NAME "start_name"
    END

    EDIT 135, " ", 145, 215, 200, 20
    BEGIN
        CLIENTEDGE
        DISABLED
        NAME "end_name"
    END

    STATICTEXT 106, "Countries:", 50, 50, 90, 20
    BEGIN
        NAME "country_lbl"
    END

    STATICTEXT 108, "Selected:", 230, 50, 90, 20
    BEGIN
        NAME "selected_lbl"
    END

    STATICTEXT 136, "Starting Customer:", 50, 150, 90, 20
    BEGIN
        NAME "start_lbl"
    END

    STATICTEXT 137, "Ending Customer:", 50, 195, 90, 20
    BEGIN
        NAME "end_lbl"
    END

END

