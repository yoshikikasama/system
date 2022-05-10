# その他の重要なサービス

■コンピューティング
- Lambda: インフラを気にすることなくアプリケーションコードを実行できるデータ処理サービス。  
&nbsp;&nbsp;サーバレスにより、EC2インスタンスの代わりコードを実行することで効率的なアーキテクチャを実現する。
- Amazon Lightsail: 秒単位で簡易にwebサーバー構成を実現することができるサーバーフルセットを提供するVPS(Virtual Private Sever)サービス。  
&nbsp;&nbsp;あらかじめいくつもの機能が揃っているオールインワンで提供することが可能。
- Docker: コンテナ型の仮想環境を作成、配布、実行するためのプラットフォーム。
- Amazon ECR: コンテナエンジンに実行されるイメージが保管される場所。
- Amazon ECS: Dockerコンテナをサポートする拡張性とパフォーマンスに優れたコンテナオーケストレーションサービス。
- Amazon EKS: AWSでオープンソースとして汎用性の高いKubernetesを簡単に実行できるようにするマネージド型サービス。
- AWS Fargate: コンテナが実行される環境。ある程度自動化されている。

■ストレージ
- S3: オブジェクトストレージサービス。インターネットアクセス、EC2インスタンス間で共有、大量データ保存ケースで使用。
- Amazon EBS(Elastic Block Store): EC2にアタッチしてアプリケーションを構成するためのボリュームディスクとして利用する専用のブロックストレージ。
- Amazon EFS(Elastic File System): マネージド型のNFSシステム。インターネットアクセス不可で、ファイルシステムとして利用し、複数のEC2インスタンスでの共有アクセスが可能。
- Amazon S3 Glacier: データ取得の迅速性がない。低コストのS3クラウドストレージクラスで、データのアーカイブや長期バックアップに利用する。

■ネットワーキングとコンテンツ
- Amazon VPC: IPアドレス範囲の選択、サブネット作成、ルートテーブルやネットワークゲートウェイ設定、仮想ネットワーキング環境構築などをするサービス。
- Amazon CloudFront: 低レイテンシーの高速転送により世界中の視聴者に安全に配信する高速コンテンツ配信ネットワーク(CDN)サービス。
- Amazon Route 53: DNSサーバーの機能を提供し、ドメイン変換とルーティングを実施する。
- AWS Direct Connect: AWSとデータセンター、オフィスとの間にプライベート接続を確立する専用線サービス。
- Amazon API Gateway: Restful APIおよびWebSocket APIを作成・管理する。
- AWS Storage Gateway: オンプレミスから実質無制限のクラウドストレージへのアクセスを提供する。

■データベース
- Amazon RDS: マネージドリレーショナルDB.
- Amazon Aurora: NoSQL型の分散高速処理とRDBとしてのデータ操作性を両立させたこと。高性能かつ低価格。  
&nbsp;&nbsp;高い並列処理性能によって大量の読み書きをするのに適したDB
- Amazon DynamoDB: key-valueおよびドキュメント型のNoSQL型のDB。ビッグデータ処理向けか大量データが必要なアプリケーション向け(セッション管理など)に利用する。
- Amazon ElasticCache: Redis(single thread)またはMemcached(multi thread)に互換性のある完全マネージド型のインメモリ・キャッシュDB
    - インメモリキャッシュ: メモリを活用して高速にキャッシュへのアクセスを可能にしたDBの仕組み。
- Amazon Redshift: 高速かつシンプルで、費用対効果の高いDWH

■identity, security, compliance
- AWS Identity & Access Management(IAM): AWSのサービスやリソースへのアクセスを安全に管理するアクセス管理サービス。
- Amazon GuardDuty: 悪意のある操作や不正な動作を継続的にモニタリングする脅威検出サービス。
- Amazon Inspector: 自動化されたセキュリティ評価サービスで、AWS上にデプロイされたアプリのセキュリティとコンプライアンスを向上させる。
- AWS Key Management Service: 暗号キーを作成、管理し、幅広いAWSのサービスやアプリケーションの使用を制御する。
- AWS CloudHSM: 不正使用防止策がとられている専用HWモジュールにより、暗号キーを保護するサービス。
- AWS WAF: 一般的なwebの脆弱性からwebアプリケーションまたはAPIを保護するwebアプリケーションfirewall
- AWS Shield: マネージド型の分散サービス妨害(DDoS)保護サービス。
- AWS Artifact: AWSのコンプライアンスレポートにオンデマンドでアクセスできる無料のセルフサービスポータル。
- CloudTrail: AWSユーザーの行動ログを取得し、ガバナンス、コンプライアンス、および運用とリスクの監査を行えるように支援する。
- CloudWatch: AWSリソースとAWSで実行するアプリケーションに対して、さまざまなメトリクスやログを収集・追跡するモニタリングサービス。

■準備系サービス(management controlを適切にするための準備の段階)
- AWS Control Tower:ベストプラクティスに沿って複数アカウントのAWS環境を設定および管理するサービス
- AWS Organizations: 複数のAWSアカウント全体の一元管理と一括請求
- AWS Budgets: 予算の閾値を超えた時にアラートを発信するカスタム予算を設定
- AWS License Manager: ソフトウェアベンダーからのソフトウェアライセンスを簡単に管理するサービス
- AWS Well-Architected Tool: AWSのアーキテクチャ設計原則の確認とワークロードの見直しと改善を支援

■展開系サービス(AWSのサービスを自動で展開したり、展開方法をtemplate化したりする)
- AWS CloudFormation: AWSクラウド環境内の全インフラリソースを記述して展開する環境自動設定サービス
- AWS Elastic Beanstalk: webアプリケーションの定番構成の構築・デプロイの自動化サービス
- AWS OpsWorks: OpsWorksはChefやまたはPuppetを使用して高度なインフラ設定および運用するための設定管理サービス
    - Chef: さまざまな形式のインフラへのサーバやアプリケーションの展開を用意にする環境自動化フレームワーク
- AWS Service Catalog: AWS上でデプロイされているITサービスの一元的な管理を実施するサービス
- AWS Marketplace: EC2インスタンスの起動に使用できるAMIなど、AWSで実行されるソフトウェアを購入できるオンラインストア

■操作系サービス(運用管理に使用するDashboardや可視化をするようなサービス)
- Amazon ClouldWatch: アプリケーションを監視し、リソース使用率の最適化を行い、運用上の健全性を統括的に把握するモニタリングサービス
- AWS CloudTrail: ユーザーアクティビティとAPI使用状況の追跡するログ取得サービス
- AWS Config: AWSリソースのリポジトリ情報からリソース変更履歴や構成変更を管理するサービス
- AWS Systems Manager: AWSの様々なサービスの運用データを確認でき、AWSリソース全体に関わるタスクを自動化する運用支援サービス
- AWS Personal Health Dashboard: AWSサービス状態をパーソナライズされた表示する
- AWS サポート: AWSによるサポートサービス。
- ポーリング: 一旦中継所に通信内容をためておいて、受信側のタイミングが良い時に通信を行う
