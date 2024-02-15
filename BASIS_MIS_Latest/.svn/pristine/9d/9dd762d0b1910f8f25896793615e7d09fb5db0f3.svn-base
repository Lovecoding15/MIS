package com.basis;

import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.CharArrayReader;

/**
 * CustomerInfo represents data about a single customre in the BASIS customer database.  
 * It is used within BBj code and is also used in the return values of methods
 * in the Web service.  
 * 
 * When BBj code needs to write responses to the bridge channel, the BBj program
 * converts an CustomerInfo to byte[] using the method CustomerInfo.toByteString()
 *
 * Finally, the class CustomerInfoImpl (which is the actual Web service code) 
 * reads the bytes that are available in the BBjBridgeResponse and 
 * converts those bytes back into CustomerInfo using the static method
 * CustomerInfo.fromByteString()
 *
 * @author  Brian Hipple
 */
public class CustomerInfo 
{
    /*
     * Member variables
     */
    private String m_contactName="";
    private String m_companyName="";
    private String m_address1="";
    private String m_address2="";
    private String m_city="";
    private String m_state="";
    private String m_zipCode="";
    private String m_countryCode="";
    private String m_phoneNumber="";
    private String m_faxNumber="";
    private String m_customerType="";

    /*
     * Default constructor
     */
    public CustomerInfo()
    {
        // Initialize values to an empty string
        m_contactName="";
        m_companyName="";
        m_address1="";
        m_address2="";
        m_city="";
        m_state="";
        m_zipCode="";
        m_countryCode="";
        m_phoneNumber="";
        m_faxNumber="";
        m_customerType="";
    }
    
    /*
     * Getters - Returns the specified customer information
     */
    public String getContactName()
    {   
        return m_contactName;
    }
    public String getCompanyName()
    {   
        return m_companyName;
    }
    public String getAddress1()
    {   
        return m_address1;
    }
    public String getAddress2()
    {   
        return m_address2;
    }
    public String getCity()
    {   
        return m_city;
    }
    public String getState()
    {   
        return m_state;
    }
    public String getZipCode()
    {   
        return m_zipCode;
    }
    public String getCountryCode()
    {   
        return m_countryCode;
    }
    public String getPhoneNumber()
    {   
        return m_phoneNumber;
    }
    public String getFaxNumber()
    {   
        return m_faxNumber;
    }
    public String getCustomerType()
    {   
        return m_customerType;
    }
    
 
    /*
     * Setters - Sets the specified customer information
     */
    public void setContactName(String p_contactName)
    {
        if (p_contactName != null)
        {
            m_contactName = p_contactName; 
        }
    }
    public void setCompanyName(String p_companyName)
    {   
        if (p_companyName != null)
        {
            m_companyName = p_companyName; 
        }
    }
    public void setAddress1(String p_address1)
    {   
        if (p_address1 != null)
        {
            m_address1 = p_address1;
        }
    }
    public void setAddress2(String p_address2)
    {   
        if (p_address2 != null)
        {
            m_address2 = p_address2;
        }
    }
    public void setCity(String p_city)
    {   
        if (p_city != null)
        {
            m_city = p_city;
        }
    }
    public void setState(String p_state)
    {   
        if (p_state != null)
        {
            m_state = p_state;
        }
    }
    public void setZipCode(String p_zipCode)
    {   
        if (p_zipCode != null)
        {
            m_zipCode = p_zipCode;
        }
    }
    public void setCountryCode(String p_countryCode)
    {   
        if (p_countryCode != null)
        {
            m_countryCode = p_countryCode;
        }
    }
    public void setPhoneNumber(String p_phoneNumber)
    {   
        if (p_phoneNumber != null)
        {
            m_phoneNumber = p_phoneNumber;
        }
    }
    public void setFaxNumber(String p_faxNumber)
    {   
        if (p_faxNumber != null)
        {
            m_faxNumber = p_faxNumber;
        }
    }
    public void setCustomerType(String p_customerType)
    {   
        if (p_customerType != null)
        {
            m_customerType = p_customerType;
        }
    }

    
    /*
     * Returns the CustomerInfo as a string
     */
    public String toByteString()
    { 
        ByteArrayOutputStream bytes = new ByteArrayOutputStream();
        PrintWriter writer = new PrintWriter(bytes);
        writer.println(getContactName());
        writer.println(getCompanyName());
        writer.println(getAddress1());
        writer.println(getAddress2());
        writer.println(getCity());
        writer.println(getState());
        writer.println(getZipCode());
        writer.println(getCountryCode());
        writer.println(getPhoneNumber());
        writer.println(getFaxNumber());
        writer.println(getCustomerType());
        writer.flush();
        return bytes.toString();  
    }
    
    /*
     * Creates and returns a CustomerInfo object given a string 
     */
    public static CustomerInfo fromByteString(String p_string)
    {
        CustomerInfo customerInfo = null;
        int size = p_string.length();
        if (size > 0)
        {
            char chars[] = new char[size];
            p_string.getChars(0, size-1, chars, 0);
            CharArrayReader charReader = new CharArrayReader(chars);
            BufferedReader reader = new BufferedReader(charReader);
            customerInfo = new CustomerInfo();
            try
            {
                customerInfo.setContactName(reader.readLine());
                customerInfo.setCompanyName(reader.readLine());
                customerInfo.setAddress1(reader.readLine());
                customerInfo.setAddress2(reader.readLine());
                customerInfo.setCity(reader.readLine());
                customerInfo.setState(reader.readLine());
                customerInfo.setZipCode(reader.readLine());
                customerInfo.setCountryCode(reader.readLine());
                customerInfo.setPhoneNumber(reader.readLine());
                customerInfo.setFaxNumber(reader.readLine());
                customerInfo.setCustomerType(reader.readLine());
            }
            catch(IOException ioe)
            {
                ioe.printStackTrace();
            }
        }
        
        return customerInfo;
    }
    
}
