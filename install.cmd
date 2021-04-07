@chcp 1252 >nul
@echo off

REM xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
echo -------------------------------------------------
echo - DIRETORIO DE INSTALACAO:
echo -------------------------------------------------
REM DEFINIR O DIRETORIO AONDE VAI BAIXAR E INSTALAR
REM --------------------------------------------------
set pastaRaiz=C:\Users\Public\Documents
cd %pastaRaiz%
echo %pastaRaiz%
echo -------------------------------------------------
REM xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx


REM xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
echo -------------------------------------------------
echo - Instalando WGET
echo -------------------------------------------------
if exist "%CD%\wget.exe" erase "%CD%\wget.exe"
bitsadmin /transfer wcb /priority high https://eternallybored.org/misc/wget/1.21.1/32/wget.exe %CD%\wget.exe
REM xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx


REM xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
echo -------------------------------------------------
echo - Instalando PRINT
echo -------------------------------------------------
if exist "%CD%\lightshot.exe" erase "%CD%\lightshot.exe"
wget https://app.prntscr.com/build/setup-lightshot.exe -O lightshot.exe
"%CD%\lightshot.exe" /VERYSILENT /NORESTART
REM xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx



REM xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
echo -------------------------------------------------
echo - Instalando Git
echo -------------------------------------------------
if exist "%CD%\gitInstall.exe" erase "%CD%\gitInstall.exe"
wget https://www.traz.cafe/Git.exe -O gitInstall.exe
gitInstall.exe /VERYSILENT
REM xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx



REM xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
echo -------------------------------------------------
echo - BAIXANDO PACOTE installPacksOld
echo -------------------------------------------------
if exist "%programfiles%\Git\bin\git.exe" "%programfiles%\Git\bin\git.exe" clone https://github.com/edvacco/installPacksOld.git
if exist "%programfiles(x86)%\Git\bin\git.exe" "%programfiles(x86)%\Git\bin\git.exe" clone https://github.com/edvacco/installPacksOld.git
cd %pastaRaiz%
REM xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx



REM xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
echo -------------------------------------------------
echo - Instalando IPBan
echo -------------------------------------------------
cd "installPacksOld"
cd "IPBan"
cmd /c 00_instalador_Servico.cmd
cd %pastaRaiz%
REM xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx



REM xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
echo -------------------------------------------------
echo - Instalando offWinDefender
echo -------------------------------------------------
cd "installPacksOld"
cd "ferramentas"
REM if exist "offWinDefender.reg" REG IMPORT offWinDefender.reg
cd %pastaRaiz%
REM xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx



REM xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
echo -------------------------------------------------
echo - Instalando EDGE
echo -------------------------------------------------
cd "installPacksOld"
cd "ferramentas"
if exist "MicrosoftEdge.msi" MicrosoftEdge.msi /passive /quiet
cd %pastaRaiz%
REM xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx



REM xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
echo -------------------------------------------------
echo - Instalando FILEZZILA
echo -------------------------------------------------
if exist "%programfiles%\FileZilla FTP Client\uninstall.exe" "%programfiles%\FileZilla FTP Client\uninstall.exe" /S
if exist "%programfiles(x86)%\FileZilla FTP Client\uninstall.exe" "%programfiles(x86)%\FileZilla FTP Client\uninstall.exe" /S
cd "installPacksOld"
cd "ferramentas"
if exist "FileZilla.exe" FileZilla.exe /S
cd %pastaRaiz%
REM xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx



REM xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
echo -------------------------------------------------
echo - Instalando WINRAR
echo -------------------------------------------------
cd "installPacksOld"
cd "ferramentas"
if exist "wrar600.exe" wrar600.exe /S
cd %pastaRaiz%
REM xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx



REM xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
echo -------------------------------------------------
echo - Instalando NOTEPAD++
echo -------------------------------------------------
cd "installPacksOld"
cd "ferramentas"
if exist "notepad++.exe" notepad++.exe /S
cd %pastaRaiz%
REM xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx



REM xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
echo -------------------------------------------------
echo - Instalando OWNCLOUD
echo -------------------------------------------------
cd "installPacksOld"
cd "ferramentas"
if exist "ownCloud.msi" ownCloud.msi /passive /quiet
cd %pastaRaiz%
REM xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx




