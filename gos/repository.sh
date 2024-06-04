#!/bin/bash

# Function to create and switch to a new Git branch
create_new_branch() {
    branch_name=$1

    # Create a new branch
    git checkout -b $branch_name

    if [ $? -eq 0 ]; then
        echo "New branch '$branch_name' created and switched to successfully."
    else
        echo "Failed to create and switch to new branch '$branch_name'."
        exit 1
    fi
}

# Function to push the new branch to the remote repository
push_to_remote() {
    branch_name=$1

    # Push the new branch to the remote repository
    git push -u origin $branch_name

    if [ $? -eq 0 ]; then
        echo "New branch '$branch_name' pushed to remote repository successfully."
    else
        echo "Failed to push new branch '$branch_name' to remote repository."
        exit 1
    fi
}

# Main script
echo "Enter the name for the new branch:"
read branch_name

# Call the function to create and switch to the new branch
create_new_branch $branch_name

# Call the function to push the new branch to the remote repository
push_to_remote $branch_name
