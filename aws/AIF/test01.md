# AIF-C01 / AWS Certified AI Practitioner 模擬試験（1 回目）

- 教師あり学習アルゴリズム
  - 因数分解機: 複数の要素間の関係性を学習し、特にレコメンデーションシステムや広告配信などでの予測に役立ちます。例えば、ユーザーの好みと商品の特徴との関係を学習し、商品の評価を予測することが可能です。
  - 線形回帰: 入力と出力の関係を線形モデルで表し、予測を行うために使われます。
- 教師なし学習アルゴリズム

  - k 平均法: データの構造やパターンを見つけ出すために使用
  - 潜在的ディリクレ配分法（LDA）: データの構造やパターンを見つけ出すために使用
  - 主成分分析（PCA）: データの構造やパターンを見つけ出すために使用

- SageMaker Experiments: トレーニング結果を整理して比較でき、再現性のある実験が可能になります。機械学習ではパラメータのチューニングに代表されるように何度も何度も試行錯誤を実施します。そうなると「自分がなにやってたか？」を忘れてしまったり、メモを取るのを忘れたりするため、SageMaker Experiments というサービスが生まれたそうです。
- SageMaker のハイパーパラメータチューニングジョブ: ハイパーパラメータの最適化に使用。
- SageMaker Endpoint: モデルの自動スケーリング

- 学習率（learning rate）:

  - 機械学習モデルがデータから学習する際に、パラメータ（重みやバイアス）をどのくらいの幅で更新するかを決める値です。簡単に言うと、「どれくらいのステップでモデルが学習していくか」をコントロールするものです。
  - 学習率が低すぎると、モデルが誤差を適切に修正できず、学習が非常に遅くなります。
  - 誤差とは、機械学習モデルが予測した結果と、実際の正解との間のズレや違いのことを指します。

- 重み（Weight）: 機械学習モデルが「どれくらいその情報を重要視するか」を決める数字です。
- バイアス（Bias）: モデルがどれくらい「基準」を調整するかを示す数字です。例えば、テストで合格ラインが 60 点だとしましょう。でも、その学校は基準を 10 点上げることにしました → これが「バイアス」です。

- エポック数（Epoch）: 機械学習モデルがすべての学習データを一通り使って学習する回数のことを指します。

  - 例を使った説明
    - あなたが英単語を覚える練習をしているとします。
    - 単語カードが全部で 100 枚あります。
    - これを 1 回全部覚えるまで練習する → これが 1 エポック です。
    - もう一度全部のカードを練習 →2 エポック。
    - 同じ単語カードを繰り返し練習することで、だんだん覚える内容が身につきますね。それと同じで、エポックを増やすことでモデルは繰り返し学習を行い、データをより深く理解していきます。
  - エポックとバッチの関係
    - 学習データが多すぎると、1 回ですべてのデータを処理するのは難しいです。そのため、データを小さなグループ（バッチ）に分けて処理します。
    - エポック：全データを 1 回使う。
    - バッチサイズ：一度に処理するデータの量。
    - イテレーション：1 回のバッチ処理。
    - 例えば：
      - データ全体が 1000 件。
      - バッチサイズが 100 件。
      - 1 エポック＝ 10 回（イテレーション）。
  - なぜエポックが重要なのか？
    - エポック数を調整することで、モデルの学習具合に影響を与えます：
      - 少なすぎるエポック：
        - データを十分に学習しないため、モデルが未熟なまま終わる（アンダーフィッティング）。
      - 適切なエポック：
        - モデルがデータの特徴をよく学習し、良い精度が得られる。
      - 多すぎるエポック：
        - モデルがデータを学習しすぎて、新しいデータに弱くなる（オーバーフィッティング）。

- SageMaker Processing: データの前処理、後処理、特徴量エンジニアリング、モデル評価などのタスクをスケーラブルなマネージド環境で実行するための機能です。これにより、データサイエンティストはインフラストラクチャの管理を気にせず、データ処理ジョブを簡単に実行できます。
- SageMaker Neo: 機械学習モデルを自動的に最適化し、精度を損なわないようにしつつ、推論速度を改善する機能です。
- SageMaker Model Monitor: デプロイされたモデルのパフォーマンスを監視し、ドリフトを検出するためのツールです。
- SageMaker Inference: トレーニング済みモデルを用いて推論を行う機能
- Amazon SageMaker Ground Truth: データラベリングや機械学習のトレーニングデータセットの作成を支援するサービスです。

- ドリフト:

  - モデルが学習時に使用したデータや環境と、運用時（予測に使うとき）のデータや環境が変化してしまう現象を指します。この変化が起きると、モデルの予測精度が低下する可能性があります。
  - モデルは、過去のデータを基に「未来のパターン」を予測します。しかし、もしデータやルールが変わってしまうと、モデルの学習内容が現実と合わなくなります。その結果,予測精度が下がる。誤った判断や予測に基づくアクションを取るリスクが増える。

- ROUGE: 「Recall-Oriented Understudy for Gisting Evaluation」の略で、生成されたテキストが元のテキスト（参照テキスト）とどれだけ一致しているかを測定します。特に、要約タスクやテキスト生成の一貫性を評価するのに適しており、一般的には単語やフレーズの重複をスコア化します。このため、カスタマーサポートの会話要約のようなユースケースでは最適な選択肢です。
- F1 スコア: 精度と再現率の調和平均であり、主に分類問題やモデルの性能評価に使用されます。
- BERT: 「Bidirectional Encoder Representations from Transformers」に基づくモデルであり、自然言語理解や類似度評価に使用されます。
- 混同行列: 分類タスクで正解率や誤分類率を分析するためのツールです。

- 真のデータ分布とは？

  - 現実のルールや仕組み
  - データには、何らかの法則性やパターン（関係性）が存在します。これが「真のデータ分布」です。
  - 例: 身長と体重の関係、天候と気温の相関など、観測データの背後にある実際の仕組みやルールを指します。
    - 例 1: 数学の問題
    - y=2x+1
    - これが「真のデータ分布」＝本当の関係性。もしモデルが「y=x+1」と学習してしまうと、このルールを正確に表現できていない（＝バイアスが高い）状態です。
  - 例 2: 現実世界
    - 天候データに基づいて明日の気温を予測するとき、実際の気温の法則（真の分布）が存在します。モデルがこの法則をうまく表現できない場合、バイアスが高いと言えます。

- バイアス（Bias）とその影響

  - 定義: バイアスは、モデルが真のデータ分布やそのパターンをどの程度正しく表現できているかを示します。バイアスが高い場合、モデルはデータの複雑さを捉えきれず、非常に単純な予測を行います。
  - 高いバイアスの影響: モデルが単純すぎて、訓練データに対しても誤差が大きくなりやすい（過少適合: underfitting）。
  - 低いバイアスの影響: モデルが複雑になり、訓練データを過剰に適合しやすくなる（ただし、低バイアス単体では問題にならず、バリアンスとの関係が重要）。

- バリアンス（Variance）とその影響

  - 定義: バリアンスは、モデルがデータの変動に対してどの程度敏感に反応するかを示します。バリアンスが高い場合、モデルは訓練データのノイズや詳細に過度に適応します。
  - 高いバリアンスの影響: モデルが訓練データに過剰適合し、新しいデータに対する汎化能力が低下する（過学習: overfitting）。
  - 低いバリアンスの影響: モデルが安定的にデータのパターンを学習するが、複雑なパターンには対応できない場合もある。

- バイアスとバリアンスの違い

| 特徴         | バイアス                                   | バリアンス                                                 |
| ------------ | ------------------------------------------ | ---------------------------------------------------------- |
| 原因         | モデルが単純すぎる                         | モデルが複雑すぎる                                         |
| 影響         | 訓練データにもテストデータにも誤差が大きい | 訓練データでは誤差が小さいが、テストデータでは誤差が大きい |
| 問題のタイプ | 過少適合（underfitting）                   | 過学習（overfitting）                                      |
| 例           | 直線モデルで曲線データを近似しようとする   | 高次多項式モデルでノイズまで学習してしまう                 |

- なぜ混同しやすいか？  
  バイアスとバリアンスは、どちらもモデルの性能を測る指標であり、トレードオフの関係にあります。
  - バイアスを低くしようとすると、モデルが複雑になりすぎてバリアンスが高くなる。
  - バリアンスを低くしようとすると、モデルが単純になりすぎてバイアスが高くなる。
- 理想的な状態  
  バイアスとバリアンスのバランスをとり、誤差を最小化することが目標です。

1. バイアスが高い:  
   訓練データ全体を「ざっくり」まとめるだけで、細かい部分を無視してしまう。  
   → 例: 太い鉛筆で適当に丸を描く。

2. バリアンスが高い:  
   訓練データの細部に過剰にこだわりすぎる。  
   → 例: シャーペンで小さな模様まで全部描こうとする。

- バイアスが高い → モデルが単純すぎて学習不足（過少適合）。
- バリアンスが高い → モデルが複雑すぎて過学習（過適合）。
- 覚えておきたい原則: 「バイアスもバリアンスも低いモデルが理想的」。このバランスを意識することで、応用問題にも対応しやすくなります。

- SVM: サポートベクターマシンは、主に分類タスクに使用される機械学習アルゴリズムです。SVM は、与えられたデータを 2 つ以上のクラスに分類するために使用され、分類の精度が高いことが特徴です。

- Amazon SageMaker JumpStart: データサイエンティストや開発者が、一般的に利用される機械学習モデルや、特定のタスク向けに事前トレーニングされたソリューションを簡単に導入できるようにするためのツールです。この機能は、機械学習の知識が少ないチームでも、すぐにモデルのプロトタイプやテストを行い、迅速に実際の業務に活用するための助けとなります。
- Amazon SageMaker Canvas:ノーコードで機械学習モデルを構築・予測するツールで、主にビジネスユーザー向けです。
- Amazon SageMaker Model Cards:機械学習モデルに関するメタデータを記録・共有するためのツール。
- Amazon SageMaker Feature Store:特徴量を管理・共有するためのツール。
- SageMaker Model Dashboard: Amazon SageMaker コンソールからアクセスできる一元化されたポータルで、アカウント内のすべてのモデルを表示、検索、探索できます。これにより、モデルのデプロイ状況やパフォーマンスをリアルタイムで追跡し、データ品質やモデル品質、バイアス、説明可能性に関するモニタリング結果を包括的に確認できます。
- SageMaker Studio: 統合開発環境（IDE）として機械学習ワークフロー全体をサポート。
- SageMaker Model Registry:モデルのバージョン管理や承認ワークフローの追跡を目的とした機能。
- SageMaker Model Monitor:デプロイ済みモデルのデータ品質やモデル品質のモニタリングを行う機能。

- Amazon Bedrock の主要なパラメータ:

  - 温度: 応答の多様性を調整します。値を低く設定すると、応答は一貫性が増し、予測可能になります。一方、値を高く設定すると、多様性が高まり、創造的な応答が生成されやすくなります。
  - トップ P: 確率分布に基づき、上位の合計確率が「P」に達する候補のみを選択肢に含めます。特定のシナリオで確率分布に応じた応答を制限する場合に役立ちます。
    - 確率の合計が P（90%とか）になるところで切る」と考える。
    - P ＝ Probability（確率）だから、範囲の制限に使う。
  - トップ K: 確率が高い上位「K」個の候補からランダムに選択します。生成する応答候補をさらに絞り込みたい場合に使用されます。
    - 「確率が高い上から K 個だけに絞る」とシンプルに考える。
    - K ＝個数と関連づけると分かりやすい。
  - 最大トークン: 生成される応答の最大トークン数を指定します。応答の長さを制御するのに適しています。

- Sequence to Sequence

  - 入力されたデータの系列を別の系列に変換するアルゴリズムで、機械翻訳や文章生成に使われます。
  - Sequence to Sequence ＝ Seq2Seq モデルは、主に 2 つの部分で構成されています：
  - エンコーダ（Encoder）:エンコーダは、入力されたシーケンスを一度に処理し、その内容を「要約」して、重要な情報を保持する隠れた状態（ベクトル）に変換します。この要約が、次のステップでデコードされます。
  - デコーダ（Decoder）:エンコーダが作成した要約（隠れた状態）を元に、新しいシーケンス（例えば翻訳文）を生成します。

- 平均二乗誤差（MSE）: 予測された値と実際の値との間の誤差を評価する指標で、誤差の二乗平均をとることで大きな誤差により重いペナルティを与えます（二乗するので大きな数字になる＝重いペナルティ）。数値が小さいほどモデルの精度が高く、予測が実際の値に近いことを示します。

- バッチサイズとエポック数の関係

- データ 10,000 個があり、エポック数が 5 の場合、データ全体を 5 回繰り返して学習します。

  - バッチサイズが 100 であると、1 エポック内で 100 回（10,000 ÷ 100）バッチ処理が行われることになります。
  - 5 エポックでは、合計で 500 回（5 × 100）バッチ処理を行うことになります。
  - 1 エポックとトータルの処理回数の違い
  - 1 エポックの処理回数:
    - 全データサイズ ÷ バッチサイズ
    - この例では、10,000 ÷ 100 = 100 回の処理。
  - 全エポックでのトータル処理回数:
    - 1 エポックの処理回数 × エポック数
    - この例では、100 × 5 = 500 回。

- Amazon Augmented AI (A2I):
  - 人間の判断を機械学習モデルの予測と組み合わせて、精度を高めるためのサービスです。
  - 具体的には機械学習の予測結果を確認する画面を提供した後、人が確認して評価します。確認する人は自分（自社）でもいいですし、AWS が契約しているチェック専門の方（チーム）に依頼することもできます。
- Amazon Fraud Detector: オンライン詐欺や不正なアカウント作成を検出するために使用されます。世界一の売上規模を誇る EC サイトである Amazon が培った不正対策のノウハウを活用できる AWS の AI サービスになります。

- Amazon SageMaker の自動モデルチューニング（Automatic Model Tuning）は、指定したハイパーパラメータの範囲内で最適な値を探索し、モデルの精度やパフォーマンスを向上させるための重要な機能です。この機能を活用する際には、以下の 2 つの設定が特に重要です。

  - ハイパーパラメータ範囲: 自動モデルチューニングを行う際、まず最適化するハイパーパラメータの「範囲」を指定します。ハイパーパラメータは、学習率やバッチサイズなど、モデルのトレーニングにおける重要な設定項目です。SageMaker はこの範囲内でハイパーパラメータを変化させ、最適な組み合わせを見つけ出す試行を繰り返します。
    - 学習率（learning rate）: モデルが重みをどれだけ速く調整するかを制御。
    - バッチサイズ（batch size）: 一度に処理するデータの量を決定。
    - エポック数（epochs）: データセット全体を何回トレーニングするかを指定。
  - 評価指標: SageMaker において、モデルのパフォーマンス評価に使用する「評価指標」も指定する必要があります。例えば、分類タスクでは「正確度」や「F1 スコア」、回帰タスクでは「平均二乗誤差（MSE）」など、適切な指標を選択します。この評価指標に基づき、SageMaker が試行結果を比較し、最も良い結果を得られるパラメータ組み合わせを探していきます。

- 推論（Inference）

  - 機械学習モデルに新しいデータを入力して、そのモデルが学習したパターンやルールを基に結果や予測を生成するプロセスです。推論は、モデルをトレーニング（訓練）した後の実用段階で使用されます。
  - 1. トレーニング:
    - モデルは、訓練データを用いてパターンや規則を学習します。
    - この段階で、モデルの重みやパラメータが調整されます。
  - 2. 推論:
    - トレーニング済みモデルに新しいデータを入力し、そのデータに基づく予測や分類を行います。
    - この新しいデータは、通常、モデルが学習していないデータ（未知のデータ）です。
  - 推論の具体例
    - 分類タスクの例:
      - 目的: 手書きの数字を認識するモデル
      - トレーニング: 手書き画像（例: MNIST データセット）を用いて「0 ～ 9」の数字を学習。
      - 推論: 新しい手書き画像をモデルに入力すると、それが「3」や「7」といった数字に分類される。
    - 回帰タスクの例:
      - 目的: 家の価格を予測するモデル
      - トレーニング: 過去の家のデータ（面積、部屋数、立地など）と価格を使って学習。
      - 推論: 新しい家のデータを入力すると、その家の価格が予測される。
    - 生成タスクの例:
      - 目的: テキストを生成するモデル
      - トレーニング: 膨大な文章データから文章の生成方法を学習。
      - 推論: 指定された入力文（プロンプト）に応じて続きの文章を生成する。
  - 推論と関連する API: 推論 API は、トレーニング済みモデルを他のアプリケーションやシステムで利用するためのインターフェースを提供します。
    - 役割: 新しいデータをモデルに送信し、結果を受け取る。
    - 例:
      - 「このレビューは肯定的か否定的か？」を判定する API。
      - 「この画像は犬か猫か？」を判定する API。

- Amazon SageMaker Clarify:
  - 特定の属性（例: 性別や年齢）に基づく予測結果の偏り（バイアス）を検出するために使用されます。
  - Clarify は、以下の 2 つのレベルでのバイアス検出が含まれます。
  - データのバイアス検出: モデルのトレーニングデータセット内で、特定のグループやカテゴリが不均衡に扱われていないかを検出します。例えば、性別や人種などのセンシティブ属性に関して、データ分布に偏りがあるかどうかを確認できます。
  - モデルのバイアス検出: モデルが特定のグループに対して偏った予測を行っていないかを評価します。これにより、予測結果が公平に分布しているかどうかを測定できます。
- SageMaker Model Cards:

  - モデルの透明性と責任ある AI 運用を支援するために、モデルに関するドキュメントを作成するツールです。機械学習モデルの開発と運用において、透明性を確保し、モデルのドキュメントを一元管理して共有することが可能になります。
  - Model Cards に記載をしていくと モデルに関する説明書ができるイメージです。

- GAN（敵対的生成ネットワーク）: 機械学習のアルゴリズムの一つ。生成ネットワークがノイズから新しいデータを生成し、識別ネットワークがそのデータを本物か偽物かを区別する 2 つのネットワークで構成されるモデルです。敵対的という名前が示すように、２つのネットワークを競い合わせることで、よいモデルを作ろうとする手法です。
- 決定係数 R² : 回帰モデルがどれだけデータをうまく説明しているかを示す指標です。モデルの予測精度を評価するために使われ、値は 0 から 1 の範囲になります。R² の値が 1 に近いほど、モデルがデータをよく説明していることを意味します。

- 回帰分析

  - データの中にある数値の関係性を明らかにし、予測や傾向の分析を行う手法です。具体的には、入力となる変数（特徴量）と、出力となる目的変数（ターゲット）の間の関係性をモデル化します。
  - 回帰の基本的な考え方
    - 目的: ある変数が他の変数にどのように影響を与えるかを調べたり、新しいデータから目的変数を予測したりする。
    - 形式: 回帰式（例: \( y = ax + b \)）のような数式で表現されることが多い。
      - \( y \): 目的変数（予測したい値）
      - \( x \): 説明変数（特徴量、入力データ）
      - \( a \): 傾き（変数の影響度）
      - \( b \): 切片（定数項、基準値）
  - 具体例

    - 単回帰分析: 1 つの説明変数を用いて目的変数を予測。

      - 例:

        - データ: 面積（説明変数）と家賃（目的変数）
        - 目的: 面積が家賃に与える影響を調べる、または面積から家賃を予測する。

      - 回帰式の例: 家賃 = 1000 \* (面積) + 50,000
      - 面積が 50㎡ なら、予測家賃は:1000 \* 50 + 50,000 = 100,000

    - 重回帰分析: 複数の説明変数を用いて目的変数を予測。
      - 例:
        - データ: 面積、駅からの距離、築年数（説明変数）と家賃（目的変数）
        - 目的: 複数の要因を考慮して家賃を予測する。

  - 回帰分析の用途
    1. 予測:
       - 例: 気温に基づくアイスクリームの売上予測。
    2. 傾向分析:
       - 例: 給与と勤続年数の関係性を調べる。
    3. 因果関係の確認:
       - 例: 広告費用が売上に与える影響を評価。
  - 回帰という言葉の意味: 元々「データが平均的な値に戻る傾向がある」という意味から来ています（フランシス・ゴルトンが由来）。しかし現代の統計学や機械学習では、ある変数を別の変数で説明するための分析手法全般を指します。