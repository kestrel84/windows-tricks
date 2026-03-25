if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }

# Task name
$taskName = "start ahk"

# Action (runs PowerShell with your script)
$action = New-ScheduledTaskAction `
    -Execute "C:\Users\Max\AppData\Local\Programs\AutoHotkey\UX\AutoHotkeyUX.exe" `
    -Argument "C:\Users\Max\Documents\WindowsPowerShell\script.ahk"

# Trigger (at logon)
$trigger = New-ScheduledTaskTrigger -AtLogOn

# thingy to run as admin
$principal = New-ScheduledTaskPrincipal -UserId $env:USERNAME

# Register the task
Register-ScheduledTask `
    -TaskName $taskName `
    -Action $action `
    -Trigger $trigger `
    -Principal $principal `
    -Description "Runs ahk script at logon"