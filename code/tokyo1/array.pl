use strict;
use warnings;

# 1. ('Alice', 'Bob') という配列を作って出力してみましょう。
my @array = ('Alice', 'Bob');
print "\@array = @array\n"; # => Alice Bob
print "--------------------\n";

# 2. 関数を使って 'Alice' を取り出して出力してみましょう。
my $alice = shift @array;
print "\@array = @array\n";
print "\$alice = $alice\n";
print "--------------------\n";

# 3. 関数を使って 'Bob' を取り出して出力してみましょう。
my $bob = pop @array;
print "\@array = @array\n";
print "\$alice = $alice\n";
print "\$bob   = $bob\n";
print "--------------------\n";

# 4. 1.の配列を元に、関数を使って ('Zappa', 'Alice', 'Bob', 'Chris') という配列を作って出力してみましょう。
my @array2 = ('Alice', 'Bob');
print "\@array2 = @array2\n";

unshift @array2, 'Zappa';
push    @array2, 'Chris';
print "\@array2 = @array2\n";

print "--------------------\n";

my @array3 = qw( Alice Bob );
print "\@array3 = @array3\n";
