use Carp qw(croak);

## or use constant HASH => ref {};

sub show_hash {
    my $hash_ref = shift;
    my $ref_type = ref $hash_ref;
    croak "Excepcted hash reference!" unless $ref_type eq 'HASH'; ## unless $ref_type = HASH;

    foreach my $key (%$hash_ref) {

    }
}