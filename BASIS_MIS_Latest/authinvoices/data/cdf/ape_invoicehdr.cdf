[[APE_INVOICEHDR.AOPT-VIDI.B]]
rem --- displaye the invoice images in the browser

firm_id$ = callpoint!.getColumnData("APE_INVOICEHDR.FIRM_ID")
vendor_id$ = callpoint!.getColumnData("APE_INVOICEHDR.VENDOR_ID")
ap_inv_no$ = callpoint!.getColumnData("APE_INVOICEHDR.AP_INV_NO")

rem --- Open/Lock files
files=1,begfile=1,endfile=files
dim files$[files],options$[files],chans$[files],templates$[files]
files$[1]="APM_INVIMAGE"
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

if status$ = "" then
	dim apm_invimage$:templates$[1]
	apm_invimage = num(chans$[1])

	read record(apm_invimage, key=firm_id$+vendor_id$+ap_inv_no$, dom=*next)apm_invimage$

	while 1
		read record(apm_invimage,end=*break)apm_invimage$
		if apm_invimage$(1,18) <> firm_id$+vendor_id$+ap_inv_no$ then break
		url$ = apm_invimage.doc_url$
		BBjAPI().getThinClient().browse(url$)
	wend
endif

[[APE_INVOICEHDR.AOPT-LIIM.B]]
rem --- select invoice image and upload to google drive 

dim apm_interface$:"apm_firm_id:C(2),apm_ap_type:c(2),apm_vendor_id:c(6),apm_ap_inv_no:c(10)"

apm_interface.apm_firm_id$ = callpoint!.getColumnData("APE_INVOICEHDR.FIRM_ID")
apm_interface.apm_ap_type$ = callpoint!.getColumnData("APE_INVOICEHDR.AP_TYPE")
apm_interface.apm_vendor_id$ = callpoint!.getColumnData("APE_INVOICEHDR.VENDOR_ID")
apm_interface. apm_ap_inv_no$ = callpoint!.getColumnData("APE_INVOICEHDR.AP_INV_NO")

call "apm_upload_image.src", apm_interface$