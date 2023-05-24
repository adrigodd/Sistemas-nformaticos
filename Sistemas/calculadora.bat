@echo off
title calculadora
:inicio
echo.
echo    ****************************************
echo    **                                    **
echo    **	CALCULADORA PERSONAL             **
echo    **                                    **
echo    ****************************************
echo.
echo         ***********MENU***********
echo         **************************
echo         ** 1. SUMAR             **
echo         ** 2. RESTAR            **
echo         ** 3. MULTIPLICAR       **
echo         ** 4. DIVIDIR           **
echo         ** 5. CREDITOS          **
echo         ** 6. SABER MAS         **
echo         ** 7. SALIR             **
echo         **************************
echo         **************************


set /p opcion= Selecciona una opcion: 
if not  %opcion% GTR 7 goto operacion
if %opcion% GTR 7 echo introduce un numero hasta 7 maximo 
pause
cls
echo.
goto inicio
:operacion
if %opcion% == 1 goto sumar
if %opcion% == 2 goto restar
if %opcion% == 3 goto multiplicar
if %opcion% == 4 goto dividir
if %opcion% == 5 goto creditos
if %opcion% == 6 goto saber mas
if %opcion% == 7 goto salir

:sumar
cls
echo *******************
echo *Has elegido sumar*
echo *******************
set /p n1= Escribe el primer numero: 
set /p n2= Escribe el segundo numero: 
set /a resultado= %n1% + %n2%
echo Da como resultado %resultado%
set /p otra= Continuar(s/n):
cls 
if %otra% == s (goto inicio) else (goto fin)
pause


:restar
cls
echo *******************
echo *Has elegido restar*
echo *******************
set /p n1= Escribe el primer numero: 
set /p n2= Escribe el segundo numero: 
set /a resultado= %n1% - %n2%
echo Da como resultado %resultado%
set /p otra= Continuar(s/n):
cls 
if %otra% == s (goto inicio) else (goto fin)
pause


:multiplicar
cls
echo *************************
echo *Has elegido multiplicar*
echo *************************
set /p n1= Escribe el primer numero: 
set /p n2= Escribe el segundo numero: 
set /a resultado= %n1% * %n2%
echo Da como resultado %resultado%
set /p otra= Continuar(s/n):
cls 
if %otra% == s (goto inicio) else (goto fin)
pause


:dividir
cls
echo *********************
echo *Has elegido dividir*
echo *********************
set /p n1= Escribe el primer numero: 
set /p n2= Escribe el segundo numero: 
set /a resultado= %n1% / %n2%
echo Da como resultado %resultado%
set /p otra= Continuar(s/n):
cls 
if %otra% == s (goto inicio) else (goto fin)
pause


:creditos
cls
echo **********************
echo *Has elegido creditos*
echo **********************
echo El programa esta realizado por un estudiante muy guapo llamado Ivan, que esta realizando el curso de DAM en el medac, con 18 años.
set /p otra= Continuar(s/n):
cls 
if %otra% == s (goto inicio) else (goto fin)
pause

:saber mas
cls
echo ***********************
echo *Has elegido saber mas*
echo ***********************
start https://gmail.com
pause
set /p otra= Continuar(s/n):
cls 
if %otra% == s (goto inicio) else (goto fin)
pause
:salir
exit











:fin
exit
