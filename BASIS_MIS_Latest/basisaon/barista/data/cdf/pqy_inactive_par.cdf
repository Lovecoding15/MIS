[[PQY_INACTIVE_PAR.PARTNER_TYPE.AMOD]]
pqy_part_type$=callpoint!.getColumnData("PQY_INACTIVE_PAR.PARTNER_TYPE")
pqy_part_types$=callpoint!.getColumnData("PQY_INACTIVE_PAR.PARTNER_TYPES")

newSelectedTypes! = new StringBuffer()

if cvs(pqy_part_type$,3)<>"" then
	if cvs(pqy_part_types$,3)="" then
		newSelectedTypes!.append(pqy_part_type$)
	else
		selectedTypes! = new StringTokenizer(pqy_part_types$, ",")

		handled = 0
		while selectedTypes!.hasMoreTokens()
			this_type$=selectedTypes!.nextToken()
			if this_type$<>pqy_part_type$ then
				if newSelectedTypes!.length() > 0 then
					newSelectedTypes!.append(","+this_type$)
				else
					newSelectedTypes!.append(this_type$)
				fi
			else
				rem ' this is a remove
				handled=1
			fi
		wend
		if !handled then
			if newSelectedTypes!.length() > 0 then
				newSelectedTypes!.append(","+pqy_part_type$)
			else
				newSelectedTypes!.append(pqy_part_type$)
			fi
		fi
	fi
else
	newSelectedTypes!.append(pqy_part_types$)
fi

callpoint!.setColumnData("PQY_INACTIVE_PAR.PARTNER_TYPES", newSelectedTypes!.toString())
callpoint!.setStatus("REFRESH")
[[PQY_INACTIVE_PAR.ACUS]]
ourEvent! = SysGUI!.getLastEvent()

while 1
	if pos("BBjNavigatorMoveFirstEvent"=ourEvent!.toString()) then
 		gosub navFirst
		break
	fi
 
	if pos("BBjNavigatorMoveNextEvent"=ourEvent!.toString()) then
		gosub navNext
		break
	fi

	if pos("BBjNavigatorMoveLastEvent"=ourEvent!.toString()) then
		gosub navLast
		break
	fi

	if pos("BBjNavigatorMovePreviousEvent"=ourEvent!.toString()) then
		gosub navPrevious
		break
	fi

	if pos("BBjDBGridRowChangeRequestEvent"=ourEvent!.toString()) then
		gosub handleTheGridRowChangeRequests
		break
	fi

	if pos("BBjButtonPushEvent"=ourEvent!.toString()) then
		gosub handleButtonPushEvents
		break
	fi

wend
[[PQY_INACTIVE_PAR.<CUSTOM>]]
navFirst:
	gosub getNavigatorAndRecordSet
	pqyRecordSet!.first(err=*next)
	gosub getTheCurrentReseller
return

navPrevious:
	gosub getNavigatorAndRecordSet
	pqyRecordSet!.previous(err=*next)
	gosub getTheCurrentReseller
return

navNext:
	gosub getNavigatorAndRecordSet
	pqyRecordSet!.next(err=*next)
	gosub getTheCurrentReseller
return

navLast:
	gosub getNavigatorAndRecordSet
	pqyRecordSet!.last(err=*next)
	gosub getTheCurrentReseller
return

getNavigatorAndRecordSet:
	pqyNavID=30001
	context=num(callpoint!.getTableColumnAttribute("PQY_INACTIVE_PAR.NUM_USERS","CTLC"))

	pqyWindow!=bbjapi().getSysGui().getWindow(context)
	pqyNavigator!=pqyWindow!.getControl(pqyNavID)
	pqyRecordSet!=pqyNavigator!.getBoundRecordSet()
return

getSerialNumberRecordSet:
	pqySerGridID = 30002
	context=num(callpoint!.getTableColumnAttribute("PQY_INACTIVE_PAR.NUM_USERS","CTLC"))
	pqyWindow!=bbjapi().getSysGui().getWindow(context)
	pqySerGrid!=pqyWindow!.getControl(pqySerGridID)
	pqyRecordSet!=pqySerGrid!.getBoundRecordSet()
return
	
getTheCurrentReseller:
	pqyRecordData! = pqyRecordSet!.getCurrentRecordData()
	pqyResellerNbr$ = pqyRecordData!.getFieldValue("CUSTOMER_NBR")
	pqyNumUser$ = callpoint!.getColumnData("PQY_INACTIVE_PAR.NUM_USERS")
	pqySerGridID = 30002
	pqySerHistoryID = 30004
	call stbl("PQY_PROGRAMS") +"pqy_serial_nbr_query.src", pqyResellerNbr$, pqyNumUser$, context, pqySerGridID, pqySerHistoryID
return

handleTheGridRowChangeRequests:
	rem ' which grid did it come from
	pqyRslGridID = 30000
	pqyGridCtl!=ourEvent!.getControl()
	if pqyGridCtl!.getID() = pqyRslGridID then
		rem ' reseller grid change
		row = ourEvent!.getRow()
		gosub getNavigatorAndRecordSet
		pqyRecordSet!.moveToRecord(row)
		gosub getTheCurrentReseller
	else
		rem ' serial number grid change
		row = ourEvent!.getRow()
		gosub getSerialNumberRecordSet
		pqyRecordSet!.moveToRecord(row)
		pqyRecordData! = pqyRecordSet!.getCurrentRecordData()
		pqySerialNbr$=pqyRecordData!.getFieldValue("SERIAL_NBR")

		pqySerHistoryID = 30004
		pqySerHistory!=pqyWindow!.getControl(pqySerHistoryID)
		pqySerHistory!.setEnabled(0)
		pqySerHistory!.setText("")

		pqyLicHist$=""
		call stbl("PQY_PROGRAMS")+"pqy_license_history.src", pqySerialNbr$, pqyLicHist$
		pqySerHistory!.setText(pqyLicHist$)
		pqySerHistory!.setEnabled(1)

	fi
return

setMinimumWindowSize:
	rem set Minimum Window Size if needed
	minimumWinWidth = 1100
	minimumWinHeight = 325
	rem ' ensure window width and height => minimums
	if pqyWindow!.getWidth() < minimumWinWidth or pqyWindow!.getHeight() < minimumWinHeight then
		pqyWindow!.setSize(minimumWinWidth, minimumWinHeight)
	fi
return

handleButtonPushEvents:
	button!=ourEvent!.getControl()

	pqyPartnerClearBtnID = 30003
	pqyRunQueryBtnID=30005
	pqyOutputReportBtnID=30006
	
	switch button!.getID()
		case pqyPartnerClearBtnID
			callpoint!.setColumnData("PQY_INACTIVE_PAR.PARTNER_TYPES","")
			callpoint!.setStatus("REFRESH")
			break
		case pqyRunQueryBtnID
			context=num(callpoint!.getTableColumnAttribute("PQY_INACTIVE_PAR.NUM_USERS","CTLC"))
			pqyWindow!=bbjapi().getSysGui().getWindow(context)

			pqyWindow!.setEnabled(0)
			call stbl("PQY_PROGRAMS")+"pqy_inactive_query.src"
			pqyWindow!.setEnabled(1)			
			break
		case pqyOutputReportBtnID
			context=num(callpoint!.getTableColumnAttribute("PQY_INACTIVE_PAR.NUM_USERS","CTLC"))
			pqyWindow!=bbjapi().getSysGui().getWindow(context)
			pqyWindow!.setVisible(0)			

			rd_table_chans$[ALL]=table_chans$[ALL]
			sysinfo_template$=stbl("+SYSINFO_TPL")
    			dim sysinfo$:sysinfo_template$
    			sysinfo$=stbl("+SYSINFO")
			rd_task_val$=sysinfo.task_id$

			rem ' set output directories
			pqyServer$=STBL("PQY_PROD_SERVER")
			thisServer$=info(3,4)
			if len(thisServer$)>=len(pqyServer$) AND thisServer$(1,len(pqyServer$))=pqyServer$ then
				rem ' production server
				trash$=STBL("+DOC_DIR_PDF", STBL("PQY_PROD_DOCS"))
				trash$=STBL("+DOC_DIR_HTM", STBL("PQY_PROD_DOCS"))
				trash$=STBL("+DOC_DIR_XML", STBL("PQY_PROD_DOCS"))
				trash$=STBL("+DOC_DIR_CSV", STBL("PQY_PROD_DOCS"))
				trash$=STBL("+DOC_DIR_TXT", STBL("PQY_PROD_DOCS"))
			else
				rem ' testing server
				trash$=STBL("+DOC_DIR_PDF", STBL("PQY_TESTING_DOCS"))
				trash$=STBL("+DOC_DIR_HTM", STBL("PQY_TESTING_DOCS"))
				trash$=STBL("+DOC_DIR_XML", STBL("PQY_TESTING_DOCS"))
				trash$=STBL("+DOC_DIR_CSV", STBL("PQY_TESTING_DOCS"))
				trash$=STBL("+DOC_DIR_TXT", STBL("PQY_TESTING_DOCS"))
			fi

			run stbl("PQY_PROGRAMS")+"pqy_inactive_rep.src"
			break
	swend

return
[[PQY_INACTIVE_PAR.ASIZ]]
rem ' resize the grid

id=num(callpoint!.getTableColumnAttribute("PQY_INACTIVE_PAR.NUM_USERS","CTLI"))
context=num(callpoint!.getTableColumnAttribute("PQY_INACTIVE_PAR.NUM_USERS","CTLC"))

pqyWindow!=bbjapi().getSysGui().getWindow(context)
pqyControl!=pqyWindow!.getControl(id)

gosub setMinimumWindowSize

pqyRslGridID = 30000
pqyNavID = 30001
pqySerGridID = 30002
pqySerHistoryID=30004
pqyControlGap = 2

pqyX = pqyControl!.getX()
pqyY = pqyControl!.getY() + pqyControl!.getHeight() + pqyControlGap

pqyRemainingHeight = pqyWindow!.getHeight() - pqyY

while 1
	pqyHistory!=pqyWindow!.getControl(pqySerHistoryID, err=*break)
	pqyRslDataGrid!=pqyWindow!.getControl(pqyRslGridID, err=*break)
	pqyNav!=pqyWindow!.getControl(pqyNavID, err=*break)	
	pqySerGrid!=pqyWindow!.getControl(pqySerGridID, err=*break)	
	pqyRslDataGrid!.setVisible(0)
	pqyNav!.setVisible(0)
	pqySerGrid!.setVisible(0)
	pqyHistory!.setVisible(0)

	rem ' set the edit box
	stdEditBoxWidth=350
	editBoxX = pqyWindow!.getWidth()-pqyControlGap-stdEditBoxWidth
	editBoxY = pqyControlGap
	editBoxHeight = pqyWindow!.getHeight() - (pqyControlGap * 2)
	pqyHistory!.setLocation(editBoxX, editBoxY)
	pqyHistory!.setSize(stdEditBoxWidth, editBoxHeight)

	pqyRemainingHeight = pqyRemainingHeight - pqyControlGap - pqyNav!.getHeight() - pqyControlGap - pqyControlGap 
	pqyRslGridHeight = int(pqyRemainingHeight * .67)

	pqyRslGridWidth = pqyWindow!.getWidth() - pqyX - stdEditBoxWidth - pqyControlGap - pqyControlGap

	pqyRslDataGrid!.setSize(pqyRslGridWidth, pqyRslGridHeight)

	pqyY = pqyRslDataGrid!.getY()+pqyRslDataGrid!.getHeight()+pqyControlGap
	pqyNav!.setLocation(pqyX, pqyY)

	pqyY = pqyY + pqyNav!.getHeight() + pqyControlGap
	pqySerGrid!.setLocation(pqyX, pqyY)
	pqySerGridHeight = pqyRemainingHeight - pqyRslDataGrid!.getHeight()
	pqySerGrid!.setSize(pqyRslGridWidth, pqySerGridHeight)

	pqyRslDataGrid!.setVisible(1)
	pqyNav!.setVisible(1)
	pqySerGrid!.setVisible(1)
	pqyHistory!.setVisible(1)

	break
wend
[[PQY_INACTIVE_PAR.BSHO]]
rem use statements
use java.util.StringTokenizer
use java.lang.StringBuffer

rem ' add the grids and the navigator

id=num(callpoint!.getTableColumnAttribute("PQY_INACTIVE_PAR.NUM_USERS","CTLI"))
context=num(callpoint!.getTableColumnAttribute("PQY_INACTIVE_PAR.NUM_USERS","CTLC"))

pqyWindow!=bbjapi().getSysGui().getWindow(context)
pqyControl!=pqyWindow!.getControl(id)

gosub setMinimumWindowSize

pqyRslGridID = 30000
pqyNavID = 30001
pqySerGridID = 30002
pqyPartnerClearBtnID = 30003
pqySerHistoryID=30004
pqyRunQueryBtnID=30005
pqyOutputReportBtnID=30006
pqyControlGap = 2

rem ' set the edit box
stdEditBoxWidth=350
editBoxX = pqyWindow!.getWidth()-pqyControlGap-stdEditBoxWidth
editBoxY = pqyControlGap
editBoxHeight = pqyWindow!.getHeight() - (pqyControlGap * 2)
pqyHistory!=pqyWindow!.addCEdit(pqySerHistoryID, editBoxX, editBoxY, stdEditBoxWidth, editBoxHeight, "")
pqyHistory!.setEditable(0)
pqyHistory!.setVerticalScrollable(1)

pqyX = pqyControl!.getX()
pqyY = pqyControl!.getY() + pqyControl!.getHeight() + pqyControlGap

pqyRemainingHeight = pqyWindow!.getHeight() - pqyY

pqyNavHeight = pqyControl!.getHeight()
pqyRemainingHeight = pqyRemainingHeight - pqyControlGap - pqyNavHeight - pqyControlGap - pqyControlGap 
pqyRslGridHeight = int(pqyRemainingHeight * .67)

pqyGridWidth = pqyWindow!.getWidth() - pqyX - stdEditBoxWidth - pqyControlGap - pqyControlGap
pqyNavWidth = 150

rem ' create the partner grid
pqyRslGrid!=pqyWindow!.addDataBoundGrid(pqyRslGridID, pqyX, pqyY, pqyGridWidth, pqyRslGridHeight) 
pqyRslGrid!.setEnabled(0)
pqyRslGrid!.setCallback(pqyRslGrid!.ON_DB_GRID_ROW_CHANGE_REQUEST, "custom_event")
pqyRslGrid!.setShouldHighlightSelectedRow(1)
pqyRslGrid!.setHorizontalScrollable(1)

pqyY = pqyY + pqyRslGrid!.getHeight() + pqyControlGap
pqySerGridHeight = pqyRemainingHeight - pqyRslGrid!.getHeight()

rem ' create the navigator
pqyNav!=pqyWindow!.addNavigator(pqyNavID, pqyX, pqyY, pqyNavWidth, pqyNavHeight, " " )
pqyNav!.setEnabled(0)
pqyNav!.setCallback(pqyNav!.ON_NAV_FIRST, "custom_event")
pqyNav!.setCallback(pqyNav!.ON_NAV_PREVIOUS, "custom_event")
pqyNav!.setCallback(pqyNav!.ON_NAV_NEXT, "custom_event")
pqyNav!.setCallback(pqyNav!.ON_NAV_LAST, "custom_event")

pqyY=pqyY + pqyNavHeight +  pqyControlGap

rem ' create the serial number grid
pqySerGrid!=pqyWindow!.addDataBoundGrid(pqySerGridID, pqyX, pqyY, pqyGridWidth, pqySerGridHeight)
pqySerGrid!.setEnabled(0)
pqySerGrid!.setCallback(pqySerGrid!.ON_DB_GRID_ROW_CHANGE_REQUEST, "custom_event")
pqySerGrid!.setShouldHighlightSelectedRow(1)

rem ' create the "clear partner types" button
ctlid =num(callpoint!.getTableColumnAttribute("PQY_INACTIVE_PAR.PARTNER_TYPES","CTLI"))
partnerTypes! =pqyWindow!.getControl(ctlid)
btnX = partnerTypes!.getX() + partnerTypes!.getWidth() + pqyControlGap
btnY = partnerTypes!.getY()
pqyButton! = pqyWindow!.addButton(pqyPartnerClearBtnID, btnX, btnY, 150, partnerTypes!.getHeight(), "Clear Partner Types")
pqyButton!.setCallback(pqyButton!.ON_BUTTON_PUSH, "custom_event")

rem ' create the run query and output reports buttons
ctlid = num(callpoint!.getTableColumnAttribute("PQY_INACTIVE_PAR.NUM_USERS","CTLI"))
numUsers!=pqyWindow!.getControl(ctlid)
btnY= numUsers!.getY()
pqyRunQueryBtn!=pqyWindow!.addButton(pqyRunQueryBtnID, btnX, btnY, 150, pqyButton!.getHeight(), "Load/Reload Grids")
pqyRunQueryBtn!.setCallback(pqyRunQueryBtn!.ON_BUTTON_PUSH, "custom_event")
btnX = pqyRunQueryBtn!.getX() + pqyRunQueryBtn!.getWidth() + pqyControlGap
pqyOutputReport!=pqyWindow!.addButton(pqyOutputReportBtnID, btnX, btnY, 150, pqyButton!.getHeight(), "Output Data")
pqyOutputReport!.setCallback(pqyOutputReport!.ON_BUTTON_PUSH, "custom_event")
[[PQY_INACTIVE_PAR.AREC]]
rem set the default inactive date to one year ago
pqy_year = num(date(0,"%Y"))
pqy_year=pqy_year-1
pqy_month=num(date(0,"%Mz"))
pqy_day=num(date(0,"%Dz"))
if pqy_month=2 and pqy_day=29 then pqy_day=28
pqy_inactive_date$=str(pqy_year)+str(pqy_month:"00")+str(pqy_day:"00")
callpoint!.setColumnData("PQY_INACTIVE_PAR.INACTIVE_DATE", pqy_inactive_date$)

rem set the default reseller types
pqy_reseller$="RS,PB,PS,PG"
callpoint!.setColumnData("PQY_INACTIVE_PAR.PARTNER_TYPES", pqy_reseller$)
callpoint!.setStatus("REFRESH")

rem set the default number of users
callpoint!.setColumnData("PQY_INACTIVE_PAR.NUM_USERS","50")

rem disable the Partner Types character edit
pqy_ctlid=num(callpoint!.getTableColumnAttribute("PQY_INACTIVE_PAR.PARTNER_TYPES","CTLI"))
pqy_cntxt=num(callpoint!.getTableColumnAttribute("PQY_INACTIVE_PAR.PARTNER_TYPES","CTLC"))
pqyWindow!=bbjapi().getSysGui().getWindow(pqy_cntxt)

pqy_control!=pqyWindow!.getControl(pqy_ctlid)
pqy_control!.setEnabled(0)
