REM Return sales totals by customer by customer type for a given month period
REM SETERR ERROR_ROUTINE

REM Declare some variables ahead of time
declare BBjStoredProcedureData sp!
declare BBjRecordSet rs!
declare BBjRecordData data!

REM Get the infomation object for the Stored Procedure
sp! = BBjAPI().getFileSystem().getStoredProcedureData()

REM Get the IN and IN/OUT parameters used by the procedure
firm_id$=sp!.getParameter("FIRM_ID")
cust_type$=sp!.getParameter("CUST_TYPE")
month$ = sp!.getParameter("MONTH")
year$ = sp!.getParameter("YEAR")

rem ' open the customer table
call "ec_open::ARM01"

rem ' set up the sql query
sql$ = "SELECT SUM(t1.total_sales) AS total_sales, t1.customer_nbr FROM ART03 t1 "
sql$ = sql$ + "INNER JOIN ARM02 t2 ON t1.firm_id = t2.firm_id AND t1.customer_nbr = t2.customer_nbr "
sql$ = sql$ + "WHERE t1.firm_id = '" + firm_id$ + "' AND t2.cust_type = '" + cust_type$ + "' AND MONTH(t1.invoice_date) = '" + month$ + "' and YEAR(t1.invoice_date) = '" + year$ + "' "
sql$ = sql$ + "GROUP BY t1.customer_nbr "
sql$ = sql$ + "ORDER BY total_sales DESC "

chan = sqlunt
sqlopen(chan)"jdbc:basis:localhost:2001?database=AddOnData&user=basisaon&password=kQbmV7vAXRTyhazJ_ggAxD54@pRaCT-X*rH_7ww&ssl=true"
sqlprep(chan)sql$
dim irec$:sqltmpl(chan)
sqlexec(chan)

rs! = BBJAPI().createMemoryRecordSet("FIRM_ID:C(2),CUSTOMER_NBR:C(6),CUST_NAME:C(30),CONTACT_NAME:C(20),TOTAL_SALES:N(15)")

while 1
    irec$ = sqlfetch(chan,err=*break)
    data! = rs!.getEmptyRecordData()    
    data!.setFieldValue("FIRM_ID",firm_id$)
    data!.setFieldValue("CUSTOMER_NBR",irec.customer_nbr$)
    data!.setFieldValue("TOTAL_SALES",str(irec.total_sales))
    
    rem ' get customer name and contact
    found = 0
    read record(ARM01, key=firm_id$+irec.customer_nbr$,err=*next)arm01$; found = 1
    if found then
    	data!.setFieldValue("CUST_NAME",arm01.cust_name$)
    	data!.setFieldValue("CONTACT_NAME",arm01.contact_name$)
    fi
    rs!.insert(data!)
wend

rem ' Close the sql channel and set the stored procedure's result set to the record set that 
rem ' was created and populated in the code above
done:
sqlclose (chan)
sp!.setRecordSet(rs!)
end

rem ' Error routine
ERROR_ROUTINE:
    SETERR DONE
    msg$ = "Error #" + str(err) + " occured in " + pgm(-1) + " at line " + str(tcb(5))
    if err = 77 then msg$ = msg$ + $0d0a$ + "SQL Err: " + sqlerr(chan)
    java.lang.System.out.println(msg$)
    if tcb(13) then exit else end


