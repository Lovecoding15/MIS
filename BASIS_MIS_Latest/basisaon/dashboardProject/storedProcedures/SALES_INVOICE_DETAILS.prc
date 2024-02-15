REM Return invoice detial by invoice number
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
inv_nbr$ = sp!.getParameter("AR_INV_NBR")


rem ' set up the sql query
sql$ = "SELECT t1.line_number, t1.line_code, t1.item_number, t1.order_memo, t1.qty_shipped, t1.unit_price, t1.ext_price "
sql$ = sql$ + "FROM ART13 t1 " 
sql$ = sql$ + "WHERE firm_id = '" + firm_id$ + "' AND CUSTOMER_NBR = '" + customer_nbr$ + "' AND AR_INV_NBR = '" + inv_nbr$ + "' "
sql$ = sql$ + "ORDER BY t1.line_number"

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
