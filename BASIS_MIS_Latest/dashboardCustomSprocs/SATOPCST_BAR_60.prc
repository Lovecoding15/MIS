rem ----------------------------------------------------------------------------
rem Program: SATOPCST_BAR.prc  
rem Description: Stored Procedure to build a resultset that adx_aondashboard.aon
rem              can use to populate the given dashboard widget
rem 
rem              Data returned is current year SA totals for top 5 customers
rem              based on Sales stored in SA and is used by 
rem              the "Top 5 Customers" Bar widget
rem
rem    ****  NOTE: Initial effort restricts the year to '2014' and the
rem    ****        number of customers to 5.
rem    ****        But code is written with conditionals for possible 
rem    ****        future enhancements
rem
rem Author(s): C. Hawkins, C. Johnson
rem Revised: 04.03.2014
rem
rem AddonSoftware
rem Copyright BASIS International Ltd.
rem ----------------------------------------------------------------------------
rem
rem
rem modified by KEW to work for BASIS on Addon 6.0 Data
rem
rem
rem ----------------------------------------------------------------------------

GOTO SKIP_DEBUG
Debug$= "/mnt/data/basisaon/aon/tmp/SATOPCST_BAR_DebugPRC.txt"	
erase Debug$, err=*next
string Debug$
DebugChan=unt
open(DebugChan)Debug$	
write(DebugChan)"Top of SATOPCST_BAR "
settrace(debugChan)
SKIP_DEBUG:

seterr sproc_error

rem --- Declare some variables ahead of time

	declare BBjStoredProcedureData sp!
	use ::SQLProperties.bbj::SQLProperties
	declare SQLProperties prop!

rem --- Get the infomation object for the Stored Procedure

	sp! = BBjAPI().getFileSystem().getStoredProcedureData()

rem --- Get the IN parameters used by the procedure

	max_bars=20; rem Max number of bars to show on widget
	
	firm_id$ = sp!.getParameter("FIRM_ID")
	
	year_to_list$ = sp!.getParameter("YEAR_TO_REPORT"); rem ' either current or prior
	if year_to_list$ <> "CURRENT" AND year_to_list$ <> "PRIOR" then
		goto sproc_error
	fi
	
	num_to_list = num(sp!.getParameter("NUM_TO_LIST")); rem ' Number of customers to list
	if num_to_list=0 or num_to_list>max_bars
		num_to_list=max_bars
	endif

rem --- create the in memory recordset for return

	dataTemplate$ = "Dummy:C(1),CUSTOMER:C(30*),TOTAL:C(7*)"

	rs! = BBJAPI().createMemoryRecordSet(dataTemplate$)
	
rem --- prep the query

props! = new SQLProperties()
sqlConnect$ = props!.getDBConnectForDatabase("AddOnData")

rem ' write(DebugChan)sqlConnect$

if year_to_list$ = "CURRENT" then
	sql$ = "SELECT TOP " + str(num_to_list) + " t1.CUSTOMER_NBR, t2.CUST_NAME, t1.YTD_SALES " 
else
	rem ' prior year
	sql$ = "SELECT TOP " + str(num_to_list) + " t1.CUSTOMER_NBR, t2.CUST_NAME, t1.PYR_SALES as YTD_SALES "
fi

sql$ = sql$ + "FROM ARM06 t1 "
sql$ = sql$ + "INNER JOIN ARM01 t2 ON t1.FIRM_ID = t2.FIRM_ID and t1.CUSTOMER_NBR = t2.CUSTOMER_NBR "
if year_to_list$ = "CURRENT" then
	sql$ = sql$ + "WHERE t1.FIRM_ID = '" + firm_id$ + "' AND t1.YTD_SALES > 0 ORDER BY STR(YTD_SALES,'0000000.00') DESC"
else
	sql$ = sql$ + "WHERE t1.FIRM_ID = '" + firm_id$ + "' AND t1.PYR_SALES > 0 ORDER BY STR(PYR_SALES,'0000000.00') DESC"
fi

rem ' write(DebugChan)sql$

inRs! = BBjAPI().createSQLRecordSet(sqlConnect$, "", sql$)

rem --- Build result set from the query result set
if !(inRs!.isEmpty()) then
	while 1
		rd! = inRs!.getCurrentRecordData()

		customer$ = rd!.getFieldValue("CUST_NAME")
		ytd_sales = num(rd!.getFieldValue("YTD_SALES"))
		
		data! = rs!.getEmptyRecordData()
		data!.setFieldValue("DUMMY"," ")
		data!.setFieldValue("CUSTOMER",customer$)
		data!.setFieldValue("TOTAL",str(ytd_sales))
		rs!.insert(data!)

		inRs!.next(err=*break)
	wend
fi

inRs!.close()

rem --- Tell the stored procedure to return the result set.

	sp!.setRecordSet(rs!)
	goto std_exit

sproc_error:rem --- SPROC error trap/handler
    rd_err_text$="", err_num=err
    if tcb(2)=0 and tcb(5) then rd_err_text$=pgm(tcb(5),tcb(13),err=*next)
    x$=stbl("+THROWN_ERR","TRUE")   
    throw "["+pgm(-2)+"] "+str(tcb(5))+": "+rd_err_text$,err_num
	
	std_exit:
	
	end
