//#charset: windows-1252

VERSION "4.0"

WINDOW 100 "BASIS b-commerce system login" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Login"
    NOT SIZABLE
    STATICTEXT 101, "Welcome to b-commerce®", 180, 130, 140, 20
    BEGIN
        JUSTIFICATION 16384
        NAME "Welcome"
    END

    STATICTEXT 102, "Customer Number:", 140, 230, 100, 25
    BEGIN
        NAME "User ID Label"
    END

    INPUTE 103, "", 240, 230, 120, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "User ID"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    STATICTEXT 104, "Password:", 140, 260, 100, 25
    BEGIN
        NAME "Password Label"
    END

    BUTTON 1, "&Login", 390, 360, 90, 25
    BEGIN
        NAME "Login"
    END

    BUTTON 2, "E&xit", 280, 360, 90, 25
    BEGIN
        NAME "Exit"
    END

    STATICTEXT 108, "To set up a b-commerce account, call a BASIS representative at 1.505.938.6120 (U.S.)", 20, 320, 475, 15
    BEGIN
        NAME "Message"
    END

    EDIT 109, "", 240, 260, 120, 25
    BEGIN
        CLIENTEDGE
        NAME "Password"
        PASSWORDENTRY
        NOT DRAGENABLED
    END

    GROUPBOX 105, "", 20, 180, 460, 124
    BEGIN
        NAME "Box"
    END

    STATICTEXT 106, "Please enter the following:", 40, 200, 410, 25
    BEGIN
        NAME "Prompt"
    END

    STATICTEXT 111, "Expressly built for BASIS customers", 135, 160, 250, 20
    BEGIN
        JUSTIFICATION 16384
        NAME "Site Info"
    END

    STATICTEXT 100, "or +49 681 968 14 0 (Europe).", 20, 335, 300, 15
    BEGIN
        NAME "Static Text"
    END

    STATICTEXT 107, "Using the Price Engine", 22, 359, 187, 25
    BEGIN
        FONT "Dialog" 10,bold
        NAME "TemporaryPriceEngineFlag"
    END

END

WINDOW 101 "BASIS b-commerce System" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 8388608
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Main"
    NOT SIZABLE
    BUTTON 112, "&Add Users/Upgrade", 340, 160, 120, 25
    BEGIN
        NAME "View SN"
        SHORTCUE "View/modify an individual license."
    END

    BUTTON 116, "&Purchase", 340, 20, 120, 25
    BEGIN
        NAME "View Item"
        SHORTCUE "Select a new product to purchase."
    END

    BUTTON 117, "Account &Information", 340, 315, 120, 25
    BEGIN
        NAME "Account"
        SHORTCUE "Account Information"
    END

    BUTTON 118, "&Log Out", 340, 365, 120, 25
    BEGIN
        NAME "Logout"
        SHORTCUE "Log Out"
    END

    BUTTON 119, "Shopping &Cart", 340, 235, 120, 25
    BEGIN
        NAME "Cart"
        SHORTCUE "Go to the Shopping Cart."
    END

    GROUPBOX 1000, "Modify or View a License", 20, 95, 460, 110
    BEGIN
        NAME "Group Control"
    END

    GROUPBOX 1001, "Shopping Cart", 20, 210, 460, 70
    BEGIN
        NAME "Group Control"
    END

    GROUPBOX 1002, "Account Information", 20, 285, 460, 70
    BEGIN
        NAME "Group Control"
    END

    STATICTEXT 1004, "Review, edit or e-mail contents of your cart", 110, 240, 225, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    STATICTEXT 1005, "Maintain your account information", 110, 315, 225, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    BUTTON 120, "&Upgrade to BPL", 340, 120, 120, 25
    BEGIN
        NAME "trade_btn"
        SHORTCUE "Allows you to upgrade to BBj or PRO/5 Rev4.x & higher."
    END

    GROUPBOX 1009, "New License", 20, 5, 460, 85
    BEGIN
        NAME "Group Control"
    END

    STATICTEXT 1011, "Configure a new license", 110, 35, 220, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    STATICTEXT 1015, "Upgrade and consolidate pre-umbrella licenses to current umbrella BASIS Product License (BPL)", 100, 120, 235, 30
    BEGIN
        JUSTIFICATION 32768
        NAME "trd_text"
    END

    STATICTEXT 1017, "Add users; upgrade or view licenses and other license options", 119, 160, 215, 30
    BEGIN
        JUSTIFICATION 32768
        NAME "mod_text"
    END

    BUTTON 1018, "&Rent", 340, 50, 120, 25
    BEGIN
        NAME "Rent"
        SHORTCUE "Select a new product to purchase."
    END

    BUTTON 121, "Support Interface", 80, 365, 120, 25
    BEGIN
        INVISIBLE
        NAME "SupportInterface"
    END

    BUTTON 122, "Download BBj", 210, 365, 120, 25
    BEGIN
        NAME "btnDownloadBBj"
    END

    HTMLVIEW 123, "<html>\n  <table align=\042center\042 border=\0420\042>\n    <tr>\n      <td align=\042center\042>\n        <a onclick=\042window.open('http://www.basis.com/bbj-download');\042 href=\042#\042>Download \n        BBj</a>\n      </td>\n    </tr>\n  </table>\n</html>\n", 210, 365, 120, 25
    BEGIN
        NAME "HtmlView"
    END

END

WINDOW 102 "View Licensed Product" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 33554432
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "View SN"
    NOT SIZABLE
    STATICTEXT 99, "Serial Number:", 20, 20, 80, 25
    BEGIN
        NAME "Serial Number Label"
    END

    INPUTE 100, "", 100, 20, 140, 20
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        MASK "XXXXXXXXXXXXXXXXXXXX"
        NAME "Serial Number"
        PADCHARACTER 32
        PASSTAB
    END

    BUTTON 101, "&View this SN", 270, 20, 90, 25
    BEGIN
        NAME "View SN"
    END

    BUTTON 102, "&Scan Licenses", 390, 20, 90, 25
    BEGIN
        NAME "Find SN"
    END

    STATICTEXT 103, "Authorization:", 20, 50, 80, 25
    BEGIN
        NAME "Authorization Label"
    END

    STATICTEXT 104, "", 100, 50, 150, 25
    BEGIN
        NAME "Authorization"
    END

    STATICTEXT 113, "Purchase Date:", 265, 50, 80, 20
    BEGIN
        NAME "Purchase Date Label"
    END

    STATICTEXT 115, "", 345, 50, 125, 20
    BEGIN
        NAME "Purchase Date"
    END

    STATICTEXT 121, "Active?", 155, 80, 50, 20
    BEGIN
        NAME "Active Label"
    END

    STATICTEXT 124, "", 205, 80, 40, 20
    BEGIN
        NAME "Status"
    END

    STATICTEXT 133, "Product:", 20, 110, 80, 25
    BEGIN
        NAME "Product Label"
    END

    STATICTEXT 134, "", 100, 110, 150, 25
    BEGIN
        NAME "Product"
    END

    STATICTEXT 136, "Platform:", 20, 140, 80, 25
    BEGIN
        NAME "Platform Label"
    END

    STATICTEXT 137, "", 100, 140, 150, 25
    BEGIN
        NAME "Platform"
    END

    STATICTEXT 139, "O/S Level:", 20, 170, 80, 25
    BEGIN
        NAME "Port ID Label"
    END

    STATICTEXT 140, "", 100, 170, 150, 25
    BEGIN
        NAME "oslevel"
    END

    STATICTEXT 142, "Revision:", 20, 200, 80, 25
    BEGIN
        NAME "Revision Label"
    END

    STATICTEXT 143, "", 100, 200, 40, 25
    BEGIN
        NAME "Revision"
    END

    STATICTEXT 144, "Type:", 20, 230, 80, 25
    BEGIN
        NAME "License Label"
    END

    STATICTEXT 145, "", 100, 230, 150, 25
    BEGIN
        NAME "License"
    END

    STATICTEXT 154, "Users:", 20, 80, 80, 25
    BEGIN
        NAME "Users Label"
    END

    STATICTEXT 155, "", 100, 80, 50, 25
    BEGIN
        NAME "Users"
    END

    STATICTEXT 160, "Item:", 20, 260, 80, 20
    BEGIN
        NAME "Item Number Label"
    END

    STATICTEXT 161, "", 100, 260, 150, 20
    BEGIN
        NAME "Item Number"
    END

    STATICTEXT 162, "Description:", 20, 285, 80, 20
    BEGIN
        NAME "Description Label"
    END

    STATICTEXT 163, "", 100, 285, 380, 20
    BEGIN
        NAME "Description"
    END

    BUTTON 165, "View &History", 60, 335, 90, 25
    BEGIN
        NAME "History"
    END

    BUTTON 166, "Modify &License", 60, 365, 90, 25
    BEGIN
        NAME "Change"
    END

    BUTTON 2, "Return to &Main", 360, 365, 90, 25
    BEGIN
        NAME "Close"
    END

    STATICTEXT 175, "Expiration:", 265, 110, 75, 20
    BEGIN
        NAME "Expire Label"
    END

    STATICTEXT 177, "", 340, 110, 125, 20
    BEGIN
        NAME "Expiration Date"
    END

    STATICTEXT 179, "Available Support:", 265, 165, 90, 20
    BEGIN
        NAME "available support label"
    END

    STATICTEXT 180, "", 355, 165, 40, 20
    BEGIN
        NAME "available support"
    END

    BUTTON 181, "&Renew", 160, 335, 90, 25
    BEGIN
        NAME "Renew"
        SHORTCUE "Renew SAM/Kit/Rent "
    END

    STATICTEXT 105, "", 100, 310, 350, 20
    BEGIN
        NAME "enduser"
    END

    BUTTON 182, "&Toggle Renewal", 160, 365, 90, 25
    BEGIN
        NAME "toggle_renew"
    END

    STATICTEXT 183, "Renewal:", 265, 135, 75, 20
    BEGIN
        NAME "renewal_lbl"
    END

    STATICTEXT 184, "", 340, 135, 145, 25
    BEGIN
        NAME "renewal_status"
    END

    GROUPBOX 185, "SAM/Kit/Rent", 255, 85, 240, 110
    BEGIN
        NAME "sam_grp"
    END

    BUTTON 106, "Send License", 260, 365, 90, 25
    BEGIN
        NAME "sendLicense"
    END

    STATICTEXT 107, "End User:", 20, 310, 80, 20
    BEGIN
        NAME "enduserLabel"
    END

    CHECKBOX 108, "Virtual", 150, 195, 90, 25
    BEGIN
        NAME "virtualFlag"
        NOT OPAQUE
    END

END

WINDOW 103 "Modify License" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 46137344
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Edit SN"
    NOT SIZABLE
    STATICTEXT 100, "Serial Number:", 20, 235, 75, 20
    BEGIN
        NAME "Serial Number Label"
    END

    STATICTEXT 101, "", 100, 235, 160, 20
    BEGIN
        NAME "Serial Number"
    END

    GROUPBOX 103, "Current Configuration", 10, 5, 260, 225
    BEGIN
        NAME "Current Configuration"
    END

    GROUPBOX 106, "Modified Configuration", 270, 5, 220, 300
    BEGIN
        NAME "Modified Configuration"
    END

    STATICTEXT 113, "Product:", 20, 25, 55, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Product Label"
    END

    STATICTEXT 115, "", 80, 25, 180, 20
    BEGIN
        NAME "Cur_Product"
    END

    LISTBUTTON 118, "", 280, 25, 200, 150
    BEGIN
        NAME "Product"
    END

    STATICTEXT 121, "Platform:", 20, 50, 55, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Platform Label"
    END

    STATICTEXT 124, "", 80, 50, 180, 20
    BEGIN
        NAME "Cur_Platform"
    END

    LISTBUTTON 127, "", 280, 50, 200, 150
    BEGIN
        NAME "Platform"
    END

    STATICTEXT 133, "O/S Level:", 20, 72, 55, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "O/S Level Label"
    END

    STATICTEXT 134, "", 80, 72, 180, 25
    BEGIN
        NAME "Cur_Oslevel"
    END

    LISTBUTTON 135, "", 280, 75, 200, 150
    BEGIN
        NAME "OsLevel"
    END

    STATICTEXT 136, "Revision:", 20, 100, 55, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Revision Label"
    END

    STATICTEXT 137, "", 80, 100, 180, 20
    BEGIN
        NAME "Cur_Revision"
    END

    LISTBUTTON 138, "", 280, 100, 200, 150
    BEGIN
        NAME "Revision"
    END

    STATICTEXT 139, "Type:", 20, 125, 55, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "License Label"
    END

    STATICTEXT 140, "", 80, 125, 180, 20
    BEGIN
        NAME "Cur_License"
    END

    LISTBUTTON 141, "", 280, 125, 200, 150
    BEGIN
        NAME "License"
    END

    STATICTEXT 142, "Users:", 20, 150, 55, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Cur Users Label"
    END

    STATICTEXT 143, "", 80, 150, 150, 20
    BEGIN
        NAME "Cur_users"
    END

    INPUTN 147, "", 440, 150, 40, 20
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Users"
        PASSENTER
        PASSTAB
        NOT INSERTMODE
    END

    BUTTON 1, "Add to &Cart", 255, 365, 70, 20
    BEGIN
        NAME "Accept"
    END

    BUTTON 2, "&View SN", 330, 365, 70, 20
    BEGIN
        NAME "Cancel"
        SHORTCUE "Return to View License"
    END

    STATICTEXT 155, "Purchase Order # :", 15, 360, 60, 30
    BEGIN
        JUSTIFICATION 32768
        NAME "Reference Label"
    END

    INPUTE 1010, "", 80, 365, 90, 20
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        MASK "XXXXXXXXXX"
        NAME "Reference"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
        SHORTCUE "Purchase Order - 10 characters or less."
    END

    STATICTEXT 200, "", 20, 260, 240, 30
    BEGIN
        NAME "Description"
    END

    STATICTEXT 1003, "Extended Users:", 340, 150, 90, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Users Label"
    END

    BUTTON 1002, "&Recalculate", 180, 365, 70, 20
    BEGIN
        NAME "Recalculate"
    END

    STATICTEXT 1006, "SAM/DVK:", 20, 175, 55, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "SAM Label"
    END

    STATICTEXT 1007, "", 80, 175, 30, 20
    BEGIN
        NAME "Sam Covered"
    END

    CHECKBOX 1008, " SAM Plan:", 395, 200, 80, 20
    BEGIN
        NAME "Sam standard"
        TEXTLEFT
    END

    STATICTEXT 1011, "Support/Reset Incident:", 320, 255, 125, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "additional support label"
    END

    EDIT 1012, "", 445, 255, 30, 20
    BEGIN
        CLIENTEDGE
        NAME "additional support"
    END

    STATICTEXT 1013, "Support:", 20, 200, 55, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "available_support_label"
    END

    STATICTEXT 1014, "", 80, 200, 30, 20
    BEGIN
        NAME "available_support"
    END

    STATICTEXT 1015, "Standard Users:", 340, 180, 90, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Users2 Label"
    END

    INPUTN 160, "", 440, 180, 40, 20
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Users2"
        PASSENTER
        PASSTAB
        NOT INSERTMODE
    END

    EDIT 153, "", 370, 335, 90, 20
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "Price"
        READONLY
    END

    STATICTEXT 1019, "Your price:", 280, 335, 85, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "total price"
    END

    CUSTOMEDIT 154, "", 21, 300, 240, 55
    BEGIN
        CLIENTEDGE
        HSCROLLBAR
        NAME "comments"
        READONLY
        VSCROLLBAR
        WORDWRAP
    END

    INPUTD 1009, "", 382, 225, 68, 20
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "renew_dt"
        PASSENTER
        PASSTAB
    END

    TOOLBUTTON 1020, "", 452, 222, 30, 30
    BEGIN
        NAME "renew_dt_btn"
        SHORTCUE "View calendar/Select date "
    END

    STATICTEXT 1021, "Renewal Date:", 280, 225, 100, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "renew_dt_lbl"
    END

    BUTTON 1022, "&Main", 405, 365, 70, 20
    BEGIN
        NAME "Main"
    END

    CHECKBOX 1017, "Runtime:", 410, 280, 65, 20
    BEGIN
        NAME "runtime"
        SHORTCUE "Does not allow access to console mode."
        TEXTLEFT
    END

    STATICTEXT 1024, "Runtime:", 130, 175, 85, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "cur_runtime_lbl"
    END

    STATICTEXT 1026, "", 220, 175, 30, 20
    BEGIN
        NAME "cur_runtime"
    END

    EDIT 1027, "", 370, 315, 90, 20
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "listprice"
        READONLY
    END

    STATICTEXT 1028, "List price:", 280, 315, 85, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "listprice_lbl"
    END

    CHECKBOX 1029, "Annual License:", 275, 200, 115, 20
    BEGIN
        NAME "no_rif"
        TEXTLEFT
        JUSTIFICATION 32768
    END

END

WINDOW 104 "Review or Purchase New Item" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 41943040
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Item"
    NOT SIZABLE
    GROUPBOX 10, "Item Details", 10, 10, 280, 220
    BEGIN
        NAME "Item Details"
    END

    STATICTEXT 98, "Product:", 20, 25, 55, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Product Label"
    END

    LISTBUTTON 99, "", 80, 25, 200, 150
    BEGIN
        NAME "Product"
        SELECTIONHEIGHT 20
    END

    STATICTEXT 100, "Platform:", 20, 50, 55, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Platform Label"
    END

    LISTBUTTON 101, "", 80, 50, 200, 150
    BEGIN
        NAME "Platform"
    END

    STATICTEXT 102, "O/S Level:", 20, 75, 55, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "O/S Label"
    END

    LISTBUTTON 103, "", 80, 75, 200, 150
    BEGIN
        NAME "oslevel"
    END

    STATICTEXT 104, "Revision:", 20, 100, 55, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Revision Label"
    END

    LISTBUTTON 105, "", 80, 100, 200, 150
    BEGIN
        NAME "Revision"
    END

    STATICTEXT 111, "Type:", 20, 125, 55, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "License Label"
    END

    LISTBUTTON 112, "", 80, 125, 200, 150
    BEGIN
        NAME "License"
    END

    STATICTEXT 113, "Item:", 20, 150, 55, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Item Number Label"
    END

    STATICTEXT 117, "", 80, 150, 200, 20
    BEGIN
        NAME "Item Number"
    END

    STATICTEXT 119, "", 30, 175, 250, 40
    BEGIN
        NAME "Description"
    END

    INPUTN 121, "1", 440, 25, 40, 20
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Quantity"
        PASSENTER
        PASSTAB
        NOT INSERTMODE
    END

    INPUTN 124, "1", 440, 50, 40, 20
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Users"
        PASSENTER
        PASSTAB
        NOT INSERTMODE
    END

    STATICTEXT 130, "Purchase Order # :", 10, 360, 60, 30
    BEGIN
        JUSTIFICATION 32768
        NAME "Reference Label"
    END

    INPUTE 240, "", 75, 365, 90, 20
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        MASK "XXXXXXXXXX"
        NAME "Reference"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
        SHORTCUE "Purchase Order - 10 characters or less."
    END

    BUTTON 1, "Add to &Cart", 325, 365, 70, 20
    BEGIN
        NAME "Accept"
        SHORTCUE "Add this purchase to shopping cart"
    END

    BUTTON 2, "&Main", 400, 365, 70, 20
    BEGIN
        NAME "Close"
    END

    BUTTON 200, "&Recalculate", 250, 365, 70, 20
    BEGIN
        NAME "Recalculate"
    END

    CHECKBOX 202, "SAM Plan:", 363, 100, 92, 20
    BEGIN
        NAME "Sam Standard"
        TEXTLEFT
        JUSTIFICATION 32768
    END

    INPUTN 126, "", 440, 75, 40, 20
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "users2"
        PASSENTER
        PASSTAB
        NOT INSERTMODE
    END

    STATICTEXT 206, "Extended Users:", 302, 50, 133, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "users_lbl"
    END

    STATICTEXT 207, "Standard Users:", 350, 75, 85, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "users2_lbl"
    END

    STATICTEXT 212, "Quantity:", 350, 25, 85, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "quantity_lbl"
    END

    EDIT 140, "", 385, 310, 90, 20
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "Price"
        READONLY
    END

    STATICTEXT 211, "Your Price:", 320, 310, 60, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "pricelbl"
    END

    CUSTOMEDIT 122, "", 10, 233, 280, 100
    BEGIN
        CLIENTEDGE
        HSCROLLBAR
        NAME "comments"
        READONLY
        VSCROLLBAR
        WORDWRAP
    END

    INPUTD 204, "", 375, 145, 70, 20
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "renew_dt"
        PASSENTER
        PASSTAB
    END

    STATICTEXT 231, "Renewal Date", 340, 125, 110, 15
    BEGIN
        JUSTIFICATION 16384
        NAME "renew_dt_lbl"
    END

    TOOLBUTTON 232, "", 450, 142, 30, 30
    BEGIN
        NAME "renew_dt_btn"
        SHORTCUE "View calendar/Select date"
    END

    CHECKBOX 233, "Runtime:", 355, 175, 70, 20
    BEGIN
        NAME "runtime"
        SHORTCUE "Does not allow user access to console mode."
        TEXTLEFT
        JUSTIFICATION 32768
    END

    EDIT 241, "", 385, 290, 90, 20
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "Listprice"
        READONLY
    END

    STATICTEXT 242, "List Price:", 320, 290, 60, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "listpricelbl"
    END

    CHECKBOX 234, "Virtual:", 355, 195, 70, 25
    BEGIN
        NAME "virtualFlag"
        TEXTLEFT
        JUSTIFICATION 32768
    END

    LINE 1000, 10, 345, 470, 0
    BEGIN
        NAME "Horizontal Line"
    END

END

WINDOW 105 "Shopping Cart" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Cart"
    NOT SIZABLE
    GRID 99, "", 20, 195, 460, 100
    BEGIN
        CLIENTEDGE
        COLUMNHEAD 25, 102
        COLUMNS 7
        GRIDCOLTITLE 0, "PurchaseOrder"
        GRIDCOLTITLE 1, "Serial Number"
        GRIDCOLTITLE 2, "Qty"
        GRIDCOLTITLE 3, "Item Number"
        GRIDCOLTITLE 4, "Users"
        GRIDCOLTITLE 5, "Price"
        GRIDCOLTITLE 6, "SAM"
        GRIDCOLWIDTH 0, 80
        GRIDCOLWIDTH 1, 75
        GRIDCOLWIDTH 2, 35
        GRIDCOLWIDTH 3, 110
        GRIDCOLWIDTH 4, 40
        GRIDCOLWIDTH 5, 67
        GRIDCOLWIDTH 6, 40
        HORIZLINES
        HSCROLLBAR
        MAXCOLS 2147483647
        NAME "Grid"
        ROWS 10
        USERSIZE
        VERTLINES
        VSCROLLBAR
    END

    BUTTON 100, "&E-Mail", 115, 360, 90, 25
    BEGIN
        NAME "Email"
        SHORTCUE "Will e-mail an itemized list of shopping cart contents for your reference."
    END

    STATICTEXT 105, "Your price", 385, 300, 80, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Subtotal Label"
    END

    STATICTEXT 106, "", 385, 325, 80, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Subtotal"
    END

    BUTTON 113, "&AddUsers/Upgrade", 380, 60, 100, 25
    BEGIN
        NAME "View SN"
        SHORTCUE "View/modify an individual license."
    END

    BUTTON 114, "&New License", 260, 60, 100, 25
    BEGIN
        NAME "View Item"
        SHORTCUE "Select a new product to purchase."
    END

    LISTBUTTON 116, "", 270, 360, 110, 90
    BEGIN
        NAME "Reference"
    END

    STATICTEXT 117, "Purchase Order # :", 210, 355, 55, 30
    BEGIN
        JUSTIFICATION 32768
        NAME "Reference Label"
    END

    BUTTON 2, "Return to &Main", 15, 360, 90, 25
    BEGIN
        NAME "Close"
        SHORTCUE "Return to Main"
    END

    BUTTON 118, "&Checkout", 390, 360, 90, 25
    BEGIN
        NAME "Checkout"
        SHORTCUE "Proceed with Checkout"
    END

    BUTTON 119, "&Delete Item", 380, 160, 100, 25
    BEGIN
        NAME "Delete"
    END

    STATICTEXT 161, "To edit an item in your shopping cart, double-click on a line below or single click it and click the \042Edit Item\042 button.  To delete an item, single click it and click the \042Delete Item\042 button.", 20, 125, 460, 30
    BEGIN
        NAME "Message"
    END

    GROUPBOX 150, "Add to Cart", 10, 10, 480, 90
    BEGIN
        NAME "Add to cart"
    END

    STATICTEXT 151, "Add to Cart allows you to add a new item to your cart, or make changes to an existing license such as adding users or updating to a new revision.", 20, 30, 460, 30
    BEGIN
        NAME "Add to Cart Message"
    END

    GROUPBOX 160, "Modify Cart", 10, 105, 480, 250
    BEGIN
        NAME "Modify Cart"
    END

    BUTTON 165, "&Upgrade to BPL", 140, 60, 100, 25
    BEGIN
        NAME "trade_btn"
        SHORTCUE "Allows you to upgrade to BBj or PRO/5 Rev4.x & higher."
    END

    STATICTEXT 166, "", 300, 325, 80, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "listprice"
    END

    STATICTEXT 167, "List price", 300, 300, 80, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "listprice_lbl"
    END

    STATICTEXT 168, "Subtotal:", 208, 325, 80, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "sub_lbl"
    END

    BUTTON 120, "Edit Item", 275, 160, 100, 25
    BEGIN
        NAME "EditItem"
    END

END

WINDOW 106 "Checkout 1 of 2" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Checkout 1"
    NOT SIZABLE
    STATICTEXT 101, "First:", 280, 30, 40, 25
    BEGIN
        NAME "License 1 Label"
    END

    INPUTE 102, "", 330, 30, 150, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "License 1"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    STATICTEXT 103, "Second:", 280, 60, 50, 25
    BEGIN
        NAME "License 2 Label"
    END

    INPUTE 901, "", 330, 60, 150, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "License 2"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    STATICTEXT 902, "CD-ROMs:", 20, 130, 60, 25
    BEGIN
        NAME "Media Label"
    END

    INPUTN 903, "", 90, 130, 40, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        MASK "###"
        NAME "Media"
        PASSENTER
        PASSTAB
        NOT INSERTMODE
    END

    BUTTON 904, "&Reset", 170, 130, 90, 25
    BEGIN
        NAME "Ship Standard"
    END

    BUTTON 905, "&U.S.", 280, 130, 90, 25
    BEGIN
        NAME "Ship USA"
    END

    BUTTON 906, "&International", 390, 130, 90, 25
    BEGIN
        NAME "Ship Intl"
    END

    STATICTEXT 908, "", 20, 200, 220, 20
    BEGIN
        NAME "Bill To Name"
    END

    STATICTEXT 909, "", 20, 220, 220, 20
    BEGIN
        NAME "Bill To Addr1"
    END

    STATICTEXT 910, "", 20, 240, 220, 20
    BEGIN
        NAME "Bill To Addr2"
    END

    STATICTEXT 913, "", 20, 260, 220, 20
    BEGIN
        NAME "Bill To City"
    END

    STATICTEXT 914, "", 20, 280, 220, 20
    BEGIN
        NAME "Bill To State"
    END

    STATICTEXT 915, "", 20, 300, 220, 20
    BEGIN
        NAME "Bill To Zip"
    END

    STATICTEXT 916, "", 20, 320, 220, 20
    BEGIN
        NAME "Bill To Country"
    END

    STATICTEXT 918, "", 260, 200, 220, 20
    BEGIN
        NAME "Ship To Name"
    END

    STATICTEXT 919, "", 260, 220, 220, 20
    BEGIN
        NAME "Ship To Addr1"
    END

    STATICTEXT 920, "", 260, 240, 220, 20
    BEGIN
        NAME "Ship To Addr2"
    END

    STATICTEXT 924, "", 260, 260, 220, 20
    BEGIN
        NAME "Ship To City"
    END

    STATICTEXT 925, "", 260, 280, 220, 20
    BEGIN
        NAME "Ship To State"
    END

    STATICTEXT 926, "", 260, 300, 220, 20
    BEGIN
        NAME "Ship To Zip"
    END

    STATICTEXT 927, "", 260, 320, 220, 20
    BEGIN
        NAME "Ship To Country"
    END

    BUTTON 2, "&Previous", 280, 360, 90, 25
    BEGIN
        NAME "Previous"
        SHORTCUE "Return to Cart"
    END

    BUTTON 1, "&Next", 390, 360, 90, 25
    BEGIN
        NAME "Next"
        SHORTCUE "Proceed with Checkout"
    END

    GROUPBOX 200, "Ship Media", 10, 110, 140, 60
    BEGIN
        NAME "Shipping Control"
    END

    GROUPBOX 907, "Billing Information", 10, 180, 240, 170
    BEGIN
        NAME "Billing Group"
    END

    GROUPBOX 917, "Shipping Information", 250, 180, 240, 170
    BEGIN
        NAME "Shipping Group"
    END

    GROUPBOX 300, "Electronic License Delivery", 10, 10, 480, 90
    BEGIN
        NAME "License Group"
    END

    STATICTEXT 301, "An electronic license can be sent to up to two fax or e-mail addresses.  If no fax or e-mail addresses are entered, a paper license will be sent to the shipping address entered below.", 20, 30, 240, 59
    BEGIN
        NAME "License Message"
    END

    GROUPBOX 928, "Modify Shipping Address or Method", 160, 110, 330, 60
    BEGIN
        NAME "Shipping Address"
    END

    STATICTEXT 929, "The product CD contains current versions of BBj and PRO/5 for all platforms. All prior versions are available at basis.com/products/downloads.html.", 15, 350, 250, 45
    BEGIN
        FOREGROUNDCOLOR RGB(255,0,0)
        NAME "Static Text"
    END

END

WINDOW 107 "Domestic Shipping" 0 0 500 400
BEGIN
    RADIOGROUP 162, 163, 164
    NOT CLOSEBOX
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Ship USA"
    NOT SIZABLE
    STATICTEXT 132, "", 20, 40, 220, 25
    BEGIN
        NAME "Bill To Name"
    END

    STATICTEXT 133, "", 20, 70, 220, 25
    BEGIN
        NAME "Bill To Addr1"
    END

    STATICTEXT 134, "", 20, 100, 220, 25
    BEGIN
        NAME "Bill To Addr2"
    END

    STATICTEXT 147, "", 20, 130, 220, 25
    BEGIN
        NAME "Bill To City"
    END

    STATICTEXT 148, "", 20, 160, 220, 25
    BEGIN
        NAME "Bill To State"
    END

    STATICTEXT 149, "", 20, 190, 80, 25
    BEGIN
        NAME "Bill To Zip"
    END

    INPUTE 152, "", 260, 40, 220, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Ship To Name"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    INPUTE 154, "", 260, 70, 220, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Ship To Addr1"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    INPUTE 156, "", 260, 100, 220, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Ship To Addr2"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    INPUTE 159, "", 260, 130, 220, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Ship To City"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    LISTBUTTON 160, "", 260, 160, 220, 150
    BEGIN
        NAME "Ship To State"
    END

    INPUTE 161, "", 260, 190, 80, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Ship To Zip"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    RADIOBUTTON 162, " 1 Day", 310, 270, 60, 25
    BEGIN
        NAME "One Day"
    END

    RADIOBUTTON 163, " 2 Day", 370, 270, 60, 25
    BEGIN
        NAME "Two Day"
    END

    RADIOBUTTON 164, " 3 Day", 430, 270, 60, 25
    BEGIN
        NAME "Three Day"
    END

    BUTTON 2, "Cancel", 390, 360, 90, 25
    BEGIN
        NAME "Cancel"
        SHORTCUE "Return to Checkout"
    END

    BUTTON 1, "Accept", 280, 360, 90, 25
    BEGIN
        NAME "Accept"
    END

    GROUPBOX 100, "Billing Information", 10, 20, 240, 210
    BEGIN
        NAME "Billing Group"
    END

    GROUPBOX 110, "Shipping Information", 250, 20, 240, 210
    BEGIN
        NAME "Shipping Group"
    END

    GROUPBOX 120, "Delivery Method", 10, 250, 480, 63
    BEGIN
        NAME "Delivery Group"
    END

    STATICTEXT 121, "Note: your order will be shipped on the next business day.", 20, 275, 280, 30
    BEGIN
        NAME "Delivery Message"
    END

END

WINDOW 108 "International Shipping" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Ship Intl"
    NOT SIZABLE
    STATICTEXT 132, "", 20, 40, 220, 25
    BEGIN
        NAME "Bill To Name"
    END

    STATICTEXT 133, "", 20, 70, 220, 25
    BEGIN
        NAME "Bill To Addr1"
    END

    STATICTEXT 134, "", 20, 100, 220, 25
    BEGIN
        NAME "Bill To Addr2"
    END

    STATICTEXT 147, "", 20, 130, 220, 25
    BEGIN
        NAME "Bill To City"
    END

    STATICTEXT 148, "", 20, 160, 220, 25
    BEGIN
        NAME "Bill To State"
    END

    STATICTEXT 149, "", 20, 190, 220, 25
    BEGIN
        NAME "Bill To Zip"
    END

    STATICTEXT 151, "", 20, 220, 220, 25
    BEGIN
        NAME "Bill To Country"
    END

    INPUTE 154, "", 260, 40, 220, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Ship To Name"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    INPUTE 156, "", 260, 70, 220, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Ship To Addr1"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    INPUTE 157, "", 260, 100, 220, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Ship To Addr2"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    INPUTE 160, "", 260, 130, 220, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Ship To City"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    INPUTE 161, "", 260, 160, 220, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Ship To State"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    INPUTE 162, "", 260, 190, 220, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Ship To Zip"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    LISTBUTTON 163, "", 260, 220, 220, 120
    BEGIN
        NAME "Ship To Country"
    END

    BUTTON 2, "Cancel", 390, 360, 90, 25
    BEGIN
        NAME "Cancel"
        SHORTCUE "Return to Checkout"
    END

    BUTTON 1, "Accept", 280, 360, 90, 25
    BEGIN
        NAME "Accept"
    END

    GROUPBOX 110, "Billing Information", 10, 20, 240, 240
    BEGIN
        NAME "Billing Group"
    END

    GROUPBOX 1000, "Shipping Information", 250, 20, 240, 240
    BEGIN
        NAME "Shipping Group"
    END

END

WINDOW 109 "Checkout 2 of 2" 0 0 500 400
BEGIN
    RADIOGROUP 101, 136
    RADIOGROUP 143, 144, 145
    NOT CLOSEBOX
    EVENTMASK 33554432
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Checkout 2"
    NOT SIZABLE
    RADIOBUTTON 101, "On Account", 50, 40, 110, 25
    BEGIN
        NAME "On Account"
    END

    RADIOBUTTON 136, "Credit Card", 230, 40, 77, 25
    BEGIN
        NAME "Credit Card"
    END

    LISTBUTTON 141, "", 230, 90, 220, 150
    BEGIN
        NAME "Credit Card List"
    END

    RADIOBUTTON 143, "", 230, 113, 23, 20
    BEGIN
        NAME "Visa"
    END

    RADIOBUTTON 144, "", 230, 149, 23, 20
    BEGIN
        NAME "MasterCard"
    END

    RADIOBUTTON 145, "", 230, 186, 23, 20
    BEGIN
        NAME "American Express"
    END

    STATICTEXT 146, "Number:", 230, 220, 70, 25
    BEGIN
        NAME "Number Label"
    END

    INPUTE 148, "", 300, 220, 150, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Number"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    STATICTEXT 149, "Name:", 230, 250, 70, 25
    BEGIN
        NAME "Name Label"
    END

    INPUTE 150, "", 300, 250, 150, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Name"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    STATICTEXT 151, "Expiration:", 230, 280, 70, 25
    BEGIN
        NAME "Expiry Label"
    END

    LISTBUTTON 152, "", 300, 280, 80, 120
    BEGIN
        NAME "Expiry Month"
    END

    LISTBUTTON 153, "", 390, 280, 60, 120
    BEGIN
        NAME "Expiry Year"
    END

    CHECKBOX 154, "Keep this on file", 230, 308, 150, 25
    BEGIN
        NAME "Save Credit Card"
    END

    STATICTEXT 156, "Subtotal:", 50, 90, 50, 20
    BEGIN
        NAME "Subtotal Label"
    END

    STATICTEXT 157, "", 100, 90, 70, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Subtotal"
    END

    STATICTEXT 158, "Tax:", 50, 115, 50, 20
    BEGIN
        NAME "Tax Label"
    END

    STATICTEXT 159, "", 100, 115, 70, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Tax"
    END

    STATICTEXT 160, "Freight:", 50, 140, 50, 20
    BEGIN
        NAME "Freight Label"
    END

    STATICTEXT 161, "", 100, 140, 70, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Freight"
    END

    STATICTEXT 162, "Total:", 50, 165, 50, 20
    BEGIN
        NAME "Total Label"
    END

    STATICTEXT 163, "", 100, 165, 70, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Total"
    END

    BUTTON 165, "&Previous", 280, 360, 90, 25
    BEGIN
        NAME "Previous"
    END

    BUTTON 1, "&Buy Now", 390, 360, 90, 25
    BEGIN
        NAME "Buy Now"
    END

    BUTTON 2, "Return to &Cart", 170, 360, 90, 25
    BEGIN
        NAME "Return to Cart"
    END

    INPUTE 167, "", 60, 240, 100, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        MASK "XXXXXXXXXX"
        NAME "Reference"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
        SHORTCUE "Not to exceed 10 characters."
    END

    GROUPBOX 170, "Buy Now", 20, 22, 460, 328
    BEGIN
        NAME "Buy Now Title"
    END

    STATICTEXT 171, "", 319, 40, 150, 25
    BEGIN
        FOREGROUNDCOLOR RGB(255,0,0)
        NAME "Message"
    END

    GROUPBOX 175, "Contact Name", 40, 280, 140, 60
    BEGIN
        NAME "Contact Title"
    END

    INPUTE 168, "", 60, 300, 100, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Contact"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    STATICTEXT 176, "List Price:", 50, 190, 50, 20
    BEGIN
        NAME "List Label"
    END

    STATICTEXT 177, "", 100, 190, 70, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "List"
    END

    GROUPBOX 135, "Credit Card", 220, 70, 240, 270
    BEGIN
        NAME "Credit Card Frame"
    END

    GROUPBOX 155, "Order Amount", 40, 70, 140, 150
    BEGIN
        NAME "Order Amount Frame"
    END

    GROUPBOX 169, "Purchase Order", 40, 220, 140, 60
    BEGIN
        NAME "Reference Title"
    END

END

WINDOW 110 "Account Information" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Account"
    NOT SIZABLE
    STATICTEXT 110, "1st E-mail Address:", 20, 40, 100, 25
    BEGIN
        NAME "Email Address Label"
    END

    INPUTE 3, "", 120, 40, 360, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Email"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    STATICTEXT 111, "Password:", 20, 100, 100, 25
    BEGIN
        NAME "Password Label"
    END

    EDIT 5, "", 120, 100, 100, 25
    BEGIN
        CLIENTEDGE
        NAME "Password"
        PASSWORDENTRY
        NOT DRAGENABLED
    END

    STATICTEXT 112, "Confirm Password:", 20, 130, 100, 25
    BEGIN
        NAME "Confirm Password Label"
    END

    EDIT 100, "", 120, 130, 100, 25
    BEGIN
        CLIENTEDGE
        NAME "Confirm Password"
        PASSWORDENTRY
        NOT DRAGENABLED
    END

    GRID 109, "", 18, 247, 460, 100
    BEGIN
        CLIENTEDGE
        COLUMNHEAD 25, 107
        COLUMNS 5
        GRIDCOLTITLE 0, "Card Number"
        GRIDCOLTITLE 1, "Card Type"
        GRIDCOLTITLE 2, "Name on Card"
        GRIDCOLTITLE 3, "MM"
        GRIDCOLTITLE 4, "YYYY"
        GRIDCOLWIDTH 0, 140
        GRIDCOLWIDTH 1, 75
        GRIDCOLWIDTH 2, 135
        GRIDCOLWIDTH 3, 30
        GRIDCOLWIDTH 4, 53
        HORIZLINES
        HSCROLLBAR
        MAXCOLS 2147483647
        NAME "Grid"
        ROWS 3
        USERSIZE
        VERTLINES
        VSCROLLBAR
    END

    STATICTEXT 113, "Note: The password must be a minimum of 10 characters and must contain both upper and lower alpha, numeric and special characters ~!@#$%^&*()+=", 230, 100, 250, 70
    BEGIN
        NAME "Note"
    END

    STATICTEXT 120, "2nd E-mail Address:", 20, 70, 100, 25
    BEGIN
        NAME "Email Address Label2"
    END

    INPUTE 4, "", 120, 70, 360, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Email2"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    BUTTON 108, "Return to &Main", 385, 365, 90, 25
    BEGIN
        NAME "Cancel"
        SHORTCUE "Return to Main"
    END

    BUTTON 103, "&New Credit Card", 385, 215, 90, 25
    BEGIN
        NAME "New CC"
    END

    BUTTON 101, "&Update", 120, 165, 90, 25
    BEGIN
        NAME "Accept"
        SHORTCUE "Update Account Information"
    END

    STATICTEXT 121, "Double-click in the grid or click the Edit Credit Card button to edit the information for a selected credit card.", 20, 210, 350, 30
    BEGIN
        NAME "Message"
    END

    BUTTON 104, "&Reports", 20, 365, 90, 25
    BEGIN
        NAME "Email_rpt"
        SHORTCUE "Select & e-mail your Active SN or Aged AR report to you."
    END

    BUTTON 105, "&Invoices", 120, 365, 90, 25
    BEGIN
        NAME "invoice"
        SHORTCUE "Review/Pay Invoices"
    END

    BUTTON 106, "End User &Data", 220, 365, 90, 25
    BEGIN
        NAME "EndUserData"
    END

    BUTTON 102, "Edit Credit Card", 385, 190, 90, 25
    BEGIN
        NAME "EditCC"
    END

    BUTTON 114, "License Update", 20, 338, 90, 25
    BEGIN
        INVISIBLE
        NAME "btnLicenseUpdate"
    END

    EDIT 1, "", 120, 10, 90, 25
    BEGIN
        CLIENTEDGE
        NAME "firstName"
    END

    STATICTEXT 130, "First Name:", 20, 10, 90, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "firstNameLabel"
    END

    STATICTEXT 131, "Last Name:", 215, 10, 60, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "lastNameLabel"
    END

    EDIT 2, "", 285, 10, 195, 25
    BEGIN
        CLIENTEDGE
        NAME "lastName"
    END

END

WINDOW 111 "Serial Number History" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "History"
    NOT SIZABLE
    STATICTEXT 101, "Serial Number:", 20, 60, 80, 20
    BEGIN
        NAME "Serial Number Label"
    END

    STATICTEXT 102, "", 100, 60, 120, 20
    BEGIN
        NAME "Serial Number"
    END

    STATICTEXT 105, "Item:", 20, 85, 80, 20
    BEGIN
        NAME "Item Number Label"
    END

    STATICTEXT 106, "", 100, 85, 380, 20
    BEGIN
        NAME "Item Number"
    END

    STATICTEXT 107, "Description:", 20, 110, 80, 20
    BEGIN
        NAME "Description Label"
    END

    STATICTEXT 108, "", 100, 110, 380, 20
    BEGIN
        NAME "Description"
    END

    GRID 110, "", 0, 0, 460, 190
    BEGIN
        CLIENTEDGE
        COLUMNHEAD 25, 109
        COLUMNS 6
        GRIDCOLTITLE 0, "Date"
        GRIDCOLTITLE 1, "Invoice"
        GRIDCOLTITLE 2, "Activity"
        GRIDCOLTITLE 3, "Revision"
        GRIDCOLTITLE 4, "Users"
        GRIDCOLTITLE 5, "Key/Authorization"
        GRIDCOLWIDTH 0, 70
        GRIDCOLWIDTH 1, 70
        GRIDCOLWIDTH 2, 65
        GRIDCOLWIDTH 3, 65
        GRIDCOLWIDTH 4, 40
        GRIDCOLWIDTH 5, 144
        HORIZLINES
        HSCROLLBAR
        MAXCOLS 2147483647
        NAME "Grid"
        ROWS 10
        USERSIZE
        VERTLINES
        VSCROLLBAR
    END

    BUTTON 2, "&Previous", 20, 10, 90, 25
    BEGIN
        NAME "Close"
        SHORTCUE "Return to View Licensed Product"
    END

    BUTTON 113, "View &Links", 115, 10, 90, 25
    BEGIN
        NAME "Clients"
    END

    TABCONTROL 114, "", 10, 140, 480, 240
    BEGIN
        AUTOMANAGEMENT
        NAME "Tab"
        TAB "     Transaction History     " 0 110
        TAB "          License History          " 0 115
    END

    LISTBOX 115, "", 0, 0, 460, 197
    BEGIN
        CLIENTEDGE
        FONT "Arial Monospaced" 8
        NAME "List Box"
    END

    BUTTON 116, "&Reset License", 210, 10, 90, 25
    BEGIN
        DISABLED
        NAME "Reset"
        SHORTCUE "Reset license status to zero"
    END

    LISTBUTTON 117, "", 310, 10, 160, 120
    BEGIN
        NAME "reset_reason"
    END

END

WINDOW 112 "Server Linked Clients" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Clients"
    NOT SIZABLE
    GRID 100, "", 20, 160, 460, 180
    BEGIN
        CLIENTEDGE
        COLUMNHEAD 25, 102
        COLUMNS 4
        GRIDCOLTITLE 0, "Serial Number"
        GRIDCOLTITLE 1, "Item Number"
        GRIDCOLTITLE 2, "Users"
        GRIDCOLTITLE 3, "Description"
        GRIDCOLWIDTH 0, 75
        GRIDCOLWIDTH 1, 120
        GRIDCOLWIDTH 2, 36
        GRIDCOLWIDTH 3, 440
        HORIZLINES
        HSCROLLBAR
        MAXCOLS 2147483647
        NAME "Grid"
        ROWS 15
        USERSIZE
        VERTLINES
        VSCROLLBAR
    END

    BUTTON 2, "&Previous", 390, 360, 90, 25
    BEGIN
        NAME "Close"
        SHORTCUE "Return to View Licensed Product"
    END

    STATICTEXT 103, "Serial Number:", 20, 30, 80, 25
    BEGIN
        NAME "Serial Number Label"
    END

    STATICTEXT 104, "", 100, 30, 150, 25
    BEGIN
        NAME "Serial Number"
    END

    STATICTEXT 105, "Item Number:", 20, 60, 80, 25
    BEGIN
        NAME "Item Number Label"
    END

    STATICTEXT 106, "", 100, 60, 150, 25
    BEGIN
        NAME "Item Number"
    END

    STATICTEXT 107, "Description:", 20, 90, 80, 25
    BEGIN
        NAME "Description Label"
    END

    STATICTEXT 108, "", 100, 90, 370, 25
    BEGIN
        NAME "Description"
    END

    STATICTEXT 109, "", 20, 360, 350, 30
    BEGIN
        NAME "Message"
    END

    GROUPBOX 200, "Server", 10, 10, 480, 120
    BEGIN
        NAME "Server Group"
    END

    GROUPBOX 201, "Clients", 10, 140, 480, 210
    BEGIN
        NAME "Client Group"
    END

    STATICTEXT 110, "This information is provided for reference only.  BASIS no longer uses or maintains Client/Server links.", 260, 30, 210, 50
    BEGIN
        NAME "Disclaimer"
    END

END

WINDOW 113 "Find Serial Number" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Find SN"
    NOT SIZABLE
    STATICTEXT 99, "Next Serial Number:", 20, 20, 110, 20
    BEGIN
        NAME "Serial Number Label"
    END

    INPUTE 100, "", 130, 20, 140, 20
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Serial Number"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    BUTTON 1, "Scan &Next", 390, 20, 90, 25
    BEGIN
        NAME "Next"
    END

    STATICTEXT 101, "Show How Many?", 20, 50, 110, 20
    BEGIN
        NAME "Limit Label"
    END

    INPUTN 106, "12", 130, 50, 50, 20
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Limit"
        PASSENTER
        PASSTAB
        NOT INSERTMODE
    END

    CHECKBOX 108, "Show &active licenses only?", 200, 50, 180, 25
    BEGIN
        CHECKED
        NAME "Active Only"
    END

    BUTTON 110, "Scan &Back", 290, 20, 90, 25
    BEGIN
        NAME "Previous"
    END

    GRID 111, "", 20, 117, 460, 233
    BEGIN
        CLIENTEDGE
        COLUMNHEAD 25, 109
        COLUMNS 4
        GRIDCOLTITLE 0, "Serial Number"
        GRIDCOLTITLE 1, "Sold"
        GRIDCOLTITLE 2, "Users"
        GRIDCOLTITLE 3, "Description"
        GRIDCOLWIDTH 0, 75
        GRIDCOLWIDTH 1, 70
        GRIDCOLWIDTH 2, 40
        GRIDCOLWIDTH 3, 440
        HORIZLINES
        HSCROLLBAR
        MAXCOLS 2147483647
        NAME "Grid"
        ROWS 10
        USERSIZE
        VERTLINES
        VSCROLLBAR
    END

    BUTTON 2, "&Previous", 390, 360, 90, 25
    BEGIN
        NAME "Close"
        SHORTCUE "Return to View Licensed Product"
    END

    STATICTEXT 112, "Double-click in the grid to see license details or Click on the Select SN button.", 20, 360, 260, 30
    BEGIN
        NAME "Message"
    END

    BUTTON 102, "Select SN", 290, 360, 90, 25
    BEGIN
        NAME "SelectSN"
    END

END

WINDOW 114 "Credit Card" 0 0 500 400
BEGIN
    RADIOGROUP 103, 104, 105
    NOT CLOSEBOX
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Credit Card"
    NOT SIZABLE
    RADIOBUTTON 103, "", 55, 210, 26, 25
    BEGIN
        NAME "Visa"
    END

    RADIOBUTTON 104, "", 55, 250, 26, 25
    BEGIN
        NAME "MasterCard"
    END

    RADIOBUTTON 105, "", 55, 290, 26, 25
    BEGIN
        NAME "American Express"
    END

    STATICTEXT 106, "Card Number:", 200, 210, 90, 25
    BEGIN
        NAME "Number Label"
    END

    INPUTE 107, "", 290, 210, 160, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Number"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    STATICTEXT 108, "Name on Card:", 200, 250, 90, 25
    BEGIN
        NAME "Name Label"
    END

    INPUTE 109, "", 290, 250, 160, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Name"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    STATICTEXT 110, "Expiration Date:", 200, 290, 90, 25
    BEGIN
        NAME "Expiry Label"
    END

    LISTBUTTON 111, "", 290, 290, 90, 150
    BEGIN
        NAME "Expiry Month"
    END

    LISTBUTTON 112, "", 390, 290, 60, 150
    BEGIN
        NAME "Expiry Year"
    END

    BUTTON 200, "&Update", 280, 360, 90, 25
    BEGIN
        NAME "Update"
    END

    BUTTON 201, "&Delete", 170, 360, 90, 25
    BEGIN
        NAME "Delete"
    END

    BUTTON 2, "Previous", 390, 360, 90, 25
    BEGIN
        NAME "Cancel"
        SHORTCUE "Return to Account"
    END

    GROUPBOX 100, "Type", 40, 195, 130, 135
    BEGIN
        NAME "Credit Card Group"
    END

    GROUPBOX 101, "Account Information", 190, 195, 270, 135
    BEGIN
        NAME "Group Control"
    END

    GROUPBOX 202, "Credit Card Details", 20, 175, 460, 175
    BEGIN
        NAME "Credit Card Details"
    END

END

WINDOW 116 "Reset License" 0 0 350 220
BEGIN
    NOT CLOSEBOX
    DIALOGBEHAVIOR
    DIALOGBORDER
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Reset License"
    NOT SIZABLE
    BUTTON 1, "&Yes", 90, 170, 80, 20
    BEGIN
        NAME "OK_btn"
    END

    BUTTON 2, "&No", 175, 170, 80, 20
    BEGIN
        NAME "cancel"
    END

    STATICTEXT 102, "If you would like to use this Support Incident to reset the license, select a reason from the list below and press the Yes button. Your sales  representative will be notified to reset the license after you check out. ", 15, 20, 315, 55
    BEGIN
        NAME "Static Text"
    END

    LISTBUTTON 103, "", 96, 89, 160, 120
    BEGIN
        NAME "reset_reason"
    END

    STATICTEXT 104, "Reset Reason:", 15, 90, 75, 20
    BEGIN
        NAME "rreason_txt"
    END

    STATICTEXT 105, "Do you wish to proceed with a reset request?", 15, 145, 250, 20
    BEGIN
        NAME "proceed_txt"
    END

END

WINDOW 117 "Select Serial Numbers" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 1128269312
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Trade Select"
    NOT SIZABLE
    LISTBOX 100, "", 30, 130, 150, 106
    BEGIN
        CLIENTEDGE
        MULTISELECT
        NAME "available_sn_lbox"
    END

    LISTBOX 101, "", 320, 130, 150, 106
    BEGIN
        CLIENTEDGE
        MULTISELECT
        NAME "selected_sn_lbox"
    END

    BUTTON 104, "&Add >", 210, 140, 80, 25
    BEGIN
        NAME "add_btn"
    END

    BUTTON 105, "< &Remove", 210, 170, 80, 25
    BEGIN
        NAME "remove_btn"
    END

    BUTTON 107, "&Continue", 360, 270, 80, 25
    BEGIN
        NAME "exchange_btn"
    END

    BUTTON 106, "<< Remo&ve all", 210, 200, 80, 25
    BEGIN
        NAME "remove_all_btn"
    END

    BUTTON 109, "Return to &Main", 360, 330, 80, 25
    BEGIN
        NAME "cancel_btn"
    END

    STATICTEXT 110, "Exchange the selected serial numbers for a BASIS Product (BBj) license", 155, 270, 195, 50
    BEGIN
        JUSTIFICATION 32768
        NAME "exchange_txt"
    END

    STATICTEXT 113, "", 31, 55, 430, 45
    BEGIN
        NAME "selected_desc"
    END

    STATICTEXT 114, "Serial Number", 50, 20, 70, 20
    BEGIN
        NAME "starting_sn_text"
    END

    EDIT 115, "", 120, 20, 100, 20
    BEGIN
        CLIENTEDGE
        NAME "starting_sn"
    END

    STATICTEXT 116, "Available Serial Numbers", 35, 110, 130, 20
    BEGIN
        NAME "Static Text"
    END

    STATICTEXT 117, "Selected Serial Numbers", 320, 110, 130, 20
    BEGIN
        NAME "Static Text"
    END

    BUTTON 1, "Scan &Next", 350, 17, 80, 25
    BEGIN
        NAME "scan_forward_btn"
    END

    BUTTON 119, "Scan &Back", 245, 17, 80, 25
    BEGIN
        NAME "scan_back_btn"
    END

    GROUPBOX 120, "", 20, 45, 450, 60
    BEGIN
        NAME "selected_desc_ctl"
    END

    STATICTEXT 121, "Cancel and return to the main menu", 155, 330, 195, 30
    BEGIN
        JUSTIFICATION 32768
        NAME "cancel_txt"
    END

END

WINDOW 118 "Upgrade Selected Licenses" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 41943040
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Trade"
    NOT SIZABLE
    GROUPBOX 106, "New Product", 250, 15, 235, 157
    BEGIN
        NAME "New Product"
    END

    LISTBUTTON 118, "", 270, 35, 200, 150
    BEGIN
        NAME "Product"
    END

    LISTBUTTON 127, "", 270, 60, 200, 150
    BEGIN
        NAME "Platform"
    END

    LISTBUTTON 135, "", 270, 85, 200, 150
    BEGIN
        NAME "OSLevel"
    END

    LISTBUTTON 138, "", 270, 110, 200, 150
    BEGIN
        NAME "Revision"
    END

    LISTBUTTON 141, "", 270, 135, 200, 150
    BEGIN
        NAME "License"
    END

    STATICTEXT 151, "Your price:", 330, 365, 60, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Price Label"
    END

    BUTTON 1, "&Add to Cart", 95, 365, 70, 20
    BEGIN
        NAME "Accept"
    END

    BUTTON 2, "&Select SNs", 170, 365, 70, 20
    BEGIN
        NAME "Cancel"
    END

    STATICTEXT 154, "Purchase Order # :", 20, 325, 55, 30
    BEGIN
        JUSTIFICATION 32768
        NAME "Reference Label"
    END

    INPUTE 155, "", 80, 330, 100, 20
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        MASK "XXXXXXXXXX"
        NAME "Reference"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
        SHORTCUE "Purchase Order - 10 characters or less."
    END

    BUTTON 200, "&Recalculate", 20, 365, 70, 20
    BEGIN
        NAME "Recalculate"
    END

    STATICTEXT 1003, "Extended Users:", 260, 195, 110, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "ent_users_lbl"
    END

    STATICTEXT 1009, "Selected Serial Numbers", 20, 6, 140, 20
    BEGIN
        NAME "Static Text"
    END

    STATICTEXT 1011, "Pricing Detail", 20, 175, 90, 20
    BEGIN
        NAME "detail pricing label"
    END

    CHECKBOX 1008, " SAM Plan:", 310, 245, 80, 20
    BEGIN
        NAME "SAM Standard"
        TEXTLEFT
    END

    GROUPBOX 1014, "", 250, 180, 235, 155
    BEGIN
        NAME "Group Control"
    END

    EDIT 152, "", 395, 365, 90, 20
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "Price"
        READONLY
    END

    EDIT 142, "", 375, 195, 40, 20
    BEGIN
        CLIENTEDGE
        NAME "ent_users"
    END

    CUSTOMEDIT 1010, "", 20, 200, 220, 120
    BEGIN
        CLIENTEDGE
        HSCROLLBAR
        NAME "comments"
        READONLY
        VSCROLLBAR
        WORDWRAP
    END

    CUSTOMEDIT 1005, "", 20, 27, 220, 140
    BEGIN
        CLIENTEDGE
        HSCROLLBAR
        NAME "selected_sn_lbox"
        READONLY
        VSCROLLBAR
    END

    INPUTD 145, "", 375, 270, 70, 20
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "renew_dt"
        PASSENTER
        PASSTAB
    END

    TOOLBUTTON 146, "", 448, 267, 30, 30
    BEGIN
        NAME "renew_dt_btn"
        SHORTCUE "View calendar/Select date"
    END

    STATICTEXT 144, "SAM Renewal Date:", 270, 270, 100, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "renew_dt_lbl"
    END

    EDIT 143, "", 375, 220, 40, 20
    BEGIN
        CLIENTEDGE
        NAME "std_users"
    END

    STATICTEXT 1004, "Standard Users:", 260, 220, 110, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "std_users_lbl"
    END

    BUTTON 1015, "&Main", 250, 365, 70, 20
    BEGIN
        NAME "Main"
    END

    CHECKBOX 147, "Runtime:", 325, 300, 65, 20
    BEGIN
        NAME "runtime"
        SHORTCUE "Does not allow access to console mode."
        TEXTLEFT
    END

    EDIT 1017, "", 395, 345, 90, 20
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "listprice"
        READONLY
    END

    STATICTEXT 1018, "List price:", 330, 345, 60, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "listprice_lbl"
    END

END

WINDOW 119 "Select Report" 0 0 350 250
BEGIN
    RADIOGROUP 104, 105
    NOT CLOSEBOX
    DIALOGBEHAVIOR
    DIALOGBORDER
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Send Rpt"
    NOT SIZABLE
    BUTTON 1, "&Ok", 75, 215, 90, 25
    BEGIN
        NAME "Ok"
    END

    BUTTON 2, "&Cancel", 185, 215, 90, 25
    BEGIN
        NAME "Cancel"
    END

    INPUTE 101, "", 41, 85, 289, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Email"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    STATICTEXT 102, "The Active Serial Number report will be sent to the following E-mail Address:", 41, 45, 289, 30
    BEGIN
        NAME "Send_Info"
    END

    STATICTEXT 103, "", 21, 180, 309, 25
    BEGIN
        FOREGROUNDCOLOR RGB(255,0,0)
        NAME "Progress_Info"
    END

    RADIOBUTTON 104, "Active Serial Number Report", 21, 16, 300, 25
    BEGIN
        NAME "sn_rpt"
    END

    RADIOBUTTON 105, "Aged Accounts Receivable Report", 25, 127, 300, 25
    BEGIN
        NAME "ar_rpt"
    END

    STATICTEXT 100, "The Aged Accounts Receivable Report will be rendered immediately in your browser.", 41, 156, 289, 30
    BEGIN
        NAME "Static Text"
    END

END

WINDOW 120 "Renewal" 0 0 350 250
BEGIN
    NOT CLOSEBOX
    DIALOGBEHAVIOR
    DIALOGBORDER
    EVENTMASK 12582912
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Renewal"
    NOT SIZABLE
    CUSTOMEDIT 100, "", 32, 80, 240, 60
    BEGIN
        CLIENTEDGE
        HSCROLLBAR
        NAME "comments"
        READONLY
        VSCROLLBAR
        WORDWRAP
    END

    INPUTE 130, "", 100, 210, 90, 20
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        MASK "XXXXXXXXXX"
        NAME "Reference"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
        SHORTCUE "Purchase Order - 10 characters or less."
    END

    STATICTEXT 129, "Purchase Order #", 5, 210, 95, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Reference Label"
    END

    EDIT 126, "", 100, 155, 90, 20
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "listprice"
        READONLY
    END

    EDIT 128, "", 100, 180, 90, 20
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "Price"
        READONLY
    END

    STATICTEXT 125, "List price", 20, 155, 70, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "listprice_lbl"
    END

    STATICTEXT 127, "Your price", 20, 180, 70, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "price_lbl"
    END

    BUTTON 1, "&Add to Cart", 200, 210, 70, 20
    BEGIN
        NAME "Accept"
    END

    BUTTON 2, "&Cancel", 200, 180, 70, 20
    BEGIN
        NAME "cancel"
    END

    STATICTEXT 131, "Serial Number", 20, 15, 75, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "sn_lbl"
    END

    EDIT 132, "", 100, 15, 90, 20
    BEGIN
        CLIENTEDGE
        NAME "sn"
        READONLY
    END

    STATICTEXT 133, "New Date", 20, 45, 75, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "dt_lbl"
    END

    EDIT 136, "", 245, 15, 40, 20
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 16384
        NAME "rev"
        READONLY
    END

    STATICTEXT 135, "Revision", 190, 15, 50, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "rev_lbl"
    END

    INPUTD 134, "", 100, 45, 90, 20
    BEGIN
        CLIENTEDGE
        DISABLED
        HIGHLIGHT
        NAME "renew_dt"
        PASSENTER
        PASSTAB
    END

    TOOLBUTTON 137, "", 195, 40, 30, 30
    BEGIN
        INVISIBLE
        NAME "renew_dt_btn"
        SHORTCUE "View calendar/Select date"
    END

END

