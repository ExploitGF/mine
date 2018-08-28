$url = "https://notepad-plus-plus.org/repository/7.x/7.5.8/npp.7.5.8.Installer.exe"
$output = "C:\Users\Public\npp.exe"
$start_time = Get-Date

Import-Module BitsTransfer
Start-BitsTransfer -Source $url -Destination $output
#OR
Start-BitsTransfer -Source $url -Destination $output -Asynchronous

Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"
