use strict;
use warnings;
use utf8;

# 1から100までの値を配列に格納し, その配列の全ての数値を足した結果を出力するsum.plを作成しよう

my @nums = ( 1 .. 100 );
my $sum  = 0;

for my $i (@nums) {
    $sum = $sum + $i;
    # $sum += $i;
}

print "sum = $sum\n";

