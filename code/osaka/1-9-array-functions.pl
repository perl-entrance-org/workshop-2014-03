#!/usr/bin/env perl
use strict;
use warnings;

my @array = ();
my $value = '';

# Q1
@array = ( 'Alice', 'Bob' );
$value = shift @array;
print "$value\n";

# Q2
@array = ( 'Alice', 'Bob' );
$value = pop @array;
print "$value\n";

# Q3
@array = ( 'Alice', 'Bob' );
unshift @array, 'Zappa';
print "@array\n";

push @array, 'Chris';
print "@array\n";

