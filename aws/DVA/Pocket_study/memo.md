# AWS DVA-c02 ポケットスタディ

## section2 開発

- SDK や CLI がどの認証情報を使うかの優先順位:

  - 1. コードのオプションやパラメータで指定されたアクセスキー情報
  - 2. 環境変数
  - 3. aws/credentials
  - 4. ec2 の IAM Role

- EBS: OS やソフトフェアなどを起動するために使用
- EFS: 増減するデータの保存先
- こうすることで EC2 と EBS を使い捨てにでき設計にスケーラビリティを持たせることができる。

- AWS Storage Gateway:オンプレミスに仮想マシンをデプロイして保存したデータが自動的に S3 や EBS を使用するようにする。
  - ファイルゲートウェイ: NFS/SMB プロトコルで接続できる。
  - ボリュームゲートウェイ: iSCSI プロトコルで接続できる。
  - テープゲートウェイ: 仮想テープライブラリとして接続できる。
- <img width="836" alt="image" src="https://github.com/yoshikikasama/network-and-server/assets/61643054/dddcac6a-c639-4dd9-b403-33877eaec94f">

- CloudFront: エッジロケーションを使用してキャッシュコンテンツを配信。
- CloudFront Behavior: オリジンのファイルパスに応じてリダイレクト先を S3 Bucket または ALB にするかを設定できる。

- S3 の CORS(Cross Origin Resource Sharing):
  - Webfont Bucket にウェブフォントファイル
  - html-css-sample Bucket に CSS ファイル
  - CSS ファイルからウェブフォントファイルを参照:
  - CSS 例：@font-face{
    font-family: "samplefont";
    src:url("https//webfont.s3.amazonaws.com/sample.woff2")
    format("woff2");
    }
  - CORS により他の許可されたドメインからのリクエストを許可できるので、webfont Bucket で以下の設定を行う
  - bucket policy 例:
  - [
    {
    "AllowedHeaders":["*"],
    "AllowedMethods":["GET"],
    "AllowedOrigins":["https//html-css-sample.s3.amazonaws.com"]
    }
    ]
- ElastiCache:

  - メモリ内にデータを格納するインメモリデータストア
  - 複数ノードへのデータ分散によるスケーラビリティ: 複数 AZ に配置できる。
  - Memchached: マルチスレッドをサポートしているので水平的なスケールアウトをしやすい。
  - Redis: AZ を跨いてリードレプリカを作成し、障害時にフェイルオーバーできる。永続的にデータ保存可能。
  - ![image](https://github.com/yoshikikasama/network-and-server/assets/61643054/4bab373a-3e21-4c4c-9ae9-8658889d3027)

- Amazon DynamoDB:

  - パーティション(データの保存先)を分散させることで水平スケーリングを可能とするため、多くのリクエストが発生するアプリケーションに適している。
  - 例：game, mobile, EC site, ユーザー数の増減が発生するアプリケーションに向いている。
  - 実際に保存した容量のストレージ料金。
  - Read Capacity Unit(RCU):最大 4KB の項目を 1 秒間に 2 回の結果整合性で読み込むか、1 秒間に一回の強力な整合性で読み込むか。
    Write Capacity Unit (WCU): 最大 1KB の項目を 1 秒間に 1 回書き込む。
  - primary key が一つ目のインデックス。
  - ローカルセカンダリインデックス: table 作成時に作成。ソートキーを追加。
  - グローバルセカンダリインデックス: primary key とは無関係な partition key でクエリ検索できる。あとから作成可能。
  - DynamoDB ストリーム: 項目の更新情報がストリームに格納される。更新情報を lambda に渡して後続処理可能。
  - DynamoDB Global table: 他の region に table レプリカを作成可能。
  - DynamoDB Accelerator(DAX): インメモリキャッシュを使って DynamoDB table への数ミリ秒のレイテンシーを数秒に短縮できる。

- 強整合性 の場合、データの更新の際にデータベースをロックすることによってデータの一貫性（Consistency）を担保するが、ロックされる期間が長いほどその間のデータベース・アクセスがブロックされ、可用性（Availability）を犠牲にすることになる。
- 結果整合性 はデータの更新でデータベースがロックされることはないため、可用性とスケーラビリティを維持することができる。その代わりノード間でのデータの一貫性はデータ複製にかかる時間に依存することになるため、必ずしも担保されない。

- Lambda:
  - CPU 性能とネットワーク帯域はメモリサイズに依存する。
