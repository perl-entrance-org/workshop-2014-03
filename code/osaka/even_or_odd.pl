#!/usr/bin/env perl
use strict;
use warnings;

my $x = <STDIN>;
if( ( $x % 2 ) == 0 ) {
    # 偶数
    print "even\n";
    # print "偶数\n";

} else {
    # 奇数
    print "odd\n";
    # print "奇数\n";
}

