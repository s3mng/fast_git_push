$Target="$env:USERPROFILE\bin"
New-Item -ItemType Directory -Force -Path $Target
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Copy-Item "$ScriptDir\fgp.ps1" -Destination "$Target\fgp.ps1" -Force
Write-Host "Installation complete. Add $Target to your PATH if needed, then use 'fgp.ps1' command."