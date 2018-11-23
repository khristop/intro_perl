#use $#name to get the length of the array $nameArray[$#nameArray]
# as use -1 $nameArray[-1] <- the last element

# functions:
# reverse
@fred = 6..10;
@fred = reverse @fred; # reverse(@fred);

# sort
# order was based on ASCII

@rocks = qw/ bedrock slate rubble granite /;
@sorted = sort(@rocks); # gets bedrock, granite, rubble, slate
@back = reverse sort @rocks; # these go from slate to bedrock
@rocks = sort @rocks; # puts sorted result back into @rocks
@numbers = sort 97..102; # gets 100, 101, 102, 97, 98, 99

# each
