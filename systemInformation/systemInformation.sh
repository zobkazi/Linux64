#!/bin/bash

# Function to display system information
display_system_info() {
    echo "System Information:"
    echo "-------------------"
    echo "Hostname: $(hostname)"
    echo "Operating System: $(uname -a)"
    echo "CPU Information: $(lscpu)"
    echo "Memory Information: $(free -h)"
    echo "Disk Usage: $(df -h)"
    echo "Network Information: $(ifconfig)"
}

# Call the function to display system information
display_system_info
