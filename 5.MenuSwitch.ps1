do {
    Clear-Host
    Write-Host "Calculator"
    Write-Host "+  Add"
    Write-Host "-  Subtract"
    Write-Host "*  Multiply"
    Write-Host "/  Divide"
    Write-Host "Q  Quit"

    $op = Read-Host "Choose an option"

    if ($op -eq 'q') { break }

    $a = [double](Read-Host "Enter first number")
    $b = [double](Read-Host "Enter second number")

    switch ($op) {
        '+' { $result = $a + $b }
        '-' { $result = $a - $b }
        '*' { $result = $a * $b }
        '/' {
            if ($b -eq 0) {
                Write-Host "Cannot divide by zero"
                Read-Host "Press Enter to continue"
                continue
            }
            $result = $a / $b
        }
        default {
            Write-Host "Invalid option"
            Read-Host "Press Enter to continue"
            continue
        }
    }

    Write-Host "Result: $result"
    Read-Host "Press Enter to continue"

} while ($true)

Write-Host "Goodbye!..."
