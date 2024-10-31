# .devcontainer/Dockerfile
FROM python:3.12

# 'vscode' ユーザーを追加
RUN useradd -m vscode

# PostgreSQL クライアントをインストール
RUN apt-get update && apt-get install -y postgresql-client

# 作業ディレクトリの設定
WORKDIR /workspace
