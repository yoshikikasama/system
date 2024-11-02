# .devcontainer/Dockerfile
FROM mcr.microsoft.com/devcontainers/python:1-3.11-bullseye

ENV PYTHONUNBUFFERED 1
# PostgreSQL クライアントをインストール
RUN apt-get update && apt-get install -y postgresql-client

# 作業ディレクトリの設定
WORKDIR /workspace
