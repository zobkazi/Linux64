sudo apt update
clear

efibootmgr -h

echo "Remove your old efi boot manu Y/N"
read y_n

clear


echo ' All Boot Manu List----------------'
efibootmgr

echo "Are You Suer! Your Old Boot Manu Remove Y/N"
read n_y


# remove all boot
sudo efibootmgr -b 1 2 3 4 5 6 7 8 9 10 11 12 12 13 14 15 16 17 18 19 20 -B

clear
echo "Your Current  Boot Is Running.............."

efibootmgr
