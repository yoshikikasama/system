# udemy SOA模擬試験 1

## 1.

- AWSにおけるセキュリティ対応:
    - AWSを利用するユーザーは自身でデータを所有して管理することができる。
    - AWSが管理するデータセンターとリージョンを相互接続するAWSネットワークは安全性を高めるために、全てのデータは物理レイヤーで自動的に暗号化されています。
    - AWS側のインフラ環境は仮想化ソフトウェアでフィルタリングすることにより、ユーザーからはユーザーに割り当てられていない物理ホストまたはインスタンスにアクセスできないように設計されています。

## 2.
- blackhole: サブネットのルートテーブルに設定されていたNATゲートウェイやインターネットゲートウェイなどが削除された状態。プライベートサブネットにあるEC2インスタンスからのインターネットへの返信時に必要なパブリックIPアドレスを付与するためにNATインスタンスまたはNATゲートウェイがプライベートサブネットのルートテーブルに設定されている必要がある。

## 3.
- AWSではタグによる管理により、特定のリソースをグループ化したり、識別したりすることができます。
- インスタンスのメタデータ: 実行中のインスタンスを構成または管理するために使用できるインスタンスの情報
- ユーザーデータ: EC2インスタンスを設定するためのインスタンス起動時に実行されるユーザー定義のパラメーターまたはスクリプト。

## 4.
- バースト機能: CPUを使わないときに「クレジット」と呼ばれる通貨みたいなものを貯めておき、いざCPUを使いたいとなったときにその通貨を支払って100%のパフォーマンスを出すことができる機能。
- EC2インスタンスの種類:
    - 汎用: インスタンスのリソースを同じ割合で使用するアプリケーションに最適なインスタンス
        - A1: Arm エコシステムによってサポートされるスケールアウト型の Arm ベースのワークロードに最適で、大幅なコスト削減を実現できるが、T2およびT3インスタンスよりも高価なインスタンスタイプ。
        - T2, T3: ベースラインレベルの CPU パフォーマンスを提供する次世代のバースト可能な汎用インスタンスタイプであるため、いつでも必要な時間だけ CPU 使用率をバーストさせることが可能です。
        - M5: Intel Xeon_ Platinum 8175M プロセッサを搭載した最新世代の汎用インスタンス。T2およびT3インスタンスと異なり、バースト性能がないため、CPU使用率の上昇に対しても一定のパフォーマンスを保証できるインスタンスタイプではない。
    - コンピューティング最適化: 高パフォーマンスプロセッサが必要なコンピューティングバウンドなアプリケーションに利用。
    - メモリ最適化: メモリ内の大きいデータセットを処理するワークロードに対して高速なパフォーマンスに最適なインスタンス。
    - ストレージ最適化: ローカルストレージの大規模なデータセットに対する高いシーケンシャルな読み取りおよび書き込みアクセスを必要とするワークロード用。
    - 高速コンピューティング: ハードウェアアクセラレーターを使用して、浮動小数点計算、グラフィックス処理、データパターン統合などの機能をCPUで実行するソフトウェアに最適。
        - G4: 業界内で最も費用対効果の高い GPU インスタンスで、機械学習モデルの本番環境へのデプロイやグラフィックスを多用するアプリケーションに適しています。高機能ですがT2およびT3インスタンスよりも高価であり、高パフォーマンスが必要なケースに適しているため、コスト最適なインスタンスではありません。機械学習やゲーミングに最適なインスタンスタイプとなっている。

## 5.
- AWS Artifact: AWSとの契約やコンプライアンスなどに関わる情報を一元管理することができるサービス。
- AWS Config: AWSリソースの設定を評価、監査、審査できるサービス。
- AWS Certificate Manager: CA証明書を作成・管理するサービス。
- Amazon Macie: 機械学習を使用してAWSの機密データを自動的に検出、分類、保護するセキュリティサービス。

## 6.
- SpilloverCount: サージキューがいっぱいとなり拒否されたリクエストの総数を取得。
- RequestCount: 指定された間隔 (1 分または 5 分) の間に完了したリクエストの数、または接続の数を取得します。
- UnHealthyHostCount: ロードバランサーに登録された異常なインスタンス数を取得します。
- SurgeQueueLength: 正常なインスタンスへのルーティングを保留中のリクエスト (HTTP リスナー) または接続 (TCP リスナー) の合計数です。

## 7.
- AWS Systems Manager のSystems Manager Automation: Amazon EC2インスタンスおよび他の AWSリソースの一般的なメンテナンスとデプロイに関する運用タスクを自動化することが可能です。
- 自動化ワークフローの設定ステップ
    - Amazon CloudWatch Events を使用して自動化タスクおよびワークフローに関する通知を受信します。
    - Amazon EC2 または AWS Systems Manager コンソールを使用して、自動化の進捗状況および実行の詳細を監視します。
    - Systems Manager オートメーションドキュメントにより、オートメーションワークフロー（Systems Manager がマネージドインスタンスおよび AWS リソースで実行するアクション）を定義します。
    - 自動化ドキュメントが事前に定義することで、1 つ以上のAmazon EC2 インスタンスの再起動やAMIの作成といった一般的なタスクを実行する際に使用することができます。
- Amazon CloudWatch エージェント: インスタンスのメトリクスとログを収集する。
- AWS Systems Manager エージェント: EC2インスタンスなどにインストールして内部のメトリクスデータを取得することができる Amazon のソフトウェアです。AWS クラウド上の Systems Manager サービスからのリクエストを処理し、リクエストに指定されたとおりに実行します。

## 8.
- ALBのアクセスログの有効化: ロードバランサーに対するリクエスト詳細情報を収集することができるアクセスログを取得することができます。
- VPC Flow Logs: VPC のネットワークインターフェイスとの間で行き来する IP トラフィックをキャプチャする機能。

## 9.
- Amazon CloudWatch エージェント: システムメトリクスとログファイルの両方を収集できます。

## 10.
- IDS(Intrusion Detection System): 不正侵入検知システム。
- IPS(Intrusion Prevention System): 不正侵入防止システム。
- AWS Network Firewall:IPS / IDSを提供。同VPC内のリソースのインターネット宛の通信を検査する。
- AWS Gateway Load Balancer
    - シンプル化を通じてアプライアンス導入を迅速に
    - 伸縮性を持つスケーラビリティでコストパフォーマンス改善
    - アプライアンスの可用性を向上
    - 主要アプライアンス各社がサポート可能
- ネットワークアプライアンス: ネットワーク機器
    - ネットワークトラフィックに対して透過的であること
    - セキュリティー、監視、分析等の用途の対応
    - ポリシーおよび運用の専門知識への投資

- AWS WAF: AWS Web Application Firewall。webアプリ保護。
- 0.0.0.0/0: 全てのIPv4を意味する。
- 送信先(destination): パケットの最終目的地。(旅行に例えると：アメリカ)
- ターゲット(target): 送信先に到達するためのパケットの経由地点。(旅行に例えると：日本の空港)
- ルート: ネットワーク経路。
- ルートテーブル: ルートのルールの記載されたテーブル。
    - メインルートテーブル: VPCに自動割り当てされるルートテーブル
    - カスタムルートテーブル: VPC用に各自設定するルートテーブル
    - サブネットルートテーブル: サブネットに関連付けられるルートテーブル
    - ゲートウェイルートテーブル: インターネットゲートウェイまたは仮想プライベートゲートウェイに関連付けられるルートテーブル
    - ローカルゲートウェイルートテーブル: Outposts ローカルゲートウェイに関連付けられるルートテーブル

## 11.

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
- ICMP (Internet Control Message Protocol): TCP/IPでネットワークの疎通がされているノード（サーバー、ネットワーク機器、PCなど）間で、通信状態の確認をするために使われるプロトコルです。ICMPは、死活監視や可用性監視と呼ばれる「Ping監視」を行うためのプログラムに使われます。Ping監視では、ICMPによりテストパケットが監視対象のノードに送付され、その応答により監視ノードの状態を把握します。つまり、ICMPによって「監視ノードが存在するか」「監視ノードと通信可能か」などを調べることができます。

## 12.
- EBS 最適化インスタンス: EBSに最適な専用の帯域幅を提供するインスタンスタイプ
- RAID(Redundant Arrays of Inexpensive Disks): 複数のハードディスクを組み合わせることにより、　1台の仮想的なハードディスクとして認識させて冗長性を向上させる技術のこと。
    - RAID0: 複数のハードディスクに同時に分散して読み書きを実行します。これにより、アクセスの高速化を実現します。RAID0は「ストライピング」とも呼ばれています。RAID0では複数のHDDに同じデータが保存されていないことから、このRAID構成のみ冗長性や耐障害性がありません。
    - RAID1: 複数のハードディスクに同じデータを書き込みことでハードディスクの耐障害性を実現します。RAID1は「ミラーリング」とも呼ばれています。RAID1では同じデータを2台以上のディスクに書き込むのでディスク容量の利用効率が50%以下になってしまうデメリットがある。
    - RAID5: データからパリティ（誤り訂正符号）を生成し、3台以上のハードディスクに分散して書き込みします。RAID5は、RAID0のように複数のディスクに分散しているため読み出し性能が優れているだけでなく1台のHDDに障害発生した場合でも、残りのHDDにより継続利用することが可能。

## 13.
- AWS Shield: マネージド型の分散サービス妨害 (DDoS) を防御するAWSサービスです。
    - Standard: 無料。CloudFrontとRoute53に対して自動適用する無料サービス。
    - Advanced: 有料。高レベルな保護。
- Amazon GuardDuty: AWS アカウントとワークロードを継続的にモニタリングし、悪意のあるアクティビティや不正なアクティビティから保護します。

## 14.
- terminate-instance-in-auto-scaling-group: 指定されたインスタンスを終了し、必要に応じて必要なグループサイズを調整します。
- --should-decrement-desired-capacity number: number分のインスタンス容量を減らすことができる。
- detach: 削除

## 15.
- EC2フリート: EC2インスタンスを統制する機能。
- AWS Batch: AWS クラウドでバッチコンピューティングワークロードを実行できます。
- AWS Systems Manager Patch Manager: セキュリティ関連のアップデートおよびその他のタイプのアップデートにおけるインスタンスへのパッチ適用プロセスを自動化します。オペレーティングシステムとアプリケーションの両方にパッチを適用するプロセスを設定摺うことが可能となります。
- EC2Rescue: EC2のWindowsインスタンスへの接続に失敗した場合や、起動上のトラブルが発生した場合にトラブルの分析に利用するログ収集などを実施します。

## 16.
- ELB(Elastic Load Balancer): 複数AZに展開された複数のEC2インスタンスの負荷状況に応じてトラフィックを分散してくれるロードバランサーです。
- Auto Scaling グループ: アプリケーションの利用状況によってインスタンス数を増減することができ、コストと可用性の向上に効果的です。1つのリージョン内のマルチAZで利用される機能です。

## 17.
- リスナー: 設定したプロトコルとポートを使用して接続リクエストをチェックするプロセス。外部からのアクセスを聞く人。このプロトコルでこのポートにアクセスがあったら、そのアクセスはどう処理する（どのサーバーにリダイレクトさせるか、など）ということを決めていくということです。
- フロントエンド接続: クライアントとロードバランサーの間の接続。
- バックエンド接続: ロードバランサーとターゲット

## 18.
- Amazon CloudFront: 動画、アプリケーション、静的、動的なコンテンツを迅速かつ安全に配信できるコンテンツデリバリネットワーク(CDN)サービス。
    - ファイルのバージョン管理を使用して、古いファイルのキャッシュから新しいバージョンのファイルに更新することで、キャッシュファイル自体を更新することができます。
    - 誤ったファイルがキャッシュされた場合、有効期限が切れる前にCloudFrontエッジキャッシュからファイルを削除する
        - aws cloudfront create-invalidationコマンドを使用して、エッジキャッシュからファイルを無効化する。
        - 次にビューアがファイルをリクエストした際に、CloudFrontがファイルの最新バージョンを取得してファイル自体を更新する。
- CDN (Content Delivery Network): コンテンツをスピーディーかつ効率的に配信できるようにしたネットワークのことです。
- エッジロケーション: エッジサーバーでコンテンツをキャッシュし、配信の高速化とオリジンサーバーへの負荷を軽減します。
- オリジンサーバー: コンテンツが格納されているサーバーのことです。EC2やS3、ELBなどをオリジンサーバーとして使用することができます。

## 19.
- プロビジョニング: は、必要に応じてネットワークやコンピュータの設備などのリソースを提供できるよう予測し、準備しておくこと。
- AWS Elastic Beanstalk: 容量のプロビジョニング、負荷分散、自動スケーリング、アプリケーションのデプロイの詳細を自動化するサービス。AWS CloudFormationと連携してアプリケーションのバージョンを展開する際にインフラ環境を構築します。
- AWS Serverless Application Model(SAM): サーバーレスアプリケーション構築用のオープンソースフレームワークです。Lambda関数などのサーバレスアプリケーションをデプロイする際に利用されますが、その際の実行環境はCloudFormationに依存しており、CloudFormationテンプレート内にSAMの設定を実施してデプロイを実行することができます。

## 20.
- EC2 Linux インスタンスのOSのメトリクスとパフォーマンスのモニタリング:
    - EC2インスタンスにCloudWatch エージェントを使用してメトリクス取得を設定することが必要です。その際はAWS CLIからメトリクスのモニタリング設定のスクリプトを記述して、実行することが必要です。エージェントはインスタンス内部のデータを CloudWatch にプッシュしてモニタリングを開始することができます。
- CloudWatch Logs エージェント: Amazon EC2 インスタンスから CloudWatch Logs にログデータを自動的に送信する方法を提供します。
    - ログデータを CloudWatch Logs にプッシュする AWS CLI プラグイン
    - データを CloudWatch Logs にプッシュするプロセスを開始するスクリプト (デーモン)。
    - デーモンが常に実行中であることを確認する cron ジョブ
- メトリクス: リソースやアプリケーションに関して測定できる変数。

## 21.
- HTTPCode_Backend_5XX: 登録済みインスタンスからサーバーエラー応答が送信された場合のエラー表記。
- リダイレクト: サイトやページなどを新しいURLに変更した際、自動的に転送をする仕組みのこと。
- リダイレクト応答: 要求されたコンテンツが異なるロケーションで検出されたことを示す300番台の状況コードが含まれた要求への応答。

## 22.
- AWSのサポートサービス:
    - ![Screenshot 2022-11-06 at 9 52 24](https://user-images.githubusercontent.com/61643054/200148937-42e9bdc7-31bf-4ca5-9462-a59b048dbf2d.png)
- AWS Inspector Checks: 評価ターゲットは、サポートされている多くのオペレーティングシステムで実行されるEC2インスタンスのみ。
- Amazon Detective: IP トラフィック、AWS 管理操作、悪意のあるアクティビティや不正なアクティビティに関するテラバイトのイベントデータレコードを自動的に処理します。

## 23.
- Amazon DynamoDB Auto Scaling: AWS Application Auto Scaling サービスを使用して、実際のトラフィック量の増減に応じてDynamoDBテーブルのプロビジョンドスループット性能を動的に調整する機能です。
- Amazon DynamoDB トランザクション: 複数のアクションをまとめてグループ化し、1 つのオールオアナッシングの TransactWriteItems または TransactGetItems オペレーションとして送信できます。
- Amazon DynamoDB グローバルテーブル: マルチリージョンにマルチマスターデータベースをデプロイすることができます。複数リージョンでテーブルを利用する際に活用できる機能。
- DynamoDB Accelerator(DAX): DynamoDBテーブルにキャッシュレイヤーを追加することで高速処理が可能。

## 24.
- キャッシュヒット率: キャッシュに目当てのデータが存在する確率。
- CloudFrontのキャッシュ設定:
    - クエリ文字列パラメータに基づいてキャッシュするように CloudFront を設定する場合、以下の手順を実行して、CloudFront がオリジンに転送するリクエストの数を減らすことができます。CloudFront エッジロケーションがオブジェクトを提供する場合、オリジンサーバーの負荷が軽減され、レイテンシーが減少します。これは、オブジェクトがユーザーに近い場所から提供されるためです。
    - ![Screenshot 2022-11-06 at 11 47 35](https://user-images.githubusercontent.com/61643054/200151594-51da9fe6-3fdf-4d79-9b69-3ced88579b30.png)
- 署名付きURLを利用してコンテンツを配信: コンテンツを閲覧できるユーザーを制限することができます。
- 署名付きCookieを利用してコンテンツを配信: コンテンツを閲覧できるユーザーを制限することができます。

## 25.
- Route53: DNS (ドメインネームサービス)のフルマネージドサービスです。
    - ドメイン登録機能
    - DNS ルーティング機能: ブラウザに対して、アクセスしたドメインに紐づく情報の受け渡しを行い、ウェブサイトの表示またはウェブアプリケーションに接続するための支援を行います。
    - DNS ヘルスチェック機能: ウェブサーバーなどのリソースの正常性を監視することができます。
    - パブリックホストゾーン: インターネット上でどのようにルーティングするかを指定する DNS レコードが含まれます。
    - プライベートホストゾーン: Amazon VPC 内でどのようにルーティングするかを指定する DNS レコードが含まれます。セキュリティ要件が高く、インターネットの外向けへの制限があるビジネスで、Amazon VPC 内部ネットワーク内で DNS ルーティングを行いたいユースケースもあります。
- A(Address)レコード: 「このドメイン名はこのIPアドレスだよ」(例) apple.com. A 17.149.160.49
- CNAMEレコード: 「このドメイン名とこのドメイン名は同じだよ」と教えてあげる書き方。(例) www.apple.com. CNAME apple.com.
- エイリアス(別名)レコード: 選択した AWS リソース (CloudFront ディストリビューションや Amazon S3 バケットなど) にトラフィックをルーティングできます。また、エイリアスレコードにより、ホストゾーン内のあるレコードから別のレコードにトラフィックをルーティングできます。Aレコードの機能。
    - CNAMEレコードであれば、以下の振る舞いとなります。
        - mydomain.com → myelb1-xxxxxxxxxx.ap-northeast-1.elb.amazonaws.com → IPアドレスの 3ステップで名前解決
    - エイリアスレコードであれば、Aレコードのため、以下の振る舞いとなります。ALIASレコードを利用した場合は、example1.*から直接...183を得ますので、DNSクエリが1回で済みます。CNAMEレコードと比較して50%削減です。
        - mydomain.com → IPアドレスの 2ステップで名前解決
- ドメイン: ○○○.com
- サブドメイン: □□□.○○○.comのように独自ドメインの先頭に文字列を挿入してドメインを区分けするというもので、1つのドメインを用途別に分割したい時に使用します。
- ホストゾーン: ドメインおよびサブドメインのトラフィックのルーティングする方法についての情報を保持するコンテナ。

## 26.
- コストと使用状況レポート: AWSサービス、料金、予約などに関するメタデータ などの包括的なコストデータが提供されています。
- Billingアラーム: CloudWatchの設定で、請求額がしきい値に達した際にアラームを通知する。
- AWS Pricing Calculator: AWS のユースケースに合ったコスト見積もりの作成に役立つウェブベースのサービス。

## 27.
- AWS Health: AWSのリソース、サービス、およびアカウントの状態をリアルタイムで可視化します。AWS で実行されるアプリケーションに影響を与えているリソースのパフォーマンスや可用性の問題の把握と修復のガイダンスを提供します。

## 28.
- CloudFormationによって作成されたスタックの更新:
    - 変更セットの利用
    - CloudFormationスタックを直接書き換える
- ドリフト: テンプレートによって展開したAWSリソースを展開後に変更した場合、元テンプレートとの差分を検出するチェック機能。

## 29.
- インスタンスファミリー: インスタンスタイプを用途別に分類したもので、グループとしては大きく「汎用」「コンピューティング最適化」「メモリー最適化」「Accelerated Computing」「ストレージ最適化」に分かれる。

## 30.
- Amazon GuardDutyの特徴:
    - 機械学習を利用した不正検知が可能
    - VPCフローログを解析できる
    - IPアドレスやドメインリストを解析できる。
    - ![Screenshot 2022-11-07 at 6 24 30](https://user-images.githubusercontent.com/61643054/200195959-f4cbf417-fbd1-4a64-9370-f69ca90de01d.png)

## 31.
- Application Load Balancer: バックエンド接続には、常に ELBSecurityPolicy-2016-08 セキュリティポリシーが使用されます。カスタムセキュリティポリシーをサポートしていません。
- SSL接続ネゴシエーション: クライアントとサーバー間のSSL接続処理。

## 32.
- Auto ScailingのAZRebalance: グループのバランスがとれなくなった場合 (たとえば、以前は使用できなかったAZが正常な状態に戻った場合)、グループに指定されたすべてのAZ間で EC2 インスタンスを均等に分散させてバランスをとります。終了プロセスを一時停止すると、Auto Scalingグループは最大サイズよりも最大10％大きくなる可能性があります。これは、リバランスアクティビティ中にパフォーマンスが低下することを予防するために、一時的にインスタンス数を超過することが許可されるためです。スケーリングプロセスでインスタンスを終了できない場合、終了プロセスを再開するまで、Auto Scalingグループは最大サイズを超えたままになる可能性があります。 

## 33.
- Amazon CloudWatchの詳細モニタリング: 各データポイントは開始後 1 分間のアクティビティを取得することができます。EC2インスタンスが起動されると自動的にメトリクスが Amazon CloudWatch に送信されます。デフォルトのCloudWatchメトリクスは各データポイントはインスタンスのアクティビティ開始後の 5 分間となっており解像度が低くなっています。したがって、 メトリクスの解像度をあげるためには詳細モニタリングを有効にすることが必要です。
- Cloudwatchエージェント: Amazon EC2 インスタンスのOSに関連するシステムレベルのメトリクスを収集することができます。
- EC2インスタンスからのフローログの有効化: Cloudwatchログに設定することで、EC2インスタンスのトラフィックログを取得することができます。

## 34.
- EC2インスタンスには実行できるインスタンスの合計ｖCPU値に制限があります。制限以上実行したい場合はAWSに対して上限緩和申請が必要になります。

## 35.
- RDP(Remote Desktop Protocol): デスクトップコンピューターをリモートで使用するためのプロトコルまたは技術的な規格です。
- ネットワークインタフェース: ネットワーク固有のデバイス・ドライバーおよび IP 層と通信するネットワーク固有のソフトウェアであり、その目的は、存在する可能性があるすべてのネットワーク・アダプターへの一貫したインターフェースを IP 層に提供することにあります。
- ENI（Elastic Network Interface）:VPCに対してネットワークインターフェースを追加する役割を担う。物理的な環境におけるNIC（Network Interface Card）のことです。サーバーに複数枚挿すことで、サーバーが担う複数の役割に応じてIPアドレスを複数持たせたり、異なるセグメント間で1台のサーバーを動作させたりすることができました。ENIも、仮想的な環境においてNICと同様のネットワーク設定ができるようになると考えてよいでしょう。
    - ENIに対して、IPアドレスの登録やMACアドレスの登録、セキュリティグループの登録など、必要な設定を行うことによりネットワークインターフェースを作成し、これを仮想インスタンスに取り付けたり、取り外したりすることをすべてWebブラウザ上で実現することができます。ただし、仮想インスタンスには、デフォルトのネットワークインターフェース（eth0）があらかじめ取り付けられています。このネットワークインターフェースは、取り外すことはできませんので注意が必要です。まずは、仮想インスタンスに対するネットワーク設定は、デフォルトのネットワークインターフェースに対して行い、さらにネットワークインターフェースを追加する必要がある場合は、ENIを追加していけばよいでしょう。
    - ENIを追加して使う必要があるケースの代表的なものとしては、管理用ネットワークの作成が挙げられます。ユーザーからのアクセスは、デフォルトのネットワークインターフェースで受け付け、メンテナンス等の管理目的のアクセスは、ENIにより追加したネットワークインターフェースで管理者用パソコンからのアクセスのみを受け付けます。このように、ユーザーからのアクセスと管理者からのアクセスを明確に区別することで、セキュリティレベルを強化することができます。
    - ENIの設定:
        - プライベートIPv4アドレス（VPCのアドレス範囲内）の設定
        - 固定IPアドレス（Elastic IPアドレス）の設定
        - IPv6アドレスの設定
        - セキュリティグループの設定
        - MACアドレスの管理
        - ルーティング情報の設定

## 36.
- Route53のヘルスチェック:
    - エンドポイントをモニタリングするヘルスチェック: IP アドレスあるいはドメイン名で特定するエンドポイントをモニタリングするヘルスチェックを設定できます。指定された一定の間隔で、Route 53 は自動リクエストをインターネット経由でアプリケーションやサーバーなどのリソースに送信して、そのリソースが到達可能、使用可能、機能中であることを確認します。
    - 他のヘルスチェック (算出したヘルスチェック) を監視するヘルスチェック: 他のヘルスチェックが正常あるいは異常であるかを Route 53 が判断するかについてをモニタリングするヘルスチェックを作成できます。複数のウェブサーバーなどの同じ機能を実行する複数のリソースがあるときに、最低限のリソースが正常であるかどうかに重点を置く場合などに使用する。
    - CloudWatch アラームをモニタリングするヘルスチェック: CloudWatch アラームを作成したら、そのアラームをモニタリングする CloudWatch と同じデータストリームをモニタリングするヘルスチェックを作成できます。 
- ELBのヘルスチェック: ロードバランサがどのバックエンドインスタンスにトラフィックをルーティングするかを判断するために用いられます。

## 37.
- CloudFormation:
    - UpdatePolicy 属性: 新バージョンを更新する際に必要となる前処理などを指定することで、ダウンタイムを抑える対応を実施することが可能となります。
    - DependsOn 属性: 特定のリソースが他のリソースに続けて作成されるように指定できます。DependsOn 属性をリソースに追加した場合、そのリソースの作成は必ず、DependsOn 属性で指定したリソースの作成後に行われます。 
    - DeletionPolicy 属性: スタックが削除された際にリソースを保持または (場合によっては) バックアップできます。
    - UpdateReplacePolicy 属性: スタック更新オペレーションでリソースを置き換えるときに、リソースの既存の物理インスタンスを保持したり、必要に応じてバックアップしたりします。

## 38.
- 他のリージョンの他のアカウントに対して該当するEC2インスタンスのAMIを共有する:
    - 共有先のAWSアカウントIDを知っていれば、AMIを公開せずにAMIを特定のAWSアカウントと共有できます。マネジメントコンソールまたはAWS CLIを利用してAMIを特定のリージョンにコピーし、そのAMIを該当するアカウントと共有する設定が可能です。
    - AMIを暗号化されたボリュームとして共有する場合、暗号化時に使用したCMKも共有する必要があります。
    - AMIはリージョン内のリソースであり、AMIを共有するとリージョン内においてのみAMIが利用可能になります。 AMIを別のリージョンで使用できるようにするには、AMIを指定のリージョンにコピーすることが必要です。

## 39.
- Amazon Athena: 標準SQLを使用してS3バケットにホストされているデータを分析して、分析レポートを作成することができます。
- Amazon Macie: 機械学習によりAmazon S3の機密データを検出、分類、保護するフルマネージド型サービス。

## 40.
- 128,64,32,16,8421
- 00000000 00000000 00000000 00000000
- ネットワーク部: 「192.168.0.0/24」の「192.168.0.0」の箇所
- ホスト部：住所の番地のようなもの。
- CIDR表記: 「192.168.0.0/24」の場合、ネットワーク部が最初〜24番目までという意図。
- AWSによって予約されたIPアドレス:
    - 10.0.0.0.: ネットワークアドレスです。
    - 10.0.0.1: AWS が VPC ルーター用に予約しています。
    - 10.0.0.2: AWS が予約しています。
    - 10.0.0.3: 将来の利用のために AWS が予約しています。
    - 10.0.0.255: ネットワークブロードキャストアドレスです。VPC ではブロードキャストがサポートされないため、このアドレスを予約します。

## 41.
- EC2インスタンスがIPv6のIPアドレスを利用してインターネットと通信できるようにするには、VPCにおいて次の設定を行う必要あり:
    - /16のIPv4 CIDRブロックを持つVPCを作成し、/56のIPv6 CIDRブロックをVPCと関連づける。
- IPv4/IPv6デュアルスタック: それぞれの通信を行うソフトウェアスタックを用意するものだ。こうして“2カ国語”を話せる／理解できるようにしておいて、会話する相手に応じて言語を切り替えればよい。
- IPv6アドレス: 16ビットごとにコロン（:）で区切って、16進数（0000～ffff）に変換して表記するのが基本ルールとなっている。
    - 「::」に置き換えて省略できるのは「1カ所」のみ
    - 「::」に置き換えられるのは「連続する複数」の0フィールドのみ
    - 連続する0フィールドが複数箇所にある場合は「最も長い」箇所を省略する
    - 省略可能な複数0フィールドの長さが同じ場合は「前方の」箇所を省略する

## 42.
- Amazon SQS: VPCを指定せずリージョンで利用可能なQueuingサービス
- AutoScaling グループの EC2 インスタンス毎のSQSキューメッセージを確認するAutoScalingトリガーを構成することで、SQSキューサイズに応じてEC２インスタンスに対してAutoScalingを実行できます。これによって、処理増加に伴うタスク遅延が改善されます。
    - SQS キューからのメッセージを処理するために EC2 インスタンスを管理する Auto Scaling グループ。
    - Amazon CloudWatch に送信するカスタムメトリクス。Auto Scaling グループの EC2 インスタンスごとにキュー内のメッセージの数を測定します。
    - ターゲット追跡ポリシー。カスタムメトリクスと一連のターゲット値に基づいて Auto Scaling グループをスケールするように設定します。CloudWatch アラームでスケーリングポリシーを呼び出します。

## 43.
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

## 44.
- Amazon Aurora: 標準的な MySQL データベースと比べて最大で 5 倍、標準的な PostgreSQL データベースと比べて最大で 3 倍高速なリレーショナルデータベースです。
    - 接続およびワークロード要件を満たすために、Aurora Auto Scaling はシングルマスターレプリケーションを使用して、Aurora DB クラスター用にプロビジョニングされた Aurora レプリカの数を動的に調整します。Aurora Auto Scaling によりAurora DB クラスターは急激な接続やワークロードの増加を処理できます。接続やワークロードが減ると、Aurora Auto Scaling は未使用のプロビジョニングされた DB インスタンスに対する料金が発生しないように、不要な Aurora レプリカを削除します。したがって、MySQLデータベースのAWS Auroraクラスターを作成し、Auto Scalingを使用してAuroraリードレプリカを自動的にプロビジョニングするのが正しい答えです。

## 45.
- VPCのサブネットに配置されたインスタンスへのインターネットアクセスを有効にするには:
    - VPC にインターネットゲートウェイをアタッチ
    - インターネットバウンドトラフィックをインターネットゲートウェイに転送するルートをサブネットのルートテーブルに追加して、「パブリックサブネット」を構成します。
    - サブネットのインスタンスに、グローバルに一意な IP アドレス (パブリック IPv4 アドレス、Elastic IP アドレス、IPv6 アドレス) が割り当てられていることを確認します。
    - ネットワークアクセスコントロールリストとセキュリティグループルールがインスタンス間で関連するトラフィックを許可していることを確認します。 
- NATゲートウェイ: 主にプライベートサブネットにデプロイされたインスタンスがインターネットに返信できるようにするために使用します。
- プライベートサブネットに設置されたインスタンスは、パブリックサブネットに設置されたネットワークアドレス変換 (NAT) ゲートウェイまたはNATインスタンスを使用して、インターネット側にトラフィックを返すことができます。これによって、データベースサーバーは、NATを通じてインターネットに接続してソフトウェアアップデートを行うことができますが、インターネットからはデータベースサーバーへの接続を確立できなくなります。
    - <img width="581" alt="Screen Shot 2022-08-19 at 7 27 43" src="https://user-images.githubusercontent.com/61643054/185506216-b6c10b72-862a-4f10-bf06-bfa03e0968d7.png">

## 46.
- AWSの責任共有モデル: インフラストラクチャレイヤーと顧客レイヤーの両方に適用される責任範囲を規定しています。AWSは主に物理的なインフラストラクチャの管理を実施し、ユーザーはAWSサービスの使用内で独自のコントロールを実施する必要があります。
    - ![Screenshot 2022-11-09 at 22 48 29](https://user-images.githubusercontent.com/61643054/200847105-ff176986-85e4-4176-9aa6-12778fcf78c2.png)

## 47.
- Amazon Inspector: EC2インスタンスにおける通信の詳細、安全なチャネルの使用、実行中のプロセスの詳細、実行中のネットワークトラフィックなどのデータを収集して評価レポートを作成する。
- ![Screenshot 2022-11-09 at 22 56 34](https://user-images.githubusercontent.com/61643054/200848849-fe956e00-2624-4fb3-b978-9028c7788453.png)

## 48.
- フルメッシュ: 通信ネットワークの接続形態（トポロジー）の一つで、参加する各通信主体（ノード）が自分以外のすべてのノードと接続する形態。
- VPC 間で制限なしで相互にリソースを共有する: フルメッシュ設定で 3 つの VPC をピアリング接続します。その際はVPC はすべて同じ AWS アカウントに存在し、重複する CIDR ブロックがないことが条件となります。
- VPCピアリング: 
    - 異なるVPCを接続することが出来ます。
    - 複数のAWSのコンテンツをまとめたり、複数のAWS間で通信が行うことが出来ます。
    - 異なるAWSアカウント(クロスアカウント)間でもVPCピアリングを行うことが出来ます
    - また、複数のVPCとピアリングすることがデフォルトで50まで出来ます

## 49.
- CloudFormationがスタック作成に失敗した場合: CloudFormationがスタックを自動的にロールバックします。既存スタックの障害時のロールバックを無効にすることはできません。新しいスタックを作成する場合にのみ、失敗時のロールバックを無効にできます。
- CloudFormationのドリフト: テンプレートで展開したインフラ内容が手動で更新されたさいに検出する機能。

## 50.
- IDフェデレーション: インターネットの外部プロバイダーを利用したユーザー認証連携のことを指します。既に認証が済んだユーザーIDを使って、別のシステムにアクセス出来るようにする仕組み。
- AWS Directory Service:
    - IDフェデレーションを実装することができます。
    -  SAML2.0を使用した ID フェデレーションをサポートしています。この機能はフェデレーティッドシングルサインオン (SSO) を有効にします。ユーザーを作成しなくても、ユーザーは AWS Management Console にログインしたり、AWS API オペレーションを呼び出したりできるようになります。
- AWS Single Sign-On (SSO)[現在はIAM Identity Center] :
    - 複数の AWS アカウントとアプリケーションへの SSO アクセスを一元管理できます。これにより、ユーザーは１つの資格情報を利用して、ユーザーポータルにサインインし、割り当てられたすべてのアカウントとアプリケーションに 1 か所からアクセスできます。また、AWS SSO アプリケーション設定ウィザードを使用することで、SAML2.0の統合を作成し、SSO アクセスを任意の SAML 対応アプリケーションに拡張できます。
    - 社内の既存の Microsoft Active Directory (AD) の ID を使用して、アカウントとアプリケーションへの SSO アクセスを管理できます。AWS SSO は AWS Directory Service を通じて AD と統合されるため、ユーザーを該当する AD グループに追加するだけでアカウントとアプリケーションへの SSO アクセスをユーザーに許可できます。
- SAMLベースのフェデレーション: SAML（Security Assertion Markup Language）はインターネット上で、IDやパスワードなどの認証情報を連携するためのXMLベースの仕様です。SAMLは主にエンタープライズアプリケーション間の認証で使われています。SAMLはMicrosoft Active Directoryを使用しているため、AWSクラウドへのAPIアクセス用にSAMLベースのフェデレーションを設定できます。
    - ![Screen Shot 2022-08-24 at 5 34 42](https://user-images.githubusercontent.com/61643054/186260379-0ff1db38-b861-4347-8660-1bef9f9af033.png)
- Cognito: ウェブIDフェデレーションを利用することができますが、WEBアプリケーションに実装する際に認証の仕組みとして組み込む際に利用します。

## 51.
- AWS Config: AWSリソースに対してカスタムまたは管理されたルールを評価して通知をすることが可能。Amazon SNSトピックを連携すれば、SNSを利用した通知設定が可能です。たとえば、リソースが更新されるとメール通知が実施されて、変更内容が表示できます。

## 52.
- Amazon S3 の サーバーサイド暗号化 には以下の3つのオプションが用意されています。
    - SSE-S3: Amazon S3 が管理するキーによるサーバー側の暗号化
    - SSE-KMS: AWS Key Management Service に保存されている KMS キーによるサーバー側の暗号化
    - SSE-C: お客様が指定したキーによるサーバー側の暗号化
        - 次のリクエストヘッダーを使用して暗号化キー情報を提供する必要があります。
            - x-amz-server-side-encryption--customer-algorithm
            - x-amz-server-side-encryption--customer-key
            - x-amz-server-side-encryption-customer-key-MD5   

## 53.
- データベースとその接続のセキュリティを最大限に確保するソリューション:
    - Amazon RDS DB インスタンスとスナップショットを暗号化するには、DBインスタンス作成時にAmazon RDS DB インスタンスの暗号化オプションを有効にします。既にDBが作成されている場合は途中で暗号化を実施する設定は不可能です。スナップショットを取得してDBを再作成することで暗号化を実施することが必要となります。Amazon RDS の暗号化された DB インスタンスでは、業界標準の AES-256 暗号化アルゴリズムを使用して、Amazon RDS DB インスタンスをホストしているデータをサーバー側で暗号化します。AWS KMS　Keyで暗号化。
    - RDSではアプリケーションのSSLまたはTLSを利用してDBインスタンスへの接続を暗号化できる。RDSインスタンスのプロビジョニング時にRDS側で自動的にSSL証明書が作成され、DBインスタンスにインストールされます。

## 54.
- CloudFormation:
    - CloudFormationのヘルパースクリプト: CloudFormationでEC2インスタンスを作成する際に、テンプレートファイルにスクリプト実行を定義することで使用します。例えば、インスタンス起動後のソフトウェアインストールやサービス開始などのために使用でき、ミドル~アプリケーションレイヤーまでCloudFormationで自動構築可能になります。
        - cfn-signal: cfn-signalヘルパースクリプトは、EC2インスタンスが正常に作成/更新されたかを示すシグナルをCloudFormationに送信します。
    - AWS::AutoScaling::AutoScailingGroupリソース
        - UpdatePolicy属性: CloudFormationスタックが更新される時のAuto Scalingグループリソースの更新方法を定義する。
            - AutoScalingRollingUpdate: 既存のAuto Scaling グループを保持し、設定したパラメータに基づいて古いインスタンスの置き換えを行う。

## 55. 
- pingコマンド: 通信相手が「生きているかどうか」を調べたり、相手までのネットワークの経路が正しく設定され、通信が行える状態になっているかどうかを確かめたりするために使われる。
- セキュリティグループ
    - サーバー単位のトラフィック制御機能
    - ステートフル: インバウンドのみ設定すればアウトバウンドも許可される
    - 許可のみをIn/Outで指定
    - デフォルトでは同じセキュリティグループ内通信のみ許可
    - 全てのルールを適用
- ネットワークACL
    - VPC/サブネット単位向けのトラフィック制御機能
    - ステートレス: インバウンド設定だけではアウトバウンドは許可されない
    - 許可と拒否をIn/Outで指定
    - デフォルトでは全ての通信を許可する設定
    - 番号の順序通りに適用

## 56.
- Amazon CloudFront: 動画、アプリケーション、静的、動的なコンテンツを迅速かつ安全に配信できるコンテンツデリバリネットワーク(CDN)サービスです。世界中にエッジサーバーがあり、あらゆる場所からのアクセスに対しても柔軟に対応できるため、低レイテンシーでユーザーにコンテンツを提供することが可能となり、オリジンサーバーへの負荷の軽減にもなります。
- CDN (Content Delivery Network): コンテンツをスピーディーかつ効率的に配信できるようにしたネットワークのことです。
- エッジロケーション: データセンターの世界的ネットワークを経由してコンテンツを配信します。エッジサーバーでコンテンツをキャッシュし、配信の高速化とオリジンサーバーへの負荷を軽減します。
- オリジンサーバー: コンテンツが格納されているサーバーのことです。EC2やS3、ELBなどをオリジンサーバーとして使用することができます。オンプレミスのサーバーを使用することも可能です。
- ディストリビューション: ドメインごとに割り当てられるCloudFrontの設定のことで、Amazon EC2でいうインスタンスのようなものです。
- CloudFrontの使用状況の確認:
    - 使用状況レポート: 選択したリージョンのエッジロケーションからCloudFrontが応答するHTTPおよびHTTPリクエスト数を確認する。
    - viewerレポート: コンテンツに最もアクセスする視聴者の場所を特定する。
    - キャッシュ統計レポート: CloudFrontエッジロケーションに関連する統計をグラフ表示する

## 57.
- CloudFormation:
    - Template構成:
        - AWSTemplateFormatVersion: "version date"  =>  テンプレートのバージョンを記載
        - Description: "String"  =>  テンプレートの説明文
        - Metadata: template metadata  =>  テンプレートに対する追加情報
        - Parameters: set of parameters  =>  実行時にユーザ入力を求めるパラメータ
        - Mappings: set of mappings  =>  キーと値のマッピング
        - Conditions: set of conditions  =>  条件名と条件判断内容
        - Transform: set of transforms  =>  サーバレスアプリケーションの場合に必要
        - Resources: set of resources  =>  スタックを構成するリソースやプロパティ
        - Outputs: set of Outputs  =>  スタック構築後にCFnから出力させる値
    - 属性:
        - CreationPolicy属性: リソースに関連づけることでCloudFormationが指定数の成功シグナルを受信するかまたはタイムアウト期間が超過するまではスタック作成せずにリソースの設定アクションを待機することが可能。AWSリソースが起動されるまでのタイムアウト時間を設定することが可能です。
        - UpdatePolicy属性: 新バージョンの更新する際に事前前処理などを指定することで、ダウンタイムを抑える対応を実施することができます。
            - AutoScalingReplacingUpdate ポリシー: Auto Scaling グループを新しいグループで置き換えるのか、Auto Scaling グループ内のインスタンスのみ置き換えるのかを指定。
            - AutoScalingRollingUpdate ポリシー:Auto Scaling グループ内のインスタンスをバッチで更新するか、一度にすべて更新するかを指定。
        - UpdateReplacePolicy 属性: スタック更新オペレーションでリソースを置き換えるときに、リソースの既存の物理インスタンスを保持したり、必要に応じてバックアップしたりします。
        - DeletionPolicy: スタックが削除された時にリソースをどのように処理するかを制御。
        - DependsOn属性: 指定したリソースの作成後に作成されます。DependsOnを明示的に使う事で、デフォルトの並列処理を無効にし、指定の順序でCloudFormationがリソースを操作するように依存関係を指定する事が出来ます。
        - メタデータ属性: リソースと構造化されたデータを関連付ける事が出来ます。
- リソースにシグナルを送信する方法:
    - cfn-signalヘルパースクリプト
    - SignalResource API: リソースが成功か失敗かの状態を取得する。

## 58.
- AWSリソースへのアクセス制限:
    - ![Screenshot 2022-11-13 at 15 50 43](https://user-images.githubusercontent.com/61643054/201509654-36a48748-4a4c-4f23-ac21-0e5c4af8fb4d.png)

## 59.
- S3の分析方法: 
    -  S3 のストレージクラス分析: ストレージアクセスパターンを分析し、適切なデータを、適切な時期に適切なストレージクラスに移行すべきかを判断できる。
    - S3のアクセスログ: S3 バケットに対するリクエストの詳細が記録されます。
    - S3 Access Analyzer: インターネットの任意のユーザーや他の AWS アカウント (組織外の AWS アカウント アカウントを含む) にアクセスを許可するように設定されている S3 バケットに関して警告します。

## 60.
- S3バケットの削除制限:
    - バケットのバージョニングが有効化されているとAWS CLI を使ってオブジェクトがあるバケットを削除することができません。
    - オブジェクトが空でないと削除ができません。

## 61.
- AWS Storage Gateway: オンプレミス環境にファイルゲートウェイを接続することで、オンプレミスサーバからiSCSIを利用してEBSに接続したり、NFSを利用してS3に接続したりして、オンプレミス環境のストレージをAWSのストレージに接続してデータを移行することが可能となります。
    - ![Screenshot 2022-11-13 at 17 06 03](https://user-images.githubusercontent.com/61643054/201512209-9caca8e5-5337-4d68-a256-f2b198b01387.png)
- ![Screenshot 2022-11-13 at 17 06 15](https://user-images.githubusercontent.com/61643054/201512227-0bdff6f3-bdbf-4b32-a093-65f2bf6bc4cd.png)
- ![Screenshot 2022-11-13 at 17 06 45](https://user-images.githubusercontent.com/61643054/201512238-a5f45859-a7a2-4275-856b-af9c74d159c8.png)

- Direct Connect: オンプレミス側からS3へとデータを移動することは可能ですが、今回はオンプレミスとクラウドストレージの両方に保存されている企業ドキュメントの永続的なバックアップおよびアーカイブシステムをセットアップする必要があります。AWS Storage Gatewayはバックアップに必要な様々な機能を有しており、そちらを利用することが効率的です。 
- Snowball: 大量データを移行する際に利用する一時的なデバイス。

## 62.
- CloudFormationスタックにおいて、最新のWindows AMIが適用されるように設定:
    - CloudFormationテンプレートにAWS Systems Manager パラメータストアを連携させることで、CloudFormationテンプレートのパラメーターセクションを構成して、最新のWindowsのAMI IDを指定してAMIの更新を管理することができます。テンプレートやパラメータなど何も変更せずにCloudFormationスタックを更新するだけでリソースの要件に応じて、その時点で最新のAMI IDに更新されます。

## 63.
- S3クラスの種類:
    - ![Screenshot 2022-11-13 at 17 46 42](https://user-images.githubusercontent.com/61643054/201513517-5bea1f55-bd0d-4fd1-9d40-3c9c849b3659.png)

## 64.
- DBパラーメーターグループ: DBに割り当てるメモリなどのリソースの量を指定できる。
- AZ = データセンター
- ルートテーブル:
    - １つのサブネットに割り当てられるルートテーブルは１つ
    - １つのルートテーブルを複数のサブネットで共有することができる
    - ターゲットがlocalの場合はそのネットワーク内を意味する
- マルチAZ: 同一の役割を持ったサブネット、リソース群を複数のAZに作成することで、耐障害性の向上に繋がる
- ルートテーブルにインターネットゲートウェイ向きの設定がされているか、いないかによって「パブリックサブネット」と「プライベートサブネット」が決定されています。
- サブネットグループ: RDSインスタンスが配置されうるVPCサブネット群をグループ化したものです。ふたつ以上のサブネットが登録必須であり、かつそのサブネットたちは最低ふたつのAZにまたがっている必要があります。DB インスタンスをパブリックにアクセス可能にするには、その DB サブネットグループ内のすべてのサブネットがパブリックである必要があります。パブリックにアクセスできる DB インスタンスに関連付けられているサブネットがパブリックからプライベートに変更された場合、DB インスタンスの可用性に影響する可能性があります。

## 65.

- AWS Key Management Service: データ保護に使用される暗号化キーを一元管理できます。
- データキー: データを暗号化する。
- マスターキー: データキーを暗号化する。AWSからローカルにexportできない。
- CMK(Customer Master Key): AWS アカウント内の KMS キーで、ユーザーが作成、所有、および管理します。データキーを暗号化する。
- AWS マネージドキー: AWS のサービス がお客様の AWS アカウントで作成する KMS キー
- 対称暗号化 KMS キー: 
    - 何か（最大4096バイト1）を入れるとそれが暗号化されて出てくる
    - 暗号化されたデータを入れると元に戻る
    - キーそのものは決して外に出てくることはない
    - キーにはIAM PolicyとKey Policyで保護がかけられている
    - というブラックボックスであるととらえることができます。
    - 共通鍵暗号方式
- 非対称 KMS キー: 
    - 非対称 KMS キーは、数学的に関連するパブリックキーとプライベートキーペアを表します。プライベートキーが暗号化されないまま AWS KMS から出ていくことはありません。プライベートキーを使用するには、AWS KMS を呼び出す必要があります。
    - 秘密鍵と公開鍵のペアのようなもの。公開鍵暗号方式。
- HMAC KMS キー: Hash-based Message Authentication Code (HMAC) の生成と検証に使用されるさまざまな長さの対称キーを表します。HMAC キーのキーマテリアルが、暗号化されずに AWS KMS 外で使用されることはありません。HMAC キーを使用するには、GenerateMac または VerifyMac API オペレーションを呼び出します。

## 69.
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

## 73.

- 発行されたSSLサーバ証明書:
    - Webサーバにインストール
    - ロードバランサにインストール
- AWS Certificate Manager (ACM): サーバー証明書をプロビジョン、管理、およびデプロイします。
- ACMがサポートされていないリージョンでは、IAM を Certificate Manager として使用する必要があります。
    - get-server-certificateコマンド: 証明書のARNを取得。
    - set-load-balancer-listener-ssl-certificateコマンド: 証明書を設定。