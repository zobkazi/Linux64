#!/bin/bash

# Check if ImageMagick is installed
if ! command -v convert &>/dev/null; then
    echo "ImageMagick is not installed. Please install it first."
    exit 1
fi

# Function to convert images
convert_images() {
    local input_dir="$1"
    local output_dir="$2"
    local input_format="$3"
    local output_format="$4"

    # Check if input directory exists
    if [ ! -d "$input_dir" ]; then
        echo "Input directory '$input_dir' not found."
        exit 1
    fi

    # Check if output directory exists, create if not
    if [ ! -d "$output_dir" ]; then
        mkdir -p "$output_dir"
    fi

    # Convert images in the input directory
    for file in "$input_dir"/*."$input_format"; do
        output_file="$output_dir"/"$(basename "$file" ."$input_format")"."$output_format"
        convert "$file" "$output_file"
        echo "Converted '$file' to '$output_file'."
    done
}

# Check if correct number of arguments provided
if [ "$#" -ne 4 ]; then
    echo "Usage: $0 input_directory output_directory input_format output_format"
    exit 1
fi

# Call the function to convert images
convert_images "$1" "$2" "$3" "$4"
