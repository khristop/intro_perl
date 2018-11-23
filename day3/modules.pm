#!/usr/bin/perl
# importing two sub from File::Basename
use File::Basename qw( fileparses basename );

$someDir = "/usr/bin/perl";

# if isn't imported, u could
my $basename = File::Basename::dirname($someDir);

#Object oriented interfaces
use File::Spec;

my fileSpec = File::Spec->catfile( $homedir{gilligan}, 'web_docs', 'photos', 'USS_Minnow.gif' );

use Math:BigInt;

#Acceding and creating a new object
my $value = Math::BigInt->new(2);

$value->bpow();

print $value->bstr, "\n";

