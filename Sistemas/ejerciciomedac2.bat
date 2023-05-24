@echo off
title ejercicio2
rem El primer valor será una extensión (bat, doc, pdf, etc...) 
rem El segundo valor será un nombre de directorio (inventado) 
rem Con esos datos, listará todos los archivos con la extensión indicada, 
rem creará el directorio y los copiará dentro de él. Finalmente mostrará el 
rem árbol de directorios con la opción /F. 

dir *.%1
md %2

xcopy  %1 %2
tree %2 /f
pause
exit