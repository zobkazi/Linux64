#!/bin/bash

# Function to generate a random password
generate_password() {
    local length=$1
    local charset=$2
    local password=""

    for i in $(seq 1 $length); do
        random_index=$(($RANDOM % ${#charset}))
        password="$password${charset:$random_index:1}"
    done

    echo "$password"
}

# Default password length
default_length=12

# Default character set (alphanumeric)
default_charset="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"

# Parse command-line arguments
while getopts ":l:c:" opt; do
    case $opt in
    l) length="$OPTARG" ;;
    c) charset="$OPTARG" ;;
    \?)
        echo "Invalid option: -$OPTARG" >&2
        exit 1
        ;;
    esac
done

# Set length to default if not provided
length=${length:-$default_length}

# Set charset to default if not provided
charset=${charset:-$default_charset}

# Generate and output the password
generated_password=$(generate_password $length "$charset")
echo "Generated Password: $generated_password"
