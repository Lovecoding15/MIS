//#charset: windows-1252

VERSION "4.0"

WINDOW 101 "Enter a Credit Card Charge" 100 100 500 587
BEGIN
    EVENTMASK 3287287500
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "enterACharge"
    EDIT 100, "", 140, 10, 70, 20
    BEGIN
        CLIENTEDGE
        NAME "custNumber"
    END

    STATICTEXT 125, "Customer Number:", 10, 10, 120, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    EDIT 104, "", 140, 70, 290, 20
    BEGIN
        CLIENTEDGE
        NAME "creditCardNumber"
    END

    RADIOBUTTON 108, "Visa", 160, 180, 60, 25
    BEGIN
        NAME "visa"
    END

    RADIOBUTTON 109, "Mastercard", 240, 180, 90, 25
    BEGIN
        NAME "mastercard"
    END

    RADIOBUTTON 110, "Amex", 340, 180, 60, 25
    BEGIN
        NAME "amex"
    END

    LISTBUTTON 103, "", 140, 40, 290, 105
    BEGIN
        INVISIBLE
        NAME "creditCardList"
        NOT OPAQUE
        SELECTIONHEIGHT 21
    END

    STATICTEXT 126, "Select Card:", 40, 40, 90, 20
    BEGIN
        INVISIBLE
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    STATICTEXT 127, "Card Number:", 40, 70, 90, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    STATICTEXT 128, "Expires:", 40, 100, 90, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    EDIT 107, "", 140, 130, 290, 20
    BEGIN
        CLIENTEDGE
        NAME "name"
    END

    STATICTEXT 129, "Name on Card:", 40, 130, 90, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    EDIT 102, "", 260, 10, 180, 20
    BEGIN
        CLIENTEDGE
        NAME "custName"
        READONLY
    END

    GROUPBOX 137, "Card Type", 140, 160, 280, 50
    BEGIN
        NAME "Group Control"
    END

    EDIT 115, "", 140, 400, 90, 20
    BEGIN
        CLIENTEDGE
        NAME "balance"
        READONLY
    END

    STATICTEXT 130, "Balance:", 50, 400, 80, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    RADIOBUTTON 117, "Use AVS and CVV2", 140, 430, 130, 25
    BEGIN
        NAME "verification"
    END

    EDIT 118, "", 140, 460, 290, 20
    BEGIN
        CLIENTEDGE
        NAME "avsAddress"
        READONLY
    END

    EDIT 119, "", 140, 490, 90, 20
    BEGIN
        CLIENTEDGE
        NAME "avsZipCode"
        READONLY
    END

    EDIT 120, "", 140, 520, 90, 20
    BEGIN
        CLIENTEDGE
        NAME "cardSecCode"
        READONLY
    END

    STATICTEXT 131, "AVS Address:", 40, 460, 90, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    STATICTEXT 132, "AVS Zip Code:", 40, 490, 90, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    STATICTEXT 133, "Card Security Code:", 20, 520, 110, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    BUTTON 122, "Exit", 140, 550, 100, 25
    BEGIN
        NAME "exit"
    END

    BUTTON 123, "Clear", 250, 550, 100, 25
    BEGIN
        NAME "clear"
    END

    BUTTON 124, "Process Card", 360, 550, 100, 25
    BEGIN
        NAME "processCard"
    END

    LISTBOX 113, "", 140, 280, 280, 80
    BEGIN
        CLIENTEDGE
        MULTISELECT
        NAME "selectAnInvoice"
    END

    BUTTON 101, "Get", 220, 10, 30, 25
    BEGIN
        NAME "getButton"
    END

    EDIT 116, "", 330, 400, 90, 20
    BEGIN
        CLIENTEDGE
        NAME "payment"
        READONLY
    END

    STATICTEXT 135, "Payment:", 260, 400, 60, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    RADIOBUTTON 111, "Pay Invoices", 160, 240, 90, 25
    BEGIN
        NAME "payInvoices"
    END

    GROUPBOX 138, "Type of Payment", 140, 220, 280, 50
    BEGIN
        NAME "Group Control"
    END

    RADIOBUTTON 112, "Prepay for an Order", 290, 240, 120, 25
    BEGIN
        NAME "payOrder"
    END

    EDIT 114, "", 140, 370, 90, 20
    BEGIN
        CLIENTEDGE
        NAME "orderReference"
        READONLY
    END

    STATICTEXT 136, "Order Reference:", 40, 370, 90, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    LISTBUTTON 105, "", 140, 100, 50, 130
    BEGIN
        NAME "month"
        SELECTIONHEIGHT 20
    END

    LISTBUTTON 106, "", 200, 100, 60, 130
    BEGIN
        NAME "year"
        SELECTIONHEIGHT 20
    END

    EDIT 121, "", 285, 520, 170, 20
    BEGIN
        MAXLENGTH 32767
        NAME "emailAddress"
        SPELLCHECKED
        NOT DRAGENABLED
    END

    STATICTEXT 134, "Email:", 240, 520, 40, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text134"
        NOT WORDWRAP
    END

END

