//#charset: windows-1252

VERSION "4.0"

WINDOW 101 "Emergency License - Serial Number and Authorization Code Known" 100 100 635 395
BEGIN
    DEFAULTFONT "Dialog" 10
    EVENTMASK 3287287500
    INVISIBLE
    KEYBOARDNAVIGATION
    MINIMIZED
    NAME "emergencyLicenseSearchPanel1"
    NOTITLEBAR
    NOT SIZABLE
    STATICTEXT 100, "Emergency License Search", 15, 5, 590, 30
    BEGIN
        FONT "Dialog" 14,bold
        JUSTIFICATION 16384
        NAME "headertext"
    END

    STATICTEXT 101, "If you know your Serial Number and Authorization Code you can get a license by following these instructions.", 15, 45, 590, 35
    BEGIN
        FONT "Dialog" 10
        NAME "haveInfoText"
    END

    STATICTEXT 102, "For BBj (Serial Number begins with BBJ or BBX):", 25, 95, 300, 25
    BEGIN
        FONT "Dialog" 10
        NAME "BBjInstrLbl"
        NOT OPAQUE
    END

    STATICTEXT 103, "Download BBj from the Product Download Page", 40, 125, 300, 25
    BEGIN
        FONT "Dialog" 10
        NAME "BBjInstr"
        NOT OPAQUE
    END

    STATICTEXT 104, "Install the product, run the Admin Utility and submit a License Registration request with your serial number and authorization code.", 40, 150, 550, 40
    BEGIN
        FONT "Dialog" 10
        NAME "BBjInstr2"
    END

    STATICTEXT 106, "For PRO/5 (Serial Number begins with PRO5):", 25, 200, 300, 25
    BEGIN
        FONT "Dialog" 10
        NAME "Pro5InstrLbl"
    END

    STATICTEXT 107, "Download PRO/5 from the Product Download Page", 40, 230, 300, 25
    BEGIN
        FONT "Dialog" 10
        NAME "Pro5Instr"
    END

    STATICTEXT 108, "Download the BASIS License Manager from the BASIS License Manager Download Page", 40, 260, 360, 35
    BEGIN
        FONT "Dialog" 10
        NAME "Pro5Instr2"
    END

    STATICTEXT 109, "Install the product, install the BLM, run the BLMAdmin Utility and submit a License Registration request with your serial number and authorization code.", 40, 310, 550, 40
    BEGIN
        FONT "Dialog" 10
        NAME "Pro5Instr3"
    END

    BUTTON 112, "Search for Serial Number/Authorization Code", 335, 360, 270, 25
    BEGIN
        NAME "moveForwardBtn"
    END

    BUTTON 113, "Exit", 20, 360, 90, 25
    BEGIN
        NAME "ExitBtn1"
    END

    BUTTON 105, "Download BBj", 475, 95, 130, 25
    BEGIN
        NAME "downloadBBj"
    END

    BUTTON 110, "Download PRO5", 475, 200, 130, 25
    BEGIN
        NAME "downloadPro5"
    END

    BUTTON 111, "Download BLM", 475, 265, 130, 25
    BEGIN
        NAME "downloadBLM"
    END

END

WINDOW 102 "Emergency License - Serial Number or Authorization Code Not Known" 100 100 635 395
BEGIN
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "emergencyLicenseSearchPanel2"
    NOTITLEBAR
    NOT SIZABLE
    STATICTEXT 100, "Emergency License Search", 15, 5, 590, 30
    BEGIN
        FONT "Dialog" 14,bold
        JUSTIFICATION 16384
        NAME "headerText2"
    END

    STATICTEXT 101, "If you do not know your serial number or authorization code, the best way to find them is to call or email BASIS International Ltd during normal business hours on standard business days.", 15, 45, 590, 40
    BEGIN
        FONT "Dialog" 10
        NAME "BASISHoursInstr"
    END

    STATICTEXT 102, "Standard business days are Monday through Friday with the exception of holidays. Normal business hours are 9AM until 4PM", 25, 85, 560, 40
    BEGIN
        FONT "Dialog" 10
        NAME "BASISHoursInstr2"
    END

    STATICTEXT 103, "Email: support@basis.cloud or sales@basis.cloud", 25, 130, 570, 25
    BEGIN
        FONT "Dialog" 10
        NAME "BASISHoursInstr3"
    END

    STATICTEXT 104, "Phone: +1.505.345.5232  Sales: US and Canada 505.938.6120  International +1.505.338.4188", 25, 160, 580, 25
    BEGIN
        FONT "Dialog" 10
        NAME "BASISHoursInstr4"
    END

    STATICTEXT 105, "If it is outside of normal business hours on normal business days, click [I'm not a robot] below to enable the [Next] button. Click [Next] and we will attempt to assist you in searching our database to discover your serial number and authorization code.", 15, 190, 590, 60
    BEGIN
        FONT "Dialog" 10
        NAME "BASISHoursInstr5"
    END

    BUTTON 107, "Back", 515, 360, 90, 25
    BEGIN
        INVISIBLE
        NAME "backbtn"
    END

    BUTTON 108, "Next", 515, 360, 90, 25
    BEGIN
        DISABLED
        NAME "nextbtn"
    END

    HTMLVIEW 109, "<html>\n  <head>\n    \n  </head>\n  <body>\n  </body>\n</html>\n", 10, 255, 315, 100
    BEGIN
        NAME "reCaptcha"
    END

    BUTTON 110, "Exit", 20, 360, 90, 25
    BEGIN
        NAME "ExitBtn2"
    END

END

WINDOW 103 "Emergency License - Email Address Verification" 100 100 635 395
BEGIN
    EVENTMASK 8388608
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "emergencyLicenseSearchPanel3"
    NOTITLEBAR
    NOT SIZABLE
    STATICTEXT 101, "Emergency License Search", 15, 5, 590, 30
    BEGIN
        FONT "Dialog" 14,bold
        JUSTIFICATION 16384
        NAME "headerText3"
    END

    EDIT 102, "", 80, 115, 280, 25
    BEGIN
        CLIENTEDGE
        FONT "Dialog" 10
        NAME "emailaddress"
    END

    STATICTEXT 103, "Please enter an email address that could be linked to your serial number and to which you have access for verification.", 80, 70, 500, 35
    BEGIN
        FONT "Dialog" 10
        NAME "emailAddressLbl"
    END

    BUTTON 104, "Send Verification Email", 80, 150, 180, 25
    BEGIN
        NAME "sendBtn"
    END

    GROUPBOX 100, "Email Verification", 15, 45, 590, 145
    BEGIN
        FONT "Dialog" 10,bold
        NAME "emailVerification"
    END

    GROUPBOX 105, "Enter Verification Code", 15, 200, 590, 145
    BEGIN
        FONT "Dialog" 10,bold
        INVISIBLE
        NAME "verificationCodeGroup"
    END

    BUTTON 112, "Back", 515, 360, 90, 25
    BEGIN
        INVISIBLE
        NAME "backBtn"
    END

    STATICTEXT 106, "An email was sent to the address you entered above. Enter the 6 character Verification Code contained in that email here.", 80, 230, 515, 35
    BEGIN
        FONT "Dialog" 10
        INVISIBLE
        NAME "verificationCodelbl"
    END

    EDIT 108, "", 80, 275, 120, 25
    BEGIN
        CLIENTEDGE
        INVISIBLE
        NAME "verificationCode"
    END

    BUTTON 109, "Confirm Verification Code", 80, 310, 180, 25
    BEGIN
        INVISIBLE
        NAME "confirmBtn"
    END

    STATICTEXT 107, "Verification Code must be entered within 3 minutes.", 210, 275, 370, 25
    BEGIN
        FONT "Dialog" 10
        INVISIBLE
        NAME "timeoutwarninglbl"
    END

    BUTTON 110, "Resend Email", 275, 310, 100, 25
    BEGIN
        INVISIBLE
        NAME "resendbtn"
    END

    BUTTON 113, "Reset", 270, 150, 90, 25
    BEGIN
        NAME "resetBtn"
    END

    PROGRESSBAR 114, 390, 310, 105, 25
    BEGIN
        BACKGROUNDCOLOR RGB(153,153,255)
        FONT "Microsoft Sans Serif" 10,bold
        FOREGROUNDCOLOR RGB(0,0,102)
        INVISIBLE
        MAXIMUM 180
        NAME "timeClock"
        SHORTCUE "Time remaining."
    END

    BUTTON 111, "Exit", 20, 360, 90, 25
    BEGIN
        NAME "ExitBtn3"
    END

END

WINDOW 104 "Emergency License - Search Results" 100 100 635 395
BEGIN
    EVENTMASK 8388608
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "emergencyLicenseSearchPanel4"
    NOTITLEBAR
    NOT SIZABLE
    STATICTEXT 100, "Emergency License Search", 15, 5, 590, 30
    BEGIN
        FONT "Dialog" 14,bold
        JUSTIFICATION 16384
        NAME "headerText4"
    END

    STATICTEXT 101, "Search Result Status", 15, 45, 590, 55
    BEGIN
        FONT "Dialog" 10
        INVISIBLE
        NAME "searchStatus"
    END

    LISTBOX 103, "", 65, 135, 125, 66
    BEGIN
        CLIENTEDGE
        FONT "Dialog" 10
        INVISIBLE
        NAME "bcommAccounts"
    END

    STATICTEXT 102, "B-Commerce Accounts", 65, 110, 150, 25
    BEGIN
        FONT "Dialog" 10
        INVISIBLE
        NAME "bcommlbl"
    END

    BUTTON 105, "Back", 515, 360, 90, 25
    BEGIN
        NAME "backBtn4"
    END

    GRID 106, "", 15, 110, 590, 210
    BEGIN
        CLIENTEDGE
        COLUMNHEAD 25, 108
        COLUMNS 4
        FOREGROUNDCOLOR RGB(0,0,0)
        GRIDCOLTITLE 0, "Company Name"
        GRIDCOLTITLE 1, "Serial #"
        GRIDCOLTITLE 2, "Users"
        GRIDCOLTITLE 3, "Rev"
        GRIDCOLWIDTH 0, 250
        GRIDCOLWIDTH 1, 135
        GRIDCOLWIDTH 2, 45
        GRIDCOLWIDTH 3, 45
        HORIZLINES
        HSCROLLBAR
        INVISIBLE
        MAXCOLS 2147483647
        NAME "serialNumberGrid"
        ROWS 5
        USERSIZE
        VERTLINES
        VSCROLLBAR
    END

    STATICTEXT 107, "Hostname:", 15, 132, 65, 25
    BEGIN
        FONT "Dialog" 10
        INVISIBLE
        JUSTIFICATION 32768
        NAME "hostnamelbl"
    END

    EDIT 109, "", 90, 125, 300, 25
    BEGIN
        CLIENTEDGE
        FONT "Dialog" 10
        INVISIBLE
        NAME "hostname"
    END

    BUTTON 110, "Search", 400, 125, 90, 25
    BEGIN
        INVISIBLE
        NAME "searchBtn"
    END

    GRID 111, "", 15, 160, 590, 185
    BEGIN
        CLIENTEDGE
        COLUMNHEAD 25, 113
        COLUMNS 4
        FOREGROUNDCOLOR RGB(0,0,0)
        GRIDCOLTITLE 0, "Company Name"
        GRIDCOLTITLE 1, "Serial #"
        GRIDCOLTITLE 2, "Users"
        GRIDCOLTITLE 3, "Rev"
        GRIDCOLWIDTH 0, 250
        GRIDCOLWIDTH 1, 135
        GRIDCOLWIDTH 2, 45
        GRIDCOLWIDTH 3, 45
        HORIZLINES
        HSCROLLBAR
        INVISIBLE
        MAXCOLS 2147483647
        NAME "altserialNumberGrid"
        ROWS 5
        USERSIZE
        VERTLINES
        VSCROLLBAR
    END

    EDIT 112, "", 90, 110, 90, 25
    BEGIN
        CLIENTEDGE
        INVISIBLE
        NAME "numberofusers"
    END

    STATICTEXT 114, "Users:", 15, 117, 65, 25
    BEGIN
        INVISIBLE
        JUSTIFICATION 32768
        NAME "numberofuserslbl"
    END

    BUTTON 115, "Continue", 190, 110, 90, 25
    BEGIN
        INVISIBLE
        NAME "continueBtn"
    END

    BUTTON 116, "Continue Search", 400, 360, 110, 25
    BEGIN
        INVISIBLE
        NAME "searchContinueBtn"
    END

    BUTTON 117, "Exit", 20, 360, 90, 25
    BEGIN
        NAME "ExitBtn4"
    END

    BUTTON 104, "Launch B-Commerce", 436, 135, 175, 25
    BEGIN
        INVISIBLE
        NAME "launchBcomm"
    END

    STATICTEXT 118, "", 290, 117, 270, 25
    BEGIN
        INVISIBLE
        NAME "messageStatic"
    END

END

WINDOW 105 "Emergency License Search Message" 100 100 635 225
BEGIN
    EVENTMASK 8388608
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "messageForm"
    NOTITLEBAR
    NOT SIZABLE
    STATICTEXT 100, "Emergency License Search", 15, 5, 590, 30
    BEGIN
        FONT "Dialog" 14,bold
        JUSTIFICATION 16384
        NAME "headerText5"
    END

    STATICTEXT 101, "", 16, 45, 590, 125
    BEGIN
        FONT "Dialog" 10
        JUSTIFICATION 16384
        NAME "messageText"
    END

    BUTTON 102, "Exit", 272, 190, 90, 25
    BEGIN
        INVISIBLE
        NAME "messageExitBtn"
    END

    BUTTON 103, "OK", 272, 190, 90, 25
    BEGIN
        INVISIBLE
        NAME "messageOKBtn"
    END

END

