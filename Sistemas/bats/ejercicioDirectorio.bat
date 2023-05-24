@Echo off
echo.
set *.%1
dir *.%1
set /p midirectorio=Dime el directorio
MD %midirectorio%
xcopy *.%1 midirectorio
pause> null
pause