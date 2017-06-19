#!/usr/bin/perl

use strict;
use Data::Dumper;

my @show_int_stats;
my $line_num;
my $int_port;
my $int_status;
my $int_duplex;
my $int_speed;
my %int_hash;

@show_int_stats = (
" ",
"Port    Name               Status       Vlan       Duplex  Speed Type",
"Gi1/1                      notconnect   1            auto   a-100 No Gbic",
"Gi1/2                      notconnect   1            auto   auto No Gbic",
"Gi5/1                      notconnect   1            auto   auto 10/100/1000-TX",
"Gi5/2                      notconnect   1            auto   auto 10/100/1000-TX",
"Gi5/3                      notconnect   1            auto   auto 10/100/1000-TX",
"Gi5/4                      notconnect   1            auto   auto 10/100/1000-TX",
"Fa6/1                      connected    1          a-full  a-100 10/100BaseTX",
"Fa6/2                      connected    2          a-full  a-100 10/100BaseTX",
"Fa6/3                      notconnect   1            auto   auto 10/100BaseTX",
"Fa6/4                      notconnect   1            auto   auto 10/100BaseTX",
"Switch#"
);

#print("show_int_stats: @show_int_stats\n");

$line_num = 1;

foreach my $line (@show_int_stats) {
    #print("num: $line_num\n");
    print("line $line_num: $line\n");
    
    if ($line =~ /(\D+\d\/\d)/ ) {
        $int_port = $1;
        print("int_port: $int_port\n");   
    }
    
    if ($line =~ /(notconnect|connected)/ ) {
        $int_status = $1;
        print("int_status: $int_status\n");   
    }
    
    if ($line =~ /(auto|a-full)/ ) {
        $int_duplex = $1;
        print("int_duplex: $int_duplex\n");   
    }
    
    if ($line =~ /(auto|a-100)/ ) {
        $int_speed = $1;
        print("int_speed: $int_speed\n");   
    }
    
   $int_hash{'port'} = $int_port;
   $int_hash{'status'} = $int_status;
   
   print("int_hash{'port'} = $int_hash{'port'}\n");
   print("int_hash{'status'} = $int_hash{'status'}\n");
   
   
    
    
    $line_num = $line_num +1;
}

for my $key ( sort keys %int_hash ) {
       print("$key = $int_hash{$key}\n");    
   }
   
   while ( my ( $key, $value) = each %int_hash) {
       print("$key = $value\n");    
   }
   
   print("data dumper:\n");
   print Dumper %int_hash;
   
   print("hash:\n");
   #print \%int_hash;
   
   my @int_keys = keys %int_hash;
   
   for my $int_keys (@int_keys) {
       print("value of key $int_keys: $int_hash{$int_keys}\n");    
   }

