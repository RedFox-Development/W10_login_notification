# W10_login_notification
PowerShell script that on login (not on unlock) launches notification
<img src="https://api.iconify.design/mdi:powershell.svg?color=blue&height=24"/>


I created this ps1 - PowerShell - script for work use, but decided to push it here at GitHub so anyone can have it.


I set it up at Group Policy via 'Edit Group Policy'.


User Configuration > Windows Settings > Scripts (Logon/Logoff) > Logon > PowerShell Scripts > Add


I set 'For this GPO, run scripts in the following order:' as 'Run Windows PowerShell scripts last'.


Notification has text content in following form:


User: UserDomain\UserName
Device: DeviceName


UserName is aquired by using `[System.Security.Principal.WindowsIdentity]::GetCurrent().Name`

(I guess `$env:USERNAME` would be enough, but I wanted domain included)


DeviceName is aquired by using `$env:ComputerName`
