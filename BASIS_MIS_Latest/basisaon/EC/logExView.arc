//#charset: windows-1252

VERSION "4.0"

WINDOW 101 "Log Extract Table" 100 100 1000 320
BEGIN
    EVENTMASK 3287287500
    KEYBOARDNAVIGATION
    NAME "logExtractView"
    GRID 100, "", 10, 60, 980, 265
    BEGIN
        CLIENTEDGE
        COLUMNHEAD 25, 102
        COLUMNS 11
        FOREGROUNDCOLOR RGB(0,0,0)
        GRIDCOLTITLE 0, "Seq"
        GRIDCOLTITLE 1, "Date"
        GRIDCOLTITLE 2, "Time"
        GRIDCOLTITLE 3, "From"
        GRIDCOLTITLE 4, "Host Id"
        GRIDCOLTITLE 5, "Company"
        GRIDCOLTITLE 6, "Last Name"
        GRIDCOLTITLE 7, "First Name"
        GRIDCOLTITLE 8, "Email"
        GRIDCOLTITLE 9, "Auth Number"
        GRIDCOLTITLE 10, "Host Name"
        GRIDCOLWIDTH 0, 25
        GRIDCOLWIDTH 1, 70
        GRIDCOLWIDTH 3, 100
        GRIDCOLWIDTH 4, 100
        GRIDCOLWIDTH 5, 100
        GRIDCOLWIDTH 6, 80
        GRIDCOLWIDTH 7, 80
        GRIDCOLWIDTH 8, 225
        GRIDCOLWIDTH 9, 75
        GRIDCOLWIDTH 10, 75
        HORIZLINES
        HSCROLLBAR
        MAXCOLS 2147483647
        NAME "logGrid"
        ROWS 10
        USERSIZE
        VERTLINES
    END

    EDIT 103, "", 80, 20, 110, 25
    BEGIN
        CLIENTEDGE
        NAME "serialNumber"
    END

    STATICTEXT 104, "Serial Number", 10, 20, 70, 25
    BEGIN
        NAME "lblSerialNbr"
    END

    BUTTON 105, "Exit", 900, 20, 90, 25
    BEGIN
        NAME "btnExit"
    END

    BUTTON 106, "Save", 800, 20, 90, 25
    BEGIN
        NAME "btnSave"
    END

    STATICTEXT 107, "Email Edit", 200, 20, 50, 25
    BEGIN
        NAME "lblEmailEdit"
    END

    EDIT 108, "", 250, 20, 540, 25
    BEGIN
        CLIENTEDGE
        NAME "emailEdit"
    END

END

