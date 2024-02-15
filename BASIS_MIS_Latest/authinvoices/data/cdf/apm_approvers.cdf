[[APM_APPROVERS.BWRI]]
rem --- if a check signer ensure that there is a path to the signature file.

if callpoint!.getColumnData("APM_APPROVERS.CHECK_SIGNER") = "Y" AND cvs(callpoint!.getColumnData("APM_APPROVERS.SIGNATURE_FILE"),3) = "" THEN
	callpoint!.setMessage("APM_NO_SIGNR")
	callpoint!.setStatus("ABORT")
endif
