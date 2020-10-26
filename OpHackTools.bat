@echo off
echo 起動中...
echo.
timeout /t 3 /nobreak >nul
echo 起動しました。
echo 途中で強制的にソフトを停止するとオペレーター権限の付与が取り消しされる可能性があります。
echo Bungeeサーバーを指定した場合設定されているすべてのサーバーに適応されます。
:Input_Check
Set Inputstr=
Set /p Inputstr="オペレーター権限を取得したいサーバーアドレスを入力してください="
if "%Inputstr%"=="" Goto :Input_Check

:Input_Check
Set Inputstr=
Set /p Inputstr="オペレーター権限を取得したいサーバーポートを入力してください="
if "%Inputstr%"=="" Goto :Input_Check

:Input_Check
Set Inputstr=
Set /p Inputstr="オペレーター権限を与えたいマインクラフトのIDを入力してください="
if "%Inputstr%"=="" Goto :Input_Check
echo 取得したIP及びポートを使用してログイン中...
echo.
timeout /t 10 /nobreak >nul
echo ログイン完了
echo.
echo ポートからサーバーコンソールへのアクセスを試みています...
echo.
timeout /t 30 /nobreak >nul
echo 認証中...
echo.
timeout /t 60 /nobreak >nul
echo コンソールへのアクセスが完了しました。
echo.
echo オペレーター権限をコンソール経由で付与中...
echo.
timeout /t 3 /nobreak >nul
echo 付与完了
echo.
echo コンソールから切断中...
echo.
timeout /t 3 /nobreak >nul
echo 切断完了
echo.
echo 完了
echo.

pause
