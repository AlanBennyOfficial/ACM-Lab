$array = "red", "yellow", "black", "blue"

for ($i = 0; $i -lt $array.Count; $i++) {
    Write-Host($array[$i])
}