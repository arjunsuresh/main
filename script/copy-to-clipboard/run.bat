rem native script

%CM_PYTHON_BIN_WITH_PATH% %CM_TMP_CURRENT_SCRIPT_PATH%\code.py
IF %ERRORLEVEL% NEQ 0 EXIT %ERRORLEVEL%
