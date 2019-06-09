@echo off

rem newutil.bat
rem
rem	Script that uses template system
rem to create and pre-populate an "empty" batch script

CALL chkenv.bat
IF ERRORLEVEL 1 EXIT /b 1
setlocal enableextensions

CALL :Konstruktor
CALL :NewShootil
endlocal

GOTO :EOF

:Konstruktor
rem		vars
SET 	"CONFIG_DIR=%~dp0"
IF NOT "%2"=="" (SET "TARGET_OUT=%2") ELSE CALL :CatchBadSyntax
SET		"BINSTUB=.\_stub.bat"
SET		"UTILTEM=.\_newutil.bat"
IF NOT DEFINED EDITOR SET "EDITOR=notepad.exe"

GOTO :EOF

:NewShootil

IF NOT EXIST %CONFIG_DIR\%TARGET_OUT%.bat (
	COPY %BINSTUB% + %UTILTEM% %CONFIG_DIR%\%TARGET_OUT%.bat
	%EDITOR% %CONFIG_DIR%\%TARGET_OUT%.bat	
)

CALL :Destruktor

GOTO :EOF

:CatchBadSyntax
ECHO	Please specify new file name (no spaces).
GOTO :EOF

:Destruktor

GOTO :EOF
