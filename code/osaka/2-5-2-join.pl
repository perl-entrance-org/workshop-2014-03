#!/usr/bin/env perl
use strict;
use warnings;

my @x = qw/0120 123 XXX/;
print "@x\n";

my $y = join '-', @x;
print "$y\n";

