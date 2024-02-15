[[FUT_SN_DORMANT.FIRM_ID.BINP]]

if callpoint!.getColumnData("FUT_SN_DORMANT.FIRM_ID") = "" then

	num_files=1
	dim open_tables$[1:num_files],open_opts$[1:num_files],open_chans$[1:num_files],open_tpls$[1:num_files]
	open_tables$[1]="FUT_SNM01",open_opts$[1]="AOT"
	gosub open_tables
	SNM01_chn=num(open_chans$[1]),SNM01_tpl$=open_tpls$[1]
	dim snm01$ : snm01_tpl$
	sn$ = callpoint!.getColumnData("FUT_SN_DORMANT.SERIAL_NBR")
	sn$ = sn$ + fill(20), sn$ = sn$(1,20)
	read record(snm01_chn, key = sn$)snm01$
	callpoint!.setColumnData("FUT_SN_DORMANT.FIRM_ID", snm01.firm_id$, 1)
	callpoint!.setColumnData("FUT_SN_DORMANT.CUSTOMER_NBR",snm01.customer_nbr$, 1)
	callpoint!.setFocus("FUT_SN_DORMANT.COMMENT1",1)
fi

