# udemy SAA模擬試験 1
## 1.

- Redshift:
    -  スナップショット用に無料ストレージを提供してますが、上限のストレージ容量を超過すると課金が発生します。つまり、スナップショットの空き容量が上限に達すると課金されてしまいます。 そのため、自動スナップショットを保存し、保存期間日数を見直すことで、不要になった手動スナップショットを削除する必要がある。
    - VPC拡張ルーティングを使用すると、Amazon Redshift はクラスターとデータリポジトリ間のすべての COPY と UNLOAD トラフィックが Amazon VPC を通るよう強制される。この設定によって課金は発生しない。
    - Redshiftで利用できるのはオンデマンドインスタンスかリザーブドインスタンス。

## 2.
- CloudFront: データがエッジ側にない場合、データをオリジンサーバーから取得してから配信するが、次の配信以降はエッジロケーションにあるキャッシュを利用してデータが配信される。

## 3.
- Auto Scaling: 
    - 閾値を超えたにもかかわらずスケーリングがうまく実行されずに24時間以上たった場合は、自動的にAuto Scalingが停止する。
    - Auto Scalingによるインスタンス起動時に問題が発生すると、グループ内で実施されている1つ以上のプロセスを中断する。ユーザーはそのプロセスは任意の時期に再開することができる。プロセスを中断することによって、ユーザーが設定上の問題を解析することができる。
    - <img width="524" alt="Screen Shot 2022-08-17 at 8 11 13" src="https://user-images.githubusercontent.com/61643054/185000776-d3dd45b9-2fc8-4183-8831-db2a2b131bc1.png">

## 4.
- スナップショット: ある時点のクラウドサーバーのボリューム（ディスク）の状態を丸ごと保存すること。
- AWS Storage Gateway:
    - ボリュームゲートウェイ: スケジュールされたスナップショット機能を有している。これにより、スナップショット取得をスケジューリングして管理することが可能。
        - キャッシュ型ボリューム: 頻繁にアクセスされるデータをローカル環境に保持しながら、S3をプライマリデータストレージとして使用できる。
        - 保管型ボリュームゲートウェイ: プライマリーデータストレージとしてローカルのストレージを使用し、データを非同期にS3にバックアップする。
- Glacier: 中長期に利用頻度が低いファイルを保存する際に用いられる。
- 仮想テープライブラリ: ディスク装置上でテープドライブを疑似的（仮想的）に実行させることで、システムに対して、あたかもテープドライブが接続されているかのように見せかける仕組み。テープ形式のバックアップに利用。

## 5.
- オーバーヘッド: 処理にかかる時間
- ECS:
    - Fargate起動タイプ: バックエンドインフラストラクチャをプロビジョニングおよび管理する必要なく、コンテナ化されたアプリケーションを実行できます。 タスク定義を登録するだけで、Fargateがコンテナを起動します。これにより、コンテナ起動にの面倒なインスタンス設定が必要がなくなる。
    - <img width="575" alt="Screen Shot 2022-08-18 at 21 05 55" src="https://user-images.githubusercontent.com/61643054/185390809-987339ab-5697-4057-8342-33aca219457a.png">
    - <img width="614" alt="Screen Shot 2022-08-18 at 21 05 45" src="https://user-images.githubusercontent.com/61643054/185390863-e06480bb-cf33-46da-9ab0-ce104bde4c62.png">

## 6.
- EC2インスタンスのパブリックIPアドレス: デフォルトではインスタンスの停止後に解放される。ドメイン名にマッピングされていた以前のIPアドレスが無効になりアクセスができなくなる。
- EIP(Elastic IPアドレス): AWS内で使える固定IPアドレス。
    - <img width="563" alt="Screen Shot 2022-08-19 at 7 13 41" src="https://user-images.githubusercontent.com/61643054/185504537-4f1688e3-fe94-4d32-a35b-82cf714a89d1.png">

## 7.
- databse in EC2 Instanceのアクセス制限: プライベートサブネット内にDB用のインスタンスを設置する必要があります。その上で、DBインスタンスからはNATを通じたインターネットへの返信のみを許可する。DBインスタンスへのパッチ適用などの更新などが可能となる。
    - プライベートサブネットに設置されたインスタンスは、パブリックサブネットに設置されたネットワークアドレス変換 (NAT) ゲートウェイまたはNATインスタンスを使用して、インターネット側にトラフィックを返すことができます。これによって、データベースサーバーは、NATを通じてインターネットに接続してソフトウェアアップデートを行うことができますが、インターネットからはデータベースサーバーへの接続を確立できなくなります。
    - <img width="581" alt="Screen Shot 2022-08-19 at 7 27 43" src="https://user-images.githubusercontent.com/61643054/185506216-b6c10b72-862a-4f10-bf06-bfa03e0968d7.png">

## 8.
- Amazon EFS: NFSv4 プロトコルに基づいたファイルアクセス許可モデル、ファイルロック性能および階層ディレクトリ構造を使用して、数千のEC2インスタンスとオンプレミスサーバーからの安全なアクセスを可能にする。
- Amazon FSx: SMB プロトコルに基づいて最大数千台のコンピューティングインスタンスからアクセス可能となるNTFS ファイルシステム。
 
## 9.
- Route53のルーティングポリシー:
    - シンプルルーティングポリシー:  レコードセットにおいて事前に設定された値のみに基づいてDNSクエリに応答するルーティング方式。
    - フェイルオーバールーティングポリシー:  アクティブ/パッシブフェイルオーバーを構成する場合に使用します。
    - 位置情報ルーティングポリシー: ユーザーの位置に基づいてトラフィックをルーティングする場合に使用します。
    - 地理的近接性ルーティングポリシー: リソースの場所に基づいてトラフィックをルーティングし、必要に応じてトラフィックをある場所のリソースから別の場所のリソースに移動する場合に使用します。
    - レイテンシールーティングポリシー: 複数の AWSリージョンにリソースがあり、レイテンシーの最も小さいリージョンにトラフィックをルーティングする場合に使用します。
    - 複数値回答ルーティングポリシー: ランダムに選ばれた最大 8 つの正常なレコードを使用して Route 53 が DNS クエリに応答する場合に使用します。
    - 加重ルーティングポリシー: 指定した比率で複数のリソースにトラフィックをルーティングする場合に使用します。
    - <img width="580" alt="Screen Shot 2022-08-19 at 22 17 47" src="https://user-images.githubusercontent.com/61643054/185630305-e6795c40-196b-40ac-97bd-cf882e53cf9e.png">

## 10.
- パブリックドメイン: 音楽、映画、絵画といった様々なものに関係しており「著作権フリー」を意味する。
- S3 presigned URL: 特定のオブジェクトへのアクセス許可がある場合、付与されたユーザーがその事前署名付き URL を使用して対象オブジェクトにアクセスすることができる。アプリケーションが対象イメージへの期限付きでのアクセス許可を特定のユーザーに付与することが可能。オブジェクトをアップロードするための署名付き URL を受け取った場合、オブジェクトをアップロードすることができるのは、署名付き URL の作成者がそのオブジェクトをアップロードするのに必要な権限を持っている場合のみ。
- EFS: インスタンス間のデータ共有が可能となりますが、インターネットを通じた第三者からのアクセスはできない。

## 11.
- CloudFormation: テンプレートを利用して、AWSリソースを常に一定の設定をJSONファイルなどからプロビジョニングすることができます。 これによりテスト環境などのAWSリソース環境をテンプレート化して、自動化することが可能。
- <img width="560" alt="Screen Shot 2022-08-19 at 23 02 06" src="https://user-images.githubusercontent.com/61643054/185635955-9a4a3a80-2b43-4ee9-940e-2b80f28d3d3f.png">
- CodePipeline: CodeDeployやECSなどのサービスをパイプラインとして設定することで、リリースステップを自動化する仕組み。

## 12.
- データベースのOS設定などを自社が管理する要件:
    - 自社でデータベース環境を管理するためには、EC2インスタンスを使用してDBを構築することで、サーバーのOSなどの基盤となるデータベースインスタンスを完全に制御することが必要。
- <img width="582" alt="Screen Shot 2022-08-20 at 7 32 45" src="https://user-images.githubusercontent.com/61643054/185715551-9b127a61-a9a4-46fc-b42a-981ee7955b23.png">

## 13.
- AWS Direct Connect: データセンターなどのオンプレミス環境からAWSへの専用ネットワーク接続を簡単に確立できる。
    - <img width="634" alt="Screen Shot 2022-08-20 at 7 50 39" src="https://user-images.githubusercontent.com/61643054/185716857-95681137-c9a9-496d-bb70-ae128014b01b.png">

- VPN: インターネット上に仮想の専用線を設定し、特定の人のみが利用できる専用ネットワークです。接続したい拠点（支社）に専用のルーターを設置し、相互通信をおこなうことができる。本社と拠点（支社）1対1の通信だけでなく、拠点（支社）同士の通信も可能。

## 14. 

- RDSのに保存されるデータの暗号化:DDB インスタンス、自動バックアップ、リードレプリカ、スナップショットを暗号化するためには、Amazon RDSのDB インスタンス設定メニューにある暗号化オプションを有効化。

## 15.
- 特定期間に対するAuto Scalingのスケーリング設定:スケーリングを実施する日時を指定して、スケーリングを実行する。

## 16.
- Amazon RDS:
    - Aurora: プライマリーとなるDBクラスターが設置されているリージョンとは異なるリージョンにリードレプリカを作成することができる。この方法を採用すると、障害回復機能を向上させて、読み取り操作をユーザーに近いリージョンに拡張しつつ、複数リージョンでの読み取り処理を改善する。
    - AZ: 起動時にMultiAZオプションをオンにすると自動的に2つのRDSを2つのAZに渡って構築してくれる。
    - マスター(プライマリ):mainでCUD処理をするインスタンス。
    - スレーブ(セカンダリ): マスターの変更を自動的に反映するバックアップ。
    リードレプリカ: マスターからレプリケーションされた読み込み専用のデータベース。リードレプリカを使用する設計だとデータ読み込み（SELECTクエリ）を行う場合はリードレプリカが処理する。
    - <img width="654" alt="Screen Shot 2022-08-20 at 12 22 33" src="https://user-images.githubusercontent.com/61643054/185727194-264ade1f-bcb4-4632-aa7c-4e71e62e4a8e.png">

## 18.
- S3の静的webホスティング:
    - シンプルなwebページの作成に利用できる。
    - ![Screen Shot 2022-08-20 at 14 14 23](https://user-images.githubusercontent.com/61643054/185730064-61375bbf-5bda-4c2a-8866-d10389d3f7f2.png)

## 19.
- EBSボリューム:
    - スループット最適化HDD: ビッグデータ処理用 and 高いスループット処理性能 and コスト最適化
    - プロビジョンドIOPS SSD: ビッグデータ処理用 and 高いスループット処理性能 and 高コスト
    - ![Screen Shot 2022-08-20 at 14 28 00](https://user-images.githubusercontent.com/61643054/185730407-c50e5a36-63fd-4d53-95bf-b110039f3cfa.png)

## 20.
- ISCSI(IP Small Computer System Interface): IP ネットワーク経由で SCSI コマンドを伝送することによりホスト・アクセスをサポートする、データ転送用の IP ベースの規格。HDDやテープ・ドライブ、スキャナなどの周辺装置との入出力に使用されるインターフェイス。
- イニシエータ: SCSI規格により接続された機器に命令を発する装置。

## 21.
- VPCピアリング: ２つのVPC間をネットワーク接続し、トラフィックをプライベートにルーティングする。

## 22.
- AWS OpsWorks: Chef や Puppet のマネージド型インスタンスを利用できるようになる構成管理サービスです。Chef や Puppet は、コードを使用してサーバーの構成を自動化できるようにするためのオートメーションプラットフォームです。OpsWorks では、Chef や Puppet を使用して、Amazon EC2 インスタンスやオンプレミスのコンピューティング環境でのサーバーの設定、デプロイ、管理を自動化できます。OpsWorks には、AWS Opsworks for Chef Automate、AWS OpsWorks for Puppet Enterprise、AWS OpsWorks Stacks の 3 つのバージョンがあります。AWS OpsWorks スタックのサポート範囲は、Amazon EC2 インスタンス、Amazon EBS ボリューム、Elastic IP、Amazon CloudWatch メトリクスなど、アプリケーション志向の AWS リソースに限られています。
- スタック: データベース、アプリケーションなど、全インスタンスの構成を管理する単位。
- レイヤー: どんなパッケージをインストールするかのレシピを指定
- Elastic BeanStalk: AWS上でwebアプリを動かすために必要なサーバを立てたりネットワークの設定をしたりAutoScallingの設定をしたりデータベースの設定をしたりと複雑な初期設定を自動で行ってくれるサービス。

## 24.
- S3のライフサイクル管理:
    - ![Screen Shot 2022-08-21 at 11 26 10](https://user-images.githubusercontent.com/61643054/185772679-b3327550-d892-45f2-b73e-78847ccb9a53.png)

## 25.
- API Gateway: API の作成/公開/保守/モニタリング/保護が行える。
- STS(Security Token Service): AWS リソースへのアクセスをコントロールできる一時的セキュリティ認証情報を持つ、信頼されたユーザーを作成および提供することができる。
- Identity Federation: アプリユーザーがS3などのAWSのリソースに触る必要があるアプリがあります。そのユーザーにはS3へのアクセス権が必要です。でも大量にいるユーザーごとにIAMユーザー作ってアクセスキー配布なんてことはできません。代わりにAmazonやSNS、Googleのユーザーでサインインしてもらい、その時に外部サービスのユーザー情報とIAMロールを紐づけて、一時的にアクセス権限を付与する機能。アクセス期間はSTSで管理。

## 26.
- Amazon SQS(Simple Queue Service): Queueサービスでプロセス処理の分散処理管理に使用される。
- ![Screen Shot 2022-08-21 at 12 14 18](https://user-images.githubusercontent.com/61643054/185773743-5fb87e71-51c2-46f1-a9e2-5e1b16578c44.png)

## 27.
- peak load: 最大需要量。

## 28.
- CloudFront: 低レイテンシーの高速転送により視聴者に安全にコンテンツを配信する高速コンテンツ配信ネットワーク (CDN) サービス。
- ![Screen Shot 2022-08-21 at 15 53 15](https://user-images.githubusercontent.com/61643054/185779439-c2f6b1c7-9706-48b6-ade0-0a4ca2f30980.png)

## 29.
- VM Import/Export: 既存のオンプレミス環境にあるサーバーを利用した仮想マシン群をAWSクラウドにインポートすることができる。
- AWS Migration tools:
    - ![Screen Shot 2022-08-21 at 15 48 54](https://user-images.githubusercontent.com/61643054/185779289-083442d4-605a-47c7-bb8e-d23e419cd456.png)


## 31.
- レプリケーションラグ: リードレプリカは非同期的にレプリケートされる個別のデータベースインスタンスであるため、 レプリケーションデータが遅れることが多く、最新のトランザクションのいくつかが表示できない可能性がある。

## 33.
- DynamoDB: 完全に管理されたNoSQLデータベースサービスであり、シームレスでスケーラビリティを備えた高速かつ予測可能なパフォーマンスを提供する。セッションデータやメタデータなどの管理や高速処理などのKVSデータ処理向き。

## 34.
- S3のNotIpAddress: 所定の IP アドレスまたは範囲以外のすべての IP アドレス

## 35.
- Amazon FSx for Windows: フルマネージド型のネイティブ Microsoft Windows ファイルシステムを提供するAWSサービス。
- AWSのファイルシステム:
    - ![Screen Shot 2022-08-21 at 16 29 29](https://user-images.githubusercontent.com/61643054/185780559-b63d4daa-18f2-4c04-8a37-b91df6604c44.png)

## 36.
- SQSキューによってLambda関数を並列実行することができる。

## 37.
- 強い整合性: 変更中のデータが完了するまで、他の人は古いデータが参照できないことを表す。つまり、他の人がアクセスできたデータは一貫性（整合性）が保たれているということを意味する。
- 結果整合性: 変更中のデータが完了していない間も、他の人は古いデータを参照できることを表す。つまり、他の人からすると、「参照しているデータが古い可能性がある。古いデータを参照してしまうことがある。」ということを意味する。
- S3は強い整合性モデルを採用。

## 39.
- Snowball Edge: AWSから借りてくる機器を利用します。データ量が多い場合には便利だが、短時間の少量のデータ移行には向いていない。また、これはAWSへの申請が不可欠。
- Direct Connect: 物理的にAWS側と専用線接続の設定が必要です。これはAWSへの申請が必要不可欠。
- AWS サイト間 VPN (Site-to-Site VPN) 接続: オンプレミスオフィス拠点とAWSとの接続。

## 41.
- Redshift: テーブルの行をコンピューティングノードに分配するので、データを並列処理できます。 各テーブルに対して適切な分散キーを選択することにより、データの分配を最適化して、ワークロードを分散し、ノード間のデータの移動を最小限にできます。

## 42.
- インスタンス間のトラフィックを制御するためには、セキュリティグループを利用することが適切。セキュリティグループによりEC2インスタンスのIPアドレスを指定することで特定のEC2インスタンスからのトラフィックを制御することができる。

## 43.
- S3にCloudFrontによるコンテンツ配信を構成 + AWS WAFを利用したReferer制限:直接にURLリンクを参照することを制限することができる。
- AWS WAF: CloudFront に転送される HTTP および HTTPS リクエストをモニタリングして、コンテンツへのアクセスを制御可能にするウェブアプリケーションファイアウォール。
- Referer: 参照元のこと。

## 44.
- EBSスナップショット: Amazon EBSボリューム上のデータをAmazon S3にバックアップできる。スナップショットは増分バックアップ。つまり、最初のスナップショット以降は、前回から変更されたデバイス上のブロックのみが保存される。 これにより、スナップショットの作成に必要な時間が最小限になり、ストレージコストを節約できる。
    - ![Screen Shot 2022-08-21 at 18 18 31](https://user-images.githubusercontent.com/61643054/185784353-2fcd9939-3462-41e0-a945-291834a9b2f1.png)
- EC2のインスタンスストア: 一時的なデータ保存に利用。

## 45.
- Amazon Aurora: 標準的なMySQLデータベースと比べて最大で 5 倍、標準的な PostgreSQL データベースと比べて最大で 3 倍高速です。また、商用データベースと同等のセキュリティ、可用性、信頼性を、10 分の 1 のコストで実現します。
    - ![Screen Shot 2022-08-21 at 18 24 02](https://user-images.githubusercontent.com/61643054/185784527-b7cbd2a2-9fa3-4a1a-a8d6-a30472d5d606.png)
    - ![Screen Shot 2022-08-21 at 18 24 08](https://user-images.githubusercontent.com/61643054/185784534-14a2e65b-64db-4456-94ca-6d670b58aed5.png)
  
  ## 46.
  - ステートレス: システムが現在の状態を表すデータなどを保持せず、入力の内容によってのみ出力が決定される方式。同じ入力に対する出力は常に同じになる。

  ## 47.
  - Route53のルーティングポリシー:
    - フェイルオーバールーティング: アクティブ - パッシブフェールオーバー構成を作成できます。 同じ名前と種類のプライマリとセカンダリのフェールオーバーレコードを作成して、それぞれにヘルスチェックを関連付けてリージョン間のフェールオーバー構成を実現することができる。
    - ![Screen Shot 2022-08-21 at 18 33 12](https://user-images.githubusercontent.com/61643054/185784841-9ac8f599-f7c6-4615-a793-e0aed1e31454.png)
    - 加重ルーティング: 指定した比率で複数のリソースにトラフィックをルーティングすること。
    - シンプルルーティング: ドメインで特定の機能を実行する単一のリソースがある場合に使用。たとえば、example.com ウェブサイトにコンテンツを提供する 1 つのウェブサーバーなど。
    - マルチバリュールーティング: ランダムに選ばれた最大 8 つの正常なレコードを使用して Route 53 が DNS クエリに応答する場合に使用。

## 49.
- Auto Scaling: インスタンスへのアクセスが高まった時に、新しいインスタンスを増設してパフォーマンスを向上させる機能。

## 50.
- Amazon S3 Glacier データ取得タイプ:
    - 迅速: 1~5分以内の取り出し。
    - プロビジョニングキャパシティ: 迅速取り出しの取得容量を必要な時に利用できることを保証する仕組み。
    - 標準: 3~5時間での取り出し。
    - 大容量: 大量のデータを5~12時間で取り出し。

## 51.
- DynamoDB: 小規模データ + 高速処理 + NoSQL
    -  ![Screen Shot 2022-08-22 at 22 05 06](https://user-images.githubusercontent.com/61643054/185928314-2232571b-e5ea-4615-be68-e8a69565a1d8.png)

## 52.
- Route53のALIASレコード: DNS機能に対するRoute 53固有の拡張機能を提供する。 IPアドレスまたはドメイン名の代わりに、ALIASレコードにはCloudFront、Elastic Beanstalk環境、ELB 、静的Webサイトとして設定されているAmazon S3バケットへのポインタ、または 同じホストゾーン内の別のRoute 53レコードを設定することができる。
    - ![Screen Shot 2022-08-22 at 22 16 14](https://user-images.githubusercontent.com/61643054/185930340-4e3baa6a-e680-40ca-8011-f5eabe048c92.png)
- レコードの種類: 
    - Aレコード: IPv4アドレスをドメインに関連付けるために利用。
    - NSレコード: あるゾーンに対する権威サーバーを指定するためのレコード。
    - CNAMEレコード: ドメインに対して別のドメインを設定する際に利用。
    - SOA: ドメインのDNSサーバー/ドメイン管理者のメールアドレス/シリアル番号などを保持してゾーン転送時に情報が更新されているかの判断に利用する。

## 55.
- Amazon SQS: AWSリソースの水平方向のスケーリングに役立つ。SQSキューによって複数EC2インスタンスによる並行処理が可能となり、負荷分散や処理プロセスの最適化を達成することができる。

## 56.
- AWS Elemental MediaConvert: 動画フォーマットを変換するサービス。
- トランスコード: あるデータ形式で圧縮・符号化された動画データなどを、同じ形式で画素数などの仕様が異なるデータに符号化しなおすこと。
- backlog: 未着手のまま放置されているタスク。
- インスタンス種類:
    - ![Screen Shot 2022-08-22 at 22 31 35](https://user-images.githubusercontent.com/61643054/185933551-36432fcf-0de3-4227-8aae-4c036c5e6c12.png)

## 57.
- VPCエンドポイント: PrivateLinkによってサポートされているAWSサービスおよびVPCエンドポイント関連のサービスに接続することができる。

## 59.
- EFS: 複数のEC2インスタンスが同時にEFSのファイルシステムにアクセスしてデータを共有することができます。EFS はファイルシステムインターフェイスとファイルシステムのアクセスセマンティクス (強い整合性やファイルのロックなど) が用意されており、最大数千の Amazon EC2 インスタンスからの同時アクセスが可能。
- EBS: 基本的には単一のEC２インスタンスのみにアタッチ。

## 60.
- DynamoDBへの書き込み処理: 書き込み操作がどのような状況下でも失われないようにするために、書き込みリクエストが適切にデータベースに送信される仕組みを構築することが求められています。その際は、「保留中のデータベースへの書き込みリクエスト」を、SQSキューに格納して非同期に処理することがで解決することが可能です。DynamoDBのデータ処理実行にはLambdaと連携しつつ、キューによるDB処理を実行することが可能です。メッセージをキューに格納することによって、書き込み処理のキューメッセージが喪失しないように設定することができます。そのうえで、Lambda関数がSQSキューメッセージに基づいて書き込み処理を実行します。これにより、リクエストメッセージが失われることはないため、書き込み処理がどのような状況下でも失われないようにする。

## 61.
- SQSのキュー一覧:
    - ![Screen Shot 2022-08-22 at 22 56 49](https://user-images.githubusercontent.com/61643054/185938835-63840024-48d8-44dd-a868-8a149a6bd937.png)

## 62.
- ゲートウェイ一覧:
    - ![Screen Shot 2022-08-22 at 23 00 45](https://user-images.githubusercontent.com/61643054/185939807-37c53a91-b27f-4177-a47d-847b1bfbb3b3.png)

## 63.
- S3のアクセス権限: IAMロールではなくIAMユーザーによって行う。
- S3 MFA Delete: バージョニング機能のオプションとして、オブジェクト削除時に、MFA認証を必須にできる。

## 64.
- SQS:
    - メッセージ重複排除IDを利用することで重複メッセージを防ぐことが可能。特定のメッセージ重複排除 ID を持つメッセージが正常に送信された場合に、5分間の重複排除間隔の間、同じ ID を持つ送信メッセージは配信されない。
    - ![Screen Shot 2022-08-22 at 23 07 46](https://user-images.githubusercontent.com/61643054/185941510-91579275-5f26-452a-83f3-b99542636b25.png)

## 65.
- API Gateway:
    - ![Screen Shot 2022-08-22 at 23 12 11](https://user-images.githubusercontent.com/61643054/185942397-36e443ed-0278-4a5e-b953-26f2aa44842d.png)
- Lambdaの関数URL: API Gatewayを省略したパブリックに公開するAPIや、簡易な認証実装でも差し支えの無いAPIを AWSLambdaで実装することができるサービス。 
