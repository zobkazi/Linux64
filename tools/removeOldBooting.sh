#!/bin/bash

## Remove Old Booting

echo "Remove Old Booting Power by @zobaidulkazi"
echo "https://github.com/zobkazi"
echo "https://github.com/zobkazi/Linux64/blob/main/README.md"

# Display current EFI boot menu
echo "Current EFI Boot Menu:"
efibootmgr

# Prompt user for confirmation
echo "Remove your old EFI boot entries? (Y/N)"
read -r y_n

if [ "$y_n" = "Y" ] || [ "$y_n" = "y" ]; then
    # Get current boot entry
    current_boot_entry=$(efibootmgr | grep BootCurrent | awk '{print $2}')

    # Get all boot entries except the current one
    old_boot_entries=$(efibootmgr | grep "Boot[0-9]" | grep -v "BootCurrent" | awk '{print $1}' | cut -c 5-)

    # Check if there are old boot entries to delete
    if [ -z "$old_boot_entries" ]; then
        echo "There are no other EFI boot entries to remove."
    else
        # Remove old boot entries
        echo "Removing old boot entries..."
        for boot_entry in $old_boot_entries; do
            if [ "$boot_entry" != "$current_boot_entry" ]; then
                sudo efibootmgr -b "$boot_entry" -B
            fi
        done
        echo "Your old EFI boot entries have been successfully removed."
    fi
else
    echo "Old EFI boot entries removal cancelled."

fi

# Display updated EFI boot menu
echo "Current EFI Boot Menu:"
efibootmgr

# Print closing messages
echo "Remove Old Booting End"
echo "Thank You, Bye..!! :)" "$USER"

# Optional: reboot the system
# Uncomment the following line if you want to automatically reboot the system
# reboot
