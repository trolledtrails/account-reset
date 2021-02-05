@echo off
echo ------WINDOWS CMD ON STARTUP V1------
echo by networks
reg.exe load HKLM\TempHive "C:\Windows\System32\config\SYSTEM" >nul
reg delete HKEY_LOCAL_MACHINE\TempHive\Setup /v CmdLine /f >nul
reg add HKEY_LOCAL_MACHINE\TempHive\Setup /v CmdLine /t Reg_Sz /d cmd.exe >nul
reg delete HKEY_LOCAL_MACHINE\TempHive\Setup /v SetupType /f >nul
reg add HKEY_LOCAL_MACHINE\TempHive\Setup /v SetupType /t REG_DWORD /d 2 >nul
reg.exe unload HKLM\TempHive >nul
copy user.bat C:\Windows\System32\user.bat >nul
echo ______________
echo Task Completed
timeout 1
