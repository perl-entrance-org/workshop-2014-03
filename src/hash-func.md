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
    print "@keys\n";    # <= "name job affiliation"

keys 関数はその関数の key を配列にして返してくれます。

この時、key は順不同になります。

## values
    my %hash = (
        name        => 'Kurt',
        job         => 'Guitarist',
        affiliation => 'NIRVANA'
    );
    my @values = values %hash;
    print "@values\n";    # <= "Kurt Guitarist NIRVANA"

values 関数はその関数の value を配列にして返してくれます。

この時、value は順不同になります。

## delete
    my %hash = (
        name        => 'Kurt',
        job         => 'Guitarist',
        affiliation => 'NIRVANA'
    );
    delete $hash{affiliation};
    # この時、%hash は以下のようになっています
    # %hash = ( name => 'Kurt', job => 'Guitarist' );

delete 関数は指定した hash の key に対応する value を削除します

## exsits
    my %hash = (
        name        => 'Kurt',
        job         => 'Guitarist',
        affiliation => 'NIRVANA'
    );

    if (exists $hash{job}) {
        print "exists"; # => exists
    }

exists 関数は指定した hash の key が存在するか確認します

## 練習問題

- 先ほどの問題で作ったハッシュに対して keys を用いて"name: Larry Wall" のように整形して出力してください。
- 先ほどの問題で作ったハッシュに対して、delete を使って性別の要素を取り除いて下さい
  - exists を使ってキーが取り除かれているかどうか確認して下さい
