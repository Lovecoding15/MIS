package com.basis;

import java.util.HashMap;

/**
 * BCommerceWSImpl is the class that is used to 'offer' an BCommerceWS web service
 * BCommerceWSImpl uses the methods of its superclass BBjWSImpl in order to 
 * invoke various BBj programs. 
 *
 * @author  Brian Hipple
 */
public class BCommerceWSImpl extends com.basis.bbj.webservice.BBjWSImpl implements BCommerceWSInter
{
    public CustomerInfoResponse getCustomerInfo(String p_customerNumber, String p_customerPassword) 
        throws java.rmi.RemoteException
    {
         HashMap paramHashMap = new HashMap();
         paramHashMap.put("CustomerNumber", p_customerNumber);
         paramHashMap.put("CustomerPassword", p_customerPassword);
         
         byte bytes[] = null;
	 bytes = invokeBBjReturnBytes("BCommerceWS.bbj",
                                      "getCustomerInfo", 
                                      paramHashMap, 
                                      300);
         
         CustomerInfoResponse customerInfoResponse = CustomerInfoResponse.fromByteString(new String(bytes));
         return customerInfoResponse;
    }

    
    /* a very very simple self test */
    public static void main(String [] args)
    {
        try
        {
            System.out.println("Creating an instance of BCommerceWSImpl class");
            BCommerceWSImpl bcommerceImpl = new BCommerceWSImpl();

            CustomerInfoResponse customerInfoResponse = bcommerceImpl.getCustomerInfo("003611","be2007");
            if (customerInfoResponse != null)
            {
                System.out.println("Error Code:" + customerInfoResponse.getErrorCode());
                System.out.println("Error Message:" + customerInfoResponse.getErrorMessage());
                if (customerInfoResponse.getErrorCode() == CustomerInfoResponse.SUCCESS)
                {
                    CustomerInfo customerInfo = customerInfoResponse.getCustomerInfo();
                    System.out.println("Contact Name:" + customerInfo.getContactName());
                    System.out.println("Company Name:" + customerInfo.getCompanyName());
                    System.out.println("Adress1:" + customerInfo.getAddress1());
                    System.out.println("Adress2:" + customerInfo.getAddress2());
                    System.out.println("City:" + customerInfo.getCity());
                    System.out.println("State:" + customerInfo.getState());
                    System.out.println("Zip Code:" + customerInfo.getZipCode());
                    System.out.println("Country Code:" + customerInfo.getCountryCode());
                    System.out.println("Phone Number:" + customerInfo.getPhoneNumber());
                    System.out.println("Fax Number:" + customerInfo.getFaxNumber());
                    System.out.println("Customer Type:" + customerInfo.getCustomerType());
                }
            }
            else
            {
                System.out.println("customerInfoResponse is null");
            }

            System.exit(0);

        } 
        catch (Exception ex) 
        {        
            ex.printStackTrace();       
        }       
    }   
  
}
