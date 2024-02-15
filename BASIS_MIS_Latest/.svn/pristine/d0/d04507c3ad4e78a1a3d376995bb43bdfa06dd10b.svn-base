[[FUT_OLDDOM.BSHO]]
callpoint!.setDevObject("SERIAL_NBR","")

[[FUT_OLDDOM.CUSTOMER_NBR.AVAL]]
if callpoint!.getUserInput()<>"009310"
	callpoint!.setStatus("RECORD:["+callpoint!.getUserInput()+fill(20)+"]")
	callpoint!.setColumnEnabled("FUT_OLDDOM.SERIAL_NBR",0)
ELSE
	callpoint!.setColumnEnabled("FUT_OLDDOM.SERIAL_NBR",1)
endif

[[FUT_OLDDOM.SEQUENCE_NBR.BINP]]
callpoint!.setColumnData("FUT_OLDDOM.SEQUENCE_NBR","001")
callpoint!.setStatus("REFRESH")

[[FUT_OLDDOM.SERIAL_NBR.AVAL]]
SERIAL_NBR$=callpoint!.getDevObject("SERIAL_NBR")
if SERIAL_NBR$<>""
	callpoint!.setStatus("RECORD["+callpoint!.getColumnData("FUT_OLDDOM.CUSTOMER_NBR")+SERIAL_NBR$+"]")
endif

[[FUT_OLDDOM.SERIAL_NBR.BINQ]]
selected_key$ = ""
	callpoint!.setDevObject("SERIAL_NBR","")
	CUST_NBR$=callpoint!.getColumnData("FUT_OLDDOM.CUSTOMER_NBR")
	dim filter_defs$[1,2]
	filter_defs$[0,0]="FUT_SNM01.CUSTOMER_NBR"
	filter_defs$[0,1]="='"+cust_nbr$+"'"
	filter_defs$[0,2]="LOCK"

	call stbl("+DIR_SYP")+"bax_query.bbj",
:		gui_dev,
:		Form!,
:		"FUT_CUST_SERIALS",
:		"",
:		table_chans$[all],
:		selected_key$,
:		filter_defs$[all],
:		"",
:		"",
:		"INDX5"


if selected_key$<>"" then 
	FUT_SNM01_ch = fnget_dev("FUT_SNM01")
	dim fUT_SNM01$:fnget_tpl$("FUT_SNM01")
        SELECTED_KEY$=SELECTED_KEY$(1,LEN(SELECTED_KEY$)-1)
	callpoint!.setDevObject("SERIAL_NBR",SELECTED_KEY$)
	callpoint!.setColumnData("FUT_OLDDOM.SERIAL_NBR",SELECTED_KEY$,1)
endif
	
callpoint!.setStatus("ACTIVATE-ABORT")

[[FUT_OLDDOM.START_DATE.BINP]]
today$=sysinfo.system_date$
IF CVS(callpoint!.getColumnData("FUT_OLDDOM.START_DATE"),2)=""
	callpoint!.setColumnData("FUT_OLDDOM.START_DATE",today$)
	callpoint!.setStatus("REFRESH")
	callpoint!.setStatus("MODIFIED")
ENDIF

[[FUT_OLDDOM.<CUSTOM>]]



