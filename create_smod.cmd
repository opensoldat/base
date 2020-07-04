@ECHO OFF
REM Build soldat.smod file
REM Requires zip (available in msys2)

PUSHD .

zip /? > NUL 2>&1
IF %ERRORLEVEL%==9009 GOTO:ERR

CD /D "%~dp0"
IF EXIST soldat.smod DEL soldat.smod

ECHO Creating 'soldat.smod' file...

CD /D "%~dp0/shared"
zip -r ../soldat.smod *

CD /D "%~dp0/client"
zip -ur ../soldat.smod configs

CD /D "%~dp0/server"
zip -ur ../soldat.smod configs

ECHO Created soldat.smod
GOTO:END

:ERR
ECHO Error: Cannot find zip executable

:END
POPD
