@Echo off
echo.
set /p PrimerNumero=dame un numero
set /p SegundoNumero=dame un numero
set /a suma= %PrimerNumero%+%SegundoNumero%
echo %suma%
set /p PrimerNumero=dame un numero
set /p SegundoNumero=dame un numero
set /a resta= %PrimerNumero%-%SegundoNumero%
echo %resta%
pause> null
pause>