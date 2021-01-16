# deepl-hatenablog
DeepLではてなブログを翻訳したい(WIP)

## 前提
### はてなブログ
1. API申請してconsumer key, cuonsumer secret取得
http://developer.hatena.ne.jp/ja/documents/auth/apis/oauth/consumer

read_private, write_privateを有効化

2. access token, access toekn secretを取得

```bash
$ bundle install
$ get_access_token <your consumer key> <your consumer secret>
```


## 使い方
[direnv](https://github.com/direnv/direnv)などで環境変数に必要項目を入れる

```bash
cp .envrc.sample .envrc
# 項目埋める
direnv allow
```

```bash
# 疏通確認
bundle exec ruby ping.rb
```