#!/bin/bash

# Print header
echo "Deb Apps Install Power by @zobaidulkazi"
echo "https://github.com/zobkazi"
echo "https://github.com/zobkazi/Linux64/blob/main/README.md"
echo "Deb Apps Install......... Y/N"
read -r y_n

# Check user input
if [ "$y_n" = "Y" ] || [ "$y_n" = "y" ]; then
    # Install basic development tools
    sudo apt update && sudo apt install -y vim git curl wget unzip

    # Install developer packages
    sudo apt update && sudo apt install -y \
        krita gimp inkscape kdenlive audacity obs-studio vlc-bin \
        nodejs npm chromium \
        htop shotcut kolourpaint peruse gnome-dictionary gnome-calendar \
        gnome-music gnome.epiphany minuet kturtle klettres kgeography \
        kstars gccgo-go golang-go konversation gnome-contacts bundlewrap \
        gnome-logs gnome-clocks ark ffmpeg handbrake digikam kwave kiten \
        ki kbruch artikulate kalzium parley octave sweeper cantor kmplot \
        step kalgebra gnome-shell-extension-manager gnome-font-viewer \
        font-manager hubble

    # Print success message
    echo "Deb Apps Install End Power by @zobaidulkazi"
fi

# Print closing message
echo "Thank You, Bye..!! :)" "$USER"
