# udemy SAA模擬試験 4
## 1.
- リザーブドインスタンス（コンバーティブル）: インスタンスファミリー／OS ／テナンシー／支払オプショ ンの変更が可能。

## 6.
- Amazon SQS: SQSキューに保存できるメッセージの数は無制限。

## 7.
- S3の暗号化情報なしの PUT リクエストを拒否するバケットポリシー: 該当PUT リクエストは拒否する。

- PUTリクエストヘッダーに暗号化情報が含まれている場合、Amazon S3 はPUTリクエストの暗号化情報を使用してオブジェクトを Amazon S3 に保存する前に暗号化することが必要となります。

## 8.
- RDSプロキシ: Lambdaを利用してRDSのデータベースに接続する際は、RDSプロキシをエンドポイントの代わりに利用して、接続することでコネクションを効率的に実行することができる。
- ingress: inbound
- egress: outbound

## 9.
- RDSオートスケーリング: データ容量が不足した際に容量を自動でスケーリングする機能です。
- Aurora Serverless: 処理負荷が一定ではないユースケースに対して、高性能なパフォーマンスが可能なリレーショナルデータベース。

## 10.
- Amazon EMR: Apache HadoopやApache SparkなどのビッグデータフレームワークをAWS上で実行して大量のデータを処理および分析プロセスを構築できるプラットフォーム。

## 13.
- ポリシーの種類:![Screen Shot 2022-08-25 at 21 31 20](https://user-images.githubusercontent.com/61643054/186665458-a6a8703d-0f3c-4e03-882c-6aa2a10d8371.png)

## 15.
- EC2の利用コスト:![Screen Shot 2022-08-25 at 21 39 54](https://user-images.githubusercontent.com/61643054/186667022-f134f903-9d14-47b8-b677-fc69ecf10b72.png)

## 16.
- VPCエンドポイント: PrivateLink を使用する AWS サービスや VPC エンドポイントサービスにVPC をプライベートに接続する機能。
    - ゲートウェイ型: サポートされる AWS のサービス(S3, DynamoDB)を宛先とするトラフィックをVPC内外で接続する際に使用
    - プライベートリンク型: 対象サービスを宛先とするトラフィックのエントリポイントとなるプライベート IP アドレスを持つ Elastic Network Interface です。

## 17.
- DynamoDBの強い整合性モデル: 読み込みの前に適切な応答を受け取ったすべての書き込みが反映されている。

## 18.
- Kinesis Data Stream: データが欠落しないこと、耐久性があること、およびデータを到着順にストリーミングする。一連のデータレコードを持つシャードのセットであり、各データレコードにはKinesis Data Streamsによって割り当てられたシーケンス番号があるため、 メッセージが失われず、重複されず、到着と同じ順序で伝送することが可能です。
- AWS Date Pipeline: 主にクラウドベースのデータワークフローサービスとして使用され、異なるAWSサービスとオンプレミスデータソース間でデータを処理および移動するのに利用する。

## 20.
- Route53のマルチバリュールーティング: DNS クエリに対する応答として複数の値 (ウェブサーバーの IP アドレスなど) を返すように設定できます。複数値回答ルーティングは各リソースが正常かどうかも確認するため、Route 53 は正常なリソースに値のみを返すことができます。したがって、IPアドレス単位での正常・非正常を判断してルーティングすることができます。

## 21.
- エッジロケーション: 低レイテンシーを達成するためのキャッシュコンテンツを配信するための地理的ロケーション

## 23.
- オリジンアクセスアイデンティティ (OAI): S3バケットへのアクセスをCloudFrontからのリクエストに絞るための仕組み。OAIと呼ばれる特別なユーザーを作成し、そのユーザーに対して限定してアクセスを許可。
- CloudFrontのReferer制限: CloudFrontが直接実施することはできず、WAFを利用することが必要となる制御。

## 24.
- Amazon S3 ウェブサイトエンドポイント:
    - s3-website ダッシュ (-) リージョン ‐ http://bucket-name.s3-website-Region.amazonaws.com
    - s3-website ドット (.) リージョン ‐http://bucket-name.s3-website.Region.amazonaws.com

## 25.
- AWS X-Ray: Amazon API Gatewayに使用してトレース(ユーザー)データを収集することが可能

## 26.
- EBS:
    - アベイラビリティーゾーンでEBSボリュームを作成すると、そのゾーン内でのみ自動的に複製が生成されますが、別のAWSリージョンには複製されません。
    - EBSボリュームは同じアベイラビリティーゾーン内のEC2インスタンスにしかアタッチできないため、正しくありません。

## 27.
- IAMデータベース認証: EC２インスタンスなどはIAM ユーザーまたはIAMロールの認証情報と認証トークンを使用して、RDS DB インスタンスまたはクラスターに接続することができる。

## 28.
- AWS Organizations: 複数のAWSアカウントに対してポリシーを設定してアクセス権限を管理。複数アカウントをまとめたグループを作成し、アカウント作成を自動化し、それらのグループにサービスコントロールポリシー（SCP）を適用することが可能。

## 29.
- S3バケットで利用可能なイベント通知先: SQS, Lambda
- ![Screen Shot 2022-08-25 at 22 57 08](https://user-images.githubusercontent.com/61643054/186684496-18024cae-d4cc-4dda-972d-e3850ea8e35c.png)

## 30.
- ハードウェア専有インスタンス: 専用HWのVPCで実行されるEC2インスタンス。同じAWSアカウントのインスタンスとはHWを共有する可能性が亜る。
- Delicated Host: EC2インスタンスを完全にユーザー専用として利用できる物理サーバー.

## 36.
- EC2インスタンスにアタッチ後に、このEBSボリュームを使用するために必要な設定: ボリュームにファイルシステムを作成することが必要。

## 38.
- Lambdaレイヤー: 複数のLambda関数でライブラリを共有できる仕組みであり、一定の機能をLayerにまとめて、構成することができます。これまでは同じライブラリを利用する関数が複数あった場合、全ての関数に対してライブラリを含めてパッケージングすることが必要でした。それを、ライブラリをLayerとしてアップロードしておくことで、個々の関数は共通のLayerを使用することができます。
    - ![Screen Shot 2022-08-26 at 5 54 50](https://user-images.githubusercontent.com/61643054/186767165-2cbee4dd-9157-49ac-994d-18415f3ae708.png)
- Lambda@Edge: cloudfrontのエッジロケーションからコードを実行するLambda関数

## 39.
- Amazonリソースネーム（ARN): AWSリソースを一意に識別します。 IAMポリシー、Amazon Relational Database Service（Amazon RDS）タグ、APIコールなど、AWS全体でリソースを明確に指定する必要がある際にはARNが必要。

## 44.
- ELBの接続方式においての暗号化:SSL / TLSプロトコルを使用して通信を暗号化できます。この機能により、ロードバランサーとHTTPSセッションを開始するクライアント間接続、およびロードバランサーとEC2インスタンス間接続のトラフィック暗号化が有効になる。

## 46.
- Amazon FSx for Windows ファイルサーバー: Access Control Lists (ACLs)、シャドウコピー、ユーザークォータなど、Windows ネイティブファイルシステムの機能をサポートしているストレージタイプ。

## 47.
- Redshift Spectrum: ![Screen Shot 2022-08-26 at 6 23 56](https://user-images.githubusercontent.com/61643054/186771688-705d9458-ce34-46bd-bcf5-00f875d59031.png)

## 48.
- SQSデフォルトのデータ保持期間: 4日間
- SQSデッドレターキュー: 正常に処理 (消費) できないメッセージの送信先として他の (ソース) キューが使用できるキュー。

## 50.
- AWS Directory Service AD Connector: ディレクトリリクエストをオンプレミスの Microsoft Active Directory へリダイレクトするのに使用するディレクトリゲートウェイ。つまり、オンプレミスのActive DirectoryとAWSを繋ぐサービス。
    - ![Screen Shot 2022-08-26 at 6 39 34](https://user-images.githubusercontent.com/61643054/186773906-14f69465-3f2b-4fd2-8a30-8c4532076bd4.png)
- AD 種類:
    - ![Screen Shot 2022-08-26 at 6 39 44](https://user-images.githubusercontent.com/61643054/186773925-efc8df85-c3dc-4a21-abda-0b5c0f11f610.png)

## 52.
- RedshiftのWLM(Work Load Management): Redshiftのクエリ処理に対して割り当てるRedshiftのリソースを指定する機能。クエリ処理をキューとして実行順序を定義することが可能となります。事前にWLMとしてキューを用意しておき、キューに対して割り当てるメモリの割合や並列度、タイムアウトの時間を指定することでクエリに対するリソース配分を決定したり、長時間実行されるクエリを止めてクラスタリソースを無駄遣いしないようにすることができます。
- ![Screen Shot 2022-08-26 at 6 45 04](https://user-images.githubusercontent.com/61643054/186774692-373a20a8-fa49-4812-9e33-f9ccc611f3a0.png)

## 53.
- Amazon ElastiCache: クラウド内のインメモリデータストアまたはキャッシュのデプロイ、運用、および拡張を容易にするWebサービスです。 このサービスは、低速のディスクベースのデータベースに完全に依存するのではなく、高速の管理されたインメモリデータストアから情報を取得できるようにすることで、Webアプリケーションのパフォーマンスを向上させます。ランキングやレコメンデーションの実装に使う。
    - ![Screen Shot 2022-08-26 at 6 48 12](https://user-images.githubusercontent.com/61643054/186775016-9edbc817-dba1-498d-968e-5df7baca22aa.png)

## 54.
- Auto Scailing group: ELBで起動しない場合は、Cloudwatchのメトリクス監視からアラームを出す。

## 56.
- SCPのデフォルト: FullAWSAccess権限が付与されている。

## 57.
- AWS WAF: アプリケーションに対する一般的なウェブエクスプロイトからウェブアプリケーションを保護するウェブアプリケーションファイアウォール

## 58.
- ネットワークACL: サブネットとVPCのプロトコル通信。
- パブリックIPアドレス: インスタンス起動時に自動的に割り当てられる動的なグローバルIPアドレス
- プライベートIPアドレス: インスタンス作成時に割り当てられる静的なIPアドレス
- プレイスメントグループ: EC2インスタンス間の通信を高速化するためのグループです。このグループ内では同じAZ内に配置されるため、互いのインスタンス間で通信が高速となります。

## 59.
- Elastic Network Interface（ENI）: 仮想ネットワークカードを表すVPCの論理ネットワークコンポーネントです。 以下の方法でネットワークインターフェースをEC2インスタンスにアタッチすることができます。
    - 実行中のアタッチ（ホットアタッチ）
    - 停止中のアタッチ（ウォームアタッチ）、数分で起動。
    - インスタンス起動時のアタッチ（コールドアタッチ）

## 60.
- Route53のフェイルオーバールーティング: ロードエラーが発生した場合にセカンダリーサーバーへのDNSフェイルオーバーを実施できます。
- Route53: ユーザのリクエストをEC2やELB、S3などの各サービスへ接続をおこないます。接続されているかの確認が出来ればよいため、ヘルスチェックもELBほど細かく設定する必要がないと思われます。しかし、Route53はフェイルオーバー処理が可能なため、接続が出来なくなったら別のEC2やS3などに接続されるということが可能。
- CloudFrontディストリビューション: フェールオーバーオプションが提供されています。高可用性が必要なシナリオでは、オリジンフェイルオーバーを使用するように CloudFront を設定できます。開始するには、プライマリとセカンダリの 2 つのオリジンを持つオリジングループを作成します。プライマリオリジンが使用できない場合、または障害を示す特定の HTTP レスポンスステータスコードを返す場合、CloudFront は自動的にセカンダリオリジンに切り替わります。
- フェイルオーバー: 稼働中のシステムで問題が生じてシステムやサーバーが停止してしまった際に、自動的に待機システムに切り替える仕組み。
- ELB: 処理負荷を分散するだけで、フェールオーバーはしない

## 61.
- CloudFrontディストリビューション: カスタムオリジン設定としてオンプレミスロードバランサーを設定することが可能。CloudFront はオリジンサーバーがオンプレミスなどのAWS 環境ではない場合でも利用できるため、様々な環境でサイトフェイルオーバーやDDoS 攻撃からの保護機能により、ウェブサイトの可用性向上が実現可能
- AutoScailingはELBとセットで構成することになる

## 62.
- VPCにおいてネットワークACL: ルールは低い値から高い値にかけて評価され、一致する許可/拒否ルールが設定されるとすぐに実行されます。