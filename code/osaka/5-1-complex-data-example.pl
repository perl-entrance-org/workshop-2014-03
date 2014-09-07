#!/usr/bin/env perl
use strict;
use warnings;
use Data::Dumper;

my @friends = ( qw/中村 若林... / );
my @homes   = ( qw/神戸 大阪... / );
my @phone   = ( qw/090-.... 090--.../ );

my $hash = {
    'name'      => 'azumakuniyuki',
    'food'      => [ qw/豆腐 油揚げ 湯葉 ネギ おから/ ],
    'phone'     => [ '090-...', '080-....' ],
    'friends'   => [
        { 
            'name' => '中村',
            'home' => '神戸市',
            'family' => [
                '父', '母', '兄', '妹', '猫', '犬'
            ],
        },
        { 'name' => '若林', 'home' => '新大阪' },
        { 'name' => '三島', 'home' => '箕面市' },
        { 'name' => '籔内', 'home' => '奈良県' },
    ],
    'sex'           => 'おっさん',
    'affiliation'   => '猫派',
};

print Dumper( $hash );

