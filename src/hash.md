# ハッシュ

## ハッシュとはなんでしょう
- Perl のデータ構造のひとつで、「連想配列」とも呼ばれます。
- 配列と同じく、任意個の値の格納・取り出しができます。
- ハッシュは配列とは異なり、「数値」ではなく「名前」を使って、格納した個々の「値」を指定します。
    - 要素を指定する為の名前を「キー (key)」、キーによって指定された要素を「値 (value)」と呼びます。

## たとえば

- 名前: Kurt
- 職業: Guitarist
- 所属: NIRVANA

という人をデータとして表現してみましょう。

## 配列と比較してみましょう
配列の場合だとこんな感じでした。

    my @user = ('Kurt', 'Guitarist', 'NIRVANA');
    print $user[0]; # 最初の要素が表示される => "Kurt"
    print $user[1]; # 2番目の要素が表示される => "Guitarist"
    print $user[2]; # 3番目の要素が表示される => "NIRVANA"

## これがハッシュだと...

    my %user = (
        name        => 'Kurt',
        job         => 'Guitarist',
        affiliation => 'NIRVANA'
    );
    print $user{name};        # 名前 (name) が表示される => "Kurt"
    print $user{job};         # 職業 (job) が表示される => "Guitarist"
    print $user{affiliation}; # 所属 (affiliation) が表示される => "NIRVANA"

なんだかわかりやすい感じがしますね！

## ハッシュの代入と出力
- ハッシュは % を使って定義します。
- ハッシュにアクセスするときは、添字として中カッコ {} を使います。
- 1つのハッシュ内に、文字列や数値が混在していても構いません。

    my %hash;              # ハッシュを定義
    $hash{name} = 'Alice'; # "name" というキーに "Alice" という値を代入
    $hash{age}  = 16;      # "age" というキーに "16" という値を代入
    print "$hash{name}\n"; # => "Alice"
    print "$hash{age}\n";  # => 16

## ハッシュの代入と出力
ハッシュは配列の一種なので、こういう書き方もできます。

    my %hash = ('name', 'Alice', 'age', 16);
    print "$hash{name}\n"; # => "Alice"
    print "$hash{age}\n";  # => "16"

## ハッシュの代入と出力
実際、こういう風に書くのが便利で良い感じです。

    my %hash = (
        name => 'Alice',   # ファットコンマ演算子 (=>) でキーと値の関係を書ける
        age    => 16       # 左側の値は文字列として解釈されるのでクォートの必要がない
    );
    print "$hash{name}\n"; # => "Alice"
    print "$hash{age}\n";  # => "16"

- ファットコンマ演算子は基本的にコンマのようなものです。
- ハッシュではファットコンマ演算子を使うと、キーと値の関係性が見やすくなるので便利です。

## 結局 Hash の何が便利なのか？
    my @user = ('Name', 'Job', 'Affiliation');

これがある日突然

    my @user = ('Affiliation', 'Job', 'Name');

という風に順序が入れ替わったらどうしましょう。今まで動いていたコードを書き換えなくてはならなくなります。  
ハッシュだと、順序ではなくキーで対応付けられているので、そういった問題が起こりません。

## ハッシュをプリントする
    my %hash = (
        name        => 'Kurt',
        job         => 'Guitarist',
        affiliation => 'NIRVANA'
    );
    print %hash; # => nameKurtjobGuitaristaffiliationNIRVANA

変数を出力する場合は、スカラー、配列と同様に `print` を用います。しかし `print` するだけでは内容がとてもわかりづらくなります。

## ハッシュをダンプ（中身を出力）する
- ハッシュは配列と異なり、ダブルクォートでくくっても展開されません。
- しかし以下のように `Data::Dumper` モジュールを使うと、中身を見ることができて便利です。やってみましょう！

    use Data::Dumper;
    my %hash = (
        name        => 'Kurt',
        job         => 'Guitarist',
        affiliation => 'NIRVANA'
    );
    print Dumper(%hash);


## 練習問題
1. 自分の名前 (name)、性別 (sex)、好きな食べ物 (food) をキーにしたハッシュを作ってみましょう。
2. また、そのハッシュをダンプしてみましょう。
