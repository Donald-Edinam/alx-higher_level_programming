#!/bin/bash

# Check if correct number of arguments supplied
if [[ "$#" -ne 1 ]]; then
    echo "Usage: $0 <URL>" >&2
    exit 1
fi

url="$1"

# Use --head instead of -I to avoid auto-following redirects
content_length=$(curl --silent --head "$url" \
                      | awk '/^Content-Length:/{ print int($2) }')

# Print result with unit suffixes
if [[ -n "$content_length" ]]; then
    printf "%d bytes\n" "$content_length"
else
    echo "Could not determine content length." >&2
    exit 1
fi