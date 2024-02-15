//#charset: windows-1252

VERSION "4.0"

WINDOW 101 "Manage Orders Ready for Email" 100 100 700 400
BEGIN
    EVENTMASK 3287287500
    KEYBOARDNAVIGATION
    NAME "OrderEmailSelect"
    NOT SIZABLE
    LISTBOX 100, "", 10, 40, 300, 340
    BEGIN
        CLIENTEDGE
        MULTISELECT
        NAME "ordersNotReady"
        SHORTCUE "Orders must already have been invoiced to appear in this list."
    END

    LISTBOX 101, "", 390, 40, 300, 340
    BEGIN
        CLIENTEDGE
        MULTISELECT
        NAME "ordersReadyForEmail"
    END

    STATICTEXT 102, "Orders not ready to be emailed", 10, 15, 160, 15
    BEGIN
        NAME "Static Text"
    END

    STATICTEXT 103, "Orders ready to be emailed", 390, 15, 160, 15
    BEGIN
        NAME "Static Text"
    END

    BUTTON 104, ">", 330, 70, 40, 25
    BEGIN
        NAME "makeReady"
        SHORTCUE "Move selected orders to the ready for email list."
    END

    BUTTON 105, ">>", 330, 105, 40, 25
    BEGIN
        NAME "makeReadyBulk"
        SHORTCUE "Move all the orders to the ready to email list."
    END

    BUTTON 106, "<<", 330, 160, 40, 25
    BEGIN
        NAME "makeNotReadyBulk"
        SHORTCUE "Move all the orders back to the not ready list."
    END

    BUTTON 107, "<", 330, 195, 40, 25
    BEGIN
        NAME "makeNotReady"
        SHORTCUE "Move the selected orders back to the not ready list."
    END

    BUTTON 108, "Exit", 330, 300, 40, 25
    BEGIN
        NAME "Button"
    END

END

