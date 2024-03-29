# システム設計の面接試験

## 4 章 レートリミッターの設計

- API レートリミッター:
  - サービス拒否(DoS)攻撃によるリソースの枯渇を防ぐ。大手ハイテク企業が公開するほぼ全ての API は何らかの形でレート制限(スロットリング)を実施している。
  - コスト削減する。
- 必要条件:
  - 過剰なリクエストを的確に制限すること
  - 低遅延であること。HTTP のレスポンスタイムを遅くしない
  - できるだけ少ないメモリで動作すること
  - 分散型レートリミッターであること。複数サーバーやプロセスでレートリミッターを共有可能。
  - 例外処理。リクエストが制限された時、ユーザーに明確な例外を表示する。
  - 高い障害耐性。レートリミッターに何らかの問題が発生した場合もシステム全体には影響を及ぼさない。
- <img width="960" alt="image" src="https://github.com/yoshikikasama/system/assets/61643054/753368c8-6a47-4dd8-bed5-c4dfd2d11fd4">
  - APIサーバーにレートリミッターを置く代わりにAPIのリクエストをスロットルで制限するレートリミッターミドルウェアを作成する。
  - レート制限は通常、API Gatewayと呼ばれるコンポーネント内に実装されている。

- レートリミッターのアルゴリズム:
  - Token bucket:
    - token bucket とはあらかじめ決められた容量を持つコンテナである。bucket が満杯になるとそれ以上 token は追加されない。
    - 補充係は 1 秒に 2 個の token を bucket に入れる。bucket がいっぱいになると余分な token が溢れ出す。
    - 各リクエストは 1 つの token を消費する。十分な token がある場合、各リクエストに対して 1 つの token を取り出し、リクエストは通過する。
    - 十分な token がない場合、リクエストは破棄される。
    - 図の例では token の bucket size は 4 で補充レートは 1 分間に 4 です。
    - <img width="922" alt="image" src="https://github.com/yoshikikasama/system/assets/61643054/5002498f-7393-4847-8c46-4f55e11a87b9">
    - <img width="788" alt="image" src="https://github.com/yoshikikasama/system/assets/61643054/8012dd14-f76a-4d31-96c6-c876271eaae7">
    - parameter: bucket size(bucket に入れられる token の最大数), 補充率(1 秒間に bucket に入れられる token の数)
    - API エンドポイントごとに bucket を用意する必要がある。
    - 長所:
      - アルゴリズムの実装が簡単
      - メモリ効率がいい
      - token bucket は短時間のバーストトラフィックを可能にする。token が残っている限り、リクエストは通過する。
    - 短所:
      - bucket size と token 補充率という 2 つのパラメータがあるが、これらを適切に調整するのは難しいかもしれない。
  - Leaky Bucket:
