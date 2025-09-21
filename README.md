# MulmoChat - AI Multi-modal Chat Application

MulmoChatは、音声チャット、画像生成、Webブラウジング機能を統合したAIマルチモーダルチャットアプリケーションです。

## 🚀 簡単起動方法

### ダブルクリックで起動

1. **`start.bat`** をダブルクリック
2. 自動的にブラウザが開きます
3. MulmoChatが使用可能になります

### デスクトップショートカット作成

1. **`create-shortcut.bat`** をダブルクリック
2. デスクトップにショートカットが作成されます
3. 今後はデスクトップのショートカットから起動可能です

## 📋 必要な環境

- **Node.js** (v18以上)
- **pnpm** (パッケージマネージャー)
- **OpenAI API Key**
- **Google Gemini API Key**

## ⚙️ 設定方法

### 1. API キーの設定

`.env` ファイルを作成し、以下の内容を設定してください：

```env
OPENAI_API_KEY=your_openai_api_key_here
GEMINI_API_KEY=your_gemini_api_key_here
```

### 2. 依存関係のインストール

初回起動時に自動的にインストールされますが、手動でインストールする場合：

```bash
pnpm install
```

## 🎯 機能

- **音声チャット**: OpenAI Realtime APIを使用したリアルタイム音声対話
- **画像生成**: Google Gemini APIを使用したAI画像生成
- **Webブラウジング**: リアルタイムでのWebサイト検索と情報取得
- **セッション管理**: 会話履歴の保存と復元

## 🛠️ 手動起動方法

### 開発モード

```bash
# サーバーとクライアントを同時起動
pnpm dev

# または個別起動
pnpm dev:server  # サーバーのみ
pnpm dev:client  # クライアントのみ
```

### 本番モード

```bash
# ビルド
pnpm build

# 本番サーバー起動
pnpm start
```

## 📁 ファイル構成

```
MulmoChat/
├── start.bat              # アプリ起動スクリプト
├── stop.bat               # アプリ停止スクリプト
├── create-shortcut.bat    # デスクトップショートカット作成
├── server/                # バックエンドサーバー
├── src/                   # フロントエンドクライアント
├── .env                   # 環境変数設定
└── package.json           # プロジェクト設定
```

## 🔧 トラブルシューティング

### よくある問題

1. **Node.jsがインストールされていない**
   - [Node.js公式サイト](https://nodejs.org/)からインストール

2. **pnpmがインストールされていない**
   ```bash
   npm install -g pnpm
   ```

3. **API キーが設定されていない**
   - `.env` ファイルにAPIキーを正しく設定

4. **ポートが使用中**
   - 3001番ポート（サーバー）と5173番ポート（クライアント）が空いていることを確認

### ログの確認

起動時に表示されるログを確認し、エラーメッセージがあれば対応してください。

## 📞 サポート

問題が発生した場合は、以下の情報とともにご連絡ください：

- エラーメッセージ
- 使用環境（OS、Node.jsバージョン）
- 実行したコマンド

## 📄 ライセンス

このプロジェクトはMITライセンスの下で公開されています。