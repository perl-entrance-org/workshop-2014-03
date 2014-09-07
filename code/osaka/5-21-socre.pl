#!/usr/bin/env perl
use strict;
use warnings;

my $papix = {
    name        => 'papix',
    affiliation => 'namba.pm',
    perl        => 60,
    python      => 50,
    ruby        => 50,
    php         => 80,
    binary      => 30,
};
my $boolfool = {
    name        => 'boolfool',
    affiliation => 'namba.pm',
    perl        => 40,
    python      => 10,
    ruby        => 20,
    php         => 30,
    binary      => 10,
};
my $moznion = {
    name        => 'moznion',
    affiliation => 'hachioji.pm',
    perl        => 100,
    python      => 70,
    ruby        => 80,
    php         => 50,
    binary      => 50,
};
my $binarian = {
    name        => 'binarian',
    affiliation => 'hachioji.pm',
    perl        => 10,
    python      => 11,
    ruby        => 1,
    php         => 100,
    binary      => 100,
};
my $uzulla = {
    name        => 'uzulla',
    affiliation => 'hachioji.pm',
    perl        => 1,
    python      => 0.01,
    ruby        => 0.5,
    php         => 4,
    binary      => 0.01,
};

# Q2
my $people = [ $papix, $boolfool, $moznion, $binarian, $uzulla ];
my $languages = [ qw/perl python ruby php binary/ ];

# Q1
for my $p ( @$people ) {
    # $pは各人物のリファレンス
    $p->{'score'} = 0;

    for my $e ( @$languages ) {
        # 各言語のスコアを加算したキーを作る
        $p->{'score'} += $p->{ $e };
    }
}
use Data::Dumper;
print Dumper( $people );

