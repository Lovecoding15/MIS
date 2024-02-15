VERSION "4.0"

WINDOW 101 "Email Search" 100 100 400 300
BEGIN
    KEYBOARDNAVIGATION
    EVENTMASK 3287287500
    NAME "email_search"

    LISTBOX 100, "", 120, 50, 250, 100
    BEGIN
        NAME "email_lbox"
        CLIENTEDGE
    END

    EDIT 90, "", 120, 20, 250, 25
    BEGIN
        NAME "email_in"
        CLIENTEDGE
    END

    EDIT 108, "", 120, 190, 120, 25
    BEGIN
        NAME "cust_id"
        CLIENTEDGE
    END

    EDIT 110, "", 120, 220, 250, 25
    BEGIN
        NAME "cust_name"
        CLIENTEDGE
    END

    STATICTEXT 305, "Customer number", 10, 190, 100, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "cust_id_lbl"
    END

    STATICTEXT 310, "Name", 10, 220, 100, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "cust_name_lbl"
    END

    STATICTEXT 300, "Email address", 10, 20, 100, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "emaddr_lbl"
    END

    EDIT 105, "", 120, 160, 40, 25
    BEGIN
        NAME "firm"
        CLIENTEDGE
    END

    STATICTEXT 312, "Firm", 10, 160, 100, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "firm_lbl"
    END

    BUTTON 200, "E&xit", 120, 260, 80, 25
    BEGIN
        NAME "exit_btn"
    END

    BUTTON 205, "&Customer", 220, 260, 80, 25
    BEGIN
        NAME "Cust_btn"
    END
END
