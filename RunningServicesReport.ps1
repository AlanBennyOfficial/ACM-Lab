# Question 5

# Write a PowerShell script to generate a CSV report of all running services showing
# service name, display name, and status, and save it as RunningServicesReport.csv.

Get-Service | Select-Object Name, DisplayName, Status | 
    Export-Csv -Path "RunningServicesReport.csv" -NoTypeInformation