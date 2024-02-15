
package com.basis;

public class BCommerceWSClient 
{      
    public static void main(String[] args) 
    {    
        try 
        {   
            BCommerceWS_Impl bcommerceWSImpl = new BCommerceWS_Impl();
            BCommerceWSInter bcommerceWSInter = bcommerceWSImpl.getBCommerceWSInterPort();
            CustomerInfoResponse customerInfoResponse = bcommerceWSInter.getCustomerInfo("003611","be2007");
            if (customerInfoResponse != null)
            {
                System.out.println("Error Code:" + customerInfoResponse.getErrorCode());
                System.out.println("Error Message:" + customerInfoResponse.getErrorMessage());
                if (customerInfoResponse.getErrorCode() == 0)
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
