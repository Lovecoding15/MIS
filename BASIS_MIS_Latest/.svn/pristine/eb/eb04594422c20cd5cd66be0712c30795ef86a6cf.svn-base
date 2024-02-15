# author Jeff Ash
# date   July 16, 1999
#
# This script takes an TXT file and replaces references made to fields with the
# actual values of those fields.

#set variables
$fixedEmailHeader = "From: BASIS Customer Service " .
                    "<cust\@basis.cloud>\n" .
                    "Reply-To: cust\@basis.cloud\n" .
			  "Cc: cust\@basis.cloud\nSubject: ";
($use_new, $use_file, $fax_file, $country, $send_to, $subject, $name, $part_num, $date, 
 $revision, $os_rev, $order, $user_count, $customer,
 $ser_num, $auth_num, $feature, $enc_code, $lic_rev, $host_id,
 $expire, $checksum, $users, $description, $instructions) = @ARGV;

$file = "email-$use_file-$country.txt";
$outfile = $fax_file;

%subst = (
           "<%part_num%>" => &padright($part_num,44),
           "<%revision%>" => &padright($revision,5),
           "<%os_rev%>" => &padright($os_rev, 42),
           "<%user_count%>" => &padright($user_count,8),
           "<%date%>" => &padright($date,10),
           "<%order%>" => &padright($order,7),
           "<%customer%>" => &padright($customer,7),
           "<%ser_num%>" => &padright($ser_num,9),
           "<%auth_num%>" => &padright($auth_num,10),
           "<%feature%>" => &padright($feature,16),
           "<%lic_rev%>" => &padright($lic_rev,24),
           "<%expire%>" => &padright($expire,23),
           "<%users%>" => &padright($users,18),
           "<%enc_code%>" => &padright($enc_code,12),
           "<%host_id%>" => &padright($host_id,20),
           "<%checksum%>" => &padright($checksum,3),
           "<%description%>" => &padright($description, 44),
           "<%instructions%>" => &padright($instructions, 240)
         );
         
if (open(INPUT,"$outfile"))
{
	close(INPUT);
	open(OUTPUT,">> $outfile") || die("Cannot open output file: $!");

        print OUTPUT "\n--==========_BASIS\n"
        . "Content-Disposition: attachment\n"
                . "Content-Transfer-Encoding: 7bit\n"
                    . "Content-Type: text/plain;\n "
                        . "charset=\"us-ascii\"; "
                            . "name=\"$ser_num.txt\"\n\n";		

}	
else
{
    open(OUTPUT,"> $outfile") || die("Cannot open output file: $!");
    
    print OUTPUT "Mime-Version: 1.0\n"
        . "Content-Type: multipart/mixed;\n boundary=\"==========_BASIS\"\n"
            . "To: <$send_to>\n" . $fixedEmailHeader
                . $subject . " -- "
                    . "This message is in MIME format\n";

    print OUTPUT "--==========_BASIS\nContent-Type: text/plain;\n "
        ."charset=\"us-ascii\"\n"
            . "Content-Transfer-Encoding: 7bit\n\n";

    print OUTPUT "The attached file contains the information regarding your " 
        . "order.  To view your order information, simply open the attached "
        . "text file.  To print the order, please use a 9 point, or smaller, "
        . "fixed width font such as Courier, or System, so that the document "
        . "will align correctly on the page.\n\n\n"
        . "Thank you,\n\n"
        . "BASIS Customer Service\n";

    print OUTPUT "\n--==========_BASIS\n"
        . "Content-Disposition: attachment\n"
                . "Content-Transfer-Encoding: 7bit\n"
                    . "Content-Type: text/plain;\n "
                        . "charset=\"us-ascii\"; "
                            . "name=\"$ser_num.txt\"\n\n";		
}

open(INPUT,"$file") || die("Cannot open file: $!");

while (<INPUT>)
{
    foreach $key (keys %subst)
    {
		if ($users ne "uncounted" && $use_file eq "win")
		{
			$_ =~ s/product program folder/BASIS License Manager program folder/g;
		}

        $_ =~ s/$key/$subst{$key}/ig;
    }
    print OUTPUT $_;
}

close(INPUT);
close(OUTPUT);

sub padright
{
    my($string, $pad) = @_;
    
    $pad = int $pad;
    
    return sprintf "%-${pad}s",$string;
};

sub padleft
{
    my($string, $pad) = @_;
    
    $pad = int $pad;
    
    return sprintf "%${pad}s",$string;
};
