setlocal enabledelayedexpansion

:: Read the configuration file
set _CONFIG_FILE= ..\config\osrm_config.cmd
if not exist %_CONFIG_FILE% (
    echo %0: Unable to find config file "%_CONFIG_FILE%"
    exit /b 1
)
call %_CONFIG_FILE%

cd ..
cd app\osrm\

osrm-extract ..\..\data_dir\denmark-latest.osm.pbf -p %LUA_PROFILE% >> ..\..\logs\osrm-extract.txt
osrm-contract ..\..\data_dir\denmark-latest.osrm >> ..\..\logs\osrm-contract.txt

cd ..\..
cd bin