#!/bin/bash

# Check if there are two arguments
if [ $# -ne 2 ]; then
    echo "Usage: $0 filesdir searchstr"
    exit 1
fi

# Check if first argument is a directory
if [ ! -d "$1" ]; then
    echo "Error: $1 is not a directory"
    exit 1
fi

# Store the directory and search string in variables
filesdir="$1"
searchstr="$2"

# Use find to count the number of files and matching lines
num_files=$(find "$filesdir" -type f | wc -l)
num_matches=$(grep -r "$searchstr" "$filesdir" | wc -l)

# Print the results
echo "The number of files are $num_files and the number of matching lines are $num_matches"
