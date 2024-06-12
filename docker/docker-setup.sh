## #! docker-setup.sh

## Set Configurations For Docker

#!/bin/sh
echo "Docker Configurations Edite Power by @zobaidulkazi"

echo "https://github.com/zobkazi"

echo "https://github.com/zobkazi/Linux64/blob/main/README.md"

# Check if Docker is already installed
if command -v docker &>/dev/null; then
    echo "Docker is already installed. Exiting."
    exit 0
fi

echo "Install Docker......... Y/N"

read y_n

if [ "$y_n" = "Y" ] || [ "$y_n" = "y" ]; then
    sudo apt install docker.io

    sudo systemctl start docker

    sudo systemctl enable docker

    sudo usermod -aG docker $USER

    echo "Docker Install Successful........."

    echo "Please Exit Your Terminal And Reopen It........"

    echo "Thank You, Bye..!! :)"

    exit

fi

echo "Thank You, Bye..!! :)"

exit
