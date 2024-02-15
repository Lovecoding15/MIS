rem ' ****************************************************
rem ' * SPROC (local test) to drive customer invoices for BSG in English
rem ' ****************************************************
rem ' program name: custInvoicesBSGen-Test.prc

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
inv_number$ = sp!.getParameter("INVOICE")

rem ' ****************************************************
rem ' * create the in memory recordset for return
rem ' ****************************************************
dataTemplate$ = "cust_nbr:C(10),ar_inv_nbr:C(7),invoice_date:C(10),order_number:C(7),order_date:C(10),"
dataTemplate$ = dataTemplate$ + "po_number:C(10),discount:C(6),terms:C(20),"
dataTemplate$ = dataTemplate$ + "customer_name:C(30),address1:C(30),address2:C(30),address3:C(30),address4:C(30),"
dataTemplate$ = dataTemplate$ + "qty_ordered:C(3),description:C(50),price:C(11),line_total:C(11),"
dataTemplate$ = dataTemplate$ + "net_invoice:C(12),tax_rate:C(3),tax:C(12),total_invoice:C(15),"
dataTemplate$ = dataTemplate$ + "footer1:C(30),footer2:C(30),footer3:C(30)"

rs! = BBJAPI().createMemoryRecordSet(dataTemplate$)

line = 0

rem ' dummy data to do and invoice
rem ' ****************************************************
rem ' * output data
rem ' ****************************************************
data! = rs!.getEmptyRecordData()
data!.setFieldValue("CUST_NBR","020490")
data!.setFieldValue("AR_INV_NBR","0031417")
data!.setFieldValue("INVOICE_DATE","13.12.2018")
data!.setFieldValue("ORDER_NUMBER","0002041")
data!.setFieldValue("ORDER_DATE","13.12.2018")
data!.setFieldValue("PO_NUMBER","Renew SAM")
data!.setFieldValue("DISCOUNT","45%")
data!.setFieldValue("TERMS","Net 14")
data!.setFieldValue("CUSTOMER_NAME", "Prodin Business Solutions B.V.")
data!.setFieldValue("ADDRESS1", "Patrick Aries")
data!.setFieldValue("ADDRESS2", "Franciscusweg 219J")
data!.setFieldValue("ADDRESS3", "1216 SE Hilversum")
data!.setFieldValue("ADDRESS4", "NETHERLANDS")
data!.setFieldValue("QTY_ORDERED", "1")
data!.setFieldValue("DESCRIPTION", "BASIS Product License Standard")
data!.setFieldValue("PRICE", "750,52")
data!.setFieldValue("LINE_TOTAL", "750,52")
data!.setFieldValue("NET_INVOICE", "750,52")
data!.setFieldValue("TAX_RATE", "19%")
data!.setFieldValue("TAX", "0,00")
data!.setFieldValue("TOTAL_INVOICE", "750,52")
data!.setFieldValue("FOOTER1", "PER DOWNLOAD")
data!.setFieldValue("FOOTER2", "Your VAT ID: NL822442061B01")
data!.setFieldValue("FOOTER3", "Our VAT ID: 194403119")
rs!.insert(data!)
line = line + 1

data! = rs!.getEmptyRecordData()
data!.setFieldValue("CUST_NBR","020490")
data!.setFieldValue("AR_INV_NBR","0031417")
data!.setFieldValue("INVOICE_DATE","13.12.2018")
data!.setFieldValue("ORDER_NUMBER","0002041")
data!.setFieldValue("ORDER_DATE","13.12.2018")
data!.setFieldValue("PO_NUMBER","Renew SAM")
data!.setFieldValue("DISCOUNT","45%")
data!.setFieldValue("TERMS","Net 14")
data!.setFieldValue("CUSTOMER_NAME", "Prodin Business Solutions B.V.")
data!.setFieldValue("ADDRESS1", "Patrick Aries")
data!.setFieldValue("ADDRESS2", "Franciscusweg 219J")
data!.setFieldValue("ADDRESS3", "1216 SE Hilversum")
data!.setFieldValue("ADDRESS4", "NETHERLANDS")
data!.setFieldValue("QTY_ORDERED", "")
data!.setFieldValue("DESCRIPTION", "Type: UPD")
data!.setFieldValue("PRICE", "")
data!.setFieldValue("LINE_TOTAL", "")
data!.setFieldValue("NET_INVOICE", "750,52")
data!.setFieldValue("TAX_RATE", "19%")
data!.setFieldValue("TAX", "0,00")
data!.setFieldValue("TOTAL_INVOICE", "750,52")
data!.setFieldValue("FOOTER1", "PER DOWNLOAD")
data!.setFieldValue("FOOTER2", "Your VAT ID: NL822442061B01")
data!.setFieldValue("FOOTER3", "Our VAT ID: 194403119")
rs!.insert(data!)
line = line + 1

data! = rs!.getEmptyRecordData()
data!.setFieldValue("CUST_NBR","020490")
data!.setFieldValue("AR_INV_NBR","0031417")
data!.setFieldValue("INVOICE_DATE","13.12.2018")
data!.setFieldValue("ORDER_NUMBER","0002041")
data!.setFieldValue("ORDER_DATE","13.12.2018")
data!.setFieldValue("PO_NUMBER","Renew SAM")
data!.setFieldValue("DISCOUNT","45%")
data!.setFieldValue("TERMS","Net 14")
data!.setFieldValue("CUSTOMER_NAME", "Prodin Business Solutions B.V.")
data!.setFieldValue("ADDRESS1", "Patrick Aries")
data!.setFieldValue("ADDRESS2", "Franciscusweg 219J")
data!.setFieldValue("ADDRESS3", "1216 SE Hilversum")
data!.setFieldValue("ADDRESS4", "NETHERLANDS")
data!.setFieldValue("QTY_ORDERED", "")
data!.setFieldValue("DESCRIPTION", "Number of users: 34 EF")
data!.setFieldValue("PRICE", "")
data!.setFieldValue("LINE_TOTAL", "")
data!.setFieldValue("NET_INVOICE", "750,52")
data!.setFieldValue("TAX_RATE", "19%")
data!.setFieldValue("TAX", "0,00")
data!.setFieldValue("TOTAL_INVOICE", "750,52")
data!.setFieldValue("FOOTER1", "PER DOWNLOAD")
data!.setFieldValue("FOOTER2", "Your VAT ID: NL822442061B01")
data!.setFieldValue("FOOTER3", "Our VAT ID: 194403119")
rs!.insert(data!)
line = line + 1

data! = rs!.getEmptyRecordData()
data!.setFieldValue("CUST_NBR","020490")
data!.setFieldValue("AR_INV_NBR","0031417")
data!.setFieldValue("INVOICE_DATE","13.12.2018")
data!.setFieldValue("ORDER_NUMBER","0002041")
data!.setFieldValue("ORDER_DATE","13.12.2018")
data!.setFieldValue("PO_NUMBER","Renew SAM")
data!.setFieldValue("DISCOUNT","45%")
data!.setFieldValue("TERMS","Net 14")
data!.setFieldValue("CUSTOMER_NAME", "Prodin Business Solutions B.V.")
data!.setFieldValue("ADDRESS1", "Patrick Aries")
data!.setFieldValue("ADDRESS2", "Franciscusweg 219J")
data!.setFieldValue("ADDRESS3", "1216 SE Hilversum")
data!.setFieldValue("ADDRESS4", "NETHERLANDS")
data!.setFieldValue("QTY_ORDERED", "")
data!.setFieldValue("DESCRIPTION", "Serial number:")
data!.setFieldValue("PRICE", "")
data!.setFieldValue("LINE_TOTAL", "")
data!.setFieldValue("NET_INVOICE", "750,52")
data!.setFieldValue("TAX_RATE", "19%")
data!.setFieldValue("TAX", "0,00")
data!.setFieldValue("TOTAL_INVOICE", "750,52")
data!.setFieldValue("FOOTER1", "PER DOWNLOAD")
data!.setFieldValue("FOOTER2", "Your VAT ID: NL822442061B01")
data!.setFieldValue("FOOTER3", "Our VAT ID: 194403119")
rs!.insert(data!)
line = line + 1

data! = rs!.getEmptyRecordData()
data!.setFieldValue("CUST_NBR","020490")
data!.setFieldValue("AR_INV_NBR","0031417")
data!.setFieldValue("INVOICE_DATE","13.12.2018")
data!.setFieldValue("ORDER_NUMBER","0002041")
data!.setFieldValue("ORDER_DATE","13.12.2018")
data!.setFieldValue("PO_NUMBER","Renew SAM")
data!.setFieldValue("DISCOUNT","45%")
data!.setFieldValue("TERMS","Net 14")
data!.setFieldValue("CUSTOMER_NAME", "Prodin Business Solutions B.V.")
data!.setFieldValue("ADDRESS1", "Patrick Aries")
data!.setFieldValue("ADDRESS2", "Franciscusweg 219J")
data!.setFieldValue("ADDRESS3", "1216 SE Hilversum")
data!.setFieldValue("ADDRESS4", "NETHERLANDS")
data!.setFieldValue("QTY_ORDERED", "")
data!.setFieldValue("DESCRIPTION", "BBX625008")
data!.setFieldValue("PRICE", "")
data!.setFieldValue("LINE_TOTAL", "")
data!.setFieldValue("NET_INVOICE", "750,52")
data!.setFieldValue("TAX_RATE", "19%")
data!.setFieldValue("TAX", "0,00")
data!.setFieldValue("TOTAL_INVOICE", "750,52")
data!.setFieldValue("FOOTER1", "PER DOWNLOAD")
data!.setFieldValue("FOOTER2", "Your VAT ID: NL822442061B01")
data!.setFieldValue("FOOTER3", "Our VAT ID: 194403119")
rs!.insert(data!)
line = line + 1

net_invoice$ = "750,52", total_invoice$ = "750,52"
footer1$ = "PER DOWNLOAD"
footer2$ = "Your VAT ID: NL822442061B01"
footer3$ = "Our VAT ID: 194403119"


rem ' ---------------------------------------------------------------------------------------------------------
rem ' eline = mod(line, 25)
rem ' if eline = 0 then
rem ' 	morel = 22
rem ' else
rem ' 	if eline = 22 then
rem ' 		morel = 0
rem ' 	else
rem ' 		if eline < 22 then
rem ' 			morel = 22 - eline
rem ' 		else
rem ' 			morel = (25 - eline) + 22
rem ' 		fi
rem ' 	fi
rem ' fi

more1 = 1

for x = 1 to morel
	rem ' blank detail line
	data! = rs!.getEmptyRecordData()
	data!.setFieldValue("CUST_NBR","020490")
	data!.setFieldValue("AR_INV_NBR","0031417")
	data!.setFieldValue("INVOICE_DATE","13.12.2018")
	data!.setFieldValue("ORDER_NUMBER","0002041")
	data!.setFieldValue("ORDER_DATE","13.12.2018")
	data!.setFieldValue("PO_NUMBER","Renew SAM")
	data!.setFieldValue("DISCOUNT","45%")
	data!.setFieldValue("TERMS","Net 14")
	data!.setFieldValue("CUSTOMER_NAME", "Prodin Business Solutions B.V.")
	data!.setFieldValue("ADDRESS1", "Patrick Aries")
	data!.setFieldValue("ADDRESS2", "Franciscusweg 219J")
	data!.setFieldValue("ADDRESS3", "1216 SE Hilversum")
	data!.setFieldValue("ADDRESS4", "NETHERLANDS")
	data!.setFieldValue("QTY_ORDERED", "")
	data!.setFieldValue("DESCRIPTION", "")
	data!.setFieldValue("PRICE", "")
	data!.setFieldValue("LINE_TOTAL", "")
	data!.setFieldValue("NET_INVOICE", net_invoice$)
	data!.setFieldValue("TAX_RATE", "19%")
	data!.setFieldValue("TAX", "0,00")
	data!.setFieldValue("TOTAL_INVOICE", total_invoice$)
	data!.setFieldValue("FOOTER1", footer1$)
	data!.setFieldValue("FOOTER2", footer2$)
	data!.setFieldValue("FOOTER3", footer3$)
	rs!.insert(data!)
next x


sp!.setRecordSet(rs!)
end