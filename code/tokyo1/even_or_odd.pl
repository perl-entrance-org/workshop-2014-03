use strict;
use warnings;

# 標準入力により数値を一つ読み込み, その数値が偶数なら"even", 奇数なら"odd" という文字を出力するeven_or_odd.plを作成しよう

my $input = <STDIN>;
chomp $input;

if ($input % 2 == 0) {
    print "even\n";
} else {
    print "odd\n";
}
