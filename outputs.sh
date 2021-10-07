#! /bin/bash

# 1 represents standard output
# 2 represents standard error

ls -la 1>file1.txt 2>file2.txt
ls +la 1>file3.txt 2>file4.txt

# in this case: 
# file1.txt will contain the result of the ls -la command
# file2.txt and file3.txt will be empty
# file4.txt wil contain the error message due to ls +la command

ls +la >& file5.txt
# in this case file5.txt will contain the standard output or the standard error 
# depending on the result of the command

