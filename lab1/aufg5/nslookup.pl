#! usr/bin/perl
use IO::Socket;
$b_net = "147.86";
for ($i=3; $i<4; $i++) {
for ($j=88; $j<89; $j++) {
$ipaddr = "$b_net.$i.$j";
$name = gethostbyaddr(${ipaddr}, AF_INET);
if ($name){
open (MYFILE, '>>data.txt');
print MYFILE "${ipaddr} & ${name} \\\\ \n";
}}}
