$entryName = "Start"
# 0x4 = disabled 
# 0x3 = enabled
$disableValue = 0x4
$folderOwner = Get-Acl -Path "C:\ProgramData\Microsoft\Windows Defender\Platform"
$owner = New-Object System.Security.Principal.NTAccount("BUILTIN\Administrators")

if ($folderOwner -ne "BUILTIN\Administrators"){
    $folderOwner.SetOwner($owner)
    $folderOwner.SetAccessRuleProtection($true, $false)
    Write-Host "Folder permissions has been fixed successfully."
} else {
    Write-Host "Folder permissions already modified."
}

#Modify "Start" entry
if((Get-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\Sense" -Name $entryName | Select-Object -ExpandProperty $entryName) -eq 4){
    Write-Host "Start entry already modified." 
} else {
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\Sense" -Name $entryName -Value $disableValue
    Write-Host "Start entry fixed." 
}

#Modify "WdBoot" entry
if((Get-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\WdBoot" -Name $entryName | Select-Object -ExpandProperty $entryName) -eq 4){
    Write-Host "WdBoot entry already modified." 
} else {
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\WdBoot" -Name $entryName -Value $disableValue
    Write-Host "WdBoot entry fixed." 
}

#Modify "WdFilter" entry
if((Get-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\WdFilter" -Name $entryName | Select-Object -ExpandProperty $entryName) -eq 4){
    Write-Host "WdFilter entry already modified." 
} else {
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\WdFilter" -Name $entryName -Value $disableValue
    Write-Host "WdFilter entry fixed." 
}

#Modify "WdNisDrv" entry
if((Get-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\WdNisDrv" -Name $entryName | Select-Object -ExpandProperty $entryName) -eq 4){
    Write-Host "WdNisDrv entry already modified." 
} else {
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\WdNisDrv" -Name $entryName -Value $disableValue
    Write-Host "WdNisDrv entry fixed." 
}

#Modify "WdNisSvc" entry
if((Get-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\WdNisSvc" -Name $entryName | Select-Object -ExpandProperty $entryName) -eq 4){
    Write-Host "WdNisSvc entry already modified." 
} else {
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\WdNisSvc" -Name $entryName -Value $disableValue
    Write-Host "WdNisSvc entry fixed." 
}

#Modify "WinDefend" entry
if((Get-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\WinDefend" -Name $entryName | Select-Object -ExpandProperty $entryName) -eq 4){
    Write-Host "WinDefend entry already modified." 
} else {
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\WinDefend" -Name $entryName -Value $disableValue
    Write-Host "WinDefend entry fixed." 
}

Write-Host "Windows Defender has been disabled successfully."