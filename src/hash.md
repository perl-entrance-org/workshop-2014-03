# ハッシュ

## ハッシュとはなんでしょう
- Perl のデータ構造のうちのひとつで、「連想配列」とも呼ばれます
- 配列と同じく、任意個の値の格納・取り出しができます
- ハッシュは配列とは異なり、数値ではなく名前を使って格納した個々の値を指定します
    - 要素を指定する為の名前を "key"、key によって指定された要素を "value" と呼びます

## たとえば

- 名前: Kurt
- 職業: Guitarist
- 所属: NIRVANA

という人をデータとして表現してみましょう

## 配列と比較してみましょう
配列の場合だとこんな感じでした

    my @user = ("Kurt", "Guitarist", "NIRVANA");
    print $user[0]; # 名前が表示される
    print $user[1]; # 職業が表示される
    print $user[2]; # 所属が表示される

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

## ハッシュの代入と出力
ハッシュは % を使って定義します。

    my %hash;              # <= これがハッシュの定義です
    $hash{name} = "Alice"; # <= ハッシュにアクセスするときは 中カッコ {} を使います
    $hash{age}  = 16;
    print "$hash{name}\n"; # <= "Alice"
    print "$hash{age}\n";  # <= 16

- ハッシュにアクセスするときは、添字として中カッコ {} を使います
- 1つのハッシュ内に、文字列や数値が混在していても構いません

## ハッシュの代入と出力
ハッシュは配列の一種なので、こういう書き方もできます。

    my %hash = ('name', 'Alice', 'age', 16);
    print "$hash{name}\n"; # <= "Alice"
    print "$hash{age}\n";  # <= 16

- 配列とは異なり、ハッシュをダブルクォートでくくっても展開されません

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

## 結局 Hash の何が便利なのか
    my @user = ("Name", "Job", "Affiliation");

これがある日突然

    my @user = ("Affiliation", "Job", "Name");

という風に順序が入れ替わったらどうしましょう。今まで動いていたコードを書き換えなくてはならなくなります。
ハッシュだと、 順序ではなく Key で対応付けがされているのでそういった問題が起こりません。

## ハッシュをプリントする
    my %hash = (
        name        => 'Kurt',
        job         => "Guitarist",
        affiliation => 'NIRVANA'
    );
    print %hash; # => nameKurtjobGuitaristaffiliationNIRVANA

変数を出力する場合は、スカラー、配列と同様に `print` を用いますが、しかし `print` するだけでは内容がとてもわかりづらい。

## ハッシュをダンプ（中身を出力）する
    use Data::Dumper;
    my %hash = (
        name        => 'Kurt',
        job         => "Guitarist",
        affiliation => 'NIRVANA'
    );
    print Dumper(%hash);

こうするとハッシュがダンプできて便利です。やってみましょう！

## 練習問題
1. 自分の名前 (name)、性別 (sex)、好きな食べ物 (food) をキーにしたハッシュを作ってみましょう
2. また、そのハッシュをダンプしてみましょう
