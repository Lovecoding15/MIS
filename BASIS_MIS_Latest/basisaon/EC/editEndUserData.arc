VERSION "4.0"

WINDOW 101 "window.header" 100 100 560 650
BEGIN
    EVENTMASK 3287287500
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT MINIMIZABLE
    NAME "end_user_edit"
    MENUBAR 100
    EDIT 101, "", 160, 70, 330, 20
    BEGIN
        CLIENTEDGE
        NAME "referenceNbr"
    END

    EDIT 102, "", 160, 90, 330, 20
    BEGIN
        CLIENTEDGE
        NAME "CompName"
    END

    EDIT 103, "", 160, 110, 330, 20
    BEGIN
        CLIENTEDGE
        NAME "ContactName"
    END

    EDIT 104, "", 160, 130, 330, 20
    BEGIN
        CLIENTEDGE
        NAME "AddrLnOne"
    END

    EDIT 105, "", 160, 150, 330, 20
    BEGIN
        CLIENTEDGE
        NAME "AddrLnTwo"
    END

    EDIT 106, "", 160, 170, 330, 20
    BEGIN
        CLIENTEDGE
        NAME "AddrLnThree"
    END

    EDIT 107, "", 160, 190, 260, 20
    BEGIN
        CLIENTEDGE
        NAME "City"
    END

    LISTBUTTON 108, "", 160, 210, 60, 130
    BEGIN
        NAME "State"
        SELECTIONHEIGHT 20
    END

    EDIT 109, "", 300, 210, 120, 20
    BEGIN
        CLIENTEDGE
        NAME "PostalCode"
    END

    LISTBUTTON 110, "", 160, 230, 150, 130
    BEGIN
        NAME "Country"
        SELECTIONHEIGHT 20
    END

    EDIT 111, "", 160, 250, 330, 20
    BEGIN
        CLIENTEDGE
        NAME "EmailAddress"
    END

    EDIT 112, "", 160, 270, 150, 20
    BEGIN
        CLIENTEDGE
        NAME "PhoneNumber"
    END

    LISTBUTTON 113, "", 160, 300, 330, 130
    BEGIN
        NAME "Industry"
        SELECTIONHEIGHT 20
    END

    EDIT 114, "", 160, 320, 330, 20
    BEGIN
        CLIENTEDGE
        DISABLED
        NAME "OtherDesc"
    END

    LISTBUTTON 115, "", 160, 340, 150, 130
    BEGIN
        NAME "BasisProduct"
        SELECTIONHEIGHT 21
    END

    CUSTOMEDIT 116, "", 160, 370, 330, 60
    BEGIN
        CLIENTEDGE
        NAME "AppModulesUsed"
    END

    CHECKBOX 117, "advantage.label", 160, 430, 240, 30
    BEGIN
        NAME "Advantage"
    END

    CHECKBOX 118, "announcements.label", 160, 460, 270, 25
    BEGIN
        NAME "Announcements"
    END

    BUTTON 119, "save.button", 340, 600, 90, 25
    BEGIN
        DISABLED
        NAME "Save"
    END

    STATICTEXT 121, "*", 140, 90, 20, 20
    BEGIN
        FONT "Microsoft Sans Serif" 10,bold
        FOREGROUNDCOLOR RGB(255,51,102)
        JUSTIFICATION 32768
        NAME "companyNameFlag"
    END

    STATICTEXT 126, "comp.name.label", 10, 90, 140, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "label1"
        NOT OPAQUE
    END

    STATICTEXT 127, "contact.name.label", 10, 110, 140, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "label2"
    END

    STATICTEXT 128, "addr.one.label", 10, 130, 140, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "label3"
    END

    STATICTEXT 129, "addr.two.label", 10, 150, 140, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "label4"
    END

    STATICTEXT 130, "addr.three.label", 10, 170, 140, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "label5"
    END

    STATICTEXT 131, "city.label", 10, 190, 140, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "label6"
    END

    STATICTEXT 132, "state.label", 10, 210, 140, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "label7"
    END

    STATICTEXT 133, "postal.code.label", 220, 210, 70, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "label8"
    END

    STATICTEXT 120, "*", 140, 230, 20, 20
    BEGIN
        FONT "Microsoft Sans Serif" 10,bold
        FOREGROUNDCOLOR RGB(255,51,102)
        JUSTIFICATION 32768
        NAME "countryFlag"
    END

    STATICTEXT 134, "country.label", 10, 230, 140, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "label9"
    END

    STATICTEXT 135, "email.label", 10, 250, 140, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "label10"
    END

    STATICTEXT 136, "phone.number.label", 10, 270, 140, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "label11"
    END

    STATICTEXT 137, "industry.label", 10, 300, 140, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "label12"
    END

    STATICTEXT 138, "other.desc.label", 10, 320, 140, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "label13"
    END

    STATICTEXT 139, "basis.prod.label", 10, 340, 140, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "label14"
    END

    STATICTEXT 140, "app.mod.used.label", 10, 370, 140, 50
    BEGIN
        JUSTIFICATION 32768
        NAME "label15"
        NOT OPAQUE
    END

    LISTBUTTON 100, "", 160, 10, 330, 110
    BEGIN
        NAME "endUserList"
        SELECTIONHEIGHT 21
    END

    STATICTEXT 141, "select.eu.label", 10, 10, 140, 30
    BEGIN
        JUSTIFICATION 32768
        NAME "label 16"
    END

    STATICTEXT 143, "refNbr.label", 10, 70, 140, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "label18"
    END

    BUTTON 123, "reset.button", 220, 600, 90, 25
    BEGIN
        NAME "Clear"
    END

    STATICTEXT 147, "req.label", 500, 90, 50, 25
    BEGIN
        FONT "Microsoft Sans Serif" 8
        FOREGROUNDCOLOR RGB(255,51,102)
        INVISIBLE
        NAME "compNameReq"
    END

    STATICTEXT 148, "req.label", 320, 230, 50, 20
    BEGIN
        FONT "Microsoft Sans Serif" 8
        FOREGROUNDCOLOR RGB(255,51,102)
        INVISIBLE
        NAME "countryReq"
    END

    BUTTON 125, "toggle.button", 230, 40, 170, 25
    BEGIN
        NAME "toggleOrder"
        SHORTCUE "toggle.button.tip"
    END

    LISTBOX 142, "", 160, 510, 120, 80
    BEGIN
        CLIENTEDGE
        MULTISELECT
        NAME "linkedSerialNbrs"
    END

    LISTBOX 144, "", 370, 510, 120, 80
    BEGIN
        CLIENTEDGE
        MULTISELECT
        NAME "unlinkedSerialNbrs"
    END

    BUTTON 145, "<", 300, 520, 50, 25
    BEGIN
        NAME "addSerialNbrs"
    END

    BUTTON 146, ">", 300, 550, 50, 25
    BEGIN
        NAME "removeSerialNbrs"
    END

    STATICTEXT 149, "eu.serial.nbrs", 160, 490, 190, 20
    BEGIN
        NAME "label19"
    END

    STATICTEXT 150, "unlnked.serial.nbrs", 370, 490, 180, 20
    BEGIN
        NAME "label20"
    END

    EDIT 122, "", 20, 610, 120, 20
    BEGIN
        CLIENTEDGE
        DISABLED
        NAME "endUserNumber"
    END

END

MENU 100
BEGIN
    NAME "ToolsMenu"
    MENU-ITEM 101 "menu.file"
    BEGIN
        NAME "FileMenu"
        MENU-ITEM 103 "menu.save.cur.eu"
        BEGIN
            NAME "SaveCurEndUser"
        END

        MENU-ITEM 102 "menu.exit"
        BEGIN
            NAME "ExitProgram"
        END

    END

    MENU-ITEM 104 "menu.edit"
    BEGIN
        NAME "EditMenu"
        MENU-ITEM 105 "reset.button"
        BEGIN
            NAME "ClearForm"
        END

    END

    MENU-ITEM 106 "menu.tools"
    BEGIN
        NAME "ToolsMenu"
        MENU-ITEM 107 "menu.prep.file"
        BEGIN
            NAME "PrepFile"
        END

        MENU-ITEM 108 "menu.toggle.list.order"
        BEGIN
            NAME "toggleListOrder"
        END

    END

    MENU-ITEM 109 "menu.language"
    BEGIN
        NAME "LanguageMenu"
        MENU-ITEM 110 "menu.english"
        BEGIN
            NAME "menuEnglish"
        END

        MENU-ITEM 111 "menu.german"
        BEGIN
            NAME "menuGerman"
        END

        MENU-ITEM 112 "menu.french"
        BEGIN
            NAME "menuFrench"
        END

    END

    MENU-ITEM 113 "menu.upload"
    BEGIN
        NAME "UploadMenu"
        MENU-ITEM 114 "upload.instructions"
        BEGIN
            NAME "uploadInstructions"
        END

    END

END

