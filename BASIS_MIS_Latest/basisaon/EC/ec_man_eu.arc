//#charset: windows-1252

VERSION "4.0"

WINDOW 101 "window.title" 0 0 790 500
BEGIN
    NOT CLOSEBOX
    EVENTMASK 3287287500
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "ManEndUser"
    NOTITLEBAR
    NOT SIZABLE
    STATICTEXT 100, "download.temp.explain", 50, 75, 690, 30
    BEGIN
        NAME "Static Text"
    END

    BUTTON 101, "download.file.label", 610, 265, 120, 25
    BEGIN
        NAME "DownloadTemplate"
    END

    GROUPBOX 103, "download.temp.group.label", 40, 50, 710, 250
    BEGIN
        NAME "Group Control"
    END

    STATICTEXT 104, "upload.explain", 50, 345, 690, 30
    BEGIN
        NAME "Static Text"
    END

    BUTTON 105, "upload.file", 610, 385, 120, 25
    BEGIN
        NAME "UploadFile"
    END

    GROUPBOX 106, "upload.group.label", 40, 320, 710, 100
    BEGIN
        NAME "Group Control"
    END

    BUTTON 110, "done.label", 650, 460, 120, 25
    BEGIN
        NAME "Return"
    END

    GROUPBOX 111, "select.type.group.label", 60, 115, 670, 140
    BEGIN
        NAME "selectTemplateFileType"
    END

    RADIOBUTTON 117, "tab.delimited.label", 70, 210, 300, 25
    BEGIN
        NAME "templateText"
    END

    RADIOBUTTON 113, "vkeyed.label", 70, 175, 300, 25
    BEGIN
        NAME "templateVkeyed"
    END

    EDIT 118, "", 50, 385, 410, 25
    BEGIN
        CLIENTEDGE
        DISABLED
        INVISIBLE
        NAME "uploadStatus"
    END

    STATICTEXT 120, "progress.cnt.label", 40, 465, 150, 25
    BEGIN
        INVISIBLE
        JUSTIFICATION 32768
        NAME "progressLabel"
    END

    RADIOBUTTON 112, "vkeyed.standalone.label", 70, 140, 300, 25
    BEGIN
        NAME "templateVkeyedwApp"
    END

    PROGRESSBAR 102, 209, 460, 204, 18
    BEGIN
        CUSTOMTEXT ""
        INVISIBLE
        NAME "progress"
    END

    STATICTEXT 107, "BASIS b-commerce System Manager Your End User Data", 0, 0, 790, 25
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
        MENU-ITEM 104 "menu.exit"
        BEGIN
            NAME "ExitProgram"
        END

    END

    MENU-ITEM 102 "menu.edit"
    BEGIN
        NAME "EditMenu"
        MENU-ITEM 105 "menu.edit.eu.data"
        BEGIN
            NAME "EditEndUserDataMenuItem"
        END

    END

    MENU-ITEM 103 "menu.actions"
    BEGIN
        NAME "ActionsMenu"
        MENU-ITEM 109 "menu.download.temp"
        BEGIN
            NAME "DownloadTemplateMenu"
            MENU-ITEM 107 "menu.tab.delim.text"
            BEGIN
                NAME "TextDelimitedTemplate"
            END

            MENU-ITEM 110 "menu.vkeyed"
            BEGIN
                NAME "VkeyedOnlyTemplate"
            END

            MENU-ITEM 111 "menu.vkeyed.with.app"
            BEGIN
                NAME "VkeyedwithApp"
            END

        END

        MENU-ITEM 106 "menu.download.existing.eu"
        BEGIN
            NAME "DownloadExistingMenu"
            MENU-ITEM 112 "menu.tab.delim.text"
            BEGIN
                NAME "TextDelimitedExisting"
            END

            MENU-ITEM 113 "menu.vkeyed"
            BEGIN
                NAME "VkeyedOnlyExisting"
            END

        END

        MENU-ITEM 108 "menu.upload.eu.data"
        BEGIN
            NAME "UploadEndUserData"
        END

    END

END

