#!/bin/bash

# Define colors
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
blue='\033[0;34m'
cyan='\033[0;36m'
reset='\033[0m' # Reset color

# Function to display system information with color
display_system_info() {
    echo -e "${cyan}System Information:${reset}"
    echo -e "${blue}-------------------${reset}"
    echo -e "${green}Hostname:${reset} $(hostname)"
    echo -e "${green}Operating System:${reset} $(uname -a)"
    echo -e "${green}CPU Information:${reset} $(lscpu)"
    echo -e "${green}Memory Information:${reset} $(free -h)"
    echo -e "${green}Disk Usage:${reset} $(df -h)"
    echo -e "${green}Network Information:${reset} $(ifconfig)"
}

# Call the function to display system information
display_system_info
