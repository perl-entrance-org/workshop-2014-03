#!/usr/bin/env perl
use strict;
use warnings;

# Q3
my @array = ( 'Alice', 'Bob' );
unshift @array, 'Zappa';
print "@array\n";

push @array, 'Chris';
print "@array\n";

