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

- AWS Storage Gateway:
- <img width="836" alt="image" src="https://github.com/yoshikikasama/network-and-server/assets/61643054/dddcac6a-c639-4dd9-b403-33877eaec94f">
