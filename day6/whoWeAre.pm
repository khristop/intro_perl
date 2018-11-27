use v5.16;

### > v5.10
my $countdown1;
$countdown1 = sub {
    state $n = 5;
    return unless $n > -1;
    say $n--;
    $countdown1->();
};

$countdown1->();

### > v5.16
my $countdown2 = sub { 
    state $n = 5;
    return unless $n > -1;
    say $n--;
    __SUB__->();
};

$countdown2->();

sub countdown3 {
    state $n = 5;
    return unless $n > -1;
    say $n--;
    __SUB__->();
}

countdown3();