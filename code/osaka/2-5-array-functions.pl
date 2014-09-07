#!/usr/bin/env perl
use strict;
use warnings;

# Q1
my @x = qw/0120 123 XXX/;
print "@x\n";

# Q2
my $y = join '-', @x;
print "$y\n";

# Q3
my @z = split '/', '/usr/bin/env perl';
#my @z = split /\//, '/usr/bin/env perl';
print "@z\n"

my $c = 0;
# shift @z;
for my $e ( @z ) {
    print "[$c] $e\n";
    $c++;
}

