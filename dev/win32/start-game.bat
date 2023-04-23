@echo off

title Toontown 2 Game Launcher

echo Choose your connection method!
echo.
echo #1 - Localhost
echo #2 - Dev Server
echo #3 - Custom
echo.

:selection

set INPUT=-1
set /P INPUT=Selection: 

if %INPUT%==1 (
    set TTS_GAMESERVER=http://localhost:6667
) else if %INPUT%==2 (
    set TTS_GAMESERVER=http://unite.sunrise.games:6667
) else if %INPUT%==3 (
    echo.
    set /P TTS_GAMESERVER=Gameserver: 
) else (
	goto selection
)

echo.

if %INPUT%==2 (
    set /P ttsUsername="Username: "
    set /P ttsPassword="Password: "
) else if %INPUT%==2 (
    set /P ttsUsername="Username: "
    set /P ttsPassword="Password: "
) else (
    set /P TTS_PLAYCOOKIE=Username: 
)

echo.

echo ===============================
echo Starting Toontown Online 2: The Return...
echo ppython: "C:\Panda3D-1.10.0\python\ppython.exe"

if %INPUT%==2 (
    echo Username: %tt2Username%
) else if %INPUT%==2 (
    echo Username: %tt2Username%
) else (
    echo Username: %TT2_PLAYCOOKIE%
)

echo Gameserver: %TT2_GAMESERVER%
echo ===============================

cd ../../

:main
    "C:\Panda3D-1.10.0\python\ppython.exe" -m toontown.toonbase.ToontownStart
pause

goto main
