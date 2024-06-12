#!/bin/bash

# Get the current username
USERNAME=$(whoami)

# Define the file path
FILE_PATH="/home/$USERNAME/.zshrc"

# Content to be written to the file
CONTENT=$(
    cat <<'EOF'
# sudo apt update
# echo "NODE VERSION......."
# node --version
echo "NPM VERSION........"
npm --version
echo "YARN VERSION......"
yarn --version
echo "BUN VERSION......."
bun --version

echo "NODE VERSION......."
if command -v node &>/dev/null; then
    node --version
else
    echo "Node.js is not installed."
fi
EOF
)

# Write content to the file
echo "$CONTENT" >"$FILE_PATH"

# Verify if the content was written successfully
if [[ $? -eq 0 ]]; then
    echo "Successfully wrote to $FILE_PATH"

    # Check for each tool and report their versions or installation status
    echo "Checking installations and versions..."

    echo -n "NPM VERSION........"
    if command -v npm &>/dev/null; then
        npm --version
    else
        echo "NPM is not installed."
    fi

    echo -n "YARN VERSION......"
    if command -v yarn &>/dev/null; then
        yarn --version
    else
        echo "Yarn is not installed."
    fi

    echo -n "BUN VERSION......."
    if command -v bun &>/dev/null; then
        bun --version
    else
        echo "Bun is not installed."
    fi

    echo -n "NODE VERSION......."
    if command -v node &>/dev/null; then
        node --version
    else
        echo "Node.js is not installed."
    fi
else
    echo "Failed to write to $FILE_PATH due to incorrect information."
fi
