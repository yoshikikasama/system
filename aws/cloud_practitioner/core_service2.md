# AWS　core service 2

■AWSアーキテクチャの設計原則

6つの設計原則<br>
・Reliability・・・回復性の高いアーキテクチャを設計する。<br>
・Performance Efficiency・・・パフォーマンスに優れたアーキテクチャを定義する。<br>
・Security・・・セキュアなアプリケーション及びアーキテクチャを規定する。<br>
・Cost Optimization・・・コスト最適化アーキテクチャを設計する。<br>
・Operational Excellence・・・運用上の優秀性を備えたアーキテクチャを定義する。<br>
・Sustainability・・・持続可能性が高いアプリケーション運用を実施する。<br>

・AZの選択・・・1つのリージョンにつき2つのAZを利用してアーキテクチャーを設計することが基本。<br>
・マルチリージョン構成・・・Route53を介して、2つの同じシステム構成をフェイルオーバーすることが可能。<br>
・well-architected tool・・・構築中または運用中のアプリケーションがベストプラクティスに沿っているかを検証できるツール。<br>