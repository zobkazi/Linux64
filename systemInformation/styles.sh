#!/bin/bash

# Define colors and styles
bold=$(tput bold)
underline=$(tput smul)
normal=$(tput sgr0)
red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
blue=$(tput setaf 4)
cyan=$(tput setaf 6)

# Function to display system information
display_system_info() {
    echo "${bold}System Information:${normal}"
    echo "${underline}-------------------${normal}"
    echo "${bold}Hostname:${normal} $(hostname)"
    echo "${bold}Operating System:${normal} $(uname -a)"
    echo "${bold}CPU Information:${normal} $(lscpu)"
    echo "${bold}Memory Information:${normal} $(free -h)"
    echo "${bold}Disk Usage:${normal} $(df -h)"
    echo "${bold}Network Information:${normal} $(ifconfig)"
}

# Call the function to display system information
display_system_info
