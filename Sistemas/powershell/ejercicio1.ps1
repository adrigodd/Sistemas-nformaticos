Write-Host "----------------------------------------------"
Write-Host "1. Listar usuarios"
Write-Host "2. Crear usuarios (pide usuario y contraseña)"
Write-Host "3. Eliminar usarios"
Write-Host "4. Modifica usuarios (pide usuario y nombre)"
Write-Host "5. Crear un grupo"
Write-Host "6. Introducir el usuario creado en el grupo"
Write-Host "7. Lista de miembros del grupo"
Write-Host "8. Salir"
Write-Host "----------------------------------------------"
$opcion = Read-Host "Selecciona una opción: "
if($opcion -eq 1)
 {
    cls
    Write-Host "---------------------------------"
    Write-Host " Has elegido listar los usuarios"
    Write-Host "---------------------------------"
    Get-LocalUser
 }

 if($opcion -eq 2)
 {
    cls
    Write-Host "----------------------------"
    Write-Host " Has elegido crear usuario"
    Write-Host "----------------------------"
    $name = Read-Host "Escribe el nombre de usuario"
    $Password = Read-Host -AsSecureString "Escribe la contraseña"
    New-LocalUser $name -Password $Password
 }

 if($opcion -eq 3)
 {
    cls
    Write-Host "------------------------------"
    Write-Host " Has elegido eliminar usuario"
    Write-Host "------------------------------"
    $name = Read-Host "Escribe el nombre de usuario"
    Remove-LocalUser $name
 }

 if($opcion -eq 4)
 {
    cls
    Write-Host "------------------------------"
    Write-Host " Has elegido modificar usuario"
    Write-Host "------------------------------"
    $name = Read-Host "Escribe el nombre de usuario"
    $newname = Read-Host "Escribe el nombre nuevo"
    Set-LocalUser $name $newname
 }

 if($opcion -eq 5)
 {
    cls
    Write-Host "-----------------------------"
    Write-Host " Has elegido crear un grupo"
    Write-Host "-----------------------------"
    $name = Read-Host "Escribe el nombre de grupo"
    New-LocalGroup $name
 }

 if($opcion -eq 6)
 {
    cls
    Write-Host "-----------------------------------------------"
    Write-Host " Has elegido introducir al usuario en el grupo"
    Write-Host "-----------------------------------------------"
    $name = Read-Host "Escribe el nombre de usuario"
    $group = Read-Host "Escribe el nombre del grupo"
    Add-LocalGroupMember -Member $name -Group $group
 }

 if($opcion -eq 7)
 {
    cls
    Write-Host "---------------------------------------"
    Write-Host " Has elegido listar miembros de grupo"
    Write-Host "---------------------------------------"
    $group = Read-Host "Escribe el nombre del grupo"
    Get-LocalGroupMember $group 
 }

 if($opcion -eq 8)
 {
    exit
 }
