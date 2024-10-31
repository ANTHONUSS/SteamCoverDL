@echo off
:: Open SteamDB in browser
start https://steamdb.info/

:: Ask ID from user
set /p ID=ID of steam game :

:: Set ariables
set destination=%USERPROFILE%\Downloads
set url=https://steamcdn-a.akamaihd.net/steam/apps/%ID%/
set logo=logo.png
set banner=library_600x900_2x.jpg
set library=library_hero.jpg

:: Téléchargement des fichiers avec curl
curl -o "%destination%\%library%" %url%%library%
curl -o "%destination%\%banner%" %url%%banner%
curl -o "%destination%\%logo%" %url%%logo%
