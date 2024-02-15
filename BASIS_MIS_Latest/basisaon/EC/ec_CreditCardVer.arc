//#charset: windows-1252

VERSION "4.0"

WINDOW 101 "window.title" 0 0 790 395
BEGIN
    NOT CLOSEBOX
    EVENTMASK 3287287500
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT MAXIMIZABLE
    NOT MINIMIZABLE
    NAME "CreditCardVerificationData"
    NOTITLEBAR
    NOT SIZABLE
    EDIT 100, "", 195, 80, 300, 25
    BEGIN
        CLIENTEDGE
        NAME "verificationAddress"
        SHORTCUE "verificationAddress.shortCue"
    END

    BUTTON 101, "?", 510, 80, 20, 25
    BEGIN
        NAME "whatsThis1"
    END

    EDIT 102, "", 195, 115, 150, 25
    BEGIN
        CLIENTEDGE
        NAME "verificationZipCode"
        SHORTCUE "verificationZipCode.shortCue"
    END

    EDIT 103, "", 195, 150, 100, 25
    BEGIN
        CLIENTEDGE
        NAME "verificationCode"
        SHORTCUE "verificationCode.shortCue"
    END

    BUTTON 104, "?", 315, 150, 20, 25
    BEGIN
        NAME "whatsThis2"
    END

    BUTTON 105, "save.button", 500, 200, 120, 25
    BEGIN
        NAME "saveButton"
    END

    STATICTEXT 106, "verification.address", 40, 85, 150, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    STATICTEXT 107, "verification.code", 40, 155, 150, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    STATICTEXT 108, "verification.zipCode", 40, 120, 150, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    BUTTON 109, "cancel.button", 640, 200, 120, 25
    BEGIN
        NAME "cancelButton"
    END

    GROUPBOX 110, "theBox.title", 20, 50, 740, 140
    BEGIN
        NAME "theBox"
    END

    STATICTEXT 111, "BASIS b-commerce System Credit Card Verification Data", 0, 0, 790, 25
    BEGIN
        FONT "Dialog.bold" 14,bold
        JUSTIFICATION 16384
        NAME "headertext"
        NOT WORDWRAP
    END

    EDIT 200, "", 195, 235, 300, 25
    BEGIN
        INVISIBLE
        MAXLENGTH 32767
        NAME "verificationAddress2"
        SPELLCHECKED
        NOT DRAGENABLED
    END

    BUTTON 201, "?", 510, 235, 20, 25
    BEGIN
        INVISIBLE
        NAME "whatsThis3"
    END

    EDIT 202, "", 195, 270, 300, 25
    BEGIN
        CLIENTEDGE
        INVISIBLE
        NAME "verificationZipCode2"
        SHORTCUE "verificationZipCode.shortCue"
    END

    EDIT 203, "", 195, 305, 100, 25
    BEGIN
        CLIENTEDGE
        INVISIBLE
        NAME "verificationCode2"
        SHORTCUE "verificationCode.shortCue"
    END

    BUTTON 204, "?", 315, 305, 20, 25
    BEGIN
        INVISIBLE
        NAME "whatsThis4"
    END

    STATICTEXT 206, "verification.address", 40, 240, 150, 25
    BEGIN
        INVISIBLE
        JUSTIFICATION 32768
        NAME "StaticText21"
    END

    STATICTEXT 208, "verification.zipCode", 40, 275, 150, 25
    BEGIN
        INVISIBLE
        JUSTIFICATION 32768
        NAME "StaticText22"
    END

    STATICTEXT 207, "verification.code", 40, 310, 150, 25
    BEGIN
        INVISIBLE
        JUSTIFICATION 32768
        NAME "StaticText23"
    END

    GROUPBOX 210, "theBox.title2", 20, 205, 740, 140
    BEGIN
        INVISIBLE
        NAME "theBox2"
    END

END

