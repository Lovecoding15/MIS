//#charset: windows-1252

VERSION "4.0"

WINDOW 101 "Marriott License Reset" 200 200 655 280
BEGIN
    NOT CLOSEBOX
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT MAXIMIZABLE
    NAME "MarriottReset"
    NOT SIZABLE
    BUTTON 100, "Advanced Search", 20, 115, 290, 25
    BEGIN
        NAME "SNSearch"
    END

    STATICTEXT 105, "Advanced Search (All Serial Numbers and Codes)", 20, 100, 270, 15
    BEGIN
        NAME "AdvSrchLabel"
        NOT OPAQUE
        NOT WORDWRAP
    END

    EDIT 103, "", 20, 35, 125, 25
    BEGIN
        MAXLENGTH 32767
        NAME "SNDisplay"
        PLACEHOLDER "Serial Number"
        SPELLCHECKED
        NOT DRAGENABLED
    END

    EDIT 104, "", 20, 65, 125, 25
    BEGIN
        MAXLENGTH 32767
        NAME "MRSHADisplay"
        PLACEHOLDER "MARSHA Code"
        SPELLCHECKED
        NOT DRAGENABLED
    END

    GROUPBOX 106, "License Search", 10, 15, 310, 145
    BEGIN
        NAME "LicenseSearchGroup"
    END

    EDIT 107, "", 460, 95, 135, 25
    BEGIN
        MAXLENGTH 32767
        NAME "NbrOfUsers"
        PLACEHOLDER "Nbr of Users"
        READONLY
        NOT TABTRAVERSABLE
        SPELLCHECKED
        NOT DRAGENABLED
    END

    STATICTEXT 108, "Number of Users", 345, 100, 105, 15
    BEGIN
        JUSTIFICATION 32768
        NAME "NULabel"
        NOT WORDWRAP
    END

    EDIT 109, "", 460, 125, 135, 25
    BEGIN
        BACKGROUNDCOLOR RGB(255,255,128)
        MAXLENGTH 32767
        NAME "ResetStatus"
        PLACEHOLDER "Reset Status"
        READONLY
        NOT TABTRAVERSABLE
        SPELLCHECKED
        NOT DRAGENABLED
    END

    STATICTEXT 110, "Reset Status", 345, 130, 105, 15
    BEGIN
        JUSTIFICATION 32768
        NAME "RSLabel"
        NOT WORDWRAP
    END

    GROUPBOX 118, "License Information", 335, 15, 310, 145
    BEGIN
        NAME "LicenseInfoGroup"
    END

    GROUPBOX 123, "License Reset", 10, 175, 635, 60
    BEGIN
        NAME "LicenseRestGroup"
    END

    LISTBUTTON 111, "", 135, 195, 185, 110
    BEGIN
        NAME "ResetReason"
        SELECTIONHEIGHT 25
    END

    STATICTEXT 112, "Reset Reason", 20, 200, 105, 15
    BEGIN
        NAME "RRLabel"
        NOT WORDWRAP
    END

    BUTTON 113, "Reset the License", 335, 195, 295, 25
    BEGIN
        NAME "ResetButton"
    END

    BUTTON 114, "Exit", 555, 245, 90, 25
    BEGIN
        NAME "ExitButton"
    END

    BUTTON 117, "Search for Serial Number", 155, 35, 155, 25
    BEGIN
        NAME "SNSearchButton"
    END

    BUTTON 116, "Search for MARSHA Code", 155, 65, 155, 25
    BEGIN
        NAME "MARSHASearchButton"
    END

    STATICTEXT 119, "Serial Number", 345, 40, 105, 15
    BEGIN
        JUSTIFICATION 32768
        NAME "SerialNbrInfoLabel"
        NOT OPAQUE
        NOT WORDWRAP
    END

    EDIT 120, "", 460, 35, 135, 25
    BEGIN
        MAXLENGTH 32767
        NAME "SerialNbrInfo"
        PLACEHOLDER "Serial Number"
        READONLY
        NOT TABTRAVERSABLE
        SPELLCHECKED
        NOT DRAGENABLED
    END

    STATICTEXT 121, "MARSHA Code", 345, 70, 105, 15
    BEGIN
        JUSTIFICATION 32768
        NAME "MarshaCodeInfoLabel"
        NOT OPAQUE
        NOT WORDWRAP
    END

    EDIT 122, "", 460, 65, 135, 25
    BEGIN
        MAXLENGTH 32767
        NAME "MarshaCodeInfo"
        PLACEHOLDER "MARSHA Code"
        READONLY
        NOT TABTRAVERSABLE
        SPELLCHECKED
        NOT DRAGENABLED
    END

    BUTTON 124, "Change Password", 10, 245, 100, 25
    BEGIN
        NAME "changePasswordBtn"
        NOT TABTRAVERSABLE
    END

END

WINDOW 102 "Marriott" 50 50 260 150
BEGIN
    ENTERASTAB
    EVENTMASK 0
    ICON ""
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT MAXIMIZABLE
    NAME "LoginWindow"
    NOT SIZABLE
    EDIT 100, "", 75, 20, 160, 25
    BEGIN
        MAXLENGTH 32767
        NAME "UserID"
        PLACEHOLDER "Username"
        SPELLCHECKED
        NOT DRAGENABLED
    END

    STATICTEXT 101, "Username:", 10, 27, 55, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "UserIDLabel"
        NOT WORDWRAP
    END

    EDIT 103, "", 75, 65, 160, 25
    BEGIN
        MAXLENGTH 32767
        NAME "Password"
        PASSWORDENTRY
        PLACEHOLDER "Password"
        SPELLCHECKED
        NOT DRAGENABLED
    END

    STATICTEXT 104, "Password:", 10, 72, 55, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "PasswordLabel"
        NOT WORDWRAP
    END

    BUTTON 105, "Login", 20, 110, 215, 25
    BEGIN
        NAME "LoginButton"
    END

    BUTTON 106, "Forgot Username or Password", 20, 155, 215, 25
    BEGIN
        INVISIBLE
        NAME "forgotCredsBtn"
        NOT TABTRAVERSABLE
    END

END

WINDOW 103 "Change Password" 50 50 320 140
BEGIN
    ENTERASTAB
    EVENTMASK 0
    ICON ""
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "ChangePassword"
    EDIT 100, "", 160, 30, 140, 25
    BEGIN
        MAXLENGTH 32767
        NAME "newPassword"
        PASSWORDENTRY
        PLACEHOLDER "New Password"
        SPELLCHECKED
        NOT DRAGENABLED
    END

    EDIT 101, "", 160, 65, 140, 25
    BEGIN
        MAXLENGTH 32767
        NAME "confirmPassword"
        PASSWORDENTRY
        PLACEHOLDER "Confirm Password"
        SPELLCHECKED
        NOT DRAGENABLED
    END

    STATICTEXT 102, "New Password:", 60, 37, 90, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "newPasswordLbl"
        NOT WORDWRAP
    END

    STATICTEXT 104, "Confirm:", 60, 72, 90, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "confirmPasswordLbl"
        NOT WORDWRAP
    END

    BUTTON 105, "Save", 160, 100, 140, 25
    BEGIN
        NAME "saveButton"
    END

    BUTTON 106, "Cancel", 10, 100, 140, 25
    BEGIN
        NAME "cancelButton"
    END

END

