for ($i = 5; $i -gt -2; $i--) {
    trap {
        write-host "This is a custom error message."
        write-error "You attempted to divide by zero!!!"
        continue
    }
    write-host '$i='$i
    1/$i
    write-host '$?='$?
}
write-host "This statement comes after the for loop."