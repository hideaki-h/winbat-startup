rem @echo off
setlocal

rem ���{��r�|�i�h�rCP-943 coding word

rem ���ʊ��ϐ��Z�b�g
if exist %~dp0\env.ini (
	for /F "eol=# tokens=1,2* delims==" %%i in (%~dp0\env.ini) do (
		call set %%i=%%j
	)
)
rem �ʊ��ϐ��Z�b�g
if exist %~dp0\%COMPUTERNAME%\env.ini (
	for /F "eol=# tokens=1,2* delims==" %%i in (%~dp0\%COMPUTERNAME%\env.ini) do (
		call set %%i=%%j
	)
)

rem explorer�I�[�v��
if not "%explorer_list%"=="" (
	for %%d in (%explorer_list%) do (
		explorer %%d
	)
)

rem EXE���s
if not "%exe_list%"=="" (
	for %%e in (%exe_list%) do (
		%%e
	)
)

rem �ʃo�b�`���s
if exist %~dp0\%COMPUTERNAME%\startup.cmd (
	cd /d %~dp0\%COMPUTERNAME%
	call startup.cmd
)

endlocal
