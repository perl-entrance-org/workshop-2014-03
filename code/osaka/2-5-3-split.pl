#!/usr/bin/env perl
use strict;
use warnings;

my $c = 0;
my @z = split '/', '/usr/bin/env perl';
#my @z = split /\//, '/usr/bin/env perl';
print "@z\n"


for my $e ( @z ) {
    print "[$c] $e\n";
    $c++;
}


