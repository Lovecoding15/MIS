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
    STATICTEXT 101, "Benvenuto nel b-commerce", 180, 130, 177, 20
    BEGIN
        JUSTIFICATION 16384
        NAME "Welcome"
    END

    STATICTEXT 102, "Codice cliente:", 142, 230, 98, 25
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

    STATICTEXT 104, "Password:", 165, 260, 75, 25
    BEGIN
        NAME "Password Label"
    END

    BUTTON 1, "&Login", 390, 360, 90, 25
    BEGIN
        NAME "Login"
    END

    BUTTON 2, "&Uscire", 280, 360, 90, 25
    BEGIN
        NAME "Exit"
    END

    STATICTEXT 108, "Se non avete un conto sul b-commerce, si prega di contattare la commerciale BASIS allo numero +39 02 40 70 81 75", 64, 320, 413, 30
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

    GROUPBOX 105, "", 20, 180, 460, 123
    BEGIN
        NAME "Box"
    END

    STATICTEXT 106, "Si prega di inserire il codice cliente e la password", 40, 200, 410, 25
    BEGIN
        NAME "Prompt"
    END

    STATICTEXT 111, "Queste pagine è accessibile soltanto dai clienti BASIS", 135, 160, 320, 20
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
    BUTTON 112, "Agg. utenti/&Upgrade", 340, 160, 120, 25
    BEGIN
        NAME "View SN"
        SHORTCUE "Visualizza/modifica licenze individuali."
    END

    BUTTON 116, "&Acquisto", 340, 20, 120, 25
    BEGIN
        NAME "View Item"
        SHORTCUE "Selezionare un nuovo prodotto per acquistare"
    END

    BUTTON 117, "&Informazione sul Conto", 329, 315, 141, 25
    BEGIN
        NAME "Account"
        SHORTCUE "Informazione sul Conto"
    END

    BUTTON 118, "&Log Out /uscire", 329, 365, 142, 25
    BEGIN
        NAME "Logout"
        SHORTCUE "Uscire."
    END

    BUTTON 119, "&Carrello d`acquisto", 340, 235, 126, 25
    BEGIN
        NAME "Cart"
        SHORTCUE "Vai al carrello d`acquisto."
    END

    GROUPBOX 1000, "Modificare o visualizzare una licenza", 20, 95, 460, 110
    BEGIN
        NAME "Group Control"
    END

    GROUPBOX 1001, "Carrello d`acquisto", 20, 210, 460, 70
    BEGIN
        NAME "Group Control"
    END

    GROUPBOX 1002, "Informazioni sul account", 20, 285, 460, 70
    BEGIN
        NAME "Group Control"
    END

    STATICTEXT 1004, "Rivedere, editare o  e-mail sul vostro", 110, 240, 225, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    STATICTEXT 1005, "Mantenere le informazioni sul account", 95, 316, 225, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    BUTTON 120, "Upgrade a &BPL", 340, 120, 120, 25
    BEGIN
        NAME "trade_btn"
        SHORTCUE "Permette fare upgrade a BBj o PRO/5 Rev4.x & superiore"
    END

    GROUPBOX 1009, "Nuove licenze", 20, 5, 460, 85
    BEGIN
        NAME "Group Control"
    END

    STATICTEXT 1011, "Configurare una nuova licenza", 110, 35, 220, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    STATICTEXT 1015, "Upgrade e unire vecchie licenze in una nuova licenza BASIS Product License (BPL).", 90, 120, 244, 30
    BEGIN
        JUSTIFICATION 32768
        NAME "trd_text"
    END

    STATICTEXT 1017, "Aggiungere utente; upgrade o visualizza licenza e altre opzioni sulla licenza.", 90, 160, 244, 30
    BEGIN
        JUSTIFICATION 32768
        NAME "mod_text"
    END

    BUTTON 1018, "&Noleggio", 340, 50, 120, 25
    BEGIN
        NAME "Rent"
        SHORTCUE "Selezionare un nuovo prodotto per acquistare"
    END

    BUTTON 121, "Support Interface", 70, 365, 120, 25
    BEGIN
        INVISIBLE
        NAME "SupportInterface"
    END

    BUTTON 122, "Download BBj", 200, 365, 120, 25
    BEGIN
        NAME "btnDownloadBBj"
    END

    HTMLVIEW 123, "<html>\n  <table align=\042center\042 border=\0420\042>\n    <tr>\n      <td align=\042center\042>\n        <a onclick=\042window.open('http://www.basis.com/bbj-download');\042 href=\042#\042>Download \n        BBj</a>\n      </td>\n    </tr>\n  </table>\n</html>\n", 200, 365, 120, 25
    BEGIN
        NAME "HtmlView"
    END

END

WINDOW 102 "Visualizza prodotto della licenza" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 33554432
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "View SN"
    NOT SIZABLE
    STATICTEXT 99, "Numero di serie:", 14, 11, 80, 33
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

    BUTTON 101, "Visual. No.&Serie ", 260, 19, 102, 26
    BEGIN
        NAME "View SN"
    END

    BUTTON 102, "Scansione &Licenza", 372, 19, 118, 25
    BEGIN
        NAME "Find SN"
    END

    STATICTEXT 103, "Autorizzazione:", 12, 50, 89, 25
    BEGIN
        NAME "Authorization Label"
    END

    STATICTEXT 104, "", 103, 50, 147, 25
    BEGIN
        NAME "Authorization"
    END

    STATICTEXT 113, "Data acquisto:", 265, 50, 96, 20
    BEGIN
        NAME "Purchase Date Label"
    END

    STATICTEXT 115, "", 345, 50, 125, 20
    BEGIN
        NAME "Purchase Date"
    END

    STATICTEXT 121, "Attivo?", 155, 80, 50, 20
    BEGIN
        NAME "Active Label"
    END

    STATICTEXT 124, "", 205, 80, 40, 20
    BEGIN
        NAME "Status"
    END

    STATICTEXT 133, "Prodotto:", 21, 108, 80, 25
    BEGIN
        NAME "Product Label"
    END

    STATICTEXT 134, "", 100, 110, 150, 25
    BEGIN
        NAME "Product"
    END

    STATICTEXT 136, "Piattaforma:", 20, 137, 80, 25
    BEGIN
        NAME "Platform Label"
    END

    STATICTEXT 137, "", 100, 140, 150, 25
    BEGIN
        NAME "Platform"
    END

    STATICTEXT 139, "Livello sist. oper.:", 21, 165, 79, 37
    BEGIN
        NAME "Port ID Label"
    END

    STATICTEXT 140, "", 100, 170, 150, 25
    BEGIN
        NAME "oslevel"
    END

    STATICTEXT 142, "Revisione:", 20, 205, 80, 25
    BEGIN
        NAME "Revision Label"
    END

    STATICTEXT 143, "", 100, 200, 40, 25
    BEGIN
        NAME "Revision"
    END

    STATICTEXT 144, "Tipo:", 20, 233, 80, 25
    BEGIN
        NAME "License Label"
    END

    STATICTEXT 145, "", 100, 230, 150, 25
    BEGIN
        NAME "License"
    END

    STATICTEXT 154, "Utenti:", 21, 80, 80, 25
    BEGIN
        NAME "Users Label"
    END

    STATICTEXT 155, "", 100, 80, 50, 25
    BEGIN
        NAME "Users"
    END

    STATICTEXT 160, "Articolo:", 21, 262, 80, 20
    BEGIN
        NAME "Item Number Label"
    END

    STATICTEXT 161, "", 100, 260, 150, 20
    BEGIN
        NAME "Item Number"
    END

    STATICTEXT 162, "Descrizione", 21, 285, 80, 20
    BEGIN
        NAME "Description Label"
    END

    STATICTEXT 163, "", 100, 285, 380, 20
    BEGIN
        NAME "Description"
    END

    BUTTON 165, "&Visore storico", 10, 335, 101, 25
    BEGIN
        NAME "History"
    END

    BUTTON 166, "&Modifca licenza", 10, 365, 101, 25
    BEGIN
        NAME "Change"
    END

    BUTTON 2, "Ritorna &indietro", 380, 365, 101, 25
    BEGIN
        NAME "Close"
    END

    STATICTEXT 175, "Scadenza:", 265, 110, 75, 20
    BEGIN
        NAME "Expire Label"
    END

    STATICTEXT 177, "", 340, 110, 125, 20
    BEGIN
        NAME "Expiration Date"
    END

    STATICTEXT 179, "Disp. Supporto:", 265, 165, 85, 20
    BEGIN
        NAME "available support label"
    END

    STATICTEXT 180, "", 355, 165, 40, 20
    BEGIN
        NAME "available support"
    END

    BUTTON 181, "&Rinnovo", 120, 335, 145, 25
    BEGIN
        NAME "Renew"
        SHORTCUE "Renew SAM/Kit/Rent "
    END

    STATICTEXT 105, "", 100, 310, 380, 20
    BEGIN
        NAME "enduser"
    END

    BUTTON 182, "&Cambia rinnovo autom.", 120, 365, 146, 25
    BEGIN
        NAME "toggle_renew"
    END

    STATICTEXT 183, "Rinnovo:", 265, 135, 75, 20
    BEGIN
        NAME "renewal_lbl"
    END

    STATICTEXT 184, "", 340, 135, 145, 25
    BEGIN
        NAME "renewal_status"
    END

    GROUPBOX 185, "SAM/Kit/Noleggio", 255, 85, 240, 110
    BEGIN
        NAME "sam_grp"
    END

    BUTTON 106, "Inviare la licenza", 275, 365, 100, 25
    BEGIN
        NAME "sendLicense"
    END

    STATICTEXT 107, "Cliente Finale:", 20, 310, 80, 22
    BEGIN
        NAME "enduserLabel"
    END

    CHECKBOX 108, "Virtual", 150, 195, 90, 25
    BEGIN
        NAME "virtualFlag"
    END

END

WINDOW 103 "Modifica licenza" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 46137344
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Edit SN"
    NOT SIZABLE
    STATICTEXT 100, "Numero di Serie", 20, 235, 91, 20
    BEGIN
        NAME "Serial Number Label"
    END

    STATICTEXT 101, "", 115, 235, 145, 20
    BEGIN
        NAME "Serial Number"
    END

    GROUPBOX 103, "Configurazione corrente", 10, 5, 260, 225
    BEGIN
        NAME "Current Configuration"
    END

    GROUPBOX 106, "Configurazione modificato", 270, 5, 220, 300
    BEGIN
        NAME "Modified Configuration"
    END

    STATICTEXT 113, "Prodotto:", 20, 25, 55, 20
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

    STATICTEXT 121, "Piattaforma:", 17, 50, 67, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Platform Label"
    END

    STATICTEXT 124, "", 87, 50, 173, 20
    BEGIN
        NAME "Cur_Platform"
    END

    LISTBUTTON 127, "", 280, 50, 200, 150
    BEGIN
        NAME "Platform"
    END

    STATICTEXT 133, "Liv.sist.oper.", 13, 72, 73, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "O/S Level Label"
    END

    STATICTEXT 134, "", 91, 72, 169, 25
    BEGIN
        NAME "Cur_Oslevel"
    END

    LISTBUTTON 135, "", 280, 75, 200, 150
    BEGIN
        NAME "OsLevel"
    END

    STATICTEXT 136, "Revisione:", 20, 100, 55, 20
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

    STATICTEXT 139, "Tipo:", 20, 125, 55, 20
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

    STATICTEXT 142, "Utenti:", 20, 150, 55, 20
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

    BUTTON 1, "Agg. nel &Carrello", 233, 365, 85, 20
    BEGIN
        NAME "Accept"
    END

    BUTTON 2, "&Visual.No.Serie", 323, 365, 85, 20
    BEGIN
        NAME "Cancel"
        SHORTCUE "Return to View License"
    END

    STATICTEXT 155, "Numero dell`ordine # :", 5, 360, 70, 34
    BEGIN
        JUSTIFICATION 32768
        NAME "Reference Label"
    END

    INPUTE 1010, "", 80, 365, 80, 20
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

    STATICTEXT 1003, "Utenti Extended:", 340, 150, 90, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Users Label"
    END

    BUTTON 1002, "&Ricalcolare", 163, 365, 65, 20
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

    CHECKBOX 1008, " Piano SAM:", 395, 200, 80, 20
    BEGIN
        NAME "Sam standard"
        TEXTLEFT
    END

    STATICTEXT 1011, "Diritto di Supporto/Reset:", 320, 255, 125, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "additional support label"
    END

    EDIT 1012, "", 445, 255, 30, 20
    BEGIN
        CLIENTEDGE
        NAME "additional support"
    END

    STATICTEXT 1013, "Supporto:", 20, 200, 55, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "available_support_label"
    END

    STATICTEXT 1014, "", 80, 200, 30, 20
    BEGIN
        NAME "available_support"
    END

    STATICTEXT 1015, "Utenti Standard:", 340, 175, 90, 20
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

    STATICTEXT 1019, "Vostro Prezzo:", 280, 335, 85, 20
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

    STATICTEXT 1021, "Data di rinnovo:", 280, 225, 100, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "renew_dt_lbl"
    END

    BUTTON 1022, "Ritorna &indietro", 412, 365, 85, 20
    BEGIN
        NAME "Main"
    END

    CHECKBOX 1017, "Runtime:", 400, 280, 75, 20
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

    STATICTEXT 1028, "Prezzo di listino:", 280, 315, 85, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "listprice_lbl"
    END

    CHECKBOX 1029, "Licenza annuale:", 275, 200, 119, 20
    BEGIN
        NAME "no_rif"
        TEXTLEFT
        JUSTIFICATION 32768
    END

END

WINDOW 104 "Rivedere o acquistare un articolo" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 41943040
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Item"
    NOT SIZABLE
    GROUPBOX 10, "Dettaglio articolo", 10, 5, 280, 225
    BEGIN
        NAME "Item Details"
    END

    STATICTEXT 98, "Prodotto:", 20, 25, 55, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Product Label"
    END

    LISTBUTTON 99, "", 80, 25, 200, 150
    BEGIN
        NAME "Product"
        SELECTIONHEIGHT 20
    END

    STATICTEXT 100, "Piattaforma:", 10, 50, 69, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Platform Label"
    END

    LISTBUTTON 101, "", 80, 50, 200, 150
    BEGIN
        NAME "Platform"
    END

    STATICTEXT 102, "Liv.sist.oper.", 16, 75, 62, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "O/S Label"
    END

    LISTBUTTON 103, "", 80, 75, 200, 150
    BEGIN
        NAME "oslevel"
    END

    STATICTEXT 104, "Revisione:", 20, 100, 55, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Revision Label"
    END

    LISTBUTTON 105, "", 80, 100, 200, 150
    BEGIN
        NAME "Revision"
    END

    STATICTEXT 111, "Tipo:", 20, 125, 55, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "License Label"
    END

    LISTBUTTON 112, "", 80, 125, 200, 150
    BEGIN
        NAME "License"
    END

    STATICTEXT 113, "Articolo:", 20, 150, 58, 20
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

    STATICTEXT 130, "Numero dell`ordine:", 7, 360, 63, 30
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

    BUTTON 1, "Agg. nel &carrello", 280, 365, 95, 20
    BEGIN
        NAME "Accept"
        SHORTCUE "Add this purchase to shopping cart"
    END

    BUTTON 2, "Ritorna &indietro", 380, 365, 95, 20
    BEGIN
        NAME "Close"
    END

    BUTTON 200, "&Ricalcolare", 180, 365, 95, 20
    BEGIN
        NAME "Recalculate"
    END

    CHECKBOX 202, "Piano SAM:", 336, 100, 89, 20
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

    STATICTEXT 206, "Utenti Extended:", 320, 50, 85, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "users_lbl"
    END

    STATICTEXT 207, "Utenti Standard:", 320, 75, 85, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "users2_lbl"
    END

    STATICTEXT 212, "Quantità:", 320, 25, 85, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "quantity_lbl"
    END

    EDIT 140, "", 394, 310, 90, 20
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "Price"
        READONLY
    END

    STATICTEXT 211, "Vostro prezzo", 296, 310, 92, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "pricelbl"
    END

    CUSTOMEDIT 122, "", 19, 233, 270, 100
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

    STATICTEXT 231, "Data di rinnovo", 340, 125, 110, 15
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

    EDIT 241, "", 394, 288, 90, 20
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "Listprice"
        READONLY
    END

    STATICTEXT 242, "Prezzo di listino", 292, 290, 96, 20
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

WINDOW 105 "Carrello d`acquisto" 0 0 500 400
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
        GRIDCOLTITLE 0, "No. acquisto"
        GRIDCOLTITLE 1, "No.di serie"
        GRIDCOLTITLE 2, "Qtá"
        GRIDCOLTITLE 3, "Numero art."
        GRIDCOLTITLE 4, "Utenti"
        GRIDCOLTITLE 5, "Prezzo"
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

    BUTTON 100, "&E-Mail", 103, 360, 90, 25
    BEGIN
        NAME "Email"
        SHORTCUE "Will e-mail an itemized list of shopping cart contents for your reference."
    END

    STATICTEXT 105, "Vostro prezzo", 392, 300, 80, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Subtotal Label"
    END

    STATICTEXT 106, "", 385, 325, 80, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Subtotal"
    END

    BUTTON 113, "&AggUtente/Upgrade", 360, 70, 124, 25
    BEGIN
        NAME "View SN"
        SHORTCUE "View/modify an individual license."
    END

    BUTTON 114, "&Nuova licenza", 250, 70, 100, 25
    BEGIN
        NAME "View Item"
        SHORTCUE "Select a new product to purchase."
    END

    LISTBUTTON 116, "", 263, 360, 110, 90
    BEGIN
        NAME "Reference"
    END

    STATICTEXT 117, "No.ordine:", 198, 363, 61, 23
    BEGIN
        JUSTIFICATION 32768
        NAME "Reference Label"
    END

    BUTTON 2, "Rit. &indietro", 7, 360, 90, 25
    BEGIN
        NAME "Close"
        SHORTCUE "Return to Main"
    END

    BUTTON 118, "Confermare &ordine", 380, 360, 115, 25
    BEGIN
        NAME "Checkout"
        SHORTCUE "Proceed with Checkout"
    END

    STATICTEXT 161, "Per modificare un articolo nel carrello, fate doppio clic su una riga sotto o un singolo clic e  cliccare sul pulsante \042Modifica articolo\042. Per eliminare un articolo, fare un clic singolo e cliccare sul pulsante \042Elimina articolo\042.", 20, 122, 460, 48
    BEGIN
        NAME "Message"
    END

    BUTTON 119, "Elimina articolo", 380, 160, 100, 25
    BEGIN
        NAME "Delete"
    END

    GROUPBOX 150, "Aggiungere nel carrello", 10, 2, 480, 100
    BEGIN
        NAME "Add to cart"
    END

    STATICTEXT 151, "AGGIUNGERE NEL CARRELLO permette di aggiungere nuovi articoli nel carrello, o di fare modifiche su una licenza esistente come aggiungere untente o aggiornamento a una nuova revisione.", 17, 18, 460, 51
    BEGIN
        NAME "Add to Cart Message"
    END

    GROUPBOX 160, "Modifica carrello", 10, 105, 480, 250
    BEGIN
        NAME "Modify Cart"
    END

    BUTTON 165, "Upgrade a &BPL", 140, 70, 100, 25
    BEGIN
        NAME "trade_btn"
        SHORTCUE "Allows you to upgrade to BBj or PRO/5 Rev4.x & higher."
    END

    STATICTEXT 166, "", 300, 325, 80, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "listprice"
    END

    STATICTEXT 167, "Prezzo di listino", 278, 299, 101, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "listprice_lbl"
    END

    STATICTEXT 168, "Subtotal:", 208, 325, 80, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "sub_lbl"
    END

    BUTTON 120, "Modifica articolo", 275, 160, 100, 25
    BEGIN
        NAME "EditItem"
    END

END

WINDOW 106 "Conferma l'acquisto 1 di 2" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Checkout 1"
    NOT SIZABLE
    STATICTEXT 101, "Primo:", 280, 30, 40, 25
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

    STATICTEXT 103, "Secondo:", 275, 60, 55, 25
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

    BUTTON 905, "&U.S. (Stati Uniti)", 280, 130, 90, 25
    BEGIN
        NAME "Ship USA"
    END

    BUTTON 906, "I&nternazionale", 390, 130, 90, 25
    BEGIN
        NAME "Ship Intl"
    END

    STATICTEXT 908, "", 20, 190, 220, 20
    BEGIN
        NAME "Bill To Name"
    END

    STATICTEXT 909, "", 20, 210, 220, 20
    BEGIN
        NAME "Bill To Addr1"
    END

    STATICTEXT 910, "", 20, 230, 220, 20
    BEGIN
        NAME "Bill To Addr2"
    END

    STATICTEXT 913, "", 20, 250, 220, 20
    BEGIN
        NAME "Bill To City"
    END

    STATICTEXT 914, "", 20, 270, 220, 20
    BEGIN
        NAME "Bill To State"
    END

    STATICTEXT 915, "", 20, 290, 220, 20
    BEGIN
        NAME "Bill To Zip"
    END

    STATICTEXT 916, "", 20, 310, 220, 20
    BEGIN
        NAME "Bill To Country"
    END

    STATICTEXT 918, "", 260, 190, 220, 20
    BEGIN
        NAME "Ship To Name"
    END

    STATICTEXT 919, "", 260, 210, 220, 20
    BEGIN
        NAME "Ship To Addr1"
    END

    STATICTEXT 920, "", 260, 230, 220, 20
    BEGIN
        NAME "Ship To Addr2"
    END

    STATICTEXT 924, "", 260, 250, 220, 20
    BEGIN
        NAME "Ship To City"
    END

    STATICTEXT 925, "", 260, 270, 220, 20
    BEGIN
        NAME "Ship To State"
    END

    STATICTEXT 926, "", 260, 290, 220, 20
    BEGIN
        NAME "Ship To Zip"
    END

    STATICTEXT 927, "", 260, 310, 220, 20
    BEGIN
        NAME "Ship To Country"
    END

    BUTTON 2, "&Indietro", 290, 360, 90, 25
    BEGIN
        NAME "Previous"
        SHORTCUE "Return to Cart"
    END

    BUTTON 1, "&Avanti", 390, 360, 90, 25
    BEGIN
        NAME "Next"
        SHORTCUE "Proceed with Checkout"
    END

    GROUPBOX 200, "Supporto di consegna", 10, 110, 140, 60
    BEGIN
        NAME "Shipping Control"
    END

    GROUPBOX 907, "Informazione fattura", 10, 170, 240, 170
    BEGIN
        NAME "Billing Group"
    END

    GROUPBOX 917, "Informazione spedizione", 250, 170, 240, 170
    BEGIN
        NAME "Shipping Group"
    END

    GROUPBOX 300, "Consegna licenza", 10, -1, 479, 105
    BEGIN
        NAME "License Group"
    END

    STATICTEXT 301, "La licenza elettronica può essere consegnata fino a 2 Numeri FAX oppure indirizzi Email. Se le caselle rimangono vuoti, la licenza verrà consegnata su carta all indirizzo seguente: ", 20, 15, 240, 82
    BEGIN
        NAME "License Message"
    END

    GROUPBOX 928, "Modifica indirizzo di consegna o metodo", 160, 110, 330, 60
    BEGIN
        NAME "Shipping Address"
    END

    STATICTEXT 929, "Il CD-Rom contiene la versione corrente di BBj e Pro/5 per tutte piattaforme. Versioni precedenti sono scaricabile dal sito basis.com/products/downloads.html.", 10, 340, 270, 55
    BEGIN
        FOREGROUNDCOLOR RGB(255,0,0)
        NAME "Static Text"
    END

END

WINDOW 107 "Consegna domicilio" 0 0 500 400
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

    BUTTON 2, "&Cancella", 390, 360, 90, 25
    BEGIN
        NAME "Cancel"
        SHORTCUE "Return to Checkout"
    END

    BUTTON 1, "&Accetto", 280, 360, 90, 25
    BEGIN
        NAME "Accept"
    END

    GROUPBOX 100, "Informazione sulla fattura", 10, 20, 240, 210
    BEGIN
        NAME "Billing Group"
    END

    GROUPBOX 110, "Informazione sulla spedizione", 250, 20, 240, 210
    BEGIN
        NAME "Shipping Group"
    END

    GROUPBOX 120, "Metodo di spedizione", 10, 250, 480, 70
    BEGIN
        NAME "Delivery Group"
    END

    STATICTEXT 121, "Nota: Vostro ordine viene spedito nei prossimi giorni lavorativi.", 20, 275, 280, 36
    BEGIN
        NAME "Delivery Message"
    END

END

WINDOW 108 "Spedizione internazionale" 0 0 500 400
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

    BUTTON 2, "&Cancella", 390, 360, 90, 25
    BEGIN
        NAME "Cancel"
        SHORTCUE "Return to Checkout"
    END

    BUTTON 1, "&Accetto", 280, 360, 90, 25
    BEGIN
        NAME "Accept"
    END

    GROUPBOX 110, "Informazione sulla fattura", 10, 20, 240, 240
    BEGIN
        NAME "Billing Group"
    END

    GROUPBOX 1000, "Informazione sulla spedizione", 250, 20, 240, 240
    BEGIN
        NAME "Shipping Group"
    END

END

WINDOW 109 "Conferma l'acquisto 2 di 2" 0 0 500 400
BEGIN
    RADIOGROUP 101, 136
    RADIOGROUP 143, 144, 145
    NOT CLOSEBOX
    EVENTMASK 33554432
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Checkout 2"
    NOT SIZABLE
    RADIOBUTTON 101, "Sul Account", 50, 40, 110, 25
    BEGIN
        NAME "On Account"
    END

    RADIOBUTTON 136, "Carta di Credito", 209, 40, 120, 25
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

    STATICTEXT 146, "Numero:", 230, 220, 70, 25
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

    STATICTEXT 149, "Nome:", 230, 250, 70, 25
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

    STATICTEXT 151, "Scadenza:", 230, 280, 70, 25
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

    CHECKBOX 154, "Mantenere questo su file", 230, 308, 168, 25
    BEGIN
        NAME "Save Credit Card"
    END

    GROUPBOX 170, "Acquistare adesso", 20, 22, 460, 328
    BEGIN
        NAME "Buy Now Title"
    END

    GROUPBOX 135, "Credit Card", 220, 70, 240, 270
    BEGIN
        NAME "Credit Card Frame"
    END

    GROUPBOX 155, "Somma del ordine", 40, 70, 150, 150
    BEGIN
        NAME "Order Amount Frame"
    END

    STATICTEXT 156, "Importo:", 50, 90, 55, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Subtotal Label"
    END

    STATICTEXT 157, "", 115, 90, 65, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Subtotal"
    END

    STATICTEXT 158, "Tassa:", 50, 115, 55, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Tax Label"
    END

    STATICTEXT 159, "", 115, 115, 65, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Tax"
    END

    STATICTEXT 160, "Trasporto:", 50, 140, 55, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Freight Label"
    END

    STATICTEXT 161, "", 115, 140, 65, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Freight"
    END

    STATICTEXT 162, "Totale:", 50, 165, 55, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Total Label"
    END

    STATICTEXT 163, "", 115, 165, 65, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Total"
    END

    BUTTON 165, "&Indietro", 276, 360, 90, 25
    BEGIN
        NAME "Previous"
    END

    BUTTON 1, "&Acquista adesso", 378, 360, 102, 25
    BEGIN
        NAME "Buy Now"
    END

    BUTTON 2, "Rit. al &carrello", 170, 360, 90, 25
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

    GROUPBOX 169, "Numero del ordine", 40, 220, 150, 60
    BEGIN
        NAME "Reference Title"
    END

    STATICTEXT 171, "", 319, 40, 150, 25
    BEGIN
        FOREGROUNDCOLOR RGB(255,0,0)
        NAME "Message"
    END

    GROUPBOX 175, "Nome di contatto", 40, 280, 150, 60
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

    STATICTEXT 176, "Prezzo di listino:", 50, 185, 55, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "List Label"
    END

    STATICTEXT 177, "", 115, 190, 65, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "List"
    END

END

WINDOW 110 "Informazione sul conto" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Account"
    NOT SIZABLE
    STATICTEXT 110, "1. indirizzo E-mail:", 20, 40, 100, 32
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

    STATICTEXT 112, "Conferma Password:", 20, 130, 100, 33
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

    GRID 109, "", 18, 254, 460, 100
    BEGIN
        CLIENTEDGE
        COLUMNHEAD 25, 107
        COLUMNS 5
        GRIDCOLTITLE 0, "Numero Carta di credito"
        GRIDCOLTITLE 1, "Tipo carta credito"
        GRIDCOLTITLE 2, "Nome Carta di credito"
        GRIDCOLTITLE 3, "Mese"
        GRIDCOLTITLE 4, "ANNO"
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

    STATICTEXT 113, "Nota: La password deve essere un minimo di 10 caratteri e deve contenere caratteri maiuscoli e minuscoli, alfa numerici e caratteri speciali ~!@#$%^&*()+=", 230, 100, 250, 70
    BEGIN
        NAME "Note"
    END

    STATICTEXT 120, "2. indirizzo E-mail:", 20, 70, 100, 31
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

    BUTTON 108, "Ritorna &Menu princ.", 362, 370, 122, 25
    BEGIN
        NAME "Cancel"
        SHORTCUE "Return to Main"
    END

    BUTTON 103, "&Nuova carta di credito", 353, 214, 133, 25
    BEGIN
        NAME "New CC"
    END

    BUTTON 101, "&Aggiorna", 120, 165, 90, 25
    BEGIN
        NAME "Accept"
        SHORTCUE "Update Account Information"
    END

    STATICTEXT 121, "Fare doppio clic nella griglia oppure cliccare sul pulsante  “Editare carta di credito” per  modificare le informazioni di una carta di credito selezionato.", 19, 195, 328, 50
    BEGIN
        NAME "Message"
    END

    BUTTON 104, "Rapporti", 20, 370, 104, 25
    BEGIN
        NAME "Email_rpt"
        SHORTCUE "Select & e-mail your Active SN or Aged AR report to you."
    END

    BUTTON 105, "&Fatture", 137, 370, 90, 25
    BEGIN
        NAME "invoice"
        SHORTCUE "Review/Pay Invoices"
    END

    BUTTON 106, "&Dati cliente finale", 237, 370, 114, 25
    BEGIN
        NAME "EndUserData"
    END

    BUTTON 102, "Editare carta di credito", 353, 185, 133, 25
    BEGIN
        NAME "EditCC"
    END

    BUTTON 114, "License Update", 20, 343, 104, 25
    BEGIN
        NAME "btnLicenseUpdate"
    END

    STATICTEXT 130, "First Name:", 20, 10, 90, 25
    BEGIN
        NAME "firstNameLabel"
    END

    EDIT 1, "", 120, 10, 90, 25
    BEGIN
        CLIENTEDGE
        NAME "firstName"
    END

    STATICTEXT 131, "Last Name:", 220, 10, 60, 25
    BEGIN
        NAME "lastNameLabel"
    END

    EDIT 2, "", 280, 10, 200, 25
    BEGIN
        CLIENTEDGE
        NAME "lastName"
    END

END

WINDOW 111 "Cronologia dei numeri di serie" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "History"
    NOT SIZABLE
    STATICTEXT 101, "No. di serie", 20, 60, 97, 20
    BEGIN
        NAME "Serial Number Label"
    END

    STATICTEXT 102, "", 118, 62, 120, 20
    BEGIN
        NAME "Serial Number"
    END

    STATICTEXT 105, "Articolo:", 20, 85, 80, 20
    BEGIN
        NAME "Item Number Label"
    END

    STATICTEXT 106, "", 100, 85, 380, 20
    BEGIN
        NAME "Item Number"
    END

    STATICTEXT 107, "Descrizione", 20, 110, 80, 20
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
        GRIDCOLTITLE 0, "Data"
        GRIDCOLTITLE 1, "Fattura"
        GRIDCOLTITLE 2, "Attività"
        GRIDCOLTITLE 3, "Revisione"
        GRIDCOLTITLE 4, "Utenti"
        GRIDCOLTITLE 5, "Chiave/Autorizzazione"
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

    BUTTON 2, "&<-Indietro", 20, 10, 90, 25
    BEGIN
        NAME "Close"
        SHORTCUE "Return to View Licensed Product"
    END

    BUTTON 113, "Visual. &Legame", 115, 10, 90, 25
    BEGIN
        NAME "Clients"
    END

    TABCONTROL 114, "", 10, 140, 480, 240
    BEGIN
        AUTOMANAGEMENT
        NAME "Tab"
        TAB "Transazione storico" 0 110
        TAB "Licenza storico" 0 115
    END

    LISTBOX 115, "", 0, 0, 460, 184
    BEGIN
        CLIENTEDGE
        FONT "Arial Monospaced" 8
        NAME "List Box"
    END

    BUTTON 116, "&Reset Licenza", 210, 10, 90, 25
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

WINDOW 112 "Server abbinato ai clienti" 0 0 500 400
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
        GRIDCOLTITLE 0, "No. di serie"
        GRIDCOLTITLE 1, "No. articolo"
        GRIDCOLTITLE 2, "Utenti"
        GRIDCOLTITLE 3, "Descrizione"
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

    STATICTEXT 103, "No. die serie", 20, 30, 80, 34
    BEGIN
        NAME "Serial Number Label"
    END

    STATICTEXT 104, "", 100, 30, 150, 25
    BEGIN
        NAME "Serial Number"
    END

    STATICTEXT 105, "No. articolo", 19, 67, 80, 25
    BEGIN
        NAME "Item Number Label"
    END

    STATICTEXT 106, "", 100, 60, 150, 25
    BEGIN
        NAME "Item Number"
    END

    STATICTEXT 107, "Descrizione", 20, 90, 80, 25
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

    STATICTEXT 110, "Le informazioni servono solo come referenza. BASIS non utilizza o mantiene collegamenti client/server.", 260, 30, 210, 50
    BEGIN
        NAME "Disclaimer"
    END

END

WINDOW 113 "Cerca numero di serie" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Find SN"
    NOT SIZABLE
    STATICTEXT 99, "No. di serie successivo", 2, 23, 132, 20
    BEGIN
        NAME "Serial Number Label"
    END

    INPUTE 100, "", 135, 23, 140, 20
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Serial Number"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    BUTTON 1, "Scans. &Successivo", 387, 20, 112, 25
    BEGIN
        NAME "Next"
    END

    STATICTEXT 101, "Quantità da visualizzare", 2, 54, 121, 20
    BEGIN
        NAME "Limit Label"
    END

    INPUTN 106, "12", 135, 49, 50, 20
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Limit"
        PASSENTER
        PASSTAB
        NOT INSERTMODE
    END

    CHECKBOX 108, "&Visual. solo licenze attive?", 200, 50, 180, 25
    BEGIN
        CHECKED
        NAME "Active Only"
    END

    BUTTON 110, "Scans. I&ndietro", 281, 20, 99, 25
    BEGIN
        NAME "Previous"
    END

    GRID 111, "", 20, 117, 460, 233
    BEGIN
        CLIENTEDGE
        COLUMNHEAD 25, 109
        COLUMNS 4
        GRIDCOLTITLE 0, "No. serie"
        GRIDCOLTITLE 1, "Venduto"
        GRIDCOLTITLE 2, "Utenti"
        GRIDCOLTITLE 3, "Descrizione"
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

    BUTTON 2, "<-&Indietro", 410, 360, 70, 25
    BEGIN
        NAME "Close"
        SHORTCUE "Return to View Licensed Product"
    END

    STATICTEXT 112, "Fare doppio clic nella griglia per vedere i dettagli della licenza oppure un clic sul pulsante \042Seleziona un numero di serie\042", 20, 350, 220, 50
    BEGIN
        NAME "Message"
    END

    BUTTON 102, "Seleziona un numero di serie", 250, 360, 150, 25
    BEGIN
        NAME "SelectSN"
    END

END

WINDOW 114 "Carta di credito" 0 0 500 400
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

    STATICTEXT 106, "Numero CC", 200, 210, 90, 25
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

    STATICTEXT 108, "Nome della CC", 200, 250, 90, 25
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

    STATICTEXT 110, "Data scadenza", 200, 290, 90, 25
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

    BUTTON 201, "&Cancella", 170, 360, 90, 25
    BEGIN
        NAME "Delete"
    END

    BUTTON 2, "<-&Indietro", 390, 360, 90, 25
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

    GROUPBOX 202, "Dettaglio sulla carta di credito", 20, 175, 460, 175
    BEGIN
        NAME "Credit Card Details"
    END

END

WINDOW 116 "Reset Licenza" 0 0 350 220
BEGIN
    NOT CLOSEBOX
    DIALOGBEHAVIOR
    DIALOGBORDER
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Reset License"
    NOT SIZABLE
    BUTTON 1, "&Si", 90, 170, 80, 20
    BEGIN
        NAME "OK_btn"
    END

    BUTTON 2, "&No", 175, 170, 80, 20
    BEGIN
        NAME "cancel"
    END

    STATICTEXT 102, "Per usare questo diritto di supporto per resettare la licenza, selezionare dalla lista il motivo e premere il pulsante \042si\042. Dopo la confermazione, lei viene informato del avvenuto reset.", 15, 8, 315, 68
    BEGIN
        NAME "Static Text"
    END

    LISTBUTTON 103, "", 96, 89, 160, 120
    BEGIN
        NAME "reset_reason"
    END

    STATICTEXT 104, "Motivo per resettare", 18, 88, 63, 30
    BEGIN
        NAME "rreason_txt"
    END

    STATICTEXT 105, "Continuare con 'reset licenza' ?", 15, 145, 250, 20
    BEGIN
        NAME "proceed_txt"
    END

END

WINDOW 117 "Selezionare numeri di serie" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 1128269312
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Trade Select"
    NOT SIZABLE
    LISTBOX 100, "", 30, 130, 150, 80
    BEGIN
        CLIENTEDGE
        MULTISELECT
        NAME "available_sn_lbox"
    END

    LISTBOX 101, "", 320, 130, 150, 80
    BEGIN
        CLIENTEDGE
        MULTISELECT
        NAME "selected_sn_lbox"
    END

    BUTTON 104, "&Agg >", 194, 135, 115, 25
    BEGIN
        NAME "add_btn"
    END

    BUTTON 105, "< &Rimouve", 194, 165, 115, 25
    BEGIN
        NAME "remove_btn"
    END

    BUTTON 107, "&Continua", 360, 275, 130, 25
    BEGIN
        NAME "exchange_btn"
    END

    BUTTON 106, "<< Rimouve &tutte", 194, 195, 115, 25
    BEGIN
        NAME "remove_all_btn"
    END

    BUTTON 109, "Ritorna &menu princip.", 360, 330, 130, 25
    BEGIN
        NAME "cancel_btn"
    END

    STATICTEXT 110, "Cambia le licenze selezionate in una licenza BASIS Product (BBj)", 155, 270, 195, 50
    BEGIN
        JUSTIFICATION 32768
        NAME "exchange_txt"
    END

    STATICTEXT 113, "", 31, 55, 430, 45
    BEGIN
        NAME "selected_desc"
    END

    STATICTEXT 114, "Numero di Serie", 15, 19, 102, 20
    BEGIN
        NAME "starting_sn_text"
    END

    EDIT 115, "", 120, 20, 100, 20
    BEGIN
        CLIENTEDGE
        NAME "starting_sn"
    END

    STATICTEXT 116, "No. seriale disponibile", 35, 110, 161, 20
    BEGIN
        NAME "Static Text"
    END

    STATICTEXT 117, "No. seriale selezionato", 320, 110, 160, 20
    BEGIN
        NAME "Static Text"
    END

    BUTTON 1, "&Scans Avanti ->", 378, 17, 105, 25
    BEGIN
        NAME "scan_forward_btn"
    END

    BUTTON 119, "<-Scans. &Indietro", 245, 17, 115, 25
    BEGIN
        NAME "scan_back_btn"
    END

    GROUPBOX 120, "", 20, 45, 450, 60
    BEGIN
        NAME "selected_desc_ctl"
    END

    STATICTEXT 121, "Cancella e ritorna al menu principale", 155, 330, 195, 35
    BEGIN
        JUSTIFICATION 32768
        NAME "cancel_txt"
    END

END

WINDOW 118 "Upgrade licenze selezionate" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 41943040
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Trade"
    NOT SIZABLE
    GROUPBOX 106, "Nuovo prodotto", 250, 15, 235, 157
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

    STATICTEXT 151, "Vostro prezzo", 308, 365, 82, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Price Label"
    END

    BUTTON 1, "Agg nell &Carrello", 15, 375, 130, 20
    BEGIN
        NAME "Accept"
    END

    BUTTON 2, "&Selezione No. seriale", 150, 375, 130, 20
    BEGIN
        NAME "Cancel"
    END

    STATICTEXT 154, "Numero ordine", 20, 325, 55, 30
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

    BUTTON 200, "&Ricalcola", 15, 355, 130, 20
    BEGIN
        NAME "Recalculate"
    END

    STATICTEXT 1003, "Utenti Extended", 260, 195, 110, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "ent_users_lbl"
    END

    STATICTEXT 1009, "No. seriale selezionate", 20, 6, 140, 20
    BEGIN
        NAME "Static Text"
    END

    STATICTEXT 1011, "Dettaglio sul prezzo", 20, 175, 126, 20
    BEGIN
        NAME "detail pricing label"
    END

    CHECKBOX 1008, " Piano SAM:", 295, 245, 95, 20
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

    STATICTEXT 144, "Data rinnovo SAM:", 257, 270, 113, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "renew_dt_lbl"
    END

    EDIT 143, "", 375, 220, 40, 20
    BEGIN
        CLIENTEDGE
        NAME "std_users"
    END

    STATICTEXT 1004, "Utenti Standard:", 260, 220, 110, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "std_users_lbl"
    END

    BUTTON 1015, "Rit. &menu princ.", 150, 355, 130, 20
    BEGIN
        NAME "Main"
    END

    CHECKBOX 147, "Runtime:", 313, 300, 77, 20
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

    STATICTEXT 1018, "Prezzo di listino", 295, 345, 95, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "listprice_lbl"
    END

END

WINDOW 119 "Selezionare rapporto" 0 0 350 250
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

    BUTTON 2, "&Cancella", 185, 215, 90, 25
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

    STATICTEXT 102, "Il rapporto dei numeri di serie attivi saranno inviati al seguente indirizzo e-mail:", 41, 45, 289, 30
    BEGIN
        NAME "Send_Info"
    END

    STATICTEXT 103, "", 21, 180, 309, 25
    BEGIN
        FOREGROUNDCOLOR RGB(255,0,0)
        NAME "Progress_Info"
    END

    RADIOBUTTON 104, "Rapporto numero seriale attivo", 21, 16, 300, 25
    BEGIN
        NAME "sn_rpt"
    END

    RADIOBUTTON 105, "Rapporto account attempato", 25, 127, 300, 25
    BEGIN
        NAME "ar_rpt"
    END

    STATICTEXT 100, "Il rapporto \042Fatture arretrati\042 viene generato immediatamente nel suo browser", 41, 156, 289, 30
    BEGIN
        NAME "Static Text"
    END

END

WINDOW 120 "Rinnovo" 0 0 350 250
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

    INPUTE 130, "", 117, 210, 90, 20
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

    STATICTEXT 129, "Numero ordine", 9, 210, 95, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Reference Label"
    END

    EDIT 126, "", 117, 155, 90, 20
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "listprice"
        READONLY
    END

    EDIT 128, "", 117, 180, 90, 20
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "Price"
        READONLY
    END

    STATICTEXT 125, "Prezzo di listino", 12, 155, 94, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "listprice_lbl"
    END

    STATICTEXT 127, "Vostro prezzo", 20, 180, 84, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "price_lbl"
    END

    BUTTON 1, "&Agg nel carrello", 220, 210, 110, 20
    BEGIN
        NAME "Accept"
    END

    BUTTON 2, "&Cancella", 221, 181, 110, 20
    BEGIN
        NAME "cancel"
    END

    STATICTEXT 131, "Numero di serie", -2, 15, 104, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "sn_lbl"
    END

    EDIT 132, "", 113, 15, 90, 20
    BEGIN
        CLIENTEDGE
        NAME "sn"
        READONLY
    END

    STATICTEXT 133, "Nuova data", 20, 45, 75, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "dt_lbl"
    END

    EDIT 136, "", 265, 14, 40, 20
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 16384
        NAME "rev"
        READONLY
    END

    STATICTEXT 135, "Revisione", 206, 15, 55, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "rev_lbl"
    END

    INPUTD 134, "", 112, 45, 90, 20
    BEGIN
        CLIENTEDGE
        DISABLED
        HIGHLIGHT
        NAME "renew_dt"
        PASSENTER
        PASSTAB
    END

    TOOLBUTTON 137, "", 208, 39, 30, 30
    BEGIN
        INVISIBLE
        NAME "renew_dt_btn"
        SHORTCUE "View calendar/Select date"
    END

END

