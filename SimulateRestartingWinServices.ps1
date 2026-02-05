# Question 2

# Write a PowerShell script to identify all stopped Windows services and simulate
# restarting them using the-WhatIf parameter. Display the service name and status.

Get-Service | Where-Object{ $_.Status -eq 'Stopped' } | 
    ForEach-Object { 
        Write-Host "Simulating restart of service: $($_.Name) with status: $($_.Status)" 
        Restart-Service -Name $_.Name -WhatIf 
    }