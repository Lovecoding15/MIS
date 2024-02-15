rem ' get annaul license list

seterr sproc_error

Debug$= "/mnt/data/basisaon/aon/tmp/getAnnualLicenseList.txt"
erase Debug$,err=*next
string Debug$
debugchan=unt
open(debugchan)Debug$	
SKIP_DEBUG:

call "ec_open::SN_LICENSE"

declare BBjStoredProcedureData sp!

rem --- Get the infomation object for the Stored Procedure

	sp! = BBjAPI().getFileSystem().getStoredProcedureData()

rem --- Get the IN parameters used by the procedure

	user$ = sp!.getParameter("USER")
	
rem --- create the in memory recordset for return

	dataTemplate$ = "SERIAL_NBR:C(20*),CUSTOMER_NBR:C(6*),CUST_NAME:C(20*),LICENSE_TYPE:C(3*),USERS:C(4*),CONT_INFORCE:C(1*),EXPIRE_ON_DT:C(8*),ANN_REG:C(1*),ANN_EXPIRE:C(11*)"

	rs! = BBJAPI().createMemoryRecordSet(dataTemplate$)
	
	rem --- Build the SELECT statement to be returned to caller

	sql$ = "SELECT t1.serial_nbr, t1.customer_nbr, t2.cust_name, t1.license_type, t1.users, t3.expire_on_dt FROM SNM01 t1 "
	sql$ = sql$ + "INNER JOIN ARM01 t2 on t1.firm_id = t2.firm_id and t1.customer_nbr = t2.customer_nbr "
	sql$ = sql$ + "LEFT OUTER JOIN SMC01 t3 on t1.contract = t3.contract "
	sql$ = sql$ + "where t1.media_type = 'ANN' and t1.active_flag = 'Y' "
	sql$ = sql$ + "ORDER BY LICENSE_TYPE "
	write(debugchan)sql$
	
rem --- Execute the query
	
	sql_chan=sqlunt

	sqlopen(sql_chan,mode="UID=basisaon,pwd=kQbmV7vAXRTyhazJ_ggAxD54@pRaCT-X*rH_7ww")"AddOnData"

	sqlprep(sql_chan)sql$

	sqlexec(sql_chan)

	dim read_tpl$:sqltmpl(sql_chan)
		
rem --- Assign the SELECT results to rs!

	today$ = date(0:"%Y%Mz%Dz")

	while 1
		read_tpl$ = sqlfetch(sql_chan,end=*break)
		
		data! = rs!.getEmptyRecordData()
		
		data!.setFieldValue("SERIAL_NBR",read_tpl.serial_nbr$)
		data!.setFieldValue("CUSTOMER_NBR",read_tpl.customer_nbr$)
		data!.setFieldValue("CUST_NAME",cvs(read_tpl.cust_name$,3))
				
		data!.setFieldValue("LICENSE_TYPE",read_tpl.license_type$)
		data!.setFieldValue("USERS",read_tpl.users$)

		data!.setFieldValue("EXPIRE_ON_DT",read_tpl.expire_on_dt$)

		if read_tpl.expire_on_dt$ >= today$ then
			data!.setFieldValue("CONT_INFORCE","Y")
		else
			data!.setFieldValue("CONT_INFORCE","N")
		fi

		rem ' check the sn_license file
		sn$ = cvs(read_tpl.serial_nbr$,3)
		sn$ = sn$ + fill(12," ")
		sn$ = sn$(1,12)
		read record(sn_license, key = sn$, dom=*next)sn_license$
		
		while 1
			read record(sn_license,end = * break)sn_license$
			if sn_license.serial_num$ <> sn$ then break
			
			ann_reg$ = sn_license.annual$
			ann_expire$ = sn_license.expire$
		wend
		
		if ann_reg$ = "Y" then
			data!.setFieldValue("ANN_REG",ann_reg$)
			data!.setFieldValue("ANN_EXPIRE",ann_expire$)
		fi
		rs!.insert(data!)
	wend
	
rem --- Tell the stored procedure to return the result set.

	sp!.setRecordSet(rs!)
	goto std_exit

sproc_error:rem --- SPROC error trap/handler
    rd_err_text$ = ""
    err_num=err
    rd_err_text$ = str(err_num) + " " + str(tcb(5)) + " " + errmes(-1)
    write(debugchan)rd_err_text$	
	
	std_exit:
	
	close(debugchan, err = *next)
	close(sn_license, err = *next)
	
	end	