#!/usr/bin/perl

# Function of strings

# Finding a Substring with index

my $stuff = "Howdy world!";
my $where = index($stuff, "wor");

CORE::say $where;

my $last_slash = rindex("/etc/passwd", "/");

CORE::say $last_slash;

# Substring

my $part = substr("Fred J. Flinstone", 8, 5);
CORE::say $part;

my $otherPart = substr "Fred J. Flinstone", 8;
CORE::say $otherPart;

#change portion
my $string = "Hello, world!";
substr($string, 0, 5) = "Goodbye";

#binding operator
substr($string, -20) =~ s/fred/barney/g;


