# udemy SOA模擬試験 4

## 1.
- S3 Bucket内の暗号化:
    - SSE-S3: Amazon S3 が管理するキーによるサーバーサイド暗号化
    - SSE-KMS: AWS KMSのカスタマーマスターキー (CMK) によるサーバーサイド暗号化
    - SSE-C: ユーザー側で独自の暗号化キーを作成して、AWS側にインポートして利用する暗号化方式

## 2.
- AWS Service Health Dashboard: パブリックイベント。AWSサービス全体の障害情報。
- AWS Personal Health Dashboard: AWSサービス全体のうち、自分のアカウントで受けている障害情報。
- Amazon EventBridge: アカウント固有のイベント(そのリージョン のイベント)
- AWS Health API: パブリックイベント、アカウント固有のイベント

- CloudWatch EC2インスタンスのメトリクス:
    - CPUUtilization: Utilization(利用)。CPU利用率。
    - DiskReadOps: インスタンスストアボリュームで完了した読み取り回数、回数である。
    - DiskReadBytes: インスタンスストアボリュームから読み取られたバイト数。アプリケーションの速度がわかる。
    - NetworkIn: 1 つのインスタンスへの受信ネットワークトラフィックの量を表す。
    - NetworkOut: 1 つのインスタンスからの送信ネットワークトラフィックの量。

- インスタンスストア: 一時ストレージ。永久的にはEBS。

## 3.
- CloudWatchでアプリケーションのクライアントサイドのパフォーマンスを監視:
    - Amazon CloudWatch RUM(Real Time User Monitoring): アプリケーションのクライアントサイドのパフォーマンスを監視することができます。サイト訪問者の地域やブラウザ、動線を統計分析してくれる。
    - Amazon CloudWatch ServiceLens: アプリケーションの正常性、パフォーマンス、可用性を1か所で視覚化および分析できるようにする機能。500,200など内部エラーを表示。
    - Amazon Cloudwatch synthetics: REST API、URL、ウェブサイトコンテンツを、毎分、24 時間年中無休で監視し、アプリケーションエンドポイントが想定通りに動作しなかった場合にアラートを発します。エンドユーザーを模してwebアプリにリクエストを一定間隔でかけて、性能や可用性を監視してくれる。
- CloudWatch X-Rayトレース: アプリケーションが処理するリクエストに関するデータを収集するサービス。

## 4.
- NATゲートウェイ: プライベートIPアドレスをパブリックIPアドレスに変換することで、プライベートサブネット内のインスタンスからインターネットへの返信を可能にするゲートウェイ。
    - <img width="1136" alt="Screen Shot 2022-08-20 at 15 35 01" src="https://user-images.githubusercontent.com/61643054/185732587-c92f3cb1-5df4-4200-aaee-539d44c5ef31.png">
- インターネットゲートウェイ: VPC とインターネットとの間の通信を可能にする VPC コンポーネント。
    - <img width="1135" alt="Screen Shot 2022-08-20 at 15 33 37" src="https://user-images.githubusercontent.com/61643054/185732592-8c501de4-2213-43a4-a24f-3d246b72c83a.png">
- VPCエンドポイント: インターネットを介さずにVPC内から VPC外のリソースへアクセスをする機能:
    - ゲートウェイ型: エンドポイントのIPはグローバルIPとなるので、ネットワークACLでローカルのIPのみという制限を加えると、エンドポイントを利用しても通信が出来なくなります。
    - <img width="1091" alt="Screen Shot 2022-08-20 at 15 45 42" src="https://user-images.githubusercontent.com/61643054/185733021-d45acaf0-cb6a-4090-85ee-77a0c7b79c73.png">
    - <img width="1124" alt="Screen Shot 2022-08-20 at 15 46 00" src="https://user-images.githubusercontent.com/61643054/185733030-c95ff69e-bb31-4a95-a39d-867950dc1253.png">
    - <img width="1075" alt="Screen Shot 2022-08-20 at 15 46 23" src="https://user-images.githubusercontent.com/61643054/185733046-b601f99d-642f-4294-865a-7736608ea9ee.png">
    - <img width="1086" alt="Screen Shot 2022-08-20 at 15 47 00" src="https://user-images.githubusercontent.com/61643054/185733062-01337b0c-fa70-4205-8877-a4f3a951d7ae.png">
- AWS Private Link: ENIを利用してVPC内部にサービスのエンドポイントを立ち上げる。
    - <img width="1144" alt="Screen Shot 2022-08-20 at 15 48 15" src="https://user-images.githubusercontent.com/61643054/185733068-9397bf6d-9583-4541-8561-ef7bcbe9e840.png">

- 送信先(destination): パケットの最終目的地。(旅行に例えると：アメリカ)
- ターゲット(target): 送信先に到達するためのパケットの経由地点。(旅行に例えると：日本の空港)

## 5.
- AWS Config: AWS リソースの設定が継続的にモニタリングおよび記録され、望まれる設定に対する記録された設定の評価を自動化します。これにより、S3バケットの構成内容を履歴管理したり、変更管理することが可能となり、コンプライアンス監査、セキュリティ分析、変更管理、運用上のトラブルシューティングを簡素化できます。 
- S3アクセスアナライザー: インターネットの任意のユーザーや他の AWS アカウント (組織外の AWS アカウント アカウントを含む) にアクセスを許可するように設定されている S3 バケットのポリシーを検証して、アラームを発することができます。

## 6.
- EC2フリート: fleet(船団)。EC2インスタンスを統制する機能。cliじゃないと設定できない。
    - オンデマンドインスタンス、リザーブドインスタンス、スポットインスタンスの購入オプションを一緒に使用して、複数のアベイラビリティーゾーンにまたがって複数のインスタンスタイプを起動できます。
    - EC2 フリート を使用して、以下のことができます。
        - オンデマンドとスポットのターゲット容量を別個に定義し、さらに 1 時間あたりの支払い上限料金を定義する
        - アプリケーションに最適なインスタンスタイプを指定する
        - 各購入オプション内でフリート容量を Amazon EC2 で分散する方法を指定する

    - ![Screen Shot 2022-08-27 at 5 57 11](https://user-images.githubusercontent.com/61643054/186989557-c479c402-d7cf-4724-a0a4-b6886947d99b.png)

- Saving Plans: 1年または3年の期間で特定の利用量（1時間につき何ドル分AWSを利用するかを決めておくこと）を契約することで、利用料金が割引になる料金プラン。
    - ![Screen Shot 2022-08-25 at 6 09 55](https://user-images.githubusercontent.com/61643054/186524207-11a14a47-a459-4fde-83b7-e839d4251371.png)
    - ![Screen Shot 2022-08-25 at 6 10 10](https://user-images.githubusercontent.com/61643054/186524237-30b92f62-ed4e-4a91-8418-6f95f419dda5.png)

- AWS CLI操作のために、IAMユーザーに必要な情報:
    - aws_access_key_id: いつでもIAMで確認できる
    - aws_secret_access_key: 作成時のみ参照可能

## 7.
- EFSのライフサイクル管理: 設定したライフサイクルポリシーに基づいて、保存データを自動的に低価格なEFS IA ストレージクラスに移動させることができます。これによって、ファイル保存コストを低減させることができます。

## 8.
- EC2インスタンスが、再起動後すぐに保留状態から終了状態に移行してしまうトラブルの原因:
    - EBSの容量制限超過。
    - EBSスナップショットの破損（再起動処理時にスナップショットを利用した場合）
    - ルートEBSボリュームは暗号化されており、復号化のためにKMSキーにアクセスする権限がない。
    - インスタンスを起動するために使用したインスタンスストアバックアップAMIに必要な部分（image.part.xxファイル）がない。 

## 9.
- Amazon CloudWatch クロスアカウントクロスリージョンダッシュボード: リージョン間のリソースを表示できる。
- CloudWatch Metric Math: リージョン間で完全に分離されていますが、メトリクス計算を使用して、リージョン間で類似したメトリクスを集計できます。

## 10.
- AWS Encryption SDK: 業界標準とベストプラクティスに基づいて簡単にデータを暗号化および復号化できるように設計されたクライアント側の暗号化ライブラリ。ELBで送受信されるデータを保護することができます。 
- AWS Certificate Manager(ACM): CloudFrontに設定し、転送中データを暗号化データ転送時の暗号化を実施することができます。AWS Certificate Manager は、AWS サービスとユーザーの内部接続リソースで使用するパブリックとプライベートの Secure Sockets Layer/Transport Layer Security (SSL/TLS) 証明書のプロビジョニング、管理、デプロイを簡単にします。このACMで生成した証明書を CloudFrontに設定して、転送中データを暗号化します。
- 
## 11.
- AWS Chatbot: Slack チャンネルや Amazon Chime チャットルームで AWS のリソースを簡単にモニタリングおよび操作できるようにしてくれるインタラクティブエージェントです。

## 12.
- Amazon RDS のモニタリングで重要な点は、CloudWatch アラームの対象外の項目を手動でモニタリング、RDS Peformance Insightで可能:
    - DB インスタンスへの接続の数
    - DB インスタンスへの読み書きオペレーションの量
    - DB インスタンスが現在利用しているストレージの量
    - DB インスタンスのために利用されるメモリおよび CPU の量
    - DB インスタンスとの間で送受信されるネットワークトラフィックの量

## 14.
- S3 ACL(Access Control List):
    - WRITE権限: バケット内のオブジェクトを作成、上書き、削除ができる
    - READ権限: ユーザーがバケット内のオブジェクトを参照
    - READ_ACP: バケットACLを読み取る
        - ACP: Access Control Permission
    - WRITE_ACP: ユーザーが該当するバケットのACLを書き込む

## 15.
- AWS Site-to-Site VPN: VPC からリモートネットワークへのアクセスを有効にする
    - VPN 接続: VPC とユーザーのオンプレミスネットワークの間の接続。
    - カスタマーゲートウェイ: カスタマーゲートウェイデバイスに関する情報を AWSに提供するAWS リソース。
    - カスタマーゲートウェイデバイス: Site-to-Site VPN 接続のユーザー側にある物理的なデバイスまたはソフトウェアアプリケーション。
    - 仮想プライベートゲートウェイ: 単一の VPC にアタッチできる Amazon 側の Site-to-Site VPN 接続の VPN エンドポイントです。
    -  転送ゲートウェイ: 複数の VPC とオンプレミスネットワークを相互接続するために使用でき、Site-to-Site VPN 接続の Amazon 側の VPN エンドポイントとして使用できる転送ハブ。