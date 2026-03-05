$testFile = "Module4TestFile.txt"
"Sample text" > $testFile
$fileItem = Get-Item $testFile
$fileItem.IsReadOnly = $true

try {
    "Attempting to append" | Out-File -FilePath $testFile -Append -ErrorAction Stop
}
catch [System.UnauthorizedAccessException] {
    Write-Host "File Error: Access denied to read-only file." -ForegroundColor Yellow
}
finally {
    $fileItem.IsReadOnly = $false
    Remove-Item $testFile
}

for ($i = 1; $i -ge -1; $i--) {
    try {
        $result = 10 / $i
        Write-Host "10 / $i = $result"
    }
    catch [System.DivideByZeroException] {
        Write-Host "Math Error: Attempted to divide by zero." -ForegroundColor Red
    }
}