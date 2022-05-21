# udemy 模擬テスト2

## 1.

- NATゲートウェイ: private subnetからインターネットへの返信を可能にするためにpublic subnetに設置する。  
&nbsp;pirvate subnetのルートテーブルにNATゲートウェイのルートを設定することが必要。  
&nbsp;これにより、private subnet→public subnet(NAT ゲートウェイ)→インターネットへ返答できる。

## 4.

- AWS WAF: AWS WAF: 一般的なwebの脆弱性からwebアプリケーションまたはAPIを保護するwebアプリケーションfirewall。  
&nbsp;CDNソリューションの一部として、　Amazon CloudFrontにデプロイでき、EC2上で動作するweb serverやorigin serverの手前に  
&nbsp;配置したAppilication Load Balancerや、APIを使用するためのAmazon API Gatewayにデプロイできる。

## 5.

- Amazon S3 Glacier・・・S3と同じ可用性と耐久性を有しつつ、より価格の安いストレージサービス。データのアーカイブや長期バックアップに利用する。  
&nbsp;デフォルトで自動的にブロック暗号の中でも強力なAES-256で暗号化される。

## 6.

- EC2: 利用期間やアタッチされているEBSのボリューム容量が超過すると制限を超えて課金が発生する。

## 7.

- Amazon Machine Image(AMI)・・・EC2インスタンスのOS設定などをイメージとして保持して、新規インスタンス設定に転用するもの。仮想サーバーのbackup。  
&nbsp;一般公開せずに特定のAWSアカウントと共有することができる。

## 8.

- EC2インスタンスのDelicated Host: クラウドサーバーの物理領域を共有することを不可能にするオプション。

## 9.

SSH接続: 22番ポート。

## 10.

- AWS Shield: マネージド型の(DDoS)に対する保護サービスでAWSで実行しているアプリケーションを保護する。
- DDoS: 対象のwebsiteやserverに対して複数のcomputerから大量にアクセスやデータ送付してサイバー攻撃すること。

## 12.

- AWS Artifact: 重要なコンプライアンス関連情報の頼りになる一元管理型のリソース。

## 13.

- EBS: デフォルトでAZ内の複数サーバーにデータがレプリケーションされている。
- レプリケーション: 複製。

## 15.

- S3 One Zone IA:　アクセス頻度が低いデータをレジリエンスが低いAZに保存し、データ保存コストを節約する。
- レジリエンス: 回復力、復元力