# memo

[DevOps on AWS 大全](https://qiita.com/tech4anyone/items/b06f88035d27c6ef13b2)

## AWS における CI/CD のテクノロジースタック

- CI(Continuous Integration): ソースコードを書いたら、すぐにテストし、出力結果をもとにすぐに修正する、というサイクルを高速回転させること
- CD(Continuous Delivery): 自動で頻繁に本番環境へリリースを行うこと
- ビルド: ソースコードから実行可能なソフトウェアアプリケーションを生成するプロセスのことを指します。このプロセスには、コードのコンパイル、リンク、そしてパッケージングなどが含まれます。具体的には、プログラミング言語で書かれたテキスト形式のコードをコンピュータが理解できるバイナリ形式（実行ファイルやライブラリなど）に変換する作業です。

  - 毎回ビルドが必要な理由は、ソフトウェア開発プロセスにおいて、変更が常に行われるためです。以下に、ビルドを繰り返し行う理由をいくつか挙げて説明します。
  - 1. コードの更新: ソフトウェアは進化し続けるもので、新しい機能の追加、バグの修正、性能の改善などが頻繁に行われます。これらの変更がソースコードに反映されるたびに、それを実行可能な形式に変換する新しいビルドが必要になります。
  - 2. エラーの検出: ビルドプロセスはコンパイルエラーやその他の問題を検出する機会も提供します。開発者がコードに変更を加えるたびにビルドを行うことで、新たに導入された問題を早期に発見し、修正することができます。
  - 3. テストの自動化: ビルドプロセスの一環として、自動テストが実行されることが多いです。これにより、コードの変更が既存の機能に悪影響を与えていないかを確認できます。テストに合格するたびに新しいビルドが生成され、品質の維持が確保されます。
  - 4. 依存関係の管理: ソフトウェアプロジェクトには多くの外部ライブラリやモジュールが含まれることがあります。これらの依存関係が更新された場合、互換性を保つために新しいビルドが必要になることがあります。
  - 5. 継続的インテグレーション: 継続的インテグレーション（CI）は、チームメンバーが頻繁にコード変更を共有し、自動でビルドとテストを実行するプラクティスです。これにより、開発プロセスがスムーズに進行し、エラーが早期に検出されます。
  - 6. プラットフォームやデバイス間の一貫性: 異なるプラットフォームやデバイスでアプリケーションを実行する場合、各環境に適合するためには異なるビルドが必要になることがあります。

- Python のビルド: 他のコンパイル言語のそれとは少し異なる意味を持つことがあります。Python は基本的にインタープリタ言語であり、ソースコードは実行時にインタープリタによって直接解釈されます。しかし、Python プロジェクトをビルドするという文脈では、通常以下のようなプロセスやステップが含まれます：

  - 1. 依存関係のインストール: プロジェクトが依存する外部ライブラリやパッケージをインストールします。これは通常、pip を使用して requirements.txt や Pipfile にリストされたパッケージをインストールすることで行われます。
  - 2. 環境の設定: プロジェクト専用の仮想環境を設定することで、プロジェクトの依存関係が他のプロジェクトやシステム全体の Python 環境と衝突することを防ぎます。venv や conda といったツールが使用されます。
  - 3. コンパイル（オプショナル）: Python では、実行前に.py ファイルをバイトコード（.pyc ファイル）にコンパイルすることがあります。これは Python インタープリタが自動的に行うため、開発者が意識的にビルドプロセスに含めることは少ないですが、パフォーマンスの最適化のために事前に行うことも可能です。
  - 4. 静的コード解析: コードのスタイルチェックや潜在的なバグを検出するために、flake8 や pylint などのツールを使用して静的コード解析を行います。
  - 5. 自動テストの実行: ユニットテストや統合テストを自動で実行して、コード変更が既存の機能に悪影響を与えていないことを確認します。pytest や unittest がよく使われます。
  - 6. ビルドスクリプトの実行: 特定のビルドスクリプトや Makefile を使用して、上記のプロセスを自動化します。これにより、開発者や CI/CD システムが一連のコマンドを実行するだけでビルドプロセスを完了できるようになります。
  - 7. パッケージング: アプリケーションをデプロイや配布可能な形式（例えば、ホイールファイル.whl やソース配布）にパッケージングします。これは setuptools を用いた setup.py スクリプトや pipenv を使用して行われることが多いです。
  - これらのステップを通じて、Python プロジェクトが「ビルド」され、テスト、デプロイ、または配布のために準備されます。これにより、開発の一貫性を保ちつつ、エラーの早期発見やデプロイの自動化が可能となります。パッケージングが完了すると、その成果物（実行可能ファイル、バイナリ、ホイールファイル、Docker コンテナなど）を実際にユーザーやクライアントがアクセスできる環境にデプロイする準備を行います。

- インタープリタ: プログラムを一行ずつ読み込み、解析し、実行するプログラムまたは環境のことを指します。コンパイラとは異なり、インタープリタはプログラム全体を一度に機械語に変換するのではなく、各命令を逐次的に実行します。これにより、プログラムの開発とテストが迅速に行える利点がありますが、実行速度はコンパイルされたコードに比べて遅くなる場合があります。

  - インタープリタの特徴:
    - 逐次実行: ソースコードを一行ずつ読み込み、その都度実行します。これにより、開発中にコードの変更がすぐにテストできるという利点があります。
    - プラットフォームの独立性: インタープリタ自体が特定のプラットフォームに依存する場合を除き、ソースコードは様々なシステム上でインタープリタを通じて直接実行可能です。
    - デバッグが容易: コードのどの部分が現在実行されているかを容易に追跡できるため、デバッグがしやすいです。

- アプリケーションのデプロイ: web アプリなどのデプロイ
- リソースのプロビジョニング: AWS リソースの構築
- AWS におけるパイプラインのベストプラクティスパターン:

  - 大前提として、デプロイとプロビジョニングのパイプラインは分けることをおすすめします。
  - やろうと思えば、パイプラインを長く続けてプロビジョニングにした後にデプロイすることは可能です。
  - しかし、たいていの場合はプロビジョニングが必要な頻度とデプロイが必要な頻度は一致しません。
  - 例えば、アプリケーションを更新するたびに CloudFormation で定義した Lambda のパラメータを変更したりすることはあまり多くありません。
  - そのため、デプロイとプロビジョニングは別のパイプラインとすることが推奨です。

- AWS CodeArtifact:

  - AWS CodeArtifact はアーティファクト管理ツールです。
  - アーティファクト管理とは相互に依存するソフトウェアパッケージの依存関係を管理することです。
  - そして、代表的なパブリックのアーティファクトリポジトリには Maven や npm などが存在します。
  - AWS CodeArtifact はこれらのリポジトリと連携して独自のリポジトリを作ることができるサービスです。
  - 企業で開発を行っていると、承認されたパッケージのみ利用させたい、という場面が多々出てきます。その時に AWS CodeArtifact を利用すると、簡単にこの要件を実現できます。

- Amazon CodeGuru: ソースコードのレビューとアプリケーションパフォーマンスに関する推奨を行ってくれる機械学習ベースのサービスです。
- EC2 Image Builder:

  - 仮想マシンイメージまたはコンテナイメージを自動で作成するサービスです。
  - 名前が誤解を与えがちですが、オンプレミスの仮想マシンイメージやコンテナイメージも作成可能です。
  - EC2 Image Builder を含むパイプラインを組むことで、AMI の自動再作成だけではなく、EC2 の再作成まで一気通貫で行うことが可能になります。

- AWS Lambda のバージョンとエイリアス:

  - Lambda 関数のバージョンで 1 つの Lambda 関数に対して複数のバージョンを発行することが可能です。
  - エイリアスごとに異なる Lambda 関数のバージョンを指定できるため、開発環境と本番環境で異なるバージョンを選択することが可能です。
  - <img width="795" alt="image" src="https://github.com/yoshikikasama/system/assets/61643054/50075baa-1df9-467c-bb18-4e02ed725f62">
  - 上図では開発向けの dev エイリアスと本番向けの prod エイリアスを用意しています。そして、開発向けの dev エイリアスは$LATEST を利用して、常に最新バージョンの Lambda が起動するように設定しています。一方、本番向けは V1 と V2 でトラフィック分割をしています。これは一気に新しいバージョンに切り替えることによる思わぬトラブルを避けるためです。

- API Gateway:

  - Edge-Optimized は、クライアントに最も近い AWS Edge Location で API をホストし、低レイテンシーでアクセスできます。デフォルト設定
  - Regional は特定の AWS リージョン内に API を展開し、そのリージョン内のすべてのエンドユーザーに向けて高パフォーマンスな接続を提供します。
  - Private は VPC 内で API をホストし、パブリックインターネットを経由せずにプライベートネットワーク内でアクセス可能です。
  - API Gateway はカナリアリリースも可能です。カナリアリリースをするときには既存のステージに結び付く Canary と呼ばれる特別なステージを作成してリリースします。あるステージに対して Canary ステージを定義するとデプロイ操作がいったん、Canary のみに行われます。その後、トラフィックをシフトしてメインにもデプロイを反映する昇格か変更を切り戻す削除化を選ぶことができます。

- Amazon Kinesis Data Streams: リアルタイムで大量のデータを処理し、ストリーム処理アプリケーションを構築するためのサービスです。データはシャードと呼ばれるパーティションに分割され、各シャードで並行処理が可能です。これにより、高いスループットと低いレイテンシでデータを受け取り、処理することができます。IoT センサーデータ、ログ、トランザクションデータなど、様々なデータソースからのストリームデータを受信し、リアルタイムで分析・処理する際に効果的です。

  - ![image](https://github.com/yoshikikasama/system/assets/61643054/70aa2230-4c60-4d45-8718-11e69cabe847)
  - スケーラビリティはシャード数の増減で実現します。そして、シャード数はキャパシティモードと呼ばれる設定に基づいて管理されます。なお、Amazon Kinesis Data Streams では、オンデマンドモードとプロビジョニングモードの 2 つのキャパシティモードが提供されています。

- Amazon Kinesis Data Firehose: データストリームからのデータをシンプルかつスケーラブルに受け取り、処理・保存するサービスです。

  - ![image](https://github.com/yoshikikasama/system/assets/61643054/8fc5730d-0fc2-455e-b5b1-038905bcd1b0)
  - データを指定した Amazon S3、Amazon Redshift、Amazon OpenSearch などへ直接転送でき、データの変換や加工も柔軟に設定可能です。
  - Kinesis Data Firehose は管理が簡単で、サーバーレスのアーキテクチャを提供するため、開発者はデータの取り込みや保存に集中できます。
  - Kinesis Data Stream との大きな違いは 2 つ、1)ストリームではなくバッチで書き込む点、2)データ変換処理を実装できる点です。
  - Kinesis Data Streams と比較してマネージドであることを売りにしています。そのため、スケーリングについても考慮する点はなくデータの転送が急増した場合でも、自動的にスケールアウトします。自動スケーリングにより、運用者は手動でのスケールアップやダウンの必要性から解放され、効率的なデータ処理が実現されます。

- Amazon Kinesis Data Analytics:

  - リアルタイムデータストリーム上での SQL クエリを可能にするサービスです。
  - ![image](https://github.com/yoshikikasama/system/assets/61643054/e10b581e-84c8-4d5b-a639-0345c0be9402)
  - Kinesis Data Stream や Kinesis Data Firehose と比較してデータ分析色が強く、直接データを受ける口というよりは、ほか 2 つの Kinesis が受けたものに対して SQL クエリを発行するイメージです。
  - Kinesis Data Firehose 同様、処理するデータ量やクエリの複雑さに応じて自動的にスケーリングされます。

- Amazon Kinesis シリーズの比較:
  - Kinesis Data Streams: 高いスループットが必要で、リアルタイムデータ処理を要する場合、例えば、IoT デバイスのセンサーデータやログデータのリアルタイム分析
  - Kinesis Data Firehose: サーバレス運用、データ加工可、バッチで処理するため準リアルタイム。
  - Kinesis Data Analytics: SQL によるリアルタイムデータ分析が必要で、既存の SQL スキルを活用
- Amazon Route53:

  - 高可用、スケーラブル、そして完全マネージド型の権威 DNS サーバです。また、Route53 は権威 DNS サーバであると同時にドメインレジスターでもあります。
  - Record: ドメインに関連付けられた各リソースのエントリーで、主にドメイン名を IP アドレスに対応付けます。Record の中には Domain/subdomain Name、Record Type、Value(IP アドレス)、Routing Policy、TTL(DNS リゾルバでのキャッシュ期間) という 5 つの設定項目があります。
    - A: ドメイン名を IPv4 アドレスに解決
    - AAAA: ドメイン名を IPv6 アドレスに解決
    - CNAME:別のドメイン名にエイリアスを設定
  - Hosted Zone: 特定のドメインに関連する DNS レコードの集合体で、各 Hosted Zone には一意の名前が付与されます。Hosted Zone 内でレコードセットを設定することで、ドメインの挙動や解決ルールを定義できます。例えば、www.example.com をどの IP アドレスに解決するかなどがホステッドゾーンで設定されます。
  - Routing Policy:ルーティング先のサービスまで含めて可能な限りダウンタイムを短くする。
    - Simple Routing Policy: 単一のリソースにトラフィックを転送します。
    - Weighted Routing Policy: 複数のリソースに対して異なる重みを設定し、トラフィックを分散させる。
    - Latency-Based Routing Policy: クライアントの地理的位置に応じてトラフィックを最も低いレイテンシを持つエンドポイントに導くことができます。グローバルに展開されたアプリケーションで効果的です。
    - Failover Routing Policy: プライマリとセカンダリの 2 つのリソースを設定し、プライマリが利用できない場合にセカンダリにトラフィックを自動的にフェイルオーバーさせます。
    - トラフィックフロー: 複数の Routing Policy を組み合わせて使用する場合に発生するレコード設定の複雑な階層構造管理をできるようにしてくれます。このサービスを利用すると Weighted Routing Policy でトラフィック分割しながらリリースできる仕組みを作りつつ、バックエンドがダウンした時に備えた Failover Routing Policy で Sorry 画面に自動で向くようにする、といったことが可能になります。

- Amazon RDS:
  - 垂直スケーリング: インスタンスサイズを変更することで、CPU、メモリ、ストレージのリソースを調整できます。
  - 水平スケーリング: リードレプリカと呼ばれる複製を作成し、リードトラフィックを分散します。リードレプリカは読み取り専用で、主データベースに対してリードトラフィックを分散させることで読み取りの性能向上が期待できます。
  - マルチ-AZ デプロイメント: データベースを自動的に複製し、プライマリデータベースとセカンダリデータベースのペアを複数の可用性ゾーンにまたがって配置します。これにより、プライマリが利用できない場合に自動的にフェイルオーバーし、高い可用性を確保します。
  - Amazon RDS は自動的にデータベースをバックアップし、連続的なバックアップのスナップショットを作成します。
- Amazon Aurora:
  - 複数の可用性ゾーンにまたがる 6 つのコピーにデータを自動的にレプリケートし、障害が発生しても瞬時にフェイルオーバーできる高可用性構成を提供します。また、Aurora Replica を使用して読み取りトラフィックを分散し、スケーラビリティを向上させることができます。
  - Amazon Aurora は自動的にデータをバックアップし、連続的なバックアップのスナップショットを作成することでデータの保護を強化します。
  - 複数の Aurora Replica を作成して、読み取りトラフィックを分散できます。これにより、大量の読み取りトラフィックに対して柔軟にスケールアウトできます。Replica はプライマリデータベースと同等のパフォーマンスを提供し、自動的なフェイルオーバーもサポートしています。
  - グローバルデータベース: 複数の AWS リージョンにまたがる Aurora データベースのレプリケーションを可能にします。これにより、異なる地理的なリージョンにおいても低レイテンシで読み取り可能なデータベースの構築が可能です。
- ![image](https://github.com/yoshikikasama/system/assets/61643054/052eb97e-66b7-4df9-b8a7-b76437ebc36a)

- Amazon ElastiCache for Redis は、レプリケーションとシャーディングによりスケーラビリティを実現しています。
  - レプリケーションはクラスターモードを無効化している場合のオプションです。ElastiCache はプライマリキャッシュノードに対して複数のリードレプリカを作成できます。
  - これにより、読み取りトラフィックを分散させ、単一のプライマリによる負荷を軽減することができます。なお、リードレプリカはプライマリに対して非同期で更新され、耐障害性を向上させます。
  - ![image](https://github.com/yoshikikasama/system/assets/61643054/b2bba4ee-7bce-435b-93b0-41394f3fb7e8)
  - シャーディングはクラスターモードを有効化している場合のオプションです。キャッシュデータを複数のシャードに分割することで、水平方向のスケーリングを可能にします。
  - ![image](https://github.com/yoshikikasama/system/assets/61643054/96212586-83a9-4f5a-a4b8-c098f4f04d33)
  - 各シャードは独自のキャッシュエンジンのインスタンスを持ち、負荷が均等に分散されます。これにより、大量のデータやトラフィックにも柔軟に対応できます。
  - クラスターモードで使う場合のみオートスケーリングも利用可能です。
  - Amazon ElastiCacheでディザスタリカバリを考える必要がある場合にはスナップショットの定期取得とマルチ-AZデプロイメントがベストプラクティスです。ただし、どちらもAmazon ElastiCache for Redisでしか利用できず、Amazon ElastiCache for Memcachedでは使えないことは留意してください。
  - スナップショット: 定期的にスナップショットを作成し、データをAmazon S3に保存します。これにより、データの永続性を確保し、障害やデータ損失の際にはスナップショットからデータを復元できます。
  - マルチ-AZ デプロイメント: マルチ-AZデプロイメントがサポートされています。これにより、プライマリキャッシュノードとセカンダリキャッシュノードが異なる可用性ゾーンに配置され、プライマリに障害が発生した場合に自動的にセカンダリにフェイルオーバーします。
  - Amazon ElastiCache for ReidsとAmazon ElastiCache for Memcachedの比較:
  - ![image](https://github.com/yoshikikasama/system/assets/61643054/6a4a58b7-c204-4a7f-a899-c54bbf9024db)


