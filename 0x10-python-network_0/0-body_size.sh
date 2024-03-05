#!/bin/bash
# send a request to an URL with curl, and displays the size of the body of the response
if [ -z "$1" ]; then
    echo "Error: URL not provided."
    exit 1
fi

response=$(curl -s "$1")
if [ $? -ne 0 ]; then
    echo "Error: Unable to fetch the content from the URL."
    exit 1
fi
echo "$response" | wc -c
