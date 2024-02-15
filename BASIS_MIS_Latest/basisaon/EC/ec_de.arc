//#charset: windows-1252

VERSION "4.0"

WINDOW 100 "BASIS b-commerce Anmeldung" 0 0 790 500
BEGIN
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Login"
    NOTITLEBAR
    NOT SIZABLE
    STATICTEXT 101, "Willkommen bei b-commerce", 270, 170, 250, 20
    BEGIN
        JUSTIFICATION 16384
        NAME "Welcome"
    END

    STATICTEXT 102, "Kundennummer:", 190, 275, 150, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "User ID Label"
    END

    INPUTE 103, "", 350, 270, 120, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "User ID"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    STATICTEXT 104, "Passwort:", 190, 310, 150, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "Password Label"
    END

    BUTTON 1, "&Anmelden", 350, 340, 120, 25
    BEGIN
        NAME "Login"
    END

    BUTTON 2, "E&nde", 650, 460, 120, 25
    BEGIN
        NAME "Exit"
    END

    STATICTEXT 108, "Falls Sie noch keinen b-commerce Zugang haben, kontaktieren Sie uns bitte unter: +49 681 968 14 0", 20, 385, 750, 25
    BEGIN
        JUSTIFICATION 16384
        NAME "Message"
    END

    EDIT 109, "", 350, 305, 120, 25
    BEGIN
        CLIENTEDGE
        NAME "Password"
        PASSWORDENTRY
        NOT DRAGENABLED
    END

    GROUPBOX 105, "", 145, 225, 500, 150
    BEGIN
        NAME "Box"
    END

    STATICTEXT 106, "Bitte geben Sie Ihre Kundennummer und Ihr Passwort ein:", 165, 240, 410, 25
    BEGIN
        NAME "Prompt"
    END

    STATICTEXT 111, "Zu dieser Seite haben ausschliesslich BASIS Kunden Zugang", 195, 200, 400, 20
    BEGIN
        JUSTIFICATION 16384
        NAME "Site Info"
    END

    BUTTON 99, "Zugangsdaten Vergessen", 390, 460, 240, 25
    BEGIN
        NAME "forgotCreds"
    END

    STATICTEXT 107, "BASIS b-commerce System Login", 0, 0, 790, 25
    BEGIN
        FONT "Dialog" 14,bold
        JUSTIFICATION 16384
        NAME "headertext"
    END

END

WINDOW 101 "BASIS b-commerce System" 0 0 790 500
BEGIN
    NOT CLOSEBOX
    EVENTMASK 8388608
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Main"
    NOTITLEBAR
    NOT SIZABLE
    BUTTON 112, "&Add Users/Upgrade", 340, 210, 120, 25
    BEGIN
        NAME "View SN"
        SHORTCUE "View/modify an individual license."
    END

    BUTTON 116, "Kau&f", 340, 60, 120, 25
    BEGIN
        NAME "View Item"
        SHORTCUE "Select a new product to purchase."
    END

    BUTTON 117, "&Kundendaten", 340, 395, 120, 25
    BEGIN
        NAME "Account"
        SHORTCUE "Account Information"
    END

    BUTTON 118, "A&bmelden", 650, 460, 120, 25
    BEGIN
        NAME "Logout"
        SHORTCUE "Log Out"
    END

    BUTTON 119, "&Warenkorb", 340, 300, 120, 25
    BEGIN
        NAME "Cart"
        SHORTCUE "Go to the Shopping Cart."
    END

    GROUPBOX 1000, "Ändern oder Anzeigen einer Lizenz", 20, 145, 750, 110
    BEGIN
        NAME "Group Control"
    END

    GROUPBOX 1001, "Warenkorb", 20, 275, 750, 70
    BEGIN
        NAME "Group Control"
    END

    GROUPBOX 1002, "Kundendaten", 20, 365, 750, 80
    BEGIN
        NAME "Group Control"
    END

    STATICTEXT 1004, "Übersicht, Bearbeiten oder Versand des Warenkorbinhaltes per E-Mail", 35, 305, 300, 45
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    STATICTEXT 1005, "Bearbeiten Ihrer Kundendaten", 35, 400, 300, 50
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    BUTTON 120, "&Upgrade nach BPL", 340, 175, 120, 25
    BEGIN
        NAME "trade_btn"
        SHORTCUE "Allows you to upgrade to BBj or PRO/5 Rev4.x & higher."
    END

    GROUPBOX 1009, "Neue Lizenz", 20, 40, 750, 85
    BEGIN
        NAME "Group Control"
    END

    STATICTEXT 1011, "Konfigurieren einer neuen Lizenz", 110, 75, 220, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    STATICTEXT 1015, "Upgrade und Zusammenführen älterer Lizenzen zu einer aktuellen BASIS Produkt Lizenz (BPL)", 35, 175, 300, 30
    BEGIN
        JUSTIFICATION 32768
        NAME "trd_text"
    END

    STATICTEXT 1017, "zusätzliche User; Upgrade oder Anzeigen von Lizenzen", 35, 215, 300, 30
    BEGIN
        JUSTIFICATION 32768
        NAME "mod_text"
    END

    BUTTON 1018, "&Miete", 340, 90, 120, 25
    BEGIN
        NAME "Rent"
        SHORTCUE "Select a new product to purchase."
    END

    BUTTON 121, "Support Interface", 390, 460, 120, 25
    BEGIN
        INVISIBLE
        NAME "SupportInterface"
    END

    BUTTON 122, "BBj Downloaden", 520, 460, 120, 25
    BEGIN
        NAME "btnDownloadBBj"
    END

    HTMLVIEW 123, "<html><head></head><body><table border=\0420\042 align=\042center\042>\n    <tbody><tr>\n      <td align=\042center\042>\n        <a onclick=\042window.open('http://www.basis.cloud/bbj-download');\042 href=\042#\042>Download \n        BBj</a>\n      </td>\n    </tr>\n  </tbody></table>\n\n</body></html>", 520, 460, 120, 25
    BEGIN
        NAME "HtmlView"
        NOT DRAGENABLED
    END

    STATICTEXT 100, "BASIS b-commerce System", 0, 0, 790, 25
    BEGIN
        FONT "Dialog" 14,bold
        JUSTIFICATION 16384
        NAME "headertext"
    END

    BUTTON 124, "Purchase Professional Services", 20, 460, 180, 25
    BEGIN
        NAME "profServBtn"
    END

END

WINDOW 102 "Anzeige lizensierter Seriennummern" 0 0 790 500
BEGIN
    NOT CLOSEBOX
    EVENTMASK 33554432
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "View SN"
    NOTITLEBAR
    NOT SIZABLE
    STATICTEXT 99, "Seriennummer:", 20, 50, 120, 25
    BEGIN
        NAME "Serial Number Label"
    END

    INPUTE 100, "", 145, 45, 140, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        MASK "XXXXXXXXXXXXXXXXXXXX"
        NAME "Serial Number"
        PADCHARACTER 32
        PASSTAB
    END

    BUTTON 101, "&anzeigen", 300, 45, 120, 25
    BEGIN
        NAME "View SN"
    END

    BUTTON 102, "&Lizenzsuche", 650, 45, 120, 25
    BEGIN
        NAME "Find SN"
    END

    STATICTEXT 103, "Authorisierungsnr:", 20, 85, 120, 25
    BEGIN
        NAME "Authorization Label"
    END

    STATICTEXT 104, "", 145, 85, 150, 25
    BEGIN
        NAME "Authorization"
    END

    STATICTEXT 113, "Kaufdatum:", 470, 85, 120, 20
    BEGIN
        NAME "Purchase Date Label"
    END

    STATICTEXT 115, "", 600, 85, 155, 25
    BEGIN
        NAME "Purchase Date"
    END

    STATICTEXT 121, "Aktiv?", 305, 120, 50, 25
    BEGIN
        NAME "Active Label"
    END

    STATICTEXT 124, "", 355, 120, 40, 25
    BEGIN
        NAME "Status"
    END

    STATICTEXT 133, "Produkt:", 20, 155, 120, 25
    BEGIN
        NAME "Product Label"
    END

    STATICTEXT 134, "", 140, 155, 300, 25
    BEGIN
        NAME "Product"
    END

    STATICTEXT 136, "Plattform:", 20, 190, 120, 25
    BEGIN
        NAME "Platform Label"
    END

    STATICTEXT 137, "", 140, 190, 150, 25
    BEGIN
        NAME "Platform"
    END

    STATICTEXT 139, "O/S Level:", 20, 225, 120, 25
    BEGIN
        NAME "Port ID Label"
    END

    STATICTEXT 140, "", 140, 225, 320, 25
    BEGIN
        NAME "oslevel"
    END

    STATICTEXT 142, "Revision:", 20, 260, 120, 25
    BEGIN
        NAME "Revision Label"
    END

    STATICTEXT 143, "", 145, 260, 60, 25
    BEGIN
        NAME "Revision"
    END

    STATICTEXT 144, "Typ:", 20, 295, 120, 25
    BEGIN
        NAME "License Label"
    END

    STATICTEXT 145, "", 145, 295, 320, 25
    BEGIN
        NAME "License"
    END

    STATICTEXT 154, "User(Anzahl/Typ):", 20, 120, 120, 25
    BEGIN
        NAME "Users Label"
    END

    STATICTEXT 155, "", 140, 120, 90, 25
    BEGIN
        NAME "Users"
    END

    STATICTEXT 160, "Artikel:", 20, 330, 120, 20
    BEGIN
        NAME "Item Number Label"
    END

    STATICTEXT 161, "", 145, 330, 200, 25
    BEGIN
        NAME "Item Number"
    END

    STATICTEXT 162, "Beschreibung:", 20, 365, 120, 20
    BEGIN
        NAME "Description Label"
    END

    STATICTEXT 163, "", 145, 365, 380, 30
    BEGIN
        NAME "Description"
    END

    BUTTON 165, "View &Historie", 230, 425, 120, 25
    BEGIN
        NAME "History"
    END

    BUTTON 166, "L&izenzänderung", 230, 460, 120, 25
    BEGIN
        NAME "Change"
    END

    BUTTON 2, "&zurück", 650, 460, 120, 25
    BEGIN
        NAME "Close"
    END

    STATICTEXT 175, "Ablaufdatum:", 485, 140, 75, 25
    BEGIN
        NAME "Expire Label"
    END

    STATICTEXT 177, "", 565, 140, 150, 20
    BEGIN
        NAME "Expiration Date"
    END

    STATICTEXT 179, "Support Status:", 485, 220, 140, 25
    BEGIN
        NAME "available support label"
    END

    STATICTEXT 180, "", 630, 220, 60, 25
    BEGIN
        NAME "available support"
    END

    BUTTON 181, "&Erneuern", 370, 425, 120, 25
    BEGIN
        NAME "Renew"
        SHORTCUE "Renew SAM/Kit/Rent "
    END

    STATICTEXT 105, "", 145, 400, 400, 25
    BEGIN
        NAME "enduser"
    END

    STATICTEXT 183, "Erneuerung:", 485, 175, 75, 25
    BEGIN
        NAME "renewal_lbl"
    END

    STATICTEXT 184, "", 565, 175, 190, 30
    BEGIN
        NAME "renewal_status"
    END

    GROUPBOX 185, "SAM/NFR/Miete", 470, 115, 300, 140
    BEGIN
        NAME "sam_grp"
    END

    BUTTON 106, "Lizenz schicken", 510, 460, 120, 25
    BEGIN
        NAME "sendLicense"
    END

    STATICTEXT 107, "Endkunden:", 20, 400, 120, 20
    BEGIN
        NAME "enduserLabel"
    END

    CHECKBOX 108, "Virtual", 220, 255, 80, 25
    BEGIN
        NAME "virtualFlag"
        NOT OPAQUE
    END

    CHECKBOX 109, "Pause Perpetual Notices", 320, 255, 160, 25
    BEGIN
        LONGCUE "Hold send notices when the perpetual license is nearing expiration."
        NAME "stopPerPetNote"
    END

    BUTTON 110, "Direct Renew", 510, 425, 120, 25
    BEGIN
        NAME "directRenew"
    END

    STATICTEXT 111, "BASIS b-commerce System View Licensed Product", 0, 0, 790, 25
    BEGIN
        FONT "Dialog" 14,bold
        JUSTIFICATION 16384
        NAME "headertext"
    END

    STATICTEXT 112, "", 20, 430, 200, 25
    BEGIN
        FOREGROUNDCOLOR RGB(255,0,0)
        NAME "limitHostIDMsg"
        NOT WORDWRAP
    END

    STATICTEXT 114, "", 20, 456, 200, 25
    BEGIN
        FOREGROUNDCOLOR RGB(255,0,0)
        NAME "limitHostIDHost"
        NOT WORDWRAP
    END

    LISTBUTTON 116, "Active\nProforma\nNo Renew\n", 410, 460, 80, 100
    BEGIN
        NAME "renewType"
        SELECTIONHEIGHT 25
    END

    STATICTEXT 117, "Renew Type", 365, 455, 40, 35
    BEGIN
        NAME "renewTypeLbl"
    END

    BUTTON 118, "Vendor Features", 300, 85, 120, 25
    BEGIN
        INVISIBLE
        NAME "vendorFeaturesBtn"
    END

END

WINDOW 103 "Lizenzänderung" 0 0 790 500
BEGIN
    NOT CLOSEBOX
    EVENTMASK 46137344
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Edit SN"
    NOTITLEBAR
    NOT SIZABLE
    STATICTEXT 100, "Seriennummer:", 20, 305, 90, 25
    BEGIN
        NAME "Serial Number Label"
    END

    STATICTEXT 101, "", 115, 305, 200, 25
    BEGIN
        NAME "Serial Number"
    END

    GROUPBOX 103, "aktuelle Konfiguration", 20, 35, 350, 265
    BEGIN
        NAME "Current Configuration"
    END

    GROUPBOX 106, "geänderte Konfiguration", 405, 35, 365, 340
    BEGIN
        NAME "Modified Configuration"
    END

    STATICTEXT 113, "Produkt:", 30, 60, 80, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "Product Label"
    END

    STATICTEXT 115, "", 115, 60, 245, 25
    BEGIN
        NAME "Cur_Product"
    END

    LISTBUTTON 118, "", 425, 60, 250, 150
    BEGIN
        NAME "Product"
        SELECTIONHEIGHT 25
    END

    STATICTEXT 121, "Plattform:", 30, 90, 80, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "Platform Label"
    END

    STATICTEXT 124, "", 115, 90, 245, 25
    BEGIN
        NAME "Cur_Platform"
    END

    LISTBUTTON 127, "", 425, 90, 250, 150
    BEGIN
        NAME "Platform"
        SELECTIONHEIGHT 25
    END

    STATICTEXT 133, "O/S Level:", 30, 120, 80, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "O/S Level Label"
    END

    STATICTEXT 134, "", 115, 120, 245, 25
    BEGIN
        NAME "Cur_Oslevel"
    END

    LISTBUTTON 135, "", 425, 120, 250, 150
    BEGIN
        NAME "OsLevel"
        SELECTIONHEIGHT 25
    END

    STATICTEXT 136, "Revision:", 30, 150, 80, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "Revision Label"
    END

    STATICTEXT 137, "", 115, 150, 245, 25
    BEGIN
        NAME "Cur_Revision"
    END

    LISTBUTTON 138, "", 425, 150, 250, 150
    BEGIN
        NAME "Revision"
        SELECTIONHEIGHT 25
    END

    STATICTEXT 139, "Typ:", 30, 180, 80, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "License Label"
    END

    STATICTEXT 140, "", 115, 180, 245, 25
    BEGIN
        NAME "Cur_License"
    END

    LISTBUTTON 141, "", 425, 180, 250, 150
    BEGIN
        NAME "License"
        SELECTIONHEIGHT 25
    END

    STATICTEXT 142, "User(Anzahl/Typ):", 30, 210, 80, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "Cur Users Label"
    END

    STATICTEXT 143, "", 115, 210, 245, 25
    BEGIN
        NAME "Cur_users"
    END

    INPUTN 147, "", 705, 215, 50, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Users"
        PASSENTER
        PASSTAB
        NOT INSERTMODE
    END

    BUTTON 1, "in &Warenkorb", 390, 460, 120, 25
    BEGIN
        NAME "Accept"
    END

    BUTTON 2, "&Anzeige SN", 520, 460, 120, 25
    BEGIN
        NAME "Cancel"
        SHORTCUE "Return to View License"
    END

    STATICTEXT 155, "Bestell- Nummer:", 20, 460, 105, 30
    BEGIN
        JUSTIFICATION 32768
        NAME "Reference Label"
    END

    INPUTE 1010, "", 130, 460, 120, 25
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

    STATICTEXT 200, "", 20, 335, 350, 30
    BEGIN
        NAME "Description"
    END

    STATICTEXT 1003, "Extended Users:", 580, 220, 120, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "Users Label"
    END

    BUTTON 1002, "neu &berechnen", 260, 460, 120, 25
    BEGIN
        NAME "Recalculate"
    END

    STATICTEXT 1006, "SAM/NFR:", 30, 240, 80, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "SAM Label"
    END

    STATICTEXT 1007, "", 115, 240, 40, 25
    BEGIN
        NAME "Sam Covered"
    END

    CHECKBOX 1008, " SAM Plan:", 655, 275, 100, 25
    BEGIN
        NAME "Sam standard"
        TEXTLEFT
        JUSTIFICATION 32768
    END

    STATICTEXT 1011, "Freischaltung:", 510, 340, 200, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "additional support label"
    END

    EDIT 1012, "", 715, 335, 40, 25
    BEGIN
        CLIENTEDGE
        NAME "additional support"
    END

    STATICTEXT 1013, "Support:", 30, 270, 80, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "available_support_label"
    END

    STATICTEXT 1014, "", 115, 270, 40, 25
    BEGIN
        NAME "available_support"
    END

    STATICTEXT 1015, "Standard Users:", 580, 255, 120, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "Users2 Label"
    END

    INPUTN 160, "", 705, 245, 50, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Users2"
        PASSENTER
        PASSTAB
        NOT INSERTMODE
    END

    EDIT 153, "", 650, 415, 120, 25
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "Price"
        READONLY
    END

    STATICTEXT 1019, "Ihr Preis:", 525, 420, 120, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "total price"
    END

    CUSTOMEDIT 154, "", 20, 375, 350, 65
    BEGIN
        CLIENTEDGE
        HSCROLLBAR
        NAME "comments"
        READONLY
        VSCROLLBAR
        WORDWRAP
    END

    INPUTD 1009, "", 625, 305, 90, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "renew_dt"
        PASSENTER
        PASSTAB
    END

    TOOLBUTTON 1020, "", 725, 300, 30, 30
    BEGIN
        NAME "renew_dt_btn"
        SHORTCUE "View calendar/Select date "
    END

    STATICTEXT 1021, "Fälligkeit", 520, 310, 100, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "renew_dt_lbl"
    END

    BUTTON 1022, "&Hauptmenu", 650, 460, 120, 25
    BEGIN
        NAME "Main"
    END

    CHECKBOX 1017, "Runtime:", 425, 215, 115, 25
    BEGIN
        NAME "runtime"
        SHORTCUE "Does not allow access to console mode."
        TEXTLEFT
        JUSTIFICATION 32768
    END

    STATICTEXT 1024, "Runtime:", 160, 240, 85, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "cur_runtime_lbl"
    END

    STATICTEXT 1026, "", 250, 240, 40, 25
    BEGIN
        NAME "cur_runtime"
    END

    EDIT 1027, "", 650, 385, 120, 25
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "listprice"
        READONLY
    END

    STATICTEXT 1028, "Listenpreis:", 525, 390, 120, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "listprice_lbl"
    END

    CHECKBOX 1029, "Annual License:", 425, 245, 115, 25
    BEGIN
        NAME "no_rif"
        TEXTLEFT
        JUSTIFICATION 32768
    END

    STATICTEXT 102, "BASIS b-commerce System Modify License", 0, 0, 790, 25
    BEGIN
        FONT "Dialog" 14,bold
        JUSTIFICATION 16384
        NAME "headertext"
    END

    BUTTON 104, "Features", 415, 340, 90, 25
    BEGIN
        INVISIBLE
        NAME "featureBtn"
    END

END

WINDOW 104 "Anzeige oder Bestellen einer Neulizenz" 0 0 790 500
BEGIN
    NOT CLOSEBOX
    EVENTMASK 41943040
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Item"
    NOTITLEBAR
    NOT SIZABLE
    GROUPBOX 10, "Produktdetails", 10, 30, 500, 265
    BEGIN
        NAME "Item Details"
    END

    STATICTEXT 98, "Produkt:", 20, 60, 75, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "Product Label"
    END

    LISTBUTTON 99, "", 100, 55, 270, 160
    BEGIN
        NAME "Product"
        SELECTIONHEIGHT 25
    END

    STATICTEXT 100, "Plattform:", 20, 90, 75, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "Platform Label"
    END

    LISTBUTTON 101, "", 100, 85, 270, 160
    BEGIN
        NAME "Platform"
        SELECTIONHEIGHT 25
    END

    STATICTEXT 102, "O/S Level:", 20, 120, 75, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "O/S Label"
    END

    LISTBUTTON 103, "", 100, 115, 270, 160
    BEGIN
        NAME "oslevel"
        SELECTIONHEIGHT 25
    END

    STATICTEXT 104, "Revision:", 20, 150, 75, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "Revision Label"
    END

    LISTBUTTON 105, "", 100, 145, 270, 160
    BEGIN
        NAME "Revision"
        SELECTIONHEIGHT 25
    END

    STATICTEXT 111, "Typ:", 20, 180, 75, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "License Label"
    END

    LISTBUTTON 112, "", 100, 175, 270, 160
    BEGIN
        NAME "License"
        SELECTIONHEIGHT 25
    END

    STATICTEXT 113, "Artikel:", 20, 215, 75, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "Item Number Label"
    END

    STATICTEXT 117, "", 100, 215, 270, 25
    BEGIN
        NAME "Item Number"
    END

    STATICTEXT 119, "", 30, 250, 470, 35
    BEGIN
        NAME "Description"
    END

    INPUTN 121, "1", 710, 35, 60, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Quantity"
        PASSENTER
        PASSTAB
        NOT INSERTMODE
    END

    INPUTN 124, "1", 710, 70, 60, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Users"
        PASSENTER
        PASSTAB
        NOT INSERTMODE
    END

    STATICTEXT 130, "Bestell- Nummer:", 105, 465, 120, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "Reference Label"
    END

    INPUTE 240, "", 230, 460, 120, 25
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

    BUTTON 1, "in den &Warenkorb", 510, 460, 120, 25
    BEGIN
        NAME "Accept"
        SHORTCUE "Add this purchase to shopping cart"
    END

    BUTTON 2, "&Hauptmenu", 650, 460, 120, 25
    BEGIN
        NAME "Close"
    END

    BUTTON 200, "neu &berechnen", 370, 460, 120, 25
    BEGIN
        NAME "Recalculate"
    END

    CHECKBOX 202, "SAM Plan:", 600, 140, 125, 25
    BEGIN
        NAME "Sam Standard"
        TEXTLEFT
        JUSTIFICATION 32768
    END

    INPUTN 126, "", 710, 105, 60, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "users2"
        PASSENTER
        PASSTAB
        NOT INSERTMODE
    END

    STATICTEXT 206, "Extended Users:", 575, 75, 130, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "users_lbl"
    END

    STATICTEXT 207, "Standard Users:", 575, 110, 130, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "users2_lbl"
    END

    STATICTEXT 212, "Menge:", 575, 40, 130, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "quantity_lbl"
    END

    EDIT 140, "", 650, 410, 120, 25
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "Price"
        READONLY
    END

    STATICTEXT 211, "Ihr Preis:", 525, 415, 120, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "pricelbl"
    END

    CUSTOMEDIT 122, "", 10, 300, 500, 135
    BEGIN
        CLIENTEDGE
        HSCROLLBAR
        NAME "comments"
        READONLY
        VSCROLLBAR
        WORDWRAP
    END

    INPUTD 204, "", 605, 205, 120, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "renew_dt"
        PASSENTER
        PASSTAB
    END

    STATICTEXT 231, "SAM Fälligkeitsdatum", 605, 175, 165, 25
    BEGIN
        JUSTIFICATION 16384
        NAME "renew_dt_lbl"
    END

    TOOLBUTTON 232, "", 730, 200, 40, 40
    BEGIN
        NAME "renew_dt_btn"
        SHORTCUE "View calendar/Select date"
    END

    CHECKBOX 233, "Runtime:", 600, 250, 125, 25
    BEGIN
        NAME "runtime"
        SHORTCUE "Does not allow user access to console mode."
        TEXTLEFT
        JUSTIFICATION 32768
    END

    EDIT 241, "", 650, 375, 120, 25
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "Listprice"
        READONLY
    END

    STATICTEXT 242, "Listenpreis:", 525, 380, 120, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "listpricelbl"
    END

    CHECKBOX 234, "Virtual:", 600, 285, 125, 25
    BEGIN
        NAME "virtualFlag"
        TEXTLEFT
        JUSTIFICATION 32768
    END

    STATICTEXT 106, "BASIS b-commerce System Review or Purchase New Item", 0, 0, 790, 25
    BEGIN
        FONT "Dialog" 14,bold
        JUSTIFICATION 16384
        NAME "headertext"
    END

    LINE 1000, 10, 450, 760, 0
    BEGIN
        NAME "Horizontal Line"
    END

END

WINDOW 105 "Shopping Cart" 0 0 790 500
BEGIN
    NOT CLOSEBOX
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Cart"
    NOTITLEBAR
    NOT SIZABLE
    GRID 99, "", 30, 240, 530, 140
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

    BUTTON 100, "&E-Mail", 105, 460, 120, 25
    BEGIN
        NAME "Email"
        SHORTCUE "Will e-mail an itemized list of shopping cart contents for your reference."
    END

    STATICTEXT 105, "Ihr Preis:", 440, 390, 120, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "Subtotal Label"
    END

    STATICTEXT 106, "", 440, 415, 120, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "Subtotal"
    END

    BUTTON 113, "&AddUser/Upgrade", 310, 90, 120, 25
    BEGIN
        NAME "View SN"
        SHORTCUE "View/modify an individual license."
    END

    BUTTON 114, "&Neulizenz", 170, 90, 120, 25
    BEGIN
        NAME "View Item"
        SHORTCUE "Select a new product to purchase."
    END

    LISTBUTTON 116, "", 370, 460, 120, 90
    BEGIN
        NAME "Reference"
    END

    STATICTEXT 117, "Bestell- Nummer:", 230, 465, 140, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "Reference Label"
    END

    BUTTON 2, "&Hauptmenu", 650, 460, 120, 25
    BEGIN
        NAME "Close"
        SHORTCUE "Return to Main"
    END

    BUTTON 118, "&weiter", 510, 460, 120, 25
    BEGIN
        NAME "Checkout"
        SHORTCUE "Proceed with Checkout"
    END

    BUTTON 119, "&Löschen", 440, 205, 120, 25
    BEGIN
        NAME "Delete"
    END

    STATICTEXT 161, "Um eine Position in Ihrem Warenkorb zu ändern, doppelklicken Sie bitte auf die Zeile darunter oder klicken Sie einmal auf die Zeile und dann auf \042Ändern\042. Um eine Position zu löschen, Position einmal anklicken und auf \042Löschen\042 drücken.", 30, 160, 730, 35
    BEGIN
        NAME "Message"
    END

    GROUPBOX 150, "In den Warenkorb", 20, 35, 750, 100
    BEGIN
        NAME "Add to cart"
    END

    STATICTEXT 151, "Hier können Sie neue Artikel kaufen,; bestehende Lizenzen ändern, sowie zusätzliche User kaufen. Update auf neuere Versionen sind ebenfalls möglich.", 30, 55, 730, 30
    BEGIN
        NAME "Add to Cart Message"
    END

    GROUPBOX 160, "Warenkorbänderung", 20, 140, 750, 310
    BEGIN
        NAME "Modify Cart"
    END

    BUTTON 165, "&Upgrade auf BPL", 450, 90, 120, 25
    BEGIN
        NAME "trade_btn"
        SHORTCUE "Allows you to upgrade to BBj or PRO/5 Rev4.x & higher."
    END

    STATICTEXT 166, "", 310, 415, 120, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "listprice"
    END

    STATICTEXT 167, "Listenpreis", 310, 390, 120, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "listprice_lbl"
    END

    STATICTEXT 168, "Zwischensumme:", 185, 415, 120, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "sub_lbl"
    END

    BUTTON 120, "Ändern", 300, 205, 120, 25
    BEGIN
        NAME "EditItem"
    END

    STATICTEXT 101, "BASIS b-commerce System Shopping Cart", 0, 0, 790, 25
    BEGIN
        FONT "Dialog.bold" 14,bold
        JUSTIFICATION 16384
        NAME "headertext"
        NOT WORDWRAP
    END

END

WINDOW 106 "Checkout 1 von 2" 0 0 790 500
BEGIN
    NOT CLOSEBOX
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Checkout 1"
    NOTITLEBAR
    NOT SIZABLE
    STATICTEXT 101, "1. E-Mail:", 470, 65, 60, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "License 1 Label"
    END

    INPUTE 102, "", 535, 60, 215, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "License 1"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    STATICTEXT 103, "2. E-Mail:", 470, 100, 60, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "License 2 Label"
    END

    INPUTE 901, "", 535, 95, 215, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "License 2"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    STATICTEXT 902, "CD-ROMs:", 30, 190, 80, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "Media Label"
    END

    INPUTN 903, "", 115, 185, 60, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        MASK "###"
        NAME "Media"
        PASSENTER
        PASSTAB
        NOT INSERTMODE
    END

    BUTTON 904, "&Reset", 260, 185, 120, 25
    BEGIN
        NAME "Ship Standard"
    END

    BUTTON 905, "&U.S.", 400, 185, 120, 25
    BEGIN
        NAME "Ship USA"
    END

    BUTTON 906, "&International", 540, 185, 120, 25
    BEGIN
        NAME "Ship Intl"
    END

    STATICTEXT 908, "", 30, 260, 340, 25
    BEGIN
        NAME "Bill To Name"
    END

    STATICTEXT 909, "", 30, 285, 340, 25
    BEGIN
        NAME "Bill To Addr1"
    END

    STATICTEXT 910, "", 30, 310, 340, 25
    BEGIN
        NAME "Bill To Addr2"
    END

    STATICTEXT 913, "", 30, 335, 340, 25
    BEGIN
        NAME "Bill To City"
    END

    STATICTEXT 914, "", 30, 360, 340, 25
    BEGIN
        NAME "Bill To State"
    END

    STATICTEXT 915, "", 30, 385, 340, 25
    BEGIN
        NAME "Bill To Zip"
    END

    STATICTEXT 916, "", 30, 410, 340, 25
    BEGIN
        NAME "Bill To Country"
    END

    STATICTEXT 918, "", 415, 260, 340, 25
    BEGIN
        NAME "Ship To Name"
    END

    STATICTEXT 919, "", 415, 285, 340, 25
    BEGIN
        NAME "Ship To Addr1"
    END

    STATICTEXT 920, "", 415, 310, 340, 25
    BEGIN
        NAME "Ship To Addr2"
    END

    STATICTEXT 924, "", 415, 335, 340, 25
    BEGIN
        NAME "Ship To City"
    END

    STATICTEXT 925, "", 415, 360, 340, 25
    BEGIN
        NAME "Ship To State"
    END

    STATICTEXT 926, "", 415, 385, 340, 25
    BEGIN
        NAME "Ship To Zip"
    END

    STATICTEXT 927, "", 415, 410, 340, 25
    BEGIN
        NAME "Ship To Country"
    END

    BUTTON 2, "&zurück", 650, 460, 120, 25
    BEGIN
        NAME "Previous"
        SHORTCUE "Return to Cart"
    END

    BUTTON 1, "&weiter", 510, 460, 120, 25
    BEGIN
        NAME "Next"
        SHORTCUE "Proceed with Checkout"
    END

    GROUPBOX 200, "Produkt CD? (30,00 Euro)", 20, 160, 200, 70
    BEGIN
        NAME "Shipping Control"
    END

    GROUPBOX 907, "Rechnungsinformationen", 20, 235, 365, 205
    BEGIN
        NAME "Billing Group"
    END

    GROUPBOX 917, "Versandinformationen", 405, 235, 365, 205
    BEGIN
        NAME "Shipping Group"
    END

    GROUPBOX 300, "Electronische Lizenzlieferung", 20, 40, 750, 110
    BEGIN
        NAME "License Group"
    END

    STATICTEXT 301, "Eine elektronische Lizenz kann an zwei E-Mailadressen gesendet werden. Falls hier keine Adresse eingegeben ist, wird die Lizenz auf postalischem Weg versandt (EURO 30,00)", 30, 60, 430, 75
    BEGIN
        NAME "License Message"
    END

    GROUPBOX 928, "Ändern der Versandadresse", 240, 160, 450, 70
    BEGIN
        NAME "Shipping Address"
    END

    STATICTEXT 929, "Auf der Produkt-CD sind alle aktuellen Versionen von BBj und PRO/5. Frühere Versionen erhalten Sie unter: basis.cloud/products/downloads.html.", 20, 450, 470, 45
    BEGIN
        FOREGROUNDCOLOR RGB(255,0,0)
        NAME "Static Text"
    END

    STATICTEXT 100, "BASIS b-commerece System Checkout", 0, 0, 790, 25
    BEGIN
        FONT "Dialog.bold" 14,bold
        JUSTIFICATION 16384
        NAME "headertext"
        NOT WORDWRAP
    END

END

WINDOW 107 "Domestic Shipping" 0 0 790 500
BEGIN
    RADIOGROUP 162, 163, 164
    NOT CLOSEBOX
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Ship USA"
    NOTITLEBAR
    NOT SIZABLE
    STATICTEXT 132, "", 30, 70, 340, 25
    BEGIN
        NAME "Bill To Name"
    END

    STATICTEXT 133, "", 30, 105, 340, 25
    BEGIN
        NAME "Bill To Addr1"
    END

    STATICTEXT 134, "", 30, 140, 340, 25
    BEGIN
        NAME "Bill To Addr2"
    END

    STATICTEXT 147, "", 30, 175, 340, 25
    BEGIN
        NAME "Bill To City"
    END

    STATICTEXT 148, "", 30, 210, 340, 25
    BEGIN
        NAME "Bill To State"
    END

    STATICTEXT 149, "", 30, 245, 150, 25
    BEGIN
        NAME "Bill To Zip"
    END

    INPUTE 152, "", 415, 70, 340, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Ship To Name"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    INPUTE 154, "", 415, 105, 340, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Ship To Addr1"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    INPUTE 156, "", 415, 140, 340, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Ship To Addr2"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    INPUTE 159, "", 415, 175, 340, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Ship To City"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    LISTBUTTON 160, "", 415, 210, 340, 150
    BEGIN
        NAME "Ship To State"
        SELECTIONHEIGHT 25
    END

    INPUTE 161, "", 415, 245, 150, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Ship To Zip"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    RADIOBUTTON 162, " 1 Day", 440, 325, 80, 25
    BEGIN
        NAME "One Day"
    END

    RADIOBUTTON 163, " 2 Day", 540, 325, 80, 25
    BEGIN
        NAME "Two Day"
    END

    RADIOBUTTON 164, " 3 Day", 640, 325, 80, 25
    BEGIN
        NAME "Three Day"
    END

    BUTTON 2, "Cancel", 650, 460, 120, 25
    BEGIN
        NAME "Cancel"
        SHORTCUE "Return to Checkout"
    END

    BUTTON 1, "Accept", 510, 460, 120, 25
    BEGIN
        NAME "Accept"
    END

    GROUPBOX 100, "Billing Information", 20, 50, 365, 235
    BEGIN
        NAME "Billing Group"
    END

    GROUPBOX 110, "Shipping Information", 405, 50, 365, 235
    BEGIN
        NAME "Shipping Group"
    END

    GROUPBOX 120, "Delivery Method", 20, 305, 750, 65
    BEGIN
        NAME "Delivery Group"
    END

    STATICTEXT 121, "Note: your order will be shipped on the next business day.", 30, 325, 400, 30
    BEGIN
        NAME "Delivery Message"
    END

    STATICTEXT 101, "BASIS b-commerce System Domestic Shipping", 0, 0, 790, 25
    BEGIN
        FONT "Dialog.bold" 14,bold
        JUSTIFICATION 16384
        NAME "headertext"
        NOT WORDWRAP
    END

END

WINDOW 108 "Rechnungs- und Versandadresse" 0 0 790 500
BEGIN
    NOT CLOSEBOX
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Ship Intl"
    NOTITLEBAR
    NOT SIZABLE
    STATICTEXT 132, "", 30, 90, 340, 25
    BEGIN
        NAME "Bill To Name"
    END

    STATICTEXT 133, "", 30, 125, 340, 25
    BEGIN
        NAME "Bill To Addr1"
    END

    STATICTEXT 134, "", 30, 160, 340, 25
    BEGIN
        NAME "Bill To Addr2"
    END

    STATICTEXT 147, "", 30, 195, 340, 25
    BEGIN
        NAME "Bill To City"
    END

    STATICTEXT 148, "", 30, 230, 340, 25
    BEGIN
        NAME "Bill To State"
    END

    STATICTEXT 149, "", 30, 265, 340, 25
    BEGIN
        NAME "Bill To Zip"
    END

    STATICTEXT 151, "", 30, 300, 340, 25
    BEGIN
        NAME "Bill To Country"
    END

    INPUTE 154, "", 415, 90, 340, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Ship To Name"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    INPUTE 156, "", 415, 125, 340, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Ship To Addr1"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    INPUTE 157, "", 415, 160, 340, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Ship To Addr2"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    INPUTE 160, "", 415, 195, 340, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Ship To City"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    INPUTE 161, "", 415, 230, 340, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Ship To State"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    INPUTE 162, "", 415, 265, 340, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Ship To Zip"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    LISTBUTTON 163, "", 415, 300, 340, 120
    BEGIN
        NAME "Ship To Country"
        SELECTIONHEIGHT 25
    END

    BUTTON 2, "&Abbruch", 650, 460, 120, 25
    BEGIN
        NAME "Cancel"
        SHORTCUE "Return to Checkout"
    END

    BUTTON 1, "&OK", 510, 460, 120, 25
    BEGIN
        NAME "Accept"
    END

    GROUPBOX 110, "Rechnungsadresse", 20, 70, 365, 270
    BEGIN
        NAME "Billing Group"
    END

    GROUPBOX 1000, "Versandadresse", 405, 70, 365, 270
    BEGIN
        NAME "Shipping Group"
    END

    STATICTEXT 100, "BASIS b-commerce System International Shipping", 0, 0, 790, 25
    BEGIN
        FONT "Dialog.bold" 14,bold
        JUSTIFICATION 16384
        NAME "headertext"
        NOT WORDWRAP
    END

END

WINDOW 109 "Checkout 2 von 2" 0 0 790 500
BEGIN
    RADIOGROUP 101, 136
    RADIOGROUP 143, 144, 145
    NOT CLOSEBOX
    EVENTMASK 33554432
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Checkout 2"
    NOTITLEBAR
    NOT SIZABLE
    RADIOBUTTON 101, "auf Rechnung", 50, 60, 110, 25
    BEGIN
        NAME "On Account"
    END

    RADIOBUTTON 136, "Kreditkarte", 405, 60, 100, 25
    BEGIN
        NAME "Credit Card"
    END

    LISTBUTTON 141, "", 415, 120, 300, 150
    BEGIN
        INVISIBLE
        NAME "Credit Card List"
        SELECTIONHEIGHT 25
    END

    RADIOBUTTON 143, "", 415, 120, 23, 20
    BEGIN
        NAME "Visa"
    END

    RADIOBUTTON 144, "", 415, 180, 23, 20
    BEGIN
        NAME "MasterCard"
    END

    RADIOBUTTON 145, "", 415, 240, 23, 20
    BEGIN
        NAME "American Express"
    END

    STATICTEXT 146, "Nummer:", 415, 285, 90, 25
    BEGIN
        NAME "Number Label"
    END

    INPUTE 148, "", 510, 280, 220, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Number"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    STATICTEXT 149, "Name:", 415, 320, 90, 25
    BEGIN
        NAME "Name Label"
    END

    INPUTE 150, "", 510, 315, 220, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Name"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    STATICTEXT 151, "Ablaufdatum:", 415, 355, 90, 25
    BEGIN
        NAME "Expiry Label"
    END

    LISTBUTTON 152, "", 510, 350, 100, 120
    BEGIN
        NAME "Expiry Month"
        SELECTIONHEIGHT 25
    END

    LISTBUTTON 153, "", 620, 350, 80, 120
    BEGIN
        NAME "Expiry Year"
        SELECTIONHEIGHT 25
    END

    CHECKBOX 154, "speichern", 415, 390, 150, 25
    BEGIN
        INVISIBLE
        NAME "Save Credit Card"
    END

    STATICTEXT 156, "Zwischensumme:", 50, 120, 120, 25
    BEGIN
        NAME "Subtotal Label"
    END

    STATICTEXT 157, "", 125, 120, 125, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "Subtotal"
    END

    STATICTEXT 158, "MWST:", 50, 150, 70, 25
    BEGIN
        NAME "Tax Label"
    END

    STATICTEXT 159, "", 125, 150, 125, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "Tax"
    END

    STATICTEXT 160, "Fracht:", 50, 180, 70, 25
    BEGIN
        NAME "Freight Label"
    END

    STATICTEXT 161, "", 125, 180, 125, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "Freight"
    END

    STATICTEXT 162, "Gesamt:", 50, 210, 70, 25
    BEGIN
        NAME "Total Label"
    END

    STATICTEXT 163, "", 125, 210, 125, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "Total"
    END

    BUTTON 165, "&zurück", 350, 460, 120, 25
    BEGIN
        NAME "Previous"
    END

    BUTTON 1, "&kaufen", 490, 460, 120, 25
    BEGIN
        NAME "Buy Now"
    END

    BUTTON 2, "zurück zum &Warenkorb", 630, 460, 140, 25
    BEGIN
        NAME "Return to Cart"
    END

    INPUTE 167, "", 60, 315, 160, 25
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

    GROUPBOX 170, "kaufen", 20, 40, 750, 400
    BEGIN
        NAME "Buy Now Title"
    END

    STATICTEXT 171, "", 525, 60, 230, 25
    BEGIN
        FOREGROUNDCOLOR RGB(255,0,0)
        NAME "Message"
    END

    GROUPBOX 175, "Kontaktname", 40, 365, 200, 60
    BEGIN
        NAME "Contact Title"
    END

    INPUTE 168, "", 60, 385, 160, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Contact"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    STATICTEXT 176, "Listenpreis:", 50, 240, 70, 25
    BEGIN
        NAME "List Label"
    END

    STATICTEXT 177, "", 125, 240, 125, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "List"
    END

    GROUPBOX 135, "Kreditkarte", 405, 95, 345, 330
    BEGIN
        NAME "Credit Card Frame"
    END

    GROUPBOX 155, "Nettobetrag", 40, 95, 345, 180
    BEGIN
        NAME "Order Amount Frame"
    END

    GROUPBOX 169, "Bestellnummer", 40, 295, 200, 60
    BEGIN
        NAME "Reference Title"
    END

    STATICTEXT 100, "BASIS b-commerce System Checkout", 0, 0, 790, 25
    BEGIN
        FONT "Dialog.bold" 14,bold
        JUSTIFICATION 16384
        NAME "headertext"
        NOT WORDWRAP
    END

    RADIOBUTTON 102, "Split Payment", 613, 120, 120, 25
    BEGIN
        NAME "SplitPaymentBtn"
    END

    INPUTE 103, "", 510, 385, 220, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "ccAmount1"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    STATICTEXT 104, "Paying:", 415, 390, 90, 25
    BEGIN
        NAME "ccAmount1Label"
    END

    GROUPBOX 178, "Credit Card 2", 40, 95, 345, 330
    BEGIN
        DISABLED
        INVISIBLE
        NAME "Credit Card 2 Group"
    END

    INPUTE 105, "", 145, 385, 220, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        INVISIBLE
        LONGCUE "Adjust the amount paid with the first credit card and this amount will change to pay the balance."
        NAME "ccAmount2"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
        READONLY
        SHORTCUE "Adjust the amount paid with the first credit card and this amount will change to pay the balance."
    END

    STATICTEXT 106, "Paying:", 45, 390, 90, 25
    BEGIN
        INVISIBLE
        NAME "ccAmount2Label"
    END

    INPUTE 107, "", 145, 280, 220, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        INVISIBLE
        NAME "Number2"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    INPUTE 108, "", 145, 315, 220, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        INVISIBLE
        NAME "Name2"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    STATICTEXT 110, "Number:", 50, 285, 90, 25
    BEGIN
        INVISIBLE
        NAME "Number Label 2"
    END

    STATICTEXT 111, "Name:", 50, 320, 90, 25
    BEGIN
        INVISIBLE
        NAME "Name Label 2"
    END

    STATICTEXT 112, "Expiration:", 50, 355, 90, 25
    BEGIN
        INVISIBLE
        NAME "Expiry Label 2"
    END

    LISTBUTTON 113, "", 145, 355, 100, 120
    BEGIN
        INVISIBLE
        NAME "Expiry Month 2"
        SELECTIONHEIGHT 25
    END

    LISTBUTTON 114, "", 255, 355, 80, 120
    BEGIN
        INVISIBLE
        NAME "Expiry Year 2"
        SELECTIONHEIGHT 25
        OPENWIDTH 60
    END

    RADIOBUTTON 115, "", 50, 120, 23, 20
    BEGIN
        INVISIBLE
        NAME "Visa 2"
    END

    RADIOBUTTON 116, "", 50, 180, 23, 20
    BEGIN
        INVISIBLE
        NAME "MasterCard 2"
    END

    RADIOBUTTON 117, "", 50, 240, 23, 20
    BEGIN
        INVISIBLE
        NAME "American Express 2"
    END

END

WINDOW 110 "Kontoinformationen" 0 0 790 500
BEGIN
    NOT CLOSEBOX
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Account"
    NOTITLEBAR
    NOT SIZABLE
    STATICTEXT 110, "1. E-Mail Adresse:", 30, 95, 160, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "Email Address Label"
    END

    INPUTE 3, "", 200, 90, 460, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Email"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    STATICTEXT 111, "Passwort:", 30, 205, 160, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "Password Label"
    END

    EDIT 5, "", 200, 200, 140, 25
    BEGIN
        CLIENTEDGE
        NAME "Password"
        PASSWORDENTRY
        NOT DRAGENABLED
    END

    STATICTEXT 112, "Passwort bestätigen:", 30, 235, 160, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "Confirm Password Label"
    END

    EDIT 100, "", 200, 230, 140, 25
    BEGIN
        CLIENTEDGE
        NAME "Confirm Password"
        PASSWORDENTRY
        NOT DRAGENABLED
    END

    GRID 109, "", 9, 404, 460, 100
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
        INVISIBLE
        MAXCOLS 2147483647
        NAME "Grid"
        ROWS 3
        USERSIZE
        VERTLINES
        VSCROLLBAR
    END

    STATICTEXT 113, "Achtung: Das Passwort muss mindestens 10 Stellen lang sein, Groß- und Kleinschreibung, Zahlen und Sonderzeichen ( ~!@#$%^&*()+=) enthalten.", 350, 205, 400, 50
    BEGIN
        NAME "Note"
    END

    STATICTEXT 120, "2. E-Mail Adresse:", 30, 125, 160, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "Email Address Label2"
    END

    INPUTE 4, "", 200, 120, 460, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Email2"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    BUTTON 108, "&Hauptmenu", 650, 460, 120, 25
    BEGIN
        NAME "Cancel"
        SHORTCUE "Return to Main"
    END

    BUTTON 103, "&Neue Kreditkarte", 376, 372, 90, 25
    BEGIN
        INVISIBLE
        NAME "New CC"
    END

    BUTTON 101, "&OK", 200, 280, 140, 25
    BEGIN
        NAME "Accept"
        SHORTCUE "Update Account Information"
    END

    STATICTEXT 121, "In die Tabelle doppelklicken oder einmal auf “Kreditkarte bearbeiten“ klicken, um die Informationen der ausgewählten Kreditkarte zu bearbeiten.", 11, 367, 350, 30
    BEGIN
        INVISIBLE
        NAME "Message"
    END

    BUTTON 104, "&Reports", 210, 460, 120, 25
    BEGIN
        NAME "Email_rpt"
        SHORTCUE "Select & e-mail your Active SN or Aged AR report to you."
    END

    BUTTON 105, "&Rechnung", 350, 460, 120, 25
    BEGIN
        NAME "invoice"
        SHORTCUE "Review/Pay Invoices"
    END

    BUTTON 106, "Angaben zum Endkunden", 490, 460, 140, 25
    BEGIN
        NAME "EndUserData"
    END

    BUTTON 102, "Kreditkarte bearbeiten", 376, 347, 90, 25
    BEGIN
        INVISIBLE
        NAME "EditCC"
    END

    BUTTON 114, "Lizenzupdate", 70, 460, 120, 25
    BEGIN
        INVISIBLE
        NAME "btnLicenseUpdate"
    END

    EDIT 1, "", 200, 60, 120, 25
    BEGIN
        CLIENTEDGE
        NAME "firstName"
    END

    STATICTEXT 130, "First Name:", 30, 65, 160, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "firstNameLabel"
    END

    STATICTEXT 131, "Last Name:", 330, 65, 100, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "lastNameLabel"
    END

    EDIT 2, "", 440, 60, 220, 25
    BEGIN
        CLIENTEDGE
        NAME "lastName"
    END

    STATICTEXT 115, "BASIS b-commerce System Account Information", 0, 0, 790, 25
    BEGIN
        FONT "Dialog" 14,bold
        JUSTIFICATION 16384
        NAME "headertext"
    END

    GROUPBOX 116, "Name and Email Addresses", 20, 40, 750, 120
    BEGIN
        NAME "nameEmailAddresses"
    END

    GROUPBOX 117, "Account Password", 20, 180, 750, 90
    BEGIN
        NAME "Group Control"
    END

END

WINDOW 111 "Seriennummern Historie" 0 0 790 500
BEGIN
    NOT CLOSEBOX
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "History"
    NOTITLEBAR
    NOT SIZABLE
    STATICTEXT 101, "Seriennummer:", 85, 70, 120, 25
    BEGIN
        NAME "Serial Number Label"
    END

    STATICTEXT 102, "", 215, 70, 120, 20
    BEGIN
        NAME "Serial Number"
    END

    STATICTEXT 105, "Artikel:", 85, 105, 120, 25
    BEGIN
        NAME "Item Number Label"
    END

    STATICTEXT 106, "", 215, 105, 380, 20
    BEGIN
        NAME "Item Number"
    END

    STATICTEXT 107, "Beschreibung:", 85, 140, 120, 20
    BEGIN
        NAME "Description Label"
    END

    STATICTEXT 108, "", 215, 140, 480, 50
    BEGIN
        NAME "Description"
    END

    GRID 110, "", 0, 0, 500, 220
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

    BUTTON 2, "&zurück", 650, 460, 120, 25
    BEGIN
        NAME "Close"
        SHORTCUE "Return to View Licensed Product"
    END

    BUTTON 113, "Links &anzeigen", 85, 30, 120, 25
    BEGIN
        NAME "Clients"
    END

    TABCONTROL 114, "", 85, 200, 620, 240
    BEGIN
        AUTOMANAGEMENT
        INITIALTAB 1
        NAME "Tab"
        TAB "     Transaktionshistorie     " 0 110
        TAB "          Lizenz Historie          " 0 115
    END

    LISTBOX 115, "", 0, 0, 615, 213
    BEGIN
        CLIENTEDGE
        FONT "Arial Monospaced" 8
        MULTISELECT
        NAME "List Box"
    END

    BUTTON 116, "&Lizenz Reset", 235, 30, 120, 25
    BEGIN
        DISABLED
        NAME "Reset"
        SHORTCUE "Reset license status to zero"
    END

    LISTBUTTON 117, "", 375, 30, 200, 120
    BEGIN
        NAME "reset_reason"
        OPENWIDTH 200
    END

    STATICTEXT 100, "BASIS b-commerce System View Serial Number History", 0, 0, 790, 25
    BEGIN
        FONT "Dialog" 14,bold
        JUSTIFICATION 16384
        NAME "headertext"
    END

END

WINDOW 112 "Server Linked Clients" 0 0 790 500
BEGIN
    NOT CLOSEBOX
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Clients"
    NOTITLEBAR
    NOT SIZABLE
    BUTTON 2, "&zurück", 650, 460, 120, 25
    BEGIN
        NAME "Close"
        SHORTCUE "Return to View Licensed Product"
    END

    GRID 100, "", 30, 200, 720, 180
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

    STATICTEXT 101, "BASIS b-commerce System Client Server Links", 0, 0, 790, 25
    BEGIN
        FONT "Dialog" 14,bold
        JUSTIFICATION 16384
        NAME "headertext"
    END

    STATICTEXT 103, "Seriennummer:", 30, 60, 105, 25
    BEGIN
        NAME "Serial Number Label"
    END

    STATICTEXT 104, "", 135, 60, 400, 25
    BEGIN
        NAME "Serial Number"
    END

    STATICTEXT 105, "Artikelnummer:", 30, 90, 105, 25
    BEGIN
        NAME "Item Number Label"
    END

    STATICTEXT 106, "", 135, 90, 400, 25
    BEGIN
        NAME "Item Number"
    END

    STATICTEXT 107, "Beschreibung:", 30, 120, 105, 25
    BEGIN
        NAME "Description Label"
    END

    STATICTEXT 108, "", 135, 120, 400, 25
    BEGIN
        NAME "Description"
    END

    STATICTEXT 109, "", 20, 450, 600, 30
    BEGIN
        NAME "Message"
    END

    STATICTEXT 110, "Diese Informationen werden nur zur Information gespeichert. BASIS verwaltet bzw. nutzt diese Server/Client Links nicht.", 545, 60, 210, 85
    BEGIN
        NAME "Disclaimer"
    END

    GROUPBOX 200, "Server", 20, 40, 750, 120
    BEGIN
        NAME "Server Group"
    END

    GROUPBOX 201, "Clients", 20, 180, 750, 210
    BEGIN
        NAME "Client Group"
    END

END

WINDOW 113 "Seriennummernsuche" 0 0 790 500
BEGIN
    NOT CLOSEBOX
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Find SN"
    NOTITLEBAR
    NOT SIZABLE
    STATICTEXT 99, "nächste Seriennummer:", 20, 40, 180, 20
    BEGIN
        NAME "Serial Number Label"
    END

    INPUTE 100, "", 210, 35, 140, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Serial Number"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    BUTTON 1, "&Weitersuchen", 650, 35, 120, 25
    BEGIN
        NAME "Next"
    END

    STATICTEXT 101, "wie viele anzeigen?", 20, 70, 130, 20
    BEGIN
        NAME "Limit Label"
    END

    INPUTN 106, "20", 210, 65, 50, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Limit"
        PASSENTER
        PASSTAB
        NOT INSERTMODE
    END

    CHECKBOX 108, "Nur &aktive Lizenzen anzeigen?", 280, 65, 220, 25
    BEGIN
        CHECKED
        NAME "Active Only"
    END

    BUTTON 110, "&Rückwärtssuche", 510, 35, 120, 25
    BEGIN
        CLIENTEDGE
        NAME "Previous"
    END

    GRID 111, "", 20, 117, 750, 333
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
        ROWS 14
        USERSIZE
        VERTLINES
        VSCROLLBAR
    END

    BUTTON 2, "&zurück", 650, 460, 120, 25
    BEGIN
        NAME "Close"
        SHORTCUE "Return to View Licensed Product"
    END

    STATICTEXT 112, "Details anzeigen durch Doppelklick in die Liste, oder klicken Sie auf ‚SN wählen.", 20, 465, 485, 30
    BEGIN
        JUSTIFICATION 32768
        NAME "Message"
    END

    BUTTON 102, "SN wählen", 510, 460, 120, 25
    BEGIN
        NAME "SelectSN"
    END

    STATICTEXT 103, "BASIS b-commerce System Find Serial Number", 0, 0, 790, 25
    BEGIN
        FONT "Dialog" 14,bold
        JUSTIFICATION 16384
        NAME "headertext"
    END

END

WINDOW 114 "Kreditkarte" 0 0 790 500
BEGIN
    RADIOGROUP 103, 104, 105
    NOT CLOSEBOX
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Credit Card"
    NOTITLEBAR
    NOT SIZABLE
    RADIOBUTTON 103, "", 55, 90, 26, 25
    BEGIN
        NAME "Visa"
    END

    RADIOBUTTON 104, "", 55, 130, 26, 25
    BEGIN
        NAME "MasterCard"
    END

    RADIOBUTTON 105, "", 55, 175, 26, 25
    BEGIN
        NAME "American Express"
    END

    STATICTEXT 106, "Kartennummer:", 220, 95, 120, 25
    BEGIN
        NAME "Number Label"
    END

    INPUTE 107, "", 345, 90, 250, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Number"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    STATICTEXT 108, "Name auf der Karte:", 220, 135, 120, 25
    BEGIN
        NAME "Name Label"
    END

    INPUTE 109, "", 345, 130, 250, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Name"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    STATICTEXT 110, "Ablaufdatum:", 220, 180, 90, 25
    BEGIN
        NAME "Expiry Label"
    END

    LISTBUTTON 111, "", 345, 175, 120, 150
    BEGIN
        NAME "Expiry Month"
        SELECTIONHEIGHT 25
    END

    LISTBUTTON 112, "", 475, 175, 80, 150
    BEGIN
        NAME "Expiry Year"
        SELECTIONHEIGHT 25
    END

    BUTTON 200, "&Aktualisieren", 510, 460, 120, 25
    BEGIN
        NAME "Update"
    END

    BUTTON 201, "&Löschen", 370, 460, 120, 25
    BEGIN
        NAME "Delete"
    END

    BUTTON 2, "&zurück", 650, 460, 120, 25
    BEGIN
        NAME "Cancel"
        SHORTCUE "Return to Account"
    END

    GROUPBOX 100, "Typ", 40, 70, 150, 140
    BEGIN
        NAME "Credit Card Group"
    END

    GROUPBOX 101, "Karteninformation", 210, 70, 400, 140
    BEGIN
        NAME "Group Control"
    END

    GROUPBOX 202, "Kreditkarten Details", 20, 50, 750, 180
    BEGIN
        NAME "Credit Card Details"
    END

    STATICTEXT 102, "BASIS b-commerce System Credit Cards", 0, 0, 790, 25
    BEGIN
        FONT "Dialog.bold" 14,bold
        JUSTIFICATION 16384
        NAME "headertext"
        NOT WORDWRAP
    END

END

WINDOW 116 "Freischaltung" 0 0 790 300
BEGIN
    NOT CLOSEBOX
    DIALOGBEHAVIOR
    DIALOGBORDER
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Reset License"
    NOT SIZABLE
    BUTTON 1, "&Ja", 265, 180, 120, 25
    BEGIN
        NAME "OK_btn"
    END

    BUTTON 2, "&Nein", 405, 180, 120, 25
    BEGIN
        NAME "cancel"
    END

    STATICTEXT 102, "Falls Sie diese Lizenz freischalten lassen möchten, wählen Sie bitte in der untenstehenden Liste einen Grund aus. BASIS Europe Distribution GmbH wird über diese Freischaltung unterrichtet.", 20, 35, 750, 55
    BEGIN
        NAME "Static Text"
    END

    LISTBUTTON 103, "", 315, 100, 160, 120
    BEGIN
        NAME "reset_reason"
    END

    STATICTEXT 104, "Grund für die Freischaltung:", 190, 105, 120, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "rreason_txt"
    END

    STATICTEXT 105, "Möchten Sie fortfahren?", 195, 145, 400, 20
    BEGIN
        JUSTIFICATION 16384
        NAME "proceed_txt"
    END

    STATICTEXT 100, "BASIS b-commerce System Reset License", 0, 0, 790, 25
    BEGIN
        FONT "Dialog.bold" 14,bold
        JUSTIFICATION 16384
        NAME "headertext"
    END

END

WINDOW 117 "Auswahl von Seriennummern" 0 0 790 500
BEGIN
    NOT CLOSEBOX
    EVENTMASK 1128269312
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Trade Select"
    NOTITLEBAR
    NOT SIZABLE
    LISTBOX 100, "", 175, 160, 150, 288
    BEGIN
        CLIENTEDGE
        MULTISELECT
        NAME "available_sn_lbox"
    END

    LISTBOX 101, "", 465, 160, 150, 288
    BEGIN
        CLIENTEDGE
        MULTISELECT
        NAME "selected_sn_lbox"
    END

    BUTTON 104, "&hin&zufügen >", 335, 160, 120, 25
    BEGIN
        NAME "add_btn"
    END

    BUTTON 105, "< &entfernen", 335, 195, 120, 25
    BEGIN
        NAME "remove_btn"
    END

    BUTTON 107, "&weiter", 335, 460, 120, 25
    BEGIN
        NAME "exchange_btn"
    END

    BUTTON 106, "<< &alle entfernen", 335, 230, 120, 25
    BEGIN
        NAME "remove_all_btn"
    END

    BUTTON 109, "&Hauptmenu", 650, 460, 120, 25
    BEGIN
        NAME "cancel_btn"
    END

    STATICTEXT 110, "zum nächsten Schritt", 80, 460, 250, 50
    BEGIN
        JUSTIFICATION 32768
        NAME "exchange_txt"
    END

    STATICTEXT 113, "", 180, 75, 430, 45
    BEGIN
        NAME "selected_desc"
    END

    STATICTEXT 114, "Seriennummer", 140, 40, 100, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "starting_sn_text"
    END

    EDIT 115, "", 245, 35, 120, 25
    BEGIN
        CLIENTEDGE
        NAME "starting_sn"
    END

    STATICTEXT 116, "verfügbare Seriennummern", 175, 135, 170, 25
    BEGIN
        NAME "Static Text"
    END

    STATICTEXT 117, "ausgewählte Seriennummern", 465, 135, 190, 25
    BEGIN
        NAME "Static Text"
    END

    BUTTON 1, "suche &nächste", 500, 35, 120, 25
    BEGIN
        NAME "scan_forward_btn"
    END

    BUTTON 119, "suche &vorherige", 375, 35, 120, 25
    BEGIN
        NAME "scan_back_btn"
    END

    GROUPBOX 120, "", 170, 65, 450, 60
    BEGIN
        NAME "selected_desc_ctl"
    END

    STATICTEXT 121, "Abbruch und zurück zum Hauptmenu", 465, 460, 180, 30
    BEGIN
        JUSTIFICATION 32768
        NAME "cancel_txt"
    END

    STATICTEXT 102, "BASIS b-commerce System Trade Select", 0, 0, 790, 25
    BEGIN
        FONT "Dialog" 14,bold
        JUSTIFICATION 16384
        NAME "headertext"
    END

END

WINDOW 118 "Upgrade ausgewählter Lizenzen" 0 0 790 500
BEGIN
    NOT CLOSEBOX
    EVENTMASK 41943040
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Trade"
    NOTITLEBAR
    NOT SIZABLE
    GROUPBOX 106, "Neues Produkt", 400, 35, 300, 160
    BEGIN
        NAME "New Product"
    END

    LISTBUTTON 118, "", 420, 55, 250, 150
    BEGIN
        NAME "Product"
    END

    LISTBUTTON 127, "", 420, 80, 250, 150
    BEGIN
        NAME "Platform"
    END

    LISTBUTTON 135, "", 420, 105, 250, 150
    BEGIN
        NAME "OSLevel"
    END

    LISTBUTTON 138, "", 420, 130, 250, 150
    BEGIN
        NAME "Revision"
    END

    LISTBUTTON 141, "", 420, 155, 250, 150
    BEGIN
        NAME "License"
    END

    STATICTEXT 151, "Ihr Preis:", 525, 430, 120, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "Price Label"
    END

    BUTTON 1, "in den &Warenkorb", 370, 460, 120, 25
    BEGIN
        NAME "Accept"
    END

    BUTTON 2, "&Neuauswahl", 510, 460, 120, 25
    BEGIN
        NAME "Cancel"
    END

    STATICTEXT 154, "BestellNummer:", 215, 430, 150, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "Reference Label"
    END

    INPUTE 155, "", 370, 425, 120, 25
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

    BUTTON 200, "neu &berechnen", 230, 460, 120, 25
    BEGIN
        NAME "Recalculate"
    END

    STATICTEXT 1003, "Extended Users:", 465, 220, 150, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "ent_users_lbl"
    END

    STATICTEXT 1009, "ausgewählte Seriennummern", 20, 40, 300, 25
    BEGIN
        NAME "Static Text"
    END

    STATICTEXT 1011, "Kalkulation", 20, 225, 300, 25
    BEGIN
        NAME "detail pricing label"
    END

    CHECKBOX 1008, " SAM Plan:", 515, 285, 120, 25
    BEGIN
        NAME "SAM Standard"
        TEXTLEFT
        JUSTIFICATION 32768
    END

    GROUPBOX 1014, "", 400, 200, 300, 185
    BEGIN
        NAME "Group Control"
    END

    EDIT 152, "", 650, 425, 120, 25
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "Price"
        READONLY
    END

    EDIT 142, "", 620, 215, 50, 25
    BEGIN
        CLIENTEDGE
        NAME "ent_users"
    END

    CUSTOMEDIT 1010, "", 20, 250, 300, 135
    BEGIN
        CLIENTEDGE
        HSCROLLBAR
        NAME "comments"
        READONLY
        VSCROLLBAR
        WORDWRAP
    END

    CUSTOMEDIT 1005, "", 20, 65, 300, 130
    BEGIN
        CLIENTEDGE
        HSCROLLBAR
        NAME "selected_sn_lbox"
        READONLY
        VSCROLLBAR
    END

    INPUTD 145, "", 545, 320, 90, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "renew_dt"
        PASSENTER
        PASSTAB
    END

    TOOLBUTTON 146, "", 640, 315, 30, 30
    BEGIN
        NAME "renew_dt_btn"
        SHORTCUE "View calendar/Select date"
    END

    STATICTEXT 144, "SAM Fälligkeitsdatum", 405, 325, 135, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "renew_dt_lbl"
    END

    EDIT 143, "", 620, 250, 50, 25
    BEGIN
        CLIENTEDGE
        NAME "std_users"
    END

    STATICTEXT 1004, "Standard Users:", 465, 255, 150, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "std_users_lbl"
    END

    BUTTON 1015, "&Hauptmenu", 650, 460, 120, 25
    BEGIN
        NAME "Main"
    END

    CHECKBOX 147, "Runtime:", 515, 353, 120, 25
    BEGIN
        NAME "runtime"
        SHORTCUE "Does not allow access to console mode."
        TEXTLEFT
        JUSTIFICATION 32768
    END

    EDIT 1017, "", 650, 395, 120, 25
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "listprice"
        READONLY
    END

    STATICTEXT 1018, "Listenpreis:", 525, 400, 120, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "listprice_lbl"
    END

    STATICTEXT 100, "BASIS b-commerce System Upgrade Selected Licenses", 0, 0, 790, 25
    BEGIN
        FONT "Dialog.bold" 14,bold
        JUSTIFICATION 16384
        NAME "headertext"
        NOT WORDWRAP
    END

END

WINDOW 119 "Report auswählen" 0 0 790 350
BEGIN
    RADIOGROUP 104, 106, 105
    NOT CLOSEBOX
    DIALOGBEHAVIOR
    DIALOGBORDER
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Send Rpt"
    NOTITLEBAR
    NOT SIZABLE
    BUTTON 1, "&Ok", 20, 310, 90, 25
    BEGIN
        NAME "Ok"
    END

    BUTTON 2, "&Abbruch", 680, 310, 90, 25
    BEGIN
        NAME "Cancel"
    END

    INPUTE 101, "", 50, 125, 289, 25
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Email"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    STATICTEXT 102, "Report der aktiven Seriennummern wird an die folgende E-Mail-Adresse gesendet:", 50, 95, 600, 25
    BEGIN
        NAME "Send_Info"
    END

    STATICTEXT 103, "", 21, 180, 309, 25
    BEGIN
        FOREGROUNDCOLOR RGB(255,0,0)
        NAME "Progress_Info"
    END

    RADIOBUTTON 104, "Report der aktiven Seriennummern", 30, 65, 300, 25
    BEGIN
        NAME "sn_rpt"
    END

    RADIOBUTTON 105, "Expired Perpetual License Report", 30, 170, 300, 25
    BEGIN
        NAME "ep_rpt"
    END

    RADIOBUTTON 106, "Report aller offenen Rechnungen", 30, 235, 300, 25
    BEGIN
        NAME "ar_rpt"
    END

    STATICTEXT 100, "Der Report Offene Posten wird sofort in Ihrem Browser erzeugt.", 50, 265, 600, 25
    BEGIN
        NAME "Static Text"
    END

    STATICTEXT 107, "The Expired Perpetual License report will be  sent to the above E-mail Address.", 50, 200, 600, 25
    BEGIN
        NAME "Static Text"
    END

    STATICTEXT 108, "BASIS b-commerce Reports", 0, 0, 790, 25
    BEGIN
        FONT "Dialog" 14,bold
        JUSTIFICATION 16384
        NAME "headerText2"
    END

    GROUPBOX 109, "Select Report", 20, 40, 750, 260
    BEGIN
        NAME "Group Control"
    END

END

WINDOW 120 "Erneuern" 0 0 790 500
BEGIN
    NOT CLOSEBOX
    DIALOGBORDER
    EVENTMASK 12582912
    KEYBOARDNAVIGATION
    NAME "Renewal"
    NOTITLEBAR
    NOT SIZABLE
    CUSTOMEDIT 100, "", 195, 120, 400, 100
    BEGIN
        CLIENTEDGE
        HSCROLLBAR
        NAME "comments"
        READONLY
        VSCROLLBAR
        WORDWRAP
    END

    INPUTE 130, "", 315, 310, 120, 25
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

    STATICTEXT 129, "BestellNummer", 170, 315, 135, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "Reference Label"
    END

    EDIT 126, "", 315, 240, 120, 25
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "listprice"
        READONLY
    END

    EDIT 128, "", 315, 275, 120, 25
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "Price"
        READONLY
    END

    STATICTEXT 125, "Listenpreis", 220, 245, 85, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "listprice_lbl"
    END

    STATICTEXT 127, "Ihr Preis", 220, 280, 85, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "price_lbl"
    END

    BUTTON 1, "in &Warenkorb", 315, 345, 120, 25
    BEGIN
        NAME "Accept"
    END

    BUTTON 2, "&Abbruch", 455, 345, 120, 25
    BEGIN
        NAME "cancel"
    END

    STATICTEXT 131, "Seriennummer", 220, 35, 85, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "sn_lbl"
    END

    EDIT 132, "", 315, 30, 90, 25
    BEGIN
        CLIENTEDGE
        NAME "sn"
        READONLY
    END

    STATICTEXT 133, "Fälligkeit", 220, 80, 85, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "dt_lbl"
    END

    EDIT 136, "", 495, 30, 40, 25
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 16384
        NAME "rev"
        READONLY
    END

    STATICTEXT 135, "Revision", 415, 35, 70, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "rev_lbl"
    END

    INPUTD 134, "", 315, 75, 90, 25
    BEGIN
        CLIENTEDGE
        DISABLED
        HIGHLIGHT
        NAME "renew_dt"
        PASSENTER
        PASSTAB
    END

    TOOLBUTTON 137, "", 415, 72, 30, 30
    BEGIN
        INVISIBLE
        NAME "renew_dt_btn"
        SHORTCUE "View calendar/Select date"
    END

    STATICTEXT 101, "BASIS b-commerece System Renewal", 0, 0, 790, 25
    BEGIN
        FONT "Dialog" 14,bold
        JUSTIFICATION 16384
        NAME "headertext"
    END

END

WINDOW 121 "Window" 0 0 790 500
BEGIN
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "blank"
    NOTITLEBAR
    STATICTEXT 100, "BASIS b-commerce System", 0, 0, 790, 25
    BEGIN
        FONT "Dialog" 14,bold
        JUSTIFICATION 16384
        NAME "Static Text"
    END

END

WINDOW 115 "Serial Number Features" 0 0 790 500
BEGIN
    NOT CLOSEBOX
    ENTERASTAB
    EVENTMASK 0
    ICON ""
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT MAXIMIZABLE
    NAME "serialNbrFeatures"
    NOTITLEBAR
    NOT SIZABLE
    STATICTEXT 100, "BASIS b-commerece System License Features", 0, 0, 790, 25
    BEGIN
        FONT "Dialog" 14,bold
        JUSTIFICATION 16384
        NAME "headertext"
    END

    BUTTON 101, "Return", 640, 450, 120, 25
    BEGIN
        NAME "Close"
        SHORTCUE "Return to Main"
    END

    GRID 102, "", 30, 80, 730, 360
    BEGIN
        NOT READONLY
        COLUMNHEAD 25, 104
        COLUMNS 5
        GRIDCOLTITLE 0, "Feature"
        GRIDCOLTITLE 1, "Feature Rev"
        GRIDCOLTITLE 2, "Product Code"
        GRIDCOLTITLE 3, "Expire on Date"
        GRIDCOLTITLE 4, "Users"
        GRIDCOLWIDTH 0, 150
        GRIDCOLWIDTH 1, 100
        GRIDCOLWIDTH 2, 100
        GRIDCOLWIDTH 3, 150
        GRIDCOLWIDTH 4, 150
        HORIZLINES
        MAXCOLS 2147483647
        NAME "featureGrid"
        ROWS 100
        USERSIZE
        VERTLINES
        VSCROLLBAR
    END

    EDIT 103, "", 140, 35, 120, 25
    BEGIN
        MAXLENGTH 32767
        NAME "vfSerialNbr"
        READONLY
        SPELLCHECKED
        NOT DRAGENABLED
    END

    STATICTEXT 105, "Serial Number:", 40, 39, 90, 25
    BEGIN
        NAME "vfSeriaNbrLbl"
        NOT WORDWRAP
    END

END

