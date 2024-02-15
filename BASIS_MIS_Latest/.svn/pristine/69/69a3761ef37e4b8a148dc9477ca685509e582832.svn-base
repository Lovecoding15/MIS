package com.basis.creditCard;

import com.basis.creditCard.Response;

import java.io.BufferedInputStream;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.util.GregorianCalendar;
import java.util.Properties;

import paypal.payflow.*;

public class CreditCardAuthorization 
{
	// Set defaults
	static String hostAddress = "pilot-payflowpro.paypal.com";
	static Integer hostPort = Integer.decode("443");
	static Integer timeout = Integer.decode("30");
	static String proxyAddress  = "";
	static Integer proxyPort = Integer.decode("0");
	static String proxyLogon    = "";
	static String proxyPassword = "";
	
	private Response response = new Response("", false);
	
	private Properties tranProps = new Properties();
	
	private Boolean ready = false;
	
	private String logfile = null;
	
	private Boolean lowTestMode = false;
	
	public CreditCardAuthorization(String fullPathToPropertiesFile)
	{
		loadProperties(fullPathToPropertiesFile);
	}
	
	protected String processAuthorizationTest(String account, String cardType, String expDate, String amount, String name, String uniqueID, String cvv2, String street, String zip, String comment)
	{
		lowTestMode = true;
		return processAuthorization(account, cardType, expDate, amount, name, uniqueID, cvv2, street, zip, comment);
	}
	
	public String processAuthorization(String account, String cardType, String expDate, String amount, String name, String uniqueID, String cvv2, String street, String zip, String comment)
	{
		if (ready)
		{
			PayflowAPI pn = new PayflowAPI(hostAddress, hostPort, timeout, proxyAddress, proxyPort, proxyLogon, proxyPassword);
			
	        // perform a $1 transaction for address and csc verification
			// use only the first 5 byptes of the zip
			String zipCode = null;
			if (zip.length() > 5) 
				zipCode = zip.substring(0, 5);
			else
				zipCode = zip;
			String paramList = buildParameterListWithVerification(account, expDate, name, uniqueID+"ver", cvv2, street, zipCode, comment);

			if (lowTestMode) System.out.println("VER PARAMLIST: " + paramList);
			
			String rc = pn.submitTransaction(paramList, PayflowUtility.getRequestId());
			response = new Response(rc, true);
			String result = (response.isApproved() ? "Approved" : "Declined");
			logIt(uniqueID, "avsCscCheck", result, name, "1.00" , cardType, comment, rc);
			
			if (lowTestMode) System.out.println("VER REPONSE: " + rc);
			
			if (response.isApproved())
			{
				// we have an approved avs and csc
				paramList = buildParameterList(account, expDate, amount, name, uniqueID, comment);
				if (lowTestMode) System.out.println("FIN PARAMLIST: " + paramList);
				
				rc = pn.submitTransaction(paramList, PayflowUtility.getRequestId());
				response = new Response(rc, false);
				result = (response.isApproved() ? "Approved" : "Declined");
				logIt(uniqueID, "actualCharge", result, name, amount, cardType, comment, rc);
				if (lowTestMode) System.out.println("FIN RESPONSE: " + rc);
			}
		}
		else
		{
			logIt(uniqueID, "Not Ready", "Not Ready", name, amount, cardType, comment, "Not Ready");
		}
		return response.getResponseData();
	}
	
	protected String processAuthorizationWithoutAVSandCSCTest(String account, String cardType, String expDate, String amount, String name, String uniqueID, String comment)
	{
		lowTestMode = true;
		return processAuthorizationWithoutAVSandCSC(account, cardType, expDate, amount, name, uniqueID, comment);
	}

	public String processAuthorizationWithoutAVSandCSC(String account, String cardType, String expDate, String amount, String name, String uniqueID, String comment)
	{
		if (ready)
		{
			PayflowAPI pn = new PayflowAPI(hostAddress, hostPort, timeout, proxyAddress, proxyPort, proxyLogon, proxyPassword);
			
			String paramList = buildParameterList(account, expDate, amount, name, uniqueID, comment);
			if (lowTestMode) System.out.println("FIN PARAMLIST: " + paramList);
				
			String rc = pn.submitTransaction(paramList, PayflowUtility.getRequestId());
			response = new Response(rc, false);
			String result = (response.isApproved() ? "Approved" : "Declined");
			logIt(uniqueID, "actualCharge", result, name, amount, cardType, comment, rc);
			if (lowTestMode) System.out.println("FIN RESPONSE: " + rc);
		}
		else
		{
			logIt(uniqueID, "Not Ready", "Not Ready", name, amount, cardType, comment, "Not Ready");
		}
		return response.getResponseData();
	}

	private String buildParameterListWithVerification(String account, String expDate, String name, String uniqueID, String cvv2, String street, String zip, String comment)
	{
		StringBuffer sb = buildParamaterListHeader(true);
		String sep = "&";
		
		// varies with the transaction
		sb.append("ACCT=" + account + sep);
		sb.append("EXPDATE=" + expDate + sep);
		
		/*
		 * NOTE: for FDMS Nashville the transaction will be approved even though
		 * the cvv2 does not match. It is up to the merchant to decide to
		 * proceed or not. We will not proceed. That is why we are doing this
		 * authorization transaction only for $1 in order to get the return values for
		 * cvv2 and avs matches. If they don't match we will refuse the transaction and
		 * allow never settle this $1 transaction.
		 */
		sb.append("CVV2=" + cvv2 + sep);

		/*
		 * NOTE: the same situation exists with Address Verification as with CSC, see above
		 * 
		 */
		sb.append("STREET=" + street + sep);
		sb.append("ZIP=" + zip + sep);

		sb.append("AMT=" + "1.00" + sep);
		sb.append("NAME=" + name + sep);
		sb.append("CUSTREF=" + uniqueID + sep);

		sb.append("COMMENT1=" + comment + sep);
		
		sb.append("VERBOSITY=" + tranProps.getProperty("VERBOSITY"));
		
		return sb.toString();
	}
	
	private String buildParameterList(String account, String expDate, String amount, String name, String uniqueID, String comment)
	{
		StringBuffer sb = buildParamaterListHeader(false);
		String sep = "&";

		// varies with the transaction
		sb.append("ACCT=" + account + sep);
		sb.append("EXPDATE=" + expDate + sep);
		sb.append("AMT=" + amount + sep);
		sb.append("NAME=" + name + sep);
		sb.append("CUSTREF=" + uniqueID + sep);
		sb.append("COMMENT1=" + comment + sep);
		sb.append("VERBOSITY=" + tranProps.getProperty("VERBOSITY"));
		
		return sb.toString();
	}
	
	private StringBuffer buildParamaterListHeader(Boolean forVerification)
	{
		StringBuffer sb = new StringBuffer();
		String sep = "&";
		
		// required for all transactions
		if (forVerification)
			sb.append("TRXTYPE=" + tranProps.getProperty("TRXTYPE_VERIFICATION") + sep);
		else
			sb.append("TRXTYPE=" + tranProps.getProperty("TRXTYPE") + sep);
		
		sb.append("TENDER=" + tranProps.getProperty("TENDER") + sep);
		sb.append("VENDOR=" + tranProps.getProperty("VENDOR") + sep);
		sb.append("USER=" + tranProps.getProperty("USER") + sep);
		sb.append("PWD=" + tranProps.getProperty("PWD") + sep);
		sb.append("PARTNER=" + tranProps.getProperty("PARTNER") + sep);
		
		return sb;
	}
	
	private void loadProperties(String fullPathToPropertiesFile)
	{
		try
		{
			BufferedInputStream bis = null;
			FileInputStream fis = null;
			File pf = new File(fullPathToPropertiesFile);
			fis = new FileInputStream(pf);
			bis = new BufferedInputStream(fis);
			tranProps.load(bis);
			
			hostAddress = tranProps.getProperty("HostAddress");
			hostPort = Integer.decode(tranProps.getProperty("HostPort"));
			timeout = Integer.decode(tranProps.getProperty("Timeout"));
			proxyAddress  = tranProps.getProperty("ProxyAddress");
			proxyPort = Integer.decode(tranProps.getProperty("ProxyPort"));
			proxyLogon    = tranProps.getProperty("ProxyLogon");
			proxyPassword = tranProps.getProperty("ProxyPassword");
			logfile = tranProps.getProperty("logfile");
			
			ready = true;
		}
		catch(FileNotFoundException fnfe)
		{
			response = new Response("RESULT=-150&RESPMSG=Properties File Not Found", false);
		}
		catch(IOException ioe)
		{
			response = new Response("RESULT=-150&RESPMSG=IO Exception on the Properties File", false);
		}
	}
	
	public String getReponseStringTemplateDefinition()
	{
		return response.getResponseStringTemplateDefinition();
	}
	
	private void logIt(String uniqueID, String tranType, String result, String name, String amount, String cardType, String comment, String responseText)
	{
		if (logfile != null && !logfile.equals("") && !logfile.equalsIgnoreCase("off"))
		{
			GregorianCalendar gc = new GregorianCalendar();
			StringBuffer todaysLogfile = new StringBuffer(logfile);
			todaysLogfile.append("." + gc.get(GregorianCalendar.YEAR));
			
			String month = Integer.toString(gc.get(GregorianCalendar.MONTH) + 1);
			if (month.length() == 1) month = "0" + month;
			todaysLogfile.append(month);
			
			String day = Integer.toString(gc.get(GregorianCalendar.DAY_OF_MONTH));
			if (day.length() == 1) day = "0" + day;
			todaysLogfile.append(day);
			try
			{
				BufferedWriter out = new BufferedWriter(new FileWriter(todaysLogfile.toString(), true));
				StringBuffer buf = new StringBuffer();
				buf.append("uniqueID:" + uniqueID+"~");
				buf.append("tranType:" + tranType+"~");
				buf.append("result:" + result+"~");
				buf.append("name:" + name+"~");
				buf.append("amount:" + amount+"~");
				buf.append("cardType:" + cardType+"~");
				buf.append("comment:" + comment+"~");
				buf.append("response:" + responseText + "\n");
				out.write(buf.toString());
				out.close();
			}
			catch (IOException e)
			{
				// skip log
			}
		}
	}
}
