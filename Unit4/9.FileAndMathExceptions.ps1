$computerName = "NonExistentPC"

try {
    $biosInfo = Get-WmiObject -Class Win32_BIOS -ComputerName $computerName -ErrorAction Stop
    Write-Host "BIOS Version: $($biosInfo.SMBIOSBIOSVersion)"
    
    $processorInfo = Get-WmiObject Win32_Processor -ComputerName $computerName -ErrorAction Stop
    Write-Host "Processor: $($processorInfo.Name)"
}
catch {
    Write-Host "WMI Connection Exception Caught." -ForegroundColor Red
    Write-Error "Failed to retrieve WMI classes. Verify that '$computerName' is online and accessible."
}