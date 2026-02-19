# Question 1

# Write a PowerShell script to scan the C:\Logs directory recursively and display all files that:

# • are larger than 2 MB, and
# • were modified in the last 15 days.

# Display the output in table format showing file name, file size (in MB), and last modified date.

# $path = "C:\AutomationLab\Logs"
$path = "C:\Windows\Temp"
$thresholdSizeMB = 2
$daysThreshold = 15
$cutoffDate = (Get-Date).AddDays(-$daysThreshold)

Get-ChildItem -Path $path -Recurse -File | 
    Where-Object { $_.Length -gt ($thresholdSizeMB * 1MB) -and $_.LastWriteTime -ge $cutoffDate } | 
    Select-Object Name, 
                  @{Name="Size(MB)";Expression={[math]::Round($_.Length / 1MB, 2)}}, 
                  LastWriteTime | 
    Format-Table -AutoSize