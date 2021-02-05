@echo off
echo ------WINDOWS LOCAL ACCOUNT PASSWORD RESET V2------
echo by networks
net user Administrator /active:yes
net user
set /p userN="username? "
net user %userN% *
echo Task Completed
timeout 1