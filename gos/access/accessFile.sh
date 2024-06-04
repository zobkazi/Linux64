#!/bin/bash

# Prompt the user to enter the file path
echo "Enter the path to the file:"
read file_path

# Check if the file exists
if [ -f "$file_path" ]; then
    echo "File found. Performing operations on '$file_path'."

    # Add your operations here, for example:
    # cat "$file_path"  # Display the contents of the file

else
    echo "File not found at '$file_path'."
fi
