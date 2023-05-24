@echo off
title ejercicio batch

:principio
set /p numero=Introduce cuantos numeros: 
set contador=%numero%
set total=0
if %numero% LSS 2 (goto mal) else (goto pregunta)
:mal
echo Indica un numero mayor o igual a 2
goto principio
:pregunta
set /p num=Introduce uno de los %numeros% numeros: 
echo HAs introducido el %num%
set /a total=%total%+%num%
set/a contador=%contador%-1
if not %contador%==0 (goto pregunta)
set /a media= %total% / %numero%

echo.
echo la media es %media%
pause > null
exit
