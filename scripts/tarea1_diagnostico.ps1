Write-Host "Diagnostico del Sistema"

Write-Host "Nombre del Equipo"
hostname

Write-Host "Direccion IP"
Get-NetIPAddress -AddressFamily IPv4 |
Where-Object {$_.InterfaceAlias -notlike "*Loopback*"}


Write-Host "Espacio en el Disco"
Get-PSDrive -PSProvider FileSystem
