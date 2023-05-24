 @echo off
rem Pasar  tres  valores  por  parámetro.  El  programa  comparará  esos  valores  y 
rem mostrará por pantalla los que sean iguales y los que no. 

if %1 == %2 goto igual
if %2 == %3 goto igualdos
if %1 == %3 goto igualtres
if not %1 ==%2 goto desigual

:igual
if %1 == %3 echo Los 3 numeros son iguales
if not %1 == %3 echo Los 2 primeros son iguales
pause
exit
:igualdos
if %2 == %1 echo los 3 numeros son iguales
if not %2 == %1 echo los 2 ultimos numeros son iguales
pause
exit

:igualtres
if %1 == %2 echo los 3 numeros son iguales
if not %1 == %2 echo el primer y tercer numero son iguales
pause
exit

:desigual
if not %1 == %3 echo ningun numero es igual
pause
exit