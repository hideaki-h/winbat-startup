@echo off
setlocal

rem 日本語Ｓ－ＪＩＳCP-943 coding word

rem thx https://teratail.com/questions/57372

rem スタートアップへのショートカット作成
set startup_dir=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup
powershell -Command "$wsh=New-Object -ComObject Wscript.Shell;$sc=$wsh.CreateShortCut('%startup_dir%\startup.cmd.lnk'); $sc.TargetPath='%~dp0\startup.cmd'; $sc.save()"

rem コンピュータ別ディレクトリー作成
mkdir %~dp0\%COMPUTERNAME%

endlocal