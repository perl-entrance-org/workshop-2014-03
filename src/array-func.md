# 配列 (関数)

## 配列
前回、皆さんは配列の基本を勉強しました。

さて、そもそも配列ってどんな時に使う (使いたくなる) と思いますか？

## 配列の用途
- 要素間の順序関係を表現したい場合 (e.g. 待ち行列)
- 要素の単純な集まりとして表現したい場合 (e.g. 集合)

**そしてそれらを同じように操作したい**

## 配列を自在に操るためには
配列の要素を自由に

- 追加
- 取り出し

できる必要があります

## 要素の追加
- push
- unshift

## 要素の取り出し
- pop
- shift

## 追加と取り出しの関係
- push / pop
- unshift / shift

## push / pop

    my @array = ('Alice', 'Bob');
    push @array, "Chris";     # <= ('Alice', 'Bob', 'Chris')
    my $element = pop @array; # <= ('Alice', 'Bob')
    print $element;           # <= 'Chris'

配列が  
□□□  
こういう状態の場合...
<h3>push</h3>
□□□■ ←末尾に要素を追加する
<h3>pop</h3>
□□≡■ ←末尾の要素を取り出す

## unshift / shift

    my @array = ('Alice', 'Bob');
    unshift @array, "Zappa";    # <= ('Zappa', 'Alice', 'Bob')
    my $element = shift @array; # <= ('Alice', 'Bob')
    print $element;             # <= "Zappa"

配列が  
□□□  
こういう状態の場合...
<h3>unshift</h3>
先頭に要素を追加する→ ■□□□
<h3>shift</h3>
先頭の要素を取り出す→ ■≡□□

## 練習問題

1. ('Alice', 'Bob') という配列を定義してから、関数を使って 'Alice' を取り出してください
2. ('Alice', 'Bob') という配列を定義してから、関数を使って 'Bob' を取り出してください
3. ('Alice', 'Bob') という配列を定義してから、関数を使って ('Zappa', 'Alice', 'Bob', 'Chris') という配列を作ってください
