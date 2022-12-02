# udemy SOA模擬試験 4

## 1.
- S3 Bucket内の暗号化:
    - SSE-S3: Amazon S3 が管理するキーによるサーバーサイド暗号化
    - SSE-KMS: AWS KMSのカスタマーマスターキー (CMK) によるサーバーサイド暗号化
    - SSE-C: ユーザー側で独自の暗号化キーを作成して、AWS側にインポートして利用する暗号化方式

## 2.
- AWS Service Health Dashboard: パブリックイベント。AWSサービス全体の障害情報。
- AWS Personal Health Dashboard: AWSサービス全体のうち、自分のアカウントで受けている障害情報。
- Amazon EventBridge: アカウント固有のイベント(そのリージョン のイベント)
- AWS Health API: パブリックイベント、アカウント固有のイベント

- パブリックイベント: AWSアカウント固有でないサービスイベント