//#charset: windows-1252

VERSION "4.0"

WINDOW 101 "Customer Line Item Detail Sales Report" 100 100 400 200
BEGIN
    EVENTMASK 3287287500
    KEYBOARDNAVIGATION
    NAME "custSalesReportForm"
    STATICTEXT 100, "Firm:", 10, 15, 60, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "firmIDaLabel"
    END

    EDIT 101, "", 80, 10, 30, 25
    BEGIN
        CLIENTEDGE
        NAME "firmID"
    END

    STATICTEXT 102, "Customer:", 10, 45, 60, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "custNbrLabel"
    END

    EDIT 103, "", 80, 40, 70, 25
    BEGIN
        CLIENTEDGE
        NAME "customerNbr"
    END

    EDIT 104, "", 80, 70, 175, 25
    BEGIN
        CLIENTEDGE
        NAME "custName"
    END

    STATICTEXT 105, "Cust Name:", 10, 75, 60, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "custNameLabel"
    END

    STATICTEXT 106, "Begin Date:", 10, 105, 60, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "beginDateLabel"
    END

    EDIT 107, "", 80, 100, 90, 25
    BEGIN
        CLIENTEDGE
        NAME "startDate"
    END

    STATICTEXT 108, "End Date:", 10, 135, 60, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "endDateLabel"
    END

    EDIT 109, "", 80, 130, 90, 25
    BEGIN
        CLIENTEDGE
        NAME "endDate"
    END

    STATICTEXT 110, "Rep Email:", 10, 165, 60, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "repEmailLabel"
    END

    EDIT 111, "", 80, 160, 175, 25
    BEGIN
        CLIENTEDGE
        NAME "repEmail"
    END

    BUTTON 112, "Cancel", 300, 10, 90, 25
    BEGIN
        NAME "cancelButton"
    END

    BUTTON 113, "Run Report", 300, 40, 90, 25
    BEGIN
        NAME "runButton"
    END

END

