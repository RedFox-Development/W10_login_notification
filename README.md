# W10_login_notification
PowerShell script that on login (not on unlock) launches notification

I created this ps1 - PowerShell - script for work use, but decided to push it here at GitHub so anyone can have it.

I set it up at Group Policy via 'Edit Group Policy'.

User Configuration > Windows Settings > Scripts (Logon/Logoff) > Logon > PowerShell Scripts > Add

I set 'For this GPO, run scripts in the following order:' as 'Run Windows PowerShell scripts last'.
