REM return open DVK, RNT and SAM Renew invoices for a customer
SETERR ERROR_ROUTINE

rem ' settrace code for debugging
erase "/tmp/sprocTrace.txt", err=*next
string "/tmp/sprocTrace.txt"
open(1)"/tmp/sprocTrace.txt"
settrace(1)

REM Declare some variables ahead of time
declare BBjStoredProcedureData sp!
declare BBjRecordSet outRs!
declare BBjRecordData outData!

REM Get the infomation object for the Stored Procedure
sp! = BBjAPI().getFileSystem().getStoredProcedureData()

REM Get the IN and IN/OUT parameters used by the procedure
firm_id$=sp!.getParameter("FIRM_ID")
customer_nbr$ = sp!.getParameter("CUSTOMER_NBR")

rem ' open the open invoice header and detail tables
call "ec_open::ART11"
call "ec_open::ART01"
call "ec_open::ART83"

rem ' invoice no older than 100 days'
today = jul(0,0,0)
today_dt$ = date(today:"%Y-%Mz-%Dz")
begin_dt$ = date(today - 95:"%Y-%Mz-%Dz")

sql$ = "SELECT t1.firm_id, t1.ar_type, t1.customer_nbr, t1.ar_inv_nbr, t2.ar_po_number, t1.sequence_00, "
sql$ = sql$ + "t1.invoice_date,  t1.invoice_amt " 
sql$ = sql$ + "FROM ART01 t1 "
sql$ = sql$ + "INNER JOIN ART03 t2 on t1.firm_id = t2.firm_id and t1.ar_type = t2.ar_type and "
sql$ = sql$ + "t1.customer_nbr = t2.customer_nbr and t1.ar_inv_nbr = t2.ar_inv_nbr "
sql$ = sql$ + "where t1.firm_id = '" + firm_id$ + "' and "
             
if customer_nbr$ <> "ALL" then sql$ = sql$ + "t1.customer_nbr = '" + customer_nbr$ + "' and "

sql$ = sql$ + "t1.invoice_date >= '" + begin_dt$ + "' and t1.invoice_date <= '" + today_dt$ + "' and "
sql$ = sql$ + "(t2.ar_po_number like 'SAM Renew%' or t2.ar_po_number like 'DVK Renew%' or t2.ar_po_number "
sql$ = sql$ + "like 'RNT Renew%') "
sql$ = sql$ + "ORDER BY t1.AR_INV_NBR "
rem ' write(1)sql$

chan = sqlunt
sqlopen(chan)"jdbc:basis:localhost:2001?database=AddOnData&user=basisaon&password=kQbmV7vAXRTyhazJ_ggAxD54@pRaCT-X*rH_7ww&ssl=true"
sqlprep(chan)sql$
dim irec$:sqltmpl(chan)
sqlexec(chan)

outRs! = BBJAPI().createMemoryRecordSet("AR_INV_NBR:C(7), AR_PO_NUMBER:C(10), INVOICE_DT:C(10), INV_AMOUNT:C(13), INV_PAYMENTS:C(13), SERIAL_NBRS:C(256)")

while 1
    irec$ = sqlfetch(chan,end=*break)

    rem ' check the ART11 table for payments
    inv_payments = 0
    read record(art11, key = irec.firm_id$ + irec.ar_type$ + irec.customer_nbr$ + irec.ar_inv_nbr$, dom=*next)art11$
    while 1
        read record(art11, end=*break)art11$
        if art11$(1,17) <> irec.firm_id$ + irec.ar_type$ + irec.customer_nbr$ + irec.ar_inv_nbr$ then break
        inv_payments = inv_payments + art11.trans_amt
    wend
    inv_amount = num(irec.invoice_amt$)
    inv_balance = inv_amount + inv_payments
    if inv_balance <= 0 then continue
 
    outData! = outRs!.getEmptyRecordData()    
    outData!.setFieldValue("AR_INV_NBR",irec.ar_inv_nbr$)
    outData!.setFieldValue("AR_PO_NUMBER",irec.ar_po_number$)
    
    rem ' the sql engine does something to the packed invoice date, need to read it from the table
    read record(art01, key = irec.firm_id$ + irec.ar_type$ + irec.customer_nbr$ + irec.ar_inv_nbr$ + irec.sequence_00$)art01$
    
    rem ' unpack the invoice date
    invoice_date$ = art01.invoice_date$
    unpdate$ = fnc$(invoice_date$) 
    invoice_date$ = date(jul(fnyy_year(fnyear_yy21$(num(unpdate$(5,2)))), num(unpdate$(1,2)), num(unpdate$(3,2))):"%Mz-%Dz-%Y")
    outData!.setFieldValue("INVOICE_DT",invoice_date$)
    
    rem ' format the invoice amount
    inv_amount$ = str(inv_amount:"$#,###,##0.00")
    outData!.setFieldValue("INV_AMOUNT",inv_amount$)

    rem ' format the invoice payments
    inv_payments$ = str(inv_payments:"$#,###,##0.00")
    outData!.setFieldValue("INV_PAYMENTS",inv_payments$)
    
    rem ' get the serial numbers
    serial_nbrs$ = ""
    read record(art83, key = irec.firm_id$ + irec.ar_type$ + irec.customer_nbr$ + irec.ar_inv_nbr$, dom=*next)art83$
    while 1
        read record(art83, end=*break)art83$
        if art83$(1,17) <> irec.firm_id$ + irec.ar_type$ + irec.customer_nbr$ + irec.ar_inv_nbr$ then break
        if pos(cvs(art83.serial_nbr$,3) = serial_nbrs$) = 0 then 
            serial_nbrs$ = serial_nbrs$ + ", " + cvs(art83.serial_nbr$,3)
        fi
    wend
    if len(serial_nbrs$) >= 2 then serial_nbrs$ = serial_nbrs$(3)
    outData!.setFieldValue("SERIAL_NBRS",serial_nbrs$)

    outRs!.insert(outdata!)
    
wend

rem ' Close the sql channel and set the stored procedure's result set to the record set that 
rem ' was created and populated in the code above
done:
sqlclose (chan)
sp!.setRecordSet(outRs!)
end

rem --- user defined functions
rem ' low level unpacking function, one date component done
DEF FNA$(Q$,Q2$)=STR(MOD((ASC(Q$)-32)*POS(" "<>Q2$(2,1)),100):"00")
rem ' unpack a date into mmddyy format
DEF FNC$(Q1$)=FNA$(Q1$(2),Q1$)+FNA$(Q1$(3),Q1$)+FNA$(Q1$(1),Q1$)
DEF FNYY_YEAR(Q1$)
LET Q=NUM(FNYY21_YY$(Q1$)); IF Q<50 THEN LET Q=Q+100
RETURN Q
FNEND
rem ' --- FNYEAR_YY21$ Convert Numeric Year to 21st Century 2-Char Year"
DEF FNYEAR_YY21$(Q)=FNYY_YY21$(STR(MOD(Q,100):"00"))
rem ' --- FNYY21_YY$ Un-Convert 21st Century 2-Char Year to 2-Char Year"
DEF FNYY21_YY$(Q1$)
LET Q3$=" 01234567890123456789",Q1$(1,1)=Q3$(POS(Q1$(1,1)=" 0123456789ABCDEFGHIJ"))
RETURN Q1$
FNEND
rem ' --- FNYY_YY21$ Convert 2-Char Year to 21st Century 2-Char Year"
DEF FNYY_YY21$(Q1$)
LET Q3$=" ABCDE56789ABCDEFGHIJ",Q1$(1,1)=Q3$(POS(Q1$(1,1)=" 0123456789ABCDEFGHIJ"))
rem ' the above line changes to the following line for extending the scheme out to 2029
rem ' note the 2 in Q3$ becomes a C
rem ' LET Q3$=" ABC3456789ABCDEFGHIJ",Q1$(1,1)=Q3$(POS(Q1$(1,1)=" 0123456789ABCDEFGHIJ"))
RETURN Q1$
FNEND


rem ' Error routine
ERROR_ROUTINE:
    SETERR DONE
    msg$ = "Error #" + str(err) + " occured in " + pgm(-1) + " at line " + str(tcb(5))
    if err = 77 then msg$ = msg$ + $0d0a$ + "SQL Err: " + sqlerr(chan)
    java.lang.System.out.println(msg$)
    rem ' write(1)msg$
    if tcb(13) then exit else end


