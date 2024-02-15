REM Return sales totals by customer type for a given month period
REM SETERR ERROR_ROUTINE

REM Declare some variables ahead of time
declare BBjStoredProcedureData sp!
declare BBjRecordSet rs!
declare BBjRecordData data!

REM Get the infomation object for the Stored Procedure
sp! = BBjAPI().getFileSystem().getStoredProcedureData()

REM Get the IN and IN/OUT parameters used by the procedure
firm_id$=sp!.getParameter("FIRM_ID")
month$ = sp!.getParameter("MONTH")
year$ = sp!.getParameter("YEAR")

rem ' open the cust type definition table
call "ec_open::ARM10L"

rem ' set up the sql query
rem ' sql$ = "SELECT SUM(t1.total_sales) AS total_sales, t2.cust_type FROM ART03 t1 "
rem ' sql$ = sql$ + "INNER JOIN ARM02 t2 ON t1.firm_id = t2.firm_id AND t1.customer_nbr = t2.customer_nbr "
rem ' sql$ = sql$ + "WHERE firm_id = '" + firm_id$ + "' AND MONTH(t1.invoice_date) = '" + month$ + "' and YEAR(t1.invoice_date) = '" +year$ + "' "
rem ' sql$ = sql$ + "GROUP BY t2.cust_type "
rem ' sql$ = sql$ + "ORDER BY total_sales DESC "
day$ = ""
if pos(month$="01|03|05|07|08|10|12|") then
	day$ = "31"
else 
	if pos(month$="04|06|09|11|") then
		day$ = "30"
	else
		if mod(num(year$),4) = 0 then
			day$ = "29"
		else
			day$ = "28"
		fi
	fi
fi
sql$ = "SELECT SUM(t1.total_sales) AS total_sales, t2.cust_type FROM " 
sql$ = sql$ + "(SELECT * FROM ART03 where firm_id = '" + firm_id$ + "' and invoice_date >= '" + year$ + "-" + month$ + "-01' and invoice_date <= '" + year$ + "-" + month$ + "-" + day$ + "') t1 "
sql$ = sql$ + "INNER JOIN ARM02 t2 ON t1.firm_id = t2.firm_id AND t1.customer_nbr = t2.customer_nbr "
sql$ = sql$ + "GROUP BY t2.cust_type "
sql$ = sql$ + "ORDER BY total_sales DESC" 

chan = sqlunt
sqlopen(chan)"jdbc:basis:localhost:2001?database=AddOnData&user=basisaon&password=kQbmV7vAXRTyhazJ_ggAxD54@pRaCT-X*rH_7ww&ssl=true"
sqlprep(chan)sql$
dim irec$:sqltmpl(chan)
sqlexec(chan)

rs! = BBJAPI().createMemoryRecordSet("FIRM_ID:C(2),CUST_TYPE:C(3),CODE_DESC:C(20),TOTAL_SALES:N(15)")

while 1
    irec$ = sqlfetch(chan,err=*break)
    data! = rs!.getEmptyRecordData()    
    data!.setFieldValue("FIRM_ID",firm_id$)
    data!.setFieldValue("CUST_TYPE",irec.cust_type$)
    data!.setFieldValue("TOTAL_SALES",str(irec.total_sales))
    
    rem ' get customer type description
    found = 0
    read record(ARM10L, key=firm_id$+"L"+irec.cust_type$,err=*next)arm10l$; found = 1
    if found then
    	data!.setFieldValue("CODE_DESC",arm10l.code_desc$)
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


