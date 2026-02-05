# Question 4

# Write a PowerShell script to delete all .tmp files from the C:\Temp directory that are
# older than 30 days, ensuring user confirmation before deletion.

$path = "C:\Windows\Temp"
$daysThreshold = 30

$cutoffDate = (Get-Date).AddDays(-$daysThreshold)

Get-ChildItem -Path $path -Recurse -File -Filter *.tmp | 
    Where-Object { $_.LastWriteTime -lt $cutoffDate } | 
    ForEach-Object { 
        $file = $_
        $confirmation = Read-Host "Are you sure you want to delete the file '$($file.FullName)' last modified on '$($file.LastWriteTime)'? (Y/N)"
        if ($confirmation -eq 'Y') {
            Remove-Item -Path $file.FullName -Force
            Write-Host "Deleted file: $($file.FullName)"
        } else {
            Write-Host "Skipped file: $($file.FullName)"
        }
    }
