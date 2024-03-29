# udemy 模擬テスト 2

## 1.

- NAT ゲートウェイ: private subnet からインターネットへの返信を可能にするために public subnet に設置する。  
  &nbsp;pirvate subnet のルートテーブルに NAT ゲートウェイのルートを設定することが必要。  
  &nbsp;これにより、private subnet→public subnet(NAT ゲートウェイ)→ インターネットへ返答できる。

## 4.

- AWS WAF: AWS WAF: 一般的な web の脆弱性から web アプリケーションまたは API を保護する web アプリケーション firewall。  
  &nbsp;CDN ソリューションの一部として、　 Amazon CloudFront にデプロイでき、EC2 上で動作する web server や origin server の手前に  
  &nbsp;配置した Appilication Load Balancer や、API を使用するための Amazon API Gateway にデプロイできる。

## 5.

- Amazon S3 Glacier・・・S3 と同じ可用性と耐久性を有しつつ、より価格の安いストレージサービス。データのアーカイブや長期バックアップに利用する。  
  &nbsp;デフォルトで自動的にブロック暗号の中でも強力な AES-256 で暗号化される。

## 6.

- EC2: 利用期間やアタッチされている EBS のボリューム容量が超過すると制限を超えて課金が発生する。

## 7.

- Amazon Machine Image(AMI)・・・EC2 インスタンスの OS 設定などをイメージとして保持して、新規インスタンス設定に転用するもの。仮想サーバーの backup。  
  &nbsp;一般公開せずに特定の AWS アカウントと共有することができる。

## 8.

- EC2 インスタンスの Delicated Host: クラウドサーバーの物理領域を共有することを不可能にするオプション。

## 9.

SSH 接続: 22 番ポート。

## 10.

- AWS Shield: マネージド型の(DDoS)に対する保護サービスで AWS で実行しているアプリケーションを保護する。
- DDoS: 対象の website や server に対して複数の computer から大量にアクセスやデータ送付してサイバー攻撃すること。

## 12.

- AWS Artifact: 重要なコンプライアンス関連情報の頼りになる一元管理型のリソース。

## 13.

- EBS: デフォルトで AZ 内の複数サーバーにデータがレプリケーションされている。
- レプリケーション: 複製。

## 15.

- S3 One Zone IA:　アクセス頻度が低いデータをレジリエンスが低い AZ に保存し、データ保存コストを節約する。
- レジリエンス: 回復力、復元力

## 17.

- ネットワーク ACL: ステートレスであるため、インバウンドとアウトバウンドの両方を設定することができる。
- ステートフル: サーバーがクライアント側アプリケーションの状態(セッション状態)を覚えていること。セキュリティグループは、  
  &nbsp;インバウンド/アウトバウンド通信の際に「このサーバー(port 番号/プロトコル)での通信は許可されているんだな」と覚えているので、  
  &nbsp;それに対するアウトバウンド/インバウンド通信はセキュリティグループで設定がされていなくても許可される。  
  &nbsp;往復のやり取りに必須となる通信において自動的に応答の通信を許可する仕組み。
- ステートレス: ステートフルの反対でサーバーがセッションを覚えていない状態のこと。そのため、インバウンド/アウトバウンド療法の設定が必要。

## 18.

- リードレプリカ: 読み込み専用として利用することができるマスターの複製データベース。Amazon RDS ではマスターの DB インスタンスを非同期にレプリケーションする  
  &nbsp;機能として利用する。

## 20.

- CloudWatch Logs: EC2 インスタンス, AWS CloudTrail, Route 53 およびその他のソースのトラフィックのログファイルの監視、保存、アクセスができる。
- CloudWatch Agent: EC2 インスタンス内部のメトリクスを取得するためにインストールするエージェント。
- CloudWatch Events: AWS リソースでの変更を示すイベントをモニタリングすることができる。

## 21.

- CloudWatch: AWS Outposts を利用することで CloudWatch をオンプレミス環境にインストールして利用することができる。

## 24.

- peering: ネットワーク同士が対等な関係に接続すること。
- VPC peering: 異なる AWS アカウントの VPC 間を peering すること。

## 29.

- EC2 convertible リザーブドインスタンス: AWS によって提供されている別のコンバーティブルリザーブドインスタンスに交換することが可能。

## 30.

- AWS ADS(Application Discovery Service): オンプレミス環境にあるアプリケーションに対するプロファイルが自動的に作成されて以降に必要なデータを取得できる。  
  &nbsp;AWS へのアプリケーションの迅速かつ確実な移行計画を立案する際に利用できる。
- AWS Pricing Calculator: AWS クラウドを利用した場合のコスト予測を算出することができる。

## 32.

- AWS Artifact: AWS との契約を確認、承認、管理できるサービス。

## 34.

- AWS Lake Formation: S3 などのサービスを利用したデータレイク構成を簡単に実現するためのサービス。

## 37.

- Amazon Inspector: AWS にデプロイしたアプリケーションの自動化されたセキュリティ評価サービス。
- CloudTrail: AWS のアクティビティログを取得するサービス。

## 43.

- public subent を設置するには: サブネットを作成するとデフォルトでは private subnet になる。VPC に配置したインターネットゲートウェイへのルートを  
  &nbsp;ルートテーブルに設定することで public subnet として機能する。

## 45.

- AWS Personal Health Dashboard: アカウントに影響する可能性がある AWS リソースに対する異常と正常が確認できるヘルスイベントの情報が表示される。

## 61.

- Amazon Direct Connect Gateway: 複数の AWS リージョンを連携できる。
