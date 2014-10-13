#('Alice', 'Bob') という配列を作って出力してみましょう。
#関数を使って 'Alice' を取り出して出力してみましょう。
#関数を使って 'Bob' を取り出して出力してみましょう。
#1.の配列を元に、関数を使って ('Zappa', 'Alice', 'Bob', 'Chris') という配列を作って出力してみましょう。

use strict;
use warnings;
use utf8;

my @array = ('Alice', 'Bob');
print "@array\n";

print "--------------------\n";

my @array2 = ('Alice', 'Bob');
my $alice = shift @array2;

print "@array2\n";
print "$alice\n";

print "--------------------\n";

my @array3 = ('Alice', 'Bob');
my $bob = pop @array3;

print "@array3\n";
print "$bob\n";

print "--------------------\n";

my @array4 = ('Alice', 'Bob');
unshift @array4, 'Zappa';
push    @array4, 'Chris';

print "@array4\n";

