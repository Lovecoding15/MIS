//#charset: windows-1252

VERSION "4.0"

WINDOW 115 "window.title" 0 0 790 500
BEGIN
    NOT CLOSEBOX
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "end_user_data"
    NOTITLEBAR
    NOT SIZABLE
    EDIT 102, "", 160, 67, 295, 25
    BEGIN
        CLIENTEDGE
        NAME "referenceNbr"
    END

    EDIT 104, "", 160, 99, 295, 25
    BEGIN
        CLIENTEDGE
        NAME "CompName"
    END

    EDIT 106, "", 160, 131, 240, 25
    BEGIN
        CLIENTEDGE
        NAME "ContactName"
    END

    EDIT 109, "", 160, 195, 295, 25
    BEGIN
        CLIENTEDGE
        NAME "AddrLnOne"
    END

    EDIT 111, "", 160, 227, 295, 25
    BEGIN
        CLIENTEDGE
        NAME "AddrLnTwo"
    END

    EDIT 113, "", 160, 259, 295, 25
    BEGIN
        CLIENTEDGE
        NAME "AddrLnThree"
    END

    EDIT 115, "", 160, 291, 240, 25
    BEGIN
        CLIENTEDGE
        NAME "City"
    END

    LISTBUTTON 117, "", 160, 323, 60, 130
    BEGIN
        NAME "State"
        SELECTIONHEIGHT 25
    END

    EDIT 119, "", 320, 323, 100, 25
    BEGIN
        CLIENTEDGE
        NAME "PostalCode"
    END

    LISTBUTTON 121, "", 160, 355, 160, 130
    BEGIN
        NAME "Country"
        SELECTIONHEIGHT 25
    END

    EDIT 123, "", 160, 387, 295, 25
    BEGIN
        CLIENTEDGE
        NAME "EmailAddress"
    END

    EDIT 125, "", 160, 419, 160, 25
    BEGIN
        CLIENTEDGE
        NAME "PhoneNumber"
    END

    LISTBUTTON 127, "", 610, 131, 160, 130
    BEGIN
        NAME "Industry"
        SELECTIONHEIGHT 25
    END

    EDIT 129, "", 610, 163, 160, 25
    BEGIN
        CLIENTEDGE
        DISABLED
        NAME "OtherDesc"
    END

    LISTBUTTON 131, "", 610, 195, 160, 130
    BEGIN
        NAME "BasisProduct"
        SELECTIONHEIGHT 25
    END

    CUSTOMEDIT 133, "", 610, 227, 160, 91
    BEGIN
        BORDER
        CLIENTEDGE
        NAME "AppModulesUsed"
    END

    CHECKBOX 134, "advantage.label", 430, 323, 340, 25
    BEGIN
        NAME "Advantage"
        TEXTLEFT
        JUSTIFICATION 32768
    END

    CHECKBOX 135, "announcements.label", 430, 355, 340, 25
    BEGIN
        NAME "Announcements"
        TEXTLEFT
        JUSTIFICATION 32768
    END

    BUTTON 136, "save.button", 510, 460, 120, 25
    BEGIN
        NAME "Save"
    END

    BUTTON 137, "skip.button", 650, 460, 120, 25
    BEGIN
        NAME "Cancel"
    END

    STATICTEXT 144, "*", 140, 99, 20, 25
    BEGIN
        FONT "Microsoft Sans Serif" 10,bold
        FOREGROUNDCOLOR RGB(255,51,102)
        JUSTIFICATION 32768
        NAME "compNameFlag"
    END

    STATICTEXT 103, "comp.name.label", 20, 104, 130, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "label1"
        NOT OPAQUE
    END

    STATICTEXT 105, "contact.name.label", 10, 136, 140, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "label2"
    END

    STATICTEXT 108, "addr.one.label", 10, 200, 140, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "label3"
    END

    STATICTEXT 110, "addr.two.label", 10, 232, 140, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "label4"
    END

    STATICTEXT 112, "addr.three.label", 10, 264, 140, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "label5"
    END

    STATICTEXT 114, "city.label", 10, 296, 140, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "label6"
    END

    STATICTEXT 116, "state.label", 10, 328, 140, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "label7"
    END

    STATICTEXT 118, "postal.code.label", 225, 328, 85, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "label8"
    END

    STATICTEXT 145, "*", 140, 355, 20, 20
    BEGIN
        FONT "Microsoft Sans Serif" 10,bold
        FOREGROUNDCOLOR RGB(255,51,102)
        JUSTIFICATION 32768
        NAME "countryFlag"
    END

    STATICTEXT 120, "country.label", 20, 360, 130, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "label9"
    END

    STATICTEXT 149, "*", 140, 387, 20, 20
    BEGIN
        FONT "Microsoft Sans Serif" 10,bold
        FOREGROUNDCOLOR RGB(255,51,102)
        JUSTIFICATION 32768
        NAME "emailFlag"
    END

    STATICTEXT 122, "email.address.label", 10, 392, 140, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "label10"
    END

    STATICTEXT 124, "phone.number.label", 10, 424, 140, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "label11"
    END

    STATICTEXT 126, "industry.label", 465, 136, 140, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "label12"
    END

    STATICTEXT 128, "other.desc.label", 465, 168, 140, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "label13"
    END

    STATICTEXT 130, "basis.prod.used.label", 465, 197, 140, 30
    BEGIN
        JUSTIFICATION 32768
        NAME "label14"
    END

    STATICTEXT 132, "app.module.used.label", 465, 232, 140, 30
    BEGIN
        JUSTIFICATION 32768
        NAME "label15"
        NOT OPAQUE
    END

    LISTBUTTON 101, "", 160, 35, 295, 110
    BEGIN
        NAME "existingList"
        SELECTIONHEIGHT 25
    END

    STATICTEXT 100, "select.user.label", 10, 35, 140, 30
    BEGIN
        JUSTIFICATION 32768
        NAME "label 16"
    END

    EDIT 138, "", 160, 460, 120, 25
    BEGIN
        CLIENTEDGE
        DISABLED
        NAME "endUserNbr"
    END

    STATICTEXT 139, "end.user.nbr.label", 10, 465, 140, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "label17"
    END

    STATICTEXT 140, "ref.nbr.label", 10, 72, 140, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    STATICTEXT 141, "req.label", 460, 99, 50, 25
    BEGIN
        FOREGROUNDCOLOR RGB(255,51,102)
        INVISIBLE
        NAME "compNameReq"
    END

    STATICTEXT 142, "req.label", 330, 355, 50, 25
    BEGIN
        FOREGROUNDCOLOR RGB(255,51,102)
        INVISIBLE
        NAME "countryReq"
    END

    BUTTON 143, "toggle.button", 475, 35, 180, 25
    BEGIN
        NAME "toggleButton"
        SHORTCUE "toggle.button.tooltip"
    END

    STATICTEXT 146, "contact.phone.label", 10, 168, 140, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    EDIT 107, "", 160, 163, 160, 25
    BEGIN
        CLIENTEDGE
        NAME "ContactPhone"
    END

    STATICTEXT 147, "req.label", 460, 387, 50, 25
    BEGIN
        FOREGROUNDCOLOR RGB(255,105,51)
        INVISIBLE
        NAME "emailReq"
    END

    STATICTEXT 148, "BASIS b-commerce System Attach/Edit End User Data", 0, 0, 900, 25
    BEGIN
        FONT "Dialog.bold" 14,bold
        JUSTIFICATION 16384
        NAME "headertext"
        NOT WORDWRAP
    END

END

MENU 100
BEGIN
    NAME "Menu"
    MENU-ITEM 101 "menu.file"
    BEGIN
        NAME "FileMenu"
        MENU-ITEM 102 "skip.button"
        BEGIN
            NAME "menuSkip"
        END

        MENU-ITEM 103 "save.button"
        BEGIN
            NAME "menuSave"
        END

        MENU-ITEM 104 "menu.exit"
        BEGIN
            NAME "menuExit"
        END

    END

END

