//#charset: windows-1252

VERSION "4.0"

WINDOW 100 "Sistema de acceso a BASIS b-commerce" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Login"
    NOT SIZABLE
    STATICTEXT 101, "Bienvennido a b-commerce", 180, 130, 140, 20
    BEGIN
        JUSTIFICATION 16384
        NAME "Welcome"
    END

    STATICTEXT 102, "Número de Cliente:", 140, 230, 100, 25
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

    STATICTEXT 104, "Contraseña:", 140, 260, 100, 25
    BEGIN
        NAME "Password Label"
    END

    BUTTON 1, "&Entrar", 390, 360, 95, 25
    BEGIN
        NAME "Login"
    END

    BUTTON 2, "&Salida", 280, 360, 90, 25
    BEGIN
        NAME "Exit"
    END

    STATICTEXT 108, "Si aún no ha establecido una cuenta de b-commerce, por favor llame a su representante de ventas en BASIS al 1.505.938.6120.", 80, 320, 340, 30
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

    STATICTEXT 106, "Por favor introduzca su número de cliente y contraseña:", 40, 200, 410, 25
    BEGIN
        NAME "Prompt"
    END

    STATICTEXT 111, "Este sitio es para uso exclusivouso de Clientes de BASIS.", 135, 160, 280, 20
    BEGIN
        NAME "Site Info"
    END

END

WINDOW 101 "Sistema b-commerce de BASIS" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Main"
    NOT SIZABLE
    BUTTON 112, "Añadir &Usuarios/Actualizar", 330, 170, 135, 25
    BEGIN
        NAME "View SN"
        SHORTCUE "Ver/modifar una licencia individual."
    END

    BUTTON 116, "&Compra", 330, 20, 135, 25
    BEGIN
        NAME "View Item"
        SHORTCUE "Seleccionar un nuevo producto para comprar."
    END

    BUTTON 117, "&Información de la Cuenta", 330, 315, 135, 25
    BEGIN
        NAME "Account"
        SHORTCUE "Información de la cuenta"
    END

    BUTTON 118, "&Salir", 330, 365, 135, 25
    BEGIN
        NAME "Logout"
        SHORTCUE "Salir"
    END

    BUTTON 119, "Carrit&o de Compras", 331, 235, 135, 25
    BEGIN
        NAME "Cart"
        SHORTCUE "Ir al Carrito de Compras."
    END

    GROUPBOX 1000, "Modificar o ver una Licencia", 20, 95, 460, 110
    BEGIN
        NAME "Group Control"
    END

    GROUPBOX 1001, "Carrito de Compras", 20, 210, 460, 70
    BEGIN
        NAME "Group Control"
    END

    GROUPBOX 1002, "Información de la Cuenta", 20, 285, 460, 70
    BEGIN
        NAME "Group Control"
    END

    STATICTEXT 1004, "Revisar, editar o mandar un e-mail del contenido de su carrito", 90, 235, 235, 30
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    STATICTEXT 1005, "Mantenimiento a la Información de su cuenta", 90, 315, 235, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Texto estático"
    END

    BUTTON 120, "&Actualizar a BPL", 330, 120, 135, 25
    BEGIN
        NAME "trade_btn"
        SHORTCUE "Permite actualizar a BBj o PRO/5 Rev4.x & mayor."
    END

    GROUPBOX 1009, "Licencia nueva", 20, 5, 460, 85
    BEGIN
        NAME "Group Control"
    END

    STATICTEXT 1011, "Configurar una nueva licencia", 90, 35, 235, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Static Text"
    END

    STATICTEXT 1015, "Actualizar y consolidar licencias de BASIS en una licencia de cobertura total para Licencias de Productos de BASIS (BPL)", 100, 120, 220, 50
    BEGIN
        JUSTIFICATION 32768
        NAME "trd_text"
    END

    STATICTEXT 1017, "Añadir usuarios; actualizar o ver licencia y otras opciones de licencia", 90, 170, 235, 30
    BEGIN
        JUSTIFICATION 32768
        NAME "mod_text"
    END

    BUTTON 1018, "&Renta", 330, 50, 135, 25
    BEGIN
        NAME "Rent"
        SHORTCUE "Seleccionar un nuevo producro para comprar."
    END

    BUTTON 121, "Support Interface", 70, 365, 120, 25
    BEGIN
        INVISIBLE
        NAME "SupportInterface"
    END

    BUTTON 122, "Descargar BBj", 200, 365, 120, 25
    BEGIN
        NAME "btnDownloadBBj"
    END

    HTMLVIEW 123, "<html>\n  <table align=\042center\042 border=\0420\042>\n    <tr>\n      <td align=\042center\042>\n        <a onclick=\042window.open('http://www.basis.com/bbj-download');\042 href=\042#\042>Download \n        BBj</a>\n      </td>\n    </tr>\n  </table>\n</html>\n", 200, 365, 120, 25
    BEGIN
        NAME "HtmlView"
    END

END

WINDOW 102 "Ver la Licencia del Producto" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 33554432
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "View SN"
    NOT SIZABLE
    STATICTEXT 99, "Número de Serie:", 20, 20, 80, 25
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

    BUTTON 101, "&Ver este Número de Serie", 250, 20, 130, 25
    BEGIN
        NAME "View SN"
    END

    BUTTON 102, "&Escanear Licencia", 380, 20, 110, 25
    BEGIN
        NAME "Find SN"
    END

    STATICTEXT 103, "Autorización:", 20, 50, 80, 25
    BEGIN
        NAME "Authorization Label"
    END

    STATICTEXT 104, "", 100, 50, 150, 25
    BEGIN
        NAME "Authorization"
    END

    STATICTEXT 113, "Fecha de Compra:", 265, 50, 80, 25
    BEGIN
        NAME "Purchase Date Label"
    END

    STATICTEXT 115, "", 345, 50, 125, 20
    BEGIN
        NAME "Purchase Date"
    END

    STATICTEXT 121, "Activa?", 155, 80, 50, 20
    BEGIN
        NAME "Active Label"
    END

    STATICTEXT 124, "", 205, 80, 40, 20
    BEGIN
        NAME "Status"
    END

    STATICTEXT 133, "Producto:", 20, 110, 80, 25
    BEGIN
        NAME "Product Label"
    END

    STATICTEXT 134, "", 100, 110, 150, 25
    BEGIN
        NAME "Product"
    END

    STATICTEXT 136, "Plataforma:", 20, 140, 80, 25
    BEGIN
        NAME "Platform Label"
    END

    STATICTEXT 137, "", 100, 140, 150, 25
    BEGIN
        NAME "Platform"
    END

    STATICTEXT 139, "Nivel O.S.:", 20, 170, 80, 25
    BEGIN
        NAME "Port ID Label"
    END

    STATICTEXT 140, "", 100, 170, 150, 25
    BEGIN
        NAME "oslevel"
    END

    STATICTEXT 142, "Revisión:", 20, 200, 80, 25
    BEGIN
        NAME "Revision Label"
    END

    STATICTEXT 143, "", 100, 200, 40, 25
    BEGIN
        NAME "Revision"
    END

    STATICTEXT 144, "Tipo:", 20, 230, 80, 25
    BEGIN
        NAME "License Label"
    END

    STATICTEXT 145, "", 100, 230, 150, 25
    BEGIN
        NAME "License"
    END

    STATICTEXT 154, "Usuarios:", 20, 80, 80, 25
    BEGIN
        NAME "Users Label"
    END

    STATICTEXT 155, "", 100, 80, 50, 25
    BEGIN
        NAME "Users"
    END

    STATICTEXT 160, "Artículo:", 20, 260, 80, 20
    BEGIN
        NAME "Item Number Label"
    END

    STATICTEXT 161, "", 100, 260, 150, 20
    BEGIN
        NAME "Item Number"
    END

    STATICTEXT 162, "Descripción:", 20, 285, 80, 20
    BEGIN
        NAME "Description Label"
    END

    STATICTEXT 163, "", 100, 285, 380, 20
    BEGIN
        NAME "Description"
    END

    BUTTON 165, "Ver &Historia", 30, 335, 100, 25
    BEGIN
        NAME "History"
    END

    BUTTON 166, "Modificar &Licensia", 30, 365, 100, 25
    BEGIN
        NAME "Change"
    END

    BUTTON 2, "Regrasar a &Principal", 360, 365, 110, 25
    BEGIN
        NAME "Close"
    END

    STATICTEXT 175, "Expiración:", 265, 110, 75, 20
    BEGIN
        NAME "Expire Label"
    END

    STATICTEXT 177, "", 340, 110, 125, 20
    BEGIN
        NAME "Expiration Date"
    END

    STATICTEXT 179, "Soporte Disponible:", 265, 165, 90, 25
    BEGIN
        NAME "available support label"
    END

    STATICTEXT 180, "", 355, 165, 40, 20
    BEGIN
        NAME "available support"
    END

    BUTTON 181, "&Renovar", 140, 335, 100, 25
    BEGIN
        NAME "Renew"
        SHORTCUE "Renovar SAM Plan/Kit/Renta "
    END

    STATICTEXT 105, "", 100, 310, 380, 20
    BEGIN
        NAME "enduser"
    END

    BUTTON 182, "&Toggle Renewal", 140, 365, 100, 25
    BEGIN
        NAME "toggle_renew"
    END

    STATICTEXT 183, "Renovación:", 265, 135, 75, 20
    BEGIN
        NAME "renewal_lbl"
    END

    STATICTEXT 184, "", 340, 135, 145, 25
    BEGIN
        NAME "renewal_status"
    END

    GROUPBOX 185, "SAM/Kit/Renta", 255, 85, 240, 115
    BEGIN
        NAME "sam_grp"
    END

    BUTTON 106, "Send License", 250, 365, 100, 25
    BEGIN
        NAME "sendLicense"
    END

    STATICTEXT 107, "Usuario Final:", 20, 310, 80, 22
    BEGIN
        NAME "enduserLabel"
    END

    CHECKBOX 108, "Virtual", 150, 195, 90, 25
    BEGIN
        NAME "virtualFlag"
    END

END

WINDOW 103 "Modificar Licencia" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 46137344
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Edit SN"
    NOT SIZABLE
    STATICTEXT 100, "Número de Serie:", 20, 235, 75, 25
    BEGIN
        NAME "Serial Number Label"
    END

    STATICTEXT 101, "", 100, 235, 160, 20
    BEGIN
        NAME "Serial Number"
    END

    GROUPBOX 103, "Configuración Actual", 10, 5, 260, 225
    BEGIN
        NAME "Current Configuration"
    END

    GROUPBOX 106, "Configuración Modificada", 270, 5, 220, 300
    BEGIN
        NAME "Modified Configuration"
    END

    STATICTEXT 113, "Producto:", 20, 25, 55, 20
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

    STATICTEXT 121, "Plataforma:", 20, 50, 55, 20
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

    STATICTEXT 133, "Nivel S/O:", 20, 72, 55, 20
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

    STATICTEXT 136, "Revisión:", 20, 100, 55, 20
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

    STATICTEXT 142, "Usuarios:", 20, 150, 55, 20
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

    BUTTON 1, "Añadir al &Carrito", 245, 365, 85, 20
    BEGIN
        NAME "Accept"
    END

    BUTTON 2, "&Número de Serie", 330, 365, 90, 20
    BEGIN
        NAME "Cancel"
        SHORTCUE "Regresar a la vista de la Licencia"
    END

    STATICTEXT 155, "No. Orden Compra:", 15, 360, 60, 30
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
        SHORTCUE "Orden de Compra - 10 caracteres o menos."
    END

    STATICTEXT 200, "", 20, 265, 240, 30
    BEGIN
        NAME "Description"
    END

    STATICTEXT 1003, "Usuarios Extended:", 320, 150, 110, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Users Label"
    END

    BUTTON 1002, "&Recálculo", 175, 365, 70, 20
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

    STATICTEXT 1011, "Soporte/Incidente de Reseteo:", 282, 255, 163, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "additional support label"
    END

    EDIT 1012, "", 445, 255, 30, 20
    BEGIN
        CLIENTEDGE
        NAME "additional support"
    END

    STATICTEXT 1013, "Soporte:", 20, 200, 55, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "available_support_label"
    END

    STATICTEXT 1014, "", 80, 200, 30, 20
    BEGIN
        NAME "available_support"
    END

    STATICTEXT 1015, "Usuario Estándar:", 340, 175, 90, 20
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

    STATICTEXT 1019, "Su precio:", 280, 335, 85, 20
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
        SHORTCUE "Ver calendario/Seleccionar fecha"
    END

    STATICTEXT 1021, "Fecha de Renovación:", 280, 225, 100, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "renew_dt_lbl"
    END

    BUTTON 1022, "&Principal", 420, 365, 70, 20
    BEGIN
        NAME "Main"
    END

    CHECKBOX 1017, "Runtime:", 410, 280, 65, 20
    BEGIN
        NAME "runtime"
        SHORTCUE "No permite acceso a modo consola."
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

    STATICTEXT 1028, "Precio de Lista:", 280, 315, 85, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "listprice_lbl"
    END

    CHECKBOX 1029, "Licencia Anual:", 275, 200, 115, 20
    BEGIN
        NAME "no_rif"
        TEXTLEFT
        JUSTIFICATION 32768
    END

END

WINDOW 104 "Revisión o Compra de nuevo Producto" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 41943040
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Item"
    NOT SIZABLE
    GROUPBOX 10, "Detalles del Producto", 11, 10, 280, 220
    BEGIN
        NAME "Item Details"
    END

    STATICTEXT 98, "Producto:", 20, 25, 55, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Product Label"
    END

    LISTBUTTON 99, "", 80, 25, 200, 150
    BEGIN
        NAME "Product"
        SELECTIONHEIGHT 20
    END

    STATICTEXT 100, "Plataforma:", 20, 50, 55, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Platform Label"
    END

    LISTBUTTON 101, "", 80, 50, 200, 150
    BEGIN
        NAME "Platform"
    END

    STATICTEXT 102, "Nivel S/O:", 20, 75, 55, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "O/S Label"
    END

    LISTBUTTON 103, "", 80, 75, 200, 150
    BEGIN
        NAME "oslevel"
    END

    STATICTEXT 104, "Revisión:", 20, 100, 55, 20
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

    STATICTEXT 113, "Producto:", 20, 150, 55, 20
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

    STATICTEXT 130, "No. Orden Compra:", 10, 360, 60, 30
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
        SHORTCUE "Orden de Compra - 10 caracteres o menos."
    END

    BUTTON 1, "&Añadir al Carrito", 305, 365, 85, 20
    BEGIN
        NAME "Accept"
        SHORTCUE "Añadir esta compra al carrito de compras"
    END

    BUTTON 2, "&Principal", 400, 365, 70, 20
    BEGIN
        NAME "Close"
    END

    BUTTON 200, "&Recálculo", 225, 365, 70, 20
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

    STATICTEXT 206, "Usuarios Extended:", 305, 50, 100, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "users_lbl"
    END

    STATICTEXT 207, "Usuarios Estándar:", 305, 75, 100, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "users2_lbl"
    END

    STATICTEXT 212, "Cantidad:", 320, 25, 85, 20
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

    STATICTEXT 211, "Su precio:", 320, 310, 60, 20
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

    STATICTEXT 231, "Fecha de Renovación", 340, 125, 110, 15
    BEGIN
        JUSTIFICATION 16384
        NAME "renew_dt_lbl"
    END

    TOOLBUTTON 232, "", 450, 142, 30, 30
    BEGIN
        NAME "renew_dt_btn"
        SHORTCUE "Ver calendario/Seleccionar fecha"
    END

    CHECKBOX 233, "Runtime:", 365, 175, 70, 20
    BEGIN
        NAME "runtime"
        SHORTCUE "No permite acceso a modo consola."
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

    STATICTEXT 242, "Precio de Lista:", 297, 290, 83, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "listpricelbl"
    END

    CHECKBOX 234, "Virtual:", 365, 195, 70, 25
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

WINDOW 105 "Carrito de Compra" 0 0 500 400
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
        GRIDCOLTITLE 0, "OrdenCompra"
        GRIDCOLTITLE 1, "Número Serie"
        GRIDCOLTITLE 2, "Cant."
        GRIDCOLTITLE 3, "No. Producto"
        GRIDCOLTITLE 4, "Usarios"
        GRIDCOLTITLE 5, "Precio"
        GRIDCOLTITLE 6, "SAMPlan"
        GRIDCOLWIDTH 0, 75
        GRIDCOLWIDTH 1, 75
        GRIDCOLWIDTH 2, 35
        GRIDCOLWIDTH 3, 105
        GRIDCOLWIDTH 4, 45
        GRIDCOLWIDTH 5, 65
        GRIDCOLWIDTH 6, 48
        HORIZLINES
        HSCROLLBAR
        MAXCOLS 2147483647
        NAME "Grid"
        ROWS 10
        USERSIZE
        VERTLINES
        VSCROLLBAR
    END

    BUTTON 100, "&Dirección de Correo", 115, 360, 105, 25
    BEGIN
        NAME "Email"
        SHORTCUE "envío de e-mail de lita de productos del contenido del carrito de compras para su referencia."
    END

    STATICTEXT 105, "Su precio", 385, 300, 80, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Subtotal Label"
    END

    STATICTEXT 106, "", 385, 325, 80, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Subtotal"
    END

    BUTTON 113, "&Añadir Usuarios/Actualizar", 330, 60, 140, 25
    BEGIN
        NAME "View SN"
        SHORTCUE "Ver/modificar una licencia individual."
    END

    BUTTON 114, "&Licencia nueva", 230, 60, 100, 25
    BEGIN
        NAME "View Item"
        SHORTCUE "Seleccionar un nuevo producto para comprar."
    END

    LISTBUTTON 116, "", 280, 360, 110, 90
    BEGIN
        NAME "Reference"
    END

    STATICTEXT 117, "No. Orden Compra:", 220, 355, 55, 30
    BEGIN
        JUSTIFICATION 32768
        NAME "Reference Label"
    END

    BUTTON 2, "Regresar a &Principal", 10, 360, 105, 25
    BEGIN
        NAME "Close"
        SHORTCUE "Regresar a Principal"
    END

    BUTTON 118, "&Elegir", 400, 360, 90, 25
    BEGIN
        NAME "Checkout"
        SHORTCUE "Proceder con Selección"
    END

    GROUPBOX 150, "Añadir al Carrito", 10, 10, 480, 90
    BEGIN
        NAME "Add to cart"
    END

    STATICTEXT 151, "Añadir al Carrito le permite añadir un nuevo artículo a su carrito de compra, o hacer cambios a una licencia existente como añadir usuarios o actulizarse a una nueva revisión.", 20, 30, 460, 30
    BEGIN
        NAME "Add to Cart Message"
    END

    GROUPBOX 160, "Modificar Carrito", 10, 105, 480, 250
    BEGIN
        NAME "Modify Cart"
    END

    STATICTEXT 161, "Para editar un artículo en su carrito de compras, haga doble click en una línea abajo  o de un click sencillo y un click al botón \042Editar Artículo\042. Para suprimir un artículo, de un click sencillo y de un click al botón \042Suprimir Artìculo\042.", 20, 125, 460, 45
    BEGIN
        NAME "Message"
    END

    BUTTON 119, "&Suprimir Producto", 380, 165, 100, 25
    BEGIN
        NAME "Delete"
    END

    BUTTON 165, "&Actualizar a BPL", 130, 60, 100, 25
    BEGIN
        NAME "trade_btn"
        SHORTCUE "Permite actualizar a BBj o PRO/5 Rev4.x & mayor."
    END

    STATICTEXT 166, "", 300, 325, 80, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "listprice"
    END

    STATICTEXT 167, "Precio de Lista", 300, 300, 80, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "listprice_lbl"
    END

    STATICTEXT 168, "Subtotal:", 208, 325, 80, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "sub_lbl"
    END

    BUTTON 120, "Editar Artículo", 275, 165, 100, 25
    BEGIN
        NAME "EditItem"
    END

END

WINDOW 106 "Elegir 1 de 2" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Checkout 1"
    NOT SIZABLE
    STATICTEXT 101, "Primero:", 280, 30, 40, 25
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

    STATICTEXT 103, "Segundo:", 280, 60, 50, 25
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

    BUTTON 904, "&Resetear", 170, 130, 90, 25
    BEGIN
        NAME "Ship Standard"
    END

    BUTTON 905, "&U.S.", 280, 130, 90, 25
    BEGIN
        NAME "Ship USA"
    END

    BUTTON 906, "&Internacional", 390, 130, 90, 25
    BEGIN
        NAME "Ship Intl"
    END

    STATICTEXT 908, "", 20, 195, 220, 20
    BEGIN
        NAME "Bill To Name"
    END

    STATICTEXT 909, "", 20, 215, 220, 20
    BEGIN
        NAME "Bill To Addr1"
    END

    STATICTEXT 910, "", 20, 235, 220, 20
    BEGIN
        NAME "Bill To Addr2"
    END

    STATICTEXT 913, "", 20, 255, 220, 20
    BEGIN
        NAME "Bill To City"
    END

    STATICTEXT 914, "", 20, 275, 220, 20
    BEGIN
        NAME "Bill To State"
    END

    STATICTEXT 915, "", 20, 295, 220, 20
    BEGIN
        NAME "Bill To Zip"
    END

    STATICTEXT 916, "", 20, 315, 220, 20
    BEGIN
        NAME "Bill To Country"
    END

    STATICTEXT 918, "", 260, 195, 220, 20
    BEGIN
        NAME "Ship To Name"
    END

    STATICTEXT 919, "", 260, 215, 220, 20
    BEGIN
        NAME "Ship To Addr1"
    END

    STATICTEXT 920, "", 260, 235, 220, 20
    BEGIN
        NAME "Ship To Addr2"
    END

    STATICTEXT 924, "", 260, 255, 220, 20
    BEGIN
        NAME "Ship To City"
    END

    STATICTEXT 925, "", 260, 275, 220, 20
    BEGIN
        NAME "Ship To State"
    END

    STATICTEXT 926, "", 260, 295, 220, 20
    BEGIN
        NAME "Ship To Zip"
    END

    STATICTEXT 927, "", 260, 315, 220, 20
    BEGIN
        NAME "Ship To Country"
    END

    BUTTON 2, "&Previo", 300, 360, 90, 25
    BEGIN
        NAME "Previous"
        SHORTCUE "Regresar al Carrito"
    END

    BUTTON 1, "&Siguiente", 400, 360, 90, 25
    BEGIN
        NAME "Next"
        SHORTCUE "Proceder con Selección"
    END

    GROUPBOX 200, "Envío de la Media", 10, 110, 140, 60
    BEGIN
        NAME "Shipping Control"
    END

    GROUPBOX 907, "Información", 10, 175, 240, 170
    BEGIN
        NAME "Billing Group"
    END

    GROUPBOX 917, "Información de Envío", 250, 175, 240, 170
    BEGIN
        NAME "Shipping Group"
    END

    GROUPBOX 300, "Entrega de Licencia Electrónica", 10, 10, 480, 95
    BEGIN
        NAME "License Group"
    END

    STATICTEXT 301, "Una licencia electronica puede ser enviada a más de un número de fax o dirección de correo.  Si un número de fax o dirección de correo (e-mail) no es introducido, una licencia en papel será enviada a la dirección de envío introducida abajo.", 20, 30, 245, 65
    BEGIN
        NAME "License Message"
    END

    GROUPBOX 928, "Modificar Dirección o Método de envío", 160, 110, 330, 60
    BEGIN
        NAME "Shipping Address"
    END

    STATICTEXT 929, "CD contiene la versión actual de BBj y PRO/5 para todas las plataformas. Todas las versiones anteriores están disponibles en basis.com/products/downloads.html.", 15, 345, 270, 50
    BEGIN
        FOREGROUNDCOLOR RGB(255,0,0)
        NAME "Static Text"
    END

END

WINDOW 107 "Envío Doméstico" 0 0 500 400
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

    RADIOBUTTON 162, " Día 1", 310, 270, 65, 25
    BEGIN
        NAME "One Day"
    END

    RADIOBUTTON 163, " Día 2", 370, 270, 65, 25
    BEGIN
        NAME "Two Day"
    END

    RADIOBUTTON 164, " Día 3", 430, 270, 65, 25
    BEGIN
        NAME "Three Day"
    END

    BUTTON 2, "&Cancelar", 390, 360, 90, 25
    BEGIN
        NAME "Cancel"
        SHORTCUE "Return to Checkout"
    END

    BUTTON 1, "Acepto", 280, 360, 90, 25
    BEGIN
        NAME "&Accept"
    END

    GROUPBOX 100, "Información de Cobranza", 10, 20, 240, 210
    BEGIN
        NAME "Billing Group"
    END

    GROUPBOX 110, "Información de Envío", 250, 20, 240, 210
    BEGIN
        NAME "Shipping Group"
    END

    GROUPBOX 120, "Método de Entrega", 10, 250, 480, 63
    BEGIN
        NAME "Delivery Group"
    END

    STATICTEXT 121, "Nota: su orden será enviada el día hábil siguiente.", 20, 275, 280, 30
    BEGIN
        NAME "Delivery Message"
    END

END

WINDOW 108 "Envío Internacional" 0 0 500 400
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

    BUTTON 2, "&Cancelar", 390, 360, 90, 25
    BEGIN
        NAME "Cancel Checkout"
    END

    BUTTON 1, "Aceptar", 280, 360, 90, 25
    BEGIN
        NAME "&Accept"
    END

    GROUPBOX 110, "Información del cobro", 10, 20, 240, 240
    BEGIN
        NAME "Billing Group"
    END

    GROUPBOX 1000, "Información de Envío", 250, 20, 240, 240
    BEGIN
        NAME "Shipping Group"
    END

END

WINDOW 109 "Elegidos 2 de 2" 0 0 500 400
BEGIN
    RADIOGROUP 101, 136
    RADIOGROUP 143, 144, 145
    NOT CLOSEBOX
    EVENTMASK 33554432
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Checkout 2"
    NOT SIZABLE
    RADIOBUTTON 101, "En la Cuenta", 50, 40, 110, 25
    BEGIN
        NAME "On Account"
    END

    RADIOBUTTON 136, "Tarjeta de Crédito", 220, 40, 105, 25
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

    STATICTEXT 146, "Número:", 230, 220, 70, 25
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

    STATICTEXT 149, "Nombre:", 230, 250, 70, 25
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

    STATICTEXT 151, "Expiración:", 230, 280, 70, 25
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

    CHECKBOX 154, "Mantener este en archivo", 230, 308, 150, 25
    BEGIN
        NAME "Save Credit Card"
    END

    GROUPBOX 170, "Comprar ahora", 20, 22, 460, 328
    BEGIN
        NAME "Buy Now Title"
    END

    GROUPBOX 135, "Tarjeta de Crédito", 220, 70, 240, 270
    BEGIN
        NAME "Credit Card Frame"
    END

    GROUPBOX 155, "Order Amount", 40, 70, 140, 150
    BEGIN
        NAME "Cantidad de la Orden"
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

    STATICTEXT 158, "Impuesto:", 50, 115, 50, 20
    BEGIN
        NAME "Tax Label"
    END

    STATICTEXT 159, "", 100, 115, 70, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Tax"
    END

    STATICTEXT 160, "Envío:", 50, 140, 50, 20
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

    BUTTON 165, "&Previo", 280, 360, 100, 25
    BEGIN
        NAME "Previous"
    END

    BUTTON 1, "&Comprar ahora", 390, 360, 100, 25
    BEGIN
        NAME "Buy Now"
    END

    BUTTON 2, "&Regresar a Carrito", 170, 360, 100, 25
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

    GROUPBOX 169, "No. Orden Compra", 40, 220, 140, 60
    BEGIN
        NAME "Reference Title"
    END

    STATICTEXT 171, "", 325, 40, 145, 25
    BEGIN
        FOREGROUNDCOLOR RGB(255,0,0)
        NAME "Message"
    END

    GROUPBOX 175, "Nombre del Contacto", 40, 280, 140, 60
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

    STATICTEXT 176, "Precio de Lista:", 50, 187, 50, 25
    BEGIN
        NAME "List Label"
    END

    STATICTEXT 177, "", 100, 190, 70, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "List"
    END

END

WINDOW 110 "Información de la Cuenta" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Account"
    NOT SIZABLE
    STATICTEXT 110, "1a. Dirección de Correo:", 20, 40, 100, 27
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

    STATICTEXT 111, "Contraseña:", 20, 100, 100, 25
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

    STATICTEXT 112, "Confirmar Contraseña:", 20, 130, 100, 30
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
        GRIDCOLTITLE 0, "Número de Cuenta"
        GRIDCOLTITLE 1, "Tipo de Tarjeta"
        GRIDCOLTITLE 2, "Nombre en Tarjeta"
        GRIDCOLTITLE 3, "MM"
        GRIDCOLTITLE 4, "AAAA"
        GRIDCOLWIDTH 0, 135
        GRIDCOLWIDTH 1, 80
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

    STATICTEXT 113, "Nota: La contraseña debe tener un mínimo de 10 caracteres que incluyan letras mayúsculas y minúsculas, numéricos, y caracteres especiales ~!@#$%^&*()+=.", 230, 100, 250, 70
    BEGIN
        NAME "Note"
    END

    STATICTEXT 120, "2da Dirección de Correo:", 20, 70, 100, 27
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

    BUTTON 108, "Regresar a &Principal", 365, 365, 106, 25
    BEGIN
        NAME "Cancel"
        SHORTCUE "Regreso a Principal"
    END

    BUTTON 103, "&Nueva Tarjeta de Crédito", 365, 215, 132, 25
    BEGIN
        NAME "New CC"
    END

    BUTTON 101, "&Actualización", 120, 165, 90, 25
    BEGIN
        NAME "Accept"
        SHORTCUE "Actualizar Información de la cuenta"
    END

    STATICTEXT 121, "Haga doble click en el recuadro o haga click en el botón de Editar Tarjeta de Crédito para editar la información de una tarjeta de crédito seleccionada. ", 20, 196, 335, 42
    BEGIN
        NAME "Message"
    END

    BUTTON 104, "Informes", 20, 365, 100, 25
    BEGIN
        NAME "Email_rpt"
        SHORTCUE "Selecciona & e-mail número de serie Activo o Reporte de antiguedad de saldos."
    END

    BUTTON 105, "&Facturas", 120, 365, 100, 25
    BEGIN
        NAME "invoice"
        SHORTCUE "Reviar/Pago Facturas"
    END

    BUTTON 106, "&Datos Usuario Final", 220, 365, 100, 25
    BEGIN
        NAME "EndUserData"
    END

    BUTTON 102, "Editar Tarjeta de Crédito", 365, 185, 132, 25
    BEGIN
        NAME "EditCC"
    END

    BUTTON 114, "License Update", 20, 340, 100, 25
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

WINDOW 111 "Historial del Número de Serie" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "History"
    NOT SIZABLE
    STATICTEXT 101, "Número de Serie:", 20, 55, 80, 25
    BEGIN
        NAME "Serial Number Label"
    END

    STATICTEXT 102, "", 100, 60, 120, 20
    BEGIN
        NAME "Serial Number"
    END

    STATICTEXT 105, "Artículo:", 20, 85, 80, 20
    BEGIN
        NAME "Item Number Label"
    END

    STATICTEXT 106, "", 100, 85, 380, 20
    BEGIN
        NAME "Item Number"
    END

    STATICTEXT 107, "Descripción:", 20, 110, 80, 20
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

    BUTTON 2, "&Previo", 20, 10, 90, 25
    BEGIN
        NAME "Close"
        SHORTCUE "Regresar a ver Licencia del Producto"
    END

    BUTTON 113, "Ver &Ligas", 115, 10, 90, 25
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

    BUTTON 116, "&Resetear Licencia", 210, 10, 90, 25
    BEGIN
        DISABLED
        NAME "Reset"
        SHORTCUE "Resetear estatus de licencia a cero"
    END

    LISTBUTTON 117, "", 310, 10, 160, 120
    BEGIN
        NAME "reset_reason"
    END

END

WINDOW 112 "Cliente ligado al Servidor" 0 0 500 400
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

    BUTTON 2, "&Previo", 390, 360, 90, 25
    BEGIN
        NAME "Close"
        SHORTCUE "Regresar a ver Licencia del Producto"
    END

    STATICTEXT 103, "Número de Serie:", 20, 30, 80, 25
    BEGIN
        NAME "Serial Number Label"
    END

    STATICTEXT 104, "", 100, 30, 150, 25
    BEGIN
        NAME "Serial Number"
    END

    STATICTEXT 105, "Número de Artículo:", 20, 60, 80, 25
    BEGIN
        NAME "Item Number Label"
    END

    STATICTEXT 106, "", 100, 60, 150, 25
    BEGIN
        NAME "Item Number"
    END

    STATICTEXT 107, "Descripción:", 20, 90, 80, 25
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

    GROUPBOX 201, "Clientes", 10, 140, 480, 210
    BEGIN
        NAME "Client Group"
    END

    STATICTEXT 110, "Ésta información es provista por referencia únicamnte.  BASIS ya no mantiene links de Client/Server links.", 260, 30, 210, 50
    BEGIN
        NAME "Disclaimer"
    END

END

WINDOW 113 "Encuentra Número de Serie" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Find SN"
    NOT SIZABLE
    STATICTEXT 99, "Número de Serie siguiente:", 20, 20, 110, 25
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

    BUTTON 1, "Escanear &Siguiente", 390, 20, 100, 25
    BEGIN
        NAME "Next"
    END

    STATICTEXT 101, "Mostrar cuantas?", 20, 50, 110, 20
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

    CHECKBOX 108, "&Mostrar licencias activas solamente?", 200, 50, 200, 25
    BEGIN
        CHECKED
        NAME "Active Only"
    END

    BUTTON 110, "Escanear &Regresa", 285, 20, 100, 25
    BEGIN
        NAME "Previous"
    END

    GRID 111, "", 20, 117, 460, 233
    BEGIN
        CLIENTEDGE
        COLUMNHEAD 25, 109
        COLUMNS 4
        GRIDCOLTITLE 0, "Número Serie"
        GRIDCOLTITLE 1, "Vendido"
        GRIDCOLTITLE 2, "Usarios"
        GRIDCOLTITLE 3, "Descripción"
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

    BUTTON 2, "&Previo", 390, 360, 90, 25
    BEGIN
        NAME "Close"
        SHORTCUE "Regresa a ver Licencia del Producto"
    END

    STATICTEXT 112, "Haga doble click en el recuadro para ver los detalles de la licencia o haga click en el botón Seleccionar NS.", 20, 360, 260, 30
    BEGIN
        NAME "Message"
    END

    BUTTON 102, "Seleccione NS", 290, 360, 90, 25
    BEGIN
        NAME "SelectSN"
    END

END

WINDOW 114 "Tarjeta de Crédito" 0 0 500 400
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

    STATICTEXT 106, "Número de Tarjeta:", 200, 210, 90, 25
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

    STATICTEXT 108, "Nambre como aparece en la tarjeta:", 200, 250, 90, 25
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

    STATICTEXT 110, "Fecha de Expiración:", 200, 290, 90, 25
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

    BUTTON 200, "&Actualizar", 280, 360, 90, 25
    BEGIN
        NAME "Update"
    END

    BUTTON 201, "&Suprimir", 170, 360, 90, 25
    BEGIN
        NAME "Delete"
    END

    BUTTON 2, "&Previo", 390, 360, 90, 25
    BEGIN
        NAME "Cancel"
        SHORTCUE "Return to Account"
    END

    GROUPBOX 100, "Tipo", 40, 195, 130, 135
    BEGIN
        NAME "Credit Card Group"
    END

    GROUPBOX 101, "Información de la Cuenta", 190, 195, 270, 135
    BEGIN
        NAME "Group Control"
    END

    GROUPBOX 202, "Detalles de Tarjeta de Crédito", 20, 175, 460, 175
    BEGIN
        NAME "Credit Card Details"
    END

END

WINDOW 116 "Reseteo de Licencia" 0 0 350 220
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

    STATICTEXT 102, "Si desea usar este Incidente de Soporte para resetear la licencia, seleccione una razón de la lista de abajo y presione el botón Si. Su representante de ventas será notificado para resetear la licencia despues despues que Usted se haya salido. ", 15, 20, 315, 55
    BEGIN
        NAME "Static Text"
    END

    LISTBUTTON 103, "", 96, 89, 160, 120
    BEGIN
        NAME "reset_reason"
    END

    STATICTEXT 104, "Razón de Reseteo:", 15, 90, 75, 25
    BEGIN
        NAME "rreason_txt"
    END

    STATICTEXT 105, "Desea proceder con el reseteo requerido?", 15, 145, 250, 20
    BEGIN
        NAME "proceed_txt"
    END

END

WINDOW 117 "Seleccionar Números de Serie" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 1128269312
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Trade Select"
    NOT SIZABLE
    LISTBOX 100, "", 30, 140, 150, 106
    BEGIN
        CLIENTEDGE
        MULTISELECT
        NAME "available_sn_lbox"
    END

    LISTBOX 101, "", 320, 140, 150, 106
    BEGIN
        CLIENTEDGE
        MULTISELECT
        NAME "selected_sn_lbox"
    END

    BUTTON 104, "&Añadir >", 200, 140, 95, 25
    BEGIN
        NAME "add_btn"
    END

    BUTTON 105, "< &Remover", 200, 170, 95, 25
    BEGIN
        NAME "remove_btn"
    END

    BUTTON 107, "&Continuar", 360, 270, 110, 25
    BEGIN
        NAME "exchange_btn"
    END

    BUTTON 106, "<< Remover &todos", 200, 200, 95, 25
    BEGIN
        NAME "remove_all_btn"
    END

    BUTTON 109, "Regresar a &Principal", 360, 330, 110, 25
    BEGIN
        NAME "cancel_btn"
    END

    STATICTEXT 110, "Intercambia los números de serie seleccionados por un producto de BASIS licencia (BBj)", 155, 270, 195, 50
    BEGIN
        JUSTIFICATION 32768
        NAME "exchange_txt"
    END

    STATICTEXT 113, "", 31, 55, 430, 45
    BEGIN
        NAME "selected_desc"
    END

    STATICTEXT 114, "Número de Serie", 50, 20, 70, 25
    BEGIN
        NAME "starting_sn_text"
    END

    EDIT 115, "", 120, 20, 100, 20
    BEGIN
        CLIENTEDGE
        NAME "starting_sn"
    END

    STATICTEXT 116, "Números de Serie Seleccionados", 35, 110, 130, 30
    BEGIN
        NAME "Static Text"
    END

    STATICTEXT 117, "Números de Serie Seleccionados", 320, 110, 130, 30
    BEGIN
        NAME "Static Text"
    END

    BUTTON 1, "Escanear &Siguiente", 350, 17, 100, 25
    BEGIN
        NAME "scan_forward_btn"
    END

    BUTTON 119, "&Escanear Regresar", 240, 17, 100, 25
    BEGIN
        NAME "scan_back_btn"
    END

    GROUPBOX 120, "", 20, 45, 450, 60
    BEGIN
        NAME "selected_desc_ctl"
    END

    STATICTEXT 121, "Cancelar y regresar al menú principal", 155, 330, 195, 30
    BEGIN
        JUSTIFICATION 32768
        NAME "cancel_txt"
    END

END

WINDOW 118 "Actualizar las Licencias seleccionadas" 0 0 500 400
BEGIN
    NOT CLOSEBOX
    EVENTMASK 41943040
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "Trade"
    NOT SIZABLE
    GROUPBOX 106, "Producto Nuevo", 250, 15, 235, 157
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

    STATICTEXT 151, "Su precio:", 330, 365, 60, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Price Label"
    END

    BUTTON 1, "&Añadir al Carrito", 80, 365, 85, 20
    BEGIN
        NAME "Accept"
    END

    BUTTON 2, "&Números de Serie", 165, 365, 95, 20
    BEGIN
        NAME "Cancel"
        SHORTCUE "Selección de Números de Serie"
    END

    STATICTEXT 154, "No. Orden Compra:", 20, 325, 55, 30
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

    BUTTON 200, "&Recálculo", 10, 365, 70, 20
    BEGIN
        NAME "Recalculate"
    END

    STATICTEXT 1003, "Usuarios Extended:", 260, 195, 110, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "ent_users_lbl"
    END

    STATICTEXT 1009, "Número de Serie Seleccionado", 20, 6, 180, 20
    BEGIN
        NAME "Static Text"
    END

    STATICTEXT 1011, "Detalle de Precios", 20, 175, 90, 20
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
        SHORTCUE "Ver calendario/Seleccionar fecha"
    END

    STATICTEXT 144, "Fecha de renovación SAM Plan:", 270, 270, 100, 25
    BEGIN
        JUSTIFICATION 32768
        NAME "renew_dt_lbl"
    END

    EDIT 143, "", 375, 220, 40, 20
    BEGIN
        CLIENTEDGE
        NAME "std_users"
    END

    STATICTEXT 1004, "Usuarios estándar:", 260, 220, 110, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "std_users_lbl"
    END

    BUTTON 1015, "&Principal", 260, 365, 65, 20
    BEGIN
        NAME "Main"
    END

    CHECKBOX 147, "Runtime:", 325, 300, 65, 20
    BEGIN
        NAME "runtime"
        SHORTCUE "Do permite acceso a modo consola."
        TEXTLEFT
    END

    EDIT 1017, "", 395, 345, 90, 20
    BEGIN
        CLIENTEDGE
        JUSTIFICATION 32768
        NAME "listprice"
        READONLY
    END

    STATICTEXT 1018, "Precio de Lista:", 315, 345, 80, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "listprice_lbl"
    END

END

WINDOW 119 "Seleccione Informe" 0 0 350 250
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

    BUTTON 2, "&Cancelar", 185, 215, 90, 25
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

    STATICTEXT 102, "El Informe de Números de Serie Activos será enviado al siguiente correo electrónico.", 41, 45, 289, 30
    BEGIN
        NAME "Send_Info"
    END

    STATICTEXT 103, "", 21, 180, 309, 25
    BEGIN
        FOREGROUNDCOLOR RGB(255,0,0)
        NAME "Progress_Info"
    END

    RADIOBUTTON 104, "Reporte de Números de Serie Activos", 21, 16, 300, 25
    BEGIN
        NAME "sn_rpt"
    END

    RADIOBUTTON 105, "Reporte de Antiguedad de Saldos", 25, 127, 300, 25
    BEGIN
        NAME "ar_rpt"
    END

    STATICTEXT 100, "El Informe de Antigüedad de las Cuentas por Cobrar será visualizado inmediatamente en su navegador.", 41, 156, 289, 30
    BEGIN
        NAME "Static Text"
    END

END

WINDOW 120 "Renovación" 0 0 350 250
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

    STATICTEXT 129, "No. Orden Compra", 5, 210, 95, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "Reference label"
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

    STATICTEXT 125, "Precio de Lista", 10, 155, 80, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "listprice_lbl"
    END

    STATICTEXT 127, "Su precio", 20, 180, 70, 20
    BEGIN
        JUSTIFICATION 32768
        NAME "price_lbl"
    END

    BUTTON 1, "&Añadir al Carrito", 200, 210, 90, 20
    BEGIN
        NAME "Accept"
    END

    BUTTON 2, "&Cancelar", 200, 180, 90, 20
    BEGIN
        NAME "cancel"
    END

    STATICTEXT 131, "Número de Serie", 5, 15, 90, 20
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

    STATICTEXT 133, "Nueva Fecha", 20, 45, 75, 20
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

    STATICTEXT 135, "Revisión", 190, 15, 50, 20
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
        SHORTCUE "Ver calendario/Seleccionar fecha"
    END

END

