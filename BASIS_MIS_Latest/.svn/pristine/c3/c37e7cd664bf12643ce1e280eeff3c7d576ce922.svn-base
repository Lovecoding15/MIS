rem ' sproc to do a report of detail line item revenue for a customer in a given time period

seterr sproc_error

Debug$= "/mnt/data/basisaon/aon/tmp/getLineItemRevenue.txt"
erase Debug$,err=*next
string Debug$
debugchan=unt
open(debugchan)Debug$	
SKIP_DEBUG:

declare BBjStoredProcedureData sp!

rem --- Get the infomation object for the Stored Procedure

	sp! = BBjAPI().getFileSystem().getStoredProcedureData()

rem --- Get the IN parameters used by the procedure

	firm_id$ = sp!.getParameter("FIRM_ID")
	customer_nbr$ = sp!.getParameter("CUSTOMER_NBR")
	beginDate$ = sp!.getParameter("BEGIN_DATE")
	endDate$ = sp!.getParameter("END_DATE")

rem --- create the in memory recordset for return

	dataTemplate$ = "INVOICE_DATE:C(10*),AR_INV_NBR:C(7*),ORDER_NUMBER:C(6*),AR_PO_NUMBER:C(10*),LINE_NUMBER:C(3*),TYPE_OF_SALE:C(3*),PRODUCT_TYPE:C(3*),ITEM_NUMBER:C(20*),EXT_PRICE:C(10*),SERIAL_NBR:C(20*),LIC_PROPERTY1:C(3*),USERS:C(5*),LIC_PROPERTY2:C(3*),USERS2:C(5*),LICENSE_TYPE:C(3*)"
	
	rs! = BBJAPI().createMemoryRecordSet(dataTemplate$)
	
rem --- Build the SELECT statement to be returned to caller

	sql$ = "SELECT date(t1.invoice_date) as invoice_date, t1.ar_inv_nbr, t1.order_number, t1.ar_po_number, t3.line_number, t3.type_of_sale, t2.product_type, t2.item_number, t2.qty_shipped, t2.unit_price, t4.serial_nbr, t3.lic_property1, t3.users, t3.lic_property2, t3.users2, t5.license_type "
	sql$ = sql$ + "FROM ART03 t1 "
	sql$ = sql$ + "INNER JOIN ART13 t2 on t1.firm_id = t2.firm_id and t1.ar_type = t2.ar_type and t1.customer_nbr = t2.customer_nbr and t1.ar_inv_nbr = t2.ar_inv_nbr "
	sql$ = sql$ + "INNER JOIN ART73 t3 on t2.firm_id = t3.firm_id and t2.ar_type = t3.ar_type and t2.customer_nbr = t3.customer_nbr and t2.ar_inv_nbr = t3.ar_inv_nbr and t2.line_number = t3.line_number "
	sql$ = sql$ + "INNER JOIN ART83 t4 on t3.firm_id = t4.firm_id and t3.ar_type = t4.ar_type and t3.customer_nbr = t4.customer_nbr and t3.ar_inv_nbr = t4.ar_inv_nbr and t3.line_number = t4.line_number "
	sql$ = sql$ + "LEFT OUTER JOIN SNM01 t5 on t4.serial_nbr = t5.serial_nbr "
	sql$ = sql$ + "where t1.firm_id = '" + firm_id$ + "' and t1.customer_nbr = '" + customer_nbr$ + "' and t1.invoice_date >= '" + beginDate$ + "' and t1.invoice_date <= '" + endDate$ + "' "
	sql$ = sql$ + "order by t3.type_of_sale "
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
		
		write(debugchan)read_tpl.invoice_date$
		
		invDate$ = read_tpl.invoice_date$
		invDate$ = "20" + invDate$(7,2) + "-" + invDate$(1,2) + "-" + invDate$(4,2)
		
		data!.setFieldValue("INVOICE_DATE", invDate$)
		data!.setFieldValue("AR_INV_NBR", read_tpl.ar_inv_nbr$)
		data!.setFieldValue("ORDER_NUMBER", read_tpl.order_number$)
		data!.setFieldValue("AR_PO_NUMBER", read_tpl.ar_po_number$)
		data!.setFieldValue("LINE_NUMBER", read_tpl.line_number$)
		data!.setFieldValue("TYPE_OF_SALE", read_tpl.type_of_sale$)
		data!.setFieldValue("PRODUCT_TYPE", read_tpl.product_type$)
		data!.setFieldValue("ITEM_NUMBER", read_tpl.item_number$)
		
		if num(read_tpl.qty_shipped$) < 0 then read_tpl.unit_price$ = str(num(read_tpl.unit_price$)*(-1))
		data!.setFieldValue("EXT_PRICE", read_tpl.unit_price$)
		
		data!.setFieldValue("SERIAL_NBR", read_tpl.serial_nbr$)
		data!.setFieldValue("LIC_PROPERTY1", read_tpl.lic_property1$)
		data!.setFieldValue("USERS", read_tpl.users$)
		data!.setFieldValue("LIC_PROPERTY2", read_tpl.lic_property2$)
		data!.setFieldValue("USERS2", read_tpl.users2$)
		data!.setFieldValue("LICENSE_TYPE", read_tpl.license_type$)
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