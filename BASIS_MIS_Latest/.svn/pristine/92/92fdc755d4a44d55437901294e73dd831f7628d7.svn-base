[[FUT_SNT04.BDEQ]]
rem ' pad the serial number to 20 with blanks and the feature to 30 with blanks

serial$ = callpoint!.getColumnData("FUT_SNT04.SERIAL_NBR")
feature$= callpoint!.getColumnData("FUT_SNT04.FEATURE")

serial$ = serial$ + fill(20," ")
serial$ = serial$(1,20)
callpoint!.setColumnData("FUT_SNT04.SERIAL_NBR",serial$,-1)

feature$ = feature$ + fill(30," ")
feature$ = feature$(1,30)
callpoint!.setColumnData("FUT_SNT04.FEATURE",feature$,-1)


[[FUT_SNT04.BSHO]]
callpoint!.setColumnEnabled("FUT_SNT04.AVAILABLE",-1)
callpoint!.setColumnEnabled("FUT_SNT04.AVAILABLE_NUM",-1)
