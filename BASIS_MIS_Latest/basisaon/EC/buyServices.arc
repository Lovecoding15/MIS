//#charset: windows-1252

VERSION "4.0"

WINDOW 101 "" 0 0 790 500
BEGIN
    FONT "Dialog.plain" 10
    ENTERASTAB
    EVENTMASK 8388608
    INVISIBLE
    KEYBOARDNAVIGATION
    NAME "buyServices"
    NOTITLEBAR
    NOT SIZABLE
    STATICTEXT 101, "BASIS b-commerce Purchase Professional Services/Support Time", 0, 0, 790, 25
    BEGIN
        FONT "Dialog.bold" 14
        JUSTIFICATION 16384
        NAME "headertext"
    END

    BUTTON 1, "Submit Order", 510, 460, 120, 25
    BEGIN
        NAME "buyNow"
    END

    BUTTON 2, "E&xit", 650, 460, 120, 25
    BEGIN
        NAME "exit"
    END

    STATICTEXT 100, "Purchase blocks of time for Professional Services or Project Support", 20, 50, 600, 25
    BEGIN
        FONT "Dialog.normal" 12
        NAME "formLabel"
        NOT WORDWRAP
    END

    STATICTEXT 102, " Professional Services/Support Time - <price> per hour", 100, 133, 400, 25
    BEGIN
        FONT "Dialog.plain" 10
        NAME "oneHourLabel"
        NOT WORDWRAP
    END

    STATICTEXT 103, "Professional Services/Support Time - <price> per day", 100, 173, 400, 25
    BEGIN
        FONT "Dialog.plain" 10
        NAME "oneDayLabel"
        NOT WORDWRAP
    END

    EDIT 104, "", 41, 128, 50, 25
    BEGIN
        MAXLENGTH 4
        NAME "oneHourQty"
        SPELLCHECKED
        NOT DRAGENABLED
    END

    EDIT 105, "", 40, 168, 50, 25
    BEGIN
        MAXLENGTH 4
        NAME "oneDayQty"
        SPELLCHECKED
        NOT DRAGENABLED
    END

    STATICTEXT 106, "Quantity", 40, 100, 50, 25
    BEGIN
        FONT "Dialog.plain" 10
        NAME "quantityLabel"
        NOT WORDWRAP
    END

    STATICTEXT 107, "Description", 100, 100, 400, 25
    BEGIN
        FONT "Dialog.plain" 10
        NAME "descLabel"
        NOT WORDWRAP
    END

    EDIT 108, "", 520, 128, 90, 25
    BEGIN
        JUSTIFICATION 32768
        MAXLENGTH 32767
        NAME "oneHourExtended"
        READONLY
        NOT FOCUSABLE
        SPELLCHECKED
        NOT DRAGENABLED
    END

    STATICTEXT 109, "Price", 520, 100, 85, 25
    BEGIN
        FONT "Dialog.plain" 10
        JUSTIFICATION 32768
        NAME "priceLabel"
        NOT WORDWRAP
    END

    EDIT 110, "", 520, 168, 90, 25
    BEGIN
        JUSTIFICATION 32768
        MAXLENGTH 32767
        NAME "oneDayExtended"
        READONLY
        NOT FOCUSABLE
        SPELLCHECKED
        NOT DRAGENABLED
    END

    EDIT 111, "", 520, 208, 90, 25
    BEGIN
        JUSTIFICATION 32768
        MAXLENGTH 32767
        NAME "totalOrder"
        READONLY
        NOT FOCUSABLE
        SPELLCHECKED
        NOT DRAGENABLED
    END

    STATICTEXT 112, "Order Total:", 420, 213, 90, 25
    BEGIN
        FONT "Dialog.plain" 10
        JUSTIFICATION 32768
        NAME "totalOrderLabel"
        NOT WORDWRAP
    END

    EDIT 113, "", 520, 248, 90, 25
    BEGIN
        MAXLENGTH 10
        NAME "poNumber"
        SPELLCHECKED
        NOT DRAGENABLED
    END

    STATICTEXT 114, "Purchase Order #:", 390, 250, 120, 25
    BEGIN
        FONT "Dialog.plain" 10
        JUSTIFICATION 32768
        NAME "poNbrLabel"
        NOT WORDWRAP
    END

    STATICTEXT 115, "Brief description of your needs:", 40, 293, 192, 25
    BEGIN
        FONT "Dialog.plain" 10
        JUSTIFICATION 32768
        NAME "memoLabel"
        NOT WORDWRAP
    END

    EDIT 116, "", 240, 288, 370, 25
    BEGIN
        LONGCUE "This text will appear on your invoice describing the purpose of your purchase of Professional Services/Support time."
        MAXLENGTH 40
        NAME "invoiceMemo"
        SPELLCHECKED
        NOT DRAGENABLED
    END

    CUSTOMEDIT 117, "", 240, 328, 370, 80
    BEGIN
        BORDER
        LIMIT 1024
        LONGCUE "This text will be sent to the Professional Services/Support teams describing the work you work/support that you need."
        MAXLENGTH 1024
        NAME "note"
        VSCROLLBAR
        WORDWRAP
        SPELLCHECKED
        NOT DRAGENABLED
    END

    STATICTEXT 118, "Note to the Professional Services staff:", 40, 333, 192, 50
    BEGIN
        FONT "Dialog.plain" 10
        JUSTIFICATION 32768
        NAME "noteLabel"
    END

    STATICTEXT 119, "€", 615, 133, 30, 25
    BEGIN
        FONT "Dialog.plain" 10
        NAME "euroSymbol1"
        NOT WORDWRAP
    END

    STATICTEXT 120, "€", 615, 173, 30, 25
    BEGIN
        FONT "Dialog.plain" 10
        NAME "euroSymbol2"
        NOT WORDWRAP
    END

    STATICTEXT 121, "€", 615, 213, 30, 25
    BEGIN
        FONT "Dialog.plain" 10
        NAME "euroSymbol3"
        NOT WORDWRAP
    END

    BUTTON 3, "Save to Cart", 370, 460, 120, 25
    BEGIN
        NAME "cartButton"
    END

    BUTTON 122, "Clear Form", 230, 460, 120, 25
    BEGIN
        NAME "clearFormButton"
    END

END

