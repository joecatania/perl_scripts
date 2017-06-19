#!/usr/bin/perl

use strict;
use Data::Dumper;

my @show_int_stats;
my %show_int_values;
my %show_int_ports;
my $show_int_values;

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


#$show_int_values{'status'} = 'notconnect';
#$show_int_values{'vlan'} = '100';
#$show_int_values{'duplex'} = 'auto';
#$show_int_values{'speed'} = 'a-100';



#$show_int_ports{'port-1'} = 'Gi1/1';
#$show_int_ports{'port-2'} = 'Gi1/2';
#$show_int_ports{'port-3'} = 'Gi1/3';

$show_int_ports{'port-1'} = { 'status' => 'notconnect', 'vlan' => '100', 
                              'duplex' => 'auto', 'speed' => 'a-100'}; 
    


    
my @int_keys_ports = keys %show_int_ports;

for my $keys_ports (@int_keys_ports) {
    print("value of key $keys_ports: $show_int_ports{$keys_ports}\n");    
}

print Dumper %show_int_ports;

