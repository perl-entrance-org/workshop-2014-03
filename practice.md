# Perl入学式 #3 復習問題

## vote.pl
    1. 「自分の名前 (name)」と「好きな食べ物の配列のリファレンス (favorite_foods)」を持ったハッシュリファレンスを作成しましょう (つまり、好きな食べ物は複数個書いてください)
    2. 同様のハッシュリファレンスを2, 3個作ってみましょう (周りの人のリアルデータを使ってハッシュrefを作ると良いかもしれません)
    3. 作成した複数のハッシュリファレンスを1つの配列に格納しましょう (配列を操作する関数を使っても良いですし、直で代入しても良いです)
    4. どんな方法でも良いので、好きな食べ物のランキングを作って表示してみて下さい


### ヒント
複数のハッシュリファレンスを格納した配列を for でひと通りなめて (つまり各ハッシュリファレンスにアクセスし)、  
favorite\_foodsにアクセスして、その配列リファレンスを配列にひと通り格納して……という方法が1つ考えられますね！

## score.pl
    my $boolfool = {
        name        => 'boolfool',
        affiliation => 'namba.pm',
        perl        => 40,
        python      => 10,
        ruby        => 20,
        php         => 0,
        binary      => 0,
    };

- [score.pl](https://github.com/perl-entrance-org/workshop-2013-03/blob/master/score.pl) には上記のようなハッシュリファレンスがいくつか宣言してあります

## 1. 点数の合計
- 各人物の `perl`, `ruby`, `python` ... といった言語の合計値を key `sum` の value としてリファレンスに追加しましょう
- `@people` や `@languages` といった変数に各人物のリファレンスや言語を格納してからやってみましょう

## 2. 言語毎の平均
- 新たに`$average`といったハッシュリファレンスを作り、各人物の名前を key として `perl`、`ruby`、`python`の平均値を格納してください
- 出力には `Data::Dumper` などを使って表示させてください

## 3. 五段階評価
     0 - 19 =>
    20 - 39 => ★
    40 - 59 => ★★
    60 - 79 => ★★★
    80 - 99 => ★★★★
    100     => ★★★★★
    ----
    boolfool:
    perl: ★★
    python:
    ruby: ★
    php:
    binary:

- それぞれの人物の言語毎の成績を上記を参考に5段階表示して出力して下さい
- 全角文字を出力するので冒頭に`binmode STDOUT, ":utf8";`と書いておくとよいでしょう

## 4. 所属毎の perl のスコアが 60 以上の人の名前を格納する
- `$highscore` と言ったハッシュリファレンスを用意し、所属毎に優秀な人物の名前を push して下さい
- `$highscore`における key を所属として配列のリファレンスにするのがいいですね

## 5. JSON風Dumper
    [
      {
        "python":10
        "binary":0
        "name":boolfool
        "ruby":20
        "perl":40
        "php":0
        "affiliation":namba.pm
        "sum":70
      }
      {
        "python":50
        "binary":0
        "name":papix
        "ruby":50
        "perl":60
        "php":0
        "affiliation":namba.pm
        "sum":160
      }
    ]

- どんな方法でもよいので上記のような JSON 風 Dumper を作成して下さい
