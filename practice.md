# Perl入学式 #3 復習問題

## 1. vote.pl

### 1-1. リファレンスの作成
「自分の名前 (name)」と「好きな食べ物の配列のリファレンス (favorite_foods)」を持ったハッシュリファレンスを作成しましょう (つまり、好きな食べ物は複数個書いてください)
同様のハッシュリファレンスを2, 3個作ってみましょう (周りの人のリアルデータを使ってハッシュrefを作ると良いかもしれません)

### 1-2. リファレンスを配列に格納 
作成した複数のハッシュリファレンスを1つの配列に格納しましょう (配列を操作する関数を使っても良いですし、直で代入しても良いです)

### 1-3. ランキングの表示
どんな方法でも良いので、好きな食べ物のランキングを作って表示してみて下さい。


#### ヒント
複数のハッシュリファレンスを格納した配列を for でひと通りなめて (つまり各ハッシュリファレンスにアクセスし)、  
favorite\_foodsにアクセスして、その配列リファレンスを配列にひと通り格納して……という方法が1つ考えられますね！

## 2. score.pl

```
my $papix = {
    name        => 'papix',
    affiliation => 'namba.pm',
    perl        => 40,
    python      => 10,
    ruby        => 20,
    php         => 0,
    binary      => 0,
};
```

[score.pl](https://github.com/perl-entrance-org/workshop-2014-03/blob/master/code/score.pl) には上記のようなハッシュリファレンスがいくつか宣言してあります。

### 2-1. 点数の合計
各人物の `perl`, `ruby`, `python` ... といった言語の合計値を key `sum` の value としてリファレンスに追加しましょう。

`@people` や `@languages` といった変数に各人物のリファレンスや言語を格納してからやってみましょう。

#### 出力例

```
sum
----
papix: 70
boolfool: ??
moznion: ??
....
```

#### 解答例

[解答例1](https://github.com/perl-entrance-org/workshop-2014-03/blob/master/code/tokyo1/score.pl) [解答例2](https://github.com/perl-entrance-org/workshop-2014-03/blob/master/code/tokyo1/score_kai.pl) [解答例3](https://github.com/perl-entrance-org/workshop-2014-03/blob/master/code/osaka/5-21-socre.pl)


### 2-2. 言語毎の平均
各人物の`perl`、`ruby`、`python`の平均値を計算し、新たに作った`$average`という名前のハッシュリファレンスに格納してください。ハッシュリファレンスのkeyは各人物の名前を利用してください。
出力には `Data::Dumper` を使ってみましょう。

#### 出力例

```
average
----
$VAR1 = {
          'papix' => ??,
          'boolfool' => ??,
          ...
        };
```

### 2-3. 五段階評価

```
 0 - 19 =>
20 - 39 => ★
40 - 59 => ★★
60 - 79 => ★★★
80 - 99 => ★★★★
100     => ★★★★★
```

それぞれの人物の言語毎の成績を上記を参考に5段階表示して出力して下さい。
全角文字を出力するので冒頭に`binmode STDOUT, ":utf8";`と書いておくとよいでしょう。

#### 出力例

```
boolfool
  perl   : ★★
  python :
  ruby   : ★
  php    :
  binary :
```


### 2-4. 所属毎のperlハイスコアリストを作る
`$highscore`という名前のハッシュリファレンスを作成し、所属毎の `perl` のスコアが 60 以上の人の名前を格納しましょう。
ハッシュリファレンスのkeyは所属`affiliation`を利用して、valueには配列のリファレンスを格納すると良いでしょう。

#### 出力例

```
highscore list
----
namba.pm: papix boolfool
hachioji.pm: ???
```

### 2-5. JSON風Dumper

```
[
  {
    "python":10
    "binary":0
    "name":"boolfool"
    "ruby":20
    "perl":40
    "php":0
    "affiliation":"namba.pm"
    "sum":70
  },
  {
    "python":50
    "binary":0
    "name":"papix"
    "ruby":50
    "perl":60
    "php":0
    "affiliation":"namba.pm"
    "sum":160
  }
]
```

どんな方法でもよいので上記のような JSON 風 Dumper を作成して下さい。
