# Import-Module -Name Microsoft.PowerApps.Administration.PowerShell
# Import-Module -Name Microsoft.Graph

# start Timing Script run time
$sw = [System.Diagnostics.Stopwatch]::StartNew()

# Get all environments
$envs = Get-AdminPowerAppEnvironment

# Connect to Microsoft Graph
Connect-MgGraph -Scopes "User.Read.All"

# Get all users (you need the User.Read.All permission for this)
$users = Get-MgUser -All | Select-Object Id, DisplayName, UserPrincipalName

# Loop through each environment and join CreatedBy ID with user info
$results = foreach ($env in $envs) {
    $createdById = $env.CreatedBy.id

    # Try to find the matching user
    $matchedUser = $users | Where-Object { $_.Id -eq $createdById }

    # Build the output
    [PSCustomObject]@{
        EnvironmentName   = $env.DisplayName
        EnvironmentId     = $env.EnvironmentName
        CreatedById       = $createdById
        CreatedByName     = $matchedUser.DisplayName
        CreatedByUPN      = $matchedUser.UserPrincipalName
    }
}

# Output the joined result 📝 insert your file path here
$results | Export-CSV -path "" 

# Stop timer
$sw.Stop()

#Output script results
Write-Host "`n✅ Script completed successfully in $([math]::Round($sw.Elapsed.TotalSeconds, 2)) seconds."