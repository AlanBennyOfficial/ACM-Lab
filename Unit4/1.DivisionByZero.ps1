write-host '$? is ' $? ' before the for loop.'
for ($i = 5; $i -gt -5;$i--) {
    write-host '$i='$i
    1/$i
    write-host '$?='$?
}
write-host '$?='$?