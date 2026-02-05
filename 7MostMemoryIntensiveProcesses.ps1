# Question 3

# Write a PowerShell script to display the top 7 processes consuming the highest mem
# ory. Display process name, process ID, and memory usage (in MB), sorted in descending
# order.

Get-Process | Sort-Object -Property WS -Descending | 
Select-Object -First 7 -Property Name, Id, @{Name="MemoryUsage(MB)";Expression={[math]::Round($_.WS / 1MB, 2)}}, StartTime