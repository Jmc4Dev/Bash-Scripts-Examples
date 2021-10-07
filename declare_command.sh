#! /bin/bash

declare -r pwdfile=/etc/passwd   #   -r to declare as a readonly variable

echo $pwdfile

pwdfile=/etc/abc.txt    # this fails because the variable is declared as readonly

