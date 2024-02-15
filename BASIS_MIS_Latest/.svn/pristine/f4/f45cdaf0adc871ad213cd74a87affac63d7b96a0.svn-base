REM Return invoices by customer for a given month period
REM SETERR ERROR_ROUTINE

REM Declare some variables ahead of time
declare BBjStoredProcedureData sp!
declare BBjRecordSet rs!
declare BBjRecordData data!

REM Get the infomation object for the Stored Procedure
sp! = BBjAPI().getFileSystem().getStoredProcedureData()

REM Get the IN and IN/OUT parameters used by the procedure
firm_id$=sp!.getParameter("FIRM_ID")
customer_nbr$=sp!.getParameter("CUSTOMER_NBR")
month$ = sp!.getParameter("MONTH")
year$ = sp!.getParameter("YEAR")

rem ' set up the sql query
sql$ = "SELECT t1.ar_inv_nbr, DATE(t1.invoice_date, '%Mz/%Dz/%Y') as invoice_date, t1.total_sales as invoice_amt FROM ART03 t1 "
sql$ = sql$ + "WHERE firm_id = '" + firm_id$ + "' AND CUSTOMER_NBR = '" + customer_nbr$ + "' AND MONTH(t1.invoice_date) = '" + month$ + "' and YEAR(t1.invoice_date) = '" +year$ + "' "
sql$ = sql$ + "ORDER BY t1.ar_inv_nbr"

connectStr$="jdbc:basis:localhost:2001?database=AddOnData&user=basisaon&password=kQbmV7vAXRTyhazJ_ggAxD54@pRaCT-X*rH_7ww&ssl=true"
mode$="mode=PROCEDURE"

rs! = BBJAPI().createSQLRecordSet(connectStr$,mode$,sql$)

sp!.setRecordSet(rs!)

close(1)

end

rem ' Error routine
ERROR_ROUTINE:
    SETERR DONE
    msg$ = "Error #" + str(err) + " occured in " + pgm(-1) + " at line " + str(tcb(5))
    if err = 77 then msg$ = msg$ + $0d0a$ + "SQL Err: " + sqlerr(chan)
    java.lang.System.out.println(msg$)
    if tcb(13) then exit else end


