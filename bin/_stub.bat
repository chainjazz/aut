:Stub
@ECHO off

REM		This script depends on chkenv.bat
REM		to check for Windows command extensions feature
REM		(available on most versions in use today)

SET "DBGCHK="
IF EXIST "%~dp0\chkenv.bat" (
	CALL chkenv.bat
	IF ERRORLEVEL 1 EXIT /b 1
) ELSE ( EXIT /b 2 )

SETLOCAL enableextensions enabledelayedexpansion
SET		"_SCRIPTNAME=%0"

REM		Set author name here. This serves as both
REM		code documentation and printable info
SET		"_SCRIPTAUTHOR=Anonymous"

CALL :MainScript %*

REM		ENDLOCAL is implied after SETLOCAL, but just in case this changes
ENDLOCAL

GOTO :EOF
