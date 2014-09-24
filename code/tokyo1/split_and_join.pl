use strict;
use warnings;

my @number = qw/ 0120 123 XXX /;
print "number = @number\n";
print join '-', @number;
print "\n";

my $env = '/usr/bin/env perl/';

my @env = split /\//, $env;
print join ',', @env;

