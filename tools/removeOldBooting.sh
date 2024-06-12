#!/bin/bash

## Remove Old Booting

echo "Remove Old Booting"

# check efi boot manu

efibootmgr

# check user input
echo "Remove your old efi boot manu Y/N"
read y_n

# check user input

if [ "$y_n" = "Y" ] || [ "$y_n" = "y" ]; then
    sudo efibootmgr -b 0000 -B

    sudo efibootmgr -b 0001 -B

    sudo efibootmgr -b 0002 -B

    sudo efibootmgr -b 0003 -B

    sudo efibootmgr -b 0004 -B

    sudo efibootmgr -b 0005 -B

    sudo efibootmgr -b 0006 -B

    sudo efibootmgr -b 0007 -B

    sudo efibootmgr -b 0008 -B

    sudo efibootmgr -b 0009 -B

    sudo efibootmgr -b 000a -B

    sudo efibootmgr -b 000b -B

    sudo efibootmgr -b 000c -B

    sudo efibootmgr -b 000d -B

    sudo efibootmgr -b 000e -B

else
    echo "Exit"

    exit

fi

echo "Your Old efi boot manu Remove Successful"

echo "Current Boot Manu is " $(efibootmgr)

# check efi boot manu

echo "Remove Old Booting End"

exit

reboot
