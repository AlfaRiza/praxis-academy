@ECHO OFF
PowerShell.exe -Command "& '%~dpn0.ps1'"
PAUSE
Write-Output 'Custom PowerShell profile in effect!'
Add-Content -Path 'C:\Users\ACER\praxis-academy\kemampuan-dasar-1\latihan\shellscripts\FirstISEScript.ps1' -Value "[ZoneTransfer]`nZoneId=3" -Stream 'Zone.Identifier'
Clear-Content -Path 'C:\Users\ACER\praxis-academy\kemampuan-dasar-1\latihan\shellscripts\FirstISEScript.ps1' -Stream 'Zone.Identifier'
if (([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))
{Write-Output 'Running as Administrator!'}
else
{Write-Output 'Running Limited!'}
Pause
PowerShell.exe -Command "& {Start-Process PowerShell.exe -ArgumentList '-ExecutionPolicy Bypass -File ""%~dpn0.ps1""' -Verb RunAs}"
PowerShell.exe -NoProfile -Command "& {Start-Process PowerShell.exe -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""%~dpn0.ps1""' -Verb RunAs}"
PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%~dpn0.ps1'"