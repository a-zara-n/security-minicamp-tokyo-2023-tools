# セキュリティミニキャンプ 2023 Tokyo A-1講義向けTool box


```sh
git clone https://github.com/a-zara-n/security-minicamp-tokyo-2023-tools.git
cd security-minicamp-tokyo-2023-tools
make build
make shell
```

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
または、下記のコマンドを実行し、Docker Imageをビルドしてください。
```sh
docker build --no-cache -t security-mini-camp-toolbox .
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

または、下記のコマンドを実行し、Docker Imageを実行してください。
```sh
docker run -v $(PWD)/assets:/tmp/minicamp -it --rm security-mini-camp-toolbox
```