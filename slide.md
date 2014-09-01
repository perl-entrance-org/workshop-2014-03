<!-- このファイルは直接編集せずに src ディレクトリ内を編集し build.pl を実行してください。 -->
#Perl入学式 #3

___
##今日の流れ
- 前回の復習
- 配列 (関数)
- ハッシュ
- リファレンス

___
## の前に

___
## 用語説明

___
## シジル
$, @, %, & といった、変数名の前に付く記号の事を指します。

___
## リスト
('値をコンマで区切って', '並べて', 'カッコで囲んだもの')  

___
## 前回の復習
- 変数
- 標準入力
- 演算子
- if, else 文
- for 文
- 配列

___
# 復習問題

___
## 復習問題
[practice.md](https://github.com/perl-entrance-org/perl-entrance-org.github.com/blob/master/2013/handout/perlentrance02/practice.md)
の `sum.pl` と `even_or_odd.pl` をやってみましょう

---
# 配列 (関数)

___
## 配列
前回、皆さんは配列の基本を勉強しました。

さて、そもそも配列ってどんな時に使う (使いたくなる) と思いますか？

___
## 配列の用途
- 要素間の順序関係を表現したい場合 (e.g. 待ち行列)
- 要素の単純な集まりとして表現したい場合 (e.g. 集合)

**そしてそれらを同じように操作したい**

___
## 配列を自在に操るためには
配列の要素を自由に

- 追加
- 取り出し

できる必要があります

___
## 要素の追加
- push
- unshift

___
## 要素の取り出し
- pop
- shift

___
## 追加と取り出しの関係
- push / pop
- unshift / shift

___
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

___
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

___
## 練習問題

1. ('Alice', 'Bob') という配列を定義してから、関数を使って 'Alice' を取り出してください
2. ('Alice', 'Bob') という配列を定義してから、関数を使って 'Bob' を取り出してください
3. ('Alice', 'Bob') という配列を定義してから、関数を使って ('Zappa', 'Alice', 'Bob', 'Chris') という配列を作ってください

---
## qw ショートカット
    my @array = qw( Alice Bob Chris ); # <= ('Alice', 'Bob', 'Chris')

- リストリテラル ('値をコンマで区切って', '並べて', 'カッコで囲んだもの') と違って、クォート記号が不要です
- 空白文字 (スペース、タブ、改行など) は捨てられ、残ったものがリストの要素になります

なのでこういう書き方もできます (**あまりやらない**)

    my @arary = qw(
        Alice
        Bob
    );

___
## qw ショートカット
    # デリミタ (区切り文字) には任意の記号文字が使える。例えば...
    qw! Alice Bob !
    qw# Alice Bob #
    qw/ Alice Bob /

これらは前述の

    qw( Alice Bob )

と等しい

___
## qw ショートカット
    # これは困った! エラーになってしまう!
    # デリミタがスラッシュ (/) で、要素中にもスラッシュが含まれてしまっている
    qw/http://www.perl-entrance.org http://www.yahoo.com/

解決法は2つ

    # 1. スラッシュをバックスラッシュでエスケープしてあげる
    qw/ http:\/\/www.perl-entrance.org http:\/\/www.yahoo.com /  # <= 読みにくく感じるかもしれない
    # 2. デリミタを変える
    qw! http://www.perl-entrance.org http://www.yahoo.com !      # <= ちょっと読みやすいかもしれない

___
## split
split は指定したパターンに従って文字列を分割します

    my $poem  = "I Love Perl.";
    my @words = split / /, $poem; # <= ('I', 'Love', 'Perl.')

引数として与えた文字列を // でくくった文字 (上の例だと半角スペース) で分割して配列に格納します。  
  
(ところで、// は正規表現リテラルと呼ばれるものです。正規表現リテラルの話は長くなるので、次回以降に紹介します。今は「そういうものなんだ…」と耐えて下さい)

___
## join
join は 分割された文字列をくっつけて1つの文字列にします。(split の逆の働きですね)

    my @words = qw( I Love Perl. ); # <= qw ショートカット
    my $poem  = join '_', @words;
    print $poem;  # <= 'I_Love_Perl.'

join の受け取る第1引数は糊のようなものです。リストの要素をくっつけるときに、その間にはさみます。  
(今回の場合だと、 '\_' という風に指定しているので、リストの各要素をアンダースコアでくっつけます)  
第2引数はバラバラになった文字列の配列です。

___
## 練習問題
- ("0120" "123" "XXX") という内容の配列を qw ショートカットを使って作ってみましょう
- 上の問題で作った配列を、join で繋げてみましょう。なんだか電話番号っぽいので、ハイフン ('-') を間にはさみましょう。
- 文字列 "/usr/bin/env perl" という文字列を、スラッシュ ('/') で分割して配列に格納してみましょう

---
# ハッシュ

___
## ハッシュとはなんでしょう
- Perl のデータ構造のうちのひとつで、「連想配列」とも呼ばれます
- 配列と同じく、任意個の値の格納・取り出しができます
- ハッシュは配列とは異なり、数値ではなく名前を使って格納した個々の値を指定します
    - 要素を指定する為の名前を "key"、key によって指定された要素を "value" と呼びます

___
## たとえば

- 名前: Kurt
- 職業: Guitarist
- 所属: NIRVANA

という人をデータとして表現してみましょう

___
## 配列と比較してみましょう
配列の場合だとこんな感じでした

    my @user = ("Kurt", "Guitarist", "NIRVANA");
    print $user[0]; # 名前が表示される
    print $user[1]; # 職業が表示される
    print $user[2]; # 所属が表示される

___
## これがハッシュだと...

    my %user = (
        name        => "Kurt",
        job         => "Guitarist",
        affiliation => 'NIRVANA'
    );
    print $user{name};        # 名前 (name) が表示される
    print $user{job};         # 職業 (job) が表示される
    print $user{affiliation}; # 所属 (affiliation) が表示される

なんだかわかりやすい感じがしますね！

___
## ハッシュの代入と出力
ハッシュは % を使って定義します。

    my %hash;              # <= これがハッシュの定義です
    $hash{name} = "Alice"; # <= ハッシュにアクセスするときは 中カッコ {} を使います
    $hash{age}  = 16;
    print "$hash{name}\n"; # <= "Alice"
    print "$hash{age}\n";  # <= 16

- ハッシュにアクセスするときは、添字として中カッコ {} を使います
- 1つのハッシュ内に、文字列や数値が混在していても構いません

___
## ハッシュの代入と出力
ハッシュは配列の一種なので、こういう書き方もできます。

    my %hash = ('name', 'Alice', 'age', 16);
    print "$hash{name}\n"; # <= "Alice"
    print "$hash{age}\n";  # <= 16

- 配列とは異なり、ハッシュをダブルクォートでくくっても展開されません

___
## ハッシュの代入と出力
実際、こういう風に書くのが便利で良い感じです。

    my %hash = (
        'name' => 'Alice', # ファットコンマ演算子 (=>) で key と value の関係を書ける
        age    => 16       # 左側の値は文字列として解釈されるのでクォートの必要がない
    );
    print "$hash{name}\n"; # <= "Alice"
    print "$hash{age}\n";  # <= 16

- ファットコンマ演算子は基本的にコンマのようなものです。
- ハッシュではファットコンマ演算子を使うと、key と value の関係性が見やすいので便利です。

___
## 結局 Hash の何が便利なのか
    my @user = ("Name", "Job", "Affiliation");

これがある日突然

    my @user = ("Affiliation", "Job", "Name");

という風に順序が入れ替わったらどうしましょう。今まで動いていたコードを書き換えなくてはならなくなります。  
ハッシュだと、 順序ではなく Key で対応付けがされているのでそういった問題が起こりません。

___
## 結局 Hash の何が便利なのか
あとは、とてつもなく長い引数になってしまった場合とか、「この引数はオプショナルにしたいなー」という場合とかに便利ですが、
ちょっと内容が難しくなりそうなので、ここでの詳しい説明は避けます。

___
## ハッシュをプリントする
    my %hash = (
        name        => 'Kurt',
        job         => "Guitarist",
        affiliation => 'NIRVANA'
    );
    print %hash; # => nameKurtjobGuitaristaffiliationNIRVANA

変数を出力する場合は、スカラー、配列と同様に `print` を用います。

___
## ハッシュをダンプする
    use Data::Dumper;
    my %hash = (
        name        => 'Kurt',
        job         => "Guitarist",
        affiliation => 'NIRVANA'
    );
    print Dumper(%hash);

こうするとハッシュがダンプできて便利です。やってみましょう！

___
## 練習問題
- 自分の名前 (name)、性別 (sex)、好きな食べ物 (food) をキーにしたハッシュを作ってみましょう
- また、そのハッシュをダンプしてみましょう

---
## ハッシュの便利関数たち

- keys
- values
- delete
- exists

___
## keys
    my %hash = (
        name        => 'Kurt',
        job         => 'Guitarist',
        affiliation => 'NIRVANA'
    );
    my @keys = keys %hash;
    print "@keys\n";    # <= "name job affiliation"

keys 関数はその hash の key を配列にして返してくれます。

この時、key は順不同になります。

___
## values
    my %hash = (
        name        => 'Kurt',
        job         => 'Guitarist',
        affiliation => 'NIRVANA'
    );
    my @values = values %hash;
    print "@values\n";    # <= "Kurt Guitarist NIRVANA"

values 関数はその hash の value を配列にして返してくれます。

この時、value は順不同になります。

___
## delete
    my %hash = (
        name        => 'Kurt',
        job         => 'Guitarist',
        affiliation => 'NIRVANA'
    );
    delete $hash{affiliation};
    # この時、%hash は以下のようになっています
    # %hash = ( name => 'Kurt', job => 'Guitarist' );

delete 関数は指定した hash の key と、それに対応する value を削除します。

___
## exsits
    my %hash = (
        name        => 'Kurt',
        job         => 'Guitarist',
        affiliation => 'NIRVANA'
    );

    if (exists $hash{job}) {
        print "exists"; # => exists
    }

exists 関数は指定した hash の key が存在するか確認します。

___
## 練習問題

1. 先ほどの練習問題で作ったハッシュの key の一覧を出力してください。
2. 上記ハッシュから、性別の要素を取り除いて下さい。
3. 2に機能を追加して、取り除く前に性別の要素が存在するかどうかを確認して下さい。
4. 3で性別の要素が存在しない場合には、「性別の要素は存在しません」と表示してください。

---
# リファレンス

___
## リファレンスとは
リファレンスとは参照です。  
リファレンスを使うと複雑なデータ構造を表現出来たりします。

___
## どういうこと ?
例えば、リファレンスを使うとハッシュの中にハッシュを格納し、更にそのハッシュにハッシュを格納する……みたいな複雑なデータ構造を表現出来ます。

___
## 具体例 (1/3)
         |     0    |     1    |
    -----+----------+----------+
      0  |  nqounet | boolfool |
    -----+----------+----------+
      1  |  macopy  |  papix   |
    -----+----------+----------+

テーブルのようなデータ構造を表現したいとき

___
## 具体例 (2/3)
    my @osaka = ('nqounet', 'boolfool');
    my @tokyo = ('macopy', 'papix');
    my @perl_entrance = (@osaka, @tokyo);
    print $perl_entrance[1][1]; # => これはおかしい。エラーになる。

今までの知識であれば、配列を用いて<b>行</b>単位で表現できるが、`n 行 m 列目は papix` という様に表現したいですね。

___
## 具体例 (3/3)
    my $osaka = ['nqounet', 'boolfool'];
    my $tokyo = ['macopy', 'papix'];
    my @perl_entrance = ($osaka, $tokyo);
    print $perl_entrance[1][1]; # => papix

このように <b>リファレンス</b> を用いることで、複雑なデータ構造を表現することが容易になります。

___
## あとは
関数の引数に複数の配列を渡す必要がある場合などに使います。  
また、関数に引数として配列やハッシュを渡すとそれらをコピー (クローン) してしまうので、非効率になる場合があります。
リファレンスはコピーするのではなく参照を渡すだけなので、その問題を回避することができます。  
(これらはまた後で出てきます)

___
## リファレンスの例
    my $scalar     = 'scalar';
    my $scalar_ref = \$scalar   # スカラーのリファレンス;
    my @array      = ( 'this', 'is', 'array' );
    my $array_ref  = \@array;   # 配列のリファレンス
    my %hash       = ( this_is => 'hash' );
    my $hash_ref   = \%hash;    # ハッシュのリファレンス

それぞれのシジルの前にバックスラッシュ (\\) を置くことによってそれぞれリファレンスになります

___
## 簡単な書き方 (配列)
    my $array_ref = ['This', 'is', 'array-ref'];

普通のかっこ () ではなく角かっこ [] によって要素をくくってやることで、配列のリファレンスになります

___
## 簡単な書き方 (ハッシュ)
    my $hash_ref = {
        this_is => 'hash_ref'
    };

普通のかっこ () ではなく波括弧 {} によってくくってやることで、ハッシュのリファレンスになります

___
## さて、ここで print してみましょう
    my $array_ref = ['This', 'is', 'array-ref'];
    print $array_ref;

`ARRAY(0x7fd8938060b8)` みたいな出力が得られると思います (括弧の中身は実行環境によって異なります)  
スカラーリファレンスの場合はSCALAR()、ハッシュリファレンスの場合はHASH() とそれぞれ表示されます

___
## これはなに
最初に言ったように、リファレンスは参照です。  
SCALAR() や ARRAY()、HASH() の括弧の中身に書いてあるのはその実体が格納されているアドレスです。

___
## アドレスではなく中身が欲しいんだけど ?
そこで出てくるのが“デリファレンス”です

___
## デリファレンスとは
デリファレンスから、元のスカラーや配列、ハッシュを得るための操作です。

___
## デリファレンスの例
    my $scalar     = 'scalar';
    my $scalar_ref = \$scalar;
    print $$scalar_ref; #<= アドレスではなく“scalar”が表示されます
    my $array_ref  = ["I'm", "scalar-ref"];
    print @$array_ref;  #<= アドレスではなく配列の中身が展開されます
    my $hash_ref   = { this_is => 'hash-ref' };
    print %$hash_ref;

___
## デリファレンス (スカラー)
    my $scalar     = 'scalar';
    my $scalar_ref = \$scalar;
    print $$scalar;

スカラーをデリファレンスするためには、そのリファレンスの前にスカラーのシジル ($) を置きます。

___
## デリファレンス (配列)
    my $array_ref = ['zero', 'one', 'two'];
    print @$array_ref;      # <= 配列の中身が展開されます (zeroonetwo)
    print ${$array_ref}[1]; # <= 'one'
    print $array_ref->[1];  # <= 上と同じ。こう書くのがベター

配列をデリファレンスするためには、そのリファレンスの前に配列のシジル (@) を置きます。  
配列の要素に対してデリファレンスしたい場合 (配列リファレンスから要素を取り出したい場合)、
配列リファレンスをスカラーとしてデリファレンスして波括弧でくくり、通常の配列のようにアクセスすると内容を得られます。  
また、中括弧と$を取り除き、その代わりにアロー (->) によりアクセスする事もできます。

___
## デリファレンス (ハッシュ)
    my $hash_ref = { key => 'value' };
    print %$hash_ref;        # <= ハッシュの中身が展開される (keyvalue)
    print ${$hash_ref}{key}; # <= 'value'
    print $hash_ref->{key};  # <= 上と同じ。こう書くのがベター 

ハッシュをデリファレンスするためには、そのリファレンスの前にハッシュのシジル (%) を置きます。  
ハッシュの要素に対してデリファレンスしたい場合、ハッシュリファレンスをスカラーとして
デリファレンスして波括弧でくくり、通常のハッシュのようにアクセスすると内容を得られます。
また配列同様、中括弧と$を取り除きその代わりにアロー (->) によりアクセスする事もできます。

___
## ダンプ再び
    use Data::Dumper;
    my $hash_ref = { key => 'value' };
    print $hash_ref; # => HASH(0x7f88d08060b8)
    print Dumper($hash_ref);
    # $VAR1 = {
    #           'key' => 'value'
    #         };

中身を確認するのにデリファレンスをするのは面倒なので、`Data::Dumper` を用いてダンプすると良いでしょう。

___
## 練習問題
    my $papix = {
        name    => 'papix',
        address => 'Tokyo',
        age     => 25,
    };

上記のような名前・住所・年齢といった要素を持つリファレンスを作成してみよう。さらに `Data::Dumper` を用いて、リファレンスを出力してみよう。

___
## リファレンスのはまりどころ
    my $scalar     = 'scalar';
    my $scalar_ref = \$scalar;
    print $scalar; # => 'scalar'
    $$scalar_ref = 'changed!';
    print $scalar; # => 'changed!'

リファレンスは参照なので、デリファレンスして更にその中身を変更すると、参照元が破壊されます

___
## 練習問題
[score.pl](https://github.com/perl-entrance-org/workshop-2014-03/blob/master/code/score.pl) には上記のようなハッシュリファレンスがいくつか宣言してあります。

- それぞれの人物の`perl`、`ruby`、`python` ... といった分野毎の合計値をそれぞれのリファレンスに追加しましょう
- `@people` や `@languages` と言った変数に各々のリファレンスや言語などを格納しておくとやりやすいでしょう

___
## 練習問題
[practice.md](https://github.com/perl-entrance-org/workshop-2014-03/blob/master/practice.md) には練習問題の続きがあるので、チャレンジしてみて下さい。
