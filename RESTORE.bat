@echo off
cls
cd /d %~dp0
echo *******************************
echo Module de deploiement de ghosts
echo en mode multicast salle entiere
echo Lancement du Ghostcast
echo *******************************
:A
echo Choix du ghost a deployer

For /F "Tokens=1 Delims=" %%I In ('cscript //nologo BrowseFile.vbs') Do Set _FolderName=%%I
echo %_FolderName%
dir /B "%_FolderName%"\*.gho
echo Renseigner le nom du .gho a deployer (sans extension)
set /p _ghoname=""
if exist "%_FolderName%\%_ghoname%.gho" goto :FIN
goto :A



:B
echo **************************************************
echo Index du nom d hote
echo Ex : MSA-CDR, ou BAR-206
set /p hostindex=""
echo %hostindex%
echo **************************************************
echo 


:C
echo %_ghoname%
echo **************************************************
echo 

:D

echo **************************************************
echo Maintenant que les parametres Ghost sont definis
echo il faut designer les noms d hotes actuels pour
echo lancer le ghost en remoute !
echo **************************************************
REM affiner les parametres du ghostcast nbre d hotes et hostnames




:FIN
echo Nombre dhotes a attendre avant deploiement ?
set /p nbrehost=""
start ghostsrv.exe "%_FolderName%\%_ghoname%.gho" ghostcast -UM -N%nbrehost%
