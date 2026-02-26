Trap {write-host "You can't write to a read-only file.";Break}
"This is file 1" > Test1.txt
"This is file 2" > Test2.txt
write-host "The first write to Test3.txt hasn't happened yet."
"This is file 3" > Test3.txt
write-host "The first write to Test3.txt is over."
"This is file 4" > Test4.txt
attrib +r Test3.txt
write-host "The append to Test3.txt is about to be attempted."
"Add to file 3" >> Test3.txt
write-host "The append to Test3.txt is over."