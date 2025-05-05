# Import-Module -Name Microsoft.PowerApps.Administration.PowerShell
# Import-Module -Name Microsoft.Graph

# start Timing Script run time
$sw = [System.Diagnostics.Stopwatch]::StartNew()

<#

Enter your script here...

#>

# Stop timer
$sw.Stop()

#Output script results
Write-Host "`n✅ Script completed successfully in $([math]::Round($sw.Elapsed.TotalSeconds, 2)) seconds."