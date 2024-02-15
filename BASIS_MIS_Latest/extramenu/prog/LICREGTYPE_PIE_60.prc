rem ----------------------------------------------------------------------------
rem Program: LICREGTYPE_PIE_60.prc  
rem Description: Stored Procedure to build a resultset that adx_aonashboard.aon
rem              can use to populate the given dashboard widget
rem 
rem              Data returned is counts of licenses by registration type
rem              the license registration type pie charge
rem
rem
rem Author(s): K. Williams
rem Revised: 09.08.2017
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
		
	num_to_list = num(sp!.getParameter("NUM_TO_LIST"))
	if num_to_list=0 or num_to_list>max_bars
		num_to_list=max_bars
	endif
	
	
	firmSelected$ = sp!.getParameter("FIRM_ID")
	if firmSelected$ <> "00" then 
		firmSelected$ = "FIRM_ID = '" + firmSelected$ + "'"
	else 
		firmSelected$ = ""
	fi
	
	inclRegType$ = sp!.getParameter("REG_TYPES")
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
	rem ' sv_wd$=dir("")
	rem ' chdir barista_wd$

rem --- Get Barista System Program directory
	rem ' sypdir$=""
	rem ' sypdir$=stbl("+DIR_SYP",err=*next)
	rem ' pgmdir$=stbl("+DIR_PGM",err=*next)
	
rem --- create the in memory recordset for return

	dataTemplate$ = "REGTYPE:C(20*),COUNT:C(7*)"

	rs! = BBJAPI().createMemoryRecordSet(dataTemplate$)

rem --- Declare some variables ahead of time

declare BBjStoredProcedureData sp!
use ::SQLProperties.bbj::SQLProperties
declare SQLProperties props!

rem --- set the query string

sql$ = ""

if inclRegType$ = "ALL" then
	sql$ = "SELECT REG_TYPE, COUNT(*) AS COUNT FROM SN_STATS "
	if firmSelected$ <> "" then
		sql$ = sql$ + "WHERE " + firmSelected$ + " "
	fi
	sql$ = sql$ + "GROUP BY REG_TYPE"
else
	if firmSelected$ <> "" then
		firmSelected$ = "and " + firmSelected$
	fi
	if inclRegType$ = "P" then
		sql$ = "SELECT 'Perpetual, Healthy' as lictype, count(*) as count FROM SN_STATS where (reg_type = 'P' or reg_type = 'A') and perpet_healthy = 0 " + firmSelected$
		sql$ = sql$ + "UNION "
		sql$ = sql$ + "SELECT 'Perpetual, Unhealthy' as lictype, count(*) as count FROM SN_STATS where (reg_type = 'P' or reg_type = 'A') and perpet_healthy > 0 and perpet_healthy < 5 " + firmSelected$
		sql$ = sql$ + "UNION "
		sql$ = sql$ + "SELECT 'Perpetual, Expired' as lictype, count(*) as count FROM SN_STATS where (reg_type = 'P' or reg_type = 'A') and perpet_healthy = 5 " + firmSelected$
	else
		rem ' virtual query
		sql$ = "SELECT 'Virtual, Renewing' as lictype, count(*) as count FROM SN_STATS where reg_type = 'V' and virtual_status = 'L' " + firmSelected$
		sql$ = sql$ + "UNION " 
		sql$ = sql$ + "SELECT 'Virtual, Sleeping' as lictype, count(*) as count FROM SN_STATS where reg_type = 'V' and virtual_status = 'S' " + firmSelected$
		sql$ = sql$ + "UNION " 
		sql$ = sql$ + "SELECT 'Virtual, SAM Expired' as lictype, count(*) as total FROM SN_STATS where reg_type = 'V' and virtual_status = 'D' " + firmSelected$

	fi
fi

rem --- prep the query

props! = new SQLProperties()
sqlConnect$ = props!.getDBConnectForDatabase("AddOnData")
inRs! = BBjAPI().createSQLRecordSet(sqlConnect$, "", sql$)

rem --- Place the SELECT results into the in memory record set

while 1
	rd! = inRs!.getCurrentRecordData()

	if inclRegType$ = "ALL" then
		regtype$ = rd!.getFieldValue("REG_TYPE")
		count$ = rd!.getFieldValue("COUNT")

		data! = rs!.getEmptyRecordData()
		if regtype$ = "O" then
			regtype$ = "Other (" + count$ + ")"
		else
			if regtype$ = "P" then
				regtype$ = "Perpetual (" + count$ + ")"
			else
				if regtype$ = "A" then
					regtype$ = "Annual (" + count$ + ")"
				else
					if regtype$ = "V" then
						regtype$ = "Virtual (" + count$ + ")"
					else
						regtype$ = "Unknown (" + count$ + ")"
					fi
				fi
			fi
		fi
		data!.setFieldValue("REGTYPE",regtype$)
		data!.setFieldValue("COUNT",cvs(count$,3))
		rs!.insert(data!)
	else
		if inclRegType$ = "P" then
			perpettype$ = rd!.getFieldValue("LICTYPE")
			count$ = rd!.getFieldValue("COUNT")
	
			data! = rs!.getEmptyRecordData()
			perpettype$ = perpettype$ + " (" + count$ + ")"
			
			data!.setFieldValue("REGTYPE",perpettype$)
			data!.setFieldValue("COUNT",cvs(count$,3))
			rs!.insert(data!)
		else
			rem ' virtual
			virtualtype$ = rd!.getFieldValue("LICTYPE")
			count$ = rd!.getFieldValue("COUNT")
	
			data! = rs!.getEmptyRecordData()
			virtualtype$ = virtualtype$ + " (" + count$ + ")"
			
			data!.setFieldValue("REGTYPE",virtualtype$)
			data!.setFieldValue("COUNT",cvs(count$,3))
			rs!.insert(data!)
		fi
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
