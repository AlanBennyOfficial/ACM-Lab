# Question 7

# Write a PowerShell script to list all services, filter services that are not running, sort
# them alphabetically by name, and display the output in list format.

Get-Service | Where-Object { $_.Status -ne 'Running' } | 
    Sort-Object -Property Name | 
    Format-List Name, Status, DisplayName