# Perl入学式2014年度第3回の資料

`slide.md`が資料本体です。

資料は Markdown 記法で書かれていますので、テキストエディタだけでなく、Markdownエディタなどでもご覧いただけます。

また、`revealup`に対応していますので、スライドとして閲覧も可能です。スペースキーで順番に閲覧できます。

    $ revealup serve slide.md

上記コマンドが動作しない場合は、`App::revealup`をインストールしてください。

    $ cpanm App::revealup

## 編集方法

`src`ディレクトリのなかに各章ごとのファイルがありますので、そちらを編集してください。

編集後には`build.pl`を実行して`slide.md`を生成してください。

    $ perl build.pl

Perl入学式公式サイト： <http://www.perl-entrance.org>
