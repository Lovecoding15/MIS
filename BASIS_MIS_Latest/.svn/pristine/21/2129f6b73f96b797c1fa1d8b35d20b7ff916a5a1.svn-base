rem ' ****************************************************
rem ' * SPROC to drive b-comm aging report
rem ' ****************************************************
rem ' program name: bcommAging.prc

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

rem ' customer numbers maybe any length up to 6
customer$ = sp!.getParameter("CUSTOMER")

while len(customer$) < 6
	customer$ = "0" + customer$
wend

rem ' aging as of date
asOfDate$ = sp!.getParameter("ASOFDATE")

if len(asOfDate$) <> 8 then
	asOfDate$ = ""
else
	gooddate = 0
	asOfDate = jul(num(asOfDate$(1,4),err=*next),num(asOfDate$(5,2),err=*next),num(asOfDate$(7,2),err=*next),err=*next); gooddate = 1
	if !gooddate then
		asOfDate$ = ""
	fi
fi

rem ' ****************************************************
rem ' * create the in memory recordset for return
rem ' ****************************************************
dataTemplate$ = "firm_name:C(40),run_date:C(10),customer_nbr:C(6),cust_name:C(30),invoice_nbr:C(7),invoice_date:C(10),"
dataTemplate$ = dataTemplate$ + "due_date:c(10),po_number:C(10),order_number:C(7),terms_code:C(2), inv_type:C(1),"
dataTemplate$ = dataTemplate$ + "currency:C(3),current:N(10),aging_30:N(10),aging_60:N(10),aging_90:N(10),aging_120:N(10),invBalance:N(10),"
dataTemplate$ = dataTemplate$ + "currenthdr:c(9),aging30hdr:c(9),aging60hdr:c(9),aging90hdr:c(9),aging120hdr:c(9)"
rs! = BBJAPI().createMemoryRecordSet(dataTemplate$)

rem ' ****************************************************
rem ' * open files
rem ' ****************************************************
call "ec_open::ARM01"
call "ec_open::ART01"
call "ec_open::ART03"
call "ec_open::ART11"
call "ec_open::ARM02_CANADA"
call "ec_open::ART03_CANADA"
call "ec_open::CANADIAN_EXCH"
call "ec_open::DIR_RNW_PO_LOG"

rem ' ****************************************************
rem ' * is this a Canadian Customer
rem ' ****************************************************
canadian_customer = 0
read record(ARM02_CANADA, key = firm_id$ + customer$, dom=*next)ARM02_CANADA$; canadian_customer = 1

rem ' ****************************************************
rem ' * housekeeping
rem ' ****************************************************

if asOfDate$ = ""
	rundate$ = date(0:"%Y%Mz%Dz")
	runmonth$ = date(0:"%Mz")
	runyear$ = date(0:"%Y")
else
	rundate$ = asOfDate$
	runmonth$ = asOfDate$(5,2)
	runyear$ = asOfDate$(1,4)
fi

rundate = jul(num(rundate$(1,4)), num(rundate$(5,2)), num(rundate$(7,2)))
runmonth = num(runmonth$)
runyear = num(runyear$)

monthString$ = "Jan  Feb  MarchAprilMay  June July Aug  Sept Oct  Nov  Dec  "

rem ' aging months
dim agingMonths[4]
dim agingMonths$[4]
for x = 0 TO 4
	thismonth = runmonth + (x * (-1))
	if thismonth <= 0 then 
		thismonth = 12 + thismonth
		thisyear = runyear - 1
	else
		thisyear = runyear
	fi
	agingMonths[x] = thismonth
	agingMonths$[x] = cvs(monthString$((thisMonth * 5) - 4, 5),3) + " " + str(thisyear)
	if x = 4 then agingMonths$[x] = agingMonths$[x] + " +"
next x

rem ' get customer name
read record (arm01,key = firm_id$ + customer$)arm01$

rem ' summarize Renew Invoices by Due Date and type for Descore and ESS
tag$ = ""
tagTotal$ = ""

rem ' ****************************************************
rem ' * postion file pointer
rem ' ****************************************************

read (art01,key = firm_id$ + "  " + customer$, dom = *next) 

rem ' ****************************************************
rem ' * main loop
rem ' ****************************************************

rowCount = 0

while 1 

	read record (art01, end = *break)art01$
	
	if firm_id$ <> art01.firm_id$ or customer$ <> art01.customer_nbr$ then break
  
	call "expCompDate.src", art01.invoice_date$, invoice_date$
	if invoice_date$ > rundate$ then continue

	call "expCompDate.src", art01.due_date$, due_date$
	
	invBalance = art01.invoice_amt
	
	read (art11,key = art01.firm_id$ + "  " + art01.customer_nbr$ + art01.ar_inv_nbr$, dom = *next)
	
	while 2
    		read record (art11, end = *break)art11$

		if art11.firm_id$ + "  " + art11.customer_nbr$ + art11.ar_inv_nbr$ <> art01.firm_id$ + "  " + art01.customer_nbr$ + art01.ar_inv_nbr$ then break

		if cvs(art11.ar_tran_code$, 3) = "" then continue
		rem ' include payments made after the asOfDate
		call "expCompDate.src", art11.trans_date$, trans_date$
		rem ' if trans_date$ > rundate$ then continue

		invBalance = invBalance + art11.trans_amt + art11.adj_disc_amt
	wend

	rem '  age invoice
	period = num(invoice_date$(5,2)); rem ' month
	found = 0
	for x = 0 to 3
		if period = agingMonths[x] then 
			found = 1
			period = x
			break
		fi
	next x
	if found = 0 then period = 4

  	po_number$="None",order_number$="None",found=0
	read record (art03, key = art01.firm_id$ + "  " + art01.customer_nbr$ + art01.ar_inv_nbr$ + "000", dom = *next)art03$; found=1
	if found then po_number$ = art03.ar_po_number$, order_number$ = art03.order_number$
  
	rem ' is this a Canadian Customer and if so is it a Canadian Invoice
	currency$ = ""
	if canadian_customer then
		canadian_inv = 0
  	
		rem ' ON ACCOUNT invoices will never make it to ART03 must be read differently
		if pos("OA" = art01.ar_inv_nbr$) = 1 then
			read record(art03_canada, key = art01.firm_id$ + art01.customer_nbr$ + art01.invoice_date$ + art01.ar_inv_nbr$, knum=1, dom=*next)art03_canada$; canadian_inv = 1  	
		else
			read record(art03, key = art01.firm_id$ + "  " + art01.customer_nbr$ + art01.ar_inv_nbr$ + "000")art03$
			read record(art03_canada, key = art03.firm_id$ + art03.customer_nbr$ + art03.invoice_date$ + art03.order_number$, knum=0, dom=*next)art03_canada$; canadian_inv = 1
		fi

		if canadian_inv then
			dim canadian_exch$:fattr(canadian_exch$)
			canadian_exch.ratedate$ = art03_canada.ratedate$
			canadian_exch.sequence_nbr$ = art03_canada.sequence_nbr$
			canadian_exch.to_us_doll = art03_canada.to_us_doll
			canadian_exch.to_cana_doll = art03_canada.to_cana_doll
		else
			rem ' not found use the newest exchange record
			highest$ = keyl(canadian_exch)
			read record(canadian_exch, key = highest$)canadian_exch$
		fi

		amountin = invBalance; amountout = 0
		call "canDollConversion", canadian_exch$, 0, amountin, amountout
		invBalance = amountout
		currency$ = "CAD"	  	
	fi

	if invBalance = 0 then continue	

	rem ' ****************************************************
	rem ' * output data
	rem ' ****************************************************
	data! = rs!.getEmptyRecordData()
	if firm_id$ = "02" then
		data!.setFieldValue("FIRM_NAME","BASIS Europe Distribution GmbH")
	else
		data!.setFieldValue("FIRM_NAME","BASIS International, Ltd")
	fi
	data!.setFieldValue("RUN_DATE", rundate$(5,2) + "/" + rundate$(7,2) + "/" + rundate$(1,4))
	data!.setFieldValue("CUSTOMER_NBR", customer$)
	data!.setFieldValue("CUST_NAME", arm01.cust_name$)
	data!.setFieldValue("INVOICE_NBR", art01.ar_inv_nbr$)
	data!.setFieldValue("INVOICE_DATE", invoice_date$(5,2) + "/" + invoice_date$(7,2) + "/" + invoice_date$(1,4))
	data!.setFieldValue("DUE_DATE", due_date$(5,2) + "/" + due_date$(7,2) + "/" + due_date$(1,4))
	data!.setFieldValue("PO_NUMBER", po_number$)
	data!.setFieldValue("ORDER_NUMBER", order_number$)
	data!.setFieldValue("TERMS_CODE", art01.terms_code$)
	data!.setFieldValue("INV_TYPE", art01.ar_inv_type$)
	data!.setFieldValue("CURRENCY", currency$)
	if period = 0 then
		data!.setFieldValue("CURRENT", str(invBalance))
	else
		if period = 1 then
			data!.setFieldValue("AGING_30", str(invBalance))
		else
			if period = 2 then
				data!.setFieldValue("AGING_60", str(invBalance))
			else
				if period = 3 then
					data!.setFieldValue("AGING_90", str(invBalance))
				else
					data!.setFieldValue("AGING_120", str(invBalance))
				fi
			fi
		fi
	fi
	data!.setFieldValue("INVBALANCE", str(invBalance))
	data!.setFieldValue("currenthdr", agingMonths$[0])
	data!.setFieldValue("aging30hdr", agingMonths$[1])
	data!.setFieldValue("aging60hdr", agingMonths$[2])
	data!.setFieldValue("aging90hdr", agingMonths$[3])
	data!.setFieldValue("aging120hdr", agingMonths$[4])
	rs!.insert(data!)
	rowCount = rowCount + 1
	
	rem ' summarize the Renew Invoices by due date and type
	if canadian_customer or customer$ = "002157" then
		if pos("SAM Renew" = po_number$) <> 0 or pos("DVK Renew" = po_number$) <> 0 or pos("RNT Renew" = po_number$) <> 0 then
			rem ' t$ = current tag (1,8) due date, (9,10) = po number
			rem ' tag$ = the tag list
			t$ = due_date$ + po_number$ + fill(10), t$ = t$(1,18)
			while 1
				tpos = pos(t$ = tag$)
				if tpos <> 0 then break
				tag$ = tag$ + t$
				tagTotal$ = tagTotal$ + fill(10)
			wend
			ttpos = round((tpos/18) + 1,0)
			ttpos = (ttpos * 10) - 9
			curTotal = num(tagTotal$(ttpos,10)) + invBalance
			tagTotal$(ttpos,10) = str(curTotal:"######0.00")
		else
			rem ' check for a PO Number change
			found = 0
			read record(dir_rnw_po_log, knum = 1, key = firm_id$ + customer$ + art01.ar_inv_nbr$, dom = *next)dir_rnw_po_log$; found = 1
			if found then
				rem ' t$ = current tag (1,8) due date, (9,10) = po number
				rem ' tag$ = the tag list
				t$ = due_date$ + "PO CHG" + fill(10), t$ = t$(1,18)
				while 1
					tpos = pos(t$ = tag$)
					if tpos <> 0 then break
					tag$ = tag$ + t$
					tagTotal$ = tagTotal$ + fill(10)
				wend
				ttpos = round((tpos/18) + 1,0)
				ttpos = (ttpos * 10) - 9
				curTotal = num(tagTotal$(ttpos,10)) + invBalance
				tagTotal$(ttpos,10) = str(curTotal:"######0.00")
			fi
		fi
	fi
wend

if rowCount =0 then
	rem ' add an holder row
	data! = rs!.getEmptyRecordData()
	if firm_id$ = "02" then
		data!.setFieldValue("FIRM_NAME","BASIS Europe Distribution GmbH")
	else
		data!.setFieldValue("FIRM_NAME","BASIS International, Ltd")
	fi
	data!.setFieldValue("RUN_DATE", rundate$(5,2) + "/" + rundate$(7,2) + "/" + rundate$(1,4))
	data!.setFieldValue("CUSTOMER_NBR", customer$)
	data!.setFieldValue("CUST_NAME", arm01.cust_name$)
	data!.setFieldValue("currenthdr", agingMonths$[0])
	data!.setFieldValue("aging30hdr", agingMonths$[1])
	data!.setFieldValue("aging60hdr", agingMonths$[2])
	data!.setFieldValue("aging90hdr", agingMonths$[3])
	data!.setFieldValue("aging120hdr", agingMonths$[4])
	rs!.insert(data!)
else
	if canadian_customer or customer$ = "002157" then
		rem ' add the Descore and ESS Renew invoice summary
		rem ' add a blank line
		data! = rs!.getEmptyRecordData()
		data!.setFieldValue("FIRM_NAME","BASIS International, Ltd")
		data!.setFieldValue("RUN_DATE", rundate$(5,2) + "/" + rundate$(7,2) + "/" + rundate$(1,4))
		data!.setFieldValue("CUSTOMER_NBR", customer$)
		data!.setFieldValue("CUST_NAME", arm01.cust_name$)
		rs!.insert(data!)

		rem ' add a header line
		data! = rs!.getEmptyRecordData()
		data!.setFieldValue("FIRM_NAME","BASIS International, Ltd")
		data!.setFieldValue("RUN_DATE", rundate$(5,2) + "/" + rundate$(7,2) + "/" + rundate$(1,4))
		data!.setFieldValue("CUSTOMER_NBR", customer$)
		data!.setFieldValue("CUST_NAME", arm01.cust_name$)
		data!.setFieldValue("INVOICE_NBR", "Pending")
		rs!.insert(data!)

		rem ' add a header line
		data! = rs!.getEmptyRecordData()
		data!.setFieldValue("FIRM_NAME","BASIS International, Ltd")
		data!.setFieldValue("RUN_DATE", rundate$(5,2) + "/" + rundate$(7,2) + "/" + rundate$(1,4))
		data!.setFieldValue("CUSTOMER_NBR", customer$)
		data!.setFieldValue("CUST_NAME", arm01.cust_name$)
		data!.setFieldValue("INVOICE_NBR", "Renew")
		data!.setFieldValue("INVOICE_DATE", "Due Date")
		data!.setFieldValue("DUE_DATE", " Amount")
		rs!.insert(data!)
		
		due_dt_total = 0, thisDate$ = ""
		tagNext$ = "", tagTotalNext$ = ""
		
		while len(tag$) > 0
			t$ = tag$(1,18), tag$ = tag$(19)
			tamt$ = tagTotal$(1,10), tagTotal$ = tagTotal$(11)
			
			if pos("PO CHG" = t$) then
				tagNext$ = tagNext$ + t$
				tagTotalNext$ = tagTotalNext$ + tamt$
				continue
			fi
			
			po_nbr$ = cvs(t$(9,10),3)
			if po_nbr$(1,3) = "SAM" then
				po_nbr$ = "SAM"
			else
				if po_nbr$(1,3) = "DVK" then
					po_nbr$ = "DVK"
				else
					if po_nbr$(1,3) = "RNT" then
						po_nbr$ = "RNT"
					fi
				fi
			fi
			due_dt$ = t$(1,8), due_dt$ = due_dt$(5,2) + "/" + due_dt$(7,2) + "/" + due_dt$(1,4)

			if thisDate$ <> due_dt$ then
				if thisDate$ <> "" then
					rem ' add a total line
					data! = rs!.getEmptyRecordData()
					data!.setFieldValue("FIRM_NAME","BASIS International, Ltd")
					data!.setFieldValue("RUN_DATE", rundate$(5,2) + "/" + rundate$(7,2) + "/" + rundate$(1,4))
					data!.setFieldValue("CUSTOMER_NBR", customer$)
					data!.setFieldValue("CUST_NAME", arm01.cust_name$)
					data!.setFieldValue("INVOICE_NBR", "Total")
					data!.setFieldValue("INVOICE_DATE", thisDate$)
					due_dt_total$ = cvs(str(due_dt_total:"##,##0.00"),3)
					while len(due_dt_total$) < 9
						due_dt_total$ = " " + due_dt_total$
					wend
					data!.setFieldValue("DUE_DATE", due_dt_total$)
					rs!.insert(data!)			
				
					rem ' add a blank line
					data! = rs!.getEmptyRecordData()
					data!.setFieldValue("FIRM_NAME","BASIS International, Ltd")
					data!.setFieldValue("RUN_DATE", rundate$(5,2) + "/" + rundate$(7,2) + "/" + rundate$(1,4))
					data!.setFieldValue("CUSTOMER_NBR", customer$)
					data!.setFieldValue("CUST_NAME", arm01.cust_name$)
					rs!.insert(data!)
				fi
				thisDate$ = due_dt$, due_dt_total = 0
			fi

			due_dt_total = due_dt_total + num(tamt$)
			tamt$ = cvs(str(num(tamt$):"##,##0.00"),3)
			while len(tamt$) < 9
				tamt$ = " " + tamt$
			wend
			
			data! = rs!.getEmptyRecordData()
			data!.setFieldValue("FIRM_NAME","BASIS International, Ltd")
			data!.setFieldValue("RUN_DATE", rundate$(5,2) + "/" + rundate$(7,2) + "/" + rundate$(1,4))
			data!.setFieldValue("CUSTOMER_NBR", customer$)
			data!.setFieldValue("CUST_NAME", arm01.cust_name$)
			data!.setFieldValue("INVOICE_NBR", po_nbr$)
			data!.setFieldValue("INVOICE_DATE", due_dt$)
			data!.setFieldValue("DUE_DATE", tamt$)
			rs!.insert(data!)			
		wend

		rem ' add a total line
		data! = rs!.getEmptyRecordData()
		data!.setFieldValue("FIRM_NAME","BASIS International, Ltd")
		data!.setFieldValue("RUN_DATE", rundate$(5,2) + "/" + rundate$(7,2) + "/" + rundate$(1,4))
		data!.setFieldValue("CUSTOMER_NBR", customer$)
		data!.setFieldValue("CUST_NAME", arm01.cust_name$)
		data!.setFieldValue("INVOICE_NBR", "Total")
		data!.setFieldValue("INVOICE_DATE", thisDate$)
		due_dt_total$ = cvs(str(due_dt_total:"##,##0.00"),3)
		while len(due_dt_total$) < 9
			due_dt_total$ = " " + due_dt_total$
		wend
		data!.setFieldValue("DUE_DATE", due_dt_total$)
		rs!.insert(data!)			

		rem ' add a blank line
		data! = rs!.getEmptyRecordData()
		data!.setFieldValue("FIRM_NAME","BASIS International, Ltd")
		data!.setFieldValue("RUN_DATE", rundate$(5,2) + "/" + rundate$(7,2) + "/" + rundate$(1,4))
		data!.setFieldValue("CUSTOMER_NBR", customer$)
		data!.setFieldValue("CUST_NAME", arm01.cust_name$)
		rs!.insert(data!)
		
		if len(tagNext$) > 0 then
			rem ' add a header line

			data! = rs!.getEmptyRecordData()
			data!.setFieldValue("FIRM_NAME","BASIS International, Ltd")
			data!.setFieldValue("RUN_DATE", rundate$(5,2) + "/" + rundate$(7,2) + "/" + rundate$(1,4))
			data!.setFieldValue("CUSTOMER_NBR", customer$)
			data!.setFieldValue("CUST_NAME", arm01.cust_name$)
			data!.setFieldValue("INVOICE_NBR", "Payable")
			rs!.insert(data!)

			rem ' add a header line
			data! = rs!.getEmptyRecordData()
			data!.setFieldValue("FIRM_NAME","BASIS International, Ltd")
			data!.setFieldValue("RUN_DATE", rundate$(5,2) + "/" + rundate$(7,2) + "/" + rundate$(1,4))
			data!.setFieldValue("CUSTOMER_NBR", customer$)
			data!.setFieldValue("CUST_NAME", arm01.cust_name$)
			data!.setFieldValue("INVOICE_NBR", "PO Chng")
			data!.setFieldValue("INVOICE_DATE", "Due Date")
			data!.setFieldValue("DUE_DATE", " Amount")
			rs!.insert(data!)
		
			payable_total = 0

			while len(tagNext$)
				t$ = tagNext$(1,18), tagNext$ = tagNext$(19)
				tamt$ = tagTotalNext$(1,10), tagTotalNext$ = tagTotalNext$(11)

				po_nbr$ = cvs(t$(9,10),3)
				due_dt$ = t$(1,8), due_dt$ = due_dt$(5,2) + "/" + due_dt$(7,2) + "/" + due_dt$(1,4)

				payable_total = payable_total + num(tamt$)
				tamt$ = cvs(str(num(tamt$):"##,##0.00"),3)
				while len(tamt$) < 9
					tamt$ = " " + tamt$
				wend

				data! = rs!.getEmptyRecordData()
				data!.setFieldValue("FIRM_NAME","BASIS International, Ltd")
				data!.setFieldValue("RUN_DATE", rundate$(5,2) + "/" + rundate$(7,2) + "/" + rundate$(1,4))
				data!.setFieldValue("CUSTOMER_NBR", customer$)
				data!.setFieldValue("CUST_NAME", arm01.cust_name$)
				data!.setFieldValue("INVOICE_NBR", "Payable")
				data!.setFieldValue("INVOICE_DATE", due_dt$)
				data!.setFieldValue("DUE_DATE", tamt$)
				rs!.insert(data!)			
			wend
			
			rem ' add a total line
			data! = rs!.getEmptyRecordData()
			data!.setFieldValue("FIRM_NAME","BASIS International, Ltd")
			data!.setFieldValue("RUN_DATE", rundate$(5,2) + "/" + rundate$(7,2) + "/" + rundate$(1,4))
			data!.setFieldValue("CUSTOMER_NBR", customer$)
			data!.setFieldValue("CUST_NAME", arm01.cust_name$)
			data!.setFieldValue("INVOICE_NBR", "Total")
			data!.setFieldValue("INVOICE_DATE", "")
			payable_total$ = cvs(str(payable_total:"##,##0.00"),3)
			while len(payable_total$) < 9
				payable_total$ = " " + payable_total$
			wend
			data!.setFieldValue("DUE_DATE", payable_total$)
			rs!.insert(data!)	
		fi

		rem ' add a blank line
		data! = rs!.getEmptyRecordData()
		data!.setFieldValue("FIRM_NAME","BASIS International, Ltd")
		data!.setFieldValue("RUN_DATE", rundate$(5,2) + "/" + rundate$(7,2) + "/" + rundate$(1,4))
		data!.setFieldValue("CUSTOMER_NBR", customer$)
		data!.setFieldValue("CUST_NAME", arm01.cust_name$)
		rs!.insert(data!)
	fi
fi

rem ' close files
close(arm01)
close(art01)
close(art03)
close(art11)
close(arm02_canada)
close(art03_canada)
close(canadian_exch)

sp!.setRecordSet(rs!)

end
