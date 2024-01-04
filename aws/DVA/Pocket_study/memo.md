# AWS DVA-c02 ポケットスタディ

## section2 開発

- SDK や CLI がどの認証情報を使うかの優先順位:

  - 1. コードのオプションやパラメータで指定されたアクセスキー情報
  - 2. 環境変数
  - 3. aws/credentials
  - 4. ec2 の IAM Role

- EBS: OS やソフトフェアなどを起動するために使用
- EFS: 増減するデータの保存先
- こうすることで EC2 と EBS を使い捨てにでき設計にスケーラビリティを持たせることができる。

- AWS Storage Gateway:オンプレミスに仮想マシンをデプロイして保存したデータが自動的に S3 や EBS を使用するようにする。
  - ファイルゲートウェイ: NFS/SMB プロトコルで接続できる。
  - ボリュームゲートウェイ: iSCSI プロトコルで接続できる。
  - テープゲートウェイ: 仮想テープライブラリとして接続できる。
- <img width="836" alt="image" src="https://github.com/yoshikikasama/network-and-server/assets/61643054/dddcac6a-c639-4dd9-b403-33877eaec94f">

- CloudFront: エッジロケーションを使用してキャッシュコンテンツを配信。
- CloudFront Behavior: オリジンのファイルパスに応じてリダイレクト先を S3 Bucket または ALB にするかを設定できる。

- S3 の CORS(Cross Origin Resource Sharing):
  - Webfont Bucket にウェブフォントファイル
  - html-css-sample Bucket に CSS ファイル
  - CSS ファイルからウェブフォントファイルを参照:
  - CSS 例：@font-face{
    font-family: "samplefont";
    src:url("https//webfont.s3.amazonaws.com/sample.woff2")
    format("woff2");
    }
  - CORS により他の許可されたドメインからのリクエストを許可できるので、webfont Bucket で以下の設定を行う
  - bucket policy 例:
  - [
    {
    "AllowedHeaders":["*"],
    "AllowedMethods":["GET"],
    "AllowedOrigins":["https//html-css-sample.s3.amazonaws.com"]
    }
    ]
  - ElastiCache:
  - ![image](https://github.com/yoshikikasama/network-and-server/assets/61643054/4bab373a-3e21-4c4c-9ae9-8658889d3027)

