@Echo off
echo.

if %1==%2 (goto primeracomprobacion) else (goto seguir)
:primeracomprobacion
if %2==%3 (goto segundacomprobacion) else (goto seguir)
:segundacomprobacion
echo Los numeros son iguales
goto final
:seguir
if %1==%2 (goto iguales12) else (goto seguir1)
:iguales12
echo Los numeros 1 y 2 son iguales
goto final
:seguir1
if %1==%3 (goto iguales13) else (goto seguir2)
:iguales13
echo El numero 1 y el numero 3 son iguales
goto final
:seguir2
if %2==%3 (goto iguales23) else (goto seguir3)
:iguales23
echo El numero 2 y el numero 3 son iguales
goto final
:seguir3
if not %1==%2==%3 goto desiguales
:desiguales
echo Los numeros son desiguales
:final
pause> null
pause