rem ' sproc to do a report of new and add user transcation by customer in a given time frame


seterr sproc_error

Debug$= "/mnt/data/basisaon/aon/tmp/GET_NEW_AND_ADD.txt"
erase Debug$,err=*next
string Debug$
debugchan=unt
open(debugchan)Debug$	
SKIP_DEBUG:

call "ec_open::SNT01"

declare BBjStoredProcedureData sp!

rem --- Get the infomation object for the Stored Procedure

	sp! = BBjAPI().getFileSystem().getStoredProcedureData()

rem --- Get the IN parameters used by the procedure

	firm_id$ = sp!.getParameter("FIRM_ID")
	customer_nbr$ = sp!.getParameter("CUSTOMER_NBR")
	
	year$ = sp!.getParameter("YEAR")
	begin_date$ = sp!.getParameter("BEGIN_DATE"); rem ' yyyy-mm-dd
	begin_date$ = begin_date$(3,2) + begin_date$(6,2) + begin_date$(9,2)
	begin_date$ = fnd$(begin_date$)
	
	end_date$ = sp!.getParameter("END_DATE"); rem ' yyyy-mm-dd
	end_date$ = end_date$(3,2) + end_date$(6,2) + end_date$(9,2)
	end_date$ = fnd$(end_date$)

	rem ' low level unpacking function, one date component done
	DEF FNA$(Q$,Q2$)=STR(MOD((ASC(Q$)-32)*POS(" "<>Q2$(2,1)),100):"00")

	rem ' unpack a date into mm/dd/yy format
	DEF FNB$(Q1$)=FNA$(Q1$(2),Q1$)+"/"+FNA$(Q1$(3),Q1$)+"/"+FNA$(Q1$(1),Q1$)
	
	rem ' pack a date from the form mmddyy
	DEF FND$(Q$)=CHR(FNYY_YEAR(Q$(5,2))+32)+CHR(NUM(Q$(1,2))+32)+CHR(NUM(Q$(3,2))+32)
	
	rem ' --- FNYY_YEAR Convert 2-Char Year to 21st Century Numeric Year for packing 
	rem ' or for using in the Jul function
	DEF FNYY_YEAR(Q1$)
	LET Q=NUM(FNYY21_YY$(Q1$)); IF Q<50 THEN LET Q=Q+100
	rem ' the above line changes to the following line for extending the scheme out to 2029
	rem ' note the <20 changes to <30
	rem ' LET Q=NUM(FNYY21_YY$(Q1$)); IF Q<50 THEN LET Q=Q+100
	RETURN Q
	FNEND
	
	rem ' --- FNYY21_YY$ Un-Convert 21st Century 2-Char Year to 2-Char Year"
	DEF FNYY21_YY$(Q1$)
	LET Q3$=" 01234567890123456789",Q1$(1,1)=Q3$(POS(Q1$(1,1)=" 0123456789ABCDEFGHIJ"))
	RETURN Q1$
	FNEND


rem --- create the in memory recordset for return

	dataTemplate$ = "FIRM_ID:C(2*),CUSTOMER_NBR:C(6*),AR_INV_NBR:C(7*),INVOICE_DATE:C(8*),ITEM_NUMBER:C(20*),"
	dataTemplate$ = dataTemplate$ + "TYPE_OF_SALE:C(3*),SERIAL_NBR:C(20*),RESULT_EF_USERS:N(8*),RESULT_SF_USERS:N(8*),USERS_ADDED:N(8)"

	rs! = BBJAPI().createMemoryRecordSet(dataTemplate$)
	
	rem --- Build the SELECT statement to be returned to caller
	
	sql$ = "SELECT top 100 t1.firm_id, t1.ar_type, t1.customer_nbr, t1.ar_inv_nbr, date(t1.invoice_date) as invoice_date, t2.ITEM_NUMBER, t3.type_of_sale, " 
	sql$ = sql$ + "t3.lic_property1, t3.users as users1, t3.lic_property2, t3.users2, t4.serial_nbr "
	sql$ = sql$ + "FROM ART03 t1 "
	sql$ = sql$ + "INNER JOIN ART13 t2 on t1.firm_id = t2.firm_id and t1.ar_type = t2.ar_type and t1.customer_nbr = t2.customer_nbr and t1.ar_inv_nbr = t2.ar_inv_nbr "
	sql$ = sql$ + "INNER JOIN ART73 t3 on t2.firm_id = t3.firm_id and t2.ar_type = t3.ar_type and t2.customer_nbr = t3.customer_nbr and t2.ar_inv_nbr = t3.ar_inv_nbr and t2.line_number = t3.line_number "
	sql$ = sql$ + "INNER JOIN ART83 t4 on t2.firm_id = t4.firm_id and t2.ar_type = t4.ar_type and t2.customer_nbr = t4.customer_nbr and t2.ar_inv_nbr = t4.ar_inv_nbr and t2.line_number = t4.line_number "
	
	sql$ = sql$ + "where t1.firm_id = '01' and t1.customer_nbr = '003522' and SUBSTRING(date(t1.invoice_date),7,2) = '" + year$ + "' "
	sql$ = sql$ + "and t2.PRODUCT_TYPE = 'BAS' and (t3.type_of_sale = 'NEW' or t3.type_of_sale = 'ADD') "
	sql$ = sql$ + "order by t4.serial_nbr "
	write(debugchan)sql$
rem --- Execute the query

	sql_chan=sqlunt
	
	sqlopen(sql_chan,mode="UID=basisaon,pwd=kQbmV7vAXRTyhazJ_ggAxD54@pRaCT-X*rH_7ww")"AddOnData"
	
	sqlprep(sql_chan)sql$
	
	dim read_tpl$:sqltmpl(sql_chan)

	sqlexec(sql_chan)
	
rem --- Assign the SELECT results to rs!

	while 1
		read_tpl$ = sqlfetch(sql_chan,end=*break)
		data! = rs!.getEmptyRecordData()
		data!.setFieldValue("FIRM_ID",read_tpl.firm_id$)
		data!.setFieldValue("CUSTOMER_NBR",read_tpl.customer_nbr$)
		data!.setFieldValue("AR_INV_NBR",str(read_tpl.ar_inv_nbr$))
		write(debugChan)"first part"
		
		inv_date$ = read_tpl.invoice_date$
		rem ' inv_date$ = hta(inv_date$)
		rem ' inv_date$ = fnb$(inv_date$)
		rem ' year$ = inv_date$(7,2)
		rem ' inv_date$ = "20" + year$ + "-" + inv_date$(1,2) + "-" + inv_date$(4,2)
		
		data!.setFieldValue("INVOICE_DATE",inv_date$)
		write(debugChan)"second part"
		
		data!.setFieldValue("ITEM_NUMBER",str(read_tpl.item_number$))
		data!.setFieldValue("TYPE_OF_SALE",str(read_tpl.type_of_sale$))
		data!.setFieldValue("SERIAL_NBR",str(read_tpl.serial_nbr$))
		write(debugChan)"thrid part"
		
		efu = 0, sfu = 0
		if cvs(read_tpl.lic_property1$,3) = "EF" then
			efu = read_tpl.users1
		else
			sfu = read_tpl.users1
		fi
		
		if cvs(read_tpl.lic_property2$,3) = "EF" then
			efu = read_tpl.users2 
		else
			if cvs(read_tpl.lic_property2$,3) = "SF" then
				sfu = read_tpl.users2
			fi
		fi
		
		data!.setFieldValue("RESULT_EF_USERS",str(efu))
		data!.setFieldValue("RESULT_SF_USERS",str(sfu))
		
		if read_tpl.type_of_sale$ = "ADD" then
			added_users = 0
			read record(snt01, key = read_tpl.serial_nbr$, err=*next)snt01$
			while 1
				read record(snt01, end=*break)snt01$
				if cvs(snt01.serial_nbr$,3) <> cvs(snt01.serial_nbr$,3) then break
				if read_tpl.ar_inv_nbr$ <> snt01.ar_inv_nbr$ then continue
				if read_tpl.type_of_sale$ <> snt01.type_of_sale$ then continue
				added_users = snt01.users
				break
			wend
		else
			rem ' new sales
			added_users = efu + sfu
		fi
		data!.setFieldValue("USERS_ADDED",str(added_users))
		
		write(debugChan)"fourth part"
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
	
	end	