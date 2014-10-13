use strict;
use warnings;
use utf8;

my $sum = 0;
for my $i (1 .. 100) {
    $sum += $i;
    # $sum = $sum + $i;
}
print "$sum\n";


