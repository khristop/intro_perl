#!/usr/bin/perl

my @requirements = qw/ preserver sunscreen water_bottle jacket/;

my %skipper = map { $_, 1} qw/blue_shirt hat jacket preserver sunscreen/;

foreach(@requirements){
    print $_;
    unless($skipper{$_}){
        print "-> Not found";
    }
    print "\n";
}

sub check_item_required {
    my $owner = shift;
    my %items = map {$_ , 1} @_;

    for(@requirements){
        unless($items{$_}){
            print "$owner is missing -> $_ \n";
        }
    }
}

check_item_required("Gilligan",  qw/blue_shirt hat jacket preserver sunscreen/);

##### referencing an array

@exampleArray = qw( first second third);

#referencing
$first_reference = \@exampleArray;
$second_reference = $first_reference;

CORE::say("@{$second_reference}");

CORE::say(@$second_reference[1]);

