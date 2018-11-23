#!/usr/bin/perl

$_ = "yabba dabba do";

if(/abba/){
    print "It matched!\n";
}
# p{} => Unicode property
# P{} => No unicode property

# * => Match zero or more, type of quatifier
/fred\t*barney/; # any tabs quantity
# + => Match the preceding item one or more times only by defined character, type of quatifier, one or more
/fred +barney/; # only by spaces
# . => Any character
# .* => Any character and any times

# ? => Optional, may match one time or zero times
/bamm-?bamm/; 

$_ = "abba";
if (/(.)\1\1/) { # matches 'bb' groups can u use g{N}
    print "It matched same character next to itself!\n";
}else{
    print "nope \n";
}

