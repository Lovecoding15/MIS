rem ' ****************************************************
rem ' * SPROC to drive customer statements
rem ' ****************************************************
rem ' program name: custStatements.prc

rem ' ****************************************************
rem ' * declares
rem ' ****************************************************
declare BBjStoredProcedureData sp!
declare BBjRecordSet rs!
declare BBjRecordData data!

rem ' ****************************************************
rem ' * get SPROC parameters
rem ' ****************************************************
sp! = BBjAPI().getFileSystem().getStoredProcedureData()

rem ' looks like '01' or '02'
firm_id$ = sp!.getParameter("FIRM_ID")

rem ' in the form of YYYYMMDD
statement_date$ = sp!.getParameter("STATEMENTDATE")

rem ' customer numbers maybe any length up to 6
customer$ = sp!.getParameter("CUSTOMER")
while len(customer$) < 6
	customer$ = "0" + customer$
wend


rem ' ****************************************************
rem ' * create the in memory recordset for return
rem ' ****************************************************
dataTemplate$ = "firm_id:C(2),statement_date:C(10),customer_nbr:C(6),cust_name:C(30),address1:C(30),address2:C(30),"
dataTemplate$ = dataTemplate$ + "address3:C(30),address4:C(30),address5:C(30), address6:C(30),"
dataTemplate$ = dataTemplate$ + "invoice_date:C(10),ar_inv_nbr:C(7),po_number:C(10),currency:C(3),invoice_amt:N(10),trans_amt:N(10),"
dataTemplate$ = DataTemplate$ + "invBalance:N(10),aging_cur:N(10),aging_30:N(10),aging_60:N(10),aging_90:N(10),aging_120:N(10)"
rs! = BBJAPI().createMemoryRecordSet(dataTemplate$)


rem ' ****************************************************
rem ' * open files
rem ' ****************************************************
call "ec_open::ARM01"
call "ec_open::ARM02"
call "ec_open::TMM01"
call "ec_open::ART01"
call "ec_open::ART03"
call "ec_open::ART11"
call "ec_open::ARM02_CANADA"
call "ec_open::ART03_CANADA"
call "ec_open::CANADIAN_EXCH"

rem ' ****************************************************
rem ' * postion file pointer
rem ' ****************************************************

gosub build_list_of_aging_dates
gosub lookup_customer_address
gosub determine_customer_aging

read record(art01, key = firm_id$ + "  " + customer$, dom=*next)

rem ' ****************************************************
rem ' * main loop
rem ' ****************************************************
while 1

	currency$ = ""
	
	read record(art01,end=*break)art01$

	if art01.firm_id$ <> firm_id$ then break
	if art01.customer_nbr$ <> customer$ then break
	
	call "expCompDate.src", art01.invoice_date$, invoice_date$
	if invoice_date$ > statement_date$ then continue
	
	rem ' ****************************************************
	rem ' * calc invoice balance
	rem ' ****************************************************
	read record(art11, key=art01.firm_id$ + art01.ar_type$ + art01.customer_nbr$ + art01.ar_inv_nbr$, dom=*next)art11$
	trans_amt = 0
	while 1
		read record(art11,end=*break)art11$
		if art01.firm_id$ + art01.ar_type$ + art01.customer_nbr$ + art01.ar_inv_nbr$ <> art11.firm_id$ + art11.ar_type$ + art11.customer_nbr$ + art11.ar_inv_nbr$ then break
		call "expCompDate.src", art11.trans_date$, trans_date$
		if trans_date$ <= statement_date$ then trans_amt = trans_amt + art11.trans_amt + art11.adj_disc_amt
	wend
	
	rem ' ****************************************************
	rem ' * find the po number
	rem ' ****************************************************
	found = 0
	read record(art03, key = art01.firm_id$ + "  " + art01.customer_nbr$ + art01.ar_inv_nbr$ + "000", dom=*next)art03$; found = 1
	if found then po_number$ = art03.ar_po_number$
	
	rem ' ****************************************************
	rem ' * convert canadian customer's invoices to canadian dollars
	rem ' ****************************************************
	if canadian_customer then gosub convert_amounts
	
	invBalance = art01.invoice_amt + trans_amt

	if invBalance = 0 then continue	

	rem ' ****************************************************
	rem ' * output data
	rem ' ****************************************************
	data! = rs!.getEmptyRecordData()
	data!.setFieldValue("FIRM_ID",firm_id$)
	data!.setFieldValue("STATEMENT_DATE",statement_date$(5,2) + "/" + statement_date$(7,2) + "/" + statement_date$(1,4))
	data!.setFieldValue("CUSTOMER_NBR",customer$)
	data!.setFieldValue("CUST_NAME",arm01.cust_name$)
	data!.setFieldValue("ADDRESS1", address$(1,30))
	data!.setFieldValue("ADDRESS2", address$(31,30))
	data!.setFieldValue("ADDRESS3", address$(61,30))
	data!.setFieldValue("ADDRESS4", address$(91,30))
	data!.setFieldValue("ADDRESS5", address$(121,30))
	data!.setFieldValue("ADDRESS6", address$(151,30))
	invoice_date$ = invoice_date$(5,2) + "/" + invoice_date$(7,2) + "/" + invoice_date$(1,4)
	data!.setFieldValue("INVOICE_DATE",invoice_date$)
	data!.setFieldValue("AR_INV_NBR",art01.ar_inv_nbr$)
	data!.setFieldValue("PO_NUMBER",PO_NUMBER$)
	data!.setFieldValue("CURRENCY",currency$)
	data!.setFieldValue("INVOICE_AMT",str(art01.invoice_amt))
	data!.setFieldValue("TRANS_AMT",str(trans_amt))
	data!.setFieldValue("INVBALANCE",str(invBalance))
	data!.setFieldValue("AGING_CUR",str(arm02.aging_cur))
	data!.setFieldValue("AGING_30",str(arm02.aging_30))
	data!.setFieldValue("AGING_60",str(arm02.aging_60))
	data!.setFieldValue("AGING_90",str(arm02.aging_90))
	data!.setFieldValue("AGING_120",str(arm02.aging_120))
	rs!.insert(data!)
wend

rem ' close files
close(arm01)
close(arm02)
close(tmm01)
close(art01)
close(art03)
close(art11)
close(arm02_canada)
close(art03_canada)
close(canadian_exch)

sp!.setRecordSet(rs!)
end

rem ' ****************************************************
rem ' * look up customer address
rem ' ****************************************************
lookup_customer_address:

	rem ' get the customer name
	read record(arm01,key=firm_id$ + customer$)arm01$

	rem ' get address from Telemaster"
	tmmkey$ = firm_id$ + customer$ + fill(6,"0")
	dim tmm01$:fattr(tmm01$)
	read record(tmm01,key=tmmkey$,DOM=*next)tmm01$
	let rawAddr$ = tmm01$(142,60) + tmm01$(389,60) + tmm01.city$+" " + tmm01.state$+"  " + tmm01.country_code$ + FILL(28," ") + tmm01.zip_code$
	call "SYC.AX",rawAddr$,30,6,9,30
	address$ = rawAddr$

	rem ' is the customer a canadian customer
	canadian_customer = 0
	read record(arm02_canada, key = firm_id$ + customer$, dom=*next)arm02_canada$; canadian_customer = 1, due_ca=0, due_us=0

return

rem ' ****************************************************
rem ' * determine customer aging
rem ' ****************************************************
determine_customer_aging:

	rem ' read the customer aging record
	read record(arm02,key=firm_id$ + customer$ + "  ")arm02$

	dim c[5]
	
	read record(art01, key = firm_id$ + "  " + customer$, dom=*next)
	
	
	rem ' --- Invoice Records
	while 1
		read record(art01, end = *break)art01$

		if art01.firm_id$ <> firm_id$ then break
		if art01.customer_nbr$ <> customer$ then break

		rem ' the date to use for aging
		chk_dt$=art01.invoice_date$
		rem ' if BSG is the customer used due date$
		if art01.customer_nbr$="007808" then chk_dt$ = art01.due_date$
		call "expCompDate.src", chk_dt$, check_date$
		if check_date$ > statement_date$ then continue

		rem ' loop Payment/Adjustment Records		
		trans_amt = 0
		read (art11, key = art01.firm_id$ + art01.ar_type$ + art01.customer_nbr$ + art01.ar_inv_nbr$, dom=*next)
		while 1

			read record(art11, end = *break)art11$
			
			if art11.ar_inv_nbr$ <> art01.ar_inv_nbr$ then break

			call "expCompDate.src", art11.trans_date$, trans_date$
			if trans_date$ <= statement_date$ then trans_amt = trans_amt + art11.trans_amt + art11.adj_disc_amt
		wend
		
		rem ' convert money if canadian customer 
		if canadian_customer then
			dim art03$:fattr(art03$)
			read record(art03, key = art01.firm_id$ + "  " + art01.customer_nbr$ + art01.ar_inv_nbr$ + "000", dom=*next)art03$
			
			gosub convert_amounts
		endif

		bal = art01.invoice_amt + trans_amt
		
		if bal = 0 then continue
		
		rem ' Age
		let period = pos(check_date$ > aging_dates$,8)
		if period = 0 then 
			period = 5 
		else 
			period = int(period / 8)
		endif
		c[period] = c[period] + bal

	wend

	rem ' put aging buckets back into arm02
	arm02.aging_future = c[0]
	arm02.aging_cur = c[1]
	arm02.aging_30 = c[2]
	arm02.aging_60 = c[3]
	arm02.aging_90 = c[4]
	arm02.aging_120 = c[5]

return

rem ' ****************************************************
rem ' * build list of aging dates
rem ' ****************************************************
build_list_of_aging_dates:

	aging_dates$ = ""
	
	statement_date = jul(num(statement_date$(1,4)), num(statement_date$(5,2)), num(statement_date$(7,2)))
	
	for x = -5 TO 0
		aging_date = statement_date + (x *30)
		aging_dates$ = date(aging_date:"%Y%Mz%Dz") + aging_dates$ 
	next x

return

rem ' ****************************************************
rem ' * convert invoice amount to Canadian Dollars for Canadain customers
rem ' ****************************************************
convert_amounts:

	canadian_invoice = 0; currency$=""
	rem ' depends on the read of art03 and art01 done prior to the gosub here
	rem ' ON ACCOUNT invoices will never make it to ART03 must be read differently
	if pos("OA" = art01.ar_inv_nbr$) = 1 then
		read record(art03_canada, key = art01.firm_id$ + art01.customer_nbr$ + art01.invoice_date$ + art01.ar_inv_nbr$, knum=1, dom=*next)art03_canada$; canadian_invoice = 1  	
	else
		read record(art03_canada, key = art03.firm_id$ + art03.customer_nbr$ + art03.invoice_date$ + art03.order_number$, knum=0, dom=*next)art03_canada$; canadian_invoice = 1
	endif

	if canadian_invoice = 0 then 
		rem ' look up exchange rate in the CANADIAN_EXCH table directly
		read record (canadian_exch, key = invoice_date$, dom = *next)canadian_exch$
		
		found = 1
		read record(canadian_exch, end = *next)canadian_exch$; found = 1
		if !found then
			rem ' not found use the newest exchange record
			highest$ = keyl(canadian_exch)
			read record(canadian_exch, key = highest$)canadian_exch$
		endif
	else
		rem ' we have a canadian invoice build the canadian_exch record for the art03_canada$ template
		canadian_exch.ratedate$ = art03_canada.ratedate$
		canadian_exch.sequence_nbr$ = art03_canada.sequence_nbr$
		canadian_exch.to_us_doll = art03_canada.to_us_doll
		canadian_exch.to_cana_doll = art03_canada.to_cana_doll
	endif

	rem ' convert the invoice amout
	amountin = art01.invoice_amt; amountout = 0	
	call "canDollConversion", canadian_exch$, 0, amountin, amountout
	art01.invoice_amt = amountout

	rem ' convert the adjustment amnt		
	amountin = trans_amt; amountout = 0
	call "canDollConversion", canadian_exch$, 0, amountin, amountout
	trans_amt = amountout

	currency$ = "CAD"
return

end


