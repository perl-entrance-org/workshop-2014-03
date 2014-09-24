use strict;
use warnings;

my %papix = (
    name => 'papix',
    sex  => 'OTONA',
    food => 'Ramen',
);

print "name: $papix{name}\n";
print "sex : $papix{sex}\n";
print "food: $papix{food}\n";

print "--------------------\n";

my @keys = sort keys %papix;
print "keys : @keys\n";

if (exists $papix{sex}) {
    print "\$papix{sex} : exists\n";
}

my $deleted = delete $papix{sex};
my @keys2 = sort keys %papix;
print "keys2: @keys2\n";
print "deleted: $deleted\n";

if (! exists $papix{sex}) {
    print "\$papix{sex} : not exists\n";
}
