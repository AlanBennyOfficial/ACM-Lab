$mks = Read-Host("Enter marks ")

if ($mks -gt 90) {
    Write-Host("Grade = A")
}
elseif ($mks -gt 80) {
    Write-Host("Grade = B")
}
elseif ($mks -gt 70) {
    Write-Host("Grade = C")
}
elseif ($mks -gt 60) {
    Write-Host("Grade = D")
}
elseif ($mks -gt 50) {
    Write-Host("Grade = E")
}
else {
    Write-Host("Grade = F")
}
