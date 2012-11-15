#!/usr/bin/perl -w

use strict;
use Net::IP;
print "Scanning...\n";

#own ip in cidr
my $own_ip = `ip -f inet addr show dev eth0 | grep inet | gawk '{print \$2}'`;
my @own_ip2 = split('/',$own_ip);

my $hostMin = qx/ipcalc $own_ip2[0] | grep HostMin | gawk \'{print \$2}\'/;
my $hostMax = qx/ipcalc $own_ip2[0] | grep HostMax | gawk \'{print \$2}\'/;

print "hostMin: $hostMin";
print "hostMax: $hostMax";

my @ip = split('.',$hostMin);

my $ip = new Net::IP ("$hostMin - $hostMax") || die;
my @lines;
# Loop
do {
	my $act_ip =$ip->ip(); 
	my @line = `hping3 -1	$act_ip -c 1`;
	my $numlines = @line;
	print $numlines."\n";
	if($numlines ==  2){#we have an answer if the hping3 command returns more than one row
		push(@lines,$act_ip);	
	}
} while (++$ip);
foreach(@lines){
	print $_."\n";
}
