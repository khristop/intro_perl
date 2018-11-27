my @array1 = qw(one two three four);

CORE::say "@array1", "\n";

my @reversed = reverse @array1;
my @sorted = sort @array1;

CORE::say "@reversed";
CORE::say "@sorted";

push @array1, 'five';

CORE::say "@array1";

my @numbers = (1,2,3,4,5,10,20,320);

##### grep filtering
my @biggerThan10 = grep $_ > 10, @numbers;

CORE::say "@biggerThan10";

#implicit reference
my @endOn0 = grep /0$/, @numbers;

CORE::say "@endOn0"; 

#naked block

my @oddNumbers = grep {
    $_ % 2 ;
} @numbers;

CORE::say "@oddNumbers";

##### map transforming
my @mapTransform = map { $_ + $_ } @numbers;

CORE::say "Map transforming to double value @mapTransform";

my %hash = map { $_, 3 * $_ } @numbers;

foreach (keys %hash){
    CORE::say " $_ => " , $hash{$_} ;
}

##### eval 
$total = 10;
$count = 0;

eval{
    $zeroEval = $total / $count;
};

print "Continuing after error: \" $@ \"" if $@;

###### dinamyc code with eval

my $sumEval;
eval '$sumEval = 2 + 2';

print "\nthe sum is $sumEval\n";


##### do block 

# my $variableDo = do {
#     if(... something){ }
#     elsif(... something){ }
#     else(... something){ }
# }


