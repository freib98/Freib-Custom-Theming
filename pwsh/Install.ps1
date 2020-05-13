if (!(Test-Path -Path $PROFILE.CurrentUserAllHosts)) {
    New-Item -Type File -Path $PROFILE.CurrentUserAllHosts -Force
}

Add-Content -Path $PROFILE.CurrentUserAllHosts -Value "`n`n# --- Prompt ---"
Add-Content -Path $PROFILE.CurrentUserAllHosts -Value $(Get-Content .\profile.ps1 -Raw)
