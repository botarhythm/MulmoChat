@echo off
echo MulmoChat デスクトップショートカットを作成しています...

REM 現在のディレクトリを取得
set "CURRENT_DIR=%~dp0"
set "SHORTCUT_PATH=%USERPROFILE%\Desktop\MulmoChat.lnk"

REM PowerShellを使用してショートカットを作成
powershell -Command "& {$WshShell = New-Object -comObject WScript.Shell; $Shortcut = $WshShell.CreateShortcut('%SHORTCUT_PATH%'); $Shortcut.TargetPath = '%CURRENT_DIR%start.bat'; $Shortcut.WorkingDirectory = '%CURRENT_DIR%'; $Shortcut.IconLocation = '%CURRENT_DIR%start.bat,0'; $Shortcut.Description = 'MulmoChat - AI Multi-modal Chat Application'; $Shortcut.Save()}"

if exist "%SHORTCUT_PATH%" (
    echo デスクトップショートカットが作成されました！
    echo %SHORTCUT_PATH%
) else (
    echo エラー: ショートカットの作成に失敗しました。
)

pause
