:: Read the configuration file
set _CONFIG_FILE= ..\config\osrm_config.cmd
if not exist %_CONFIG_FILE% (
    echo %0: Unable to find config file "%_CONFIG_FILE%"
    exit /b 1
)
call %_CONFIG_FILE%

cd ..
cd app\osrm\
osrm-routed.exe %OSRM_PATH%%OSRM_FILE% -p %OSRM_PORT%