# udemy 模擬テスト(応用レベル②)

## 2.
- AWS System Manager
    - 選択した目的やアクティビティごとにAWSリソースをグループ化
    - AWSリソースに関連する運用作業項目を一元的に表示、調査、解決する。
    - バッチ管理などのメンテナンスタスク及びデプロイタスクを自動化する

## 3.
- AWS Device Farm: 様々なデバイスへの対応ができているかを効率的に検証する

## 4.
- EC2 Instance Connect: IAMポリシー及びプリンシパルを使用して、インスタンスへのSSHによるアクセスをコントロールする。
- AWS CloudShell: webブラウザ経由でAWS CLIコマンドラインを実行できるツール。

## 5.
- VPCエンドポイント: VPCとサポートされているサービスの間の接続が有効
- インターフェースVPCエンドポイント: AWS PrivateLink を使用するサービスに接続できる。
- AWS PrivateLink: 自分のVPCのNLB配下のWEB等のサービスを、同一リージョン内の他のVPCに公開できるサービス。

## 7.
- S3ストレージクラスの評価指標: 可用性と耐久性。

## 8.
- AWS Security Hub: すべてのAWSアカウントにおける高優先度のセキュリティアラートおよびコンプライアンス状況を包括的に確認できるサービス。
- Amazon Detective: CloudTrail、VPC Flow Logs、GuardDutyのログや結果を自動的に収集し、潜在的なセキュリティの問題を調査・分析する。

## 10.
- Amazon CodeGuru: コードレビューの自動化。

## 12.
- Amazon WorkSpaces: 様々なデバイスからオンデマンドでアクセスできる Windows および Linux 向けのフルマネージドデスクトップ仮想化サービス。
- Amazon WAM(WorkSpaces Application Manager): AWS経由で提供されるAmazon WorkSpacesへのソフトウェア配信を管理するためのサービス。

## 13.
- Amazon EMR: ETL、ストリーム分析。

## 14.
- Elastic IPアドレスに料金が発生しない条件
    - Elastic IPアドレスがEC2インスタンスに関連づけられている。
    - Elastic IPアドレスに関連づけられているインスタンスが実行中である。
    - インスタンスに1つのElastic IPアドレスしか添付されていない。

## 24.
- AWS Batch: 数十万件のバッチコンピューティングジョブを AWS で簡単かつ効率的に実行。

## 27.
- Pay-As-You-Go: 使った分たけライセンス料を支払う課金方法。

## 29.
- Elastic Beanstalk: アプリケーションの頻繁なバージョン変更が発生する場合でも、 [Configuration] セクションで設定オプションによってバージョン変更を実施すると、影響を受けるすべてのリソースに対して変更内容を自動的に適用することができる。