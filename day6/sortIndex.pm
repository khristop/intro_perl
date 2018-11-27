my @input = qw(Gilligan Skipper Professor Ginger Mary Ann);
my @sorted_positions = sort { 
    CORE::say( $input[$a] cmp $input[$b]);
    $input[$a] cmp $input[$b];
} 0..$#input;
my @ranks;
@ranks[@sorted_positions] = (1 .. @sorted_positions);

foreach (0..$#ranks) {
    print "$input[$_] sorts into position $ranks[$_]\n";
}