#!/usr/bin/env perl
use strict;
use warnings;

my %hash = (
    'name' => 'azumakuniyuki',
    'sex'  => 'Ossan',
    'food' => 'Tofu'
);

# Q1
my @keys = keys %hash;
print "@keys\n";

# Q3
if( exists $hash{'sex'} ) {
    # Q2
    delete $hash{'sex'};

} else {
    # Q4
    print "性別の要素は存在しません\n";
}

