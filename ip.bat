@echo off
REM Seta os parametros para executar diretamente pelo terminal
if "%1"=="dhcp" (goto dhcp)
if "%2"=="casa" (goto casa)
if "%3"=="pref" (goto prefeitura)

REM Titulo
cls
echo.
echo Alterar IP
echo.

REM Menu
:menu
echo Opcoes:
echo 1 - DHCP
echo 2 - IP Estatico
echo 3 - Sair
echo.
set /p choose=Selecione uma opcao: 
if %choose%==1 goto dhcp
if %choose%==2 goto estatico
if %choose%==3 goto sair

REM DHCP
:dhcp
cls
runas /savecred /user:Administrator "netsh interface ip set address name= Wi-Fi dhcp"
runas /savecred /user:Administrator "netsh interface ip set dnsservers name=Wi-Fi dhcp"
goto sair

REM Menu Estatico
:estatico
cls
echo.
echo Onde voce esta?
echo.
echo 1 - Casa
echo 2 - Prefeitura
echo.
set /p choose=Selecione uma opcao: 
if %choose%==1 goto casa
if %choose%==2 goto prefeitura

REM Configuracoes de Casa
:casa
cls
runas /savecred /user:Administrator "netsh interface ip set address name= Wi-Fi static 192.168.0.200 255.255.255.0 192.168.0.1"
runas /savecred /user:Administrator "netsh interface ip add dns name=Wi-Fi 200.195.159.100 index=1"
runas /savecred /user:Administrator "netsh interface ip add dns name=Wi-Fi 189.38.95.95 index=2"
goto sair

REM Configuracoes da Prefeitura
:prefeitura
cls
runas /savecred /user:Administrator "netsh interface ip set address name= Wi-Fi static 10.0.0.101 255.255.255.0 10.0.0.1"
runas /savecred /user:Administrator "netsh interface ip add dns name=Wi-Fi 200.195.159.100 index=1"
runas /savecred /user:Administrator "netsh interface ip add dns name=Wi-Fi 189.38.95.95 index=2"
goto sair

:sair
exit