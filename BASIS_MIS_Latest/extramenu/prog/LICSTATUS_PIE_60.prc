rem ----------------------------------------------------------------------------
rem Program: LICSTATUS_PIE_60.prc  
rem Description: Stored Procedure to build a resultset that adx_aonashboard.aon
rem              can use to populate the given dashboard widget
rem 
rem              Data returned is counts of licenses or users by license status
rem
rem
rem Author(s): K. Williams
rem Revised: 01.31.2018
rem
rem AddonSoftware
rem Copyright BASIS International Ltd.
rem ----------------------------------------------------------------------------

seterr sproc_error

Debug$= "/mnt/data/basisaon/aon/tmp/LICSTATUS_PIE_60.txt"
erase Debug$,err=*next
string Debug$
debugchan=unt
open(debugchan)Debug$	
SKIP_DEBUG:


rem --- Set of utility methods

	use ::ado_func.src::func

rem --- Declare some variables ahead of time

	declare BBjStoredProcedureData sp!

rem --- Get the infomation object for the Stored Procedure

	sp! = BBjAPI().getFileSystem().getStoredProcedureData()

rem --- Get the IN parameters used by the procedure
		
	firmId$ = sp!.getParameter("FIRM_ID")
	custNum$ = sp!.getParameter("CUSTOMER_NBR")
	rem ' "user" count or "license" count
	chartType$ = sp!.getParameter("CHART_TYPE")
	
rem --- create the in memory recordset for return

	dataTemplate$ = "STATUS:C(20*),COUNT:C(7*)"

	rs! = BBJAPI().createMemoryRecordSet(dataTemplate$)
	
rem --- Declare some variables ahead of time

use ::SQLProperties.bbj::SQLProperties
declare SQLProperties props!


rem --- set the query string

sql$ = ""

if chartType$ = "user" then
	sql$ = "SELECT SUM(CONVERT(USERS, SQL_INTEGER)) AS COUNT, STATUS "
	sql$ = sql$ + "FROM SN_STATS01 WHERE FIRM_ID = '" + firmId$ + "' "
	sql$ = sql$ + "AND CUSTOMER_NBR = '" + custNum$ + "' GROUP BY STATUS ORDER BY STATUS"
else
	sql$ = "SELECT COUNT(*) AS COUNT, STATUS FROM SN_STATS01 "
	sql$ = sql$ + "WHERE FIRM_ID = '" + firmId$ + "' AND CUSTOMER_NBR = '" + custNum$ + "' "
	sql$ = sql$ + "GROUP BY STATUS ORDER BY STATUS"
fi

rem --- prep the query

props! = new SQLProperties()
sqlConnect$ = props!.getDBConnectForDatabase("AddOnData")
inRs! = BBjAPI().createSQLRecordSet(sqlConnect$, "", sql$)

rem --- Place the SELECT results into the in memory record set

while 1
	rd! = inRs!.getCurrentRecordData()

	data! = rs!.getEmptyRecordData()
	
	status$ = rd!.getFieldValue("STATUS")
	count$ = rd!.getFieldValue("COUNT")
	
	if status$ = "1" then
		status$ = "New"
	else
		if status$ = "2" then
			status$ = "Upgraded"
		else
			if status$ = "3" then
				status$ = "Old Perpetual On SAM"
			else
				if status$ = "4" then
					status$ = "Old Perpetual No SAM"
				else
					status$ = "Old No SAM"
				fi
			fi
		fi
	fi

	data!.setFieldValue("STATUS",status$)
	data!.setFieldValue("COUNT",cvs(count$,3))
	rs!.insert(data!)
	
	inRs!.next(err=*break)
wend

inRs!.close()

rem --- Tell the stored procedure to return the result set.

	sp!.setRecordSet(rs!)
	goto std_exit

sproc_error:rem --- SPROC error trap/handler
    rd_err_text$="", err_num=err
    if tcb(2)=0 and tcb(5) then rd_err_text$=pgm(tcb(5),tcb(13),err=*next)
    x$=stbl("+THROWN_ERR","TRUE")   
    write(debugchan)"["+pgm(-2)+"] "+str(tcb(5))+": "+rd_err_text$+ " " + str(err_num)
    throw "["+pgm(-2)+"] "+str(tcb(5))+": "+rd_err_text$,err_num
	
	std_exit:
	
	end	
