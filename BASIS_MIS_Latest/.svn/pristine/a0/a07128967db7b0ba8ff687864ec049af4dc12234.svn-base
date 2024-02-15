//#charset: windows-1252

VERSION "4.0"

WINDOW 101 "Request an Emergency License" 100 100 450 160
BEGIN
    EVENTMASK 3287287500
    KEYBOARDNAVIGATION
    NAME "emerLic"
    STATICTEXT 100, "Use this form to request an emergency license which will expire in 7 days. The license generated will be emailed to you and you can forward it on to the customer. The information recorded in this form will be logged for later follow up if needed.", 5, 5, 425, 50
    BEGIN
        NAME "descriptivelbl"
    END

    STATICTEXT 101, "Firm ID:", 5, 60, 90, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "firmidlbl"
    END

    STATICTEXT 102, "Customer Nbr:", 5, 80, 90, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "customernbrlbl"
    END

    STATICTEXT 103, "Customer Name:", 5, 100, 90, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "custnamelbl"
    END

    STATICTEXT 106, "# of Users:", 5, 120, 90, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "nbrOfUserslbl"
    END

    EDIT 107, "", 100, 60, 40, 20
    BEGIN
        CLIENTEDGE
        DISABLED
        NAME "firmid"
    END

    EDIT 108, "", 100, 80, 60, 20
    BEGIN
        CLIENTEDGE
        DISABLED
        NAME "custNbr"
    END

    EDIT 109, "", 100, 100, 200, 20
    BEGIN
        CLIENTEDGE
        DISABLED
        NAME "custName"
    END

    EDIT 112, "", 100, 120, 60, 20
    BEGIN
        CLIENTEDGE
        NAME "nbrOfUsers"
    END

    BUTTON 115, "Request the License", 310, 60, 110, 25
    BEGIN
        NAME "requestBtn"
    END

    BUTTON 116, "Exit", 310, 95, 110, 25
    BEGIN
        NAME "exitBtn"
    END

END

