Trap {write-host "You can't write to a read-only file.";Continue}
"This is file 1" > Test1.txt
"This is file 2" > Test2.txt
"This is file 3" > Test3.txt
"This is file 4" > Test4.txt
attrib +r Test3.txt