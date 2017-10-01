rem @echo off
setlocal

rem 日本語Ｓ－ＪＩＳCP-943 coding word

rem 共通環境変数セット
if exist %~dp0\env.ini (
	for /F "eol=# tokens=1,2* delims==" %%i in (%~dp0\env.ini) do (
		call set %%i=%%j
	)
)
rem 個別環境変数セット
if exist %~dp0\%COMPUTERNAME%\env.ini (
	for /F "eol=# tokens=1,2* delims==" %%i in (%~dp0\%COMPUTERNAME%\env.ini) do (
		call set %%i=%%j
	)
)

rem explorerオープン
if not "%explorer_list%"=="" (
	for %%d in (%explorer_list%) do (
		explorer %%d
	)
)

rem EXE実行
if not "%exe_list%"=="" (
	for %%e in (%exe_list%) do (
		%%e
	)
)

rem 個別バッチ実行
if exist %~dp0\%COMPUTERNAME%\startup.cmd (
	cd /d %~dp0\%COMPUTERNAME%
	call startup.cmd
)

endlocal
