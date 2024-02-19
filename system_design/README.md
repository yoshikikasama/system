# システム設計の面接試験

## 1 章 ユーザー数 0 から数百万人へのスケールアップ

- どちらの DB を使うのか:
  - RDB: 表と行の形でデータを保存。
  - 非 RDB(NoSQL): DynamoDB, CouchDB, Neo4j など。join 操作の support がない。
    - key value store
    - graph store
    - column store
    - document store
    - NoSQL の使い所:
      - アプリケーションに超低遅延が必要な場合
      - 非構造化データを扱う場合、あるいはリレーショナルデータがない場合
      - データのシリアライズとデシリアライズだけが必要な場合(JSON, XML, YAML など)
      - 大量データの保存が必要な場合
- DB レプリケーション:

  - マスターデータベース: 書き込み操作のみを support
  - リードレプリカ: マスターデータベースからの copy を取得し、読み込み操作のみを support
- <img width="460" alt="image" src="https://github.com/yoshikikasama/system/assets/61643054/bb7d911a-02ba-4748-b759-b80292221194">


- キャッシュ層:
  - 高いレスポンスや頻繁にアクセスされるデータの結果をメモリに保存し、後続のリクエストをより迅速に処理されるようにする一時的な記憶装置。
  - DB を繰り返し呼び出すとアプリケーションの性能に大きな影響を与えるのでキャッシュはこの問題を軽減できる。
  - <img width="536" alt="image" src="https://github.com/yoshikikasama/system/assets/61643054/edb1ac86-7a96-4ba1-9a12-e7d0cc508816">

