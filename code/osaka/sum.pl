#!/usr/bin/env perl
use strict;
use warnings;

my @x = ( 1 .. 100 );
my $y = 0;

for my $z ( @x ) {
    # add up each number
    # $y = $y + $z;
    $y += $z;
}
print "$y\n";
