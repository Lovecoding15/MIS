//#charset: windows-1252

VERSION "4.0"

WINDOW 101 "View Credit Card Log and Summary" 100 100 650 600
BEGIN
    EVENTMASK 3287287500
    KEYBOARDNAVIGATION
    NAME "ccLogViewer"
    INPUTNSPINNER 100, "", 110, 10, 50, 20
    BEGIN
        NAME "month"
        RESTORESTRING "0"
        NOT INSERTMODE
    END

    STATICTEXT 101, "Month:", 60, 10, 40, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    INPUTNSPINNER 102, "", 220, 10, 60, 20
    BEGIN
        NAME "year"
        RESTORESTRING "0"
        NOT INSERTMODE
    END

    STATICTEXT 103, "Year:", 170, 10, 40, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    LISTBUTTON 104, "", 110, 40, 170, 65
    BEGIN
        NAME "availableLogs"
        SELECTIONHEIGHT 21
    END

    STATICTEXT 105, "Available Logs:", 10, 40, 90, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    EDIT 106, "", 110, 140, 80, 20
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "visaApproved"
        READONLY
    END

    STATICTEXT 107, "Visa Approved:", 10, 140, 90, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    EDIT 108, "", 110, 180, 80, 20
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "visaTotal"
        READONLY
    END

    STATICTEXT 109, "Visa Total:", 10, 180, 90, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    EDIT 110, "", 110, 160, 80, 20
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "visaDeclined"
        READONLY
    END

    STATICTEXT 111, "Visa Declined:", 10, 160, 90, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    EDIT 112, "", 350, 140, 80, 20
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "masterCardApproved"
        READONLY
    END

    EDIT 113, "", 350, 160, 80, 20
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "masterCardDeclined"
        READONLY
    END

    EDIT 114, "", 350, 180, 80, 20
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "masterCardTotal"
        READONLY
    END

    STATICTEXT 115, "Mastercard Approved:", 230, 140, 110, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    STATICTEXT 116, "Mastercard Declined:", 230, 160, 110, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    STATICTEXT 117, "Mastercard Total:", 250, 180, 90, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    EDIT 118, "", 560, 140, 80, 20
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "amexApproved"
        READONLY
    END

    EDIT 119, "", 560, 160, 80, 20
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "amexDeclined"
        READONLY
    END

    EDIT 120, "", 560, 180, 80, 20
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "amexTotal"
        READONLY
    END

    STATICTEXT 121, "Amex Approved:", 460, 140, 90, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    STATICTEXT 122, "Amex Declined:", 460, 160, 90, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    STATICTEXT 123, "Amex Total:", 460, 180, 90, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    EDIT 124, "", 110, 70, 80, 20
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "overallApproved"
        READONLY
    END

    EDIT 125, "", 110, 90, 80, 20
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "overallDeclined"
        READONLY
    END

    EDIT 126, "", 110, 110, 80, 20
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "overallTotal"
        READONLY
    END

    STATICTEXT 127, "Approved:", 50, 70, 50, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    STATICTEXT 128, "Declined:", 50, 90, 50, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    STATICTEXT 129, "Total:", 60, 110, 40, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    NAVIGATOR 131, "", 10, 260, 130, 20
    BEGIN
        JUSTIFICATION 16384
        NAME "browserNavigator"
    END

    STATICTEXT 132, "Transaction Browser", 10, 220, 110, 20
    BEGIN
        NAME "Static Text"
    END

    CUSTOMEDIT 130, "", 10, 290, 630, 300
    BEGIN
        BORDER
        CLIENTEDGE
        HSCROLLBAR
        NAME "entryBrowser"
        READONLY
        VSCROLLBAR
    END

    EDIT 133, "", 210, 260, 90, 20
    BEGIN
        CLIENTEDGE
        NAME "status"
        READONLY
    END

    EDIT 134, "", 370, 260, 80, 20
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "amount"
        READONLY
    END

    EDIT 135, "", 210, 220, 430, 20
    BEGIN
        CLIENTEDGE
        NAME "customer"
        READONLY
    END

    STATICTEXT 136, "Customer:", 140, 220, 60, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    STATICTEXT 137, "Status:", 160, 260, 40, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    STATICTEXT 138, "Amount:", 310, 260, 50, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    EDIT 139, "", 210, 240, 430, 20
    BEGIN
        CLIENTEDGE
        NAME "invOrOrder"
        READONLY
    END

    STATICTEXT 140, "Inv/Ord:", 150, 240, 50, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    BUTTON 141, "Get Report", 300, 100, 120, 25
    BEGIN
        NAME "Button"
    END

    STATICTEXT 143, "# of Days:", 300, 70, 60, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    STATICTEXT 146, "Cutoff Time:", 440, 70, 70, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    STATICTEXT 147, "Report Parameters", 300, 40, 330, 20
    BEGIN
        NAME "reportParameters"
    END

    GROUPBOX 148, "Printed Report Parameters", 290, 10, 350, 120
    BEGIN
        NAME "Group Control"
    END

    BUTTON 149, "Refresh", 200, 100, 80, 25
    BEGIN
        NAME "Button"
    END

    LISTBUTTON 144, "", 520, 70, 40, 130
    BEGIN
        NAME "hour"
        SELECTIONHEIGHT 20
    END

    LISTBUTTON 145, "", 580, 70, 40, 130
    BEGIN
        NAME "minute"
        SELECTIONHEIGHT 20
    END

    LISTBUTTON 150, "", 520, 100, 40, 130
    BEGIN
        NAME "startHour"
        SELECTIONHEIGHT 20
    END

    LISTBUTTON 151, "", 580, 100, 40, 130
    BEGIN
        NAME "startMinute"
        SELECTIONHEIGHT 20
    END

    STATICTEXT 152, "Start Time:", 440, 100, 70, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    LISTBUTTON 142, "", 370, 70, 40, 130
    BEGIN
        NAME "numOfDays"
        SELECTIONHEIGHT 20
    END

    LINE 1000, 10, 210, 630, 0
    BEGIN
        NAME "Line"
    END

END

