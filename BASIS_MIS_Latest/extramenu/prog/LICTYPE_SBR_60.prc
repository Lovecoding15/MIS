rem ----------------------------------------------------------------------------
rem Program: LICTYPE_SBR.prc  
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
	
	inclRegType$ = sp!.getParameter("REG_TYPES")
	firm_id$ =	sp!.getParameter("FIRM_ID")
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

	dataTemplate$ = "LICTYPE:C(20*),FIRM:C(3*),TOTAL:C(7*)"

	rs! = BBJAPI().createMemoryRecordSet(dataTemplate$)

rem --- Declare some variables ahead of time

declare BBjStoredProcedureData sp!
use ::SQLProperties.bbj::SQLProperties
declare SQLProperties props!

rem --- set the query string

sql$ = ""

if pos("O" = inclRegType$) <> 0 then
	sql$ = sql$ + "SELECT 'Other, No SAM' as lictype, firm_id, count(*) as total FROM SN_STATS where reg_type = 'O' and (cont_type = 'N' or cont_inforce = 0) group by firm_id "
	sql$ = sql$ + "UNION " 
	sql$ = sql$ + "SELECT 'Other, SAM' as lictype, firm_id, count(*) as total FROM SN_STATS where reg_type = 'O' and cont_inforce = 1 group by firm_id "
fi
if pos("P" = inclRegType$) <> 0 then
	if sql$ <> "" then
		sql$ = sql$ + "UNION "
	fi
	sql$ = sql$ + "SELECT 'Perpetual, Healthy' as lictype, firm_id, count(*) as total FROM SN_STATS where reg_type = 'P' and perpet_healthy = 0 group by firm_id "
	sql$ = sql$ + "UNION " 
	sql$ = sql$ + "SELECT 'Perpetual, Unhealthy' as lictype, firm_id, count(*) as total FROM SN_STATS where reg_type = 'P' and perpet_healthy > 0 and perpet_healthy < 5 group by firm_id "
	sql$ = sql$ + "UNION " 
	sql$ = sql$ + "SELECT 'Perpetual, Expired' as lictype, firm_id, count(*) as total FROM SN_STATS where reg_type = 'P' and perpet_healthy = 5 group by firm_id "
fi
if pos("A" = inclRegType$) <> 0 then
	if sql$ <> "" then
		sql$ = sql$ + "UNION "
	fi
	sql$ = sql$ + "SELECT 'Annual, Healthy' as lictype, firm_id, count(*) as total FROM SN_STATS where reg_type = 'A' and perpet_healthy = 0 group by firm_id "
	sql$ = sql$ + "UNION " 
	sql$ = sql$ + "SELECT 'Annual, Unhealthy' as lictype, firm_id, count(*) as total FROM SN_STATS where reg_type = 'A' and perpet_healthy > 0 and perpet_healthy < 5 group by firm_id "
	sql$ = sql$ + "UNION " 
	sql$ = sql$ + "SELECT 'Annual, Expired' as lictype, firm_id, count(*) as total FROM SN_STATS where reg_type = 'A' and perpet_healthy = 5 group by firm_id "
fi
if pos("V" = inclRegType$) <> 0 then
	if sql$ <> "" then
		sql$ = sql$ + "UNION "
	fi
	sql$ = sql$ + "SELECT 'Virtual, Renewing' as lictype, firm_id, count(*) as total FROM SN_STATS where reg_type = 'V' and virtual_status = 'L' group by firm_id "
	sql$ = sql$ + "UNION " 
	sql$ = sql$ + "SELECT 'Virtual, Sleeping' as lictype, firm_id, count(*) as total FROM SN_STATS where reg_type = 'V' and virtual_status = 'S' group by firm_id "
	sql$ = sql$ + "UNION " 
	sql$ = sql$ + "SELECT 'Virtual, SAM Expired' as lictype, firm_id, count(*) as total FROM SN_STATS where reg_type = 'V' and virtual_status = 'D' group by firm_id "
fi


rem --- prep the query

props! = new SQLProperties()
sqlConnect$ = props!.getDBConnectForDatabase("AddOnData")
inRs! = BBjAPI().createSQLRecordSet(sqlConnect$, "", sql$)

rem --- Place the SELECT results into the in memory record set

while 1
	rd! = inRs!.getCurrentRecordData()

	regtype$ = rd!.getFieldValue("LICTYPE")
	thefirm$ = rd!.getFieldValue("FIRM_ID")
	total$ = rd!.getFieldValue("TOTAL")
	
	data! = rs!.getEmptyRecordData()
	data!.setFieldValue("LICTYPE",cvs(regtype$,3))
	if thefirm$ = "01" then
		data!.setFieldValue("FIRM","BASIS, US")
	else
		data!.setFieldValue("FIRM","BASIS, EU")
	fi
	data!.setFieldValue("TOTAL",cvs(total$,3))
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
    throw "["+pgm(-2)+"] "+str(tcb(5))+": "+rd_err_text$,err_num
	
	std_exit:
	
	end
