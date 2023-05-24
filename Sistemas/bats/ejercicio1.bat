@Echo off
echo.
:principio
set /p cantidad=Dame con cuantos numeros hago la media
set contador=%cantidad%
set total=0
if %cantidad% LSS 2 (goto mal) else (goto pregunta)
set /p numero=Dame con cuantos numeros hago la media
:mal
echo Indica un numero mayor o igual a 2
goto principio
:pregunta
set /p num=introduce uno de los %numeros% numero
echo Has introcido el %num%
set /a total=%total%+%num%
set /a contador=%contador%-1
if not %contador%==0 goto pregunta
set /a media=%total% / %cantidad%
echo.
echo La media es %media%
pause> null
exit