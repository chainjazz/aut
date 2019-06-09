@ECHO OFF

REM chkenv
REM
REM	Performs sanity checks on calling context

GOTO InterpreterSystemCheck

:InterpreterSystemCheck
IF NOT DEFINED CMDEXTVERSION (
	IF NOT "%CMDEXTVERSION%"=="2" (
		GOTO CatchWrongVersion
	)
)

IF DEFINED DBGCHK GOTO CatchWrongVersion

GOTO StandardPathCheck

:StandardPathCheck
IF NOT DEFINED HOME SET "HOME=%USERPROFILE%"

IF DEFINED DBGCHK EXIT /b 2
)

EXIT /b 0

:CatchWrongVersion
ECHO. This script requires newer OS version.
EXIT /b 1

