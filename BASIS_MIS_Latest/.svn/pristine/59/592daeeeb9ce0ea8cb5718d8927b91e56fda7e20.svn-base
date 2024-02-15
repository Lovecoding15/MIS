package com.basis;

import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.CharArrayReader;

/**
 * @author  Brian Hipple
 */
public class CustomerInfoResponse extends BCommerceWSResponse
{
    /*
     * Member variables
     */
    private CustomerInfo m_customerInfo;

    /*
     * Default constructor
     */
    public CustomerInfoResponse()
    {
    }
    
    /*
     * Getters - Returns the specified customer information response value
     */
    public CustomerInfo getCustomerInfo()
    {   
        return m_customerInfo;
    }
 
    /*
     * Setters - Sets the specified customer information response value
     */
    public void setCustomerInfo(CustomerInfo p_customerInfo)
    {   
        m_customerInfo = p_customerInfo;
    }
    
    /*
     * Returns the CustomerInfoResponse as a string
     */
    public String toByteString()
    { 
        CustomerInfo customerInfo = null;
        ByteArrayOutputStream bytes = new ByteArrayOutputStream();
        PrintWriter writer = new PrintWriter(bytes);
        writer.print(super.toByteString());
        customerInfo = getCustomerInfo();
        if (customerInfo != null)
        {
            writer.print(customerInfo.toByteString());
        }
        writer.flush();
        return bytes.toString();  
    }
    
    /*
     * Creates and returns a CustomerInfoResponse object given a string 
     */
    public static CustomerInfoResponse fromByteString(String p_string)
    {
        int size = p_string.length();
        CustomerInfoResponse customerInfoResponse = null;
        
        if (size > 0)
        {
            char chars[] = new char[size];
            p_string.getChars(0, size-1, chars, 0);
            CharArrayReader charReader = new CharArrayReader(chars);
            BufferedReader reader = new BufferedReader(charReader);
            customerInfoResponse = new CustomerInfoResponse();

            try
            {
                customerInfoResponse.setErrorCode(new Integer(reader.readLine()).intValue());
                customerInfoResponse.setErrorMessage(reader.readLine());
                String line = null;
                String customerInfoBytes="";
                while ((line=reader.readLine()) != null) 
                {
                    customerInfoBytes = customerInfoBytes + line + "\r\n";
                }
                if (customerInfoBytes.length() > 0)
                {
                    customerInfoResponse.setCustomerInfo(CustomerInfo.fromByteString(customerInfoBytes));
                }
            }
            catch(IOException ioe)
            {
                ioe.printStackTrace();
            }
        }

        return customerInfoResponse;
    }
    
}
