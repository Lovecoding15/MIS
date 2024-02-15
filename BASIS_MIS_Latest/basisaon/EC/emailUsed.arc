//#charset: windows-1252

VERSION "4.0"

WINDOW 101 "Search for Email Address in the Database" 100 100 1000 600
BEGIN
    NOT CLOSEBOX
    EVENTMASK 0
    NOT MAXIMIZABLE
    NAME "searchEmailAddresses"
    NOT SIZABLE
    EDIT 100, "", 65, 10, 270, 25
    BEGIN
        MAXLENGTH 32767
        NAME "searchEmail"
        SPELLCHECKED
        NOT DRAGENABLED
    END

    STATICTEXT 102, "Search:", 10, 15, 50, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "searchEmailLabel"
        NOT WORDWRAP
    END

    GRID 103, "", 10, 45, 980, 500
    BEGIN
        NOT READONLY
        BACKGROUNDCOLOR RGB(255,255,255)
        COLUMNHEAD 25, 105
        COLUMNS 3
        FOREGROUNDCOLOR RGB(0,0,0)
        GRIDCOLTITLE 0, "Table "
        GRIDCOLTITLE 1, "Key"
        GRIDCOLTITLE 2, "Email Address"
        GRIDCOLWIDTH 0, 220
        GRIDCOLWIDTH 1, 350
        GRIDCOLWIDTH 2, 350
        HORIZLINES
        MAXCOLS 2147483647
        NAME "emailUsedGrid"
        ROWHEAD 20, 103
        ROWS 24
        USERSIZE
        VERTLINES
        VSCROLLBAR
    END

    BUTTON 106, "Exit", 870, 560, 120, 25
    BEGIN
        NAME "exitBtn"
    END

    BUTTON 107, "Search", 345, 10, 100, 25
    BEGIN
        NAME "searchButton"
    END

END

