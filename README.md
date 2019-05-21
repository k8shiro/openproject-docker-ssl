
# OpenProject docker-composeセット

OpenProjectのDocker環境立ち上げセット
SSL化対応
リスタートするとOpenProjectが立ち上がらないバグに対応(9.0に修正が入るらしい)

# 使い方

```
cd ssl
openssl genrsa 2024 > ssl.key
openssl req -new -key ssl.key > ssl.csr
openssl x509 -req -days 3650 -signkey ssl.key < ssl.csr > ssl.crt

chmod +x ./entrypoint/entrypoint.sh

docker-compose up -d
```
