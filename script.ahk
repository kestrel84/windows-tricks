A_HotkeyInterval := 2000  ; This is the default value (milliseconds).
A_MaxHotkeysPerInterval := 200


#Enter::Run "c:\Users\Max\AppData\Local\Microsoft\WindowsApps\Microsoft.WindowsTerminal_8wekyb3d8bbwe\wt.exe"

Volume_Up::WheelDown
Volume_Down::WheelUp

;; various numpad things
#HotIf WinActive("ahk_exe WindowsTerminal.exe")
Numpad8::Send "^+t"
!Left::^+Tab
!Right::^Tab
#HotIf WinExist("ahk_exe WindowsTerminal.exe")
Numpad8::WinActivate("ahk_exe WindowsTerminal.exe")
#HotIf 
Numpad8::Run "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe"


#HotIf WinActive("ahk_exe firefox.exe")
Numpad7::Send "^t"
#HotIf WinExist("ahk_exe firefox.exe")
Numpad7::WinActivate("ahk_exe firefox.exe")
#HotIf 
Numpad7::Run "C:\Program Files\Mozilla Firefox\firefox.exe"


#HotIf WinExist("ahk_exe VSCodium.exe")
Numpad9::WinActivate("ahk_exe VSCodium.exe")
#HotIf 
Numpad9::Run "C:\Users\Max\AppData\Local\Programs\VSCodium\VSCodium.exe"