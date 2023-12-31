#!/bin/bash

# Directory to count files and words in
DIR=$1

# Check if directory exists
if [ -d "$DIR" ]; then
    # Count the number of files
    FILE_COUNT=$(ls -A $DIR | wc -l)

    # Initialize word count
    WORD_COUNT=0

    # Loop through each file in the directory
    for FILE in $DIR/*
    do
        # Count the number of words in the file and add to total
        WORD_COUNT=$((WORD_COUNT + $(wc -w < "$FILE")))
    done

    # Print the results
    echo "Number of files: $FILE_COUNT"
    echo "Number of words: $WORD_COUNT"
else
    echo "$DIR is not a directory"
fi