@echo off
echo MulmoChat を停止しています...

REM Node.jsプロセスを停止
taskkill /f /im node.exe >nul 2>&1

REM Chrome/Edgeプロセス（MulmoChat用）を停止（オプション）
REM taskkill /f /im chrome.exe >nul 2>&1
REM taskkill /f /im msedge.exe >nul 2>&1

echo MulmoChat が停止されました。
pause
