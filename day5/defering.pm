#!/usr/bin/perl

sub check_required_item {
    my $who = shift;
    my $items = shift;

    my %whose_items = map { $_, 1 } @$items;

    my @required = qw/preserver suncreen water_bottle jacket/;
    my @missing = ();

    foreach(@required){
        unless($whose_items{$_}){
            print "$who is missing $_\n";
            push @missing, $_; 
        }
    }

    if(@missing){
        print "Adding @missing to @$items for $who\n";
        push @$items, @missing;
    }
}

my @user1_items = qw/blue_shirt hat jacket preserver sunscreen/;
my @user1 = ('Skipper' => \@user1_items);

check_required_item( @user1[0], @user1[1] );