# soa試験のメモ

## 第 1 分野: モニタリング、ロギング、および修復
- 1.1 AWS のモニタリングおよびロギングサービスを使用して、メトリクス、アラーム、およびフィルターを実装する
    -  ログの特定、収集、分析、およびエクスポートを行う (例: Amazon CloudWatch Logs、CloudWatch Logs Insights、AWS CloudTrail ログなど)
    -  CloudWatch エージェントを使用して、メトリクスとログを収集する
    -  CloudWatch アラームを作成する
        - 名前空間：Cloud Watchメトリクスのコンテナのこと。
        - ディメンジョン：メトリクスを一位に識別する名前/値のペア。
    - メトリクスフィルターを作成する
        - <img width="1016" alt="Screenshot 2023-01-06 at 22 38 53" src="https://user-images.githubusercontent.com/61643054/211024234-cb23b25f-3935-471d-96ae-7d583105ed0c.png">
        - 標準メトリクス：デフォルトで取得される
        - カスタムメトリクス：拡張枠という有料枠で取得できる。メモリの利用量などを取得。
        - 拡張モニタリング：DBインスタンスのカスタムメトリクスを取得できる
    - CloudWatch ダッシュボードを作成する
    - 通知を設定する (例: Amazon Simple Notification Service [Amazon SNS]、Service Quotas、CloudWatch アラーム、AWS Health Events など)
- 1.2 モニタリングと可用性のメトリクスに基づいて問題を修復する
    - 通知とアラームに基づいてトラブルシューティングまたは是正措置を講じる
    - アクションをトリガーするように Amazon EventBridge ルールを設定する
    - AWS Systems Manager Automation のドキュメントを使用し、AWS Config ルールに基づいてアクションを実行する
- CloudWatchによるEC2のモニタリングタイプ:
    - CPUなどは見れるが、メモリやディスク容量などは見れない。
    - 基本モニタリング:
        - 費用: 無料
        - データの取得間隔: 5分
    - 詳細モニタリング:
        - 費用: 有料
        - データの取得間隔: 1分
- CloudWatch　エージェント: もっと色々なメトリクスで、またはデータ間隔を短くして見たい。
- CloudWatch　Logs エージェント: 古いバージョンのため推奨されていない。

- Event Bridge
    - Event Bus: 
        - https://dev.classmethod.jp/articles/cloudwatch-events-event-bus/
        - https://pages.awscloud.com/rs/112-TZM-766/images/20200122_BlackBelt_EventBridge.pdf



## 第 2 分野: 信頼性とビジネス継続性
- 2.1 スケーラビリティと伸縮性を実装する
    - AWS Auto Scaling プランを作成および保守する
    - キャッシュを実装する
    - Amazon RDS レプリカと Amazon Aurora レプリカを実装する
    - 疎結合アーキテクチャを実装する
    - 水平スケーリングと垂直スケーリングの違いを明確にする
        - 水平スケーリング: EC2インスタンスの数を増やす
        - 垂直スケーリング: EC2インスタンスのスペックアップ
- 2.2 高可用性と回復性に優れた環境を実装する
    - Elastic Load Balancing と Amazon Route 53 ヘルスチェックを設定する
    - 単一のアベイラビリティーゾーンとマルチ AZ 配置 (例: Amazon EC2 Auto Scaling グループ、Elastic Load Balancing、Amazon FSx、Amazon RDS など) の使用の違いを明確にする
    - 耐障害性のあるワークロードを実装する (例: Amazon Elastic File System (AmazonEFS)、Elastic IP アドレスなど)
    - Route 53 ルーティングポリシーを実装する (例: フェイルオーバー、重み付け、レイテンシーベースなど)
- 2.3 バックアップと復元の戦略を実装する
    - ユースケース (例: RDS スナップショット、AWS Backup、RTO および RPO、Amazon Data Lifecycle Manager、リテンションポリシーなど) に基づいてスナップショットとバックアップを自動化する
    - データベースを復元する (例: ポイントインタイム復元、リードレプリカの昇格など)
    - バージョニングとライフサイクルのルールを実装する
    - Amazon S3 クロスリージョンレプリケーションを設定する
    - 災害対策の手順を実行する

- ELBの主な役割:
    - 負荷を複数のサーバーに分散することにより、1つのサーバーに負荷が集中することを防ぐ。
    - 少なくとも2つのAZとAZごとにインターネットゲートウェイが構成されたpublicサブネットを選択する必要がある。
    - ターゲットグループ: ロードバランサーのヘルスチェック設定は、ターゲットグループ単位で定義します。ロードバランシングする対象群のこと。
        - インスタンス
        - IP
        - Lambda
    - ![Screen Shot 2022-08-24 at 6 31 10](https://user-images.githubusercontent.com/61643054/186270230-b8f65570-63b7-486f-ae08-5721b141977f.png)
    - [AWS ALB の設定方法は？リスナー？ターゲットグループ？](https://www.kanzennirikaisita.com/posts/aws-alb-concepts)
- Auto Scalingのスケーリング方法:
    - Auto Scalingのヘルスチェック:
        - EC2のステータス: EC2インスタンスのステータスがrunnning以外の時
        - ELB: ELBのヘルスチェック機能でELBが異常の時にスケーリング
    - Auto Scaling Group: 
    - ![Screenshot 2022-11-28 at 6 04 34](https://user-images.githubusercontent.com/61643054/204159661-8d0855fa-989a-48a6-ba98-d6bb9d7813e9.png)



## 第 3 分野: デプロイ、プロビジョニング、およびオートメーション
- 3.1 クラウドリソースのプロビジョニングおよび保守を行う
    - AMI を作成および管理する (例: EC2 Image Builder など)
    - AWS CloudFormation の作成、管理、およびトラブルシューティングを行う
    - 複数の AWS リージョンとアカウント (例: AWS Resource Access Manager、CloudFormation StackSets、IAM クロスアカウントロールなど) にわたってリソースをプロビジョニングする
    - デプロイのシナリオとサービスを選択する (例: ブルー/グリーン、ローリング、canary など)
    - デプロイの問題 (例: サービスクォータ、サブネットのサイジング、CloudFormation および AWS OpsWorks のエラー、アクセス許可など) を特定および修復する
- 3.2 手動または反復可能なプロセスを自動化する
    - AWS のサービス (例: OpsWorks、Systems Manager、CloudFormation など) を使用してデプロイのプロセスを自動化する
    - 自動パッチ管理を実装する
    - AWS のサービス (例: EventBridge、AWS Config) を使用して自動タスクのスケジューリングを行う
## 第 4 分野: セキュリティとコンプライアンス
- 4.1 セキュリティポリシーとコンプライアンスポリシーを実装および管理する
    - IAM の機能 (例: パスワードポリシー、MFA、ロール、SAML、フェデレーションアイデンティティ、リソースポリシー、ポリシー条件など) を実装する
    - AWS のサービス (例: CloudTrail、IAM Access Analyzer、IAM Policy Simulator など) を使用して、アクセス問題のトラブルシューティングおよび監査を行う
    - サービスコントロールポリシーとアクセス許可の境界を検証する
    - AWS Trusted Advisor セキュリティチェックを確認する
    - コンプライアンス要件に基づいて、選択した AWS リージョンとサービスを検証する
    - 安全なマルチアカウント戦略を実装する (例: AWS Control Tower、AWS Organizations など)
- 4.2 データとインフラストラクチャの保護戦略を実装する
    - データ分類スキームを強化する
    - 暗号化キーを作成、管理、および保護する
    - 保存時の暗号化を実装する (例: AWS Key Management Service [AWS KMS] など)
    - 転送時の暗号化を実装する (例: AWS Certificate Manager、VPN など)
    - AWS のサービス (例: AWS Secrets Manager、Systems Manager パラメータストアなど) を使用してシークレットを安全に保管する
    - レポートまたは調査結果を確認する (例: AWS Security Hub、Amazon GuardDuty、AWSConfig、Amazon Inspector など)

## 第 5 分野: ネットワークとコンテンツ配信
- 5.1 ネットワーク機能と接続性を実装する
    - VPC を設定する (例: サブネット、ルートテーブル、ネットワーク ACL、セキュリティグループ、NAT ゲートウェイ、インターネットゲートウェイなど)
        - NATゲートウェイ：<img width="774" alt="Screenshot 2023-01-07 at 12 14 24" src="https://user-images.githubusercontent.com/61643054/211129031-fd47269f-332a-4fd5-95d9-3c6ec3ec2eb5.png">
        - NATインスタンス：<img width="761" alt="Screenshot 2023-01-07 at 12 15 10" src="https://user-images.githubusercontent.com/61643054/211129044-f54d089e-33ae-4c92-9b4e-33b45776c74b.png">

    - プライベート接続を設定する (例: Systems Manager Session Manager、VPC エンドポイント、VPC ピアリング、VPN など)
    - AWS ネットワーク保護サービスを設定する (例: AWS WAF、AWS Shield など)
- 5.2 ドメイン、DNS サービス、およびコンテンツ配信を設定する
    - Route 53 ホストゾーンとレコードを設定する
    - Route 53 ルーティングポリシーを実装する (例: 位置情報、地理的近接性) を実装する
    - DNS を設定する (例: Route 53 Resolver)
    - Amazon CloudFront と S3 オリジンアクセスアイデンティティ (OAI) を設定する
    - S3 の静的ウェブサイトホスティングを設定する
- 5.3 ネットワーク接続問題のトラブルシューティングを行う
    - VPC の設定 (例: サブネット、ルートテーブル、ネットワーク ACL、セキュリティグループなど) を解釈する
    - ログの収集と解釈を行う (例: VPC フローログ、Elastic Load Balancing のアクセスログ、AWS WAF ウェブ ACL ログ、CloudFront ログなど)
    - CloudFront キャッシュの問題を特定および修復する
    - ハイブリッド接続とプライベート接続に関する問題のトラブルシューティングを行う

- セキュリティグループ: 
    - インスタンスに適用される(EC2、RDSなど)
    - 一つのインスタンスに少なくとも一つのセキュリティグループを紐づける
    - デフォルトではインバウンドの通信は全て拒否
    - どの通信を許可するかを指定する
    - ソース（＝送信元）にはIPアドレスの他に、セキュリティグループを指定することもできる
    - セキュリティグループを指定した場合、送信元のリソースがそのセキュリティグループに紐づいていたら通信を許可する
    - ステートフルでセッションを見ているため戻りの通信の許可は不要
    - <img width="803" alt="Screenshot 2023-01-28 at 11 27 38" src="https://user-images.githubusercontent.com/61643054/215237551-01a02392-abc0-4914-8fe8-7d2a40025a08.png">
- ネットワークACL:
    - サブネット単位で適用される
    - デフォルトでは全て許可
    - ステートレスなので、戻りの通信も明示的に許可する必要がある

## 第 6 分野: コストとパフォーマンスの最適化
- 6.1 コスト最適化戦略を実装する
    - コスト割り当てタグを実装する
    - AWS のサービスとツール (例: Trusted Advisor、AWS Compute Optimizer、Cost Explorerなど) を使用して、使用率の低いリソースまたは未使用のリソースを特定および修復する
    - AWS Budgets と請求アラームを設定する
    - リソースの使用パターンを評価して、EC2 スポットインスタンスのワークロードを見極める
    - マネージドサービスを使用する機会を特定する (例: Amazon RDS、AWS Fargate、EFS など)
- 6.2 パフォーマンス最適化戦略を実装する
    - パフォーマンスメトリクスに基づいてコンピューティングリソースを提案する
    - Amazon EBS のメトリクスをモニタリングし、パフォーマンス効率を向上させるために設定を変更する
    - S3 のパフォーマンス機能を実装する (例: S3 Transfer Acceleration、マルチパートアップロードなど)
    - RDS メトリクスをモニタリングし、パフォーマンス効率を向上させるために設定を変更する(例: Performance Insights、RDS Proxy など)
    - EC2 の拡張機能を有効にする (例: 拡張ネットワークアダプター、インスタンスストア、プレイスメントグループなど)


## RDS
- RDSのマルチAZ DBクラスター構成:
    - <img width="812" alt="Screenshot 2022-12-04 at 9 17 48" src="https://user-images.githubusercontent.com/61643054/205467780-f1450cab-a074-4dc8-b764-88b08b435484.png">
- RDSのマルチAZDBインスタンス構成とAuroraのマルチAZ構成:
    - <img width="805" alt="Screenshot 2022-12-30 at 12 48 17" src="https://user-images.githubusercontent.com/61643054/210032740-d4468371-cad3-4787-be5e-b86100d4a462.png">
- RDSののマルチAZDBインスタンス構成とマルチAZ DBクラスター構成の比較:
    - <img width="907" alt="Screenshot 2022-12-30 at 12 59 53" src="https://user-images.githubusercontent.com/61643054/210033238-3a8e06d2-29b5-4778-ba58-2becbc20df07.png">

## Route53のフェールオーバー構成とELBとAuto Scaling
- Route53のフェールオーバールーティングとELB: 異なるリージョンでプライマリー、セカンダリー構成が可能、あくまでリージョン単位。
   - Route53はELBのヘルスチェックを行い、障害時にsorryページへ行く
   - <img width="771" alt="Screenshot 2022-12-31 at 9 21 49" src="https://user-images.githubusercontent.com/61643054/210119551-0ea870da-a7ca-4513-b926-91f2988d006a.png">
   - <img width="856" alt="Screenshot 2023-01-27 at 22 36 03" src="https://user-images.githubusercontent.com/61643054/215100045-4061f796-12ec-4546-af48-9d80d85f7f07.png">



##  ヘルスチェック
- Route53のヘルスチェック:
    - エンドポイントをモニタリングするヘルスチェック: IP アドレスあるいはドメイン名で特定するエンドポイントをモニタリングするヘルスチェックを設定できます。指定された一定の間隔で、Route 53 は自動リクエストをインターネット経由でアプリケーションやサーバーなどのリソースに送信して、そのリソースが到達可能、使用可能、機能中であることを確認します。
    - 他のヘルスチェック (算出したヘルスチェック) を監視するヘルスチェック: 他のヘルスチェックが正常あるいは異常であるかを Route 53 が判断するかについてをモニタリングするヘルスチェックを作成できます。複数のウェブサーバーなどの同じ機能を実行する複数のリソースがあるときに、最低限のリソースが正常であるかどうかに重点を置く場合などに使用する。
    - CloudWatch アラームをモニタリングするヘルスチェック: CloudWatch アラームを作成したら、そのアラームをモニタリングする CloudWatch と同じデータストリームをモニタリングするヘルスチェックを作成できます。 
    - エンドポイントの正常性を確認する HTTP、HTTPS、および TCP ヘルスチェックを作成できます。
    - ELBのヘルスチェックも行う
- ELBのヘルスチェック:  EC2インスタンス群などのターゲットグループ単位でヘルスチェックを行う。
- Auto Scaling Group: 
    - EC2のステータス: EC2インスタンスのステータスがrunnning以外の時
    - ELB: ELBのヘルスチェック機能でELBが異常の時にスケーリング

## RDS スナップショット、AWS Backup、Amazon Data Lifecycle Managerなど
- AWS Backup: AWS Storage Gateway を使用して、オンプレミスおよび AWS サービス全体のデータのバックアップの一元化と自動化を簡単に実行できる、完全マネージド型のバックアップサービス。バックアップポリシーを一元的に設定し、Amazon EBS ボリューム、Amazon RDS データベース、Amazon DynamoDB テーブル、Amazon EFS ファイルシステム、AWS Storage Gateway ボリュームなどの AWS リソースのバックアップアクティビティを監視できます。
- Amazon Data Lifecycle Manager (Amazon DLM) : Amazon EBS ボリュームのバックアップとなるスナップショットの作成、保持、削除をスケジューリングして、自動化できます。
- AWS DataSync: オンプレミスと Amazon S3またはAmazon EFS間のデータ移動を自動化して加速化する安全なオンラインサービスです。
- AWS Data Pipeline : 指定された間隔でAWS のさまざまなコンピューティングサービスやストレージサービスのほか、オンプレミスのデータソース間で信頼性の高いデータ処理やデータ移動を行うことを支援するウェブサービス。
- AWS Storage Gateway: オンプレミス環境にファイルゲートウェイを接続することで、オンプレミスサーバからiSCSIを利用してEBSに接続したり、NFSを利用してS3に接続したりして、オンプレミス環境のストレージをAWSのストレージに接続してデータを移行することが可能となります。
    - ![Screenshot 2022-11-13 at 17 06 03](https://user-images.githubusercontent.com/61643054/201512209-9caca8e5-5337-4d68-a256-f2b198b01387.png)
- ![Screenshot 2022-11-13 at 17 06 15](https://user-images.githubusercontent.com/61643054/201512227-0bdff6f3-bdbf-4b32-a093-65f2bf6bc4cd.png)
- ![Screenshot 2022-11-13 at 17 06 45](https://user-images.githubusercontent.com/61643054/201512238-a5f45859-a7a2-4275-856b-af9c74d159c8.png)

- AWS Storage Gateway:
    - ボリュームゲートウェイ: スケジュールされたスナップショット機能を有している。これにより、スナップショット取得をスケジューリングして管理することが可能。
        - 以降2つは主体がオンプレミス。
        - キャッシュ型ボリューム: 頻繁にアクセスされるデータをローカル環境に保持しながら、S3をプライマリデータストレージとして使用できる。
        - 保管型ボリュームゲートウェイ: プライマリーデータストレージとしてローカルのストレージを使用し、データを非同期にS3にバックアップする。

## Amazon S3 クロスリージョンレプリケーション
- Amazon S3 のバージョニング: 単一のオブジェクトの複数のバージョンを保持できるようになります。
- レプリケーション: 同一または異なる AWSリージョンにあるバケット間でオブジェクトを自動的に非同期コピーする機能。
    - 双方のバケットでバージョニングの有効化が必要
- IAM:
    - ユーザーベースポリシー: 「誰が」(つまり、操作する主体)の部分は記述しません。 なぜならば、「誰が」は、記述するまでもなくポリシーを関連づけた先のIAMユーザー、IAMグループ、IAMロールになるからです。
        - AWS管理ポリシー: AWSが用意している再利用可能なポリシー。複数のIAMユーザー、IAMグループ、IAMロール間で共有可能。
        - カスタマー管理ポリシー: ユーザーが作成した再利用可能なポリシー。複数のIAMユーザー、IAMグループ、IAMロール間で共有可能。
    - リソースベースのポリシー: 関連づける先がユーザーではなく「AWSサービス」であるという点が異なります。 
        - 信頼ポリシー: あるロールが持っている権限を他のプリンシパル（ユーザー、グループ、ロール）に移譲することができます。
- AssumeRole: IAMロールを引き受けるためのアクション。スイッチロール（ひいては AssumeRole）を行ったあとは、IAM ユーザーではなく「 STS によりロールを引き受けたセッション」が操作を行う主体となります。
    https://dev.classmethod.jp/articles/iam-role-passrole-assumerole/

## AWS Security Hub、Amazon GuardDuty、AWS Config、Amazon Inspector
- AWS Security Hub: すべてのAWSアカウントにおける高優先度のセキュリティアラートおよびコンプライアンス状況を包括的に確認できるサービス。
- Amazon Detective: CloudTrail、VPC Flow Logs、GuardDutyのログや結果を自動的に収集し、潜在的なセキュリティの問題を調査・分析する。
- Amazon Macie: 機械学習を使用してS3の機密データを自動的に検出、分類、保護するセキュリティサービス。
- Amazon GuardDutyの特徴:
    - AWSアカウントとワークロードを保護するために悪意のある操作や不正な動作を継続的にモニタリングする脅威検出サービス
    - 機械学習を利用した不正検知が可能
    - VPCフローログを解析できる
    - IPアドレスやドメインリストを解析できる。
    - ![Screenshot 2022-11-07 at 6 24 30](https://user-images.githubusercontent.com/61643054/200195959-f4cbf417-fbd1-4a64-9370-f69ca90de01d.png)
- AWS Shield: マネージド型の分散サービス妨害 (DDoS) を防御するAWSサービスです。
    - AWS Shield Standard：Route 53またはCloudFrontで使用する。無料。L3/L4の防御。
    - AWS Shield Advanced：Route 53、CloudFront、ELB、EC2、AWS Global Acceleratorで使用する。有料。L7、ネットワークACLを使った防御。
- AWS Config: AWS リソースの設定が継続的にモニタリングおよび記録され、望まれる設定に対する記録された設定の評価を自動化します。これにより、S3バケットの構成内容を履歴管理したり、変更管理することが可能となり、コンプライアンス監査、セキュリティ分析、変更管理、運用上のトラブルシューティングを簡素化できます。 
    - config ruleを設定し、ruleに外れたリソース変更があれば通知を出したり、ssm automationと連携した自動改善を行ったりする。
- Amazon Inspector: 自動化されたアプリケーションのセキュリティ評価サービスで、EC2にデプロイしたアプリケーションのセキュリティとコンプライアンスを向上させることができます。アプリケーション自体の不正利用を検知。
- AWS WAF: API Gateway, ALB, CloudFrontに転送されるHTTPおよびHTTPSリクエストをモニタリング可能にするウェブアプリケーションファイアウォール。またコンテンツへのアクセスをリクエストの送信元のIPアドレスやクエリ文字列の値などの指定した条件に基づいて制限する。

- ルートテーブル
    - 送信先(destination): destinationに要求があったら、ターゲットに向かう。パケットの最終目的地。(旅行に例えると：アメリカ)。
    - ターゲット(target): 送信先に到達するためのパケットの経由地点。(旅行に例えると：日本の空港)
    - 例) パケットの宛先IPが10.1.0.0/16の範囲内の場合はlocalに通信を送信する。
        - <img width="611" alt="Screenshot 2023-01-28 at 11 18 05" src="https://user-images.githubusercontent.com/61643054/215237080-002a1ba5-a36b-44da-be3b-3316104311e4.png">
    - 例) サブネットをインターネットと通信できるようにするには全ての通信(0.0.0.0/0)をインターネットゲートウェイ(igw-)に向けるようにルートテーブルを設定する。
        - <img width="627" alt="Screenshot 2023-01-28 at 11 24 55" src="https://user-images.githubusercontent.com/61643054/215237398-c1d4d428-6aed-426d-9cd7-3a16e226457c.png">
- VPC フローログ: VPC のネットワークインターフェイスとの間で行き来する IP トラフィックに関する情報をキャプチャできるようにする機能。
- VPCフローログの見方:
    - 例)2 178982904800 eni-1267b8ca 172.178.45.11 10.0.1.110 0 0 1 4 336 389850083 3898500832 ACCEPT OK
    - ${version} ${account-id} ${interface-id} ${srcaddr} ${dstaddr} ${srcport} ${dstport} ${protocol} ${packets} ${bytes} ${start} ${end} ${action} ${log-status}
    - ${version} : VPCフローログのバージョン
    - ${account-id} : AWSアカウントのID
    - ${interface-id} : ネットワークインターフェイスのID
    - ${srcaddr} : 送信元IPアドレス
    - ${dstaddr} : 送信先IPアドレス
    - ${srcport} : 送信元ポート
    - ${dstport} : 送信先ポート
    - ${protocol} : プロトコルの番号
    - ${packets} : パケットの数
    - ${bytes} : バイト数
    - ${start} : 開始時刻(unixtime)
    - ${end} : 終了時刻(unixtime)
    - ${action} : アクション(ACCEPT or REJECT)
    - ${log-status} : ログ(OK or NODATA or SKIPDATA)


- IAM:
    - (IAM) サービスにおいての推奨事項:
        - AWS アカウントのルートユーザー アクセスキーをロックする
        - 個々の IAM ユーザーの作成 ・IAM ユーザーへのアクセス許可を割り当てるためにグループを使用する
        - 最小権限を付与する
        - AWS 管理ポリシーを使用したアクセス許可の使用開始
        - インラインポリシーではなくカスタマー管理ポリシーを使用する
        - アクセスレベルを使用して、IAM 権限を確認する
        - ユーザーの強力なパスワードポリシーを設定
        - MFAの有効化
        - Amazon EC2インスタンスで実行するアプリケーションに対し、ロールを使用する
        - ロールを使用したアクセス許可の委任
        - アクセスキーを共有しない
        - 認証情報を定期的にローテーションする
        - 不要な認証情報を削除する
        - 追加セキュリティに対するポリシー条件を使用する
        - AWS アカウントのアクティビティの監視
    - ユーザーベースポリシー: 「誰が」(つまり、操作する主体)の部分は記述しません。 なぜならば、「誰が」は、記述するまでもなくポリシーを関連づけた先のIAMユーザー、IAMグループ、IAMロールになるからです。
        - 管理ポリシー
            - AWS管理ポリシー: AWSが用意している再利用可能なポリシー。複数のIAMユーザー、IAMグループ、IAMロール間で共有可能。
            - カスタマー管理ポリシー: ユーザーが作成した再利用可能なポリシー。複数のIAMユーザー、IAMグループ、IAMロール間で共有可能。
        - インラインポリシー: 「ポリシー」単体では存在できず、プリンシパルエンティティと1対1の関係にある。
    - リソースベースのポリシー: 関連づける先がユーザーではなく「AWSサービス」であるという点が異なります。 
        - 信頼ポリシー: あるロールが持っている権限を他のプリンシパル（ユーザー、グループ、ロール）に移譲することができます。
- AssumeRole: IAMロールを引き受けるためのアクション。スイッチロール（ひいては AssumeRole）を行ったあとは、IAM ユーザーではなく「 STS によりロールを引き受けたセッション」が操作を行う主体となります。
    https://dev.classmethod.jp/articles/iam-role-passrole-assumerole/
- プリンシパル: エンティティ (ユーザーまたはロール) を使用してリクエストを送信するユーザーまたはアプリケーション。プリンシパルに関する情報には、プリンシパルがサインインに使用したエンティティに関連付けられたポリシーが含まれます。
- Pass Role: ユーザーがAWSサービスにロールをPass(わたす)権限。
- Get Role: ユーザーがわたすロールの詳細を得るために使用する。
- Principal: アクションを実行する主体。依頼者。
- Route53のALIASレコード: DNS機能に対するRoute 53固有の拡張機能を提供する。 IPアドレスまたはドメイン名の代わりに、ALIASレコードにはCloudFront、Elastic Beanstalk環境、ELB 、静的Webサイトとして設定されているAmazon S3バケットへのポインタ、または 同じホストゾーン内の別のRoute 53レコードを設定することができる。
    - ![Screen Shot 2022-08-22 at 22 16 14](https://user-images.githubusercontent.com/61643054/185930340-4e3baa6a-e680-40ca-8011-f5eabe048c92.png)



## IDフェデレーション

- ウェブIDフェデレーション: 外部 ID プロバイダー (IdP) (例: Login with Amazon、Facebook、Google などの OpenID Connect (OIDC) 互換の IdP) を使用してサインイン
- Amazon Cognito:  Login with AmazonとCognitoを使用してログイン
- SAML2.0ベースのフェデレーション: 外部のLDAP等のIDプロバイダーを利用する
- AWS Single Sign-On (AWS SSO): オンプレとのSAML認証連携によるシングルサインオンとMFA認証が可能になります。SSOとオンプレのActiveDirectoryとの連携に AD Connector（またはAWSDirectoryService for Microsoft ActiveDirectory）が必要です。

## Proxyサーバー
- URLに基づいてリクエストをフィルタリングできる。
- <img width="684" alt="Screenshot 2022-12-31 at 9 15 21" src="https://user-images.githubusercontent.com/61643054/210119335-3a5cd292-874e-41ee-955b-1f042dbdb360.png">

## AWS Organizations
- AWS Organizations: 複数のAWSアカウントを効率的に管理・統制するためのサービス。
    - 新しい AWS アカウントを作成しリソースを割り当てる
    - AWSアカウントをグループ化して整理
    - AWSアカウントまたはグループに統一されたポリシーを適用
    - すべてのAWSアカウントに単一の支払い方法を利用することで請求を簡素化
    - OU(Organization Unit): 組織単位。組織内にある複数AWSアカウントのグループ。
    - SCP(Service Control Policy): AWSアカウントまたはグループに統一されたポリシーを適用するための機能です。
        - 「SCPとIAMで明示的に許可され」なおかつ「いずれでも明示的に拒否されていない」場合に権限を有していると評価されます。
        - 「ざっくりとした」制限をSCPで実施し、細かい制御をIAMで実施する、というアプローチが適切かと思います。
    - 組織の証跡: OUを作成した場合に、そのOU内の全AWSアカウントの全イベントを記録する証跡を作成できる。
    - 利用可能な機能セット:
        - 全ての機能: 一括請求機能も含む、高度なアカウント管理機能。
        - 一括請求機能: OU内のアカウント管理を一元化する基本的な機能。
    - ![Screenshot 2022-11-23 at 9 33 50](https://user-images.githubusercontent.com/61643054/203450104-8b13678e-2e1a-4ec7-96ff-e481e872cebd.png)
    - ![Screenshot 2022-11-23 at 9 36 24](https://user-images.githubusercontent.com/61643054/203450125-6d282f87-1410-4c32-9d0c-98d34389fbc7.png)

## 仮想プライベートゲートウェイ
- [AWSによる仮想プライベートゲートウェイのわかりやすい説明](https://docs.aws.amazon.com/ja_jp/vpn/latest/s2svpn/how_it_works.html)


## インスタンスの起動に関する問題のトラブルシューティング

- インスタンスの状態が再起動直後にpendingからterminatedに変わる理由：
    - EBSボリューム制限に達した。
    - EBSスナップショットが破損している。
    - ルートEBSボリュームは暗号化されていて、複合用のKMSキーにアクセスする権限がない。
    - インスタンスを起動するために使用したInstance Store-Backed AMIで必要な部分(image.part.xx ファイル)が無い。
- instanceLimitExceeded:　インスタンスが起動されたリージョンでインスタンス数の上限を超えた
    - インスタンス数の上限緩和をリクエストする
- InsufficientInstanceCapacity: インスタンスを起動したり、停止したインスタンスを再起動したりする際にこのエラーが発生する場合、現在 AWS にはリクエストに対応するために必要とされる十分なオンデマンドキャパシティーがありません。
    - 数分間待ってからリクエストを再度送信します。容量は頻繁に変化します。
    - インスタンス数を減らして新しいリクエストを送信します。たとえば、15 インスタンスを起動する 1 つのリクエストを行っている場合、代わりに 5 つのインスタンスに対する 3 つのリクエストを作成するか、1 つのインスタンスに対する 15 のリクエストを作成してみてください。
    - インスタンスを起動する場合は、アベイラビリティーゾーンを指定しないで新しいリクエストを送信します。
    - インスタンスを起動する場合は、別のインスタンスタイプを使用して新しいリクエストを送信します (これは後でサイズを変更できます)。詳細については、「インスタンスタイプを変更する」を参照してください。

- [インスタンスの起動に関する問題のトラブルシューティング](https://docs.aws.amazon.com/ja_jp/AWSEC2/latest/UserGuide/troubleshooting-launch.html)
 
-  EC2インスタンスのシステムステータスチェックの失敗: インスタンスの抜本的な問題が発生しているため、インスタンスを停止、および起動して新しいホストに移行する。
- EC2インスタンスのステータスチェックの種類:
    - システムステータスチェック: インスタンスが実行されているAWSシステムを監視する。これらのチェックでは修復にはAWSの関与が必要なインスタンスの抜本的な問題が検出される。
        - ネットワーク接続の喪失
        - システム電源の喪失
        - 物理ホストのソフトウェアの問題
        - 物理ホストのハードウェアの問題
    - インスタンスのステータスチェック: 個々のインスタンスのソフトウェアとネットワークの設定をモニタリングする。ユーザーが関与して修復する必要のある問題が検出される。
        - 正しくないネットワーク、起動設定
        - メモリの枯渇
        - 破損したファイルシステム
    - ![Screenshot 2023-02-08 at 6 17 10](https://user-images.githubusercontent.com/61643054/217369231-6e55b124-9495-4378-bf9e-b918a7a74c13.png)
        


##  実技試験：
- RDSの立ち上げ
- S3 Bucketのレプリケーション
- EventBridgeでEC2 spot fleetインスタンスの終了を見る
- EventBridgで15分に一回lambdaを起動するruleを作成
- EC2+ALB+Auto Scaling構成
- AWS Organizations操作
- S3 Glacerへの移行設定
