rem ' ****************************************************
rem ' * SPROC to drive customer invoices
rem ' ****************************************************
rem ' program name: custInvoices.prc

seterr err_trap

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

rem ' customer numbers are 6 characters
customer$ = sp!.getParameter("CUSTOMER")

rem ' invoice nubmers are 7 characters
ar_inv_nbr$ = sp!.getParameter("INVOICE")

rem ' ****************************************************
rem ' * open the files
rem ' ****************************************************

call "ec_open::ARM01"
call "ec_open::ARM02"
call "ec_open::ARM03"
call "ec_open::CSM03"
call "ec_open::IVM01"
call "ec_open::TMM01"
call "ec_open::SMC01"
call "ec_open::SYS01C"
call "ec_open::ARM10A"; rem ' terms code table
call "ec_open::ARM10F"; rem ' sales person table
call "ec_open::ARM10I"; rem ' discount code table


rem ' ****************************************************
rem ' * find if fromhistory or from an order
rem ' ****************************************************
call "ec_open::ART03"
art03key$ = firm_id$ + "  " + customer$ + ar_inv_nbr$ + "000"

rem ' settrace for debugging
rem ' erase "/mnt/data/basisaon/aon/tmp/custInvoices.debug", err=*next
rem ' string "/mnt/data/basisaon/aon/tmp/custInvoices.debug"
rem ' debug = unt
rem ' open(debug)"/mnt/data/basisaon/aon/tmp/custInvoices.debug"
rem ' settrace(debug)

fromhistroy = 0
previousLine = 0
memo_only = 0

read record(art03, key = art03key$, dom=*next)art03$; fromhistory = 1

if fromhistory then
	memo_only = (art03.reserved_str_1$(1,1) = "M"); rem ' Print memo lines only on I/C invoices
	call "ec_open::ART83"
	call "ec_open::ART73"
	call "ec_open::ART13"
	call "ec_open::ART33"
	art03key$ = art03key$(1,17)
else
	close (art03)
	call "ec_open::ARE03"
	call "ec_open::ARE83"
	call "ec_open::ARE73"
	call "ec_open::ARE13"
	call "ec_open::ARE33"
	
	rem ' find the order with this invoice
	are03key$ = firm_id$ + "  " + customer$
	
	read record(are03, key = are03key$, dom=*next)are03$
	gotit = 0
	while 1
		read record(are03, end=*break)are03$
		if are03.ar_inv_nbr$ = ar_inv_nbr$ then
			are03key$ = are03$(1,17)
			gotit = 1
			memo_only = (are03.reserved_str_1$(1,1) = "M"); rem ' Print memo lines only on I/C invoices
			break
		fi
	wend
	if !gotit then throw "Invalid Invoice Number supplied. " + art03key$, 311
fi

call "ec_open::SNMEL"
call "ec_open::SNMEU"
call "ec_open::country"
call "ec_open::ARM02_CANADA"
call "ec_open::ART03_CANADA"
call "templates.pgm::CANADIAN_EXCH"

rem ' ****************************************************
rem ' * create the in memory recordset for return
rem ' ****************************************************
dataTemplate$ = "cust_nbr:C(6),ar_inv_nbr:C(7),invoice_date:C(10),order_number:C(7),order_date:C(10),"
dataTemplate$ = dataTemplate$ + "po_number:C(10),discount:C(6),salesperson:C(20),terms:C(20),"
dataTemplate$ = dataTemplate$ + "sold_cust_name:C(30),sold_address1:C(30),sold_address2:C(30),sold_address3:C(30),sold_address4:C(30),"
dataTemplate$ = dataTemplate$ + "ship_cust_name:C(30),ship_address1:C(30),ship_address2:C(30),ship_address3:C(30),ship_address4:C(30),"
dataTemplate$ = dataTemplate$ + "confirm_to:C(25),qty_ordered:C(3),description:C(50),price:C(11),line_total:C(11),"
dataTemplate$ = dataTemplate$ + "net_invoice:C(12),sales_tax:C(12),total_invoice:C(15),currency:C(3)"

rs! = BBJAPI().createMemoryRecordSet(dataTemplate$)


rem ' ****************************************************
rem ' * gather data for the repeating fields
rem ' ****************************************************
gosub identify_canadian_customer
gosub build_repeating_data

rem ' ****************************************************
rem ' * detail line loop
rem ' ****************************************************

line = 0

rem ' position file pointer in the line item file to this invoice
if fromhistory then
	read record(art13, key = art03key$, dom = *next)art13$
else
	read record(are13, key = are03key$, dom = *next)are13$
fi

while 1
	if fromhistory then
		read record(art13, end = *break)art13$		
		if pos(art03key$ = art13$) <> 1 then break
		
		if art13.line_code$ = "M" or art13.line_code$ = "1" or art13.line_code$ = "2" or art13.line_code$ = "3" or art13.line_code$ = "u" or art13.line_code$ = "X" then
			memo$ = art13.order_memo$
			ext_price = art13.ext_price
			line_code$ = art13.line_code$
			gosub memo_line_setup
			continue
		fi
		
		if memo_only then continue
		
		rem ' main item line
		dim line_data$:fattr(art13$)
		line_data$ = art13$
		gosub main_line_setup
		
		rem ' product description line
		rem ' inventoryKey$ = firm_id$ + line_data.item_number$
		rem ' gosub proddesc_line_setup
		
		rem ' Type line
		gosub type_line_setup
		
		if got_type 
			rem ' user line
			gosub user_line_setup
			
			rem ' serial number, end user setup
			gosub sn_enduser_line_setup
		fi
	else
		read record(are13, end = *break)are13$
		if pos(are03key$ = are13$) <> 1 then break
		
		rem ' handle a memo line
		if are13.line_code$ = "M" or are13.line_code$ = "1" or are13.line_code$ = "2" or are13.line_code$ = "3" or are13.line_code$ = "u" or are13.line_code$ = "X" then
			memo$ = are13.order_memo$
			ext_price = are13.ext_price
			line_code$ = are13.line_code$
			gosub memo_line_setup
			continue
		fi

		if memo_only then continue

		rem ' main item line
		dim line_data$:fattr(are13$)
		line_data$ = are13$
		gosub main_line_setup
		
		rem ' product description line
		rem ' inventoryKey$ = firm_id$ + line_data.item_number$
		rem ' gosub proddesc_line_setup
		
		rem ' Type line
		gosub type_line_setup
		
		if got_type 
			rem ' user line
			gosub user_line_setup

			rem ' serial number, end user setup
			gosub sn_enduser_line_setup
		fi
		
	fi
wend

gosub blank_line

rem ' ---------------------------------------------------------------------------------------------------------
rem ' add blank lines if needed
rem ' ---------------------------------------------------------------------------------------------------------
rem ' eline = mod(line, 32)
rem ' if eline = 0 then
rem ' 	morel = 28
rem ' else
rem ' 	if eline = 28 then
rem ' 		morel = 0
rem ' 	else
rem ' 		if eline < 28 then
rem ' 			morel = 28 - eline
rem ' 		else
rem ' 			morel = (32 - eline) + 28
rem ' 		fi
rem ' 	fi
rem ' fi
rem ' for x = 1 to morel
rem ' 	gosub blank_line
rem ' next x

sp!.setRecordSet(rs!)

end

rem ' ****************************************************
rem ' * create a blank line record
rem ' ****************************************************
blank_line:
	rem ' blank detail line
	data! = rs!.getEmptyRecordData()
	gosub setup_repeating_data
	
	data!.setFieldValue("QTY_ORDERED", "")
	data!.setFieldValue("DESCRIPTION", "")
	data!.setFieldValue("PRICE", "")
	data!.setFieldValue("LINE_TOTAL", "")

	rs!.insert(data!)
	line = line + 1
return

rem ' ****************************************************
rem ' * read repeating data
rem ' ****************************************************
build_repeating_data:
	read record(arm02, key = firm_id$ + customer$ + "  ")arm02$
	cust_nbr_cust_type$ = customer$ + "     " + arm02.cust_type$
	
	if fromhistory then
		read record(arm10a, key = firm_id$ + "A" + art03.terms_code$)arm10a$
	else
		read record(arm10a, key = firm_id$ + "A" + are03.terms_code$)arm10a$	
	fi
	terms$ = arm10A.code_desc$
	
	read record(arm10f, key = firm_id$ + "F" + arm02.slspsn_code$)arm10f$
	slsperson$ = arm10f.slspsn_name$
	
	if fromhistory then
		disc_code$ = art03.disc_code$
		if len(cvs(disc_code$,3)) = 2 then
		    read record(arm10i, key = firm_id$ + "I" + disc_code$)arm10i$ 
		    discount$ = cvs(arm10i.code_desc$,3)
		else
		    discount$ = ""
		fi
	else
	    rem ' invoice in order entry files
		rem ' disc_code$ = are03.disc_code$
		disc_code$ = arm02.disc_code$
		disc_code_a$ = arm02.disc_code_a$
		rem ' main discount
		if len(cvs(disc_code$,3)) = 2 then
		    read record(arm10i, key = firm_id$ + "I" + disc_code$)arm10i$
		    discount$ = cvs(arm10i.code_desc$,3)
		else
		    discount$ = ""
		fi
		rem ' SAM discount
        if len(cvs(disc_code_a$,3)) = 2 then
            read record(arm10i, key = firm_id$ + "I" + disc_code_a$)arm10i$
            discount_a$ = cvs(arm10i.code_desc$,3)
        else
            discount_a$ = ""
        fi
        
        if discount_a$ <> "" and discount$ <> "" then
            discount$ = discount$ +"/" + discount_a$
        else
            if discount$ = "" and discount_a$ <> "" then
                discount$ = discount_a$
            else
                discount$ = discount$
            fi
        fi
    fi
	if customer$ = "007688" then discount$ = ""
	
	read record(tmm01, key = firm_id$ + customer$ + "000000")tmm01$
	name$ = tmm01.cont_firm$
	dim addr$[4]; x = 1
	if cvs(tmm01.address_1$,3) <> "" then
		addr$[x] = cvs(tmm01.address_1$,3)
		x = x + 1
	fi
	if cvs(tmm01.address_2$,3) <> "" then
		addr$[x] = cvs(tmm01.address_2$,3)
		x = x + 1
	fi
	if cvs(tmm01.address_3$,3) <> "" then
		addr$[x] = cvs(tmm01.address_3$,3)
		x = x + 1
	fi

	not_used$ = tmm01.address_4$

	addr4$ = cvs(tmm01.city$,3) + " " + cvs(tmm01.state$,3) + " "
	if cvs(tmm01.country_code$,3) = "US" and len(cvs(tmm01.zip_code$,3)) = 9 then
		zip_code$ = tmm01.zip_code$(1,5) + "-" + tmm01.zip_code$(6,4)

	else
		zip_code$ = cvs(tmm01.zip_code$,3)
	fi
	addr4$ = addr4$ + " " + zip_code$
	if addr4$ <> "" then
		addr$[x] = addr4$
		x = x + 1
	fi

	country$ = ""
	if cvs(tmm01.country_code$,3) <> "US" then
		found = 0
		read record(country, key = tmm01.country_code$, dom=*next)country$; found = 1
		if found then
			country$ = cvs(country.country_name$,3)
		fi
	fi
	if x < 5 then addr$[x] = country$
	
	confirm_to$ = cvs(tmm01.cont_name$,3)
		
	if fromhistory then
		call "expCompDate.src", art03.invoice_date$, outdate$
		invoice_date$ = outdate$(5,2) + "/" + outdate$(7,2) + "/" +outdate$(1,4)

		order_number$ = art03.order_number$
		call "expCompDate.src", art03.order_date$, outdate$
		order_date$ = outdate$(5,2) + "/" + outdate$(7,2) + "/" +outdate$(1,4)
		
		po_number$ = art03.ar_po_number$
		
		tax = art03.tax_amount
		netinvoice = art03.total_sales
		totalinvoice = art03.total_sales + art03.tax_amount
			
	else
		call "expCompDate.src", are03.invoice_date$, outdate$
		invoice_date$ = outdate$(5,2) + "/" + outdate$(7,2) + "/" +outdate$(1,4)

		order_number$ = are03.order_number$
		call "expCompDate.src", are03.date_ordered$, outdate$
		order_date$ = outdate$(5,2) + "/" + outdate$(7,2) + "/" +outdate$(1,4)

		po_number$ = are03.ar_po_number$
		
		rem ' there seems to be a bit of strangeness here with the amount arithmetic, but the values get fixed at some point
		tax = are03.tax_amount
		if are03.taxable_amt = are03.total_sales then
		    rem ' normal situation
			netinvoice = are03.total_sales
			totalinvoice = are03.total_sales + are03.tax_amount
		else
		    rem ' strangeness where the tax_amount has alread been added to the total sales
			netinvoice = are03.total_sales - are03.tax_amount
			totalinvoice = are03.total_sales
		fi

	fi

	if canadian_invoice then
		amountin = tax
		call "canDollConversion", canadian_exch$, 0, amountin, amountout
		tax = amountout
		amountin = netinvoice
		call "canDollConversion", canadian_exch$, 0, amountin, amountout
		netinvoice = amountout
		amountin = totalinvoice
		call "canDollConversion", canadian_exch$, 0, amountin, amountout
		totalinvoice = amountout
	fi

	tax$ = str(tax:"#,###,##0.00-")
	netinvoice$ = str(netinvoice:"#,###,##0.00-")
	totalinvoice$ = str(totalinvoice:"#,###,##0.00-")
	if canadian_invoice then
		currency$ = "CAD"
	else
		currency$ = "USD"
	fi

return

rem ' ****************************************************
rem ' * repeating data set up
rem ' ****************************************************
setup_repeating_data:

	data!.setFieldValue("CUST_NBR",customer$)
	data!.setFieldValue("AR_INV_NBR",ar_inv_nbr$)
	data!.setFieldValue("INVOICE_DATE",invoice_date$)
	data!.setFieldValue("ORDER_NUMBER",order_number$)
	data!.setFieldValue("ORDER_DATE",order_date$)
	data!.setFieldValue("PO_NUMBER",po_number$)
	data!.setFieldValue("DISCOUNT",discount$)
	data!.setFieldValue("SALESPERSON",slsperson$)
	data!.setFieldValue("TERMS",terms$)

	data!.setFieldValue("SOLD_CUST_NAME", name$)
	data!.setFieldValue("SOLD_ADDRESS1", addr$[1])
	data!.setFieldValue("SOLD_ADDRESS2", addr$[2])
	data!.setFieldValue("SOLD_ADDRESS3", addr$[3])
	data!.setFieldValue("SOLD_ADDRESS4", addr$[4])
	data!.setFieldValue("SHIP_CUST_NAME", name$)
	data!.setFieldValue("SHIP_ADDRESS1", addr$[1])
	data!.setFieldValue("SHIP_ADDRESS2", addr$[2])
	data!.setFieldValue("SHIP_ADDRESS3", addr$[3])
	data!.setFieldValue("SHIP_ADDRESS4", addr$[4])
	data!.setFieldValue("CONFIRM_TO", confirm_to$)

	data!.setFieldValue("NET_INVOICE", netinvoice$)
	data!.setFieldValue("SALES_TAX", tax$)
	data!.setFieldValue("TOTAL_INVOICE", totalinvoice$)
	data!.setFieldValue("CURRENCY", currency$)

return

rem ' ****************************************************
rem ' * is this a Canadian Customer
rem ' ****************************************************
identify_canadian_customer:

	rem ' determine if this is a canadain customer
	found = 0; canadaian_customer = 0
	read record(arm02_canada, key = firm_id$ + customer$, dom = *next) arm02_canada$; found = 1
	if found then canadian_customer = 1
	
	canadian_invoice = 0
	if canadian_customer then
		rem ' get the exchange rates	
		dim art03_canada$:fattr(art03_canada$)
	
		filekey$ = firm_id$ + customer$
		if fromhistory then
			filekey$ = filekey$ + art03.invoice_date$ + art03.order_number$
		else
			filekey$ = filekey$ + are03.invoice_date$ + are03.order_number$
		fi

		read record(art03_canada,key=filekey$,dom=*next)art03_canada$; canadian_invoice = 1
		if canadian_invoice then
			dim canadian_exch$:fattr(canadian_exch$)
			canadian_exch.ratedate$ = art03_canada.ratedate$
			canadian_exch.sequence_nbr$ = art03_canada.sequence_nbr$
			canadian_exch.to_us_doll = art03_canada.to_us_doll
			canadian_exch.to_cana_doll = art03_canada.to_cana_doll
		fi
	fi
return

rem ' ****************************************************
rem ' * main line setup
rem ' ****************************************************
main_line_setup:
		
	if previousLine = 0 then
		previousLine = 1
	else
		gosub blank_line
	fi
	
	data! = rs!.getEmptyRecordData()
	gosub setup_repeating_data

	data!.setFieldValue("QTY_ORDERED", str(line_data.qty_ordered))
		
	rem ' get a port id if any
	rem ' port_id$ = ""
	rem ' if len(cvs(line_data.item_number$,3)) = 15 then
	rem ' 	os_level$ = line_data.item_number$(7,3)
	rem ' 	found = 0
	rem '	read record(csm03, key = firm_id$ + os_level$, dom = *next)csm03$; found = 1
	rem ' 	if found then
	rem '		port_id$ = csm03.port_id$
	rem ' 	fi
	rem ' fi
	
	inventoryKey$ = firm_id$ + line_data.item_number$
	gosub get_proddesc
		
	rem ' description$ = cvs(line_data.item_number$,3)
	rem ' if port_id$ <> "" then
	rem ' 	description$ = description$ + fill(16) + port_id$
	rem ' fi
	data!.setFieldValue("DESCRIPTION", prod_description$)

	unit_price = line_data.unit_price
	ext_price = line_data.ext_price

	if canadian_invoice then
		amountin = unit_price
		call "canDollConversion", canadian_exch$, 0, amountin, amountout
		unit_price = amountout
		amountin = ext_price
		call "canDollConversion", canadian_exch$, 0, amountin, amountout
		ext_price = amountout
	fi

	unit_price$ = str(unit_price:"###,##0.00-")
	ext_price$ = str(ext_price:"###,##0.00-")

	data!.setFieldValue("PRICE", unit_price$)		
	data!.setFieldValue("LINE_TOTAL", ext_price$)

	rs!.insert(data!)
	line = line + 1

return

rem ' ****************************************************
rem ' * product description line setup
rem ' ****************************************************
get_proddesc:
	prod_description$ = ""
	found = 0
	read record(ivm01, key = inventoryKey$, dom = *next)ivm01$; found = 1
	if found then
		rem ' data! = rs!.getEmptyRecordData()
		rem ' gosub setup_repeating_data
		rem ' data!.setFieldValue("DESCRIPTION", ivm01.item_desc$)
		rem ' rs!.insert(data!)
		rem ' line = line + 1
		prod_description$ = ivm01.item_desc$
	else 
		if len(cvs(inventoryKey$,3)) = 17 then
			inventoryKey$(12,3) = "CUR"
			if  pos(inventoryKey$(15,3) = "NFR EXP KIT RN1") <> 0 then
				inventoryKey$(15,3) = "EXP"
			fi
			found = 0
			read record(ivm01, key = inventoryKey$, dom = *next)ivm01$; found = 1
			if found then
				rem ' data! = rs!.getEmptyRecordData()
				rem ' gosub setup_repeating_data
				rem ' data!.setFieldValue("DESCRIPTION", ivm01.item_desc$)
				rem ' rs!.insert(data!)
				rem ' line = line + 1
				prod_description$ = ivm01.item_desc$
			fi
		fi
	fi
return

rem ' ****************************************************
rem ' * type line setup
rem ' ****************************************************
type_line_setup:

	got_type = 0

	if fromhistory then
		found = 0
		read record(art73, key = line_data$(1,20), dom = *next)art73$; found = 1
		if found then
			description$ = "Type: " + art73.type_of_sale$
			type_of_sale$ = art73.type_of_sale$
			got_type = 1
		fi
	else
		found = 0
		read record(are73, key = line_data$(1,20), dom = *next)are73$; found = 1
		if found then
			if are73.type_of_sale$ = "SM1" then
				if prev_type_of_sale$ = "NEW" or prev_type_of_sale$ = "ADD" or prev_type_of_sale$ = "UPD" then
					description$ = "SAM Plan"
				else
					description$ = "SAM Plan Renewal"
				fi
			else
				if are73.type_of_sale$ = "RNW" and are73.exp_type$ = "RN1" then
					description$ = "Rental Renewal"
				else
					if are73.type_of_sale$ = "RNW" and (are73.exp_type$ = "KIT" or are73.exp_type$ = "NFR") then
						description$ = "Developer's Kit Renewal"
					else
						if are73.type_of_sale$ = "NEW" and (are73.exp_type$ = "KIT" or are73.exp_type$ = "NFR") then
							description$ = "New Devloper's Kit"
						else
							description$ = "Type: " + are73.type_of_sale$
						fi
					fi
				fi
			fi
			
			type_of_sale$ = are73.type_of_sale$
			got_type = 1

			rem ' if are73.type_of_sale$ = "SM1" or are73.exp_type$ = "RN1" or (are73.type_of_sale$ = "RNW" and (are73.exp_type$ = "KIT" or are73.exp_type$ = "NFR")) then
			if are73.type_of_sale$ = "SM1" or are73.exp_type$ = "RN1" or are73.exp_type$ = "KIT" or are73.exp_type$ = "NFR" then	
				read record(smc01, key = are73.contract$)smc01$
				annual_dt$=smc01.annual_dt$(5,2)+"/"+smc01.annual_dt$(7,2)+"/"+smc01.annual_dt$(1,4)
				if pos("SAM Renew" = po_number$) = 1 or pos("RNT Renew" = po_number$) = 1 or pos("DVK Renew" = po_number$) = 1 or pos("SAM Roll" = po_number$) = 1 or pos("RNT Roll" = po_number$) = 1 or pos("DVK Roll" = po_number$) = 1 then 
					annual_dt$(7,4)=str(num(annual_dt$(7,4))+1:"0000")
				fi	
				description$ = description$ + " coverage through " + annual_dt$
			fi
		fi
	fi

	if got_type then
		data! = rs!.getEmptyRecordData()
		gosub setup_repeating_data
		data!.setFieldValue("DESCRIPTION", description$)
		rs!.insert(data!)
		line = line + 1
		prev_type_of_sale$ = type_of_sale$
	fi
return

rem ' ****************************************************
rem ' * users line setup
rem ' ****************************************************
user_line_setup:

	data! = rs!.getEmptyRecordData()
	gosub setup_repeating_data

	if fromhistory then
		read record(art73, key = line_data$(1,20))art73$
		lic_prop1$ = art73.lic_property1$
		lic_prop2$ = art73.lic_property2$
		users1 = art73.users
		users2 = art73.users2
	else
		read record(are73, key = line_data$(1,20))are73$
		lic_prop1$ = are73.lic_property1$
		lic_prop2$ = are73.lic_property2$
		users1 = are73.users
		users2 = are73.users2
	fi

	if lic_prop1$ = "SF" then
		lic_prop1$ = "Standard Users"
	else
		if lic_prop1$ = "EF" then
			lic_prop1$ = "Extended Users"
		fi
	fi
	
	if lic_prop2$ = "SF" then
		lic_prop2$ = "Standard Users"
	else
		if lic_prop2$ = "EF" then
			lic_prop2$ = "Extended Users"
		fi
	fi
	
	description$ = "Number of Users: "
	if type_of_sale$ = "ADD" or type_of_sale$ = "NEW" then
		description$ = "New " + description$
	fi
	if users1 <> 0 then
		description$ = description$ + " " + str(users1) + " " + lic_prop1$
	fi
	if users2 <> 0 then
		description$ = description$ + ", " + str(users2) + " " + lic_prop2$
	fi
	
	data!.setFieldValue("DESCRIPTION", description$)
	rs!.insert(data!)
	line = line + 1

return

rem ' ****************************************************
rem ' * serial number end user line setup
rem ' ****************************************************
sn_enduser_line_setup:

	newlist$ = ""
	deactlist$ = ""
	modlist$ = ""
	if fromhistory then
		read record(art83, key = line_data$(1,20), dom = *next)art83$
		while 1
			read record(art83, end = *break)art83$
			if pos(line_data$(1,20) = art83$) <> 1 then break
			if art83.action$ = "A" then
				newlist$ = newlist$ + art83.serial_nbr$
			else
				if art83.action$ = "D" then
					deactlist$ = deactlist$ + art83.serial_nbr$
				else
					if art83.action$ = "M" then
						modlist$ = modlist$ + art83.serial_nbr$
					fi
				fi
			fi	
				
		wend
	else
		read record(are83, key = line_data$(1,20), dom = *next)are83$
		while 1
			read record(are83, end = *break)are83$
			if pos(line_data$(1,20) = are83$) <> 1 then break
			if are83.action$ = "A" then
				newlist$ = newlist$ + are83.serial_nbr$
			else
				if are83.action$ = "D" then
					deactlist$ = deactlist$ + are83.serial_nbr$
				else
					if are83.action$ = "M" then
						modlist$ = modlist$ + are83.serial_nbr$
					fi
				fi
			fi	
				
		wend
	fi
	
	if len(newlist$) > 0 then
		rem ' header line
		data! = rs!.getEmptyRecordData()
		gosub setup_repeating_data
		description$ = "New Serial Numbers:"  
		data!.setFieldValue("DESCRIPTION", description$)
		rs!.insert(data!)
		line = line + 1

		thisline$ = ""
		while len(newlist$) > 0
			sn$ = newlist$(1,20)
			newlist$ = newlist$(21)
			thisline$ = thisline$ + sn$
			
			if len(thisline$) = 40 then
				gosub output_thisline
			fi
		wend
		if len(thisline$) > 0 then
			gosub output_thisline
		fi
	fi
		
	if len(deactlist$) > 0 then
		rem ' header line
		data! = rs!.getEmptyRecordData()
		gosub setup_repeating_data
		description$ = "Deactivated Serial Numbers:"  
		data!.setFieldValue("DESCRIPTION", description$)
		rs!.insert(data!)
		line = line + 1

		thisline$ = ""
		while len(deactlist$) > 0
			sn$ = deactlist$(1,20)
			deactlist$ = deactlist$(21)
			thisline$ = thisline$ + sn$
			
			if len(thisline$) = 40 then
				gosub output_thisline
			fi
		wend
		if len(thisline$) > 0 then
			gosub output_thisline
		fi
	fi

	if len(modlist$) > 0 then
		
		rem ' header line
		data! = rs!.getEmptyRecordData()
		gosub setup_repeating_data
		if cvs(po_number$,3) = "SAM Renew" or cvs(po_number$,3) = "DVK Renew" or cvs(po_number$,3) = "RNT Renew" or cvs(po_number$,3) = "SAM Roll" or cvs(po_number$,3) = "DVK Roll" or cvs(po_number$,3) = "RNT Roll" then
			description$ = "Serial Numbers:          End User:"
		else
			description$ = "Serial Numbers:"
		fi
		data!.setFieldValue("DESCRIPTION", description$)
		rs!.insert(data!)
		line = line + 1

		thisline$ = ""
		while len(modlist$) > 0
			sn$ = modlist$(1,20)
			modlist$ = modlist$(21)
			thisline$ = thisline$ + sn$
			
			if cvs(po_number$,3) = "SAM Renew" or cvs(po_number$,3) = "DVK Renew" or cvs(po_number$,3) = "RNT Renew"  or cvs(po_number$,3) = "SAM Roll" or cvs(po_number$,3) = "DVK Roll" or cvs(po_number$,3) = "RNT Roll" then
				found = 0
				read record(snmel, key = sn$, dom = *next)snmel$; found = 1
				if found then
					read record(snmeu, key = snmel.end_user_nbr$)snmeu$
					thisline$ = thisline$ + "      " + snmeu.company_name$
				else
					thisline$ = thisline$ + "      Not Available"
				fi
			fi
			gosub output_thisline

		wend
	fi
return	

rem ' ****************************************************
rem ' * output thisline$
rem ' ****************************************************
output_thisline:
	data! = rs!.getEmptyRecordData()
	gosub setup_repeating_data
	description$ = thisline$ 
	data!.setFieldValue("DESCRIPTION", description$)
	rs!.insert(data!)
	line = line + 1
	thisline$ = ""
return

rem ' ****************************************************
rem ' * memo line setup
rem ' ****************************************************
memo_line_setup:
	
	if memo_only and line_code$ = "M" then
		data! = rs!.getEmptyRecordData()
		gosub setup_repeating_data
		data!.setFieldValue("DESCRIPTION", memo$)
		rs!.insert(data!)
		line = line + 1
	else
		if !memo_only then
			data! = rs!.getEmptyRecordData()
			gosub setup_repeating_data
			data!.setFieldValue("DESCRIPTION", memo$)

			if line_code$ = "1" or line_code$ = "2" or line_code$ = "3" or line_code$ = "u" or line_code$ = "X" then

				if canadian_invoice then
					amountin = ext_price
					call "canDollConversion", canadian_exch$, 0, amountin, amountout
					ext_price = amountout
				fi

				ext_price$ = str(ext_price:"###,##0.00-")
				data!.setFieldValue("LINE_TOTAL", ext_price$)
				data!.setFieldValue("QTY_ORDERED", "1")
			fi
			rs!.insert(data!)
			line = line + 1
		fi
	fi

return


err_trap:
	throw "Error in SPROC custInvoices.prc. " + str(err) + " occurred at line " + str(tcb(5)) + " error message " + errmes(-1), 311
	
	end	
