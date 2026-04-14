Write-Host "Max's stuff and things install/setup script"
Write-Host "==========================================="
Write-Host ""
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }

# First: install required software
Write-Host "Installing Software: Dev tools"
Write-Host " - nvm, node and npm"
winget install -e --id CoreyButler.NVMforWindows
Write-Host " - rustup, rust and cargo"
winget install -e --id Rustlang.Rustup
Write-Host " - python and uv"
winget install -e --id Python.Python.3.14
winget install -e --id astral-sh.uv 
Write-Host "Installing Software: IDEs"
Write-Host " - Jetbrains Toolbox"
winget install -e --id JetBrains.Toolbox
Write-Host " - VSCodium"
winget install -e --id VSCodium.VSCodium
Write-Host "Installing Software: Utils"
Write-Host " - Autohotkey V2:"
winget install -e --id AutoHotkey.AutoHotkey
Write-Host " - Oh My Posh:"
winget install -e --id JanDeDobbeleer.OhMyPosh
Write-Host " - eza:"
winget install -e --id eza-community.eza
Write-Host " - MobaXTerm:"
winget install -e --id Mobatek.MobaXTerm
Write-Host " - Wireguard:"
winget install -e --id WireGuard.WireGuard
Write-Host " - Firefox:"
winget install -e --id Mozilla.Firefox.en-GB


# Create AHK startup task 
# TODO: make file paths less fixed
$taskName = "start ahk"
$action = New-ScheduledTaskAction `
    -Execute "C:\Users\Max\AppData\Local\Programs\AutoHotkey\UX\AutoHotkeyUX.exe" `
    -Argument "C:\Users\Max\Documents\WindowsPowerShell\script.ahk"
$trigger = New-ScheduledTaskTrigger -AtLogOn

$principal = New-ScheduledTaskPrincipal -UserId $env:USERNAME # thingy to run as admin

Register-ScheduledTask `
    -TaskName $taskName `
    -Action $action `
    -Trigger $trigger `
    -Principal $principal `
    -Description "Runs ahk script at logon"