//#charset: windows-1252

VERSION "4.0"

WINDOW 101 "Rivedere fatture/Pagamenti" 1 100 590 441
BEGIN
    NOT CLOSEBOX
    EVENTMASK 1136657412
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "invoices"
    NOT SIZABLE
    STATICTEXT 125, "Data dovuto", 189, 95, 71, 20
    BEGIN
        NAME "pmt_due_lbl"
    END

    EDIT 130, "", 260, 95, 75, 20
    BEGIN
        CLIENTEDGE
        NAME "pmt_due_dt"
        READONLY
    END

    CUSTOMEDIT 140, "", 10, 165, 330, 180
    BEGIN
        CLIENTEDGE
        FONT "Courier New" 8
        HSCROLLBAR
        IGNORETABS
        NAME "invoice"
        VSCROLLBAR
    END

    LISTBOX 150, "", 170, 30, 85, 38
    BEGIN
        CLIENTEDGE
        FONT "Courier New" 8
        NAME "invoice_list"
    END

    BUTTON 300, "&Invia", 235, 370, 80, 20
    BEGIN
        NAME "print_btn"
        SHORTCUE "Print or email selected invoice"
    END

    BUTTON 250, "&Uscire", 375, 370, 80, 20
    BEGIN
        NAME "exit_btn"
    END

    EDIT 170, "", 15, 370, 215, 20
    BEGIN
        CLIENTEDGE
        NAME "email_addr"
    END

    STATICTEXT 550, "Fatture", 175, 10, 45, 20
    BEGIN
        NAME "invoice_list_lbl"
    END

    LISTBOX 580, "", 350, 30, 85, 41
    BEGIN
        CLIENTEDGE
        NAME "Pay_list"
    END

    STATICTEXT 585, "Selezionate", 355, 10, 60, 20
    BEGIN
        NAME "pmt_list_lbl"
    END

    BUTTON 200, "&Agg >", 260, 35, 77, 20
    BEGIN
        NAME "add"
    END

    BUTTON 220, "< &Rimuove ", 260, 55, 77, 20
    BEGIN
        NAME "remove"
    END

    STATICTEXT 115, "Bilancio", 10, 140, 50, 20
    BEGIN
        NAME "bal_due_lbl"
    END

    STATICTEXT 105, "Pagamenti", 10, 117, 60, 20
    BEGIN
        NAME "Pmts_lbl"
    END

    LISTBUTTON 586, "", 85, 117, 200, 90
    BEGIN
        NAME "pmts"
        READONLY
    END

    STATICTEXT 587, "Inviare una copia di questa fattura (PDF) a Email:", 15, 350, 300, 20
    BEGIN
        NAME "email_txt"
    END

    BUTTON 240, "&Procedere", 375, 345, 80, 20
    BEGIN
        NAME "next"
        SHORTCUE "Pay total / Apply credit"
    END

    GROUPBOX 588, "Credit Card", 345, 85, 155, 255
    BEGIN
        NAME "credit_card_grp"
    END

    LISTBUTTON 589, "", 350, 125, 150, 150
    BEGIN
        NAME "Credit Card List"
    END

    INPUTE 590, "", 360, 170, 125, 20
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Number"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    INPUTE 591, "", 360, 215, 125, 20
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Name"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    LISTBUTTON 593, "", 360, 305, 80, 120
    BEGIN
        NAME "Expiry Month"
    END

    LISTBUTTON 594, "", 440, 305, 50, 120
    BEGIN
        NAME "Expiry Year"
    END

    LISTBUTTON 592, "", 360, 260, 125, 90
    BEGIN
        NAME "cc_type"
    END

    STATICTEXT 595, "Card Number", 360, 150, 65, 15
    BEGIN
        NAME "cc_number_lbl"
    END

    STATICTEXT 596, "Name on Card", 360, 197, 70, 15
    BEGIN
        NAME "cc_name_lbl"
    END

    EDIT 597, "", 441, 30, 75, 20
    BEGIN
        CLIENTEDGE
        NAME "total"
        READONLY
    END

    STATICTEXT 598, "Totale", 442, 10, 70, 20
    BEGIN
        NAME "Static Text"
    END

    STATICTEXT 599, "On File:", 355, 105, 40, 15
    BEGIN
        NAME "file_lbl"
    END

    STATICTEXT 601, "Type", 360, 242, 70, 15
    BEGIN
        NAME "type_lbl"
    END

    STATICTEXT 602, "Expires", 360, 287, 70, 15
    BEGIN
        NAME "expire_lbl"
    END

    GROUPBOX 603, "", 1, 85, 345, 315
    BEGIN
        NAME "inv_grp"
    END

    STATICTEXT 604, "Totale fattura", 10, 95, 70, 20
    BEGIN
        NAME "inv_tot_lbl"
    END

    EDIT 120, "", 85, 140, 90, 20
    BEGIN
        CLIENTEDGE
        NAME "bal_due"
        READONLY
    END

    EDIT 605, "", 85, 95, 90, 20
    BEGIN
        CLIENTEDGE
        NAME "inv_tot"
        READONLY
    END

    STATICTEXT 606, "Inizio fattura", 10, 30, 80, 20
    BEGIN
        NAME "start_inv_lbl"
    END

    INPUTE 607, "", 95, 30, 60, 20
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "start_invoice"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    LISTBUTTON 608, "", 10, 55, 70, 120
    BEGIN
        NAME "inv_type"
    END

    BUTTON 609, "&Visual.", 95, 55, 60, 20
    BEGIN
        NAME "display"
    END

    BUTTON 610, "A&ccreditare questa fattura", 185, 140, 140, 20
    BEGIN
        NAME "credit_btn"
    END

    STATICTEXT 611, "", 350, 85, 150, 250
    BEGIN
        INVISIBLE
        NAME "blank"
    END

    BUTTON 100, "Apl SAM Reb", 415, 52, 75, 25
    BEGIN
        NAME "apply_sam_btn"
    END

END

WINDOW 102 "Apply SAM Rebate" 50 50 500 400
BEGIN
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "samRebate"
    EDIT 100, "", 120, 20, 90, 25
    BEGIN
        CLIENTEDGE
        NAME "samRebateCrdMemo"
        READONLY
    END

    EDIT 101, "", 285, 20, 90, 25
    BEGIN
        CLIENTEDGE
        NAME "samRebateCrdAmt"
        READONLY
    END

    STATICTEXT 102, "SAM Rebate CM:", 20, 20, 90, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "SamRebateLabel"
    END

    BUTTON 103, "Cancel", 390, 360, 90, 25
    BEGIN
        NAME "srCancelBtn"
    END

    PROGRESSBAR 104, 196, 360, 180, 30
    BEGIN
        CUSTOMTEXT ""
        INVISIBLE
        NAME "calcRebateProgress"
    END

    STATICTEXT 105, "Calculating Rebate Applicaiton:", 24, 360, 160, 25
    BEGIN
        INVISIBLE
        JUSTIFICATION 32768
        NAME "calcRebateLabel"
    END

    GRID 106, "", 29, 68, 400, 210
    BEGIN
        CLIENTEDGE
        COLUMNHEAD 25, 108
        COLUMNS 5
        FOREGROUNDCOLOR RGB(0,0,0)
        GRIDCOLTITLE 0, "Invoice Nbr"
        GRIDCOLTITLE 1, "Invoice Amt"
        GRIDCOLTITLE 2, "Eligible"
        GRIDCOLTITLE 3, "Apply Credit"
        GRIDCOLTITLE 4, "Amt Applied"
        GRIDCOLWIDTH 0, 80
        GRIDCOLWIDTH 1, 80
        GRIDCOLWIDTH 3, 80
        GRIDCOLWIDTH 4, 80
        HORIZLINES
        MAXCOLS 2147483647
        NAME "invoiceGrid"
        ROWS 5
        USERSIZE
        VERTLINES
        VSCROLLBAR
    END

    EDIT 107, "", 285, 290, 90, 25
    BEGIN
        CLIENTEDGE
        NAME "amtApplied"
        READONLY
    END

    EDIT 109, "", 285, 320, 90, 25
    BEGIN
        CLIENTEDGE
        NAME "remainingCredit"
        READONLY
    END

    STATICTEXT 110, "Amount Applied:", 180, 290, 90, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    STATICTEXT 111, "Remaining Credit:", 180, 320, 90, 25
    BEGIN
        NAME "Static Text"
    END

    BUTTON 112, "Apply Credit", 390, 290, 90, 25
    BEGIN
        NAME "applyBtn"
    END

    STATICTEXT 113, "Amount:", 217, 20, 60, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

END

