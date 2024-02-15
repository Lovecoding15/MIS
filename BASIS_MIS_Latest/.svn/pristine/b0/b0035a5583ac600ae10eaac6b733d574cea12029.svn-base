//#charset: windows-1252

VERSION "4.0"

WINDOW 101 "Credit SAM, RNT, DVK Renewals" 1 100 450 360
BEGIN
    EVENTMASK 3287287500
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "credit_sam"
    EDIT 110, "", 70, 130, 75, 20
    BEGIN
        CLIENTEDGE
        NAME "invoice_nbr"
        READONLY
    END

    STATICTEXT 510, "Invoice", 20, 130, 40, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "inv_lbl"
    END

    STATICTEXT 520, "Date", 150, 130, 30, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "date_lbl"
    END

    STATICTEXT 530, "PO", 270, 130, 25, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "po_lbl"
    END

    EDIT 130, "", 300, 130, 100, 20
    BEGIN
        CLIENTEDGE
        NAME "po"
        READONLY
    END

    CUSTOMEDIT 140, "", 20, 155, 380, 190
    BEGIN
        CLIENTEDGE
        FONT "Courier New" 8
        HSCROLLBAR
        IGNORETABS
        NAME "invoice"
        VSCROLLBAR
    END

    INPUTD 120, "", 185, 130, 80, 20
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "date"
        PASSENTER
        PASSTAB
        READONLY
    END

    BUTTON 1, "&Ok", 370, 65, 70, 20
    BEGIN
        NAME "ok_btn"
        SHORTCUE "Generate Credit Memos for Selected Invoices"
    END

    BUTTON 2, "E&xit", 370, 40, 70, 20
    BEGIN
        NAME "cancel_btn"
    END

    LISTBOX 101, " \n", 20, 25, 100, 67
    BEGIN
        CLIENTEDGE
        NAME "selected_lbox"
    END

    LISTBOX 105, " \n", 240, 25, 100, 67
    BEGIN
        CLIENTEDGE
        NAME "rejected_lbox"
    END

    BUTTON 7, "<&Credit", 130, 40, 100, 20
    BEGIN
        NAME "add_btn"
    END

    BUTTON 8, "&Don't credit>", 130, 65, 100, 20
    BEGIN
        NAME "remove_btn"
    END

    STATICTEXT 501, "Invoices to Credit", 20, 5, 100, 20
    BEGIN
        NAME "selected_lbl"
    END

    STATICTEXT 505, "Do Not Credit", 220, 5, 90, 20
    BEGIN
        NAME "rejected_lbl"
    END

    STATICTEXT 540, "Customer", 20, 100, 50, 20
    BEGIN
        NAME "cust_lbl"
    END

    EDIT 150, "", 70, 102, 75, 20
    BEGIN
        CLIENTEDGE
        NAME "cust_num"
        READONLY
    END

    EDIT 160, "", 150, 102, 250, 20
    BEGIN
        CLIENTEDGE
        NAME "cust_name"
        READONLY
    END

END

