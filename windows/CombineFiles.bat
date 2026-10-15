@echo off
chcp 65001 >nul
set "output=%~dp0combined_files.txt"

:: Clear previous output if it exists in the same folder
if exist "%output%" del "%output%"

:process
:: If no more files are being dragged/passed, exit the loop
if "%~1"=="" goto end

echo ======================================== >> "%output%"
echo FILE: %~nx1 >> "%output%"
echo ======================================== >> "%output%"
echo. >> "%output%"

:: Append the file content
type "%~1" >> "%output%"
echo. >> "%output%"
echo. >> "%output%"

:: Shift to the next dragged file
shift
goto process

:end
echo Done! Combined file saved to the same folder as combined_files.txt
timeout /t 3 >nul
