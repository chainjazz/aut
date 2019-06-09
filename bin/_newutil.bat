
:ScriptInfoShort
ECHO %_SCRIPTNAME%
ECHO Short description (change me)
ECHO Written by %_SCRIPTAUTHOR%
ECHO. 

GOTO :EOF

:ScriptInfoLong
ECHO %_SCRIPTNAME%
ECHO.
ECHO. 	Short description (change me)
ECHO.
CALL	:ScriptSyntax
ECHO.
ECHO.	Long description (change me)		
ECHO.	Long description (change me)
ECHO.
ECHO. 	Written by %_SCRIPTAUTHOR%
ECHO. 

GOTO :EOF

:ScriptSyntax

ECHO.	SYNTAX
ECHO.
ECHO.	Syntax description (change me)
ECHO.
ECHO.

GOTO :EOF

:MainScript
CALL :Constructor %*
CALL :GenericMethod

EXIT /b %ERRORLEVEL%

REM	### END OF MAIN ###

REM	### METHOD DEFINITIONS ###

REM		Avoid SETLOCAL within method defs, so as to facilitate
REM		variable visibility between methods

:Constructor
REM		Add commands here
GOTO :EOF

:Destructor
REM		Add commands here
GOTO :EOF

:GenericMethod
REM		Add commands here
CALL :Destructor
GOTO :EOF

:CatchGenericError
REM		Add commands here
GOTO :EOF

:CatchBadSyntaxError
CALL :ScriptSyntax
GOTO :EOF


