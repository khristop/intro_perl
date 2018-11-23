#!/usr/bin/perl

# use strict;
# use warnings;

# functions

# keys and values function

my %hash = ('a'=> 1, 'b'=> 2, 'c'=> 3);

my @keys = keys %hash; # get (a, b, c)
my @values = values %hash; # get (1, 2, 3)

my $keys_number = keys %hash; # get key-value elements number

if(%hash){
    print "The hash isn't empty!!";
}

# each function
# only in while
while( ($key, $value) = each %hash){
    print "$key => $value \n";
}

# sorting keys

foreach $key ( sort keys %hash){
    $value = $hash{$key};
    print "The value of $key => $value \n";
}

# exist function
if(! exists $hash{'d'}){
    print "Key not found in hash.\n";
}

# delete function

delete $hash{'b'}; # b was deleted

print(%hash);


