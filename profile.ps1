oh-my-posh init pwsh --config '~/Documents/WindowsPowerShell/emodipt-extend.omp.json' --eval | Invoke-Expression
function ls_func {Invoke-Expression "eza -l --icons=always -a"}
Set-Alias -Name ls -Value ls_func -Option AllScope -Scope Global
Clear-Host
