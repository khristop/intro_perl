sub greets_1 {
    my $person = shift;
    print "User1: Hey there, $person.\n";
}

sub greets_2 {
    my $person = shift;
    if($person eq 'User'){
        print "User2: Sir, yes, sir, $person!\n";
    } else {
        print "User2: Hi, $person!\n";
    }
}

sub greets_3 {
    my $person = shift;
    print "User3: you must be $person!\n";
}

my %greets = (
    User1 => \&greets_1,
    User2 => \&greets_2,
    User3 => \&greets_3,
);

my @room; # initially empty
for my $person (qw(User1 User2 User3)) {
    print "\n";
    print "$person walks into the room.\n";
    for my $room_person (@room) {
        $greets{$person}->($room_person); # speaks
        $greets{$room_person}->($person); # gets reply
    }
    push @room, $person; # come in, get comfy
}

# my @everyone = sort keys %greets;
# for my $greeter (@everyone) {
#     for my $greeted (@everyone) {
#         $greets{$greeter}->($greeted) unless $greeter eq $greeted; # no talking to yourself
#     }
# }

# for my $user ( qw(User1 User2) ){
#     $greets{$user}->('User3');
# }