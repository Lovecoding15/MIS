package com.basis;

import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.CharArrayReader;

/**
 * @author  Brian Hipple
 */
public class BCommerceWSResponse
{
    /*
     * Member variables
     */
    private int    m_errorCode;
    private String m_errorMessage;    
    
    public static final int SUCCESS=0;
    public static final int FAILURE=-1;

    /*
     * Default constructor
     */
    public BCommerceWSResponse()
    {
        // Initialize values 
        m_errorCode=FAILURE;
        m_errorMessage="";
    }
    
    /*
     * Getters - Returns the specified customer information response value
     */
    public int getErrorCode()
    {   
        return m_errorCode;
    }
    public String getErrorMessage()
    {   
        return m_errorMessage;
    }
 
    /*
     * Setters - Sets the specified customer information response value
     */
    public void setErrorCode(int p_errorCode)
    {   
        m_errorCode = p_errorCode; 
    }
    public void setErrorMessage(String p_errorMessage)
    {   
        m_errorMessage = p_errorMessage; 
    }
    
    /*
     * Returns the CustomerInfoResponse as a string
     */
    public String toByteString()
    { 
        ByteArrayOutputStream bytes = new ByteArrayOutputStream();
        PrintWriter writer = new PrintWriter(bytes);
        writer.println(new Integer(getErrorCode()).intValue());
        String errorMessage = getErrorMessage();
        writer.println(getErrorMessage());
        writer.flush();
        return bytes.toString();  
    }
    
    /*
     * Creates and returns a BCommerceWSResponse object given a string 
     */
    public static BCommerceWSResponse fromByteString(String p_string)
    {
        BCommerceWSResponse bcommerceWSResponse = null;
        
        int size = p_string.length();
        if (size > 0)
        {
            char chars[] = new char[size];
            p_string.getChars(0, size-1, chars, 0);
            CharArrayReader charReader = new CharArrayReader(chars);
            BufferedReader reader = new BufferedReader(charReader);
            bcommerceWSResponse = new BCommerceWSResponse();

            try
            {
                bcommerceWSResponse.setErrorCode(new Integer(reader.readLine()).intValue());
                bcommerceWSResponse.setErrorMessage(reader.readLine());
            }
            catch(IOException ioe)
            {
                ioe.printStackTrace();
            }
        }
        
        return bcommerceWSResponse;
    }
    
}
