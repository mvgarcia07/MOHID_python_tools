@echo off
cls

rem "dataDir" is named according to the testcase ----- CHANGE THIS HERE --------
set dataDir=../TestFiles

rem "executables" are renamed and called from their directory
set src=../src
set MXDMF="%src%/MXDMF_run.py"

rem CODES are executed according the selected parameters of execution in this case
python %MXDMF% -i %dataDir%
rem python %MXDMF% -i %dataDir% -g true
rem python %MXDMF% -i %dataDir% -g true -fd "2000-08-19 01:01:35"
rem python %MXDMF% -i %dataDir% -g true -fd "2000-08-19 01:01:35" -ld "2000-08-20 00:00:00"
if not "%ERRORLEVEL%" == "0" goto fail

:success
echo All done
goto end

:fail
echo Execution aborted.

:end
pause