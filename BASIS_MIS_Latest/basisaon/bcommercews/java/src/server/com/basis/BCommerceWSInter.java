package com.basis;

/**
 * BCommerceWSInter is the interface offered by the BCommerceWS web service.  It is 
 * implemented by BCommerceWSImpl.  
 * @see BCommerceWSImpl
 *
 * @author  Brian Hipple
 */
public interface BCommerceWSInter extends java.rmi.Remote 
{
    public CustomerInfoResponse getCustomerInfo(String p_customerNumber, String p_customerPassword) 
        throws java.rmi.RemoteException;
}
