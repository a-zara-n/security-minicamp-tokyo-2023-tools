# セキュリティミニキャンプ 2023 Tokyo A-1講義向けTool box

## SetUp
### Dockerのインストール
はじめに、Docker for MacまたはDocker for Windowsをインストールしてください。
- [Mac向け](https://docs.docker.jp/docker-for-mac/install.html)
- [Windows向け](https://docs.docker.jp/docker-for-windows/install.html)

## Docker Imageのビルド
Dockerfileがあるディレクトリで以下のコマンドを実行してください。
```sh
make build
```

その後、以下のコマンドでDocker Imageが作成されていることを確認してください。
```sh
docker images | grep security-mini-camp-toolbox
```

## Docker Imageの実行
以下のコマンドでDocker Imageを実行してください。
```sh
make shell
```