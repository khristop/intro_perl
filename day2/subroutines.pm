#!/usr/bin/perl

sub max {
    if(@_ != 2){
        print "WARNING! &max should get exactly two arguments!!\n";
    }
    my ($m, $n);
    ($m, $n) = @_;
    if($m > $n){ $m } else { $n }
}

# better max routine
sub max {
    my( $max_far ) = shift @_;
    foreach(@_){
        if($_ > $max_far){
            $max_far = $_;
        }
    }
    $max_far;
}


$maximun = &max(3,5,6,7,2);


print "the max value is $maximun \n";