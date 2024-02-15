package com.basis.creditCard;

import java.util.StringTokenizer;

public class Response
{
	private Boolean approved = false;
	private String resultCode = "None Received";
	private String payPalReferenceID = null;
	private String message = null;
	private String authCode = null;
	private String cvv2Match = null;
	private String avsAddrMatch = null;
	private String avsZipMatch = null;
	private StringBuffer otherCodes = null;

	public Response(String respStr, Boolean firstStep)
	{
		if (respStr == null || respStr.equals(""))
		{
			approved = false;
			message = "Null reponse string submitted";
		}
		else
		{
			// parse out the result string
			StringTokenizer st = new StringTokenizer(respStr, "&");

			otherCodes = new StringBuffer();

			while (st.hasMoreElements())
			{
				StringTokenizer element = new StringTokenizer(st.nextToken(), "=");
				String name = element.nextToken();
				String value = element.nextToken();

				if (name.equalsIgnoreCase("RESULT"))
				{
					if (value.equals("0"))
						approved = true;
					resultCode = value;
				}
				else if (name.equalsIgnoreCase("RESPMSG"))
					message = value;
				else if (name.equalsIgnoreCase("PNREF"))
					payPalReferenceID = value;
				else if (name.equalsIgnoreCase("AUTHCODE"))
					authCode = value;
				else if (name.equalsIgnoreCase("CVV2MATCH"))
					cvv2Match = value;
				else if (name.equalsIgnoreCase("AVSADDR"))
					avsAddrMatch = value;
				else if (name.equalsIgnoreCase("AVSZIP"))
					avsZipMatch = value;
				else
					otherCodes.append(name + "=" + value + "&");
			}

			/*
			 * for avs and cvv2 transaction change the approved to false if the response is N
			 * possible return values Y = a match, X = not supported by back end bank, N = no match
			 * we want it disallow the transaction if the result is N only
			 *
			 * Do this only if it is the firstStep
			 */
			if (firstStep)
			{
				if (cvv2Match != null && cvv2Match.equalsIgnoreCase("N"))
				{
					approved = false;
					message = "Declined for card security code mis-match";
				}
				else if (avsZipMatch != null && avsZipMatch.equalsIgnoreCase("N"))
				{
					approved = false;
					message = "Declined for a zip code mis-match";
				}

				/*
				* no longer evaluating the AVSMATCH as of 4/6/2020
				*else if (avsAddrMatch != null && avsAddrMatch.equalsIgnoreCase("N"))
				*{
				*	approved = false;
				*	message = "Declined for an address mis-match";
				*}
				*/
			}
		}
	}

	public String getResponseStringTemplateDefinition()
	{
		StringBuffer sb = new StringBuffer();
		sb.append("IS_APPROVED:N(1*=10),RESULT_CODE:N(7*=10),PAYPAL_REF_ID:C(12*=10),AUTHCODE:C(6*=10),");
		sb.append("CVV2MATCH:C(1*=10),AVSADDRMATCH:C(1*=10),AVSZIPMATCH:C(1*=10),MESSAGE:C(512*=10),OTHER:C(512*=10)");
		return sb.toString();
	}

	public String getResponseData()
	{
		StringBuffer retbuf = new StringBuffer();

		// is_approved
		if (this.isApproved())
			retbuf.append("1\n");
		else
			retbuf.append("0\n");

		// result_code
		retbuf.append(resultCode + "\n");

		// paypal_ref_id
		retbuf.append((payPalReferenceID != null) ? payPalReferenceID + "\n" : "\n");

		// authCode
		retbuf.append((authCode != null) ? authCode + "\n" : "\n");

		// cvv2Match
		retbuf.append((cvv2Match != null) ? cvv2Match + "\n" : "\n");

		// avsAddrMatch
		retbuf.append((avsAddrMatch != null) ? avsAddrMatch + "\n" : "\n");

		// avsZipMatch
		retbuf.append((avsZipMatch != null) ? avsZipMatch + "\n" : "\n");

		// message
		retbuf.append((message != null) ? message + "\n" : "\n");

		// other codes
		retbuf.append((otherCodes.length() > 0) ? otherCodes.toString() + "\n" : "\n");

		return retbuf.toString();

	}

	public Boolean isApproved()
	{
		return approved;
	}

	public String getMessage()
	{
		return message;
	}

	public String getPayPalReferenceID()
	{
		return payPalReferenceID;
	}

	public String getAuthCode()
	{
		return authCode;
	}

	public String getCvv2Match()
	{
		return cvv2Match;
	}

	public String getAvsAddrMatch()
	{
		return avsAddrMatch;

	}

	public String getAvsZipMatch()
	{
		return avsZipMatch;
	}

	public StringBuffer getOtherCodes()
	{
		return otherCodes;
	}

	public String getResultCode()
	{
		return resultCode;
	}
}
