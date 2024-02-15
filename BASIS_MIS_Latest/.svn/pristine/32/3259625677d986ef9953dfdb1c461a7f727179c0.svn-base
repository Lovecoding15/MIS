//#charset: windows-1252

VERSION "4.0"

WINDOW 101 "Login" 100 100 790 480
BEGIN
    EVENTMASK 3287287500
    KEYBOARDNAVIGATION
    NAME "Login"
    NOTITLEBAR
    STATICTEXT 100, "B-commerce User Id:", 225, 120, 160, 25
    BEGIN
        FONT "Dialog" 10
        JUSTIFICATION 32768
        NAME "uidLabel"
    END

    EDIT 101, "", 395, 110, 140, 25
    BEGIN
        CLIENTEDGE
        NAME "uid"
    END

    STATICTEXT 102, "Password:", 225, 160, 160, 25
    BEGIN
        FONT "Dialog" 10
        JUSTIFICATION 32768
        NAME "pwdLabel"
    END

    EDIT 103, "", 395, 155, 140, 25
    BEGIN
        CLIENTEDGE
        NAME "pwd"
        PASSWORDENTRY
        NOT DRAGENABLED
    END

    STATICTEXT 104, "Serial Number:", 225, 205, 160, 25
    BEGIN
        FONT "Dialog" 10
        JUSTIFICATION 32768
        NAME "snLabel"
    END

    EDIT 105, "", 395, 200, 140, 25
    BEGIN
        CLIENTEDGE
        NAME "sn"
        SHORTCUE "Enter a full serial number or optionally leave blank."
    END

    BUTTON 106, "Login", 282, 245, 255, 25
    BEGIN
        NAME "loginBtn"
    END

    STATICTEXT 108, "To set up a b-commerce account, call a BASIS representative at 1.505.938.6120 (U.S.) or +49 681 968 14 0 (Europe).", 10, 380, 760, 40
    BEGIN
        FONT "Dialog" 10
        JUSTIFICATION 32768
        NAME "msgLabel"
    END

    BUTTON 107, "Forgot User ID or Password", 446, 420, 225, 25
    BEGIN
        NAME "forgotBtn"
    END

    STATICTEXT 109, "SAM, Developer's Kit and Rental Renewals", 0, 0, 790, 25
    BEGIN
        FONT "Dialog" 14,bold
        JUSTIFICATION 16384
        NAME "headertext"
    END

    BUTTON 110, "Exit", 681, 420, 90, 25
    BEGIN
        NAME "exitButton"
    END

END

WINDOW 102 "Renew Serial Number" 50 50 820 480
BEGIN
    EVENTMASK 3285190348
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "snView"
    NOTITLEBAR
    STATICTEXT 100, "Serial Number:", 10, 35, 110, 20
    BEGIN
        FONT "Dialog" 10
        JUSTIFICATION 32768
        NAME "serialnbrLabel"
    END

    EDIT 101, "", 470, 30, 340, 25
    BEGIN
        CLIENTEDGE
        NAME "custName"
    END

    EDIT 103, "", 246, 279, 45, 25
    BEGIN
        CLIENTEDGE
        INVISIBLE
        NAME "prod"
    END

    EDIT 105, "", 246, 304, 45, 25
    BEGIN
        CLIENTEDGE
        INVISIBLE
        NAME "platform"
    END

    BUTTON 200, "Exit", 715, 445, 90, 25
    BEGIN
        NAME "exitButton"
    END

    EDIT 107, "", 246, 329, 45, 25
    BEGIN
        CLIENTEDGE
        INVISIBLE
        NAME "oslevel"
    END

    EDIT 109, "", 246, 354, 45, 25
    BEGIN
        CLIENTEDGE
        INVISIBLE
        NAME "prodrev"
    END

    EDIT 111, "", 246, 379, 45, 25
    BEGIN
        CLIENTEDGE
        INVISIBLE
        NAME "licensetype"
    END

    STATICTEXT 112, "Product Desc", 296, 283, 200, 20
    BEGIN
        INVISIBLE
        NAME "prodDesc"
    END

    STATICTEXT 113, "Platform Desc", 296, 309, 200, 20
    BEGIN
        INVISIBLE
        NAME "platDesc"
    END

    STATICTEXT 114, "OS Level Desc", 296, 334, 200, 20
    BEGIN
        INVISIBLE
        NAME "oslevDesc"
    END

    STATICTEXT 115, "Product Rev Desc", 296, 359, 200, 20
    BEGIN
        INVISIBLE
        NAME "prodrevDesc"
    END

    STATICTEXT 116, "License Type Desc", 296, 384, 200, 20
    BEGIN
        INVISIBLE
        NAME "lictypeDesc"
    END

    EDIT 119, "", 125, 30, 110, 25
    BEGIN
        CLIENTEDGE
        NAME "serialNumber"
        PLACEHOLDER "Serial Number"
    END

    EDIT 128, "", 407, 314, 90, 25
    BEGIN
        CLIENTEDGE
        INVISIBLE
        NAME "contract"
    END

    EDIT 132, "", 407, 337, 90, 25
    BEGIN
        CLIENTEDGE
        INVISIBLE
        NAME "startdate"
    END

    EDIT 136, "", 407, 361, 90, 25
    BEGIN
        CLIENTEDGE
        INVISIBLE
        NAME "renewdate"
    END

    EDIT 138, "", 405, 289, 300, 25
    BEGIN
        CLIENTEDGE
        INVISIBLE
        NAME "contactemail"
    END

    STATICTEXT 141, "Auto Generated Renew Invoice Status:", 10, 285, 135, 35
    BEGIN
        FONT "Dialog" 10
        JUSTIFICATION 32768
        NAME "autorenewLabel"
    END

    CUSTOMEDIT 143, "", 151, 285, 655, 60
    BEGIN
        BORDER
        NAME "autoRenew"
        READONLY
        VSCROLLBAR
        WORDWRAP
    END

    STATICTEXT 148, "Instructions:", 10, 355, 135, 20
    BEGIN
        FONT "Dialog" 10
        JUSTIFICATION 32768
        NAME "instructionsLabel"
    END

    BUTTON 199, "Update PO #", 616, 415, 90, 25
    BEGIN
        INVISIBLE
        NAME "updateButton"
    END

    EDIT 149, "", 376, 415, 110, 25
    BEGIN
        CLIENTEDGE
        INVISIBLE
        MAXLENGTH 10
        NAME "ponumber"
    END

    STATICTEXT 150, "Purchase Order Number:", 201, 420, 170, 20
    BEGIN
        FONT "Dialog" 10
        INVISIBLE
        JUSTIFICATION 32768
        NAME "poLabel"
    END

    CUSTOMEDIT 151, "", 151, 350, 655, 60
    BEGIN
        BORDER
        NAME "instructions"
        READONLY
        VSCROLLBAR
        WORDWRAP
    END

    BUTTON 146, "Details", 56, 325, 90, 25
    BEGIN
        INVISIBLE
        NAME "multipleContracts"
    END

    BUTTON 152, "Pay Invoice", 715, 415, 90, 25
    BEGIN
        INVISIBLE
        NAME "payButton"
    END

    BUTTON 153, "Renew", 520, 415, 90, 25
    BEGIN
        INVISIBLE
        NAME "renewButton"
    END

    EDIT 154, "", 491, 445, 215, 25
    BEGIN
        CLIENTEDGE
        INVISIBLE
        NAME "emailAddress"
        NOT OPAQUE
    END

    STATICTEXT 155, "Email Address:", 376, 450, 110, 25
    BEGIN
        FONT "Dialog" 10
        INVISIBLE
        JUSTIFICATION 32768
        NAME "emailLabel"
    END

    TABCONTROL 102, "", 10, 59, 800, 215
    BEGIN
        AUTOMANAGEMENT
        CLIENTEDGE
        MULTILINE
        NAME "renewTab"
        RAISEDEDGE
        TAB "&Details" 0 301
        TAB "&Features" 0 302
    END

    CHILD-WINDOW 110, 301, 0, 0
    BEGIN
        NAME "mainChildWindow"
    END

    CHILD-WINDOW 111, 302, 0, 0
    BEGIN
        NAME "featuresChildWindow"
    END

    STATICTEXT 104, "SAM, Developer's Kit and Rental Renewals", 0, 0, 820, 25
    BEGIN
        FONT "Dialog" 14,bold
        JUSTIFICATION 16384
        NAME "headerText2"
    END

    BUTTON 106, "Clear", 245, 30, 90, 25
    BEGIN
        LONGCUE "Use the clear button to clear form and load a differnet serial number."
        NAME "clearSearchBtn"
        SHORTCUE "Use to clear the form and enter full or partial serial number for a search."
    END

    BUTTON 108, "Open Renew Invs", 345, 30, 115, 25
    BEGIN
        NAME "invoiceSearchBtn"
        SHORTCUE "Click to search for open renew invoices."
    END

END

WINDOW 103 "Detials of Multiple Serials Numbers on an Invoice" 50 50 790 480
BEGIN
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "multiplesDetails"
    NOTITLEBAR
    GRID 100, "", 10, 45, 760, 380
    BEGIN
        CLIENTEDGE
        COLUMNHEAD 25, 102
        COLUMNS 6
        FOREGROUNDCOLOR RGB(0,0,0)
        GRIDCOLTITLE 0, "Serial Nbr"
        GRIDCOLTITLE 1, "Ext Users"
        GRIDCOLTITLE 2, "Std User"
        GRIDCOLTITLE 3, "Contract"
        GRIDCOLTITLE 4, "Cont Type"
        GRIDCOLTITLE 5, "Expires"
        GRIDCOLWIDTH 0, 100
        GRIDCOLWIDTH 1, 90
        GRIDCOLWIDTH 2, 90
        GRIDCOLWIDTH 3, 100
        GRIDCOLWIDTH 4, 90
        GRIDCOLWIDTH 5, 110
        HORIZLINES
        MAXCOLS 2147483647
        NAME "detailsGrid"
        ROWS 16
        USERSIZE
        VERTLINES
        VSCROLLBAR
    END

    BUTTON 103, "Exit", 681, 445, 90, 25
    BEGIN
        NAME "detailsExitBtn"
    END

    STATICTEXT 101, "SAM, Developer's Kit and Rental Renewals", 0, 0, 790, 25
    BEGIN
        FONT "Dialog" 14,bold
        JUSTIFICATION 16384
        NAME "headerText3"
    END

END

WINDOW 104 "Pay Invoice Via Credit Card" 100 100 790 480
BEGIN
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "payment"
    NOTITLEBAR
    EDIT 100, "", 395, 50, 140, 25
    BEGIN
        CLIENTEDGE
        NAME "invoiceNumber"
        READONLY
    END

    STATICTEXT 101, "Invoice Number:", 265, 55, 120, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "invoiceNumberLabel"
    END

    EDIT 102, "", 395, 85, 140, 25
    BEGIN
        CLIENTEDGE
        NAME "invPONumber"
        READONLY
    END

    STATICTEXT 103, "Inv PO Number:", 265, 90, 120, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "invPOLabel"
    END

    EDIT 104, "", 395, 120, 140, 25
    BEGIN
        CLIENTEDGE
        NAME "invAmount"
        READONLY
    END

    STATICTEXT 105, "Invoice Amount:", 265, 125, 120, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "invAmtLabel"
    END

    BUTTON 200, "Submit", 395, 400, 90, 25
    BEGIN
        NAME "submitButton"
    END

    BUTTON 201, "Cancel", 495, 400, 90, 25
    BEGIN
        NAME "cancelButton"
    END

    EDIT 106, "", 395, 155, 190, 25
    BEGIN
        CLIENTEDGE
        NAME "cardNumber"
    END

    STATICTEXT 107, "Credit Card Number:", 245, 160, 140, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "cardNbrLabel"
    END

    EDIT 108, "", 395, 190, 190, 25
    BEGIN
        CLIENTEDGE
        NAME "nameOnCard"
    END

    STATICTEXT 109, "Name on Card:", 265, 195, 120, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "nameOnCardLabel"
    END

    LISTBUTTON 110, "", 395, 225, 170, 65
    BEGIN
        NAME "cardType"
        SELECTIONHEIGHT 20
    END

    STATICTEXT 111, "Card Type:", 265, 230, 120, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "cardTypeLabel"
    END

    LISTBUTTON 112, "", 395, 260, 100, 130
    BEGIN
        NAME "expireMonth"
        SELECTIONHEIGHT 20
    END

    LISTBUTTON 113, "", 500, 260, 65, 130
    BEGIN
        NAME "expireYear"
        SELECTIONHEIGHT 21
    END

    STATICTEXT 114, "Expires:", 265, 265, 120, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "expiresLabel"
    END

    EDIT 117, "", 395, 330, 190, 25
    BEGIN
        CLIENTEDGE
        NAME "ccAddress"
        SHORTCUE "Enter the Street Address or PO Box number. Used in card validation."
    END

    STATICTEXT 118, "Credit Card Address:", 230, 335, 155, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "ccAddressLabel"
    END

    EDIT 119, "", 395, 365, 110, 25
    BEGIN
        CLIENTEDGE
        NAME "ccZipCode"
        SHORTCUE "Enter the postal code for the Credit Card Account. Used in card validation."
    END

    STATICTEXT 120, "Crdt Crd Postal Code:", 230, 370, 155, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "ccZipCodeLabel"
    END

    EDIT 115, "", 395, 295, 90, 25
    BEGIN
        CLIENTEDGE
        NAME "cvv2"
        SHORTCUE "Enter the CVV2 code from the credit card. Used in card validation."
    END

    STATICTEXT 116, "CC Verification Code:", 230, 300, 155, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "cvv2Label"
    END

    STATICTEXT 121, "SAM, Developer's Kit and Rental Renewals", 0, 0, 790, 25
    BEGIN
        FONT "Dialog" 14,bold
        JUSTIFICATION 16384
        NAME "headerText4"
    END

END

WINDOW 105 "Find SN Grid" 50 50 790 480
BEGIN
    EVENTMASK 0
    ICON ""
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "findSN"
    NOTITLEBAR
    STATICTEXT 100, "SAM, Developer's Kit and Rental Renewals", 0, 0, 790, 25
    BEGIN
        FONT "Dialog" 14,bold
        JUSTIFICATION 16384
        NAME "headerText5"
    END

    GRID 101, "", 10, 70, 760, 365
    BEGIN
        NOT READONLY
        COLUMNHEAD 25, 103
        COLUMNS 4
        GRIDCOLTITLE 0, "Serial Nbr"
        GRIDCOLTITLE 1, "Expires YYYYMMDD"
        GRIDCOLTITLE 2, "Users"
        GRIDCOLTITLE 3, "End User"
        GRIDCOLWIDTH 0, 100
        GRIDCOLWIDTH 1, 200
        GRIDCOLWIDTH 2, 100
        GRIDCOLWIDTH 3, 300
        HORIZLINES
        MAXCOLS 2147483647
        NAME "foundSerialNumbers"
        ROWS 24
        SHORTCUE "Double click a serial number or select the serial number and click the Select Serial Number button."
        USERSIZE
        VERTLINES
        VSCROLLBAR
    END

    BUTTON 104, "Select Serial Number", 10, 445, 660, 25
    BEGIN
        NAME "selectBtn"
        SHORTCUE "Double click a serial number or select the serial number and click the Select Serial Number button."
    END

    BUTTON 106, "Exit", 681, 445, 90, 25
    BEGIN
        NAME "searchExitBtn"
    END

    LISTBUTTON 102, "SERIAL_NBR ASC\nSERIAL_NBR DESC\nEXPIRES_YYYYMMDD ASC\nEXPIRES_YYYYMMDD DESC\n", 120, 35, 200, 100
    BEGIN
        NAME "orderby"
        SELECTIONHEIGHT 25
        SHORTCUE "Select the sort order"
    END

    STATICTEXT 107, "Select sort order:", 10, 40, 100, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "orderbyLabel"
        NOT WORDWRAP
    END

END

WINDOW 106 "Find Renew Invoice" 50 50 790 480
BEGIN
    EVENTMASK 0
    ICON ""
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "findInvoice"
    NOTITLEBAR
    STATICTEXT 100, "SAM, Developer's Kit and Rental Renewals", 0, 0, 790, 25
    BEGIN
        FONT "Dialog" 14,bold
        JUSTIFICATION 16384
        NAME "headerText6"
    END

    GRID 101, "", 10, 45, 760, 390
    BEGIN
        NOT READONLY
        COLUMNHEAD 25, 103
        COLUMNS 6
        GRIDCOLTITLE 0, "Invoice Nbr"
        GRIDCOLTITLE 1, "PO Number"
        GRIDCOLTITLE 2, "Invoice Date"
        GRIDCOLTITLE 3, "Invoice Amt"
        GRIDCOLTITLE 4, "Payments"
        GRIDCOLTITLE 5, "Serial Nbrs"
        GRIDCOLWIDTH 0, 100
        GRIDCOLWIDTH 1, 100
        GRIDCOLWIDTH 2, 100
        GRIDCOLWIDTH 3, 100
        GRIDCOLWIDTH 4, 100
        GRIDCOLWIDTH 5, 200
        HORIZLINES
        MAXCOLS 2147483647
        NAME "foundRenewInvoices"
        ROWS 24
        SHORTCUE "Double click an invoice number or select the invoice number and click the Select Invoice Number button."
        USERSIZE
        VERTLINES
        VSCROLLBAR
    END

    BUTTON 104, "Select Invoice Number", 10, 445, 660, 25
    BEGIN
        NAME "selectInvoiceBtn"
        SHORTCUE "Double click an invoice number or select the invoice number and click the Select Invoice Number button."
    END

    BUTTON 106, "Exit", 681, 445, 90, 25
    BEGIN
        NAME "searchInvExitBtn"
    END

END

CHILD-WINDOW 110 0 0 784 174
BEGIN
    EVENTMASK 3287287492
    NAME "mainChildWindw"
    GRID 145, "", 460, 10, 315, 165
    BEGIN
        CLIENTEDGE
        COLUMNHEAD 25, 147
        COLUMNS 3
        FOREGROUNDCOLOR RGB(0,0,0)
        GRIDCOLTITLE 0, "Description"
        GRIDCOLTITLE 1, "List"
        GRIDCOLTITLE 2, "Discounted"
        GRIDCOLWIDTH 0, 95
        GRIDCOLWIDTH 1, 105
        GRIDCOLWIDTH 2, 105
        HORIZLINES
        MAXCOLS 2147483647
        NAME "pricing"
        ROWS 6
        USERSIZE
        VERTLINES
        VSCROLLBAR
    END

    STATICTEXT 100, "Pricing:", 395, 15, 60, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "pricingLabel"
    END

    EDIT 101, "", 115, 10, 270, 25
    BEGIN
        CLIENTEDGE
        NAME "enduser"
    END

    STATICTEXT 102, "End User:", 10, 15, 100, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "enduserLabel"
    END

    EDIT 103, "", 115, 40, 180, 25
    BEGIN
        CLIENTEDGE
        NAME "contracttype"
    END

    STATICTEXT 104, "Contract Type:", 10, 45, 100, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "contrTypeLabel"
    END

    EDIT 105, "", 115, 70, 120, 25
    BEGIN
        CLIENTEDGE
        NAME "expiredate"
    END

    STATICTEXT 106, "Expiration Date:", 10, 75, 100, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "expireDate"
    END

    EDIT 107, "", 115, 100, 90, 25
    BEGIN
        CLIENTEDGE
        INVISIBLE
        NAME "annvir"
    END

    STATICTEXT 108, "Virtual:", 10, 105, 100, 20
    BEGIN
        INVISIBLE
        JUSTIFICATION 32768
        NAME "annvirLabel"
    END

    STATICTEXT 123, "Users:", 10, 105, 100, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "userlabel"
    END

    EDIT 124, "", 115, 100, 45, 25
    BEGIN
        CLIENTEDGE
        NAME "users1"
    END

    STATICTEXT 125, "Users:", 170, 105, 60, 20
    BEGIN
        INVISIBLE
        JUSTIFICATION 32768
        NAME "user2label"
    END

    EDIT 126, "", 235, 100, 45, 25
    BEGIN
        CLIENTEDGE
        INVISIBLE
        NAME "users2"
    END

    STATICTEXT 109, "This is a Virtual License which requires that maintenance (SAM) be active for it to function.", 115, 135, 300, 35
    BEGIN
        FOREGROUNDCOLOR RGB(255,0,0)
        NAME "virtualMSG"
    END

END

CHILD-WINDOW 111 0 0 716 155
BEGIN
    EVENTMASK 3287287492
    NAME "featuresChildWindow"
    GRID 100, "", 145, 10, 430, 140
    BEGIN
        CLIENTEDGE
        COLUMNHEAD 25, 142
        COLUMNS 4
        FOREGROUNDCOLOR RGB(0,0,0)
        GRIDCOLTITLE 0, "Feature"
        GRIDCOLTITLE 1, "Rev"
        GRIDCOLTITLE 2, "Users"
        GRIDCOLTITLE 3, "Expires"
        GRIDCOLWIDTH 0, 150
        GRIDCOLWIDTH 1, 75
        GRIDCOLWIDTH 2, 75
        GRIDCOLWIDTH 3, 100
        HORIZLINES
        MAXCOLS 2147483647
        NAME "features"
        ROWS 5
        USERSIZE
        VERTLINES
        VSCROLLBAR
    END

    STATICTEXT 101, "License Features:", 15, 15, 125, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "featureslabel"
        NOT OPAQUE
    END

END

