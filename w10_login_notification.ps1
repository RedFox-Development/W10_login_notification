Add-Type -AssemblyName System.Windows.Forms

$currentUser = [System.Security.Principal.WindowsIdentity]::GetCurrent().Name
$deviceName = $env:ComputerName
$userName = $env:USERNAME

$notificationContent = 'User: ' + $currentUser + "`n" + 'Device: ' + $deviceName

$global:balloon = New-Object System.Windows.Forms.NotifyIcon
$path = (Get-Process -id $pid).Path
$balloon.Icon = [System.Drawing.Icon]::ExtractAssociatedIcon($path) 
$balloon.BalloonTipIcon = [System.Windows.Forms.ToolTipIcon]::None
$balloon.BalloonTipText = 'Login information'
$balloon.BalloonTipTitle = $notificationContent 
$balloon.Visible = $true 
$balloon.ShowBalloonTip(60000)