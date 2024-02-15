//#charset: ISO-8859-1

// ASCII Resource File
// FUT_SN_MARSHA - Marriott SN MARSHA Code Xref
// Barista Application Framework.  Copyright BASIS International Ltd

VERSION "4.0"

WINDOW 1000 "" 0010 0040 0344 0110
BEGIN
    NAME "win_fut_sn_marsha"
    MANAGESYSCOLOR
    KEYBOARDNAVIGATION
    DIALOGBEHAVIOR
    EVENTMASK 1136656524
    INVISIBLE
    FONT "Arial" 8
    ENTERASTAB
    
    STATICTEXT 02001, "Serial Number (Basis):", 0, 12, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_serial_nbr"
        FONT "Arial" 8
    END
    
    INPUTE 03001, "", 130, 10, 184, 19
    BEGIN
        NAME "ine_serial_nbr"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 20
        FONT "Arial" 8
    END
    
    STATICTEXT 02002, "Marriott Marsha Code:", 0, 33, 127, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_marsha"
        FONT "Arial" 8
    END
    
    INPUTE 03002, "", 130, 31, 48, 19
    BEGIN
        NAME "ine_marsha"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 5
        FONT "Arial" 8
    END
END

