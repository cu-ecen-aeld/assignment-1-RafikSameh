#!/bin/bash

# Check if both arguments are provided
if [[ $# -ne 2 ]]; then
    echo "Error: Please provide two arguments - file path and text string"
    exit 1
fi

# Get the file path and text string from arguments
writefile="$1"
writestr="$2"

# Create the directory path if it doesn't exist
mkdir -p "$(dirname "$writefile")"

# Write the text string to the file
echo "$writestr" > "$writefile"

# Check if the file was created successfully
if [[ $? -ne 0 ]]; then
    echo "Error: Could not create file $writefile"
    exit 1
fi

# Exit with success
exit 0
