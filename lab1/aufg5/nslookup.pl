#!/usr/bin/perl
use strict;
use IO::Socket;
my $b_net = "147.86";
my $i = 0;
my $j = 0;
my $ipaddr = "";
my $name = "";
my $myfile;

open(MYFILE, ">nslookup-output.txt");
for ($i=0; $i<256; $i++) {
	for ($j=0; $j<256; $j++) {
		$ipaddr = "$b_net.$i.$j";
		#print "trying to look up "."$ipaddr"."\n";
		my $iaddr = inet_aton($ipaddr);
		$name  = gethostbyaddr($iaddr, AF_INET);
		if ($name){
			print $ipaddr.":\t".$name."\n";
			print MYFILE $ipaddr." & ".$name." \\\\ \n";
		}
	}
}
close(MYFILE);
