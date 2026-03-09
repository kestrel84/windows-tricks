# Windows Tricks
A collection of tricks to make windows suck less. For now, it's a powershell profile and an autohotkey script, along with some useful links.

Required software:
- [Autohotkey v2](https://www.autohotkey.com/)
- [Oh My Posh](https://ohmyposh.dev/docs/installation/windows)
- [eza](https://github.com/eza-community/eza/blob/main/INSTALL.md)

What it do:
- the profile:
    - makes oh my posh the prompt in powershell
    - aliases the default powershell `ls` command (aka `dir` or `Get-ChildItem`) to be `eza -l --icons=always -a` instead
- the hotkeys:
    - opens a powershell in home on win+enter
    - remaps the keyboard volume controls to scroll up and down
    - on numpad 7, opens/focuses/creates a new tab in firefox if it is closed/open but not focused/focused respectively
    - the same behavior but for powershell on numpad 8
    - opens/focuses vscodium if it is closed/open but not focused respectively on numpad 9 (doesn't do any new tab stuff)

Other miscellaneous windows tricks:
- Activation scripts from https://massgrave.dev/
- Post-install cleanup, bloat removal and stuff from [Chris Titus](https://christitus.com/)'s winUtil - `irm "https://christitus.com/win" | iex` in an admin powershell
- Remember that winget exists
- You can change the colour scheme of the windows terminal in the settings (the arrow next to the new tab button and then settings, or Ctrl+,)
