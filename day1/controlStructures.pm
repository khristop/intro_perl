#!/usr/bin/perl

# use strict;
# use warnings;

#While control structure

#Add up some odd numbers

$n = 1;

while($n < 10){
    $sum += $n;
    $n +=2 ; # nex odd number 
}

print "Total was $sum .\n";