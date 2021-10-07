#! /bin/bash

# Send output from one script to another

MESSAGE="Hello LinuxMint Audience"

echo "This is the first script"

export MESSAGE
./secondScript.sh

