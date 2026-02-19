# Question 3

# Write a PowerShell script to display the top 7 processes consuming the highest mem
# ory. Display process name, process ID, and memory usage (in MB), sorted in descending
# order.

Get-Process | 
    Select-Object Name, Id, @{Name="Memory(MB)";Expression={[math]::Round($_.WorkingSet64 / 1MB, 2)}} | 
    Sort-Object -Property "Memory(MB)" -Descending | 
    Select-Object -First 7 | 
    Format-Table -AutoSize