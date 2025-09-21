@echo off
echo MulmoChat を起動しています...
echo.

REM 現在のディレクトリに移動
cd /d "%~dp0"

REM Node.jsがインストールされているか確認
node --version >nul 2>&1
if errorlevel 1 (
    echo エラー: Node.jsがインストールされていません。
    echo Node.jsをインストールしてから再試行してください。
    pause
    exit /b 1
)

REM pnpmがインストールされているか確認
pnpm --version >nul 2>&1
if errorlevel 1 (
    echo エラー: pnpmがインストールされていません。
    echo pnpmをインストールしてから再試行してください。
    pause
    exit /b 1
)

REM 依存関係がインストールされているか確認
if not exist "node_modules" (
    echo 依存関係をインストールしています...
    pnpm install
    if errorlevel 1 (
        echo エラー: 依存関係のインストールに失敗しました。
        pause
        exit /b 1
    )
)

REM .envファイルが存在するか確認
if not exist ".env" (
    echo エラー: .envファイルが見つかりません。
    echo .envファイルを作成してAPIキーを設定してください。
    echo.
    echo 例:
    echo OPENAI_API_KEY=your_openai_api_key_here
    echo GEMINI_API_KEY=your_gemini_api_key_here
    pause
    exit /b 1
)

echo MulmoChatを起動中...
echo.
echo サーバー: http://localhost:3001
echo クライアント: http://localhost:5173
echo.
echo ブラウザが自動で開きます...
echo 終了するにはCtrl+Cを押してください。
echo.

REM 新しいウィンドウでサーバーを起動
start "MulmoChat Server" cmd /c "pnpm dev:server"

REM 少し待ってからクライアントを起動
timeout /t 3 /nobreak >nul

REM 新しいウィンドウでクライアントを起動
start "MulmoChat Client" cmd /c "pnpm dev:client"

REM 少し待ってからブラウザを開く
timeout /t 5 /nobreak >nul
start http://localhost:5173

echo.
echo MulmoChatが起動しました！
echo ブラウザで http://localhost:5173 にアクセスしてください。
echo.
pause
