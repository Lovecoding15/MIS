//#charset: windows-1252

VERSION "4.0"

WINDOW 100 "BASIS b-commerce Anmeldung" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Login"
    NOT SIZABLE
    STATICTEXT 101, "Willkommen bei b-commerce", 175, 133, 175, 20
    BEGIN
        JUSTIFICATION 16384
        NAME "Welcome"
    END

    STATICTEXT 102, "Kundennummer:", 140, 230, 100, 25
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

    STATICTEXT 104, "Passwort:", 140, 260, 100, 25
    BEGIN
        NAME "Password Label"
    END

    BUTTON 1, "&Anmelden", 390, 360, 90, 25
    BEGIN
        NAME "Login"
    END

    BUTTON 2, "E&nde", 280, 360, 90, 25
    BEGIN
        NAME "Exit"
    END

    STATICTEXT 108, "Falls Sie noch keinen b-commerce Zugang haben, kontaktieren Sie uns bitte unter: +49 681 968 14 0", 80, 320, 340, 30
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

    GROUPBOX 105, "", 20, 190, 460, 110
    BEGIN
        NAME "Box"
    END

    STATICTEXT 106, "Bitte geben Sie Ihre Kundennummer und Ihr Passwort ein:", 40, 200, 410, 25
    BEGIN
        NAME "Prompt"
    END

    STATICTEXT 111, "Zu dieser Seite haben ausschliesslich BASIS Kunden Zugang", 119, 161, 308, 20
    BEGIN
        NAME "Site Info"
    END

END

WINDOW 101 "BASIS b-commerce System" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Main"
    NOT SIZABLE
    BUTTON 112, "&Add Users/Upgrade", 343, 161, 120, 25
    BEGIN
        NAME "View SN"
        SHORTCUE "View/modify an individual license."
    END

    BUTTON 116, "Kau&f", 340, 20, 120, 25
    BEGIN
        NAME "View Item"
        SHORTCUE "Select a new product to purchase."
    END

    BUTTON 117, "&Kundendaten", 343, 308, 120, 25
    BEGIN
        NAME "Account"
        SHORTCUE "Account Information"
    END

    BUTTON 118, "A&bmelden", 340, 365, 120, 25
    BEGIN
        NAME "Logout"
        SHORTCUE "Log Out"
    END

    BUTTON 119, "&Warenkorb", 340, 235, 120, 25
    BEGIN
        NAME "Cart"
        SHORTCUE "Go to the Shopping Cart."
    END

    GROUPBOX 1000, "Ändern oder Anzeigen einer Lizenz", 20, 95, 460, 110
    BEGIN
        NAME "Group Control"
    END

    GROUPBOX 1001, "Warenkorb", 20, 210, 460, 70
    BEGIN
        NAME "Group Control"
    END

    GROUPBOX 1002, "Kundendaten", 20, 285, 460, 70
    BEGIN
        NAME "Group Control"
    END

    STATICTEXT 1004, "Übersicht, Bearbeiten oder Versand des Warenkorbinhaltes per E-Mail", 105, 238, 230, 29
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    STATICTEXT 1005, "Bearbeiten Ihrer Kundendaten", 112, 315, 225, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    BUTTON 120, "&Upgrade nach BPL", 340, 115, 120, 25
    BEGIN
        NAME "trade_btn"
        SHORTCUE "Allows you to upgrade to BBj or PRO/5 Rev4.x & higher."
    END

    GROUPBOX 1009, "Neue Lizenz", 20, 5, 460, 85
    BEGIN
        NAME "Group Control"
    END

    STATICTEXT 1011, "Konfigurieren einer neuen Lizenz", 110, 35, 220, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    STATICTEXT 1015, "Upgrade und Zusammenführen älterer Lizenzen zu einer aktuellen BASIS Produkt Lizenz (BPL)", 100, 115, 235, 30
    BEGIN
        JUSTIFICATION 32768
        NAME "trd_text"
    END

    STATICTEXT 1017, "zusätzliche User; Upgrade oder Anzeigen von Lizenzen", 49, 168, 285, 21
    BEGIN
        JUSTIFICATION 32768
        NAME "mod_text"
    END

    BUTTON 1018, "&Miete", 340, 50, 120, 25
    BEGIN
        NAME "rent"
        SHORTCUE "Select a new product to purchase."
    END

    BUTTON 121, "Support Interface", 80, 365, 120, 25
    BEGIN
        INVISIBLE
        NAME "SupportInterface"
    END

    BUTTON 122, "BBj Downloaden", 210, 365, 120, 25
    BEGIN
        NAME "btnDownloadBBj"
    END

    HTMLVIEW 123, "<html>\n  <table align=\042center\042 border=\0420\042>\n    <tr>\n      <td align=\042center\042>\n        <a onclick=\042window.open('http://www.basis.com/bbj-download');\042 href=\042#\042>Download \n        BBj</a>\n      </td>\n    </tr>\n  </table>\n</html>\n", 210, 365, 120, 25
    BEGIN
        NAME "HtmlView"
    END

END

WINDOW 102 "Anzeige lizensierter Seriennummern" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 33554432
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "View SN"
    NOT SIZABLE
    STATICTEXT 99, "Seriennummer:", 20, 20, 80, 25
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

    BUTTON 101, "&anzeigen", 270, 20, 90, 25
    BEGIN
        NAME "View SN"
    END

    BUTTON 102, "&Lizenzsuche", 390, 20, 90, 25
    BEGIN
        NAME "Find SN"
    END

    STATICTEXT 103, "Authorisierungsnr:", 15, 50, 90, 25
    BEGIN
        NAME "Authorization Label"
    END

    STATICTEXT 104, "", 105, 50, 145, 25
    BEGIN
        NAME "Authorization"
    END

    STATICTEXT 113, "Kaufdatum:", 265, 50, 80, 20
    BEGIN
        NAME "Purchase Date Label"
    END

    STATICTEXT 115, "", 345, 50, 125, 20
    BEGIN
        NAME "Purchase Date"
    END

    STATICTEXT 121, "Aktiv?", 155, 80, 50, 20
    BEGIN
        NAME "Active Label"
    END

    STATICTEXT 124, "", 205, 80, 40, 20
    BEGIN
        NAME "Status"
    END

    STATICTEXT 133, "Produkt:", 15, 110, 85, 25
    BEGIN
        NAME "Product Label"
    END

    STATICTEXT 134, "", 100, 110, 150, 25
    BEGIN
        NAME "Product"
    END

    STATICTEXT 136, "Plattform:", 15, 140, 85, 25
    BEGIN
        NAME "Platform Label"
    END

    STATICTEXT 137, "", 100, 140, 150, 25
    BEGIN
        NAME "Platform"
    END

    STATICTEXT 139, "O/S Level:", 15, 170, 85, 25
    BEGIN
        NAME "Port ID Label"
    END

    STATICTEXT 140, "", 100, 170, 150, 25
    BEGIN
        NAME "oslevel"
    END

    STATICTEXT 142, "Revision:", 15, 200, 85, 25
    BEGIN
        NAME "Revision Label"
    END

    STATICTEXT 143, "", 100, 200, 40, 25
    BEGIN
        NAME "Revision"
    END

    STATICTEXT 144, "Typ:", 15, 230, 85, 25
    BEGIN
        NAME "License Label"
    END

    STATICTEXT 145, "", 100, 230, 150, 25
    BEGIN
        NAME "License"
    END

    STATICTEXT 154, "User(Anzahl/Typ):", 15, 80, 90, 25
    BEGIN
        NAME "Users Label"
    END

    STATICTEXT 155, "", 105, 80, 45, 25
    BEGIN
        NAME "Users"
    END

    STATICTEXT 160, "Artikel:", 15, 260, 85, 20
    BEGIN
        NAME "Item Number Label"
    END

    STATICTEXT 161, "", 100, 260, 150, 20
    BEGIN
        NAME "Item Number"
    END

    STATICTEXT 162, "Beschreibung:", 15, 285, 85, 20
    BEGIN
        NAME "Description Label"
    END

    STATICTEXT 163, "", 100, 285, 380, 20
    BEGIN
        NAME "Description"
    END

    BUTTON 165, "View &Historie", 10, 335, 110, 25
    BEGIN
        NAME "History"
    END

    BUTTON 166, "L&izenzänderung", 10, 365, 110, 25
    BEGIN
        NAME "Change"
    END

    BUTTON 2, "&zurück", 370, 365, 110, 25
    BEGIN
        NAME "Close"
    END

    STATICTEXT 175, "Ablaufdatum:", 265, 110, 65, 20
    BEGIN
        NAME "Expire Label"
    END

    STATICTEXT 177, "", 340, 110, 125, 20
    BEGIN
        NAME "Expiration Date"
    END

    STATICTEXT 179, "Supportstatus:", 265, 165, 70, 20
    BEGIN
        NAME "available support label"
    END

    STATICTEXT 180, "", 340, 165, 40, 20
    BEGIN
        NAME "available support"
    END

    BUTTON 181, "&Erneuern", 130, 335, 110, 25
    BEGIN
        NAME "Renew"
    END

    STATICTEXT 105, "", 100, 310, 380, 20
    BEGIN
        NAME "enduser"
    END

    BUTTON 182, "Erneuerung &festlegen", 130, 365, 110, 25
    BEGIN
        NAME "toggle_renew"
    END

    STATICTEXT 183, "Erneuerung:", 265, 135, 65, 20
    BEGIN
        NAME "renewal_lbl"
    END

    STATICTEXT 184, "", 330, 135, 155, 25
    BEGIN
        NAME "renewal_status"
    END

    GROUPBOX 185, "SAM/NFR/Miete", 255, 85, 240, 110
    BEGIN
        NAME "sam_grp"
    END

    BUTTON 106, "Lizenz schicken", 250, 365, 110, 25
    BEGIN
        NAME "sendLicense"
    END

    STATICTEXT 107, "Endkunden:", 15, 310, 85, 22
    BEGIN
        NAME "enduserLabel"
    END

    CHECKBOX 108, "Virtual", 150, 195, 90, 25
    BEGIN
        NAME "virtualFlag"
    END

END

WINDOW 103 "Lizenzänderung" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 46137344
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Edit SN"
    NOT SIZABLE
    STATICTEXT 100, "Seriennummer:", 20, 235, 75, 20
    BEGIN
        NAME "Serial Number Label"
    END

    STATICTEXT 101, "", 100, 235, 160, 20
    BEGIN
        NAME "Serial Number"
    END

    GROUPBOX 103, "aktuelle Konfiguration", 10, 5, 260, 225
    BEGIN
        NAME "Current Configuration"
    END

    GROUPBOX 106, "geänderte Konfiguration", 270, 5, 220, 300
    BEGIN
        NAME "Modified Configuration"
    END

    STATICTEXT 113, "Produkt:", 20, 25, 55, 20
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

    STATICTEXT 121, "Plattform:", 20, 50, 55, 20
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

    STATICTEXT 139, "Typ:", 20, 125, 55, 20
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

    STATICTEXT 142, "User(Anzahl/Typ):", 20, 150, 92, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Cur Users Label"
    END

    STATICTEXT 143, "", 119, 147, 143, 20
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

    BUTTON 1, "in &Warenkorb", 259, 364, 84, 20
    BEGIN
        NAME "Accept"
    END

    BUTTON 2, "&Anzeige SN", 350, 364, 70, 20
    BEGIN
        NAME "Cancel"
        SHORTCUE "Return to View License"
    END

    STATICTEXT 155, "Bestell- Nummer:", 14, 364, 47, 30
    BEGIN
        JUSTIFICATION 32768
        NAME "Reference Label"
    END

    INPUTE 1010, "", 70, 364, 90, 20
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

    STATICTEXT 1003, "Extended User:", 340, 150, 90, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Users Label"
    END

    BUTTON 1002, "neu &berechnen", 168, 364, 84, 21
    BEGIN
        NAME "Recalculate"
    END

    STATICTEXT 1006, "SAM/NFR:", 20, 175, 55, 20
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

    STATICTEXT 1011, "Freischaltung:", 287, 252, 125, 20
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

    STATICTEXT 1015, "Standard User:", 340, 175, 90, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Users2 Label"
    END

    INPUTN 160, "", 440, 175, 40, 20
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

    STATICTEXT 1019, "Ihr Preis:", 280, 336, 85, 20
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

    STATICTEXT 1021, "Fälligkeit", 287, 231, 91, 14
    BEGIN
        JUSTIFICATION 32768
        NAME "renew_dt_lbl"
    END

    BUTTON 1022, "&Hauptmenu", 427, 364, 70, 20
    BEGIN
        NAME "Main"
    END

    CHECKBOX 1017, "Runtime:", 395, 280, 65, 20
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

    STATICTEXT 1028, "Listenpreis:", 280, 315, 85, 20
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

WINDOW 104 "Anzeige oder Bestellen einer Neulizenz" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 41943040
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Item"
    NOT SIZABLE
    GROUPBOX 10, "Produktdetails", 14, 7, 280, 227
    BEGIN
        NAME "Item Details"
    END

    STATICTEXT 98, "Produkt:", 20, 25, 55, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Product Label"
    END

    LISTBUTTON 99, "", 80, 25, 200, 150
    BEGIN
        NAME "Product"
        SELECTIONHEIGHT 20
    END

    STATICTEXT 100, "Plattform:", 20, 50, 55, 20
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

    STATICTEXT 111, "Typ:", 20, 125, 55, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "License Label"
    END

    LISTBUTTON 112, "", 80, 125, 200, 150
    BEGIN
        NAME "License"
    END

    STATICTEXT 113, "Artikel:", 20, 150, 55, 20
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

    INPUTN 121, "1", 410, 25, 40, 20
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Quantity"
        PASSENTER
        PASSTAB
        NOT INSERTMODE
    END

    INPUTN 124, "1", 410, 50, 40, 20
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Users"
        PASSENTER
        PASSTAB
        NOT INSERTMODE
    END

    STATICTEXT 130, "Bestell- Nummer:", 10, 360, 60, 30
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

    BUTTON 1, "in den &Warenkorb", 294, 364, 98, 20
    BEGIN
        NAME "Accept"
        SHORTCUE "Add this purchase to shopping cart"
    END

    BUTTON 2, "&Hauptmenu", 399, 364, 91, 20
    BEGIN
        NAME "Close"
    END

    BUTTON 200, "neu &berechnen", 196, 364, 91, 21
    BEGIN
        NAME "Recalculate"
    END

    CHECKBOX 202, "SAM Plan:", 350, 100, 75, 20
    BEGIN
        NAME "Sam Standard"
        TEXTLEFT
    END

    INPUTN 126, "", 410, 75, 40, 20
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "users2"
        PASSENTER
        PASSTAB
        NOT INSERTMODE
    END

    STATICTEXT 206, "Extended User:", 320, 50, 85, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "users_lbl"
    END

    STATICTEXT 207, "Standard User:", 320, 75, 85, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "users2_lbl"
    END

    STATICTEXT 212, "Menge:", 320, 25, 85, 20
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

    STATICTEXT 211, "Ihr Preis:", 320, 310, 60, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "pricelbl"
    END

    CUSTOMEDIT 122, "", 15, 235, 270, 100
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

    STATICTEXT 231, "SAM Fälligkeitsdatum", 340, 125, 110, 15
    BEGIN
        JUSTIFICATION 32768
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

    STATICTEXT 242, "Listenpreis:", 320, 290, 60, 20
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
    GRID 99, "", 21, 196, 460, 100
    BEGIN
        CLIENTEDGE
        COLUMNHEAD 25, 102
        COLUMNS 7
        GRIDCOLTITLE 0, "Bestellnummer"
        GRIDCOLTITLE 1, "Seriennr."
        GRIDCOLTITLE 2, "Anz."
        GRIDCOLTITLE 3, "Artikelnummer"
        GRIDCOLTITLE 4, "User"
        GRIDCOLTITLE 5, "Preis"
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

    STATICTEXT 105, "Ihr Preis:", 385, 300, 80, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Subtotal Label"
    END

    STATICTEXT 106, "", 385, 325, 80, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Subtotal"
    END

    BUTTON 113, "&AddUser/Upgrade", 380, 60, 100, 25
    BEGIN
        NAME "View SN"
        SHORTCUE "View/modify an individual license."
    END

    BUTTON 114, "&Neulizenz", 260, 60, 100, 25
    BEGIN
        NAME "View Item"
        SHORTCUE "Select a new product to purchase."
    END

    LISTBUTTON 116, "", 270, 360, 110, 90
    BEGIN
        NAME "Reference"
    END

    STATICTEXT 117, "Bestell- Nummer:", 210, 355, 55, 30
    BEGIN
        JUSTIFICATION 32768
        NAME "Reference Label"
    END

    BUTTON 2, "&Hauptmenu", 15, 360, 90, 25
    BEGIN
        NAME "Close"
        SHORTCUE "Return to Main"
    END

    BUTTON 118, "&weiter", 390, 360, 90, 25
    BEGIN
        NAME "Checkout"
        SHORTCUE "Proceed with Checkout"
    END

    STATICTEXT 161, "Um eine Position in Ihrem Warenkorb zu ändern, doppelklicken Sie bitte auf die Zeile darunter oder klicken Sie einmal auf die Zeile und dann auf \042Ändern\042. Um eine Position zu löschen, Position einmal anklicken und auf \042Löschen\042 drücken.", 20, 120, 460, 50
    BEGIN
        NAME "Message"
    END

    BUTTON 119, "&Löschen", 380, 165, 100, 25
    BEGIN
        NAME "Delete"
    END

    GROUPBOX 150, "In den Warenkorb", 10, 10, 480, 90
    BEGIN
        NAME "Add to cart"
    END

    STATICTEXT 151, "Hier können Sie neue Artikel kaufen,; bestehende Lizenzen ändern, sowie zusätzliche User kaufen. Update auf neuere Versionen sind ebenfalls möglich.", 20, 30, 460, 30
    BEGIN
        NAME "Add to Cart Message"
    END

    GROUPBOX 160, "Warenkorbänderung", 10, 105, 480, 250
    BEGIN
        NAME "Modify Cart"
    END

    BUTTON 165, "&Upgrade auf BPL", 140, 60, 100, 25
    BEGIN
        NAME "trade_btn"
        SHORTCUE "Allows you to upgrade to BBj or PRO/5 Rev4.x & higher."
    END

    STATICTEXT 166, "", 300, 325, 80, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "listprice"
    END

    STATICTEXT 167, "Listenpreis", 300, 300, 80, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "listprice_lbl"
    END

    STATICTEXT 168, "Zwischensumme:", 203, 325, 85, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "sub_lbl"
    END

    BUTTON 120, "Ändern", 275, 165, 100, 25
    BEGIN
        NAME "EditItem"
    END

END

WINDOW 106 "Checkout 1 von 2" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Checkout 1"
    NOT SIZABLE
    STATICTEXT 101, "1. E-Mail:", 273, 35, 47, 20
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

    STATICTEXT 103, "2. E-Mail:", 273, 63, 57, 21
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
        INVISIBLE
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

    BUTTON 2, "&zurück", 280, 360, 90, 25
    BEGIN
        NAME "Previous"
        SHORTCUE "Return to Cart"
    END

    BUTTON 1, "&weiter", 390, 360, 90, 25
    BEGIN
        NAME "Next"
        SHORTCUE "Proceed with Checkout"
    END

    GROUPBOX 200, "Produkt CD? (30,00 Euro)", 10, 110, 140, 60
    BEGIN
        NAME "Shipping Control"
    END

    GROUPBOX 907, "Rechnungsinformationen", 10, 180, 240, 170
    BEGIN
        NAME "Billing Group"
    END

    GROUPBOX 917, "Versandinformationen", 250, 180, 240, 170
    BEGIN
        NAME "Shipping Group"
    END

    GROUPBOX 300, "Electronische Lizenzlieferung", 10, 10, 480, 90
    BEGIN
        NAME "License Group"
    END

    STATICTEXT 301, "Eine elektronische Lizenz kann an zwei E-Mailadressen gesendet werden. Falls hier keine Adresse eingegeben ist, wird die Lizenz auf postalischem Weg versandt (EURO 30,00)", 20, 30, 240, 59
    BEGIN
        NAME "License Message"
    END

    GROUPBOX 928, "Ändern der Versandadresse", 160, 110, 330, 60
    BEGIN
        NAME "Shipping Address"
    END

    STATICTEXT 929, "Auf der Produkt-CD sind alle aktuellen Versionen von BBj und PRO/5. Frühere Versionen erhalten Sie unter: basis.com/products/downloads.html.", 15, 350, 250, 45
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

    RADIOBUTTON 162, "1 Day", 310, 270, 60, 25
    BEGIN
        NAME "One Day"
    END

    RADIOBUTTON 163, "2 Day", 370, 270, 60, 25
    BEGIN
        NAME "Two Day"
    END

    RADIOBUTTON 164, "3 Day", 430, 270, 60, 25
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

WINDOW 108 "Rechnungs- und Versandadresse" 0 0 500 400
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

    BUTTON 2, "&Abbruch", 390, 360, 90, 25
    BEGIN
        NAME "Cancel"
        SHORTCUE "Return to Checkout"
    END

    BUTTON 1, "&OK", 280, 360, 90, 25
    BEGIN
        NAME "Accept"
    END

    GROUPBOX 110, "Rechnungsadresse", 10, 20, 240, 240
    BEGIN
        NAME "Billing Group"
    END

    GROUPBOX 1000, "Versandadresse", 250, 20, 240, 240
    BEGIN
        NAME "Shipping Group"
    END

END

WINDOW 109 "Checkout 2 von 2" 0 0 500 400
BEGIN
    RADIOGROUP 101, 136
    RADIOGROUP 143, 144, 145
    NOT CLOSEBOX
    EVENTMASK 33554432
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Checkout 2"
    NOT SIZABLE
    RADIOBUTTON 101, "auf Rechnung", 50, 40, 110, 25
    BEGIN
        NAME "On Account"
    END

    RADIOBUTTON 136, "Kreditkarte", 230, 40, 77, 25
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

    STATICTEXT 146, "Nummer:", 230, 220, 70, 25
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

    STATICTEXT 151, "Ablaufdatum:", 230, 280, 70, 25
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

    CHECKBOX 154, "speichern", 230, 308, 150, 25
    BEGIN
        NAME "Save Credit Card"
    END

    GROUPBOX 170, "kaufen", 20, 22, 460, 328
    BEGIN
        NAME "Buy Now Title"
    END

    GROUPBOX 135, "Kreditkarte", 220, 70, 240, 270
    BEGIN
        NAME "Credit Card Frame"
    END

    GROUPBOX 155, "Nettobetrag", 42, 70, 154, 154
    BEGIN
        NAME "Order Amount Frame"
    END

    STATICTEXT 156, "Zwischen- summe:", 49, 91, 50, 28
    BEGIN
        NAME "Subtotal Label"
    END

    STATICTEXT 157, "", 112, 98, 70, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Subtotal"
    END

    STATICTEXT 158, "MWST:", 49, 119, 50, 20
    BEGIN
        NAME "Tax Label"
    END

    STATICTEXT 159, "", 112, 119, 70, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Tax"
    END

    STATICTEXT 160, "Fracht:", 49, 147, 50, 20
    BEGIN
        NAME "Freight Label"
    END

    STATICTEXT 161, "", 112, 147, 70, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Freight"
    END

    STATICTEXT 162, "Gesamt:", 49, 175, 50, 20
    BEGIN
        NAME "Total Label"
    END

    STATICTEXT 163, "", 112, 175, 70, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Total"
    END

    BUTTON 165, "&zurück", 252, 357, 90, 25
    BEGIN
        NAME "Previous"
    END

    BUTTON 1, "&kaufen", 364, 357, 90, 25
    BEGIN
        NAME "Buy Now"
    END

    BUTTON 2, "zurück zum &Warenkorb", 42, 357, 147, 25
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

    GROUPBOX 169, "Bestellnummer", 42, 224, 154, 63
    BEGIN
        NAME "Reference Title"
    END

    STATICTEXT 171, "", 319, 40, 150, 25
    BEGIN
        FOREGROUNDCOLOR RGB(255,0,0)
        NAME "Message"
    END

    GROUPBOX 175, "Kontaktname", 42, 280, 154, 60
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

    STATICTEXT 176, "Listenpreis:", 49, 196, 56, 20
    BEGIN
        NAME "List Label"
    END

    STATICTEXT 177, "", 112, 196, 70, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "List"
    END

END

WINDOW 110 "Kontoinformationen" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Account"
    NOT SIZABLE
    STATICTEXT 110, "1. E-Mail Adresse:", 20, 50, 100, 25
    BEGIN
        NAME "Email Address Label"
    END

    INPUTE 3, "", 120, 50, 360, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Email"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    STATICTEXT 111, "Passwort:", 20, 110, 100, 25
    BEGIN
        NAME "Password Label"
    END

    EDIT 5, "", 120, 110, 100, 25
    BEGIN
        CLIENTEDGE
        NAME "Password"
        PASSWORDENTRY
        NOT DRAGENABLED
    END

    STATICTEXT 112, "Passwort bestätigen:", 20, 140, 100, 30
    BEGIN
        NAME "Confirm Password Label"
    END

    EDIT 100, "", 120, 140, 100, 25
    BEGIN
        CLIENTEDGE
        NAME "Confirm Password"
        PASSWORDENTRY
        NOT DRAGENABLED
    END

    GRID 109, "", 20, 200, 460, 100
    BEGIN
        CLIENTEDGE
        COLUMNHEAD 25, 107
        COLUMNS 5
        GRIDCOLTITLE 0, "Kartennummer"
        GRIDCOLTITLE 1, "Kartentyp"
        GRIDCOLTITLE 2, "Name auf der Karte"
        GRIDCOLTITLE 3, "MM"
        GRIDCOLTITLE 4, "JJJJ"
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

    STATICTEXT 113, "Achtung: Das Passwort muss mindestens 10 Stellen lang sein, Groß- und Kleinschreibung, Zahlen und Sonderzeichen ( ~!@#$%^&*()+=) enthalten.", 230, 110, 250, 70
    BEGIN
        NAME "Note"
    END

    STATICTEXT 120, "2. E-Mail Adresse:", 20, 80, 100, 25
    BEGIN
        NAME "Email Address Label2"
    END

    INPUTE 4, "", 120, 80, 360, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Email2"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    BUTTON 108, "&Hauptmenu", 390, 370, 90, 25
    BEGIN
        NAME "Cancel"
        SHORTCUE "Return to Main"
    END

    BUTTON 103, "&Neue Kreditkarte", 20, 340, 120, 25
    BEGIN
        NAME "New CC"
    END

    BUTTON 101, "&OK", 290, 370, 90, 25
    BEGIN
        NAME "Accept"
        SHORTCUE "Update Account Information"
    END

    STATICTEXT 121, "In die Tabelle doppelklicken oder einmal auf “Kreditkarte bearbeiten“ klicken, um die Informationen der ausgewählten Kreditkarte zu bearbeiten.", 20, 300, 460, 40
    BEGIN
        NAME "Message"
    END

    BUTTON 104, "&Reports", 145, 340, 90, 25
    BEGIN
        NAME "Email_rpt"
        SHORTCUE "Select & e-mail your Active SN or Aged AR report to you."
    END

    BUTTON 106, "Angaben zum Endkunden", 290, 340, 190, 25
    BEGIN
        NAME "EndUserData"
    END

    BUTTON 105, "&Rechnung", 145, 370, 90, 25
    BEGIN
        NAME "invoice"
        SHORTCUE "Review/Pay Invoices"
    END

    BUTTON 102, "Kreditkarte bearbeiten", 20, 370, 120, 25
    BEGIN
        NAME "EditCC"
    END

    BUTTON 114, "Lizenzupdate", 390, 166, 90, 25
    BEGIN
        INVISIBLE
        NAME "btnLicenseUpdate"
    END

    STATICTEXT 130, "First Name:", 20, 20, 100, 25
    BEGIN
        NAME "firstNameLabel"
    END

    EDIT 1, "", 120, 20, 90, 25
    BEGIN
        CLIENTEDGE
        NAME "firstName"
    END

    STATICTEXT 131, "Last Name:", 220, 20, 60, 25
    BEGIN
        NAME "lastNameLabel"
    END

    EDIT 2, "", 280, 20, 200, 25
    BEGIN
        CLIENTEDGE
        NAME "lastName"
    END

END

WINDOW 111 "Seriennummern Historie" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "History"
    NOT SIZABLE
    STATICTEXT 101, "Seriennummer:", 20, 60, 80, 20
    BEGIN
        NAME "Serial Number Label"
    END

    STATICTEXT 102, "", 100, 60, 120, 20
    BEGIN
        NAME "Serial Number"
    END

    STATICTEXT 105, "Artikel:", 20, 85, 80, 20
    BEGIN
        NAME "Item Number Label"
    END

    STATICTEXT 106, "", 100, 85, 380, 20
    BEGIN
        NAME "Item Number"
    END

    STATICTEXT 107, "Beschreibung:", 20, 110, 80, 20
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

    BUTTON 2, "&zurück", 20, 10, 90, 25
    BEGIN
        NAME "Close"
        SHORTCUE "Return to View Licensed Product"
    END

    BUTTON 113, "Links &anzeigen", 115, 10, 90, 25
    BEGIN
        NAME "Clients"
    END

    TABCONTROL 114, "", 10, 140, 480, 240
    BEGIN
        AUTOMANAGEMENT
        NAME "Tab"
        TAB "     Transaktionshistorie     " 0 110
        TAB "          Lizenz Historie          " 0 115
    END

    LISTBOX 115, "", 0, 0, 460, 197
    BEGIN
        CLIENTEDGE
        FONT "Arial Monospaced" 8
        NAME "List Box"
    END

    BUTTON 116, "&Lizenz Reset", 210, 10, 90, 25
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

WINDOW 112 "Server/Client Links" 0 0 500 400
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
        GRIDCOLTITLE 0, "Seriennr."
        GRIDCOLTITLE 1, "Artikelnummer"
        GRIDCOLTITLE 2, "User"
        GRIDCOLTITLE 3, "Beschreibung"
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

    BUTTON 2, "&zurück", 390, 360, 90, 25
    BEGIN
        NAME "Close"
        SHORTCUE "Return to View Licensed Product"
    END

    STATICTEXT 103, "Seriennummer:", 20, 30, 80, 25
    BEGIN
        NAME "Serial Number Label"
    END

    STATICTEXT 104, "", 100, 30, 150, 25
    BEGIN
        NAME "Serial Number"
    END

    STATICTEXT 105, "Artikelnummer:", 20, 60, 80, 25
    BEGIN
        NAME "Item Number Label"
    END

    STATICTEXT 106, "", 100, 60, 150, 25
    BEGIN
        NAME "Item Number"
    END

    STATICTEXT 107, "Beschreibung", 20, 90, 80, 25
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

    STATICTEXT 110, "Diese Informationen werden nur zur Information gespeichert. BASIS verwaltet bzw. nutzt diese Server/Client Links nicht.", 260, 30, 210, 50
    BEGIN
        NAME "Disclaimer"
    END

END

WINDOW 113 "Seriennummernsuche" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Find SN"
    NOT SIZABLE
    STATICTEXT 99, "nächste Seriennummer:", 7, 20, 123, 20
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

    BUTTON 1, "&Weitersuchen", 390, 20, 90, 25
    BEGIN
        NAME "Next"
    END

    STATICTEXT 101, "wie viele anzeigen?", 20, 50, 110, 20
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

    CHECKBOX 108, "Nur &aktive Lizenzen anzeigen?", 200, 50, 180, 25
    BEGIN
        CHECKED
        NAME "Active Only"
    END

    BUTTON 110, "&Rückwärtssuche", 290, 20, 90, 25
    BEGIN
        NAME "Previous"
    END

    GRID 111, "", 20, 117, 460, 233
    BEGIN
        CLIENTEDGE
        COLUMNHEAD 25, 109
        COLUMNS 4
        GRIDCOLTITLE 0, "Seriennr."
        GRIDCOLTITLE 1, "verkauft"
        GRIDCOLTITLE 2, "User"
        GRIDCOLTITLE 3, "Beschreibung"
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

    BUTTON 2, "&zurück", 390, 360, 90, 25
    BEGIN
        NAME "Close"
        SHORTCUE "Return to View Licensed Product"
    END

    STATICTEXT 112, "Details anzeigen durch Doppelklick in die Liste, oder klicken Sie auf ‚SN wählen.", 20, 360, 260, 30
    BEGIN
        NAME "Message"
    END

    BUTTON 102, "SN wählen", 290, 360, 90, 25
    BEGIN
        NAME "SelectSN"
    END

END

WINDOW 114 "Kreditkarte" 0 0 500 400
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

    STATICTEXT 106, "Kartennummer:", 217, 217, 70, 21
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

    STATICTEXT 108, "Name auf der Karte:", 238, 252, 52, 25
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

    STATICTEXT 110, "Ablaufdatum:", 224, 294, 66, 18
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

    BUTTON 200, "&Aktualisieren", 280, 360, 90, 25
    BEGIN
        NAME "Update"
    END

    BUTTON 201, "&Löschen", 170, 360, 90, 25
    BEGIN
        NAME "Delete"
    END

    BUTTON 2, "&zurück", 390, 360, 90, 25
    BEGIN
        NAME "Cancel"
        SHORTCUE "Return to Account"
    END

    GROUPBOX 100, "Typ", 40, 195, 130, 135
    BEGIN
        NAME "Credit Card Group"
    END

    GROUPBOX 101, "Karteninformation", 189, 196, 270, 135
    BEGIN
        NAME "Group Control"
    END

    GROUPBOX 202, "Kreditkarten Details", 20, 175, 460, 175
    BEGIN
        NAME "Credit Card Details"
    END

END

WINDOW 116 "Freischaltung" 0 0 350 220
BEGIN
    NOT CLOSEBOX
    DIALOGBEHAVIOR
    DIALOGBORDER
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "reset_license"
    NOT SIZABLE
    BUTTON 1, "&Ja", 90, 170, 80, 20
    BEGIN
        NAME "OK_btn"
    END

    BUTTON 2, "&Nein", 175, 170, 80, 20
    BEGIN
        NAME "cancel"
    END

    STATICTEXT 102, "Falls Sie diese Lizenz freischalten lassen möchten, wählen Sie bitte in der untenstehenden Liste einen Grund aus. BASIS Europe Distribution GmbH wird über diese Freischaltung unterrichtet.", 15, 20, 315, 55
    BEGIN
        NAME "Static Text"
    END

    LISTBUTTON 103, "", 98, 91, 160, 120
    BEGIN
        NAME "reset_reason"
    END

    STATICTEXT 104, "Grund für die Freischaltung:", 15, 90, 75, 36
    BEGIN
        NAME "rreason_txt"
    END

    STATICTEXT 105, "Möchten Sie fortfahren?", 15, 145, 250, 20
    BEGIN
        NAME "proceed_txt"
    END

END

WINDOW 117 "Auswahl von Seriennummern" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 1128269312
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "trade_select"
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

    BUTTON 104, "hin&zufügen >", 210, 140, 91, 25
    BEGIN
        NAME "add_btn"
    END

    BUTTON 105, "< &entfernen", 210, 170, 91, 25
    BEGIN
        NAME "remove_btn"
    END

    BUTTON 107, "&weiter", 364, 273, 80, 25
    BEGIN
        NAME "exchange_btn"
    END

    BUTTON 106, "<< &alle entfernen", 210, 200, 91, 25
    BEGIN
        NAME "remove_all_btn"
    END

    BUTTON 109, "&Hauptmenu", 364, 329, 80, 25
    BEGIN
        NAME "cancel_btn"
    END

    STATICTEXT 110, "zum nächsten Schritt", 245, 280, 105, 17
    BEGIN
        JUSTIFICATION 32768
        NAME "exchange_txt"
    END

    STATICTEXT 113, "", 31, 55, 430, 45
    BEGIN
        NAME "selected_desc"
    END

    STATICTEXT 114, "Seriennummer", 50, 20, 70, 20
    BEGIN
        NAME "starting_sn_text"
    END

    EDIT 115, "", 120, 20, 100, 20
    BEGIN
        CLIENTEDGE
        NAME "starting_sn"
    END

    STATICTEXT 116, "verfügbare Seriennummern", 35, 110, 130, 20
    BEGIN
        NAME "Static Text"
    END

    STATICTEXT 117, "ausgewählte Seriennummern", 322, 112, 140, 20
    BEGIN
        NAME "Static Text"
    END

    BUTTON 1, "suche &nächste", 350, 14, 91, 25
    BEGIN
        NAME "scan_forward_btn"
    END

    BUTTON 119, "suche &vorherige", 245, 14, 98, 25
    BEGIN
        NAME "scan_back_btn"
    END

    GROUPBOX 120, "", 20, 45, 450, 60
    BEGIN
        NAME "selected_desc_ctl"
    END

    STATICTEXT 121, "Abbruch und zurück zum Hauptmenu", 154, 336, 195, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "cancel_txt"
    END

END

WINDOW 118 "Upgrade ausgewählter Lizenzen" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 41943040
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "trade"
    NOT SIZABLE
    GROUPBOX 106, "Neues Produkt", 250, 15, 235, 157
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

    STATICTEXT 151, "Ihr Preis:", 329, 364, 60, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Price Label"
    END

    BUTTON 1, "in den &Warenkorb", 189, 336, 105, 20
    BEGIN
        NAME "Accept"
    END

    BUTTON 2, "&Neuauswahl", 126, 364, 84, 20
    BEGIN
        NAME "Cancel"
    END

    STATICTEXT 154, "Bestell- Nummer:", 20, 325, 55, 30
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

    BUTTON 200, "neu &berechnen", 35, 364, 84, 20
    BEGIN
        NAME "Recalculate"
    END

    STATICTEXT 1003, "Extended User:", 259, 196, 110, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "ent_users_lbl"
    END

    STATICTEXT 1009, "ausgewählte Seriennummern", 20, 6, 140, 20
    BEGIN
        NAME "Static Text"
    END

    STATICTEXT 1011, "Kalkulation", 20, 175, 90, 20
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

    STATICTEXT 144, "SAM Fälligkeitsdatum", 259, 273, 111, 17
    BEGIN
        JUSTIFICATION 32768
        NAME "renew_dt_lbl"
    END

    EDIT 143, "", 375, 220, 40, 20
    BEGIN
        CLIENTEDGE
        NAME "std_users"
    END

    STATICTEXT 1004, "Standard User:", 259, 224, 110, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "std_users_lbl"
    END

    BUTTON 1015, "&Hauptmenu", 217, 364, 77, 20
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

    STATICTEXT 1018, "Listenpreis:", 330, 345, 60, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "listprice_lbl"
    END

END

WINDOW 119 "Report auswählen" 0 0 350 250
BEGIN
    RADIOGROUP 104, 105
    NOT CLOSEBOX
    DIALOGBEHAVIOR
    DIALOGBORDER
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Send_rpt"
    NOT SIZABLE
    BUTTON 1, "&Ok", 75, 215, 90, 25
    BEGIN
        NAME "Ok"
    END

    BUTTON 2, "&Abbruch", 185, 215, 90, 25
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

    STATICTEXT 102, "Report der aktiven Seriennummern wird an die folgende E-Mail-Adresse gesendet:", 41, 45, 289, 30
    BEGIN
        NAME "Send_Info"
    END

    STATICTEXT 103, "", 21, 180, 309, 25
    BEGIN
        FOREGROUNDCOLOR RGB(255,0,0)
        NAME "Progress_Info"
    END

    RADIOBUTTON 104, "Report der aktiven Seriennummern", 21, 16, 300, 25
    BEGIN
        NAME "sn_rpt"
    END

    RADIOBUTTON 105, "Report aller offenen Rechnungen", 25, 127, 300, 25
    BEGIN
        NAME "ar_rpt"
    END

    STATICTEXT 100, "Der Report Offene Posten wird sofort in Ihrem Browser erzeugt.", 41, 156, 289, 30
    BEGIN
        NAME "Static Text"
    END

END

WINDOW 120 "Erneuern" 0 0 350 250
BEGIN
    NOT CLOSEBOX
    DIALOGBEHAVIOR
    DIALOGBORDER
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Renewal"
    NOT SIZABLE
    STATICTEXT 131, "Seriennummer", 20, 15, 75, 20
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

    STATICTEXT 133, "Fälligkeit", 20, 45, 75, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "dt_lbl"
    END

    STATICTEXT 135, "Revision", 190, 15, 50, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "rev_lbl"
    END

    EDIT 136, "", 245, 15, 40, 20
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 16384
        NAME "rev"
        READONLY
    END

    CUSTOMEDIT 100, "", 32, 80, 240, 60
    BEGIN
        CLIENTEDGE
        HSCROLLBAR
        NAME "comments"
        READONLY
        VSCROLLBAR
        WORDWRAP
    END

    STATICTEXT 125, "Listenpreis", 20, 155, 70, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "listprice_lbl"
    END

    STATICTEXT 127, "Ihr Preis", 20, 180, 70, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "price_lbl"
    END

    STATICTEXT 129, "Bestell- Nummer", 5, 210, 95, 20
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

    BUTTON 2, "&Abbruch", 200, 180, 90, 20
    BEGIN
        NAME "cancel"
    END

    BUTTON 1, "in &Warenkorb", 200, 210, 90, 20
    BEGIN
        NAME "Accept"
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

    TOOLBUTTON 137, "", 200, 40, 30, 30
    BEGIN
        INVISIBLE
        NAME "renew_dt_btn"
        SHORTCUE "View calendar/Select date"
    END

END

