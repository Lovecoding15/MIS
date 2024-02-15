/*
 * GlobalEsign.java
 *
 * Created on May 27, 2010, 1:43 PM
 */

package esign;

import com.globalesign.soap.GlobalEsignSoapExtService_Impl;
import com.globalesign.soap.GlobalEsignSoapExt;
import com.globalesign.soap.GeSigVer;
import java.rmi.RemoteException;
import java.io.*;
import java.util.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.sql.Timestamp;
import java.text.ParseException;
import java.io.FileWriter;
import java.io.PrintWriter;

/**
 *
 * @author  bhipple
 */
public class GlobalEsign 
{
    static private PrintWriter m_logWriter;
    
    /** Creates a new instance of GlobalEsign */
    public GlobalEsign() 
    {
    }
    
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) 
    {
        int rc=0;
        String inputPDFFileName="";
        String signedPDFFileName="";
        String verReportPDFFileName="";
        String baseDirName = "/basisaon/holding/";
        String logFileName = "globalEsignErr";

        TimeZone tz = TimeZone.getTimeZone("MDT"); 
        Date now = new Date();
        DateFormat df = new SimpleDateFormat ("yyyyMMddhhmmss");
        df.setTimeZone(tz);
        String currentTime = df.format(now);
        logFileName += "." + currentTime;
        File logFile = new File(baseDirName + logFileName);
        try
        {
            m_logWriter = new PrintWriter(new FileWriter(logFile,false),true);
        }
        catch(IOException ioe)
        {
            ioe.printStackTrace();
            System.exit(rc);
        }
        
        if (args.length > 2)
        {
            // Get the verification report name
            if (args[2].contains(File.separator))
            {
                verReportPDFFileName= args[2];
            }
            else
            {
                verReportPDFFileName= baseDirName + args[2];
            }
        }
        if (args.length > 1)
        {
            //Get the input PDF file names
            if (args[0].contains(File.separator))
            {
                inputPDFFileName = args[0];
            }
            else
            {
                inputPDFFileName = baseDirName + args[0];
            }
            
            //Get the signed PDF file name
            if (args[1].contains(File.separator))
            {
                signedPDFFileName = args[1];
            }
            else
            {
                signedPDFFileName = baseDirName + args[1];
            }
        }
        else
        {
            // Use defaults
            inputPDFFileName = baseDirName + "Test.pdf";
            signedPDFFileName = baseDirName + "TestSigned.pdf";
            verReportPDFFileName = baseDirName + "TestVerReport.pdf";
        }
        
        log("Input PDF File    : " + inputPDFFileName);
        log("Signed PDF File   : " + signedPDFFileName);
        log("Verfication Report: " + verReportPDFFileName);

        GlobalEsignSoapExt esignService=null;
        GlobalEsignSoapExtService_Impl esignServiceImpl = new GlobalEsignSoapExtService_Impl();
        if (esignServiceImpl != null)
        {
            esignService=esignServiceImpl.getGlobalEsignSoapExt();
            if (esignService != null)
            {
                byte[] inputPDFFileContents=null;
                String user = "basis-europe.eSign";
                String password = "w2Q;8-Dn";
                String signingName = "BASIS Europe Distribution GmbH";
                boolean insertSigningTime = false;
                String signingLocation = "D-66128 Saarbruecken";
                String signingReason = "elektronische Rechnung";
                
                try 
                {
                    File inputPDFFile = new File(inputPDFFileName);
                    FileInputStream inputPDFFileStream = new FileInputStream(inputPDFFile);
                    BufferedReader bufferedInputStream = new BufferedReader(new InputStreamReader(inputPDFFileStream));
                    ByteArrayOutputStream bos = new ByteArrayOutputStream();
                    int c;
                    while((c = bufferedInputStream.read()) != -1)
                    {
                       bos.write(c);
                    }
                    inputPDFFileContents = bos.toByteArray();
                }
                catch (IOException ioe) 
                {
                    log("IOException occured reading while reading in pdf");
                    ioe.printStackTrace(m_logWriter);
                }
                
                try
                {
                    byte[] signedPDFFileContents=null;
                    byte[] verReportPDFFileContents=null;
                    if (verReportPDFFileName.length() > 0)
                    {
                        GeSigVer geSigVer = esignService.createPdfSignatureWithVerificationReport(user,password,inputPDFFileContents,signingName,insertSigningTime,signingLocation,signingReason,signedPDFFileName);
                        signedPDFFileContents = geSigVer.getSignature();
                        verReportPDFFileContents = geSigVer.getVerificationReport();
                        // Create the verification report
                        File verReportFile = new File(verReportPDFFileName);
                        FileWriter verReportWriter = new FileWriter(verReportFile,false);
                        verReportWriter.write(new String(verReportPDFFileContents));
                        verReportWriter.flush();
                        verReportWriter.close();
                    }
                    else
                    {
                        signedPDFFileContents = esignService.createPdfSignature(user,password,inputPDFFileContents,signingName,insertSigningTime,signingLocation,signingReason);
                    }
                    // Create the signed PDF file
                    File signedPDFFile = new File(signedPDFFileName);
                    FileWriter signedPDFWriter = new FileWriter(signedPDFFile,false);
                    signedPDFWriter.write(new String(signedPDFFileContents));
                    signedPDFWriter.flush();
                    signedPDFWriter.close();
                    rc = 1;
                }
                catch (RemoteException re)
                {
                    log("RemoteException occurred calling createPdfSignature");
                    re.printStackTrace(m_logWriter);
                }
                catch (IOException ioe)
                {
                    log("RemoteException occurred calling createPdfSignature");
                    ioe.printStackTrace(m_logWriter);
                }
                catch (Throwable te)
                {
                    log("ThrowableException occurred calling createPdfSignature");
                    te.printStackTrace(m_logWriter);
                }
            }
            else
            {
                log("Could not access the GloabalEsign service");
            }
        }
        else
        {
            log("GlobalEsign service creation error. Make sure the GlobalEsign.jar is in the CLASSPATH");
        }
        
        m_logWriter.close();
        if (rc == 1)
        {
            logFile.delete();
        }
        
        System.exit(rc);
    }
    
    /**
     * @param text the text to log
     */
    public static void log(String text) 
    {
        m_logWriter.write(text + "\n");
    }
}
