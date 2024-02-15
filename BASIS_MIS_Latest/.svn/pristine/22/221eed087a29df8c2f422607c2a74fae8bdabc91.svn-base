//#charset: windows-1252

VERSION "4.0"

WINDOW 101 "Invoice Review/Payment" 0 0 790 500
BEGIN
    NOT CLOSEBOX
    EVENTMASK 1136657412
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "invoices"
    NOTITLEBAR
    NOT SIZABLE
    STATICTEXT 125, "Due Date", 300, 175, 70, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "pmt_due_lbl"
    END

    EDIT 130, "", 375, 170, 95, 25
    BEGIN
        CLIENTEDGE
        NAME "pmt_due_dt"
        READONLY
    END

    CUSTOMEDIT 140, "", 35, 250, 435, 180
    BEGIN
        CLIENTEDGE
        FONT "Courier New" 8
        HSCROLLBAR
        IGNORETABS
        NAME "invoice"
        VSCROLLBAR
    END

    LISTBOX 150, "", 272, 65, 100, 82
    BEGIN
        CLIENTEDGE
        FONT "Dialog" 10
        MULTISELECT
        NAME "invoice_list"
    END

    BUTTON 300, "&Send", 380, 460, 90, 25
    BEGIN
        NAME "print_btn"
        SHORTCUE "Print or email selected invoice"
    END

    BUTTON 250, "E&xit", 685, 460, 90, 25
    BEGIN
        NAME "exit_btn"
    END

    EDIT 170, "", 35, 460, 340, 25
    BEGIN
        CLIENTEDGE
        NAME "email_addr"
    END

    STATICTEXT 550, "Invoices ", 272, 40, 100, 20
    BEGIN
        NAME "invoice_list_lbl"
    END

    LISTBOX 580, "", 532, 65, 100, 82
    BEGIN
        CLIENTEDGE
        FONT "Dialog" 10
        MULTISELECT
        NAME "Pay_list"
    END

    STATICTEXT 585, "Selected", 532, 40, 100, 20
    BEGIN
        NAME "pmt_list_lbl"
    END

    BUTTON 200, "&Add >", 407, 65, 90, 25
    BEGIN
        NAME "add"
    END

    BUTTON 220, "< &Remove ", 407, 110, 90, 25
    BEGIN
        NAME "remove"
    END

    STATICTEXT 115, "Balance", 25, 225, 110, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "bal_due_lbl"
    END

    STATICTEXT 105, "Payments", 25, 200, 110, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Pmts_lbl"
    END

    LISTBUTTON 586, "", 140, 195, 330, 90
    BEGIN
        NAME "pmts"
        READONLY
        SELECTIONHEIGHT 25
    END

    STATICTEXT 587, "Email  PDF copy of this invoice to:", 40, 440, 250, 20
    BEGIN
        NAME "email_txt"
    END

    BUTTON 240, "&Process Now", 590, 460, 90, 25
    BEGIN
        NAME "next"
        SHORTCUE "Pay total / Apply credit"
    END

    GROUPBOX 588, "Credit Card", 590, 155, 180, 300
    BEGIN
        NAME "credit_card_grp"
    END

    LISTBUTTON 589, "", 505, 465, 150, 150
    BEGIN
        INVISIBLE
        NAME "Credit Card List"
    END

    INPUTE 590, "", 600, 205, 160, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Number"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    INPUTE 591, "", 600, 260, 160, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Name"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    LISTBUTTON 593, "", 600, 370, 100, 120
    BEGIN
        NAME "Expiry Month"
    END

    LISTBUTTON 594, "", 700, 370, 60, 120
    BEGIN
        NAME "Expiry Year"
    END

    LISTBUTTON 592, "", 600, 315, 160, 90
    BEGIN
        NAME "cc_type"
    END

    STATICTEXT 595, "Card Number", 600, 185, 100, 20
    BEGIN
        NAME "cc_number_lbl"
    END

    STATICTEXT 596, "Name on Card", 600, 240, 120, 20
    BEGIN
        NAME "cc_name_lbl"
    END

    EDIT 597, "", 652, 65, 118, 25
    BEGIN
        CLIENTEDGE
        NAME "total"
        READONLY
    END

    STATICTEXT 598, "Total", 680, 40, 85, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    STATICTEXT 599, "On File:", 550, 465, 40, 15
    BEGIN
        INVISIBLE
        NAME "file_lbl"
    END

    STATICTEXT 601, "Type", 600, 295, 70, 20
    BEGIN
        NAME "type_lbl"
    END

    STATICTEXT 602, "Expires", 600, 350, 100, 20
    BEGIN
        NAME "expire_lbl"
    END

    GROUPBOX 603, "", 20, 155, 470, 335
    BEGIN
        NAME "inv_grp"
    END

    STATICTEXT 604, "Invoice Total", 25, 175, 110, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "inv_tot_lbl"
    END

    EDIT 120, "", 140, 220, 120, 25
    BEGIN
        CLIENTEDGE
        NAME "bal_due"
        READONLY
    END

    EDIT 605, "", 140, 170, 120, 25
    BEGIN
        CLIENTEDGE
        NAME "inv_tot"
        READONLY
    END

    STATICTEXT 606, "Starting Invoice", 20, 66, 95, 20
    BEGIN
        NAME "start_inv_lbl"
    END

    INPUTE 607, "", 142, 65, 90, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "start_invoice"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    LISTBUTTON 608, "", 20, 110, 95, 120
    BEGIN
        NAME "inv_type"
        SELECTIONHEIGHT 25
    END

    BUTTON 609, "&Display", 142, 110, 90, 25
    BEGIN
        NAME "display"
    END

    BUTTON 610, "Credit this invoice", 330, 220, 140, 25
    BEGIN
        NAME "credit_btn"
    END

    BUTTON 100, "Apl GWI Reb", 652, 110, 118, 25
    BEGIN
        NAME "apply_sam_btn"
    END

    STATICTEXT 101, "BASIS b-commerce Customer Invoices", 0, 0, 790, 25
    BEGIN
        FONT "Dialog" 14,bold
        JUSTIFICATION 16384
        NAME "headerText2"
    END

    GROUPBOX 102, "", 260, 28, 385, 125
    BEGIN
        NAME "Group Control"
    END

    BUTTON 612, "Split CC Pymt", 495, 460, 90, 25
    BEGIN
        NAME "splitCCBtn"
    END

    GROUPBOX 613, "Credit Card 2", 400, 155, 180, 255
    BEGIN
        INVISIBLE
        NAME "credit_card_grp_2"
    END

    INPUTE 103, "", 410, 205, 160, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        INVISIBLE
        NAME "Number2"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    INPUTE 104, "", 410, 260, 160, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        INVISIBLE
        NAME "Name2"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    STATICTEXT 106, "Card Number", 410, 185, 100, 20
    BEGIN
        INVISIBLE
        NAME "cc_number_lbl_2"
    END

    STATICTEXT 107, "Name on Card", 410, 240, 120, 20
    BEGIN
        INVISIBLE
        NAME "cc_name_lbl_2"
    END

    LISTBUTTON 108, "", 410, 370, 100, 120
    BEGIN
        INVISIBLE
        NAME "Expiry Month 2"
        SELECTIONHEIGHT 21
        OPENWIDTH 100
    END

    LISTBUTTON 109, "", 510, 370, 60, 120
    BEGIN
        INVISIBLE
        NAME "Expiry Year 2"
        SELECTIONHEIGHT 21
        OPENWIDTH 60
    END

    LISTBUTTON 110, "", 410, 315, 160, 90
    BEGIN
        INVISIBLE
        NAME "cc_type_2"
        SELECTIONHEIGHT 21
        OPENWIDTH 160
    END

    STATICTEXT 111, "Type", 410, 290, 70, 20
    BEGIN
        INVISIBLE
        NAME "type_lbl_2"
    END

    STATICTEXT 112, "Expires", 410, 350, 100, 20
    BEGIN
        INVISIBLE
        NAME "expire_lbl_2"
    END

    STATICTEXT 113, "Amount", 410, 405, 90, 20
    BEGIN
        INVISIBLE
        NAME "amount_lbl_2"
        NOT WORDWRAP
    END

    EDIT 114, "", 410, 425, 160, 25
    BEGIN
        INVISIBLE
        JUSTIFICATION 32768
        MAXLENGTH 32767
        NAME "Amount2"
        SHORTCUE "Partial payments are acceptable."
        SPELLCHECKED
        NOT DRAGENABLED
    END

    EDIT 116, "", 600, 425, 160, 25
    BEGIN
        JUSTIFICATION 32768
        MAXLENGTH 32767
        NAME "Amount"
        SHORTCUE "Partial payments are acceptable."
        SPELLCHECKED
        NOT DRAGENABLED
    END

    STATICTEXT 117, "Amount", 600, 405, 90, 20
    BEGIN
        NAME "amount_lbl"
        NOT WORDWRAP
    END

    STATICTEXT 611, "", 590, 155, 180, 300
    BEGIN
        BACKGROUNDCOLOR RGB(241,241,241)
        INVISIBLE
        NAME "blank"
    END

END

WINDOW 102 "Apply Growth Incentive Rebate" 0 0 790 500
BEGIN
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "samRebate"
    NOTITLEBAR
    EDIT 100, "", 150, 20, 120, 25
    BEGIN
        CLIENTEDGE
        NAME "samRebateCrdMemo"
        READONLY
    END

    EDIT 101, "", 410, 20, 120, 25
    BEGIN
        CLIENTEDGE
        NAME "samRebateCrdAmt"
        READONLY
    END

    STATICTEXT 102, "GWI Rebate CM:", 20, 20, 120, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "SamRebateLabel"
    END

    BUTTON 103, "Cancel", 540, 320, 90, 25
    BEGIN
        NAME "srCancelBtn"
    END

    PROGRESSBAR 104, 450, 360, 180, 30
    BEGIN
        CUSTOMTEXT ""
        INVISIBLE
        NAME "calcRebateProgress"
    END

    STATICTEXT 105, "Calculating Rebate Applicaiton:", 240, 360, 200, 25
    BEGIN
        INVISIBLE
        JUSTIFICATION 32768
        NAME "calcRebateLabel"
    END

    GRID 106, "", 29, 68, 600, 210
    BEGIN
        CLIENTEDGE
        COLUMNHEAD 25, 108
        COLUMNS 5
        FOREGROUNDCOLOR RGB(0,0,0)
        GRIDCOLTITLE 0, "Invoice Nbr"
        GRIDCOLTITLE 1, "Invoice Amt"
        GRIDCOLTITLE 2, "Eligible Rebate"
        GRIDCOLTITLE 3, "Apply Crdt"
        GRIDCOLTITLE 4, "Amt Applied"
        GRIDCOLWIDTH 0, 100
        GRIDCOLWIDTH 1, 100
        GRIDCOLWIDTH 2, 100
        GRIDCOLWIDTH 3, 100
        GRIDCOLWIDTH 4, 100
        HORIZLINES
        MAXCOLS 2147483647
        NAME "invoiceGrid"
        ROWS 5
        USERSIZE
        VERTLINES
        VSCROLLBAR
    END

    EDIT 107, "", 410, 290, 120, 25
    BEGIN
        CLIENTEDGE
        NAME "amtApplied"
        READONLY
    END

    EDIT 109, "", 410, 320, 120, 25
    BEGIN
        CLIENTEDGE
        NAME "remainingCredit"
        READONLY
    END

    STATICTEXT 110, "Amount Applied:", 250, 290, 150, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    STATICTEXT 111, "Remaining Credit:", 250, 320, 150, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    BUTTON 112, "Apply Credit", 540, 290, 90, 25
    BEGIN
        NAME "applyBtn"
    END

    STATICTEXT 113, "Amount:", 340, 20, 60, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

END

