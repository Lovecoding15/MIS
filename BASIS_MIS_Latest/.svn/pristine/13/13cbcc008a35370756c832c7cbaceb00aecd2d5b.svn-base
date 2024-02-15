rem ' sproc to do a report of new and add user transcation by customer in a given time frame


seterr sproc_error

Debug$= "/mnt/data/basisaon/aon/tmp/GET_SP_AND_SPM.txt"
erase Debug$,err=*next
string Debug$
debugchan=unt
open(debugchan)Debug$	
SKIP_DEBUG:

call "ec_open::SNM01"
call "ec_open::SNM02"

declare BBjStoredProcedureData sp!

rem --- Get the infomation object for the Stored Procedure

	sp! = BBjAPI().getFileSystem().getStoredProcedureData()

rem --- Get the IN parameters used by the procedure

	firm_id$ = sp!.getParameter("FIRM_ID")
	
rem --- create the in memory recordset for return

	dataTemplate$ = "FIRM:C(2*),CUSTOMER_NBR:C(6*),CUST_NAME:C(20*),SLS_PERSON:C(20*),LICENSE_CNT:C(10*),TOTAL_USERS:C(10*),LARGEST_USER_CNT:C(10*)"

	rs! = BBJAPI().createMemoryRecordSet(dataTemplate$)
	
	rem --- Build the SELECT statement to be returned to caller
	
	sql$ = "SELECT t1.firm_id, t1.customer_nbr, t1.cust_name, t2.slspsn_code, t3.slspsn_name, t4.LicenseCount, t4.TotalUsers, t4.LargestUserCount " 
	sql$ = sql$ + "FROM ARM01 t1 "
	sql$ = sql$ + "INNER JOIN ARM02 t2 on t1.firm_id = t2.firm_id and t1.customer_nbr = t2.customer_nbr "
	sql$ = sql$ + "INNER JOIN ARM10F t3 on t3.record_id_f = 'F' and t1.firm_id = t3.firm_id and t2.slspsn_code = t3.slspsn_code "
	sql$ = sql$ + "INNER JOIN (SELECT firm_id, customer_nbr, count(*) as LicenseCount, sum(users) as TotalUsers, Max(users) as LargestUserCount " 
	sql$ = sql$ + "FROM SNM01 where firm_id = '01' and active_flag = 'Y' " 
	sql$ = sql$ + "group by firm_id, customer_nbr) t4 on t1.firm_id = t4.firm_id and t1.customer_nbr = t4.customer_nbr "
	sql$ = sql$ + "WHERE FIRM_ID = '" + firm_id$ + "'  and (cust_type = 'SP' or cust_type ='SPM') and TotalUsers > 0 "
	sql$ = sql$ + "ORDER BY t3.slspsn_name"
	write(debugchan)sql$

rem --- Execute the query

	sql_chan=sqlunt
	
	sqlopen(sql_chan,mode="UID=basisaon,pwd=kQbmV7vAXRTyhazJ_ggAxD54@pRaCT-X*rH_7ww")"AddOnData"
	
	sqlprep(sql_chan)sql$
	
	sqlexec(sql_chan)
	
	dim read_tpl$:sqltmpl(sql_chan)
	
rem --- Assign the SELECT results to rs!

	while 1
		read_tpl$ = sqlfetch(sql_chan,end=*break)
		data! = rs!.getEmptyRecordData()
		firm_id$ = cvs(read_tpl.firm_id$,3)
		customer_nbr$ = cvs(read_tpl.customer_nbr$,3)
		if customer_nbr$ = "001000" continue
		
		data!.setFieldValue("FIRM",firm_id$)
		data!.setFieldValue("CUSTOMER_NBR",customer_nbr$)
		data!.setFieldValue("CUST_NAME",cvs(read_tpl.cust_name$,3))
				
		data!.setFieldValue("SLS_PERSON",cvs(read_tpl.slspsn_name$,3))
		data!.setFieldValue("LICENSE_CNT",read_tpl.licenseCount$)
		data!.setFieldValue("TOTAL_USERS",str(num(read_tpl.TotalUsers$)))
		data!.setFieldValue("LARGEST_USER_CNT",str(num(read_tpl.LargestUserCount$)))
		
		rs!.insert(data!)
		
		read record(snm01, key = firm_id$ + customer_nbr$, knum = 1, dom=*next)snm01$
		headerdone = 0
		while 1
			read record(snm01, end=*break)snm01$
			if snm01.customer_nbr$ <> customer_nbr$ then break
			if snm01.active_flag$ = "N" then continue 
			if snm01.users < 25 then continue
			sn$ = snm01.serial_nbr$
			
			found = 0
			read record (snm02, key = sn$, dom=*next)snm02$; found = 1
						
			efu = 0, sfu = 0
			if ! found then
				sfu = snm01.users
			else
				if cvs(snm02.lic_property1$,3) = "EF" then
					efu = snm02.users1
				else
					sfu = snm02.users1
				fi

				if cvs(snm02.lic_property2$,3) = "EF" then
					efu = snm02.users2 
				else
					if cvs(snm02.lic_property2$,3) = "SF" then
						sfu = snm02.users2
					fi
				fi
			fi
			
			if !headerdone then
				data! = rs!.getEmptyRecordData()
				data!.setFieldValue("LICENSE_CNT","Serial Nbr")
				data!.setFieldValue("TOTAL_USERS","SF USERS")
				data!.setFieldValue("LARGEST_USER_CNT","EF USERS")
				rs!.insert(data!)
				headerdone = 1
			fi
			data! = rs!.getEmptyRecordData()
			data!.setFieldValue("LICENSE_CNT",cvs(sn$,3))
			data!.setFieldValue("TOTAL_USERS",str(sfu))
			data!.setFieldValue("LARGEST_USER_CNT",str(efu))
			rs!.insert(data!)
			
		wend
		
		if !headerdone then
			data! = rs!.getEmptyRecordData()
			rs!.insert(data!)
		fi

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
	
	end	