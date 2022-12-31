# soa試験のメモ


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
- ELBの主な役割: 
    - ![Screen Shot 2022-08-24 at 6 31 10](https://user-images.githubusercontent.com/61643054/186270230-b8f65570-63b7-486f-ae08-5721b141977f.png)
- Auto Scalingのスケーリング方法:
    - ![Screenshot 2022-11-28 at 6 04 34](https://user-images.githubusercontent.com/61643054/204159661-8d0855fa-989a-48a6-ba98-d6bb9d7813e9.png)

## 水平スケーリングと垂直スケーリングの違いを明確にする
- 水平スケーリング: EC2インスタンスの数を増やす
- 垂直スケーリング: EC2インスタンスのスペックアップ

##  Amazon Route 53 ヘルスチェックを設定する
- Route53のヘルスチェック:
    - エンドポイントをモニタリングするヘルスチェック: IP アドレスあるいはドメイン名で特定するエンドポイントをモニタリングするヘルスチェックを設定できます。指定された一定の間隔で、Route 53 は自動リクエストをインターネット経由でアプリケーションやサーバーなどのリソースに送信して、そのリソースが到達可能、使用可能、機能中であることを確認します。
    - 他のヘルスチェック (算出したヘルスチェック) を監視するヘルスチェック: 他のヘルスチェックが正常あるいは異常であるかを Route 53 が判断するかについてをモニタリングするヘルスチェックを作成できます。複数のウェブサーバーなどの同じ機能を実行する複数のリソースがあるときに、最低限のリソースが正常であるかどうかに重点を置く場合などに使用する。
    - CloudWatch アラームをモニタリングするヘルスチェック: CloudWatch アラームを作成したら、そのアラームをモニタリングする CloudWatch と同じデータストリームをモニタリングするヘルスチェックを作成できます。 
    - エンドポイントの正常性を確認する HTTP、HTTPS、および TCP ヘルスチェックを作成できます。
- ELBのヘルスチェック: ロードバランサがどのバックエンドインスタンスにトラフィックをルーティングするかを判断するために用いられます。

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
    - 機械学習を利用した不正検知が可能
    - VPCフローログを解析できる
    - IPアドレスやドメインリストを解析できる。
    - ![Screenshot 2022-11-07 at 6 24 30](https://user-images.githubusercontent.com/61643054/200195959-f4cbf417-fbd1-4a64-9370-f69ca90de01d.png)
- AWS Config: AWS リソースの設定が継続的にモニタリングおよび記録され、望まれる設定に対する記録された設定の評価を自動化します。これにより、S3バケットの構成内容を履歴管理したり、変更管理することが可能となり、コンプライアンス監査、セキュリティ分析、変更管理、運用上のトラブルシューティングを簡素化できます。 
    - config ruleを設定し、ruleに外れたリソース変更があれば通知を出したり、ssm automationと連携した自動改善を行ったりする。
- Amazon Inspector: 自動化されたアプリケーションのセキュリティ評価サービスで、EC2にデプロイしたアプリケーションのセキュリティとコンプライアンスを向上させることができます。アプリケーション自体の不正利用を検知。

##  AWS WAF、AWS Shield
- AWS WAF: アプリケーションに対する一般的なウェブエクスプロイトからウェブアプリケーションを保護するウェブアプリケーションファイアウォール
- AWS Shield: マネージド型の分散サービス妨害 (DDoS) を防御するAWSサービスです。
    - Standard: 無料。CloudFrontとRoute53に対して自動適用する無料サービス。
    - Advanced: 有料。高レベルな保護。

- 送信先(destination): パケットの最終目的地。(旅行に例えると：アメリカ)
- ターゲット(target): 送信先に到達するためのパケットの経由地点。(旅行に例えると：日本の空港)
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

- Route53のALIASレコード: DNS機能に対するRoute 53固有の拡張機能を提供する。 IPアドレスまたはドメイン名の代わりに、ALIASレコードにはCloudFront、Elastic Beanstalk環境、ELB 、静的Webサイトとして設定されているAmazon S3バケットへのポインタ、または 同じホストゾーン内の別のRoute 53レコードを設定することができる。
    - ![Screen Shot 2022-08-22 at 22 16 14](https://user-images.githubusercontent.com/61643054/185930340-4e3baa6a-e680-40ca-8011-f5eabe048c92.png)


## CloudWatch
- CloudWatchによるEC2のモニタリングタイプ:
    - CPUなどは見れるが、メモリやディスク容量などは見れない。
    - 基本モニタリング:
        - 費用: 無料
        - データの取得間隔: 5分
    - 詳細モニタリング:
        - 費用: 有料
        - データの取得間隔: 1分
- CloudWatch　エージェント: もっと色々なメトリクスで、またはデータ間隔を短くして見たい。

## IDフェデレーション

- ウェブIDフェデレーション: 外部 ID プロバイダー (IdP) (例: Login with Amazon、Facebook、Google などの OpenID Connect (OIDC) 互換の IdP) を使用してサインイン
- Amazon Cognito:  Login with AmazonとCognitoを使用してログイン
- SAML2.0ベースのフェデレーション: 外部のLDAP等のIDプロバイダーを利用する
- AWS Single Sign-On (AWS SSO): オンプレとのSAML認証連携によるシングルサインオンとMFA認証が可能になります。SSOとオンプレのActiveDirectoryとの連携に AD Connector（またはAWSDirectoryService for Microsoft ActiveDirectory）が必要です。

## Proxyサーバー
- URLに基づいてリクエストをフィルタリングできる。
- <img width="684" alt="Screenshot 2022-12-31 at 9 15 21" src="https://user-images.githubusercontent.com/61643054/210119335-3a5cd292-874e-41ee-955b-1f042dbdb360.png">

##  実技試験：
    - eventbridgeでec2 spotインスタンスの終了を見る
    - 15分に一回lambdaを起動するrule
