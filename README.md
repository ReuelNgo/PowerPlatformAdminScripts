# PowerPlatformAdminScripts
Making a list of scripts to make an Admin's life easier.

## Key Principles

- The danger of scripts is noted in the readme.
  - ### Risk Legend
    ## Risk Legend
    - 🟢 Safe – Minimal risk (e.g. exporting admin related metadata in bulk)
    - 🟡 Some Risk – low level of risk, e.g. changing settings labels on apps that can affect production
    - 🟠 Moderate Risk – Requires some testing before running in production 
    - 🔴 Dangerous – Makes changes to apps, environments or users, use with caution and understand fully!
    - ⚫ Critical – Highly impactful, requires thorough review and approval before running (e.g., bulk deletion or environment reset)
    - 🟣 Experimental – New or untested scripts, use in non-production environments only

- Output results in a clear, usable format (e.g., CSV).
- Use modular and reusable code where possible.


## Scripts

- 🟢 Get Environment Creator Email ID of all Environments and export to Excel  
  - Uses Power Platform Admin module and Microsoft Graph  
  - Outputs to CSV file  
  - Includes CreatedBy name and UPN  
  - Displays progress and total time taken  

- 🟣 CheckDLPPolicyAssignmentsperEnvironment