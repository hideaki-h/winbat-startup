@echo off
setlocal

rem ���{��r�|�i�h�rCP-943 coding word

rem thx https://teratail.com/questions/57372

rem �X�^�[�g�A�b�v�ւ̃V���[�g�J�b�g�쐬
set startup_dir=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup
powershell -Command "$wsh=New-Object -ComObject Wscript.Shell;$sc=$wsh.CreateShortCut('%startup_dir%\startup.cmd.lnk'); $sc.TargetPath='%~dp0\startup.cmd'; $sc.save()"

rem �R���s���[�^�ʃf�B���N�g���[�쐬
mkdir %~dp0\%COMPUTERNAME%

endlocal