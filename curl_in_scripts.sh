#! /bin/bash

url="https://filesamples.com/samples/document/txt/sample3.txt"
# curl ${url} -O     # this downloads the file with the original name

# curl ${url} -o NewFileName.txt   # changes the name of the file received
# curl ${url} > NewFileName2.txt   # this does the same

# Check the header of a file
curl -I ${url}

