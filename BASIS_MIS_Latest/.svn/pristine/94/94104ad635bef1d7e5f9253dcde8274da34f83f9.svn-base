//#charset: windows-1252

VERSION "4.0"

WINDOW 100 "Connexion dans le b-commerce de BASIS" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Login"
    NOT SIZABLE
    STATICTEXT 101, "Bienvenue dans le b-commerce", 175, 133, 175, 20
    BEGIN
        JUSTIFICATION 16384
        NAME "Welcome"
    END

    STATICTEXT 102, "Numéro client:", 140, 230, 100, 25
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

    STATICTEXT 104, "Mot de passe:", 140, 260, 100, 25
    BEGIN
        NAME "Password Label"
    END

    BUTTON 1, "&Connexion", 390, 360, 90, 25
    BEGIN
        NAME "Login"
    END

    BUTTON 2, "&Fin", 20, 360, 90, 25
    BEGIN
        NAME "Exit"
    END

    STATICTEXT 108, "Au cas où vous n´auriez pas encore de compte b-commerce, veuillez nous contacter au numéro: +49 681 968 14 40", 80, 319, 340, 30
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

    STATICTEXT 111, "Seuls les clients de BASIS ont accès à cette page", 80, 160, 340, 20
    BEGIN
        JUSTIFICATION 16384
        NAME "Site Info"
    END

    GROUPBOX 105, "", 20, 190, 460, 110
    BEGIN
        NAME "Box"
    END

    STATICTEXT 106, "Veuillez entrer ci-dessous votre numéro de client et votre mot de passe:", 40, 200, 410, 25
    BEGIN
        NAME "Prompt"
    END

    BUTTON 99, "Forgot Customer Number or Password", 130, 360, 240, 25
    BEGIN
        NAME "forgotCreds"
    END

END

WINDOW 101 "Le système b-commerce de BASIS" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Main"
    NOT SIZABLE
    BUTTON 112, "&Ajouter utilisateurs/MAJ", 343, 161, 130, 25
    BEGIN
        NAME "View SN"
        SHORTCUE "View/modify an individual license."
    END

    BUTTON 116, "Acha&t", 340, 20, 130, 25
    BEGIN
        NAME "View Item"
        SHORTCUE "Select a new product to purchase."
    END

    BUTTON 117, "Données &client", 343, 308, 130, 25
    BEGIN
        NAME "Account"
        SHORTCUE "Account Information"
    END

    BUTTON 118, "&Déconnexion", 340, 364, 130, 25
    BEGIN
        NAME "Logout"
        SHORTCUE "Log Out"
    END

    BUTTON 119, "&Panier", 343, 235, 130, 25
    BEGIN
        NAME "Cart"
        SHORTCUE "Go to the Shopping Cart."
    END

    GROUPBOX 1000, "Modifier ou afficher une licence", 20, 95, 460, 110
    BEGIN
        NAME "Group Control"
    END

    GROUPBOX 1001, "Panier", 20, 210, 460, 70
    BEGIN
        NAME "Group Control"
    END

    GROUPBOX 1002, "Données client", 20, 285, 460, 70
    BEGIN
        NAME "Group Control"
    END

    STATICTEXT 1004, "Apercu, traitement ou envoi du contenu de la corbeille par E-Mail", 105, 234, 230, 29
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    STATICTEXT 1005, "Traitement de vos données de client", 112, 315, 225, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    BUTTON 120, "&Mise à jour vers BPL", 340, 115, 130, 25
    BEGIN
        NAME "trade_btn"
        SHORTCUE "Allows you to upgrade to BBj or PRO/5 Rev4.x & higher."
    END

    GROUPBOX 1009, "Nouvelle licence", 20, 5, 460, 85
    BEGIN
        NAME "Group Control"
    END

    STATICTEXT 1011, "Configuration d´une nouvelle licence", 110, 35, 220, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    STATICTEXT 1015, "Mise à jour ou fusion d´anciennes licences vers une licence actuelle BASIS (BPL)", 100, 115, 235, 30
    BEGIN
        JUSTIFICATION 32768
        NAME "trd_text"
    END

    STATICTEXT 1017, "Utilisateurs supplémentaires; Mise à jour ou affichage de licences", 49, 168, 285, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "mod_text"
    END

    BUTTON 1018, "&Loyer", 340, 50, 130, 25
    BEGIN
        NAME "Rent"
        SHORTCUE "Select a new product to purchase."
    END

    BUTTON 121, "Support Interface", 80, 365, 120, 25
    BEGIN
        INVISIBLE
        NAME "SupportInterface"
    END

    BUTTON 122, "Télécharger BBj", 210, 365, 120, 25
    BEGIN
        NAME "btnDownloadBBj"
    END

    HTMLVIEW 123, "<html>\n  <table align=\042center\042 border=\0420\042>\n    <tr>\n      <td align=\042center\042>\n        <a onclick=\042window.open('http://www.basis.cloud/bbj-download');\042 href=\042#\042>Download \n        BBj</a>\n      </td>\n    </tr>\n  </table>\n</html>\n", 210, 365, 120, 25
    BEGIN
        NAME "HtmlView"
    END

END

WINDOW 102 "Affichage de numéros de série licenciés" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 33554432
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "View SN"
    NOT SIZABLE
    STATICTEXT 99, "Numéro de série:", 10, 20, 85, 25
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

    BUTTON 101, "&afficher", 250, 20, 115, 25
    BEGIN
        NAME "View SN"
    END

    BUTTON 102, "R&echerche de licence", 380, 20, 115, 25
    BEGIN
        NAME "Find SN"
    END

    STATICTEXT 103, "Nr.d´autorisation:", 10, 50, 80, 25
    BEGIN
        NAME "Authorization Label"
    END

    STATICTEXT 104, "", 100, 50, 150, 25
    BEGIN
        NAME "Authorization"
    END

    STATICTEXT 113, "Date d´achat:", 265, 50, 80, 20
    BEGIN
        NAME "Purchase Date Label"
    END

    STATICTEXT 115, "", 345, 50, 125, 20
    BEGIN
        NAME "Purchase Date"
    END

    STATICTEXT 121, "Actif?", 155, 80, 50, 20
    BEGIN
        NAME "Active Label"
    END

    STATICTEXT 124, "", 205, 80, 40, 20
    BEGIN
        NAME "Status"
    END

    STATICTEXT 133, "Produit:", 10, 110, 80, 25
    BEGIN
        NAME "Product Label"
    END

    STATICTEXT 134, "", 100, 110, 150, 25
    BEGIN
        NAME "Product"
    END

    STATICTEXT 136, "Plate-forme:", 10, 140, 80, 25
    BEGIN
        NAME "Platform Label"
    END

    STATICTEXT 137, "", 100, 140, 150, 25
    BEGIN
        NAME "Platform"
    END

    STATICTEXT 139, "O/S Level:", 10, 170, 80, 25
    BEGIN
        NAME "Port ID Label"
    END

    STATICTEXT 140, "", 100, 170, 150, 25
    BEGIN
        NAME "oslevel"
    END

    STATICTEXT 142, "Revision:", 10, 200, 80, 25
    BEGIN
        NAME "Revision Label"
    END

    STATICTEXT 143, "", 100, 200, 40, 25
    BEGIN
        NAME "Revision"
    END

    STATICTEXT 144, "Type:", 10, 230, 80, 25
    BEGIN
        NAME "License Label"
    END

    STATICTEXT 145, "", 100, 230, 150, 25
    BEGIN
        NAME "License"
    END

    STATICTEXT 154, "User(Nombre/Type):", 10, 80, 100, 25
    BEGIN
        NAME "Users Label"
    END

    STATICTEXT 155, "", 110, 80, 40, 25
    BEGIN
        NAME "Users"
    END

    STATICTEXT 160, "Article:", 10, 260, 80, 20
    BEGIN
        NAME "Item Number Label"
    END

    STATICTEXT 161, "", 100, 260, 150, 20
    BEGIN
        NAME "Item Number"
    END

    STATICTEXT 162, "Description:", 10, 285, 80, 20
    BEGIN
        NAME "Description Label"
    END

    STATICTEXT 163, "", 100, 285, 380, 20
    BEGIN
        NAME "Description"
    END

    BUTTON 165, "&Histoire", 80, 335, 130, 25
    BEGIN
        NAME "History"
    END

    BUTTON 166, "&Modification de licence", 80, 365, 130, 25
    BEGIN
        NAME "Change"
    END

    BUTTON 2, "&retour", 360, 365, 130, 25
    BEGIN
        NAME "Close"
    END

    STATICTEXT 175, "Expiration:", 265, 110, 75, 20
    BEGIN
        NAME "Expire Label"
    END

    STATICTEXT 177, "", 350, 110, 125, 20
    BEGIN
        NAME "Expiration Date"
    END

    STATICTEXT 179, "État support:", 265, 165, 80, 20
    BEGIN
        NAME "available support label"
    END

    STATICTEXT 180, "", 350, 165, 40, 20
    BEGIN
        NAME "available support"
    END

    BUTTON 181, "Re&nouveler", 220, 335, 130, 25
    BEGIN
        NAME "Renew"
        SHORTCUE "Renew SAM/NFR/Loyer"
    END

    STATICTEXT 105, "", 100, 310, 380, 20
    BEGIN
        NAME "enduser"
    END

    BUTTON 182, "&Définier Renouvellement", 220, 365, 130, 25
    BEGIN
        NAME "toggle_renew"
    END

    STATICTEXT 183, "Renouvellement:", 265, 135, 85, 20
    BEGIN
        NAME "renewal_lbl"
    END

    STATICTEXT 184, " ", 350, 135, 135, 25
    BEGIN
        NAME "renewal_status"
    END

    GROUPBOX 185, "SAM/NFR/Loyer", 255, 85, 240, 110
    BEGIN
        NAME "sam_grp"
    END

    BUTTON 106, "Envoyer la licence", 360, 335, 130, 25
    BEGIN
        NAME "sendLicense"
    END

    STATICTEXT 107, "Client Final:", 10, 312, 80, 20
    BEGIN
        NAME "enduserLabel"
    END

    CHECKBOX 108, "Virtual", 145, 195, 60, 25
    BEGIN
        NAME "virtualFlag"
    END

    CHECKBOX 109, "Pause Perpetual Notices", 203, 195, 140, 25
    BEGIN
        LONGCUE "Hold send notices when the perpetual license is nearing expiration."
        NAME "stopPerPetNote"
    END

END

WINDOW 103 "Modification de licence" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 46137344
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Edit SN"
    NOT SIZABLE
    STATICTEXT 100, "Numéro de série:", 20, 235, 85, 25
    BEGIN
        NAME "Serial Number Label"
    END

    STATICTEXT 101, "", 110, 235, 150, 20
    BEGIN
        NAME "Serial Number"
    END

    GROUPBOX 103, "Configuration actuelle", 10, 5, 260, 225
    BEGIN
        NAME "Current Configuration"
    END

    GROUPBOX 106, "Configuration modifiée", 270, 5, 220, 300
    BEGIN
        NAME "Modified Configuration"
    END

    STATICTEXT 113, "Produit:", 20, 25, 55, 20
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

    STATICTEXT 121, "Plate-forme:", 16, 50, 59, 20
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

    STATICTEXT 142, "User(Nombre/Type):", 17, 147, 100, 20
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

    BUTTON 1, "dans le &panier", 257, 365, 84, 20
    BEGIN
        NAME "Accept"
    END

    BUTTON 2, "&Affichage SN", 344, 364, 77, 21
    BEGIN
        NAME "Cancel"
        SHORTCUE "Return to View License"
    END

    STATICTEXT 155, "Nr.de commande", 8, 364, 53, 30
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

    BUTTON 1002, "&recalculer", 169, 364, 84, 21
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

    STATICTEXT 1011, "Réactivation:", 320, 255, 125, 20
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

    STATICTEXT 1019, "Votre prix:", 280, 336, 85, 20
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

    STATICTEXT 1021, "Expiration:", 277, 231, 101, 14
    BEGIN
        JUSTIFICATION 32768
        NAME "renew_dt_lbl"
    END

    BUTTON 1022, "&Menu", 427, 365, 70, 20
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

    STATICTEXT 1028, "Prix de la liste:", 280, 315, 85, 20
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

WINDOW 104 "Affichage ou commande d´une nouvelle licence" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 41943040
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Item"
    NOT SIZABLE
    GROUPBOX 10, "Détails du produit", 14, 7, 280, 227
    BEGIN
        NAME "Item Details"
    END

    STATICTEXT 98, "Produit:", 21, 28, 55, 15
    BEGIN
        JUSTIFICATION 32768
        NAME "Product Label"
    END

    LISTBUTTON 99, "", 80, 25, 200, 150
    BEGIN
        NAME "Product"
        SELECTIONHEIGHT 20
    END

    STATICTEXT 100, "Plate-forme:", 20, 53, 57, 15
    BEGIN
        JUSTIFICATION 32768
        NAME "Platform Label"
    END

    LISTBUTTON 101, "", 80, 50, 200, 150
    BEGIN
        NAME "Platform"
    END

    STATICTEXT 102, "O/S Level:", 20, 77, 55, 14
    BEGIN
        JUSTIFICATION 32768
        NAME "O/S Label"
    END

    LISTBUTTON 103, "", 80, 75, 200, 150
    BEGIN
        NAME "oslevel"
    END

    STATICTEXT 104, "Revision:", 20, 103, 55, 15
    BEGIN
        JUSTIFICATION 32768
        NAME "Revision Label"
    END

    LISTBUTTON 105, "", 80, 100, 200, 150
    BEGIN
        NAME "Revision"
    END

    STATICTEXT 111, "Type:", 20, 129, 55, 14
    BEGIN
        JUSTIFICATION 32768
        NAME "License Label"
    END

    LISTBUTTON 112, "", 80, 125, 200, 150
    BEGIN
        NAME "License"
    END

    STATICTEXT 113, "Article:", 20, 150, 55, 20
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

    STATICTEXT 130, "Nr.de commande", 10, 360, 60, 30
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

    BUTTON 1, "dans le &panier", 294, 364, 98, 20
    BEGIN
        NAME "Accept"
        SHORTCUE "Add this purchase to shopping cart"
    END

    BUTTON 2, "&Menu", 399, 364, 91, 20
    BEGIN
        NAME "Close"
    END

    BUTTON 200, "&recalculer", 196, 364, 91, 21
    BEGIN
        NAME "Recalculate"
    END

    CHECKBOX 202, "Plan SAM:", 350, 100, 75, 20
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

    STATICTEXT 206, "Extended User:", 320, 52, 85, 17
    BEGIN
        JUSTIFICATION 32768
        NAME "users_lbl"
    END

    STATICTEXT 207, "Standard User:", 320, 76, 85, 17
    BEGIN
        JUSTIFICATION 32768
        NAME "users2_lbl"
    END

    STATICTEXT 212, "Quantité:", 320, 28, 85, 16
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

    STATICTEXT 211, "Votre prix:", 320, 310, 60, 20
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

    STATICTEXT 231, "Date d´échéance du SAM", 312, 125, 132, 15
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

    STATICTEXT 242, "Prix de la liste:", 290, 291, 90, 20
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

WINDOW 105 "Le panier" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Cart"
    NOT SIZABLE
    GRID 99, "", 16, 195, 465, 104
    BEGIN
        CLIENTEDGE
        COLUMNHEAD 25, 102
        COLUMNS 7
        GRIDCOLTITLE 0, "Nr. commande"
        GRIDCOLTITLE 1, "Nr.de série"
        GRIDCOLTITLE 2, "Nbre"
        GRIDCOLTITLE 3, "Nr.d´article"
        GRIDCOLTITLE 4, "User"
        GRIDCOLTITLE 5, "Prix"
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

    STATICTEXT 105, "Votre prix:", 385, 300, 80, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Subtotal Label"
    END

    STATICTEXT 106, "", 385, 325, 80, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Subtotal"
    END

    BUTTON 113, "&Utilisateurs suppl./Mise à jour", 330, 60, 150, 25
    BEGIN
        NAME "View SN"
        SHORTCUE "View/modify an individual license."
    END

    BUTTON 114, "&Nouvelle licence", 216, 59, 100, 25
    BEGIN
        NAME "View Item"
        SHORTCUE "Select a new product to purchase."
    END

    LISTBUTTON 116, "", 270, 360, 110, 90
    BEGIN
        NAME "Reference"
    END

    STATICTEXT 117, "Nr.de commande:", 208, 355, 57, 31
    BEGIN
        JUSTIFICATION 32768
        NAME "Reference Label"
    END

    BUTTON 2, "&Menu", 15, 360, 90, 25
    BEGIN
        NAME "Close"
        SHORTCUE "Return to Main"
    END

    BUTTON 118, "&Continuer", 390, 360, 90, 25
    BEGIN
        NAME "Checkout"
        SHORTCUE "Proceed with Checkout"
    END

    STATICTEXT 161, "Pour modifier un article dans votre panier, double-cliquez sur une ligne ou sélectionner l’article et cliquez sur le bouton « Modifier ». Pour supprimer un article, sélectionnez-le et cliquez sur le bouton « Supprimer »", 20, 118, 450, 52
    BEGIN
        NAME "Message"
    END

    BUTTON 119, "Supprimer", 380, 165, 100, 25
    BEGIN
        NAME "Delete"
    END

    GROUPBOX 150, "Dans le panier", 10, 10, 480, 90
    BEGIN
        NAME "Add to cart"
    END

    STATICTEXT 151, "Vous pouvez acheter ici de nouveaux articles, modifier des licences existantes ou acheter des utilisateurs supplémentaires.", 20, 30, 460, 30
    BEGIN
        NAME "Add to Cart Message"
    END

    GROUPBOX 160, "Modification du panier", 10, 100, 480, 255
    BEGIN
        NAME "Modify Cart"
    END

    BUTTON 165, "Mise à jour vers &BPL", 99, 60, 105, 25
    BEGIN
        NAME "trade_btn"
        SHORTCUE "Allows you to upgrade to BBj or PRO/5 Rev4.x & higher."
    END

    STATICTEXT 166, "", 300, 325, 80, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "listprice"
    END

    STATICTEXT 167, "Prix de la liste", 300, 300, 80, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "listprice_lbl"
    END

    STATICTEXT 168, "Sous-total:", 203, 325, 85, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "sub_lbl"
    END

    BUTTON 120, "Modifier", 275, 165, 100, 25
    BEGIN
        NAME "EditItem"
    END

END

WINDOW 106 "Checkout 1 de 2" 0 0 500 400
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

    BUTTON 904, "&Mise à jour", 170, 130, 90, 25
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

    BUTTON 2, "&retour", 300, 360, 90, 25
    BEGIN
        NAME "Previous"
        SHORTCUE "Return to Cart"
    END

    BUTTON 1, "&continuer", 400, 360, 90, 25
    BEGIN
        NAME "Next"
        SHORTCUE "Proceed with Checkout"
    END

    GROUPBOX 200, "Produit CD? (30,00 Euro)", 10, 110, 140, 60
    BEGIN
        NAME "Shipping Control"
    END

    GROUPBOX 907, "Destinataire de la facture", 10, 180, 240, 170
    BEGIN
        NAME "Billing Group"
    END

    GROUPBOX 917, "Destinataire de l´envoi", 250, 180, 240, 170
    BEGIN
        NAME "Shipping Group"
    END

    GROUPBOX 300, "Livraison de licence électronique", 10, 10, 480, 90
    BEGIN
        NAME "License Group"
    END

    STATICTEXT 301, "une licence électronique peut être envoyée à 2 adresses E-Mail. Au cas où aucune adresse ne soit enregistrée ici, la licence sera alors envoyée par la poste (EUR 30,00)", 20, 30, 240, 59
    BEGIN
        NAME "License Message"
    END

    GROUPBOX 928, "Modifier de l´adresse du destinataire", 160, 110, 330, 60
    BEGIN
        NAME "Shipping Address"
    END

    STATICTEXT 929, "Vous trouverez sur le CD les versions actuelles de BBj et de PRO/5. Vous trouverez les versions d´auparavant à l´adresse suivante: basis.cloud/products/downloads.html", 15, 347, 275, 50
    BEGIN
        FOREGROUNDCOLOR RGB(255,0,0)
        NAME "Static Text"
    END

END

WINDOW 107 "Transport" 0 0 500 400
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

    RADIOBUTTON 162, "1 jour", 310, 270, 60, 25
    BEGIN
        NAME "One Day"
    END

    RADIOBUTTON 163, "2 jours", 367, 270, 65, 25
    BEGIN
        NAME "Two Day"
    END

    RADIOBUTTON 164, "3 jours", 425, 270, 65, 26
    BEGIN
        NAME "Three Day"
    END

    BUTTON 2, "annuler", 390, 360, 90, 25
    BEGIN
        NAME "Cancel"
        SHORTCUE "Return to Checkout"
    END

    BUTTON 1, "Accepter", 280, 360, 90, 25
    BEGIN
        NAME "Accept"
    END

    GROUPBOX 100, "Information sur la facturation", 10, 20, 240, 210
    BEGIN
        NAME "Billing Group"
    END

    GROUPBOX 110, "Information sur le transport", 250, 20, 240, 210
    BEGIN
        NAME "Shipping Group"
    END

    GROUPBOX 120, "Delivery Method", 10, 250, 480, 63
    BEGIN
        NAME "Delivery Group"
    END

    STATICTEXT 121, "Notice: votre commande va être envoyée dans", 20, 275, 280, 30
    BEGIN
        NAME "Delivery Message"
    END

END

WINDOW 108 "Adresse pour les factures et le destinataire" 0 0 500 400
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

    BUTTON 2, "&Annuler", 390, 360, 90, 25
    BEGIN
        NAME "Cancel"
        SHORTCUE "Return to Checkout"
    END

    BUTTON 1, "&OK", 280, 360, 90, 25
    BEGIN
        NAME "Accept"
    END

    GROUPBOX 110, "Adresse de la facture", 10, 20, 240, 240
    BEGIN
        NAME "Billing Group"
    END

    GROUPBOX 1000, "Adresse du destinataire", 250, 20, 240, 240
    BEGIN
        NAME "Shipping Group"
    END

END

WINDOW 109 "Checkout 2 de 2" 0 0 500 400
BEGIN
    RADIOGROUP 101, 136
    RADIOGROUP 143, 144, 145
    NOT CLOSEBOX
    EVENTMASK 33554432
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Checkout 2"
    NOT SIZABLE
    RADIOBUTTON 101, "sur facture", 50, 40, 110, 25
    BEGIN
        NAME "On Account"
    END

    RADIOBUTTON 136, "par carte de crédit", 231, 40, 126, 23
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

    STATICTEXT 146, "Numéro:", 230, 220, 70, 25
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

    STATICTEXT 149, "Nom:", 230, 250, 70, 25
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

    STATICTEXT 151, "Date d´expiration:", 230, 280, 70, 25
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

    CHECKBOX 154, "enregistrer", 230, 308, 150, 25
    BEGIN
        NAME "Save Credit Card"
    END

    GROUPBOX 170, "acheter", 20, 22, 460, 328
    BEGIN
        NAME "Buy Now Title"
    END

    GROUPBOX 135, "Carte de crédit", 220, 70, 240, 270
    BEGIN
        NAME "Credit Card Frame"
    END

    GROUPBOX 155, "Montant net", 42, 70, 154, 154
    BEGIN
        NAME "Order Amount Frame"
    END

    STATICTEXT 156, "Sous-somme", 46, 92, 69, 14
    BEGIN
        NAME "Subtotal Label"
    END

    STATICTEXT 157, "", 112, 98, 70, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Subtotal"
    END

    STATICTEXT 158, "TVA", 49, 119, 50, 20
    BEGIN
        NAME "Tax Label"
    END

    STATICTEXT 159, "", 112, 119, 70, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Tax"
    END

    STATICTEXT 160, "Transport:", 49, 147, 50, 20
    BEGIN
        NAME "Freight Label"
    END

    STATICTEXT 161, "", 112, 147, 70, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Freight"
    END

    STATICTEXT 162, "Total:", 49, 175, 50, 20
    BEGIN
        NAME "Total Label"
    END

    STATICTEXT 163, "", 112, 175, 70, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Total"
    END

    BUTTON 165, "&retour", 252, 357, 90, 25
    BEGIN
        NAME "Previous"
    END

    BUTTON 1, "&acheter", 364, 357, 90, 25
    BEGIN
        NAME "Buy Now"
    END

    BUTTON 2, "retour au &panier", 42, 357, 147, 25
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

    GROUPBOX 169, "Nr.de commande", 42, 224, 154, 63
    BEGIN
        NAME "Reference Title"
    END

    STATICTEXT 171, "", 319, 40, 150, 25
    BEGIN
        FOREGROUNDCOLOR RGB(255,0,0)
        NAME "Message"
    END

    GROUPBOX 175, "Nom du contact", 42, 280, 154, 60
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

    STATICTEXT 176, "Prix liste", 49, 196, 56, 20
    BEGIN
        NAME "List Label"
    END

    STATICTEXT 177, "", 112, 196, 70, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "List"
    END

END

WINDOW 110 "Informations sur le compte " 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Account"
    NOT SIZABLE
    STATICTEXT 110, "1.Adresse E-Mail:", 20, 50, 100, 19
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

    STATICTEXT 111, "Mot de passe:", 20, 110, 100, 18
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

    STATICTEXT 112, "Confirmer le mot de passe:", 20, 140, 100, 30
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
        GRIDCOLTITLE 0, "Numéro de carte"
        GRIDCOLTITLE 1, "Type de carte"
        GRIDCOLTITLE 2, "Nom de la carte"
        GRIDCOLTITLE 3, "MM"
        GRIDCOLTITLE 4, "AAAA"
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

    STATICTEXT 113, "Remarque: le mot de passe doit avoir un minimum de 10 caractères et doit contenir des caractères alphabétiques majuscule et minuscule, des caractères numériques et des caractères spéciaux ~!@#$%^&*()+=", 230, 110, 250, 80
    BEGIN
        NAME "Note"
    END

    STATICTEXT 120, "2. Adresse E-Mail:", 19, 80, 100, 19
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

    BUTTON 108, "&Menu", 390, 370, 90, 25
    BEGIN
        NAME "Cancel"
        SHORTCUE "Return to Main"
    END

    BUTTON 103, "&Nouvelle carte de crédit", 10, 340, 124, 25
    BEGIN
        NAME "New CC"
    END

    BUTTON 101, "&OK", 290, 370, 90, 25
    BEGIN
        NAME "Accept"
        SHORTCUE "Update Account Information"
    END

    STATICTEXT 121, "Double cliquez sur la grille ou cliquez sur le bouton „Editer carte bancaire“ pour éditer les informations concernant la carte bancaire sélectionnée.", 20, 300, 470, 35
    BEGIN
        NAME "Message"
    END

    BUTTON 104, "&Rapports", 140, 340, 90, 25
    BEGIN
        NAME "Email_rpt"
        SHORTCUE "Select & e-mail your Active SN or Aged AR report to you."
    END

    BUTTON 106, "Coordonnées Client Final", 290, 340, 190, 25
    BEGIN
        NAME "EndUserData"
    END

    BUTTON 105, "&Facture", 140, 370, 90, 25
    BEGIN
        NAME "invoice"
        SHORTCUE "Review/Pay Invoices"
    END

    BUTTON 102, "Editer carte bancaire", 10, 370, 124, 25
    BEGIN
        NAME "EditCC"
    END

    BUTTON 114, "License Update", 120, 168, 100, 25
    BEGIN
        NAME "btnLicenseUpdate"
    END

    STATICTEXT 130, "First Name:", 20, 20, 90, 25
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

WINDOW 111 "Histoire des numéros de série" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "History"
    NOT SIZABLE
    STATICTEXT 101, "Numéro de série:", 18, 60, 82, 23
    BEGIN
        NAME "Serial Number Label"
    END

    STATICTEXT 102, "", 100, 60, 120, 20
    BEGIN
        NAME "Serial Number"
    END

    STATICTEXT 105, "Article:", 20, 85, 80, 20
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
        GRIDCOLTITLE 1, "Facture"
        GRIDCOLTITLE 2, "Activité"
        GRIDCOLTITLE 3, "Revision"
        GRIDCOLTITLE 4, "Users"
        GRIDCOLTITLE 5, "Key/Autorisation"
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

    BUTTON 2, "&retour", 7, 10, 72, 25
    BEGIN
        NAME "Close"
        SHORTCUE "Return to View Licensed Product"
    END

    BUTTON 113, "&afficher le lien", 86, 10, 90, 25
    BEGIN
        NAME "Clients"
    END

    TABCONTROL 114, "", 14, 138, 480, 239
    BEGIN
        AUTOMANAGEMENT
        NAME "Tab"
        TAB "     Histoire de la transaction" 0 110
        TAB "         Histoire de la licence          " 0 115
    END

    LISTBOX 115, "", 0, 0, 460, 197
    BEGIN
        CLIENTEDGE
        FONT "Arial Monospaced" 8
        NAME "List Box"
    END

    BUTTON 116, "Réactivation de &licence", 181, 10, 123, 25
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
    GRID 100, "", 19, 156, 480, 183
    BEGIN
        CLIENTEDGE
        COLUMNHEAD 25, 102
        COLUMNS 4
        GRIDCOLTITLE 0, "Nr.de série"
        GRIDCOLTITLE 1, "Numéro d´article"
        GRIDCOLTITLE 2, "User"
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

    BUTTON 2, "retour", 390, 360, 90, 25
    BEGIN
        NAME "Close"
        SHORTCUE "Return to View Licensed Product"
    END

    STATICTEXT 103, "Numéro de série", 20, 30, 80, 25
    BEGIN
        NAME "Serial Number Label"
    END

    STATICTEXT 104, "", 100, 30, 150, 25
    BEGIN
        NAME "Serial Number"
    END

    STATICTEXT 105, "Numéro de l´article", 20, 60, 80, 25
    BEGIN
        NAME "Item Number Label"
    END

    STATICTEXT 106, "", 100, 60, 150, 25
    BEGIN
        NAME "Item Number"
    END

    STATICTEXT 107, "Description", 20, 90, 80, 25
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

    STATICTEXT 110, "Ces informations ne seront utilisées seulement en tant qu´information. BASIS n´utilise pas et ne gère pas ce lien Server/Client", 260, 30, 210, 50
    BEGIN
        NAME "Disclaimer"
    END

END

WINDOW 113 "Recherche de numéro de série" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Find SN"
    NOT SIZABLE
    STATICTEXT 99, "prochain numéro de série:", 5, 30, 125, 22
    BEGIN
        NAME "Serial Number Label"
    END

    INPUTE 100, "", 130, 30, 140, 20
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Serial Number"
        PADCHARACTER 32
        PASSENTER
        PASSTAB
    END

    BUTTON 1, "&continuer la recherche", 280, 43, 126, 30
    BEGIN
        NAME "Next"
    END

    STATICTEXT 101, "combien à afficher?", 17, 80, 110, 20
    BEGIN
        NAME "Limit Label"
    END

    INPUTN 106, "12", 135, 81, 50, 20
    BEGIN
        CLIENTEDGE
        HIGHLIGHT
        NAME "Limit"
        PASSENTER
        PASSTAB
        NOT INSERTMODE
    END

    CHECKBOX 108, "&Seulement des licences actives?", 198, 77, 180, 25
    BEGIN
        CHECKED
        NAME "Active Only"
    END

    BUTTON 110, "Recherche en &arrière", 280, 10, 126, 29
    BEGIN
        NAME "Previous"
    END

    GRID 111, "", 20, 115, 460, 215
    BEGIN
        CLIENTEDGE
        COLUMNHEAD 25, 109
        COLUMNS 4
        GRIDCOLTITLE 0, "Nr.de série"
        GRIDCOLTITLE 1, "vendu"
        GRIDCOLTITLE 2, "User"
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

    BUTTON 2, "&retour", 390, 370, 90, 25
    BEGIN
        NAME "Close"
        SHORTCUE "Return to View Licensed Product"
    END

    STATICTEXT 112, "Double cliquez sur la grille pour avoir plus d'informations sur la licence ou cliquez sur sur le bouton « Sélectionnez un numéro de série »  ", 20, 340, 270, 50
    BEGIN
        NAME "Message"
    END

    BUTTON 102, "Sélectionnez un numéro de série", 300, 340, 180, 25
    BEGIN
        NAME "SelectSN"
    END

END

WINDOW 114 "Carte de crédit" 0 0 500 400
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

    STATICTEXT 106, "Numéro de la carte:", 214, 217, 73, 28
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

    STATICTEXT 108, "Nom de la carte:", 217, 252, 70, 25
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

    STATICTEXT 110, "Date d´expiration:", 216, 284, 74, 28
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

    BUTTON 200, "A&ctualiser", 280, 360, 90, 25
    BEGIN
        NAME "Update"
    END

    BUTTON 201, "&Annuler", 170, 360, 90, 25
    BEGIN
        NAME "Delete"
    END

    BUTTON 2, "&Retour", 390, 360, 90, 25
    BEGIN
        NAME "Cancel"
        SHORTCUE "Return to Account"
    END

    GROUPBOX 100, "Type", 40, 195, 130, 135
    BEGIN
        NAME "Credit Card Group"
    END

    GROUPBOX 101, "Information sur la carte", 189, 196, 270, 135
    BEGIN
        NAME "Group Control"
    END

    GROUPBOX 202, "Détails des cartes de crédit", 20, 175, 460, 175
    BEGIN
        NAME "Credit Card Details"
    END

END

WINDOW 116 "Réactivation" 0 0 350 220
BEGIN
    NOT CLOSEBOX
    DIALOGBEHAVIOR
    DIALOGBORDER
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "reset_license"
    NOT SIZABLE
    BUTTON 1, "&Oui", 90, 170, 80, 20
    BEGIN
        NAME "OK_btn"
    END

    BUTTON 2, "&Non", 175, 170, 80, 20
    BEGIN
        NAME "cancel"
    END

    STATICTEXT 102, "Au cas où vous aimeriez réactiver cette licence, veuillez choisir une raison de la liste ci-dessous. BASIS Europe Distribution GmbH vous transmettra de cette réactivation", 15, 20, 315, 55
    BEGIN
        NAME "Static Text"
    END

    LISTBUTTON 103, "", 98, 91, 160, 120
    BEGIN
        NAME "reset_reason"
    END

    STATICTEXT 104, "Raison de la réactivation", 15, 90, 75, 36
    BEGIN
        NAME "rreason_txt"
    END

    STATICTEXT 105, "Voulez-vous continuer?", 15, 145, 250, 20
    BEGIN
        NAME "proceed_txt"
    END

END

WINDOW 117 "Sélection de numéros de série" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 1128269312
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "trade_select"
    NOT SIZABLE
    LISTBOX 100, "", 30, 135, 150, 106
    BEGIN
        CLIENTEDGE
        MULTISELECT
        NAME "available_sn_lbox"
    END

    LISTBOX 101, "", 320, 135, 150, 106
    BEGIN
        CLIENTEDGE
        MULTISELECT
        NAME "selected_sn_lbox"
    END

    BUTTON 104, "&ajouter >", 210, 140, 91, 25
    BEGIN
        NAME "add_btn"
    END

    BUTTON 105, "< &enlever", 210, 170, 91, 25
    BEGIN
        NAME "remove_btn"
    END

    BUTTON 107, "&continuer", 364, 273, 80, 25
    BEGIN
        NAME "exchange_btn"
    END

    BUTTON 106, "<< enlever &tous", 210, 200, 91, 25
    BEGIN
        NAME "remove_all_btn"
    END

    BUTTON 109, "&Menu", 364, 329, 80, 25
    BEGIN
        NAME "cancel_btn"
    END

    STATICTEXT 110, "Prochaine démarche", 245, 280, 105, 17
    BEGIN
        JUSTIFICATION 32768
        NAME "exchange_txt"
    END

    STATICTEXT 113, "", 31, 55, 430, 45
    BEGIN
        NAME "selected_desc"
    END

    STATICTEXT 114, "Numéro de série", 48, 19, 71, 30
    BEGIN
        NAME "starting_sn_text"
    END

    EDIT 115, "", 120, 20, 100, 20
    BEGIN
        CLIENTEDGE
        NAME "starting_sn"
    END

    STATICTEXT 116, "Numéros de série disponible", 34, 107, 140, 23
    BEGIN
        NAME "Static Text"
    END

    STATICTEXT 117, "Numéros de série sélectionnés", 322, 107, 161, 21
    BEGIN
        NAME "Static Text"
    END

    BUTTON 1, "Feuilletage en a&vant", 350, 14, 105, 28
    BEGIN
        NAME "scan_forward_btn"
    END

    BUTTON 119, "Feuilletage en a&rrière", 233, 15, 110, 27
    BEGIN
        NAME "scan_back_btn"
    END

    GROUPBOX 120, "", 20, 45, 450, 60
    BEGIN
        NAME "selected_desc_ctl"
    END

    STATICTEXT 121, "Interruption ou retour au menu principal", 154, 336, 195, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "cancel_txt"
    END

END

WINDOW 118 "Mise à jour de licences sélectionnées" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 41943040
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "trade"
    NOT SIZABLE
    GROUPBOX 106, "Nouveau produit", 250, 15, 235, 157
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

    STATICTEXT 151, "Votre prix:", 317, 364, 76, 21
    BEGIN
        JUSTIFICATION 32768
        NAME "Price Label"
    END

    BUTTON 1, "&dans le panier", 196, 336, 105, 20
    BEGIN
        NAME "Accept"
    END

    BUTTON 2, "&Nouveau choix", 126, 364, 84, 20
    BEGIN
        NAME "Cancel"
    END

    STATICTEXT 154, "Numéro de commande", 14, 329, 61, 35
    BEGIN
        JUSTIFICATION 32768
        NAME "Reference Label"
    END

    INPUTE 155, "", 84, 332, 100, 20
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

    BUTTON 200, "&calculer", 35, 364, 84, 20
    BEGIN
        NAME "Recalculate"
    END

    STATICTEXT 1003, "Extended User:", 259, 196, 110, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "ent_users_lbl"
    END

    STATICTEXT 1009, "Numéros de série sélectionnés", 21, 6, 210, 22
    BEGIN
        NAME "Static Text"
    END

    STATICTEXT 1011, "Calcul", 20, 175, 90, 20
    BEGIN
        NAME "detail pricing label"
    END

    CHECKBOX 1008, " Plan SAM ", 310, 245, 80, 20
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

    STATICTEXT 144, "Date d´échéance", 259, 273, 111, 17
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

    BUTTON 1015, "&Menu", 217, 364, 77, 20
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

    STATICTEXT 1018, "Prix de la liste", 312, 347, 78, 12
    BEGIN
        JUSTIFICATION 32768
        NAME "listprice_lbl"
    END

END

WINDOW 119 "Sélectionnez un rapport" 0 0 350 310
BEGIN
    RADIOGROUP 104, 105, 106
    NOT CLOSEBOX
    DIALOGBEHAVIOR
    DIALOGBORDER
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Send_rpt"
    NOT SIZABLE
    BUTTON 1, "&Ok", 75, 275, 90, 25
    BEGIN
        NAME "Ok"
    END

    BUTTON 2, "&Interruption", 185, 275, 90, 25
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

    STATICTEXT 102, "Le rapport contenant la liste de vos numéros de série actif vous sera transmis par email à l'adresse suivante", 41, 45, 289, 30
    BEGIN
        NAME "Send_Info"
    END

    STATICTEXT 103, "", 21, 180, 309, 25
    BEGIN
        FOREGROUNDCOLOR RGB(255,0,0)
        NAME "Progress_Info"
    END

    RADIOBUTTON 104, "Rapport des numéros de série actifs", 21, 16, 300, 25
    BEGIN
        NAME "sn_rpt"
    END

    RADIOBUTTON 105, "Expired Perpetual License Report", 25, 121, 300, 25
    BEGIN
        NAME "ep_rpt"
    END

    RADIOBUTTON 106, "Rapport de toutes les factures non-payées", 25, 187, 300, 25
    BEGIN
        NAME "ar_rpt"
    END

    STATICTEXT 100, "Le rapport chronologique des comptes débiteurs sera affiché dans votre explorer", 41, 216, 289, 30
    BEGIN
        NAME "Static Text"
    END

    STATICTEXT 107, "The Expired Perpetual License report will be  sent to the above E-mail Address.", 41, 150, 289, 30
    BEGIN
        NAME "Static Text"
    END

END

WINDOW 120 "Renouveler" 0 0 350 250
BEGIN
    NOT CLOSEBOX
    DIALOGBEHAVIOR
    DIALOGBORDER
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Renewal"
    NOT SIZABLE
    STATICTEXT 131, "Numéro de série", 15, 15, 80, 20
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

    STATICTEXT 133, "Expiration", 20, 45, 75, 20
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

    STATICTEXT 125, "Prix de la liste", 20, 155, 70, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "listprice_lbl"
    END

    EDIT 126, "", 100, 155, 90, 20
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "listprice"
        READONLY
    END

    STATICTEXT 127, "Votre prix", 20, 180, 70, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "price_lbl"
    END

    EDIT 128, "", 100, 180, 90, 20
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "Price"
        READONLY
    END

    STATICTEXT 129, "Nr.de commande", 5, 210, 95, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Reference Label"
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

    BUTTON 2, "&Interruption", 200, 180, 90, 20
    BEGIN
        NAME "cancel"
    END

    BUTTON 1, "dans le &panier", 200, 210, 90, 20
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

