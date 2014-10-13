use strict;
use warnings;
use utf8;

my @number = qw/ 0120 123 XXX /;

print "@number\n";
my $number = join '-', @number;

print "$number\n";

my $shebang = '/usr/bin/env perl';

my @splited = split /\//, $shebang;

print "@splited\n";
my $joined = join "','", @splited;

print "'$joined'\n";

