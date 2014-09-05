## ハッシュの便利関数たち

- keys
- values
- delete
- exists

## keys
    my %hash = (
        name        => 'Kurt',
        job         => 'Guitarist',
        affiliation => 'NIRVANA'
    );
    my @keys = keys %hash;
    print "@keys\n";    # => "name job affiliation"

keys 関数はそのハッシュのキーを配列にして返してくれます。

この時、キーは順不同になります。

## values
    my %hash = (
        name        => 'Kurt',
        job         => 'Guitarist',
        affiliation => 'NIRVANA'
    );
    my @values = values %hash;
    print "@values\n";    # => "Kurt Guitarist NIRVANA"

values 関数はそのハッシュの値を配列にして返してくれます。

この時、値は順不同になります。

## delete
    my %hash = (
        name        => 'Kurt',
        job         => 'Guitarist',
        affiliation => 'NIRVANA'
    );
    delete $hash{affiliation};
    # この時、%hash は以下のようになっています
    # %hash = ( name => 'Kurt', job => 'Guitarist' );

delete 関数は指定したハッシュのキーと、それに対応する値を削除します。

## exsits
    my %hash = (
        name        => 'Kurt',
        job         => 'Guitarist',
        affiliation => 'NIRVANA'
    );

    if (exists $hash{job}) {
        print "exists"; # => exists
    }

exists 関数は指定したハッシュのキーが存在するか確認します。

## 練習問題

1. 先ほどの練習問題で作ったハッシュのキーの一覧を出力してください。
2. 上記ハッシュから、性別の要素を取り除いてください。
3. 2に機能を追加して、取り除く前に性別の要素が存在するかどうかを確認してください。
4. 3で性別の要素が存在しない場合には、「性別の要素は存在しません」と表示してください。
