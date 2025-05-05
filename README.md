# PowerPlatformAdminScripts
Making a list of scripts to make an Admin's life easier.

## Key Principles

- The danger of scripts is noted in the readme.
  - ### Risk Legend
    - 🟢 Safe – Read-only or minimal risk (e.g., exporting data)
    - 🟡 Some Risk – May affect performance or rely on elevated permissions
    - 🔴 Dangerous – Makes changes to environments or users, use with caution
- Output results in a clear, usable format (e.g., CSV).
- Use modular and reusable code where possible.


## Scripts

- 🟢 Get Environment Creator Email ID of all Environments and export to Excel  
  - Uses Power Platform Admin module and Microsoft Graph  
  - Outputs to CSV file  
  - Includes CreatedBy name and UPN  
  - Displays progress and total time taken  
