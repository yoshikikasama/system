# udemy CLF動画のSAA試験

## 1.

- Amazon CloudFront: AWS Shield Standardが組み込まれており、DDoS防御を提供している。
- AWS WAF: レイヤ7のアプリケーション層でのDDoS攻撃関連にも対応しており、アクティビティがDDoS攻撃であると判断された場合は、攻撃を軽減するための独自のAWS WAFルールを適用して攻撃を緩和することが可能。
- AWS Shield: マネージド型の分散サービス妨害(DDoS)に対する保護サービス。

## 2.
- Amazon SQS デッドレターキュー: ポーリングされずに残ったメッセージを別のキューに移動することで正常に処理できなかったメッセージを隔離する。問題のあるメッセージを分離して、処理が成功しない理由を調べることができる。

## 3.
- Amazon Neptune: 高速で信頼性の高い、完全マネージド型のグラフデータベースサービス。
- Elastic Search: 分散型RESTful検索/分析エンジン。

## 4.
- DynamoDB: ビッグデータ解析を目的とした場合は高速処理のデータ保持をする時に使用。

## 5.
- S3
    - バケットポリシー: バケットへのアクセス権をJSONで設定
    - ACL: オブジェクトに個別に設定
    - 事前署名付きURL: AWS SDKで生成した事前署名付きURLでS3オブジェクトURLにアクセスできる権利を一定期間付与する。インターネット上の第三者に閲覧させる。

## 7.
- Lambda
    - スケジュール機能を利用して特定時刻をトリガーにしてLambda関数を実行する
    - バージョニング機能でLambda関数の一時点のバージョン管理が可能である。
    - ENIを通してVPC内のリソースアクセスできる。
- ENI(Elastic Network Interface): ネットワークインタフェースをVPCに追加してくれる。

## 8.
- AWS KMSを適用できる対象サービス:
    - S3
    - Route53
    - ElasticTranscoder

## 9. 
- Amazon GuardDuty:
    - 悪意のある操作や不正な動作を継続的にモニタリングする脅威検出サービス
    - 機械学習を利用した不正検知
    - VPCフローログを解析できる
    - IPアドレスやドメインリストを解析できる

## 10.
- AWS Artifact:
    - 世界各地にある監査機関の指定する基準/規制の遵守状況を、検証したコンプライアンスレポートを生成する。
    - AWSアカウントとの契約の確認・受託・管理を実施する。
- AWS Service Catalog: CloudFormationのテンプレートを利用して、管理されるAWSリソース定義や、これらの利用権限をカタログとして一元管理する機能を提供する。
- AWS Config: 構成変更を管理するストリーム。履歴管理するヒストリー。構成要素を保存するスナップショットの機能がある。

## 11.
- AWS KMS: キーを簡単に作成、および管理し、暗号化キーの設定を制御できる。
- CloudHSM:クラウドベースのハードウェアセキュリティモジュール (HSM) です。これにより、業界標準に従ったデバイスを利用して、AWS クラウドで暗号化キーを管理することができます。

## 12.
- ![Screen Shot 2022-08-03 at 7 59 33](https://user-images.githubusercontent.com/61643054/182487719-ff340de6-b8cd-4e37-8c0e-fe87f23e073e.png)

## 13.
- Amazon RDSにおけるセキュリティグループ: 特定のIPアドレスまたはEC2インスタンスからのアクセス制御。
- アウトバウンド通信: 内部から外部への通信
- インバウンド通信: 外部から内部への通信

## 14.
- マルチVPC: ネットワークを分けて、アプリケーションを分割したり、管理をわけたりする際に利用する構成

## 15.
- S3 One-Zone-IA: ひとつの AWS アベイラビリティーゾーンに保存しますので、このストレージクラスに保存されたデータはアベイラビリティーゾーンが破壊されると失われます。したがって、可用性が低くなっています。

## 17.
- AWS X-Ray: 本番環境やマイクロサービスアーキテクチャを使用して構築されたアプリケーションなどを分析およびデバッグできる。
    - リクエスト動作の確認: アプリケーション全体で転送されるユーザーリクエストをトレース。
    -  アプリケーションの問題の検出: アプリケーションの実行状況についてのインサイトを収集して、問題の根本原因を調べる。
    - アプリケーションのパフォーマンスの向上: X-Ray のサービスマップにより、アプリケーション内のサービスやリソースの関係をリアルタイムで表示できます。高いレイテンシーが発生している場所を簡単に検出し、サービスのノードとエッジのレイテンシーのディストリビューションを視覚化し、アプリケーションのパフォーマンスに影響を与える特定のサービスやパスをドリルダウンすることができます。

## 18.
- ELB, Route53: トラフィック分散やルーティングを実施するサービスを使用して、正常なエンドポイントにのみトラフィックをルーティングすることにより、ヘルスチェックと障害発生時の自動フェールオーバーやサーバー切り替えを設定できる。
- CloudWatch: EC2インスタンスの異常発生時に再起動などのアクションを自動化することができる。

## 19.

- EBSボリューム
    - 汎用SSD: 幅広いトランザクションワークロードに対応できる価格とパフォーマンスのバランスが取れた汎用 SSDボリューム
    - プロビジョンドIOPS(Input/Output Per Second): レイテンシーの影響が大きいトランザクションワークロード向けに設計された極めてパフォーマンスの高い SSD ボリューム
    - スループット最適化HDD: 高いスループットを必要とするアクセス頻度の高いワークロード向けの低コストの HDD ボリューム
    - EBSのコールドHDD: アクセス頻度の低いワークロード向けに設計された極めて低コストの HDD ボリューム

## 21.
- EC2のDelicated Host: 物理的にサーバーを占有するインスタンスタイプ

## 22.
- Amazon IoT Core: インターネットに接続されたデバイスから、クラウドアプリケーションやその他のデバイスに簡単かつ安全に通信するためのマネージド型クラウドサービス。数十億個のデバイスと数兆件のメッセージをサポートしており、それらのメッセージを AWS エンドポイントや他のデバイスに確実かつセキュアに処理してルーティング。

## 23.
- AWS Storage Gateway: オンプレミス環境とS3とを統合して、ハイブリッド構成を実現することができる。

## 24.
- エッジロケーション: 
    - コンテンツ配信: CloudFrontを利用する際に使用するロケーション。
    - キャッシュ蓄積
    - データ転送高速化

## 25.
- Amazon EBSの価格:
    - ボリューム: 月ごとにプロビジョニングするGBの量
    - アウトバウンドのデータ転送量
    - スナップショット: Amazon S3に保存するデータ容量

## 26.
- AWS X-Ray: アプリケーションやその基盤となるサービスの実行状況を把握し、パフォーマンスの問題やエラーの根本原因を特定して、トラブルシューティングを行える。

## 27.
- Bare Metalインスタンス: アプリケーションが基盤となるサーバーのプロセッサーとメモリーに直接アクセス可能なインスタンス
- ハードウェア専有インスタンス: 専用HWのVPCで実行されるEC2インスタンス。

## 28.
- ネットワークACL: 
    - サブネット単位で適用
    - ステートレス(インバウンド/アウトバウンドの設定が必要)
    - 許可/拒否をIn/Outで指定
    - デフォルトでは全ての通信を許可する設定
    - 番号の順序通りに適用
- VPCのセキュリティグループ設定
    - インスタンス単位で適用
    - ステートフル(インバウンドのみ設定すればアウトバウンドも許可される)
    - 許可のみをIn/Outで設定
    - デフォルトでは同じセキュリティグループ内通信のみ許可
    - 全てのルールを適用

## 29.
- AWS Direct Connect: オンプレミスから AWS への専用ネットワーク接続の構築するソリューション

## 30.
- VPCエンドポイント: PrivateLink を使用する AWS サービスや VPC エンドポイントサービスに VPC をプライベートに接続する機能。
    - インタフェースエンドポイント(PrivateLink型):サポートされるサービスを宛先とするトラフィックのエントリポイントとして機能するプライベート IP アドレスを持つ Elastic Network Interface 。
    - ![Screen Shot 2022-08-06 at 20 28 04](https://user-images.githubusercontent.com/61643054/183247124-f3d11921-715e-4b1c-8d84-25d6541cbef4.png)
    - ゲートウェイエンドポイント:サポートされるAWSサービスを宛先とするトラフィックのルートテーブルで、ルートのターゲットとして指定するゲートウェイです。Amazon S3とDynamoDBとの連携に利用される。VPC にインターネットゲートウェイや NAT デバイスを必要とせずに、Amazon S3 および DynamoDB への信頼性の高い接続を提供します。ゲートウェイエンドポイントは AWS PrivateLink を有効化しません。
    - ![Screen Shot 2022-08-06 at 20 31 52](https://user-images.githubusercontent.com/61643054/183247138-50549999-83ad-42dc-8e81-b4d6d309aa84.png)
- エンドポイント: VPC のインスタンスとサービスの間で通信を可能にする VPC コンポーネント。

## 31.
- S3 Standard IA(Infrequency Access): 低頻度アクセスデータ用のストレージ。

## 32.
- IAMユーザーのデフォルト設定: 全てのAWSサービスにアクセスする権限を有していない。

## 33.
- Elastic IPをアタッチしたEC2インスタンスを停止している場合に課金が発生する。

## 35.
- クラウドセキュリティに関する7つの設計原則
    - 強固な認証基盤の整備
    - 追跡可能性の実現
    - 全レイヤーへのセキュリティ適用
    - セキュリティのベストプラクティス自動化
    - 転送中および保管中のデータの保護
    - データに人を近づけない
    - セキュリティイベントに対する準備
- クラウドセキュリティに関する6つのベストプラクティス
    -  Identity and Access Management
    - アイデンティティとアクセス管理
    - 発見的統制
    - インフラストラクチャ保護
    - DDos攻撃を緩データ保護
    - インシデント対応

## 36.
- CSE(Client Side Encryption): ユーザー側が用意したキーによって、クライアント内で暗号化。

## 37.
- CLB(Classic Load Balancer): レイヤー4,7に対応しており、TCP,SSL,HTTP,HTTPSリスナーを利用。古いタイプなのでALB/NLBの利用を優先する。
- ALB(Application Load Balancer): レイヤー7に対応し、HTTP/HTTPSリスナーに対応。URLのパスに基づいてルーティングが可能。IPアドレス可変。
- NLB(Network Load Balancer): L4 NATロードバランサーでTCPリスナーに対応。ALBよりも高パフォーマンス処理が可能。IPアドレス固定。

## 38.
- RDSのスナップショット: リージョン内のS3に保存される。

## 39.
- Pre-warning申請: Business/Enterpriseサポート加入者向けにALBを事前にスケールさせておく機能。

## 40.
- Route53
    - プライベートホストゾーン: VPC内に閉じたプライベートネットワーク内のDNSドメインのレコードを管理するコンテナ。
    - パブリックホストゾーン: インターネット上に公開されたDNSドメインのレコードを管理するコンテナ

- ドメイン: hogehoge.jp。○○○.○○
- サブドメイン: www.hogehoge.jp。独自ドメインをさらに分割して利用できるドメイン。○○○.○○○.○○

## 41.
- AWSのコスト分析に向けた対応: リソースグループに対するタグ付けの実施。

## 43.
- エイリアスレコード: Route53独自のDNS拡張機能。DNSクエリにAWSサービスのエンドポイントのIPあどれ紙を返答することで、AWSリソースにドメイン名を設定することができる。

## 44.
- AWS Glue: Amazon S3 上のデータを自動的にクロールし、データフォーマットを特定し、他の AWS 分析サービスで使用するためのスキーマを提案。

## 45.
- Amazon OpenSearch Service: ダウンタイムなしで、Elasticsearch を大規模かつ簡単にデプロイ、保護、運用する完全マネージド型サービス。
- Elastic Search: オープンソースの全文検索エンジン。大量のドキュメントから目的の単語を含むドキュメントを高速に抽出することができる。

## 47.
- Amazon Cloud Directory:
    - 柔軟性に優れたクラウドネイティブのディレクトリを構築し、複数のディメンションに沿ったデータの階層を編成できる。
    - マネージド型インフラストラクチャで自動的にスケールできる。

## 48.
- AWS WAF: IP アドレス、HTTP ヘッダーと本文、またはカスタム URI を含む条件に基づいてウェブトラフィックをフィルタリングするルールを作成でき、web攻撃から保護できる。

## 49.
- S3 RRS: オブジェクトの耐久性の評価が最も低いS3ストレージ。非推奨ストレージ。

## 50.
- 段階的価格設定: 使用量が多いほど単位あたりの支払いが少ないこと。
    - S3、API Gateway

## 51.
- IDフェデレーション: インターネットの外部プロバイダーを利用したユーザー認証連携のことを指します。既に認証が済んだユーザーIDを使って、別のシステムにアクセス出来るようにする仕組み。

## 52.

- 社内システムのSQL型RDBの移行: RDSとのGAP分析が必要

## 55. 

- CloudWatch: CloudWatchはAWSリソースとAWSで実行するアプリケーションに対して、様々なメトリクスやログを収集・追跡するモニタリングサービスです。
- CloudTrail: AWSユーザーの行動ログを取得し、ガバナンス、コンプライアンス、および運用とリスクの監査を行えるように支援します。
- GuardDuty: AWS上での悪意のある操作や不正な動作を継続的にモニタリングする脅威検出サービス。
- CloudHSM(HardWareSecurityModule): 専用のハードウェアで暗号化キーを保管します。安心してキーを管理することが可能です。
- Amazon Inspector: EC2インスタンスにおけるセキュリティレベルを診断するサービス。
## 57.
- S3による静的Webホスティング:
    - ブロックパブリックアクセスを無効化する
    - バケットポリシーでバケットの読み取り許可を設定する
    - Index.htmlなどのIndexドキュメントをバケット内に保存する
    - 静的Webホスティングの設定画面でIndex.htmlなどのインデックスドキュメントを設定し、有効化する

## 58.
- S3のタイプ
    - STANDARD: 複数箇所にデータを複製するため耐久性が高い。頻繁に利用するデータを大量に保存するのに向いている。
    - STANDARD-IA: IAはInfrequency Accessの略であり、低頻度アクセスデータ用のストレージ。STANDARDに比べて安価だが、One-Zone-IAより高い。
    - One-Zone-IA: 高頻度と低頻度の二つのアクセス階層を利用し、アクセスがあるファイルは高頻度(標準クラス)に維持しつつ、アクセスがないファイルは低頻度(標準IAクラス)に自動で移動する。単一アベイラビリティーゾーンに保存。
    - S3 Glacier Flexible Retrieval: 柔軟に取得できる。1年に1~2回アクセスされ、非同期で取り出されるアーカイブデータ向け。
    - S3 Glacier Instant Retrieval: 瞬時に取得できる。アクセスされることがほとんどなく、ミリ秒単位の取り出しが必要な長期間有効なデータ向け。
    - S3 Glacier Deep Archive: 長期記録。最安のアーカイブストレージ。7~10年以上保持される長期間使用されるものの、めったにアクセスされないデータ向け。

## 59.

- EBS: EC2につけるストレージ。ハードディスクのようなもの。
- インスタンスストア: EC2に物理的に接続されているブロック型ストレージ。データの一時保存用ストレージ。

## 60.
- スナップショット: EBSボリュームそのものからデータのコピーを取得しS3上に保管したもの。
- AMI: 新しい仮想マシンの作成およびプロビジョニングに使用できる仮想マシンのマスターコピー。

## 61.
- S3の命名規則:
    - 3桁から63桁でネーミングする。
    - グローバルでユニークな名前にする必要がある。

## 62.
- AWS Service Catalog: AWS での使用が承認された ITサービスのカタログを作成および管理できる。

## 63.
- ブートストラップ: インスタンスを起動する最初の一回だけ実行されるもので、最初に実行したいコマンドを事前にシェルで書いておいておくことで、初期設定やソフトのインストールを自動で行うことができる。
- EC2インスタンスの起動テンプレート: EC2インスタンスの起動構成を設定することで、AMIの選択からインスタンスタイプの設定、セキュルティグループの設定などの詳細な設定プロセスを自動化することができる。

## 67.
- Amazon Elastic Transcoder: 高度なスケーラビリティ、使いやすさ、高い費用効率性を実現する設計で、開発者や企業は、メディアファイルをその元のソース形式からスマートフォン、タブレット、PC などのデバイスで再生可能できる形式に変換できる。MOV→MP3形式とかに。

## 68.
- AZ: 1つ以上のデータセンターで構成されている。

## 69.
- Cron: 多くのUNIX系OSで標準的に利用される常駐プログラム（デーモン）の一種で、利用者の設定したスケジュールに従って指定されたプログラムを定期的に起動してくれるもの。

## 70.
- AWS Direct Connect: オンプレミス環境ネットワークから AWSネットワーク への専用線ネットワーク接続を構築するサービス。
- AWS VPN(Virtual Private Network): オンプレミスネットワーク、リモートオフィス、クライアントデバイス、および AWS グローバルネットワーク間に安全な接続を確立する。
- ![Screen Shot 2022-08-11 at 10 52 41](https://user-images.githubusercontent.com/61643054/184052137-5694e58e-c314-4890-9cb1-ea7d5f10d5f0.png)
- VPC Peering: VPC間を接続する機能。
- AWS Storage Gateway: オンプレミス環境のストレージと　S3と連携させて、ハイブリッド構成を実現するサービス。
- インターネットゲートウェイ: VPCからインターネットへのアクセスを可能にするゲートウェイ。

## 72.
- AWS Network Firewall:
    - Firewall Endpoint専用のパブリックサブネットを構築して、そこにNetwork Firewall用のエンドポイントを設定することが必要。
    - VPCに不可欠なネットワーク保護を実施する侵入防止システムを提供するファイアーウォールサービス。
    - 侵入防止システム (IPS) は、アクティブなトラフィックフロー検査を提供するため、シグネチャベースの検出を使用して脆弱性の悪用を特定してブロック。
    - 既知の不正な URL へのトラフィックを停止し、完全修飾ドメイン名を監視できるウェブフィルタリングも提供する。
    - ![Screen Shot 2022-08-11 at 11 16 13](https://user-images.githubusercontent.com/61643054/184054040-46a92a88-55d2-43c4-b246-7323d4656a60.png)

## 73.
- リードレプリカ: 異なるリージョンを利用したデータ冗長性を表現し、災害復旧を提供するRDSの機能。

## 77.
- Kinesis ストリーミングデータプラットフォーム
- Kinesisエージェント: スタンドアロンの Java ソフトウェアアプリケーションで、データを収集して Kinesis Data Streams に送信する簡単な方法を提供。
- Amazon Kinesis Data Firehose: リアルタイムのストリーミングデータをS3やRedShift、Elasticsearchなどのデータストア、分析ツールに配信するAWSのマネージドサービス。送信元のデータを変換してから送信先に配信したい場合、オプションでLambda関数を呼び出すことが可能。
- ストリーミングデータ: 大量のデータソースによって継続的に生成されるデータのこと。(ログ、IoTデータ)
- Amazon Kinesis Data Analytics: SQLクエリやApache Flink を使用して、ストリーミングデータをリアルタイムで分析するサービス.

## 78.
- フォールトトレランス: システムに障害が発生した場合にも正常に機能し続けること

## 79.
- APNコンサルティングパートナー: 顧客に対し、AWS 上でのワークロードとアプリケーションの設計、開発、構築、移行、および管理を支援するプロフェッショナルサービス企業。顧客をサポートするための幅広いリソースとトレーニングを利用できる。

## 81.
- EC2インスタンスの価格:
    - 購入オプション（オンデマンド、予約済み、スポット、ハードウェア専用、Dedicated）
    - 選択されたAMI
    - 選択されたインスタンスタイプ
    - リージョン
    - データの入出力 （データ転送アウトとリージョン間のデータ入出力が有料）
    - ストレージ容量
    - 利用時間

## 83.
- AWS Trusted Advisor: ベストプラクティスに基づいて、今設定されているものを自動的にをチェックし、問題がある場合はアドバイスをしてくれるサービス。
    - コストの最適化
    - パフォーマンス
    - セキュリティ
    - 耐障害性
    - サービスの制限

## 84.
- EC2へのパッチ: EC2はアンマネージドサービスなので、パッチ管理はユーザー側の責任となる。

## 86.
- ハイブリッドクラウド: プライベートクラウドを含めた異なるクラウドサービスのメリットを組み合わせて利用する方法。
- AWS Directory Service: Microsoft Active Directory (AD) を AWS の他のマネージメントサービスと併用するための複数の方法を提供。
- Directory: ユーザーやグループなどの情報を保存。
- Simple AD: 小規模環境向け簡易AD。登録できるオブジェクト数（ユーザ、グループ、コンピュータ）制限がある。

## 87.
- AWS CloudTrail: AWS マネジメントコンソールでの操作と AWS API コールを記録することにより、ユーザーおよびリソースのアクティビティを把握する。

## 88.
- Well-Architected Framework:
    - Reliability：回復性の高いアーキテクチャを設計
    - Performance Efficiency：パフォーマンスに優れたアーキテクチャを定義
    - Security：セキュアなアプリケーションおよびアーキテクチャを規定
    - Cost Optimization：コスト最適なアーキテクチャを設計
    - Operational Excellence：オペレーショナルエクセレンスを備えたアーキテクチャを定義
    - Sustainability：持続可能性に寄与するアーキテクチャを定義

## 89.
- 最適なデータベースの選択方法
    - 読み取り／書き込み処理数
    - データ量や期間保存
    - データサイズ
    - データの耐久性
    - データの遅延要件
    - クエリ数
    - サポート対象ユーザー数
    - データモデル
    - 整合性モデル

## 90. 
- AWS Well-Architected Framework: 開発者がより迅速に、かつ低リスクでアプリケーションを構築およびデプロイし、AWS のベストプラクティスに従って情報に基づいた決定をするために役立つガイダンス。
    - Well-Architected Frameworkホワイトペーパー
    - AWSのSAまたは認定パートナーによる支援制度
    - Well-Architected Tool

## 91.
- AWSリソースのタグ付け戦略:
    - リソースフィルタリングに必要な詳細なタグ設定
    - 将来の変更を考慮する
    - リソースアクセス制御を配慮する

## 96.
- AWS CodeBuild: ソースコードをコンパイルし、テストを実行し、デプロイ可能なソフトウェアパッケージを作成できる完全マネージド型のビルドサービス。

## 97.
- ルートテーブル: ネットワークトラフィックの送信先を決定するために使用される、ルートと呼ばれる一連のルールを設定するサービス。

## 99.
- ユーザー側で対応が必要となるセキュリティ設定
    - EC2インスタンスへのSSL/TSL設定
    - ELBへのSSL/TSL設定
    - CloudfrontへのSSL/TSL設定

## 100.
- S3の保存データ保護のセキュリティ機能:
    - 権限: バケットおよびオブジェクトレベルの権限
    - レプリケーション: 各リージョン内のすべてのAZにわたって各オブジェクトを複製
    - 暗号化: AWS KMSなどを用いた暗号化

## 101.
- AWS Config: AWS リソースの設定を評価、監査、審査できるサービス。
- AWS Inspector: EC2インスタンスにAmazon Inspector エージェントをインストールして、ネットワーク到達性や、プラットフォームの脆弱性を診断し、潜在的なセキュリティ上の問題を発見するためのもの。
- AWS Artifact: 重要なコンプライアンス関連情報の一元管理型リソース。

## 103.
- DoD 5220.22-M: AWSはストレージデバイスが耐用年数を超えると廃止プロセスをの一環として、国防省クラウドコンピューティングセキュリティ要求事項ガイドに基づいて、データを破壊する。

## 104.
- AWS Application Discovery Service: オンプレミスのアプリケーションサーバーの設定データ、使用状況データ、動作データが収集できる。

## 106.
ルートユーザーのルートアクセスキー: 請求情報を含むアカウントのすべてのリソースに無制限にアクセスできるため、削除することが推奨されている。

## 107. 
- マネージド型サービスに対してのAWSのセキュリティ関連タスク
    - ウイルスソフトのインストール
    - 物理的なインフラの災害復旧

## 108.
- Well Architected Frameworkの信頼性の原則:
    - 障害による中断・停止と障害復旧による影響を軽減するインフラストラクチャ－を構成。

## 109.
- AWS ACM(AWS Certificate Manager): ACM自体が提供するサーバー証明書または外部プロバイダーから取得したサーバー証明書を管理するサービス。
- IAM: すべてのリージョンでのサーバー証明書のデプロイをサポートしているが、AWSで使用するには外部プロバイダーから証明書を取得する必要がある。

## 112.
- AWS Snowmobile: 特に超大容量データ(1エクサバイト)を AWS に移動することを目的としたコンテナサイズのトレーラー。
- Direct Connect: オンプレミス環境との専用線接続サービス。
- <img width="580" alt="Screen Shot 2022-08-14 at 17 05 12" src="https://user-images.githubusercontent.com/61643054/184528109-dff0b489-2d7c-4f0d-a000-b0004e8b35d4.png">


## 114.
- AWS CAF(Cloud Adaption Framework): AWS クラウド導入フレームワーク。AWSを利用していない企業などがクラウドサービスを導入するために、効果的な計画を建てるガイドライン。

## 116.
- EBSボリューム: 同じAZ内のインスタンスにのみアタッチできる。

## 119.
- AWS Organizationsの一括請求:マスターアカウントが一括して、すべてのメンバーアカウントの請求を支払う。他のメンバーアカウントからはアクセスはできない。

## 121.
- AWS VPN: AWSの中で提供されているVPNを利用した通信の仕組み
    - AWS Client VPN: サイト（会社などの拠点）とAWSを接続する際に使用。AWSが提供する、フルマネージドVPN接続サービス
    - Site to site VPN: サイト（会社などの拠点）とAWSを接続する際に使用。拠点にはルーターが必要。複数拠点間（n:n）の接続が可能。
- VPN: インターネット上に仮想の専用線を設定し、特定の人のみが利用できる専用ネットワーク。
- カスタマーゲートウェイ: Direct Conectを利用してVPCに接続する際に構成するゲートウェイタイプの１つ。

## 122.
- AWSの使用リージョンの選択の考慮事項:
    - データ主権(データの所有権を行使できるかなど)
    - 必要な機能の提供数
    - サービスを提供する物理的距離

## 123.
- VPCの適用範囲: リージョン内の全てのAZ

## 123.
- AWSのアクセスキー: 
    - AWSマネジメントコンソールのIAMコンソール画面からIAMユーザのアクセスキーの作成、変更、削除が可能。
    - ユーザーに対して２つまで作成可能。

## 125.
- プライマリーストレージ: バックアップ用のストレージと比較して、メインとして使用する。
- Amazon RDSのDBインスタンスで使用されるプライマリストレージサービスタイプ
    - 汎用 SSD: さまざまなワークロードに対応できるコスト効率の高いストレージ。
    - プロビジョンド IOPS: 低 I/O レイテンシーおよび一貫した I/O スループットが必要となる I/O 不可の高いワークロードに対処。
    - マグネティック: 下位互換サポートのストレージ。

## 126.
- Amazon S3 Transfer Acceleration: クライアントと S3 バケットの間で、長距離にわたるファイル転送を高速、簡単、安全に行える。Amazon CloudFront の世界中に分散したエッジロケーションを利用してデータ転送を実施。
- Lambda@Edge: Amazon CloudFrontの機能で、アプリケーションのユーザーに近いロケーションでコードを実行。

## 129.
- AWS Direct Connect: オンプレミスから AWS への専用ネットワーク接続を構築するクラウドサービスソリューション。
- AWS Direct Connectの速度: 1Gbps, 10Gbps, 100Gbps

## 130.
- エンタープライズサポートプランに含まれるコンシェルジュサポート:
    - AWS請求およびアカウント照会への24時間365日のアクセス。
    - 請求割り当て、レポート、アカウント統合、およびルートレベルのアカウントセキュリティに関するガイダンスとベストプラクティスの提供。
