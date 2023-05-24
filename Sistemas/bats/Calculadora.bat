@echo off
color 1F
echo.
:inicio
echo ***********************************************************
echo **                                                       **
echo **               CALCULADORA PERSONAL     	         **
echo **                                                       **
echo ***********************************************************
echo        ***************MENU*******************
echo        **************************************
echo        ** 1. SUMAR                         **
echo        ** 2. RESTA                         **
echo        ** 3. MULTIPLICACION                **
echo        ** 4. DIVISION                      **
echo        ** 5. CREDITOS                      **
echo        ** 6. SABER MAS                     **
echo        ** 7. SALIR                         **`
echo        **************************************
echo        **************************************
set /p opcion= Selecciona una opcion
if %opcion%==1 goto suma
if not %opcion%==1 goto seguir1
:suma
cls
echo **************************************
echo **              SUMAR               **
echo **************************************
set /p PrimerNumero=dame un numero
set /p SegundoNumero=dame un numero
set /a suma= %PrimerNumero%+%SegundoNumero%
echo el resultado es: %suma%
set /p continuar= ¿Continuar?(S/N)
if %continuar%==n (goto final) else (goto seguirfinal)
:seguirfinal
if %continuar%==N (goto final) else (goto seguirfinal2)
:seguirfinal2
if %continuar%==S (goto inicio) 
:seguirfinal3
if %continuar%==s (goto inicio)
goto final
:seguir1
if %opcion%==2 goto resta 
if not %opcion%==2 goto seguir2
:resta
cls
echo **************************************
echo **              RESTAR              **
echo **************************************
set /p PrimerNumero=dame un numero
set /p SegundoNumero=dame un numero
set /a resta= %PrimerNumero%-%SegundoNumero%
echo el resultado es: %resta%
set /p continuar= ¿Continuar?(S/N)
if %continuar%==n (goto final) else (goto seguirfinal)
:seguirfinal
if %continuar%==N (goto final) else (goto seguirfinal2)
:seguirfinal2
if %continuar%==S (goto inicio) 
:seguirfinal3
if %continuar%==s (goto inicio)
goto final
:seguir2
if %opcion%==3 goto multi 
if not %opcion%==3 goto seguir3
:multi
cls
echo **************************************
echo **          MULTIPLICAR             **
echo **************************************
set /p PrimerNumero=dame un numero
set /p SegundoNumero=dame un numero
set /a multi= %PrimerNumero%*%SegundoNumero%
echo el resultado es: %multi%
set /p continuar= ¿Continuar?(S/N)
if %continuar%==n (goto final) else (goto seguirfinal)
:seguirfinal
if %continuar%==N (goto final) else (goto seguirfinal2)
:seguirfinal2
if %continuar%==S (goto inicio) 
:seguirfinal3
if %continuar%==s (goto inicio)
goto final
:seguir3
if %opcion%==4 goto division
if not %opcion%==4 goto seguir4
:division
cls
echo **************************************
echo **             DIVIDIR              **
echo **************************************
set /p PrimerNumero=dame un numero
set /p SegundoNumero=dame un numero
set /a div= %PrimerNumero%/%SegundoNumero%
echo el resultado es: %div%
set /p continuar= ¿Continuar?(S/N)
if %continuar%==n (goto final) else (goto seguirfinal)
:seguirfinal
if %continuar%==N (goto final) else (goto seguirfinal2)
:seguirfinal2
if %continuar%==S (goto inicio) 
:seguirfinal3
if %continuar%==s (goto inicio)
goto final
:seguir4
if %opcion%==5 goto creditos
if not %opcion%==5 goto seguir5
:creditos
cls
echo **************************************
echo **             CREDITOS             **
echo **************************************
echo Trabajo duro realizado por: Adrian Sanchez
echo Espero que te haya gustado porque me ha costado lo suyo
set /p continuar= ¿Continuar?(S/N)
if %continuar%==n (goto final) else (goto seguirfinal)
:seguirfinal
if %continuar%==N (goto final) else (goto seguirfinal2)
:seguirfinal2
if %continuar%==S (goto inicio) 
:seguirfinal3
if %continuar%==s (goto inicio)
goto final
:seguir5
if %opcion%==6 goto sabermas
if not %opcion%==6 goto seguir6
:sabermas
cls
echo **************************************
echo **             SABER MAS            **
echo **************************************
timeout 5
start https://www.google.com/search?q=.bat&oq=.bat&aqs=chrome..69i57j0i512l5j69i61l2.830j0j7&sourceid=chrome&ie=UTF-8
set /p continuar= ¿Continuar?(S/N)
if %continuar%==n (goto final) else (goto seguirfinal)
:seguirfinal
if %continuar%==N (goto final) else (goto seguirfinal2)
:seguirfinal2
if %continuar%==S (goto inicio) 
:seguirfinal3
if %continuar%==s (goto inicio)
goto final
:seguir6
if %opcion%==7 goto salir
if not %opcion%==7 (goto seguir7)
:salir
cls
echo **************************************
echo **              SALIDA              **
echo **************************************
set /p salir= ¿Quieres realmente que se vaya?(S/N)
if %salir%==s (goto final) else (goto seguirfinal)
:seguirfinal
if %salir%==S (goto final) else (goto seguirfinal2)
:seguirfinal2
if %salir%==N (goto inicio) 
:seguirfinal3
if %salir%==n (goto inicio)
:seguir7
if %opcion% GTR	7 (goto tonto)
:tonto
cls
echo Picha OPCION ENTRE 1 Y 7 
goto inicio
:final
pause> null
pause