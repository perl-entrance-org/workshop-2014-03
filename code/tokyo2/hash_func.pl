use strict;
use warnings;
use utf8;
binmode STDOUT, 'utf8';

my %papix = (
    name => 'papix',
    sex  => 'male',
    food => 'sushi,ramen,gyoza',
);

my @keys1 = sort keys %papix;
if (! exists $papix{sex}) {
    print "ありません\n";
} else {
    print "あります\n";
}

print "@keys1\n";


delete $papix{sex};
my @keys2 = sort keys %papix;

if (! exists $papix{sex}) {
    print "ありません\n";
} else {
    print "あります\n";
}

print "@keys2\n";
