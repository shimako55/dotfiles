# Brewfile パッケージ一覧

## Tap（サードパーティリポジトリ）

| Tap | 説明 |
|-----|------|
| `1password/tap` | 1Password 関連の Formula/Cask |
| `anomalyco/tap` | Anomaly 社（OpenCode）の Formula |
| `argoproj/tap` | Argo プロジェクト関連ツール |
| `homebrew/bundle` | Brewfile による一括管理機能 |
| `homebrew/core` | Homebrew 公式 Formula（デフォルト） |
| `koekeishiya/formulae` | yabai / skhd などウィンドウマネージャ関連 |
| `manaflow-ai/cmux` | cmux（AI ターミナルマルチプレクサ） |
| `steipete/tap` | Peter Steinberger 氏のツール群 |
| `textualize/homebrew` | Textualize 社（Rich/Textual）のツール |
| `umlx5h/tap` | gtrash などのツール |
| `unhappychoice/tap` | gittype などのツール |
| `xdevplatform/tap` | X (Twitter) Developer Platform ツール |

## Brew（CLI ツール / ライブラリ）

### ライブラリ・ランタイム基盤

| パッケージ | 説明 |
|-----------|------|
| `giflib` | GIF 画像の読み書きを行う C ライブラリ |
| `highway` | SIMD（CPU ベクトル演算）を抽象化する高速 C++ ライブラリ |
| `certifi` | Mozilla の CA 証明書バンドル（Python の SSL 検証用） |
| `unbound` | 検証付き再帰 DNS リゾルバ（DNSSEC 対応） |
| `gnutls` | GnuTLS — TLS/SSL プロトコルのライブラリ実装 |
| `m4` | GNU m4 マクロプロセッサ（autotools 等の依存） |
| `luv` | Lua 用の libuv バインディング（Neovim の依存） |

### バージョン管理・Git

| パッケージ | 説明 |
|-----------|------|
| `git` | 分散バージョン管理システム |
| `gh` | GitHub 公式 CLI（PR・Issue 操作等） |
| `ghq` | リモートリポジトリをローカルに統一管理するツール |
| `git-delta` | Git の diff/blame 出力をシンタックスハイライト付きで美しく表示 |
| `hub` | Git を拡張して GitHub 操作を追加するラッパー（旧世代、gh が後継） |
| `lazygit` | ターミナル上で動く Git の TUI クライアント |
| `gittype` | Git コミットのタイプ（feat/fix 等）を対話的に選択するツール |

### シェル・ターミナル

| パッケージ | 説明 |
|-----------|------|
| `nushell` | 構造化データをネイティブに扱えるモダンシェル |
| `dash-shell` | POSIX 準拠の軽量シェル（スクリプト実行が高速） |
| `starship` | Rust 製のクロスシェル対応カスタマイズ可能プロンプト |
| `tmux` | ターミナルマルチプレクサ（セッション管理・画面分割） |
| `zsh-vi-mode` | Zsh で Vi キーバインドを強化するプラグイン |
| `atuin` | シェル履歴を SQLite で管理し、同期・検索できるツール |
| `direnv` | ディレクトリごとに環境変数を自動ロード/アンロード |
| `zoxide` | 使用頻度を学習するスマートな `cd` 代替コマンド |

### ファイル操作・検索・閲覧

| パッケージ | 説明 |
|-----------|------|
| `bat` | シンタックスハイライト付き `cat` 代替 |
| `eza` | モダンな `ls` 代替（色分け・Git 連携・アイコン対応） |
| `fd` | 高速でユーザーフレンドリーな `find` 代替 |
| `fzf` | 汎用ファジーファインダー（対話的フィルタリング） |
| `ripgrep` | 超高速な `grep` 代替（rg コマンド） |
| `ugrep` | 高機能な grep 代替（対話モード・バイナリ検索対応） |
| `peco` | 対話的フィルタリングツール（パイプで使用） |
| `tree` | ディレクトリ構造をツリー形式で表示 |
| `less` | 高機能ページャ（ファイルの閲覧） |
| `gtrash` | ゴミ箱経由の安全なファイル削除ツール |
| `superfile` | ターミナル上で動くモダンなファイルマネージャ TUI |

### テキスト処理・データ操作

| パッケージ | 説明 |
|-----------|------|
| `jq` | コマンドラインの JSON プロセッサ |
| `jnv` | jq のインタラクティブフィルタリング TUI |
| `yq` | YAML/XML/TOML/CSV を jq ライクに処理 |
| `gron` | JSON をフラットな代入文に変換して grep しやすくする |
| `gnu-sed` | GNU 版 sed（macOS 標準より高機能） |
| `gnu-tar` | GNU 版 tar（macOS 標準より高機能） |
| `gawk` | GNU 版 awk（パターンスキャン＆処理言語） |
| `gzip` | GNU 版 gzip 圧縮ツール |
| `diffutils` | GNU 版 diff/cmp 等のファイル比較ツール |
| `coreutils` | GNU コアユーティリティ群（ls, cat, chmod 等の GNU 版） |
| `nkf` | 文字コード変換ツール（日本語 EUC/SJIS/UTF-8 等） |
| `mecab` | 日本語形態素解析エンジン |
| `base64` | Base64 エンコード/デコードツール |
| `md5sha1sum` | MD5/SHA1 チェックサム計算ツール |

### ネットワーク・セキュリティ

| パッケージ | 説明 |
|-----------|------|
| `curl` | URL 転送ツール（HTTP/FTP 等の通信） |
| `httpie` | 人間に優しい HTTP クライアント（`http`/`https` コマンド） |
| `bandwhich` | プロセスごとのネットワーク帯域使用量を表示する TUI |
| `dstp` | DNS/HTTP/TLS などネットワーク接続を一括テスト |
| `wireshark` | パケットキャプチャ・解析ツール（CLI 版、リンクなし） |
| `gnupg` | GnuPG — PGP 暗号化・署名ツール |
| `trivy` | コンテナ・IaC・依存関係の脆弱性スキャナ |

### システムモニタリング

| パッケージ | 説明 |
|-----------|------|
| `htop` | 対話的プロセスモニタ（`top` の高機能版） |
| `btop` | リソースモニタ TUI（CPU/メモリ/ディスク/ネットワーク） |
| `has` | コマンドの存在とバージョンを一括チェック |

### プログラミング言語・ランタイム

| パッケージ | 説明 |
|-----------|------|
| `asdf` | 複数言語のバージョンを統一管理するツール |
| `tenv` | Terraform/OpenTofu/Terragrunt のバージョンマネージャ |
| `go` | Go プログラミング言語 |
| `node` | Node.js（JavaScript ランタイム） |
| `deno` | セキュアな JavaScript/TypeScript ランタイム |
| `python@3.11` | Python 3.11 |
| `python@3.12` | Python 3.12 |
| `uv` | 超高速な Python パッケージマネージャ・プロジェクト管理ツール |
| `gcc@12` | GNU Compiler Collection v12（C/C++/Fortran コンパイラ） |

### エディタ・開発ツール

| パッケージ | 説明 |
|-----------|------|
| `neovim` | Vim の進化版テキストエディタ |
| `clang-format` | C/C++/Java 等のコード自動整形ツール |
| `shellcheck` | シェルスクリプトの静的解析・Lint ツール |
| `shfmt` | シェルスクリプトのフォーマッタ |
| `make` | GNU Make — ビルド自動化ツール |
| `just` | `make` に似たコマンドランナー（より使いやすい） |
| `plantuml` | テキストから UML 図を生成 |
| `lowdown` | Markdown をさまざまな形式に変換するツール |
| `xcodegen` | YAML/JSON から Xcode プロジェクトファイルを生成 |
| `gnuplot` | グラフ・データ可視化のプロットツール |
| `qman` | man ページのインタラクティブブラウザ |

### マルチメディア

| パッケージ | 説明 |
|-----------|------|
| `ffmpeg` | 動画・音声の変換・編集・配信の万能ツール |
| `sox` | コマンドライン音声処理ツール（変換・録音・エフェクト） |

### Kubernetes・コンテナ

| パッケージ | 説明 |
|-----------|------|
| `kubernetes-cli` | `kubectl` — Kubernetes クラスタの管理 CLI |
| `kubectx` | Kubernetes のコンテキスト・ネームスペースを素早く切替 |
| `kubie` | Kubernetes コンテキストをシェルセッション単位で分離 |
| `k9s` | Kubernetes クラスタ管理の TUI |
| `kind` | Docker コンテナで Kubernetes クラスタをローカル起動 |
| `argocd` | Argo CD CLI — Kubernetes 向け GitOps CD ツール |
| `kubectl-argo-rollouts` | Argo Rollouts の kubectl プラグイン（カナリア/Blue-Green デプロイ） |

### AWS

| パッケージ | 説明 |
|-----------|------|
| `awscli` | AWS 公式 CLI |
| `aws-iam-authenticator` | EKS 向け AWS IAM 認証ヘルパー |

### AI・その他ツール

| パッケージ | 説明 |
|-----------|------|
| `ollama` | ローカルで LLM を実行するツール（Llama, Mistral 等） |
| `claude-squad` | 複数の Claude Code セッションを tmux で並列管理するツール |
| `opencode` | OpenCode — AI コーディングエージェント CLI |
| `tldr` | man ページの簡潔な実用例サマリ |
| `mas` | Mac App Store を CLI から操作 |
| `specify` | macOS のシステム情報を収集・表示 |
| `gifgrep` | GIF アニメの中身をテキスト検索するツール |
| `gogcli` | GOG.com（ゲームプラットフォーム）の CLI クライアント |
| `peekaboo` | macOS のアプリプライバシー権限を確認するツール |
| `summarize` | テキストの要約ツール |

## Cask（GUI アプリケーション）

| パッケージ | 説明 |
|-----------|------|
| `1password` | パスワードマネージャ |
| `1password-cli` | 1Password の CLI ツール（`op` コマンド） |
| `anki` | フラッシュカード式の暗記学習アプリ |
| `appcleaner` | Mac アプリの完全アンインストーラ |
| `azookey` | オープンソースの日本語入力 IME |
| `bettertouchtool` | トラックパッド・キーボード等のカスタマイズツール |
| `brave-browser` | プライバシー重視の Chromium ベースブラウザ |
| `cmux` | AI ターミナルマルチプレクサ（Claude 等のエージェント管理） |
| `codexbar` | メニューバーから AI コーディングアシスタントを呼び出すツール |
| `cursor` | AI 機能内蔵のコードエディタ（VS Code ベース） |
| `cursorsense` | マウスカーソルの加速度・感度を調整 |
| `expressions` | 正規表現のテスト・デバッグアプリ |
| `finicky` | デフォルトブラウザをルールで動的に切り替え |
| `font-hackgen-nerd` | HackGen Nerd Font（日本語対応プログラミングフォント + Nerd Font アイコン） |
| `goland` | JetBrains 製の Go IDE |
| `karabiner-elements` | キーボードカスタマイズツール（キーリマップ） |
| `keyboardcleantool` | キーボード入力を一時無効にするツール（掃除用） |
| `keycastr` | キーストロークを画面上に表示（デモ・配信用） |
| `kindle` | Amazon Kindle 電子書籍リーダー |
| `mitmproxy` | HTTP/HTTPS の中間者プロキシ（デバッグ・解析用） |
| `notion-calendar` | Notion Calendar（旧 Cron）— カレンダーアプリ |
| `obs` | OBS Studio — 配信・録画ソフト |
| `obsidian` | Markdown ベースのナレッジ管理・ノートアプリ |
| `orbstack` | 軽量・高速な Docker / Linux VM 環境（Docker Desktop 代替） |
| `postman` | API 開発・テストツール |
| `raycast` | Spotlight 代替のランチャー・生産性ツール |
| `tunnelblick` | OpenVPN クライアント |
| `visual-studio-code` | Microsoft の汎用コードエディタ |
| `warp` | AI 機能付きモダンターミナル |
| `wezterm` | GPU アクセラレーション対応の Lua 設定可能ターミナル |
| `wireshark-app` | Wireshark の GUI 版パケットキャプチャツール |
| `xurl` | X (Twitter) Developer Platform 向け URL ユーティリティ |

## Mac App Store（mas）

| アプリ | 説明 |
|--------|------|
| `Amphetamine` | Mac のスリープを防止するユーティリティ |
| `Corner Time` | 画面の角に時計を表示するユーティリティ |
| `Developer` | Apple Developer ドキュメント・WWDC 動画の閲覧アプリ |
| `Expressions` | 正規表現のテスト・デバッグアプリ（App Store 版） |
| `Glide` | ブラウジング体験を向上させるツール |
| `Jamf Trust` | Jamf のゼロトラストアクセス・セキュリティアプリ |
| `Kindle` | Amazon Kindle（App Store 版） |
| `Klack` | タイピング時に心地よい機械式キーボード音を再生 |
| `RunCat` | メニューバーに走る猫で CPU 負荷を可視化 |
| `Slack` | チームコミュニケーションツール |
| `Tailscale` | WireGuard ベースのメッシュ VPN |
| `Xcode` | Apple の統合開発環境（iOS/macOS 開発） |
| `Yubico Authenticator` | YubiKey 対応の TOTP/FIDO2 認証アプリ |

## VS Code 拡張機能

| 拡張機能 | 説明 |
|---------|------|
| `bierner.markdown-mermaid` | Markdown プレビューで Mermaid 図を描画 |
| `golang.go` | Go 言語の公式サポート（補完・デバッグ・Lint 等） |
| `juniorschmidt.lunar-vscode-theme` | Lunar カラーテーマ |
| `openai.chatgpt` | VS Code 内で ChatGPT を使用する拡張機能 |

## uv（Python ツール）

| パッケージ | 説明 |
|-----------|------|
| `jiratui` | Jira をターミナルから操作する TUI クライアント |
| `litellm[proxy]` | 100以上の LLM API を統一インターフェースで使えるプロキシ |
| `markitdown-mcp` | 各種ファイルを Markdown に変換する MCP サーバー |
| `nano-pdf` | PDF の操作・変換ツール |
| `plamo-translate` | PLaMo による翻訳ツール |
