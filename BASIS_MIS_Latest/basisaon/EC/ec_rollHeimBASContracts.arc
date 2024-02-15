//#charset: windows-1252

VERSION "4.0"

WINDOW 101 "Roll Expiration Dates" 0 0 790 500
BEGIN
    EVENTMASK 3287287500
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "rollExpirationDates"
    NOTITLEBAR
    LISTBOX 100, "List Box\n", 120, 105, 200, 249
    BEGIN
        CLIENTEDGE
        MULTISELECT
        NAME "leftSide"
    END

    LISTBOX 101, "List Box\n", 470, 105, 200, 249
    BEGIN
        CLIENTEDGE
        MULTISELECT
        NAME "rightSide"
    END

    BUTTON 102, ">", 370, 130, 50, 25
    BEGIN
        FONT "Microsoft Sans Serif" 8,bold
        NAME "selectSome"
        SHORTCUE "Move selected items to the renewal list."
    END

    BUTTON 103, ">>", 370, 165, 50, 25
    BEGIN
        FONT "Microsoft Sans Serif" 8,bold
        NAME "selectAll"
        SHORTCUE "Move all items to the renewal list."
    END

    BUTTON 104, "<<", 370, 200, 50, 25
    BEGIN
        FONT "Microsoft Sans Serif" 8,bold
        NAME "deselectAll"
        SHORTCUE "Move all items on the renewal list back."
    END

    BUTTON 106, "<", 370, 235, 50, 25
    BEGIN
        FONT "Microsoft Sans Serif" 8,bold
        NAME "deselectSome"
        SHORTCUE "Move selected items from the renewal list back."
    END

    STATICTEXT 105, "ExpirationDate", 120, 70, 170, 25
    BEGIN
        NAME "expirationDate"
    END

    STATICTEXT 107, "rollTo", 470, 70, 170, 25
    BEGIN
        NAME "rollTo"
    END

    BUTTON 108, "Roll the Expiration Dates", 470, 370, 200, 25
    BEGIN
        NAME "rollDates"
    END

    BUTTON 109, "Exit", 600, 460, 170, 25
    BEGIN
        NAME "done"
    END

    LISTBUTTON 110, "List Button\n", 190, 370, 130, 130
    BEGIN
        NAME "expireDates"
        SELECTIONHEIGHT 25
    END

    STATICTEXT 111, "Expiration Dates:", 100, 375, 90, 25
    BEGIN
        NAME "staticText01"
    END

    STATICTEXT 112, "BASIS b-commerce System Roll Expiration Dates", 0, 0, 790, 25
    BEGIN
        FONT "Dialog.bold" 14,bold
        JUSTIFICATION 16384
        NAME "headertext"
        NOT WORDWRAP
    END

END

