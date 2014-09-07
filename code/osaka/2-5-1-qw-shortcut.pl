#!/usr/bin/env perl
use strict;
use warnings;

my @x = qw/0120 123 XXX/;
print "@x\n";

my $y = join '-', @x;

my @z = split '/', '/usr/bin/env perl';
#my @z = split /\//, '/usr/bin/env perl';

print "Q1. @x\n";
print "Q2. $y\n";

my $c = 0;
# shift @z;
for my $e ( @z ) {
    print "[$c] $e\n";
    $c++;
}

