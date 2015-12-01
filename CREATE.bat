@echo off
cls
cd /d %~dp0
echo ****************************
echo Module de creation de ghosts
echo Lancement du GhostcastServer
echo ****************************
echo Choix du dossier de reception du ghost

For /F "Tokens=1 Delims=" %%I In ('cscript //nologo BrowseFolder.vbs') Do Set _FolderName=%%I
echo %_FolderName%
dir /B "%_FolderName%"\*.gho
echo Choix du nom de l'image Ghost (Ne pas rajouter l'extension)
echo "Nom du nouveau fichier ghost"
set /p _ghoname=
echo %_ghoname%
cd C:\Program Files (x86)\Symantec\Ghost
start ghostsrv.exe %_FolderName%\%_ghoname%.gho ghostcast -D -Disk1 -UM && echo Fin de la creation du ghost !