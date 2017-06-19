#!/usr/bin/perl

print "Hello!\n";


#my $show_int_status = "Gi1/12 description ** Unused Port ** switchport access vlan";
#print("show_int_status: $show_int_status\n");


my %person = (fname => 'bob', lname => 'smith');

print("person: %person\n");
print("person-fname: $person{'fname'}\n");
print("person-fname: $person{fname}\n");
my $key = 'fname';
print("person-key: $person{$key}\n");