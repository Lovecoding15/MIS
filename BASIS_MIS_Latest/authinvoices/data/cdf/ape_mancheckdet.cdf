[[APE_MANCHECKDET.AOPT-VIMG.B]]
rem --- displaye the invoice images in the browser

declare BBjStandardGrid grid!

grid! = util.getGrid(Form!)
curr_row=grid!.getSelectedRow()
rowstatus$ = callpoint!.getGridRowNewStatus(curr_row) + callpoint!.getGridRowModifyStatus(curr_row) + callpoint!.getGridRowDeleteStatus(curr_row)

if pos("Y" = rowstatus$) = 0 then 

	firm_id$ = callpoint!.getColumnData("APE_MANCHECKDET.FIRM_ID")
	vendor_id$ = callpoint!.getColumnData("APE_MANCHECKDET.VENDOR_ID")
	ap_inv_no$ = callpoint!.getColumnData("APE_MANCHECKDET.AP_INV_NO")

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

		read record(apm_invimage, key=firm_id$+vendor_id$+ap_inv_no$, dom=*next)apm_invimage$

		while 1
			read record(apm_invimage,end=*break)apm_invimage$
			if apm_invimage$(1,18) <> firm_id$+vendor_id$+ap_inv_no$ then break
			url$ = apm_invimage.doc_url$
			BBjAPI().getThinClient().browse(url$)
		wend
	endif
endif
[[APE_MANCHECKDET.AOPT-LIMG.B]]
rem --- select invoice image and upload to google drive 

use ::ado_util.src::util

declare BBjStandardGrid grid!

grid! = util.getGrid(Form!)
curr_row=grid!.getSelectedRow()
rowstatus$ = callpoint!.getGridRowNewStatus(curr_row) + callpoint!.getGridRowModifyStatus(curr_row) + callpoint!.getGridRowDeleteStatus(curr_row)

if pos("Y" = rowstatus$) = 0 then 
	dim apm_interface$:"apm_firm_id:C(2),apm_ap_type:c(2),apm_vendor_id:c(6),apm_ap_inv_no:c(10)"

	apm_interface.apm_firm_id$ = callpoint!.getColumnData("APE_MANCHECKDET.FIRM_ID")
	apm_interface.apm_ap_type$ = "*M"; rem --- callpoint!.getColumnData("APE_MANCHECKDET.AP_TYPE")
	apm_interface.apm_vendor_id$ = callpoint!.getColumnData("APE_MANCHECKDET.VENDOR_ID")
	apm_interface. apm_ap_inv_no$ = callpoint!.getColumnData("APE_MANCHECKDET.AP_INV_NO")

	call "apm_upload_image.src", apm_interface$
endif
[[APE_MANCHECKDET.ADGE.A]]
rem --- enable the image load and view buttons

callpoint!.setOptionEnabled("VIMG",1)
callpoint!.setOptionEnabled("LIMG",1)
[[APE_MANCHECKDET.BDGX.A]]
rem --- disable the image buttons when leaving the gird

callpoint!.setOptionEnabled("VIMG",0)
callpoint!.setOptionEnabled("LIMG",0)
