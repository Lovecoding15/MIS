package com.basis.creditCard;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

public class TestDriver 
{
	public static void main(String[] args) throws FileNotFoundException, IOException
	{
		String[] tests = {"APPROVED_", "DECLINED_", "CVV2FAILED_", "CVV2NOTSUP_", 
				"AVSADDRFAIL_", "AVSNOTSUP_", "AVSZIPFAIL_", "BADNUMBER_", "BADEXPDATE_", 
				"WO_APPROVED_", "WO_DECLINED_"};
		
		Integer account = new Integer(123456);

		for(String test : tests)
		{
			Map<String, String> params = getTestData(test);
			
			CreditCardAuthorization cca = new CreditCardAuthorization("C:/eclipse/workspace/PayFlowPro43/ec_CreditCardProcessing.properties");
	
			String uniqueID = getUniqueID(account);
			
			System.out.println(params.get("message"));
			System.out.println("");
			
			String responseData = null;
			if (test.startsWith("WO_"))
				responseData = cca.processAuthorizationWithoutAVSandCSCTest(params.get("account"), params.get("cardType"), params.get("expDate"), params.get("amount"), params.get("name"), uniqueID, params.get("comment"));
			else
				responseData = cca.processAuthorizationTest(params.get("account"), params.get("cardType"), params.get("expDate"), params.get("amount"), params.get("name"), uniqueID, params.get("cvv2"), params.get("street"), params.get("zip"), params.get("comment"));
	
			String template = cca.getReponseStringTemplateDefinition();

			System.out.println("BBj TEMPLATE: " + template);
			System.out.println(responseData);
			System.out.println("*********************************************************************************");
			System.out.println("");
			
			account++;
		}
	}
	
	private static String getUniqueID(Integer account)
	{
		// make a unique id based on the date
		GregorianCalendar gc = new GregorianCalendar();
		StringBuffer unique = new StringBuffer();
		
		// year
		unique.append(Integer.valueOf(gc.get(GregorianCalendar.YEAR)).toString());
		// month
		String wrk = Integer.valueOf(gc.get(GregorianCalendar.MONTH)+1).toString();
		if (wrk.length() == 1)
			unique.append("0" + wrk);
		else
			unique.append(wrk);
		// day
		wrk = Integer.valueOf(gc.get(GregorianCalendar.DAY_OF_MONTH)).toString();
		if (wrk.length() == 1)
			unique.append("0" + wrk);
		else
			unique.append(wrk);
		// hour
		wrk = Integer.valueOf(gc.get(GregorianCalendar.HOUR_OF_DAY)).toString();
		if (wrk.length() == 1)
			unique.append("0" + wrk);
		else
			unique.append(wrk);
		// minute
		wrk = Integer.valueOf(gc.get(GregorianCalendar.MINUTE)).toString();
		if (wrk.length() == 1)
			unique.append("0" + wrk);
		else
			unique.append(wrk);
		// second
		wrk = Integer.valueOf(gc.get(GregorianCalendar.SECOND)).toString();
		if (wrk.length() == 1)
			unique.append("0" + wrk);
		else
			unique.append(wrk);
		// millisecond
		wrk = Integer.valueOf(gc.get(GregorianCalendar.MILLISECOND)).toString();
		if (wrk.length() == 1)
			unique.append("00" + wrk);
		else if (wrk.length() == 2)
			unique.append("0" +wrk);
		else
			unique.append(wrk);
		// order id
		unique.append(account.toString());

		return unique.toString();
	}
	
	private static Map<String, String> getTestData(String testPrefix) throws FileNotFoundException, IOException
	{
		// get the test data
		BufferedInputStream bis = null;
		FileInputStream fis = null;
		File pf = new File("C:/eclipse/workspace/PayFlowPro43/testingData.properties");
		fis = new FileInputStream(pf);
		bis = new BufferedInputStream(fis);
		Properties tranProps = new Properties(); 
		tranProps.load(bis);
		
		Map<String, String> testParams = new HashMap<String, String>();
			
		testParams.put("message", tranProps.getProperty(testPrefix + "MESSAGE"));
		testParams.put("account", tranProps.getProperty(testPrefix + "ACCOUNT"));
		testParams.put("cardType", tranProps.getProperty(testPrefix + "CARDTYPE"));
		testParams.put("expDate", tranProps.getProperty(testPrefix + "EXPDATE"));
		testParams.put("amount", tranProps.getProperty(testPrefix + "AMOUNT"));
		testParams.put("name", tranProps.getProperty(testPrefix + "NAME"));
		testParams.put("cvv2", tranProps.getProperty(testPrefix + "CVV2"));
		testParams.put("street", tranProps.getProperty(testPrefix + "STREET"));
		testParams.put("zip", tranProps.getProperty(testPrefix + "ZIP"));
		testParams.put("comment", tranProps.getProperty(testPrefix + "COMMENT"));
		
		return testParams;
	}
}
