@echo off

echo %RUN_CMD%

%RUN_CMD%

IF %ERRORLEVEL% NEQ 0 EXIT %ERRORLEVEL%
