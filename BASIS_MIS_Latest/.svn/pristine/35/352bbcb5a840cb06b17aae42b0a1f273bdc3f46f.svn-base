[[APE_PAYSELECT.AOPT-DELA.B]]
rem --- get the grid
gridInvoices! = UserObj!.getItem(num(user_tpl.gridInvoicesOfst$))

rem --- ensure that no row is selected
gridInvoices!.deselectAllCells()

rem --- skp the primary callpoint code
callpoint!.setStatus("SKIP")
[[APE_PAYSELECT.AOPT-SELA.B]]
rem --- skip the primary callpoint code for the select all, use the before call point to select all invoices

rem --- get the grid
gridInvoices! = UserObj!.getItem(num(user_tpl.gridInvoicesOfst$))
numrows = gridInvoices!.getNumRows()
rowsToSelect! = BBjAPI().makeVector()

if numrows > 0 then
	for row = 0 to numrows - 1
		rowsToSelect!.add(row)
	next row
	gridInvoices!.setSelectedRows(rowsToSelect!)
endif

rem --- skp the primary callpoint code
callpoint!.setStatus("SKIP")
[[APE_PAYSELECT.AWIN.B]]
rem --- always clear the selections when entering
rem --- this will prevent the clear previous selections that comes up if selection have been recorded

	num_files=3
	dim open_tables$[1:num_files],open_opts$[1:num_files],open_chans$[1:num_files],open_tpls$[1:num_files]

	open_tables$[1]="APT_INVOICEHDR",open_opts$[1]="OTA"	
	open_tables$[2]="APE_CHECKS",open_opts$[2]="OTA"
	open_tables$[3]="APW_CHECKINVOICE",open_opts$[3]="OTA"

	gosub open_tables

	apt01_dev=num(open_chans$[1]),apt01_tpl$=open_tpls$[1]
	ape04_dev=num(open_chans$[2]),ape04_tpl$=open_tpls$[2]
	apw01_dev=num(open_chans$[3])

rem --- Dimension string templates

	dim apt01a$:apt01_tpl$, ape04a$:ape04_tpl$

rem --- See if Check Printing has already been started
rem --- exit if it has

	k$=""	
	read (apw01_dev,key=firm_id$,dom=*next)
	k$=key(apw01_dev,end=*next)
	if pos(firm_id$=k$)=1 then
		rem --- check printing is in progress....
		exit
	endif


rem --- See if we need to clear out ape-04 (computer checks)
rem --- NOTE: For Advisory Locking, replaced call to adc_clearpartial.aon with 
rem ---       REMOVE of ape-04 recs within the loop that resets apt01a.selected_for_pay$ 
rem ---       flag in guard against getting ape04 and apt01 out of sync if fail on 
rem ---       EXTRACT of apt01

	
	while 1
		read(ape04_dev,key=firm_id$,dom=*next)
		ape04_key$=key(ape04_dev,end=*break)
		if pos(firm_id$=ape04_key$)<>1 break

		rem call stbl("+DIR_PGM")+"adc_clearpartial.aon","N",ape04_dev,firm_id$,status; rem REMd for Advisory Locking
		read(apt01_dev,key=firm_id$,dom=*next)
		more=1

		while more
			apt01_key$=key(apt01_dev,end=*break)
			if pos(firm_id$=apt01_key$)<>1 then break
			extract record (apt01_dev, key=apt01_key$, err=*break) apt01a$; rem Advisory Locking
			remove (ape04_dev,key=apt01_key$,dom=*next, err=*break); rem Advisory Locking
			apt01a.selected_for_pay$="N"
			apt01a$=field(apt01a$)
			write record (apt01_dev) apt01a$
		wend	

		break

	wend
[[APE_PAYSELECT.BEND.A]]
rem --- shutting down, do we need to send notice email?

firm_id$=sysinfo.firm_id$
user$=sysinfo.user_id$

rem --- get the grid
gridInvoices! = UserObj!.getItem(num(user_tpl.gridInvoicesOfst$))

rem --- get the approval vector
userNamespace! = BBjAPI().getExistingNamespace(user$ + ".paymentSelect")	
approvalsEntered! = userNamespace!.getValue("approvalsEntered")

if approvalsEntered!.size() > 0 then
	msg_id$="APM_CONF_EXIT"
	dim msg_tokens$[1]
	call stbl("+DIR_SYP")+"bac_message.bbj", msg_id$, msg_tokens$[all], msg_opt$, table_chans$[all]
	if cvs(msg_opt$,3) <> "Y" then
		rem --- abort the exit
		callpoint!.setStatus("ABORT")
	else
		call "notify_apprv_exit.src", firm_id$, user$, gridInvoices!
	endif
endif
[[APE_PAYSELECT.AWIN.A]]
rem --- make some changes to the grid

rem --- get the grid
gridInvoices! = UserObj!.getItem(num(user_tpl.gridInvoicesOfst$))

rem --- stash the girdInvoices! in a namespace
user_id$=sysinfo.user_id$
userNamespace! = BBjAPI().getNamespace(user_id$, "paymentSelect", 1)
userNamespace!.setValue("gridInvoices",gridInvoices!)

rem --- make a vector to hold any approvals done in the session
approvalsEntered! = BBjAPI().makeVector()
userNamespace!.setValue("approvalsEntered",approvalsEntered!)

rem --- make sure that more than one row may be selected at a time

gridInvoices!.setMultipleSelection(1)

gosub load_Invoice_Approval_Status


 
[[APE_PAYSELECT.ACUS.A]]
rem --- ensure that user can not change the select column, must be set based on the approval status of the invoice

firm_id$=sysinfo.firm_id$
user$=sysinfo.user_id$

rem --- Open/Lock files
files=1,begfile=1,endfile=files
dim files$[files],options$[files],chans$[files],templates$[files]
files$[1]="APM_INVAPPROVAL"
options$[1]="OTA"
call stbl("+DIR_SYP")+"bac_open_tables.bbj",
:	begfile,
:	endfile,
:	files$[all],
:	options$[all],
:	chans$[all],
:	templates$[all],
:	table_chans$[all],
:	batch,
:	status$

dim apm_invapproval$:templates$[1]
apm_invapproval = num(chans$[1])

gridInvoices! = UserObj!.getItem(num(user_tpl.gridInvoicesOfst$))
curr_row = gridInvoices!.getSelectedRow()

vendor_id$ = gridInvoices!.getCellText(curr_row,3)
vendor_name$ = gridInvoices!.getCellText(curr_row,4)
ap_inv_no$ = gridInvoices!.getCellText(curr_row,5)
inv_amt  = num(gridInvoices!.getCellText(curr_row,9))
threshhold = num(stbl("AUTHTHRESHHOLD"))

gosub get_approval_status	

rem ' retireve the vendor total in this grid
vendor_ids$ = stbl("psVendors")
vendor_totals$ = stbl("psVendorTotals")
vidPos = pos(vendor_id$=vendor_ids$,6)
pointer = ((int(vidPos/6) + 1) *10) -9
thisVendor_total = num(vendor_totals$(pointer,10))

rem --- set payment selection based on approval state
selected = gridInvoices!.getCellState(curr_row,0)

if !selected then
	rem --- invoice is not selected in the grid
	rem --- check the invoice for approved status and switch values if needed
	if approved = 1 and thisVendor_total < threshhold then
		gosub switch_value
	endif
	if approved > 1 and thisVendor_total >= threshhold then
		gosub switch_value
	endif
else
	rem --- invoice is selected in the grid
	rem -- check the invoice to be sure it is approved properly
	if approved = 0 
		gosub switch_value
	endif
	if approved = 1 and thisVendor_total >= threshhold then
		gosub switch_value
	endif

endif
[[APE_PAYSELECT.<CUSTOM>.B]]
rem --- duplicated sub routines from the main 

rem ==========================================================================
switch_value: rem --- Switch Check Values --- need this sub routine in the modification
rem ==========================================================================

	apm01_dev = fnget_dev("APM_VENDMAST")
	dim apm01a$:fnget_tpl$("APM_VENDMAST")
	apt01_dev = fnget_dev("APT_INVOICEHDR")
	dim apt01a$:fnget_tpl$("APT_INVOICEHDR")
	apt11_dev = fnget_dev("APT_INVOICEDET")
	dim apt11a$:fnget_tpl$("APT_INVOICEDET")

	SysGUI!.setRepaintEnabled(0)

	gridInvoices!       = UserObj!.getItem(num(user_tpl.gridInvoicesOfst$))
	vectInvoices!       = UserObj!.getItem(num(user_tpl.vectInvoicesOfst$))
	vectInvoicesMaster! = UserObj!.getItem(num(user_tpl.vectInvoicesMasterOfst$))

	TempRows! = gridInvoices!.getSelectedRows()
	numcols   = gridInvoices!.getNumColumns()

	if TempRows!.size() > 0 then
		for curr_row=1 to TempRows!.size()
			row_no = num(TempRows!.getItem(curr_row-1))

		rem --- Not checked -> checked

			if gridInvoices!.getCellState(row_no,0) = 0 then
				vend$ = gridInvoices!.getCellText(row_no,3)
				gosub strip_dashes
				read record (apm01_dev, key=firm_id$+
:					vend$, dom=*next) apm01a$

rem --- Following lines removed to allow payment of open invoices for a held vendor
rem				if apm01a.hold_flag$="Y" then
rem					msg_id$="AP_VEND_HOLD"
rem					gosub disp_message
rem					break
rem				endif

				read record (apt01_dev, key=firm_id$+
:					gridInvoices!.getCellText(row_no,2)+
:					vend$+
:					gridInvoices!.getCellText(row_no,5), dom=*next) apt01a$

				if apt01a.hold_flag$="Y" then
					msg_id$="AP_INV_HOLD"
					gosub disp_message
					break
				endif
				
				read record(apt11_dev, key=firm_id$+apt01a.ap_type$+apt01a.vendor_id$+apt01a.ap_inv_no$, dom=*next)
				while 1
					readrecord(apt11_dev,end=*break)apt11a$
					if pos(firm_id$+apt01a.ap_type$+apt01a.vendor_id$+apt01a.ap_inv_no$ =
:						    firm_id$+apt11a.ap_type$+apt11a.vendor_id$+apt11a.ap_inv_no$) <> 1 
:					then 
						break
					endif

					apt01a.invoice_amt = apt01a.invoice_amt + apt11a.trans_amt
					apt01a.discount_amt = apt01a.discount_amt + apt11a.trans_disc
					apt01a.retention = apt01a.retention + apt11a.trans_ret
				wend
				if apt01a.discount_amt<0 then apt01a.discount_amt=0

				gridInvoices!.setCellState(row_no,0,1)

				if callpoint!.getColumnData("APE_PAYSELECT.INCLUDE_DISC")="Y" or
:					apt01a.disc_date$ >= sysinfo.system_date$
:				then
					gridInvoices!.setCellText(row_no, 11, apt01a.discount_amt$)
				endif

				gridInvoices!.setCellText(row_no, 10, "0.00")
				payment_amt = apt01a.invoice_amt - num(gridInvoices!.getCellText(row_no,11)) - apt01a.retention
				gridInvoices!.setCellText(row_no, 12, str(payment_amt))
				vectInvoices!.setItem(row_no * numcols, "Y")
				dummy = fn_setmast_flag(
:					vectInvoices!.getItem(row_no*numcols+2),
:					vectInvoices!.getItem(row_no*numcols+3),
:					vectInvoices!.getItem(row_no*numcols+5),
:					"Y",
:					gridInvoices!.getCellText(row_no,10)
:				)
				dummy = fn_setmast_amts(
:					vectInvoices!.getItem(row_no*numcols+2),
:					vectInvoices!.getItem(row_no*numcols+3),
:					vectInvoices!.getItem(row_no*numcols+5),
:					gridInvoices!.getCellText(row_no, 11),
:					str(payment_amt)
:				)

		rem --- Checked -> not checked

			else
				rem --- re-initialize
				vend$ = gridInvoices!.getCellText(row_no,3)
				gosub strip_dashes
				read record (apt01_dev, key=firm_id$+
:					gridInvoices!.getCellText(row_no,2)+
:					vend$+
:					gridInvoices!.getCellText(row_no,5), dom=*next) apt01a$
				
				read record(apt11_dev, key=firm_id$+apt01a.ap_type$+apt01a.vendor_id$+apt01a.ap_inv_no$, dom=*next)
				while 1
					readrecord(apt11_dev,end=*break)apt11a$
					if pos(firm_id$+apt01a.ap_type$+apt01a.vendor_id$+apt01a.ap_inv_no$ =
:						    firm_id$+apt11a.ap_type$+apt11a.vendor_id$+apt11a.ap_inv_no$) <> 1 
:					then 
						break
					endif

					apt01a.invoice_amt = apt01a.invoice_amt + apt11a.trans_amt
					apt01a.discount_amt = apt01a.discount_amt + apt11a.trans_disc
					apt01a.retention = apt01a.retention + apt11a.trans_ret
				wend
				if apt01a.discount_amt<0 then apt01a.discount_amt=0

				gridInvoices!.setCellState(row_no,0,0)
				gridInvoices!.setCellText(row_no, 10, str(str(apt01a.invoice_amt - apt01a.retention - apt01a.discount_amt)))
				gridInvoices!.setCellText(row_no,11,str(apt01a.discount_amt))
				gridInvoices!.setCellText(row_no,12,"0.00")
				dummy = fn_setmast_flag(
:					vectInvoices!.getItem(row_no*numcols+2),
:					vectInvoices!.getItem(row_no*numcols+3),
:					vectInvoices!.getItem(row_no*numcols+5),
:					"N",
:					"0"
:				)
				dummy = fn_setmast_amts(
:					vectInvoices!.getItem(row_no*numcols+2),
:					vectInvoices!.getItem(row_no*numcols+3),
:					vectInvoices!.getItem(row_no*numcols+5),
:					str(apt01a.discount_amt),
:					"0"
:				)
			endif
		next curr_row
	endif

	SysGUI!.setRepaintEnabled(1)

	return

rem ==========================================================================
strip_dashes: rem --- Strip dashes from Vendor Number and pad with zeros if necessary
rem ==========================================================================

	new_vend$=""

	for dashes=1 to len(vend$)
		if vend$(dashes,1)<>"-" then new_vend$=new_vend$+vend$(dashes,1)
	next dashes

	vend_len=num(callpoint!.getTableColumnAttribute("APE_PAYSELECT.VENDOR_ID","MAXL"))
	vend$=pad(new_vend$,vend_len,"L","0")

	return

rem ==========================================================================
rem --- Functions
rem ==========================================================================

rem --- Set Selected Flag and Invoice Amount in InvoiceMaster vector

	def fn_setmast_flag(q1$,q2$,q3$,flag$,f_invamt$)
		for q=0 to vectInvoicesMaster!.size()-1 step user_tpl.MasterCols
			if vectInvoicesMaster!.getItem(q+3) = q1$ and
:				vectInvoicesMaster!.getItem(q+4) = q2$ and
:				vectInvoicesMaster!.getItem(q+6) = q3$
:			then
				vectInvoicesMaster!.setItem(q+1,flag$)
				vectInvoicesMaster!.setItem(q+13,f_invamt$)
				return 0
			endif
		next q

		return 0
	fnend

rem --- Set Discount and Payment Amount in InvoiceMaster vector

	def fn_setmast_amts(q1$,q2$,q3$,f_disc_amt$,f_pmt_amt$)
		for q=0 to vectInvoicesMaster!.size()-1 step user_tpl.MasterCols
			if vectInvoicesMaster!.getItem(q+3) = q1$ and
:				vectInvoicesMaster!.getItem(q+4) = q2$ and
:				vectInvoicesMaster!.getItem(q+6) = q3$
:			then
				vectInvoicesMaster!.setItem(q+12,f_disc_amt$)
				vectInvoicesMaster!.setItem(q+13,f_pmt_amt$)
				return 0
			endif
		next q

		return 0
	fnend

rem --- sub routines from the main to support the modifications

rem ==========================================================================
get_approval_status: rem --- Check Approval Status of an invoice
rem ==========================================================================

	read record(apm_invapproval, key=firm_id$ + vendor_id$ + ap_inv_no$,dom=*next)apm_invapproval$
	
	rem --- values to be set
	approval_list$="Invoice: " + cvs(ap_inv_no$,3) + "  from " + cvs(vendor_name$,3) + " for " + cvs(str(inv_amt:"$###,##0.00"),3) + $0A$
	reviewed=0
	approved=0
	sequence_num = -1
	approved_by$ = ""

	rem --- check the table first
	while 1
		read record(apm_invapproval,end=*break)apm_invapproval$
		if firm_id$ + vendor_id$ + ap_inv_no$ <> apm_invapproval.firm_id$ + apm_invapproval.vendor_id$ + apm_invapproval.ap_inv_no$ then break
		sequence_num = num(apm_invapproval.sequence_num$)
		if apm_invapproval.approval_type$ = "R" then
			reviewed=1
			approval_list$ = approval_list$ + "Reviewed by: " + cvs(apm_invapproval.user_id$,3) + " "
			approval_list$ = approval_list$ + cvs(apm_invapproval.name$,3) + " "
			ts$ = cvs(apm_invapproval.appv_timestamp$,3)
			ts$ = ts$(5,2) + "/" + ts$(7,2) + "/" + ts$(1,4) + ts$(9)
			approval_list$ = approval_list$ + ts$ + $0A$
		else
			if apm_invapproval.approval_type$ = "S" then
				approved = approved + 1
				approved_by$ = apm_invapproval.user_id$
				approval_list$ = approval_list$ + "Approved by: " + cvs(apm_invapproval.user_id$,3) + " "
				approval_list$ = approval_list$ + cvs(apm_invapproval.name$,3) + " "
				ts$ = cvs(apm_invapproval.appv_timestamp$,3)
				ts$ = ts$(5,2) + "/" + ts$(7,2) + "/" + ts$(1,4) + ts$(9)
				approval_list$ = approval_list$ + ts$ + $0A$
			endif
		endif
	wend

	rem --- now check the vector

	rem --- get the approval vector
	user$=sysinfo.user_id$
	userNamespace! = BBjAPI().getExistingNamespace(user$ + ".paymentSelect")	
	approvalsEntered! = userNamespace!.getValue("approvalsEntered")
	if approvalsEntered!.size() > 0 then
		for ouritem = 0 to approvalsEntered!.size() - 1
			apm_invapproval! = approvalsEntered!.getItem(ouritem)
			apm_invapproval$ = apm_invapproval!.getString()
			if firm_id$ + vendor_id$ + ap_inv_no$ <> apm_invapproval.firm_id$ + apm_invapproval.vendor_id$ + apm_invapproval.ap_inv_no$ then 
				continue
			endif
			if apm_invapproval.approval_type$ = "R" then
				reviewed=1
				approval_list$ = approval_list$ + "Reviewed by: " + cvs(apm_invapproval.user_id$,3) + " "
				approval_list$ = approval_list$ + cvs(apm_invapproval.name$,3) + " "
				ts$ = cvs(apm_invapproval.appv_timestamp$,3)
				ts$ = ts$(5,2) + "/" + ts$(7,2) + "/" + ts$(1,4) + ts$(9)
				approval_list$ = approval_list$ + ts$ + $0A$
			else
				if apm_invapproval.approval_type$ = "S" then
					approved = approved + 1
					approved_by$ = apm_invapproval.user_id$
					approval_list$ = approval_list$ + "Approved by: " + cvs(apm_invapproval.user_id$,3) + " "
					approval_list$ = approval_list$ + cvs(apm_invapproval.name$,3) + " "
					ts$ = cvs(apm_invapproval.appv_timestamp$,3)
					ts$ = ts$(5,2) + "/" + ts$(7,2) + "/" + ts$(1,4) + ts$(9)
					approval_list$ = approval_list$ + ts$ + $0A$
				endif
			endif
		next ouritem
	endif
return


rem ==========================================================================
load_Invoice_Approval_Status: rem --- set selections and background colors
rem ==========================================================================

rem --- only called by the after window create after (AWIN.B) callpoint
rem --- does not need to use approvalsEntered! because none have been entered
 
rem --- get the highligt colors
reviewedColor! = BBjAPI().getSysGui().makeColor(BBjAPI().getSysGui().LTGRAY) 
rem --- very light lavender 
partiallyApproved! = BBjAPI().getSysGui().makeColor(200, 173, 232)
fullyApproved! = BBjAPI().getSysGui().makeColor(BBjAPI().getSysGui().WHITE)

rem --- set the payment selection column based on the approval status

rem --- Open/Lock files
files=1,begfile=1,endfile=files
dim files$[files],options$[files],chans$[files],templates$[files]
files$[1]="APM_INVAPPROVAL"
options$[1]="OTA"
call stbl("+DIR_SYP")+"bac_open_tables.bbj",
:	begfile,
:	endfile,
:	files$[all],
:	options$[all],
:	chans$[all],
:	templates$[all],
:	table_chans$[all],
:	batch,
:	status$

dim apm_invapproval$:templates$[1]
apm_invapproval = num(chans$[1])

numrows = gridInvoices!.getNumRows()
threshhold = num(stbl("AUTHTHRESHHOLD"))

vendor_ids$ = ""; rem list of vendors ids in the grid each 6 characters long
vendor_totals$ = ""; rem invoice totals for a vendor in 10 character segments 0000000.00
x$ = stbl("psVendors",vendor_id$)
x$ = stbl("psVendorTotals",vendor_totals$)

if numrows > 0 then

	for row = 0 to numrows-1
		vendor_id$ = gridInvoices!.getCellText(row,3)
		inv_amt  = num(gridInvoices!.getCellText(row,9))
		vidPos = pos(vendor_id$=vendor_ids$,6)
		if vidPos = 0 then
			vendor_ids$ = vendor_ids$ + vendor_id$
			vendor_totals$ = vendor_totals$ + str(inv_amt:"0000000.00")
		else
			pointer = ((int(vidPos/6) + 1) *10) -9
			thisVendor_total$ = vendor_totals$(pointer,10)
			thisVendor_total$ = str(num(thisVendor_total$) + inv_amt:"0000000.00")
			vendor_totals$(pointer,10) = thisVendor_total$
		endif
	next row

	x$ = stbl("psVendors",vendor_ids$)
	x$ = stbl("psVendorTotals",vendor_totals$)

endif

if numrows > 0 then

	for row = 0 to numrows-1
		vendor_id$ = gridInvoices!.getCellText(row,3)
		vendor_name$ = gridInvoices!.getCellText(row,4)
		ap_inv_no$ = gridInvoices!.getCellText(row,5)
		inv_amt  = num(gridInvoices!.getCellText(row,9))
	
		rem ' retireve the vendor total in this grid
		vidPos = pos(vendor_id$=vendor_ids$,6)
		pointer = ((int(vidPos/6) + 1) *10) -9
		thisVendor_total = num(vendor_totals$(pointer,10))

		gosub get_approval_status	

		selected = gridInvoices!.getCellState(row,0)
	
		gridInvoices!.setSelectedRow(row)

		rem --- set the back color to white
		gridInvoices!.setRowBackColor(row, fullyApproved!)
		if reviewed =1 and approved = 0 then
			gridInvoices!.setRowBackColor(row, reviewedColor!)
		else
			if approved = 1 and thisVendor_total >= threshhold then
				gridInvoices!.setRowBackColor(row, partiallyApproved!)
			endif
		endif

		if !selected then
			rem --- invoice is not selected in the grid
			rem --- check the invoice for approved status and switch values if needed
			if approved = 1 and thisVendor_total < threshhold then
				gosub switch_value
			endif
			if approved > 1 then 
				gosub switch_value
			endif
		else
			rem --- invoice is selected in the grid
			rem -- check the invoice to be sure it is approved properly
			if approved = 0 
				gosub switch_value
			endif
			if approved = 1 and thisVendor_total >= threshhold then
				gosub switch_value
			endif

		endif
	
	next row

	rem --- ensure that there are no rows selected
	gridInvoices!.deselectAllCells()
 	rem --- gridInvoices!.setSelectedRow(0)

endif

return

rem ==========================================================================
getInvoiceRowApprovalStatus: rem --- support routine for the Approve Invoice (AINV) callpoint
rem ==========================================================================

rem --- set payment selection based on approval state
selected = gridInvoices!.getCellState(curr_row,0)
gridInvoices!.setSelectedRow(curr_row)

if !selected then
	rem --- invoice is not selected in the grid
	rem --- check the invoice for approved status and switch values if needed
	if approved = 1 and thisVendor_total < threshhold then
		gridInvoices!.setRowBackColor(curr_row, fullyApproved!)
		gosub switch_value
	endif
	if approved > 1 and thisVendor_total >= threshhold then
		gridInvoices!.setRowBackColor(curr_row, fullyApproved!)
		gosub switch_value
	endif
	if approved = 1 and thisVendor_total >= threshhold then
		gridInvoices!.setRowBackColor(curr_row, partiallyApproved!)
	endif
else
	rem --- invoice is selected in the grid
	rem -- check the invoice to be sure it is approved properly
	if approved = 0 
		gridInvoices!.setRowBackColor(curr_row, reviewedColor!)
		gosub switch_value
	endif
	if approved = 1 and thisVendor_total >= threshhold then
		gridInvoices!.setRowBackColor(curr_row, partiallyApproved!)
		gosub switch_value
	endif

endif

rem --- clear the row selection
gridInvoices!.deselectAllCells()

return
[[APE_PAYSELECT.AOPT-AINV.B]]
rem --- approve the invoice selected in the grid

firm_id$=sysinfo.firm_id$
user$=sysinfo.user_id$

rem --- Open/Lock files
files=3,begfile=1,endfile=files
dim files$[files],options$[files],chans$[files],templates$[files]
files$[1]="APM_APPROVERS"; files$[2]="ADM_USER"; files$[3]="APM_INVAPPROVAL"
options$[1]="OTA";options$[2]="OTA";options$[3]="OTA"
call stbl("+DIR_SYP")+"bac_open_tables.bbj",
:	begfile,
:	endfile,
:	files$[all],
:	options$[all],
:	chans$[all],
:	templates$[all],
:	table_chans$[all],
:	batch,
:	status$

while 1
	if status$ <> "" then
		msg$ = "Problem opening files."
		break
	endif

	dim apm_approvers$:templates$[1]
	apm_approvers = num(chans$[1])
	dim adm_user$:templates$[2]
	adm_user = num(chans$[2])
	dim apm_invapproval$:templates$[3]
	apm_invapproval = num(chans$[3])

	rem --- get the grid
	gridInvoices! = UserObj!.getItem(num(user_tpl.gridInvoicesOfst$))
	numcols = gridInvoices!.getNumColumns()
	numrows = gridInvoices!.getNumRows()

	rem --- get the approval vector
	userNamespace! = BBjAPI().getExistingNamespace(user$ + ".paymentSelect")	
	approvalsEntered! = userNamespace!.getValue("approvalsEntered")

	rem --- get the rows selected 
	rowsSelected! = gridInvoices!.getSelectedRows()

	rem --- get the threshhold
	threshhold = num(stbl("AUTHTHRESHHOLD"))

	rem --- get the highligt colors
	reviewedColor! = BBjAPI().getSysGui().makeColor(BBjAPI().getSysGui().LTGRAY) 
 	rem --- very light lavender 
 	partiallyApproved! = BBjAPI().getSysGui().makeColor(200, 173, 232)
	fullyApproved! = BBjAPI().getSysGui().makeColor(BBjAPI().getSysGui().WHITE)

	rem --- is the current user an approver
	found=0
	read record(apm_approvers,key=firm_id$ + user$,dom=*next)apm_approvers$; found=1
	if !found then
		rem --- not an approver
		break
	else
		if apm_approvers.check_signer$ <> "Y" and apm_approvers.prelim_approval$ <> "Y" then
			rem --- not an approver
			break
		endif
	endif
	read record(adm_user,key=apm_approvers.user_id$)adm_user$

	if rowsSelected!.size() =  0 then
		msg$ = "An invoice row in the grid must be selected."
		msg_id$="GENERIC_OK"
		dim msg_tokens$[1]
		msg_tokens$[1]=msg$
		call stbl("+DIR_SYP")+"bac_message.bbj", msg_id$, msg_tokens$[all], msg_opt$, table_chans$[all]
		break
	endif

	rem --- confirm approval
	invCount = rowsSelected!.size() 
	if apm_approvers.prelim_approval$ = "Y" then
		msg_id$="APM_MARK_REVWD"
	else
		msg_id$="APM_MARK_APPVD"
	endif
	dim msg_tokens$[1]
	if invCount > 1 then 
		token$ = "these " + str(invCount) + " invoices"
	else
		token$ = "this invoice"
	endif
	msg_tokens$[1] = token$
	call stbl("+DIR_SYP")+"bac_message.bbj", msg_id$, msg_tokens$[all], msg_opt$, table_chans$[all]
	if cvs(msg_opt$,3) <> "Y" then
		break
	endif

	rem --- clear the selections now
	gridInvoices!.deselectAllCells()

	for item = 0 to rowsSelected!.size() - 1
		curr_row = num(rowsSelected!.getItem(item))

		rem --- get the row data needed
		vendor_id$ = gridInvoices!.getCellText(curr_row,3)
		vendor_name$ = gridInvoices!.getCellText(curr_row,4)
		ap_inv_no$ = gridInvoices!.getCellText(curr_row,5)
		inv_amt  = num(gridInvoices!.getCellText(curr_row,9))

		rem --- the user is a review or approver - get current status of this invoices approval
		gosub get_approval_status	

		rem ' retireve the vendor's total in this grid
		vendor_ids$ = stbl("psVendors")
		vendor_totals$ = stbl("psVendorTotals")
		vidPos = pos(vendor_id$=vendor_ids$,6)
		pointer = ((int(vidPos/6) + 1) *10) -9
		thisVendor_total = num(vendor_totals$(pointer,10))

		rem --- not reviewed and user is not the reviewer
		if !reviewed and apm_approvers.prelim_approval$ <> "Y" then
			continue
		endif

		rem --- not reviewed and user is a reviewer
		if !reviewed and apm_approvers.prelim_approval$ = "Y" then
			rem --- record approval
			dim apm_invapproval$:fattr(apm_invapproval$)
			apm_invapproval! = BBjAPI().makeTemplatedString(fattr(apm_invapproval$))
			apm_invapproval.firm_id$ = firm_id$
			apm_invapproval.vendor_id$ = vendor_id$
			apm_invapproval.ap_inv_no$ = ap_inv_no$
			apm_invapproval.sequence_num$ = str(sequence_num + 1:"00")
			apm_invapproval.approval_type$ = "R"
			apm_invapproval.user_id$ = user$
			apm_invapproval.name$ = adm_user.name$
			apm_invapproval.appv_timestamp$ = date(0:"%Y%Mz%Dz %Hz:%mz:%sz")
			rem --- write record(apm_invapproval)apm_invapproval$
			apm_invapproval!.setString(apm_invapproval$)
			approvalsEntered!.addItem(apm_invapproval!)
			gridInvoices!.setRowBackColor(curr_row, reviewedColor!)
			continue
		endif	

		rem --- reviewed and user is a reviewer
		if reviewed and apm_approvers.prelim_approval$ = "Y" then
			continue
		endif

		rem --- review is complete - to get to this point the user is an approver

		rem --- case no approvals, get one
		if !approved then
			rem --- record approval
			dim apm_invapproval$:fattr(apm_invapproval$)
			apm_invapproval! = BBjAPI().makeTemplatedString(fattr(apm_invapproval$))
			apm_invapproval.firm_id$ = firm_id$
			apm_invapproval.vendor_id$ = vendor_id$
			apm_invapproval.ap_inv_no$ = ap_inv_no$
			apm_invapproval.sequence_num$ = str(sequence_num+1:"00")
			apm_invapproval.approval_type$ = "S"
			apm_invapproval.user_id$ = user$
			apm_invapproval.name$ = adm_user.name$
			apm_invapproval.appv_timestamp$ = date(0:"%Y%Mz%Dz %Hz:%mz:%sz")
			rem --- write record(apm_invapproval)apm_invapproval$
			apm_invapproval!.setString(apm_invapproval$)
			approvalsEntered!.addItem(apm_invapproval!)
			approved = approved + 1			
			gosub getInvoiceRowApprovalStatus
			continue
		endif	

		rem --- case one approval and less than threshhold, report and exit
		if approved = 1 and thisVendor_total < threshhold then
			continue
		endif

		rem --- case one approval and >= threshhold, and the approval is by this user exit
		if approved = 1 and thisVendor_total >= threshhold and approved_by$ = user$ then
			continue
		endif

		rem --- case one approval and >= threshhold, get another one
		if approved = 1 and thisVendor_total >= threshhold then
			rem --- record approval
			dim apm_invapproval$:fattr(apm_invapproval$)
			apm_invapproval! = BBjAPI().makeTemplatedString(fattr(apm_invapproval$))
			apm_invapproval.firm_id$ = firm_id$
			apm_invapproval.vendor_id$ = vendor_id$
			apm_invapproval.ap_inv_no$ = ap_inv_no$
			apm_invapproval.sequence_num$ = str(sequence_num+1:"00")
			apm_invapproval.approval_type$ = "S"
			apm_invapproval.user_id$ = user$
			apm_invapproval.name$ = adm_user.name$
			apm_invapproval.appv_timestamp$ = date(0:"%Y%Mz%Dz %Hz:%mz:%sz")
			rem --- write record(apm_invapproval)apm_invapproval$
			apm_invapproval!.setString(apm_invapproval$)
			approvalsEntered!.addItem(apm_invapproval!)
			approved = approved + 1
			gosub getInvoiceRowApprovalStatus
			continue
		endif	

		rem --- case two approvals, report and exit
			continue
		endif

	next item
	
	break
wend

rem --- ensure that no row is selected
gridInvoices!.deselectAllCells()
[[APE_PAYSELECT.AOPT-VIMG.B]]
rem --- display the images associated with the selected invoice in the grid.

msg_id$="GENERIC_OK"
dim msg_tokens$[1]

rem --- get the grid
gridInvoices! = UserObj!.getItem(num(user_tpl.gridInvoicesOfst$))
numrows = gridInvoices!.getNumRows()

rem --- get the selected row
rowsSelected! = gridInvoices!.getSelectedRows()

if rowsSelected!.size() = 0 then
	msg_tokens$[1]="At least one invoice row in the grid must be selected."
	call stbl("+DIR_SYP")+"bac_message.bbj",
:	msg_id$,
:	msg_tokens$[all],
:	msg_opt$,
:	table_chans$[all]
else
	rem --- Open/Lock files
	files=1,begfile=1,endfile=files
	dim files$[files],options$[files],chans$[files],templates$[files]
	files$[1]="APM_INVIMAGE"
	options$[1]="OTA"
	call stbl("+DIR_SYP")+"bac_open_tables.bbj",
:		begfile,
:		endfile,
:		files$[all],
:		options$[all],
:		chans$[all],
:		templates$[all],
:		table_chans$[all],
:		batch,
:		status$

	if status$ = "" then
		dim apm_invimage$:templates$[1]
		apm_invimage = num(chans$[1])
		images_found=0
		image_count =0

		for rowCount = 0 to rowsSelected!.size() - 1
			curr_row = num(rowsSelected!.getItem(rowCount))

			rem --- get the row data needed
			vendor_id$ = gridInvoices!.getCellText(curr_row,3)
			ap_inv_no$ = gridInvoices!.getCellText(curr_row,5)
	
			read record(apm_invimage, key=firm_id$+vendor_id$+ap_inv_no$, dom=*next)apm_invimage$

			while 1
				read record(apm_invimage,end=*break)apm_invimage$
				if apm_invimage$(1,18) <> firm_id$+vendor_id$+ap_inv_no$ then break
				url$ = apm_invimage.doc_url$
				BBjAPI().getThinClient().browse(url$)
				images_found=1; image_count = image_count + 1
			wend

		next rowCount
	endif

	rem --- display message
	if images_found then
		msg_tokens$[1] = str(image_count) + " image(s) were displayed in your browser."
	else
		msg_tokens$[1]="There are no images for this selection set. "
	endif
	call stbl("+DIR_SYP")+"bac_message.bbj",
:		msg_id$,
:		msg_tokens$[all],
:		msg_opt$,
:		table_chans$[all]

endif
