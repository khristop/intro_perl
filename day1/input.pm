#!/usr/bin/perl

$line = <STDIN>;
# chomp($line = <STDIN>); #removing the newline character

if($line eq "\n"){
    print "that was a just a blank line!\n";
}else{
    # chomp($line); #remove the newline character
    print "That line of input was: $line";
}
