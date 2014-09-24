use strict;
use warnings;
use Data::Dumper;

my $persons = {
    papix => {
        affiliation => 'namba.pm',
        perl        => 60,
        python      => 50,
        ruby        => 50,
        php         => 80,
        binary      => 30,
    },
    boolfool => {
        affiliation => 'namba.pm',
        perl        => 40,
        python      => 10,
        ruby        => 20,
        php         => 30,
        binary      => 10,
    },
    moznion => {
        affiliation => 'hachioji.pm',
        perl        => 100,
        python      => 70,
        ruby        => 80,
        php         => 50,
        binary      => 50,
    },
    binarian => {
        affiliation => 'hachioji.pm',
        perl        => 10,
        python      => 11,
        ruby        => 1,
        php         => 100,
        binary      => 100,
    },
    uzulla => {
        affiliation => 'hachioji.pm',
        perl        => 1,
        python      => 0.01,
        ruby        => 0.5,
        php         => 4,
        binary      => 0.01,
    },
};

for my $name (keys %$persons) {
    print "$name\n";
    print Dumper $person;
    print "-------------------------\n";

    if ($name eq 'uzulla') {
        ... PHPは2倍 ...
    }

    my $sum = 0;
    for my $language (qw/perl python php ruby binary/) {
        $sum = $sum + $person->{$language};
    }
    $person->{sum} = $sum;
}

#print Dumper $persons;
