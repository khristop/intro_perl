#!/usr/bin/perl

# unless
# !if opposite if

unless(){

}else{

}

# !while opposite while

until ($j > $i) {
 $j *= 2;
}

# expresion modifiers
my $n = 2;
print "$n is a negative number.\n" if $n < 0;

&error("Invalid input") unless &valid($input);
$i *= 2 until $i > $j;
print " ", ($n += 2) while $n < 10;
&greet($_) foreach @person;

# naked block
# only run one-loop
{
 print "Please enter a number: ";
 chomp(my $n = <STDIN>);
 my $root = sqrt $n; # calculate the square root
 print "The square root of $n is $root.\n";
}

# elif

if(){

}elsif(){

}elsif(){

}else{

}


my @people = qw{ fred barney fred wilma dino barney fred pebbles };
my %count; # new empty hash
$count{$_}++ foreach @people; # creates new keys and values as needed

# END Operators
# Used on  for, foreach, while, until, or the naked block.
# last operator is like an "Emergency exit"
while (<STDIN>) {
 if (/__END__/) {
 # No more input on or after this marker line
 last;
 } elsif (/fred/) {
 print;
 }
}

# next operator
while(<>){
    foreach(split){
        $total++;
        next if /\W/;
        $valid++;
        $count{$_}++;
    }
}

print "total things = $total, valid words = $valid\n";
foreach $word (sort keys %count) {
    print "$word was seen $count{$word} times.\n";
}

# redo operator
my @words = qw{ fred barney pebbles dino wilma betty };
my $errors = 0;
foreach (@words) {
    ## redo comes here ##
    print "Type the word '$_': ";
    chomp(my $try = <STDIN>);
    if ($try ne $_) {
        print "Sorry - That's not right.\n\n";
        $errors++;
        redo; # jump back up to the top of the loop
    }
}
print "You've completed the test, with $errors errors.\n";