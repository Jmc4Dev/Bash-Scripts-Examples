#! /bin/bash

mkdir -p ~/temp/newfolder

# this commands keeps waiting for changes into the referred folder and send
# alerts to the terminal
inotifywait -m ~/temp/newfolder

