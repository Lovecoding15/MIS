rem ----------------------------------------------------------------------------
rem Program: LICTYPE_CUST_SBR.prc  
rem Description: Stored Procedure to build a resultset that adx_aondashboard.aon
rem              can use to populate the given dashboard widget
rem 
rem              Data returned is License Registration Type with additiional modifiers counts
rem		  
rem              in the License Type mix stacked bar widgets
rem
rem
rem Author(s): K. Williams
rem Revised: 09.07.2017
rem
rem AddonSoftware
rem Copyright BASIS International Ltd.
rem ----------------------------------------------------------------------------

seterr sproc_error

rem --- Set of utility methods

	use ::ado_func.src::func

rem --- Declare some variables ahead of time

	declare BBjStoredProcedureData sp!

rem --- Get the infomation object for the Stored Procedure

	sp! = BBjAPI().getFileSystem().getStoredProcedureData()

rem --- Get the IN parameters used by the procedure

	max_bars=5; rem Max number of bars to show on widget
		
	num_to_list = num(sp!.getParameter("NUM_TO_LIST")); rem Number of salesreps to list
	if num_to_list=0 or num_to_list>max_bars
		num_to_list=max_bars; rem default to Current Year Actual
	endif
	
	inclOther$ = ""
	group$ = sp!.getParameter("GROUP")
	cust_type$ = ""
	cust_nbr$ = ""
	if len(group$) = 2 then
		inclOther$ = "N"
	else
		if len(group$) = 4 then
			inclOther$ = "Y"
			group$ = group$(1,2)
		else
			if len(group$) = 5 then
				inclOther$ = "N"
				cust_type$ = group$(3,3)
				group$ = group$(1,2)
				
			else
				if len(group$) = 7 then
					inclOther$ = "Y"
					cust_type$ = group$(5,3)
					group$ = group$(1,2)
				else
					if len(group$) = 8 then
						inclOther$ = "N"
						cust_nbr$ = group$(3,6)
						group$ = group$(1,2)
					else
						if len(group$) = 10 then
							inclOther$ = "Y"
							cust_nbr$ = group$(5,6)
							group$ = group$(1,2)
						fi
					fi
				fi
			fi
				
		fi
	fi
	
	if group$ ="01" then
		moreWhere$ = "AND FIRM_ID = '01' "
	else
		if group$ = "02" then
			moreWhere$ = "AND FIRM_ID = '02' "
		else
			moreWhere$ = ""
		fi
	fi
	
	if cust_type$ <> "" then
		moreWhere$ = moreWhere$ + "AND CUST_TYPE = '" + cust_type$ + "' "
	fi
	
	if cust_nbr$ <> "" then
		moreWhere$ = moreWhere$ + "AND CUSTOMER_NBR = '" + cust_nbr$ + "' "
	fi
	
	barista_wd$ = sp!.getParameter("BARISTA_WD")
	
	rem --- added code by kew
	REM " --- FNYEAR_YY21$ Convert Numeric Year to 21st Century 2-Char Year"
	DEF FNYEAR_YY21$(Q)=FNYY_YY21$(STR(MOD(Q,100):"00"))
	REM " --- FNYY_YY21$ Convert 2-Char Year to 21st Century 2-Char Year"
	DEF FNYY_YY21$(Q1$)
	LET Q3$=" ABCDE56789ABCDEFGHIJ",Q1$(1,1)=Q3$(POS(Q1$(1,1)=" 0123456789ABCDEFGHIJ"))
	RETURN Q1$
	FNEND

	year$ = fnyear_yy21$(num(year$))
	

rem --- dirs	
	sv_wd$=dir("")
	rem ' chdir barista_wd$

rem --- Get Barista System Program directory
	rem ' sypdir$=""
	rem ' sypdir$=stbl("+DIR_SYP",err=*next)
	rem ' pgmdir$=stbl("+DIR_PGM",err=*next)u
	
rem --- create the in memory recordset for return

	dataTemplate$ = "REGTYPE:C(20*),BAR:C(3*),TOTAL:C(7*)"

	rs! = BBJAPI().createMemoryRecordSet(dataTemplate$)

rem --- Declare some variables ahead of time

declare BBjStoredProcedureData sp!
use ::SQLProperties.bbj::SQLProperties
declare SQLProperties props!

rem --- set the query string

sql$ = ""
	
sql$ = "SELECT 'Healthy' as lictype, 'Perpetual' as bar, count(*) as total FROM SN_STATS where reg_type = 'P' and perpet_healthy = 0 " + moreWhere$
sql$ = sql$ + "UNION " 
sql$ = sql$ + "SELECT 'Unhealthy' as lictype, 'Perpetual' as bar, count(*) as total FROM SN_STATS where reg_type = 'P' and perpet_healthy > 0 and perpet_healthy < 5 " + moreWhere$
sql$ = sql$ + "UNION " 
sql$ = sql$ + "SELECT 'Expired' as lictype, 'Perpetual' as bar, count(*) as total FROM SN_STATS where reg_type = 'P' and perpet_healthy = 5 " + moreWhere$
sql$ = sql$ + "UNION "

sql$ = sql$ + "SELECT 'Renewing' as lictype, 'Virtual' as bar, count(*) as total FROM SN_STATS where reg_type = 'V' and virtual_status = 'L' " + moreWhere$
sql$ = sql$ + "UNION " 
sql$ = sql$ + "SELECT 'Sleeping' as lictype, 'Virtual' as bar, count(*) as total FROM SN_STATS where reg_type = 'V' and virtual_status = 'S' " + moreWhere$
sql$ = sql$ + "UNION " 
sql$ = sql$ + "SELECT 'SAM Expired' as lictype, 'Virtual' as bar, count(*) as total FROM SN_STATS where reg_type = 'V' and virtual_status = 'D' " + moreWhere$
sql$ = sql$ + "UNION "

if inclOther$ = "Y" then
	sql$ = sql$ + "SELECT 'Other' as lictype, 'Annual/Other' as bar, count(*) as total FROM SN_STATS where reg_type = 'O' " + moreWhere$
	sql$ = sql$ + "UNION "
	sql$ = sql$ + "SELECT 'Annual' as lictype, 'Annual/Other' as bar, count(*) as total FROM SN_STATS where reg_type = 'A' " + moreWhere$
else
	sql$ = sql$ + "SELECT 'Annual Registered' as lictype, 'Annual' as bar, count(*) as total FROM SN_STATS where reg_type = 'A' " + moreWhere$
fi



rem ' erase "/mnt/data/basisaon/aon/tmp/sqlstash.txt"
rem ' string "/mnt/data/basisaon/aon/tmp/sqlstash.txt"
rem ' stash = unt
rem ' open(stash)"/mnt/data/basisaon/aon/tmp/sqlstash.txt"
rem ' write(stash)sql$
rem ' write(stash)group$,cust_type$, cust_nbr$
rem ' close(stash)

rem --- prep the query

props! = new SQLProperties()
sqlConnect$ = props!.getDBConnectForDatabase("AddOnData")
inRs! = BBjAPI().createSQLRecordSet(sqlConnect$, "", sql$)

rem --- Place the SELECT results into the in memory record set

while 1
	rd! = inRs!.getCurrentRecordData()

	regtype$ = rd!.getFieldValue("LICTYPE")
	thebar$ = rd!.getFieldValue("BAR")
	total$ = rd!.getFieldValue("TOTAL")
	
	if num(total$) <> 0 then
		data! = rs!.getEmptyRecordData()
		data!.setFieldValue("REGTYPE",cvs(regtype$,3))
		data!.setFieldValue("BAR",thebar$)
		data!.setFieldValue("TOTAL",cvs(total$,3))
		rs!.insert(data!)
	fi
	
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
    throw "["+pgm(-2)+"] "+str(tcb(5))+": "+rd_err_text$,err_num
	
	std_exit:
	
	end
