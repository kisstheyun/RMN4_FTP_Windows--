@echo off
TITLE ▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉=-=▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉
echo.▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉=-=客户端▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉
:: BatchGotAdmin
:-------------------------------------
REM  --> 正在检查						▉▉▉▉▉▉▉▉▉▉▉▉
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> 如果发生错误，说明我们还未获得管理员权限
if '%errorlevel%' NEQ '0' (
    echo 请求获取管理员权限...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
:--------------------------------------
:0
color 2F
cls
echo.▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉
echo.▉▉1.创建RMN4_FTP网络▉▉▉ ▉  ▉▉▉▉▉▉▉▉▉▉▉▉▉ ▉▉▉▉  ▉▉▉▉▉▉▉
echo.▉▉▉▉▉▉▉▉▉▉▉▉ ▉ ▉▉▉▉▉▉  ▉▉▉▉▉   ▉▉  ▉ ▉▉▉▉▉▉▉▉▉▉
echo.▉▉2.启动RMN4_FTP网络▉▉▉   ▉▉▉▉▉▉ ▉    ▉▉▉ ▉▉▉▉   ▉▉▉▉▉▉▉▉
echo.▉▉▉▉▉▉▉▉▉▉▉▉   ▉▉▉▉▉  ▉  ▉ ▉▉▉ ▉▉▉▉▉ ▉▉▉▉▉▉▉▉▉▉
echo.▉▉3.关闭RMN4_FTP网络▉▉▉    ▉▉▉▉▉ ▉ ▉ ▉▉▉▉  ▉▉▉▉ ▉▉▉▉▉▉▉▉
echo.▉▉▉▉▉▉▉▉▉▉▉▉ ▉  ▉▉▉▉ ▉ ▉ ▉▉▉▉▉  ▉▉  ▉▉▉▉▉▉▉▉▉▉▉
echo.▉▉4.连接RMN4_FTP服务▉▉▉▉▉ ▉   ▉▉▉ ▉ ▉  ▉▉▉▉▉ ▉▉▉ ▉▉▉▉▉▉▉▉▉
echo.▉▉▉▉▉▉▉▉▉▉▉▉ ▉▉  ▉▉ ▉ ▉▉  ▉▉▉ ▉ ▉▉▉ ▉▉▉▉▉▉▉▉▉▉▉
echo.▉▉5.高级选项/只有退出 ▉▉ ▉▉   ▉▉▉▉▉▉▉▉▉▉  ▉▉    ▉▉▉▉▉▉▉▉▉
echo.▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉
set /p c=请输入数字并回车(输入6退出):
if %c%==1 goto 1
if %c%==2 goto 2
if %c%==3 goto 3
if %c%==4 goto 4
if %c%==5 goto 5
if %c%==6 goto 6
echo.

:1
cls
color 12
echo.▉▉▉▉▉▉
echo.创建=-=
echo.▉▉▉▉▉▉
netsh wlan set hostednetwork mode=allow ssid=RMN4_FTP key=toor1234
goto 0

:2
cls
echo.▉▉▉▉▉▉
echo.启动=-=
echo.▉▉▉▉▉▉
netsh wlan start hostednetwork
goto 0

:3
cls
echo.▉▉▉▉▉▉
echo.关闭=-=
echo.▉▉▉▉▉▉
netsh wlan stop hostednetwork
goto 0

:4
echo.▉▉▉▉▉▉
echo.浏览=-=
echo.▉▉▉▉▉▉
cls
echo. 先在手机端启用静态IP(192.168.173.187),然后再继续下一步
pause
explorer ftp://192.168.173.187:2121
goto 0

:5
exit