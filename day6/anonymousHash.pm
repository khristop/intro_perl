my %user1 = (
    name => 'User 1',
    hat => 'White',
    shirt => 'Red',
    position => 'First Mate',
);
my %user2 = (
    name => 'User 2',
    hat => 'Black',
    shirt => 'Blue',
    position => 'Captain'
);
my @crew = (\%user1, \%user2);

### creating hash reference one step
my $userRef1 = {
    name => 'User Hash',
    hat => 'White',
    shirt => 'Gray',
    position => 'First Mate',
};
my $userRef2 = {
    name => 'User Hash',
    hat => 'White',
    shirt => 'Gray',
    position => 'First Mate',
};
my @crewRef = ($userRef1, $userRef2);

print 'hello';