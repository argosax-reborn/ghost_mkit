@echo off
cls
cd /d %~dp0
echo *************************
echo Bienvenue dans GHOST-MKIT
echo *************************
echo       - M@JesTiK - 
echo - Majestikfortress.com -
echo *************************
echo *************************
echo Outil dedie au deploiment
echo  automatise sous Ghost
echo *************************

:debut
echo
echo 1) Creer une image
echo 2) Restaurer une image

::command
set /p choix="Creer une image ou restaurer ?"
If "%choix%"=="" goto :sub_error
If /i "%choix%"=="1" goto :TacheA
If /i "%choix%"=="2" goto :TacheB

:TacheA
call CREATE.BAT
goto end
:TacheB
Call RESTORE.bat
goto end

:end
echo Fin de l operation demandee !
pause
