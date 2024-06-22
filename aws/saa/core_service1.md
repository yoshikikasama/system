# SAA 試験学種

## VPC

- IP の範囲: IP アドレス + サブネットマスク
- ネットワークの範囲: ネットワーク部がサブネットマスクによって指定され、IP アドレス範囲が固定される。
- VPC: AWS クラウド内に論理的に分離されたセクションを作り、ユーザーが定義した仮想ネットワークを構築するサービス。
  - 最小サイズは/28
  - 最大サイズは/16
- デフォルト VPC: AWS アカウントを作成すると自動的に各リージョンに１つずつデフォルト VPC とデフォルトサブネットが作成される。
- NAT ゲートウェイ: プライベート IP アドレスをパブリック IP アドレスに変換することで、プライベートサブネット内のインスタンスからインターネットへの返信を可能にするゲートウェイ。
  - <img width="1136" alt="Screen Shot 2022-08-20 at 15 35 01" src="https://user-images.githubusercontent.com/61643054/185732587-c92f3cb1-5df4-4200-aaee-539d44c5ef31.png">
- インターネットゲートウェイ: VPC とインターネットとの間の通信を可能にする VPC コンポーネント。
  - <img width="1135" alt="Screen Shot 2022-08-20 at 15 33 37" src="https://user-images.githubusercontent.com/61643054/185732592-8c501de4-2213-43a4-a24f-3d246b72c83a.png">
- VPC エンドポイント: インターネットを介さずに VPC 内から VPC 外のリソースへアクセスをする機能
  - <img width="1091" alt="Screen Shot 2022-08-20 at 15 45 42" src="https://user-images.githubusercontent.com/61643054/185733021-d45acaf0-cb6a-4090-85ee-77a0c7b79c73.png">
  - <img width="1124" alt="Screen Shot 2022-08-20 at 15 46 00" src="https://user-images.githubusercontent.com/61643054/185733030-c95ff69e-bb31-4a95-a39d-867950dc1253.png">
  - <img width="1075" alt="Screen Shot 2022-08-20 at 15 46 23" src="https://user-images.githubusercontent.com/61643054/185733046-b601f99d-642f-4294-865a-7736608ea9ee.png">
  - <img width="1086" alt="Screen Shot 2022-08-20 at 15 47 00" src="https://user-images.githubusercontent.com/61643054/185733062-01337b0c-fa70-4205-8877-a4f3a951d7ae.png">
- AWS Private Link
  - <img width="1144" alt="Screen Shot 2022-08-20 at 15 48 15" src="https://user-images.githubusercontent.com/61643054/185733068-9397bf6d-9583-4541-8561-ef7bcbe9e840.png">
