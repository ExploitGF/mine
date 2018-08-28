$url = "https://github.com/xmrig/xmrig/releases/download/v2.6.4/xmrig-2.6.4-gcc-win64.zip"
$output = "C:\Users\Public\xmrig.zip"
$start_time = Get-Date

Import-Module BitsTransfer
Start-BitsTransfer -Source $url -Destination $output
#OR
Start-BitsTransfer -Source $url -Destination $output -Asynchronous

Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"
