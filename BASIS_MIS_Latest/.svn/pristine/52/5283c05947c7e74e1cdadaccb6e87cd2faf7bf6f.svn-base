//#charset: windows-1252

VERSION "4.0"

WINDOW 101 "Forgot Customer Number or Password" 0 0 790 500
BEGIN
    NOT CLOSEBOX
    EVENTMASK 3287287500
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "forgotCredsForm"
    NOTITLEBAR
    NOT SIZABLE
    EDIT 100, "", 160, 80, 200, 25
    BEGIN
        CLIENTEDGE
        NAME "customerNumber"
    END

    STATICTEXT 101, "Customer Number:", 30, 85, 120, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "customerNbrLabel"
    END

    BUTTON 102, "Get Password", 370, 80, 135, 25
    BEGIN
        NAME "getPassword"
    END

    GROUPBOX 103, "Forgot Password", 20, 50, 750, 75
    BEGIN
        NAME "forgotPasswordGroup"
    END

    STATICTEXT 104, "Email Address:", 30, 170, 120, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "emailAddressLabel"
    END

    EDIT 105, "", 160, 165, 200, 25
    BEGIN
        CLIENTEDGE
        NAME "emailAddress"
    END

    BUTTON 106, "Get Customer Number", 370, 165, 135, 25
    BEGIN
        NAME "getCustomerNumber"
    END

    GROUPBOX 107, "Forgot Customer Number", 20, 135, 750, 75
    BEGIN
        NAME "forgotCustNbrGroup"
    END

    STATICTEXT 108, "Status", 20, 220, 90, 15
    BEGIN
        NAME "messageLabel"
    END

    CUSTOMEDIT 109, "", 20, 240, 750, 75
    BEGIN
        BORDER
        CLIENTEDGE
        NAME "statusMessage"
        WORDWRAP
    END

    BUTTON 110, "Done", 650, 460, 120, 25
    BEGIN
        NAME "done"
    END

    STATICTEXT 111, "BASIS b-commerce System Forgot Credentials", 0, 0, 790, 25
    BEGIN
        FONT "Dialog.bold" 14,bold
        JUSTIFICATION 16384
        NAME "headertext"
        NOT WORDWRAP
    END

END

