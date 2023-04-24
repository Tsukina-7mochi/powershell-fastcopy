$config = Get-Content -Raw ./config.json | ConvertFrom-Json
$root = Read-Host "Enter root destination directory"

foreach($profile in $config.profiles) {
    $cliArgs = @("/auto_close /estimate /force_close /no_ui")
    $cliArgs += ($profile.sources | ForEach-Object { '"' + $_ + '"' })
    $cliArgs += '"/to=' + $root + "/" + $profile.destination + '"'

    Write-Host ($config.binary + " " + ($cliArgs -join " "))
    Start-Process -FilePath $config.binary -ArgumentList $cliArgs -NoNewWindow -Wait
}
