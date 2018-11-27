
my @anArray ;
{
    my @list = qw(blue hat jacket preserver screen sun);
    @anArray = ('The array', \@list);
}

my $anotherArray = [ qw(blue hat jacket preserver screen sun) ];

my $anotherArrayNqw = [ 'blue', 'hat', 'jacket', 'preserver', 'screen', 'sun' ];

my $otherArray ;
{
    my @temporal = (qw(blue hat jacket preserver screen sun));
    $otherArray = \@temporal;
}

my @anArrayWName = (
    'Name',
    [ qw(blue hat jacket preserver screen sun) ]
);

sub array_nested {
    return (
        ['person 1', [ qw(blue hat jacket preserver screen sun)]],
        ['person 2', [ qw(blue hat jacket preserver screen sun)]],
        ['person 3', [ qw(blue hat jacket preserver screen sun)]],
    );
}

my @complexArray = array_nested();

print "hello";