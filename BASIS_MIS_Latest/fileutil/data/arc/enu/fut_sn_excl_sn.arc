//#charset: ISO-8859-1

// ASCII Resource File
// FUT_SN_EXCL_SN - Exclude Serial Numbers
// Barista Application Framework.  Copyright BASIS International Ltd

VERSION "4.0"

WINDOW 1000 "" 0010 0040 0488 0110
BEGIN
    NAME "win_fut_sn_excl_sn"
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
    
    STATICTEXT 02002, "Comment:", 54, 33, 73, 17
    BEGIN
        NOT OPAQUE
        JUSTIFICATION 32768
        NAME "txt_comment1"
        FONT "Arial" 8
    END
    
    INPUTE 03002, "", 130, 31, 328, 19
    BEGIN
        NAME "ine_comment1"
        CLIENTEDGE
        PASSENTER
        HIGHLIGHT
        PADCHARACTER 0
        MAXLENGTH 40
        FONT "Arial" 8
    END
END

