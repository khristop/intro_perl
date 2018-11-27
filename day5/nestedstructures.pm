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

my @skipper_items = qw/blue_shirt hat jacket preserver sunscreen/;
my @skipper = ('Skipper'=> \@skipper_items);

my @professor_items = qw/sunscreen water_bottle slide_rule batteries radio/;
my @professor = ('Professor'=> \@professor_items);

my @people = (\@skipper, \@professor);

# for my $person (@people){
#     my $who = $$person[0];
#     my $who_items = $$person[1];

#     check_required_item($who, $who_items);
# }

### are the same
CORE::say( $ { $ { $people[0] }[1] } [2]);
CORE::say $people[0]->[1]->[2];
CORE::say $people[0][1][2];


##### references to hashes

my %gilli_info = (
    name => 'Gilligan',
    hat => 'white',
    shirt => 'Red',
    position => 'First Mate'
);

my %skipper_info = (
    name => 'Skipper',
    hat => 'Black',
    shirt => 'Blue',
    position => 'Captain',
);

my $hash_ref = \%gilli_info;

## the same 
CORE::say $ gilli_info {'name'};
CORE::say $ { $hash_ref } { 'name'};

## apply to entire hash
CORE::say keys % gilli_info;
CORE::say keys % { $hash_ref };

## removing curly-braced

CORE::say $$hash_ref{'name'};
CORE::say keys %$hash_ref;

CORE::say $hash_ref->{'name'};

my @crew = (\%skipper_info, \%gilli_info);

## 4 ways to do the same!

CORE::say ${ $crew[0] } { 'name' };
CORE::say $crew[0] -> { 'name' };
CORE::say $crew[0]{ 'name' };

my $temporalRef = $crew[0];
CORE::say $$temporalRef{ 'name' };