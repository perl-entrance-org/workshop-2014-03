use strict;
use warnings;
use utf8;

print ">>>";
my $stdin = <STDIN>;
chomp($stdin);

if ($stdin % 2 == 1) {
    print "odd\n";
} else {
    print "even\n";
}

